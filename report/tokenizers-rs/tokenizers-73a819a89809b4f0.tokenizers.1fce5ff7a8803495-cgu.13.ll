Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.13?download=true
inline.NumInlined: 1330
inline.NumDeleted: 900
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterINtNtCscdodAO9FK5_5alloc3vec3VecjEEINtNtB1G_9into_iter8IntoIterB1D_EENCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2T_14UnigramTrainer21prune_sentence_piecess0_0s_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4D_8for_each4callB1D_NCINvMsj_B1G_IB1E_B1D_E14extend_trustedBN_E0E0EB2Z_:bb.a
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

.split11.i.i:                                     ; preds = %_RNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB8_14UnigramTrainer21prune_sentence_piecess0_0s_0Be_.exit.i.i.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.lr.ph.i.split.i.i:                               ; preds = %.lr.ph.i.i.i, %bb.l
  %i.al = phi ptr [ %i.at, %bb.l ], [ %.val15.i.i.i.i, %.lr.ph.i.i.i ] ; 5 uses
  %i.am = phi ptr [ %i.aq, %bb.l ], [ %.val.i.i.i.i, %.lr.ph.i.i.i ] ; 4 uses
  %.val12.i.i.i = phi i64 [ %i.bg, %bb.l ], [ %.sroa.5.0.copyload, %.lr.ph.i.i.i ] ; 5 uses
  %.sroa.01.026.i.i.i = phi i64 [ %i.an, %bb.l ], [ 0, %.lr.ph.i.i.i ]
  %i.an = add nuw nsw i64 %.sroa.01.026.i.i.i, 1  ; 2 uses
  %i.ao = icmp eq ptr %i.am, %.val14.i.i.i.i
  br i1 %i.ao, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterINtNtCscdodAO9FK5_5alloc3vec3VecjEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.split.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 24 ; 2 uses
  store ptr %i.ap, ptr %i.d, align 8, !alias.scope !264, !noalias !265
  br label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterINtNtCscdodAO9FK5_5alloc3vec3VecjEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterINtNtCscdodAO9FK5_5alloc3vec3VecjEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i: ; preds = %bb.e, %.lr.ph.i.split.i.i
  %i.aq = phi ptr [ %i.ap, %bb.e ], [ %i.am, %.lr.ph.i.split.i.i ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.am, %bb.e ], [ null, %.lr.ph.i.split.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.617.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %i.ar = icmp eq ptr %i.al, %.val16.i.i.i.i
  br i1 %i.ar, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterINtNtCscdodAO9FK5_5alloc3vec3VecjEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 2 uses
  store ptr %i.as, ptr %i.j, align 8, !alias.scope !256, !noalias !257
  %.sroa.015.0.copyload16.i.i.i = load i64, ptr %i.al, align 8, !noalias !258
  %.sroa.617.0..sroa_idx18.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.617.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.617.0..sroa_idx18.i.i.i, i64 16, i1 false), !noalias !258
  br label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i: ; preds = %bb.f, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterINtNtCscdodAO9FK5_5alloc3vec3VecjEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  %i.at = phi ptr [ %i.as, %bb.f ], [ %i.al, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterINtNtCscdodAO9FK5_5alloc3vec3VecjEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i ]
  %.sroa.015.0.i.i.i = phi i64 [ %.sroa.015.0.copyload16.i.i.i, %bb.f ], [ -1, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterINtNtCscdodAO9FK5_5alloc3vec3VecjEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i ] ; 2 uses
  %i.au = icmp ne i64 %.sroa.015.0.i.i.i, -1
  call void @llvm.assume(i1 %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.623.8..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.617.i.i.i, i64 16, i1 false), !noalias !260
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.617.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !260
  store i64 %.sroa.015.0.i.i.i, ptr %i.b, align 8, !noalias !261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !259
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !259, !nonnull !3, !noundef !3
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !259, !noundef !3
  %i.az = load ptr, ptr %.sroa.623.8..sroa_idx.i.i.i, align 8, !noalias !259, !nonnull !3, !noundef !3
  %i.ba = load i64, ptr %i.p, align 8, !noalias !259, !noundef !3
  store ptr %i.aw, ptr %i.a, align 8, !noalias !259
  store i64 %i.ay, ptr %i.q, align 8, !noalias !259
  store ptr %i.az, ptr %i.r, align 8, !noalias !259
  store i64 %i.ba, ptr %i.s, align 8, !noalias !259
  invoke void @_RNvXs0_NtCscdodAO9FK5_5alloc5sliceSRSjINtB5_6ConcatjE6concatCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.a, i64 noundef 2)
          to label %bb.h unwind label %.split.i.i, !noalias !262

