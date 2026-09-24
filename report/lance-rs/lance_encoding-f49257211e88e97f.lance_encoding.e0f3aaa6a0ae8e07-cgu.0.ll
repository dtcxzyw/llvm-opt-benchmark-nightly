Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_encoding-f49257211e88e97f.lance_encoding.e0f3aaa6a0ae8e07-cgu.0?download=true
inline.NumInlined: 29360
inline.NumDeleted: 11629
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 155
begin_hunk_0_@_RNvXs9_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB5_25SparseStructuralSchedulerNtB7_23StructuralPageScheduler15schedule_ranges:bb.a

bb.ap:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core5sliceSy15partition_pointNCNvMs8_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtBV_25SparseStructuralScheduler17value_chunk_ranges_0EB13_.exit.i, %bb.ab
  %.sroa.12261.1.ph = phi i64 [ 0, %bb.ab ], [ %i.dy, %_RINvMNtCscI6d9CVNmLh_4core5sliceSy15partition_pointNCNvMs8_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtBV_25SparseStructuralScheduler17value_chunk_ranges_0EB13_.exit.i ] ; 6 uses
  %.sroa.19.1.ph = phi i64 [ 0, %bb.ab ], [ %.sroa.0.0.i.i, %_RINvMNtCscI6d9CVNmLh_4core5sliceSy15partition_pointNCNvMs8_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtBV_25SparseStructuralScheduler17value_chunk_ranges_0EB13_.exit.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !83259)
  %spec.select.i.i = call i64 @llvm.usub.sat.i64(i64 %.sroa.19.1.ph, i64 %.sroa.12261.1.ph) ; 2 uses
  %i.em = load i64, ptr %i.ah, align 8, !range !76, !alias.scope !83260, !noundef !75
  %i.en = sub i64 %i.em, %i.cz
  %i.eo = icmp ugt i64 %spec.select.i.i, %i.en
  br i1 %i.eo, label %bb.aq, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i, !prof !81

bb.aq:                                            ; preds = %bb.ap
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah, i64 noundef %i.cz, i64 noundef %spec.select.i.i, i64 noundef 8, i64 noundef 8)
          to label %.noexc210 unwind label %.loopexit389

.noexc210:                                        ; preds = %bb.aq
  %.pre.i = load i64, ptr %i.cc, align 8, !alias.scope !83259
  %.pre = load ptr, ptr %i.cb, align 8, !alias.scope !83259
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %.noexc210, %bb.ap
  %i.ep = phi ptr [ %i.cy, %bb.ap ], [ %.pre, %.noexc210 ] ; 3 uses
  %i.eq = phi i64 [ %i.cz, %bb.ap ], [ %.pre.i, %.noexc210 ] ; 4 uses
  %i.er = icmp ult i64 %.sroa.12261.1.ph, %.sroa.19.1.ph
  br i1 %i.er, label %.lr.ph.i.i.i209.preheader, label %.loopexit

.lr.ph.i.i.i209.preheader:                        ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i
  %i.es = sub nuw i64 %.sroa.19.1.ph, %.sroa.12261.1.ph ; 3 uses
  %min.iters.check = icmp ult i64 %i.es, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i209.preheader452, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i209.preheader
  %n.vec = and i64 %i.es, -4                      ; 4 uses
  %i.et = add i64 %i.eq, %n.vec                   ; 2 uses
  %i.eu = add i64 %.sroa.12261.1.ph, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.sroa.12261.1.ph, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %i.ev = getelementptr [8 x i8], ptr %i.ep, i64 %i.eq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.ew = getelementptr [8 x i8], ptr %i.ev, i64 %index ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store <2 x i64> %vec.ind, ptr %i.ew, align 8, !noalias !83261
  store <2 x i64> %step.add, ptr %i.ex, align 8, !noalias !83261
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.ey = icmp eq i64 %index.next, %n.vec
  br i1 %i.ey, label %middle.block, label %vector.body, !llvm.loop !83134

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.es, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i209.preheader452

