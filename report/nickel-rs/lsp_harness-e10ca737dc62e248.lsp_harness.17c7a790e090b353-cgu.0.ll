Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/lsp_harness-e10ca737dc62e248.lsp_harness.17c7a790e090b353-cgu.0?download=true
inline.NumInlined: 14236
inline.NumDeleted: 7074
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 46
begin_hunk_0_@"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$11read_to_end17h1e06894257804c6eE":bb.a
  %spec.select = add i64 %i.al, %i.aj
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h110878a6a4e6d134E.exit.thread"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h110878a6a4e6d134E.exit.thread": ; preds = %bb.e, %bb.b, %bb.c, %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h09fae4d5b2cc5577E.exit"
  %.sroa.4.0 = phi i64 [ %spec.select, %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h09fae4d5b2cc5577E.exit" ], [ 163208757251, %bb.c ], [ 163208757251, %bb.b ], [ 163208757251, %bb.e ]
  %.sroa.0.0 = phi i64 [ %i.ah, %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h09fae4d5b2cc5577E.exit" ], [ 1, %bb.c ], [ 1, %bb.b ], [ 1, %bb.e ]
  %i.am = inttoptr i64 %.sroa.4.0 to ptr
  %i.an = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.ao = insertvalue { i64, ptr } %i.an, ptr %i.am, 1
  ret { i64, ptr } %i.ao
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$13read_vectored17h070d6743280bc2e7E"(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %.idx = shl nuw nsw i64 %2, 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h19318bb44bcc35ebE.exit", label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %min.iters.check = icmp ult i64 %2, 5
  br i1 %min.iters.check, label %.preheader.preheader27, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %i.d = and i64 %2, 3                            ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  %i.f = select i1 %i.e, i64 4, i64 %i.d
  %n.vec = sub i64 %2, %i.f                       ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi21 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index
  %i.i = getelementptr i8, ptr %i.g, i64 8
  %i.j = getelementptr i8, ptr %i.h, i64 40
  %wide.vec = load <4 x i64>, ptr %i.i, align 8
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec22 = load <4 x i64>, ptr %i.j, align 8
  %strided.vec23 = shufflevector <4 x i64> %wide.vec22, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.k = add <2 x i64> %strided.vec, %vec.phi     ; 2 uses
  %i.l = add <2 x i64> %strided.vec23, %vec.phi21 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !36700

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.l, %i.k
  %i.n = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %.preheader.preheader27

.preheader.preheader27:                           ; preds = %.preheader.preheader, %middle.block
  %.sroa.09.0.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ]
  %.sroa.07.0.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %i.n, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader27, %.preheader
  %.sroa.09.0.i = phi i64 [ %i.r, %.preheader ], [ %.sroa.09.0.i.ph, %.preheader.preheader27 ] ; 2 uses
  %.sroa.07.0.i = phi i64 [ %i.q, %.preheader ], [ %.sroa.07.0.i.ph, %.preheader.preheader27 ]
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.09.0.i
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %.val.i = load i64, ptr %i.p, align 8, !noundef !28
  %i.q = add i64 %.val.i, %.sroa.07.0.i           ; 2 uses
  %i.r = add nuw i64 %.sroa.09.0.i, 1             ; 2 uses
  %i.s = icmp eq i64 %i.r, %2
  br i1 %i.s, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h19318bb44bcc35ebE.exit", label %.preheader, !llvm.loop !36701

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h19318bb44bcc35ebE.exit": ; preds = %.preheader, %bb.a
  %.sroa.04.0.i = phi i64 [ 0, %bb.a ], [ %i.q, %.preheader ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.u = load i64, ptr %i.t, align 8, !noundef !28 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !noundef !28 ; 3 uses
  %i.x = icmp ne i64 %i.u, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %.not = icmp ult i64 %.sroa.04.0.i, %i.z
  %or.cond = select i1 %i.x, i1 true, i1 %.not
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h19318bb44bcc35ebE.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36715)
  %.not.i = icmp ult i64 %i.u, %i.w
  %.pre.i = load ptr, ptr %0, align 8, !alias.scope !36715 ; 3 uses
  br i1 %.not.i, label %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h98a2e2f3e42d4a7bE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36716
  store ptr %.pre.i, ptr %i.a, align 8, !noalias !36716
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !noalias !36716
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.ac, align 8, !noalias !36716
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !36715, !noundef !28
  store i64 %i.af, ptr %i.ad, align 8, !noalias !36716
  %i.ag = call noundef ptr @"_ZN59_$LT$std..process..ChildStdout$u20$as$u20$std..io..Read$GT$8read_buf17h9c5f45ef120790eeE"(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !36717 ; 2 uses
  store i64 0, ptr %i.t, align 8, !alias.scope !36715
  %i.ah = load <2 x i64>, ptr %i.ac, align 8, !noalias !36716
  %i.ai = load i64, ptr %i.ac, align 8, !noalias !36716, !noundef !28
  store <2 x i64> %i.ah, ptr %i.v, align 8, !alias.scope !36715
  %.not4.i = icmp eq ptr %i.ag, null
  br i1 %.not4.i, label %bb.d, label %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h98a2e2f3e42d4a7bE.exit.thread

_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h98a2e2f3e42d4a7bE.exit.thread: ; preds = %bb.c
  %i.aj = ptrtoint ptr %i.ag to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36716
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36716
  br label %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h98a2e2f3e42d4a7bE.exit

_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h98a2e2f3e42d4a7bE.exit: ; preds = %bb.b, %bb.d
  %i.ak = phi i64 [ %i.w, %bb.b ], [ %i.ai, %bb.d ]
  %i.al = phi i64 [ %i.u, %bb.b ], [ 0, %bb.d ]   ; 2 uses
  %i.am = sub nuw i64 %i.ak, %i.al                ; 2 uses
  %i.an = icmp eq ptr %.pre.i, null
  br i1 %i.an, label %bb.f, label %bb.g

bb.e:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h19318bb44bcc35ebE.exit"
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.ap = tail call { i64, ptr } @"_ZN59_$LT$std..process..ChildStdout$u20$as$u20$std..io..Read$GT$13read_vectored17h9c1674cd04f140a3E"(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noalias noundef nonnull align 8 %1, i64 noundef %2)
  br label %bb.j

bb.f:                                             ; preds = %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h98a2e2f3e42d4a7bE.exit.thread, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h98a2e2f3e42d4a7bE.exit
  %.sroa.610.013 = phi i64 [ %i.aj, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h98a2e2f3e42d4a7bE.exit.thread ], [ %i.am, %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h98a2e2f3e42d4a7bE.exit ]
  %i.aq = inttoptr i64 %.sroa.610.013 to ptr
  %i.ar = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.aq, 1
  br label %bb.j

bb.g:                                             ; preds = %_ZN3std2io8buffered9bufreader6buffer6Buffer8fill_buf17h98a2e2f3e42d4a7bE.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !36718)
  %i.as = icmp eq i64 %2, 0
  br i1 %i.as, label %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$13read_vectored17h05a0c6d1251357b4E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.al
  br label %bb.h

bb.h:                                             ; preds = %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i", %.lr.ph
  %.sroa.01.0.i19 = phi i64 [ 0, %.lr.ph ], [ %i.bc, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i" ]
  %.sroa.0.0.i18 = phi ptr [ %1, %.lr.ph ], [ %i.aw, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i" ] ; 3 uses
  %i.au = phi ptr [ %i.at, %.lr.ph ], [ %i.bd, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i" ] ; 3 uses
  %i.av = phi i64 [ %i.am, %.lr.ph ], [ %i.be, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i" ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i18, i64 16 ; 2 uses
  %i.ax = load ptr, ptr %.sroa.0.0.i18, align 8, !alias.scope !36718, !noundef !28 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i18, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !36718, !noundef !28 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36719)
  %.sroa.0.0.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.av, i64 %i.az) ; 5 uses
  %i.ba = icmp eq i64 %.sroa.0.0.i.i.i, 1
  br i1 %i.ba, label %bb.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52a8ae332030da46E.exit.i.i"

bb.i:                                             ; preds = %bb.h
  %i.bb = load i8, ptr %i.au, align 1, !noalias !36720, !noundef !28
  store i8 %i.bb, ptr %i.ax, align 1, !alias.scope !36719, !noalias !36721
  br label %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52a8ae332030da46E.exit.i.i": ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull readonly align 1 %i.au, i64 %.sroa.0.0.i.i.i, i1 false), !alias.scope !36722, !noalias !36723
  br label %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i"

"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52a8ae332030da46E.exit.i.i", %bb.i
  %i.bc = add i64 %.sroa.0.0.i.i.i, %.sroa.01.0.i19 ; 2 uses
  %.not.i7 = icmp ule i64 %i.av, %i.az
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 %.sroa.0.0.i.i.i
  %i.be = sub nuw i64 %i.av, %.sroa.0.0.i.i.i
  %i.bf = icmp eq ptr %i.aw, %i.b
  %or.cond26 = select i1 %.not.i7, i1 true, i1 %i.bf
  br i1 %or.cond26, label %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$13read_vectored17h05a0c6d1251357b4E.exit", label %bb.h

"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$13read_vectored17h05a0c6d1251357b4E.exit": ; preds = %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i", %bb.g
  %.sroa.01.1.i = phi i64 [ 0, %bb.g ], [ %i.bc, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h2f247ce62d1edcb3E.exit.i" ] ; 2 uses
  %i.bg = inttoptr i64 %.sroa.01.1.i to ptr
  %i.bh = load i64, ptr %i.t, align 8, !noundef !28
  %i.bi = add i64 %i.bh, %.sroa.01.1.i
  %i.bj = load i64, ptr %i.v, align 8, !noundef !28
  %.sroa.0.0.i8 = call noundef i64 @llvm.umin.i64(i64 %i.bj, i64 %i.bi)
  store i64 %.sroa.0.0.i8, ptr %i.t, align 8
  %i.bk = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.bg, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$13read_vectored17h05a0c6d1251357b4E.exit", %bb.e
  %.merged = phi { i64, ptr } [ %i.ap, %bb.e ], [ %i.ar, %bb.f ], [ %i.bk, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$13read_vectored17h05a0c6d1251357b4E.exit" ]
  ret { i64, ptr } %.merged
}

; Function Attrs: nonlazybind uwtable
define internal noundef ptr @"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$14read_buf_exact17h04e0114a7d5ac1eeE"(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !28 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !28 ; 4 uses
  %i.f = sub i64 %i.c, %i.e                       ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36737)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !36737, !noundef !28 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !36737, !noundef !28
  %i.k = sub nuw i64 %i.j, %i.h
  %.not.i.not = icmp ugt i64 %i.f, %i.k
  br i1 %.not.i.not, label %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17h4752434b513ce403E.exit, label %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17h4752434b513ce403E.exit.thread

_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17h4752434b513ce403E.exit.thread: ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !alias.scope !36737, !nonnull !28, !noundef !28
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h
  %i.n = load ptr, ptr %1, align 8, !noalias !36738, !nonnull !28, !align !37, !noundef !28
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull readonly align 1 %i.m, i64 %i.f, i1 false), !alias.scope !36739, !noalias !36740
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !noalias !36738, !noundef !28
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 %i.q)
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.p, align 8, !noalias !36738
  store i64 %i.c, ptr %i.d, align 8, !noalias !36738
  %i.r = add i64 %i.h, %i.f
  store i64 %i.r, ptr %i.g, align 8, !alias.scope !36737
  br label %_ZN3std2io22default_read_buf_exact17ha673f05d184fb341E.exit

_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17h4752434b513ce403E.exit: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36741)
  %.not33.i = icmp eq i64 %i.c, %i.e
  br i1 %.not33.i, label %_ZN3std2io22default_read_buf_exact17ha673f05d184fb341E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17h4752434b513ce403E.exit, %.backedge.i
  %i.s = phi i64 [ %i.ah, %.backedge.i ], [ %i.e, %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17h4752434b513ce403E.exit ]
  %i.t = tail call noundef ptr @"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$8read_buf17h2c4e8c04f82c2152E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1) ; 10 uses
  %.not10.i = icmp eq ptr %i.t, null
  br i1 %.not10.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.u = ptrtoint ptr %i.t to i64                 ; 3 uses
  %i.v = and i64 %i.u, 3
  switch i64 %i.v, label %default.unreachable [
    i64 2, label %.split.i
    i64 3, label %bb.d
    i64 0, label %.split31.i
    i64 1, label %.split30.i
  ], !prof !46

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.lr.ph.i
  %i.w = load i64, ptr %i.d, align 8, !alias.scope !36741, !noundef !28 ; 2 uses
  %i.x = icmp eq i64 %i.w, %i.s
  br i1 %i.x, label %_ZN3std2io22default_read_buf_exact17ha673f05d184fb341E.exit, label %.backedge.i

.split.i:                                         ; preds = %bb.b
  %.mask32.i = and i64 %i.u, -4294967296
  %i.y = icmp eq i64 %.mask32.i, 17179869184
  br i1 %i.y, label %bb.e, label %_ZN3std2io22default_read_buf_exact17ha673f05d184fb341E.exit

.split31.i:                                       ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.aa = load i8, ptr %i.z, align 8, !range !87, !noundef !28
  %i.ab = icmp eq i8 %i.aa, 35
  br i1 %i.ab, label %bb.e, label %_ZN3std2io22default_read_buf_exact17ha673f05d184fb341E.exit

.split30.i:                                       ; preds = %bb.b
  %i.ac = getelementptr i8, ptr %i.t, i64 15
  %i.ad = load i8, ptr %i.ac, align 8, !range !87, !noundef !28
  %i.ae = icmp eq i8 %i.ad, 35
  br i1 %i.ae, label %bb.e, label %_ZN3std2io22default_read_buf_exact17ha673f05d184fb341E.exit

bb.d:                                             ; preds = %bb.b
  %i.af = icmp ult ptr %i.t, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.af)
  %.mask.i = and i64 %i.u, -4294967296
  %i.ag = icmp eq i64 %.mask.i, 150323855360
  br i1 %i.ag, label %bb.e, label %_ZN3std2io22default_read_buf_exact17ha673f05d184fb341E.exit

