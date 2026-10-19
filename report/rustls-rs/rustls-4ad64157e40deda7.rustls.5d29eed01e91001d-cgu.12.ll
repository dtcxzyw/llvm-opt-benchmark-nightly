Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/rustls-4ad64157e40deda7.rustls.5d29eed01e91001d-cgu.12?download=true
inline.NumInlined: 771
inline.NumDeleted: 266
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable7ipnsortTmjENvYBT_NtNtB8_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls:bb.a
  %.val6 = load i64, ptr %i.i, align 8            ; 2 uses
  %i.j = icmp eq i32 %.val5, %.val7
  %i.k = icmp ult i32 %.val5, %.val7
  %i.l = icmp ult i64 %.val6, %.val8
  %.sroa.0.0.i.i13 = select i1 %i.j, i1 %i.l, i1 %i.k
  br i1 %.sroa.0.0.i.i13, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTmjENvYB12_NtNtB8_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.m = add nuw nsw i64 %.sroa.01.0.i21, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTmjENvYB12_NtNtB8_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.thread, label %.lr.ph

.lr.ph25:                                         ; preds = %.preheader, %bb.d
  %.val4 = phi i64 [ %.val2, %bb.d ], [ %.val10, %.preheader ]
  %.val3 = phi i32 [ %.val, %bb.d ], [ %.val9, %.preheader ] ; 2 uses
  %.sroa.01.1.i24 = phi i64 [ %i.s, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.1.i24 ; 2 uses
  %.val = load i32, ptr %i.n, align 8, !noundef !4 ; 3 uses
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %.val2 = load i64, ptr %i.o, align 8            ; 2 uses
  %i.p = icmp eq i32 %.val, %.val3
  %i.q = icmp ult i32 %.val, %.val3
  %i.r = icmp ult i64 %.val2, %.val4
  %.sroa.0.0.i.i14 = select i1 %i.p, i1 %i.r, i1 %i.q
  br i1 %.sroa.0.0.i.i14, label %bb.d, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTmjENvYB12_NtNtB8_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit

bb.d:                                             ; preds = %.lr.ph25
  %i.s = add nuw nsw i64 %.sroa.01.1.i24, 1       ; 2 uses
  %exitcond32.not = icmp eq i64 %i.s, %1
  br i1 %exitcond32.not, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTmjENvYB12_NtNtB8_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.thread, label %.lr.ph25

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTmjENvYB12_NtNtB8_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit: ; preds = %.lr.ph, %.lr.ph25, %.preheader19, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader19 ], [ 2, %.preheader ], [ %.sroa.01.1.i24, %.lr.ph25 ], [ %.sroa.01.0.i21, %.lr.ph ] ; 2 uses
  %i.t = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.u, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTmjENvYB12_NtNtB8_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.thread, label %bb.e

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTmjENvYB12_NtNtB8_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTmjENvYB12_NtNtB8_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit
  br i1 %.sroa.0.0.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.preheader.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE7reverseCs7ZUl82OSlxp_6rustls.exit

bb.e:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTmjENvYB12_NtNtB8_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit
  %i.v = or i64 %1, 1
  %i.w = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.v, i1 true)
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 1
  %i.z = xor i32 %i.y, 126
  tail call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort9quicksortTmjENvYB17_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, i32 noundef %i.z, ptr noalias nofree noundef nonnull %2)
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE7reverseCs7ZUl82OSlxp_6rustls.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE7reverseCs7ZUl82OSlxp_6rustls.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.i.i
  %i.aa = and i64 %1, 2
  %lcmp.mod.not = icmp eq i64 %i.aa, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE7reverseCs7ZUl82OSlxp_6rustls.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.i.i.epil.preheader

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.i.i.epil.preheader: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE7reverseCs7ZUl82OSlxp_6rustls.exit.loopexit.unr-lcssa, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.preheader.i.i
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.preheader.i.i ], [ %i.ba, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE7reverseCs7ZUl82OSlxp_6rustls.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod55 = trunc i64 %i.ai to i1
  tail call void @llvm.assume(i1 %lcmp.mod55)
  %i.ab = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i.epil.init ; 3 uses
  %i.ad = getelementptr [16 x i8], ptr %i.aj, i64 %i.ab ; 3 uses
  %i.ae = load i32, ptr %i.ac, align 8, !alias.scope !776, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !776, !noundef !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !alias.scope !777
  store i32 %i.ae, ptr %i.ad, align 8, !alias.scope !778
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !alias.scope !778
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE7reverseCs7ZUl82OSlxp_6rustls.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE7reverseCs7ZUl82OSlxp_6rustls.exit: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.i.i.epil.preheader, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE7reverseCs7ZUl82OSlxp_6rustls.exit.loopexit.unr-lcssa, %bb.a, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTmjENvYB12_NtNtB8_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.thread, %bb.e
  ret void

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTmjENvYB12_NtNtB8_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.thread
  %i.ai = lshr i64 %1, 1                          ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !779)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !780)
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1 ; 3 uses
  %i.ak = icmp eq i64 %i.ai, 1
  br i1 %i.ak, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.i.i.epil.preheader, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.preheader.i.i.new

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.preheader.i.i.new: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.preheader.i.i
  %unroll_iter = and i64 %i.ai, 288230376151711742
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.i.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.i.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.preheader.i.i.new ], [ %i.ba, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.i.i ]
  %i.al = xor i64 %.sroa.0.016.i.i, -1
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 3 uses
  %i.an = getelementptr [16 x i8], ptr %i.aj, i64 %i.al ; 3 uses
  %i.ao = load i32, ptr %i.am, align 8, !alias.scope !776, !noundef !4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !776, !noundef !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !alias.scope !777
  store i32 %i.ao, ptr %i.an, align 8, !alias.scope !778
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !alias.scope !778
  %i.as = xor i64 %.sroa.0.016.i.i, -2
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %i.av = getelementptr [16 x i8], ptr %i.aj, i64 %i.as ; 3 uses
  %i.aw = load i32, ptr %i.au, align 8, !alias.scope !776, !noundef !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !776, !noundef !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 16, i1 false), !alias.scope !777
  store i32 %i.aw, ptr %i.av, align 8, !alias.scope !778
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !alias.scope !778
  %i.ba = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE7reverseCs7ZUl82OSlxp_6rustls.exit.loopexit.unr-lcssa, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable7ipnsortTmmENvYBT_NtNtB8_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull %2) unnamed_addr #5 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE7reverseCs7ZUl82OSlxp_6rustls.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val9 = load i32, ptr %i.b, align 4, !noundef !4 ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 12
  %.val10 = load i32, ptr %i.c, align 4           ; 3 uses
  %.val11 = load i32, ptr %0, align 4, !noundef !4 ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 4
  %.val12 = load i32, ptr %i.d, align 4
  %i.e = icmp eq i32 %.val9, %.val11
  %i.f = icmp ult i32 %.val9, %.val11
  %i.g = icmp ult i32 %.val10, %.val12
  %.sroa.0.0.i.i = select i1 %i.e, i1 %i.g, i1 %i.f ; 2 uses
  %.not29 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %.sroa.0.0.i.i, label %.preheader, label %.preheader19

