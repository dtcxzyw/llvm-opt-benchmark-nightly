Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_package-a9f8ff2ef7d48f62.nickel_lang_package.b5fe27ed4146988a-cgu.0?download=true
inline.NumInlined: 25765
inline.NumDeleted: 11076
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 162
loop-unroll.NumUnrolled: 230
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@"_ZN66_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$std..io..Read$GT$16is_read_vectored17hceed151ebb171e92E"
define internal noundef zeroext i1 @"_ZN66_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$std..io..Read$GT$16is_read_vectored17hceed151ebb171e92E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define internal { i64, ptr } @"_ZN66_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$std..io..Read$GT$4read17h0d10c88cec655925E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull writeonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #28 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !77519, !noalias !77520, !nonnull !41, !noundef !41
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i = load i64, ptr %i.b, align 8, !alias.scope !77519, !noalias !77520, !noundef !41 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !77519, !noalias !77520, !noundef !41 ; 2 uses
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.val2.i, i64 %i.d) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.0.i.i ; 2 uses
  %i.f = sub nuw i64 %.val2.i, %.sroa.0.0.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77521)
  %.sroa.0.0.i.i5 = tail call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %2) ; 4 uses
  %i.g = icmp eq i64 %.sroa.0.0.i.i5, 1
  br i1 %i.g, label %bb.b, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17ha3c153ab64093491E.exit.i"

bb.b:                                             ; preds = %bb.a
  %i.h = load i8, ptr %i.e, align 1, !noalias !77522, !noundef !41
  store i8 %i.h, ptr %1, align 1, !alias.scope !77521, !noalias !77523
  br label %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17ha3c153ab64093491E.exit.i": ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull readonly align 1 %i.e, i64 %.sroa.0.0.i.i5, i1 false), !alias.scope !77524, !noalias !77525
  br label %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit"

