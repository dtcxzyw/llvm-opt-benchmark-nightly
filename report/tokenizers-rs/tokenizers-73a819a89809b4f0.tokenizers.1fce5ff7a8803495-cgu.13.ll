Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.13?download=true
inline.NumInlined: 1330
inline.NumDeleted: 900
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterINtNtCscdodAO9FK5_5alloc3vec3VecjEEINtNtB1G_9into_iter8IntoIterB1D_EENCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2T_14UnigramTrainer21prune_sentence_piecess0_0s_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4D_8for_each4callB1D_NCINvMsj_B1G_IB1E_B1D_E14extend_trustedBN_E0E0EB2Z_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !290
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB8_14UnigramTrainer21prune_sentence_piecess0_0s_0Be_.exit.i.i.us.i.i unwind label %.split7.us.split.i.i, !noalias !290

_RNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB8_14UnigramTrainer21prune_sentence_piecess0_0s_0Be_.exit.i.i.us.i.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %.split11.us.split.i.i, !noalias !291

bb.d:                                             ; preds = %_RNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB8_14UnigramTrainer21prune_sentence_piecess0_0s_0Be_.exit.i.i.us.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !290
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %.sroa.7.0.copyload, i64 %.val12.i.us.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !293
  %i.ag = add i64 %.val12.i.us.i.i, 1             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !291
  %exitcond.not.i.us.i.i = icmp eq i64 %i.w, %.sroa.0.0.i.i.i.i.i
  br i1 %exitcond.not.i.us.i.i, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtCscdodAO9FK5_5alloc3vec3VecjEEINtNtB1p_9into_iter8IntoIterB1m_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B1m_EB1m_uNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3T_14UnigramTrainer21prune_sentence_piecess0_0s_0NCINvNvB2t_8for_each4callB1m_NCINvMsj_B1p_IB1n_B1m_E14extend_trustedINtB3c_3MapBM_B3K_EE0E0E0EB3Z_.exit, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterINtNtCscdodAO9FK5_5alloc3vec3VecjEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.us.i.i, !llvm.loop !278

.split.us.split.i.i:                              ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.us.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.split7.us.split.i.i:                             ; preds = %bb.c
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.split11.us.split.i.i:                            ; preds = %_RNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB8_14UnigramTrainer21prune_sentence_piecess0_0s_0Be_.exit.i.i.us.i.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.lr.ph.i.split.i.i:                               ; preds = %.lr.ph.i.i.i, %bb.l
  %i.ak = phi ptr [ %i.au, %bb.l ], [ %.val15.i.i.i.i, %.lr.ph.i.i.i ] ; 5 uses
  %i.al = phi ptr [ %i.ap, %bb.l ], [ %.val.i.i.i.i, %.lr.ph.i.i.i ] ; 4 uses
  %.val12.i.i.i = phi i64 [ %i.bh, %bb.l ], [ %.sroa.5.0.copyload, %.lr.ph.i.i.i ] ; 5 uses
  %.sroa.01.026.i.i.i = phi i64 [ %i.am, %bb.l ], [ 0, %.lr.ph.i.i.i ]
  %i.am = add nuw nsw i64 %.sroa.01.026.i.i.i, 1  ; 2 uses
  %i.an = icmp eq ptr %i.al, %.val14.i.i.i.i
  br i1 %i.an, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterINtNtCscdodAO9FK5_5alloc3vec3VecjEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.split.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 2 uses
  store ptr %i.ao, ptr %i.d, align 8, !alias.scope !295
  br label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterINtNtCscdodAO9FK5_5alloc3vec3VecjEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterINtNtCscdodAO9FK5_5alloc3vec3VecjEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i: ; preds = %bb.e, %.lr.ph.i.split.i.i
  %i.ap = phi ptr [ %i.ao, %bb.e ], [ %i.al, %.lr.ph.i.split.i.i ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.al, %bb.e ], [ null, %.lr.ph.i.split.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.617.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !287)
  %i.aq = icmp eq ptr %i.ak, %.val16.i.i.i.i
  br i1 %i.aq, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterINtNtCscdodAO9FK5_5alloc3vec3VecjEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  store ptr %i.ar, ptr %i.j, align 8, !alias.scope !288
  %.sroa.015.0.copyload16.i.i.i = load i64, ptr %i.ak, align 8, !noalias !289
  %.sroa.617.0..sroa_idx18.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.617.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.617.0..sroa_idx18.i.i.i, i64 16, i1 false), !noalias !289
  br label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i

.split11.i.i:                                     ; preds = %_RNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB8_14UnigramTrainer21prune_sentence_piecess0_0s_0Be_.exit.i.i.i.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.i, %bb.g, %.split11.i.i, %.split11.us.split.i.i
  %.val12.i4.i.i = phi i64 [ %.us-phi.i.i, %bb.g ], [ %.us-phi8.i.i, %bb.i ], [ %.val12.i.i.i, %.split11.i.i ], [ %.val12.i.us.i.i, %.split11.us.split.i.i ]
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %.us-phi5.i.i, %bb.g ], [ %.us-phi9.i.i, %bb.i ], [ %i.as, %.split11.i.i ], [ %i.aj, %.split11.us.split.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val12.i4.i.i, ptr %.sroa.0.0.copyload, align 8, !noalias !291
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.at)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterINtNtCscdodAO9FK5_5alloc3vec3VecjEEINtNtB1C_9into_iter8IntoIterB1z_EEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i unwind label %bb.m, !noalias !296

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i: ; preds = %bb.f, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterINtNtCscdodAO9FK5_5alloc3vec3VecjEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  %i.au = phi ptr [ %i.ar, %bb.f ], [ %i.ak, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterINtNtCscdodAO9FK5_5alloc3vec3VecjEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i ]
  %.sroa.015.0.i.i.i = phi i64 [ %.sroa.015.0.copyload16.i.i.i, %bb.f ], [ -1, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterINtNtCscdodAO9FK5_5alloc3vec3VecjEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i ] ; 2 uses
  %i.av = icmp ne i64 %.sroa.015.0.i.i.i, -1
  call void @llvm.assume(i1 %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !290
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.623.8..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.617.i.i.i, i64 16, i1 false), !noalias !291
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.617.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !291
  store i64 %.sroa.015.0.i.i.i, ptr %i.b, align 8, !noalias !292
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !290
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !290, !nonnull !4, !noundef !4
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !noalias !290, !noundef !4
  %i.ba = load ptr, ptr %.sroa.623.8..sroa_idx.i.i.i, align 8, !noalias !290, !nonnull !4, !noundef !4
  %i.bb = load i64, ptr %i.p, align 8, !noalias !290, !noundef !4
  store ptr %i.ax, ptr %i.a, align 8, !noalias !290
  store i64 %i.az, ptr %i.q, align 8, !noalias !290
  store ptr %i.ba, ptr %i.r, align 8, !noalias !290
  store i64 %i.bb, ptr %i.s, align 8, !noalias !290
  invoke void @_RNvXs0_NtCscdodAO9FK5_5alloc5sliceSRSjINtB5_6ConcatjE6concatCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.a, i64 noundef 2)
          to label %bb.h unwind label %.split.i.i, !noalias !293

