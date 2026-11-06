Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_linalg-a41068480ef1e611.lance_linalg.7155760e2fbf712c-cgu.0?download=true
inline.NumInlined: 5334
inline.NumDeleted: 2333
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 147
begin_hunk_0_@_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine7f64_x8619cosine_fast_avx_fma:bb.a
  %i.ax = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i15.1, <4 x double> %.sroa.0.0.copyload.i16.1, <4 x double> %i.as)
  %i.ay = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i16.1, <4 x double> %.sroa.0.0.copyload.i16.1, <4 x double> %i.at)
  %i.az = add i64 %.sroa.053.0164, 12             ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.au
  %.sroa.0.0.copyload.i15.2 = load <4 x double>, ptr %i.ba, align 8, !noalias !8234
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.au
  %.sroa.0.0.copyload.i16.2 = load <4 x double>, ptr %i.bb, align 8, !noalias !8235 ; 3 uses
  %i.bc = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i15.2, <4 x double> %.sroa.0.0.copyload.i16.2, <4 x double> %i.ax)
  %i.bd = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i16.2, <4 x double> %.sroa.0.0.copyload.i16.2, <4 x double> %i.ay)
  %i.be = add i64 %.sroa.053.0164, 16
  %i.bf = add nsw i64 %.sroa.554.0163, -4         ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.az
  %.sroa.0.0.copyload.i15.3 = load <4 x double>, ptr %i.bg, align 8, !noalias !8234
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.az
  %.sroa.0.0.copyload.i16.3 = load <4 x double>, ptr %i.bh, align 8, !noalias !8235 ; 3 uses
  %i.bi = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i15.3, <4 x double> %.sroa.0.0.copyload.i16.3, <4 x double> %i.bc) ; 2 uses
  %i.bj = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i16.3, <4 x double> %.sroa.0.0.copyload.i16.3, <4 x double> %i.bd) ; 2 uses
  %.not.i.i7.3 = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i7.3, label %._crit_edge169, label %.lr.ph168

._crit_edge169:                                   ; preds = %.lr.ph168.prol.loopexit, %.lr.ph168, %._crit_edge
  %.sroa.041.0.lcssa = phi <4 x double> [ zeroinitializer, %._crit_edge ], [ %.lcssa200.unr, %.lr.ph168.prol.loopexit ], [ %i.bi, %.lr.ph168 ] ; 2 uses
  %.sroa.039.0.lcssa = phi <4 x double> [ zeroinitializer, %._crit_edge ], [ %.lcssa199.unr, %.lr.ph168.prol.loopexit ], [ %i.bj, %.lr.ph168 ] ; 2 uses
  %i.bk = icmp samesign ugt i64 %i.af, %4
  br i1 %i.bk, label %bb.b, label %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit, !prof !31

bb.b:                                             ; preds = %._crit_edge169
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef range(i64 0, 1152921504606846973) %i.af, i64 noundef range(i64 0, 1152921504606846976) %4, i64 noundef range(i64 0, 1152921504606846976) %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @300) #74, !noalias !8236
  unreachable

_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %._crit_edge169
  %.idx149 = shl nuw nsw i64 %i.af, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 %.idx149 ; 8 uses
  %i.bm = icmp samesign eq i64 %i.af, %4
  br i1 %i.bm, label %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit11, label %bb.c

bb.c:                                             ; preds = %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit
  %i.bn = sub nuw nsw i64 %4, %i.af               ; 3 uses
  %xtraiter212 = and i64 %4, 3                    ; 4 uses
  %i.bo = sub nsw i64 %i.af, %4
  %i.bp = icmp ugt i64 %i.bo, -4
  br i1 %i.bp, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.c
  %unroll_iter216 = sub nsw i64 %i.bn, %xtraiter212
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.new
  %.sroa.04.0.i.i.i.i = phi i64 [ 0, %.new ], [ %i.cf, %bb.d ] ; 5 uses
  %.sroa.02.0.i.i.i.i = phi double [ -0.000000e+00, %.new ], [ %i.ce, %bb.d ]
  %niter217 = phi i64 [ 0, %.new ], [ %niter217.next.3, %bb.d ]
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.sroa.04.0.i.i.i.i
  %.val.i.i.i.i = load double, ptr %i.bq, align 8, !noundef !26 ; 2 uses
  %i.br = fmul double %.val.i.i.i.i, %.val.i.i.i.i
  %i.bs = fadd double %.sroa.02.0.i.i.i.i, %i.br
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.sroa.04.0.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.val.i.i.i.i.1 = load double, ptr %i.bu, align 8, !noundef !26 ; 2 uses
  %i.bv = fmul double %.val.i.i.i.i.1, %.val.i.i.i.i.1
  %i.bw = fadd double %i.bs, %i.bv
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.sroa.04.0.i.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %.val.i.i.i.i.2 = load double, ptr %i.by, align 8, !noundef !26 ; 2 uses
  %i.bz = fmul double %.val.i.i.i.i.2, %.val.i.i.i.i.2
  %i.ca = fadd double %i.bw, %i.bz
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.sroa.04.0.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %.val.i.i.i.i.3 = load double, ptr %i.cc, align 8, !noundef !26 ; 2 uses
  %i.cd = fmul double %.val.i.i.i.i.3, %.val.i.i.i.i.3
  %i.ce = fadd double %i.ca, %i.cd                ; 3 uses
  %i.cf = add nuw i64 %.sroa.04.0.i.i.i.i, 4      ; 2 uses
  %niter217.next.3 = add i64 %niter217, 4         ; 2 uses
  %niter217.ncmp.3 = icmp eq i64 %niter217.next.3, %unroll_iter216
  br i1 %niter217.ncmp.3, label %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit11.loopexit.unr-lcssa, label %bb.d