.lr.ph.i.i.i209.preheader452:                     ; preds = %.lr.ph.i.i.i209.preheader, %middle.block
  %.ph = phi i64 [ %i.eq, %.lr.ph.i.i.i209.preheader ], [ %i.et, %middle.block ]
  %.sroa.0.011.i.i.i.ph = phi i64 [ %.sroa.12261.1.ph, %.lr.ph.i.i.i209.preheader ], [ %i.eu, %middle.block ]
  br label %.lr.ph.i.i.i209

.lr.ph.i.i.i209:                                  ; preds = %.lr.ph.i.i.i209.preheader452, %.lr.ph.i.i.i209
  %i.ez = phi i64 [ %i.fc, %.lr.ph.i.i.i209 ], [ %.ph, %.lr.ph.i.i.i209.preheader452 ] ; 2 uses
  %.sroa.0.011.i.i.i = phi i64 [ %i.fa, %.lr.ph.i.i.i209 ], [ %.sroa.0.011.i.i.i.ph, %.lr.ph.i.i.i209.preheader452 ] ; 2 uses
  %i.fa = add nuw i64 %.sroa.0.011.i.i.i, 1       ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.ez
  store i64 %.sroa.0.011.i.i.i, ptr %i.fb, align 8, !noalias !83261
  %i.fc = add i64 %i.ez, 1                        ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.fa, %.sroa.19.1.ph
  br i1 %exitcond.not.i.i.i, label %.loopexit, label %.lr.ph.i.i.i209, !llvm.loop !83135

.loopexit:                                        ; preds = %.lr.ph.i.i.i209, %middle.block, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i
  %.val5.i.i.i = phi i64 [ %i.eq, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ %i.et, %middle.block ], [ %i.fc, %.lr.ph.i.i.i209 ] ; 9 uses
  store i64 %.val5.i.i.i, ptr %i.cc, align 8, !alias.scope !83259, !noalias !83262
  %i.fd = icmp eq ptr %i.da, %i.cr
  br i1 %i.fd, label %._crit_edge, label %bb.ab

bb.ar:                                            ; preds = %bb.bw, %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !83263)
  call void @llvm.experimental.noalias.scope.decl(metadata !83264)
  call void @llvm.experimental.noalias.scope.decl(metadata !83265)
  %.val.i.i.i = load ptr, ptr %.sroa.471.0..sroa_idx, align 8, !alias.scope !83266, !nonnull !75, !noundef !75 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.val1.i.i.i = load i64, ptr %i.fe, align 8, !alias.scope !83266, !noundef !75 ; 2 uses
  %i.ff = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.ff, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse25SparseStructuralLayerPlanENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBP_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ar, %.lr.ph.i.i.i.i.i
  %.sroa.0.07.i.i.i.i.i = phi i64 [ %i.fh, %.lr.ph.i.i.i.i.i ], [ 0, %bb.ar ] ; 2 uses
  %i.fg = getelementptr inbounds nuw [112 x i8], ptr %.val.i.i.i, i64 %.sroa.0.07.i.i.i.i.i
  %i.fh = add nuw nsw i64 %.sroa.0.07.i.i.i.i.i, 1 ; 2 uses
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse25SparseStructuralLayerPlanEBL_(ptr noalias noundef readonly align 8 dereferenceable(112) %i.fg), !noalias !83266
  %i.fi = icmp eq i64 %i.fh, %.val1.i.i.i
  br i1 %i.fi, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse25SparseStructuralLayerPlanENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBP_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse25SparseStructuralLayerPlanENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBP_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.ar
  %i.fj = icmp eq i64 %i.ck, 0
  br i1 %i.fj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20SparseStructuralPlanEBL_.exit.i, label %bb.as