.split.i.i:                                       ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.split.i.i, %.split.us.split.i.i
  %.us-phi.i.i = phi i64 [ %.val12.i.i.i, %.split.i.i ], [ %.val12.i.us.i.i, %.split.us.split.i.i ]
  %.us-phi5.i.i = phi { ptr, i32 } [ %i.bc, %.split.i.i ], [ %i.ah, %.split.us.split.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.b) #29
          to label %.body.i.i.i unwind label %bb.k, !noalias !290

bb.h:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !290
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB8_14UnigramTrainer21prune_sentence_piecess0_0s_0Be_.exit.i.i.i.i unwind label %.split7.i.i, !noalias !290

.split7.i.i:                                      ; preds = %bb.h
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.split7.i.i, %.split7.us.split.i.i
  %.us-phi8.i.i = phi i64 [ %.val12.i.i.i, %.split7.i.i ], [ %.val12.i.us.i.i, %.split7.us.split.i.i ]
  %.us-phi9.i.i = phi { ptr, i32 } [ %i.bd, %.split7.i.i ], [ %i.ai, %.split7.us.split.i.i ]
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i.i.i unwind label %bb.j, !noalias !290

bb.j:                                             ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !290
  unreachable

bb.k:                                             ; preds = %bb.g
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !290
  unreachable

_RNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB8_14UnigramTrainer21prune_sentence_piecess0_0s_0Be_.exit.i.i.i.i: ; preds = %bb.h
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.l unwind label %.split11.i.i, !noalias !291

bb.l:                                             ; preds = %_RNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB8_14UnigramTrainer21prune_sentence_piecess0_0s_0Be_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !290
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %.sroa.7.0.copyload, i64 %.val12.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !293
  %i.bh = add i64 %.val12.i.i.i, 1                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !291
  %exitcond.not.i.i.i = icmp eq i64 %i.am, %.sroa.0.0.i.i.i.i.i
  br i1 %exitcond.not.i.i.i, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtCscdodAO9FK5_5alloc3vec3VecjEEINtNtB1p_9into_iter8IntoIterB1m_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B1m_EB1m_uNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3T_14UnigramTrainer21prune_sentence_piecess0_0s_0NCINvNvB2t_8for_each4callB1m_NCINvMsj_B1p_IB1n_B1m_E14extend_trustedINtB3c_3MapBM_B3K_EE0E0E0EB3Z_.exit, label %.lr.ph.i.split.i.i, !llvm.loop !281

bb.m:                                             ; preds = %.body.i.i.i
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !296
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterINtNtCscdodAO9FK5_5alloc3vec3VecjEEINtNtB1C_9into_iter8IntoIterB1z_EEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i: ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtCscdodAO9FK5_5alloc3vec3VecjEEINtNtB1p_9into_iter8IntoIterB1m_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B1m_EB1m_uNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3T_14UnigramTrainer21prune_sentence_piecess0_0s_0NCINvNvB2t_8for_each4callB1m_NCINvMsj_B1p_IB1n_B1m_E14extend_trustedINtB3c_3MapBM_B3K_EE0E0E0EB3Z_.exit: ; preds = %bb.l, %bb.d, %bb.a
  %.val14.i.i.i = phi i64 [ %i.ag, %bb.d ], [ %.sroa.5.0.copyload, %bb.a ], [ %i.bh, %bb.l ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val14.i.i.i, ptr %.sroa.0.0.copyload, align 8, !noalias !291
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bj), !noalias !296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdEENCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2E_14UnigramTrainer10run_e_steps1_00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4b_8for_each4calldNCINvMsj_B1K_INtB1K_3VecdE14extend_trustedBN_E0E0EB2K_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !315 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8 ; 5 uses
  %.sroa.8.0.copyload5 = ptrtoaddr ptr %.sroa.8.0.copyload to i64
  %i.b = invoke noundef i64 @_RNvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterdENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.a)
          to label %.noexc.i.i unwind label %bb.c, !noalias !316

.noexc.i.i:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.d = invoke noundef i64 @_RNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdENtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
          to label %bb.b unwind label %bb.c, !noalias !316