_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit11.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod213.not = icmp eq i64 %xtraiter212, 0
  br i1 %lcmp.mod213.not, label %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit11, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit11.loopexit.unr-lcssa, %bb.c
  %.sroa.04.0.i.i.i.i.epil.init = phi i64 [ 0, %bb.c ], [ %i.cf, %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit11.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.epil.init = phi double [ -0.000000e+00, %bb.c ], [ %i.ce, %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit11.loopexit.unr-lcssa ]
  %lcmp.mod215 = icmp ne i64 %xtraiter212, 0
  tail call void @llvm.assume(i1 %lcmp.mod215)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %.sroa.04.0.i.i.i.i.epil = phi i64 [ %.sroa.04.0.i.i.i.i.epil.init, %.epil.preheader ], [ %i.cj, %bb.e ] ; 2 uses
  %.sroa.02.0.i.i.i.i.epil = phi double [ %.sroa.02.0.i.i.i.i.epil.init, %.epil.preheader ], [ %i.ci, %bb.e ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.sroa.04.0.i.i.i.i.epil
  %.val.i.i.i.i.epil = load double, ptr %i.cg, align 8, !noundef !26 ; 2 uses
  %i.ch = fmul double %.val.i.i.i.i.epil, %.val.i.i.i.i.epil
  %i.ci = fadd double %.sroa.02.0.i.i.i.i.epil, %i.ch ; 2 uses
  %i.cj = add nuw i64 %.sroa.04.0.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter212
  br i1 %epil.iter.cmp.not, label %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit11, label %bb.e, !llvm.loop !8218

_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit11: ; preds = %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit11.loopexit.unr-lcssa, %bb.e, %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit
  %.pre-phi = phi i64 [ 0, %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit ], [ %i.bn, %bb.e ], [ %i.bn, %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit11.loopexit.unr-lcssa ]
  %.sroa.0.0.i.i.i.i = phi double [ -0.000000e+00, %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit ], [ %i.ce, %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit11.loopexit.unr-lcssa ], [ %i.ci, %bb.e ]
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.af ; 3 uses
  %.idx150 = and i64 %1, 3
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.pre-phi, i64 %.idx150) ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterdEB17_ENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine7f64_x8619cosine_fast_avx_fmas_0ENtNtNtBa_6traits8iterator8Iterator3sumdEB1O_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit11
  %.val14.i.i.i.i.i = load double, ptr %i.ck, align 8, !noalias !8237, !noundef !26
  %.val15.i.i.i.i.i = load double, ptr %i.bl, align 8, !noalias !8237, !noundef !26
  %i.cl = fmul double %.val14.i.i.i.i.i, %.val15.i.i.i.i.i ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.i.i.i, 1
  br i1 %exitcond.not.i.i.i.i.i, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterdEB17_ENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine7f64_x8619cosine_fast_avx_fmas_0ENtNtNtBa_6traits8iterator8Iterator3sumdEB1O_.exit, label %.lr.ph.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.1:                               ; preds = %.lr.ph.i.i.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.val14.i.i.i.i.i.1 = load double, ptr %i.cm, align 8, !noalias !8237, !noundef !26
  %.val15.i.i.i.i.i.1 = load double, ptr %i.cn, align 8, !noalias !8237, !noundef !26
  %i.co = fmul double %.val14.i.i.i.i.i.1, %.val15.i.i.i.i.i.1
  %i.cp = fadd double %i.cl, %i.co                ; 2 uses
  %exitcond.not.i.i.i.i.i.1 = icmp eq i64 %.sroa.0.0.i.i.i, 2
  br i1 %exitcond.not.i.i.i.i.i.1, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterdEB17_ENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine7f64_x8619cosine_fast_avx_fmas_0ENtNtNtBa_6traits8iterator8Iterator3sumdEB1O_.exit, label %.lr.ph.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.2:                               ; preds = %.lr.ph.i.i.i.i.i.1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %.val14.i.i.i.i.i.2 = load double, ptr %i.cq, align 8, !noalias !8237, !noundef !26
  %.val15.i.i.i.i.i.2 = load double, ptr %i.cr, align 8, !noalias !8237, !noundef !26
  %i.cs = fmul double %.val14.i.i.i.i.i.2, %.val15.i.i.i.i.i.2
  %i.ct = fadd double %i.cp, %i.cs
  br label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterdEB17_ENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine7f64_x8619cosine_fast_avx_fmas_0ENtNtNtBa_6traits8iterator8Iterator3sumdEB1O_.exit

_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterdEB17_ENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine7f64_x8619cosine_fast_avx_fmas_0ENtNtNtBa_6traits8iterator8Iterator3sumdEB1O_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.2, %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit11
  %.sroa.0.0.lcssa.i.i.i.i.i = phi double [ -0.000000e+00, %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSdE5indexCs9JgWGBoX3PY_12lance_linalg.exit11 ], [ %i.cl, %.lr.ph.i.i.i.i.i ], [ %i.cp, %.lr.ph.i.i.i.i.i.1 ], [ %i.ct, %.lr.ph.i.i.i.i.i.2 ]
  %i.cu = shufflevector <4 x double> %.sroa.6.0.lcssa, <4 x double> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.cv = fadd <4 x double> %.sroa.6.0.lcssa, %i.cu ; 2 uses
  %i.cw = shufflevector <4 x double> %i.cv, <4 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cx = fadd <4 x double> %i.cv, %i.cw
  %.sroa.0108.0.vec.extract = extractelement <4 x double> %i.cx, i64 0
  %i.cy = shufflevector <4 x double> %.sroa.039.0.lcssa, <4 x double> poison, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.cz = fadd <4 x double> %.sroa.039.0.lcssa, %i.cy ; 2 uses
  %i.da = extractelement <4 x double> %i.cz, i64 0
  %i.db = extractelement <4 x double> %i.cz, i64 2
  %i.dc = fadd double %i.da, %i.db
  %i.dd = fadd double %.sroa.0108.0.vec.extract, %i.dc
  %i.de = fadd double %i.dd, %.sroa.0.0.i.i.i.i
  %i.df = fptrunc double %i.de to float
  %i.dg = shufflevector <4 x double> %.sroa.621.0.lcssa, <4 x double> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.dh = fadd <4 x double> %.sroa.621.0.lcssa, %i.dg ; 2 uses
  %i.di = shufflevector <4 x double> %i.dh, <4 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.dj = fadd <4 x double> %i.dh, %i.di
  %.sroa.0127.0.vec.extract = extractelement <4 x double> %i.dj, i64 0
  %i.dk = shufflevector <4 x double> %.sroa.041.0.lcssa, <4 x double> poison, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.dl = fadd <4 x double> %.sroa.041.0.lcssa, %i.dk ; 2 uses
  %i.dm = extractelement <4 x double> %i.dl, i64 0
  %i.dn = extractelement <4 x double> %i.dl, i64 2
  %i.do = fadd double %i.dm, %i.dn
  %i.dp = fadd double %.sroa.0127.0.vec.extract, %i.do
  %i.dq = fadd double %i.dp, %.sroa.0.0.lcssa.i.i.i.i.i
  %i.dr = fptrunc double %i.dq to float
  %i.ds = fdiv float %i.dr, %2
  %i.dt = tail call noundef float @llvm.sqrt.f32(float %i.df)
  %i.du = fdiv float %i.ds, %i.dt
  %i.dv = fsub float 1.000000e+00, %i.du
  ret float %i.dv
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i32 @_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance6dot_u83x8611dot_u8_avx2(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #21 !guid !8244 {
bb.a:
  %.not100 = icmp samesign ult i64 %1, 32
  br i1 %.not100, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = add nsw i64 %1, -32                      ; 2 uses
  %i.b = lshr i64 %i.a, 5                         ; 2 uses
  %i.c = add nuw nsw i64 %i.b, 1                  ; 2 uses
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.c, 1152921504606846974
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %i.e = and i64 %i.a, 32
  %lcmp.mod.not.not = icmp eq i64 %i.e, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.epil.preheader, label %._crit_edge.loopexit

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.02.0102.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bq, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init136 = phi <8 x i32> [ zeroinitializer, %.lr.ph.preheader ], [ %i.ca, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod138 = trunc i64 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod138)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.0102.epil.init
  %.sroa.0.0.copyload.i.epil = load <4 x i64>, ptr %i.f, align 1, !noalias !8245 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.02.0102.epil.init
  %.sroa.0.0.copyload.i34.epil = load <4 x i64>, ptr %i.g, align 1, !noalias !8246 ; 2 uses
  %4 = shufflevector <4 x i64> %.sroa.0.0.copyload.i.epil, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %5 = bitcast <2 x i64> %4 to <16 x i8>
  %i.h = zext <16 x i8> %5 to <16 x i16>
  %6 = shufflevector <4 x i64> %.sroa.0.0.copyload.i.epil, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %7 = bitcast <2 x i64> %6 to <16 x i8>
  %i.i = zext <16 x i8> %7 to <16 x i16>
  %8 = shufflevector <4 x i64> %.sroa.0.0.copyload.i34.epil, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %9 = bitcast <2 x i64> %8 to <16 x i8>
  %i.j = zext <16 x i8> %9 to <16 x i16>
  %10 = shufflevector <4 x i64> %.sroa.0.0.copyload.i34.epil, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %11 = bitcast <2 x i64> %10 to <16 x i8>
  %i.k = zext <16 x i8> %11 to <16 x i16>
  %i.l = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.h, <16 x i16> %i.j)
  %i.m = add <8 x i32> %i.l, %.epil.init136
  %i.n = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.i, <16 x i16> %i.k)
  %i.o = add <8 x i32> %i.m, %i.n
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa134 = phi <8 x i32> [ %i.ca, %._crit_edge.loopexit.unr-lcssa ], [ %i.o, %.lr.ph.epil.preheader ]
  %i.p = and i64 %1, 9223372036854775776
  %i.q = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %.lcssa134)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.r = phi i32 [ 0, %bb.a ], [ %i.q, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.02.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.p, %._crit_edge.loopexit ] ; 7 uses
  %i.s = icmp samesign ult i64 %.sroa.02.0.lcssa, %1
  br i1 %i.s, label %.lr.ph107.preheader, label %._crit_edge108