bb.e:                                             ; preds = %bb.d, %.split30.i, %.split31.i, %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36742
  store ptr %i.t, ptr %i.a, align 8, !noalias !36742
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h018e918931649ff7E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36742
  %.pre.i = load i64, ptr %i.d, align 8, !alias.scope !36741
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.e, %bb.c
  %i.ah = phi i64 [ %.pre.i, %bb.e ], [ %i.w, %bb.c ] ; 2 uses
  %i.ai = load i64, ptr %i.b, align 8, !alias.scope !36741, !noundef !28
  %.not.i1 = icmp eq i64 %i.ai, %i.ah
  br i1 %.not.i1, label %_ZN3std2io22default_read_buf_exact17ha673f05d184fb341E.exit, label %.lr.ph.i

_ZN3std2io22default_read_buf_exact17ha673f05d184fb341E.exit: ; preds = %.backedge.i, %bb.d, %.split30.i, %.split31.i, %.split.i, %bb.c, %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17h4752434b513ce403E.exit, %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17h4752434b513ce403E.exit.thread
  %.sroa.0.0 = phi ptr [ null, %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17h4752434b513ce403E.exit.thread ], [ null, %_ZN3std2io8buffered9bufreader6buffer6Buffer12consume_with17h4752434b513ce403E.exit ], [ null, %.backedge.i ], [ %i.t, %bb.d ], [ %i.t, %.split.i ], [ %i.t, %.split30.i ], [ @778, %bb.c ], [ %i.t, %.split31.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$14read_to_string17h2b5ce9d0b7b47e39E"(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !28 ; 5 uses
  %i.h = icmp sgt i64 %i.g, -1
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36758)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !36759
  store ptr %1, ptr %i.c, align 8, !noalias !36759
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i64 0, ptr %i.j, align 8, !noalias !36759
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !36759
  %i.k = invoke { i64, ptr } @"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$11read_to_end17h1e06894257804c6eE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$14read_to_string28_$u7b$$u7b$closure$u7d$$u7d$17h72655d0b1a9db5a1E.exit.i" unwind label %bb.c ; 2 uses