bb.b:                                             ; preds = %.noexc.i.i
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.d, i64 %i.b) ; 7 uses
  %.not.i.i = icmp eq i64 %.sroa.0.0.i.i.i.i, 0
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRddEduNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3v_14UnigramTrainer10run_e_steps1_00NCINvNvB2e_8for_each4calldNCINvMsj_B1t_INtB1t_3VecdE14extend_trustedINtB2X_3MapBM_B3m_EE0E0E0EB3B_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !317, !noundef !4 ; 5 uses
  %.val.i.i.i.pre = load ptr, ptr %i.a, align 8, !alias.scope !317, !nonnull !4, !noundef !4 ; 5 uses
  %.val1.i.i.i.pre = load ptr, ptr %i.f, align 8, !alias.scope !317, !nonnull !4, !noundef !4 ; 5 uses
  %min.iters.check = icmp ult i64 %.sroa.0.0.i.i.i.i, 14
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %.val1.i.i.i.pre6 = ptrtoaddr ptr %.val1.i.i.i.pre to i64
  %.val.i.i.i.pre7 = ptrtoaddr ptr %.val.i.i.i.pre to i64
  %i.g = shl i64 %.sroa.5.0.copyload, 3
  %i.h = shl i64 %.pre, 3                         ; 2 uses
  %i.i = add i64 %i.g, %.sroa.8.0.copyload5       ; 2 uses
  %i.j = add i64 %i.h, %.val1.i.i.i.pre6
  %i.k = sub i64 %i.j, %i.i
  %diff.check = icmp ugt i64 %i.k, -32
  %i.l = add i64 %i.h, %.val.i.i.i.pre7
  %i.m = sub i64 %i.l, %i.i
  %diff.check8 = icmp ugt i64 %i.m, -32
  %conflict.rdx = or i1 %diff.check, %diff.check8
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.sroa.0.0.i.i.i.i, -4         ; 4 uses
  %i.n = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.o = getelementptr [8 x i8], ptr %.sroa.8.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !318)
  %i.p = add i64 %.pre, %index                    ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.pre, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.pre, i64 %i.p ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <2 x double>, ptr %i.r, align 8, !noalias !319
  %wide.load9 = load <2 x double>, ptr %i.s, align 8, !noalias !319
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load10 = load <2 x double>, ptr %i.q, align 8, !noalias !316
  %wide.load11 = load <2 x double>, ptr %i.t, align 8, !noalias !316
  %i.u = fadd <2 x double> %wide.load, %wide.load10
  %i.v = fadd <2 x double> %wide.load9, %wide.load11
  %i.w = getelementptr [8 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x double> %i.u, ptr %i.w, align 8, !noalias !320
  store <2 x double> %i.v, ptr %i.x, align 8, !noalias !320
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !311

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.sroa.0.0.i.i.i.i, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRddEduNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3v_14UnigramTrainer10run_e_steps1_00NCINvNvB2e_8for_each4calldNCINvMsj_B1t_INtB1t_3VecdE14extend_trustedINtB2X_3MapBM_B3m_EE0E0E0EB3B_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %.lr.ph.i.i ], [ %i.n, %middle.block ] ; 3 uses
  %.sroa.0.015.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.0.015.i.i.ph, 1
  %xtraiter = and i64 %.sroa.0.0.i.i.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.z = or disjoint i64 %.sroa.0.015.i.i.ph, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !318)
  %i.aa = add i64 %.pre, %.sroa.0.015.i.i.ph      ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.pre, i64 %i.aa
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.pre, i64 %i.aa
  %i.ad = load double, ptr %i.ac, align 8, !noalias !319, !noundef !4
  %.val12.i.i.prol = load double, ptr %i.ab, align 8, !noalias !316, !noundef !4
  %i.ae = fadd double %i.ad, %.val12.i.i.prol
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %.ph
  store double %i.ae, ptr %i.af, align 8, !noalias !320
  %i.ag = add i64 %.ph, 1                         ; 2 uses
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ag, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ag, %scalar.ph.prol ]
  %.sroa.0.015.i.i.unr = phi i64 [ %.sroa.0.015.i.i.ph, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %i.ah = icmp eq i64 %.sroa.0.0.i.i.i.i, %.neg
  br i1 %i.ah, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRddEduNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3v_14UnigramTrainer10run_e_steps1_00NCINvNvB2e_8for_each4calldNCINvMsj_B1t_INtB1t_3VecdE14extend_trustedINtB2X_3MapBM_B3m_EE0E0E0EB3B_.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.pre
  br label %scalar.ph

bb.c:                                             ; preds = %.noexc.i.i, %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.sroa.5.0.copyload, ptr %.sroa.0.0.copyload, align 8, !noalias !316
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aj)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdEEECs2JiOgHzbbc7_10tokenizers.exit.i.i unwind label %bb.d, !noalias !316

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %i.ak = phi i64 [ %.unr, %scalar.ph.preheader.new ], [ %i.ay, %scalar.ph ] ; 3 uses
  %.sroa.0.015.i.i = phi i64 [ %.sroa.0.015.i.i.unr, %scalar.ph.preheader.new ], [ %i.ar, %scalar.ph ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !318)
  %i.al = add i64 %.pre, %.sroa.0.015.i.i         ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.pre, i64 %i.al
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.pre, i64 %i.al
  %i.ao = load double, ptr %i.an, align 8, !noalias !319, !noundef !4
  %.val12.i.i = load double, ptr %i.am, align 8, !noalias !316, !noundef !4
  %i.ap = fadd double %i.ao, %.val12.i.i
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %i.ak
  store double %i.ap, ptr %i.aq, align 8, !noalias !320
  %i.ar = add nuw i64 %.sroa.0.015.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.015.i.i, %invariant.op ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.pre, i64 %.reass
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.pre, i64 %.reass
  %i.au = load double, ptr %i.at, align 8, !noalias !321, !noundef !4
  %.val12.i.i.1 = load double, ptr %i.as, align 8, !noalias !316, !noundef !4
  %i.av = fadd double %i.au, %.val12.i.i.1
  %i.aw = getelementptr [8 x i8], ptr %.sroa.8.0.copyload, i64 %i.ak
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  store double %i.av, ptr %i.ax, align 8, !noalias !320
  %i.ay = add i64 %i.ak, 2                        ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.ar, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRddEduNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3v_14UnigramTrainer10run_e_steps1_00NCINvNvB2e_8for_each4calldNCINvMsj_B1t_INtB1t_3VecdE14extend_trustedINtB2X_3MapBM_B3m_EE0E0E0EB3B_.exit, label %scalar.ph, !llvm.loop !314

bb.d:                                             ; preds = %bb.c
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !316
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdEEECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.ai

_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRddEduNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3v_14UnigramTrainer10run_e_steps1_00NCINvNvB2e_8for_each4calldNCINvMsj_B1t_INtB1t_3VecdE14extend_trustedINtB2X_3MapBM_B3m_EE0E0E0EB3B_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.b
  %.val11.i.i = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ay, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val11.i.i, ptr %.sroa.0.0.copyload, align 8, !noalias !316
  call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c), !noalias !316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdEENCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2E_14UnigramTrainer21prune_sentence_piecess0_00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4m_8for_each4calldNCINvMsj_B1K_INtB1K_3VecdE14extend_trustedBN_E0E0EB2K_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !340 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8 ; 5 uses
  %.sroa.8.0.copyload5 = ptrtoaddr ptr %.sroa.8.0.copyload to i64
  %i.b = invoke noundef i64 @_RNvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterdENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.a)
          to label %.noexc.i.i unwind label %bb.c, !noalias !341

.noexc.i.i:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.d = invoke noundef i64 @_RNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdENtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
          to label %bb.b unwind label %bb.c, !noalias !341