.split.i.i:                                       ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.split.i.i, %.split.us.split.i.i
  %.us-phi.i.i = phi i64 [ %.val12.i.i.i, %.split.i.i ], [ %.val12.i.us.i.i, %.split.us.split.i.i ]
  %.us-phi5.i.i = phi { ptr, i32 } [ %i.bb, %.split.i.i ], [ %i.ah, %.split.us.split.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.b) #29
          to label %.body.i.i.i unwind label %bb.k, !noalias !259

bb.h:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !259
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB8_14UnigramTrainer21prune_sentence_piecess0_0s_0Be_.exit.i.i.i.i unwind label %.split7.i.i, !noalias !259

.split7.i.i:                                      ; preds = %bb.h
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.split7.i.i, %.split7.us.split.i.i
  %.us-phi8.i.i = phi i64 [ %.val12.i.i.i, %.split7.i.i ], [ %.val12.i.us.i.i, %.split7.us.split.i.i ]
  %.us-phi9.i.i = phi { ptr, i32 } [ %i.bc, %.split7.i.i ], [ %i.ai, %.split7.us.split.i.i ]
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i.i.i unwind label %bb.j, !noalias !259

bb.j:                                             ; preds = %bb.i
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !259
  unreachable

bb.k:                                             ; preds = %bb.g
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !259
  unreachable

_RNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB8_14UnigramTrainer21prune_sentence_piecess0_0s_0Be_.exit.i.i.i.i: ; preds = %bb.h
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.l unwind label %.split11.i.i, !noalias !260

bb.l:                                             ; preds = %_RNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB8_14UnigramTrainer21prune_sentence_piecess0_0s_0Be_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !259
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %.sroa.7.0.copyload, i64 %.val12.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !262
  %i.bg = add i64 %.val12.i.i.i, 1                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !260
  %exitcond.not.i.i.i = icmp eq i64 %i.an, %.sroa.0.0.i.i.i.i.i
  br i1 %exitcond.not.i.i.i, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtCscdodAO9FK5_5alloc3vec3VecjEEINtNtB1p_9into_iter8IntoIterB1m_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B1m_EB1m_uNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3T_14UnigramTrainer21prune_sentence_piecess0_0s_0NCINvNvB2t_8for_each4callB1m_NCINvMsj_B1p_IB1n_B1m_E14extend_trustedINtB3c_3MapBM_B3K_EE0E0E0EB3Z_.exit, label %.lr.ph.i.split.i.i, !llvm.loop !249

.body.i.i.i:                                      ; preds = %bb.i, %bb.g, %.split11.i.i, %.split11.us.split.i.i
  %.val12.i4.i.i = phi i64 [ %.us-phi.i.i, %bb.g ], [ %.us-phi8.i.i, %bb.i ], [ %.val12.i.i.i, %.split11.i.i ], [ %.val12.i.us.i.i, %.split11.us.split.i.i ]
  %.pn.i.i.i = phi { ptr, i32 } [ %.us-phi5.i.i, %bb.g ], [ %.us-phi9.i.i, %bb.i ], [ %i.ak, %.split11.i.i ], [ %i.aj, %.split11.us.split.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val12.i4.i.i, ptr %.sroa.0.0.copyload, align 8, !noalias !260
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bh)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterINtNtCscdodAO9FK5_5alloc3vec3VecjEEINtNtB1C_9into_iter8IntoIterB1z_EEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i unwind label %bb.m, !noalias !265