"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17hdc856f90b04bcce2E.exit.i": ; preds = %bb.e, %bb.d, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.s, %bb.e ], [ %i.s, %bb.d ]
  invoke void @"_ZN56_$LT$std..io..Guard$u20$as$u20$core..ops..drop..Drop$GT$4drop17heb49ac04b342d0f7E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %common.resume unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17hdc856f90b04bcce2E.exit.i"

"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$14read_to_string28_$u7b$$u7b$closure$u7d$$u7d$17h72655d0b1a9db5a1E.exit.i": ; preds = %bb.b
  %i.m = extractvalue { i64, ptr } %i.k, 0        ; 4 uses
  %i.n = extractvalue { i64, ptr } %i.k, 1        ; 3 uses
  store i64 %i.m, ptr %i.b, align 8, !noalias !36759
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !noalias !36759
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !36758, !nonnull !28, !noundef !28
  %i.r = load i64, ptr %i.f, align 8, !alias.scope !36758, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36759
  invoke void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.q, i64 noundef %i.r)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$14read_to_string28_$u7b$$u7b$closure$u7d$$u7d$17h72655d0b1a9db5a1E.exit.i"
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = icmp eq i64 %i.m, 0
  br i1 %i.t, label %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17hdc856f90b04bcce2E.exit.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h018e918931649ff7E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.o)
          to label %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17hdc856f90b04bcce2E.exit.i" unwind label %bb.i