.lr.ph107.preheader:                              ; preds = %._crit_edge
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.02.0.lcssa, i64 %3) ; 3 uses
  %i.t = xor i64 %.sroa.02.0.lcssa, -1
  %i.u = add nsw i64 %1, %i.t
  %i.v = sub nsw i64 %umax, %.sroa.02.0.lcssa
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.v)
  %i.x = add i64 %i.w, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.x, 33
  br i1 %min.iters.check, label %.lr.ph107.preheader129, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph107.preheader
  %i.y = and i64 %i.x, 31                         ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = select i1 %i.z, i64 32, i64 %i.y
  %n.vec = sub i64 %i.x, %i.aa                    ; 2 uses
  %i.ab = add i64 %.sroa.02.0.lcssa, %n.vec
  %i.ac = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %i.r, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ %i.ac, %vector.ph ], [ %i.ay, %vector.body ]
  %vec.phi117 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.az, %vector.body ]
  %vec.phi118 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.ba, %vector.body ]
  %vec.phi119 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.bb, %vector.body ]
  %i.ad = add i64 %.sroa.02.0.lcssa, %index       ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.ad ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %wide.load = load <8 x i8>, ptr %i.ae, align 1
  %wide.load120 = load <8 x i8>, ptr %i.af, align 1
  %wide.load121 = load <8 x i8>, ptr %i.ag, align 1
  %wide.load122 = load <8 x i8>, ptr %i.ah, align 1
  %i.ai = zext <8 x i8> %wide.load to <8 x i32>
  %i.aj = zext <8 x i8> %wide.load120 to <8 x i32>
  %i.ak = zext <8 x i8> %wide.load121 to <8 x i32>
  %i.al = zext <8 x i8> %wide.load122 to <8 x i32>
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 %i.ad ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %wide.load123 = load <8 x i8>, ptr %i.am, align 1
  %wide.load124 = load <8 x i8>, ptr %i.an, align 1
  %wide.load125 = load <8 x i8>, ptr %i.ao, align 1
  %wide.load126 = load <8 x i8>, ptr %i.ap, align 1
  %i.aq = zext <8 x i8> %wide.load123 to <8 x i32>
  %i.ar = zext <8 x i8> %wide.load124 to <8 x i32>
  %i.as = zext <8 x i8> %wide.load125 to <8 x i32>
  %i.at = zext <8 x i8> %wide.load126 to <8 x i32>
  %i.au = mul nuw nsw <8 x i32> %i.aq, %i.ai
  %i.av = mul nuw nsw <8 x i32> %i.ar, %i.aj
  %i.aw = mul nuw nsw <8 x i32> %i.as, %i.ak
  %i.ax = mul nuw nsw <8 x i32> %i.at, %i.al
  %i.ay = add <8 x i32> %i.au, %vec.phi           ; 2 uses
  %i.az = add <8 x i32> %i.av, %vec.phi117        ; 2 uses
  %i.ba = add <8 x i32> %i.aw, %vec.phi118        ; 2 uses
  %i.bb = add <8 x i32> %i.ax, %vec.phi119        ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !8242

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i32> %i.az, %i.ay
  %bin.rdx127 = add <8 x i32> %i.ba, %bin.rdx
  %bin.rdx128 = add <8 x i32> %i.bb, %bin.rdx127
  %i.bd = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx128)
  br label %.lr.ph107.preheader129

.lr.ph107.preheader129:                           ; preds = %.lr.ph107.preheader, %middle.block
  %.sroa.0.0105.ph = phi i32 [ %i.r, %.lr.ph107.preheader ], [ %i.bd, %middle.block ]
  %.sroa.02.1104.ph = phi i64 [ %.sroa.02.0.lcssa, %.lr.ph107.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph107

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %i.be = phi i64 [ 32, %.lr.ph.preheader.new ], [ %i.cb, %.lr.ph ] ; 4 uses
  %.sroa.02.0102 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bq, %.lr.ph ] ; 2 uses
  %i.bf = phi <8 x i32> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.ca, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.0102
  %.sroa.0.0.copyload.i = load <4 x i64>, ptr %i.bg, align 1, !noalias !8245 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.02.0102
  %.sroa.0.0.copyload.i34 = load <4 x i64>, ptr %i.bh, align 1, !noalias !8246 ; 2 uses
  %12 = shufflevector <4 x i64> %.sroa.0.0.copyload.i, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %13 = bitcast <2 x i64> %12 to <16 x i8>
  %i.bi = zext <16 x i8> %13 to <16 x i16>
  %14 = shufflevector <4 x i64> %.sroa.0.0.copyload.i, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %15 = bitcast <2 x i64> %14 to <16 x i8>
  %i.bj = zext <16 x i8> %15 to <16 x i16>
  %16 = shufflevector <4 x i64> %.sroa.0.0.copyload.i34, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %17 = bitcast <2 x i64> %16 to <16 x i8>
  %i.bk = zext <16 x i8> %17 to <16 x i16>
  %18 = shufflevector <4 x i64> %.sroa.0.0.copyload.i34, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %19 = bitcast <2 x i64> %18 to <16 x i8>
  %i.bl = zext <16 x i8> %19 to <16 x i16>
  %i.bm = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.bi, <16 x i16> %i.bk)
  %i.bn = add <8 x i32> %i.bm, %i.bf
  %i.bo = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.bj, <16 x i16> %i.bl)
  %i.bp = add <8 x i32> %i.bn, %i.bo
  %i.bq = add nuw i64 %i.be, 32                   ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %i.be
  %.sroa.0.0.copyload.i.1 = load <4 x i64>, ptr %i.br, align 1, !noalias !8245 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 %i.be
  %.sroa.0.0.copyload.i34.1 = load <4 x i64>, ptr %i.bs, align 1, !noalias !8246 ; 2 uses
  %20 = shufflevector <4 x i64> %.sroa.0.0.copyload.i.1, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %21 = bitcast <2 x i64> %20 to <16 x i8>
  %i.bt = zext <16 x i8> %21 to <16 x i16>
  %22 = shufflevector <4 x i64> %.sroa.0.0.copyload.i.1, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %23 = bitcast <2 x i64> %22 to <16 x i8>
  %i.bu = zext <16 x i8> %23 to <16 x i16>
  %24 = shufflevector <4 x i64> %.sroa.0.0.copyload.i34.1, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %25 = bitcast <2 x i64> %24 to <16 x i8>
  %i.bv = zext <16 x i8> %25 to <16 x i16>
  %26 = shufflevector <4 x i64> %.sroa.0.0.copyload.i34.1, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %27 = bitcast <2 x i64> %26 to <16 x i8>
  %i.bw = zext <16 x i8> %27 to <16 x i16>
  %i.bx = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.bt, <16 x i16> %i.bv)
  %i.by = add <8 x i32> %i.bx, %i.bp
  %i.bz = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.bu, <16 x i16> %i.bw)
  %i.ca = add <8 x i32> %i.by, %i.bz              ; 3 uses
  %i.cb = add nuw i64 %i.be, 64
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge108:                                   ; preds = %bb.b, %._crit_edge
  %.sroa.0.0.lcssa = phi i32 [ %i.r, %._crit_edge ], [ %i.cj, %bb.b ]
  ret i32 %.sroa.0.0.lcssa