bb.as:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse25SparseStructuralLayerPlanENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBP_.exit.i.i.i
  %i.fk = mul nuw i64 %i.ck, 112
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.fk, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !83266
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20SparseStructuralPlanEBL_.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20SparseStructuralPlanEBL_.exit.i: ; preds = %bb.as, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse25SparseStructuralLayerPlanENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBP_.exit.i.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !83267)
  %.val.i1.i = load i64, ptr %i.fl, align 8, !alias.scope !83268 ; 2 uses
  %i.fm = icmp eq i64 %.val.i1.i, 0
  br i1 %i.fm, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse25SparseStructuralSelectionEBL_.exit, label %bb.at

bb.at:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20SparseStructuralPlanEBL_.exit.i
  %.val1.i2.i = load ptr, ptr %i.cn, align 8, !alias.scope !83268, !nonnull !75, !noundef !75
  %i.fn = shl nuw i64 %.val.i1.i, 4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i2.i, i64 noundef %i.fn, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !83268
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse25SparseStructuralSelectionEBL_.exit

bb.au:                                            ; preds = %._crit_edge
  %i.fo = icmp ult i64 %.val5.i.i.i, 21
  br i1 %i.fo, label %bb.aw, label %bb.av, !prof !78

bb.av:                                            ; preds = %bb.au
  invoke void @_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort8unstable7ipnsortjNvYjNtNtB8_3cmp10PartialOrd2ltECs8SUNSmrkv52_12arrow_schema(ptr noalias noundef nonnull align 8 %.pre403, i64 noundef %.val5.i.i.i, ptr noalias noundef nonnull %i.a)
          to label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNvYjNtNtBa_3cmp10PartialOrd2ltECsjjpCCFGI3ul_14lance_encoding.exit.thread327 unwind label %.loopexit.split-lp

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNvYjNtNtBa_3cmp10PartialOrd2ltECsjjpCCFGI3ul_14lance_encoding.exit.thread327: ; preds = %bb.av
  %i.fp = icmp ult i64 %.val5.i.i.i, 1152921504606846976
  call void @llvm.assume(i1 %i.fp)
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %.idx.i = shl nuw nsw i64 %.val5.i.i.i, 3
  %i.fq = getelementptr inbounds nuw i8, ptr %.pre403, i64 %.idx.i
  %.sroa.0.01.i = getelementptr inbounds nuw i8, ptr %.pre403, i64 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECsjjpCCFGI3ul_14lance_encoding.exit.i, %bb.aw
  %.sroa.0.04.i = phi ptr [ %.sroa.0.0.i211, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECsjjpCCFGI3ul_14lance_encoding.exit.i ], [ %.sroa.0.01.i, %bb.aw ] ; 4 uses
  %.pn3.i = phi ptr [ %.sroa.0.04.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECsjjpCCFGI3ul_14lance_encoding.exit.i ], [ %.pre403, %bb.aw ] ; 3 uses
  %.val9.i.i = load i64, ptr %.sroa.0.04.i, align 8, !alias.scope !83269, !noalias !83270, !noundef !75 ; 3 uses
  %.val10.i.i = load i64, ptr %.pn3.i, align 8, !alias.scope !83271, !noalias !83272, !noundef !75 ; 2 uses
  %i.fr = icmp ult i64 %.val9.i.i, %.val10.i.i
  br i1 %i.fr, label %.preheader.i.preheader, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECsjjpCCFGI3ul_14lance_encoding.exit.i

.preheader.i.preheader:                           ; preds = %.lr.ph.i
  store i64 %.val10.i.i, ptr %.sroa.0.04.i, align 8, !alias.scope !83273
  %i.fs = icmp eq ptr %.pn3.i, %.pre403
  br i1 %i.fs, label %._crit_edge447, label %.lr.ph446

.preheader.i:                                     ; preds = %.lr.ph446
  store i64 %.val8.i.i, ptr %.sroa.0.0.i.i213445, align 8, !alias.scope !83273
  %i.ft = icmp eq ptr %i.fu, %.pre403
  br i1 %i.ft, label %._crit_edge447, label %.lr.ph446