"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit": ; preds = %bb.b, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17ha3c153ab64093491E.exit.i"
  %i.i = inttoptr i64 %.sroa.0.0.i.i5 to ptr
  %i.j = add i64 %.sroa.0.0.i.i5, %i.d
  store i64 %i.j, ptr %i.c, align 8
  %i.k = insertvalue { i64, ptr } { i64 0, ptr undef }, ptr %i.i, 1
  ret { i64, ptr } %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define internal noalias noundef ptr @"_ZN66_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$std..io..Read$GT$8read_buf17hd1a882a381e58e3dE"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1) unnamed_addr #28 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !41 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !77538, !noalias !77539, !nonnull !41, !noundef !41
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i = load i64, ptr %i.d, align 8, !alias.scope !77538, !noalias !77539, !noundef !41 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !77538, !noalias !77539, !noundef !41 ; 2 uses
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.val2.i, i64 %i.f) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.0.i.i
  %i.h = sub nuw i64 %.val2.i, %.sroa.0.0.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77540)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !77540, !noalias !77541, !noundef !41
  %i.k = sub i64 %i.j, %i.b
  %.sroa.0.0.i.i7 = tail call noundef i64 @llvm.umin.i64(i64 %i.h, i64 %i.k) ; 3 uses
  %i.l = load ptr, ptr %1, align 8, !alias.scope !77540, !noalias !77542, !nonnull !41, !align !46, !noundef !41
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull readonly align 1 %i.g, i64 %.sroa.0.0.i.i7, i1 false), !alias.scope !77543, !noalias !77544
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !77540, !noalias !77542, !noundef !41
  %i.p = add i64 %.sroa.0.0.i.i7, %i.b            ; 2 uses
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.p, i64 %i.o)
  store i64 %.sroa.0.0.i.i.i, ptr %i.n, align 8, !alias.scope !77540, !noalias !77542
  store i64 %i.p, ptr %i.a, align 8, !alias.scope !77540, !noalias !77542
  %i.q = add i64 %.sroa.0.0.i.i7, %i.f
  store i64 %i.q, ptr %i.e, align 8
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h10b3763dbe16ee77E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !41, !align !42, !noundef !41
  %i.b = tail call noundef zeroext i1 @"_ZN64_$LT$gix_discover..is_git..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h8023e7f1fbfa11b7E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h27c311d30f5826eeE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !41, !align !42, !noundef !41
  %i.b = tail call noundef zeroext i1 @"_ZN86_$LT$gix_odb..store_impls..dynamic..find..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h759c709c92b95175E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0739f56efecce525E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address) %.8.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77571)
  %i.a = mul i64 %.16.val, 24                     ; 4 uses
  %or.cond.i.i.i.i = icmp ugt i64 %.16.val, 384307168202282325
  br i1 %or.cond.i.i.i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !53

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.thread.i", label %bb.b

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.thread.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %i.c = icmp eq i64 %.16.val, 0
  tail call void @llvm.assume(i1 %i.c)
  br label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7b485fa8b83d1279E.exit"

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !77572
  %i.d = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.a, i64 noundef range(i64 1, 9) 8) #67, !noalias !77572 ; 6 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i"

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2533) #73, !noalias !77573
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i": ; preds = %bb.b
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %.8.val, i64 %.16.val
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i", %bb.g
  %.sroa.014.034.i = phi ptr [ %i.i, %bb.g ], [ %.8.val, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i" ] ; 4 uses
  %.sroa.7.033.i = phi i64 [ %i.j, %bb.g ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i" ] ; 4 uses
  %.sroa.10.032.i = phi i64 [ %i.g, %bb.g ], [ %.16.val, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i" ]
  %i.g = add nsw i64 %.sroa.10.032.i, -1          ; 2 uses
  %i.h = icmp eq ptr %.sroa.014.034.i, %i.f
  br i1 %i.h, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7b485fa8b83d1279E.exit", label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.034.i, i64 24
  %i.j = add nuw nsw i64 %.sroa.7.033.i, 1
  %i.k = getelementptr i8, ptr %.sroa.014.034.i, i64 8
  %.val12.i = load ptr, ptr %i.k, align 8, !alias.scope !77571, !noalias !77574, !nonnull !41, !noundef !41
  %i.l = getelementptr i8, ptr %.sroa.014.034.i, i64 16
  %.val13.i = load i64, ptr %i.l, align 8, !alias.scope !77571, !noalias !77574, !noundef !41 ; 7 uses
  %i.m = icmp slt i64 %.val13.i, 0
  br i1 %i.m, label %bb.f, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !53

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.n = icmp eq i64 %.val13.i, 0
  br i1 %i.n, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !77575
  %i.o = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val13.i, i64 noundef range(i64 1, 9) 1) #67, !noalias !77575 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 1, %bb.e ], [ 0, %bb.d ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %.val13.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2532) #73
          to label %.noexc.i unwind label %bb.h, !noalias !77573

.noexc.i:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.o, %bb.e ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i, ptr nonnull readonly align 1 %.val12.i, i64 %.val13.i, i1 false), !noalias !77576
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.sroa.7.033.i ; 3 uses
  store i64 %.val13.i, ptr %i.q, align 8, !noalias !77573
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !77573
  %.sroa.523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.val13.i, ptr %.sroa.523.0..sroa_idx.i, align 8, !noalias !77573
  %i.r = icmp eq i64 %i.g, 0
  br i1 %i.r, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7b485fa8b83d1279E.exit", label %.lr.ph.i

bb.h:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77577), !noalias !77573
  %i.t = icmp eq i64 %.sroa.7.033.i, 0
  br i1 %i.t, label %"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$bstr..bstring..BString$GT$$GT$17he4ad5879b3e3106bE.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %"_ZN4core3ptr43drop_in_place$LT$bstr..bstring..BString$GT$17h58cadbacf66edebfE.exit.i.i.i"
  %.sroa.0.010.i.i.i = phi i64 [ %i.v, %"_ZN4core3ptr43drop_in_place$LT$bstr..bstring..BString$GT$17h58cadbacf66edebfE.exit.i.i.i" ], [ 0, %bb.h ] ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.sroa.0.010.i.i.i ; 2 uses
  %i.v = add nuw nsw i64 %.sroa.0.010.i.i.i, 1    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77578), !noalias !77573
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77579), !noalias !77573
  %.val.i.i.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !77580, !noalias !77581 ; 2 uses
  %i.w = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.w, label %"_ZN4core3ptr43drop_in_place$LT$bstr..bstring..BString$GT$17h58cadbacf66edebfE.exit.i.i.i", label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.x, align 8, !alias.scope !77580, !noalias !77581, !nonnull !41, !noundef !41
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !77582
  br label %"_ZN4core3ptr43drop_in_place$LT$bstr..bstring..BString$GT$17h58cadbacf66edebfE.exit.i.i.i"