.lr.ph107:                                        ; preds = %.lr.ph107.preheader129, %bb.b
  %.sroa.0.0105 = phi i32 [ %i.cj, %bb.b ], [ %.sroa.0.0105.ph, %.lr.ph107.preheader129 ]
  %.sroa.02.1104 = phi i64 [ %i.ck, %bb.b ], [ %.sroa.02.1104.ph, %.lr.ph107.preheader129 ] ; 4 uses
  %exitcond.not = icmp eq i64 %.sroa.02.1104, %umax
  br i1 %exitcond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph107
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.1104
  %i.cd = load i8, ptr %i.cc, align 1, !noundef !26
  %i.ce = zext i8 %i.cd to i32
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.02.1104
  %i.cg = load i8, ptr %i.cf, align 1, !noundef !26
  %i.ch = zext i8 %i.cg to i32
  %i.ci = mul nuw nsw i32 %i.ch, %i.ce
  %i.cj = add i32 %i.ci, %.sroa.0.0105            ; 2 uses
  %i.ck = add i64 %.sroa.02.1104, 1               ; 2 uses
  %exitcond113.not = icmp eq i64 %i.ck, %1
  br i1 %exitcond113.not, label %._crit_edge108, label %.lr.ph107, !llvm.loop !8243

bb.c:                                             ; preds = %.lr.ph107
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @302) #74
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i32 @_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance6dot_u83x8618dot_u8_avx512_vnni(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #31 !guid !8249 {
bb.a:
  %.not53 = icmp samesign ult i64 %1, 64
  br i1 %.not53, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = add nsw i64 %1, -64                      ; 2 uses
  %i.b = lshr i64 %i.a, 6                         ; 2 uses
  %i.c = add nuw nsw i64 %i.b, 1                  ; 2 uses
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.c, 576460752303423486
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %i.e = and i64 %i.a, 64
  %lcmp.mod.not.not = icmp eq i64 %i.e, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.epil.preheader, label %._crit_edge.loopexit

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.02.055.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bm, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init95 = phi <16 x i32> [ zeroinitializer, %.lr.ph.preheader ], [ %i.bq, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.025.054.epil.init = phi <8 x i64> [ zeroinitializer, %.lr.ph.preheader ], [ %i.bs, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod98 = trunc i64 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod98)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.055.epil.init
  %.val1349.epil = load <64 x i8>, ptr %i.f, align 1, !noalias !60 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.02.055.epil.init
  %.val1250.epil = load <64 x i8>, ptr %i.g, align 1, !noalias !60
  %i.h = xor <64 x i8> %.val1250.epil, splat (i8 -128)
  %i.i = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %.epil.init95, <64 x i8> %.val1349.epil, <64 x i8> %i.h)
  %i.j = tail call <8 x i64> @llvm.x86.avx512.psad.bw.512(<64 x i8> %.val1349.epil, <64 x i8> zeroinitializer)
  %i.k = add <8 x i64> %i.j, %.sroa.025.054.epil.init
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa93 = phi <16 x i32> [ %i.bq, %._crit_edge.loopexit.unr-lcssa ], [ %i.i, %.lr.ph.epil.preheader ]
  %.lcssa92 = phi <8 x i64> [ %i.bs, %._crit_edge.loopexit.unr-lcssa ], [ %i.k, %.lr.ph.epil.preheader ]
  %i.l = and i64 %1, 9223372036854775744
  %i.m = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %.lcssa93)
  %i.n = tail call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %.lcssa92)
  %i.o = trunc i64 %i.n to i32
  %i.p = shl i32 %i.o, 7
  %i.q = add i32 %i.p, %i.m
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.02.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.l, %._crit_edge.loopexit ] ; 7 uses
  %i.r = phi i32 [ 0, %bb.a ], [ %i.q, %._crit_edge.loopexit ] ; 3 uses
  %i.s = icmp samesign ult i64 %.sroa.02.0.lcssa, %1
  br i1 %i.s, label %.lr.ph61.preheader, label %._crit_edge62

.lr.ph61.preheader:                               ; preds = %._crit_edge
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.02.0.lcssa, i64 %3) ; 3 uses
  %i.t = xor i64 %.sroa.02.0.lcssa, -1
  %i.u = add nsw i64 %1, %i.t
  %i.v = sub nsw i64 %umax, %.sroa.02.0.lcssa
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.v)
  %i.x = add i64 %i.w, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.x, 65
  br i1 %min.iters.check, label %.lr.ph61.preheader87, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph61.preheader
  %i.y = and i64 %i.x, 63                         ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = select i1 %i.z, i64 64, i64 %i.y
  %n.vec = sub i64 %i.x, %i.aa                    ; 2 uses
  %i.ab = add i64 %.sroa.02.0.lcssa, %n.vec
  %i.ac = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %i.r, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i32> [ %i.ac, %vector.ph ], [ %i.ay, %vector.body ]
  %vec.phi75 = phi <16 x i32> [ zeroinitializer, %vector.ph ], [ %i.az, %vector.body ]
  %vec.phi76 = phi <16 x i32> [ zeroinitializer, %vector.ph ], [ %i.ba, %vector.body ]
  %vec.phi77 = phi <16 x i32> [ zeroinitializer, %vector.ph ], [ %i.bb, %vector.body ]
  %i.ad = add i64 %.sroa.02.0.lcssa, %index       ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.ad ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %wide.load = load <16 x i8>, ptr %i.ae, align 1
  %wide.load78 = load <16 x i8>, ptr %i.af, align 1
  %wide.load79 = load <16 x i8>, ptr %i.ag, align 1
  %wide.load80 = load <16 x i8>, ptr %i.ah, align 1
  %i.ai = zext <16 x i8> %wide.load to <16 x i32>
  %i.aj = zext <16 x i8> %wide.load78 to <16 x i32>
  %i.ak = zext <16 x i8> %wide.load79 to <16 x i32>
  %i.al = zext <16 x i8> %wide.load80 to <16 x i32>
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 %i.ad ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %wide.load81 = load <16 x i8>, ptr %i.am, align 1
  %wide.load82 = load <16 x i8>, ptr %i.an, align 1
  %wide.load83 = load <16 x i8>, ptr %i.ao, align 1
  %wide.load84 = load <16 x i8>, ptr %i.ap, align 1
  %i.aq = zext <16 x i8> %wide.load81 to <16 x i32>
  %i.ar = zext <16 x i8> %wide.load82 to <16 x i32>
  %i.as = zext <16 x i8> %wide.load83 to <16 x i32>
  %i.at = zext <16 x i8> %wide.load84 to <16 x i32>
  %i.au = mul nuw nsw <16 x i32> %i.aq, %i.ai
  %i.av = mul nuw nsw <16 x i32> %i.ar, %i.aj
  %i.aw = mul nuw nsw <16 x i32> %i.as, %i.ak
  %i.ax = mul nuw nsw <16 x i32> %i.at, %i.al
  %i.ay = add <16 x i32> %i.au, %vec.phi          ; 2 uses
  %i.az = add <16 x i32> %i.av, %vec.phi75        ; 2 uses
  %i.ba = add <16 x i32> %i.aw, %vec.phi76        ; 2 uses
  %i.bb = add <16 x i32> %i.ax, %vec.phi77        ; 2 uses
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !8247

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <16 x i32> %i.az, %i.ay
  %bin.rdx85 = add <16 x i32> %i.ba, %bin.rdx
  %bin.rdx86 = add <16 x i32> %i.bb, %bin.rdx85
  %i.bd = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %bin.rdx86)
  br label %.lr.ph61.preheader87