bb.b:                                             ; preds = %.noexc.i.i
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.d, i64 %i.b) ; 7 uses
  %.not.i.i = icmp eq i64 %.sroa.0.0.i.i.i.i, 0
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRddEduNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3v_14UnigramTrainer21prune_sentence_piecess0_00NCINvNvB2e_8for_each4calldNCINvMsj_B1t_INtB1t_3VecdE14extend_trustedINtB2X_3MapBM_B3m_EE0E0E0EB3B_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !342, !noundef !4 ; 5 uses
  %.val.i.i.i.pre = load ptr, ptr %i.a, align 8, !alias.scope !342, !nonnull !4, !noundef !4 ; 5 uses
  %.val1.i.i.i.pre = load ptr, ptr %i.f, align 8, !alias.scope !342, !nonnull !4, !noundef !4 ; 5 uses
  %min.iters.check = icmp ult i64 %.sroa.0.0.i.i.i.i, 14
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %.val1.i.i.i.pre6 = ptrtoaddr ptr %.val1.i.i.i.pre to i64
  %.val.i.i.i.pre7 = ptrtoaddr ptr %.val.i.i.i.pre to i64
  %i.g = shl i64 %.sroa.5.0.copyload, 3
  %i.h = shl i64 %.pre, 3                         ; 2 uses
  %i.i = add i64 %i.g, %.sroa.8.0.copyload5       ; 2 uses
  %i.j = add i64 %i.h, %.val1.i.i.i.pre6
  %i.k = sub i64 %i.j, %i.i
  %diff.check = icmp ugt i64 %i.k, -32
  %i.l = add i64 %i.h, %.val.i.i.i.pre7
  %i.m = sub i64 %i.l, %i.i
  %diff.check8 = icmp ugt i64 %i.m, -32
  %conflict.rdx = or i1 %diff.check, %diff.check8
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.sroa.0.0.i.i.i.i, -4         ; 4 uses
  %i.n = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.o = getelementptr [8 x i8], ptr %.sroa.8.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !343)
  %i.p = add i64 %.pre, %index                    ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.pre, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.pre, i64 %i.p ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <2 x double>, ptr %i.r, align 8, !noalias !344
  %wide.load9 = load <2 x double>, ptr %i.s, align 8, !noalias !344
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load10 = load <2 x double>, ptr %i.q, align 8, !noalias !341
  %wide.load11 = load <2 x double>, ptr %i.t, align 8, !noalias !341
  %i.u = fadd <2 x double> %wide.load, %wide.load10
  %i.v = fadd <2 x double> %wide.load9, %wide.load11
  %i.w = getelementptr [8 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x double> %i.u, ptr %i.w, align 8, !noalias !345
  store <2 x double> %i.v, ptr %i.x, align 8, !noalias !345
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !336

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.sroa.0.0.i.i.i.i, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRddEduNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3v_14UnigramTrainer21prune_sentence_piecess0_00NCINvNvB2e_8for_each4calldNCINvMsj_B1t_INtB1t_3VecdE14extend_trustedINtB2X_3MapBM_B3m_EE0E0E0EB3B_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %.lr.ph.i.i ], [ %i.n, %middle.block ] ; 3 uses
  %.sroa.0.015.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.0.015.i.i.ph, 1
  %xtraiter = and i64 %.sroa.0.0.i.i.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.z = or disjoint i64 %.sroa.0.015.i.i.ph, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !343)
  %i.aa = add i64 %.pre, %.sroa.0.015.i.i.ph      ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.pre, i64 %i.aa
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.pre, i64 %i.aa
  %i.ad = load double, ptr %i.ac, align 8, !noalias !344, !noundef !4
  %.val12.i.i.prol = load double, ptr %i.ab, align 8, !noalias !341, !noundef !4
  %i.ae = fadd double %i.ad, %.val12.i.i.prol
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %.ph
  store double %i.ae, ptr %i.af, align 8, !noalias !345
  %i.ag = add i64 %.ph, 1                         ; 2 uses
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ag, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ag, %scalar.ph.prol ]
  %.sroa.0.015.i.i.unr = phi i64 [ %.sroa.0.015.i.i.ph, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %i.ah = icmp eq i64 %.sroa.0.0.i.i.i.i, %.neg
  br i1 %i.ah, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRddEduNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3v_14UnigramTrainer21prune_sentence_piecess0_00NCINvNvB2e_8for_each4calldNCINvMsj_B1t_INtB1t_3VecdE14extend_trustedINtB2X_3MapBM_B3m_EE0E0E0EB3B_.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.pre
  br label %scalar.ph

bb.c:                                             ; preds = %.noexc.i.i, %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.sroa.5.0.copyload, ptr %.sroa.0.0.copyload, align 8, !noalias !341
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aj)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdEEECs2JiOgHzbbc7_10tokenizers.exit.i.i unwind label %bb.d, !noalias !341

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %i.ak = phi i64 [ %.unr, %scalar.ph.preheader.new ], [ %i.ay, %scalar.ph ] ; 3 uses
  %.sroa.0.015.i.i = phi i64 [ %.sroa.0.015.i.i.unr, %scalar.ph.preheader.new ], [ %i.ar, %scalar.ph ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !343)
  %i.al = add i64 %.pre, %.sroa.0.015.i.i         ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.pre, i64 %i.al
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.pre, i64 %i.al
  %i.ao = load double, ptr %i.an, align 8, !noalias !344, !noundef !4
  %.val12.i.i = load double, ptr %i.am, align 8, !noalias !341, !noundef !4
  %i.ap = fadd double %i.ao, %.val12.i.i
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %i.ak
  store double %i.ap, ptr %i.aq, align 8, !noalias !345
  %i.ar = add nuw i64 %.sroa.0.015.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.015.i.i, %invariant.op ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.pre, i64 %.reass
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.pre, i64 %.reass
  %i.au = load double, ptr %i.at, align 8, !noalias !346, !noundef !4
  %.val12.i.i.1 = load double, ptr %i.as, align 8, !noalias !341, !noundef !4
  %i.av = fadd double %i.au, %.val12.i.i.1
  %i.aw = getelementptr [8 x i8], ptr %.sroa.8.0.copyload, i64 %i.ak
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  store double %i.av, ptr %i.ax, align 8, !noalias !345
  %i.ay = add i64 %i.ak, 2                        ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.ar, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRddEduNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3v_14UnigramTrainer21prune_sentence_piecess0_00NCINvNvB2e_8for_each4calldNCINvMsj_B1t_INtB1t_3VecdE14extend_trustedINtB2X_3MapBM_B3m_EE0E0E0EB3B_.exit, label %scalar.ph, !llvm.loop !339

bb.d:                                             ; preds = %bb.c
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !341
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdEEECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.ai

_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRddEduNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3v_14UnigramTrainer21prune_sentence_piecess0_00NCINvNvB2e_8for_each4calldNCINvMsj_B1t_INtB1t_3VecdE14extend_trustedINtB2X_3MapBM_B3m_EE0E0E0EB3B_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.b
  %.val11.i.i = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ay, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val11.i.i, ptr %.sroa.0.0.copyload, align 8, !noalias !341
  call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c), !noalias !341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterhEIB1e_mEENCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10bytes_chars_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3q_8for_each4callThcENCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB4H_7HashMaphcNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB3u_7collect6ExtendB4t_E6extendBN_E0E0EB2i_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !355 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %0, i64 80, i1 false)
  %i.b = invoke noundef i64 @_RNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterhENtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.a)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !356

.noexc.i.i:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.d = invoke noundef i64 @_RNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItermENtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !356

bb.b:                                             ; preds = %.noexc.i.i
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.d, i64 %i.b) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %exitcond.not.i.i2 = icmp eq i64 %.sroa.0.0.i.i.i.i, 0
  br i1 %exitcond.not.i.i2, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldThmEThcEuNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10bytes_chars_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB3o_7HashMaphcNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB2t_7collect6ExtendBY_E6extendINtB4_3MapINtNtB6_3zip3ZipINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterhEIB5Z_mEEB13_EE0E0E0B1b_.exit.i.i._crit_edge, label %.lr.ph

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldThmEThcEuNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10bytes_chars_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB3o_7HashMaphcNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB2t_7collect6ExtendBY_E6extendINtB4_3MapINtNtB6_3zip3ZipINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterhEIB5Z_mEEB13_EE0E0E0B1b_.exit.i.i: ; preds = %.lr.ph
  %i.h = add nuw i64 %.sroa.0.0.i.i3, 1           ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.h, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldThmEThcEuNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10bytes_chars_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB3o_7HashMaphcNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB2t_7collect6ExtendBY_E6extendINtB4_3MapINtNtB6_3zip3ZipINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterhEIB5Z_mEEB13_EE0E0E0B1b_.exit.i.i._crit_edge, label %.lr.ph

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldThmEThcEuNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10bytes_chars_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB3o_7HashMaphcNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB2t_7collect6ExtendBY_E6extendINtB4_3MapINtNtB6_3zip3ZipINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterhEIB5Z_mEEB13_EE0E0E0B1b_.exit.i.i._crit_edge: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldThmEThcEuNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10bytes_chars_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB3o_7HashMaphcNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB2t_7collect6ExtendBY_E6extendINtB4_3MapINtNtB6_3zip3ZipINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterhEIB5Z_mEEB13_EE0E0E0B1b_.exit.i.i, %bb.b
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterhENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a)
          to label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterhEIBX_mEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldThmEThcEuNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10bytes_chars_0NCINvNvB1S_8for_each4callB2X_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB4U_7HashMaphcNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB1W_7collect6ExtendB2X_E6extendINtB2B_3MapBM_B32_EE0E0E0EB3a_.exit unwind label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldThmEThcEuNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10bytes_chars_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB3o_7HashMaphcNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB2t_7collect6ExtendBY_E6extendINtB4_3MapINtNtB6_3zip3ZipINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterhEIB5Z_mEEB13_EE0E0E0B1b_.exit.i.i._crit_edge
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoItermENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %common.resume.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable

common.resume.i.i:                                ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.c
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.i, %bb.c ], [ %lpad.loopexit.split-lp4, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %.noexc.i.i, %bb.a
  %lpad.loopexit.split-lp4 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterhEIB1a_mEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a) #29
          to label %common.resume.i.i unwind label %bb.e

.lr.ph:                                           ; preds = %bb.b, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldThmEThcEuNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10bytes_chars_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB3o_7HashMaphcNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB2t_7collect6ExtendBY_E6extendINtB4_3MapINtNtB6_3zip3ZipINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterhEIB5Z_mEEB13_EE0E0E0B1b_.exit.i.i
  %.sroa.0.0.i.i3 = phi i64 [ %i.h, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldThmEThcEuNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10bytes_chars_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB3o_7HashMaphcNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB2t_7collect6ExtendBY_E6extendINtB4_3MapINtNtB6_3zip3ZipINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterhEIB5Z_mEEB13_EE0E0E0B1b_.exit.i.i ], [ 0, %bb.b ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !357)
  %i.k = load i64, ptr %i.e, align 8, !alias.scope !358, !noundef !4
  %i.l = add i64 %i.k, %.sroa.0.0.i.i3            ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !358, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !noalias !357, !noundef !4
  %.val1.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !358, !nonnull !4, !noundef !4
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %i.l
  %i.p = load i32, ptr %i.o, align 4, !noalias !357, !noundef !4 ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter6ChunksTNtNtCscdodAO9FK5_5alloc6string6StringmEERNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2c_14UnigramTrainer10run_e_steps_0ENtNtNtBa_6traits8iterator8Iterator4foldTdmINtNtB1u_3vec3VecdEERNCB27_s1_0EB2i_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !1522
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsRNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBU_14UnigramTrainer10run_e_steps1_0INtB6_5FnMutTTdmINtNtCscdodAO9FK5_5alloc3vec3VecdEEB2B_EE8call_mutB10_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.j), !noalias !1524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1522
  %i.o = icmp eq i64 %i.m, 0
  br i1 %i.o, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter6ChunksTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtNtBa_4iter6traits8iterator8Iterator4foldTdmINtNtBQ_3vec3VecdEENCINvNtNtB1w_8adapters3map8map_foldRSBL_B2a_B2a_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3q_14UnigramTrainer10run_e_steps_0RNCB3l_s1_0E0EB3w_.exit, label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTdmINtNtCscdodAO9FK5_5alloc3vec3VecdEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(40) %i.b) #29
          to label %bb.f unwind label %bb.e, !noalias !1523

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !1523
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.p

_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter6ChunksTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtNtBa_4iter6traits8iterator8Iterator4foldTdmINtNtBQ_3vec3VecdEENCINvNtNtB1w_8adapters3map8map_foldRSBL_B2a_B2a_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3q_14UnigramTrainer10run_e_steps_0RNCB3l_s1_0E0EB3w_.exit: ; preds = %bb.c, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false), !noalias !1525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter6ChunksTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2f_14UnigramTrainer21prune_sentence_pieces0ENtNtNtBa_6traits8iterator8Iterator4foldTdINtNtB1x_3vec3VecdEIB4z_IB4z_jEEENCB2a_s0_0EB2l_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1563 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [112 x i8], align 8               ; 11 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  %i.p = alloca [56 x i8], align 8                ; 6 uses
  %.sroa.0174.i = alloca [24 x i8], align 8       ; 7 uses
  %.sroa.7.i = alloca [24 x i8], align 8          ; 7 uses
  %.sroa.0.i = alloca [24 x i8], align 8          ; 4 uses
  %.sroa.5.i = alloca [24 x i8], align 8          ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.03.0.copyload = load ptr, ptr %i.q, align 8 ; 2 uses
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.44.0.copyload = load ptr, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.55.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.66.0.copyload = load ptr, ptr %.sroa.66.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1565)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0174.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0174.i, ptr noundef nonnull readonly align 8 dereferenceable(56) %2, i64 24, i1 false), !noalias !1566
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.6.0.copyload.i = load double, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1565 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.7.0..sroa_idx.i, i64 24, i1 false), !noalias !1566
  %i.r = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %i.r, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter6ChunksTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEENtNtNtNtBa_4iter6traits8iterator8Iterator4foldTdINtNtBT_3vec3VecdEIB2h_IB2h_jEEENCINvNtNtB1A_8adapters3map8map_foldRSBL_B2e_B2e_NCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3F_14UnigramTrainer21prune_sentence_pieces0NCB3A_s0_0E0EB3L_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.copyload) ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.6.0..sroa_idx.i5.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.412.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.513.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.910.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.45.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.56.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.67.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.78.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.89.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.08.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.aj = icmp eq i64 %.sroa.7.0.copyload, 0
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i, %.lr.ph.i
  %.sroa.4.0.copyload.i.i = phi double [ %.sroa.6.0.copyload.i, %.lr.ph.i ], [ %i.dr, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i ] ; 2 uses
  %i.ak = phi i64 [ %.sroa.5.0.copyload, %.lr.ph.i ], [ %i.an, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i ] ; 2 uses
  %i.al = phi ptr [ %.sroa.0.0.copyload, %.lr.ph.i ], [ %i.am, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.7.0.copyload, i64 %i.ak) ; 3 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %.sroa.0.0.i.i.i
  %i.an = sub nuw nsw i64 %i.ak, %.sroa.0.0.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1567)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1568
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0174.i, i64 24, i1 false), !noalias !1569
  store double %.sroa.4.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1570
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, i64 24, i1 false), !noalias !1569
  call void @llvm.experimental.noalias.scope.decl(metadata !1571)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1572
  %i.ao = load i64, ptr %i.s, align 8, !noalias !1572, !noundef !4 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1573)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1574
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef %i.ao, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8)
          to label %.noexc.i.i unwind label %.body.thread28.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1568

.noexc.i.i:                                       ; preds = %bb.b
  %i.ap = load i64, ptr %i.h, align 8, !range !6, !noalias !1574, !noundef !4
  %i.aq = trunc nuw i64 %i.ap to i1
  %i.ar = load i64, ptr %i.t, align 8, !range !7, !noalias !1574, !noundef !4 ; 3 uses
  br i1 %i.aq, label %bb.c, label %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit.i.i.i, !prof !8

bb.c:                                             ; preds = %.noexc.i.i
  %i.as = load i64, ptr %i.u, align 8, !noalias !1574
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ar, i64 %i.as) #30
          to label %.noexc2.i.i unwind label %.body.thread28.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1568

.noexc2.i.i:                                      ; preds = %bb.c
  unreachable