bb.m:                                             ; preds = %.body.i.i.i
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !265
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterINtNtCscdodAO9FK5_5alloc3vec3VecjEEINtNtB1C_9into_iter8IntoIterB1z_EEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i: ; preds = %.body.i.i.i
  resume { ptr, i32 } %.pn.i.i.i

_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtCscdodAO9FK5_5alloc3vec3VecjEEINtNtB1p_9into_iter8IntoIterB1m_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B1m_EB1m_uNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3T_14UnigramTrainer21prune_sentence_piecess0_0s_0NCINvNvB2t_8for_each4callB1m_NCINvMsj_B1p_IB1n_B1m_E14extend_trustedINtB3c_3MapBM_B3K_EE0E0E0EB3Z_.exit: ; preds = %bb.l, %bb.d, %bb.a
  %.val14.i.i.i = phi i64 [ %i.ag, %bb.d ], [ %.sroa.5.0.copyload, %bb.a ], [ %i.bg, %bb.l ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val14.i.i.i, ptr %.sroa.0.0.copyload, align 8, !noalias !260
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bj), !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdEENCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2E_14UnigramTrainer10run_e_steps1_00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4b_8for_each4calldNCINvMsj_B1K_INtB1K_3VecdE14extend_trustedBN_E0E0EB2K_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8 ; 5 uses
  %.sroa.8.0.copyload1 = ptrtoaddr ptr %.sroa.8.0.copyload to i64
  %i.b = invoke noundef i64 @_RNvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterdENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.a)
          to label %.noexc.i.i unwind label %bb.b, !noalias !283

.noexc.i.i:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.d = invoke noundef i64 @_RNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdENtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
          to label %bb.c unwind label %bb.b, !noalias !283

bb.b:                                             ; preds = %.noexc.i.i, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.sroa.5.0.copyload, ptr %.sroa.0.0.copyload, align 8, !noalias !283
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdEEECs2JiOgHzbbc7_10tokenizers.exit.i.i unwind label %bb.d, !noalias !283