.lr.ph446:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.0.0.i.i213445 = phi ptr [ %i.fu, %.preheader.i ], [ %.pn3.i, %.preheader.i.preheader ] ; 3 uses
  %i.fu = getelementptr inbounds i8, ptr %.sroa.0.0.i.i213445, i64 -8 ; 3 uses
  %.val8.i.i = load i64, ptr %i.fu, align 8, !alias.scope !83271, !noalias !83272, !noundef !75 ; 2 uses
  %i.fv = icmp ult i64 %.val9.i.i, %.val8.i.i
  br i1 %i.fv, label %.preheader.i, label %._crit_edge447

._crit_edge447:                                   ; preds = %.preheader.i, %.lr.ph446, %.preheader.i.preheader
  %.sroa.0.0.i.lcssa.i = phi ptr [ %.pre403, %.preheader.i.preheader ], [ %.pre403, %.preheader.i ], [ %.sroa.0.0.i.i213445, %.lr.ph446 ]
  store i64 %.val9.i.i, ptr %.sroa.0.0.i.lcssa.i, align 8, !alias.scope !83273, !noalias !83274
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECsjjpCCFGI3ul_14lance_encoding.exit.i

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %._crit_edge447, %.lr.ph.i
  %.sroa.0.0.i211 = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i, i64 8 ; 2 uses
  %.not.i212 = icmp eq ptr %.sroa.0.0.i211, %i.fq
  br i1 %.not.i212, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNvYjNtNtBa_3cmp10PartialOrd2ltECsjjpCCFGI3ul_14lance_encoding.exit, label %.lr.ph.i

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNvYjNtNtBa_3cmp10PartialOrd2ltECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECsjjpCCFGI3ul_14lance_encoding.exit.i
  %.pr = load i64, ptr %i.cc, align 8, !alias.scope !83275 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !83275)
  %i.fw = icmp ult i64 %.pr, 1152921504606846976
  call void @llvm.assume(i1 %i.fw)
  %i.fx = icmp samesign ult i64 %.pr, 2
  br i1 %i.fx, label %_RINvMs_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecjE8dedup_byNCNvMs4_B5_Bv_5dedup0ECsjjpCCFGI3ul_14lance_encoding.exit, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNvYjNtNtBa_3cmp10PartialOrd2ltECsjjpCCFGI3ul_14lance_encoding.exit._crit_edge

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNvYjNtNtBa_3cmp10PartialOrd2ltECsjjpCCFGI3ul_14lance_encoding.exit._crit_edge: ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNvYjNtNtBa_3cmp10PartialOrd2ltECsjjpCCFGI3ul_14lance_encoding.exit
  %.pre404 = load ptr, ptr %i.cb, align 8, !alias.scope !83275
  br label %bb.ax

bb.ax:                                            ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNvYjNtNtBa_3cmp10PartialOrd2ltECsjjpCCFGI3ul_14lance_encoding.exit._crit_edge, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNvYjNtNtBa_3cmp10PartialOrd2ltECsjjpCCFGI3ul_14lance_encoding.exit.thread327
  %i.fy = phi ptr [ %.pre403, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNvYjNtNtBa_3cmp10PartialOrd2ltECsjjpCCFGI3ul_14lance_encoding.exit.thread327 ], [ %.pre404, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNvYjNtNtBa_3cmp10PartialOrd2ltECsjjpCCFGI3ul_14lance_encoding.exit._crit_edge ] ; 7 uses
  %i.fz = phi i64 [ %.val5.i.i.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNvYjNtNtBa_3cmp10PartialOrd2ltECsjjpCCFGI3ul_14lance_encoding.exit.thread327 ], [ %.pr, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNvYjNtNtBa_3cmp10PartialOrd2ltECsjjpCCFGI3ul_14lance_encoding.exit._crit_edge ] ; 6 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ba, %bb.ax
  %indvar = phi i64 [ %indvar.next, %bb.ba ], [ 0, %bb.ax ] ; 3 uses
  %.sroa.0.023.i = phi i64 [ %.sroa.5.024.i, %bb.ba ], [ 1, %bb.ax ] ; 8 uses
  %i.ga = getelementptr [8 x i8], ptr %i.fy, i64 %.sroa.0.023.i ; 2 uses
  %i.gb = getelementptr i8, ptr %i.ga, i64 -8
  %.val.i214 = load i64, ptr %i.ga, align 8, !noalias !83275, !noundef !75
  %.val11.i = load i64, ptr %i.gb, align 8, !noalias !83275, !noundef !75
  %i.gc = icmp eq i64 %.val.i214, %.val11.i
  %.sroa.5.024.i = add nuw nsw i64 %.sroa.0.023.i, 1 ; 5 uses
  br i1 %i.gc, label %.preheader.i216, label %bb.ba