_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit.i.i.i: ; preds = %.noexc.i.i
  %i.at = load ptr, ptr %i.u, align 8, !noalias !1574, !nonnull !4, !noundef !4 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1574
  store i64 %i.ar, ptr %i.o, align 8, !alias.scope !1573, !noalias !1572
  store ptr %i.at, ptr %i.v, align 8, !alias.scope !1573, !noalias !1572
  store i64 %i.ao, ptr %i.w, align 8, !alias.scope !1573, !noalias !1572
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1572
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1572
  store i64 0, ptr %i.m, align 8, !noalias !1572
  store ptr inttoptr (i64 8 to ptr), ptr %i.x, align 8, !noalias !1572
  store i64 0, ptr %i.y, align 8, !noalias !1572
  %i.au = load i64, ptr %i.s, align 8, !noalias !1572, !noundef !4
  invoke void @_RINvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_elemINtB5_3VecjENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.m, i64 noundef %i.au)
          to label %bb.h unwind label %bb.g, !noalias !1572

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_jEEECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.j, %bb.g
  %.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %i.ax, %bb.g ], [ %.pn.pn.pn.i.i.i, %bb.j ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.e unwind label %bb.d, !noalias !1572

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_jEEECs2JiOgHzbbc7_10tokenizers.exit.i.i
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body11.i.i unwind label %bb.f, !noalias !1572

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_jEEECs2JiOgHzbbc7_10tokenizers.exit.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body.thread.i.i unwind label %bb.ak, !noalias !1568

bb.f:                                             ; preds = %bb.d
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !1572
  unreachable

bb.g:                                             ; preds = %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_jEEECs2JiOgHzbbc7_10tokenizers.exit.i.i

bb.h:                                             ; preds = %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1572
  %.idx.i.i.i = shl nuw nsw i64 %.sroa.0.0.i.i.i, 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.i.i.i
  br i1 %i.aj, label %.loopexit.i.i, label %.lr.ph49.i.i.i

.lr.ph49.i.i.i:                                   ; preds = %bb.h
  %3 = load i64, ptr %i.ab, align 8, !noalias !1572 ; 2 uses
  %4 = load ptr, ptr %i.ac, align 8, !noalias !1572, !nonnull !4
  br label %.lr.ph49.i.i.i.a

.lr.ph49.i.i.i.a:                                 ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice7LatticeEBJ_.exit.i, %.lr.ph49.i.i.i
  %.sroa.0.047.i.i.i = phi double [ 0.000000e+00, %.lr.ph49.i.i.i ], [ %i.bq, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice7LatticeEBJ_.exit.i ]
  %.sroa.02.046.i.i.i = phi ptr [ %i.al, %.lr.ph49.i.i.i ], [ %i.az, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice7LatticeEBJ_.exit.i ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.02.046.i.i.i, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.02.046.i.i.i, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !1575, !noalias !1569, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1572
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !1572, !nonnull !4, !noundef !4
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !noalias !1572, !noundef !4
  %i.bg = load i64, ptr %.sroa.44.0.copyload, align 8, !noalias !1572, !noundef !4
  %i.bh = load i64, ptr %.sroa.55.0.copyload, align 8, !noalias !1572, !noundef !4
  invoke void @_RNvMs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7latticeNtB5_7Lattice4from(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bd, i64 noundef %i.bf, i64 noundef %i.bg, i64 noundef %i.bh)
          to label %bb.m unwind label %bb.l, !noalias !1572

.body6.i:                                         ; preds = %bb.aa, %.body2.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBI_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEB25_.exit.i.i.i, %bb.l
  %.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBI_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEB25_.exit.i.i.i ], [ %i.bk, %bb.l ], [ %i.ck, %bb.aa ], [ %.pn.i.i, %.body2.i.i ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_jEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.j unwind label %bb.i, !noalias !1572

bb.i:                                             ; preds = %.body6.i
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body11.i.i unwind label %bb.k, !noalias !1572

bb.j:                                             ; preds = %.body6.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_jEEECs2JiOgHzbbc7_10tokenizers.exit.i.i unwind label %bb.ak, !noalias !1568

bb.k:                                             ; preds = %bb.i
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !1572
  unreachable

bb.l:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_INtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEEB1S_.exit5.i.i, %.lr.ph49.i.i.i.a
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body6.i

bb.m:                                             ; preds = %.lr.ph49.i.i.i.a
  %i.bl = load ptr, ptr %.sroa.66.0.copyload, align 8, !noalias !1572, !nonnull !4, !align !5, !noundef !4
  invoke void @_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram14populate_nodes(ptr noundef nonnull align 8 %i.bl, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.l)
          to label %bb.o unwind label %bb.n, !noalias !1572

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBI_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEB25_.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit.i.i.i, %bb.n
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %i.bm, %bb.n ], [ %.pn.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice7LatticeEBJ_(ptr noalias noundef align 8 dereferenceable(112) %i.l) #29
          to label %.body6.i unwind label %bb.ak, !noalias !1572

bb.n:                                             ; preds = %._crit_edge.i.i.i, %bb.o, %bb.m
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBI_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEB25_.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bo = load i32, ptr %i.bn, align 8, !noalias !1572, !noundef !4
  %i.bp = uitofp i32 %i.bo to double              ; 2 uses
  %i.bq = fadd double %.sroa.0.047.i.i.i, %i.bp   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1572
  invoke void @_RNvMs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7latticeNtB5_7Lattice7viterbi(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.l)
          to label %bb.p unwind label %bb.n, !noalias !1572

bb.p:                                             ; preds = %bb.o
  %i.br = load ptr, ptr %i.z, align 8, !noalias !1572, !nonnull !4, !noundef !4 ; 4 uses
  %i.bs = load i64, ptr %i.k, align 8, !range !13, !noalias !1572, !noundef !4
  %i.bt = load i64, ptr %i.aa, align 8, !noalias !1572, !noundef !4 ; 3 uses
  %i.bu = icmp ult i64 %i.bt, 1152921504606846976
  call void @llvm.assume(i1 %i.bu)
  %.idx51.i.i.i = shl nuw nsw i64 %i.bt, 3
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 %.idx51.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1572
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1572
  store ptr %i.br, ptr %i.j, align 8, !noalias !1572
  store ptr %i.br, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !1572
  store i64 %i.bs, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !1572
  store ptr %i.bv, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !1572
  %i.bw = icmp eq i64 %i.bt, 0
  br i1 %i.bw, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit.i.i.i: ; preds = %bb.ad, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %bb.q
  %.pn.i.i.i = phi { ptr, i32 } [ %i.bx, %bb.q ], [ %lpad.loopexit.split-lp309, %bb.ad ], [ %lpad.loopexit.split-lp309, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtNtNtB1e_3ops4drop4Drop4dropB1S_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBI_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEB25_.exit.i.i.i unwind label %bb.ak, !noalias !1572

bb.q:                                             ; preds = %bb.aj
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit21.i.i.i
  %i.by = phi ptr [ %i.do, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit21.i.i.i ], [ %i.br, %bb.p ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1576)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr %i.bz, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !1576, !noalias !1572
  %i.ca = load ptr, ptr %i.by, align 8, !noalias !1577, !nonnull !4, !noundef !4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1572
  store ptr %i.ca, ptr %i.i, align 8, !noalias !1572
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !1578, !noundef !4
  %i.cd = icmp ult i64 %i.cc, 9223372036854775807
  br i1 %i.cd, label %bb.ae, label %bb.r, !prof !10

bb.r:                                             ; preds = %.lr.ph.i.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #30
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !1572

.noexc.i.i.i:                                     ; preds = %bb.r
  unreachable

._crit_edge.i.i.i:                                ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit21.i.i.i, %bb.p
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtNtNtB1e_3ops4drop4Drop4dropB1S_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBI_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEB25_.exit17.i.i.i unwind label %bb.n, !noalias !1572

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBI_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEB25_.exit17.i.i.i: ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1572
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtNtNtBX_3ops4drop4Drop4dropB1B_(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.l)
          to label %bb.t unwind label %bb.s, !noalias !1572

bb.s:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBI_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEB25_.exit17.i.i.i
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtNtNtB14_3ops4drop4Drop4dropB1I_(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.l)
          to label %.body.i.i unwind label %bb.u, !noalias !1572

bb.t:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBI_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEB25_.exit17.i.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtNtNtB14_3ops4drop4Drop4dropB1I_(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEB1O_.exit.i.i unwind label %bb.v, !noalias !1572

bb.u:                                             ; preds = %bb.s
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !1572
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.v, %bb.s
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.cg, %bb.v ], [ %i.ce, %bb.s ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_INtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEEB1S_(ptr noalias noundef align 8 dereferenceable(24) %i.ad) #29
          to label %.body2.i.i unwind label %bb.ac, !noalias !1572

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEB1O_.exit.i.i: ; preds = %bb.t
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_INtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEENtNtNtB11_3ops4drop4Drop4dropB1F_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %bb.x unwind label %bb.w, !noalias !1572

bb.w:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEB1O_.exit.i.i
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecINtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEENtNtNtB1k_3ops4drop4Drop4dropB1Y_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.body2.i.i unwind label %bb.y, !noalias !1572

bb.x:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEB1O_.exit.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecINtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEENtNtNtB1k_3ops4drop4Drop4dropB1Y_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_INtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEEB1S_.exit.i.i unwind label %bb.z, !noalias !1572

bb.y:                                             ; preds = %bb.w
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !1572
  unreachable

.body2.i.i:                                       ; preds = %bb.z, %bb.w, %.body.i.i
  %.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.cj, %bb.z ], [ %i.ch, %bb.w ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_INtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEEB1S_(ptr noalias noundef align 8 dereferenceable(24) %i.ae) #29
          to label %.body6.i unwind label %bb.ac, !noalias !1572

bb.z:                                             ; preds = %bb.x
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %.body2.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_INtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEEB1S_.exit.i.i: ; preds = %bb.x
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_INtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEENtNtNtB11_3ops4drop4Drop4dropB1F_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_INtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEEB1S_.exit5.i.i unwind label %bb.aa, !noalias !1572

bb.aa:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_INtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEEB1S_.exit.i.i
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecINtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEENtNtNtB1k_3ops4drop4Drop4dropB1Y_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %.body6.i unwind label %bb.ab, !noalias !1572

bb.ab:                                            ; preds = %bb.aa
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !1572
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_INtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEEB1S_.exit5.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_INtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEEB1S_.exit.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecINtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEENtNtNtB1k_3ops4drop4Drop4dropB1Y_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice7LatticeEBJ_.exit.i unwind label %bb.l, !noalias !1569

bb.ac:                                            ; preds = %.body2.i.i, %.body.i.i
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !1572
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice7LatticeEBJ_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_INtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEEB1S_.exit5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1572
  %i.cn = icmp eq ptr %i.az, %i.ay
  br i1 %i.cn, label %.loopexit.i.i, label %.lr.ph49.i.i.i.a

.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ah, %bb.r, %.invoke
  %lpad.loopexit.split-lp309 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.co = load i64, ptr %i.ca, align 8, !noalias !1579, !noundef !4
  %i.cp = add i64 %i.co, -1                       ; 2 uses
  store i64 %i.cp, ptr %i.ca, align 8, !noalias !1579
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %bb.ad, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit.i.i.i

bb.ad:                                            ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE9drop_slowB1l_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit.i.i.i unwind label %bb.ak, !noalias !1572, !inline_history !1550

bb.ae:                                            ; preds = %.lr.ph.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cs = load i64, ptr %i.cr, align 8, !noalias !1572, !noundef !4 ; 5 uses
  %i.ct = icmp ult i64 %i.cs, %i.ao
  br i1 %i.ct, label %bb.af, label %.invoke

bb.af:                                            ; preds = %bb.ae
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.cs ; 2 uses
  %i.cv = load double, ptr %i.cu, align 8, !noalias !1572, !noundef !4
  %i.cw = fadd double %i.cv, %i.bp
  store double %i.cw, ptr %i.cu, align 8, !noalias !1572
  %i.cx = icmp ult i64 %i.cs, %3
  br i1 %i.cx, label %bb.ag, label %.invoke

.invoke:                                          ; preds = %bb.af, %bb.ae
  %i.cy = phi i64 [ %i.ao, %bb.ae ], [ %3, %bb.af ]
  %i.cz = phi ptr [ @49, %bb.ae ], [ @50, %bb.af ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cs, i64 noundef %i.cy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cz) #30
          to label %.cont unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !1572

.cont:                                            ; preds = %.invoke
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %i.cs ; 4 uses
  %i.db = load i64, ptr %.sroa.02.046.i.i.i, align 8, !alias.scope !1575, !noalias !1569, !noundef !4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !alias.scope !1580, !noalias !1572, !noundef !4 ; 3 uses
  %i.de = load i64, ptr %i.da, align 8, !range !13, !alias.scope !1580, !noalias !1572, !noundef !4
  %i.df = icmp eq i64 %i.dd, %i.de
  br i1 %i.df, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs8nxqWztFLNL_12regex_syntax(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.da)
          to label %bb.ai unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !1572

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !alias.scope !1580, !noalias !1572, !nonnull !4, !noundef !4
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.dd
  store i64 %i.db, ptr %i.di, align 8, !noalias !1572
  %i.dj = add i64 %i.dd, 1
  store i64 %i.dj, ptr %i.dc, align 8, !alias.scope !1580, !noalias !1572
  %i.dk = load i64, ptr %i.ca, align 8, !noalias !1581, !noundef !4
  %i.dl = add i64 %i.dk, -1                       ; 2 uses
  store i64 %i.dl, ptr %i.ca, align 8, !noalias !1581
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %bb.aj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit21.i.i.i

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE9drop_slowB1l_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit21.i.i.i unwind label %bb.q, !noalias !1572, !inline_history !1550

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit21.i.i.i: ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1572
  %i.dn = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !1582, !noalias !1572, !nonnull !4, !noundef !4
  %i.do = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !1582, !noalias !1572, !nonnull !4, !noundef !4 ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.dn
  br i1 %i.dp, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.ak:                                            ; preds = %bb.ad, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBI_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEB25_.exit.i.i.i, %bb.j, %bb.e
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body11.i.i

.body11.i.i:                                      ; preds = %bb.ak, %bb.i, %bb.d
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !1572
  unreachable

.body.thread28.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.b, %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

.loopexit.i.i:                                    ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice7LatticeEBJ_.exit.i, %bb.h
  %.sroa.0.0.lcssa.i.i.i = phi double [ 0.000000e+00, %bb.h ], [ %i.bq, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice7LatticeEBJ_.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1583
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !1568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1572
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1583
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0174.i, i64 24, i1 false), !noalias !1569
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1583
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, i64 24, i1 false), !noalias !1569
  %i.dr = fadd double %.sroa.4.0.copyload.i.i, %.sroa.0.0.lcssa.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1583
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1583
  %i.ds = load ptr, ptr %i.af, align 8, !noalias !1583, !nonnull !4, !noundef !4 ; 2 uses
  %i.dt = load i64, ptr %i.ag, align 8, !noalias !1583, !noundef !4
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dt
  %i.dv = icmp ult i64 %i.ao, 1152921504606846976
  call void @llvm.assume(i1 %i.dv)
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ao
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false), !noalias !1583
  store ptr %i.ds, ptr %i.c, align 8, !noalias !1583
  store ptr %i.du, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !1583
  store ptr %i.at, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !noalias !1583
  store ptr %i.at, ptr %.sroa.6.0..sroa_idx.i5.i.i, align 8, !noalias !1583
  store i64 %i.ar, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !1583
  store ptr %i.dw, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !1583
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecdEINtB4_18SpecFromIterNesteddINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB1A_3zip3ZipINtNtNtB1E_5slice4iter4IterdEINtNtB6_9into_iter8IntoIterdEENCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3G_14UnigramTrainer21prune_sentence_piecess0_00EE9from_iterB3M_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.c)
          to label %bb.am unwind label %bb.aw, !noalias !1583

bb.al:                                            ; preds = %bb.am
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.d) #29
          to label %bb.av unwind label %bb.au, !noalias !1583

