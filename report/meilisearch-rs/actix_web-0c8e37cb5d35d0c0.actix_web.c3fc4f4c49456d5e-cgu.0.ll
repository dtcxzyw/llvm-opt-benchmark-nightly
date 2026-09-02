Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/actix_web-0c8e37cb5d35d0c0.actix_web.c3fc4f4c49456d5e-cgu.0?download=true
inline.NumInlined: 5794
inline.NumDeleted: 2637
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN4core5slice4sort6stable9quicksort9quicksort17hda82fa42989470e3E:bb.a
  %i.ik = xor i64 %.sroa.04.017.i58, -1
  %i.il = getelementptr [32 x i8], ptr %i.ha, i64 %i.ik
  %i.im = getelementptr [32 x i8], ptr %i.ii, i64 %.sroa.04.017.i58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.im, ptr noundef nonnull align 8 dereferenceable(32) %i.il, i64 32, i1 false), !alias.scope !7590
  %i.in = add nuw i64 %.sroa.04.017.i58, 2        ; 2 uses
  %i.io = xor i64 %.sroa.04.017.i58, -2
  %i.ip = getelementptr [32 x i8], ptr %i.ha, i64 %i.io
  %i.iq = getelementptr [32 x i8], ptr %i.ii, i64 %.sroa.04.017.i58
  %i.ir = getelementptr i8, ptr %i.iq, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ir, ptr noundef nonnull align 8 dereferenceable(32) %i.ip, i64 32, i1 false), !alias.scope !7590
  %niter458.next.1 = add i64 %niter458, 2         ; 2 uses
  %niter458.ncmp.1 = icmp eq i64 %niter458.next.1, %unroll_iter457
  br i1 %niter458.ncmp.1, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h32a47457f15f6388E.exit.unr-lcssa, label %bb.br

_ZN4core5slice4sort6stable9quicksort16stable_partition17h32a47457f15f6388E.exit.unr-lcssa: ; preds = %bb.br
  %lcmp.mod455.not = icmp eq i64 %xtraiter454, 0
  br i1 %lcmp.mod455.not, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h32a47457f15f6388E.exit, label %.epil.preheader447

.epil.preheader447:                               ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h32a47457f15f6388E.exit.unr-lcssa, %.lr.ph19.i57
  %.sroa.04.017.i58.epil.init = phi i64 [ 0, %.lr.ph19.i57 ], [ %i.in, %_ZN4core5slice4sort6stable9quicksort16stable_partition17h32a47457f15f6388E.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod456 = trunc i64 %i.ih to i1
  call void @llvm.assume(i1 %lcmp.mod456)
  %i.is = xor i64 %.sroa.04.017.i58.epil.init, -1
  %i.it = getelementptr [32 x i8], ptr %i.ha, i64 %i.is
  %i.iu = getelementptr [32 x i8], ptr %i.ii, i64 %.sroa.04.017.i58.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.iu, ptr noundef nonnull align 8 dereferenceable(32) %i.it, i64 32, i1 false), !alias.scope !7590
  br label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h32a47457f15f6388E.exit

_ZN4core5slice4sort6stable9quicksort16stable_partition17h32a47457f15f6388E.exit: ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h32a47457f15f6388E.exit.unr-lcssa, %.epil.preheader447
  %i.iv = icmp ugt i64 %.sroa.11.1.lcssa.i54, %.sroa.15.0115306
  br i1 %i.iv, label %bb.bs, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h1aeb14b25db1b2eeE.exit", !prof !33

.outer._crit_edge.thread:                         ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hf779422766f3d2f1E.exit

bb.bs:                                            ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h32a47457f15f6388E.exit
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.11.1.lcssa.i54, i64 noundef %.sroa.15.0115306, i64 noundef %.sroa.15.0115306, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @298) #52, !noalias !7593
  unreachable

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h1aeb14b25db1b2eeE.exit": ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h32a47457f15f6388E.exit
  %i.iw = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph122, i64 %.sroa.11.1.lcssa.i54 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ix = icmp ult i64 %i.ih, 33
  br i1 %i.ix, label %.outer._crit_edge, label %.lr.ph

bb.bt:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @179, ptr %i.a, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.iy, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.iz, align 8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ja, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.jb, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #52
  unreachable

bb.bu:                                            ; preds = %bb.bg
  %i.jc = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph122, i64 %.sroa.11.1.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph122) ]
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hda82fa42989470e3E(ptr noalias noundef nonnull align 8 %i.jc, i64 noundef %i.gl, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.jd = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.jd, label %.outer._crit_edge, label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4time10formatting22format_number_pad_zero17h085c302a469a943dE(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 430) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  %.not.i.not.i = icmp eq i32 %1, 0
  br i1 %.not.i.not.i, label %.lr.ph, label %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit"

"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit": ; preds = %bb.a
  %i.b = add nuw nsw i32 %1, 393206
  %i.c = add nuw nsw i32 %1, 524188
  %i.d = and i32 %i.b, %i.c
  %.mask = and i32 %i.d, 393216
  %.not = icmp eq i32 %.mask, 262144
  br i1 %.not, label %.lr.ph, label %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge"

"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge": ; preds = %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit"
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !7618, !noalias !7619
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit"
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7620)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7621)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7623)
  %i.g = load i64, ptr %i.e, align 8, !alias.scope !7624, !noalias !7625, !noundef !25 ; 3 uses
  %i.h = load i64, ptr %0, align 8, !range !40, !alias.scope !7624, !noalias !7625, !noundef !25
  %i.i = icmp eq i64 %i.h, %i.g
  br i1 %i.i, label %bb.c, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19", !prof !33

._crit_edge:                                      ; preds = %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge", %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19"
  %i.j = phi i64 [ %.pre, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge" ], [ %i.ab, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19" ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = call noundef i64 @"_ZN38_$LT$u32$u20$as$u20$itoa..Unsigned$GT$3fmt17h0b36a92c699d3c58E"(i32 noundef %1, ptr noalias noundef nonnull align 1 dereferenceable(10) %i.a) ; 2 uses
  %i.l = sub nuw i64 10, %i.k                     ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7626)
  call void @llvm.experimental.noalias.scope.decl(metadata !7627)
  call void @llvm.experimental.noalias.scope.decl(metadata !7628)
  call void @llvm.experimental.noalias.scope.decl(metadata !7629)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load i64, ptr %0, align 8, !range !40, !alias.scope !7618, !noalias !7619, !noundef !25
  %i.o = sub i64 %i.n, %i.j
  %i.p = icmp ugt i64 %i.l, %i.o
  br i1 %i.p, label %bb.b, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit", !prof !33

bb.b:                                             ; preds = %._crit_edge
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h62a5261d22c07cceE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.j, i64 noundef range(i64 0, 11) %i.l, i64 noundef 1, i64 noundef 1), !noalias !7619
  %.pre.i.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !7630, !noalias !7619
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit": ; preds = %._crit_edge, %bb.b
  %i.q = phi i64 [ %i.j, %._crit_edge ], [ %.pre.i.i.i.i, %bb.b ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.k
  %i.s = icmp sgt i64 %i.q, -1
  call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !7630, !noalias !7619, !nonnull !25, !noundef !25
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull readonly align 1 %i.r, i64 range(i64 0, 11) %i.l, i1 false), !noalias !7630
  %i.w = add nuw i64 %i.q, %i.l
  store i64 %i.w, ptr %i.m, align 8, !alias.scope !7630, !noalias !7619
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %.lr.ph
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h62a5261d22c07cceE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.g, i64 noundef range(i64 0, 11) 1, i64 noundef 1, i64 noundef 1), !noalias !7625
  %.pre.i.i.i.i18 = load i64, ptr %i.e, align 8, !alias.scope !7631, !noalias !7625
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19": ; preds = %.lr.ph, %bb.c
  %i.x = phi i64 [ %i.g, %.lr.ph ], [ %.pre.i.i.i.i18, %bb.c ] ; 3 uses
  %i.y = icmp sgt i64 %i.x, -1
  tail call void @llvm.assume(i1 %i.y)
  %i.z = load ptr, ptr %i.f, align 8, !alias.scope !7631, !noalias !7625, !nonnull !25, !noundef !25
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 48, ptr %i.aa, align 1, !noalias !7631
  %i.ab = add nuw i64 %i.x, 1                     ; 2 uses
  store i64 %i.ab, ptr %i.e, align 8, !alias.scope !7631, !noalias !7625
  br label %._crit_edge
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4time10formatting22format_number_pad_zero17h2a49cd8bd962a702E(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 43) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = call noundef i64 @"_ZN38_$LT$u32$u20$as$u20$itoa..Unsigned$GT$3fmt17h0b36a92c699d3c58E"(i32 noundef %1, ptr noalias noundef nonnull align 1 dereferenceable(10) %i.a) ; 2 uses
  %i.c = sub nuw i64 10, %i.b                     ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7644)
  call void @llvm.experimental.noalias.scope.decl(metadata !7645)
  call void @llvm.experimental.noalias.scope.decl(metadata !7646)
  call void @llvm.experimental.noalias.scope.decl(metadata !7647)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !7648, !noalias !7649, !noundef !25 ; 3 uses
  %i.f = load i64, ptr %0, align 8, !range !40, !alias.scope !7648, !noalias !7649, !noundef !25
  %i.g = sub i64 %i.f, %i.e
  %i.h = icmp ugt i64 %i.c, %i.g
  br i1 %i.h, label %bb.b, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit", !prof !33

bb.b:                                             ; preds = %bb.a
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h62a5261d22c07cceE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.e, i64 noundef range(i64 0, 11) %i.c, i64 noundef 1, i64 noundef 1), !noalias !7649
  %.pre.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !7650, !noalias !7649
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit": ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %i.e, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.b
  %i.k = icmp sgt i64 %i.i, -1
  call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !7650, !noalias !7649, !nonnull !25, !noundef !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull readonly align 1 %i.j, i64 range(i64 0, 11) %i.c, i1 false), !noalias !7650
  %i.o = add nuw i64 %i.i, %i.c
  store i64 %i.o, ptr %i.d, align 8, !alias.scope !7650, !noalias !7649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4time10formatting22format_number_pad_zero17h31edd0f979f531b2E(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 42949673) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  %.not.i.not.i = icmp eq i32 %1, 0
  br i1 %.not.i.not.i, label %.lr.ph, label %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit"

"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit": ; preds = %bb.a
  %i.b = icmp samesign ugt i32 %1, 99999          ; 2 uses
  %i.c = udiv i32 %1, 100000
  %.sroa.03.0.i.i = select i1 %i.b, i32 %i.c, i32 %1 ; 4 uses
  %i.d = add nuw nsw i32 %.sroa.03.0.i.i, 393206
  %i.e = add nuw nsw i32 %.sroa.03.0.i.i, 524188
  %i.f = and i32 %i.d, %i.e
  %i.g = add nuw nsw i32 %.sroa.03.0.i.i, 916504
  %i.h = add nuw nsw i32 %.sroa.03.0.i.i, 514288
  %i.i = and i32 %i.g, %i.h
  %i.j = xor i32 %i.f, %i.i
  %i.k = lshr i32 %i.j, 17
  %2 = trunc nuw nsw i32 %i.k to i8
  %3 = select i1 %i.b, i8 6, i8 1
  %i.l = add nuw nsw i8 %3, %2                    ; 2 uses
  %i.m = tail call i8 @llvm.usub.sat.i8(i8 7, i8 %i.l)
  %.not = icmp ugt i8 %i.l, 6
  br i1 %.not, label %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge", label %.lr.ph

