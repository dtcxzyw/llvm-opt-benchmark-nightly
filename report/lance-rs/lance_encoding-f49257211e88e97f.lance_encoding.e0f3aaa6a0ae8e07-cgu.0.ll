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
  call void @llvm.experimental.noalias.scope.decl(metadata !83231)
  %spec.select.i.i = call i64 @llvm.usub.sat.i64(i64 %.sroa.19.1.ph, i64 %.sroa.12261.1.ph) ; 2 uses
  %i.em = load i64, ptr %i.ah, align 8, !range !76, !alias.scope !83232, !noundef !75
  %i.en = sub i64 %i.em, %i.cz
  %i.eo = icmp ugt i64 %spec.select.i.i, %i.en
  br i1 %i.eo, label %bb.aq, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i, !prof !81

bb.aq:                                            ; preds = %bb.ap
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah, i64 noundef %i.cz, i64 noundef %spec.select.i.i, i64 noundef 8, i64 noundef 8)
          to label %.noexc210 unwind label %.loopexit389

.noexc210:                                        ; preds = %bb.aq
  %.pre.i = load i64, ptr %i.cc, align 8, !alias.scope !83231
  %.pre = load ptr, ptr %i.cb, align 8, !alias.scope !83231
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
  store <2 x i64> %vec.ind, ptr %i.ew, align 8, !noalias !83233
  store <2 x i64> %step.add, ptr %i.ex, align 8, !noalias !83233
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.ey = icmp eq i64 %index.next, %n.vec
  br i1 %i.ey, label %middle.block, label %vector.body, !llvm.loop !83106

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
  store i64 %.sroa.0.011.i.i.i, ptr %i.fb, align 8, !noalias !83233
  %i.fc = add i64 %i.ez, 1                        ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.fa, %.sroa.19.1.ph
  br i1 %exitcond.not.i.i.i, label %.loopexit, label %.lr.ph.i.i.i209, !llvm.loop !83107

.loopexit:                                        ; preds = %.lr.ph.i.i.i209, %middle.block, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i
  %.val5.i.i.i = phi i64 [ %i.eq, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ %i.et, %middle.block ], [ %i.fc, %.lr.ph.i.i.i209 ] ; 9 uses
  store i64 %.val5.i.i.i, ptr %i.cc, align 8, !alias.scope !83231, !noalias !83234
  %i.fd = icmp eq ptr %i.da, %i.cr
  br i1 %i.fd, label %._crit_edge, label %bb.ab

bb.ar:                                            ; preds = %bb.bw, %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !83235)
  call void @llvm.experimental.noalias.scope.decl(metadata !83236)
  call void @llvm.experimental.noalias.scope.decl(metadata !83237)
  %.val.i.i.i = load ptr, ptr %.sroa.471.0..sroa_idx, align 8, !alias.scope !83238, !nonnull !75, !noundef !75 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.val1.i.i.i = load i64, ptr %i.fe, align 8, !alias.scope !83238, !noundef !75 ; 2 uses
  %i.ff = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.ff, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse25SparseStructuralLayerPlanENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBP_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ar, %.lr.ph.i.i.i.i.i
  %.sroa.0.07.i.i.i.i.i = phi i64 [ %i.fh, %.lr.ph.i.i.i.i.i ], [ 0, %bb.ar ] ; 2 uses
  %i.fg = getelementptr inbounds nuw [112 x i8], ptr %.val.i.i.i, i64 %.sroa.0.07.i.i.i.i.i
  %i.fh = add nuw nsw i64 %.sroa.0.07.i.i.i.i.i, 1 ; 2 uses
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse25SparseStructuralLayerPlanEBL_(ptr noalias noundef readonly align 8 dereferenceable(112) %i.fg), !noalias !83238
  %i.fi = icmp eq i64 %i.fh, %.val1.i.i.i
  br i1 %i.fi, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse25SparseStructuralLayerPlanENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBP_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse25SparseStructuralLayerPlanENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBP_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.ar
  %i.fj = icmp eq i64 %i.ck, 0
  br i1 %i.fj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20SparseStructuralPlanEBL_.exit.i, label %bb.as

bb.as:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse25SparseStructuralLayerPlanENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBP_.exit.i.i.i
  %i.fk = mul nuw i64 %i.ck, 112
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.fk, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !83238
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20SparseStructuralPlanEBL_.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20SparseStructuralPlanEBL_.exit.i: ; preds = %bb.as, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse25SparseStructuralLayerPlanENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBP_.exit.i.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !83239)
  %.val.i1.i = load i64, ptr %i.fl, align 8, !alias.scope !83240 ; 2 uses
  %i.fm = icmp eq i64 %.val.i1.i, 0
  br i1 %i.fm, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse25SparseStructuralSelectionEBL_.exit, label %bb.at