.preheader.i216:                                  ; preds = %bb.ay
  %i.gd = icmp samesign ult i64 %.sroa.5.024.i, %i.fz
  br i1 %i.gd, label %.lr.ph.i217.preheader, label %._crit_edge.i

.lr.ph.i217.preheader:                            ; preds = %.preheader.i216
  %i.ge = sub i64 %i.fz, %indvar
  %i.gf = add nsw i64 %i.fz, -3
  %xtraiter = and i64 %i.ge, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i217.prol.loopexit, label %.lr.ph.i217.prol

.lr.ph.i217.prol:                                 ; preds = %.lr.ph.i217.preheader
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %.sroa.5.024.i
  %i.gh = getelementptr [8 x i8], ptr %i.fy, i64 %.sroa.0.023.i ; 2 uses
  %i.gi = getelementptr i8, ptr %i.gh, i64 -8
  %.val12.i.prol = load i64, ptr %i.gg, align 8, !noalias !83275, !noundef !75 ; 2 uses
  %.val13.i.prol = load i64, ptr %i.gi, align 8, !noalias !83275, !noundef !75
  %i.gj = icmp eq i64 %.val12.i.prol, %.val13.i.prol
  br i1 %i.gj, label %.lr.ph.i217.prol.loopexit.unr-lcssa, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i217.prol
  store i64 %.val12.i.prol, ptr %i.gh, align 8, !noalias !83275
  %i.gk = add nuw i64 %.sroa.0.023.i, 1
  br label %.lr.ph.i217.prol.loopexit.unr-lcssa

.lr.ph.i217.prol.loopexit.unr-lcssa:              ; preds = %bb.az, %.lr.ph.i217.prol
  %.sroa.11.1.i.prol = phi i64 [ %i.gk, %bb.az ], [ %.sroa.0.023.i, %.lr.ph.i217.prol ] ; 2 uses
  %.sroa.5.0.i.prol = add nuw nsw i64 %.sroa.0.023.i, 2
  br label %.lr.ph.i217.prol.loopexit

.lr.ph.i217.prol.loopexit:                        ; preds = %.lr.ph.i217.prol.loopexit.unr-lcssa, %.lr.ph.i217.preheader
  %.sroa.11.1.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i217.preheader ], [ %.sroa.11.1.i.prol, %.lr.ph.i217.prol.loopexit.unr-lcssa ]
  %.sroa.5.026.i.unr = phi i64 [ %.sroa.5.024.i, %.lr.ph.i217.preheader ], [ %.sroa.5.0.i.prol, %.lr.ph.i217.prol.loopexit.unr-lcssa ]
  %.sroa.11.025.i.unr = phi i64 [ %.sroa.0.023.i, %.lr.ph.i217.preheader ], [ %.sroa.11.1.i.prol, %.lr.ph.i217.prol.loopexit.unr-lcssa ]
  %i.gl = icmp eq i64 %i.gf, %indvar
  br i1 %i.gl, label %._crit_edge.i, label %.lr.ph.i217

bb.ba:                                            ; preds = %bb.ay
  %.not.i215 = icmp eq i64 %.sroa.5.024.i, %i.fz
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i215, label %_RINvMs_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecjE8dedup_byNCNvMs4_B5_Bv_5dedup0ECsjjpCCFGI3ul_14lance_encoding.exit, label %bb.ay