.lr.ph61.preheader87:                             ; preds = %.lr.ph61.preheader, %middle.block
  %.sroa.0.059.ph = phi i32 [ %i.r, %.lr.ph61.preheader ], [ %i.bd, %middle.block ]
  %.sroa.02.158.ph = phi i64 [ %.sroa.02.0.lcssa, %.lr.ph61.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph61

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %i.be = phi i64 [ 64, %.lr.ph.preheader.new ], [ %i.bt, %.lr.ph ] ; 4 uses
  %.sroa.02.055 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bm, %.lr.ph ] ; 2 uses
  %i.bf = phi <16 x i32> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.bq, %.lr.ph ]
  %.sroa.025.054 = phi <8 x i64> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.bs, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.055
  %.val1349 = load <64 x i8>, ptr %i.bg, align 1, !noalias !60 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.02.055
  %.val1250 = load <64 x i8>, ptr %i.bh, align 1, !noalias !60
  %i.bi = xor <64 x i8> %.val1250, splat (i8 -128)
  %i.bj = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.bf, <64 x i8> %.val1349, <64 x i8> %i.bi)
  %i.bk = tail call <8 x i64> @llvm.x86.avx512.psad.bw.512(<64 x i8> %.val1349, <64 x i8> zeroinitializer)
  %i.bl = add <8 x i64> %i.bk, %.sroa.025.054
  %i.bm = add nuw i64 %i.be, 64                   ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 %i.be
  %.val1349.1 = load <64 x i8>, ptr %i.bn, align 1, !noalias !60 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 %i.be
  %.val1250.1 = load <64 x i8>, ptr %i.bo, align 1, !noalias !60
  %i.bp = xor <64 x i8> %.val1250.1, splat (i8 -128)
  %i.bq = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.bj, <64 x i8> %.val1349.1, <64 x i8> %i.bp) ; 3 uses
  %i.br = tail call <8 x i64> @llvm.x86.avx512.psad.bw.512(<64 x i8> %.val1349.1, <64 x i8> zeroinitializer)
  %i.bs = add <8 x i64> %i.br, %i.bl              ; 3 uses
  %i.bt = add nuw i64 %i.be, 128
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge62:                                    ; preds = %bb.b, %._crit_edge
  %.sroa.0.0.lcssa = phi i32 [ %i.r, %._crit_edge ], [ %i.cb, %bb.b ]
  ret i32 %.sroa.0.0.lcssa

.lr.ph61:                                         ; preds = %.lr.ph61.preheader87, %bb.b
end_hunk_0
begin_hunk_1_@_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l23x8619norm_l2_f64_avx_fma:bb.a
  %i.ae = and i64 %.sroa.06.0.i.i.i, 1            ; 5 uses
  %i.af = add nsw i64 %i.ae, -1
  %lcmp.mod121.not = icmp eq i64 %i.ae, 0
  br i1 %lcmp.mod121.not, label %.lr.ph101.prol.loopexit, label %.lr.ph101.prol

.lr.ph101.prol:                                   ; preds = %.lr.ph101.preheader, %.lr.ph101.prol
  %.sroa.539.099.prol = phi i64 [ %i.ah, %.lr.ph101.prol ], [ %i.ae, %.lr.ph101.preheader ]
  %.sroa.038.098.prol = phi i64 [ %i.ag, %.lr.ph101.prol ], [ %i.a, %.lr.ph101.preheader ] ; 2 uses
  %.sroa.026.097.prol = phi <4 x double> [ %i.aj, %.lr.ph101.prol ], [ zeroinitializer, %.lr.ph101.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph101.prol ], [ 0, %.lr.ph101.preheader ]
  %i.ag = add i64 %.sroa.038.098.prol, 4          ; 2 uses
  %i.ah = add nsw i64 %.sroa.539.099.prol, -1     ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.038.098.prol
  %.sroa.0.0.copyload.i12.prol = load <4 x double>, ptr %i.ai, align 8, !noalias !8286 ; 2 uses
  %i.aj = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i12.prol, <4 x double> %.sroa.0.0.copyload.i12.prol, <4 x double> %.sroa.026.097.prol) ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %i.ae
  br i1 %prol.iter.cmp.not, label %.lr.ph101.prol.loopexit, label %.lr.ph101.prol, !llvm.loop !8281

.lr.ph101.prol.loopexit:                          ; preds = %.lr.ph101.prol, %.lr.ph101.preheader
  %.lcssa114.unr = phi <4 x double> [ poison, %.lr.ph101.preheader ], [ %i.aj, %.lr.ph101.prol ]
  %.sroa.539.099.unr = phi i64 [ %i.ae, %.lr.ph101.preheader ], [ %i.ah, %.lr.ph101.prol ]
  %.sroa.038.098.unr = phi i64 [ %i.a, %.lr.ph101.preheader ], [ %i.ag, %.lr.ph101.prol ]
  %.sroa.026.097.unr = phi <4 x double> [ zeroinitializer, %.lr.ph101.preheader ], [ %i.aj, %.lr.ph101.prol ]
  %i.ak = icmp ult i64 %i.af, 3
  br i1 %i.ak, label %._crit_edge102, label %.lr.ph101

.lr.ph101:                                        ; preds = %.lr.ph101.prol.loopexit, %.lr.ph101
  %.sroa.539.099 = phi i64 [ %i.au, %.lr.ph101 ], [ %.sroa.539.099.unr, %.lr.ph101.prol.loopexit ]
  %.sroa.038.098 = phi i64 [ %i.at, %.lr.ph101 ], [ %.sroa.038.098.unr, %.lr.ph101.prol.loopexit ] ; 5 uses
  %.sroa.026.097 = phi <4 x double> [ %i.ax, %.lr.ph101 ], [ %.sroa.026.097.unr, %.lr.ph101.prol.loopexit ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.038.098
  %.sroa.0.0.copyload.i12 = load <4 x double>, ptr %i.al, align 8, !noalias !8286 ; 2 uses
  %i.am = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i12, <4 x double> %.sroa.0.0.copyload.i12, <4 x double> %.sroa.026.097)
  %i.an = getelementptr [8 x i8], ptr %0, i64 %.sroa.038.098
  %i.ao = getelementptr i8, ptr %i.an, i64 32
  %.sroa.0.0.copyload.i12.1 = load <4 x double>, ptr %i.ao, align 8, !noalias !8286 ; 2 uses
  %i.ap = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i12.1, <4 x double> %.sroa.0.0.copyload.i12.1, <4 x double> %i.am)
  %i.aq = getelementptr [8 x i8], ptr %0, i64 %.sroa.038.098
  %i.ar = getelementptr i8, ptr %i.aq, i64 64
  %.sroa.0.0.copyload.i12.2 = load <4 x double>, ptr %i.ar, align 8, !noalias !8286 ; 2 uses
  %i.as = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i12.2, <4 x double> %.sroa.0.0.copyload.i12.2, <4 x double> %i.ap)
  %i.at = add i64 %.sroa.038.098, 16
  %i.au = add nsw i64 %.sroa.539.099, -4          ; 2 uses
  %i.av = getelementptr [8 x i8], ptr %0, i64 %.sroa.038.098
  %i.aw = getelementptr i8, ptr %i.av, i64 96
  %.sroa.0.0.copyload.i12.3 = load <4 x double>, ptr %i.aw, align 8, !noalias !8286 ; 2 uses
  %i.ax = tail call <4 x double> @llvm.fma.v4f64(<4 x double> %.sroa.0.0.copyload.i12.3, <4 x double> %.sroa.0.0.copyload.i12.3, <4 x double> %i.as) ; 2 uses
  %.not.i.i7.3 = icmp eq i64 %i.au, 0
  br i1 %.not.i.i7.3, label %._crit_edge102, label %.lr.ph101