"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge": ; preds = %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit"
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre25 = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !7675, !noalias !7676
  %.pre26 = load i64, ptr %0, align 8, !range !40, !alias.scope !7675, !noalias !7676
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit"
  %.sroa.0.0.i33 = phi i8 [ %i.m, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit" ], [ 6, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext nneg i8 %.sroa.0.0.i33 to i64
  %.pre = load i64, ptr %i.n, align 8, !alias.scope !7677, !noalias !7678
  %.pre24 = load i64, ptr %0, align 8, !range !40, !alias.scope !7677, !noalias !7678
  br label %bb.c

._crit_edge:                                      ; preds = %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19", %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge"
  %i.p = phi i64 [ %.pre26, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge" ], [ %i.ag, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19" ]
  %i.q = phi i64 [ %.pre25, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge" ], [ %i.al, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19" ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.r = call noundef i64 @"_ZN38_$LT$u32$u20$as$u20$itoa..Unsigned$GT$3fmt17h0b36a92c699d3c58E"(i32 noundef %1, ptr noalias noundef nonnull align 1 dereferenceable(10) %i.a) ; 2 uses
  %i.s = sub nuw i64 10, %i.r                     ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7679)
  call void @llvm.experimental.noalias.scope.decl(metadata !7680)
  call void @llvm.experimental.noalias.scope.decl(metadata !7681)
  call void @llvm.experimental.noalias.scope.decl(metadata !7682)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = sub i64 %i.p, %i.q
  %i.v = icmp ugt i64 %i.s, %i.u
  br i1 %i.v, label %bb.b, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit", !prof !33

bb.b:                                             ; preds = %._crit_edge
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h62a5261d22c07cceE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.q, i64 noundef range(i64 0, 11) %i.s, i64 noundef 1, i64 noundef 1), !noalias !7676
  %.pre.i.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !7683, !noalias !7676
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit": ; preds = %._crit_edge, %bb.b
  %i.w = phi i64 [ %i.q, %._crit_edge ], [ %.pre.i.i.i.i, %bb.b ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.r
  %i.y = icmp sgt i64 %i.w, -1
  call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !7683, !noalias !7676, !nonnull !25, !noundef !25
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull readonly align 1 %i.x, i64 range(i64 0, 11) %i.s, i1 false), !noalias !7683
  %i.ac = add nuw i64 %i.w, %i.s
  store i64 %i.ac, ptr %i.t, align 8, !alias.scope !7683, !noalias !7676
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %.lr.ph, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19"
  %i.ad = phi i64 [ %.pre24, %.lr.ph ], [ %i.ag, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19" ] ; 3 uses
  %i.ae = phi i64 [ %.pre, %.lr.ph ], [ %i.al, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19" ] ; 2 uses
  %.sroa.01.021 = phi i64 [ 0, %.lr.ph ], [ %i.am, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7684)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7685)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7687)
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.d, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19", !prof !33

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h62a5261d22c07cceE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ad, i64 noundef range(i64 0, 11) 1, i64 noundef 1, i64 noundef 1), !noalias !7678
  %.pre.i.i.i.i18 = load i64, ptr %i.n, align 8, !alias.scope !7688, !noalias !7678
  %.pre23 = load i64, ptr %0, align 8, !range !40, !alias.scope !7677, !noalias !7678
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19": ; preds = %bb.c, %bb.d
  %i.ag = phi i64 [ %i.ad, %bb.c ], [ %.pre23, %bb.d ] ; 2 uses
  %i.ah = phi i64 [ %i.ae, %bb.c ], [ %.pre.i.i.i.i18, %bb.d ] ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, -1
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = load ptr, ptr %i.o, align 8, !alias.scope !7688, !noalias !7678, !nonnull !25, !noundef !25
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 48, ptr %i.ak, align 1, !noalias !7688
  %i.al = add nuw i64 %i.ah, 1                    ; 3 uses
  store i64 %i.al, ptr %i.n, align 8, !alias.scope !7688, !noalias !7678
  %i.am = add nuw nsw i64 %.sroa.01.021, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.am, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4time10formatting22format_number_pad_zero17h3762d022c0a83995E(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 4294968) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  %.not.i.not.i = icmp eq i32 %1, 0
  br i1 %.not.i.not.i, label %.lr.ph, label %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit"

"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit": ; preds = %bb.a
  %i.b = icmp samesign ugt i32 %1, 99999          ; 2 uses
  %i.c = udiv i32 %1, 100000
  %.sroa.03.0.i.i = select i1 %i.b, i32 %i.c, i32 %1 ; 4 uses
  %i.d = add nuw nsw i32 %.sroa.03.0.i.i, 393206
  %i.e = add nuw nsw i32 %.sroa.03.0.i.i, 524188
  %i.f = and i32 %i.d, %i.e
  %i.g = add nuw nsw i32 %.sroa.03.0.i.i, 916504
  %i.h = add nuw nsw i32 %.sroa.03.0.i.i, 514288
  %i.i = and i32 %i.g, %i.h
  %i.j = xor i32 %i.f, %i.i
  %i.k = lshr i32 %i.j, 17
  %2 = trunc nuw nsw i32 %i.k to i8
  %3 = select i1 %i.b, i8 6, i8 1
  %i.l = add nuw nsw i8 %3, %2                    ; 2 uses
  %i.m = tail call i8 @llvm.usub.sat.i8(i8 6, i8 %i.l)
  %.not = icmp ugt i8 %i.l, 5
  br i1 %.not, label %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge", label %.lr.ph

"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge": ; preds = %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit"
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre25 = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !7713, !noalias !7714
  %.pre26 = load i64, ptr %0, align 8, !range !40, !alias.scope !7713, !noalias !7714
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit"
  %.sroa.0.0.i33 = phi i8 [ %i.m, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit" ], [ 5, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext nneg i8 %.sroa.0.0.i33 to i64
  %.pre = load i64, ptr %i.n, align 8, !alias.scope !7715, !noalias !7716
  %.pre24 = load i64, ptr %0, align 8, !range !40, !alias.scope !7715, !noalias !7716
  br label %bb.c

._crit_edge:                                      ; preds = %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19", %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge"
  %i.p = phi i64 [ %.pre26, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge" ], [ %i.ag, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19" ]
  %i.q = phi i64 [ %.pre25, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge" ], [ %i.al, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19" ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.r = call noundef i64 @"_ZN38_$LT$u32$u20$as$u20$itoa..Unsigned$GT$3fmt17h0b36a92c699d3c58E"(i32 noundef %1, ptr noalias noundef nonnull align 1 dereferenceable(10) %i.a) ; 2 uses
  %i.s = sub nuw i64 10, %i.r                     ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7717)
  call void @llvm.experimental.noalias.scope.decl(metadata !7718)
  call void @llvm.experimental.noalias.scope.decl(metadata !7719)
  call void @llvm.experimental.noalias.scope.decl(metadata !7720)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = sub i64 %i.p, %i.q
  %i.v = icmp ugt i64 %i.s, %i.u
  br i1 %i.v, label %bb.b, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit", !prof !33

bb.b:                                             ; preds = %._crit_edge
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h62a5261d22c07cceE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.q, i64 noundef range(i64 0, 11) %i.s, i64 noundef 1, i64 noundef 1), !noalias !7714
  %.pre.i.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !7721, !noalias !7714
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit": ; preds = %._crit_edge, %bb.b
  %i.w = phi i64 [ %i.q, %._crit_edge ], [ %.pre.i.i.i.i, %bb.b ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.r
  %i.y = icmp sgt i64 %i.w, -1
  call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !7721, !noalias !7714, !nonnull !25, !noundef !25
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull readonly align 1 %i.x, i64 range(i64 0, 11) %i.s, i1 false), !noalias !7721
  %i.ac = add nuw i64 %i.w, %i.s
  store i64 %i.ac, ptr %i.t, align 8, !alias.scope !7721, !noalias !7714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %.lr.ph, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19"
  %i.ad = phi i64 [ %.pre24, %.lr.ph ], [ %i.ag, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19" ] ; 3 uses
  %i.ae = phi i64 [ %.pre, %.lr.ph ], [ %i.al, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19" ] ; 2 uses
  %.sroa.01.021 = phi i64 [ 0, %.lr.ph ], [ %i.am, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7722)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7723)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7724)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7725)
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.d, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19", !prof !33

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h62a5261d22c07cceE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ad, i64 noundef range(i64 0, 11) 1, i64 noundef 1, i64 noundef 1), !noalias !7716
  %.pre.i.i.i.i18 = load i64, ptr %i.n, align 8, !alias.scope !7726, !noalias !7716
  %.pre23 = load i64, ptr %0, align 8, !range !40, !alias.scope !7715, !noalias !7716
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19": ; preds = %bb.c, %bb.d
  %i.ag = phi i64 [ %i.ad, %bb.c ], [ %.pre23, %bb.d ] ; 2 uses
  %i.ah = phi i64 [ %i.ae, %bb.c ], [ %.pre.i.i.i.i18, %bb.d ] ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, -1
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = load ptr, ptr %i.o, align 8, !alias.scope !7726, !noalias !7716, !nonnull !25, !noundef !25
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 48, ptr %i.ak, align 1, !noalias !7726
  %i.al = add nuw i64 %i.ah, 1                    ; 3 uses
  store i64 %i.al, ptr %i.n, align 8, !alias.scope !7726, !noalias !7716
  %i.am = add nuw nsw i64 %.sroa.01.021, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.am, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4time10formatting22format_number_pad_zero17h46f78ed71df0173dE(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i8 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  %.not.i = icmp eq i8 %1, 0
  br i1 %.not.i, label %.lr.ph.thread, label %"_ZN57_$LT$u8$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hde3edaf46c6018eaE.exit"

.lr.ph.thread:                                    ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.lr.ph.split

"_ZN57_$LT$u8$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hde3edaf46c6018eaE.exit": ; preds = %bb.a
  %i.d = zext i8 %1 to i16                        ; 2 uses
  %i.e = add nuw nsw i16 %i.d, 758
  %i.f = add nuw nsw i16 %i.d, 412
  %i.g = and i16 %i.e, %i.f
  %.fr22 = freeze i16 %i.g
  %i.h = lshr i16 %.fr22, 8                       ; 2 uses
  %i.i = trunc nuw i16 %i.h to i8
  %i.j = add i8 %i.i, -1
  %.not = icmp ult i8 %i.j, -2
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  br i1 %.not, label %"_ZN57_$LT$u8$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hde3edaf46c6018eaE.exit._crit_edge", label %.lr.ph

"_ZN57_$LT$u8$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hde3edaf46c6018eaE.exit._crit_edge": ; preds = %"_ZN57_$LT$u8$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hde3edaf46c6018eaE.exit"
  %.pre26 = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !7751, !noalias !7752
  br label %bb.c

.lr.ph:                                           ; preds = %"_ZN57_$LT$u8$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hde3edaf46c6018eaE.exit"
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not23 = icmp eq i16 %i.h, 0
  br i1 %.not23, label %.lr.ph.split, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !7753, !noalias !7754
  %.pre25 = load i64, ptr %0, align 8, !range !40, !alias.scope !7753, !noalias !7754
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19.us"
  %i.l = phi i64 [ %.pre25, %.lr.ph.split.us.preheader ], [ %i.o, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19.us" ] ; 3 uses
  %i.m = phi i64 [ %.pre, %.lr.ph.split.us.preheader ], [ %i.t, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19.us" ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7755)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7756)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7757)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7758)
  %i.n = icmp eq i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19.us", !prof !33

bb.b:                                             ; preds = %.lr.ph.split.us
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h62a5261d22c07cceE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.l, i64 noundef range(i64 0, 11) 1, i64 noundef 1, i64 noundef 1), !noalias !7754
  %.pre.i.i.i.i18.us = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !7759, !noalias !7754
  %.pre24 = load i64, ptr %0, align 8, !range !40, !alias.scope !7753, !noalias !7754
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19.us"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19.us": ; preds = %bb.b, %.lr.ph.split.us
  %i.o = phi i64 [ %i.l, %.lr.ph.split.us ], [ %.pre24, %bb.b ]
  %i.p = phi i64 [ %i.m, %.lr.ph.split.us ], [ %.pre.i.i.i.i18.us, %bb.b ] ; 3 uses
  %i.q = icmp sgt i64 %i.p, -1
  tail call void @llvm.assume(i1 %i.q)
  %i.r = load ptr, ptr %i.k, align 8, !alias.scope !7759, !noalias !7754, !nonnull !25, !noundef !25
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 48, ptr %i.s, align 1, !noalias !7759
  %i.t = add nuw i64 %i.p, 1                      ; 2 uses
  store i64 %i.t, ptr %.phi.trans.insert, align 8, !alias.scope !7759, !noalias !7754
  br label %.lr.ph.split.us

bb.c:                                             ; preds = %"_ZN57_$LT$u8$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hde3edaf46c6018eaE.exit._crit_edge", %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19"
  %i.u = phi i64 [ %i.ar, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19" ], [ %.pre26, %"_ZN57_$LT$u8$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hde3edaf46c6018eaE.exit._crit_edge" ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = call noundef i64 @"_ZN37_$LT$u8$u20$as$u20$itoa..Unsigned$GT$3fmt17h5d4a1b4e596d5c2dE"(i8 noundef %1, ptr noalias noundef nonnull align 1 dereferenceable(3) %i.a) ; 2 uses
  %i.w = sub nuw i64 3, %i.v                      ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7760)
  call void @llvm.experimental.noalias.scope.decl(metadata !7761)
  call void @llvm.experimental.noalias.scope.decl(metadata !7762)
  call void @llvm.experimental.noalias.scope.decl(metadata !7763)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = load i64, ptr %0, align 8, !range !40, !alias.scope !7751, !noalias !7752, !noundef !25
  %i.z = sub i64 %i.y, %i.u
  %i.aa = icmp ugt i64 %i.w, %i.z
  br i1 %i.aa, label %bb.d, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit", !prof !33

bb.d:                                             ; preds = %bb.c
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h62a5261d22c07cceE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.u, i64 noundef range(i64 0, 11) %i.w, i64 noundef 1, i64 noundef 1), !noalias !7752
  %.pre.i.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !7764, !noalias !7752
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit": ; preds = %bb.c, %bb.d
  %i.ab = phi i64 [ %i.u, %bb.c ], [ %.pre.i.i.i.i, %bb.d ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.v
  %i.ad = icmp sgt i64 %i.ab, -1
  call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !7764, !noalias !7752, !nonnull !25, !noundef !25
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ab
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull readonly align 1 %i.ac, i64 range(i64 0, 11) %i.w, i1 false), !noalias !7764
  %i.ah = add nuw i64 %i.ab, %i.w
  store i64 %i.ah, ptr %i.x, align 8, !alias.scope !7764, !noalias !7752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph.thread, %.lr.ph
  %i.ai = phi ptr [ %i.c, %.lr.ph.thread ], [ %i.k, %.lr.ph ]
  %i.aj = phi ptr [ %i.b, %.lr.ph.thread ], [ %.phi.trans.insert, %.lr.ph ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7755)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7756)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7757)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7758)
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !7753, !noalias !7754, !noundef !25 ; 3 uses
  %i.al = load i64, ptr %0, align 8, !range !40, !alias.scope !7753, !noalias !7754, !noundef !25
  %i.am = icmp eq i64 %i.al, %i.ak
  br i1 %i.am, label %bb.e, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19", !prof !33