.preheader19:                                     ; preds = %bb.b
  br i1 %.not29, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTmmENvYB12_NtNtB8_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not29, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTmmENvYB12_NtNtB8_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit, label %.lr.ph25

.lr.ph:                                           ; preds = %.preheader19, %bb.c
  %.val8 = phi i32 [ %.val6, %bb.c ], [ %.val10, %.preheader19 ]
  %.val7 = phi i32 [ %.val5, %bb.c ], [ %.val9, %.preheader19 ] ; 2 uses
  %.sroa.01.0.i21 = phi i64 [ %i.m, %bb.c ], [ 2, %.preheader19 ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i21 ; 2 uses
  %.val5 = load i32, ptr %i.h, align 4, !noundef !4 ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 4
  %.val6 = load i32, ptr %i.i, align 4            ; 2 uses
  %i.j = icmp eq i32 %.val5, %.val7
  %i.k = icmp ult i32 %.val5, %.val7
  %i.l = icmp ult i32 %.val6, %.val8
  %.sroa.0.0.i.i13 = select i1 %i.j, i1 %i.l, i1 %i.k
  br i1 %.sroa.0.0.i.i13, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTmmENvYB12_NtNtB8_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.m = add nuw nsw i64 %.sroa.01.0.i21, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTmmENvYB12_NtNtB8_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.thread, label %.lr.ph

.lr.ph25:                                         ; preds = %.preheader, %bb.d
  %.val4 = phi i32 [ %.val2, %bb.d ], [ %.val10, %.preheader ]
  %.val3 = phi i32 [ %.val, %bb.d ], [ %.val9, %.preheader ] ; 2 uses
  %.sroa.01.1.i24 = phi i64 [ %i.s, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.1.i24 ; 2 uses
  %.val = load i32, ptr %i.n, align 4, !noundef !4 ; 3 uses
  %i.o = getelementptr i8, ptr %i.n, i64 4
  %.val2 = load i32, ptr %i.o, align 4            ; 2 uses
  %i.p = icmp eq i32 %.val, %.val3
  %i.q = icmp ult i32 %.val, %.val3
  %i.r = icmp ult i32 %.val2, %.val4
  %.sroa.0.0.i.i14 = select i1 %i.p, i1 %i.r, i1 %i.q
  br i1 %.sroa.0.0.i.i14, label %bb.d, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTmmENvYB12_NtNtB8_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit

bb.d:                                             ; preds = %.lr.ph25
  %i.s = add nuw nsw i64 %.sroa.01.1.i24, 1       ; 2 uses
  %exitcond32.not = icmp eq i64 %i.s, %1
  br i1 %exitcond32.not, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTmmENvYB12_NtNtB8_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.thread, label %.lr.ph25

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTmmENvYB12_NtNtB8_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit: ; preds = %.lr.ph, %.lr.ph25, %.preheader19, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader19 ], [ 2, %.preheader ], [ %.sroa.01.1.i24, %.lr.ph25 ], [ %.sroa.01.0.i21, %.lr.ph ] ; 2 uses
  %i.t = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.u, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTmmENvYB12_NtNtB8_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.thread, label %bb.e

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTmmENvYB12_NtNtB8_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTmmENvYB12_NtNtB8_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit
  br i1 %.sroa.0.0.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.preheader.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE7reverseCs7ZUl82OSlxp_6rustls.exit

bb.e:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTmmENvYB12_NtNtB8_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit
  %i.v = or i64 %1, 1
  %i.w = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.v, i1 true)
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 1
  %i.z = xor i32 %i.y, 126
  tail call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort9quicksortTmmENvYB17_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, i32 noundef %i.z, ptr noalias nofree noundef nonnull %2)
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE7reverseCs7ZUl82OSlxp_6rustls.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE7reverseCs7ZUl82OSlxp_6rustls.exit: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.i.i.prol.loopexit, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.i.i, %middle.block, %bb.a, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTmmENvYB12_NtNtB8_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.thread, %bb.e
  ret void

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTmmENvYB12_NtNtB8_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.thread
  %i.aa = lshr i64 %1, 1                          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !788)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !789)
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 4 uses
  %min.iters.check = icmp samesign ult i64 %1, 32
  br i1 %min.iters.check, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.i.i.preheader.a, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.preheader.i.i
  %3 = add nsw i64 %i.aa, -1                      ; 2 uses
  %4 = shl nuw nsw i64 %1, 3
  %5 = getelementptr i8, ptr %0, i64 %4
  %scevgep = getelementptr i8, ptr %5, i64 -8     ; 2 uses
  %mul.result.neg = mul nsw i64 %3, -8
  %mul.overflow = icmp ugt i64 %3, 2305843009213693951
  %6 = getelementptr i8, ptr %scevgep, i64 %mul.result.neg
  %7 = icmp ugt ptr %6, %scevgep
  %8 = or i1 %7, %mul.overflow
  br i1 %8, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.i.i.preheader.a, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.aa, 576460752303423486      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ac = xor i64 %index, -1
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.ae = getelementptr [8 x i8], ptr %i.ab, i64 %i.ac ; 2 uses
  %wide.vec = load <4 x i32>, ptr %i.ad, align 4, !alias.scope !790
  %i.af = getelementptr i8, ptr %i.ae, i64 -8
  %wide.load = load <2 x i64>, ptr %i.af, align 4, !alias.scope !791
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.ad, align 4, !alias.scope !790
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %interleaved.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec, ptr %i.ag, align 4, !alias.scope !791
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !786

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE7reverseCs7ZUl82OSlxp_6rustls.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.i.i.preheader.a

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.i.i.preheader.a: ; preds = %vector.scevcheck, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.preheader.i.i ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.016.i.i.ph, 1
  %9 = and i64 %1, 2
  %lcmp.mod.not = icmp eq i64 %9, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.i.i.prol.loopexit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.i.i.prol

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.i.i.prol: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.i.i.preheader.a
  %10 = xor i64 %.sroa.0.016.i.i.ph, -1
  %11 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.016.i.i.ph ; 2 uses
  %12 = getelementptr [8 x i8], ptr %i.ab, i64 %10 ; 2 uses
  %13 = load i64, ptr %12, align 4, !alias.scope !791
  %14 = load <2 x i32>, ptr %11, align 4, !alias.scope !790
  store i64 %13, ptr %11, align 4, !alias.scope !790
  store <2 x i32> %14, ptr %12, align 4, !alias.scope !791
  %15 = or disjoint i64 %.sroa.0.016.i.i.ph, 1
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.i.i.prol.loopexit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.i.i.prol.loopexit: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.i.i.prol, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.i.i.preheader.a
  %.sroa.0.016.i.i.unr = phi i64 [ %.sroa.0.016.i.i.ph, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.i.i.preheader.a ], [ %15, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.i.i.prol ]
  %16 = icmp eq i64 %i.aa, %.neg
  br i1 %16, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE7reverseCs7ZUl82OSlxp_6rustls.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.i.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.i.i.prol.loopexit, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.an, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.i.i ], [ %.sroa.0.016.i.i.unr, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.i.i.prol.loopexit ] ; 5 uses
  %i.ai = xor i64 %.sroa.0.016.i.i, -1
  %17 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %18 = getelementptr [8 x i8], ptr %i.ab, i64 %i.ai ; 2 uses
  %19 = load i64, ptr %18, align 4, !alias.scope !791
  %20 = load <2 x i32>, ptr %17, align 4, !alias.scope !790
  store i64 %19, ptr %17, align 4, !alias.scope !790
  store <2 x i32> %20, ptr %18, align 4, !alias.scope !791
  %21 = sub i64 -2, %.sroa.0.016.i.i
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.016.i.i
  %22 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.ak = getelementptr [8 x i8], ptr %i.ab, i64 %21 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 4, !alias.scope !791
  %i.am = load <2 x i32>, ptr %22, align 4, !alias.scope !790
  store i64 %i.al, ptr %22, align 4, !alias.scope !790
  store <2 x i32> %i.am, ptr %i.ak, align 4, !alias.scope !791
  %i.an = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.an, %i.aa
  br i1 %exitcond.not.i.i.1, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE7reverseCs7ZUl82OSlxp_6rustls.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.i.i, !llvm.loop !787
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable8heapsort8heapsortTmjENvYB15_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree nonnull readnone captures(none) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %1, 1
  %i.b = add nuw nsw i64 %i.a, %1                 ; 2 uses
  %.not22 = icmp eq i64 %i.b, 0
  br i1 %.not22, label %._crit_edge, label %.lr.ph24

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable8heapsort9sift_downTmjENvYB16_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit, %bb.a
  ret void