._crit_edge.i:                                    ; preds = %.lr.ph.i217.prol.loopexit, %bb.bd, %.preheader.i216
  %.sroa.11.0.lcssa.i = phi i64 [ %.sroa.0.023.i, %.preheader.i216 ], [ %.sroa.11.1.i.lcssa.unr, %.lr.ph.i217.prol.loopexit ], [ %.sroa.11.1.i.1, %bb.bd ] ; 2 uses
  store i64 %.sroa.11.0.lcssa.i, ptr %i.cc, align 8, !alias.scope !83275
  br label %_RINvMs_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecjE8dedup_byNCNvMs4_B5_Bv_5dedup0ECsjjpCCFGI3ul_14lance_encoding.exit

.lr.ph.i217:                                      ; preds = %.lr.ph.i217.prol.loopexit, %bb.bd
  %.sroa.5.026.i = phi i64 [ %.sroa.5.0.i.1, %bb.bd ], [ %.sroa.5.026.i.unr, %.lr.ph.i217.prol.loopexit ] ; 3 uses
  %.sroa.11.025.i = phi i64 [ %.sroa.11.1.i.1, %bb.bd ], [ %.sroa.11.025.i.unr, %.lr.ph.i217.prol.loopexit ] ; 3 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %.sroa.5.026.i
  %i.gn = getelementptr [8 x i8], ptr %i.fy, i64 %.sroa.11.025.i ; 2 uses
  %i.go = getelementptr i8, ptr %i.gn, i64 -8
  %.val12.i = load i64, ptr %i.gm, align 8, !noalias !83275, !noundef !75 ; 2 uses
  %.val13.i = load i64, ptr %i.go, align 8, !noalias !83275, !noundef !75
  %i.gp = icmp eq i64 %.val12.i, %.val13.i
  br i1 %i.gp, label %.lr.ph.i217.1, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i217
  store i64 %.val12.i, ptr %i.gn, align 8, !noalias !83275
  %i.gq = add i64 %.sroa.11.025.i, 1
  br label %.lr.ph.i217.1

.lr.ph.i217.1:                                    ; preds = %bb.bb, %.lr.ph.i217
  %.sroa.11.1.i = phi i64 [ %i.gq, %bb.bb ], [ %.sroa.11.025.i, %.lr.ph.i217 ] ; 3 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %.sroa.5.026.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = getelementptr [8 x i8], ptr %i.fy, i64 %.sroa.11.1.i ; 2 uses
  %i.gu = getelementptr i8, ptr %i.gt, i64 -8
  %.val12.i.1 = load i64, ptr %i.gs, align 8, !noalias !83275, !noundef !75 ; 2 uses
  %.val13.i.1 = load i64, ptr %i.gu, align 8, !noalias !83275, !noundef !75
  %i.gv = icmp eq i64 %.val12.i.1, %.val13.i.1
  br i1 %i.gv, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.i217.1
  store i64 %.val12.i.1, ptr %i.gt, align 8, !noalias !83275
  %i.gw = add i64 %.sroa.11.1.i, 1
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.lr.ph.i217.1
  %.sroa.11.1.i.1 = phi i64 [ %i.gw, %bb.bc ], [ %.sroa.11.1.i, %.lr.ph.i217.1 ] ; 2 uses
  %.sroa.5.0.i.1 = add nuw nsw i64 %.sroa.5.026.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %.sroa.5.0.i.1, %i.fz
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %.lr.ph.i217

_RINvMs_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecjE8dedup_byNCNvMs4_B5_Bv_5dedup0ECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.ba, %bb.aa, %._crit_edge, %._crit_edge.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNvYjNtNtBa_3cmp10PartialOrd2ltECsjjpCCFGI3ul_14lance_encoding.exit
  %i.gx = phi i64 [ 0, %bb.aa ], [ %.val5.i.i.i, %._crit_edge ], [ %.sroa.11.0.lcssa.i, %._crit_edge.i ], [ %.pr, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNvYjNtNtBa_3cmp10PartialOrd2ltECsjjpCCFGI3ul_14lance_encoding.exit ], [ %i.fz, %bb.ba ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8265)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16)
  %i.gy = load ptr, ptr %i.aj, align 8, !noalias !83276, !noundef !75
  %.not.i218 = icmp eq ptr %i.gy, null
  br i1 %.not.i218, label %bb.bv, label %bb.be