bb.am:                                            ; preds = %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1583
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1583
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1583
  %i.dy = load ptr, ptr %i.ah, align 8, !noalias !1583, !nonnull !4, !noundef !4 ; 2 uses
  %i.dz = load i64, ptr %i.ai, align 8, !noalias !1583, !noundef !4
  %i.ea = getelementptr inbounds nuw [24 x i8], ptr %i.dy, i64 %i.dz
  %.sroa.011.0.copyload.i.i.i = load i64, ptr %i.e, align 8, !noalias !1583
  %.sroa.412.0.copyload.i.i.i = load ptr, ptr %.sroa.412.0..sroa_idx.i.i.i, align 8, !noalias !1583, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.513.0.copyload.i.i.i = load i64, ptr %.sroa.513.0..sroa_idx.i.i.i, align 8, !noalias !1583 ; 2 uses
  %i.eb = icmp ult i64 %.sroa.513.0.copyload.i.i.i, 384307168202282326
  call void @llvm.assume(i1 %i.eb)
  %i.ec = getelementptr inbounds nuw [24 x i8], ptr %.sroa.412.0.copyload.i.i.i, i64 %.sroa.513.0.copyload.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.910.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false), !noalias !1583
  store ptr %i.dy, ptr %i.a, align 8, !noalias !1583
  store ptr %i.ea, ptr %.sroa.45.0..sroa_idx.i.i.i, align 8, !noalias !1583
  store ptr %.sroa.412.0.copyload.i.i.i, ptr %.sroa.56.0..sroa_idx.i.i.i, align 8, !noalias !1583
  store ptr %.sroa.412.0.copyload.i.i.i, ptr %.sroa.67.0..sroa_idx.i.i.i, align 8, !noalias !1583
  store i64 %.sroa.011.0.copyload.i.i.i, ptr %.sroa.78.0..sroa_idx.i.i.i, align 8, !noalias !1583
  store ptr %i.ec, ptr %.sroa.89.0..sroa_idx.i.i.i, align 8, !noalias !1583
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBT_jEEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB1I_3zip3ZipINtNtNtB1M_5slice4iter4IterB12_EINtNtB6_9into_iter8IntoIterB12_EENCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3U_14UnigramTrainer21prune_sentence_piecess0_0s_0EE9from_iterB40_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.a)
          to label %bb.an unwind label %bb.al, !noalias !1583

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1583
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !1584
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1583
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_jEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.ap unwind label %bb.ao, !noalias !1583