._crit_edge102:                                   ; preds = %.lr.ph101.prol.loopexit, %.lr.ph101, %._crit_edge
  %.sroa.026.0.lcssa = phi <4 x double> [ zeroinitializer, %._crit_edge ], [ %.lcssa114.unr, %.lr.ph101.prol.loopexit ], [ %i.ax, %.lr.ph101 ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ad
  %i.az = shl nuw nsw i64 %1, 3
  %.idx = and i64 %i.az, 24                       ; 2 uses
  %i.ba = icmp samesign eq i64 %.idx, 0
  br i1 %i.ba, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterdENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l23x8619norm_l2_f64_avx_fma0ENtNtNtBa_6traits8iterator8Iterator3sumdEB1t_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge102
  %i.bb = lshr exact i64 %.idx, 3
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.sroa.04.0.i.i.i.i.epil = phi i64 [ 0, %.epil.preheader ], [ %i.bf, %bb.b ] ; 2 uses
  %.sroa.02.0.i.i.i.i.epil = phi double [ -0.000000e+00, %.epil.preheader ], [ %i.be, %bb.b ]
  %epil.iter123 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter123.next, %bb.b ]
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.sroa.04.0.i.i.i.i.epil
  %.val.i.i.i.i.epil = load double, ptr %i.bc, align 8, !noundef !26 ; 2 uses
  %i.bd = fmul double %.val.i.i.i.i.epil, %.val.i.i.i.i.epil
  %i.be = fadd double %.sroa.02.0.i.i.i.i.epil, %i.bd ; 2 uses
  %i.bf = add nuw i64 %.sroa.04.0.i.i.i.i.epil, 1
  %epil.iter123.next = add i64 %epil.iter123, 1   ; 2 uses
  %epil.iter123.cmp.not = icmp eq i64 %epil.iter123.next, %i.bb
  br i1 %epil.iter123.cmp.not, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterdENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l23x8619norm_l2_f64_avx_fma0ENtNtNtBa_6traits8iterator8Iterator3sumdEB1t_.exit, label %bb.b, !llvm.loop !8282

_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterdENCNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l23x8619norm_l2_f64_avx_fma0ENtNtNtBa_6traits8iterator8Iterator3sumdEB1t_.exit: ; preds = %bb.b, %._crit_edge102
  %.sroa.0.0.i.i.i.i = phi double [ -0.000000e+00, %._crit_edge102 ], [ %i.be, %bb.b ]
  %i.bg = shufflevector <4 x double> %.sroa.6.0.lcssa, <4 x double> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.bh = fadd <4 x double> %.sroa.6.0.lcssa, %i.bg ; 2 uses
  %i.bi = shufflevector <4 x double> %i.bh, <4 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.bj = fadd <4 x double> %i.bh, %i.bi
  %.sroa.068.0.vec.extract = extractelement <4 x double> %i.bj, i64 0
  %i.bk = shufflevector <4 x double> %.sroa.026.0.lcssa, <4 x double> poison, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.bl = fadd <4 x double> %.sroa.026.0.lcssa, %i.bk ; 2 uses
  %i.bm = extractelement <4 x double> %i.bl, i64 0
  %i.bn = extractelement <4 x double> %i.bl, i64 2
  %i.bo = fadd double %i.bm, %i.bn
  %i.bp = fadd double %.sroa.068.0.vec.extract, %i.bo
  %i.bq = fadd double %i.bp, %.sroa.0.0.i.i.i.i
  %i.br = tail call noundef double @llvm.sqrt.f64(double %i.bq)
  %i.bs = fptrunc double %i.br to float
  ret float %i.bs
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance9cosine_u83x8620cosine_u8_accum_avx2(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 4 captures(none) dereferenceable(12) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef nonnull readonly captures(none) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #21 !guid !8293 {
bb.a:
  %.not221 = icmp samesign ult i64 %2, 32
  br i1 %.not221, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.a = and i64 %2, 9223372036854775776
  %i.b = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.bg)
  %i.c = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.bk)
  %i.d = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.bo)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.e = phi i32 [ 0, %bb.a ], [ %i.d, %._crit_edge.loopexit ] ; 3 uses
  %i.f = phi i32 [ 0, %bb.a ], [ %i.c, %._crit_edge.loopexit ] ; 3 uses
  %i.g = phi i32 [ 0, %bb.a ], [ %i.b, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.0.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.a, %._crit_edge.loopexit ] ; 7 uses
  %i.h = icmp samesign ult i64 %.sroa.0.0.lcssa, %2
  br i1 %i.h, label %.lr.ph234.preheader, label %._crit_edge235

.lr.ph234.preheader:                              ; preds = %._crit_edge
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.lcssa, i64 %4) ; 3 uses
  %i.i = xor i64 %.sroa.0.0.lcssa, -1
  %i.j = add nsw i64 %2, %i.i
  %i.k = sub nsw i64 %umax, %.sroa.0.0.lcssa
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.k)
  %i.m = add i64 %i.l, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.m, 17
  br i1 %min.iters.check, label %.lr.ph234.preheader270, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph234.preheader
  %i.n = and i64 %i.m, 15                         ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  %i.p = select i1 %i.o, i64 16, i64 %i.n
  %n.vec = sub i64 %i.m, %i.p                     ; 2 uses
  %i.q = add i64 %.sroa.0.0.lcssa, %n.vec
  %i.r = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %i.g, i64 0
  %i.s = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %i.f, i64 0
  %i.t = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %i.e, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ %i.r, %vector.ph ], [ %i.af, %vector.body ]
  %vec.phi258 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.ag, %vector.body ]
  %vec.phi259 = phi <8 x i32> [ %i.s, %vector.ph ], [ %i.aj, %vector.body ]
  %vec.phi260 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.ak, %vector.body ]
  %vec.phi261 = phi <8 x i32> [ %i.t, %vector.ph ], [ %i.an, %vector.body ]
  %vec.phi262 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.ao, %vector.body ]
  %i.u = add i64 %.sroa.0.0.lcssa, %index         ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %wide.load = load <8 x i8>, ptr %i.v, align 1
  %wide.load263 = load <8 x i8>, ptr %i.w, align 1
  %i.x = zext <8 x i8> %wide.load to <8 x i32>    ; 3 uses
  %i.y = zext <8 x i8> %wide.load263 to <8 x i32> ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 %i.u ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %wide.load264 = load <8 x i8>, ptr %i.z, align 1
  %wide.load265 = load <8 x i8>, ptr %i.aa, align 1
  %i.ab = zext <8 x i8> %wide.load264 to <8 x i32> ; 3 uses
  %i.ac = zext <8 x i8> %wide.load265 to <8 x i32> ; 3 uses
  %i.ad = mul nuw nsw <8 x i32> %i.ab, %i.x
  %i.ae = mul nuw nsw <8 x i32> %i.ac, %i.y
  %i.af = add <8 x i32> %i.ad, %vec.phi           ; 2 uses
  %i.ag = add <8 x i32> %i.ae, %vec.phi258        ; 2 uses
  %i.ah = mul nuw nsw <8 x i32> %i.x, %i.x
  %i.ai = mul nuw nsw <8 x i32> %i.y, %i.y
  %i.aj = add <8 x i32> %i.ah, %vec.phi259        ; 2 uses
  %i.ak = add <8 x i32> %i.ai, %vec.phi260        ; 2 uses
  %i.al = mul nuw nsw <8 x i32> %i.ab, %i.ab
  %i.am = mul nuw nsw <8 x i32> %i.ac, %i.ac
  %i.an = add <8 x i32> %i.al, %vec.phi261        ; 2 uses
  %i.ao = add <8 x i32> %i.am, %vec.phi262        ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !8287

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i32> %i.ag, %i.af
  %i.aq = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx)
  %bin.rdx266 = add <8 x i32> %i.ak, %i.aj
  %i.ar = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx266)
  %bin.rdx267 = add <8 x i32> %i.ao, %i.an
  %i.as = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx267)
  br label %.lr.ph234.preheader270