bb.c:                                             ; preds = %.noexc.i.i
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.d, i64 %i.b) ; 7 uses
  %.not.i.i = icmp eq i64 %.sroa.0.0.i.i.i.i, 0
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRddEduNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3v_14UnigramTrainer10run_e_steps1_00NCINvNvB2e_8for_each4calldNCINvMsj_B1t_INtB1t_3VecdE14extend_trustedINtB2X_3MapBM_B3m_EE0E0E0EB3B_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.pre = load i64, ptr %i.g, align 8, !alias.scope !284, !noalias !283 ; 5 uses
  %.val.i.i.i.pre = load ptr, ptr %i.a, align 8, !alias.scope !284, !noalias !283 ; 5 uses
  %.val1.i.i.i.pre = load ptr, ptr %i.h, align 8, !alias.scope !284, !noalias !283 ; 5 uses
  %min.iters.check = icmp ult i64 %.sroa.0.0.i.i.i.i, 14
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %.val1.i.i.i.pre2 = ptrtoaddr ptr %.val1.i.i.i.pre to i64
  %.val.i.i.i.pre3 = ptrtoaddr ptr %.val.i.i.i.pre to i64
  %i.i = shl i64 %.sroa.5.0.copyload, 3
  %2 = shl i64 %.pre, 3                           ; 2 uses
  %3 = add i64 %i.i, %.sroa.8.0.copyload1         ; 2 uses
  %i.j = add i64 %2, %.val1.i.i.i.pre2
  %i.k = sub i64 %i.j, %3
  %diff.check = icmp ugt i64 %i.k, -32
  %i.l = add i64 %2, %.val.i.i.i.pre3
  %i.m = sub i64 %i.l, %3
  %diff.check4 = icmp ugt i64 %i.m, -32
  %conflict.rdx = or i1 %diff.check, %diff.check4
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.sroa.0.0.i.i.i.i, -4         ; 4 uses
  %i.n = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.o = getelementptr [8 x i8], ptr %.sroa.8.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %i.p = add i64 %.pre, %index                    ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.pre, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.pre, i64 %i.p ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <2 x double>, ptr %i.r, align 8, !noalias !286
  %wide.load5 = load <2 x double>, ptr %i.s, align 8, !noalias !286
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load6 = load <2 x double>, ptr %i.q, align 8, !noalias !283
  %wide.load7 = load <2 x double>, ptr %i.t, align 8, !noalias !283
  %i.u = fadd <2 x double> %wide.load, %wide.load6
  %i.v = fadd <2 x double> %wide.load5, %wide.load7
  %i.w = getelementptr [8 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x double> %i.u, ptr %i.w, align 8, !noalias !287
  store <2 x double> %i.v, ptr %i.x, align 8, !noalias !287
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !280

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
  call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %i.aa = add i64 %.pre, %.sroa.0.015.i.i.ph      ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.pre, i64 %i.aa
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.pre, i64 %i.aa
  %i.ad = load double, ptr %i.ac, align 8, !noalias !286, !noundef !3
  %.val12.i.i.prol = load double, ptr %i.ab, align 8, !noalias !283, !noundef !3
  %i.ae = fadd double %i.ad, %.val12.i.i.prol
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %.ph
  store double %i.ae, ptr %i.af, align 8, !noalias !287
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

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %i.ai = phi i64 [ %.unr, %scalar.ph.preheader.new ], [ %i.aw, %scalar.ph ] ; 3 uses
  %.sroa.0.015.i.i = phi i64 [ %.sroa.0.015.i.i.unr, %scalar.ph.preheader.new ], [ %i.ap, %scalar.ph ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %i.aj = add i64 %.pre, %.sroa.0.015.i.i         ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.pre, i64 %i.aj
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.pre, i64 %i.aj
  %i.am = load double, ptr %i.al, align 8, !noalias !286, !noundef !3
  %.val12.i.i = load double, ptr %i.ak, align 8, !noalias !283, !noundef !3
  %i.an = fadd double %i.am, %.val12.i.i
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %i.ai
  store double %i.an, ptr %i.ao, align 8, !noalias !287
  %i.ap = add nuw i64 %.sroa.0.015.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.015.i.i, %invariant.op ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.pre, i64 %.reass
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.pre, i64 %.reass
  %i.as = load double, ptr %i.ar, align 8, !noalias !288, !noundef !3
  %.val12.i.i.1 = load double, ptr %i.aq, align 8, !noalias !283, !noundef !3
  %i.at = fadd double %i.as, %.val12.i.i.1
  %i.au = getelementptr [8 x i8], ptr %.sroa.8.0.copyload, i64 %i.ai
  %i.av = getelementptr i8, ptr %i.au, i64 8
  store double %i.at, ptr %i.av, align 8, !noalias !287
  %i.aw = add i64 %i.ai, 2                        ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.ap, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRddEduNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3v_14UnigramTrainer10run_e_steps1_00NCINvNvB2e_8for_each4calldNCINvMsj_B1t_INtB1t_3VecdE14extend_trustedINtB2X_3MapBM_B3m_EE0E0E0EB3B_.exit, label %scalar.ph, !llvm.loop !282

bb.d:                                             ; preds = %bb.b
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !283
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdEEECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.e

_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRddEduNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3v_14UnigramTrainer10run_e_steps1_00NCINvNvB2e_8for_each4calldNCINvMsj_B1t_INtB1t_3VecdE14extend_trustedINtB2X_3MapBM_B3m_EE0E0E0EB3B_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.c
  %.val11.i.i = phi i64 [ %.sroa.5.0.copyload, %bb.c ], [ %i.n, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.aw, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val11.i.i, ptr %.sroa.0.0.copyload, align 8, !noalias !283
  call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c), !noalias !283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdEENCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2E_14UnigramTrainer21prune_sentence_piecess0_00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4m_8for_each4calldNCINvMsj_B1K_INtB1K_3VecdE14extend_trustedBN_E0E0EB2K_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8 ; 5 uses
  %.sroa.8.0.copyload1 = ptrtoaddr ptr %.sroa.8.0.copyload to i64
  %i.b = invoke noundef i64 @_RNvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterdENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.a)
          to label %.noexc.i.i unwind label %bb.b, !noalias !306

.noexc.i.i:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.d = invoke noundef i64 @_RNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdENtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
          to label %bb.c unwind label %bb.b, !noalias !306

bb.b:                                             ; preds = %.noexc.i.i, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.sroa.5.0.copyload, ptr %.sroa.0.0.copyload, align 8, !noalias !306
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdEEECs2JiOgHzbbc7_10tokenizers.exit.i.i unwind label %bb.d, !noalias !306

bb.c:                                             ; preds = %.noexc.i.i
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.d, i64 %i.b) ; 7 uses
  %.not.i.i = icmp eq i64 %.sroa.0.0.i.i.i.i, 0
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRddEduNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3v_14UnigramTrainer21prune_sentence_piecess0_00NCINvNvB2e_8for_each4calldNCINvMsj_B1t_INtB1t_3VecdE14extend_trustedINtB2X_3MapBM_B3m_EE0E0E0EB3B_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.pre = load i64, ptr %i.g, align 8, !alias.scope !307, !noalias !306 ; 5 uses
  %.val.i.i.i.pre = load ptr, ptr %i.a, align 8, !alias.scope !307, !noalias !306 ; 5 uses
  %.val1.i.i.i.pre = load ptr, ptr %i.h, align 8, !alias.scope !307, !noalias !306 ; 5 uses
  %min.iters.check = icmp ult i64 %.sroa.0.0.i.i.i.i, 14
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %.val1.i.i.i.pre2 = ptrtoaddr ptr %.val1.i.i.i.pre to i64
  %.val.i.i.i.pre3 = ptrtoaddr ptr %.val.i.i.i.pre to i64
  %i.i = shl i64 %.sroa.5.0.copyload, 3
  %2 = shl i64 %.pre, 3                           ; 2 uses
  %3 = add i64 %i.i, %.sroa.8.0.copyload1         ; 2 uses
  %i.j = add i64 %2, %.val1.i.i.i.pre2
  %i.k = sub i64 %i.j, %3
  %diff.check = icmp ugt i64 %i.k, -32
  %i.l = add i64 %2, %.val.i.i.i.pre3
  %i.m = sub i64 %i.l, %3
  %diff.check4 = icmp ugt i64 %i.m, -32
  %conflict.rdx = or i1 %diff.check, %diff.check4
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.sroa.0.0.i.i.i.i, -4         ; 4 uses
  %i.n = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.o = getelementptr [8 x i8], ptr %.sroa.8.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !308)
  %i.p = add i64 %.pre, %index                    ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.pre, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.pre, i64 %i.p ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <2 x double>, ptr %i.r, align 8, !noalias !309
  %wide.load5 = load <2 x double>, ptr %i.s, align 8, !noalias !309
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load6 = load <2 x double>, ptr %i.q, align 8, !noalias !306
  %wide.load7 = load <2 x double>, ptr %i.t, align 8, !noalias !306
  %i.u = fadd <2 x double> %wide.load, %wide.load6
  %i.v = fadd <2 x double> %wide.load5, %wide.load7
  %i.w = getelementptr [8 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x double> %i.u, ptr %i.w, align 8, !noalias !310
  store <2 x double> %i.v, ptr %i.x, align 8, !noalias !310
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !303

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
  call void @llvm.experimental.noalias.scope.decl(metadata !308)
  %i.aa = add i64 %.pre, %.sroa.0.015.i.i.ph      ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.pre, i64 %i.aa
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.pre, i64 %i.aa
  %i.ad = load double, ptr %i.ac, align 8, !noalias !309, !noundef !3
  %.val12.i.i.prol = load double, ptr %i.ab, align 8, !noalias !306, !noundef !3
  %i.ae = fadd double %i.ad, %.val12.i.i.prol
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %.ph
  store double %i.ae, ptr %i.af, align 8, !noalias !310
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

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %i.ai = phi i64 [ %.unr, %scalar.ph.preheader.new ], [ %i.aw, %scalar.ph ] ; 3 uses
  %.sroa.0.015.i.i = phi i64 [ %.sroa.0.015.i.i.unr, %scalar.ph.preheader.new ], [ %i.ap, %scalar.ph ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !308)
  %i.aj = add i64 %.pre, %.sroa.0.015.i.i         ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.pre, i64 %i.aj
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.pre, i64 %i.aj
  %i.am = load double, ptr %i.al, align 8, !noalias !309, !noundef !3
  %.val12.i.i = load double, ptr %i.ak, align 8, !noalias !306, !noundef !3
  %i.an = fadd double %i.am, %.val12.i.i
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %i.ai
  store double %i.an, ptr %i.ao, align 8, !noalias !310
  %i.ap = add nuw i64 %.sroa.0.015.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.015.i.i, %invariant.op ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.pre, i64 %.reass
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.pre, i64 %.reass
  %i.as = load double, ptr %i.ar, align 8, !noalias !311, !noundef !3
  %.val12.i.i.1 = load double, ptr %i.aq, align 8, !noalias !306, !noundef !3
  %i.at = fadd double %i.as, %.val12.i.i.1
  %i.au = getelementptr [8 x i8], ptr %.sroa.8.0.copyload, i64 %i.ai
  %i.av = getelementptr i8, ptr %i.au, i64 8
  store double %i.at, ptr %i.av, align 8, !noalias !310
  %i.aw = add i64 %i.ai, 2                        ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.ap, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRddEduNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3v_14UnigramTrainer21prune_sentence_piecess0_00NCINvNvB2e_8for_each4calldNCINvMsj_B1t_INtB1t_3VecdE14extend_trustedINtB2X_3MapBM_B3m_EE0E0E0EB3B_.exit, label %scalar.ph, !llvm.loop !305

bb.d:                                             ; preds = %bb.b
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !306
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdEEECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.e

_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRddEduNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3v_14UnigramTrainer21prune_sentence_piecess0_00NCINvNvB2e_8for_each4calldNCINvMsj_B1t_INtB1t_3VecdE14extend_trustedINtB2X_3MapBM_B3m_EE0E0E0EB3B_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.c
  %.val11.i.i = phi i64 [ %.sroa.5.0.copyload, %bb.c ], [ %i.n, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.aw, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val11.i.i, ptr %.sroa.0.0.copyload, align 8, !noalias !306
  call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c), !noalias !306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterhEIB1e_mEENCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10bytes_chars_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3q_8for_each4callThcENCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB4H_7HashMaphcNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB3u_7collect6ExtendB4t_E6extendBN_E0E0EB2i_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %0, i64 80, i1 false)
  %i.b = invoke noundef i64 @_RNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterhENtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.a)
          to label %.noexc.i.i unwind label %bb.c, !noalias !320