bb.at:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20SparseStructuralPlanEBL_.exit.i
  %.val1.i2.i = load ptr, ptr %i.cn, align 8, !alias.scope !83240, !nonnull !75, !noundef !75
  %i.fn = shl nuw i64 %.val.i1.i, 4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i2.i, i64 noundef %i.fn, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !83240
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
  %.val9.i.i = load i64, ptr %.sroa.0.04.i, align 8, !alias.scope !83241, !noalias !83242, !noundef !75 ; 3 uses
  %.val10.i.i = load i64, ptr %.pn3.i, align 8, !alias.scope !83243, !noalias !83244, !noundef !75 ; 2 uses
  %i.fr = icmp ult i64 %.val9.i.i, %.val10.i.i
  br i1 %i.fr, label %.preheader.i.preheader, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECsjjpCCFGI3ul_14lance_encoding.exit.i

.preheader.i.preheader:                           ; preds = %.lr.ph.i
  store i64 %.val10.i.i, ptr %.sroa.0.04.i, align 8, !alias.scope !83245
  %i.fs = icmp eq ptr %.pn3.i, %.pre403
  br i1 %i.fs, label %._crit_edge447, label %.lr.ph446

.preheader.i:                                     ; preds = %.lr.ph446
  store i64 %.val8.i.i, ptr %.sroa.0.0.i.i213445, align 8, !alias.scope !83245
  %i.ft = icmp eq ptr %i.fu, %.pre403
  br i1 %i.ft, label %._crit_edge447, label %.lr.ph446

.lr.ph446:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.0.0.i.i213445 = phi ptr [ %i.fu, %.preheader.i ], [ %.pn3.i, %.preheader.i.preheader ] ; 3 uses
  %i.fu = getelementptr inbounds i8, ptr %.sroa.0.0.i.i213445, i64 -8 ; 3 uses
  %.val8.i.i = load i64, ptr %i.fu, align 8, !alias.scope !83243, !noalias !83244, !noundef !75 ; 2 uses
  %i.fv = icmp ult i64 %.val9.i.i, %.val8.i.i
  br i1 %i.fv, label %.preheader.i, label %._crit_edge447

._crit_edge447:                                   ; preds = %.preheader.i, %.lr.ph446, %.preheader.i.preheader
  %.sroa.0.0.i.lcssa.i = phi ptr [ %.pre403, %.preheader.i.preheader ], [ %.pre403, %.preheader.i ], [ %.sroa.0.0.i.i213445, %.lr.ph446 ]
  store i64 %.val9.i.i, ptr %.sroa.0.0.i.lcssa.i, align 8, !alias.scope !83245, !noalias !83246
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECsjjpCCFGI3ul_14lance_encoding.exit.i

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %._crit_edge447, %.lr.ph.i
  %.sroa.0.0.i211 = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i, i64 8 ; 2 uses
  %.not.i212 = icmp eq ptr %.sroa.0.0.i211, %i.fq
  br i1 %.not.i212, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNvYjNtNtBa_3cmp10PartialOrd2ltECsjjpCCFGI3ul_14lance_encoding.exit, label %.lr.ph.i

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNvYjNtNtBa_3cmp10PartialOrd2ltECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECsjjpCCFGI3ul_14lance_encoding.exit.i
  %.pr = load i64, ptr %i.cc, align 8, !alias.scope !83247 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !83247)
  %i.fw = icmp ult i64 %.pr, 1152921504606846976
  call void @llvm.assume(i1 %i.fw)
  %i.fx = icmp samesign ult i64 %.pr, 2
  br i1 %i.fx, label %_RINvMs_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecjE8dedup_byNCNvMs4_B5_Bv_5dedup0ECsjjpCCFGI3ul_14lance_encoding.exit, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNvYjNtNtBa_3cmp10PartialOrd2ltECsjjpCCFGI3ul_14lance_encoding.exit._crit_edge

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNvYjNtNtBa_3cmp10PartialOrd2ltECsjjpCCFGI3ul_14lance_encoding.exit._crit_edge: ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNvYjNtNtBa_3cmp10PartialOrd2ltECsjjpCCFGI3ul_14lance_encoding.exit
  %.pre404 = load ptr, ptr %i.cb, align 8, !alias.scope !83247
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
  %.val.i214 = load i64, ptr %i.ga, align 8, !noalias !83247, !noundef !75
  %.val11.i = load i64, ptr %i.gb, align 8, !noalias !83247, !noundef !75
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
  %.val12.i.prol = load i64, ptr %i.gg, align 8, !noalias !83247, !noundef !75 ; 2 uses
  %.val13.i.prol = load i64, ptr %i.gi, align 8, !noalias !83247, !noundef !75
  %i.gj = icmp eq i64 %.val12.i.prol, %.val13.i.prol
  br i1 %i.gj, label %.lr.ph.i217.prol.loopexit.unr-lcssa, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i217.prol
  store i64 %.val12.i.prol, ptr %i.gh, align 8, !noalias !83247
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
  store i64 %.sroa.11.0.lcssa.i, ptr %i.cc, align 8, !alias.scope !83247
  br label %_RINvMs_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecjE8dedup_byNCNvMs4_B5_Bv_5dedup0ECsjjpCCFGI3ul_14lance_encoding.exit