bb.e:                                             ; preds = %.lr.ph.split
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h62a5261d22c07cceE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ak, i64 noundef range(i64 0, 11) 1, i64 noundef 1, i64 noundef 1), !noalias !7754
  %.pre.i.i.i.i18 = load i64, ptr %i.aj, align 8, !alias.scope !7759, !noalias !7754
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19": ; preds = %.lr.ph.split, %bb.e
  %i.an = phi i64 [ %i.ak, %.lr.ph.split ], [ %.pre.i.i.i.i18, %bb.e ] ; 3 uses
  %i.ao = icmp sgt i64 %i.an, -1
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = load ptr, ptr %i.ai, align 8, !alias.scope !7759, !noalias !7754, !nonnull !25, !noundef !25
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  store i8 48, ptr %i.aq, align 1, !noalias !7759
  %i.ar = add nuw i64 %i.an, 1                    ; 2 uses
  store i64 %i.ar, ptr %i.aj, align 8, !alias.scope !7759, !noalias !7754
  br label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4time10formatting22format_number_pad_zero17h5bbbc3796201ea76E(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 429497) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  %.not.i.not.i = icmp eq i32 %1, 0
  br i1 %.not.i.not.i, label %.lr.ph, label %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit"

"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit": ; preds = %bb.a
  %i.b = icmp samesign ugt i32 %1, 99999          ; 2 uses
  %i.c = udiv i32 %1, 100000
  %.sroa.03.0.i.i = select i1 %i.b, i32 %i.c, i32 %1 ; 4 uses
  %i.d = add nuw nsw i32 %.sroa.03.0.i.i, 393206
  %i.e = add nuw nsw i32 %.sroa.03.0.i.i, 524188
  %i.f = and i32 %i.d, %i.e
  %i.g = add nuw nsw i32 %.sroa.03.0.i.i, 916504
  %i.h = add nuw nsw i32 %.sroa.03.0.i.i, 514288
  %i.i = and i32 %i.g, %i.h
  %i.j = xor i32 %i.f, %i.i
  %i.k = lshr i32 %i.j, 17
  %2 = trunc nuw nsw i32 %i.k to i8
  %3 = select i1 %i.b, i8 6, i8 1
  %i.l = add nuw nsw i8 %3, %2                    ; 2 uses
  %i.m = tail call i8 @llvm.usub.sat.i8(i8 5, i8 %i.l)
  %.not = icmp ugt i8 %i.l, 4
  br i1 %.not, label %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge", label %.lr.ph

"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge": ; preds = %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit"
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre25 = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !7789, !noalias !7790
  %.pre26 = load i64, ptr %0, align 8, !range !40, !alias.scope !7789, !noalias !7790
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit"
  %.sroa.0.0.i33 = phi i8 [ %i.m, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit" ], [ 4, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext nneg i8 %.sroa.0.0.i33 to i64
  %.pre = load i64, ptr %i.n, align 8, !alias.scope !7791, !noalias !7792
  %.pre24 = load i64, ptr %0, align 8, !range !40, !alias.scope !7791, !noalias !7792
  br label %bb.c

._crit_edge:                                      ; preds = %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19", %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge"
  %i.p = phi i64 [ %.pre26, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge" ], [ %i.ag, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19" ]
  %i.q = phi i64 [ %.pre25, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge" ], [ %i.al, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19" ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.r = call noundef i64 @"_ZN38_$LT$u32$u20$as$u20$itoa..Unsigned$GT$3fmt17h0b36a92c699d3c58E"(i32 noundef %1, ptr noalias noundef nonnull align 1 dereferenceable(10) %i.a) ; 2 uses
  %i.s = sub nuw i64 10, %i.r                     ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7793)
  call void @llvm.experimental.noalias.scope.decl(metadata !7794)
  call void @llvm.experimental.noalias.scope.decl(metadata !7795)
  call void @llvm.experimental.noalias.scope.decl(metadata !7796)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = sub i64 %i.p, %i.q
  %i.v = icmp ugt i64 %i.s, %i.u
  br i1 %i.v, label %bb.b, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit", !prof !33

bb.b:                                             ; preds = %._crit_edge
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h62a5261d22c07cceE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.q, i64 noundef range(i64 0, 11) %i.s, i64 noundef 1, i64 noundef 1), !noalias !7790
  %.pre.i.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !7797, !noalias !7790
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit": ; preds = %._crit_edge, %bb.b
  %i.w = phi i64 [ %i.q, %._crit_edge ], [ %.pre.i.i.i.i, %bb.b ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.r
  %i.y = icmp sgt i64 %i.w, -1
  call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !7797, !noalias !7790, !nonnull !25, !noundef !25
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull readonly align 1 %i.x, i64 range(i64 0, 11) %i.s, i1 false), !noalias !7797
  %i.ac = add nuw i64 %i.w, %i.s
  store i64 %i.ac, ptr %i.t, align 8, !alias.scope !7797, !noalias !7790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %.lr.ph, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19"
  %i.ad = phi i64 [ %.pre24, %.lr.ph ], [ %i.ag, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19" ] ; 3 uses
  %i.ae = phi i64 [ %.pre, %.lr.ph ], [ %i.al, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19" ] ; 2 uses
  %.sroa.01.021 = phi i64 [ 0, %.lr.ph ], [ %i.am, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7798)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7799)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7800)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7801)
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.d, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19", !prof !33

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h62a5261d22c07cceE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ad, i64 noundef range(i64 0, 11) 1, i64 noundef 1, i64 noundef 1), !noalias !7792
  %.pre.i.i.i.i18 = load i64, ptr %i.n, align 8, !alias.scope !7802, !noalias !7792
  %.pre23 = load i64, ptr %0, align 8, !range !40, !alias.scope !7791, !noalias !7792
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19": ; preds = %bb.c, %bb.d
  %i.ag = phi i64 [ %i.ad, %bb.c ], [ %.pre23, %bb.d ] ; 2 uses
  %i.ah = phi i64 [ %i.ae, %bb.c ], [ %.pre.i.i.i.i18, %bb.d ] ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, -1
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = load ptr, ptr %i.o, align 8, !alias.scope !7802, !noalias !7792, !nonnull !25, !noundef !25
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 48, ptr %i.ak, align 1, !noalias !7802
  %i.al = add nuw i64 %i.ah, 1                    ; 3 uses
  store i64 %i.al, ptr %i.n, align 8, !alias.scope !7802, !noalias !7792
  %i.am = add nuw nsw i64 %.sroa.01.021, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.am, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4time10formatting22format_number_pad_zero17h5f63c900edd22b22E(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 4295) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  %.not.i.not.i = icmp eq i32 %1, 0
  br i1 %.not.i.not.i, label %.lr.ph, label %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit"

"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit": ; preds = %bb.a
  %i.b = add nuw nsw i32 %1, 393206
  %i.c = add nuw nsw i32 %1, 524188
  %i.d = and i32 %i.b, %i.c
  %i.e = add nuw nsw i32 %1, 392216
  %i.f = xor i32 %i.d, %i.e                       ; 2 uses
  %i.g = lshr i32 %i.f, 17
  %i.h = trunc nuw nsw i32 %i.g to i8
  %i.i = add nuw nsw i8 %i.h, 1
  %i.j = tail call i8 @llvm.usub.sat.i8(i8 3, i8 %i.i)
  %.not = icmp samesign ugt i32 %i.f, 262143
  br i1 %.not, label %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge", label %.lr.ph