bb.be:                                            ; preds = %_RINvMs_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecjE8dedup_byNCNvMs4_B5_Bv_5dedup0ECsjjpCCFGI3ul_14lance_encoding.exit
  %i.gz = load ptr, ptr %i.cb, align 8, !nonnull !75, !noundef !75 ; 3 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.gx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !83277
  store i8 -1, ptr %i.k, align 8, !noalias !83277
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !83277
  call void @llvm.experimental.noalias.scope.decl(metadata !83278)
  call void @llvm.experimental.noalias.scope.decl(metadata !83279)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !83280
  store ptr %i.gz, ptr %i.i, align 8, !alias.scope !83281, !noalias !83282
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.ha, ptr %.sroa.431.0..sroa_idx.i, align 8, !alias.scope !83281, !noalias !83282
  %.sroa.5.0..sroa_idx.i219 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.aj, ptr %.sroa.5.0..sroa_idx.i219, align 8, !alias.scope !83281, !noalias !83282
  %.sroa.4.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx7.i.i, align 8, !alias.scope !83281, !noalias !83283
  call void @llvm.experimental.noalias.scope.decl(metadata !83284)
  call void @llvm.experimental.noalias.scope.decl(metadata !83285)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !83286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !83286
  invoke fastcc void @_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterjENCNvMs8_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB1N_25SparseStructuralScheduler19lookup_value_chunkss_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB1V_(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %.noexc.i.i220 unwind label %bb.bq, !noalias !83287

.noexc.i.i220:                                    ; preds = %bb.be
  %i.hb = load ptr, ptr %i.g, align 8, !noalias !83286, !noundef !75
  %.not.i.i.i.i.i.i = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.i.i.i.i, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %.noexc.i.i220
  store i64 0, ptr %i.j, align 8, !alias.scope !83288, !noalias !83289
  %i.hc = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.hc, align 8, !alias.scope !83288, !noalias !83289
  %i.hd = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %i.hd, align 8, !alias.scope !83288, !noalias !83289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !83286
  br label %bb.br

bb.bg:                                            ; preds = %bb.bj
  %i.he = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !83290)
  call void @llvm.experimental.noalias.scope.decl(metadata !83291)
  call void @llvm.experimental.noalias.scope.decl(metadata !83292)
  call void @llvm.experimental.noalias.scope.decl(metadata !83293)
  call void @llvm.experimental.noalias.scope.decl(metadata !83294)
  %i.hf = load ptr, ptr %i.f, align 8, !alias.scope !83295, !noalias !83286, !nonnull !75, !noundef !75
  %i.hg = atomicrmw sub ptr %i.hf, i64 1 release, align 8, !noalias !83296
  %i.hh = icmp eq i64 %i.hg, 1
  br i1 %i.hh, label %bb.bh, label %.body.i.i

bb.bh:                                            ; preds = %bb.bg
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f)
          to label %.body.i.i unwind label %bb.bp, !noalias !83297

bb.bi:                                            ; preds = %.noexc.i.i220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !83286
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !noalias !83286
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !83298
  %i.hi = call noundef align 8 dereferenceable_or_null(224) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 224, i64 noundef range(i64 1, 17) 8) #63, !noalias !83298 ; 4 uses
  %i.hj = icmp eq ptr %i.hi, null
  br i1 %i.hj, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 224) #66
          to label %.noexc5.i.i.i.i.i.i unwind label %bb.bg, !noalias !83297