.lr.ph.i217:                                      ; preds = %.lr.ph.i217.prol.loopexit, %bb.bd
  %.sroa.5.026.i = phi i64 [ %.sroa.5.0.i.1, %bb.bd ], [ %.sroa.5.026.i.unr, %.lr.ph.i217.prol.loopexit ] ; 3 uses
  %.sroa.11.025.i = phi i64 [ %.sroa.11.1.i.1, %bb.bd ], [ %.sroa.11.025.i.unr, %.lr.ph.i217.prol.loopexit ] ; 3 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %.sroa.5.026.i
  %i.gn = getelementptr [8 x i8], ptr %i.fy, i64 %.sroa.11.025.i ; 2 uses
  %i.go = getelementptr i8, ptr %i.gn, i64 -8
  %.val12.i = load i64, ptr %i.gm, align 8, !noalias !83247, !noundef !75 ; 2 uses
  %.val13.i = load i64, ptr %i.go, align 8, !noalias !83247, !noundef !75
  %i.gp = icmp eq i64 %.val12.i, %.val13.i
  br i1 %i.gp, label %.lr.ph.i217.1, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i217
  store i64 %.val12.i, ptr %i.gn, align 8, !noalias !83247
  %i.gq = add i64 %.sroa.11.025.i, 1
  br label %.lr.ph.i217.1

.lr.ph.i217.1:                                    ; preds = %bb.bb, %.lr.ph.i217
  %.sroa.11.1.i = phi i64 [ %i.gq, %bb.bb ], [ %.sroa.11.025.i, %.lr.ph.i217 ] ; 3 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %.sroa.5.026.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = getelementptr [8 x i8], ptr %i.fy, i64 %.sroa.11.1.i ; 2 uses
  %i.gu = getelementptr i8, ptr %i.gt, i64 -8
  %.val12.i.1 = load i64, ptr %i.gs, align 8, !noalias !83247, !noundef !75 ; 2 uses
  %.val13.i.1 = load i64, ptr %i.gu, align 8, !noalias !83247, !noundef !75
  %i.gv = icmp eq i64 %.val12.i.1, %.val13.i.1
  br i1 %i.gv, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.i217.1
  store i64 %.val12.i.1, ptr %i.gt, align 8, !noalias !83247
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
  %i.gy = load ptr, ptr %i.aj, align 8, !noalias !83248, !noundef !75
  %.not.i218 = icmp eq ptr %i.gy, null
  br i1 %.not.i218, label %bb.bv, label %bb.be

bb.be:                                            ; preds = %_RINvMs_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecjE8dedup_byNCNvMs4_B5_Bv_5dedup0ECsjjpCCFGI3ul_14lance_encoding.exit
  %i.gz = load ptr, ptr %i.cb, align 8, !nonnull !75, !noundef !75 ; 3 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.gx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !83249
  store i8 -1, ptr %i.k, align 8, !noalias !83249
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !83249
  call void @llvm.experimental.noalias.scope.decl(metadata !83250)
  call void @llvm.experimental.noalias.scope.decl(metadata !83251)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !83252
  store ptr %i.gz, ptr %i.i, align 8, !alias.scope !83253, !noalias !83254
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.ha, ptr %.sroa.431.0..sroa_idx.i, align 8, !alias.scope !83253, !noalias !83254
  %.sroa.5.0..sroa_idx.i219 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.aj, ptr %.sroa.5.0..sroa_idx.i219, align 8, !alias.scope !83253, !noalias !83254
  %.sroa.4.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx7.i.i, align 8, !alias.scope !83253, !noalias !83255
  call void @llvm.experimental.noalias.scope.decl(metadata !83256)
  call void @llvm.experimental.noalias.scope.decl(metadata !83257)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !83258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !83258
  invoke fastcc void @_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterjENCNvMs8_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB1N_25SparseStructuralScheduler19lookup_value_chunkss_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB1V_(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %.noexc.i.i220 unwind label %bb.bq, !noalias !83259

.noexc.i.i220:                                    ; preds = %bb.be
  %i.hb = load ptr, ptr %i.g, align 8, !noalias !83258, !noundef !75
  %.not.i.i.i.i.i.i = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.i.i.i.i, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %.noexc.i.i220
  store i64 0, ptr %i.j, align 8, !alias.scope !83260, !noalias !83261
  %i.hc = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.hc, align 8, !alias.scope !83260, !noalias !83261
  %i.hd = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %i.hd, align 8, !alias.scope !83260, !noalias !83261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !83258
  br label %bb.br

bb.bg:                                            ; preds = %bb.bj
  %i.he = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !83262)
  call void @llvm.experimental.noalias.scope.decl(metadata !83263)
  call void @llvm.experimental.noalias.scope.decl(metadata !83264)
  call void @llvm.experimental.noalias.scope.decl(metadata !83265)
  call void @llvm.experimental.noalias.scope.decl(metadata !83266)
  %i.hf = load ptr, ptr %i.f, align 8, !alias.scope !83267, !noalias !83258, !nonnull !75, !noundef !75
  %i.hg = atomicrmw sub ptr %i.hf, i64 1 release, align 8, !noalias !83268
  %i.hh = icmp eq i64 %i.hg, 1
  br i1 %i.hh, label %bb.bh, label %.body.i.i

bb.bh:                                            ; preds = %bb.bg
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f)
          to label %.body.i.i unwind label %bb.bp, !noalias !83269

