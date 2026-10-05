Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_core-071202eab9d332bc.nickel_lang_core.cad9b9c1e83c4439-cgu.0?download=true
inline.NumInlined: 37290
inline.NumDeleted: 15086
loop-unroll.NumCompletelyUnrolled: 98
loop-unroll.NumRuntimeUnrolled: 96
loop-unroll.NumUnrolled: 197
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN3std2io5Write14write_vectored17hbb849d53385541a9E:bb.a
  %.not.i.i.i.i = icmp eq i64 %.sroa.3.0.i7.i, 0
  br i1 %.not.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.d
  %.sroa.01.05.i.i.i.i = phi i64 [ %i.z, %bb.d ], [ 0, %.preheader.i.i.i.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i9.i, i64 %.sroa.01.05.i.i.i.i
  %i.x = load i8, ptr %i.w, align 1, !alias.scope !84158, !noalias !84159, !noundef !145
  %i.y = icmp eq i8 %i.x, 10
  br i1 %i.y, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread6.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.z = add nuw nsw i64 %.sroa.01.05.i.i.i.i, 1  ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.z, %.sroa.3.0.i7.i
  br i1 %exitcond.not.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i, label %.lr.ph.i.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i: ; preds = %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E.exit.i.i.i"
  %i.aa = tail call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.02.0.i9.i, i64 noundef %.sroa.3.0.i7.i), !noalias !84159
  %i.ab = extractvalue { i64, i64 } %i.aa, 0
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread6.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread6.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i
  %i.ad = tail call noundef ptr @"_ZN88_$LT$nickel_lang_core..repl..wasm_frontend..CallbackWriter$u20$as$u20$std..io..Write$GT$5flush17h4e06f2d8dc6113bbE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0), !noalias !84143 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i, label %_ZN3std2io22default_write_vectored17ha911369062147389E.exit

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i: ; preds = %bb.d, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread6.i.i.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i, %.preheader.i.i.i.i
  %i.ae = inttoptr i64 %.sroa.3.0.i7.i to ptr
  br label %_ZN3std2io22default_write_vectored17ha911369062147389E.exit

_ZN3std2io22default_write_vectored17ha911369062147389E.exit: ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread6.i.i.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i
  %.sroa.3.0.i.i.i = phi ptr [ %i.ae, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i ], [ %i.ad, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread6.i.i.i ]
  %.sroa.0.0.i.i.i = phi i64 [ 0, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i.i.i ], [ 1, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread6.i.i.i ]
  %i.af = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i.i.i, 0
  %i.ag = insertvalue { i64, ptr } %i.af, ptr %.sroa.3.0.i.i.i, 1
  ret { i64, ptr } %i.ag
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_ZN3std2io5Write14write_vectored17hd594c815f6bd6473E(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84183)
  %.idx = shl nuw nsw i64 %2, 4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h99a18b40ff97364bE.exit.i", label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.c, %i.a
  br i1 %i.d, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h99a18b40ff97364bE.exit.i", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.c, %bb.b ], [ %1, %bb.a ]   ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !84183, !noalias !84184, !noundef !145 ; 2 uses
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !84185, !noalias !84182, !noundef !145
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17h99a18b40ff97364bE.exit.i"

"_ZN4core6option15Option$LT$T$GT$6map_or17h99a18b40ff97364bE.exit.i": ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.3.0.i.i = phi i64 [ %i.g, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ] ; 4 uses
  %.sroa.02.0.i.i = phi ptr [ %.val.i.i, %bb.c ], [ inttoptr (i64 1 to ptr), %bb.a ], [ inttoptr (i64 1 to ptr), %bb.b ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84188)
  %i.h = load i64, ptr %0, align 8, !range !175, !alias.scope !84189, !noalias !84190, !noundef !145
  switch i64 %i.h, label %default.unreachable [
    i64 0, label %bb.d
    i64 1, label %bb.g
    i64 2, label %bb.j
  ], !prof !322

default.unreachable:                              ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h99a18b40ff97364bE.exit.i"
  unreachable

bb.d:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h99a18b40ff97364bE.exit.i"
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !164, !alias.scope !84191, !noalias !84192, !noundef !145
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = trunc nuw i64 %i.j to i1
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = tail call { i64, ptr } @"_ZN61_$LT$std..io..stdio..StderrLock$u20$as$u20$std..io..Write$GT$5write17h5766cce4ff8238b1E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.02.0.i.i, i64 noundef %.sroa.3.0.i.i), !noalias !84183
  br label %_ZN3std2io22default_write_vectored17hbaf603c811a9e534E.exit

bb.f:                                             ; preds = %bb.d
  %i.n = tail call { i64, ptr } @"_ZN61_$LT$std..io..stdio..StdoutLock$u20$as$u20$std..io..Write$GT$5write17h2bc3c411733c9682E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.02.0.i.i, i64 noundef %.sroa.3.0.i.i), !noalias !84183
  br label %_ZN3std2io22default_write_vectored17hbaf603c811a9e534E.exit

bb.g:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h99a18b40ff97364bE.exit.i"
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !164, !alias.scope !84193, !noalias !84194, !noundef !145
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = trunc nuw i64 %i.p to i1
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = tail call { i64, ptr } @"_ZN61_$LT$std..io..stdio..StderrLock$u20$as$u20$std..io..Write$GT$5write17h5766cce4ff8238b1E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.02.0.i.i, i64 noundef %.sroa.3.0.i.i), !noalias !84183
  br label %_ZN3std2io22default_write_vectored17hbaf603c811a9e534E.exit

bb.i:                                             ; preds = %bb.g
  %i.t = tail call { i64, ptr } @"_ZN61_$LT$std..io..stdio..StdoutLock$u20$as$u20$std..io..Write$GT$5write17h2bc3c411733c9682E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.02.0.i.i, i64 noundef %.sroa.3.0.i.i), !noalias !84183
  br label %_ZN3std2io22default_write_vectored17hbaf603c811a9e534E.exit

bb.j:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h99a18b40ff97364bE.exit.i"
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @77, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2276) #82, !noalias !84195
  unreachable

_ZN3std2io22default_write_vectored17hbaf603c811a9e534E.exit: ; preds = %bb.e, %bb.f, %bb.h, %bb.i
  %.pn.i.i.i.i = phi { i64, ptr } [ %i.n, %bb.f ], [ %i.m, %bb.e ], [ %i.s, %bb.h ], [ %i.t, %bb.i ]
  ret { i64, ptr } %.pn.i.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN3std2io5Write17is_write_vectored17h46ecaa495d1767f4E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #21 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN3std2io5Write17is_write_vectored17h558e2b4c84df8fa8E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #21 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN3std2io5Write17is_write_vectored17h70426bc53d43404fE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #21 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN3std2io5Write17is_write_vectored17h734a0cb78c80fce6E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #21 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN3std2io5Write17is_write_vectored17hfd5aca2fba377af2E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #21 {
bb.a:
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define internal noundef ptr @_ZN3std2io5Write18write_all_vectored17h3008c7a783e809faE(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 captures(address) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %.idx.i = shl i64 %2, 4                         ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %.loopexit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.e = add i64 %.idx.i, -16
  %i.f = lshr exact i64 %i.e, 4
  %i.g = add nuw nsw i64 %i.f, 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %.sroa.0.016.i = phi i64 [ %i.m, %bb.c ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.0.01014.i = phi ptr [ %i.l, %bb.c ], [ %1, %.lr.ph.preheader.i ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.01014.i, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noalias !84230, !noundef !145
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.c, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha5f5dbb46dac7742E.exit.thread.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha5f5dbb46dac7742E.exit.thread.i": ; preds = %bb.c, %.lr.ph.i
  %.sroa.0.0.lcssa.i = phi i64 [ %i.g, %bb.c ], [ %.sroa.0.016.i, %.lr.ph.i ] ; 5 uses
  %i.j = icmp ugt i64 %.sroa.0.0.lcssa.i, %2
  br i1 %i.j, label %bb.b, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h10ff4c171b1ed421E.exit.i", !prof !155

bb.b:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha5f5dbb46dac7742E.exit.thread.i"
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.0.0.lcssa.i, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1625) #82, !noalias !84231
  unreachable

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h10ff4c171b1ed421E.exit.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha5f5dbb46dac7742E.exit.thread.i"
  %i.k = icmp eq i64 %2, %.sroa.0.0.lcssa.i
  br i1 %i.k, label %.loopexit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.01014.i, i64 16 ; 2 uses
  %i.m = add nuw nsw i64 %.sroa.0.016.i, 1
  %i.n = icmp eq ptr %i.l, %i.c
  br i1 %i.n, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha5f5dbb46dac7742E.exit.thread.i", label %.lr.ph.i

.lr.ph:                                           ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h10ff4c171b1ed421E.exit.i"
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.0.0.lcssa.i
  %i.p = sub nuw i64 %2, %.sroa.0.0.lcssa.i
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !84232, !noalias !84233, !nonnull !145, !noundef !145 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 4 uses
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.l, %.lr.ph
  %.sroa.0.02538 = phi ptr [ %i.o, %.lr.ph ], [ %i.bb, %bb.l ] ; 5 uses
  %.sroa.8.037 = phi i64 [ %i.p, %.lr.ph ], [ %i.ba, %bb.l ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84234)
  %.idx = shl nuw nsw i64 %.sroa.8.037, 4
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.02538, i64 %.idx
  %i.t = icmp eq i64 %.sroa.8.037, 0
  br i1 %i.t, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h3012f9a0c4eacc67E.exit.i.i", label %.lr.ph84

bb.e:                                             ; preds = %.lr.ph84
  %i.u = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.s
  br i1 %i.v, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h3012f9a0c4eacc67E.exit.i.i", label %.lr.ph84

.lr.ph84:                                         ; preds = %bb.d, %bb.e
  %i.w = phi ptr [ %i.u, %bb.e ], [ %.sroa.0.02538, %bb.d ] ; 3 uses
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !84235, !noalias !84236, !noundef !145 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.f

bb.f:                                             ; preds = %.lr.ph84
  %.val.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !84237, !noalias !84232, !noundef !145
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17h3012f9a0c4eacc67E.exit.i.i"

"_ZN4core6option15Option$LT$T$GT$6map_or17h3012f9a0c4eacc67E.exit.i.i": ; preds = %bb.e, %bb.d, %bb.f
  %.sroa.3.0.i.i.i = phi i64 [ %i.y, %bb.f ], [ 0, %bb.d ], [ 0, %bb.e ] ; 5 uses
  %.sroa.02.0.i.i.i = phi ptr [ %.val.i.i.i, %bb.f ], [ inttoptr (i64 1 to ptr), %bb.d ], [ inttoptr (i64 1 to ptr), %bb.e ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.i.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84241)
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !84242, !noalias !84243, !noundef !145 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84244)
  %i.z = tail call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i.i.i, i64 %.sroa.3.0.i.i.i) ; 2 uses
  %i.aa = load i64, ptr %.val.i, align 8, !range !146, !alias.scope !84245, !noalias !84246, !noundef !145 ; 2 uses
  %i.ab = icmp ugt i64 %i.z, %i.aa
  %.pre48 = load i64, ptr %i.r, align 8, !alias.scope !84245, !noalias !84246 ; 6 uses
  br i1 %i.ab, label %bb.g, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.i.i.i.i.i"

bb.g:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h3012f9a0c4eacc67E.exit.i.i"
  %i.ac = icmp sgt i64 %.pre48, -1
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = sub i64 %i.z, %.pre48                   ; 2 uses
  %i.ae = sub nsw i64 %i.aa, %.pre48
  %i.af = icmp ugt i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.h, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.i.i.i.i.i", !prof !147

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h668137d68fb7f885E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i, i64 noundef %.pre48, i64 noundef %i.ad, i64 noundef 1, i64 noundef 1), !noalias !84246
  %.pre = load i64, ptr %i.r, align 8, !alias.scope !84245, !noalias !84246
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.h, %bb.g, %"_ZN4core6option15Option$LT$T$GT$6map_or17h3012f9a0c4eacc67E.exit.i.i"
  %i.ag = phi i64 [ %.pre, %bb.h ], [ %.pre48, %bb.g ], [ %.pre48, %"_ZN4core6option15Option$LT$T$GT$6map_or17h3012f9a0c4eacc67E.exit.i.i" ] ; 5 uses
  %i.ah = icmp sgt i64 %i.ag, -1
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp ugt i64 %.val.i.i.i.i.i.i.i, %i.ag
  br i1 %i.ai, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i._ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit_crit_edge.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i._ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit_crit_edge.i.i.i.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.i.i.i.i.i"
  %.val8.pre.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !alias.scope !84247, !noalias !84246
  br label %_ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i:               ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.i.i.i.i.i"
  %i.aj = sub nuw i64 %.val.i.i.i.i.i.i.i, %i.ag
  %i.ak = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !alias.scope !84245, !noalias !84246, !nonnull !145, !noundef !145 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ag
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.al, i8 0, i64 %i.aj, i1 false), !alias.scope !84248, !noalias !84249
  store i64 %.val.i.i.i.i.i.i.i, ptr %i.r, align 8, !alias.scope !84245, !noalias !84246
  br label %_ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit.i.i.i.i.i.i.i

_ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i._ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit_crit_edge.i.i.i.i.i.i.i"
  %i.am = phi i64 [ %i.ag, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i._ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit_crit_edge.i.i.i.i.i.i.i" ], [ %.val.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.val8.i.i.i.i.i.i.i = phi ptr [ %.val8.pre.i.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i._ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit_crit_edge.i.i.i.i.i.i.i" ], [ %i.ak, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.val8.i.i.i.i.i.i.i, i64 %.val.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.an, ptr nonnull readonly align 1 %.sroa.02.0.i.i.i, i64 %.sroa.3.0.i.i.i, i1 false), !noalias !84250
  %i.ao = add i64 %.val.i.i.i.i.i.i.i, %.sroa.3.0.i.i.i ; 3 uses
  %i.ap = icmp sgt i64 %i.am, -1
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp ugt i64 %i.ao, %i.am
  br i1 %i.aq, label %bb.i, label %_ZN3std2io5Write14write_vectored17h3b80d5860afe26e2E.exit

bb.i:                                             ; preds = %_ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit.i.i.i.i.i.i.i
  store i64 %i.ao, ptr %i.r, align 8, !alias.scope !84247, !noalias !84246
  br label %_ZN3std2io5Write14write_vectored17h3b80d5860afe26e2E.exit

_ZN3std2io5Write14write_vectored17h3b80d5860afe26e2E.exit: ; preds = %_ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit.i.i.i.i.i.i.i, %bb.i
  store i64 %i.ao, ptr %i.q, align 8, !alias.scope !84242, !noalias !84243
  %i.ar = icmp eq i64 %.sroa.3.0.i.i.i, 0
  br i1 %i.ar, label %.loopexit, label %.lr.ph.preheader.i6

.loopexit:                                        ; preds = %_ZN3std2io5Write14write_vectored17h3b80d5860afe26e2E.exit, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h10ff4c171b1ed421E.exit.thread.i15", %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h10ff4c171b1ed421E.exit.i", %bb.a
  %.sroa.0.0 = phi ptr [ null, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h10ff4c171b1ed421E.exit.i" ], [ null, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h10ff4c171b1ed421E.exit.thread.i15" ], [ null, %bb.a ], [ @1623, %_ZN3std2io5Write14write_vectored17h3b80d5860afe26e2E.exit ]
  ret ptr %.sroa.0.0

.lr.ph.preheader.i6:                              ; preds = %_ZN3std2io5Write14write_vectored17h3b80d5860afe26e2E.exit
  %.idx.i5 = shl nuw i64 %.sroa.8.037, 4          ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.02538, i64 %.idx.i5
  %i.at = add i64 %.idx.i5, -16
  %i.au = lshr exact i64 %i.at, 4
  %i.av = add nuw nsw i64 %i.au, 1
  br label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %bb.j, %.lr.ph.preheader.i6
  %.sroa.0.016.i8 = phi i64 [ %i.bf, %bb.j ], [ 0, %.lr.ph.preheader.i6 ] ; 2 uses
  %.sroa.02.015.i9 = phi i64 [ %i.be, %bb.j ], [ %.sroa.3.0.i.i.i, %.lr.ph.preheader.i6 ] ; 3 uses
  %.sroa.0.01014.i10 = phi ptr [ %i.bd, %bb.j ], [ %.sroa.0.02538, %.lr.ph.preheader.i6 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.01014.i10, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !84251, !noundef !145 ; 2 uses
  %i.ay = icmp ult i64 %.sroa.02.015.i9, %i.ax
  br i1 %i.ay, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha5f5dbb46dac7742E.exit.thread.i11", label %bb.j

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha5f5dbb46dac7742E.exit.thread.i11": ; preds = %bb.j, %.lr.ph.i7
  %.sroa.02.0.lcssa.i12 = phi i64 [ %i.be, %bb.j ], [ %.sroa.02.015.i9, %.lr.ph.i7 ] ; 4 uses
  %.sroa.0.0.lcssa.i13 = phi i64 [ %i.av, %bb.j ], [ %.sroa.0.016.i8, %.lr.ph.i7 ] ; 5 uses
  %i.az = icmp ugt i64 %.sroa.0.0.lcssa.i13, %.sroa.8.037
  br i1 %i.az, label %.noexc, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h10ff4c171b1ed421E.exit.i14", !prof !155

.noexc:                                           ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha5f5dbb46dac7742E.exit.thread.i11"
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.0.0.lcssa.i13, i64 noundef %.sroa.8.037, i64 noundef %.sroa.8.037, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1625) #82
  unreachable

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h10ff4c171b1ed421E.exit.i14": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha5f5dbb46dac7742E.exit.thread.i11"
  %i.ba = sub nuw i64 %.sroa.8.037, %.sroa.0.0.lcssa.i13
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.02538, i64 %.sroa.0.0.lcssa.i13 ; 4 uses
  %i.bc = icmp eq i64 %.sroa.8.037, %.sroa.0.0.lcssa.i13
  br i1 %i.bc, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h10ff4c171b1ed421E.exit.thread.i15", label %bb.k

bb.j:                                             ; preds = %.lr.ph.i7
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.01014.i10, i64 16 ; 2 uses
  %i.be = sub nuw i64 %.sroa.02.015.i9, %i.ax     ; 2 uses
  %i.bf = add nuw nsw i64 %.sroa.0.016.i8, 1
  %i.bg = icmp eq ptr %i.bd, %i.as
  br i1 %i.bg, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha5f5dbb46dac7742E.exit.thread.i11", label %.lr.ph.i7

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h10ff4c171b1ed421E.exit.thread.i15": ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h10ff4c171b1ed421E.exit.i14"
  %i.bh = icmp eq i64 %.sroa.02.0.lcssa.i12, 0
  br i1 %i.bh, label %.loopexit, label %.noexc17, !prof !154

.noexc17:                                         ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h10ff4c171b1ed421E.exit.thread.i15"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !84251
  store ptr @1627, ptr %i.b, align 8, !noalias !84251
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.bi, align 8, !noalias !84251
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.bj, align 8, !noalias !84251
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.bk, align 8, !noalias !84251
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.bl, align 8, !noalias !84251
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1628) #82
  unreachable

bb.k:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h10ff4c171b1ed421E.exit.i14"
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !noalias !84251, !noundef !145 ; 2 uses
  %i.bo = icmp ult i64 %i.bn, %.sroa.02.0.lcssa.i12
  br i1 %i.bo, label %.noexc18, label %bb.l, !prof !147

.noexc18:                                         ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !84251
  store ptr @1630, ptr %i.a, align 8, !noalias !84251
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.bp, align 8, !noalias !84251
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.bq, align 8, !noalias !84251
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.br, align 8, !noalias !84251
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.bs, align 8, !noalias !84251
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1632) #82
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.bt = sub nuw i64 %i.bn, %.sroa.02.0.lcssa.i12
  store i64 %i.bt, ptr %i.bm, align 8, !noalias !84251
  %i.bu = load ptr, ptr %i.bb, align 8, !noalias !84251, !noundef !145
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.sroa.02.0.lcssa.i12
  store ptr %i.bv, ptr %i.bb, align 8, !noalias !84251
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef ptr @_ZN3std2io5Write18write_all_vectored17h40c7a148fd8c43cfE(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(address) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %.idx.i = shl i64 %2, 4                         ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %.loopexit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.f = add i64 %.idx.i, -16
  %i.g = lshr exact i64 %i.f, 4
  %i.h = add nuw nsw i64 %i.g, 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %.sroa.0.016.i = phi i64 [ %i.n, %bb.c ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.0.01014.i = phi ptr [ %i.m, %bb.c ], [ %1, %.lr.ph.preheader.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.01014.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noalias !84273, !noundef !145
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.c, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha5f5dbb46dac7742E.exit.thread.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha5f5dbb46dac7742E.exit.thread.i": ; preds = %bb.c, %.lr.ph.i
  %.sroa.0.0.lcssa.i = phi i64 [ %i.h, %bb.c ], [ %.sroa.0.016.i, %.lr.ph.i ] ; 5 uses
  %i.k = icmp ugt i64 %.sroa.0.0.lcssa.i, %2
  br i1 %i.k, label %bb.b, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h10ff4c171b1ed421E.exit.i", !prof !155

bb.b:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha5f5dbb46dac7742E.exit.thread.i"
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.0.0.lcssa.i, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1625) #82, !noalias !84274
  unreachable

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h10ff4c171b1ed421E.exit.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha5f5dbb46dac7742E.exit.thread.i"
  %i.l = icmp eq i64 %2, %.sroa.0.0.lcssa.i
  br i1 %i.l, label %.loopexit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.01014.i, i64 16 ; 2 uses
  %i.n = add nuw nsw i64 %.sroa.0.016.i, 1
  %i.o = icmp eq ptr %i.m, %i.d
  br i1 %i.o, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha5f5dbb46dac7742E.exit.thread.i", label %.lr.ph.i

.lr.ph:                                           ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h10ff4c171b1ed421E.exit.i"
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.0.0.lcssa.i
  %i.q = sub nuw i64 %2, %.sroa.0.0.lcssa.i
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !84275, !noalias !84276, !nonnull !145, !noundef !145
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.r, align 8, !alias.scope !84275, !noalias !84276, !nonnull !145, !noundef !145
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !invariant.load !145, !noalias !84277, !nonnull !145
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E.exit19
  %.sroa.0.02974 = phi ptr [ %i.p, %.lr.ph ], [ %.sroa.0.13038, %_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E.exit19 ] ; 6 uses
  %.sroa.8.073 = phi i64 [ %i.q, %.lr.ph ], [ %.sroa.8.136, %_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E.exit19 ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84278)
  %.idx = shl nuw nsw i64 %.sroa.8.073, 4
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.02974, i64 %.idx
  %i.w = icmp eq i64 %.sroa.8.073, 0
  br i1 %i.w, label %_ZN3std2io5Write14write_vectored17h4a5176782b65c683E.exit, label %.lr.ph120

bb.e:                                             ; preds = %.lr.ph120
  %i.x = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.v
  br i1 %i.y, label %_ZN3std2io5Write14write_vectored17h4a5176782b65c683E.exit, label %.lr.ph120

.lr.ph120:                                        ; preds = %bb.d, %bb.e
  %i.z = phi ptr [ %i.x, %bb.e ], [ %.sroa.0.02974, %bb.d ] ; 3 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !84279, !noalias !84280, !noundef !145 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.f

bb.f:                                             ; preds = %.lr.ph120
  %.val.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !84281, !noalias !84275, !noundef !145
  br label %_ZN3std2io5Write14write_vectored17h4a5176782b65c683E.exit

_ZN3std2io5Write14write_vectored17h4a5176782b65c683E.exit: ; preds = %bb.e, %bb.d, %bb.f
  %.sroa.3.0.i.i.i = phi i64 [ %i.ab, %bb.f ], [ 0, %bb.d ], [ 0, %bb.e ]
  %.sroa.02.0.i.i.i = phi ptr [ %.val.i.i.i, %bb.f ], [ inttoptr (i64 1 to ptr), %bb.d ], [ inttoptr (i64 1 to ptr), %bb.e ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.i.i.i) ]
  %i.ac = tail call { i64, ptr } %i.t(ptr noundef nonnull align 1 %.val.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.02.0.i.i.i, i64 noundef %.sroa.3.0.i.i.i), !noalias !84282, !inline_history !84270 ; 2 uses
  %i.ad = extractvalue { i64, ptr } %i.ac, 0      ; 2 uses
  %i.ae = extractvalue { i64, ptr } %i.ac, 1      ; 11 uses
  store i64 %i.ad, ptr %i.c, align 8
  store ptr %i.ae, ptr %i.u, align 8
  %i.af = trunc nuw i64 %i.ad to i1
  %i.ag = ptrtoint ptr %i.ae to i64               ; 4 uses
  br i1 %i.af, label %bb.g, label %bb.h

.loopexit.sink.split:                             ; preds = %bb.h, %.split58, %.split57, %.split, %bb.l, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h10ff4c171b1ed421E.exit.thread.i15"
  %.sroa.0.0.ph = phi ptr [ null, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h10ff4c171b1ed421E.exit.thread.i15" ], [ @1623, %bb.h ], [ %i.ae, %.split58 ], [ %i.ae, %.split57 ], [ %i.ae, %.split ], [ %i.ae, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E.exit19, %.loopexit.sink.split, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h10ff4c171b1ed421E.exit.i", %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %.sroa.0.0.ph, %.loopexit.sink.split ], [ null, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h10ff4c171b1ed421E.exit.i" ], [ null, %_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E.exit19 ]
  ret ptr %.sroa.0.0

bb.g:                                             ; preds = %_ZN3std2io5Write14write_vectored17h4a5176782b65c683E.exit
end_hunk_0
begin_hunk_1_@_ZN3std2io5Write18write_all_vectored17hd7eab76fffb0223bE:bb.a
  store ptr @1627, ptr %i.b, align 8, !noalias !84354
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.ap, align 8, !noalias !84354
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.aq, align 8, !noalias !84354
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ar, align 8, !noalias !84354
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.as, align 8, !noalias !84354
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1628) #82
  unreachable

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h10ff4c171b1ed421E.exit.i14"
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !noalias !84354, !noundef !145 ; 2 uses
  %i.av = icmp ult i64 %i.au, %.sroa.02.0.lcssa.i12
  br i1 %i.av, label %.noexc18, label %bb.i, !prof !147

bb.i:                                             ; preds = %bb.h
  %i.aw = sub nuw i64 %i.au, %.sroa.02.0.lcssa.i12
  store i64 %i.aw, ptr %i.at, align 8, !noalias !84354
  %i.ax = load ptr, ptr %i.ai, align 8, !noalias !84354, !noundef !145
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sroa.02.0.lcssa.i12
  store ptr %i.ay, ptr %i.ai, align 8, !noalias !84354
  br label %_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E.exit19

.noexc18:                                         ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !84354
  store ptr @1630, ptr %i.a, align 8, !noalias !84354
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.az, align 8, !noalias !84354
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.ba, align 8, !noalias !84354
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.bb, align 8, !noalias !84354
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.bc, align 8, !noalias !84354
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1632) #82
  unreachable

.split:                                           ; preds = %bb.e
  %.mask59 = and i64 %i.w, -4294967296
  %i.bd = icmp eq i64 %.mask59, 17179869184
  br i1 %i.bd, label %_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E.exit19.thread, label %.loopexit.sink.split

.split58:                                         ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.bf = load i8, ptr %i.be, align 8, !range !323, !noundef !145
  %i.bg = icmp eq i8 %i.bf, 35
  br i1 %i.bg, label %_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E.exit19.thread, label %.loopexit.sink.split

.split57:                                         ; preds = %bb.e
  %i.bh = getelementptr i8, ptr %i.u, i64 15
  %i.bi = load i8, ptr %i.bh, align 8, !range !323, !noundef !145
  %i.bj = icmp eq i8 %i.bi, 35
  br i1 %i.bj, label %_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E.exit19.thread, label %.loopexit.sink.split

bb.j:                                             ; preds = %bb.e
  %i.bk = icmp ult ptr %i.u, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.bk)
  %.mask = and i64 %i.w, -4294967296
  %i.bl = icmp eq i64 %.mask, 150323855360
  br i1 %i.bl, label %_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E.exit19.thread, label %.loopexit.sink.split