bb.ao:                                            ; preds = %bb.an
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i.i.i unwind label %bb.aq, !noalias !1583

bb.ap:                                            ; preds = %bb.an
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_jEEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i unwind label %bb.ar, !noalias !1583

bb.aq:                                            ; preds = %bb.ao
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !1583
  unreachable

.body.i.i.i:                                      ; preds = %bb.av, %bb.ar, %bb.ao
  %.pn3.i.i.i = phi { ptr, i32 } [ %.pn16.i.i.i, %bb.av ], [ %i.ef, %bb.ar ], [ %i.ed, %bb.ao ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.g) #29
          to label %bb.ay unwind label %bb.au, !noalias !1583

bb.ar:                                            ; preds = %bb.ap
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_jEEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i: ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1583
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i unwind label %bb.as, !noalias !1583

bb.as:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_jEEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  %i.eg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.ay unwind label %bb.at, !noalias !1583

bb.at:                                            ; preds = %bb.as
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !1583
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_jEEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g), !noalias !1569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1568
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0174.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, i64 24, i1 false), !noalias !1569
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, i64 24, i1 false), !noalias !1569
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  %i.ei = icmp eq i64 %i.an, 0
  br i1 %i.ei, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter6ChunksTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEENtNtNtNtBa_4iter6traits8iterator8Iterator4foldTdINtNtBT_3vec3VecdEIB2h_IB2h_jEEENCINvNtNtB1A_8adapters3map8map_foldRSBL_B2e_B2e_NCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3F_14UnigramTrainer21prune_sentence_pieces0NCB3A_s0_0E0EB3L_.exit, label %bb.b

bb.au:                                            ; preds = %bb.aw, %bb.av, %.body.i.i.i, %bb.al
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !1583
  unreachable

bb.av:                                            ; preds = %bb.aw, %bb.al
  %.pn16.i.i.i = phi { ptr, i32 } [ %i.ek, %bb.aw ], [ %i.dx, %bb.al ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_jEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.f) #29
          to label %.body.i.i.i unwind label %bb.au, !noalias !1583

bb.aw:                                            ; preds = %.loopexit.i.i
  %i.ek = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_jEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.e) #29
          to label %bb.av unwind label %bb.au, !noalias !1583

.body.thread.i.i:                                 ; preds = %.body.thread28.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.e
  %eh.lpad-body24.i.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.i.i.i, %bb.e ], [ %lpad.loopexit.split-lp, %.body.thread28.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIBE_IBE_jEEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(56) %i.p) #29
          to label %bb.ay unwind label %bb.ax, !noalias !1568

bb.ax:                                            ; preds = %.body.thread.i.i
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !1568
  unreachable

end_hunk_1