"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge": ; preds = %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit"
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre25 = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !7827, !noalias !7828
  %.pre26 = load i64, ptr %0, align 8, !range !40, !alias.scope !7827, !noalias !7828
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit"
  %.sroa.0.0.i33 = phi i8 [ %i.j, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit" ], [ 2, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext nneg i8 %.sroa.0.0.i33 to i64
  %.pre = load i64, ptr %i.k, align 8, !alias.scope !7829, !noalias !7830
  %.pre24 = load i64, ptr %0, align 8, !range !40, !alias.scope !7829, !noalias !7830
  br label %bb.c

._crit_edge:                                      ; preds = %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19", %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge"
  %i.m = phi i64 [ %.pre26, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge" ], [ %i.ad, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19" ]
  %i.n = phi i64 [ %.pre25, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge" ], [ %i.ai, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19" ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = call noundef i64 @"_ZN38_$LT$u32$u20$as$u20$itoa..Unsigned$GT$3fmt17h0b36a92c699d3c58E"(i32 noundef %1, ptr noalias noundef nonnull align 1 dereferenceable(10) %i.a) ; 2 uses
  %i.p = sub nuw i64 10, %i.o                     ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7831)
  call void @llvm.experimental.noalias.scope.decl(metadata !7832)
  call void @llvm.experimental.noalias.scope.decl(metadata !7833)
  call void @llvm.experimental.noalias.scope.decl(metadata !7834)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = sub i64 %i.m, %i.n
  %i.s = icmp ugt i64 %i.p, %i.r
  br i1 %i.s, label %bb.b, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit", !prof !33

bb.b:                                             ; preds = %._crit_edge
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h62a5261d22c07cceE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.n, i64 noundef range(i64 0, 11) %i.p, i64 noundef 1, i64 noundef 1), !noalias !7828
  %.pre.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !7835, !noalias !7828
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit": ; preds = %._crit_edge, %bb.b
  %i.t = phi i64 [ %i.n, %._crit_edge ], [ %.pre.i.i.i.i, %bb.b ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.o
  %i.v = icmp sgt i64 %i.t, -1
  call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !7835, !noalias !7828, !nonnull !25, !noundef !25
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull readonly align 1 %i.u, i64 range(i64 0, 11) %i.p, i1 false), !noalias !7835
  %i.z = add nuw i64 %i.t, %i.p
  store i64 %i.z, ptr %i.q, align 8, !alias.scope !7835, !noalias !7828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %.lr.ph, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19"
  %i.aa = phi i64 [ %.pre24, %.lr.ph ], [ %i.ad, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19" ] ; 3 uses
  %i.ab = phi i64 [ %.pre, %.lr.ph ], [ %i.ai, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19" ] ; 2 uses
  %.sroa.01.021 = phi i64 [ 0, %.lr.ph ], [ %i.aj, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7836)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7837)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7838)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7839)
  %i.ac = icmp eq i64 %i.aa, %i.ab
  br i1 %i.ac, label %bb.d, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19", !prof !33

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h62a5261d22c07cceE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.aa, i64 noundef range(i64 0, 11) 1, i64 noundef 1, i64 noundef 1), !noalias !7830
  %.pre.i.i.i.i18 = load i64, ptr %i.k, align 8, !alias.scope !7840, !noalias !7830
  %.pre23 = load i64, ptr %0, align 8, !range !40, !alias.scope !7829, !noalias !7830
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19": ; preds = %bb.c, %bb.d
  %i.ad = phi i64 [ %i.aa, %bb.c ], [ %.pre23, %bb.d ] ; 2 uses
  %i.ae = phi i64 [ %i.ab, %bb.c ], [ %.pre.i.i.i.i18, %bb.d ] ; 3 uses
  %i.af = icmp sgt i64 %i.ae, -1
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = load ptr, ptr %i.l, align 8, !alias.scope !7840, !noalias !7830, !nonnull !25, !noundef !25
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 48, ptr %i.ah, align 1, !noalias !7840
  %i.ai = add nuw i64 %i.ae, 1                    ; 3 uses
  store i64 %i.ai, ptr %i.k, align 8, !alias.scope !7840, !noalias !7830
  %i.aj = add nuw nsw i64 %.sroa.01.021, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.aj, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4time10formatting22format_number_pad_zero17h9d3c62e019983837E(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 429496730) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  %.not.i.not.i = icmp eq i32 %1, 0
  br i1 %.not.i.not.i, label %.lr.ph, label %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit"

"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit": ; preds = %bb.a
  %i.b = icmp samesign ugt i32 %1, 99999          ; 2 uses
  %i.c = udiv i32 %1, 100000
  %.sroa.03.0.i.i = select i1 %i.b, i32 %i.c, i32 %1 ; 4 uses
  %i.d = add nuw nsw i32 %.sroa.03.0.i.i, 393206
  %i.e = add nuw nsw i32 %.sroa.03.0.i.i, 524188
  %i.f = and i32 %i.d, %i.e
  %i.g = add nuw nsw i32 %.sroa.03.0.i.i, 916504
  %i.h = add nuw nsw i32 %.sroa.03.0.i.i, 514288
  %i.i = and i32 %i.g, %i.h
  %i.j = xor i32 %i.f, %i.i
  %i.k = lshr i32 %i.j, 17
  %2 = trunc nuw nsw i32 %i.k to i8
  %3 = select i1 %i.b, i8 6, i8 1
  %i.l = add nuw nsw i8 %3, %2                    ; 2 uses
  %i.m = tail call i8 @llvm.usub.sat.i8(i8 8, i8 %i.l)
  %.not = icmp ugt i8 %i.l, 7
  br i1 %.not, label %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge", label %.lr.ph

"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge": ; preds = %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit"
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre25 = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !7865, !noalias !7866
  %.pre26 = load i64, ptr %0, align 8, !range !40, !alias.scope !7865, !noalias !7866
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit"
  %.sroa.0.0.i33 = phi i8 [ %i.m, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit" ], [ 7, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext nneg i8 %.sroa.0.0.i33 to i64
  %.pre = load i64, ptr %i.n, align 8, !alias.scope !7867, !noalias !7868
  %.pre24 = load i64, ptr %0, align 8, !range !40, !alias.scope !7867, !noalias !7868
  br label %bb.c

._crit_edge:                                      ; preds = %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19", %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge"
  %i.p = phi i64 [ %.pre26, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge" ], [ %i.ag, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19" ]
  %i.q = phi i64 [ %.pre25, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge" ], [ %i.al, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19" ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.r = call noundef i64 @"_ZN38_$LT$u32$u20$as$u20$itoa..Unsigned$GT$3fmt17h0b36a92c699d3c58E"(i32 noundef %1, ptr noalias noundef nonnull align 1 dereferenceable(10) %i.a) ; 2 uses
  %i.s = sub nuw i64 10, %i.r                     ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7869)
  call void @llvm.experimental.noalias.scope.decl(metadata !7870)
  call void @llvm.experimental.noalias.scope.decl(metadata !7871)
  call void @llvm.experimental.noalias.scope.decl(metadata !7872)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = sub i64 %i.p, %i.q
  %i.v = icmp ugt i64 %i.s, %i.u
  br i1 %i.v, label %bb.b, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit", !prof !33

bb.b:                                             ; preds = %._crit_edge
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h62a5261d22c07cceE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.q, i64 noundef range(i64 0, 11) %i.s, i64 noundef 1, i64 noundef 1), !noalias !7866
  %.pre.i.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !7873, !noalias !7866
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit": ; preds = %._crit_edge, %bb.b
  %i.w = phi i64 [ %i.q, %._crit_edge ], [ %.pre.i.i.i.i, %bb.b ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.r
  %i.y = icmp sgt i64 %i.w, -1
  call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !7873, !noalias !7866, !nonnull !25, !noundef !25
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull readonly align 1 %i.x, i64 range(i64 0, 11) %i.s, i1 false), !noalias !7873
  %i.ac = add nuw i64 %i.w, %i.s
  store i64 %i.ac, ptr %i.t, align 8, !alias.scope !7873, !noalias !7866
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %.lr.ph, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19"
  %i.ad = phi i64 [ %.pre24, %.lr.ph ], [ %i.ag, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19" ] ; 3 uses
  %i.ae = phi i64 [ %.pre, %.lr.ph ], [ %i.al, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19" ] ; 2 uses
  %.sroa.01.021 = phi i64 [ 0, %.lr.ph ], [ %i.am, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7874)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7875)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7877)
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.d, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19", !prof !33

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h62a5261d22c07cceE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ad, i64 noundef range(i64 0, 11) 1, i64 noundef 1, i64 noundef 1), !noalias !7868
  %.pre.i.i.i.i18 = load i64, ptr %i.n, align 8, !alias.scope !7878, !noalias !7868
  %.pre23 = load i64, ptr %0, align 8, !range !40, !alias.scope !7867, !noalias !7868
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19": ; preds = %bb.c, %bb.d
  %i.ag = phi i64 [ %i.ad, %bb.c ], [ %.pre23, %bb.d ] ; 2 uses
  %i.ah = phi i64 [ %i.ae, %bb.c ], [ %.pre.i.i.i.i18, %bb.d ] ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, -1
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = load ptr, ptr %i.o, align 8, !alias.scope !7878, !noalias !7868, !nonnull !25, !noundef !25
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 48, ptr %i.ak, align 1, !noalias !7878
  %i.al = add nuw i64 %i.ah, 1                    ; 3 uses
  store i64 %i.al, ptr %i.n, align 8, !alias.scope !7878, !noalias !7868
  %i.am = add nuw nsw i64 %.sroa.01.021, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.am, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4time10formatting22format_number_pad_zero17hdb3306b3a5df436dE(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 -2097152, 2097152) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  %.not.i.not.i = icmp eq i32 %1, 0
  br i1 %.not.i.not.i, label %.lr.ph, label %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit"

"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit": ; preds = %bb.a
  %i.b = icmp ugt i32 %1, 99999                   ; 2 uses
  %i.c = udiv i32 %1, 100000
  %.sroa.03.0.i.i = select i1 %i.b, i32 %i.c, i32 %1 ; 4 uses
  %i.d = add nuw nsw i32 %.sroa.03.0.i.i, 393206
  %i.e = add nuw nsw i32 %.sroa.03.0.i.i, 524188
  %i.f = and i32 %i.d, %i.e
  %i.g = add nuw nsw i32 %.sroa.03.0.i.i, 916504
  %i.h = add nuw nsw i32 %.sroa.03.0.i.i, 514288
  %i.i = and i32 %i.g, %i.h
  %i.j = xor i32 %i.f, %i.i
  %i.k = lshr i32 %i.j, 17
  %2 = trunc nuw nsw i32 %i.k to i8
  %3 = select i1 %i.b, i8 6, i8 1
  %i.l = add nuw nsw i8 %3, %2                    ; 2 uses
  %i.m = tail call i8 @llvm.usub.sat.i8(i8 4, i8 %i.l)
  %.not = icmp ugt i8 %i.l, 3
  br i1 %.not, label %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge", label %.lr.ph