"_ZN4core3ptr43drop_in_place$LT$bstr..bstring..BString$GT$17h58cadbacf66edebfE.exit.i.i.i": ; preds = %bb.i, %.lr.ph.i.i.i
  %i.y = icmp eq i64 %i.v, %.sroa.7.033.i
  br i1 %i.y, label %"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$bstr..bstring..BString$GT$$GT$17he4ad5879b3e3106bE.exit", label %.lr.ph.i.i.i

"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$bstr..bstring..BString$GT$$GT$17he4ad5879b3e3106bE.exit": ; preds = %"_ZN4core3ptr43drop_in_place$LT$bstr..bstring..BString$GT$17h58cadbacf66edebfE.exit.i.i.i", %bb.h
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.a, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !77581
  resume { ptr, i32 } %i.s

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7b485fa8b83d1279E.exit": ; preds = %.lr.ph.i, %bb.g, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.thread.i"
  %.sroa.6.0 = phi ptr [ inttoptr (i64 8 to ptr), %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.thread.i" ], [ %i.d, %bb.g ], [ %i.d, %.lr.ph.i ]
  store i64 %.16.val, ptr %0, align 8, !noalias !77571
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !77571
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.16.val, ptr %.sroa.9.0..sroa_idx, align 8, !noalias !77571
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1a37db222da721c2E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address, read_provenance) %.8.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [152 x i8], align 8               ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.018.i = alloca [152 x i8], align 8       ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77595)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !77596
  %i.f = mul i64 %.16.val, 160                    ; 3 uses
  %or.cond.i.i.i.i = icmp ugt i64 %.16.val, 57646075230342348
  br i1 %or.cond.i.i.i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !53

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.thread.i", label %bb.b

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.thread.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %i.h = icmp eq i64 %.16.val, 0
  tail call void @llvm.assume(i1 %i.h)
  store i64 0, ptr %i.e, align 8, !noalias !77596
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8, !noalias !77596
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7b54e19edcd4d169E.exit"

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !77597
  %i.k = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.f, i64 noundef range(i64 1, 9) 8) #67, !noalias !77597 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i"

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2533) #73, !noalias !77596
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i": ; preds = %bb.b
  store i64 %.16.val, ptr %i.e, align 8, !noalias !77596
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.k, ptr %i.m, align 8, !noalias !77596
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw [160 x i8], ptr %.8.val, i64 %.16.val
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i", %bb.k
  %.sroa.013.033.i = phi ptr [ %i.s, %bb.k ], [ %.8.val, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i" ] ; 4 uses
  %.sroa.7.032.i = phi i64 [ %i.t, %bb.k ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i" ] ; 3 uses
  %.sroa.10.031.i = phi i64 [ %i.p, %bb.k ], [ %.16.val, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i" ]
  %i.p = add nsw i64 %.sroa.10.031.i, -1          ; 2 uses
  %i.q = icmp eq ptr %.sroa.013.033.i, %i.o
  br i1 %i.q, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7b54e19edcd4d169E.exit", label %bb.e

bb.d:                                             ; preds = %bb.h, %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.e:                                             ; preds = %.lr.ph.i
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.033.i, i64 160
  %i.t = add nuw nsw i64 %.sroa.7.032.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77598)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !77599
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.013.033.i, i64 152
  %.val.i.i = load ptr, ptr %i.u, align 8, !alias.scope !77600, !noalias !77601, !nonnull !41, !noundef !41 ; 5 uses
  %i.v = ptrtoint ptr %.val.i.i to i64
  %i.w = and i64 %i.v, 3
  %..i.i.i = tail call i64 @llvm.umin.i64(i64 %i.w, i64 2)
  switch i64 %..i.i.i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i" [
    i64 2, label %bb.f
    i64 0, label %bb.g
  ], !prof !51

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1197, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1200, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @383) #73
          to label %.noexc.i unwind label %bb.d, !noalias !77602