bb.f:                                             ; preds = %"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$14read_to_string28_$u7b$$u7b$closure$u7d$$u7d$17h72655d0b1a9db5a1E.exit.i"
  %i.u = load i64, ptr %i.a, align 8, !range !43, !noalias !36759, !noundef !28
  %.not.i = icmp eq i64 %i.u, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36759
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.c, align 8, !noalias !36759, !nonnull !28, !align !35, !noundef !28
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noundef !28 ; 2 uses
  %i.y = icmp sgt i64 %i.x, -1
  call void @llvm.assume(i1 %i.y)
  store i64 %i.x, ptr %i.j, align 8, !noalias !36759
  br label %_ZN3std2io16append_to_string17ha3e13f50e9d67d74E.exit

bb.h:                                             ; preds = %bb.f
  %i.z = trunc nuw i64 %i.m to i1
  %spec.select.i = select i1 %i.z, ptr %i.n, ptr @771
  br label %_ZN3std2io16append_to_string17ha3e13f50e9d67d74E.exit

bb.i:                                             ; preds = %bb.e, %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17hdc856f90b04bcce2E.exit.i"
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40
  unreachable

common.resume:                                    ; preds = %bb.k, %bb.l, %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17hdc856f90b04bcce2E.exit.i"
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17hdc856f90b04bcce2E.exit.i" ], [ %i.af, %bb.l ], [ %i.af, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_ZN3std2io16append_to_string17ha3e13f50e9d67d74E.exit: ; preds = %bb.g, %bb.h
  %.pre-phi18 = phi ptr [ %i.n, %bb.g ], [ %spec.select.i, %bb.h ]
  %.pre-phi = phi i64 [ %i.m, %bb.g ], [ 1, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !36759
  call void @"_ZN56_$LT$std..io..Guard$u20$as$u20$core..ops..drop..Drop$GT$4drop17heb49ac04b342d0f7E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !36759
  %i.ab = ptrtoint ptr %.pre-phi18 to i64
  br label %bb.v

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 0, ptr %i.ad, align 8
  %i.ae = invoke { i64, ptr } @"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$11read_to_end17h1e06894257804c6eE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.m unwind label %bb.k       ; 2 uses

bb.k:                                             ; preds = %bb.s, %bb.o, %bb.j
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36760)
  %.val.i = load i64, ptr %i.e, align 8, !range !29, !alias.scope !36760, !noundef !28 ; 2 uses
  %i.ag = icmp eq i64 %.val.i, 0
  br i1 %i.ag, label %common.resume, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val1.i = load ptr, ptr %i.ac, align 8, !alias.scope !36760, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !36760
  br label %common.resume