"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge": ; preds = %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit"
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre25 = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !7903, !noalias !7904
  %.pre26 = load i64, ptr %0, align 8, !range !40, !alias.scope !7903, !noalias !7904
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit"
  %.sroa.0.0.i33 = phi i8 [ %i.m, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit" ], [ 3, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext nneg i8 %.sroa.0.0.i33 to i64
  %.pre = load i64, ptr %i.n, align 8, !alias.scope !7905, !noalias !7906
  %.pre24 = load i64, ptr %0, align 8, !range !40, !alias.scope !7905, !noalias !7906
  br label %bb.c

._crit_edge:                                      ; preds = %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19", %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge"
  %i.p = phi i64 [ %.pre26, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge" ], [ %i.ag, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19" ]
  %i.q = phi i64 [ %.pre25, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge" ], [ %i.al, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19" ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.r = call noundef i64 @"_ZN38_$LT$u32$u20$as$u20$itoa..Unsigned$GT$3fmt17h0b36a92c699d3c58E"(i32 noundef %1, ptr noalias noundef nonnull align 1 dereferenceable(10) %i.a) ; 2 uses
  %i.s = sub nuw i64 10, %i.r                     ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7907)
  call void @llvm.experimental.noalias.scope.decl(metadata !7908)
  call void @llvm.experimental.noalias.scope.decl(metadata !7909)
  call void @llvm.experimental.noalias.scope.decl(metadata !7910)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = sub i64 %i.p, %i.q
  %i.v = icmp ugt i64 %i.s, %i.u
  br i1 %i.v, label %bb.b, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit", !prof !33

bb.b:                                             ; preds = %._crit_edge
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h62a5261d22c07cceE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.q, i64 noundef range(i64 0, 11) %i.s, i64 noundef 1, i64 noundef 1), !noalias !7904
  %.pre.i.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !7911, !noalias !7904
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit": ; preds = %._crit_edge, %bb.b
  %i.w = phi i64 [ %i.q, %._crit_edge ], [ %.pre.i.i.i.i, %bb.b ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.r
  %i.y = icmp sgt i64 %i.w, -1
  call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !7911, !noalias !7904, !nonnull !25, !noundef !25
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull readonly align 1 %i.x, i64 range(i64 0, 11) %i.s, i1 false), !noalias !7911
  %i.ac = add nuw i64 %i.w, %i.s
  store i64 %i.ac, ptr %i.t, align 8, !alias.scope !7911, !noalias !7904
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %.lr.ph, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19"
  %i.ad = phi i64 [ %.pre24, %.lr.ph ], [ %i.ag, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19" ] ; 3 uses
  %i.ae = phi i64 [ %.pre, %.lr.ph ], [ %i.al, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19" ] ; 2 uses
  %.sroa.01.021 = phi i64 [ 0, %.lr.ph ], [ %i.am, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7912)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7913)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7914)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7915)
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.d, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19", !prof !33

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h62a5261d22c07cceE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ad, i64 noundef range(i64 0, 11) 1, i64 noundef 1, i64 noundef 1), !noalias !7906
  %.pre.i.i.i.i18 = load i64, ptr %i.n, align 8, !alias.scope !7916, !noalias !7906
  %.pre23 = load i64, ptr %0, align 8, !range !40, !alias.scope !7905, !noalias !7906
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19": ; preds = %bb.c, %bb.d
  %i.ag = phi i64 [ %i.ad, %bb.c ], [ %.pre23, %bb.d ] ; 2 uses
  %i.ah = phi i64 [ %i.ae, %bb.c ], [ %.pre.i.i.i.i18, %bb.d ] ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, -1
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = load ptr, ptr %i.o, align 8, !alias.scope !7916, !noalias !7906, !nonnull !25, !noundef !25
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 48, ptr %i.ak, align 1, !noalias !7916
  %i.al = add nuw i64 %i.ah, 1                    ; 3 uses
  store i64 %i.al, ptr %i.n, align 8, !alias.scope !7916, !noalias !7906
  %i.am = add nuw nsw i64 %.sroa.01.021, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.am, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4time16offset_date_time14OffsetDateTime7now_utc17h9389a0b5e004fd02E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call { i64, i32 } @_ZN3std4time10SystemTime3now17h41032f879594e847E() ; 2 uses
  %i.d = extractvalue { i64, i32 } %i.c, 0
  %i.e = extractvalue { i64, i32 } %i.c, 1
  store i64 %i.d, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.e, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN3std4time10SystemTime14duration_since17h85cfc48171ee6db2E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 0, i32 noundef 0)
  %i.g = load i64, ptr %i.a, align 8, !range !38, !noundef !25
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noundef !25 ; 12 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i32, ptr %i.k, align 8, !range !7923, !noundef !25 ; 3 uses
  %i.m = urem i64 %i.j, 60                        ; 3 uses
  %i.n = udiv i64 %i.j, 60
  br i1 %i.h, label %bb.b, label %_ZN4time4time4Time17adjusting_add_std17hf0195822e7fec443E.exit.i.thread

bb.b:                                             ; preds = %bb.a
  %i.o = trunc nuw nsw i64 %i.m to i8             ; 2 uses
  %i.p = udiv i64 %i.j, 60
  %i.q = urem i64 %i.p, 60                        ; 2 uses
  %i.r = trunc nuw nsw i64 %i.q to i8             ; 2 uses
  %i.s = sub nsw i8 0, %i.r
  %i.t = udiv i64 %i.j, 3600
  %i.u = urem i64 %i.t, 24                        ; 2 uses
  %i.v = trunc nuw nsw i64 %i.u to i8
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %.thread.i.i, label %.thread.i.i.thread, !prof !29

.thread.i.i.thread:                               ; preds = %bb.b
  %i.w = sub nuw nsw i32 1000000000, %i.l
  %i.x = xor i8 %i.o, -1
  br label %.thread43.i.i.thread

.thread.i.i:                                      ; preds = %bb.b
  %i.y = sub nsw i8 0, %i.o
  %.not83 = icmp eq i64 %i.m, 0
  br i1 %.not83, label %.thread43.i.i, label %.thread43.i.i.thread, !prof !77

.thread43.i.i.thread:                             ; preds = %.thread.i.i, %.thread.i.i.thread
  %.sroa.04.040.i.i41 = phi i32 [ %i.w, %.thread.i.i.thread ], [ 0, %.thread.i.i ]
  %.sroa.09.041.i.i39 = phi i8 [ %i.x, %.thread.i.i.thread ], [ %i.y, %.thread.i.i ]
  %i.z = add nsw i8 %.sroa.09.041.i.i39, 60
  %i.aa = xor i8 %i.r, -1
  br label %_ZN4time4time4Time17adjusting_sub_std17hf29ef2d769c2f610E.exit.i.thread

.thread43.i.i:                                    ; preds = %.thread.i.i
  %.not84 = icmp eq i64 %i.q, 0
  br i1 %.not84, label %_ZN4time4time4Time17adjusting_sub_std17hf29ef2d769c2f610E.exit.i, label %_ZN4time4time4Time17adjusting_sub_std17hf29ef2d769c2f610E.exit.i.thread, !prof !77

_ZN4time4time4Time17adjusting_sub_std17hf29ef2d769c2f610E.exit.i.thread: ; preds = %.thread43.i.i, %.thread43.i.i.thread
  %.sroa.09.150.i.i49 = phi i8 [ %i.z, %.thread43.i.i.thread ], [ 0, %.thread43.i.i ]
  %.sroa.016.051.i.i47 = phi i8 [ %i.aa, %.thread43.i.i.thread ], [ %i.s, %.thread43.i.i ]
  %.sroa.04.040.i.i4046 = phi i32 [ %.sroa.04.040.i.i41, %.thread43.i.i.thread ], [ 0, %.thread43.i.i ]
  %i.ab = add nsw i8 %.sroa.016.051.i.i47, 60
  %i.ac = icmp ugt i64 %i.j, 185542587187199
  br i1 %i.ac, label %bb.k, label %bb.e

_ZN4time4time4Time17adjusting_sub_std17hf29ef2d769c2f610E.exit.i: ; preds = %.thread43.i.i
  %.not85 = icmp eq i64 %i.u, 0
  br i1 %.not85, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4time4time4Time17adjusting_sub_std17hf29ef2d769c2f610E.exit.i
  %or.cond = icmp ugt i64 %i.j, 377705203199
  br i1 %or.cond, label %bb.f, label %_ZN4time4date4Date15checked_sub_std17h167d6e489177bdf9E.exit.i, !prof !7924

_ZN4time4date4Date15checked_sub_std17h167d6e489177bdf9E.exit.i: ; preds = %bb.c
  %i.ad = udiv i64 %i.j, 86400
  %i.ae = trunc nuw nsw i64 %i.ad to i32
  %i.af = sub nuw nsw i32 869850581, %i.ae        ; 2 uses
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = mul nuw nsw i64 %i.ag, 3853261555       ; 2 uses
  %i.ai = lshr i64 %i.ah, 15
  %i.aj = lshr i64 %i.ah, 47
  %i.ak = trunc nuw nsw i64 %i.aj to i32          ; 3 uses
  %i.al = trunc i64 %i.ai to i32
  %i.am = icmp ugt i32 %i.al, 42920275
  %i.an = and i32 %i.ak, 3
  %i.ao = icmp eq i32 %i.an, 0
  %.sroa.0.0.i.i.i.i = or i1 %i.am, %i.ao         ; 2 uses
  %i.ap = lshr i32 %i.ak, 2
  %i.aq = add nuw nsw i32 %i.af, %i.ak
  %i.ar = sub nuw nsw i32 %i.aq, %i.ap
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = mul nuw nsw i64 %i.as, 3010298776       ; 2 uses
  %i.au = lshr i64 %i.at, 8
  %i.av = lshr i64 %i.at, 40
  %i.aw = trunc nuw nsw i64 %i.av to i32          ; 2 uses
  %i.ax = and i64 %i.au, 4294967295
  %i.ay = mul nuw nsw i64 %i.ax, 1461
  %i.az = lshr i64 %i.ay, 34
  %i.ba = trunc nuw nsw i64 %i.az to i32
  %i.bb = zext i1 %.sroa.0.0.i.i.i.i to i32
  %i.bc = add nuw nsw i32 %i.ba, %i.bb
  %i.bd = and i32 %i.aw, 3
  %i.be = icmp eq i32 %i.bd, 0
  %i.bf = and i1 %.sroa.0.0.i.i.i.i, %i.be
  %i.bg = shl nuw i32 %i.aw, 10
  %i.bh = add nsw i32 %i.bg, 1858256896
  %i.bi = select i1 %i.bf, i32 512, i32 0
  %i.bj = or disjoint i32 %i.bi, %i.bh
  %i.bk = or i32 %i.bj, %i.bc                     ; 2 uses
  %i.bl = icmp ne i32 %i.bk, 0
  call void @llvm.assume(i1 %i.bl)
  br label %"_ZN108_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$core..ops..arith..Sub$LT$core..time..Duration$GT$$GT$3sub17ha87334fc6f4304bdE.exit"

bb.d:                                             ; preds = %_ZN4time4time4Time17adjusting_sub_std17hf29ef2d769c2f610E.exit.i
  %i.bm = icmp ugt i64 %i.j, 185542587187199
  br i1 %i.bm, label %bb.k, label %bb.e

end_hunk_0
begin_hunk_1_@_ZN9actix_web10middleware15default_headers14DefaultHeaders16add_content_type17h530c7308da8f00b1E:bb.a

bb.h:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10429)
  %i.q = load ptr, ptr %i.c, align 8, !alias.scope !10430, !noalias !10425, !nonnull !25, !align !36, !noundef !25
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !noalias !10431, !nonnull !25, !noundef !25
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  invoke void %i.s(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull @621, i64 noundef 24)
          to label %bb.j unwind label %bb.i, !noalias !10425, !inline_history !4

bb.i:                                             ; preds = %bb.k, %bb.h, %bb.b
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !10425
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !10432)
  call void @llvm.experimental.noalias.scope.decl(metadata !10433)
  %i.v = load ptr, ptr %i.d, align 8, !alias.scope !10434, !noalias !10425, !noundef !25 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !noalias !10435, !nonnull !25, !noundef !25
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  invoke void %i.y(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull inttoptr (i64 29 to ptr), i64 noundef 0)
          to label %.critedge.i unwind label %bb.i, !noalias !10425, !inline_history !12

"_ZN4core3ptr75drop_in_place$LT$actix_web..middleware..default_headers..DefaultHeaders$GT$17h505ab4f0967fd52fE.exit.i": ; preds = %bb.b, %.critedge.i
  resume { ptr, i32 } %.pn.i