bb.bi:                                            ; preds = %.noexc.i.i220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !83258
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !noalias !83258
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !83270
  %i.hi = call noundef align 8 dereferenceable_or_null(224) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 224, i64 noundef range(i64 1, 17) 8) #63, !noalias !83270 ; 4 uses
  %i.hj = icmp eq ptr %i.hi, null
  br i1 %i.hj, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 224) #66
          to label %.noexc5.i.i.i.i.i.i unwind label %bb.bg, !noalias !83269

.noexc5.i.i.i.i.i.i:                              ; preds = %bb.bj
  unreachable

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.hi, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !noalias !83269
  store i64 4, ptr %i.h, align 8, !noalias !83258
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.hi, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !83258
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !83258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !83258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !83258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !83258
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !83271
  call void @llvm.experimental.noalias.scope.decl(metadata !83272)
  call void @llvm.experimental.noalias.scope.decl(metadata !83273)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !83274
  invoke fastcc void @_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterjENCNvMs8_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB1N_25SparseStructuralScheduler19lookup_value_chunkss_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB1V_(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %.noexc7.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i, !noalias !83269

.noexc7.i.i.i.i.i.i:                              ; preds = %bb.bk
  %i.hk = load ptr, ptr %i.d, align 8, !noalias !83274, !noundef !75
  %.not5.i.i.i.i.i.i.i.i = icmp eq ptr %i.hk, null
  br i1 %.not5.i.i.i.i.i.i.i.i, label %.loopexit9.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc7.i.i.i.i.i.i, %.noexc8.i.i.i.i.i.i
  %i.hl = phi ptr [ %i.hq, %.noexc8.i.i.i.i.i.i ], [ %i.hi, %.noexc7.i.i.i.i.i.i ]
  %i.hm = phi i64 [ %i.hs, %.noexc8.i.i.i.i.i.i ], [ 1, %.noexc7.i.i.i.i.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !83274
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false), !noalias !83274
  %i.hn = icmp samesign ult i64 %i.hm, 164703072086692426
  call void @llvm.assume(i1 %i.hn)
  %i.ho = load i64, ptr %i.h, align 8, !range !76, !alias.scope !83275, !noalias !83276, !noundef !75
  %i.hp = icmp eq i64 %i.hm, %i.ho
  br i1 %i.hp, label %bb.bn, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11LoadedChunkE7reserveBM_.exit.i.i.i.i.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11LoadedChunkE7reserveBM_.exit.i.i.i.i.i.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11LoadedChunkE7reserveBM_.exit.i.i_crit_edge.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.hq = phi ptr [ %.pre.i.i.i.i.i.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11LoadedChunkE7reserveBM_.exit.i.i_crit_edge.i.i.i.i.i.i ], [ %i.hl, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.hr = getelementptr inbounds nuw [56 x i8], ptr %i.hq, i64 %i.hm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.hr, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false), !noalias !83277
  %i.hs = add nuw nsw i64 %i.hm, 1                ; 2 uses
  store i64 %i.hs, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !83275, !noalias !83276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !83274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !83274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !83274
  invoke fastcc void @_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterjENCNvMs8_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB1N_25SparseStructuralScheduler19lookup_value_chunkss_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB1V_(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %.noexc8.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i, !noalias !83269

.noexc8.i.i.i.i.i.i:                              ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11LoadedChunkE7reserveBM_.exit.i.i.i.i.i.i.i.i
  %i.ht = load ptr, ptr %i.d, align 8, !noalias !83274, !noundef !75
  %.not.i.i6.i.i.i.i.i.i = icmp eq ptr %i.ht, null
  br i1 %.not.i.i6.i.i.i.i.i.i, label %.loopexit9.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

bb.bl:                                            ; preds = %bb.bn
  %i.hu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !83278)
  call void @llvm.experimental.noalias.scope.decl(metadata !83279)
  call void @llvm.experimental.noalias.scope.decl(metadata !83280)
  call void @llvm.experimental.noalias.scope.decl(metadata !83281)
  call void @llvm.experimental.noalias.scope.decl(metadata !83282)
  %i.hv = load ptr, ptr %i.c, align 8, !alias.scope !83283, !noalias !83274, !nonnull !75, !noundef !75
  %i.hw = atomicrmw sub ptr %i.hv, i64 1 release, align 8, !noalias !83284
  %i.hx = icmp eq i64 %i.hw, 1
  br i1 %i.hx, label %bb.bm, label %.body.i.i.i.i.i.i

bb.bm:                                            ; preds = %bb.bl
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical4blobNtB4_21BlobStructuralEncoderNtNtBa_7encoder12FieldEncoder12maybe_encode:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit238

bb.cj:                                            ; preds = %bb.ch
  %i.hs = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke fastcc void @_RNvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical4blobNtB2_21BlobStructuralEncoder10wrap_tasks(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.hs, ptr noundef nonnull %.sroa.0.0.i.i.i.i.i, i64 noundef %.sroa.5.0.copyload)
          to label %bb.ck unwind label %.thread347

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ht = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8, !nonnull !75, !noundef !75 ; 3 uses
  %i.hv = load i64, ptr %i.o, align 8, !range !76, !noundef !75
  %i.hw = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.hx = load i64, ptr %i.hw, align 8, !noundef !75 ; 2 uses
  %i.hy = icmp ult i64 %i.hx, 576460752303423488
  call void @llvm.assume(i1 %i.hy)
  %i.hz = getelementptr inbounds nuw [16 x i8], ptr %i.hu, i64 %i.hx
  store ptr %i.hu, ptr %i.i, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.hv, ptr %i.ia, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.hu, ptr %i.ib, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.hz, ptr %i.ic, align 8
  invoke fastcc void @_RNvXs0_NtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB7_3VecINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB9_5boxed3BoxDNtNtNtBZ_6future6future6Futurep6OutputINtNtBZ_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBZ_6marker4SendEL_EEEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendB2L_(ptr noalias noundef align 8 dereferenceable(24) %i.aj, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.i)
          to label %bb.cl unwind label %.thread347

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.id, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br i1 %.not152, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcStEEECsjjpCCFGI3ul_14lance_encoding.exit211, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ie = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !noalias !86448
  %i.if = icmp eq i64 %i.ie, 1
  br i1 %i.if, label %bb.cn, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcStEEECsjjpCCFGI3ul_14lance_encoding.exit211

bb.cn:                                            ; preds = %bb.cm
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcStE9drop_slowCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.cb)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcStEEECsjjpCCFGI3ul_14lance_encoding.exit211

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcStEEECsjjpCCFGI3ul_14lance_encoding.exit211: ; preds = %bb.cn, %bb.cm, %bb.cl
  br i1 %.not153, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcStEEECsjjpCCFGI3ul_14lance_encoding.exit213, label %bb.co