bb.m:                                             ; preds = %bb.j
  %i.ah = extractvalue { i64, ptr } %i.ae, 0
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aj = extractvalue { i64, ptr } %i.ae, 1
  %i.ak = ptrtoint ptr %i.aj to i64
  br label %bb.w

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.al = load ptr, ptr %i.ac, align 8, !nonnull !28, !noundef !28
  %i.am = load i64, ptr %i.ad, align 8, !noundef !28
  invoke void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.al, i64 noundef %i.am)
          to label %bb.p unwind label %bb.k

bb.p:                                             ; preds = %bb.o
  %i.an = load i64, ptr %i.d, align 8, !range !43, !noundef !28
  %i.ao = trunc nuw i64 %i.an to i1
  br i1 %i.ao, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.w

bb.r:                                             ; preds = %bb.p
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !28, !align !37, !noundef !28
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !noundef !28 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !36761)
  call void @llvm.experimental.noalias.scope.decl(metadata !36762)
  %i.at = load i64, ptr %1, align 8, !range !29, !alias.scope !36763, !noundef !28
  %i.au = sub nsw i64 %i.at, %i.g
  %i.av = icmp ugt i64 %i.as, %i.au
  br i1 %i.av, label %bb.s, label %bb.t, !prof !30

bb.s:                                             ; preds = %bb.r
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.g, i64 noundef %i.as, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.s
  %.pre.i.i = load i64, ptr %i.f, align 8, !alias.scope !36764
  br label %bb.t