.lr.ph24:                                         ; preds = %bb.a, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable8heapsort9sift_downTmjENvYB16_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit
  %.sroa.2.023 = phi i64 [ %i.c, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable8heapsort9sift_downTmjENvYB16_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit ], [ %i.b, %bb.a ]
  %i.c = add nsw i64 %.sroa.2.023, -1             ; 6 uses
  %.not9 = icmp ult i64 %i.c, %1
  br i1 %.not9, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph24
  %i.d = sub nuw nsw i64 %i.c, %1
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph24
  tail call void @_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE14swap_uncheckedCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, i64 noundef 0, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.04.0 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.c ] ; 3 uses
  %..i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %1, i64 range(i64 0, 1729382256910270462) %i.c) ; 4 uses
  %i.e = icmp ule i64 %.sroa.04.0, %..i
  tail call void @llvm.assume(i1 %i.e)
  %i.f = shl nuw nsw i64 %.sroa.04.0, 1           ; 2 uses
  %i.g = or disjoint i64 %i.f, 1                  ; 2 uses
  %.not.i19 = icmp samesign ult i64 %i.g, %..i
  br i1 %.not.i19, label %.lr.ph, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable8heapsort9sift_downTmjENvYB16_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit

.lr.ph:                                           ; preds = %bb.d, %bb.g
  %i.h = phi i64 [ %i.ac, %bb.g ], [ %i.g, %bb.d ] ; 3 uses
  %i.i = phi i64 [ %i.ab, %bb.g ], [ %i.f, %bb.d ]
  %.sroa.0.0.i20 = phi i64 [ %.sroa.04.0.i, %bb.g ], [ %.sroa.04.0, %bb.d ]
  %i.j = add nuw nsw i64 %i.i, 2                  ; 2 uses
  %i.k = icmp samesign ult i64 %i.j, %..i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.h ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.j ; 2 uses
  %.val = load i32, ptr %i.l, align 8, !noundef !4 ; 2 uses
  %i.n = getelementptr i8, ptr %i.l, i64 8
  %.val11 = load i64, ptr %i.n, align 8
  %.val12 = load i32, ptr %i.m, align 8, !noundef !4 ; 2 uses
  %i.o = getelementptr i8, ptr %i.m, i64 8
  %.val13 = load i64, ptr %i.o, align 8
  %i.p = icmp eq i32 %.val, %.val12
  %i.q = icmp ult i32 %.val, %.val12
  %i.r = icmp ult i64 %.val11, %.val13
  %.sroa.0.0.i.i = select i1 %i.p, i1 %i.r, i1 %i.q
  %i.s = zext i1 %.sroa.0.0.i.i to i64
  %i.t = add nuw nsw i64 %i.h, %i.s
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %.sroa.04.0.i = phi i64 [ %i.t, %bb.e ], [ %i.h, %.lr.ph ] ; 3 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.0.i20 ; 3 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.04.0.i ; 3 uses
  %.val14 = load i32, ptr %i.u, align 8, !noundef !4 ; 2 uses
  %i.w = getelementptr i8, ptr %i.u, i64 8
  %.val15 = load i64, ptr %i.w, align 8
  %.val16 = load i32, ptr %i.v, align 8, !noundef !4 ; 2 uses
  %i.x = getelementptr i8, ptr %i.v, i64 8
  %.val17 = load i64, ptr %i.x, align 8
  %i.y = icmp eq i32 %.val14, %.val16
  %i.z = icmp ult i32 %.val14, %.val16
  %i.aa = icmp ult i64 %.val15, %.val17
  %.sroa.0.0.i.i18 = select i1 %i.y, i1 %i.aa, i1 %i.z
  br i1 %.sroa.0.0.i.i18, label %bb.g, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable8heapsort9sift_downTmjENvYB16_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_RINvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs7ZUl82OSlxp_6rustls(ptr noundef nonnull %i.u, ptr noundef nonnull %i.v, i64 noundef 2)
  %i.ab = shl nuw nsw i64 %.sroa.04.0.i, 1        ; 2 uses
  %i.ac = or disjoint i64 %i.ab, 1                ; 2 uses
  %.not.i = icmp samesign ult i64 %i.ac, %..i
  br i1 %.not.i, label %.lr.ph, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable8heapsort9sift_downTmjENvYB16_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable8heapsort9sift_downTmjENvYB16_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit: ; preds = %bb.f, %bb.g, %bb.d
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph24
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable8heapsort8heapsortTmmENvYB15_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree nonnull readnone captures(none) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %1, 1
  %i.b = add nuw nsw i64 %i.a, %1                 ; 2 uses
  %.not22 = icmp eq i64 %i.b, 0
  br i1 %.not22, label %._crit_edge, label %.lr.ph24

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable8heapsort9sift_downTmmENvYB16_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit, %bb.a
  ret void