_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E.exit19.thread: ; preds = %bb.j, %.split, %.split57, %.split58
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h02aac197275825a2E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r)
  br label %_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E.exit19

_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E.exit19: ; preds = %bb.i, %_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E.exit19.thread
  %.sroa.0.13038 = phi ptr [ %.sroa.0.02972, %_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E.exit19.thread ], [ %i.ai, %bb.i ]
  %.sroa.8.136 = phi i64 [ %.sroa.8.071, %_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E.exit19.thread ], [ %i.ah, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_ZN3std2io5Write9write_all17h2537c7f591a59ea2E(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.sroa.0.042 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.116, %bb.k ] ; 4 uses
  %.sroa.5.041 = phi i64 [ %2, %.lr.ph ], [ %.sroa.5.114, %bb.k ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = load i64, ptr %0, align 8, !range !164, !alias.scope !84358, !noalias !84359, !noundef !145
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call { i64, ptr } @"_ZN61_$LT$std..io..stdio..StderrLock$u20$as$u20$std..io..Write$GT$5write17h5766cce4ff8238b1E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.042, i64 noundef %.sroa.5.041)
  br label %"_ZN66_$LT$termcolor..IoStandardStreamLock$u20$as$u20$std..io..Write$GT$5write17h35ce872412bf4c9cE.exit"

bb.d:                                             ; preds = %bb.b
  %i.h = tail call { i64, ptr } @"_ZN61_$LT$std..io..stdio..StdoutLock$u20$as$u20$std..io..Write$GT$5write17h2bc3c411733c9682E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.042, i64 noundef %.sroa.5.041)
  br label %"_ZN66_$LT$termcolor..IoStandardStreamLock$u20$as$u20$std..io..Write$GT$5write17h35ce872412bf4c9cE.exit"

"_ZN66_$LT$termcolor..IoStandardStreamLock$u20$as$u20$std..io..Write$GT$5write17h35ce872412bf4c9cE.exit": ; preds = %bb.c, %bb.d
  %.pn.i = phi { i64, ptr } [ %i.g, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.i = extractvalue { i64, ptr } %.pn.i, 0      ; 2 uses
  %i.j = extractvalue { i64, ptr } %.pn.i, 1      ; 11 uses
  store i64 %i.i, ptr %i.a, align 8
  store ptr %i.j, ptr %i.d, align 8
  %i.k = trunc nuw i64 %i.i to i1
  %i.l = ptrtoint ptr %i.j to i64                 ; 7 uses
  br i1 %i.k, label %bb.e, label %bb.f

.loopexit:                                        ; preds = %bb.k, %bb.a, %bb.h
  %.sroa.05.0 = phi ptr [ %.sroa.05.1, %bb.h ], [ null, %bb.a ], [ null, %bb.k ]
  ret ptr %.sroa.05.0

bb.e:                                             ; preds = %"_ZN66_$LT$termcolor..IoStandardStreamLock$u20$as$u20$std..io..Write$GT$5write17h35ce872412bf4c9cE.exit"
  %i.m = and i64 %i.l, 3
  switch i64 %i.m, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.j
    i64 0, label %.split36
    i64 1, label %.split35
  ], !prof !277

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %"_ZN66_$LT$termcolor..IoStandardStreamLock$u20$as$u20$std..io..Write$GT$5write17h35ce872412bf4c9cE.exit"
  %i.n = icmp eq ptr %i.j, null
  br i1 %i.n, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = icmp ult i64 %.sroa.5.041, %i.l
  br i1 %i.o, label %.noexc, label %bb.i, !prof !147

.noexc:                                           ; preds = %bb.g
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.l, i64 noundef %.sroa.5.041, i64 noundef %.sroa.5.041, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1624) #82
  unreachable

bb.h:                                             ; preds = %bb.j, %.split, %.split35, %.split36, %bb.f
  %.sroa.05.1 = phi ptr [ @1623, %bb.f ], [ %i.j, %.split36 ], [ %i.j, %.split35 ], [ %i.j, %.split ], [ %i.j, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.p = sub nuw i64 %.sroa.5.041, %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.042, i64 %i.l
  br label %bb.k

.split:                                           ; preds = %bb.e
  %.mask37 = and i64 %i.l, -4294967296
  %i.r = icmp eq i64 %.mask37, 17179869184
  br i1 %i.r, label %.thread, label %bb.h

.split36:                                         ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.t = load i8, ptr %i.s, align 8, !range !323, !noundef !145
  %i.u = icmp eq i8 %i.t, 35
  br i1 %i.u, label %.thread, label %bb.h

.split35:                                         ; preds = %bb.e
  %i.v = getelementptr i8, ptr %i.j, i64 15
  %i.w = load i8, ptr %i.v, align 8, !range !323, !noundef !145
  %i.x = icmp eq i8 %i.w, 35
  br i1 %i.x, label %.thread, label %bb.h

bb.j:                                             ; preds = %bb.e
  %i.y = icmp ult ptr %i.j, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.y)
  %.mask = and i64 %i.l, -4294967296
  %i.z = icmp eq i64 %.mask, 150323855360
  br i1 %i.z, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.j, %.split, %.split35, %.split36
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h02aac197275825a2E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %.thread
  %.sroa.0.116 = phi ptr [ %.sroa.0.042, %.thread ], [ %i.q, %bb.i ]
  %.sroa.5.114 = phi i64 [ %.sroa.5.041, %.thread ], [ %i.p, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aa = icmp eq i64 %.sroa.5.114, 0
  br i1 %i.aa, label %.loopexit, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal noalias noundef ptr @_ZN3std2io5Write9write_all17h2c10aa79ad3cc142E(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.e, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !alias.scope !84377, !noalias !84378, !nonnull !145, !align !149, !noundef !145 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84382)
  %.val.i.i.i.i.us = load i64, ptr %i.c, align 8, !alias.scope !84383, !noalias !84384, !noundef !145 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84385)
  %i.e = tail call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.us, i64 %2) ; 2 uses
  %i.f = load i64, ptr %i.b, align 8, !range !146, !alias.scope !84386, !noalias !84387, !noundef !145 ; 2 uses
  %i.g = icmp ugt i64 %i.e, %i.f
  %.pre12 = load i64, ptr %i.d, align 8, !alias.scope !84386, !noalias !84387 ; 6 uses
  br i1 %i.g, label %bb.b, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.i.i.us"

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.h = icmp sgt i64 %.pre12, -1
  tail call void @llvm.assume(i1 %i.h)
  %i.i = sub i64 %i.e, %.pre12                    ; 2 uses
  %i.j = sub nsw i64 %i.f, %.pre12
  %i.k = icmp ugt i64 %i.i, %i.j
  br i1 %i.k, label %bb.c, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.i.i.us", !prof !147

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h668137d68fb7f885E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef %.pre12, i64 noundef %i.i, i64 noundef 1, i64 noundef 1), !noalias !84387
  %.pre = load i64, ptr %i.d, align 8, !alias.scope !84386, !noalias !84387
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.i.i.us"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.i.i.us": ; preds = %bb.c, %bb.b, %.lr.ph.split.us
  %i.l = phi i64 [ %.pre, %bb.c ], [ %.pre12, %bb.b ], [ %.pre12, %.lr.ph.split.us ] ; 5 uses
  %i.m = icmp sgt i64 %i.l, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp ugt i64 %.val.i.i.i.i.us, %i.l
  br i1 %i.n, label %.lr.ph.preheader.i.i.i.i.i.i.us, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i._ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit_crit_edge.i.i.i.i.us"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i._ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit_crit_edge.i.i.i.i.us": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.i.i.us"
  %.val8.pre.i.i.i.i.us = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !84388, !noalias !84387
  br label %_ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit.i.i.i.i.us

.lr.ph.preheader.i.i.i.i.i.i.us:                  ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.i.i.us"
  %i.o = sub nuw i64 %.val.i.i.i.i.us, %i.l
  %i.p = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !84386, !noalias !84387, !nonnull !145, !noundef !145 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.l
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.q, i8 0, i64 %i.o, i1 false), !alias.scope !84389, !noalias !84390
  store i64 %.val.i.i.i.i.us, ptr %i.d, align 8, !alias.scope !84386, !noalias !84387
  br label %_ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit.i.i.i.i.us

_ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit.i.i.i.i.us: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.us, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i._ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit_crit_edge.i.i.i.i.us"
  %i.r = phi i64 [ %i.l, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i._ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit_crit_edge.i.i.i.i.us" ], [ %.val.i.i.i.i.us, %.lr.ph.preheader.i.i.i.i.i.i.us ] ; 2 uses
  %.val8.i.i.i.i.us = phi ptr [ %.val8.pre.i.i.i.i.us, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i._ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit_crit_edge.i.i.i.i.us" ], [ %i.p, %.lr.ph.preheader.i.i.i.i.i.i.us ]
  %i.s = getelementptr inbounds nuw i8, ptr %.val8.i.i.i.i.us, i64 %.val.i.i.i.i.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !84391
  %i.t = add i64 %.val.i.i.i.i.us, %2             ; 3 uses
  %i.u = icmp sgt i64 %i.r, -1
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp ugt i64 %i.t, %i.r
  br i1 %i.v, label %bb.d, label %"_ZN95_$LT$codespan_reporting..term..renderer..WriteStyleByRef$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17hf6880651752a1311E.exit.us"

bb.d:                                             ; preds = %_ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit.i.i.i.i.us
  store i64 %i.t, ptr %i.d, align 8, !alias.scope !84388, !noalias !84387
  br label %"_ZN95_$LT$codespan_reporting..term..renderer..WriteStyleByRef$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17hf6880651752a1311E.exit.us"

"_ZN95_$LT$codespan_reporting..term..renderer..WriteStyleByRef$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17hf6880651752a1311E.exit.us": ; preds = %bb.d, %_ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit.i.i.i.i.us
  store i64 %i.t, ptr %i.c, align 8, !alias.scope !84383, !noalias !84384
  br label %bb.e

bb.e:                                             ; preds = %"_ZN95_$LT$codespan_reporting..term..renderer..WriteStyleByRef$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17hf6880651752a1311E.exit.us", %bb.a
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define internal noundef ptr @_ZN3std2io5Write9write_all17h6309a4aea1555956E(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.p
  %.sroa.0.044 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.116, %bb.p ] ; 6 uses
  %.sroa.5.043 = phi i64 [ %2, %.lr.ph ], [ %.sroa.5.114, %bb.p ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84405)
  %i.f = load i64, ptr %0, align 8, !range !175, !alias.scope !84406, !noalias !84407, !noundef !145
  switch i64 %i.f, label %default.unreachable [
    i64 0, label %bb.c
    i64 1, label %bb.f
    i64 2, label %bb.i
  ], !prof !322

default.unreachable:                              ; preds = %bb.j, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.c, align 8, !range !164, !alias.scope !84408, !noalias !84409, !noundef !145
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = tail call { i64, ptr } @"_ZN61_$LT$std..io..stdio..StderrLock$u20$as$u20$std..io..Write$GT$5write17h5766cce4ff8238b1E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.044, i64 noundef %.sroa.5.043)
  br label %"_ZN64_$LT$termcolor..StandardStreamLock$u20$as$u20$std..io..Write$GT$5write17he53a2e3597660678E.exit"

bb.e:                                             ; preds = %bb.c
  %i.j = tail call { i64, ptr } @"_ZN61_$LT$std..io..stdio..StdoutLock$u20$as$u20$std..io..Write$GT$5write17h2bc3c411733c9682E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.044, i64 noundef %.sroa.5.043)
  br label %"_ZN64_$LT$termcolor..StandardStreamLock$u20$as$u20$std..io..Write$GT$5write17he53a2e3597660678E.exit"

bb.f:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.c, align 8, !range !164, !alias.scope !84410, !noalias !84411, !noundef !145
  %i.l = trunc nuw i64 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = tail call { i64, ptr } @"_ZN61_$LT$std..io..stdio..StderrLock$u20$as$u20$std..io..Write$GT$5write17h5766cce4ff8238b1E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.044, i64 noundef %.sroa.5.043)
  br label %"_ZN64_$LT$termcolor..StandardStreamLock$u20$as$u20$std..io..Write$GT$5write17he53a2e3597660678E.exit"

bb.h:                                             ; preds = %bb.f
  %i.n = tail call { i64, ptr } @"_ZN61_$LT$std..io..stdio..StdoutLock$u20$as$u20$std..io..Write$GT$5write17h2bc3c411733c9682E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.044, i64 noundef %.sroa.5.043)
  br label %"_ZN64_$LT$termcolor..StandardStreamLock$u20$as$u20$std..io..Write$GT$5write17he53a2e3597660678E.exit"

bb.i:                                             ; preds = %bb.b
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @77, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2276) #82, !noalias !84412
  unreachable

"_ZN64_$LT$termcolor..StandardStreamLock$u20$as$u20$std..io..Write$GT$5write17he53a2e3597660678E.exit": ; preds = %bb.d, %bb.e, %bb.g, %bb.h
  %.pn.i.i = phi { i64, ptr } [ %i.j, %bb.e ], [ %i.i, %bb.d ], [ %i.m, %bb.g ], [ %i.n, %bb.h ] ; 2 uses
  %i.o = extractvalue { i64, ptr } %.pn.i.i, 0    ; 2 uses
  %i.p = extractvalue { i64, ptr } %.pn.i.i, 1    ; 11 uses
  store i64 %i.o, ptr %i.a, align 8
  store ptr %i.p, ptr %i.e, align 8
  %i.q = trunc nuw i64 %i.o to i1
  %i.r = ptrtoint ptr %i.p to i64                 ; 7 uses
  br i1 %i.q, label %bb.j, label %bb.k

.loopexit:                                        ; preds = %bb.p, %bb.a, %bb.m
  %.sroa.05.0 = phi ptr [ %.sroa.05.1, %bb.m ], [ null, %bb.a ], [ null, %bb.p ]
  ret ptr %.sroa.05.0

bb.j:                                             ; preds = %"_ZN64_$LT$termcolor..StandardStreamLock$u20$as$u20$std..io..Write$GT$5write17he53a2e3597660678E.exit"
  %i.s = and i64 %i.r, 3
  switch i64 %i.s, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.o
    i64 0, label %.split36
    i64 1, label %.split35
  ], !prof !277

bb.k:                                             ; preds = %"_ZN64_$LT$termcolor..StandardStreamLock$u20$as$u20$std..io..Write$GT$5write17he53a2e3597660678E.exit"
  %i.t = icmp eq ptr %i.p, null
  br i1 %i.t, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = icmp ult i64 %.sroa.5.043, %i.r
  br i1 %i.u, label %.noexc, label %bb.n, !prof !147

.noexc:                                           ; preds = %bb.l
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.r, i64 noundef %.sroa.5.043, i64 noundef %.sroa.5.043, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1624) #82
  unreachable

bb.m:                                             ; preds = %bb.o, %.split, %.split35, %.split36, %bb.k
  %.sroa.05.1 = phi ptr [ @1623, %bb.k ], [ %i.p, %.split36 ], [ %i.p, %.split35 ], [ %i.p, %.split ], [ %i.p, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  %i.v = sub nuw i64 %.sroa.5.043, %i.r
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.044, i64 %i.r
  br label %bb.p

.split:                                           ; preds = %bb.j
  %.mask37 = and i64 %i.r, -4294967296
  %i.x = icmp eq i64 %.mask37, 17179869184
  br i1 %i.x, label %.thread, label %bb.m

.split36:                                         ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.z = load i8, ptr %i.y, align 8, !range !323, !noundef !145
  %i.aa = icmp eq i8 %i.z, 35
  br i1 %i.aa, label %.thread, label %bb.m

.split35:                                         ; preds = %bb.j
  %i.ab = getelementptr i8, ptr %i.p, i64 15
  %i.ac = load i8, ptr %i.ab, align 8, !range !323, !noundef !145
  %i.ad = icmp eq i8 %i.ac, 35
  br i1 %i.ad, label %.thread, label %bb.m

bb.o:                                             ; preds = %bb.j
  %i.ae = icmp ult ptr %i.p, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.ae)
  %.mask = and i64 %i.r, -4294967296
  %i.af = icmp eq i64 %.mask, 150323855360
  br i1 %i.af, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.o, %.split, %.split35, %.split36
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h02aac197275825a2E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %.thread
  %.sroa.0.116 = phi ptr [ %.sroa.0.044, %.thread ], [ %i.w, %bb.n ]
  %.sroa.5.114 = phi i64 [ %.sroa.5.043, %.thread ], [ %i.v, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ag = icmp eq i64 %.sroa.5.114, 0
  br i1 %i.ag, label %.loopexit, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef ptr @_ZN3std2io5Write9write_all17h8585cfe5f9e1ceb1E(ptr noalias noundef align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %.loopexit41, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = icmp ult i64 %2, 16
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84427)
  %i.g = load i64, ptr %i.c, align 8, !alias.scope !84428, !noalias !84425, !noundef !145 ; 3 uses
  %i.h = load i64, ptr %0, align 8, !range !146, !alias.scope !84428, !noalias !84425, !noundef !145
  %i.i = sub i64 %i.h, %i.g
  %i.j = icmp ugt i64 %2, %i.i
  br i1 %i.j, label %bb.c, label %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E.exit.i", !prof !147

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h668137d68fb7f885E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.g, i64 noundef %2, i64 noundef 1, i64 noundef 1), !noalias !84425
  %.pre.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !84429, !noalias !84425
  br label %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E.exit.i"

"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E.exit.i": ; preds = %bb.c, %bb.b
  %i.k = phi i64 [ %i.g, %bb.b ], [ %.pre.i.i.i, %bb.c ] ; 3 uses
  %i.l = icmp sgt i64 %i.k, -1
  tail call void @llvm.assume(i1 %i.l)
  %i.m = load ptr, ptr %i.d, align 8, !alias.scope !84429, !noalias !84425, !nonnull !145, !noundef !145
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !84429
  %i.o = add i64 %i.k, %2
  store i64 %i.o, ptr %i.c, align 8, !alias.scope !84429, !noalias !84425
  br i1 %i.f, label %.lr.ph.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i

.lr.ph.i.i:                                       ; preds = %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E.exit.i", %bb.d
  %.sroa.01.05.i.i = phi i64 [ %i.s, %bb.d ], [ 0, %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E.exit.i" ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.i.i
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !84430, !noalias !84424, !noundef !145
  %i.r = icmp eq i8 %i.q, 10
  br i1 %i.r, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread6.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.s = add nuw nsw i64 %.sroa.01.05.i.i, 1      ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.s, %2
  br i1 %exitcond.not.i.i, label %.loopexit41.sink.split, label %.lr.ph.i.i
end_hunk_1
begin_hunk_2_@_ZN4core3fmt5Write10write_char17h4e6a9b3248e8ae8fE:bb.a

bb.c:                                             ; preds = %bb.a
  %i.s = trunc nuw nsw i32 %1 to i8
  store i8 %i.s, ptr %i.b, align 4, !alias.scope !86530
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit

bb.d:                                             ; preds = %bb.b
  %i.t = or disjoint i8 %i.i, -64
  store i8 %i.t, ptr %i.b, align 4, !alias.scope !86530
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.g, ptr %i.u, align 1, !alias.scope !86530
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit

bb.e:                                             ; preds = %bb.b
  %i.v = icmp samesign ult i32 %1, 65536
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = or disjoint i8 %i.m, -32
  store i8 %i.w, ptr %i.b, align 4, !alias.scope !86530
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.k, ptr %i.x, align 1, !alias.scope !86530
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.g, ptr %i.y, align 2, !alias.scope !86530
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.r, ptr %i.b, align 4, !alias.scope !86530
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.o, ptr %i.z, align 1, !alias.scope !86530
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.k, ptr %i.aa, align 2, !alias.scope !86530
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.g, ptr %i.ab, align 1, !alias.scope !86530
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit

_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86531)
  %i.ac = load ptr, ptr %0, align 8, !alias.scope !86531, !noalias !86532, !nonnull !145, !align !163, !noundef !145
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !86531, !noalias !86532, !nonnull !145, !align !149, !noundef !145
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !invariant.load !145, !noalias !86533, !nonnull !145
  %i.ah = call noundef ptr %i.ag(ptr noundef nonnull align 1 %i.ac, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %.sroa.0.05.i), !noalias !86531, !inline_history !86534 ; 2 uses
  %.not.i = icmp ne ptr %i.ah, null               ; 2 uses
  br i1 %.not.i, label %bb.h, label %"_ZN116_$LT$nickel_lang_core..program..doc..ExtractedDocumentation..write_markdown..IoToFmt$u20$as$u20$core..fmt..Write$GT$9write_str17h51699d713725c1aeE.exit"

bb.h:                                             ; preds = %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !86533
  store ptr %i.ah, ptr %i.a, align 8, !noalias !86533
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h02aac197275825a2E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !86531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !86533
  br label %"_ZN116_$LT$nickel_lang_core..program..doc..ExtractedDocumentation..write_markdown..IoToFmt$u20$as$u20$core..fmt..Write$GT$9write_str17h51699d713725c1aeE.exit"

"_ZN116_$LT$nickel_lang_core..program..doc..ExtractedDocumentation..write_markdown..IoToFmt$u20$as$u20$core..fmt..Write$GT$9write_str17h51699d713725c1aeE.exit": ; preds = %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.not.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_ZN4core3fmt5Write10write_char17h7f6ac1d08176f73aE(ptr noalias noundef align 8 dereferenceable(32) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %i.b = icmp samesign ult i32 %1, 128
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %1, 2048
  %i.d = trunc i32 %1 to i8
  %i.e = and i8 %i.d, 63
  %i.f = or disjoint i8 %i.e, -128                ; 3 uses
  %i.g = lshr i32 %1, 6
  %i.h = trunc i32 %i.g to i8                     ; 2 uses
  %i.i = and i8 %i.h, 63
  %i.j = or disjoint i8 %i.i, -128                ; 2 uses
  %i.k = lshr i32 %1, 12
  %i.l = trunc i32 %i.k to i8                     ; 2 uses
  %i.m = and i8 %i.l, 63
  %i.n = or disjoint i8 %i.m, -128
  %i.o = lshr i32 %1, 18
  %i.p = trunc nuw nsw i32 %i.o to i8
  %i.q = or disjoint i8 %i.p, -16
  br i1 %i.c, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.r = trunc nuw nsw i32 %1 to i8
  store i8 %i.r, ptr %i.a, align 4, !alias.scope !86537
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit

bb.d:                                             ; preds = %bb.b
  %i.s = or disjoint i8 %i.h, -64
  store i8 %i.s, ptr %i.a, align 4, !alias.scope !86537
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.f, ptr %i.t, align 1, !alias.scope !86537
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit

bb.e:                                             ; preds = %bb.b
  %i.u = icmp samesign ult i32 %1, 65536
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = or disjoint i8 %i.l, -32
  store i8 %i.v, ptr %i.a, align 4, !alias.scope !86537
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.j, ptr %i.w, align 1, !alias.scope !86537
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.f, ptr %i.x, align 2, !alias.scope !86537
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.q, ptr %i.a, align 4, !alias.scope !86537
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.n, ptr %i.y, align 1, !alias.scope !86537
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.j, ptr %i.z, align 2, !alias.scope !86537
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.f, ptr %i.aa, align 1, !alias.scope !86537
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit

_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.ab = call noundef zeroext i1 @"_ZN52_$LT$pretty..FmtText$u20$as$u20$core..fmt..Write$GT$9write_str17h5642b94cc31c1a2aE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef %.sroa.0.05.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.ab
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_ZN4core3fmt5Write10write_char17h846ad3158121a2a0E(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca i32, align 4                  ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  store i32 0, ptr %.sroa.0, align 4
  %i.a = icmp samesign ult i32 %1, 128
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %1, 2048
  %i.c = trunc i32 %1 to i8
  %i.d = and i8 %i.c, 63
  %i.e = or disjoint i8 %i.d, -128                ; 3 uses
  %i.f = lshr i32 %1, 6
  %i.g = trunc i32 %i.f to i8                     ; 2 uses
  %i.h = and i8 %i.g, 63
  %i.i = or disjoint i8 %i.h, -128                ; 2 uses
  %i.j = lshr i32 %1, 12
  %i.k = trunc i32 %i.j to i8                     ; 2 uses
  %i.l = and i8 %i.k, 63
  %i.m = or disjoint i8 %i.l, -128
  %i.n = lshr i32 %1, 18
  %i.o = trunc nuw nsw i32 %i.n to i8
  %i.p = or disjoint i8 %i.o, -16
  br i1 %i.b, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.q = trunc nuw nsw i32 %1 to i8
  store i8 %i.q, ptr %.sroa.0, align 4, !alias.scope !86563
  br label %.lr.ph.split.us.i.i

bb.d:                                             ; preds = %bb.b
  %i.r = or disjoint i8 %i.g, -64
  store i8 %i.r, ptr %.sroa.0, align 4, !alias.scope !86563
  %.sroa.0.1..sroa_idx17 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  store i8 %i.e, ptr %.sroa.0.1..sroa_idx17, align 1, !alias.scope !86563
  br label %.lr.ph.split.us.i.i

bb.e:                                             ; preds = %bb.b
  %i.s = icmp samesign ult i32 %1, 65536
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = or disjoint i8 %i.k, -32
  store i8 %i.t, ptr %.sroa.0, align 4, !alias.scope !86563
  %.sroa.0.1..sroa_idx16 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  store i8 %i.i, ptr %.sroa.0.1..sroa_idx16, align 1, !alias.scope !86563
  %.sroa.0.2..sroa_idx18 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2
  store i8 %i.e, ptr %.sroa.0.2..sroa_idx18, align 2, !alias.scope !86563
  br label %.lr.ph.split.us.i.i

bb.g:                                             ; preds = %bb.e
  store i8 %i.p, ptr %.sroa.0, align 4, !alias.scope !86563
  %.sroa.0.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  store i8 %i.m, ptr %.sroa.0.1..sroa_idx, align 1, !alias.scope !86563
  %.sroa.0.2..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2
  store i8 %i.i, ptr %.sroa.0.2..sroa_idx, align 2, !alias.scope !86563
  %.sroa.0.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 3
  store i8 %i.e, ptr %.sroa.0.3..sroa_idx, align 1, !alias.scope !86563
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %bb.g, %bb.f, %bb.d, %bb.c
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86564)
  %i.u = load ptr, ptr %0, align 8, !alias.scope !86564, !noalias !86565, !nonnull !145, !align !149, !noundef !145
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86566)
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !86567, !noalias !86568, !nonnull !145, !align !149, !noundef !145 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 4 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86569)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86570)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86571)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86573)
  %.val.i.i.i.i.us.i.i = load i64, ptr %i.w, align 8, !alias.scope !86574, !noalias !86575, !noundef !145 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86576)
  %i.y = tail call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.us.i.i, i64 %.sroa.0.05.i) ; 2 uses
  %i.z = load i64, ptr %i.v, align 8, !range !146, !alias.scope !86577, !noalias !86578, !noundef !145 ; 2 uses
  %i.aa = icmp ugt i64 %i.y, %i.z
  %.pre12.i.i = load i64, ptr %i.x, align 8, !alias.scope !86577, !noalias !86578 ; 6 uses
  br i1 %i.aa, label %bb.h, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.i.i.us.i.i"

bb.h:                                             ; preds = %.lr.ph.split.us.i.i
  %i.ab = icmp sgt i64 %.pre12.i.i, -1
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = sub i64 %i.y, %.pre12.i.i               ; 2 uses
  %i.ad = sub nsw i64 %i.z, %.pre12.i.i
  %i.ae = icmp ugt i64 %i.ac, %i.ad
  br i1 %i.ae, label %bb.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.i.i.us.i.i", !prof !147

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h668137d68fb7f885E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %.pre12.i.i, i64 noundef %i.ac, i64 noundef 1, i64 noundef 1), !noalias !86578
  %.pre.i.i = load i64, ptr %i.x, align 8, !alias.scope !86577, !noalias !86578
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.i.i.us.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.i.i.us.i.i": ; preds = %bb.i, %bb.h, %.lr.ph.split.us.i.i
  %i.af = phi i64 [ %.pre.i.i, %bb.i ], [ %.pre12.i.i, %bb.h ], [ %.pre12.i.i, %.lr.ph.split.us.i.i ] ; 5 uses
  %i.ag = icmp sgt i64 %i.af, -1
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = icmp ugt i64 %.val.i.i.i.i.us.i.i, %i.af
  br i1 %i.ah, label %.lr.ph.preheader.i.i.i.i.i.i.us.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i._ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit_crit_edge.i.i.i.i.us.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i._ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit_crit_edge.i.i.i.i.us.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.i.i.us.i.i"
  %.val8.pre.i.i.i.i.us.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !alias.scope !86579, !noalias !86578
  br label %_ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit.i.i.i.i.us.i.i

