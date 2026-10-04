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
  %i.ae = load i32, ptr %i.ac, align 8, !alias.scope !794, !noalias !795, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !794, !noalias !795, !noundef !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !alias.scope !796
  store i32 %i.ae, ptr %i.ad, align 8, !alias.scope !797, !noalias !798
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !alias.scope !797, !noalias !798
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE7reverseCs7ZUl82OSlxp_6rustls.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE7reverseCs7ZUl82OSlxp_6rustls.exit: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.i.i.epil.preheader, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE7reverseCs7ZUl82OSlxp_6rustls.exit.loopexit.unr-lcssa, %bb.a, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTmjENvYB12_NtNtB8_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.thread, %bb.e
  ret void

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTmjENvYB12_NtNtB8_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.thread
  %i.ai = lshr i64 %1, 1                          ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !798)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !795)
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
  %i.ao = load i32, ptr %i.am, align 8, !alias.scope !794, !noalias !795, !noundef !4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !794, !noalias !795, !noundef !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !alias.scope !796
  store i32 %i.ao, ptr %i.an, align 8, !alias.scope !797, !noalias !798
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !alias.scope !797, !noalias !798
  %i.as = xor i64 %.sroa.0.016.i.i, -2
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %i.av = getelementptr [16 x i8], ptr %i.aj, i64 %i.as ; 3 uses
  %i.aw = load i32, ptr %i.au, align 8, !alias.scope !794, !noalias !795, !noundef !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !794, !noalias !795, !noundef !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 16, i1 false), !alias.scope !796
  store i32 %i.aw, ptr %i.av, align 8, !alias.scope !797, !noalias !798
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !alias.scope !797, !noalias !798
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !806)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !807)
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
  %wide.vec = load <4 x i32>, ptr %i.ad, align 4, !alias.scope !808, !noalias !807
  %i.af = getelementptr i8, ptr %i.ae, i64 -8
  %wide.load = load <2 x i64>, ptr %i.af, align 4, !alias.scope !809, !noalias !806
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.ad, align 4, !alias.scope !808, !noalias !807
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %interleaved.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec, ptr %i.ag, align 4, !alias.scope !809, !noalias !806
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !804

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
  %13 = load i64, ptr %12, align 4, !alias.scope !809, !noalias !806
  %14 = load <2 x i32>, ptr %11, align 4, !alias.scope !808, !noalias !807
  store i64 %13, ptr %11, align 4, !alias.scope !808, !noalias !807
  store <2 x i32> %14, ptr %12, align 4, !alias.scope !809, !noalias !806
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
  %19 = load i64, ptr %18, align 4, !alias.scope !809, !noalias !806
  %20 = load <2 x i32>, ptr %17, align 4, !alias.scope !808, !noalias !807
  store i64 %19, ptr %17, align 4, !alias.scope !808, !noalias !807
  store <2 x i32> %20, ptr %18, align 4, !alias.scope !809, !noalias !806
  %21 = sub i64 -2, %.sroa.0.016.i.i
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.016.i.i
  %22 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.ak = getelementptr [8 x i8], ptr %i.ab, i64 %21 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 4, !alias.scope !809, !noalias !806
  %i.am = load <2 x i32>, ptr %22, align 4, !alias.scope !808, !noalias !807
  store i64 %i.al, ptr %22, align 4, !alias.scope !808, !noalias !807
  store <2 x i32> %i.am, ptr %i.ak, align 4, !alias.scope !809, !noalias !806
  %i.an = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.an, %i.aa
  br i1 %exitcond.not.i.i.1, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE7reverseCs7ZUl82OSlxp_6rustls.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE12split_at_mutCs7ZUl82OSlxp_6rustls.exit11.i.i, !llvm.loop !805
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
!605 = !{!598, !596, !594}
!606 = distinct !{!606, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_"}
!607 = distinct !{!607, !606, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_: argument 0"}
!608 = distinct !{!608, i1 false, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_"}
!609 = distinct !{!609, !608, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_: argument 0"}
!610 = distinct !{!610, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_"}
!611 = distinct !{!611, !610, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_: argument 0"}
!612 = distinct !{!612, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_"}
!613 = distinct !{!613, !612, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_: argument 0"}
!614 = distinct !{!614, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls"}
!615 = distinct !{!615, !614, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls: argument 0"}
!616 = distinct !{!616, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls"}
!617 = distinct !{!617, !616, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls: argument 0"}
!618 = distinct !{!618, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls"}
!619 = distinct !{!619, !618, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls: argument 0"}
!620 = !{!607}
!621 = !{!609}
!622 = !{!609, !607}
!623 = !{!611}
!624 = !{!613}
!625 = !{!615}
!626 = !{!619, !617, !615}
!627 = distinct !{!627, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_"}
!628 = distinct !{!628, !627, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_: argument 0"}
!629 = distinct !{!629, i1 false, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_"}
!630 = distinct !{!630, !629, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_: argument 0"}
!631 = distinct !{!631, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_"}
!632 = distinct !{!632, !631, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_: argument 0"}
!633 = distinct !{!633, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_"}
!634 = distinct !{!634, !633, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_: argument 0"}
!635 = distinct !{!635, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls"}
!636 = distinct !{!636, !635, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls: argument 0"}
!637 = distinct !{!637, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls"}
!638 = distinct !{!638, !637, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls: argument 0"}
!639 = distinct !{!639, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls"}
!640 = distinct !{!640, !639, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls: argument 0"}
!641 = !{!628}
!642 = !{!630}
!643 = !{!630, !628}
!644 = !{!632}
!645 = !{!634}
!646 = !{!636}
!647 = !{!640, !638, !636}
!648 = distinct !{!648, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_"}
!649 = distinct !{!649, !648, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_: argument 0"}
!650 = distinct !{!650, i1 false, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_"}
!651 = distinct !{!651, !650, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_: argument 0"}
!652 = distinct !{!652, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_"}
!653 = distinct !{!653, !652, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_: argument 0"}
!654 = distinct !{!654, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_"}
!655 = distinct !{!655, !654, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_: argument 0"}
!656 = distinct !{!656, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls"}
!657 = distinct !{!657, !656, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls: argument 0"}
!658 = distinct !{!658, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls"}
!659 = distinct !{!659, !658, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls: argument 0"}
!660 = distinct !{!660, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls"}
!661 = distinct !{!661, !660, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls: argument 0"}
!662 = !{!649}
!663 = !{!651}
!664 = !{!651, !649}
!665 = !{!653}
!666 = !{!655}
!667 = !{!657}
!668 = !{!661, !659, !657}
!669 = distinct !{!669, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_"}
!670 = distinct !{!670, !669, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_: argument 0"}
!671 = distinct !{!671, i1 false, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_"}
!672 = distinct !{!672, !671, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_: argument 0"}
!673 = distinct !{!673, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_"}
!674 = distinct !{!674, !673, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_: argument 0"}
!675 = distinct !{!675, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_"}
!676 = distinct !{!676, !675, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_: argument 0"}
!677 = distinct !{!677, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls"}
!678 = distinct !{!678, !677, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls: argument 0"}
!679 = distinct !{!679, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls"}
!680 = distinct !{!680, !679, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls: argument 0"}
!681 = distinct !{!681, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls"}
!682 = distinct !{!682, !681, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls: argument 0"}
!683 = !{!670}
!684 = !{!672}
!685 = !{!672, !670}
!686 = !{!674}
!687 = !{!676}
!688 = !{!678}
!689 = !{!682, !680, !678}
!690 = distinct !{!690, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_"}
!691 = distinct !{!691, !690, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_: argument 0"}
!692 = distinct !{!692, i1 false, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_"}
!693 = distinct !{!693, !692, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_: argument 0"}
!694 = distinct !{!694, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_"}
!695 = distinct !{!695, !694, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_: argument 0"}
!696 = distinct !{!696, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_"}
!697 = distinct !{!697, !696, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_: argument 0"}
!698 = distinct !{!698, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls"}
!699 = distinct !{!699, !698, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls: argument 0"}
!700 = distinct !{!700, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls"}
!701 = distinct !{!701, !700, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls: argument 0"}
!702 = distinct !{!702, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls"}
!703 = distinct !{!703, !702, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls: argument 0"}
!704 = !{!691}
!705 = !{!693}
!706 = !{!693, !691}
!707 = !{!695}
!708 = !{!697}
!709 = !{!699}
!710 = !{!703, !701, !699}
!711 = distinct !{!711, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_"}
!712 = distinct !{!712, !711, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_: argument 0"}
!713 = distinct !{!713, i1 false, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_"}
!714 = distinct !{!714, !713, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_: argument 0"}
!715 = distinct !{!715, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_"}
!716 = distinct !{!716, !715, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_: argument 0"}
!717 = distinct !{!717, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_"}
!718 = distinct !{!718, !717, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_: argument 0"}
!719 = distinct !{!719, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls"}
!720 = distinct !{!720, !719, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls: argument 0"}
!721 = distinct !{!721, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls"}
!722 = distinct !{!722, !721, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls: argument 0"}
!723 = distinct !{!723, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls"}
!724 = distinct !{!724, !723, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls: argument 0"}
!725 = !{!712}
!726 = !{!714}
!727 = !{!714, !712}
!728 = !{!716}
!729 = !{!718}
!730 = !{!720}
!731 = !{!724, !722, !720}
!732 = distinct !{!732, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_"}
!733 = distinct !{!733, !732, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_: argument 0"}
!734 = distinct !{!734, i1 false, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_"}
!735 = distinct !{!735, !734, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_: argument 0"}
!736 = distinct !{!736, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_"}
!737 = distinct !{!737, !736, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_: argument 0"}
!738 = distinct !{!738, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_"}
!739 = distinct !{!739, !738, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_: argument 0"}
!740 = distinct !{!740, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls"}
!741 = distinct !{!741, !740, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls: argument 0"}
!742 = distinct !{!742, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls"}
!743 = distinct !{!743, !742, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls: argument 0"}
!744 = distinct !{!744, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls"}
!745 = distinct !{!745, !744, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls: argument 0"}
!746 = distinct !{!746, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23NewSessionTicketPayloadEEB13_"}
!747 = distinct !{!747, !746, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23NewSessionTicketPayloadEEB13_: argument 0"}
!748 = distinct !{!748, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23NewSessionTicketPayloadEBH_"}
!749 = distinct !{!749, !748, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23NewSessionTicketPayloadEBH_: argument 0"}
!750 = distinct !{!750, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16EEB1f_"}
!751 = distinct !{!751, !750, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16EEB1f_: argument 0"}
!752 = distinct !{!752, i1 false, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_"}
!753 = distinct !{!753, !752, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_: argument 0"}
!754 = distinct !{!754, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23NewSessionTicketPayloadEEB13_"}
!755 = distinct !{!755, !754, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23NewSessionTicketPayloadEEB13_: argument 0"}
!756 = distinct !{!756, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23NewSessionTicketPayloadEBH_"}
!757 = distinct !{!757, !756, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23NewSessionTicketPayloadEBH_: argument 0"}
!758 = distinct !{!758, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16EEB1f_"}
!759 = distinct !{!759, !758, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16EEB1f_: argument 0"}
!760 = distinct !{!760, i1 false, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_"}
!761 = distinct !{!761, !760, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_: argument 0"}
!762 = !{!733}
!763 = !{!735}
!764 = !{!735, !733}
!765 = !{!737}
!766 = !{!739}
!767 = !{!741}
!768 = !{!745, !743, !741}
!769 = !{!747}
!770 = !{!753, !751, !749, !747}
!771 = !{!755}
!772 = !{!761, !759, !757, !755}
!773 = distinct !{!773, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_"}
!774 = distinct !{!774, !773, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_: argument 0"}
!775 = !{!774}
!776 = distinct !{!776, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls"}
!777 = distinct !{!777, !776, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls: argument 0"}
!778 = distinct !{!778, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls"}
!779 = distinct !{!779, !778, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls: argument 0"}
!780 = distinct !{!780, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls"}
!781 = distinct !{!781, !780, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls: argument 0"}
!782 = distinct !{!782, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6client5handy5cache10ServerDataEBJ_"}
!783 = distinct !{!783, !782, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6client5handy5cache10ServerDataEBJ_: argument 0"}
!784 = distinct !{!784, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_"}
!785 = distinct !{!785, !784, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_: argument 0"}
!786 = !{!777}
!787 = !{!781, !779, !777}
!788 = !{!785, !783}
!789 = distinct !{!789, i1 false, !"_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE7reverseCs7ZUl82OSlxp_6rustls"}
!790 = distinct !{!790, !789, !"_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE7reverseCs7ZUl82OSlxp_6rustls: argument 0"}
!791 = distinct !{!791, i1 false, !"_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapTmjEECs7ZUl82OSlxp_6rustls"}
!792 = distinct !{!792, !791, !"_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapTmjEECs7ZUl82OSlxp_6rustls: argument 0"}
!793 = distinct !{!793, !791, !"_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapTmjEECs7ZUl82OSlxp_6rustls: argument 1"}
!794 = !{!792, !790}
!795 = !{!793}
!796 = !{!792, !793, !790}
!797 = !{!793, !790}
!798 = !{!792}
!799 = distinct !{!799, i1 false, !"_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapTmmEECs7ZUl82OSlxp_6rustls"}
!800 = distinct !{!800, !799, !"_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapTmmEECs7ZUl82OSlxp_6rustls: argument 0"}
!801 = distinct !{!801, !799, !"_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapTmmEECs7ZUl82OSlxp_6rustls: argument 1"}
!802 = distinct !{!802, i1 false, !"_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE7reverseCs7ZUl82OSlxp_6rustls"}
!803 = distinct !{!803, !802, !"_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE7reverseCs7ZUl82OSlxp_6rustls: argument 0"}
!804 = distinct !{!804, !810, !811}
!805 = distinct !{!805, !810}
!806 = !{!800}
!807 = !{!801}
!808 = !{!800, !803}
!809 = !{!801, !803}
!810 = !{!"llvm.loop.isvectorized", i32 1}
!811 = !{!"llvm.loop.unroll.runtime.disable"}
!812 = distinct !{!812, i1 false, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot12choose_pivotTmjENvYB15_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls"}
!813 = distinct !{!813, !812, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot12choose_pivotTmjENvYB15_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls: argument 0"}
!814 = distinct !{!814, !812, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot12choose_pivotTmjENvYB15_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls: argument 1"}
!815 = distinct !{!815, i1 false, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort9partitionTmjENvYB17_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls"}
!816 = distinct !{!816, !815, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort9partitionTmjENvYB17_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls: argument 0"}
!817 = distinct !{!817, i1 false, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmjENvYB1x_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls"}
!818 = distinct !{!818, !817, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmjENvYB1x_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls: argument 0"}
!819 = distinct !{!819, !817, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmjENvYB1x_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls: argument 1"}
!820 = distinct !{!820, i1 false, !"_RNCINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmjENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7ZUl82OSlxp_6rustls"}
!821 = distinct !{!821, !820, !"_RNCINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmjENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7ZUl82OSlxp_6rustls: argument 0"}
!822 = distinct !{!822, i1 false, !"_RNCINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmjENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7ZUl82OSlxp_6rustls"}
!823 = distinct !{!823, !822, !"_RNCINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmjENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7ZUl82OSlxp_6rustls: argument 0"}
!824 = distinct !{!824, i1 false, !"_RNCINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmjENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7ZUl82OSlxp_6rustls"}
!825 = distinct !{!825, !824, !"_RNCINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmjENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7ZUl82OSlxp_6rustls: argument 0"}
!826 = distinct !{!826, i1 false, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort9partitionTmjENCINvB2_9quicksortB17_NvYB17_NtNtBa_3cmp10PartialOrd2ltE0ECs7ZUl82OSlxp_6rustls"}
!827 = distinct !{!827, !826, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort9partitionTmjENCINvB2_9quicksortB17_NvYB17_NtNtBa_3cmp10PartialOrd2ltE0ECs7ZUl82OSlxp_6rustls: argument 0"}
!828 = distinct !{!828, i1 false, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmjENCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECs7ZUl82OSlxp_6rustls"}
!829 = distinct !{!829, !828, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmjENCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECs7ZUl82OSlxp_6rustls: argument 0"}
!830 = distinct !{!830, !828, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmjENCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECs7ZUl82OSlxp_6rustls: argument 1"}
!831 = distinct !{!831, i1 false, !"_RNCINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmjENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs7ZUl82OSlxp_6rustls"}
!832 = distinct !{!832, !831, !"_RNCINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmjENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs7ZUl82OSlxp_6rustls: argument 0"}
!833 = distinct !{!833, i1 false, !"_RNCINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmjENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs7ZUl82OSlxp_6rustls"}
!834 = distinct !{!834, !833, !"_RNCINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmjENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs7ZUl82OSlxp_6rustls: argument 0"}
!835 = distinct !{!835, i1 false, !"_RNCINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmjENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs7ZUl82OSlxp_6rustls"}
!836 = distinct !{!836, !835, !"_RNCINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmjENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs7ZUl82OSlxp_6rustls: argument 0"}
!837 = !{!813}
!838 = !{!814}
!839 = !{!816}
!840 = !{!818}
!841 = !{!819}
!842 = !{!818, !819, !816}
!843 = !{!818, !816}
!844 = !{!819, !816}
!845 = !{!821, !819}
!846 = !{!823, !819}
!847 = !{!825, !819}
!848 = !{!827}
!849 = !{!829}
!850 = !{!830}
!851 = !{!829, !830, !827}
!852 = !{!829, !827}
!853 = !{!830, !827}
!854 = !{!832, !830}
!855 = !{!834, !830}
!856 = !{!836, !830}
!857 = distinct !{!857, i1 false, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot12choose_pivotTmmENvYB15_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls"}
!858 = distinct !{!858, !857, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot12choose_pivotTmmENvYB15_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls: argument 0"}
!859 = distinct !{!859, !857, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot12choose_pivotTmmENvYB15_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls: argument 1"}
!860 = distinct !{!860, i1 false, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort9partitionTmmENvYB17_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls"}
!861 = distinct !{!861, !860, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort9partitionTmmENvYB17_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls: argument 0"}
!862 = distinct !{!862, i1 false, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmmENvYB1x_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls"}
!863 = distinct !{!863, !862, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmmENvYB1x_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls: argument 0"}
!864 = distinct !{!864, !862, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmmENvYB1x_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls: argument 1"}
!865 = distinct !{!865, i1 false, !"_RNCINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmmENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7ZUl82OSlxp_6rustls"}
!866 = distinct !{!866, !865, !"_RNCINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmmENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7ZUl82OSlxp_6rustls: argument 0"}
!867 = distinct !{!867, i1 false, !"_RNCINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmmENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7ZUl82OSlxp_6rustls"}
!868 = distinct !{!868, !867, !"_RNCINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmmENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7ZUl82OSlxp_6rustls: argument 0"}
!869 = distinct !{!869, i1 false, !"_RNCINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmmENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7ZUl82OSlxp_6rustls"}
!870 = distinct !{!870, !869, !"_RNCINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmmENvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs7ZUl82OSlxp_6rustls: argument 0"}
!871 = distinct !{!871, i1 false, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort9partitionTmmENCINvB2_9quicksortB17_NvYB17_NtNtBa_3cmp10PartialOrd2ltE0ECs7ZUl82OSlxp_6rustls"}
!872 = distinct !{!872, !871, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort9partitionTmmENCINvB2_9quicksortB17_NvYB17_NtNtBa_3cmp10PartialOrd2ltE0ECs7ZUl82OSlxp_6rustls: argument 0"}
!873 = distinct !{!873, i1 false, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmmENCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECs7ZUl82OSlxp_6rustls"}
!874 = distinct !{!874, !873, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmmENCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECs7ZUl82OSlxp_6rustls: argument 0"}
!875 = distinct !{!875, !873, !"_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmmENCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECs7ZUl82OSlxp_6rustls: argument 1"}
!876 = distinct !{!876, i1 false, !"_RNCINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmmENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs7ZUl82OSlxp_6rustls"}
!877 = distinct !{!877, !876, !"_RNCINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmmENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs7ZUl82OSlxp_6rustls: argument 0"}
!878 = distinct !{!878, i1 false, !"_RNCINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmmENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs7ZUl82OSlxp_6rustls"}
!879 = distinct !{!879, !878, !"_RNCINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmmENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs7ZUl82OSlxp_6rustls: argument 0"}
!880 = distinct !{!880, i1 false, !"_RNCINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmmENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs7ZUl82OSlxp_6rustls"}
!881 = distinct !{!881, !880, !"_RNCINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmmENCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs7ZUl82OSlxp_6rustls: argument 0"}
!882 = !{!858}
!883 = !{!859}
!884 = !{!861}
!885 = !{!863}
!886 = !{!864}
!887 = !{!863, !861}
!888 = !{!863, !864, !861}
!889 = !{!864, !861}
!890 = !{!866, !864}
!891 = !{!868, !864}
!892 = !{!870, !864}
!893 = !{!872}
!894 = !{!874}
!895 = !{!875}
!896 = !{!874, !872}
!897 = !{!874, !875, !872}
!898 = !{!875, !872}
!899 = !{!877, !875}
!900 = !{!879, !875}
!901 = !{!881, !875}
!902 = distinct !{null}
!903 = distinct !{!903, i1 false, !"_RNvXs5_NtNtCs7ZUl82OSlxp_6rustls4msgs12ffdhe_groupsNtB5_10FfdheGroupNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq"}
!904 = distinct !{!904, !903, !"_RNvXs5_NtNtCs7ZUl82OSlxp_6rustls4msgs12ffdhe_groupsNtB5_10FfdheGroupNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq: argument 0"}
!905 = distinct !{!905, !903, !"_RNvXs5_NtNtCs7ZUl82OSlxp_6rustls4msgs12ffdhe_groupsNtB5_10FfdheGroupNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq: argument 1"}
!906 = !{!904}
!907 = !{!905}
!908 = !{!904, !905}
!909 = distinct !{!909, i1 false, !"_RNvNtNtNtCsj6eKBz9Db1c_4core9core_arch3x864sse215__mm_loadu_si128"}
!910 = distinct !{!910, !909, !"_RNvNtNtNtCsj6eKBz9Db1c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!911 = !{!910}
!912 = distinct !{!912, i1 false, !"_RNvNtNtNtCsj6eKBz9Db1c_4core9core_arch3x864sse215__mm_loadu_si128"}
!913 = distinct !{!913, !912, !"_RNvNtNtNtCsj6eKBz9Db1c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!914 = !{!913}
!915 = distinct !{!915, i1 false, !"_RNvNtNtNtCsj6eKBz9Db1c_4core9core_arch3x864sse215__mm_loadu_si128"}
!916 = distinct !{!916, !915, !"_RNvNtNtNtCsj6eKBz9Db1c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!917 = !{!916}
!918 = distinct !{!918, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr10swap_chunkKj4_ECs7ZUl82OSlxp_6rustls"}
!919 = distinct !{!919, !918, !"_RINvNtCsj6eKBz9Db1c_4core3ptr10swap_chunkKj4_ECs7ZUl82OSlxp_6rustls: argument 0"}
!920 = distinct !{!920, !918, !"_RINvNtCsj6eKBz9Db1c_4core3ptr10swap_chunkKj4_ECs7ZUl82OSlxp_6rustls: argument 1"}
!921 = distinct !{!921, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr10swap_chunkKj2_ECs7ZUl82OSlxp_6rustls"}
!922 = distinct !{!922, !921, !"_RINvNtCsj6eKBz9Db1c_4core3ptr10swap_chunkKj2_ECs7ZUl82OSlxp_6rustls: argument 0"}
!923 = distinct !{!923, !921, !"_RINvNtCsj6eKBz9Db1c_4core3ptr10swap_chunkKj2_ECs7ZUl82OSlxp_6rustls: argument 1"}
!924 = distinct !{!924, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr10swap_chunkKj1_ECs7ZUl82OSlxp_6rustls"}
!925 = distinct !{!925, !924, !"_RINvNtCsj6eKBz9Db1c_4core3ptr10swap_chunkKj1_ECs7ZUl82OSlxp_6rustls: argument 0"}
!926 = distinct !{!926, !924, !"_RINvNtCsj6eKBz9Db1c_4core3ptr10swap_chunkKj1_ECs7ZUl82OSlxp_6rustls: argument 1"}
!927 = !{!919}
!928 = !{!920}
!929 = !{!922}
!930 = !{!923}
!931 = !{!925}
!932 = !{!926}
!933 = distinct !{!933, i1 false, !"_RNvMs_NtCs7ZUl82OSlxp_6rustls7hash_hsNtB4_13HandshakeHash18take_handshake_buf"}
!934 = distinct !{!934, !933, !"_RNvMs_NtCs7ZUl82OSlxp_6rustls7hash_hsNtB4_13HandshakeHash18take_handshake_buf: argument 0"}
!935 = distinct !{!935, !933, !"_RNvMs_NtCs7ZUl82OSlxp_6rustls7hash_hsNtB4_13HandshakeHash18take_handshake_buf: argument 1"}
!936 = distinct !{!936, i1 false, !"_RNCNvNtNtCs7ZUl82OSlxp_6rustls6client5tls1215emit_certverify0B7_"}
!937 = distinct !{!937, !936, !"_RNCNvNtNtCs7ZUl82OSlxp_6rustls6client5tls1215emit_certverify0B7_: argument 0"}
!938 = !{!934}
!939 = !{!934, !935}
!940 = !{!935}
!941 = !{!937}
!942 = distinct !{!942, i1 false, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtCs7ZUl82OSlxp_6rustls6client5tls1214ExpectServerKxE3newBK_"}
!943 = distinct !{!943, !942, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtCs7ZUl82OSlxp_6rustls6client5tls1214ExpectServerKxE3newBK_: argument 0"}
!944 = distinct !{!944, i1 false, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtCs7ZUl82OSlxp_6rustls6client5tls1233ExpectCertificateStatusOrServerKxE3newBK_"}
!945 = distinct !{!945, !944, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtCs7ZUl82OSlxp_6rustls6client5tls1233ExpectCertificateStatusOrServerKxE3newBK_: argument 0"}
!946 = distinct !{!946, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEBH_"}
!947 = distinct !{!947, !946, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEBH_: argument 0"}
!948 = distinct !{!948, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_"}
!949 = distinct !{!949, !948, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_: argument 0"}
!950 = distinct !{!950, i1 false, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_"}
!951 = distinct !{!951, !950, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_: argument 0"}
!952 = distinct !{!952, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_"}
!953 = distinct !{!953, !952, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_: argument 0"}
!954 = !{!943}
!955 = !{!945}
!956 = !{!947}
!957 = !{!949}
!958 = !{!951}
!959 = !{!951, !949}
!960 = !{!953}
!961 = distinct !{!961, i1 false, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtCs7ZUl82OSlxp_6rustls6client5tls1223ExpectCertificateStatusE3newBK_"}
!962 = distinct !{!962, !961, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtCs7ZUl82OSlxp_6rustls6client5tls1223ExpectCertificateStatusE3newBK_: argument 0"}
!963 = distinct !{!963, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_"}
!964 = distinct !{!964, !963, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_: argument 0"}
!965 = distinct !{!965, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_"}
!966 = distinct !{!966, !965, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_: argument 0"}
!967 = distinct !{!967, i1 false, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_"}
!968 = distinct !{!968, !967, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_: argument 0"}
!969 = !{!962}
!970 = !{!964}
!971 = !{!968, !966}
!972 = distinct !{!972, i1 false, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtCs7ZUl82OSlxp_6rustls6client5tls1214ExpectServerKxE3newBK_"}
!973 = distinct !{!973, !972, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtCs7ZUl82OSlxp_6rustls6client5tls1214ExpectServerKxE3newBK_: argument 0"}
!974 = distinct !{!974, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEBH_"}
!975 = distinct !{!975, !974, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadEBH_: argument 0"}
!976 = distinct !{!976, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_"}
!977 = distinct !{!977, !976, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_: argument 0"}
!978 = distinct !{!978, i1 false, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_"}
!979 = distinct !{!979, !978, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_: argument 0"}
!980 = distinct !{!980, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_"}
!981 = distinct !{!981, !980, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_: argument 0"}
!982 = !{!973}
!983 = !{!975}
!984 = !{!977}
!985 = !{!979}
!986 = !{!979, !977}
!987 = !{!981}
!988 = distinct !{!988, i1 false, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtCs7ZUl82OSlxp_6rustls6client5tls1214ExpectServerKxE3newBK_"}
!989 = distinct !{!989, !988, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtCs7ZUl82OSlxp_6rustls6client5tls1214ExpectServerKxE3newBK_: argument 0"}
!990 = distinct !{!990, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_"}
!991 = distinct !{!991, !990, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_: argument 0"}
!992 = distinct !{!992, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_"}
!993 = distinct !{!993, !992, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_: argument 0"}
!994 = distinct !{!994, i1 false, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_"}
!995 = distinct !{!995, !994, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_: argument 0"}
!996 = !{!989}
!997 = !{!991}
!998 = !{!995, !993}
!999 = distinct !{!999, i1 false, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtCs7ZUl82OSlxp_6rustls6client5tls1225ExpectServerDoneOrCertReqE3newBK_"}
!1000 = distinct !{!1000, !999, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtCs7ZUl82OSlxp_6rustls6client5tls1225ExpectServerDoneOrCertReqE3newBK_: argument 0"}
!1001 = distinct !{!1001, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_"}
!1002 = distinct !{!1002, !1001, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEEB1f_: argument 0"}
!1003 = distinct !{!1003, i1 false, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_"}
!1004 = distinct !{!1004, !1003, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_: argument 0"}
!1005 = distinct !{!1005, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist23Tls12ClientSessionValueEEB13_"}
end_hunk_1