.lr.ph24:                                         ; preds = %bb.a, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable8heapsort9sift_downTmmENvYB16_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit
  %.sroa.2.023 = phi i64 [ %i.c, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable8heapsort9sift_downTmmENvYB16_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit ], [ %i.b, %bb.a ]
  %i.c = add nsw i64 %.sroa.2.023, -1             ; 6 uses
  %.not9 = icmp ult i64 %i.c, %1
  br i1 %.not9, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph24
  %i.d = sub nuw nsw i64 %i.c, %1
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph24
  tail call void @_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE14swap_uncheckedCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef %1, i64 noundef 0, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.04.0 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.c ] ; 3 uses
  %..i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %1, i64 range(i64 0, 1729382256910270462) %i.c) ; 4 uses
  %i.e = icmp ule i64 %.sroa.04.0, %..i
  tail call void @llvm.assume(i1 %i.e)
  %i.f = shl nuw nsw i64 %.sroa.04.0, 1           ; 2 uses
  %i.g = or disjoint i64 %i.f, 1                  ; 2 uses
  %.not.i19 = icmp samesign ult i64 %i.g, %..i
  br i1 %.not.i19, label %.lr.ph, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable8heapsort9sift_downTmmENvYB16_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit

.lr.ph:                                           ; preds = %bb.d, %bb.g
  %i.h = phi i64 [ %i.ac, %bb.g ], [ %i.g, %bb.d ] ; 3 uses
  %i.i = phi i64 [ %i.ab, %bb.g ], [ %i.f, %bb.d ]
  %.sroa.0.0.i20 = phi i64 [ %.sroa.04.0.i, %bb.g ], [ %.sroa.04.0, %bb.d ]
  %i.j = add nuw nsw i64 %i.i, 2                  ; 2 uses
  %i.k = icmp samesign ult i64 %i.j, %..i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.j ; 2 uses
  %.val = load i32, ptr %i.l, align 4, !noundef !4 ; 2 uses
  %i.n = getelementptr i8, ptr %i.l, i64 4
  %.val11 = load i32, ptr %i.n, align 4
  %.val12 = load i32, ptr %i.m, align 4, !noundef !4 ; 2 uses
  %i.o = getelementptr i8, ptr %i.m, i64 4
  %.val13 = load i32, ptr %i.o, align 4
  %i.p = icmp eq i32 %.val, %.val12
  %i.q = icmp ult i32 %.val, %.val12
  %i.r = icmp ult i32 %.val11, %.val13
  %.sroa.0.0.i.i = select i1 %i.p, i1 %i.r, i1 %i.q
  %i.s = zext i1 %.sroa.0.0.i.i to i64
  %i.t = add nuw nsw i64 %i.h, %i.s
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %.sroa.04.0.i = phi i64 [ %i.t, %bb.e ], [ %i.h, %.lr.ph ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.0.i20 ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.04.0.i ; 3 uses
  %.val14 = load i32, ptr %i.u, align 4, !noundef !4 ; 2 uses
  %i.w = getelementptr i8, ptr %i.u, i64 4
  %.val15 = load i32, ptr %i.w, align 4
  %.val16 = load i32, ptr %i.v, align 4, !noundef !4 ; 2 uses
  %i.x = getelementptr i8, ptr %i.v, i64 4
  %.val17 = load i32, ptr %i.x, align 4
  %i.y = icmp eq i32 %.val14, %.val16
  %i.z = icmp ult i32 %.val14, %.val16
  %i.aa = icmp ult i32 %.val15, %.val17
  %.sroa.0.0.i.i18 = select i1 %i.y, i1 %i.aa, i1 %i.z
  br i1 %.sroa.0.0.i.i18, label %bb.g, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable8heapsort9sift_downTmmENvYB16_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_RINvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs7ZUl82OSlxp_6rustls(ptr noundef nonnull %i.u, ptr noundef nonnull %i.v, i64 noundef 1)
  %i.ab = shl nuw nsw i64 %.sroa.04.0.i, 1        ; 2 uses
  %i.ac = or disjoint i64 %i.ab, 1                ; 2 uses
  %.not.i = icmp samesign ult i64 %i.ac, %..i
  br i1 %.not.i, label %.lr.ph, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable8heapsort9sift_downTmmENvYB16_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable8heapsort9sift_downTmmENvYB16_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit: ; preds = %bb.f, %bb.g, %bb.d
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph24
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort9quicksortTmjENvYB17_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(16) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = icmp samesign ult i64 %1, 33
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = icmp eq i32 %3, 0
  br i1 %i.f, label %._crit_edge134, label %.lr.ph133

bb.b:                                             ; preds = %.backedge
  %i.g = icmp eq i32 %i.h, 0
  br i1 %i.g, label %._crit_edge134, label %.lr.ph133

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ]
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!587 = !{!580, !578, !576}
!588 = distinct !{!588, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_"}
!589 = distinct !{!589, !588, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_: argument 0"}
!590 = distinct !{!590, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_"}
!591 = distinct !{!591, !590, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_: argument 0"}
!592 = distinct !{!592, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_"}
!593 = distinct !{!593, !592, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_: argument 0"}
!594 = distinct !{!594, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_"}
!595 = distinct !{!595, !594, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_: argument 0"}
!596 = distinct !{!596, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls"}
!597 = distinct !{!597, !596, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls: argument 0"}
!598 = distinct !{!598, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls"}
!599 = distinct !{!599, !598, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls: argument 0"}
!600 = distinct !{!600, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls"}
!601 = distinct !{!601, !600, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls: argument 0"}
!602 = !{!589}
!603 = !{!591}
!604 = !{!591, !589}
!605 = !{!593}
!606 = !{!595}
!607 = !{!597}
!608 = !{!601, !599, !597}
!609 = distinct !{!609, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_"}
!610 = distinct !{!610, !609, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_: argument 0"}
!611 = distinct !{!611, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_"}
!612 = distinct !{!612, !611, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_: argument 0"}
!613 = distinct !{!613, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_"}
!614 = distinct !{!614, !613, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_: argument 0"}
!615 = distinct !{!615, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_"}
!616 = distinct !{!616, !615, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_: argument 0"}
!617 = distinct !{!617, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls"}
!618 = distinct !{!618, !617, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls: argument 0"}
!619 = distinct !{!619, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls"}
!620 = distinct !{!620, !619, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls: argument 0"}
!621 = distinct !{!621, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls"}
!622 = distinct !{!622, !621, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls: argument 0"}
!623 = !{!610}
!624 = !{!612}
!625 = !{!612, !610}
!626 = !{!614}
!627 = !{!616}
!628 = !{!618}
!629 = !{!622, !620, !618}
!630 = distinct !{!630, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_"}
!631 = distinct !{!631, !630, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_: argument 0"}
!632 = distinct !{!632, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_"}
!633 = distinct !{!633, !632, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_: argument 0"}
!634 = distinct !{!634, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_"}
!635 = distinct !{!635, !634, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_: argument 0"}
!636 = distinct !{!636, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_"}
!637 = distinct !{!637, !636, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_: argument 0"}
!638 = distinct !{!638, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls"}
!639 = distinct !{!639, !638, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls: argument 0"}
!640 = distinct !{!640, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls"}
!641 = distinct !{!641, !640, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls: argument 0"}
!642 = distinct !{!642, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls"}
!643 = distinct !{!643, !642, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls: argument 0"}
!644 = !{!631}
!645 = !{!633}
!646 = !{!633, !631}
!647 = !{!635}
!648 = !{!637}
!649 = !{!639}
!650 = !{!643, !641, !639}
!651 = distinct !{!651, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_"}
!652 = distinct !{!652, !651, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_: argument 0"}
!653 = distinct !{!653, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_"}
!654 = distinct !{!654, !653, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_: argument 0"}
!655 = distinct !{!655, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_"}
!656 = distinct !{!656, !655, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_: argument 0"}
!657 = distinct !{!657, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_"}
!658 = distinct !{!658, !657, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_: argument 0"}
!659 = distinct !{!659, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls"}
!660 = distinct !{!660, !659, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls: argument 0"}
!661 = distinct !{!661, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls"}
!662 = distinct !{!662, !661, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls: argument 0"}
!663 = distinct !{!663, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls"}
!664 = distinct !{!664, !663, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls: argument 0"}
!665 = !{!652}
!666 = !{!654}
!667 = !{!654, !652}
!668 = !{!656}
!669 = !{!658}
!670 = !{!660}
!671 = !{!664, !662, !660}
!672 = distinct !{!672, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_"}
!673 = distinct !{!673, !672, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_: argument 0"}
!674 = distinct !{!674, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_"}
!675 = distinct !{!675, !674, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_: argument 0"}
!676 = distinct !{!676, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_"}
!677 = distinct !{!677, !676, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_: argument 0"}
!678 = distinct !{!678, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_"}
!679 = distinct !{!679, !678, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_: argument 0"}
!680 = distinct !{!680, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls"}
!681 = distinct !{!681, !680, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls: argument 0"}
!682 = distinct !{!682, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls"}
!683 = distinct !{!683, !682, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls: argument 0"}
!684 = distinct !{!684, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls"}
!685 = distinct !{!685, !684, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls: argument 0"}
!686 = !{!673}
!687 = !{!675}
!688 = !{!675, !673}
!689 = !{!677}
!690 = !{!679}
!691 = !{!681}
!692 = !{!685, !683, !681}
!693 = distinct !{!693, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_"}
!694 = distinct !{!694, !693, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_: argument 0"}
!695 = distinct !{!695, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_"}
!696 = distinct !{!696, !695, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_: argument 0"}
!697 = distinct !{!697, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_"}
!698 = distinct !{!698, !697, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_: argument 0"}
!699 = distinct !{!699, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_"}
!700 = distinct !{!700, !699, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_: argument 0"}
!701 = distinct !{!701, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls"}
!702 = distinct !{!702, !701, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls: argument 0"}
!703 = distinct !{!703, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls"}
!704 = distinct !{!704, !703, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls: argument 0"}
!705 = distinct !{!705, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls"}
!706 = distinct !{!706, !705, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls: argument 0"}
!707 = !{!694}
!708 = !{!696}
!709 = !{!696, !694}
!710 = !{!698}
!711 = !{!700}
!712 = !{!702}
!713 = !{!706, !704, !702}
!714 = distinct !{!714, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_"}
!715 = distinct !{!715, !714, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_: argument 0"}
!716 = distinct !{!716, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_"}
!717 = distinct !{!717, !716, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_: argument 0"}
!718 = distinct !{!718, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_"}
!719 = distinct !{!719, !718, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_: argument 0"}
!720 = distinct !{!720, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_"}
!721 = distinct !{!721, !720, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_: argument 0"}
!722 = distinct !{!722, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls"}
!723 = distinct !{!723, !722, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls: argument 0"}
!724 = distinct !{!724, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls"}
!725 = distinct !{!725, !724, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls: argument 0"}
!726 = distinct !{!726, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls"}
!727 = distinct !{!727, !726, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls: argument 0"}
!728 = distinct !{!728, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23NewSessionTicketPayloadEEB13_"}
!729 = distinct !{!729, !728, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23NewSessionTicketPayloadEEB13_: argument 0"}
!730 = distinct !{!730, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23NewSessionTicketPayloadEBH_"}
!731 = distinct !{!731, !730, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23NewSessionTicketPayloadEBH_: argument 0"}
!732 = distinct !{!732, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16EEB1f_"}
!733 = distinct !{!733, !732, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16EEB1f_: argument 0"}
!734 = distinct !{!734, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_"}
!735 = distinct !{!735, !734, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_: argument 0"}
!736 = distinct !{!736, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23NewSessionTicketPayloadEEB13_"}
!737 = distinct !{!737, !736, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23NewSessionTicketPayloadEEB13_: argument 0"}
!738 = distinct !{!738, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23NewSessionTicketPayloadEBH_"}
!739 = distinct !{!739, !738, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23NewSessionTicketPayloadEBH_: argument 0"}
!740 = distinct !{!740, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16EEB1f_"}
!741 = distinct !{!741, !740, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16EEB1f_: argument 0"}
!742 = distinct !{!742, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_"}
!743 = distinct !{!743, !742, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_: argument 0"}
!744 = !{!715}
!745 = !{!717}
!746 = !{!717, !715}
!747 = !{!719}
!748 = !{!721}
!749 = !{!723}
!750 = !{!727, !725, !723}
!751 = !{!729}
!752 = !{!735, !733, !731, !729}
!753 = !{!737}
!754 = !{!743, !741, !739, !737}
!755 = distinct !{!755, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_"}
!756 = distinct !{!756, !755, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_: argument 0"}
!757 = !{!756}
!758 = distinct !{!758, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls"}
!759 = distinct !{!759, !758, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls: argument 0"}
!760 = distinct !{!760, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls"}
!761 = distinct !{!761, !760, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls: argument 0"}
!762 = distinct !{!762, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls"}
!763 = distinct !{!763, !762, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls: argument 0"}
!764 = distinct !{!764, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6client5handy5cache10ServerDataEBJ_"}
!765 = distinct !{!765, !764, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6client5handy5cache10ServerDataEBJ_: argument 0"}
!766 = distinct !{!766, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_"}
!767 = distinct !{!767, !766, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_: argument 0"}
!768 = !{!759}
!769 = !{!763, !761, !759}
!770 = !{!767, !765}
!771 = distinct !{!771, i1 true, !"_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE7reverseCs7ZUl82OSlxp_6rustls"}
!772 = distinct !{!772, !771, !"_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE7reverseCs7ZUl82OSlxp_6rustls: argument 0"}
!773 = distinct !{!773, i1 true, !"_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapTmjEECs7ZUl82OSlxp_6rustls"}
!774 = distinct !{!774, !773, !"_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapTmjEECs7ZUl82OSlxp_6rustls: argument 0"}
!775 = distinct !{!775, !773, !"_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapTmjEECs7ZUl82OSlxp_6rustls: argument 1"}
!776 = !{!774, !772}
!777 = !{!774, !775, !772}
!778 = !{!775, !772}
!779 = !{!774}
!780 = !{!775}
!781 = distinct !{!781, i1 true, !"_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapTmmEECs7ZUl82OSlxp_6rustls"}
!782 = distinct !{!782, !781, !"_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapTmmEECs7ZUl82OSlxp_6rustls: argument 0"}
!783 = distinct !{!783, !781, !"_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapTmmEECs7ZUl82OSlxp_6rustls: argument 1"}
!784 = distinct !{!784, i1 true, !"_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE7reverseCs7ZUl82OSlxp_6rustls"}
!785 = distinct !{!785, !784, !"_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE7reverseCs7ZUl82OSlxp_6rustls: argument 0"}
!786 = distinct !{!786, !792, !793}
!787 = distinct !{!787, !792}
!788 = !{!782}
!789 = !{!783}
!790 = !{!782, !785}
!791 = !{!783, !785}
!792 = !{!"llvm.loop.isvectorized", i32 1}
!793 = !{!"llvm.loop.unroll.runtime.disable"}
!794 = distinct !{!794, i1 true, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot12choose_pivotTmjENvYB15_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls"}
!795 = distinct !{!795, !794, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot12choose_pivotTmjENvYB15_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls: argument 0"}
!796 = distinct !{!796, i1 true, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort9partitionTmjENvYB17_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls"}
!797 = distinct !{!797, !796, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort9partitionTmjENvYB17_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls: argument 0"}
!798 = distinct !{!798, i1 true, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmjENvYB1x_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls"}
!799 = distinct !{!799, !798, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmjENvYB1x_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls: argument 0"}
!800 = distinct !{!800, !798, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmjENvYB1x_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls: argument 1"}
!801 = distinct !{!801, i1 true, !"_RNCINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmjENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7ZUl82OSlxp_6rustls"}
!802 = distinct !{!802, !801, !"_RNCINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmjENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7ZUl82OSlxp_6rustls: argument 0"}
!803 = distinct !{!803, i1 true, !"_RNCINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmjENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7ZUl82OSlxp_6rustls"}
!804 = distinct !{!804, !803, !"_RNCINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmjENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7ZUl82OSlxp_6rustls: argument 0"}
!805 = distinct !{!805, i1 true, !"_RNCINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmjENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7ZUl82OSlxp_6rustls"}
!806 = distinct !{!806, !805, !"_RNCINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmjENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7ZUl82OSlxp_6rustls: argument 0"}
!807 = distinct !{!807, i1 true, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort9partitionTmjENCINvB2_9quicksortB17_NvYB17_NtNtBa_3cmp10PartialOrd2ltE0ECs7ZUl82OSlxp_6rustls"}
!808 = distinct !{!808, !807, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort9partitionTmjENCINvB2_9quicksortB17_NvYB17_NtNtBa_3cmp10PartialOrd2ltE0ECs7ZUl82OSlxp_6rustls: argument 0"}
!809 = distinct !{!809, i1 true, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmjENCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECs7ZUl82OSlxp_6rustls"}
!810 = distinct !{!810, !809, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmjENCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECs7ZUl82OSlxp_6rustls: argument 0"}
!811 = distinct !{!811, !809, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmjENCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECs7ZUl82OSlxp_6rustls: argument 1"}
!812 = distinct !{!812, i1 true, !"_RNCINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmjENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs7ZUl82OSlxp_6rustls"}
!813 = distinct !{!813, !812, !"_RNCINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmjENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs7ZUl82OSlxp_6rustls: argument 0"}
!814 = distinct !{!814, i1 true, !"_RNCINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmjENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs7ZUl82OSlxp_6rustls"}
!815 = distinct !{!815, !814, !"_RNCINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmjENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs7ZUl82OSlxp_6rustls: argument 0"}
!816 = distinct !{!816, i1 true, !"_RNCINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmjENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs7ZUl82OSlxp_6rustls"}
!817 = distinct !{!817, !816, !"_RNCINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmjENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs7ZUl82OSlxp_6rustls: argument 0"}
!818 = !{!795}
!819 = !{!797}
!820 = !{!799}
!821 = !{!800}
!822 = !{!799, !800, !797}
!823 = !{!799, !797}
!824 = !{!800, !797}
!825 = !{!802, !800}
!826 = !{!802}
!827 = !{!804}
!828 = !{!806}
!829 = !{!808}
!830 = !{!810}
!831 = !{!811}
!832 = !{!810, !811, !808}
!833 = !{!810, !808}
!834 = !{!811, !808}
!835 = !{!813, !811}
!836 = !{!813}
!837 = !{!815}
!838 = !{!817}
!839 = distinct !{!839, i1 true, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot12choose_pivotTmmENvYB15_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls"}
!840 = distinct !{!840, !839, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot12choose_pivotTmmENvYB15_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls: argument 0"}
!841 = distinct !{!841, i1 true, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort9partitionTmmENvYB17_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls"}
!842 = distinct !{!842, !841, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort9partitionTmmENvYB17_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls: argument 0"}
!843 = distinct !{!843, i1 true, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmmENvYB1x_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls"}
!844 = distinct !{!844, !843, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmmENvYB1x_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls: argument 0"}
!845 = distinct !{!845, !843, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmmENvYB1x_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls: argument 1"}
!846 = distinct !{!846, i1 true, !"_RNCINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmmENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7ZUl82OSlxp_6rustls"}
!847 = distinct !{!847, !846, !"_RNCINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmmENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7ZUl82OSlxp_6rustls: argument 0"}
!848 = distinct !{!848, i1 true, !"_RNCINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmmENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7ZUl82OSlxp_6rustls"}
!849 = distinct !{!849, !848, !"_RNCINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmmENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7ZUl82OSlxp_6rustls: argument 0"}
!850 = distinct !{!850, i1 true, !"_RNCINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmmENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7ZUl82OSlxp_6rustls"}
!851 = distinct !{!851, !850, !"_RNCINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmmENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7ZUl82OSlxp_6rustls: argument 0"}
!852 = distinct !{!852, i1 true, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort9partitionTmmENCINvB2_9quicksortB17_NvYB17_NtNtBa_3cmp10PartialOrd2ltE0ECs7ZUl82OSlxp_6rustls"}
!853 = distinct !{!853, !852, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort9partitionTmmENCINvB2_9quicksortB17_NvYB17_NtNtBa_3cmp10PartialOrd2ltE0ECs7ZUl82OSlxp_6rustls: argument 0"}
!854 = distinct !{!854, i1 true, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmmENCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECs7ZUl82OSlxp_6rustls"}
!855 = distinct !{!855, !854, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmmENCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECs7ZUl82OSlxp_6rustls: argument 0"}
!856 = distinct !{!856, !854, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmmENCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECs7ZUl82OSlxp_6rustls: argument 1"}
!857 = distinct !{!857, i1 true, !"_RNCINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmmENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs7ZUl82OSlxp_6rustls"}
!858 = distinct !{!858, !857, !"_RNCINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmmENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs7ZUl82OSlxp_6rustls: argument 0"}
!859 = distinct !{!859, i1 true, !"_RNCINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmmENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs7ZUl82OSlxp_6rustls"}
!860 = distinct !{!860, !859, !"_RNCINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmmENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs7ZUl82OSlxp_6rustls: argument 0"}
!861 = distinct !{!861, i1 true, !"_RNCINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmmENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs7ZUl82OSlxp_6rustls"}
!862 = distinct !{!862, !861, !"_RNCINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmmENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs7ZUl82OSlxp_6rustls: argument 0"}
!863 = !{!840}
!864 = !{!842}
!865 = !{!844}
!866 = !{!845}
!867 = !{!844, !842}
!868 = !{!844, !845, !842}
!869 = !{!845, !842}
!870 = !{!847, !845}
!871 = !{!847}
!872 = !{!849}
!873 = !{!851}
!874 = !{!853}
!875 = !{!855}
!876 = !{!856}
!877 = !{!855, !853}
!878 = !{!855, !856, !853}
!879 = !{!856, !853}
!880 = !{!858, !856}
!881 = !{!858}
!882 = !{!860}
!883 = !{!862}
!884 = distinct !{null}
!885 = distinct !{!885, i1 true, !"_RNvXs5_NtNtCs7ZUl82OSlxp_6rustls4msgs12ffdhe_groupsNtB5_10FfdheGroupNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq"}
!886 = distinct !{!886, !885, !"_RNvXs5_NtNtCs7ZUl82OSlxp_6rustls4msgs12ffdhe_groupsNtB5_10FfdheGroupNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq: argument 0"}
!887 = distinct !{!887, !885, !"_RNvXs5_NtNtCs7ZUl82OSlxp_6rustls4msgs12ffdhe_groupsNtB5_10FfdheGroupNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq: argument 1"}
!888 = !{!886}
!889 = !{!886, !887}
!890 = distinct !{!890, i1 true, !"_RNvNtNtNtCsj6eKBz9Db1c_4core9core_arch3x864sse215__mm_loadu_si128"}
!891 = distinct !{!891, !890, !"_RNvNtNtNtCsj6eKBz9Db1c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!892 = !{!891}
!893 = distinct !{!893, i1 true, !"_RNvNtNtNtCsj6eKBz9Db1c_4core9core_arch3x864sse215__mm_loadu_si128"}
!894 = distinct !{!894, !893, !"_RNvNtNtNtCsj6eKBz9Db1c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!895 = !{!894}
!896 = distinct !{!896, i1 true, !"_RNvNtNtNtCsj6eKBz9Db1c_4core9core_arch3x864sse215__mm_loadu_si128"}
!897 = distinct !{!897, !896, !"_RNvNtNtNtCsj6eKBz9Db1c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!898 = !{!897}
!899 = distinct !{!899, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr10swap_chunkKj4_ECs7ZUl82OSlxp_6rustls"}
!900 = distinct !{!900, !899, !"_RINvNtCsj6eKBz9Db1c_4core3ptr10swap_chunkKj4_ECs7ZUl82OSlxp_6rustls: argument 0"}
!901 = distinct !{!901, !899, !"_RINvNtCsj6eKBz9Db1c_4core3ptr10swap_chunkKj4_ECs7ZUl82OSlxp_6rustls: argument 1"}
!902 = distinct !{!902, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr10swap_chunkKj2_ECs7ZUl82OSlxp_6rustls"}
!903 = distinct !{!903, !902, !"_RINvNtCsj6eKBz9Db1c_4core3ptr10swap_chunkKj2_ECs7ZUl82OSlxp_6rustls: argument 0"}
!904 = distinct !{!904, !902, !"_RINvNtCsj6eKBz9Db1c_4core3ptr10swap_chunkKj2_ECs7ZUl82OSlxp_6rustls: argument 1"}
!905 = distinct !{!905, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr10swap_chunkKj1_ECs7ZUl82OSlxp_6rustls"}
!906 = distinct !{!906, !905, !"_RINvNtCsj6eKBz9Db1c_4core3ptr10swap_chunkKj1_ECs7ZUl82OSlxp_6rustls: argument 0"}
!907 = distinct !{!907, !905, !"_RINvNtCsj6eKBz9Db1c_4core3ptr10swap_chunkKj1_ECs7ZUl82OSlxp_6rustls: argument 1"}
!908 = !{!900}
!909 = !{!901}
!910 = !{!903}
!911 = !{!904}
!912 = !{!906}
!913 = !{!907}
!914 = distinct !{!914, i1 true, !"_RNvMs_NtCs7ZUl82OSlxp_6rustls7hash_hsNtB4_13HandshakeHash18take_handshake_buf"}
!915 = distinct !{!915, !914, !"_RNvMs_NtCs7ZUl82OSlxp_6rustls7hash_hsNtB4_13HandshakeHash18take_handshake_buf: argument 0"}
!916 = distinct !{!916, !914, !"_RNvMs_NtCs7ZUl82OSlxp_6rustls7hash_hsNtB4_13HandshakeHash18take_handshake_buf: argument 1"}
!917 = distinct !{!917, i1 true, !"_RNCNvNtNtCs7ZUl82OSlxp_6rustls6client5tls1215emit_certverify0B7_"}
!918 = distinct !{!918, !917, !"_RNCNvNtNtCs7ZUl82OSlxp_6rustls6client5tls1215emit_certverify0B7_: argument 0"}
!919 = !{!915}
!920 = !{!915, !916}
!921 = !{!916}
!922 = !{!918}
!923 = distinct !{!923, i1 true, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtCs7ZUl82OSlxp_6rustls6client5tls1214ExpectServerKxE3newBK_"}
!924 = distinct !{!924, !923, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtCs7ZUl82OSlxp_6rustls6client5tls1214ExpectServerKxE3newBK_: argument 0"}
!925 = distinct !{!925, i1 true, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtCs7ZUl82OSlxp_6rustls6client5tls1233ExpectCertificateStatusOrServerKxE3newBK_"}
!926 = distinct !{!926, !925, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtCs7ZUl82OSlxp_6rustls6client5tls1233ExpectCertificateStatusOrServerKxE3newBK_: argument 0"}
!927 = distinct !{!927, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEBH_"}
!928 = distinct !{!928, !927, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEBH_: argument 0"}
!929 = distinct !{!929, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_"}
!930 = distinct !{!930, !929, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_: argument 0"}
!931 = distinct !{!931, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_"}
!932 = distinct !{!932, !931, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_: argument 0"}
!933 = distinct !{!933, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_"}
!934 = distinct !{!934, !933, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_: argument 0"}
!935 = !{!924}
!936 = !{!926}
!937 = !{!928}
!938 = !{!930}
!939 = !{!932}
!940 = !{!932, !930}
!941 = !{!934}
!942 = distinct !{!942, i1 true, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtCs7ZUl82OSlxp_6rustls6client5tls1223ExpectCertificateStatusE3newBK_"}
!943 = distinct !{!943, !942, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtCs7ZUl82OSlxp_6rustls6client5tls1223ExpectCertificateStatusE3newBK_: argument 0"}
!944 = distinct !{!944, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_"}
!945 = distinct !{!945, !944, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_: argument 0"}
!946 = distinct !{!946, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_"}
!947 = distinct !{!947, !946, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_: argument 0"}
!948 = distinct !{!948, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_"}
!949 = distinct !{!949, !948, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_: argument 0"}
!950 = !{!943}
!951 = !{!945}
!952 = !{!949, !947}
!953 = distinct !{!953, i1 true, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtCs7ZUl82OSlxp_6rustls6client5tls1214ExpectServerKxE3newBK_"}
!954 = distinct !{!954, !953, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtCs7ZUl82OSlxp_6rustls6client5tls1214ExpectServerKxE3newBK_: argument 0"}
!955 = distinct !{!955, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEBH_"}
!956 = distinct !{!956, !955, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEBH_: argument 0"}
!957 = distinct !{!957, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_"}
!958 = distinct !{!958, !957, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_: argument 0"}
!959 = distinct !{!959, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_"}
!960 = distinct !{!960, !959, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_: argument 0"}
!961 = distinct !{!961, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_"}
!962 = distinct !{!962, !961, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_: argument 0"}
!963 = !{!954}
!964 = !{!956}
!965 = !{!958}
!966 = !{!960}
!967 = !{!960, !958}
!968 = !{!962}
!969 = distinct !{!969, i1 true, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtCs7ZUl82OSlxp_6rustls6client5tls1214ExpectServerKxE3newBK_"}
!970 = distinct !{!970, !969, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtCs7ZUl82OSlxp_6rustls6client5tls1214ExpectServerKxE3newBK_: argument 0"}
!971 = distinct !{!971, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_"}
!972 = distinct !{!972, !971, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_: argument 0"}
!973 = distinct !{!973, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_"}
!974 = distinct !{!974, !973, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_: argument 0"}
!975 = distinct !{!975, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_"}
!976 = distinct !{!976, !975, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_: argument 0"}
!977 = !{!970}
!978 = !{!972}
!979 = !{!976, !974}
!980 = distinct !{!980, i1 true, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtCs7ZUl82OSlxp_6rustls6client5tls1225ExpectServerDoneOrCertReqE3newBK_"}
!981 = distinct !{!981, !980, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtCs7ZUl82OSlxp_6rustls6client5tls1225ExpectServerDoneOrCertReqE3newBK_: argument 0"}
!982 = distinct !{!982, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_"}
!983 = distinct !{!983, !982, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_: argument 0"}
!984 = distinct !{!984, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_"}
!985 = distinct !{!985, !984, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_: argument 0"}
!986 = distinct !{!986, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_"}
!987 = distinct !{!987, !986, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_: argument 0"}
end_hunk_1