.noexc5.i.i.i.i.i.i:                              ; preds = %bb.bj
  unreachable

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.hi, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !noalias !83297
  store i64 4, ptr %i.h, align 8, !noalias !83286
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.hi, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !83286
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !83286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !83286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !83286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !83286
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !83299
  call void @llvm.experimental.noalias.scope.decl(metadata !83300)
  call void @llvm.experimental.noalias.scope.decl(metadata !83301)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !83302
  invoke fastcc void @_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterjENCNvMs8_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB1N_25SparseStructuralScheduler19lookup_value_chunkss_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB1V_(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %.noexc7.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i, !noalias !83297

.noexc7.i.i.i.i.i.i:                              ; preds = %bb.bk
  %i.hk = load ptr, ptr %i.d, align 8, !noalias !83302, !noundef !75
  %.not5.i.i.i.i.i.i.i.i = icmp eq ptr %i.hk, null
  br i1 %.not5.i.i.i.i.i.i.i.i, label %.loopexit9.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc7.i.i.i.i.i.i, %.noexc8.i.i.i.i.i.i
  %i.hl = phi ptr [ %i.hq, %.noexc8.i.i.i.i.i.i ], [ %i.hi, %.noexc7.i.i.i.i.i.i ]
  %i.hm = phi i64 [ %i.hs, %.noexc8.i.i.i.i.i.i ], [ 1, %.noexc7.i.i.i.i.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !83302
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false), !noalias !83302
  %i.hn = icmp samesign ult i64 %i.hm, 164703072086692426
  call void @llvm.assume(i1 %i.hn)
  %i.ho = load i64, ptr %i.h, align 8, !range !76, !alias.scope !83303, !noalias !83304, !noundef !75
  %i.hp = icmp eq i64 %i.hm, %i.ho
  br i1 %i.hp, label %bb.bn, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11LoadedChunkE7reserveBM_.exit.i.i.i.i.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11LoadedChunkE7reserveBM_.exit.i.i.i.i.i.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11LoadedChunkE7reserveBM_.exit.i.i_crit_edge.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.hq = phi ptr [ %.pre.i.i.i.i.i.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11LoadedChunkE7reserveBM_.exit.i.i_crit_edge.i.i.i.i.i.i ], [ %i.hl, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.hr = getelementptr inbounds nuw [56 x i8], ptr %i.hq, i64 %i.hm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.hr, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false), !noalias !83305
  %i.hs = add nuw nsw i64 %i.hm, 1                ; 2 uses
  store i64 %i.hs, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !83303, !noalias !83304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !83302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !83302
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !83302
  invoke fastcc void @_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterjENCNvMs8_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB1N_25SparseStructuralScheduler19lookup_value_chunkss_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB1V_(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %.noexc8.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i, !noalias !83297

.noexc8.i.i.i.i.i.i:                              ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11LoadedChunkE7reserveBM_.exit.i.i.i.i.i.i.i.i
  %i.ht = load ptr, ptr %i.d, align 8, !noalias !83302, !noundef !75
  %.not.i.i6.i.i.i.i.i.i = icmp eq ptr %i.ht, null
  br i1 %.not.i.i6.i.i.i.i.i.i, label %.loopexit9.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

bb.bl:                                            ; preds = %bb.bn
  %i.hu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !83306)
  call void @llvm.experimental.noalias.scope.decl(metadata !83307)
  call void @llvm.experimental.noalias.scope.decl(metadata !83308)
  call void @llvm.experimental.noalias.scope.decl(metadata !83309)
  call void @llvm.experimental.noalias.scope.decl(metadata !83310)
  %i.hv = load ptr, ptr %i.c, align 8, !alias.scope !83311, !noalias !83302, !nonnull !75, !noundef !75
  %i.hw = atomicrmw sub ptr %i.hv, i64 1 release, align 8, !noalias !83312
  %i.hx = icmp eq i64 %i.hw, 1
  br i1 %i.hx, label %bb.bm, label %.body.i.i.i.i.i.i

bb.bm:                                            ; preds = %bb.bl
end_hunk_0