bb.t:                                             ; preds = %.noexc, %bb.r
  %i.aw = phi i64 [ %i.g, %bb.r ], [ %.pre.i.i, %.noexc ] ; 3 uses
  %i.ax = icmp sgt i64 %i.aw, -1
  call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !36764, !nonnull !28, !noundef !28
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.aw
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ba, ptr nonnull readonly align 1 %i.aq, i64 %i.as, i1 false), !noalias !36764
  %i.bb = add i64 %i.aw, %i.as
  store i64 %i.bb, ptr %i.f, align 8, !alias.scope !36764
  call void @llvm.experimental.noalias.scope.decl(metadata !36765)
  %.val.i11 = load i64, ptr %i.e, align 8, !range !29, !alias.scope !36765, !noundef !28 ; 2 uses
  %i.bc = icmp eq i64 %.val.i11, 0
  br i1 %i.bc, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb988938bd244ec3E.exit13", label %bb.u

bb.u:                                             ; preds = %bb.t
  %.val1.i12 = load ptr, ptr %i.ac, align 8, !alias.scope !36765, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i12, i64 noundef %.val.i11, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !36765
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb988938bd244ec3E.exit13"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb988938bd244ec3E.exit13": ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.v

bb.v:                                             ; preds = %_ZN3std2io16append_to_string17ha3e13f50e9d67d74E.exit, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb988938bd244ec3E.exit13", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb988938bd244ec3E.exit16"
  %.sroa.5.0 = phi i64 [ %i.ab, %_ZN3std2io16append_to_string17ha3e13f50e9d67d74E.exit ], [ %.sroa.5.1, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb988938bd244ec3E.exit16" ], [ %i.as, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb988938bd244ec3E.exit13" ]
  %.sroa.0.0 = phi i64 [ %.pre-phi, %_ZN3std2io16append_to_string17ha3e13f50e9d67d74E.exit ], [ 1, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb988938bd244ec3E.exit16" ], [ 0, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb988938bd244ec3E.exit13" ]
  %i.bd = inttoptr i64 %.sroa.5.0 to ptr
  %i.be = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.bf = insertvalue { i64, ptr } %i.be, ptr %i.bd, 1
end_hunk_0