_ZN9actix_web10middleware15default_headers14DefaultHeaders3add17h8bdd058147991bb0E.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web10middleware6logger10FormatText14render_request17h6a46da09ebe6894cE(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(16) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [40 x i8], align 1                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 47 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [64 x i8], align 8                ; 11 uses
  %i.j = alloca [1 x i8], align 1                 ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 2 uses
  %i.o = alloca [48 x i8], align 8                ; 9 uses
  %i.p = alloca [1 x i8], align 1                 ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 6 uses
  %i.r = alloca [8 x i8], align 8                 ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = load i64, ptr %0, align 8, !range !72, !noundef !25
  switch i64 %i.t, label %bb.b [
    i64 2, label %bb.c
    i64 3, label %bb.g
    i64 8, label %bb.bb
    i64 9, label %bb.bc
    i64 10, label %bb.bf
    i64 11, label %bb.bg
    i64 14, label %bb.bh
  ]

bb.b:                                             ; preds = %bb.dl, %bb.df, %bb.cv, %bb.cn, %bb.ce, %bb.bv, %bb.bt, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !25, !noundef !25
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 160
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !25, !noundef !25 ; 11 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  %i.z = load i16, ptr %i.y, align 8, !noundef !25 ; 6 uses
  %i.aa = icmp eq i16 %i.z, -1
  br i1 %i.aa, label %_ZN4http3uri4path12PathAndQuery5query17h5670fdc2e869ee14E.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = add nuw i16 %i.z, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 104
  %i.ad = load ptr, ptr %i.ac, align 8, !noundef !25 ; 11 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 112
  %i.af = load i64, ptr %i.ae, align 8, !noundef !25 ; 15 uses
  %i.ag = zext i16 %i.ab to i64                   ; 9 uses
  %.not.i.i = icmp ugt i64 %i.af, %i.ag           ; 2 uses
  br i1 %.not.i.i, label %bb.e, label %.split.i.i

.split.i.i:                                       ; preds = %bb.d
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %_ZN4http3uri4path12PathAndQuery5query17h5670fdc2e869ee14E.exit, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ag
  %i.aj = load i8, ptr %i.ai, align 1, !alias.scope !10663, !noundef !25
  %i.ak = icmp sgt i8 %i.aj, -65
  br i1 %i.ak, label %_ZN4http3uri4path12PathAndQuery5query17h5670fdc2e869ee14E.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %.split.i.i
  tail call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ad, i64 noundef %i.af, i64 noundef %i.ag, i64 noundef %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @315) #52
  unreachable

_ZN4http3uri4path12PathAndQuery5query17h5670fdc2e869ee14E.exit: ; preds = %.split.i.i, %bb.e
  %i.al = icmp eq i64 %i.af, %i.ag
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 136 ; 2 uses
  br i1 %i.al, label %bb.bj, label %bb.bn

bb.g:                                             ; preds = %bb.a
  %.sroa.0209.0.copyload = load i32, ptr %1, align 4 ; 15 uses
  %.sroa.4210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.4210.0.copyload = load i8, ptr %.sroa.4210.0..sroa_idx, align 4 ; 2 uses
  %.sroa.5211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 5
  %.sroa.5211.0.copyload = load i8, ptr %.sroa.5211.0..sroa_idx, align 1 ; 2 uses
  %.sroa.6212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 6
  %.sroa.6212.0.copyload = load i8, ptr %.sroa.6212.0..sroa_idx, align 2 ; 2 uses
  %.sroa.7214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.7214.0.copyload = load i32, ptr %.sroa.7214.0..sroa_idx, align 4 ; 3 uses
  %.sroa.8215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.8215.0.copyload = load i24, ptr %.sroa.8215.0..sroa_idx, align 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10664
  store i64 0, ptr %i.e, align 8, !noalias !10664
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 14 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.an, align 8, !noalias !10664
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 32 uses
  store i64 0, ptr %i.ao, align 8, !noalias !10664
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10665)
  %.sroa.8215.2.extract.shift = lshr i24 %.sroa.8215.0.copyload, 16
  %.sroa.8215.2.extract.trunc = trunc nuw i24 %.sroa.8215.2.extract.shift to i8 ; 4 uses
  %i.ap = icmp sgt i8 %.sroa.8215.2.extract.trunc, -26
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp slt i8 %.sroa.8215.2.extract.trunc, 26
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = ashr i32 %.sroa.7214.0.copyload, 10     ; 2 uses
  %spec.select.i.i.i = icmp ult i32 %i.ar, 10000
  br i1 %spec.select.i.i.i, label %bb.h, label %bb.ax

bb.h:                                             ; preds = %bb.g
  %.sroa.0133.0.i.i = tail call i8 @llvm.abs.i8(i8 %.sroa.8215.2.extract.trunc, i1 true) ; 2 uses
  %i.as = icmp samesign ugt i8 %.sroa.0133.0.i.i, 23
  br i1 %i.as, label %bb.ax, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.8215.0.extract.trunc = trunc i24 %.sroa.8215.0.copyload to i8 ; 3 uses
  %i.at = icmp sgt i8 %.sroa.8215.0.extract.trunc, -60
  tail call void @llvm.assume(i1 %i.at)
  %i.au = icmp slt i8 %.sroa.8215.0.extract.trunc, 60
  tail call void @llvm.assume(i1 %i.au)
  %i.av = icmp eq i8 %.sroa.8215.0.extract.trunc, 0
  br i1 %i.av, label %bb.j, label %bb.ax

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_ZN4time10formatting22format_number_pad_zero17hdb3306b3a5df436dE(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i32 noundef %i.ar)
          to label %.noexc.i unwind label %.loopexit.split-lp.i

.noexc.i:                                         ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10666)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10667)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10668)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10669)
  %i.aw = load i64, ptr %i.ao, align 8, !alias.scope !10670, !noalias !10671, !noundef !25 ; 3 uses
  %i.ax = load i64, ptr %i.e, align 8, !range !40, !alias.scope !10670, !noalias !10671, !noundef !25
  %i.ay = icmp eq i64 %i.ax, %i.aw
  br i1 %i.ay, label %bb.k, label %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$5month17h171b6bbd4478e58eE.exit.i.i", !prof !33

bb.k:                                             ; preds = %.noexc.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h62a5261d22c07cceE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.aw, i64 noundef range(i64 0, 11) 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc23.i unwind label %.loopexit.split-lp.i, !noalias !10664

.noexc23.i:                                       ; preds = %bb.k
  %.pre.i.i.i.i.i.i = load i64, ptr %i.ao, align 8, !alias.scope !10672, !noalias !10671
  br label %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$5month17h171b6bbd4478e58eE.exit.i.i"

"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$5month17h171b6bbd4478e58eE.exit.i.i": ; preds = %.noexc23.i, %.noexc.i
  %i.az = phi i64 [ %i.aw, %.noexc.i ], [ %.pre.i.i.i.i.i.i, %.noexc23.i ] ; 3 uses
  %i.ba = icmp sgt i64 %i.az, -1
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = load ptr, ptr %i.an, align 8, !alias.scope !10672, !noalias !10671, !nonnull !25, !noundef !25
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.az
  store i8 45, ptr %i.bc, align 1, !noalias !10673
  %i.bd = add nuw i64 %i.az, 1
  store i64 %i.bd, ptr %i.ao, align 8, !alias.scope !10672, !noalias !10671
  %i.be = and i32 %.sroa.7214.0.copyload, 511     ; 2 uses
  %i.bf = lshr i32 %.sroa.7214.0.copyload, 9
  %.lobit.i.i.i.i.i.i = and i32 %i.bf, 1
  %i.bg = add nuw nsw i32 %.lobit.i.i.i.i.i.i, 59 ; 2 uses
  %.not.i.i.i.i.i.i = icmp samesign ugt i32 %i.be, %i.bg ; 2 uses
  %..i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i8 2, i8 0
  %.6.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i32 %i.bg, i32 0
  %i.bh = sub nsw i32 %i.be, %.6.i.i.i.i.i.i      ; 2 uses
  %i.bi = mul nsw i32 %i.bh, 268
  %i.bj = add nsw i32 %i.bi, 8028
  %i.bk = lshr i32 %i.bj, 13                      ; 2 uses
  %3 = trunc i32 %i.bk to i8
  %4 = add i8 %..i.i.i.i.i.i, %3                  ; 3 uses
  %i.bl = icmp ne i8 %4, 0
  tail call void @llvm.assume(i1 %i.bl)
  invoke fastcc void @_ZN4time10formatting22format_number_pad_zero17h46f78ed71df0173dE(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i8 noundef %4)
          to label %.noexc24.i unwind label %.loopexit.split-lp.i

.noexc24.i:                                       ; preds = %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$5month17h171b6bbd4478e58eE.exit.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10674)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10676)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10677)
  %i.bm = load i64, ptr %i.ao, align 8, !alias.scope !10678, !noalias !10679, !noundef !25 ; 3 uses
  %i.bn = load i64, ptr %i.e, align 8, !range !40, !alias.scope !10678, !noalias !10679, !noundef !25
  %i.bo = icmp eq i64 %i.bn, %i.bm
  br i1 %i.bo, label %bb.l, label %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$3day17hdb75ba523aa4715aE.exit.i.i", !prof !33

bb.l:                                             ; preds = %.noexc24.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h62a5261d22c07cceE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.bm, i64 noundef range(i64 0, 11) 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc25.i unwind label %.loopexit.split-lp.i, !noalias !10664

.noexc25.i:                                       ; preds = %bb.l
  %.pre.i.i.i.i230.i.i = load i64, ptr %i.ao, align 8, !alias.scope !10680, !noalias !10679
  br label %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$3day17hdb75ba523aa4715aE.exit.i.i"

"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$3day17hdb75ba523aa4715aE.exit.i.i": ; preds = %.noexc25.i, %.noexc24.i
  %i.bp = phi i64 [ %i.bm, %.noexc24.i ], [ %.pre.i.i.i.i230.i.i, %.noexc25.i ] ; 3 uses
  %i.bq = icmp sgt i64 %i.bp, -1
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = load ptr, ptr %i.an, align 8, !alias.scope !10680, !noalias !10679, !nonnull !25, !noundef !25
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bp
  store i8 45, ptr %i.bs, align 1, !noalias !10681
  %i.bt = add nuw i64 %i.bp, 1
  store i64 %i.bt, ptr %i.ao, align 8, !alias.scope !10680, !noalias !10679
  %i.bu = mul nuw nsw i32 %i.bk, 3917
  %i.bv = add nuw nsw i32 %i.bu, 28902
  %i.bw = lshr i32 %i.bv, 7
  %i.bx = sub nsw i32 %i.bh, %i.bw                ; 2 uses
  %i.by = and i32 %i.bx, 255
  %.sroa.54.0.extract.trunc.i.i.i = trunc i32 %i.bx to i8
  %i.bz = icmp ult i8 %4, 13
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = icmp ne i32 %i.by, 0
  tail call void @llvm.assume(i1 %i.ca)
  invoke fastcc void @_ZN4time10formatting22format_number_pad_zero17h46f78ed71df0173dE(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i8 noundef %.sroa.54.0.extract.trunc.i.i.i)
          to label %.noexc26.i unwind label %.loopexit.split-lp.i

.noexc26.i:                                       ; preds = %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$3day17hdb75ba523aa4715aE.exit.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10682)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10683)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10684)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10685)
  %i.cb = load i64, ptr %i.ao, align 8, !alias.scope !10686, !noalias !10687, !noundef !25 ; 3 uses
  %i.cc = load i64, ptr %i.e, align 8, !range !40, !alias.scope !10686, !noalias !10687, !noundef !25
  %i.cd = icmp eq i64 %i.cc, %i.cb
  br i1 %i.cd, label %bb.m, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit234.i.i", !prof !33

bb.m:                                             ; preds = %.noexc26.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h62a5261d22c07cceE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.cb, i64 noundef range(i64 0, 11) 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc27.i unwind label %.loopexit.split-lp.i, !noalias !10664

.noexc27.i:                                       ; preds = %bb.m
  %.pre.i.i.i.i233.i.i = load i64, ptr %i.ao, align 8, !alias.scope !10688, !noalias !10687
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit234.i.i"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit234.i.i": ; preds = %.noexc27.i, %.noexc26.i
  %i.ce = phi i64 [ %i.cb, %.noexc26.i ], [ %.pre.i.i.i.i233.i.i, %.noexc27.i ] ; 3 uses
  %i.cf = icmp sgt i64 %i.ce, -1
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = load ptr, ptr %i.an, align 8, !alias.scope !10688, !noalias !10687, !nonnull !25, !noundef !25
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ce
  store i8 84, ptr %i.ch, align 1, !noalias !10689
  %i.ci = add nuw i64 %i.ce, 1
  store i64 %i.ci, ptr %i.ao, align 8, !alias.scope !10688, !noalias !10687
  %i.cj = icmp ult i8 %.sroa.6212.0.copyload, 24
  tail call void @llvm.assume(i1 %i.cj)
  invoke fastcc void @_ZN4time10formatting22format_number_pad_zero17h46f78ed71df0173dE(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i8 noundef %.sroa.6212.0.copyload)
          to label %.noexc28.i unwind label %.loopexit.split-lp.i