.lr.ph.preheader.i.i.i.i.i.i.us.i.i:              ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.i.i.us.i.i"
  %i.ai = sub nuw i64 %.val.i.i.i.i.us.i.i, %i.af
  %i.aj = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !alias.scope !86577, !noalias !86578, !nonnull !145, !noundef !145 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.af
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ak, i8 0, i64 %i.ai, i1 false), !alias.scope !86580, !noalias !86581
  store i64 %.val.i.i.i.i.us.i.i, ptr %i.x, align 8, !alias.scope !86577, !noalias !86578
  br label %_ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit.i.i.i.i.us.i.i

_ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit.i.i.i.i.us.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.us.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i._ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit_crit_edge.i.i.i.i.us.i.i"
  %i.al = phi i64 [ %i.af, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i._ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit_crit_edge.i.i.i.i.us.i.i" ], [ %.val.i.i.i.i.us.i.i, %.lr.ph.preheader.i.i.i.i.i.i.us.i.i ] ; 2 uses
  %.val8.i.i.i.i.us.i.i = phi ptr [ %.val8.pre.i.i.i.i.us.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i._ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit_crit_edge.i.i.i.i.us.i.i" ], [ %i.aj, %.lr.ph.preheader.i.i.i.i.i.i.us.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.val8.i.i.i.i.us.i.i, i64 %.val.i.i.i.i.us.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.am, ptr noundef nonnull readonly align 4 dereferenceable(1) %.sroa.0, i64 %.sroa.0.05.i, i1 false), !noalias !86582
  %i.an = add i64 %.val.i.i.i.i.us.i.i, %.sroa.0.05.i ; 3 uses
  %i.ao = icmp sgt i64 %i.al, -1
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = icmp ugt i64 %i.an, %i.al
  br i1 %i.ap, label %bb.j, label %"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hfcf27e771c81e37fE.exit"

bb.j:                                             ; preds = %_ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit.i.i.i.i.us.i.i
  store i64 %i.an, ptr %i.x, align 8, !alias.scope !86579, !noalias !86578
  br label %"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hfcf27e771c81e37fE.exit"

"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hfcf27e771c81e37fE.exit": ; preds = %_ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit.i.i.i.i.us.i.i, %bb.j
  store i64 %i.an, ptr %i.w, align 8, !alias.scope !86574, !noalias !86575
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_ZN4core3fmt5Write10write_char17h8833da605caa3808E(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %i.b = icmp samesign ult i32 %1, 128
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %1, 2048
  %i.d = trunc i32 %1 to i8
  %i.e = and i8 %i.d, 63
  %i.f = or disjoint i8 %i.e, -128                ; 3 uses
  %i.g = lshr i32 %1, 6
  %i.h = trunc i32 %i.g to i8                     ; 2 uses
  %i.i = and i8 %i.h, 63
  %i.j = or disjoint i8 %i.i, -128                ; 2 uses
  %i.k = lshr i32 %1, 12
  %i.l = trunc i32 %i.k to i8                     ; 2 uses
  %i.m = and i8 %i.l, 63
  %i.n = or disjoint i8 %i.m, -128
  %i.o = lshr i32 %1, 18
  %i.p = trunc nuw nsw i32 %i.o to i8
  %i.q = or disjoint i8 %i.p, -16
  br i1 %i.c, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.r = trunc nuw nsw i32 %1 to i8
  store i8 %i.r, ptr %i.a, align 4, !alias.scope !86590
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit

bb.d:                                             ; preds = %bb.b
  %i.s = or disjoint i8 %i.h, -64
  store i8 %i.s, ptr %i.a, align 4, !alias.scope !86590
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.f, ptr %i.t, align 1, !alias.scope !86590
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit

bb.e:                                             ; preds = %bb.b
  %i.u = icmp samesign ult i32 %1, 65536
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = or disjoint i8 %i.l, -32
  store i8 %i.v, ptr %i.a, align 4, !alias.scope !86590
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.j, ptr %i.w, align 1, !alias.scope !86590
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.f, ptr %i.x, align 2, !alias.scope !86590
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.q, ptr %i.a, align 4, !alias.scope !86590
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.n, ptr %i.y, align 1, !alias.scope !86590
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.j, ptr %i.z, align 2, !alias.scope !86590
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.f, ptr %i.aa, align 1, !alias.scope !86590
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit

_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86591)
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !86591, !noalias !86592, !nonnull !145, !align !149, !noundef !145
  %i.ab = call noundef ptr @"_ZN57_$LT$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$9write_all17h767631693dd4e92aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %.val.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef %.sroa.0.05.i), !noalias !86591 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.not.i = icmp ne ptr %i.ab, null               ; 2 uses
  br i1 %.not.i, label %bb.h, label %"_ZN93_$LT$crossterm..command..write_command_ansi..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hc4848279138fdd07E.exit"

bb.h:                                             ; preds = %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !86593, !noalias !86592, !noundef !145
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17ha03aecc4d21d0cb7E.exit.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h02aac197275825a2E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ac)
          to label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17ha03aecc4d21d0cb7E.exit.i" unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ab, ptr %i.ac, align 8, !alias.scope !86591, !noalias !86592
  resume { ptr, i32 } %i.af

"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17ha03aecc4d21d0cb7E.exit.i": ; preds = %bb.i, %bb.h
  store ptr %i.ab, ptr %i.ac, align 8, !alias.scope !86591, !noalias !86592
  br label %"_ZN93_$LT$crossterm..command..write_command_ansi..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hc4848279138fdd07E.exit"

"_ZN93_$LT$crossterm..command..write_command_ansi..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hc4848279138fdd07E.exit": ; preds = %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit, %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17ha03aecc4d21d0cb7E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %.not.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_ZN4core3fmt5Write10write_char17h969c652126ebeab3E(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca i32, align 4                  ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  store i32 0, ptr %.sroa.0, align 4
  %i.a = icmp samesign ult i32 %1, 128
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %1, 2048
  %i.c = trunc i32 %1 to i8
  %i.d = and i8 %i.c, 63
  %i.e = or disjoint i8 %i.d, -128                ; 3 uses
  %i.f = lshr i32 %1, 6
  %i.g = trunc i32 %i.f to i8                     ; 2 uses
  %i.h = and i8 %i.g, 63
  %i.i = or disjoint i8 %i.h, -128                ; 2 uses
  %i.j = lshr i32 %1, 12
  %i.k = trunc i32 %i.j to i8                     ; 2 uses
  %i.l = and i8 %i.k, 63
  %i.m = or disjoint i8 %i.l, -128
  %i.n = lshr i32 %1, 18
  %i.o = trunc nuw nsw i32 %i.n to i8
  %i.p = or disjoint i8 %i.o, -16
  br i1 %i.b, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.q = trunc nuw nsw i32 %1 to i8
  store i8 %i.q, ptr %.sroa.0, align 4, !alias.scope !86617
  br label %.lr.ph.split.us.i.i

bb.d:                                             ; preds = %bb.b
  %i.r = or disjoint i8 %i.g, -64
  store i8 %i.r, ptr %.sroa.0, align 4, !alias.scope !86617
  %.sroa.0.1..sroa_idx11 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  store i8 %i.e, ptr %.sroa.0.1..sroa_idx11, align 1, !alias.scope !86617
  br label %.lr.ph.split.us.i.i

bb.e:                                             ; preds = %bb.b
  %i.s = icmp samesign ult i32 %1, 65536
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = or disjoint i8 %i.k, -32
  store i8 %i.t, ptr %.sroa.0, align 4, !alias.scope !86617
  %.sroa.0.1..sroa_idx10 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  store i8 %i.i, ptr %.sroa.0.1..sroa_idx10, align 1, !alias.scope !86617
  %.sroa.0.2..sroa_idx12 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2
  store i8 %i.e, ptr %.sroa.0.2..sroa_idx12, align 2, !alias.scope !86617
  br label %.lr.ph.split.us.i.i

bb.g:                                             ; preds = %bb.e
  store i8 %i.p, ptr %.sroa.0, align 4, !alias.scope !86617
  %.sroa.0.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  store i8 %i.m, ptr %.sroa.0.1..sroa_idx, align 1, !alias.scope !86617
  %.sroa.0.2..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2
  store i8 %i.i, ptr %.sroa.0.2..sroa_idx, align 2, !alias.scope !86617
  %.sroa.0.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 3
  store i8 %i.e, ptr %.sroa.0.3..sroa_idx, align 1, !alias.scope !86617
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %bb.g, %bb.f, %bb.d, %bb.c
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86618)
  %i.u = load ptr, ptr %0, align 8, !alias.scope !86618, !noalias !86619, !nonnull !145, !align !149, !noundef !145
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86620)
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !86621, !noalias !86622, !nonnull !145, !align !149, !noundef !145 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86623)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86624)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86625)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86626)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86627)
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !86628, !noalias !86629, !noundef !145 ; 3 uses
  %i.y = load i64, ptr %i.v, align 8, !range !146, !alias.scope !86628, !noalias !86629, !noundef !145
  %i.z = sub i64 %i.y, %i.x
  %i.aa = icmp ugt i64 %.sroa.0.05.i, %i.z
  br i1 %i.aa, label %bb.h, label %"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h900aedffb7483c50E.exit", !prof !147

bb.h:                                             ; preds = %.lr.ph.split.us.i.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h668137d68fb7f885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v, i64 noundef %i.x, i64 noundef %.sroa.0.05.i, i64 noundef 1, i64 noundef 1), !noalias !86629
  %.pre.i.i.i.i.i.us.i.i = load i64, ptr %i.w, align 8, !alias.scope !86630, !noalias !86629
  br label %"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h900aedffb7483c50E.exit"

"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h900aedffb7483c50E.exit": ; preds = %.lr.ph.split.us.i.i, %bb.h
  %i.ab = phi i64 [ %i.x, %.lr.ph.split.us.i.i ], [ %.pre.i.i.i.i.i.us.i.i, %bb.h ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ad = icmp sgt i64 %i.ab, -1
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = load ptr, ptr %i.ac, align 8, !alias.scope !86630, !noalias !86629, !nonnull !145, !noundef !145
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.af, ptr noundef nonnull readonly align 4 dereferenceable(1) %.sroa.0, i64 %.sroa.0.05.i, i1 false), !noalias !86631
  %i.ag = add nuw i64 %i.ab, %.sroa.0.05.i
  store i64 %i.ag, ptr %i.w, align 8, !alias.scope !86630, !noalias !86629
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_ZN4core3fmt5Write10write_char17h9c713fe7a7ee8d68E(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
end_hunk_2
begin_hunk_3_@"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h67ecd03554015180E":bb.a
  %.sroa.5.114.i = phi i64 [ %.sroa.5.041.i, %.thread.i ], [ %i.r, %bb.f ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !116444
  %i.ac = icmp eq i64 %.sroa.5.114.i, 0
  br i1 %i.ac, label %_ZN3std2io5Write9write_all17hc3d26a742415a7fbE.exit.thread, label %bb.b

_ZN3std2io5Write9write_all17hc3d26a742415a7fbE.exit.thread10: ; preds = %bb.d, %.split36.i, %.split35.i
  %.sroa.05.1.i.ph = phi ptr [ %i.l, %.split35.i ], [ %i.l, %.split36.i ], [ @1623, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !116444
  br label %bb.i

_ZN3std2io5Write9write_all17hc3d26a742415a7fbE.exit: ; preds = %.split.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !116444
  %.not.not = icmp eq ptr %i.l, null
  br i1 %.not.not, label %_ZN3std2io5Write9write_all17hc3d26a742415a7fbE.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZN3std2io5Write9write_all17hc3d26a742415a7fbE.exit.thread10, %_ZN3std2io5Write9write_all17hc3d26a742415a7fbE.exit
  %.sroa.05.1.i13 = phi ptr [ %.sroa.05.1.i.ph, %_ZN3std2io5Write9write_all17hc3d26a742415a7fbE.exit.thread10 ], [ %i.l, %_ZN3std2io5Write9write_all17hc3d26a742415a7fbE.exit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !116447, !noundef !145
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17ha03aecc4d21d0cb7E.exit", label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h02aac197275825a2E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ad)
          to label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17ha03aecc4d21d0cb7E.exit" unwind label %bb.k

_ZN3std2io5Write9write_all17hc3d26a742415a7fbE.exit.thread: ; preds = %bb.h, %bb.a, %_ZN3std2io5Write9write_all17hc3d26a742415a7fbE.exit, %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17ha03aecc4d21d0cb7E.exit"
  %.not8 = phi i1 [ true, %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17ha03aecc4d21d0cb7E.exit" ], [ false, %_ZN3std2io5Write9write_all17hc3d26a742415a7fbE.exit ], [ false, %bb.a ], [ false, %bb.h ]
  ret i1 %.not8

bb.k:                                             ; preds = %bb.j
  %i.ag = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.05.1.i13, ptr %i.ad, align 8
  resume { ptr, i32 } %i.ag

"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17ha03aecc4d21d0cb7E.exit": ; preds = %bb.i, %bb.j
  store ptr %.sroa.05.1.i13, ptr %i.ad, align 8
  br label %_ZN3std2io5Write9write_all17hc3d26a742415a7fbE.exit.thread
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h900aedffb7483c50E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !145, !align !149, !noundef !145
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116466)
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %_ZN3std2io5Write9write_all17haff9c4328bff8c9aE.exit, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !alias.scope !116467, !noalias !116468, !nonnull !145, !align !149, !noundef !145 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116469)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116470)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116473)
  %i.f = load i64, ptr %i.d, align 8, !alias.scope !116474, !noalias !116475, !noundef !145 ; 3 uses
  %i.g = load i64, ptr %i.c, align 8, !range !146, !alias.scope !116474, !noalias !116475, !noundef !145
  %i.h = sub i64 %i.g, %i.f
  %i.i = icmp ugt i64 %2, %i.h
  br i1 %i.i, label %bb.b, label %"_ZN62_$LT$termcolor..NoColor$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h08e163a173e32062E.exit.us.i", !prof !147

bb.b:                                             ; preds = %.lr.ph.split.us.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h668137d68fb7f885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.f, i64 noundef %2, i64 noundef 1, i64 noundef 1), !noalias !116475
  %.pre.i.i.i.i.i.us.i = load i64, ptr %i.d, align 8, !alias.scope !116476, !noalias !116475
  br label %"_ZN62_$LT$termcolor..NoColor$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h08e163a173e32062E.exit.us.i"

"_ZN62_$LT$termcolor..NoColor$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h08e163a173e32062E.exit.us.i": ; preds = %bb.b, %.lr.ph.split.us.i
  %i.j = phi i64 [ %i.f, %.lr.ph.split.us.i ], [ %.pre.i.i.i.i.i.us.i, %bb.b ] ; 3 uses
  %i.k = icmp sgt i64 %i.j, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = load ptr, ptr %i.e, align 8, !alias.scope !116476, !noalias !116475, !nonnull !145, !noundef !145
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !116477
  %i.n = add i64 %i.j, %2
  store i64 %i.n, ptr %i.d, align 8, !alias.scope !116476, !noalias !116475
  br label %_ZN3std2io5Write9write_all17haff9c4328bff8c9aE.exit

_ZN3std2io5Write9write_all17haff9c4328bff8c9aE.exit: ; preds = %"_ZN62_$LT$termcolor..NoColor$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h08e163a173e32062E.exit.us.i", %bb.a
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h99e21db7a76bb6a1E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !145, !align !149, !noundef !145
  %i.b = tail call noundef ptr @_ZN3std2io5Write9write_all17h8585cfe5f9e1ceb1E(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) ; 3 uses
  %.not = icmp ne ptr %i.b, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !116480, !noundef !145
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17ha03aecc4d21d0cb7E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h02aac197275825a2E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.c)
          to label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17ha03aecc4d21d0cb7E.exit" unwind label %bb.e

bb.d:                                             ; preds = %bb.a, %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17ha03aecc4d21d0cb7E.exit"
  ret i1 %.not

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  store ptr %i.b, ptr %i.c, align 8
  resume { ptr, i32 } %i.f

"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17ha03aecc4d21d0cb7E.exit": ; preds = %bb.b, %bb.c
  store ptr %i.b, ptr %i.c, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hdd46e49e1b8dee5fE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !145, !align !149, !noundef !145 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116492)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116493)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116494)
  %.val.i.i = load i64, ptr %i.b, align 8, !alias.scope !116495, !noalias !116496, !noundef !145 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116497)
  %i.c = tail call i64 @llvm.uadd.sat.i64(i64 %.val.i.i, i64 %2) ; 2 uses
  %i.d = load i64, ptr %i.a, align 8, !range !146, !alias.scope !116498, !noalias !116499, !noundef !145 ; 2 uses
  %i.e = icmp ugt i64 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i"

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !116498, !noalias !116499, !noundef !145 ; 4 uses
  %i.h = icmp sgt i64 %i.g, -1
  tail call void @llvm.assume(i1 %i.h)
  %i.i = sub i64 %i.c, %i.g                       ; 2 uses
  %i.j = sub nsw i64 %i.d, %i.g
  %i.k = icmp ugt i64 %i.i, %i.j
  br i1 %i.k, label %bb.c, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i", !prof !147

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h668137d68fb7f885E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.g, i64 noundef %i.i, i64 noundef 1, i64 noundef 1), !noalias !116499
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i": ; preds = %bb.c, %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !116498, !noalias !116499, !noundef !145 ; 5 uses
  %i.n = icmp sgt i64 %i.m, -1
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp ugt i64 %.val.i.i, %i.m
  br i1 %i.o, label %.lr.ph.preheader.i.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i._ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit_crit_edge.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i._ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit_crit_edge.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i"
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val8.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !116500, !noalias !116499
  br label %_ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i"
  %i.p = sub nuw i64 %.val.i.i, %i.m
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !116498, !noalias !116499, !nonnull !145, !noundef !145 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.m
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.s, i8 0, i64 %i.p, i1 false), !alias.scope !116501, !noalias !116502
  store i64 %.val.i.i, ptr %i.l, align 8, !alias.scope !116498, !noalias !116499
  br label %_ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit.i.i

_ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i._ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit_crit_edge.i.i"
  %i.t = phi i64 [ %i.m, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i._ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit_crit_edge.i.i" ], [ %.val.i.i, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.val8.i.i = phi ptr [ %.val8.pre.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i._ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit_crit_edge.i.i" ], [ %i.r, %.lr.ph.preheader.i.i.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %.val8.i.i, i64 %.val.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !116503
  %i.v = add i64 %.val.i.i, %2                    ; 3 uses
  %i.w = icmp sgt i64 %i.t, -1
  tail call void @llvm.assume(i1 %i.w)
  %i.x = icmp ugt i64 %i.v, %i.t
  br i1 %i.x, label %bb.d, label %"_ZN95_$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$9write_all17ha1f4f06b46036648E.exit"

bb.d:                                             ; preds = %_ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit.i.i
  store i64 %i.v, ptr %i.l, align 8, !alias.scope !116500, !noalias !116499
  br label %"_ZN95_$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$9write_all17ha1f4f06b46036648E.exit"

"_ZN95_$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$9write_all17ha1f4f06b46036648E.exit": ; preds = %_ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit.i.i, %bb.d
  store i64 %i.v, ptr %i.b, align 8, !alias.scope !116495, !noalias !116496
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hfcf27e771c81e37fE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !145, !align !149, !noundef !145
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116524)
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %_ZN3std2io5Write9write_all17h2c10aa79ad3cc142E.exit, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !alias.scope !116525, !noalias !116526, !nonnull !145, !align !149, !noundef !145 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116529)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116530)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116531)
  %.val.i.i.i.i.us.i = load i64, ptr %i.d, align 8, !alias.scope !116532, !noalias !116533, !noundef !145 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116534)
  %i.f = tail call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.us.i, i64 %2) ; 2 uses
  %i.g = load i64, ptr %i.c, align 8, !range !146, !alias.scope !116535, !noalias !116536, !noundef !145 ; 2 uses
  %i.h = icmp ugt i64 %i.f, %i.g
  %.pre12.i = load i64, ptr %i.e, align 8, !alias.scope !116535, !noalias !116536 ; 6 uses
  br i1 %i.h, label %bb.b, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.i.i.us.i"

bb.b:                                             ; preds = %.lr.ph.split.us.i
  %i.i = icmp sgt i64 %.pre12.i, -1
  tail call void @llvm.assume(i1 %i.i)
  %i.j = sub i64 %i.f, %.pre12.i                  ; 2 uses
  %i.k = sub nsw i64 %i.g, %.pre12.i
  %i.l = icmp ugt i64 %i.j, %i.k
  br i1 %i.l, label %bb.c, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.i.i.us.i", !prof !147

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h668137d68fb7f885E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %.pre12.i, i64 noundef %i.j, i64 noundef 1, i64 noundef 1), !noalias !116536
  %.pre.i = load i64, ptr %i.e, align 8, !alias.scope !116535, !noalias !116536
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.i.i.us.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.i.i.us.i": ; preds = %bb.c, %bb.b, %.lr.ph.split.us.i
  %i.m = phi i64 [ %.pre.i, %bb.c ], [ %.pre12.i, %bb.b ], [ %.pre12.i, %.lr.ph.split.us.i ] ; 5 uses
  %i.n = icmp sgt i64 %i.m, -1
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp ugt i64 %.val.i.i.i.i.us.i, %i.m
  br i1 %i.o, label %.lr.ph.preheader.i.i.i.i.i.i.us.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i._ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit_crit_edge.i.i.i.i.us.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i._ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit_crit_edge.i.i.i.i.us.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.i.i.us.i"
  %.val8.pre.i.i.i.i.us.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !alias.scope !116537, !noalias !116536
  br label %_ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit.i.i.i.i.us.i

.lr.ph.preheader.i.i.i.i.i.i.us.i:                ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.i.i.us.i"
  %i.p = sub nuw i64 %.val.i.i.i.i.us.i, %i.m
  %i.q = load ptr, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !alias.scope !116535, !noalias !116536, !nonnull !145, !noundef !145 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.m
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.r, i8 0, i64 %i.p, i1 false), !alias.scope !116538, !noalias !116539
  store i64 %.val.i.i.i.i.us.i, ptr %i.e, align 8, !alias.scope !116535, !noalias !116536
  br label %_ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit.i.i.i.i.us.i

_ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit.i.i.i.i.us.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.us.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i._ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit_crit_edge.i.i.i.i.us.i"
  %i.s = phi i64 [ %i.m, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i._ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit_crit_edge.i.i.i.i.us.i" ], [ %.val.i.i.i.i.us.i, %.lr.ph.preheader.i.i.i.i.i.i.us.i ] ; 2 uses
  %.val8.i.i.i.i.us.i = phi ptr [ %.val8.pre.i.i.i.i.us.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i._ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit_crit_edge.i.i.i.i.us.i" ], [ %i.q, %.lr.ph.preheader.i.i.i.i.i.i.us.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.val8.i.i.i.i.us.i, i64 %.val.i.i.i.i.us.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !116540
  %i.u = add i64 %.val.i.i.i.i.us.i, %2           ; 3 uses
  %i.v = icmp sgt i64 %i.s, -1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = icmp ugt i64 %i.u, %i.s
  br i1 %i.w, label %bb.d, label %"_ZN95_$LT$codespan_reporting..term..renderer..WriteStyleByRef$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17hf6880651752a1311E.exit.us.i"

bb.d:                                             ; preds = %_ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit.i.i.i.i.us.i
  store i64 %i.u, ptr %i.e, align 8, !alias.scope !116537, !noalias !116536
  br label %"_ZN95_$LT$codespan_reporting..term..renderer..WriteStyleByRef$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17hf6880651752a1311E.exit.us.i"

"_ZN95_$LT$codespan_reporting..term..renderer..WriteStyleByRef$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17hf6880651752a1311E.exit.us.i": ; preds = %bb.d, %_ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE.exit.i.i.i.i.us.i
  store i64 %i.u, ptr %i.d, align 8, !alias.scope !116532, !noalias !116533
  br label %_ZN3std2io5Write9write_all17h2c10aa79ad3cc142E.exit

_ZN3std2io5Write9write_all17h2c10aa79ad3cc142E.exit: ; preds = %"_ZN95_$LT$codespan_reporting..term..renderer..WriteStyleByRef$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17hf6880651752a1311E.exit.us.i", %bb.a
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN82_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h34f2f886e3a415acE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr %.8.val, ptr %.24.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.6.i.i.i.i.i.i.i.i = alloca [20 x i8], align 4 ; 5 uses
  %.sroa.1019.i.i.i.i.i.i = alloca [20 x i8], align 4 ; 6 uses
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [120 x i8], align 8               ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [96 x i8], align 8                ; 9 uses
  %.sroa.429.i.i = alloca [96 x i8], align 8      ; 4 uses
  %.sroa.530.i.i = alloca [24 x i8], align 8      ; 4 uses
  %.sroa.631.i.i = alloca [24 x i8], align 8      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.24.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = ptrtoint ptr %.24.val to i64
  %i.h = ptrtoint ptr %.8.val to i64
  %i.i = sub nuw i64 %i.g, %i.h                   ; 7 uses
  %i.j = udiv exact i64 %i.i, 200                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116651)
  %or.cond.i.i.i.i.i = icmp ugt i64 %i.i, 9223372036854775800
  br i1 %or.cond.i.i.i.i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !151

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.a
  %i.k = icmp eq ptr %.24.val, %.8.val
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !116652
  %i.l = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef range(i64 1, 9) 8) #83, !noalias !116652 ; 8 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.c, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2912) #82, !noalias !116653
  unreachable

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.be, %.lr.ph.i.i
  %.sroa.012.0121.i.i = phi ptr [ %.8.val, %.lr.ph.i.i ], [ %i.w, %bb.be ] ; 14 uses
  %.sroa.7.0119.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.x, %bb.be ] ; 6 uses
  %.sroa.10.0118.i.i = phi i64 [ %i.j, %.lr.ph.i.i ], [ %i.u, %bb.be ]
  %i.u = add nsw i64 %.sroa.10.0118.i.i, -1       ; 2 uses
  %i.v = icmp eq ptr %.sroa.012.0121.i.i, %.24.val
  br i1 %i.v, label %.loopexit, label %bb.e

.loopexit.i.i:                                    ; preds = %bb.f
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.0121.i.i, i64 200
  %i.x = add nuw nsw i64 %.sroa.7.0119.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116654)
  %i.y = load ptr, ptr %.sroa.012.0121.i.i, align 8, !alias.scope !116655, !noalias !116656, !nonnull !145, !align !149, !noundef !145
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.012.0121.i.i, i64 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116657)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !116658
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116659)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116660)
  %i.aa = load i64, ptr %i.z, align 8, !range !158, !alias.scope !116661, !noalias !116662, !noundef !145
  %i.ab = tail call i64 @llvm.usub.sat.i64(i64 %i.aa, i64 17)
  switch i64 %i.ab, label %default.unreachable [
    i64 0, label %bb.f
    i64 1, label %bb.g
    i64 2, label %bb.h
  ]

default.unreachable:                              ; preds = %bb.e, %bb.l
  unreachable

bb.f:                                             ; preds = %bb.e
  invoke fastcc void @"_ZN100_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6fff9f3e77e521c1E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.z) #84
          to label %.noexc.i.i unwind label %.loopexit.i.i, !noalias !116663