bb.co:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcStEEECsjjpCCFGI3ul_14lance_encoding.exit211
  %i.ig = atomicrmw sub ptr %i.ce, i64 1 release, align 8, !noalias !86449
  %i.ih = icmp eq i64 %i.ig, 1
  br i1 %i.ih, label %bb.cp, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcStEEECsjjpCCFGI3ul_14lance_encoding.exit213

bb.cp:                                            ; preds = %bb.co
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcStE9drop_slowCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.cd)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcStEEECsjjpCCFGI3ul_14lance_encoding.exit213

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcStEEECsjjpCCFGI3ul_14lance_encoding.exit213: ; preds = %bb.cp, %bb.co, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcStEEECsjjpCCFGI3ul_14lance_encoding.exit211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.experimental.noalias.scope.decl(metadata !86450)
  call void @llvm.experimental.noalias.scope.decl(metadata !86451)
  %i.ii = load ptr, ptr %i.ao, align 8, !alias.scope !86452, !nonnull !75, !noundef !75
  %i.ij = atomicrmw sub ptr %i.ii, i64 1 release, align 8, !noalias !86452
  %i.ik = icmp eq i64 %i.ij, 1
  br i1 %i.ik, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit.sink.split, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit.sink.split: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcStEEECsjjpCCFGI3ul_14lance_encoding.exit213, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6repdef13RepDefBuilderEBF_.exit
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ao)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit.sink.split, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6repdef13RepDefBuilderEBF_.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcStEEECsjjpCCFGI3ul_14lance_encoding.exit213
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit238: ; preds = %bb.ds, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.experimental.noalias.scope.decl(metadata !86453)
  %i.il = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.val.i214 = load ptr, ptr %i.il, align 8, !alias.scope !86453, !nonnull !75, !noundef !75 ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.val1.i = load i64, ptr %i.im, align 8, !alias.scope !86453, !noundef !75
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEB2u_(ptr noalias noundef nonnull readonly align 8 %.val.i214, i64 noundef %.val1.i)
          to label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtBK_6future6future6Futurep6OutputINtNtBK_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBK_6marker4SendEL_EEENtNtNtBK_3ops4drop4Drop4dropB2w_.exit.i unwind label %bb.cq, !noalias !86453

bb.cq:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit238
  %i.in = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val4.i = load i64, ptr %i.aj, align 8, !alias.scope !86453 ; 2 uses
  %i.io = icmp eq i64 %.val4.i, 0
  br i1 %i.io, label %.thread290, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ip = shl nuw i64 %.val4.i, 4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i214, i64 noundef %i.ip, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !86453
  br label %.thread290

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtBK_6future6future6Futurep6OutputINtNtBK_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBK_6marker4SendEL_EEENtNtNtBK_3ops4drop4Drop4dropB2w_.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit238
  %.val2.i = load i64, ptr %i.aj, align 8, !alias.scope !86453 ; 2 uses
  %i.iq = icmp eq i64 %.val2.i, 0
  br i1 %i.iq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEEB2J_.exit, label %bb.cs

bb.cs:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtBK_6future6future6Futurep6OutputINtNtBK_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBK_6marker4SendEL_EEENtNtNtBK_3ops4drop4Drop4dropB2w_.exit.i
  %i.ir = shl nuw i64 %.val2.i, 4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i214, i64 noundef %i.ir, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !86453
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEEB2J_.exit