.noexc28.i:                                       ; preds = %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit234.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10690)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10691)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10692)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10693)
  %i.ck = load i64, ptr %i.ao, align 8, !alias.scope !10694, !noalias !10695, !noundef !25 ; 3 uses
  %i.cl = load i64, ptr %i.e, align 8, !range !40, !alias.scope !10694, !noalias !10695, !noundef !25
  %i.cm = icmp eq i64 %i.cl, %i.ck
  br i1 %i.cm, label %bb.n, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit236.i.i", !prof !33

bb.n:                                             ; preds = %.noexc28.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h62a5261d22c07cceE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.ck, i64 noundef range(i64 0, 11) 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc29.i unwind label %.loopexit.split-lp.i, !noalias !10664

.noexc29.i:                                       ; preds = %bb.n
  %.pre.i.i.i.i235.i.i = load i64, ptr %i.ao, align 8, !alias.scope !10696, !noalias !10695
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit236.i.i"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit236.i.i": ; preds = %.noexc29.i, %.noexc28.i
  %i.cn = phi i64 [ %i.ck, %.noexc28.i ], [ %.pre.i.i.i.i235.i.i, %.noexc29.i ] ; 3 uses
  %i.co = icmp sgt i64 %i.cn, -1
  tail call void @llvm.assume(i1 %i.co)
  %i.cp = load ptr, ptr %i.an, align 8, !alias.scope !10696, !noalias !10695, !nonnull !25, !noundef !25
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cn
  store i8 58, ptr %i.cq, align 1, !noalias !10697
  %i.cr = add nuw i64 %i.cn, 1
  store i64 %i.cr, ptr %i.ao, align 8, !alias.scope !10696, !noalias !10695
  %i.cs = icmp ult i8 %.sroa.5211.0.copyload, 60
  tail call void @llvm.assume(i1 %i.cs)
  invoke fastcc void @_ZN4time10formatting22format_number_pad_zero17h46f78ed71df0173dE(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i8 noundef %.sroa.5211.0.copyload)
          to label %.noexc30.i unwind label %.loopexit.split-lp.i

.noexc30.i:                                       ; preds = %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit236.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10698)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10699)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10700)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10701)
  %i.ct = load i64, ptr %i.ao, align 8, !alias.scope !10702, !noalias !10703, !noundef !25 ; 3 uses
  %i.cu = load i64, ptr %i.e, align 8, !range !40, !alias.scope !10702, !noalias !10703, !noundef !25
  %i.cv = icmp eq i64 %i.cu, %i.ct
  br i1 %i.cv, label %bb.o, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit238.i.i", !prof !33

bb.o:                                             ; preds = %.noexc30.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h62a5261d22c07cceE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.ct, i64 noundef range(i64 0, 11) 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc31.i unwind label %.loopexit.split-lp.i, !noalias !10664

.noexc31.i:                                       ; preds = %bb.o
  %.pre.i.i.i.i237.i.i = load i64, ptr %i.ao, align 8, !alias.scope !10704, !noalias !10703
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit238.i.i"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit238.i.i": ; preds = %.noexc31.i, %.noexc30.i
  %i.cw = phi i64 [ %i.ct, %.noexc30.i ], [ %.pre.i.i.i.i237.i.i, %.noexc31.i ] ; 3 uses
  %i.cx = icmp sgt i64 %i.cw, -1
  tail call void @llvm.assume(i1 %i.cx)
  %i.cy = load ptr, ptr %i.an, align 8, !alias.scope !10704, !noalias !10703, !nonnull !25, !noundef !25
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cw
  store i8 58, ptr %i.cz, align 1, !noalias !10705
  %i.da = add nuw i64 %i.cw, 1
  store i64 %i.da, ptr %i.ao, align 8, !alias.scope !10704, !noalias !10703
  %i.db = icmp ult i8 %.sroa.4210.0.copyload, 60
  tail call void @llvm.assume(i1 %i.db)
  invoke fastcc void @_ZN4time10formatting22format_number_pad_zero17h46f78ed71df0173dE(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i8 noundef %.sroa.4210.0.copyload)
          to label %.noexc32.i unwind label %.loopexit.split-lp.i

.noexc32.i:                                       ; preds = %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit238.i.i"
  %i.dc = icmp ult i32 %.sroa.0209.0.copyload, 1000000000
  tail call void @llvm.assume(i1 %i.dc)
  %i.dd = icmp eq i32 %.sroa.0209.0.copyload, 0
  br i1 %i.dd, label %.noexc37.i, label %bb.p

.noexc37.i:                                       ; preds = %bb.af, %bb.x, %bb.ah, %bb.ad, %bb.ab, %bb.z, %bb.ai, %bb.aj, %_ZN4time10formatting22format_number_pad_zero17h604783db575b5de3E.exit.i.i, %.noexc32.i
  %.sroa.01.1.extract.shift.i.i.i.i = lshr exact i24 %.sroa.8215.0.copyload, 8
  %.sroa.01.1.extract.trunc.i.i.i.i = trunc i24 %.sroa.01.1.extract.shift.i.i.i.i to i8 ; 4 uses
  %i.de = icmp sgt i8 %.sroa.01.1.extract.trunc.i.i.i.i, -60
  call void @llvm.assume(i1 %i.de)
  %i.df = icmp slt i8 %.sroa.01.1.extract.trunc.i.i.i.i, 60
  call void @llvm.assume(i1 %i.df)
  %i.dg = icmp eq i24 %.sroa.8215.0.copyload, 0
  br i1 %i.dg, label %bb.al, label %bb.ak

bb.p:                                             ; preds = %.noexc32.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10706)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10707)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10708)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10709)
  %i.dh = load i64, ptr %i.ao, align 8, !alias.scope !10710, !noalias !10711, !noundef !25 ; 3 uses
  %i.di = load i64, ptr %i.e, align 8, !range !40, !alias.scope !10710, !noalias !10711, !noundef !25
  %i.dj = icmp eq i64 %i.di, %i.dh
  br i1 %i.dj, label %bb.q, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit240.i.i", !prof !33

bb.q:                                             ; preds = %bb.p
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h62a5261d22c07cceE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.dh, i64 noundef range(i64 0, 11) 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc33.i unwind label %.loopexit.split-lp.i, !noalias !10664

.noexc33.i:                                       ; preds = %bb.q
  %.pre.i.i.i.i239.i.i = load i64, ptr %i.ao, align 8, !alias.scope !10712, !noalias !10711
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit240.i.i"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit240.i.i": ; preds = %.noexc33.i, %bb.p
  %i.dk = phi i64 [ %i.dh, %bb.p ], [ %.pre.i.i.i.i239.i.i, %.noexc33.i ] ; 3 uses
  %i.dl = icmp sgt i64 %i.dk, -1
  tail call void @llvm.assume(i1 %i.dl)
  %i.dm = load ptr, ptr %i.an, align 8, !alias.scope !10712, !noalias !10711, !nonnull !25, !noundef !25 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dk
  store i8 46, ptr %i.dn, align 1, !noalias !10713
  %i.do = add nuw i64 %i.dk, 1                    ; 3 uses
  store i64 %i.do, ptr %i.ao, align 8, !alias.scope !10712, !noalias !10711
  %i.dp = urem i32 %.sroa.0209.0.copyload, 10
  %i.dq = udiv i32 %.sroa.0209.0.copyload, 10     ; 2 uses
  %i.dr = icmp eq i32 %i.dp, 0
  br i1 %i.dr, label %bb.r, label %bb.s

bb.r:                                             ; preds = %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit240.i.i"
  %i.ds = urem i32 %i.dq, 10
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.w, label %bb.x

bb.s:                                             ; preds = %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit240.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10714)
  %i.du = icmp samesign ugt i32 %.sroa.0209.0.copyload, 99999 ; 2 uses
  %i.dv = udiv i32 %.sroa.0209.0.copyload, 100000
  %.sroa.03.0.i.i.i.i.i = select i1 %i.du, i32 %i.dv, i32 %.sroa.0209.0.copyload ; 4 uses
  %i.dw = add nuw nsw i32 %.sroa.03.0.i.i.i.i.i, 393206
  %i.dx = add nuw nsw i32 %.sroa.03.0.i.i.i.i.i, 524188
  %i.dy = and i32 %i.dw, %i.dx
  %i.dz = add nuw nsw i32 %.sroa.03.0.i.i.i.i.i, 916504
  %i.ea = add nuw nsw i32 %.sroa.03.0.i.i.i.i.i, 514288
  %i.eb = and i32 %i.dz, %i.ea
  %i.ec = xor i32 %i.dy, %i.eb
  %i.ed = lshr i32 %i.ec, 17
  %5 = trunc nuw nsw i32 %i.ed to i8
  %6 = select i1 %i.du, i8 6, i8 1
  %7 = add nuw nsw i8 %6, %5                      ; 2 uses
  %.not.i241.i.i = icmp samesign ugt i8 %7, 8
  br i1 %.not.i241.i.i, label %.._crit_edge_crit_edge.i.i.i, label %.lr.ph.i.i.i

.._crit_edge_crit_edge.i.i.i:                     ; preds = %bb.s
  %.pre26.i.i.i = load i64, ptr %i.e, align 8, !range !40, !alias.scope !10715, !noalias !10716
  br label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.s
  %8 = sub nuw nsw i8 9, %7
  %wide.trip.count.i.i.i = zext nneg i8 %8 to i64
  %.pre24.i.i.i = load i64, ptr %i.e, align 8, !range !40, !alias.scope !10717, !noalias !10718
  br label %bb.u