.noexc.i.i:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.d = invoke noundef i64 @_RNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItermENtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
          to label %bb.d unwind label %bb.c, !noalias !320

bb.b:                                             ; preds = %bb.g, %bb.c
  %.pn.i.i = phi { ptr, i32 } [ %i.l, %bb.g ], [ %i.e, %bb.c ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterhEIB1a_mEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a) #29
          to label %common.resume.i.i unwind label %bb.h

bb.c:                                             ; preds = %.noexc.i.i, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %.noexc.i.i
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.d, i64 %i.b) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %exitcond.not.i.i1 = icmp eq i64 %.sroa.0.0.i.i.i.i, 0
  br i1 %exitcond.not.i.i1, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldThmEThcEuNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10bytes_chars_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB3o_7HashMaphcNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB2t_7collect6ExtendBY_E6extendINtB4_3MapINtNtB6_3zip3ZipINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterhEIB5Z_mEEB13_EE0E0E0B1b_.exit.i.i._crit_edge, label %.lr.ph

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldThmEThcEuNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10bytes_chars_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB3o_7HashMaphcNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB2t_7collect6ExtendBY_E6extendINtB4_3MapINtNtB6_3zip3ZipINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterhEIB5Z_mEEB13_EE0E0E0B1b_.exit.i.i: ; preds = %.lr.ph
  %i.i = add i64 %.sroa.0.0.i.i2, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.i, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldThmEThcEuNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10bytes_chars_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB3o_7HashMaphcNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB2t_7collect6ExtendBY_E6extendINtB4_3MapINtNtB6_3zip3ZipINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterhEIB5Z_mEEB13_EE0E0E0B1b_.exit.i.i._crit_edge, label %.lr.ph

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldThmEThcEuNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10bytes_chars_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB3o_7HashMaphcNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB2t_7collect6ExtendBY_E6extendINtB4_3MapINtNtB6_3zip3ZipINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterhEIB5Z_mEEB13_EE0E0E0B1b_.exit.i.i._crit_edge: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldThmEThcEuNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10bytes_chars_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB3o_7HashMaphcNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB2t_7collect6ExtendBY_E6extendINtB4_3MapINtNtB6_3zip3ZipINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterhEIB5Z_mEEB13_EE0E0E0B1b_.exit.i.i, %bb.d
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterhENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a)
          to label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterhEIBX_mEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldThmEThcEuNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10bytes_chars_0NCINvNvB1S_8for_each4callB2X_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB4U_7HashMaphcNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB1W_7collect6ExtendB2X_E6extendINtB2B_3MapBM_B32_EE0E0E0EB3a_.exit unwind label %bb.e