.thread334:                                       ; preds = %bb.ca, %bb.cb, %bb.bt, %bb.bs
  %.pn158339 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp346, %bb.bs ], [ %.pn, %bb.bt ], [ %i.gx, %bb.cb ], [ %i.gx, %bb.ca ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !86454)
  call void @llvm.experimental.noalias.scope.decl(metadata !86455)
  %i.is = load ptr, ptr %i.aa, align 8, !alias.scope !86456, !nonnull !75, !noundef !75
  %i.it = atomicrmw sub ptr %i.is, i64 1 release, align 8, !noalias !86456
  %i.iu = icmp eq i64 %i.it, 1
  br i1 %i.iu, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %.thread334
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBN_5types10UInt64TypeEE9drop_slowCsaSUzbtlTZbr_30datafusion_functions_aggregate(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.cu unwind label %bb.as

bb.cu:                                            ; preds = %bb.bl, %bb.bo, %bb.ct, %.thread334
  %.pn158.pn.ph = phi { ptr, i32 } [ %i.gi, %bb.bo ], [ %i.gd, %bb.bl ], [ %.pn158339, %bb.ct ], [ %.pn158339, %.thread334 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !86457)
  call void @llvm.experimental.noalias.scope.decl(metadata !86458)
  %i.iv = load ptr, ptr %i.ad, align 8, !alias.scope !86459, !nonnull !75, !noundef !75
  %i.iw = atomicrmw sub ptr %i.iv, i64 1 release, align 8, !noalias !86459
  %i.ix = icmp eq i64 %i.iw, 1
  br i1 %i.ix, label %bb.cv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit254

bb.cv:                                            ; preds = %bb.cu
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBN_5types10UInt64TypeEE9drop_slowCsaSUzbtlTZbr_30datafusion_functions_aggregate(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ad)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit254 unwind label %bb.as

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.be
  %i.iy = load ptr, ptr %i.fd, align 8, !alias.scope !86442, !noundef !75
  %i.iz = load i64, ptr %i.fe, align 8, !alias.scope !86442, !noundef !75
  %i.ja = add i64 %i.iz, %.sroa.0112.0372         ; 2 uses
  %i.jb = lshr i64 %i.ja, 3
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iy, i64 %i.jb
  %i.jd = load i8, ptr %i.jc, align 1, !noalias !86442, !noundef !75
  %i.je = trunc i64 %i.ja to i8
  %i.jf = and i8 %i.je, 7
  %i.jg = xor i8 %i.jd, -1
  %i.jh = lshr i8 %i.jg, %i.jf
  %i.ji = trunc i8 %i.jh to i1
  br i1 %i.ji, label %bb.cx, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsjjpCCFGI3ul_14lance_encoding.exit.thread

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsjjpCCFGI3ul_14lance_encoding.exit.thread: ; preds = %bb.bd, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsjjpCCFGI3ul_14lance_encoding.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !86460)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.sroa.0112.0372, ptr %i.c, align 8, !noalias !86460
  %i.jj = load i64, ptr %i.ef, align 8, !alias.scope !86460, !noundef !75
  %i.jk = lshr i64 %i.jj, 3                       ; 2 uses
  %i.jl = add nsw i64 %i.jk, -1                   ; 2 uses
  %i.jm = icmp ult i64 %.sroa.0112.0372, %i.jl
  br i1 %i.jm, label %bb.cy, label %bb.cw, !prof !78

bb.cw:                                            ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsjjpCCFGI3ul_14lance_encoding.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !86460
  store i64 %i.jl, ptr %i.b, align 8, !noalias !86460
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !86460
  store ptr %i.c, ptr %i.a, align 8, !noalias !86460
  %.sroa.42.0..sroa_idx.i220 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i220, align 8, !noalias !86460
  %i.jn = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @1498, ptr %i.jn, align 8, !noalias !86460
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsjjpCCFGI3ul_14lance_encoding, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !86460
  %i.jo = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @2066, ptr %i.jo, align 8, !noalias !86460
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsjjpCCFGI3ul_14lance_encoding, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !86460
  %i.jp = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.b, ptr %i.jp, align 8, !noalias !86460
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !86460
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @2067, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2068) #66
          to label %.noexc221 unwind label %.loopexit.split-lp

.noexc221:                                        ; preds = %bb.cw
  unreachable

bb.cx:                                            ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsjjpCCFGI3ul_14lance_encoding.exit
  br i1 %.not153, label %bb.do, label %bb.dn