._crit_edge.i.i.i:                                ; preds = %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19.i.i.i", %.._crit_edge_crit_edge.i.i.i
  %i.ee = phi ptr [ %i.dm, %.._crit_edge_crit_edge.i.i.i ], [ %i.ep, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19.i.i.i" ]
  %i.ef = phi i64 [ %.pre26.i.i.i, %.._crit_edge_crit_edge.i.i.i ], [ %i.eq, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19.i.i.i" ]
  %i.eg = phi i64 [ %i.do, %.._crit_edge_crit_edge.i.i.i ], [ %i.eu, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19.i.i.i" ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10719
  %i.eh = invoke noundef i64 @"_ZN38_$LT$u32$u20$as$u20$itoa..Unsigned$GT$3fmt17h0b36a92c699d3c58E"(i32 noundef range(i32 1, 0) %.sroa.0209.0.copyload, ptr noalias noundef nonnull align 1 dereferenceable(10) %i.c)
          to label %.noexc34.i unwind label %.loopexit.split-lp.i, !noalias !10664 ; 2 uses

.noexc34.i:                                       ; preds = %._crit_edge.i.i.i
  %i.ei = sub nuw i64 10, %i.eh                   ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10720)
  call void @llvm.experimental.noalias.scope.decl(metadata !10721)
  call void @llvm.experimental.noalias.scope.decl(metadata !10722)
  call void @llvm.experimental.noalias.scope.decl(metadata !10723)
  %i.ej = sub i64 %i.ef, %i.eg
  %i.ek = icmp ugt i64 %i.ei, %i.ej
  br i1 %i.ek, label %bb.t, label %_ZN4time10formatting22format_number_pad_zero17h604783db575b5de3E.exit.i.i, !prof !33

bb.t:                                             ; preds = %.noexc34.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h62a5261d22c07cceE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.eg, i64 noundef range(i64 0, 11) %i.ei, i64 noundef 1, i64 noundef 1)
          to label %.noexc35.i unwind label %.loopexit.split-lp.i, !noalias !10664

.noexc35.i:                                       ; preds = %bb.t
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.ao, align 8, !alias.scope !10724, !noalias !10716
  %.pre7.i.i = load ptr, ptr %i.an, align 8, !alias.scope !10724, !noalias !10716
  br label %_ZN4time10formatting22format_number_pad_zero17h604783db575b5de3E.exit.i.i

bb.u:                                             ; preds = %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19.i.i.i", %.lr.ph.i.i.i
  %i.el = phi ptr [ %i.dm, %.lr.ph.i.i.i ], [ %i.ep, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19.i.i.i" ]
  %i.em = phi i64 [ %.pre24.i.i.i, %.lr.ph.i.i.i ], [ %i.eq, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19.i.i.i" ] ; 3 uses
  %i.en = phi i64 [ %i.do, %.lr.ph.i.i.i ], [ %i.eu, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19.i.i.i" ] ; 2 uses
  %.sroa.01.021.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.ev, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19.i.i.i" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10725)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10726)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10727)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10728)
  %i.eo = icmp eq i64 %i.em, %i.en
  br i1 %i.eo, label %bb.v, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19.i.i.i", !prof !33

bb.v:                                             ; preds = %bb.u
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h62a5261d22c07cceE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.em, i64 noundef range(i64 0, 11) 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc36.i unwind label %.loopexit.i, !noalias !10664

.noexc36.i:                                       ; preds = %bb.v
  %.pre.i.i.i.i18.i.i.i = load i64, ptr %i.ao, align 8, !alias.scope !10729, !noalias !10718
  %.pre23.i.i.i = load i64, ptr %i.e, align 8, !range !40, !alias.scope !10717, !noalias !10718
  %.pre.i.i = load ptr, ptr %i.an, align 8, !alias.scope !10729, !noalias !10718
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19.i.i.i"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit19.i.i.i": ; preds = %.noexc36.i, %bb.u
  %i.ep = phi ptr [ %i.el, %bb.u ], [ %.pre.i.i, %.noexc36.i ] ; 3 uses
  %i.eq = phi i64 [ %i.em, %bb.u ], [ %.pre23.i.i.i, %.noexc36.i ] ; 2 uses
  %i.er = phi i64 [ %i.en, %bb.u ], [ %.pre.i.i.i.i18.i.i.i, %.noexc36.i ] ; 3 uses
  %i.es = icmp sgt i64 %i.er, -1
  tail call void @llvm.assume(i1 %i.es)
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.er
  store i8 48, ptr %i.et, align 1, !noalias !10730
  %i.eu = add nuw i64 %i.er, 1                    ; 3 uses
  store i64 %i.eu, ptr %i.ao, align 8, !alias.scope !10729, !noalias !10718
  %i.ev = add nuw nsw i64 %.sroa.01.021.i.i.i, 1  ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ev, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %bb.u

_ZN4time10formatting22format_number_pad_zero17h604783db575b5de3E.exit.i.i: ; preds = %.noexc35.i, %.noexc34.i
  %i.ew = phi ptr [ %i.ee, %.noexc34.i ], [ %.pre7.i.i, %.noexc35.i ]
  %i.ex = phi i64 [ %i.eg, %.noexc34.i ], [ %.pre.i.i.i.i.i.i.i, %.noexc35.i ] ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.eh
  %i.ez = icmp sgt i64 %i.ex, -1
  call void @llvm.assume(i1 %i.ez)
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ex
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fa, ptr nonnull readonly align 1 %i.ey, i64 range(i64 0, 11) %i.ei, i1 false), !noalias !10731
  %i.fb = add nuw i64 %i.ex, %i.ei
  store i64 %i.fb, ptr %i.ao, align 8, !alias.scope !10724, !noalias !10716
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10719
  br label %.noexc37.i

bb.w:                                             ; preds = %bb.r
  %i.fc = udiv i32 %.sroa.0209.0.copyload, 100    ; 2 uses
  %i.fd = urem i32 %i.fc, 10
  %i.fe = icmp eq i32 %i.fd, 0
  br i1 %i.fe, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.r
  invoke fastcc void @_ZN4time10formatting22format_number_pad_zero17h9d3c62e019983837E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i32 noundef %i.dq)
          to label %.noexc37.i unwind label %.loopexit.split-lp.i

bb.y:                                             ; preds = %bb.w
  %i.ff = udiv i32 %.sroa.0209.0.copyload, 1000   ; 2 uses
  %i.fg = urem i32 %i.ff, 10
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %bb.aa, label %bb.ab

bb.z:                                             ; preds = %bb.w
  invoke fastcc void @_ZN4time10formatting22format_number_pad_zero17h31edd0f979f531b2E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i32 noundef %i.fc)
          to label %.noexc37.i unwind label %.loopexit.split-lp.i

bb.aa:                                            ; preds = %bb.y
  %i.fi = udiv i32 %.sroa.0209.0.copyload, 10000  ; 2 uses
  %i.fj = urem i32 %i.fi, 10
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %bb.ac, label %bb.ad

bb.ab:                                            ; preds = %bb.y
  invoke fastcc void @_ZN4time10formatting22format_number_pad_zero17h3762d022c0a83995E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i32 noundef %i.ff)
          to label %.noexc37.i unwind label %.loopexit.split-lp.i

bb.ac:                                            ; preds = %bb.aa
  %i.fl = udiv i32 %.sroa.0209.0.copyload, 100000 ; 2 uses
  %.lhs.trunc.i.i = trunc nuw nsw i32 %i.fl to i16
  %i.fm = urem i16 %.lhs.trunc.i.i, 10
  %i.fn = icmp eq i16 %i.fm, 0
  br i1 %i.fn, label %bb.ae, label %bb.af

bb.ad:                                            ; preds = %bb.aa
  invoke fastcc void @_ZN4time10formatting22format_number_pad_zero17h5bbbc3796201ea76E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i32 noundef %i.fi)
          to label %.noexc37.i unwind label %.loopexit.split-lp.i

bb.ae:                                            ; preds = %bb.ac
  %i.fo = udiv i32 %.sroa.0209.0.copyload, 1000000 ; 2 uses
  %.lhs.trunc1.i.i = trunc nuw nsw i32 %i.fo to i16
  %i.fp = urem i16 %.lhs.trunc1.i.i, 10
  %i.fq = icmp eq i16 %i.fp, 0
  br i1 %i.fq, label %bb.ag, label %bb.ah

bb.af:                                            ; preds = %bb.ac
  invoke fastcc void @_ZN4time10formatting22format_number_pad_zero17hdb3306b3a5df436dE(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i32 noundef %i.fl)
          to label %.noexc37.i unwind label %.loopexit.split-lp.i

bb.ag:                                            ; preds = %bb.ae
  %i.fr = udiv i32 %.sroa.0209.0.copyload, 10000000 ; 2 uses
  %.lhs.trunc3.i.i = trunc nuw nsw i32 %i.fr to i8
  %i.fs = urem i8 %.lhs.trunc3.i.i, 10
  %i.ft = icmp eq i8 %i.fs, 0
  br i1 %i.ft, label %bb.ai, label %bb.aj

bb.ah:                                            ; preds = %bb.ae
  invoke fastcc void @_ZN4time10formatting22format_number_pad_zero17h5f63c900edd22b22E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i32 noundef %i.fo)
          to label %.noexc37.i unwind label %.loopexit.split-lp.i

bb.ai:                                            ; preds = %bb.ag
  %i.fu = udiv i32 %.sroa.0209.0.copyload, 100000000
  invoke fastcc void @_ZN4time10formatting22format_number_pad_zero17h2a49cd8bd962a702E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i32 noundef %i.fu)
          to label %.noexc37.i unwind label %.loopexit.split-lp.i

bb.aj:                                            ; preds = %bb.ag
  invoke fastcc void @_ZN4time10formatting22format_number_pad_zero17h085c302a469a943dE(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i32 noundef %i.fr)
          to label %.noexc37.i unwind label %.loopexit.split-lp.i

bb.ak:                                            ; preds = %.noexc37.i
  %i.fv = or i8 %.sroa.01.1.extract.trunc.i.i.i.i, %.sroa.8215.2.extract.trunc
  %i.fw = icmp slt i8 %i.fv, 0
  %i.fx = load i64, ptr %i.ao, align 8, !alias.scope !10665, !noalias !10732, !noundef !25 ; 3 uses
  %i.fy = load i64, ptr %i.e, align 8, !range !40, !alias.scope !10665, !noalias !10732, !noundef !25
  %i.fz = icmp eq i64 %i.fy, %i.fx
  %..i = select i1 %i.fw, i8 45, i8 43
  br i1 %i.fz, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit250.sink.split.i.i", label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit250.i.i", !prof !33

bb.al:                                            ; preds = %.noexc37.i
  call void @llvm.experimental.noalias.scope.decl(metadata !10733)
  call void @llvm.experimental.noalias.scope.decl(metadata !10734)
  call void @llvm.experimental.noalias.scope.decl(metadata !10735)
  call void @llvm.experimental.noalias.scope.decl(metadata !10736)
  %i.ga = load i64, ptr %i.ao, align 8, !alias.scope !10737, !noalias !10738, !noundef !25 ; 3 uses
  %i.gb = load i64, ptr %i.e, align 8, !range !40, !alias.scope !10737, !noalias !10738, !noundef !25
  %i.gc = icmp eq i64 %i.gb, %i.ga
  br i1 %i.gc, label %bb.am, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit248.i.i", !prof !33

bb.am:                                            ; preds = %bb.al
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h62a5261d22c07cceE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.ga, i64 noundef range(i64 0, 11) 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc45.i unwind label %.loopexit.split-lp.i, !noalias !10664

.noexc45.i:                                       ; preds = %bb.am
  %.pre.i.i.i.i247.i.i = load i64, ptr %i.ao, align 8, !alias.scope !10739, !noalias !10738
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit248.i.i"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit248.i.i": ; preds = %.noexc45.i, %bb.al
  %i.gd = phi i64 [ %i.ga, %bb.al ], [ %.pre.i.i.i.i247.i.i, %.noexc45.i ] ; 3 uses
  %i.ge = icmp sgt i64 %i.gd, -1
  call void @llvm.assume(i1 %i.ge)
  %i.gf = load ptr, ptr %i.an, align 8, !alias.scope !10739, !noalias !10738, !nonnull !25, !noundef !25 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gd
  store i8 90, ptr %i.gg, align 1, !noalias !10740
  %i.gh = add nuw i64 %i.gd, 1
  br label %"_ZN4time10formatting11formattable130_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..well_known..rfc3339..Rfc3339$GT$11format_into17he6e3ef3aefd0228aE.exit.i"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit250.sink.split.i.i": ; preds = %bb.ak
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h62a5261d22c07cceE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.fx, i64 noundef range(i64 0, 11) 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc46.i unwind label %.loopexit.split-lp.i, !noalias !10664

.noexc46.i:                                       ; preds = %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit250.sink.split.i.i"
  %.pre.i.i.i.i251.i.i = load i64, ptr %i.ao, align 8, !alias.scope !10665, !noalias !10732
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit250.i.i"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17hbd30178b95a224a8E.exit250.i.i": ; preds = %.noexc46.i, %bb.ak
  %.sink42.i.i = phi i64 [ %.pre.i.i.i.i251.i.i, %.noexc46.i ], [ %i.fx, %bb.ak ] ; 3 uses
  %i.gi = icmp sgt i64 %.sink42.i.i, -1
  call void @llvm.assume(i1 %i.gi)
end_hunk_1