bb.e:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldThmEThcEuNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10bytes_chars_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB3o_7HashMaphcNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB2t_7collect6ExtendBY_E6extendINtB4_3MapINtNtB6_3zip3ZipINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterhEIB5Z_mEEB13_EE0E0E0B1b_.exit.i.i._crit_edge
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoItermENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %common.resume.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable

common.resume.i.i:                                ; preds = %bb.e, %bb.b
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.j, %bb.e ], [ %.pn.i.i, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.g:                                             ; preds = %.lr.ph
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

.lr.ph:                                           ; preds = %bb.d, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldThmEThcEuNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10bytes_chars_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB3o_7HashMaphcNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB2t_7collect6ExtendBY_E6extendINtB4_3MapINtNtB6_3zip3ZipINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterhEIB5Z_mEEB13_EE0E0E0B1b_.exit.i.i
  %.sroa.0.0.i.i2 = phi i64 [ %i.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldThmEThcEuNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10bytes_chars_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB3o_7HashMaphcNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB2t_7collect6ExtendBY_E6extendINtB4_3MapINtNtB6_3zip3ZipINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterhEIB5Z_mEEB13_EE0E0E0B1b_.exit.i.i ], [ 0, %bb.d ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !321)
  %i.m = load i64, ptr %i.f, align 8, !alias.scope !322, !noalias !320, !noundef !3
  %i.n = add i64 %i.m, %.sroa.0.0.i.i2            ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !322, !noalias !320, !nonnull !3, !noundef !3
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !noalias !321, !noundef !3
  %.val1.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !322, !noalias !320, !nonnull !3, !noundef !3
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i, i64 %i.n
  %i.r = load i32, ptr %i.q, align 4, !noalias !321, !noundef !3 ; 2 uses
  %i.s = icmp ult i32 %i.r, 1114112
  call void @llvm.assume(i1 %i.s)
  %i.t = invoke noundef i32 @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMaphcNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE6insertCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, i8 noundef %i.p, i32 noundef range(i32 0, 1114112) %i.r)
          to label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldThmEThcEuNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10bytes_chars_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB3o_7HashMaphcNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB2t_7collect6ExtendBY_E6extendINtB4_3MapINtNtB6_3zip3ZipINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterhEIB5Z_mEEB13_EE0E0E0B1b_.exit.i.i unwind label %bb.g ; 0 uses

bb.h:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterhEIBX_mEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldThmEThcEuNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10bytes_chars_0NCINvNvB1S_8for_each4callB2X_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB4U_7HashMaphcNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB1W_7collect6ExtendB2X_E6extendINtB2B_3MapBM_B32_EE0E0E0EB3a_.exit: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldThmEThcEuNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10bytes_chars_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB3o_7HashMaphcNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB2t_7collect6ExtendBY_E6extendINtB4_3MapINtNtB6_3zip3ZipINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterhEIB5Z_mEEB13_EE0E0E0B1b_.exit.i.i._crit_edge
  call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoItermENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
end_hunk_0