bb.cy:                                            ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsjjpCCFGI3ul_14lance_encoding.exit.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !86461)
  %i.jq = load ptr, ptr %i.fj, align 8, !alias.scope !86462, !noundef !75 ; 2 uses
  %i.jr = icmp samesign ult i64 %i.fr, %i.jk
  call void @llvm.assume(i1 %i.jr)
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %i.fr
  %i.jt = load i64, ptr %i.js, align 8, !noalias !86462, !noundef !75 ; 2 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %.sroa.0112.0372
  %i.jv = load i64, ptr %i.ju, align 8, !noalias !86462, !noundef !75 ; 3 uses
  %i.jw = load ptr, ptr %i.fk, align 8, !alias.scope !86462, !noundef !75
  %i.jx = sub i64 %i.jt, %i.jv                    ; 4 uses
  %i.jy = icmp sgt i64 %i.jx, -1
  call void @llvm.assume(i1 %i.jy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.jz = icmp eq i64 %i.jt, %i.jv
  br i1 %i.jz, label %bb.cz, label %bb.db

bb.cz:                                            ; preds = %bb.cy
  %i.ka = load i64, ptr %i.ev, align 8, !alias.scope !86463, !noundef !75 ; 3 uses
  %i.kb = load i64, ptr %i.ah, align 8, !range !76, !alias.scope !86463, !noundef !75
  %i.kc = icmp eq i64 %i.ka, %i.kb
  br i1 %i.kc, label %bb.da, label %bb.dc

bb.da:                                            ; preds = %bb.cz
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs5GHimaBI8WD_10num_bigint(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %bb.dc unwind label %.loopexit

bb.db:                                            ; preds = %bb.cy
  %i.kd = getelementptr inbounds i8, ptr %i.jw, i64 %i.jv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  invoke void @_RNvXs4_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromRShE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ae, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.kd, i64 noundef %i.jx)
          to label %bb.de unwind label %.loopexit

bb.dc:                                            ; preds = %bb.cz, %bb.da
  %i.ke = load ptr, ptr %i.eu, align 8, !alias.scope !86463, !nonnull !75, !noundef !75
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %i.ka
  store i64 0, ptr %i.kf, align 8
  %i.kg = add i64 %i.ka, 1
  store i64 %i.kg, ptr %i.ev, align 8, !alias.scope !86463
  %i.kh = load i64, ptr %i.fa, align 8, !alias.scope !86464, !noundef !75 ; 3 uses
  %i.ki = load i64, ptr %i.ag, align 8, !range !76, !alias.scope !86464, !noundef !75
  %i.kj = icmp eq i64 %i.kh, %i.ki
  br i1 %i.kj, label %bb.dd, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit248

bb.dd:                                            ; preds = %bb.dc
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs5GHimaBI8WD_10num_bigint(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit248 unwind label %.loopexit

bb.de:                                            ; preds = %bb.db
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.experimental.noalias.scope.decl(metadata !86465)
  call void @llvm.experimental.noalias.scope.decl(metadata !86466)
  %i.kk = load i64, ptr %i.fl, align 8, !alias.scope !86465, !noalias !86466, !noundef !75 ; 2 uses
  %i.kl = load i64, ptr %i.fm, align 8, !alias.scope !86466, !noalias !86465, !noundef !75 ; 2 uses
  %i.km = add i64 %i.kl, %i.kk
  %i.kn = load i64, ptr %i.fn, align 8, !alias.scope !86465, !noalias !86466, !noundef !75 ; 2 uses
  %i.ko = add i64 %i.kn, -1                       ; 2 uses
  %i.kp = and i64 %i.ko, %i.kl
  %i.kq = sub i64 %i.kn, %i.kp
  %i.kr = and i64 %i.kq, %i.ko
  %i.ks = add i64 %i.km, %i.kr
  store i64 %i.ks, ptr %i.fl, align 8, !alias.scope !86465, !noalias !86466
  call void @llvm.experimental.noalias.scope.decl(metadata !86467)
  call void @llvm.experimental.noalias.scope.decl(metadata !86468)
  %i.kt = load i64, ptr %i.fo, align 8, !alias.scope !86469, !noalias !86470, !noundef !75 ; 3 uses
  %i.ku = load i64, ptr %4, align 8, !range !76, !alias.scope !86469, !noalias !86470, !noundef !75
  %i.kv = icmp eq i64 %i.kt, %i.ku
  br i1 %i.kv, label %bb.df, label %bb.dj

bb.df:                                            ; preds = %bb.de
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferE8grow_oneBQ_(ptr noalias noundef nonnull align 8 dereferenceable(40) %4)
          to label %bb.dj unwind label %bb.dg, !noalias !86470

bb.dg:                                            ; preds = %bb.df
  %i.kw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !86471)
  call void @llvm.experimental.noalias.scope.decl(metadata !86472)
  call void @llvm.experimental.noalias.scope.decl(metadata !86473)
  call void @llvm.experimental.noalias.scope.decl(metadata !86474)
  %i.kx = load ptr, ptr %i.af, align 8, !alias.scope !86475, !noalias !86469, !nonnull !75, !noundef !75
  %i.ky = atomicrmw sub ptr %i.kx, i64 1 release, align 8, !noalias !86476
  %i.kz = icmp eq i64 %i.ky, 1
  br i1 %i.kz, label %bb.dh, label %.body225

bb.dh:                                            ; preds = %bb.dg
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.body225 unwind label %bb.di, !noalias !86469

bb.di:                                            ; preds = %bb.dh
  %i.la = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !86469
  unreachable

bb.dj:                                            ; preds = %bb.df, %bb.de
  %i.lb = load ptr, ptr %i.fp, align 8, !alias.scope !86469, !noalias !86470, !nonnull !75, !noundef !75
  %i.lc = getelementptr inbounds nuw [24 x i8], ptr %i.lb, i64 %i.kt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lc, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !noalias !86469
  %i.ld = add i64 %i.kt, 1
  store i64 %i.ld, ptr %i.fo, align 8, !alias.scope !86469, !noalias !86470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.le = load i64, ptr %i.ev, align 8, !alias.scope !86477, !noundef !75 ; 3 uses
  %i.lf = load i64, ptr %i.ah, align 8, !range !76, !alias.scope !86477, !noundef !75
  %i.lg = icmp eq i64 %i.le, %i.lf
  br i1 %i.lg, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs5GHimaBI8WD_10num_bigint(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %bb.dl unwind label %.loopexit

bb.dl:                                            ; preds = %bb.dj, %bb.dk
  %i.lh = load ptr, ptr %i.eu, align 8, !alias.scope !86477, !nonnull !75, !noundef !75
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %i.le
  store i64 %i.kk, ptr %i.li, align 8
  %i.lj = add i64 %i.le, 1
  store i64 %i.lj, ptr %i.ev, align 8, !alias.scope !86477
  %i.lk = load i64, ptr %i.fa, align 8, !alias.scope !86478, !noundef !75 ; 3 uses
  %i.ll = load i64, ptr %i.ag, align 8, !range !76, !alias.scope !86478, !noundef !75
  %i.lm = icmp eq i64 %i.lk, %i.ll
  br i1 %i.lm, label %bb.dm, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit248

bb.dm:                                            ; preds = %bb.dl
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs5GHimaBI8WD_10num_bigint(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit248 unwind label %.loopexit

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit248: ; preds = %bb.dl, %bb.dm, %bb.dc, %bb.dd, %bb.ef, %bb.eg
  %.sink430 = phi i64 [ %i.mz, %bb.ef ], [ %i.kh, %bb.dc ], [ %i.mz, %bb.eg ], [ %i.kh, %bb.dd ], [ %i.lk, %bb.dm ], [ %i.lk, %bb.dl ] ; 2 uses
  %.sink = phi i64 [ 0, %bb.ef ], [ 0, %bb.dc ], [ 0, %bb.eg ], [ 0, %bb.dd ], [ %i.jx, %bb.dm ], [ %i.jx, %bb.dl ]
  %i.ln = load ptr, ptr %i.ez, align 8, !nonnull !75, !noundef !75
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %.sink430
  store i64 %.sink, ptr %i.lo, align 8
  %i.lp = add i64 %.sink430, 1
  store i64 %i.lp, ptr %i.fa, align 8
  %exitcond.not = icmp eq i64 %i.fr, %i.ei
  br i1 %exitcond.not, label %._crit_edge, label %bb.bd

bb.dn:                                            ; preds = %bb.cx
  %i.lq = icmp ult i64 %.sroa.0112.0372, %i.ff
  br i1 %i.lq, label %bb.dz, label %.invoke

bb.do:                                            ; preds = %bb.cx
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !86479
  %i.lr = call noundef dereferenceable_or_null(29) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 29, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !86479 ; 3 uses
  %i.ls = icmp eq ptr %i.lr, null
  br i1 %i.ls, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 29) #66
          to label %.noexc233 unwind label %.loopexit.split-lp

.noexc233:                                        ; preds = %bb.dp
  unreachable

bb.dq:                                            ; preds = %bb.do
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.lr, ptr noundef nonnull align 1 dereferenceable(29) @1136, i64 29, i1 false), !noalias !86480
  store i8 11, ptr %0, align 8
  %.sroa.5124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1138, ptr %.sroa.5124.0..sroa_idx, align 8
  %.sroa.6125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 29, ptr %.sroa.6125.0..sroa_idx, align 8
  %.sroa.6125.sroa.4.0..sroa.6125.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.lr, ptr %.sroa.6125.sroa.4.0..sroa.6125.0..sroa_idx.sroa_idx, align 8
  %.sroa.6125.sroa.5.0..sroa.6125.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 29, ptr %.sroa.6125.sroa.5.0..sroa.6125.0..sroa_idx.sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !86481)
  %.val.i234 = load i64, ptr %i.ag, align 8, !alias.scope !86481 ; 2 uses
  %i.lt = icmp eq i64 %.val.i234, 0
  br i1 %i.lt, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %.val1.i235 = load ptr, ptr %i.ez, align 8, !alias.scope !86481, !nonnull !75, !noundef !75
  %i.lu = shl nuw i64 %.val.i234, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i235, i64 noundef %i.lu, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !86481
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.dr, %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.experimental.noalias.scope.decl(metadata !86482)
  %.val.i236 = load i64, ptr %i.ah, align 8, !alias.scope !86482 ; 2 uses
  %i.lv = icmp eq i64 %.val.i236, 0
  br i1 %i.lv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit238, label %bb.ds

bb.ds:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit
  %.val1.i237 = load ptr, ptr %i.eu, align 8, !alias.scope !86482, !nonnull !75, !noundef !75
  %i.lw = shl nuw i64 %.val.i236, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i237, i64 noundef %i.lw, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !86482
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit238

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcSNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationEEB1e_.exit188: ; preds = %bb.ap, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEEB2J_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br i1 %.not152, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcStEEECsjjpCCFGI3ul_14lance_encoding.exit239, label %bb.dt

bb.dt:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcSNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationEEB1e_.exit188
  %i.lx = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !noalias !86483
  %i.ly = icmp eq i64 %i.lx, 1
  br i1 %i.ly, label %bb.du, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcStEEECsjjpCCFGI3ul_14lance_encoding.exit239

bb.du:                                            ; preds = %bb.dt
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcStE9drop_slowCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.cb)
end_hunk_1