.noexc.i:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.x = load i64, ptr %.val.i.i, align 8, !noalias !77603, !noundef !41 ; 3 uses
  %i.y = and i64 %i.x, 72057594037927935          ; 3 uses
  %i.z = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  %i.ab = and i64 %i.x, 1080863910568919040
  %i.ac = icmp ult i64 %i.x, 864691128455135232
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = or i64 %i.aa, %i.ab
  store i64 %i.ad, ptr %.val.i.i, align 8, !noalias !77603
  %i.ae = icmp eq i64 %i.y, 72057594037927935
  br i1 %i.ae, label %bb.h, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i", !prof !44

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !77599
  store ptr @2427, ptr %i.b, align 8, !noalias !77599
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.af, align 8, !noalias !77599
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.ag, align 8, !noalias !77599
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ah, align 8, !noalias !77599
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.ai, align 8, !noalias !77599
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2428) #73
          to label %.noexc12.i unwind label %bb.d, !noalias !77602

.noexc12.i:                                       ; preds = %bb.h
  unreachable

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i": ; preds = %bb.g, %bb.e
  store ptr %.val.i.i, ptr %i.d, align 8, !noalias !77599
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !77599
  invoke fastcc void @"_ZN69_$LT$nickel_lang_core..label..Label$u20$as$u20$core..clone..Clone$GT$5clone17h1f0f897958055994E"(ptr noalias noundef align 8 captures(address) dereferenceable(152) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %.sroa.013.033.i)
          to label %bb.k unwind label %bb.i, !noalias !77601

bb.i:                                             ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i"
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h69664dc3fa7d5d80E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #75
          to label %bb.m unwind label %bb.j, !noalias !77601

bb.j:                                             ; preds = %bb.i
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !77601
  unreachable

bb.k:                                             ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.018.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.018.i, ptr noundef nonnull align 8 dereferenceable(152) %i.c, i64 152, i1 false), !noalias !77596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !77599
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !77599
  %i.al = getelementptr inbounds nuw [160 x i8], ptr %i.k, i64 %.sroa.7.032.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.al, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.018.i, i64 152, i1 false), !noalias !77602
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 152
  store ptr %.val.i.i, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !77602
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.018.i)
  %i.am = icmp eq i64 %i.p, 0
  br i1 %i.am, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7b54e19edcd4d169E.exit", label %.lr.ph.i

bb.l:                                             ; preds = %bb.m
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !77602
  unreachable

bb.m:                                             ; preds = %bb.i, %bb.d
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.r, %bb.d ], [ %i.aj, %bb.i ]
  store i64 %.sroa.7.032.i, ptr %i.n, align 8, !alias.scope !77604, !noalias !77596
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..term..RuntimeContract$GT$$GT$17h8dec2839075e3995E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #75
          to label %bb.n unwind label %bb.l, !noalias !77602

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %eh.lpad-body.i

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7b54e19edcd4d169E.exit": ; preds = %.lr.ph.i, %bb.k, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.thread.i"
  %i.ao = phi ptr [ %i.j, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.thread.i" ], [ %i.n, %bb.k ], [ %i.n, %.lr.ph.i ]
  store i64 %.16.val, ptr %i.ao, align 8, !noalias !77596
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !77595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !77596
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1ae67d8c1fa41675E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address) %.8.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77617)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !77618
  %i.e = mul i64 %.16.val, 48                     ; 3 uses
  %or.cond.i.i.i.i = icmp ugt i64 %.16.val, 192153584101141162
  br i1 %or.cond.i.i.i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !53

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.thread.i", label %bb.b

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.thread.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %i.g = icmp eq i64 %.16.val, 0
  tail call void @llvm.assume(i1 %i.g)
  store i64 0, ptr %i.d, align 8, !noalias !77618
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8, !noalias !77618
end_hunk_0