.noexc.i.i:                                       ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.012.0121.i.i, i64 96
  %i.ad = load <2 x i16>, ptr %i.ac, align 8, !alias.scope !116661, !noalias !116662
  store <2 x i16> %i.ad, ptr %i.n, align 8, !alias.scope !116659, !noalias !116664
  br label %"_ZN76_$LT$nickel_lang_core..typecheck..UnifType$u20$as$u20$core..clone..Clone$GT$5clone17h90ed832918d70b30E.exit.i.i.i.i"

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(192) %i.z, i64 96, i1 false), !alias.scope !116665, !noalias !116666
  br label %"_ZN76_$LT$nickel_lang_core..typecheck..UnifType$u20$as$u20$core..clone..Clone$GT$5clone17h90ed832918d70b30E.exit.i.i.i.i"

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(192) %i.z, i64 96, i1 false), !alias.scope !116665, !noalias !116666
  br label %"_ZN76_$LT$nickel_lang_core..typecheck..UnifType$u20$as$u20$core..clone..Clone$GT$5clone17h90ed832918d70b30E.exit.i.i.i.i"

"_ZN76_$LT$nickel_lang_core..typecheck..UnifType$u20$as$u20$core..clone..Clone$GT$5clone17h90ed832918d70b30E.exit.i.i.i.i": ; preds = %bb.h, %bb.g, %.noexc.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !116658
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.012.0121.i.i, i64 112
  %.val.i.i.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !116667, !noalias !116666, !nonnull !145, !noundef !145 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.012.0121.i.i, i64 120
  %.val3.i.i.i.i = load i64, ptr %i.af, align 8, !alias.scope !116667, !noalias !116666, !noundef !145 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116668)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !116669
  %i.ag = mul i64 %.val3.i.i.i.i, 120             ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i.i = icmp ugt i64 %.val3.i.i.i.i, 76861433640456465
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.j, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !151

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %"_ZN76_$LT$nickel_lang_core..typecheck..UnifType$u20$as$u20$core..clone..Clone$GT$5clone17h90ed832918d70b30E.exit.i.i.i.i"
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.thread.i.i.i.i.i.i", label %bb.i

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.thread.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %i.ai = icmp eq i64 %.val3.i.i.i.i, 0
  tail call void @llvm.assume(i1 %i.ai)
  store i64 0, ptr %i.c, align 8, !noalias !116669
  store ptr inttoptr (i64 8 to ptr), ptr %i.o, align 8, !noalias !116669
  br label %.loopexit33.i.i.i.i

bb.i:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !116670
  %i.aj = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ag, i64 noundef range(i64 1, 9) 8) #83, !noalias !116670 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.j, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i.i.i.i.i.i"

bb.j:                                             ; preds = %bb.i, %"_ZN76_$LT$nickel_lang_core..typecheck..UnifType$u20$as$u20$core..clone..Clone$GT$5clone17h90ed832918d70b30E.exit.i.i.i.i"
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %bb.i ], [ 0, %"_ZN76_$LT$nickel_lang_core..typecheck..UnifType$u20$as$u20$core..clone..Clone$GT$5clone17h90ed832918d70b30E.exit.i.i.i.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2912) #82
          to label %.noexc.i.i.i.i unwind label %bb.s, !noalias !116658

.noexc.i.i.i.i:                                   ; preds = %bb.j
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i.i.i.i.i.i": ; preds = %bb.i
  store i64 %.val3.i.i.i.i, ptr %i.c, align 8, !noalias !116669
  store ptr %i.aj, ptr %i.o, align 8, !noalias !116669
  %i.al = getelementptr inbounds nuw [120 x i8], ptr %.val.i.i.i.i, i64 %.val3.i.i.i.i
  br label %bb.k

bb.k:                                             ; preds = %_ZN4core5clone5Clone5clone17hdd47fd48988932dbE.exit.i.i.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i.i.i.i.i.i"
  %.sroa.012.024.i.i.i.i.i.i = phi ptr [ %.val.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i.i.i.i.i.i" ], [ %i.ao, %_ZN4core5clone5Clone5clone17hdd47fd48988932dbE.exit.i.i.i.i.i.i ] ; 5 uses
  %.sroa.7.023.i.i.i.i.i.i = phi i64 [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i.i.i.i.i.i" ], [ %i.ap, %_ZN4core5clone5Clone5clone17hdd47fd48988932dbE.exit.i.i.i.i.i.i ] ; 3 uses
  %.sroa.10.022.i.i.i.i.i.i = phi i64 [ %.val3.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i.i.i.i.i.i" ], [ %i.am, %_ZN4core5clone5Clone5clone17hdd47fd48988932dbE.exit.i.i.i.i.i.i ]
  %i.am = add nsw i64 %.sroa.10.022.i.i.i.i.i.i, -1 ; 2 uses
  %i.an = icmp eq ptr %.sroa.012.024.i.i.i.i.i.i, %i.al
  br i1 %i.an, label %.loopexit33.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.012.024.i.i.i.i.i.i, i64 120
  %i.ap = add nuw nsw i64 %.sroa.7.023.i.i.i.i.i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !116669
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116671)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116672)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(120) %.sroa.012.024.i.i.i.i.i.i, i64 20, i1 false), !alias.scope !116673, !noalias !116674
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.012.024.i.i.i.i.i.i, i64 24 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116676)
  %i.ar = load i64, ptr %i.aq, align 8, !range !158, !alias.scope !116677, !noalias !116678, !noundef !145
  %i.as = tail call i64 @llvm.usub.sat.i64(i64 %i.ar, i64 17)
  switch i64 %i.as, label %default.unreachable [
    i64 0, label %bb.m
    i64 1, label %bb.n
    i64 2, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  invoke fastcc void @"_ZN100_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6fff9f3e77e521c1E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.aq) #84
          to label %.noexc.i.i.i.i.i.i unwind label %bb.q, !noalias !116674

.noexc.i.i.i.i.i.i:                               ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.012.024.i.i.i.i.i.i, i64 112
  %i.au = load <2 x i16>, ptr %i.at, align 8, !alias.scope !116677, !noalias !116678
  store <2 x i16> %i.au, ptr %i.r, align 8, !alias.scope !116679, !noalias !116680
  br label %_ZN4core5clone5Clone5clone17hdd47fd48988932dbE.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.aq, i64 96, i1 false), !alias.scope !116681, !noalias !116674
  br label %_ZN4core5clone5Clone5clone17hdd47fd48988932dbE.exit.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.aq, i64 96, i1 false), !alias.scope !116681, !noalias !116674
  br label %_ZN4core5clone5Clone5clone17hdd47fd48988932dbE.exit.i.i.i.i.i.i

_ZN4core5clone5Clone5clone17hdd47fd48988932dbE.exit.i.i.i.i.i.i: ; preds = %bb.o, %bb.n, %.noexc.i.i.i.i.i.i
  %i.av = getelementptr inbounds nuw [120 x i8], ptr %i.aj, i64 %.sroa.7.023.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.av, ptr noundef nonnull align 8 dereferenceable(120) %i.b, i64 120, i1 false), !noalias !116669
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !116669
  %i.aw = icmp eq i64 %i.am, 0
  br i1 %i.aw, label %.loopexit33.i.i.i.i, label %bb.k