.lr.ph234.preheader270:                           ; preds = %.lr.ph234.preheader, %middle.block
  %.sroa.0.1232.ph = phi i64 [ %.sroa.0.0.lcssa, %.lr.ph234.preheader ], [ %i.q, %middle.block ]
  %.sroa.08.0231.ph = phi i32 [ %i.g, %.lr.ph234.preheader ], [ %i.aq, %middle.block ]
  %.sroa.010.0230.ph = phi i32 [ %i.f, %.lr.ph234.preheader ], [ %i.ar, %middle.block ]
  %.sroa.012.0229.ph = phi i32 [ %i.e, %.lr.ph234.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph234

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.at = phi i64 [ %i.bp, %.lr.ph ], [ 32, %bb.a ] ; 2 uses
  %.sroa.0.0225 = phi i64 [ %i.at, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.au = phi <8 x i32> [ %i.bg, %.lr.ph ], [ zeroinitializer, %bb.a ]
  %i.av = phi <8 x i32> [ %i.bk, %.lr.ph ], [ zeroinitializer, %bb.a ]
  %i.aw = phi <8 x i32> [ %i.bo, %.lr.ph ], [ zeroinitializer, %bb.a ]
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0225
  %.sroa.0.0.copyload.i = load <4 x i64>, ptr %i.ax, align 1, !noalias !8294 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0.0225
  %.sroa.0.0.copyload.i60 = load <4 x i64>, ptr %i.ay, align 1, !noalias !8295 ; 2 uses
  %5 = shufflevector <4 x i64> %.sroa.0.0.copyload.i, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %6 = bitcast <2 x i64> %5 to <16 x i8>
  %i.az = zext <16 x i8> %6 to <16 x i16>         ; 3 uses
  %7 = shufflevector <4 x i64> %.sroa.0.0.copyload.i, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %8 = bitcast <2 x i64> %7 to <16 x i8>
  %i.ba = zext <16 x i8> %8 to <16 x i16>         ; 3 uses
  %9 = shufflevector <4 x i64> %.sroa.0.0.copyload.i60, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %10 = bitcast <2 x i64> %9 to <16 x i8>
  %i.bb = zext <16 x i8> %10 to <16 x i16>        ; 3 uses
  %11 = shufflevector <4 x i64> %.sroa.0.0.copyload.i60, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %12 = bitcast <2 x i64> %11 to <16 x i8>
  %i.bc = zext <16 x i8> %12 to <16 x i16>        ; 3 uses
  %i.bd = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.az, <16 x i16> %i.bb)
  %i.be = add <8 x i32> %i.bd, %i.au
  %i.bf = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.ba, <16 x i16> %i.bc)
  %i.bg = add <8 x i32> %i.be, %i.bf              ; 2 uses
  %i.bh = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.az, <16 x i16> %i.az)
  %i.bi = add <8 x i32> %i.bh, %i.av
  %i.bj = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.ba, <16 x i16> %i.ba)
  %i.bk = add <8 x i32> %i.bi, %i.bj              ; 2 uses
  %i.bl = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.bb, <16 x i16> %i.bb)
  %i.bm = add <8 x i32> %i.bl, %i.aw
  %i.bn = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.bc, <16 x i16> %i.bc)
  %i.bo = add <8 x i32> %i.bm, %i.bn              ; 2 uses
  %i.bp = add nuw i64 %i.at, 32                   ; 2 uses
  %.not = icmp ugt i64 %i.bp, %2
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge235:                                   ; preds = %bb.b, %._crit_edge
  %.sroa.012.0.lcssa = phi i32 [ %i.e, %._crit_edge ], [ %i.cd, %bb.b ]
  %.sroa.010.0.lcssa = phi i32 [ %i.f, %._crit_edge ], [ %i.cb, %bb.b ]
  %.sroa.08.0.lcssa = phi i32 [ %i.g, %._crit_edge ], [ %i.bz, %bb.b ]
  store i32 %.sroa.08.0.lcssa, ptr %0, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.010.0.lcssa, ptr %i.bq, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.012.0.lcssa, ptr %i.br, align 4
  ret void

.lr.ph234:                                        ; preds = %.lr.ph234.preheader270, %bb.b
  %.sroa.0.1232 = phi i64 [ %i.ce, %bb.b ], [ %.sroa.0.1232.ph, %.lr.ph234.preheader270 ] ; 4 uses
  %.sroa.08.0231 = phi i32 [ %i.bz, %bb.b ], [ %.sroa.08.0231.ph, %.lr.ph234.preheader270 ]
  %.sroa.010.0230 = phi i32 [ %i.cb, %bb.b ], [ %.sroa.010.0230.ph, %.lr.ph234.preheader270 ]
  %.sroa.012.0229 = phi i32 [ %i.cd, %bb.b ], [ %.sroa.012.0229.ph, %.lr.ph234.preheader270 ]
  %exitcond.not = icmp eq i64 %.sroa.0.1232, %umax
  br i1 %exitcond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph234
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1232
  %i.bt = load i8, ptr %i.bs, align 1, !noundef !26
  %i.bu = zext i8 %i.bt to i32                    ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0.1232
  %i.bw = load i8, ptr %i.bv, align 1, !noundef !26
  %i.bx = zext i8 %i.bw to i32                    ; 3 uses
  %i.by = mul nuw nsw i32 %i.bx, %i.bu
  %i.bz = add i32 %i.by, %.sroa.08.0231           ; 2 uses
  %i.ca = mul nuw nsw i32 %i.bu, %i.bu
  %i.cb = add i32 %i.ca, %.sroa.010.0230          ; 2 uses
  %i.cc = mul nuw nsw i32 %i.bx, %i.bx
  %i.cd = add i32 %i.cc, %.sroa.012.0229          ; 2 uses
  %i.ce = add i64 %.sroa.0.1232, 1                ; 2 uses
  %exitcond246.not = icmp eq i64 %i.ce, %2
  br i1 %exitcond246.not, label %._crit_edge235, label %.lr.ph234, !llvm.loop !8292

bb.c:                                             ; preds = %.lr.ph234
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @305) #74
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance9cosine_u83x8627cosine_u8_accum_avx512_vnni(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 4 captures(none) dereferenceable(12) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef nonnull readonly captures(none) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #31 !guid !8298 {
bb.a:
  %.not112 = icmp samesign ult i64 %2, 64
  br i1 %.not112, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.a = and i64 %2, 9223372036854775744
  %i.b = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.bz)
  %i.c = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.cb)
  %i.d = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.cd)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.lcssa111 = phi i32 [ 0, %bb.a ], [ %i.d, %._crit_edge.loopexit ] ; 3 uses
  %.lcssa110 = phi i32 [ 0, %bb.a ], [ %i.c, %._crit_edge.loopexit ] ; 3 uses
  %.lcssa = phi i32 [ 0, %bb.a ], [ %i.b, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.0.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.a, %._crit_edge.loopexit ] ; 7 uses
  %i.e = icmp samesign ult i64 %.sroa.0.0.lcssa, %2
  br i1 %i.e, label %.lr.ph122.preheader, label %._crit_edge123

.lr.ph122.preheader:                              ; preds = %._crit_edge
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.lcssa, i64 %4) ; 3 uses
  %i.f = xor i64 %.sroa.0.0.lcssa, -1
  %i.g = add nsw i64 %2, %i.f
  %i.h = sub nsw i64 %umax, %.sroa.0.0.lcssa
  %i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.h)
  %i.j = add i64 %i.i, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.j, 65
  br i1 %min.iters.check, label %.lr.ph122.preheader177, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph122.preheader
  %i.k = and i64 %i.j, 63                         ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = select i1 %i.l, i64 64, i64 %i.k
  %n.vec = sub i64 %i.j, %i.m                     ; 2 uses
  %i.n = add i64 %.sroa.0.0.lcssa, %n.vec
  %i.o = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.lcssa, i64 0
  %i.p = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.lcssa110, i64 0
  %i.q = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.lcssa111, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i32> [ %i.o, %vector.ph ], [ %i.am, %vector.body ]
  %vec.phi149 = phi <16 x i32> [ zeroinitializer, %vector.ph ], [ %i.an, %vector.body ]
  %vec.phi150 = phi <16 x i32> [ zeroinitializer, %vector.ph ], [ %i.ao, %vector.body ]
  %vec.phi151 = phi <16 x i32> [ zeroinitializer, %vector.ph ], [ %i.ap, %vector.body ]
  %vec.phi152 = phi <16 x i32> [ %i.p, %vector.ph ], [ %i.au, %vector.body ]
  %vec.phi153 = phi <16 x i32> [ zeroinitializer, %vector.ph ], [ %i.av, %vector.body ]
  %vec.phi154 = phi <16 x i32> [ zeroinitializer, %vector.ph ], [ %i.aw, %vector.body ]
  %vec.phi155 = phi <16 x i32> [ zeroinitializer, %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi156 = phi <16 x i32> [ %i.q, %vector.ph ], [ %i.bc, %vector.body ]
  %vec.phi157 = phi <16 x i32> [ zeroinitializer, %vector.ph ], [ %i.bd, %vector.body ]
  %vec.phi158 = phi <16 x i32> [ zeroinitializer, %vector.ph ], [ %i.be, %vector.body ]
  %vec.phi159 = phi <16 x i32> [ zeroinitializer, %vector.ph ], [ %i.bf, %vector.body ]
  %i.r = add i64 %.sroa.0.0.lcssa, %index         ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.r ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %wide.load = load <16 x i8>, ptr %i.s, align 1
  %wide.load160 = load <16 x i8>, ptr %i.t, align 1
  %wide.load161 = load <16 x i8>, ptr %i.u, align 1
  %wide.load162 = load <16 x i8>, ptr %i.v, align 1
  %i.w = zext <16 x i8> %wide.load to <16 x i32>  ; 3 uses
  %i.x = zext <16 x i8> %wide.load160 to <16 x i32> ; 3 uses
  %i.y = zext <16 x i8> %wide.load161 to <16 x i32> ; 3 uses
  %i.z = zext <16 x i8> %wide.load162 to <16 x i32> ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 %i.r ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %wide.load163 = load <16 x i8>, ptr %i.aa, align 1
  %wide.load164 = load <16 x i8>, ptr %i.ab, align 1
  %wide.load165 = load <16 x i8>, ptr %i.ac, align 1
  %wide.load166 = load <16 x i8>, ptr %i.ad, align 1
  %i.ae = zext <16 x i8> %wide.load163 to <16 x i32> ; 3 uses
  %i.af = zext <16 x i8> %wide.load164 to <16 x i32> ; 3 uses
  %i.ag = zext <16 x i8> %wide.load165 to <16 x i32> ; 3 uses
  %i.ah = zext <16 x i8> %wide.load166 to <16 x i32> ; 3 uses
  %i.ai = mul nuw nsw <16 x i32> %i.ae, %i.w
  %i.aj = mul nuw nsw <16 x i32> %i.af, %i.x
  %i.ak = mul nuw nsw <16 x i32> %i.ag, %i.y
  %i.al = mul nuw nsw <16 x i32> %i.ah, %i.z
  %i.am = add <16 x i32> %i.ai, %vec.phi          ; 2 uses
  %i.an = add <16 x i32> %i.aj, %vec.phi149       ; 2 uses
  %i.ao = add <16 x i32> %i.ak, %vec.phi150       ; 2 uses
  %i.ap = add <16 x i32> %i.al, %vec.phi151       ; 2 uses
  %i.aq = mul nuw nsw <16 x i32> %i.w, %i.w
  %i.ar = mul nuw nsw <16 x i32> %i.x, %i.x
  %i.as = mul nuw nsw <16 x i32> %i.y, %i.y
  %i.at = mul nuw nsw <16 x i32> %i.z, %i.z
  %i.au = add <16 x i32> %i.aq, %vec.phi152       ; 2 uses
  %i.av = add <16 x i32> %i.ar, %vec.phi153       ; 2 uses
  %i.aw = add <16 x i32> %i.as, %vec.phi154       ; 2 uses
  %i.ax = add <16 x i32> %i.at, %vec.phi155       ; 2 uses
  %i.ay = mul nuw nsw <16 x i32> %i.ae, %i.ae
  %i.az = mul nuw nsw <16 x i32> %i.af, %i.af
  %i.ba = mul nuw nsw <16 x i32> %i.ag, %i.ag
  %i.bb = mul nuw nsw <16 x i32> %i.ah, %i.ah
  %i.bc = add <16 x i32> %i.ay, %vec.phi156       ; 2 uses
  %i.bd = add <16 x i32> %i.az, %vec.phi157       ; 2 uses
  %i.be = add <16 x i32> %i.ba, %vec.phi158       ; 2 uses
  %i.bf = add <16 x i32> %i.bb, %vec.phi159       ; 2 uses
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !8296

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <16 x i32> %i.an, %i.am
  %bin.rdx167 = add <16 x i32> %i.ao, %bin.rdx
  %bin.rdx168 = add <16 x i32> %i.ap, %bin.rdx167
  %i.bh = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %bin.rdx168)
  %bin.rdx169 = add <16 x i32> %i.av, %i.au
  %bin.rdx170 = add <16 x i32> %i.aw, %bin.rdx169
  %bin.rdx171 = add <16 x i32> %i.ax, %bin.rdx170
  %i.bi = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %bin.rdx171)
  %bin.rdx172 = add <16 x i32> %i.bd, %i.bc
  %bin.rdx173 = add <16 x i32> %i.be, %bin.rdx172
  %bin.rdx174 = add <16 x i32> %i.bf, %bin.rdx173
  %i.bj = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %bin.rdx174)
  br label %.lr.ph122.preheader177

.lr.ph122.preheader177:                           ; preds = %.lr.ph122.preheader, %middle.block
  %.sroa.0.1120.ph = phi i64 [ %.sroa.0.0.lcssa, %.lr.ph122.preheader ], [ %i.n, %middle.block ]
  %.sroa.08.0119.ph = phi i32 [ %.lcssa, %.lr.ph122.preheader ], [ %i.bh, %middle.block ]
  %.sroa.010.0118.ph = phi i32 [ %.lcssa110, %.lr.ph122.preheader ], [ %i.bi, %middle.block ]
  %.sroa.012.0117.ph = phi i32 [ %.lcssa111, %.lr.ph122.preheader ], [ %i.bj, %middle.block ]
  br label %.lr.ph122

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.bk = phi i64 [ %i.ce, %.lr.ph ], [ 64, %bb.a ] ; 2 uses
  %.sroa.0.0113 = phi i64 [ %i.bk, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.bl = phi <16 x i32> [ %i.bz, %.lr.ph ], [ zeroinitializer, %bb.a ]
  %i.bm = phi <16 x i32> [ %i.cb, %.lr.ph ], [ zeroinitializer, %bb.a ]
  %i.bn = phi <16 x i32> [ %i.cd, %.lr.ph ], [ zeroinitializer, %bb.a ]
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0113
  %.val19104 = load <64 x i8>, ptr %i.bo, align 1, !noalias !60 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0.0113
  %.val18105 = load <64 x i8>, ptr %i.bp, align 1, !noalias !60 ; 2 uses
  %i.bq = shufflevector <64 x i8> %.val19104, <64 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <64 x i32> <i32 0, i32 64, i32 1, i32 65, i32 2, i32 66, i32 3, i32 67, i32 4, i32 68, i32 5, i32 69, i32 6, i32 70, i32 7, i32 71, i32 16, i32 80, i32 17, i32 81, i32 18, i32 82, i32 19, i32 83, i32 20, i32 84, i32 21, i32 85, i32 22, i32 86, i32 23, i32 87, i32 32, i32 96, i32 33, i32 97, i32 34, i32 98, i32 35, i32 99, i32 36, i32 100, i32 37, i32 101, i32 38, i32 102, i32 39, i32 103, i32 48, i32 112, i32 49, i32 113, i32 50, i32 114, i32 51, i32 115, i32 52, i32 116, i32 53, i32 117, i32 54, i32 118, i32 55, i32 119>
end_hunk_1