end_hunk_3
begin_hunk_4_@llvm.bswap.v4i32
!84003 = !{!83987, !83988}
!84004 = !{!83990, !83988}
!84005 = !{!83992, !83988}
!84006 = !{!83996, !83995, !83994}
!84007 = !{!83998}
!84008 = !{!83999}
!84009 = !{!83998, !83996, !83995, !83994}
!84010 = !{!83998, !83999, !83996, !83995}
!84011 = !{!83998, !83999}
!84012 = !{!83995, !83994}
!84013 = distinct !{!84013, i1 false, !"_ZN3md58compress4soft14compress_block17he75faa585854d964E"}
!84014 = distinct !{!84014, !84013, !"_ZN3md58compress4soft14compress_block17he75faa585854d964E: argument 0"}
!84015 = distinct !{!84015, !84013, !"_ZN3md58compress4soft14compress_block17he75faa585854d964E: argument 1"}
!84016 = !{!84014}
!84017 = !{!84015}
!84018 = distinct !{!84018, i1 false, !"_ZN3std2io22default_write_vectored17h70167f0e71b80369E"}
!84019 = distinct !{!84019, !84018, !"_ZN3std2io22default_write_vectored17h70167f0e71b80369E: argument 0"}
!84020 = distinct !{!84020, i1 false, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5write17h64b9e0522c9e2525E"}
!84021 = distinct !{!84021, !84020, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5write17h64b9e0522c9e2525E: argument 0:thread"}
!84022 = distinct !{!84022, i1 false, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E"}
!84023 = distinct !{!84023, !84022, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E: argument 0:thread"}
!84024 = distinct !{!84024, i1 false, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17he4c7b6e748867b9dE"}
!84025 = distinct !{!84025, !84024, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17he4c7b6e748867b9dE: argument 0:thread"}
!84026 = distinct !{!84026, i1 false, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E"}
!84027 = distinct !{!84027, !84026, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E: argument 0"}
!84028 = distinct !{!84028, i1 false, !"_ZN3std2io5Write14write_vectored28_$u7b$$u7b$closure$u7d$$u7d$17h59dfa8d7b9783068E"}
!84029 = distinct !{!84029, !84028, !"_ZN3std2io5Write14write_vectored28_$u7b$$u7b$closure$u7d$$u7d$17h59dfa8d7b9783068E: argument 0:thread"}
!84030 = distinct !{!84030, i1 false, !"_ZN62_$LT$termcolor..NoColor$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h08e163a173e32062E"}
!84031 = distinct !{!84031, !84030, !"_ZN62_$LT$termcolor..NoColor$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h08e163a173e32062E: argument 1"}
!84032 = distinct !{!84032, !84030, !"_ZN62_$LT$termcolor..NoColor$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h08e163a173e32062E: argument 0"}
!84033 = distinct !{!84033, i1 false, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$5write17h91b73b410835de42E"}
!84034 = distinct !{!84034, !84033, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$5write17h91b73b410835de42E: argument 1"}
!84035 = distinct !{!84035, !84033, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$5write17h91b73b410835de42E: argument 0"}
!84036 = distinct !{!84036, !84020, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5write17h64b9e0522c9e2525E: argument 1"}
!84037 = distinct !{!84037, i1 false, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17hb8114bbecaaaf6deE"}
!84038 = distinct !{!84038, !84037, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17hb8114bbecaaaf6deE: argument 0"}
!84039 = distinct !{!84039, i1 false, !"_ZN4core6option15Option$LT$T$GT$6map_or17h4effcd3bd4e4e1a5E"}
!84040 = distinct !{!84040, !84039, !"_ZN4core6option15Option$LT$T$GT$6map_or17h4effcd3bd4e4e1a5E: argument 0"}
!84041 = distinct !{!84041, !84020, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5write17h64b9e0522c9e2525E: argument 0"}
!84042 = distinct !{!84042, !84022, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E: argument 0"}
!84043 = distinct !{!84043, !84024, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17he4c7b6e748867b9dE: argument 0"}
!84044 = distinct !{!84044, !84028, !"_ZN3std2io5Write14write_vectored28_$u7b$$u7b$closure$u7d$$u7d$17h59dfa8d7b9783068E: argument 0"}
!84045 = !{!84019}
!84046 = !{!84027, !84025, !84023, !84021}
!84047 = !{!84036, !84035, !84034, !84032, !84031, !84029, !84019}
!84048 = !{!84038}
!84049 = !{!84040, !84019}
!84050 = !{!84041}
!84051 = !{!84042}
!84052 = !{!84043}
!84053 = !{!84027, !84043, !84042, !84041}
!84054 = !{!84036, !84035, !84034, !84032, !84031, !84044, !84019}
!84055 = !{!84043, !84042, !84041}
!84056 = !{!84043, !84042, !84041, !84035, !84032, !84019}
!84057 = distinct !{!84057, i1 false, !"_ZN3std2io22default_write_vectored17h7e7aad8db3eee4e6E"}
!84058 = distinct !{!84058, !84057, !"_ZN3std2io22default_write_vectored17h7e7aad8db3eee4e6E: argument 0"}
!84059 = distinct !{!84059, i1 false, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17h643efe746b52ed3bE"}
!84060 = distinct !{!84060, !84059, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17h643efe746b52ed3bE: argument 0"}
!84061 = distinct !{!84061, i1 false, !"_ZN4core6option15Option$LT$T$GT$6map_or17h3012f9a0c4eacc67E"}
!84062 = distinct !{!84062, !84061, !"_ZN4core6option15Option$LT$T$GT$6map_or17h3012f9a0c4eacc67E: argument 0"}
!84063 = distinct !{!84063, i1 false, !"_ZN59_$LT$termcolor..Ansi$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17ha929b1ee33d6a9a7E"}
!84064 = distinct !{!84064, !84063, !"_ZN59_$LT$termcolor..Ansi$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17ha929b1ee33d6a9a7E: argument 0"}
!84065 = distinct !{!84065, i1 false, !"_ZN95_$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$5write17h3b29035393e1e43eE"}
!84066 = distinct !{!84066, !84065, !"_ZN95_$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$5write17h3b29035393e1e43eE: argument 0"}
!84067 = distinct !{!84067, i1 false, !"_ZN3std2io6cursor13vec_write_all17hc11799356476f847E"}
!84068 = distinct !{!84068, !84067, !"_ZN3std2io6cursor13vec_write_all17hc11799356476f847E: argument 0"}
!84069 = distinct !{!84069, !84067, !"_ZN3std2io6cursor13vec_write_all17hc11799356476f847E: argument 1"}
!84070 = distinct !{!84070, i1 false, !"_ZN3std2io5Write14write_vectored28_$u7b$$u7b$closure$u7d$$u7d$17h254c2b4599449317E"}
!84071 = distinct !{!84071, !84070, !"_ZN3std2io5Write14write_vectored28_$u7b$$u7b$closure$u7d$$u7d$17h254c2b4599449317E: argument 0"}
!84072 = distinct !{!84072, i1 false, !"_ZN95_$LT$codespan_reporting..term..renderer..WriteStyleByRef$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17hf6880651752a1311E"}
!84073 = distinct !{!84073, !84072, !"_ZN95_$LT$codespan_reporting..term..renderer..WriteStyleByRef$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17hf6880651752a1311E: argument 1"}
!84074 = distinct !{!84074, !84072, !"_ZN95_$LT$codespan_reporting..term..renderer..WriteStyleByRef$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17hf6880651752a1311E: argument 0"}
!84075 = distinct !{!84075, !84063, !"_ZN59_$LT$termcolor..Ansi$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17ha929b1ee33d6a9a7E: argument 1"}
!84076 = distinct !{!84076, !84065, !"_ZN95_$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$5write17h3b29035393e1e43eE: argument 1"}
!84077 = distinct !{!84077, !84067, !"_ZN3std2io6cursor13vec_write_all17hc11799356476f847E: argument 2"}
!84078 = distinct !{!84078, i1 false, !"_ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE"}
!84079 = distinct !{!84079, !84078, !"_ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE: argument 0"}
!84080 = distinct !{!84080, i1 false, !"_ZN74_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..specialize..SpecFill$LT$T$GT$$GT$9spec_fill17h3f565f54794e1fe7E"}
!84081 = distinct !{!84081, !84080, !"_ZN74_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..specialize..SpecFill$LT$T$GT$$GT$9spec_fill17h3f565f54794e1fe7E: argument 0"}
!84082 = !{!84058}
!84083 = !{!84060}
!84084 = !{!84062, !84058}
!84085 = !{!84064}
!84086 = !{!84066}
!84087 = !{!84068}
!84088 = !{!84069}
!84089 = !{!84068, !84066, !84064}
!84090 = !{!84069, !84077, !84076, !84075, !84074, !84073, !84071, !84058}
!84091 = !{!84079}
!84092 = !{!84079, !84069, !84066, !84064}
!84093 = !{!84068, !84077, !84076, !84075, !84074, !84073, !84071, !84058}
!84094 = !{!84069, !84066, !84064}
!84095 = !{!84081}
!84096 = !{!84079, !84068, !84069, !84077, !84066, !84076, !84064, !84075, !84074, !84073, !84071, !84058}
!84097 = !{!84068, !84069, !84066, !84064, !84074, !84058}
!84098 = distinct !{!84098, i1 false, !"_ZN3std2io22default_write_vectored17h097af847a4b62e11E"}
!84099 = distinct !{!84099, !84098, !"_ZN3std2io22default_write_vectored17h097af847a4b62e11E: argument 0"}
!84100 = distinct !{!84100, i1 false, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17hb7b8416f25d2d46aE"}
!84101 = distinct !{!84101, !84100, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17hb7b8416f25d2d46aE: argument 0"}
!84102 = distinct !{!84102, i1 false, !"_ZN4core6option15Option$LT$T$GT$6map_or17hd0baceffd0810d3dE"}
!84103 = distinct !{!84103, !84102, !"_ZN4core6option15Option$LT$T$GT$6map_or17hd0baceffd0810d3dE: argument 0"}
!84104 = distinct !{!84104, i1 false, !"_ZN3std2io5Write14write_vectored28_$u7b$$u7b$closure$u7d$$u7d$17h35f2da0832441aceE"}
!84105 = distinct !{!84105, !84104, !"_ZN3std2io5Write14write_vectored28_$u7b$$u7b$closure$u7d$$u7d$17h35f2da0832441aceE: argument 0"}
!84106 = distinct !{!84106, i1 false, !"_ZN95_$LT$codespan_reporting..term..renderer..WriteStyleByRef$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h516403427fc72d05E"}
!84107 = distinct !{!84107, !84106, !"_ZN95_$LT$codespan_reporting..term..renderer..WriteStyleByRef$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h516403427fc72d05E: argument 1"}
!84108 = distinct !{!84108, !84106, !"_ZN95_$LT$codespan_reporting..term..renderer..WriteStyleByRef$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h516403427fc72d05E: argument 0"}
!84109 = distinct !{null, null, ptr @"_ZN95_$LT$codespan_reporting..term..renderer..WriteStyleByRef$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h516403427fc72d05E"}
!84110 = !{!84099}
!84111 = !{!84101}
!84112 = !{!84103, !84099}
!84113 = !{!84108, !84107, !84105, !84099}
!84114 = !{!84108, !84099}
!84115 = distinct !{!84115, i1 false, !"_ZN3std2io22default_write_vectored17ha911369062147389E"}
!84116 = distinct !{!84116, !84115, !"_ZN3std2io22default_write_vectored17ha911369062147389E: argument 0"}
!84117 = distinct !{!84117, !84115, !"_ZN3std2io22default_write_vectored17ha911369062147389E: argument 1"}
!84118 = distinct !{!84118, i1 false, !"_ZN3std2io5Write14write_vectored28_$u7b$$u7b$closure$u7d$$u7d$17h2b8b52f216e046f3E"}
!84119 = distinct !{!84119, !84118, !"_ZN3std2io5Write14write_vectored28_$u7b$$u7b$closure$u7d$$u7d$17h2b8b52f216e046f3E: argument 0:thread"}
!84120 = distinct !{!84120, i1 false, !"_ZN88_$LT$nickel_lang_core..repl..wasm_frontend..CallbackWriter$u20$as$u20$std..io..Write$GT$5write17h31e1de18b12f7213E"}
!84121 = distinct !{!84121, !84120, !"_ZN88_$LT$nickel_lang_core..repl..wasm_frontend..CallbackWriter$u20$as$u20$std..io..Write$GT$5write17h31e1de18b12f7213E: argument 0:thread"}
!84122 = distinct !{!84122, i1 false, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E"}
!84123 = distinct !{!84123, !84122, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E: argument 0:thread"}
!84124 = distinct !{!84124, i1 false, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17he4c7b6e748867b9dE"}
!84125 = distinct !{!84125, !84124, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17he4c7b6e748867b9dE: argument 0:thread"}
!84126 = distinct !{!84126, i1 false, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E"}
!84127 = distinct !{!84127, !84126, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E: argument 0"}
!84128 = distinct !{!84128, !84118, !"_ZN3std2io5Write14write_vectored28_$u7b$$u7b$closure$u7d$$u7d$17h2b8b52f216e046f3E: argument 1:thread"}
!84129 = distinct !{!84129, !84120, !"_ZN88_$LT$nickel_lang_core..repl..wasm_frontend..CallbackWriter$u20$as$u20$std..io..Write$GT$5write17h31e1de18b12f7213E: argument 1:thread"}
!84130 = distinct !{!84130, i1 false, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17h1e29cd0ca46350eaE"}
!84131 = distinct !{!84131, !84130, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17h1e29cd0ca46350eaE: argument 0"}
!84132 = distinct !{!84132, i1 false, !"_ZN4core6option15Option$LT$T$GT$6map_or17h4017eac13d311318E"}
!84133 = distinct !{!84133, !84132, !"_ZN4core6option15Option$LT$T$GT$6map_or17h4017eac13d311318E: argument 0"}
!84134 = distinct !{!84134, !84118, !"_ZN3std2io5Write14write_vectored28_$u7b$$u7b$closure$u7d$$u7d$17h2b8b52f216e046f3E: argument 0"}
!84135 = distinct !{!84135, !84118, !"_ZN3std2io5Write14write_vectored28_$u7b$$u7b$closure$u7d$$u7d$17h2b8b52f216e046f3E: argument 1"}
!84136 = distinct !{!84136, !84120, !"_ZN88_$LT$nickel_lang_core..repl..wasm_frontend..CallbackWriter$u20$as$u20$std..io..Write$GT$5write17h31e1de18b12f7213E: argument 0"}
!84137 = distinct !{!84137, !84120, !"_ZN88_$LT$nickel_lang_core..repl..wasm_frontend..CallbackWriter$u20$as$u20$std..io..Write$GT$5write17h31e1de18b12f7213E: argument 1"}
!84138 = distinct !{!84138, !84122, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E: argument 0"}
!84139 = distinct !{!84139, !84124, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17he4c7b6e748867b9dE: argument 0"}
!84140 = distinct !{!84140, i1 false, !"_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E"}
!84141 = distinct !{!84141, !84140, !"_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E: argument 0"}
!84142 = !{!84116}
!84143 = !{!84117}
!84144 = !{!84127, !84125, !84123, !84121, !84119, !84116}
!84145 = !{!84129, !84128, !84117}
!84146 = !{!84131, !84116}
!84147 = !{!84133, !84117}
!84148 = !{!84134}
!84149 = !{!84135}
!84150 = !{!84136}
!84151 = !{!84137}
!84152 = !{!84138}
!84153 = !{!84139}
!84154 = !{!84127, !84139, !84138, !84136, !84134, !84116}
!84155 = !{!84137, !84135, !84117}
!84156 = !{!84139, !84138, !84136, !84134, !84116}
!84157 = !{!84139, !84138, !84136, !84134, !84116, !84117}
!84158 = !{!84141, !84137, !84135}
!84159 = !{!84136, !84134, !84116, !84117}
!84160 = distinct !{!84160, i1 false, !"_ZN3std2io22default_write_vectored17hbaf603c811a9e534E"}
!84161 = distinct !{!84161, !84160, !"_ZN3std2io22default_write_vectored17hbaf603c811a9e534E: argument 0"}
!84162 = distinct !{!84162, !84160, !"_ZN3std2io22default_write_vectored17hbaf603c811a9e534E: argument 1"}
!84163 = distinct !{!84163, i1 false, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17h057e6f946a63be5cE"}
!84164 = distinct !{!84164, !84163, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17h057e6f946a63be5cE: argument 0"}
!84165 = distinct !{!84165, i1 false, !"_ZN4core6option15Option$LT$T$GT$6map_or17h99a18b40ff97364bE"}
!84166 = distinct !{!84166, !84165, !"_ZN4core6option15Option$LT$T$GT$6map_or17h99a18b40ff97364bE: argument 0"}
!84167 = distinct !{!84167, i1 false, !"_ZN3std2io5Write14write_vectored28_$u7b$$u7b$closure$u7d$$u7d$17hf8ebdf4e2e4ea845E"}
!84168 = distinct !{!84168, !84167, !"_ZN3std2io5Write14write_vectored28_$u7b$$u7b$closure$u7d$$u7d$17hf8ebdf4e2e4ea845E: argument 0"}
!84169 = distinct !{!84169, i1 false, !"_ZN64_$LT$termcolor..StandardStreamLock$u20$as$u20$std..io..Write$GT$5write17he53a2e3597660678E"}
!84170 = distinct !{!84170, !84169, !"_ZN64_$LT$termcolor..StandardStreamLock$u20$as$u20$std..io..Write$GT$5write17he53a2e3597660678E: argument 0"}
!84171 = distinct !{!84171, i1 false, !"_ZN70_$LT$termcolor..WriterInnerLock$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17hbe133a7eb26657eeE"}
!84172 = distinct !{!84172, !84171, !"_ZN70_$LT$termcolor..WriterInnerLock$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17hbe133a7eb26657eeE: argument 0"}
!84173 = distinct !{!84173, !84167, !"_ZN3std2io5Write14write_vectored28_$u7b$$u7b$closure$u7d$$u7d$17hf8ebdf4e2e4ea845E: argument 1"}
!84174 = distinct !{!84174, !84169, !"_ZN64_$LT$termcolor..StandardStreamLock$u20$as$u20$std..io..Write$GT$5write17he53a2e3597660678E: argument 1"}
!84175 = distinct !{!84175, !84171, !"_ZN70_$LT$termcolor..WriterInnerLock$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17hbe133a7eb26657eeE: argument 1"}
!84176 = distinct !{!84176, i1 false, !"_ZN66_$LT$termcolor..IoStandardStreamLock$u20$as$u20$std..io..Write$GT$5write17h35ce872412bf4c9cE"}
!84177 = distinct !{!84177, !84176, !"_ZN66_$LT$termcolor..IoStandardStreamLock$u20$as$u20$std..io..Write$GT$5write17h35ce872412bf4c9cE: argument 0"}
!84178 = distinct !{!84178, !84176, !"_ZN66_$LT$termcolor..IoStandardStreamLock$u20$as$u20$std..io..Write$GT$5write17h35ce872412bf4c9cE: argument 1"}
!84179 = distinct !{!84179, i1 false, !"_ZN66_$LT$termcolor..IoStandardStreamLock$u20$as$u20$std..io..Write$GT$5write17h35ce872412bf4c9cE"}
!84180 = distinct !{!84180, !84179, !"_ZN66_$LT$termcolor..IoStandardStreamLock$u20$as$u20$std..io..Write$GT$5write17h35ce872412bf4c9cE: argument 0"}
!84181 = distinct !{!84181, !84179, !"_ZN66_$LT$termcolor..IoStandardStreamLock$u20$as$u20$std..io..Write$GT$5write17h35ce872412bf4c9cE: argument 1"}
!84182 = !{!84161}
!84183 = !{!84162}
!84184 = !{!84164, !84161}
!84185 = !{!84166, !84162}
!84186 = !{!84168}
!84187 = !{!84170}
!84188 = !{!84172}
!84189 = !{!84172, !84170, !84168, !84161}
!84190 = !{!84175, !84174, !84173, !84162}
!84191 = !{!84177, !84172, !84170, !84168, !84161}
!84192 = !{!84178, !84175, !84174, !84173, !84162}
!84193 = !{!84180, !84172, !84170, !84168, !84161}
!84194 = !{!84181, !84175, !84174, !84173, !84162}
!84195 = !{!84172, !84175, !84170, !84174, !84168, !84173, !84161, !84162}
!84196 = distinct !{!84196, i1 false, !"_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E"}
!84197 = distinct !{!84197, !84196, !"_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E: argument 0"}
!84198 = distinct !{!84198, i1 false, !"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h10ff4c171b1ed421E"}
!84199 = distinct !{!84199, !84198, !"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h10ff4c171b1ed421E: argument 0"}
!84200 = distinct !{!84200, i1 false, !"_ZN3std2io5Write14write_vectored17h3b80d5860afe26e2E"}
!84201 = distinct !{!84201, !84200, !"_ZN3std2io5Write14write_vectored17h3b80d5860afe26e2E: argument 0"}
!84202 = distinct !{!84202, !84200, !"_ZN3std2io5Write14write_vectored17h3b80d5860afe26e2E: argument 1"}
!84203 = distinct !{!84203, i1 false, !"_ZN3std2io22default_write_vectored17h7e7aad8db3eee4e6E"}
!84204 = distinct !{!84204, !84203, !"_ZN3std2io22default_write_vectored17h7e7aad8db3eee4e6E: argument 0"}
!84205 = distinct !{!84205, i1 false, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17h643efe746b52ed3bE"}
!84206 = distinct !{!84206, !84205, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17h643efe746b52ed3bE: argument 0"}
!84207 = distinct !{!84207, i1 false, !"_ZN4core6option15Option$LT$T$GT$6map_or17h3012f9a0c4eacc67E"}
!84208 = distinct !{!84208, !84207, !"_ZN4core6option15Option$LT$T$GT$6map_or17h3012f9a0c4eacc67E: argument 0"}
!84209 = distinct !{!84209, i1 false, !"_ZN59_$LT$termcolor..Ansi$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17ha929b1ee33d6a9a7E"}
!84210 = distinct !{!84210, !84209, !"_ZN59_$LT$termcolor..Ansi$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17ha929b1ee33d6a9a7E: argument 0"}
!84211 = distinct !{!84211, i1 false, !"_ZN95_$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$5write17h3b29035393e1e43eE"}
!84212 = distinct !{!84212, !84211, !"_ZN95_$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$5write17h3b29035393e1e43eE: argument 0"}
!84213 = distinct !{!84213, i1 false, !"_ZN3std2io6cursor13vec_write_all17hc11799356476f847E"}
!84214 = distinct !{!84214, !84213, !"_ZN3std2io6cursor13vec_write_all17hc11799356476f847E: argument 0"}
!84215 = distinct !{!84215, !84213, !"_ZN3std2io6cursor13vec_write_all17hc11799356476f847E: argument 1"}
!84216 = distinct !{!84216, i1 false, !"_ZN3std2io5Write14write_vectored28_$u7b$$u7b$closure$u7d$$u7d$17h254c2b4599449317E"}
!84217 = distinct !{!84217, !84216, !"_ZN3std2io5Write14write_vectored28_$u7b$$u7b$closure$u7d$$u7d$17h254c2b4599449317E: argument 0"}
!84218 = distinct !{!84218, i1 false, !"_ZN95_$LT$codespan_reporting..term..renderer..WriteStyleByRef$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17hf6880651752a1311E"}
!84219 = distinct !{!84219, !84218, !"_ZN95_$LT$codespan_reporting..term..renderer..WriteStyleByRef$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17hf6880651752a1311E: argument 1"}
!84220 = distinct !{!84220, !84218, !"_ZN95_$LT$codespan_reporting..term..renderer..WriteStyleByRef$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17hf6880651752a1311E: argument 0"}
!84221 = distinct !{!84221, !84209, !"_ZN59_$LT$termcolor..Ansi$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17ha929b1ee33d6a9a7E: argument 1"}
!84222 = distinct !{!84222, !84211, !"_ZN95_$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$5write17h3b29035393e1e43eE: argument 1"}
!84223 = distinct !{!84223, !84213, !"_ZN3std2io6cursor13vec_write_all17hc11799356476f847E: argument 2"}
!84224 = distinct !{!84224, i1 false, !"_ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE"}
!84225 = distinct !{!84225, !84224, !"_ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE: argument 0"}
!84226 = distinct !{!84226, i1 false, !"_ZN74_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..specialize..SpecFill$LT$T$GT$$GT$9spec_fill17h3f565f54794e1fe7E"}
!84227 = distinct !{!84227, !84226, !"_ZN74_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..specialize..SpecFill$LT$T$GT$$GT$9spec_fill17h3f565f54794e1fe7E: argument 0"}
!84228 = distinct !{!84228, i1 false, !"_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E"}
!84229 = distinct !{!84229, !84228, !"_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E: argument 0"}
!84230 = !{!84197}
!84231 = !{!84199, !84197}
!84232 = !{!84201}
!84233 = !{!84202}
!84234 = !{!84204}
!84235 = !{!84204, !84202}
!84236 = !{!84206, !84201}
!84237 = !{!84208, !84204, !84202}
!84238 = !{!84210}
!84239 = !{!84212}
!84240 = !{!84214}
!84241 = !{!84215}
!84242 = !{!84214, !84212, !84210}
!84243 = !{!84215, !84223, !84222, !84221, !84220, !84219, !84217, !84204, !84201, !84202}
!84244 = !{!84225}
!84245 = !{!84225, !84215, !84212, !84210}
!84246 = !{!84214, !84223, !84222, !84221, !84220, !84219, !84217, !84204, !84201, !84202}
!84247 = !{!84215, !84212, !84210}
!84248 = !{!84227}
!84249 = !{!84225, !84214, !84215, !84223, !84212, !84222, !84210, !84221, !84220, !84219, !84217, !84204, !84201, !84202}
!84250 = !{!84214, !84215, !84212, !84210, !84220, !84204, !84201, !84202}
!84251 = !{!84229}
!84252 = distinct !{!84252, i1 false, !"_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E"}
!84253 = distinct !{!84253, !84252, !"_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E: argument 0"}
!84254 = distinct !{!84254, i1 false, !"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h10ff4c171b1ed421E"}
!84255 = distinct !{!84255, !84254, !"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h10ff4c171b1ed421E: argument 0"}
!84256 = distinct !{!84256, i1 false, !"_ZN3std2io5Write14write_vectored17h4a5176782b65c683E"}
!84257 = distinct !{!84257, !84256, !"_ZN3std2io5Write14write_vectored17h4a5176782b65c683E: argument 0"}
!84258 = distinct !{!84258, !84256, !"_ZN3std2io5Write14write_vectored17h4a5176782b65c683E: argument 1"}
!84259 = distinct !{!84259, i1 false, !"_ZN3std2io22default_write_vectored17h097af847a4b62e11E"}
!84260 = distinct !{!84260, !84259, !"_ZN3std2io22default_write_vectored17h097af847a4b62e11E: argument 0"}
!84261 = distinct !{!84261, i1 false, !"_ZN3std2io5Write14write_vectored28_$u7b$$u7b$closure$u7d$$u7d$17h35f2da0832441aceE"}
!84262 = distinct !{!84262, !84261, !"_ZN3std2io5Write14write_vectored28_$u7b$$u7b$closure$u7d$$u7d$17h35f2da0832441aceE: argument 0"}
!84263 = distinct !{!84263, i1 false, !"_ZN95_$LT$codespan_reporting..term..renderer..WriteStyleByRef$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h516403427fc72d05E"}
!84264 = distinct !{!84264, !84263, !"_ZN95_$LT$codespan_reporting..term..renderer..WriteStyleByRef$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h516403427fc72d05E: argument 1"}
!84265 = distinct !{!84265, !84263, !"_ZN95_$LT$codespan_reporting..term..renderer..WriteStyleByRef$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h516403427fc72d05E: argument 0"}
!84266 = distinct !{!84266, i1 false, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17hb7b8416f25d2d46aE"}
!84267 = distinct !{!84267, !84266, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17hb7b8416f25d2d46aE: argument 0"}
!84268 = distinct !{!84268, i1 false, !"_ZN4core6option15Option$LT$T$GT$6map_or17hd0baceffd0810d3dE"}
!84269 = distinct !{!84269, !84268, !"_ZN4core6option15Option$LT$T$GT$6map_or17hd0baceffd0810d3dE: argument 0"}
!84270 = distinct !{ptr @_ZN3std2io5Write14write_vectored17h4a5176782b65c683E, null, null, ptr @"_ZN95_$LT$codespan_reporting..term..renderer..WriteStyleByRef$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h516403427fc72d05E"}
!84271 = distinct !{!84271, i1 false, !"_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E"}
!84272 = distinct !{!84272, !84271, !"_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E: argument 0"}
!84273 = !{!84253}
!84274 = !{!84255, !84253}
!84275 = !{!84257}
!84276 = !{!84258}
!84277 = !{!84265, !84264, !84262, !84260, !84257, !84258}
!84278 = !{!84260}
!84279 = !{!84260, !84258}
!84280 = !{!84267, !84257}
!84281 = !{!84269, !84260, !84258}
!84282 = !{!84265, !84260, !84257, !84258}
!84283 = !{!84272}
!84284 = distinct !{!84284, i1 false, !"_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E"}
!84285 = distinct !{!84285, !84284, !"_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E: argument 0"}
!84286 = distinct !{!84286, i1 false, !"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h10ff4c171b1ed421E"}
!84287 = distinct !{!84287, !84286, !"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h10ff4c171b1ed421E: argument 0"}
!84288 = distinct !{!84288, i1 false, !"_ZN3std2io5Write14write_vectored17h1fa5a82835f4b6f8E"}
!84289 = distinct !{!84289, !84288, !"_ZN3std2io5Write14write_vectored17h1fa5a82835f4b6f8E: argument 0"}
!84290 = distinct !{!84290, !84288, !"_ZN3std2io5Write14write_vectored17h1fa5a82835f4b6f8E: argument 1"}
!84291 = distinct !{!84291, i1 false, !"_ZN3std2io22default_write_vectored17h70167f0e71b80369E"}
!84292 = distinct !{!84292, !84291, !"_ZN3std2io22default_write_vectored17h70167f0e71b80369E: argument 0"}
!84293 = distinct !{!84293, i1 false, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17hb8114bbecaaaf6deE"}
!84294 = distinct !{!84294, !84293, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17hb8114bbecaaaf6deE: argument 0"}
!84295 = distinct !{!84295, i1 false, !"_ZN4core6option15Option$LT$T$GT$6map_or17h4effcd3bd4e4e1a5E"}
!84296 = distinct !{!84296, !84295, !"_ZN4core6option15Option$LT$T$GT$6map_or17h4effcd3bd4e4e1a5E: argument 0"}
!84297 = distinct !{!84297, i1 false, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5write17h64b9e0522c9e2525E"}
!84298 = distinct !{!84298, !84297, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5write17h64b9e0522c9e2525E: argument 0"}
!84299 = distinct !{!84299, i1 false, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E"}
!84300 = distinct !{!84300, !84299, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E: argument 0"}
!84301 = distinct !{!84301, i1 false, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17he4c7b6e748867b9dE"}
!84302 = distinct !{!84302, !84301, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17he4c7b6e748867b9dE: argument 0"}
!84303 = distinct !{!84303, i1 false, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E"}
!84304 = distinct !{!84304, !84303, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E: argument 0"}
!84305 = distinct !{!84305, i1 false, !"_ZN3std2io5Write14write_vectored28_$u7b$$u7b$closure$u7d$$u7d$17h59dfa8d7b9783068E"}
!84306 = distinct !{!84306, !84305, !"_ZN3std2io5Write14write_vectored28_$u7b$$u7b$closure$u7d$$u7d$17h59dfa8d7b9783068E: argument 0"}
!84307 = distinct !{!84307, i1 false, !"_ZN62_$LT$termcolor..NoColor$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h08e163a173e32062E"}
!84308 = distinct !{!84308, !84307, !"_ZN62_$LT$termcolor..NoColor$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h08e163a173e32062E: argument 1"}
!84309 = distinct !{!84309, !84307, !"_ZN62_$LT$termcolor..NoColor$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h08e163a173e32062E: argument 0"}
!84310 = distinct !{!84310, i1 false, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$5write17h91b73b410835de42E"}
!84311 = distinct !{!84311, !84310, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$5write17h91b73b410835de42E: argument 1"}
!84312 = distinct !{!84312, !84310, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$5write17h91b73b410835de42E: argument 0"}
!84313 = distinct !{!84313, !84297, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5write17h64b9e0522c9e2525E: argument 1"}
!84314 = distinct !{!84314, !84297, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5write17h64b9e0522c9e2525E: argument 0:thread"}
!84315 = distinct !{!84315, !84299, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E: argument 0:thread"}
!84316 = distinct !{!84316, !84301, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17he4c7b6e748867b9dE: argument 0:thread"}
!84317 = distinct !{!84317, i1 false, !"_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E"}
!84318 = distinct !{!84318, !84317, !"_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E: argument 0"}
!84319 = !{!84285}
!84320 = !{!84287, !84285}
!84321 = !{!84289}
!84322 = !{!84290}
!84323 = !{!84292}
!84324 = !{!84292, !84290}
!84325 = !{!84294, !84289}
!84326 = !{!84296, !84292, !84290}
!84327 = !{!84298}
!84328 = !{!84300}
!84329 = !{!84302}
!84330 = !{!84304, !84302, !84300, !84298}
!84331 = !{!84313, !84312, !84311, !84309, !84308, !84306, !84292, !84289, !84290}
!84332 = !{!84316, !84315, !84314, !84302, !84300, !84298}
!84333 = !{!84313, !84312, !84311, !84309, !84308, !84292, !84289, !84290}
!84334 = !{!84302, !84300, !84298}
!84335 = !{!84302, !84300, !84298, !84312, !84309, !84292, !84289, !84290}
!84336 = !{!84318}
!84337 = distinct !{!84337, i1 false, !"_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E"}
!84338 = distinct !{!84338, !84337, !"_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E: argument 0"}
!84339 = distinct !{!84339, i1 false, !"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h10ff4c171b1ed421E"}
!84340 = distinct !{!84340, !84339, !"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h10ff4c171b1ed421E: argument 0"}
!84341 = distinct !{!84341, i1 false, !"_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E"}
!84342 = distinct !{!84342, !84341, !"_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E: argument 0"}
!84343 = !{!84338}
!84344 = !{!84340, !84338}
!84345 = !{!84342}
!84346 = distinct !{!84346, i1 false, !"_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E"}
!84347 = distinct !{!84347, !84346, !"_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E: argument 0"}
!84348 = distinct !{!84348, i1 false, !"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h10ff4c171b1ed421E"}
!84349 = distinct !{!84349, !84348, !"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h10ff4c171b1ed421E: argument 0"}
!84350 = distinct !{!84350, i1 false, !"_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E"}
!84351 = distinct !{!84351, !84350, !"_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E: argument 0"}
!84352 = !{!84347}
!84353 = !{!84349, !84347}
!84354 = !{!84351}
!84355 = distinct !{!84355, i1 false, !"_ZN66_$LT$termcolor..IoStandardStreamLock$u20$as$u20$std..io..Write$GT$5write17h35ce872412bf4c9cE"}
!84356 = distinct !{!84356, !84355, !"_ZN66_$LT$termcolor..IoStandardStreamLock$u20$as$u20$std..io..Write$GT$5write17h35ce872412bf4c9cE: argument 0"}
!84357 = distinct !{!84357, !84355, !"_ZN66_$LT$termcolor..IoStandardStreamLock$u20$as$u20$std..io..Write$GT$5write17h35ce872412bf4c9cE: argument 1"}
!84358 = !{!84356}
!84359 = !{!84357}
!84360 = distinct !{!84360, i1 false, !"_ZN95_$LT$codespan_reporting..term..renderer..WriteStyleByRef$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17hf6880651752a1311E"}
!84361 = distinct !{!84361, !84360, !"_ZN95_$LT$codespan_reporting..term..renderer..WriteStyleByRef$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17hf6880651752a1311E: argument 0"}
!84362 = distinct !{!84362, !84360, !"_ZN95_$LT$codespan_reporting..term..renderer..WriteStyleByRef$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17hf6880651752a1311E: argument 1"}
!84363 = distinct !{!84363, i1 false, !"_ZN59_$LT$termcolor..Ansi$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17ha929b1ee33d6a9a7E"}
!84364 = distinct !{!84364, !84363, !"_ZN59_$LT$termcolor..Ansi$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17ha929b1ee33d6a9a7E: argument 0"}
!84365 = distinct !{!84365, i1 false, !"_ZN95_$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$5write17h3b29035393e1e43eE"}
!84366 = distinct !{!84366, !84365, !"_ZN95_$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$5write17h3b29035393e1e43eE: argument 0"}
!84367 = distinct !{!84367, i1 false, !"_ZN3std2io6cursor13vec_write_all17hc11799356476f847E"}
!84368 = distinct !{!84368, !84367, !"_ZN3std2io6cursor13vec_write_all17hc11799356476f847E: argument 0"}
!84369 = distinct !{!84369, !84367, !"_ZN3std2io6cursor13vec_write_all17hc11799356476f847E: argument 1"}
!84370 = distinct !{!84370, !84363, !"_ZN59_$LT$termcolor..Ansi$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17ha929b1ee33d6a9a7E: argument 1"}
!84371 = distinct !{!84371, !84365, !"_ZN95_$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$5write17h3b29035393e1e43eE: argument 1"}
!84372 = distinct !{!84372, !84367, !"_ZN3std2io6cursor13vec_write_all17hc11799356476f847E: argument 2"}
!84373 = distinct !{!84373, i1 false, !"_ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE"}
!84374 = distinct !{!84374, !84373, !"_ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE: argument 0"}
!84375 = distinct !{!84375, i1 false, !"_ZN74_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..specialize..SpecFill$LT$T$GT$$GT$9spec_fill17h3f565f54794e1fe7E"}
!84376 = distinct !{!84376, !84375, !"_ZN74_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..specialize..SpecFill$LT$T$GT$$GT$9spec_fill17h3f565f54794e1fe7E: argument 0"}
!84377 = !{!84361}
!84378 = !{!84362}
!84379 = !{!84364}
!84380 = !{!84366}
!84381 = !{!84368}
!84382 = !{!84369}
!84383 = !{!84368, !84366, !84364}
!84384 = !{!84369, !84372, !84371, !84370, !84361, !84362}
!84385 = !{!84374}
!84386 = !{!84374, !84369, !84366, !84364}
!84387 = !{!84368, !84372, !84371, !84370, !84361, !84362}
!84388 = !{!84369, !84366, !84364}
!84389 = !{!84376}
!84390 = !{!84374, !84368, !84369, !84372, !84366, !84371, !84364, !84370, !84361, !84362}
!84391 = !{!84368, !84369, !84366, !84364, !84361}
!84392 = distinct !{!84392, i1 false, !"_ZN64_$LT$termcolor..StandardStreamLock$u20$as$u20$std..io..Write$GT$5write17he53a2e3597660678E"}
!84393 = distinct !{!84393, !84392, !"_ZN64_$LT$termcolor..StandardStreamLock$u20$as$u20$std..io..Write$GT$5write17he53a2e3597660678E: argument 0"}
!84394 = distinct !{!84394, i1 false, !"_ZN70_$LT$termcolor..WriterInnerLock$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17hbe133a7eb26657eeE"}
!84395 = distinct !{!84395, !84394, !"_ZN70_$LT$termcolor..WriterInnerLock$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17hbe133a7eb26657eeE: argument 0"}
!84396 = distinct !{!84396, !84392, !"_ZN64_$LT$termcolor..StandardStreamLock$u20$as$u20$std..io..Write$GT$5write17he53a2e3597660678E: argument 1"}
!84397 = distinct !{!84397, !84394, !"_ZN70_$LT$termcolor..WriterInnerLock$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17hbe133a7eb26657eeE: argument 1"}
!84398 = distinct !{!84398, i1 false, !"_ZN66_$LT$termcolor..IoStandardStreamLock$u20$as$u20$std..io..Write$GT$5write17h35ce872412bf4c9cE"}
!84399 = distinct !{!84399, !84398, !"_ZN66_$LT$termcolor..IoStandardStreamLock$u20$as$u20$std..io..Write$GT$5write17h35ce872412bf4c9cE: argument 0"}
!84400 = distinct !{!84400, !84398, !"_ZN66_$LT$termcolor..IoStandardStreamLock$u20$as$u20$std..io..Write$GT$5write17h35ce872412bf4c9cE: argument 1"}
!84401 = distinct !{!84401, i1 false, !"_ZN66_$LT$termcolor..IoStandardStreamLock$u20$as$u20$std..io..Write$GT$5write17h35ce872412bf4c9cE"}
!84402 = distinct !{!84402, !84401, !"_ZN66_$LT$termcolor..IoStandardStreamLock$u20$as$u20$std..io..Write$GT$5write17h35ce872412bf4c9cE: argument 0"}
!84403 = distinct !{!84403, !84401, !"_ZN66_$LT$termcolor..IoStandardStreamLock$u20$as$u20$std..io..Write$GT$5write17h35ce872412bf4c9cE: argument 1"}
!84404 = !{!84393}
!84405 = !{!84395}
!84406 = !{!84395, !84393}
!84407 = !{!84397, !84396}
!84408 = !{!84399, !84395, !84393}
!84409 = !{!84400, !84397, !84396}
!84410 = !{!84402, !84395, !84393}
!84411 = !{!84403, !84397, !84396}
!84412 = !{!84395, !84397, !84393, !84396}
!84413 = distinct !{!84413, i1 false, !"_ZN88_$LT$nickel_lang_core..repl..wasm_frontend..CallbackWriter$u20$as$u20$std..io..Write$GT$5write17h31e1de18b12f7213E"}
!84414 = distinct !{!84414, !84413, !"_ZN88_$LT$nickel_lang_core..repl..wasm_frontend..CallbackWriter$u20$as$u20$std..io..Write$GT$5write17h31e1de18b12f7213E: argument 0"}
!84415 = distinct !{!84415, !84413, !"_ZN88_$LT$nickel_lang_core..repl..wasm_frontend..CallbackWriter$u20$as$u20$std..io..Write$GT$5write17h31e1de18b12f7213E: argument 1"}
!84416 = distinct !{!84416, i1 false, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E"}
!84417 = distinct !{!84417, !84416, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E: argument 0"}
!84418 = distinct !{!84418, i1 false, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17he4c7b6e748867b9dE"}
!84419 = distinct !{!84419, !84418, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17he4c7b6e748867b9dE: argument 0"}
!84420 = distinct !{!84420, i1 false, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E"}
!84421 = distinct !{!84421, !84420, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E: argument 0"}
!84422 = distinct !{!84422, i1 false, !"_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E"}
!84423 = distinct !{!84423, !84422, !"_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E: argument 0"}
!84424 = !{!84414}
!84425 = !{!84415}
!84426 = !{!84417}
!84427 = !{!84419}
!84428 = !{!84421, !84419, !84417, !84414}
!84429 = !{!84419, !84417, !84414}
!84430 = !{!84423, !84415}
!84431 = distinct !{!84431, i1 false, !"_ZN62_$LT$termcolor..NoColor$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h08e163a173e32062E"}
!84432 = distinct !{!84432, !84431, !"_ZN62_$LT$termcolor..NoColor$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h08e163a173e32062E: argument 0"}
!84433 = distinct !{!84433, i1 false, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$5write17h91b73b410835de42E"}
!84434 = distinct !{!84434, !84433, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$5write17h91b73b410835de42E: argument 0"}
!84435 = distinct !{!84435, !84431, !"_ZN62_$LT$termcolor..NoColor$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h08e163a173e32062E: argument 1"}
!84436 = distinct !{!84436, !84433, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$5write17h91b73b410835de42E: argument 1"}
!84437 = distinct !{!84437, i1 false, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5write17h64b9e0522c9e2525E"}
!84438 = distinct !{!84438, !84437, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5write17h64b9e0522c9e2525E: argument 0"}
!84439 = distinct !{!84439, i1 false, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E"}
!84440 = distinct !{!84440, !84439, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E: argument 0"}
!84441 = distinct !{!84441, i1 false, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17he4c7b6e748867b9dE"}
!84442 = distinct !{!84442, !84441, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17he4c7b6e748867b9dE: argument 0"}
!84443 = distinct !{!84443, i1 false, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E"}
!84444 = distinct !{!84444, !84443, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E: argument 0"}
!84445 = distinct !{!84445, !84437, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5write17h64b9e0522c9e2525E: argument 1"}
!84446 = !{!84434, !84432}
!84447 = !{!84436, !84435}
!84448 = !{!84432}
!84449 = !{!84434}
!84450 = !{!84438}
!84451 = !{!84440}
!84452 = !{!84442}
!84453 = !{!84444, !84442, !84440, !84438}
!84454 = !{!84445, !84434, !84436, !84432, !84435}
!84455 = !{!84442, !84440, !84438}
!84456 = !{!84442, !84440, !84438, !84434, !84432}
!84457 = distinct !{!84457, i1 false, !"_ZN95_$LT$codespan_reporting..term..renderer..WriteStyleByRef$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h516403427fc72d05E"}
!84458 = distinct !{!84458, !84457, !"_ZN95_$LT$codespan_reporting..term..renderer..WriteStyleByRef$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h516403427fc72d05E: argument 0"}
!84459 = distinct !{!84459, !84457, !"_ZN95_$LT$codespan_reporting..term..renderer..WriteStyleByRef$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h516403427fc72d05E: argument 1"}
!84460 = !{!84458}
!84461 = !{!84459}
!84462 = !{!84458, !84459}
!84463 = !{ptr @"_ZN95_$LT$codespan_reporting..term..renderer..WriteStyleByRef$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h516403427fc72d05E"}
!84464 = distinct !{!84464, i1 false, !"_ZN3std2io17default_write_fmt17h0bd5c7fbe5fd2cb3E"}
!84465 = distinct !{!84465, !84464, !"_ZN3std2io17default_write_fmt17h0bd5c7fbe5fd2cb3E: argument 1"}
!84466 = distinct !{!84466, !84464, !"_ZN3std2io17default_write_fmt17h0bd5c7fbe5fd2cb3E: argument 0"}
!84467 = distinct !{!84467, i1 false, !"_ZN4core3ptr117drop_in_place$LT$std..io..default_write_fmt..Adapter$LT$nickel_lang_core..repl..wasm_frontend..CallbackWriter$GT$$GT$17h1e8245a4421c25f4E"}
!84468 = distinct !{!84468, !84467, !"_ZN4core3ptr117drop_in_place$LT$std..io..default_write_fmt..Adapter$LT$nickel_lang_core..repl..wasm_frontend..CallbackWriter$GT$$GT$17h1e8245a4421c25f4E: argument 0"}
!84469 = distinct !{!84469, i1 false, !"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17ha03aecc4d21d0cb7E"}
!84470 = distinct !{!84470, !84469, !"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17ha03aecc4d21d0cb7E: argument 0"}
!84471 = !{!84466, !84465}
!84472 = !{!84470, !84468}
!84473 = !{!84465}
!84474 = distinct !{!84474, i1 false, !"_ZN3std2io17default_write_fmt17hcf1562b7dbabf3abE"}
!84475 = distinct !{!84475, !84474, !"_ZN3std2io17default_write_fmt17hcf1562b7dbabf3abE: argument 1"}
!84476 = distinct !{!84476, !84474, !"_ZN3std2io17default_write_fmt17hcf1562b7dbabf3abE: argument 0"}
!84477 = distinct !{!84477, i1 false, !"_ZN4core3ptr120drop_in_place$LT$std..io..default_write_fmt..Adapter$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$17ha170216043c24356E"}
!84478 = distinct !{!84478, !84477, !"_ZN4core3ptr120drop_in_place$LT$std..io..default_write_fmt..Adapter$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$17ha170216043c24356E: argument 0"}
!84479 = distinct !{!84479, i1 false, !"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17ha03aecc4d21d0cb7E"}
!84480 = distinct !{!84480, !84479, !"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17ha03aecc4d21d0cb7E: argument 0"}
!84481 = !{!84476, !84475}
!84482 = !{!84480, !84478}
!84483 = !{!84475}
!84484 = distinct !{!84484, i1 false, !"_ZN3std2io17default_write_fmt17hf0d501d40cad2de8E"}
!84485 = distinct !{!84485, !84484, !"_ZN3std2io17default_write_fmt17hf0d501d40cad2de8E: argument 1"}
!84486 = distinct !{!84486, !84484, !"_ZN3std2io17default_write_fmt17hf0d501d40cad2de8E: argument 0"}
!84487 = distinct !{!84487, i1 false, !"_ZN4core3ptr127drop_in_place$LT$std..io..default_write_fmt..Adapter$LT$termcolor..NoColor$LT$$RF$mut$u20$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$17h6ca6495f8a8e7153E"}
!84488 = distinct !{!84488, !84487, !"_ZN4core3ptr127drop_in_place$LT$std..io..default_write_fmt..Adapter$LT$termcolor..NoColor$LT$$RF$mut$u20$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$17h6ca6495f8a8e7153E: argument 0"}
!84489 = distinct !{!84489, i1 false, !"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17ha03aecc4d21d0cb7E"}
!84490 = distinct !{!84490, !84489, !"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17ha03aecc4d21d0cb7E: argument 0"}
!84491 = !{!84486, !84485}
!84492 = !{!84490, !84488}
!84493 = !{!84485}
!84494 = distinct !{!84494, i1 false, !"_ZN3std2io17default_write_fmt17hdbef48336dc38948E"}
!84495 = distinct !{!84495, !84494, !"_ZN3std2io17default_write_fmt17hdbef48336dc38948E: argument 1"}
!84496 = distinct !{!84496, !84494, !"_ZN3std2io17default_write_fmt17hdbef48336dc38948E: argument 0"}
!84497 = distinct !{!84497, i1 false, !"_ZN4core3ptr152drop_in_place$LT$std..io..default_write_fmt..Adapter$LT$codespan_reporting..term..renderer..WriteStyleByRef$LT$dyn$u20$termcolor..WriteColor$GT$$GT$$GT$17h4bcd3881458ce90cE"}
!84498 = distinct !{!84498, !84497, !"_ZN4core3ptr152drop_in_place$LT$std..io..default_write_fmt..Adapter$LT$codespan_reporting..term..renderer..WriteStyleByRef$LT$dyn$u20$termcolor..WriteColor$GT$$GT$$GT$17h4bcd3881458ce90cE: argument 0"}
!84499 = distinct !{!84499, i1 false, !"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17ha03aecc4d21d0cb7E"}
!84500 = distinct !{!84500, !84499, !"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17ha03aecc4d21d0cb7E: argument 0"}
!84501 = !{!84496, !84495}
!84502 = !{!84500, !84498}
!84503 = !{!84495}
!84504 = distinct !{!84504, i1 false, !"_ZN3std2io17default_write_fmt17h783fb5de0814db8dE"}
!84505 = distinct !{!84505, !84504, !"_ZN3std2io17default_write_fmt17h783fb5de0814db8dE: argument 1"}
!84506 = distinct !{!84506, !84504, !"_ZN3std2io17default_write_fmt17h783fb5de0814db8dE: argument 0"}
!84507 = distinct !{!84507, i1 false, !"_ZN4core3ptr202drop_in_place$LT$std..io..default_write_fmt..Adapter$LT$codespan_reporting..term..renderer..WriteStyleByRef$LT$termcolor..Ansi$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$$GT$17h34a28489ef0fe3f1E"}
!84508 = distinct !{!84508, !84507, !"_ZN4core3ptr202drop_in_place$LT$std..io..default_write_fmt..Adapter$LT$codespan_reporting..term..renderer..WriteStyleByRef$LT$termcolor..Ansi$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$$GT$17h34a28489ef0fe3f1E: argument 0"}
!84509 = distinct !{!84509, i1 false, !"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17ha03aecc4d21d0cb7E"}
!84510 = distinct !{!84510, !84509, !"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17ha03aecc4d21d0cb7E: argument 0"}
!84511 = !{!84506, !84505}
!84512 = !{!84510, !84508}
!84513 = !{!84505}
!84514 = distinct !{!84514, i1 false, !"_ZN3std2io17default_write_fmt17h147917e71bc17e1aE"}
!84515 = distinct !{!84515, !84514, !"_ZN3std2io17default_write_fmt17h147917e71bc17e1aE: argument 1"}
!84516 = distinct !{!84516, !84514, !"_ZN3std2io17default_write_fmt17h147917e71bc17e1aE: argument 0"}
!84517 = distinct !{!84517, i1 false, !"_ZN4core3ptr93drop_in_place$LT$std..io..default_write_fmt..Adapter$LT$termcolor..StandardStreamLock$GT$$GT$17h0a890aae35df7bc6E"}
!84518 = distinct !{!84518, !84517, !"_ZN4core3ptr93drop_in_place$LT$std..io..default_write_fmt..Adapter$LT$termcolor..StandardStreamLock$GT$$GT$17h0a890aae35df7bc6E: argument 0"}
!84519 = distinct !{!84519, i1 false, !"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17ha03aecc4d21d0cb7E"}
!84520 = distinct !{!84520, !84519, !"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17ha03aecc4d21d0cb7E: argument 0"}
!84521 = !{!84516, !84515}
!84522 = !{!84520, !84518}
!84523 = !{!84515}
!84524 = distinct !{!84524, i1 false, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$14write_vectored17h0be7304bc2104c7dE"}
!84525 = distinct !{!84525, !84524, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$14write_vectored17h0be7304bc2104c7dE: argument 0"}
!84526 = distinct !{!84526, !84524, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$14write_vectored17h0be7304bc2104c7dE: argument 1"}
!84527 = distinct !{!84527, !207, !208}
!84528 = distinct !{!84528, !208, !207}
!84529 = distinct !{!84529, i1 false, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E"}
!84530 = distinct !{!84530, !84529, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E: argument 0"}
!84531 = distinct !{!84531, i1 false, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E"}
!84532 = distinct !{!84532, !84531, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E: argument 0"}
!84533 = distinct !{!84533, i1 false, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17he4c7b6e748867b9dE"}
!84534 = distinct !{!84534, !84533, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17he4c7b6e748867b9dE: argument 0"}
!84535 = distinct !{!84535, i1 false, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E"}
!84536 = distinct !{!84536, !84535, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E: argument 0"}
!84537 = !{!84525}
!84538 = !{!84526}
!84539 = !{!84530, !84525}
!84540 = !{!84536, !84534, !84532, !84525}
!84541 = !{!84532}
!84542 = !{!84534}
!84543 = !{!84534, !84532, !84525}
!84544 = !{!84534, !84532, !84525, !84526}
!84545 = distinct !{!84545, i1 false, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$14write_vectored17h036f645d05b39da6E"}
!84546 = distinct !{!84546, !84545, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$14write_vectored17h036f645d05b39da6E: argument 0"}
!84547 = distinct !{!84547, !84545, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$14write_vectored17h036f645d05b39da6E: argument 1"}
!84548 = distinct !{!84548, i1 false, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$14write_vectored17h0be7304bc2104c7dE"}
!84549 = distinct !{!84549, !84548, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$14write_vectored17h0be7304bc2104c7dE: argument 0"}
!84550 = distinct !{!84550, !84548, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$14write_vectored17h0be7304bc2104c7dE: argument 1"}
!84551 = distinct !{!84551, !207, !208}
!84552 = distinct !{!84552, !208, !207}
!84553 = distinct !{!84553, i1 false, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E"}
!84554 = distinct !{!84554, !84553, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E: argument 0"}
!84555 = distinct !{!84555, i1 false, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E"}
!84556 = distinct !{!84556, !84555, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E: argument 0"}
!84557 = distinct !{!84557, i1 false, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17he4c7b6e748867b9dE"}
!84558 = distinct !{!84558, !84557, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17he4c7b6e748867b9dE: argument 0"}
!84559 = distinct !{!84559, i1 false, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E"}
!84560 = distinct !{!84560, !84559, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E: argument 0"}
!84561 = !{!84546}
!84562 = !{!84547}
!84563 = !{!84549}
!84564 = !{!84550}
!84565 = !{!84550, !84547}
!84566 = !{!84549, !84546}
!84567 = !{!84554, !84549}
!84568 = !{!84550, !84546, !84547}
!84569 = !{!84560, !84558, !84556, !84549}
!84570 = !{!84556}
!84571 = !{!84558}
!84572 = !{!84558, !84556, !84549}
!84573 = !{!84558, !84556, !84549, !84550, !84546, !84547}
!84574 = distinct !{!84574, i1 false, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$18write_all_vectored17h8205bf24a09568e4E"}
!84575 = distinct !{!84575, !84574, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$18write_all_vectored17h8205bf24a09568e4E: argument 0"}
!84576 = distinct !{!84576, !84574, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$18write_all_vectored17h8205bf24a09568e4E: argument 1"}
!84577 = distinct !{!84577, i1 false, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$14write_vectored17h0be7304bc2104c7dE"}
!84578 = distinct !{!84578, !84577, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$14write_vectored17h0be7304bc2104c7dE: argument 0"}
!84579 = distinct !{!84579, !84577, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$14write_vectored17h0be7304bc2104c7dE: argument 1"}
!84580 = distinct !{!84580, !207, !208}
!84581 = distinct !{!84581, !208, !207}
!84582 = distinct !{!84582, i1 false, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E"}
!84583 = distinct !{!84583, !84582, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E: argument 0"}
!84584 = distinct !{!84584, i1 false, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E"}
!84585 = distinct !{!84585, !84584, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E: argument 0"}
!84586 = distinct !{!84586, i1 false, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17he4c7b6e748867b9dE"}
!84587 = distinct !{!84587, !84586, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17he4c7b6e748867b9dE: argument 0"}
!84588 = distinct !{!84588, i1 false, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E"}
!84589 = distinct !{!84589, !84588, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E: argument 0"}
!84590 = !{!84575}
!84591 = !{!84576}
end_hunk_4
begin_hunk_5_@llvm.bswap.v4i32
!86355 = distinct !{!86355, i1 false, !"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h469c39c3d9868325E"}
!86356 = distinct !{!86356, !86355, !"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h469c39c3d9868325E: argument 0"}
!86357 = distinct !{!86357, !86355, !"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h469c39c3d9868325E: argument 1"}
!86358 = !{!86337}
!86359 = !{!86338}
!86360 = !{!86340}
!86361 = !{!86341}
!86362 = !{!86343}
!86363 = !{!86345}
!86364 = !{!86347, !86340}
!86365 = !{!86345, !86343}
!86366 = !{!86351, !86350, !86349, !86348, !86347, !86340}
!86367 = !{!86351, !86345, !86350, !86349, !86343, !86348, !86347, !86340}
!86368 = !{!86351, !86345, !86349, !86343, !86347, !86340}
!86369 = !{!86353}
!86370 = !{!86354}
!86371 = !{!86356}
!86372 = !{!86357}
!86373 = distinct !{!86373, i1 false, !"_ZN75_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hac0cbf44aca61d78E"}
!86374 = distinct !{!86374, !86373, !"_ZN75_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hac0cbf44aca61d78E: argument 0"}
!86375 = distinct !{!86375, !86373, !"_ZN75_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hac0cbf44aca61d78E: argument 1"}
!86376 = distinct !{!86376, i1 false, !"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E"}
!86377 = distinct !{!86377, !86376, !"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E: argument 0"}
!86378 = distinct !{!86378, !86376, !"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E: argument 1"}
!86379 = !{!86374}
!86380 = !{!86375}
!86381 = !{!86377}
!86382 = !{!86378}
!86383 = !{!86377, !86374}
!86384 = !{!86378, !86375}
!86385 = distinct !{!86385, i1 false, !"_ZN90_$LT$nickel_lang_parser..ast..pattern..ConstantPattern$u20$as$u20$core..cmp..PartialEq$GT$2eq17hc032d835f4d9cb35E"}
!86386 = distinct !{!86386, !86385, !"_ZN90_$LT$nickel_lang_parser..ast..pattern..ConstantPattern$u20$as$u20$core..cmp..PartialEq$GT$2eq17hc032d835f4d9cb35E: argument 0"}
!86387 = distinct !{!86387, !86385, !"_ZN90_$LT$nickel_lang_parser..ast..pattern..ConstantPattern$u20$as$u20$core..cmp..PartialEq$GT$2eq17hc032d835f4d9cb35E: argument 1"}
!86388 = distinct !{!86388, i1 false, !"_ZN94_$LT$nickel_lang_parser..ast..pattern..ConstantPatternData$u20$as$u20$core..cmp..PartialEq$GT$2eq17hc6c3976bd7516adeE"}
!86389 = distinct !{!86389, !86388, !"_ZN94_$LT$nickel_lang_parser..ast..pattern..ConstantPatternData$u20$as$u20$core..cmp..PartialEq$GT$2eq17hc6c3976bd7516adeE: argument 0"}
!86390 = distinct !{!86390, !86388, !"_ZN94_$LT$nickel_lang_parser..ast..pattern..ConstantPatternData$u20$as$u20$core..cmp..PartialEq$GT$2eq17hc6c3976bd7516adeE: argument 1"}
!86391 = distinct !{!86391, i1 false, !"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E"}
!86392 = distinct !{!86392, !86391, !"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E: argument 0"}
!86393 = distinct !{!86393, !86391, !"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E: argument 1"}
!86394 = distinct !{!86394, i1 false, !"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17hc4f697bf5660913cE"}
!86395 = distinct !{!86395, !86394, !"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17hc4f697bf5660913cE: argument 1"}
!86396 = distinct !{!86396, !86394, !"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17hc4f697bf5660913cE: argument 0"}
!86397 = distinct !{!86397, i1 false, !"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17hc4f697bf5660913cE"}
!86398 = distinct !{!86398, !86397, !"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17hc4f697bf5660913cE: argument 1"}
!86399 = distinct !{!86399, !86397, !"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17hc4f697bf5660913cE: argument 0"}
!86400 = distinct !{!86400, i1 false, !"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE"}
!86401 = distinct !{!86401, !86400, !"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE: argument 1"}
!86402 = distinct !{!86402, !86400, !"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE: argument 0"}
!86403 = distinct !{!86403, i1 false, !"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E"}
!86404 = distinct !{!86404, !86403, !"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E: argument 0"}
!86405 = distinct !{!86405, !86403, !"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E: argument 1"}
!86406 = !{!86386}
!86407 = !{!86387}
!86408 = !{!86389}
!86409 = !{!86390}
!86410 = !{!86389, !86386}
!86411 = !{!86390, !86387}
!86412 = !{!86392}
!86413 = !{!86393}
!86414 = !{!86393, !86389, !86390, !86386, !86387}
!86415 = !{!86392, !86389, !86390, !86386, !86387}
!86416 = !{!86396, !86395}
!86417 = !{!86392, !86393, !86389, !86390, !86386, !86387}
!86418 = !{!86399, !86398}
!86419 = !{!86402, !86401}
!86420 = !{!86389, !86390, !86386, !86387}
!86421 = !{!86404}
!86422 = !{!86405}
!86423 = !{!86404, !86386}
!86424 = !{!86405, !86387}
!86425 = distinct !{!86425, i1 false, !"_ZN81_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$core..cmp..PartialEq$GT$2eq17h168ad08b17359f3fE"}
!86426 = distinct !{!86426, !86425, !"_ZN81_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$core..cmp..PartialEq$GT$2eq17h168ad08b17359f3fE: argument 0:pre.rot"}
!86427 = distinct !{!86427, !86425, !"_ZN81_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$core..cmp..PartialEq$GT$2eq17h168ad08b17359f3fE: argument 1:pre.rot"}
!86428 = distinct !{!86428, i1 false, !"_ZN95_$LT$nickel_lang_parser..typ..RecordRowsF$LT$Ty$C$RRows$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h98655b835b68ddd7E"}
!86429 = distinct !{!86429, !86428, !"_ZN95_$LT$nickel_lang_parser..typ..RecordRowsF$LT$Ty$C$RRows$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h98655b835b68ddd7E: argument 0:pre.rot"}
!86430 = distinct !{!86430, !86428, !"_ZN95_$LT$nickel_lang_parser..typ..RecordRowsF$LT$Ty$C$RRows$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h98655b835b68ddd7E: argument 1:pre.rot"}
!86431 = distinct !{!86431, !86425, !"_ZN81_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$core..cmp..PartialEq$GT$2eq17h168ad08b17359f3fE: argument 0"}
!86432 = distinct !{!86432, !86425, !"_ZN81_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$core..cmp..PartialEq$GT$2eq17h168ad08b17359f3fE: argument 1"}
!86433 = distinct !{!86433, !86428, !"_ZN95_$LT$nickel_lang_parser..typ..RecordRowsF$LT$Ty$C$RRows$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h98655b835b68ddd7E: argument 0"}
!86434 = distinct !{!86434, !86428, !"_ZN95_$LT$nickel_lang_parser..typ..RecordRowsF$LT$Ty$C$RRows$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h98655b835b68ddd7E: argument 1"}
!86435 = distinct !{!86435, i1 false, !"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h7cf3e61edd0fd126E"}
!86436 = distinct !{!86436, !86435, !"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h7cf3e61edd0fd126E: argument 0"}
!86437 = distinct !{!86437, !86435, !"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h7cf3e61edd0fd126E: argument 1"}
!86438 = distinct !{!86438, i1 false, !"_ZN75_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hac0cbf44aca61d78E"}
!86439 = distinct !{!86439, !86438, !"_ZN75_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hac0cbf44aca61d78E: argument 0"}
!86440 = distinct !{!86440, !86438, !"_ZN75_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hac0cbf44aca61d78E: argument 1"}
!86441 = distinct !{null, ptr @"_ZN81_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$core..cmp..PartialEq$GT$2eq17h168ad08b17359f3fE", null, ptr @"_ZN75_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hac0cbf44aca61d78E"}
!86442 = distinct !{!86442, i1 false, !"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E"}
!86443 = distinct !{!86443, !86442, !"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E: argument 0"}
!86444 = distinct !{!86444, !86442, !"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E: argument 1"}
!86445 = distinct !{!86445, !86425, !"_ZN81_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$core..cmp..PartialEq$GT$2eq17h168ad08b17359f3fE: argument 0:h.rot"}
!86446 = distinct !{!86446, !86425, !"_ZN81_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$core..cmp..PartialEq$GT$2eq17h168ad08b17359f3fE: argument 1:h.rot"}
!86447 = distinct !{!86447, !86428, !"_ZN95_$LT$nickel_lang_parser..typ..RecordRowsF$LT$Ty$C$RRows$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h98655b835b68ddd7E: argument 0:h.rot"}
!86448 = distinct !{!86448, !86428, !"_ZN95_$LT$nickel_lang_parser..typ..RecordRowsF$LT$Ty$C$RRows$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h98655b835b68ddd7E: argument 1:h.rot"}
!86449 = !{!86426}
!86450 = !{!86427}
!86451 = !{!86429}
!86452 = !{!86430}
!86453 = !{!86429, !86426}
!86454 = !{!86430, !86427}
!86455 = !{!86431}
!86456 = !{!86432}
!86457 = !{!86433}
!86458 = !{!86434}
!86459 = !{!86433, !86431}
!86460 = !{!86434, !86432}
!86461 = !{!86436}
!86462 = !{!86437}
!86463 = !{!86439}
!86464 = !{!86440}
!86465 = !{!86436, !86437}
!86466 = !{!86443}
!86467 = !{!86444}
!86468 = !{!86443, !86439}
!86469 = !{!86444, !86440, !86436, !86437}
!86470 = !{!86444, !86440}
!86471 = !{!86443, !86439, !86436, !86437}
!86472 = !{!86445}
!86473 = !{!86446}
!86474 = !{!86447}
!86475 = !{!86448}
!86476 = !{!86447, !86445}
!86477 = !{!86448, !86446}
!86478 = distinct !{!86478, i1 false, !"_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE"}
!86479 = distinct !{!86479, !86478, !"_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE: argument 0"}
!86480 = distinct !{!86480, i1 false, !"_ZN93_$LT$crossterm..command..write_command_ansi..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h118ef661f8c3fa9fE"}
!86481 = distinct !{!86481, !86480, !"_ZN93_$LT$crossterm..command..write_command_ansi..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h118ef661f8c3fa9fE: argument 0"}
!86482 = distinct !{!86482, !86480, !"_ZN93_$LT$crossterm..command..write_command_ansi..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h118ef661f8c3fa9fE: argument 1"}
!86483 = distinct !{!86483, i1 false, !"_ZN95_$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$9write_all17ha1f4f06b46036648E"}
!86484 = distinct !{!86484, !86483, !"_ZN95_$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$9write_all17ha1f4f06b46036648E: argument 0"}
!86485 = distinct !{!86485, i1 false, !"_ZN3std2io6cursor13vec_write_all17hc11799356476f847E"}
!86486 = distinct !{!86486, !86485, !"_ZN3std2io6cursor13vec_write_all17hc11799356476f847E: argument 0"}
!86487 = distinct !{!86487, !86485, !"_ZN3std2io6cursor13vec_write_all17hc11799356476f847E: argument 1"}
!86488 = distinct !{!86488, i1 false, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17hde79605ee6b5d5b4E"}
!86489 = distinct !{!86489, !86488, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17hde79605ee6b5d5b4E: argument 0"}
!86490 = distinct !{!86490, !86483, !"_ZN95_$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$9write_all17ha1f4f06b46036648E: argument 1"}
!86491 = distinct !{!86491, !86485, !"_ZN3std2io6cursor13vec_write_all17hc11799356476f847E: argument 2"}
!86492 = distinct !{!86492, i1 false, !"_ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE"}
!86493 = distinct !{!86493, !86492, !"_ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE: argument 0"}
!86494 = distinct !{!86494, i1 false, !"_ZN74_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..specialize..SpecFill$LT$T$GT$$GT$9spec_fill17h3f565f54794e1fe7E"}
!86495 = distinct !{!86495, !86494, !"_ZN74_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..specialize..SpecFill$LT$T$GT$$GT$9spec_fill17h3f565f54794e1fe7E: argument 0"}
!86496 = !{!86479}
!86497 = !{!86481}
!86498 = !{!86482}
!86499 = !{!86484}
!86500 = !{!86486}
!86501 = !{!86487}
!86502 = !{!86486, !86484}
!86503 = !{!86487, !86491, !86490, !86489, !86481, !86482}
!86504 = !{!86493}
!86505 = !{!86493, !86487, !86484}
!86506 = !{!86486, !86491, !86490, !86489, !86481, !86482}
!86507 = !{!86487, !86484}
!86508 = !{!86495}
!86509 = !{!86493, !86486, !86487, !86491, !86484, !86490, !86489, !86481, !86482}
!86510 = !{!86486, !86487, !86484, !86481}
!86511 = distinct !{!86511, i1 false, !"_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE"}
!86512 = distinct !{!86512, !86511, !"_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE: argument 0"}
!86513 = distinct !{!86513, i1 false, !"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h99e21db7a76bb6a1E"}
!86514 = distinct !{!86514, !86513, !"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h99e21db7a76bb6a1E: argument 0"}
!86515 = distinct !{!86515, !86513, !"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h99e21db7a76bb6a1E: argument 1"}
!86516 = distinct !{!86516, i1 false, !"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17ha03aecc4d21d0cb7E"}
!86517 = distinct !{!86517, !86516, !"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17ha03aecc4d21d0cb7E: argument 0"}
!86518 = !{!86512}
!86519 = !{!86514}
!86520 = !{!86515}
!86521 = !{!86517, !86514}
!86522 = distinct !{!86522, i1 false, !"_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE"}
!86523 = distinct !{!86523, !86522, !"_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE: argument 0"}
!86524 = !{!86523}
!86525 = distinct !{!86525, i1 false, !"_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE"}
!86526 = distinct !{!86526, !86525, !"_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE: argument 0"}
!86527 = distinct !{!86527, i1 false, !"_ZN116_$LT$nickel_lang_core..program..doc..ExtractedDocumentation..write_markdown..IoToFmt$u20$as$u20$core..fmt..Write$GT$9write_str17h51699d713725c1aeE"}
!86528 = distinct !{!86528, !86527, !"_ZN116_$LT$nickel_lang_core..program..doc..ExtractedDocumentation..write_markdown..IoToFmt$u20$as$u20$core..fmt..Write$GT$9write_str17h51699d713725c1aeE: argument 0"}
!86529 = distinct !{!86529, !86527, !"_ZN116_$LT$nickel_lang_core..program..doc..ExtractedDocumentation..write_markdown..IoToFmt$u20$as$u20$core..fmt..Write$GT$9write_str17h51699d713725c1aeE: argument 1"}
!86530 = !{!86526}
!86531 = !{!86528}
!86532 = !{!86529}
!86533 = !{!86528, !86529}
!86534 = !{ptr @"_ZN116_$LT$nickel_lang_core..program..doc..ExtractedDocumentation..write_markdown..IoToFmt$u20$as$u20$core..fmt..Write$GT$9write_str17h51699d713725c1aeE"}
!86535 = distinct !{!86535, i1 false, !"_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE"}
!86536 = distinct !{!86536, !86535, !"_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE: argument 0"}
!86537 = !{!86536}
!86538 = distinct !{!86538, i1 false, !"_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE"}
!86539 = distinct !{!86539, !86538, !"_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE: argument 0"}
!86540 = distinct !{!86540, i1 false, !"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hfcf27e771c81e37fE"}
!86541 = distinct !{!86541, !86540, !"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hfcf27e771c81e37fE: argument 0"}
!86542 = distinct !{!86542, !86540, !"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hfcf27e771c81e37fE: argument 1"}
!86543 = distinct !{!86543, i1 false, !"_ZN3std2io5Write9write_all17h2c10aa79ad3cc142E"}
!86544 = distinct !{!86544, !86543, !"_ZN3std2io5Write9write_all17h2c10aa79ad3cc142E: argument 0"}
!86545 = distinct !{!86545, i1 false, !"_ZN95_$LT$codespan_reporting..term..renderer..WriteStyleByRef$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17hf6880651752a1311E"}
!86546 = distinct !{!86546, !86545, !"_ZN95_$LT$codespan_reporting..term..renderer..WriteStyleByRef$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17hf6880651752a1311E: argument 0"}
!86547 = distinct !{!86547, !86543, !"_ZN3std2io5Write9write_all17h2c10aa79ad3cc142E: argument 1"}
!86548 = distinct !{!86548, !86545, !"_ZN95_$LT$codespan_reporting..term..renderer..WriteStyleByRef$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17hf6880651752a1311E: argument 1"}
!86549 = distinct !{!86549, i1 false, !"_ZN59_$LT$termcolor..Ansi$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17ha929b1ee33d6a9a7E"}
!86550 = distinct !{!86550, !86549, !"_ZN59_$LT$termcolor..Ansi$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17ha929b1ee33d6a9a7E: argument 0"}
!86551 = distinct !{!86551, i1 false, !"_ZN95_$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$5write17h3b29035393e1e43eE"}
!86552 = distinct !{!86552, !86551, !"_ZN95_$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$5write17h3b29035393e1e43eE: argument 0"}
!86553 = distinct !{!86553, i1 false, !"_ZN3std2io6cursor13vec_write_all17hc11799356476f847E"}
!86554 = distinct !{!86554, !86553, !"_ZN3std2io6cursor13vec_write_all17hc11799356476f847E: argument 0"}
!86555 = distinct !{!86555, !86553, !"_ZN3std2io6cursor13vec_write_all17hc11799356476f847E: argument 1"}
!86556 = distinct !{!86556, !86549, !"_ZN59_$LT$termcolor..Ansi$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17ha929b1ee33d6a9a7E: argument 1"}
!86557 = distinct !{!86557, !86551, !"_ZN95_$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$5write17h3b29035393e1e43eE: argument 1"}
!86558 = distinct !{!86558, !86553, !"_ZN3std2io6cursor13vec_write_all17hc11799356476f847E: argument 2"}
!86559 = distinct !{!86559, i1 false, !"_ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE"}
!86560 = distinct !{!86560, !86559, !"_ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE: argument 0"}
!86561 = distinct !{!86561, i1 false, !"_ZN74_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..specialize..SpecFill$LT$T$GT$$GT$9spec_fill17h3f565f54794e1fe7E"}
!86562 = distinct !{!86562, !86561, !"_ZN74_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..specialize..SpecFill$LT$T$GT$$GT$9spec_fill17h3f565f54794e1fe7E: argument 0"}
!86563 = !{!86539}
!86564 = !{!86541}
!86565 = !{!86542}
!86566 = !{!86544}
!86567 = !{!86546, !86544}
!86568 = !{!86548, !86547, !86541, !86542}
!86569 = !{!86546}
!86570 = !{!86550}
!86571 = !{!86552}
!86572 = !{!86554}
!86573 = !{!86555}
!86574 = !{!86554, !86552, !86550}
!86575 = !{!86555, !86558, !86557, !86556, !86546, !86548, !86544, !86547, !86541, !86542}
!86576 = !{!86560}
!86577 = !{!86560, !86555, !86552, !86550}
!86578 = !{!86554, !86558, !86557, !86556, !86546, !86548, !86544, !86547, !86541, !86542}
!86579 = !{!86555, !86552, !86550}
!86580 = !{!86562}
!86581 = !{!86560, !86554, !86555, !86558, !86552, !86557, !86550, !86556, !86546, !86548, !86544, !86547, !86541, !86542}
!86582 = !{!86554, !86555, !86552, !86550, !86546, !86544, !86541}
!86583 = distinct !{!86583, i1 false, !"_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE"}
!86584 = distinct !{!86584, !86583, !"_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE: argument 0"}
!86585 = distinct !{!86585, i1 false, !"_ZN93_$LT$crossterm..command..write_command_ansi..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hc4848279138fdd07E"}
!86586 = distinct !{!86586, !86585, !"_ZN93_$LT$crossterm..command..write_command_ansi..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hc4848279138fdd07E: argument 0"}
!86587 = distinct !{!86587, !86585, !"_ZN93_$LT$crossterm..command..write_command_ansi..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hc4848279138fdd07E: argument 1"}
!86588 = distinct !{!86588, i1 false, !"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17ha03aecc4d21d0cb7E"}
!86589 = distinct !{!86589, !86588, !"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17ha03aecc4d21d0cb7E: argument 0"}
!86590 = !{!86584}
!86591 = !{!86586}
!86592 = !{!86587}
!86593 = !{!86589, !86586}
!86594 = distinct !{!86594, i1 false, !"_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE"}
!86595 = distinct !{!86595, !86594, !"_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE: argument 0"}
!86596 = distinct !{!86596, i1 false, !"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h900aedffb7483c50E"}
!86597 = distinct !{!86597, !86596, !"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h900aedffb7483c50E: argument 0"}
!86598 = distinct !{!86598, !86596, !"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h900aedffb7483c50E: argument 1"}
!86599 = distinct !{!86599, i1 false, !"_ZN3std2io5Write9write_all17haff9c4328bff8c9aE"}
!86600 = distinct !{!86600, !86599, !"_ZN3std2io5Write9write_all17haff9c4328bff8c9aE: argument 0"}
!86601 = distinct !{!86601, i1 false, !"_ZN62_$LT$termcolor..NoColor$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h08e163a173e32062E"}
!86602 = distinct !{!86602, !86601, !"_ZN62_$LT$termcolor..NoColor$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h08e163a173e32062E: argument 0"}
!86603 = distinct !{!86603, i1 false, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$5write17h91b73b410835de42E"}
!86604 = distinct !{!86604, !86603, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$5write17h91b73b410835de42E: argument 0"}
!86605 = distinct !{!86605, !86599, !"_ZN3std2io5Write9write_all17haff9c4328bff8c9aE: argument 1"}
!86606 = distinct !{!86606, !86601, !"_ZN62_$LT$termcolor..NoColor$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h08e163a173e32062E: argument 1"}
!86607 = distinct !{!86607, !86603, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$5write17h91b73b410835de42E: argument 1"}
!86608 = distinct !{!86608, i1 false, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5write17h64b9e0522c9e2525E"}
!86609 = distinct !{!86609, !86608, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5write17h64b9e0522c9e2525E: argument 0"}
!86610 = distinct !{!86610, i1 false, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E"}
!86611 = distinct !{!86611, !86610, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E: argument 0"}
!86612 = distinct !{!86612, i1 false, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17he4c7b6e748867b9dE"}
!86613 = distinct !{!86613, !86612, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17he4c7b6e748867b9dE: argument 0"}
!86614 = distinct !{!86614, i1 false, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E"}
!86615 = distinct !{!86615, !86614, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E: argument 0"}
!86616 = distinct !{!86616, !86608, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5write17h64b9e0522c9e2525E: argument 1"}
!86617 = !{!86595}
!86618 = !{!86597}
!86619 = !{!86598}
!86620 = !{!86600}
!86621 = !{!86604, !86602, !86600}
!86622 = !{!86607, !86606, !86605, !86597, !86598}
!86623 = !{!86602}
!86624 = !{!86604}
!86625 = !{!86609}
!86626 = !{!86611}
!86627 = !{!86613}
!86628 = !{!86615, !86613, !86611, !86609}
!86629 = !{!86616, !86604, !86607, !86602, !86606, !86600, !86605, !86597, !86598}
!86630 = !{!86613, !86611, !86609}
!86631 = !{!86613, !86611, !86609, !86604, !86602, !86600, !86597}
!86632 = distinct !{!86632, i1 false, !"_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE"}
!86633 = distinct !{!86633, !86632, !"_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE: argument 0"}
!86634 = distinct !{!86634, i1 false, !"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h41cd3483110f8551E"}
!86635 = distinct !{!86635, !86634, !"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h41cd3483110f8551E: argument 0"}
!86636 = distinct !{!86636, !86634, !"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h41cd3483110f8551E: argument 1"}
!86637 = distinct !{!86637, i1 false, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hd1bbbe0ebdfe01ccE"}
!86638 = distinct !{!86638, !86637, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hd1bbbe0ebdfe01ccE: argument 0"}
!86639 = distinct !{!86639, i1 false, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h2d88f74bff76064cE"}
!86640 = distinct !{!86640, !86639, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h2d88f74bff76064cE: argument 0"}
!86641 = distinct !{!86641, i1 false, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E"}
!86642 = distinct !{!86642, !86641, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E: argument 0"}
!86643 = distinct !{!86643, i1 false, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17he4c7b6e748867b9dE"}
!86644 = distinct !{!86644, !86643, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17he4c7b6e748867b9dE: argument 0"}
!86645 = distinct !{!86645, i1 false, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E"}
!86646 = distinct !{!86646, !86645, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E: argument 0"}
!86647 = distinct !{!86647, !86637, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hd1bbbe0ebdfe01ccE: argument 1"}
!86648 = distinct !{!86648, !86639, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h2d88f74bff76064cE: argument 1"}
!86649 = !{!86633}
!86650 = !{!86635}
!86651 = !{!86636}
!86652 = !{!86638}
!86653 = !{!86640}
!86654 = !{!86642}
!86655 = !{!86644}
!86656 = !{!86646, !86644, !86642, !86640, !86638}
!86657 = !{!86648, !86647, !86635, !86636}
!86658 = !{!86644, !86642, !86640, !86638}
!86659 = !{!86644, !86642, !86640, !86638, !86635}
!86660 = distinct !{!86660, i1 false, !"_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE"}
!86661 = distinct !{!86661, !86660, !"_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE: argument 0"}
!86662 = distinct !{!86662, i1 false, !"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hdd46e49e1b8dee5fE"}
!86663 = distinct !{!86663, !86662, !"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hdd46e49e1b8dee5fE: argument 0"}
!86664 = distinct !{!86664, !86662, !"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hdd46e49e1b8dee5fE: argument 1"}
!86665 = distinct !{!86665, i1 false, !"_ZN95_$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$9write_all17ha1f4f06b46036648E"}
!86666 = distinct !{!86666, !86665, !"_ZN95_$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$9write_all17ha1f4f06b46036648E: argument 0"}
!86667 = distinct !{!86667, i1 false, !"_ZN3std2io6cursor13vec_write_all17hc11799356476f847E"}
!86668 = distinct !{!86668, !86667, !"_ZN3std2io6cursor13vec_write_all17hc11799356476f847E: argument 0"}
!86669 = distinct !{!86669, !86667, !"_ZN3std2io6cursor13vec_write_all17hc11799356476f847E: argument 1"}
!86670 = distinct !{!86670, !86665, !"_ZN95_$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$9write_all17ha1f4f06b46036648E: argument 1"}
!86671 = distinct !{!86671, !86667, !"_ZN3std2io6cursor13vec_write_all17hc11799356476f847E: argument 2"}
!86672 = distinct !{!86672, i1 false, !"_ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE"}
!86673 = distinct !{!86673, !86672, !"_ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE: argument 0"}
!86674 = distinct !{!86674, i1 false, !"_ZN74_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..specialize..SpecFill$LT$T$GT$$GT$9spec_fill17h3f565f54794e1fe7E"}
!86675 = distinct !{!86675, !86674, !"_ZN74_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..specialize..SpecFill$LT$T$GT$$GT$9spec_fill17h3f565f54794e1fe7E: argument 0"}
!86676 = !{!86661}
!86677 = !{!86663}
!86678 = !{!86664}
!86679 = !{!86666}
!86680 = !{!86668}
!86681 = !{!86669}
!86682 = !{!86668, !86666}
!86683 = !{!86669, !86671, !86670, !86663, !86664}
!86684 = !{!86673}
!86685 = !{!86673, !86669, !86666}
!86686 = !{!86668, !86671, !86670, !86663, !86664}
!86687 = !{!86669, !86666}
!86688 = !{!86675}
!86689 = !{!86673, !86668, !86669, !86671, !86666, !86670, !86663, !86664}
!86690 = !{!86668, !86669, !86666, !86663}
!86691 = distinct !{!86691, i1 false, !"_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE"}
!86692 = distinct !{!86692, !86691, !"_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE: argument 0"}
!86693 = distinct !{!86693, i1 false, !"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h28a7752efbaf6ae6E"}
!86694 = distinct !{!86694, !86693, !"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h28a7752efbaf6ae6E: argument 0"}
!86695 = distinct !{!86695, !86693, !"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h28a7752efbaf6ae6E: argument 1"}
!86696 = distinct !{!86696, i1 false, !"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17ha03aecc4d21d0cb7E"}
!86697 = distinct !{!86697, !86696, !"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17ha03aecc4d21d0cb7E: argument 0"}
!86698 = !{!86692}
!86699 = !{!86694}
!86700 = !{!86695}
!86701 = !{!86697, !86694}
!86702 = distinct !{!86702, i1 false, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hec90967e6b0168ccE"}
!86703 = distinct !{!86703, !86702, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hec90967e6b0168ccE: argument 1"}
!86704 = distinct !{!86704, !86702, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hec90967e6b0168ccE: argument 0"}
!86705 = distinct !{null}
!86706 = !{!86704, !86703}
!86707 = !{!86704}
!86708 = !{!86703}
!86709 = distinct !{!86709, i1 false, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17ha6ccb3fe2bba61d3E"}
!86710 = distinct !{!86710, !86709, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17ha6ccb3fe2bba61d3E: argument 1"}
!86711 = distinct !{!86711, !86709, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17ha6ccb3fe2bba61d3E: argument 0"}
!86712 = distinct !{null}
!86713 = !{!86711, !86710}
!86714 = !{!86711}
!86715 = !{!86710}
!86716 = distinct !{!86716, i1 false, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hc7c98bd33d6d71fbE"}
!86717 = distinct !{!86717, !86716, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hc7c98bd33d6d71fbE: argument 1"}
!86718 = distinct !{!86718, !86716, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hc7c98bd33d6d71fbE: argument 0"}
!86719 = distinct !{null}
!86720 = !{!86718, !86717}
!86721 = !{!86718}
!86722 = !{!86717}
!86723 = distinct !{!86723, i1 false, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h8f1a61075e5c0aa9E"}
!86724 = distinct !{!86724, !86723, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h8f1a61075e5c0aa9E: argument 1"}
!86725 = distinct !{!86725, !86723, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h8f1a61075e5c0aa9E: argument 0"}
!86726 = !{!86725, !86724}
!86727 = !{!86725}
!86728 = !{!86724}
!86729 = distinct !{!86729, i1 false, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h56d3e3a463d6d82eE"}
!86730 = distinct !{!86730, !86729, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h56d3e3a463d6d82eE: argument 1"}
!86731 = distinct !{!86731, !86729, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h56d3e3a463d6d82eE: argument 0"}
!86732 = distinct !{null}
!86733 = !{!86731, !86730}
!86734 = !{!86731}
!86735 = !{!86730}
!86736 = distinct !{!86736, i1 false, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h852c9ae3af58921eE"}
!86737 = distinct !{!86737, !86736, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h852c9ae3af58921eE: argument 1"}
!86738 = distinct !{!86738, !86736, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h852c9ae3af58921eE: argument 0"}
!86739 = distinct !{null}
!86740 = !{!86738, !86737}
!86741 = !{!86738}
!86742 = !{!86737}
!86743 = distinct !{!86743, i1 false, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h68922ecce3a445d9E"}
!86744 = distinct !{!86744, !86743, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h68922ecce3a445d9E: argument 1"}
!86745 = distinct !{!86745, !86743, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h68922ecce3a445d9E: argument 0"}
!86746 = distinct !{null}
!86747 = !{!86745, !86744}
!86748 = !{!86745}
!86749 = !{!86744}
!86750 = distinct !{!86750, i1 false, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h64c83d7e5bbf0ec0E"}
!86751 = distinct !{!86751, !86750, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h64c83d7e5bbf0ec0E: argument 1"}
!86752 = distinct !{!86752, !86750, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h64c83d7e5bbf0ec0E: argument 0"}
!86753 = distinct !{null}
!86754 = !{!86752, !86751}
!86755 = !{!86752}
!86756 = !{!86751}
!86757 = distinct !{!86757, i1 false, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h380932c679075b86E"}
!86758 = distinct !{!86758, !86757, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h380932c679075b86E: argument 1"}
!86759 = distinct !{!86759, !86757, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h380932c679075b86E: argument 0"}
!86760 = distinct !{null}
!86761 = !{!86759, !86758}
!86762 = !{!86759}
!86763 = !{!86758}
!86764 = distinct !{!86764, i1 false, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h581c6f82b4c84afaE"}
!86765 = distinct !{!86765, !86764, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h581c6f82b4c84afaE: argument 1"}
!86766 = distinct !{!86766, !86764, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h581c6f82b4c84afaE: argument 0"}
!86767 = distinct !{null}
!86768 = !{!86766, !86765}
!86769 = !{!86766}
!86770 = !{!86765}
!86771 = distinct !{!86771, i1 false, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h0cc48dd1cb36ec8eE"}
!86772 = distinct !{!86772, !86771, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h0cc48dd1cb36ec8eE: argument 1"}
!86773 = distinct !{!86773, !86771, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h0cc48dd1cb36ec8eE: argument 0"}
!86774 = distinct !{null}
!86775 = !{!86773, !86772}
!86776 = !{!86773}
!86777 = !{!86772}
!86778 = distinct !{!86778, i1 false, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h985b43dbdacd6090E"}
!86779 = distinct !{!86779, !86778, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h985b43dbdacd6090E: argument 1"}
!86780 = distinct !{!86780, !86778, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h985b43dbdacd6090E: argument 0"}
!86781 = !{!86780, !86779}
!86782 = !{!86780}
end_hunk_5
begin_hunk_6_@llvm.bswap.v4i32
!116316 = !{!116244}
!116317 = !{!116245}
!116318 = !{!116247}
!116319 = !{!116248}
!116320 = !{!116248, !116245, !116231}
!116321 = !{!116247, !116244, !116232, !116229, !116226, !116227, !116224, !116223, !116220, !116221}
!116322 = !{!116247, !116244}
!116323 = !{!116248, !116245, !116231, !116232, !116229, !116226, !116227, !116224, !116223, !116220, !116221}
!116324 = !{!116250, !116247, !116244}
!116325 = !{!116252}
!116326 = !{!116252, !116247, !116248, !116244, !116245, !116231, !116232, !116229, !116226, !116227, !116224, !116223, !116220, !116221}
!116327 = !{!116254}
!116328 = !{!116254, !116252, !116247, !116244}
!116329 = !{!116258, !116256, !116254, !116252, !116247, !116248, !116244, !116245, !116231, !116232, !116229, !116226, !116227, !116224, !116223, !116220, !116221}
!116330 = !{!116252, !116247, !116244}
!116331 = !{!116260}
!116332 = !{!116262}
!116333 = !{!116264}
!116334 = !{!116266, !116264, !116262, !116260, !116232, !116229, !116226}
!116335 = !{!116264, !116262, !116260, !116232, !116229, !116226}
!116336 = !{!116268}
!116337 = !{!116270}
!116338 = !{!116272}
!116339 = !{!116272, !116270, !116268, !116231}
!116340 = !{!116281, !116280, !116279, !116278, !116276, !116274, !116264, !116262, !116260, !116232, !116229, !116226, !116227, !116224, !116223, !116220, !116221}
!116341 = !{!116281, !116272, !116280, !116270, !116279, !116268, !116278, !116276, !116274, !116264, !116262, !116260, !116231, !116232, !116229, !116226, !116227, !116224, !116223, !116220, !116221}
!116342 = !{!116285, !116283, !116279, !116268, !116278, !116276, !116274, !116264, !116262, !116260, !116231, !116232, !116229, !116226, !116227, !116224, !116223, !116220, !116221}
!116343 = !{!116278, !116276, !116274, !116231, !116227, !116224, !116223, !116220, !116221}
!116344 = !{!116287}
!116345 = !{!116294, !116292, !116290, !116287, !116289}
!116346 = !{!116290, !116289}
!116347 = !{!116290, !116287, !116289}
!116348 = distinct !{!116348, i1 false, !"_ZN87_$LT$nickel_lang_parser..ast..record..FieldMetadata$u20$as$u20$core..cmp..PartialEq$GT$2eq17h1216aa4dccdd911fE"}
!116349 = distinct !{!116349, !116348, !"_ZN87_$LT$nickel_lang_parser..ast..record..FieldMetadata$u20$as$u20$core..cmp..PartialEq$GT$2eq17h1216aa4dccdd911fE: argument 0"}
!116350 = distinct !{!116350, !116348, !"_ZN87_$LT$nickel_lang_parser..ast..record..FieldMetadata$u20$as$u20$core..cmp..PartialEq$GT$2eq17h1216aa4dccdd911fE: argument 1"}
!116351 = distinct !{null}
!116352 = distinct !{!116352, i1 false, !"_ZN76_$LT$nickel_lang_parser..ast..Annotation$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbc50dc8c5e8f7ad2E"}
!116353 = distinct !{!116353, !116352, !"_ZN76_$LT$nickel_lang_parser..ast..Annotation$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbc50dc8c5e8f7ad2E: argument 0"}
!116354 = distinct !{!116354, !116352, !"_ZN76_$LT$nickel_lang_parser..ast..Annotation$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbc50dc8c5e8f7ad2E: argument 1"}
!116355 = distinct !{ptr @"_ZN76_$LT$nickel_lang_parser..ast..Annotation$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbc50dc8c5e8f7ad2E", null, ptr @"_ZN75_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hac0cbf44aca61d78E"}
!116356 = distinct !{!116356, i1 false, !"_ZN75_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hac0cbf44aca61d78E"}
!116357 = distinct !{!116357, !116356, !"_ZN75_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hac0cbf44aca61d78E: argument 1"}
!116358 = distinct !{!116358, !116356, !"_ZN75_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hac0cbf44aca61d78E: argument 0"}
!116359 = distinct !{!116359, i1 false, !"_ZN4core3cmp9PartialEq2ne17hcd72b4c8b3becc13E"}
!116360 = distinct !{!116360, !116359, !"_ZN4core3cmp9PartialEq2ne17hcd72b4c8b3becc13E: argument 0"}
!116361 = distinct !{!116361, !116359, !"_ZN4core3cmp9PartialEq2ne17hcd72b4c8b3becc13E: argument 1"}
!116362 = distinct !{null, ptr @"_ZN76_$LT$nickel_lang_parser..ast..Annotation$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbc50dc8c5e8f7ad2E", null, null, ptr @"_ZN75_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hac0cbf44aca61d78E"}
!116363 = distinct !{!116363, i1 false, !"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E"}
!116364 = distinct !{!116364, !116363, !"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E: argument 0"}
!116365 = distinct !{!116365, !116363, !"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E: argument 1"}
!116366 = distinct !{!116366, i1 false, !"_ZN75_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hac0cbf44aca61d78E"}
!116367 = distinct !{!116367, !116366, !"_ZN75_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hac0cbf44aca61d78E: argument 1"}
!116368 = distinct !{!116368, !116366, !"_ZN75_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hac0cbf44aca61d78E: argument 0"}
!116369 = !{!116349}
!116370 = !{!116350}
!116371 = !{!116349, !116350}
!116372 = !{!116353}
!116373 = !{!116354}
!116374 = !{!116358, !116357, !116353, !116354}
!116375 = !{!116360}
!116376 = !{!116361}
!116377 = !{!116364}
!116378 = !{!116365}
!116379 = !{!116364, !116368, !116367, !116360}
!116380 = !{!116365, !116361}
!116381 = !{!116365, !116368, !116367, !116361}
!116382 = !{!116364, !116360}
!116383 = distinct !{!116383, i1 false, !"_ZN95_$LT$nickel_lang_parser..typ..RecordRowsF$LT$Ty$C$RRows$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h98655b835b68ddd7E"}
!116384 = distinct !{!116384, !116383, !"_ZN95_$LT$nickel_lang_parser..typ..RecordRowsF$LT$Ty$C$RRows$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h98655b835b68ddd7E: argument 0"}
!116385 = distinct !{!116385, !116383, !"_ZN95_$LT$nickel_lang_parser..typ..RecordRowsF$LT$Ty$C$RRows$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h98655b835b68ddd7E: argument 1"}
!116386 = distinct !{!116386, i1 false, !"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h7cf3e61edd0fd126E"}
!116387 = distinct !{!116387, !116386, !"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h7cf3e61edd0fd126E: argument 0"}
!116388 = distinct !{!116388, !116386, !"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h7cf3e61edd0fd126E: argument 1"}
!116389 = distinct !{!116389, i1 false, !"_ZN75_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hac0cbf44aca61d78E"}
!116390 = distinct !{!116390, !116389, !"_ZN75_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hac0cbf44aca61d78E: argument 0"}
!116391 = distinct !{!116391, !116389, !"_ZN75_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hac0cbf44aca61d78E: argument 1"}
!116392 = distinct !{null, null, ptr @"_ZN75_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hac0cbf44aca61d78E"}
!116393 = distinct !{!116393, i1 false, !"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E"}
!116394 = distinct !{!116394, !116393, !"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E: argument 0"}
!116395 = distinct !{!116395, !116393, !"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E: argument 1"}
!116396 = distinct !{null}
!116397 = !{!116384}
!116398 = !{!116385}
!116399 = !{!116387}
!116400 = !{!116388}
!116401 = !{!116390}
!116402 = !{!116391}
!116403 = !{!116387, !116388}
!116404 = !{!116394}
!116405 = !{!116395}
!116406 = !{!116394, !116390}
!116407 = !{!116395, !116391, !116387, !116388}
!116408 = !{!116395, !116391}
!116409 = !{!116394, !116390, !116387, !116388}
!116410 = distinct !{!116410, i1 false, !"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17ha03aecc4d21d0cb7E"}
!116411 = distinct !{!116411, !116410, !"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17ha03aecc4d21d0cb7E: argument 0"}
!116412 = !{!116411}
!116413 = distinct !{!116413, i1 false, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hd1bbbe0ebdfe01ccE"}
!116414 = distinct !{!116414, !116413, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hd1bbbe0ebdfe01ccE: argument 0"}
!116415 = distinct !{!116415, i1 false, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h2d88f74bff76064cE"}
!116416 = distinct !{!116416, !116415, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h2d88f74bff76064cE: argument 0"}
!116417 = distinct !{!116417, i1 false, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E"}
!116418 = distinct !{!116418, !116417, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E: argument 0"}
!116419 = distinct !{!116419, i1 false, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17he4c7b6e748867b9dE"}
!116420 = distinct !{!116420, !116419, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17he4c7b6e748867b9dE: argument 0"}
!116421 = distinct !{!116421, i1 false, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E"}
!116422 = distinct !{!116422, !116421, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E: argument 0"}
!116423 = distinct !{!116423, !116413, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hd1bbbe0ebdfe01ccE: argument 1"}
!116424 = distinct !{!116424, !116415, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h2d88f74bff76064cE: argument 1"}
!116425 = !{!116414}
!116426 = !{!116416}
!116427 = !{!116418}
!116428 = !{!116420}
!116429 = !{!116422, !116420, !116418, !116416, !116414}
!116430 = !{!116424, !116423}
!116431 = !{!116420, !116418, !116416, !116414}
!116432 = distinct !{!116432, i1 false, !"_ZN3std2io5Write9write_all17hc3d26a742415a7fbE"}
!116433 = distinct !{!116433, !116432, !"_ZN3std2io5Write9write_all17hc3d26a742415a7fbE: argument 0"}
!116434 = distinct !{!116434, i1 false, !"_ZN95_$LT$codespan_reporting..term..renderer..WriteStyleByRef$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h516403427fc72d05E"}
!116435 = distinct !{!116435, !116434, !"_ZN95_$LT$codespan_reporting..term..renderer..WriteStyleByRef$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h516403427fc72d05E: argument 0"}
!116436 = distinct !{!116436, !116432, !"_ZN3std2io5Write9write_all17hc3d26a742415a7fbE: argument 1"}
!116437 = distinct !{!116437, !116434, !"_ZN95_$LT$codespan_reporting..term..renderer..WriteStyleByRef$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h516403427fc72d05E: argument 1"}
!116438 = distinct !{!116438, i1 false, !"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17ha03aecc4d21d0cb7E"}
!116439 = distinct !{!116439, !116438, !"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17ha03aecc4d21d0cb7E: argument 0"}
!116440 = !{!116433}
!116441 = !{!116435, !116433}
!116442 = !{!116437, !116436}
!116443 = !{!116435, !116437, !116433, !116436}
!116444 = !{!116433, !116436}
!116445 = !{!116435}
!116446 = !{ptr @_ZN3std2io5Write9write_all17hc3d26a742415a7fbE, ptr @"_ZN95_$LT$codespan_reporting..term..renderer..WriteStyleByRef$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h516403427fc72d05E"}
!116447 = !{!116439}
!116448 = distinct !{!116448, i1 false, !"_ZN3std2io5Write9write_all17haff9c4328bff8c9aE"}
!116449 = distinct !{!116449, !116448, !"_ZN3std2io5Write9write_all17haff9c4328bff8c9aE: argument 0"}
!116450 = distinct !{!116450, i1 false, !"_ZN62_$LT$termcolor..NoColor$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h08e163a173e32062E"}
!116451 = distinct !{!116451, !116450, !"_ZN62_$LT$termcolor..NoColor$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h08e163a173e32062E: argument 0"}
!116452 = distinct !{!116452, i1 false, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$5write17h91b73b410835de42E"}
!116453 = distinct !{!116453, !116452, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$5write17h91b73b410835de42E: argument 0"}
!116454 = distinct !{!116454, !116448, !"_ZN3std2io5Write9write_all17haff9c4328bff8c9aE: argument 1"}
!116455 = distinct !{!116455, !116450, !"_ZN62_$LT$termcolor..NoColor$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h08e163a173e32062E: argument 1"}
!116456 = distinct !{!116456, !116452, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$5write17h91b73b410835de42E: argument 1"}
!116457 = distinct !{!116457, i1 false, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5write17h64b9e0522c9e2525E"}
!116458 = distinct !{!116458, !116457, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5write17h64b9e0522c9e2525E: argument 0"}
!116459 = distinct !{!116459, i1 false, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E"}
!116460 = distinct !{!116460, !116459, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E: argument 0"}
!116461 = distinct !{!116461, i1 false, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17he4c7b6e748867b9dE"}
!116462 = distinct !{!116462, !116461, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17he4c7b6e748867b9dE: argument 0"}
!116463 = distinct !{!116463, i1 false, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E"}
!116464 = distinct !{!116464, !116463, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E: argument 0"}
!116465 = distinct !{!116465, !116457, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5write17h64b9e0522c9e2525E: argument 1"}
!116466 = !{!116449}
!116467 = !{!116453, !116451, !116449}
!116468 = !{!116456, !116455, !116454}
!116469 = !{!116451}
!116470 = !{!116453}
!116471 = !{!116458}
!116472 = !{!116460}
!116473 = !{!116462}
!116474 = !{!116464, !116462, !116460, !116458}
!116475 = !{!116465, !116453, !116456, !116451, !116455, !116449, !116454}
!116476 = !{!116462, !116460, !116458}
!116477 = !{!116462, !116460, !116458, !116453, !116451, !116449}
!116478 = distinct !{!116478, i1 false, !"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17ha03aecc4d21d0cb7E"}
!116479 = distinct !{!116479, !116478, !"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17ha03aecc4d21d0cb7E: argument 0"}
!116480 = !{!116479}
!116481 = distinct !{!116481, i1 false, !"_ZN95_$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$9write_all17ha1f4f06b46036648E"}
!116482 = distinct !{!116482, !116481, !"_ZN95_$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$9write_all17ha1f4f06b46036648E: argument 0"}
!116483 = distinct !{!116483, i1 false, !"_ZN3std2io6cursor13vec_write_all17hc11799356476f847E"}
!116484 = distinct !{!116484, !116483, !"_ZN3std2io6cursor13vec_write_all17hc11799356476f847E: argument 0"}
!116485 = distinct !{!116485, !116483, !"_ZN3std2io6cursor13vec_write_all17hc11799356476f847E: argument 1"}
!116486 = distinct !{!116486, !116481, !"_ZN95_$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$9write_all17ha1f4f06b46036648E: argument 1"}
!116487 = distinct !{!116487, !116483, !"_ZN3std2io6cursor13vec_write_all17hc11799356476f847E: argument 2"}
!116488 = distinct !{!116488, i1 false, !"_ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE"}
!116489 = distinct !{!116489, !116488, !"_ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE: argument 0"}
!116490 = distinct !{!116490, i1 false, !"_ZN74_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..specialize..SpecFill$LT$T$GT$$GT$9spec_fill17h3f565f54794e1fe7E"}
!116491 = distinct !{!116491, !116490, !"_ZN74_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..specialize..SpecFill$LT$T$GT$$GT$9spec_fill17h3f565f54794e1fe7E: argument 0"}
!116492 = !{!116482}
!116493 = !{!116484}
!116494 = !{!116485}
!116495 = !{!116484, !116482}
!116496 = !{!116485, !116487, !116486}
!116497 = !{!116489}
!116498 = !{!116489, !116485, !116482}
!116499 = !{!116484, !116487, !116486}
!116500 = !{!116485, !116482}
!116501 = !{!116491}
!116502 = !{!116489, !116484, !116485, !116487, !116482, !116486}
!116503 = !{!116484, !116485, !116482}
!116504 = distinct !{!116504, i1 false, !"_ZN3std2io5Write9write_all17h2c10aa79ad3cc142E"}
!116505 = distinct !{!116505, !116504, !"_ZN3std2io5Write9write_all17h2c10aa79ad3cc142E: argument 0"}
!116506 = distinct !{!116506, i1 false, !"_ZN95_$LT$codespan_reporting..term..renderer..WriteStyleByRef$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17hf6880651752a1311E"}
!116507 = distinct !{!116507, !116506, !"_ZN95_$LT$codespan_reporting..term..renderer..WriteStyleByRef$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17hf6880651752a1311E: argument 0"}
!116508 = distinct !{!116508, !116504, !"_ZN3std2io5Write9write_all17h2c10aa79ad3cc142E: argument 1"}
!116509 = distinct !{!116509, !116506, !"_ZN95_$LT$codespan_reporting..term..renderer..WriteStyleByRef$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17hf6880651752a1311E: argument 1"}
!116510 = distinct !{!116510, i1 false, !"_ZN59_$LT$termcolor..Ansi$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17ha929b1ee33d6a9a7E"}
!116511 = distinct !{!116511, !116510, !"_ZN59_$LT$termcolor..Ansi$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17ha929b1ee33d6a9a7E: argument 0"}
!116512 = distinct !{!116512, i1 false, !"_ZN95_$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$5write17h3b29035393e1e43eE"}
!116513 = distinct !{!116513, !116512, !"_ZN95_$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$5write17h3b29035393e1e43eE: argument 0"}
!116514 = distinct !{!116514, i1 false, !"_ZN3std2io6cursor13vec_write_all17hc11799356476f847E"}
!116515 = distinct !{!116515, !116514, !"_ZN3std2io6cursor13vec_write_all17hc11799356476f847E: argument 0"}
!116516 = distinct !{!116516, !116514, !"_ZN3std2io6cursor13vec_write_all17hc11799356476f847E: argument 1"}
!116517 = distinct !{!116517, !116510, !"_ZN59_$LT$termcolor..Ansi$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17ha929b1ee33d6a9a7E: argument 1"}
!116518 = distinct !{!116518, !116512, !"_ZN95_$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$5write17h3b29035393e1e43eE: argument 1"}
!116519 = distinct !{!116519, !116514, !"_ZN3std2io6cursor13vec_write_all17hc11799356476f847E: argument 2"}
!116520 = distinct !{!116520, i1 false, !"_ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE"}
!116521 = distinct !{!116521, !116520, !"_ZN3std2io6cursor15reserve_and_pad17h5b368ab1053bd20dE: argument 0"}
!116522 = distinct !{!116522, i1 false, !"_ZN74_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..specialize..SpecFill$LT$T$GT$$GT$9spec_fill17h3f565f54794e1fe7E"}
!116523 = distinct !{!116523, !116522, !"_ZN74_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..specialize..SpecFill$LT$T$GT$$GT$9spec_fill17h3f565f54794e1fe7E: argument 0"}
!116524 = !{!116505}
!116525 = !{!116507, !116505}
!116526 = !{!116509, !116508}
!116527 = !{!116507}
!116528 = !{!116511}
!116529 = !{!116513}
!116530 = !{!116515}
!116531 = !{!116516}
!116532 = !{!116515, !116513, !116511}
!116533 = !{!116516, !116519, !116518, !116517, !116507, !116509, !116505, !116508}
!116534 = !{!116521}
!116535 = !{!116521, !116516, !116513, !116511}
!116536 = !{!116515, !116519, !116518, !116517, !116507, !116509, !116505, !116508}
!116537 = !{!116516, !116513, !116511}
!116538 = !{!116523}
!116539 = !{!116521, !116515, !116516, !116519, !116513, !116518, !116511, !116517, !116507, !116509, !116505, !116508}
!116540 = !{!116515, !116516, !116513, !116511, !116507, !116505}
!116541 = distinct !{!116541, i1 false, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hd158880be82f7dc8E"}
!116542 = distinct !{!116542, !116541, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hd158880be82f7dc8E: argument 1"}
!116543 = distinct !{!116543, i1 false, !"_ZN83_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h20b748bd9118d507E"}
!116544 = distinct !{!116544, !116543, !"_ZN83_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h20b748bd9118d507E: argument 0"}
!116545 = distinct !{!116545, !116541, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hd158880be82f7dc8E: argument 0"}
!116546 = distinct !{!116546, i1 false, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE"}
!116547 = distinct !{!116547, !116546, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE: argument 0"}
!116548 = distinct !{!116548, i1 false, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h71b53e21a21e0cf3E"}
!116549 = distinct !{!116549, !116548, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h71b53e21a21e0cf3E: argument 0"}
!116550 = distinct !{!116550, i1 false, !"_ZN4core5clone5Clone5clone17hc30d1423bdeeb69eE"}
!116551 = distinct !{!116551, !116550, !"_ZN4core5clone5Clone5clone17hc30d1423bdeeb69eE: argument 1"}
!116552 = distinct !{!116552, !116550, !"_ZN4core5clone5Clone5clone17hc30d1423bdeeb69eE: argument 0"}
!116553 = distinct !{!116553, i1 false, !"_ZN101_$LT$nickel_lang_core..typecheck..pattern..PatternTypeData$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h52c8a24a61466234E"}
!116554 = distinct !{!116554, !116553, !"_ZN101_$LT$nickel_lang_core..typecheck..pattern..PatternTypeData$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h52c8a24a61466234E: argument 1"}
!116555 = distinct !{!116555, !116553, !"_ZN101_$LT$nickel_lang_core..typecheck..pattern..PatternTypeData$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h52c8a24a61466234E: argument 0"}
!116556 = distinct !{!116556, i1 false, !"_ZN76_$LT$nickel_lang_core..typecheck..UnifType$u20$as$u20$core..clone..Clone$GT$5clone17h90ed832918d70b30E"}
!116557 = distinct !{!116557, !116556, !"_ZN76_$LT$nickel_lang_core..typecheck..UnifType$u20$as$u20$core..clone..Clone$GT$5clone17h90ed832918d70b30E: argument 0"}
!116558 = distinct !{!116558, !116556, !"_ZN76_$LT$nickel_lang_core..typecheck..UnifType$u20$as$u20$core..clone..Clone$GT$5clone17h90ed832918d70b30E: argument 1"}
!116559 = distinct !{!116559, i1 false, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4367c493ae859fe1E"}
!116560 = distinct !{!116560, !116559, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4367c493ae859fe1E: argument 1"}
!116561 = distinct !{!116561, i1 false, !"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf28d9c01a58e5c5eE"}
!116562 = distinct !{!116562, !116561, !"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf28d9c01a58e5c5eE: argument 0"}
!116563 = distinct !{!116563, !116559, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4367c493ae859fe1E: argument 0"}
!116564 = distinct !{!116564, i1 false, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE"}
!116565 = distinct !{!116565, !116564, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE: argument 0"}
!116566 = distinct !{!116566, i1 false, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h71b53e21a21e0cf3E"}
!116567 = distinct !{!116567, !116566, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h71b53e21a21e0cf3E: argument 0"}
!116568 = distinct !{!116568, i1 false, !"_ZN4core5clone5Clone5clone17hdd47fd48988932dbE"}
!116569 = distinct !{!116569, !116568, !"_ZN4core5clone5Clone5clone17hdd47fd48988932dbE: argument 0"}
!116570 = distinct !{!116570, !116568, !"_ZN4core5clone5Clone5clone17hdd47fd48988932dbE: argument 1"}
!116571 = distinct !{!116571, i1 false, !"_ZN79_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..clone..Clone$GT$5clone17he358d7770fe1b9f9E"}
!116572 = distinct !{!116572, !116571, !"_ZN79_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..clone..Clone$GT$5clone17he358d7770fe1b9f9E: argument 1"}
!116573 = distinct !{!116573, !116571, !"_ZN79_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..clone..Clone$GT$5clone17he358d7770fe1b9f9E: argument 0"}
!116574 = distinct !{!116574, i1 false, !"_ZN76_$LT$nickel_lang_core..typecheck..UnifType$u20$as$u20$core..clone..Clone$GT$5clone17h90ed832918d70b30E"}
!116575 = distinct !{!116575, !116574, !"_ZN76_$LT$nickel_lang_core..typecheck..UnifType$u20$as$u20$core..clone..Clone$GT$5clone17h90ed832918d70b30E: argument 0"}
!116576 = distinct !{!116576, !116574, !"_ZN76_$LT$nickel_lang_core..typecheck..UnifType$u20$as$u20$core..clone..Clone$GT$5clone17h90ed832918d70b30E: argument 1"}
!116577 = distinct !{!116577, i1 false, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7set_len17h9f012343db478759E"}
!116578 = distinct !{!116578, !116577, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7set_len17h9f012343db478759E: argument 0"}
!116579 = distinct !{!116579, i1 false, !"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E"}
!116580 = distinct !{!116580, !116579, !"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E: argument 0"}
!116581 = distinct !{!116581, i1 false, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0e250f20e81a1843E"}
!116582 = distinct !{!116582, !116581, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0e250f20e81a1843E: argument 1"}
!116583 = distinct !{!116583, i1 false, !"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h947dde413394e4adE"}
!116584 = distinct !{!116584, !116583, !"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h947dde413394e4adE: argument 0"}
!116585 = distinct !{!116585, !116581, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0e250f20e81a1843E: argument 0"}
!116586 = distinct !{!116586, i1 false, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE"}
!116587 = distinct !{!116587, !116586, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE: argument 0"}
!116588 = distinct !{!116588, i1 false, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h71b53e21a21e0cf3E"}
!116589 = distinct !{!116589, !116588, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h71b53e21a21e0cf3E: argument 0"}
!116590 = distinct !{!116590, i1 false, !"_ZN4core5clone5Clone5clone17hc5d994f51e29069eE"}
!116591 = distinct !{!116591, !116590, !"_ZN4core5clone5Clone5clone17hc5d994f51e29069eE: argument 0"}
!116592 = distinct !{!116592, !116590, !"_ZN4core5clone5Clone5clone17hc5d994f51e29069eE: argument 1"}
!116593 = distinct !{!116593, i1 false, !"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hc8fd55bc082131e4E"}
!116594 = distinct !{!116594, !116593, !"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hc8fd55bc082131e4E: argument 0"}
!116595 = distinct !{!116595, i1 false, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hfc5893923adf98bdE"}
!116596 = distinct !{!116596, !116595, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hfc5893923adf98bdE: argument 1"}
!116597 = distinct !{!116597, !116595, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hfc5893923adf98bdE: argument 0"}
!116598 = distinct !{!116598, i1 false, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE"}
!116599 = distinct !{!116599, !116598, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE: argument 0"}
!116600 = distinct !{!116600, i1 false, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h71b53e21a21e0cf3E"}
!116601 = distinct !{!116601, !116600, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h71b53e21a21e0cf3E: argument 0"}
!116602 = distinct !{!116602, i1 false, !"_ZN80_$LT$nickel_lang_core..typecheck..UnifEnumRows$u20$as$u20$core..clone..Clone$GT$5clone17h19f0b909a3828e5cE"}
!116603 = distinct !{!116603, !116602, !"_ZN80_$LT$nickel_lang_core..typecheck..UnifEnumRows$u20$as$u20$core..clone..Clone$GT$5clone17h19f0b909a3828e5cE: argument 0"}
!116604 = distinct !{!116604, !116602, !"_ZN80_$LT$nickel_lang_core..typecheck..UnifEnumRows$u20$as$u20$core..clone..Clone$GT$5clone17h19f0b909a3828e5cE: argument 1"}
!116605 = distinct !{!116605, i1 false, !"_ZN91_$LT$nickel_lang_parser..typ..EnumRowsF$LT$Ty$C$ERows$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3ab339dfdd4673e0E"}
!116606 = distinct !{!116606, !116605, !"_ZN91_$LT$nickel_lang_parser..typ..EnumRowsF$LT$Ty$C$ERows$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3ab339dfdd4673e0E: argument 1"}
!116607 = distinct !{!116607, !116605, !"_ZN91_$LT$nickel_lang_parser..typ..EnumRowsF$LT$Ty$C$ERows$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3ab339dfdd4673e0E: argument 0"}
!116608 = distinct !{!116608, i1 false, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7set_len17h0a285683aaa6734bE"}
!116609 = distinct !{!116609, !116608, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7set_len17h0a285683aaa6734bE: argument 0"}
!116610 = distinct !{!116610, i1 false, !"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h601c9312fb826438E"}
!116611 = distinct !{!116611, !116610, !"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h601c9312fb826438E: argument 1"}
!116612 = distinct !{!116612, !116610, !"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h601c9312fb826438E: argument 0"}
!116613 = distinct !{!116613, i1 false, !"_ZN76_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h5a8c34f0e13d299bE"}
!116614 = distinct !{!116614, !116613, !"_ZN76_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h5a8c34f0e13d299bE: argument 1"}
!116615 = distinct !{!116615, !116613, !"_ZN76_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h5a8c34f0e13d299bE: argument 0"}
!116616 = distinct !{!116616, i1 false, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17h36b9e9043ea179d6E"}
!116617 = distinct !{!116617, !116616, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17h36b9e9043ea179d6E: argument 0"}
!116618 = distinct !{!116618, i1 false, !"_ZN9hashbrown3raw13RawTableInner17new_uninitialized17h46ab44c7483d9402E"}
!116619 = distinct !{!116619, !116618, !"_ZN9hashbrown3raw13RawTableInner17new_uninitialized17h46ab44c7483d9402E: argument 0"}
!116620 = distinct !{!116620, i1 false, !"_ZN87_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$hashbrown..raw..RawTableClone$GT$15clone_from_spec17h65da273457a67cd8E"}
!116621 = distinct !{!116621, !116620, !"_ZN87_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$hashbrown..raw..RawTableClone$GT$15clone_from_spec17h65da273457a67cd8E: argument 1"}
!116622 = distinct !{!116622, i1 false, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$15clone_from_impl17hca06f7d8779156b8E"}
!116623 = distinct !{!116623, !116622, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$15clone_from_impl17hca06f7d8779156b8E: argument 1"}
!116624 = distinct !{!116624, !116620, !"_ZN87_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$hashbrown..raw..RawTableClone$GT$15clone_from_spec17h65da273457a67cd8E: argument 0"}
!116625 = distinct !{!116625, !116622, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$15clone_from_impl17hca06f7d8779156b8E: argument 0"}
!116626 = distinct !{!116626, i1 false, !"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$3new17h13c6cb64cf4c1c44E"}
!116627 = distinct !{!116627, !116626, !"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$3new17h13c6cb64cf4c1c44E: argument 0"}
!116628 = distinct !{!116628, i1 false, !"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h69cae7233a27e163E"}
!116629 = distinct !{!116629, !116628, !"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h69cae7233a27e163E: argument 0"}
!116630 = distinct !{!116630, i1 false, !"_ZN4core5clone5Clone5clone17hf7451d31a3a474b3E"}
!116631 = distinct !{!116631, !116630, !"_ZN4core5clone5Clone5clone17hf7451d31a3a474b3E: argument 0"}
!116632 = distinct !{!116632, i1 false, !"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hc8fd55bc082131e4E"}
!116633 = distinct !{!116633, !116632, !"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hc8fd55bc082131e4E: argument 0"}
!116634 = distinct !{!116634, i1 false, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hfc5893923adf98bdE"}
!116635 = distinct !{!116635, !116634, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hfc5893923adf98bdE: argument 1"}
!116636 = distinct !{!116636, !116634, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hfc5893923adf98bdE: argument 0"}
!116637 = distinct !{!116637, i1 false, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE"}
!116638 = distinct !{!116638, !116637, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE: argument 0"}
!116639 = distinct !{!116639, i1 false, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h71b53e21a21e0cf3E"}
!116640 = distinct !{!116640, !116639, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h71b53e21a21e0cf3E: argument 0"}
!116641 = distinct !{!116641, i1 false, !"_ZN4core3ptr148drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$alloc..vec..Vec$LT$nickel_lang_core..typecheck..pattern..PatternPathElem$GT$$C$$LP$$RP$$RP$$GT$$GT$17h160acb7a2f2d6002E"}
!116642 = distinct !{!116642, !116641, !"_ZN4core3ptr148drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$alloc..vec..Vec$LT$nickel_lang_core..typecheck..pattern..PatternPathElem$GT$$C$$LP$$RP$$RP$$GT$$GT$17h160acb7a2f2d6002E: argument 0"}
!116643 = distinct !{!116643, i1 false, !"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8b7aae4ab3722a8eE"}
!116644 = distinct !{!116644, !116643, !"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8b7aae4ab3722a8eE: argument 0"}
!116645 = distinct !{!116645, i1 false, !"_ZN9hashbrown3raw13RawTableInner16drop_inner_table17h8206ecd549e79b9bE"}
!116646 = distinct !{!116646, !116645, !"_ZN9hashbrown3raw13RawTableInner16drop_inner_table17h8206ecd549e79b9bE: argument 0"}
!116647 = distinct !{!116647, i1 false, !"_ZN4core3ptr193drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$nickel_lang_parser..ast..MatchBranch$C$nickel_lang_core..typecheck..pattern..PatternTypeData$LT$nickel_lang_core..typecheck..UnifType$GT$$RP$$GT$$GT$17ha2513548d3793dd0E"}
!116648 = distinct !{!116648, !116647, !"_ZN4core3ptr193drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$nickel_lang_parser..ast..MatchBranch$C$nickel_lang_core..typecheck..pattern..PatternTypeData$LT$nickel_lang_core..typecheck..UnifType$GT$$RP$$GT$$GT$17ha2513548d3793dd0E: argument 0"}
!116649 = distinct !{!116649, i1 false, !"_ZN4core3ptr180drop_in_place$LT$$u5b$$LP$$RF$nickel_lang_parser..ast..MatchBranch$C$nickel_lang_core..typecheck..pattern..PatternTypeData$LT$nickel_lang_core..typecheck..UnifType$GT$$RP$$u5d$$GT$17h06f07c78059c03efE"}
!116650 = distinct !{!116650, !116649, !"_ZN4core3ptr180drop_in_place$LT$$u5b$$LP$$RF$nickel_lang_parser..ast..MatchBranch$C$nickel_lang_core..typecheck..pattern..PatternTypeData$LT$nickel_lang_core..typecheck..UnifType$GT$$RP$$u5d$$GT$17h06f07c78059c03efE: argument 0"}
!116651 = !{!116542}
!116652 = !{!116549, !116547, !116545, !116542, !116544}
!116653 = !{!116545, !116542, !116544}
!116654 = !{!116551}
!116655 = !{!116551, !116542}
!116656 = !{!116552, !116545, !116544}
!116657 = !{!116554}
!116658 = !{!116555, !116554, !116552, !116551, !116545, !116542, !116544}
!116659 = !{!116557}
!116660 = !{!116558}
!116661 = !{!116558, !116554, !116551, !116542}
!116662 = !{!116557, !116555, !116552, !116545, !116544}
!116663 = !{!116545, !116544}
!116664 = !{!116558, !116555, !116554, !116552, !116551, !116545, !116542, !116544}
!116665 = !{!116557, !116558}
!116666 = !{!116555, !116552, !116545, !116544}
!116667 = !{!116554, !116551, !116542}
!116668 = !{!116560}
!116669 = !{!116563, !116560, !116562, !116555, !116554, !116552, !116551, !116545, !116542, !116544}
!116670 = !{!116567, !116565, !116563, !116560, !116562, !116555, !116554, !116552, !116551, !116545, !116542, !116544}
!116671 = !{!116569}
!116672 = !{!116570}
!116673 = !{!116573, !116572, !116569, !116570}
!116674 = !{!116563, !116562, !116555, !116554, !116552, !116551, !116545, !116542, !116544}
!116675 = !{!116575}
!116676 = !{!116576}
!116677 = !{!116576, !116570, !116560}
!116678 = !{!116575, !116569, !116563, !116562, !116555, !116554, !116552, !116551, !116545, !116542, !116544}
!116679 = !{!116575, !116569}
!116680 = !{!116576, !116570, !116563, !116560, !116562, !116555, !116554, !116552, !116551, !116545, !116542, !116544}
!116681 = !{!116575, !116576, !116569, !116570}
!116682 = !{!116578}
!116683 = !{!116580}
!116684 = !{!116560, !116555, !116554, !116552, !116551, !116545, !116542, !116544}
!116685 = !{!116582}
!116686 = !{!116585, !116582, !116584, !116555, !116554, !116552, !116551, !116545, !116542, !116544}
!116687 = !{!116589, !116587, !116585, !116582, !116584, !116555, !116554, !116552, !116551, !116545, !116542, !116544}
!116688 = !{!116591}
!116689 = !{!116592}
!116690 = !{!116592, !116582}
!116691 = !{!116591, !116585, !116584, !116555, !116554, !116552, !116551, !116545, !116542, !116544}
!116692 = !{!116601, !116599, !116597, !116596, !116594, !116591, !116592, !116585, !116582, !116584, !116555, !116554, !116552, !116551, !116545, !116542, !116544}
!116693 = !{!116597, !116594, !116591, !116592, !116585, !116582, !116584, !116555, !116554, !116552, !116551, !116545, !116542, !116544}
!116694 = !{!116603}
!116695 = !{!116604}
!116696 = !{!116604, !116592, !116582}
!116697 = !{!116603, !116591, !116585, !116584, !116555, !116554, !116552, !116551, !116545, !116542, !116544}
!116698 = !{!116606, !116604, !116592, !116582}
!116699 = !{!116607, !116603, !116591, !116585, !116584, !116555, !116554, !116552, !116551, !116545, !116542, !116544}
!116700 = !{ptr @"_ZN80_$LT$nickel_lang_core..typecheck..UnifEnumRows$u20$as$u20$core..clone..Clone$GT$5clone17h19f0b909a3828e5cE"}
!116701 = !{!116607, !116603, !116604, !116591, !116592, !116585, !116582, !116584, !116555, !116554, !116552, !116551, !116545, !116542, !116544}
!116702 = !{!116604, !116592, !116585, !116582, !116584, !116555, !116554, !116552, !116551, !116545, !116542, !116544}
!116703 = !{!116603, !116604, !116591, !116592, !116582}
!116704 = !{!116585, !116584, !116555, !116554, !116552, !116551, !116545, !116542, !116544}
!116705 = !{!116603, !116604, !116591, !116592}
!116706 = !{!116591, !116592, !116585, !116582, !116584, !116555, !116554, !116552, !116551, !116545, !116542, !116544}
!116707 = !{!116609}
!116708 = !{!116582, !116555, !116554, !116552, !116551, !116545, !116542, !116544}
!116709 = !{!116611}
!116710 = !{!116611, !116554, !116551, !116542}
!116711 = !{!116612, !116555, !116552, !116545, !116544}
!116712 = !{!116614}
!116713 = !{!116614, !116611, !116554, !116551, !116542}
!116714 = !{!116615, !116612, !116555, !116552, !116545, !116544}
!116715 = !{!116619, !116617, !116615, !116614, !116612, !116611, !116555, !116554, !116552, !116551, !116545, !116542, !116544}
!116716 = !{!116621}
!116717 = !{!116623}
!116718 = !{!116623, !116621, !116614, !116611, !116554, !116551, !116542}
!116719 = !{!116625, !116624, !116615, !116612, !116555, !116552, !116545, !116544}
!116720 = !{!116625, !116623, !116624, !116621, !116615, !116614, !116612, !116611, !116555, !116554, !116552, !116551, !116545, !116542, !116544}
!116721 = !{!116627, !116625, !116623, !116624, !116621, !116615, !116614, !116612, !116611, !116555, !116554, !116552, !116551, !116545, !116542, !116544}
!116722 = !{!116623, !116624, !116621, !116615, !116614, !116612, !116611, !116555, !116554, !116552, !116551, !116545, !116542, !116544}
!116723 = !{!116629, !116625, !116623, !116624, !116621, !116615, !116614, !116612, !116611, !116555, !116554, !116552, !116551, !116545, !116542, !116544}
!116724 = !{!116640, !116638, !116636, !116635, !116633, !116631, !116625, !116623, !116624, !116621, !116615, !116614, !116612, !116611, !116555, !116554, !116552, !116551, !116545, !116542, !116544}
!116725 = !{!116636, !116633, !116631, !116625, !116623, !116624, !116621, !116615, !116614, !116612, !116611, !116555, !116554, !116552, !116551, !116545, !116542, !116544}
!116726 = !{!116615, !116614}
!116727 = !{!116646, !116644, !116642, !116615, !116614, !116612, !116611, !116555, !116554, !116552, !116551, !116545, !116542, !116544}
!116728 = !{!116648, !116545, !116542, !116544}
!116729 = !{!116650, !116648, !116545, !116542, !116544}
!116730 = distinct !{!116730, i1 false, !"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E"}
!116731 = distinct !{!116731, !116730, !"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E: argument 0"}
!116732 = distinct !{!116732, !116730, !"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E: argument 1"}
!116733 = distinct !{!116733, i1 false, !"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17heb59bae295a667bcE"}
!116734 = distinct !{!116734, !116733, !"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17heb59bae295a667bcE: argument 0"}
!116735 = distinct !{!116735, i1 false, !"_ZN51_$LT$T$u20$as$u20$core..clone..uninit..CopySpec$GT$9clone_one17h198d8d146ed5848fE"}
!116736 = distinct !{!116736, !116735, !"_ZN51_$LT$T$u20$as$u20$core..clone..uninit..CopySpec$GT$9clone_one17h198d8d146ed5848fE: argument 0"}
!116737 = distinct !{null, null}
!116738 = distinct !{!116738, i1 false, !"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17heb59bae295a667bcE"}
!116739 = distinct !{!116739, !116738, !"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17heb59bae295a667bcE: argument 0"}
!116740 = distinct !{!116740, i1 false, !"_ZN51_$LT$T$u20$as$u20$core..clone..uninit..CopySpec$GT$9clone_one17h198d8d146ed5848fE"}
end_hunk_6
