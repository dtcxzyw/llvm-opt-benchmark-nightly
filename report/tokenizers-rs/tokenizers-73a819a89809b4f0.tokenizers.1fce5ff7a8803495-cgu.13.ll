Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.13?download=true
inline.NumInlined: 1330
inline.NumDeleted: 900
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterINtNtCscdodAO9FK5_5alloc3vec3VecjEEINtNtB1G_9into_iter8IntoIterB1D_EENCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2T_14UnigramTrainer21prune_sentence_piecess0_0s_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4D_8for_each4callB1D_NCINvMsj_B1G_IB1E_B1D_E14extend_trustedBN_E0E0EB2Z_:bb.a
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
  %i.j = add i64 %i.i, %.sroa.8.0.copyload1       ; 2 uses
  %i.k = shl i64 %.pre, 3                         ; 2 uses
  %i.l = add i64 %i.k, %.val1.i.i.i.pre2
  %i.m = sub i64 %i.l, %i.j
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = add i64 %i.k, %.val.i.i.i.pre3
  %i.o = sub i64 %i.n, %i.j
  %diff.check4 = icmp ugt i64 %i.o, -32
  %conflict.rdx = or i1 %diff.check, %diff.check4
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.sroa.0.0.i.i.i.i, -4         ; 4 uses
  %i.p = getelementptr [8 x i8], ptr %.sroa.8.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %i.q = add i64 %.pre, %index                    ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.pre, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.pre, i64 %i.q ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <2 x double>, ptr %i.s, align 8, !noalias !286
  %wide.load5 = load <2 x double>, ptr %i.t, align 8, !noalias !286
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load6 = load <2 x double>, ptr %i.r, align 8, !noalias !283
  %wide.load7 = load <2 x double>, ptr %i.u, align 8, !noalias !283
  %i.v = fadd <2 x double> %wide.load, %wide.load6
  %i.w = fadd <2 x double> %wide.load5, %wide.load7
  %i.x = getelementptr [8 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <2 x double> %i.v, ptr %i.x, align 8, !noalias !287
  store <2 x double> %i.w, ptr %i.y, align 8, !noalias !287
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !280

middle.block:                                     ; preds = %vector.body
  %2 = add i64 %.sroa.5.0.copyload, %n.vec        ; 2 uses
  %cmp.n = icmp eq i64 %.sroa.0.0.i.i.i.i, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRddEduNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3v_14UnigramTrainer10run_e_steps1_00NCINvNvB2e_8for_each4calldNCINvMsj_B1t_INtB1t_3VecdE14extend_trustedINtB2X_3MapBM_B3m_EE0E0E0EB3B_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %.lr.ph.i.i ], [ %2, %middle.block ] ; 3 uses
  %.sroa.0.015.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.0.015.i.i.ph, 1
  %xtraiter = and i64 %.sroa.0.0.i.i.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.aa = or disjoint i64 %.sroa.0.015.i.i.ph, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %i.ab = add i64 %.pre, %.sroa.0.015.i.i.ph      ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.pre, i64 %i.ab
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.pre, i64 %i.ab
  %i.ae = load double, ptr %i.ad, align 8, !noalias !286, !noundef !3
  %.val12.i.i.prol = load double, ptr %i.ac, align 8, !noalias !283, !noundef !3
  %i.af = fadd double %i.ae, %.val12.i.i.prol
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %.ph
  store double %i.af, ptr %i.ag, align 8, !noalias !287
  %i.ah = add i64 %.ph, 1                         ; 2 uses
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %.sroa.0.015.i.i.unr = phi i64 [ %.sroa.0.015.i.i.ph, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %i.ai = icmp eq i64 %.sroa.0.0.i.i.i.i, %.neg
  br i1 %i.ai, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRddEduNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3v_14UnigramTrainer10run_e_steps1_00NCINvNvB2e_8for_each4calldNCINvMsj_B1t_INtB1t_3VecdE14extend_trustedINtB2X_3MapBM_B3m_EE0E0E0EB3B_.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.pre
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %i.aj = phi i64 [ %.unr, %scalar.ph.preheader.new ], [ %i.ax, %scalar.ph ] ; 3 uses
  %.sroa.0.015.i.i = phi i64 [ %.sroa.0.015.i.i.unr, %scalar.ph.preheader.new ], [ %i.aq, %scalar.ph ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %i.ak = add i64 %.pre, %.sroa.0.015.i.i         ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.pre, i64 %i.ak
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.pre, i64 %i.ak
  %i.an = load double, ptr %i.am, align 8, !noalias !286, !noundef !3
  %.val12.i.i = load double, ptr %i.al, align 8, !noalias !283, !noundef !3
  %i.ao = fadd double %i.an, %.val12.i.i
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %i.aj
  store double %i.ao, ptr %i.ap, align 8, !noalias !287
  %i.aq = add nuw i64 %.sroa.0.015.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.015.i.i, %invariant.op ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.pre, i64 %.reass
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.pre, i64 %.reass
  %i.at = load double, ptr %i.as, align 8, !noalias !288, !noundef !3
  %.val12.i.i.1 = load double, ptr %i.ar, align 8, !noalias !283, !noundef !3
  %i.au = fadd double %i.at, %.val12.i.i.1
  %i.av = getelementptr [8 x i8], ptr %.sroa.8.0.copyload, i64 %i.aj
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  store double %i.au, ptr %i.aw, align 8, !noalias !287
  %i.ax = add i64 %i.aj, 2                        ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.aq, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRddEduNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3v_14UnigramTrainer10run_e_steps1_00NCINvNvB2e_8for_each4calldNCINvMsj_B1t_INtB1t_3VecdE14extend_trustedINtB2X_3MapBM_B3m_EE0E0E0EB3B_.exit, label %scalar.ph, !llvm.loop !282

bb.d:                                             ; preds = %bb.b
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !283
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdEEECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.e

_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRddEduNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3v_14UnigramTrainer10run_e_steps1_00NCINvNvB2e_8for_each4calldNCINvMsj_B1t_INtB1t_3VecdE14extend_trustedINtB2X_3MapBM_B3m_EE0E0E0EB3B_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.c
  %.val11.i.i = phi i64 [ %.sroa.5.0.copyload, %bb.c ], [ %2, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ax, %scalar.ph ]
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
  %i.j = add i64 %i.i, %.sroa.8.0.copyload1       ; 2 uses
  %i.k = shl i64 %.pre, 3                         ; 2 uses
  %i.l = add i64 %i.k, %.val1.i.i.i.pre2
  %i.m = sub i64 %i.l, %i.j
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = add i64 %i.k, %.val.i.i.i.pre3
  %i.o = sub i64 %i.n, %i.j
  %diff.check4 = icmp ugt i64 %i.o, -32
  %conflict.rdx = or i1 %diff.check, %diff.check4
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.sroa.0.0.i.i.i.i, -4         ; 4 uses
  %i.p = getelementptr [8 x i8], ptr %.sroa.8.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !308)
  %i.q = add i64 %.pre, %index                    ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.pre, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.pre, i64 %i.q ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <2 x double>, ptr %i.s, align 8, !noalias !309
  %wide.load5 = load <2 x double>, ptr %i.t, align 8, !noalias !309
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load6 = load <2 x double>, ptr %i.r, align 8, !noalias !306
  %wide.load7 = load <2 x double>, ptr %i.u, align 8, !noalias !306
  %i.v = fadd <2 x double> %wide.load, %wide.load6
  %i.w = fadd <2 x double> %wide.load5, %wide.load7
  %i.x = getelementptr [8 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <2 x double> %i.v, ptr %i.x, align 8, !noalias !310
  store <2 x double> %i.w, ptr %i.y, align 8, !noalias !310
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !303

middle.block:                                     ; preds = %vector.body
  %2 = add i64 %.sroa.5.0.copyload, %n.vec        ; 2 uses
  %cmp.n = icmp eq i64 %.sroa.0.0.i.i.i.i, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRddEduNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3v_14UnigramTrainer21prune_sentence_piecess0_00NCINvNvB2e_8for_each4calldNCINvMsj_B1t_INtB1t_3VecdE14extend_trustedINtB2X_3MapBM_B3m_EE0E0E0EB3B_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %.lr.ph.i.i ], [ %2, %middle.block ] ; 3 uses
  %.sroa.0.015.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.0.015.i.i.ph, 1
  %xtraiter = and i64 %.sroa.0.0.i.i.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.aa = or disjoint i64 %.sroa.0.015.i.i.ph, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !308)
  %i.ab = add i64 %.pre, %.sroa.0.015.i.i.ph      ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.pre, i64 %i.ab
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.pre, i64 %i.ab
  %i.ae = load double, ptr %i.ad, align 8, !noalias !309, !noundef !3
  %.val12.i.i.prol = load double, ptr %i.ac, align 8, !noalias !306, !noundef !3
  %i.af = fadd double %i.ae, %.val12.i.i.prol
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %.ph
  store double %i.af, ptr %i.ag, align 8, !noalias !310
  %i.ah = add i64 %.ph, 1                         ; 2 uses
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %.sroa.0.015.i.i.unr = phi i64 [ %.sroa.0.015.i.i.ph, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %i.ai = icmp eq i64 %.sroa.0.0.i.i.i.i, %.neg
  br i1 %i.ai, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRddEduNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3v_14UnigramTrainer21prune_sentence_piecess0_00NCINvNvB2e_8for_each4calldNCINvMsj_B1t_INtB1t_3VecdE14extend_trustedINtB2X_3MapBM_B3m_EE0E0E0EB3B_.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.pre
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %i.aj = phi i64 [ %.unr, %scalar.ph.preheader.new ], [ %i.ax, %scalar.ph ] ; 3 uses
  %.sroa.0.015.i.i = phi i64 [ %.sroa.0.015.i.i.unr, %scalar.ph.preheader.new ], [ %i.aq, %scalar.ph ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !308)
  %i.ak = add i64 %.pre, %.sroa.0.015.i.i         ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.pre, i64 %i.ak
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.pre, i64 %i.ak
  %i.an = load double, ptr %i.am, align 8, !noalias !309, !noundef !3
  %.val12.i.i = load double, ptr %i.al, align 8, !noalias !306, !noundef !3
  %i.ao = fadd double %i.an, %.val12.i.i
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %i.aj
  store double %i.ao, ptr %i.ap, align 8, !noalias !310
  %i.aq = add nuw i64 %.sroa.0.015.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.015.i.i, %invariant.op ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.pre, i64 %.reass
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.pre, i64 %.reass
  %i.at = load double, ptr %i.as, align 8, !noalias !311, !noundef !3
  %.val12.i.i.1 = load double, ptr %i.ar, align 8, !noalias !306, !noundef !3
  %i.au = fadd double %i.at, %.val12.i.i.1
  %i.av = getelementptr [8 x i8], ptr %.sroa.8.0.copyload, i64 %i.aj
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  store double %i.au, ptr %i.aw, align 8, !noalias !310
  %i.ax = add i64 %i.aj, 2                        ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.aq, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRddEduNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3v_14UnigramTrainer21prune_sentence_piecess0_00NCINvNvB2e_8for_each4calldNCINvMsj_B1t_INtB1t_3VecdE14extend_trustedINtB2X_3MapBM_B3m_EE0E0E0EB3B_.exit, label %scalar.ph, !llvm.loop !305

bb.d:                                             ; preds = %bb.b
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !306
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdEEECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.e

_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRddEduNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3v_14UnigramTrainer21prune_sentence_piecess0_00NCINvNvB2e_8for_each4calldNCINvMsj_B1t_INtB1t_3VecdE14extend_trustedINtB2X_3MapBM_B3m_EE0E0E0EB3B_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.c
  %.val11.i.i = phi i64 [ %.sroa.5.0.copyload, %bb.c ], [ %2, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ax, %scalar.ph ]
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
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtB8_5chain5ChainIBO_INtNtB8_9enumerate9EnumerateNtNtNtBc_3str4iter5CharsENCNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2k_16NormalizedString7prepend0EINtNtNtBa_7sources4once4OnceTciEEENCINvB2g_15transform_rangeINtNtNtBc_3ops5range5RangejEBX_Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5g_8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB6t_6StringINtNtB5k_7collect6ExtendcE6extendBN_E0E0EB2o_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  store ptr %1, ptr %i.a, align 8
  call void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3map3MapINtNtB7_9enumerate9EnumerateNtNtNtBb_3str4iter5CharsENCNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2f_16NormalizedString7prepend0EINtNtNtB9_7sources4once4OnceTciEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvB13_8map_foldB45_cuNCINvB2b_15transform_rangeINtNtNtBb_3ops5range5RangejEBO_Es_0NCINvNvB4b_8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB6L_6StringINtNtB4f_7collect6ExtendcE6extendIB11_BO_B5d_EE0E0E0EB2j_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtB8_5chain5ChainINtNtNtBa_7sources4once4OnceTciEEIBO_NtNtNtBc_3str4iter5CharsNCNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2o_16NormalizedString6append0EENCINvB2k_15transform_rangeINtNtNtBc_3ops5range9RangeFromjEBX_Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4Q_8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB63_6StringINtNtB4U_7collect6ExtendcE6extendBN_E0E0EB2s_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  store ptr %1, ptr %i.a, align 8
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1u_8Encoding3pads0_0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB2F_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3T_3VecmE14extend_trustedINtNtB8_5chain5ChainBN_INtNtB3T_5drain5DrainmEEE0E0EB1y_:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !noalias !1012
  %i.h = icmp ult i64 %i.c, %i.e
  br i1 %i.h, label %.lr.ph.i, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjmuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2c_8Encoding3pads0_0QNCINvNvBL_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3V_3VecmE14extend_trustedINtNtB1D_5chain5ChainINtB1B_3MapB3_B27_EINtNtB3V_5drain5DrainmEEE0E0E0EB2g_.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.07.i = phi i64 [ %i.i, %.lr.ph.i ], [ %i.c, %bb.a ]
  %i.i = add i64 %.sroa.0.07.i, 1                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1013)
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !1013, !noalias !1012, !nonnull !3, !align !15, !noundef !3
  %i.j = load i32, ptr %.val.i.i, align 4, !noalias !1013, !noundef !3
  call void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB1Y_3VecmE14extend_trustedINtNtNtB11_8adapters5chain5ChainINtNtB2V_3map3MapINtNtB9_5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB44_8Encoding3pads0_0EINtNtB1Y_5drain5DrainmEEE0E0INtB7_5FnMutTumEE8call_mutB48_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, i32 noundef %i.j)
  %exitcond.not.i = icmp eq i64 %i.i, %i.e
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjmuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2c_8Encoding3pads0_0QNCINvNvBL_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3V_3VecmE14extend_trustedINtNtB1D_5chain5ChainINtB1B_3MapB3_B27_EINtNtB3V_5drain5DrainmEEE0E0E0EB2g_.exit, label %.lr.ph.i

_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjmuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2c_8Encoding3pads0_0QNCINvNvBL_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3V_3VecmE14extend_trustedINtNtB1D_5chain5ChainINtB1B_3MapB3_B27_EINtNtB3V_5drain5DrainmEEE0E0E0EB2g_.exit: ; preds = %.lr.ph.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1u_8Encoding3pads1_0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB2F_8for_each4callNtNtCscdodAO9FK5_5alloc6string6StringNCINvMsj_NtB3N_3vecINtB4t_3VecB3J_E14extend_trustedINtNtB8_5chain5ChainBN_INtNtB4t_5drain5DrainB3J_EEE0E0EB1y_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !3 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !3 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !nonnull !3, !align !4, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 8, !noalias !1021
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !noalias !1021
  %i.j = icmp ult i64 %i.e, %i.g
  br i1 %i.j, label %.lr.ph.i, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtCscdodAO9FK5_5alloc6string6StringuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2M_8Encoding3pads1_0QNCINvNvBL_8for_each4callB25_NCINvMsj_NtB29_3vecINtB4y_3VecB25_E14extend_trustedINtNtB1D_5chain5ChainINtB1B_3MapB3_B2H_EINtNtB4y_5drain5DrainB25_EEE0E0E0EB2Q_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjNtNtCscdodAO9FK5_5alloc6string6StringuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1C_8Encoding3pads1_0QNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtBZ_3vecINtB3S_3VecBV_E14extend_trustedINtNtB6_5chain5ChainINtB4_3MapINtNtNtBa_3ops5range5RangejEB1x_EINtNtB3S_5drain5DrainBV_EEE0E0E0B1G_.exit.i, %.lr.ph.i
  %.sroa.0.08.i = phi i64 [ %i.e, %.lr.ph.i ], [ %i.m, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjNtNtCscdodAO9FK5_5alloc6string6StringuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1C_8Encoding3pads1_0QNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtBZ_3vecINtB3S_3VecBV_E14extend_trustedINtNtB6_5chain5ChainINtB4_3MapINtNtNtBa_3ops5range5RangejEB1x_EINtNtB3S_5drain5DrainBV_EEE0E0E0B1G_.exit.i ]
  %i.m = add i64 %.sroa.0.08.i, 1                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1022)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1023
  %.val.i.i = load ptr, ptr %i.i, align 8, !alias.scope !1022, !noalias !1021, !nonnull !3, !align !4, !noundef !3 ; 2 uses
  %i.n = load ptr, ptr %.val.i.i, align 8, !noalias !1024, !nonnull !3, !noundef !3
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !1024, !noundef !3 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1025
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.p, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !1024
  %i.q = load i64, ptr %i.a, align 8, !range !5, !noalias !1025, !noundef !3
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = load i64, ptr %i.k, align 8, !range !6, !noalias !1025, !noundef !3 ; 3 uses
  br i1 %i.r, label %bb.c, label %bb.d, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.t = load i64, ptr %i.l, align 8, !noalias !1025
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.s, i64 %i.t) #30, !noalias !1024
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %i.l, align 8, !noalias !1025, !nonnull !3, !noundef !3 ; 2 uses
  %i.v = icmp ule i64 %i.p, %i.s
  call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1025
  %.not.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjNtNtCscdodAO9FK5_5alloc6string6StringuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1C_8Encoding3pads1_0QNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtBZ_3vecINtB3S_3VecBV_E14extend_trustedINtNtB6_5chain5ChainINtB4_3MapINtNtNtBa_3ops5range5RangejEB1x_EINtNtB3S_5drain5DrainBV_EEE0E0E0B1G_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull align 1 %i.n, i64 %i.p, i1 false), !noalias !1024
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjNtNtCscdodAO9FK5_5alloc6string6StringuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1C_8Encoding3pads1_0QNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtBZ_3vecINtB3S_3VecBV_E14extend_trustedINtNtB6_5chain5ChainINtB4_3MapINtNtNtBa_3ops5range5RangejEB1x_EINtNtB3S_5drain5DrainBV_EEE0E0E0B1G_.exit.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjNtNtCscdodAO9FK5_5alloc6string6StringuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1C_8Encoding3pads1_0QNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtBZ_3vecINtB3S_3VecBV_E14extend_trustedINtNtB6_5chain5ChainINtB4_3MapINtNtNtBa_3ops5range5RangejEB1x_EINtNtB3S_5drain5DrainBV_EEE0E0E0B1G_.exit.i: ; preds = %bb.e, %bb.d
  store i64 %i.s, ptr %i.b, align 8, !noalias !1023
  store ptr %i.u, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1023
  store i64 %i.p, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1023
  call void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callNtNtCscdodAO9FK5_5alloc6string6StringNCINvMsj_NtB1S_3vecINtB2y_3VecB1O_E14extend_trustedINtNtNtB11_8adapters5chain5ChainINtNtB3j_3map3MapINtNtB9_5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4s_8Encoding3pads1_0EINtNtB2y_5drain5DrainB1O_EEE0E0INtB7_5FnMutTuB1O_EE8call_mutB4w_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1023
  %exitcond.not.i = icmp eq i64 %i.m, %i.g
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtCscdodAO9FK5_5alloc6string6StringuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2M_8Encoding3pads1_0QNCINvNvBL_8for_each4callB25_NCINvMsj_NtB29_3vecINtB4y_3VecB25_E14extend_trustedINtNtB1D_5chain5ChainINtB1B_3MapB3_B2H_EINtNtB4y_5drain5DrainB25_EEE0E0E0EB2Q_.exit, label %bb.b

_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtCscdodAO9FK5_5alloc6string6StringuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2M_8Encoding3pads1_0QNCINvNvBL_8for_each4callB25_NCINvMsj_NtB29_3vecINtB4y_3VecB25_E14extend_trustedINtNtB1D_5chain5ChainINtB1B_3MapB3_B2H_EINtNtB4y_5drain5DrainB25_EEE0E0E0EB2Q_.exit: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjNtNtCscdodAO9FK5_5alloc6string6StringuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1C_8Encoding3pads1_0QNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtBZ_3vecINtB3S_3VecBV_E14extend_trustedINtNtB6_5chain5ChainINtB4_3MapINtNtNtBa_3ops5range5RangejEB1x_EINtNtB3S_5drain5DrainBV_EEE0E0E0B1G_.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1u_8Encoding3pads2_0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB2F_8for_each4callINtNtBc_6option6OptionmENCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4g_3VecB3J_E14extend_trustedINtNtB8_5chain5ChainBN_INtNtB4g_5drain5DrainB3J_EEE0E0EB1y_(i64 noundef %0, i64 noundef %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8, !noalias !1028
  %i.b = icmp ult i64 %0, %1
  br i1 %i.b, label %.lr.ph.i, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtBa_6option6OptionmEuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2z_8Encoding3pads2_0QNCINvNvBL_8for_each4callB25_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4l_3VecB25_E14extend_trustedINtNtB1D_5chain5ChainINtB1B_3MapB3_B2u_EINtNtB4l_5drain5DrainB25_EEE0E0E0EB2D_.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.07.i = phi i64 [ %i.c, %.lr.ph.i ], [ %0, %bb.a ]
  %i.c = add i64 %.sroa.0.07.i, 1                 ; 2 uses
  call void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callINtNtBb_6option6OptionmENCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2l_3VecB1O_E14extend_trustedINtNtNtB11_8adapters5chain5ChainINtNtB3l_3map3MapINtNtB9_5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4u_8Encoding3pads2_0EINtNtB2l_5drain5DrainB1O_EEE0E0INtB7_5FnMutTuB1O_EE8call_mutB4y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef 0, i32 undef)
  %exitcond.not.i = icmp eq i64 %i.c, %1
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtBa_6option6OptionmEuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2z_8Encoding3pads2_0QNCINvNvBL_8for_each4callB25_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4l_3VecB25_E14extend_trustedINtNtB1D_5chain5ChainINtB1B_3MapB3_B2u_EINtNtB4l_5drain5DrainB25_EEE0E0E0EB2D_.exit, label %.lr.ph.i

_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtBa_6option6OptionmEuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2z_8Encoding3pads2_0QNCINvNvBL_8for_each4callB25_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4l_3VecB25_E14extend_trustedINtNtB1D_5chain5ChainINtB1B_3MapB3_B2u_EINtNtB4l_5drain5DrainB25_EEE0E0E0EB2D_.exit: ; preds = %.lr.ph.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1u_8Encoding3pads3_0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB2F_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3T_3VecmE14extend_trustedINtNtB8_5chain5ChainBN_INtNtB3T_5drain5DrainmEEE0E0EB1y_(i64 noundef %0, i64 noundef %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8, !noalias !1031
  %i.b = icmp ult i64 %0, %1
  br i1 %i.b, label %.lr.ph.i, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjmuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2c_8Encoding3pads3_0QNCINvNvBL_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3V_3VecmE14extend_trustedINtNtB1D_5chain5ChainINtB1B_3MapB3_B27_EINtNtB3V_5drain5DrainmEEE0E0E0EB2g_.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.07.i = phi i64 [ %i.c, %.lr.ph.i ], [ %0, %bb.a ]
  %i.c = add i64 %.sroa.0.07.i, 1                 ; 2 uses
  call void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB1Y_3VecmE14extend_trustedINtNtNtB11_8adapters5chain5ChainINtNtB2V_3map3MapINtNtB9_5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB44_8Encoding3pads3_0EINtNtB1Y_5drain5DrainmEEE0E0INtB7_5FnMutTumEE8call_mutB48_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef 0)
  %exitcond.not.i = icmp eq i64 %i.c, %1
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjmuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2c_8Encoding3pads3_0QNCINvNvBL_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3V_3VecmE14extend_trustedINtNtB1D_5chain5ChainINtB1B_3MapB3_B27_EINtNtB3V_5drain5DrainmEEE0E0E0EB2g_.exit, label %.lr.ph.i

_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjmuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2c_8Encoding3pads3_0QNCINvNvBL_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3V_3VecmE14extend_trustedINtNtB1D_5chain5ChainINtB1B_3MapB3_B27_EINtNtB3V_5drain5DrainmEEE0E0E0EB2g_.exit: ; preds = %.lr.ph.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1u_8Encoding3pads4_0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB2F_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3T_3VecmE14extend_trustedINtNtB8_5chain5ChainBN_INtNtB3T_5drain5DrainmEEE0E0EB1y_(i64 noundef %0, i64 noundef %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8, !noalias !1034
  %i.b = icmp ult i64 %0, %1
  br i1 %i.b, label %.lr.ph.i, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjmuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2c_8Encoding3pads4_0QNCINvNvBL_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3V_3VecmE14extend_trustedINtNtB1D_5chain5ChainINtB1B_3MapB3_B27_EINtNtB3V_5drain5DrainmEEE0E0E0EB2g_.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.07.i = phi i64 [ %i.c, %.lr.ph.i ], [ %0, %bb.a ]
  %i.c = add i64 %.sroa.0.07.i, 1                 ; 2 uses
  call void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB1Y_3VecmE14extend_trustedINtNtNtB11_8adapters5chain5ChainINtNtB2V_3map3MapINtNtB9_5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB44_8Encoding3pads4_0EINtNtB1Y_5drain5DrainmEEE0E0INtB7_5FnMutTumEE8call_mutB48_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef 1)
  %exitcond.not.i = icmp eq i64 %i.c, %1
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjmuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2c_8Encoding3pads4_0QNCINvNvBL_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3V_3VecmE14extend_trustedINtNtB1D_5chain5ChainINtB1B_3MapB3_B27_EINtNtB3V_5drain5DrainmEEE0E0E0EB2g_.exit, label %.lr.ph.i

_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjmuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2c_8Encoding3pads4_0QNCINvNvBL_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3V_3VecmE14extend_trustedINtNtB1D_5chain5ChainINtB1B_3MapB3_B27_EINtNtB3V_5drain5DrainmEEE0E0E0EB2g_.exit: ; preds = %.lr.ph.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1u_8Encoding3pads5_0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB2F_8for_each4callTjjENCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3W_3VecB3J_E14extend_trustedINtNtB8_5chain5ChainBN_INtNtB3W_5drain5DrainB3J_EEE0E0EB1y_(i64 noundef %0, i64 noundef %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8, !noalias !1037
  %i.b = icmp ult i64 %0, %1
  br i1 %i.b, label %.lr.ph.i, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTjjEuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2f_8Encoding3pads5_0QNCINvNvBL_8for_each4callB25_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB41_3VecB25_E14extend_trustedINtNtB1D_5chain5ChainINtB1B_3MapB3_B2a_EINtNtB41_5drain5DrainB25_EEE0E0E0EB2j_.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.07.i = phi i64 [ %i.c, %.lr.ph.i ], [ %0, %bb.a ]
  %i.c = add i64 %.sroa.0.07.i, 1                 ; 2 uses
  call void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callTjjENCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB21_3VecB1O_E14extend_trustedINtNtNtB11_8adapters5chain5ChainINtNtB31_3map3MapINtNtB9_5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4a_8Encoding3pads5_0EINtNtB21_5drain5DrainB1O_EEE0E0INtB7_5FnMutTuB1O_EE8call_mutB4e_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0, i64 noundef 0)
  %exitcond.not.i = icmp eq i64 %i.c, %1
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTjjEuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2f_8Encoding3pads5_0QNCINvNvBL_8for_each4callB25_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB41_3VecB25_E14extend_trustedINtNtB1D_5chain5ChainINtB1B_3MapB3_B2a_EINtNtB41_5drain5DrainB25_EEE0E0E0EB2j_.exit, label %.lr.ph.i

_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTjjEuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2f_8Encoding3pads5_0QNCINvNvBL_8for_each4callB25_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB41_3VecB25_E14extend_trustedINtNtB1D_5chain5ChainINtB1B_3MapB3_B2a_EINtNtB41_5drain5DrainB25_EEE0E0E0EB2j_.exit: ; preds = %.lr.ph.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1u_8Encoding3pads7_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2F_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3S_3VecmE14extend_trustedBN_E0E0EB1y_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %.lr.ph.i, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjmuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2c_8Encoding3pads7_0NCINvNvBL_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3U_3VecmE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2g_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !nonnull !3, !align !15, !noundef !3
  %.pre.i = load i32, ptr %i.f, align 4, !noalias !1048 ; 2 uses
  %i.g = sub nuw i64 %i.d, %i.b                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.g, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.g, -8                       ; 4 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.h = getelementptr [4 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.4.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.i = getelementptr [4 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.i, align 4, !noalias !1049
  store <4 x i32> %broadcast.splat, ptr %i.j, align 4, !noalias !1049
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !1046

middle.block:                                     ; preds = %vector.body
  %2 = add i64 %.sroa.4.0.copyload, %n.vec        ; 2 uses
  %3 = add i64 %i.b, %n.vec
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjmuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2c_8Encoding3pads7_0NCINvNvBL_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3U_3VecmE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2g_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %.lr.ph.i ], [ %2, %middle.block ]
  %.sroa.0.011.i.ph = phi i64 [ %i.b, %.lr.ph.i ], [ %3, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.l = phi i64 [ %i.o, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.0.011.i = phi i64 [ %i.m, %scalar.ph ], [ %.sroa.0.011.i.ph, %scalar.ph.preheader ]
  %i.m = add nuw i64 %.sroa.0.011.i, 1            ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0.copyload, i64 %i.l
  store i32 %.pre.i, ptr %i.n, align 4, !noalias !1049
  %i.o = add i64 %i.l, 1                          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.m, %i.d
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjmuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2c_8Encoding3pads7_0NCINvNvBL_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3U_3VecmE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2g_.exit, label %scalar.ph, !llvm.loop !1047

_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjmuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2c_8Encoding3pads7_0NCINvNvBL_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3U_3VecmE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2g_.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %.val5.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %2, %middle.block ], [ %i.o, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1050
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1u_8Encoding3pads8_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2F_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3S_3VecmE14extend_trustedBN_E0E0EB1y_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %.lr.ph.i, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjmuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2c_8Encoding3pads8_0NCINvNvBL_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3U_3VecmE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2g_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !nonnull !3, !align !15, !noundef !3
  %.pre.i = load i32, ptr %i.f, align 4, !noalias !1061 ; 2 uses
  %i.g = sub nuw i64 %i.d, %i.b                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.g, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.g, -8                       ; 4 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.h = getelementptr [4 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.4.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.i = getelementptr [4 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.i, align 4, !noalias !1062
  store <4 x i32> %broadcast.splat, ptr %i.j, align 4, !noalias !1062
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !1059

middle.block:                                     ; preds = %vector.body
  %2 = add i64 %.sroa.4.0.copyload, %n.vec        ; 2 uses
  %3 = add i64 %i.b, %n.vec
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjmuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2c_8Encoding3pads8_0NCINvNvBL_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3U_3VecmE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2g_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %.lr.ph.i ], [ %2, %middle.block ]
  %.sroa.0.011.i.ph = phi i64 [ %i.b, %.lr.ph.i ], [ %3, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.l = phi i64 [ %i.o, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.0.011.i = phi i64 [ %i.m, %scalar.ph ], [ %.sroa.0.011.i.ph, %scalar.ph.preheader ]
  %i.m = add nuw i64 %.sroa.0.011.i, 1            ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0.copyload, i64 %i.l
  store i32 %.pre.i, ptr %i.n, align 4, !noalias !1062
  %i.o = add i64 %i.l, 1                          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.m, %i.d
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjmuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2c_8Encoding3pads8_0NCINvNvBL_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3U_3VecmE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2g_.exit, label %scalar.ph, !llvm.loop !1060

_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjmuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2c_8Encoding3pads8_0NCINvNvBL_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3U_3VecmE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2g_.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %.val5.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %2, %middle.block ], [ %i.o, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1063
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1u_8Encoding3pads9_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2F_8for_each4callNtNtCscdodAO9FK5_5alloc6string6StringNCINvMsj_NtB3M_3vecINtB4s_3VecB3I_E14extend_trustedBN_E0E0EB1y_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !3 ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !nonnull !3, !align !4, !noundef !3 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %i.g = icmp ult i64 %i.c, %i.e
  br i1 %i.g, label %.lr.ph.i, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtCscdodAO9FK5_5alloc6string6StringuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2M_8Encoding3pads9_0NCINvNvBL_8for_each4callB25_NCINvMsj_NtB29_3vecINtB4x_3VecB25_E14extend_trustedINtB1B_3MapB3_B2H_EE0E0E0EB2Q_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjNtNtCscdodAO9FK5_5alloc6string6StringuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1C_8Encoding3pads9_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtBZ_3vecINtB3R_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1x_EE0E0E0B1G_.exit.i, %.lr.ph.i
  %.val7.i = phi i64 [ %.sroa.5.0.copyload, %.lr.ph.i ], [ %i.u, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjNtNtCscdodAO9FK5_5alloc6string6StringuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1C_8Encoding3pads9_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtBZ_3vecINtB3R_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1x_EE0E0E0B1G_.exit.i ] ; 3 uses
  %.sroa.0.013.i = phi i64 [ %i.c, %.lr.ph.i ], [ %i.k, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjNtNtCscdodAO9FK5_5alloc6string6StringuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1C_8Encoding3pads9_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtBZ_3vecINtB3R_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1x_EE0E0E0B1G_.exit.i ]
  %i.k = add i64 %.sroa.0.013.i, 1                ; 2 uses
  %i.l = load ptr, ptr %i.f, align 8, !noalias !1074, !nonnull !3, !noundef !3
  %i.m = load i64, ptr %i.h, align 8, !noalias !1074, !noundef !3 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1074
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.m, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !1075

.noexc.i:                                         ; preds = %bb.b
  %i.n = load i64, ptr %i.a, align 8, !range !5, !noalias !1074, !noundef !3
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = load i64, ptr %i.i, align 8, !range !6, !noalias !1074, !noundef !3 ; 3 uses
  br i1 %i.o, label %bb.c, label %bb.d, !prof !7

bb.c:                                             ; preds = %.noexc.i
  %i.q = load i64, ptr %i.j, align 8, !noalias !1074
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.q) #30
          to label %.noexc8.i unwind label %.loopexit.split-lp.i, !noalias !1075

.noexc8.i:                                        ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %.noexc.i
  %i.r = load ptr, ptr %i.j, align 8, !noalias !1074, !nonnull !3, !noundef !3 ; 2 uses
  %i.s = icmp ule i64 %i.m, %i.p
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1074
  %.not.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjNtNtCscdodAO9FK5_5alloc6string6StringuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1C_8Encoding3pads9_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtBZ_3vecINtB3R_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1x_EE0E0E0B1G_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull align 1 %i.l, i64 %i.m, i1 false), !noalias !1074
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjNtNtCscdodAO9FK5_5alloc6string6StringuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1C_8Encoding3pads9_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtBZ_3vecINtB3R_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1x_EE0E0E0B1G_.exit.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjNtNtCscdodAO9FK5_5alloc6string6StringuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1C_8Encoding3pads9_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtBZ_3vecINtB3R_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1x_EE0E0E0B1G_.exit.i: ; preds = %bb.e, %bb.d
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %.sroa.7.0.copyload, i64 %.val7.i ; 3 uses
  store i64 %i.p, ptr %i.t, align 8, !noalias !1076
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.r, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !1076
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %i.m, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !1076
  %i.u = add i64 %.val7.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.k, %i.e
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtCscdodAO9FK5_5alloc6string6StringuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2M_8Encoding3pads9_0NCINvNvBL_8for_each4callB25_NCINvMsj_NtB29_3vecINtB4x_3VecB25_E14extend_trustedINtB1B_3MapB3_B2H_EE0E0E0EB2Q_.exit, label %bb.b

.loopexit.i:                                      ; preds = %bb.b
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp.i:                             ; preds = %bb.c
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val7.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1075
  resume { ptr, i32 } %lpad.phi.i

_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtCscdodAO9FK5_5alloc6string6StringuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2M_8Encoding3pads9_0NCINvNvBL_8for_each4callB25_NCINvMsj_NtB29_3vecINtB4x_3VecB25_E14extend_trustedINtB1B_3MapB3_B2H_EE0E0E0EB2Q_.exit: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjNtNtCscdodAO9FK5_5alloc6string6StringuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1C_8Encoding3pads9_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtBZ_3vecINtB3R_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1x_EE0E0E0B1G_.exit.i, %bb.a
  %.val5.i = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.u, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldjNtNtCscdodAO9FK5_5alloc6string6StringuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1C_8Encoding3pads9_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtBZ_3vecINtB3R_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1x_EE0E0E0B1G_.exit.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1075
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1u_8Encoding3pads_0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB2E_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3S_3VecmE14extend_trustedINtNtB8_5chain5ChainBN_INtNtB3S_5drain5DrainmEEE0E0EB1y_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !3 ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !nonnull !3, !align !15, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !noalias !1082
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !noalias !1082
  %i.h = icmp ult i64 %i.c, %i.e
  br i1 %i.h, label %.lr.ph.i, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjmuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2c_8Encoding3pads_0QNCINvNvBL_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3U_3VecmE14extend_trustedINtNtB1D_5chain5ChainINtB1B_3MapB3_B27_EINtNtB3U_5drain5DrainmEEE0E0E0EB2g_.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.07.i = phi i64 [ %i.i, %.lr.ph.i ], [ %i.c, %bb.a ]
  %i.i = add i64 %.sroa.0.07.i, 1                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1083)
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !1083, !noalias !1082, !nonnull !3, !align !15, !noundef !3
  %i.j = load i32, ptr %.val.i.i, align 4, !noalias !1083, !noundef !3
  call void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB1Y_3VecmE14extend_trustedINtNtNtB11_8adapters5chain5ChainINtNtB2V_3map3MapINtNtB9_5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB44_8Encoding3pads_0EINtNtB1Y_5drain5DrainmEEE0E0INtB7_5FnMutTumEE8call_mutB48_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, i32 noundef %i.j)
  %exitcond.not.i = icmp eq i64 %i.i, %i.e
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjmuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2c_8Encoding3pads_0QNCINvNvBL_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3U_3VecmE14extend_trustedINtNtB1D_5chain5ChainINtB1B_3MapB3_B27_EINtNtB3U_5drain5DrainmEEE0E0E0EB2g_.exit, label %.lr.ph.i

_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjmuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2c_8Encoding3pads_0QNCINvNvBL_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3U_3VecmE14extend_trustedINtNtB1D_5chain5ChainINtB1B_3MapB3_B27_EINtNtB3U_5drain5DrainmEEE0E0E0EB2g_.exit: ; preds = %.lr.ph.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1u_8Encoding3padsa_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2F_8for_each4callINtNtBc_6option6OptionmENCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4f_3VecB3I_E14extend_trustedBN_E0E0EB1y_(i64 noundef %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 5 uses
  %i.a = icmp ult i64 %0, %1
  br i1 %i.a, label %.lr.ph.i.preheader, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtBa_6option6OptionmEuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2z_8Encoding3padsa_0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4k_3VecB25_E14extend_trustedINtB1B_3MapB3_B2u_EE0E0E0EB2D_.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.b = sub nuw i64 %1, %0
  %xtraiter = and i64 %i.b, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %i.c = phi i64 [ %i.f, %.lr.ph.i.prol ], [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.0.011.i.prol = phi i64 [ %i.d, %.lr.ph.i.prol ], [ %0, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.d = add nuw i64 %.sroa.0.011.i.prol, 1       ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.c
  store i32 0, ptr %i.e, align 4, !noalias !1093
  %i.f = add i64 %i.c, 1                          ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1092

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %i.f, %.lr.ph.i.prol ]
  %.unr = phi i64 [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], [ %i.f, %.lr.ph.i.prol ]
  %.sroa.0.011.i.unr = phi i64 [ %0, %.lr.ph.i.preheader ], [ %i.d, %.lr.ph.i.prol ]
  %i.g = sub i64 %0, %1
  %i.h = icmp ugt i64 %i.g, -4
  br i1 %i.h, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtBa_6option6OptionmEuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2z_8Encoding3padsa_0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4k_3VecB25_E14extend_trustedINtB1B_3MapB3_B2u_EE0E0E0EB2D_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.i = phi i64 [ %i.r, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.sroa.0.011.i = phi i64 [ %i.o, %.lr.ph.i ], [ %.sroa.0.011.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.i
  store i32 0, ptr %i.j, align 4, !noalias !1093
  %i.k = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.i
  %i.l = getelementptr i8, ptr %i.k, i64 8
  store i32 0, ptr %i.l, align 4, !noalias !1093
  %i.m = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.i
  %i.n = getelementptr i8, ptr %i.m, i64 16
  store i32 0, ptr %i.n, align 4, !noalias !1093
  %i.o = add nuw i64 %.sroa.0.011.i, 4            ; 2 uses
  %i.p = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.i
  %i.q = getelementptr i8, ptr %i.p, i64 24
  store i32 0, ptr %i.q, align 4, !noalias !1093
  %i.r = add i64 %i.i, 4                          ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.o, %1
  br i1 %exitcond.not.i.3, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtBa_6option6OptionmEuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2z_8Encoding3padsa_0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4k_3VecB25_E14extend_trustedINtB1B_3MapB3_B2u_EE0E0E0EB2D_.exit, label %.lr.ph.i

_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtBa_6option6OptionmEuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2z_8Encoding3padsa_0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4k_3VecB25_E14extend_trustedINtB1B_3MapB3_B2u_EE0E0E0EB2D_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %.val5.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.r, %.lr.ph.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1094
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1u_8Encoding3padsb_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2F_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3S_3VecmE14extend_trustedBN_E0E0EB1y_(i64 noundef %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %i.a = icmp ult i64 %0, %1
  br i1 %i.a, label %.lr.ph.i, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjmuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2c_8Encoding3padsb_0NCINvNvBL_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3U_3VecmE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2g_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  %i.b = shl i64 %.sroa.4.0.copyload, 2
  %scevgep.i = getelementptr nuw i8, ptr %.sroa.6.0.copyload, i64 %i.b
  %i.c = sub nuw i64 %1, %0                       ; 2 uses
  %i.d = shl i64 %i.c, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i, i8 0, i64 %i.d, i1 false), !noalias !1103
  %i.e = add i64 %i.c, %.sroa.4.0.copyload
  br label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjmuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2c_8Encoding3padsb_0NCINvNvBL_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3U_3VecmE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2g_.exit

_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjmuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2c_8Encoding3padsb_0NCINvNvBL_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3U_3VecmE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2g_.exit: ; preds = %bb.a, %.lr.ph.i
  %.val5.i = phi i64 [ %i.e, %.lr.ph.i ], [ %.sroa.4.0.copyload, %bb.a ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1104
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1u_8Encoding3padsc_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2F_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3S_3VecmE14extend_trustedBN_E0E0EB1y_(i64 noundef %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %i.a = icmp ult i64 %0, %1
  br i1 %i.a, label %.lr.ph.i.preheader, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjmuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2c_8Encoding3padsc_0NCINvNvBL_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3U_3VecmE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2g_.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.b = sub nuw i64 %1, %0                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.b, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader3, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.b, -8                       ; 4 uses
  %i.c = getelementptr [4 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.4.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.d = getelementptr [4 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store <4 x i32> splat (i32 1), ptr %i.d, align 4, !noalias !1115
  store <4 x i32> splat (i32 1), ptr %i.e, align 4, !noalias !1115
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.vec
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !1113

middle.block:                                     ; preds = %vector.body
  %3 = add i64 %.sroa.4.0.copyload, %n.vec        ; 2 uses
  %4 = add i64 %0, %n.vec
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjmuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2c_8Encoding3padsc_0NCINvNvBL_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3U_3VecmE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2g_.exit, label %.lr.ph.i.preheader3

.lr.ph.i.preheader3:                              ; preds = %.lr.ph.i.preheader, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], [ %3, %middle.block ]
  %.sroa.0.011.i.ph = phi i64 [ %0, %.lr.ph.i.preheader ], [ %4, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader3, %.lr.ph.i
  %i.g = phi i64 [ %i.j, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader3 ] ; 2 uses
  %.sroa.0.011.i = phi i64 [ %i.h, %.lr.ph.i ], [ %.sroa.0.011.i.ph, %.lr.ph.i.preheader3 ]
  %i.h = add nuw i64 %.sroa.0.011.i, 1            ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0.copyload, i64 %i.g
  store i32 1, ptr %i.i, align 4, !noalias !1115
  %i.j = add i64 %i.g, 1                          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.h, %1
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjmuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2c_8Encoding3padsc_0NCINvNvBL_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3U_3VecmE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2g_.exit, label %.lr.ph.i, !llvm.loop !1114

_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjmuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2c_8Encoding3padsc_0NCINvNvBL_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3U_3VecmE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2g_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.a
  %.val5.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %3, %middle.block ], [ %i.j, %.lr.ph.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1116
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1u_8Encoding3padsd_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2F_8for_each4callTjjENCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3V_3VecB3I_E14extend_trustedBN_E0E0EB1y_(i64 noundef %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %i.a = icmp ult i64 %0, %1
  br i1 %i.a, label %.lr.ph.i, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTjjEuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2f_8Encoding3padsd_0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB40_3VecB25_E14extend_trustedINtB1B_3MapB3_B2a_EE0E0E0EB2j_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  %i.b = shl i64 %.sroa.4.0.copyload, 4
  %scevgep.i = getelementptr nuw i8, ptr %.sroa.6.0.copyload, i64 %i.b
  %i.c = sub nuw i64 %1, %0                       ; 2 uses
  %i.d = shl i64 %i.c, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.d, i1 false), !noalias !1125
  %i.e = add i64 %i.c, %.sroa.4.0.copyload
  br label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTjjEuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2f_8Encoding3padsd_0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB40_3VecB25_E14extend_trustedINtB1B_3MapB3_B2a_EE0E0E0EB2j_.exit

_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTjjEuNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2f_8Encoding3padsd_0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB40_3VecB25_E14extend_trustedINtB1B_3MapB3_B2a_EE0E0E0EB2j_.exit: ; preds = %bb.a, %.lr.ph.i
  %.val5.i = phi i64 [ %i.e, %.lr.ph.i ], [ %.sroa.4.0.copyload, %bb.a ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1126
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtCs37HRbLTrFyI_15crossbeam_deque5dequeINtB1w_6BufferNtNtCs5NXVUOdy9du_10rayon_core3job6JobRefE5alloc0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3b_8for_each4callINtNtNtBc_3mem12maybe_uninit11MaybeUninitB2n_ENCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB57_3VecB4e_E14extend_trustedBN_E0E0ECs2JiOgHzbbc7_10tokenizers(i64 noundef %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %i.a = tail call i64 @llvm.usub.sat.i64(i64 %1, i64 %0)
  %.val5.i = add i64 %.sroa.4.0.copyload, %i.a
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1129
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCscdodAO9FK5_5alloc2rc2RcINtNtBc_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENCNCNCNvXs3_B2e_NtB2e_7LatticeNtNtBc_3fmt7Display3fmt000ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4a_8for_each4callNtNtB1s_6string6StringNCINvMsj_NtB1s_3vecINtB5I_3VecB5d_E14extend_trustedBN_E0E0EB2k_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !align !4, !noundef !3
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.g = icmp eq ptr %i.b, %i.d
  br i1 %i.g, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCscdodAO9FK5_5alloc2rc2RcINtNtBb_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2O_8adapters3map8map_foldRBQ_NtNtBV_6string6StringuNCNCNCNvXs3_B1H_NtB1H_7LatticeNtNtBb_3fmt7Display3fmt000NCINvNvB2I_8for_each4callB46_NCINvMsj_NtBV_3vecINtB5Y_3VecB46_E14extend_trustedINtB3y_3MapBF_B4s_EE0E0E0EB1N_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = ptrtoint ptr %i.b to i64
  %i.j = sub nuw i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 3
  br label %bb.d

bb.c:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.d:                                             ; preds = %bb.g, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.z, %bb.g ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.aa, %bb.g ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.01.0.i
  %.val16.i = load ptr, ptr %i.m, align 8, !noalias !1138, !nonnull !3, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1138
  %i.n = getelementptr inbounds nuw i8, ptr %.val16.i, i64 16 ; 6 uses
  %i.o = load i64, ptr %i.n, align 8, !noalias !1139, !noundef !3 ; 2 uses
  %i.p = icmp ult i64 %i.o, 9223372036854775807
  br i1 %i.p, label %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeE6borrowBR_.exit.i.i.i, label %bb.e, !prof !9

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #30
          to label %.noexc.i unwind label %bb.c, !noalias !1138

.noexc.i:                                         ; preds = %bb.e
  unreachable

_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeE6borrowBR_.exit.i.i.i: ; preds = %bb.d
  %i.q = load ptr, ptr %i.f, align 8, !noalias !1140, !nonnull !3, !align !4, !noundef !3
  %i.r = add nuw nsw i64 %i.o, 1
  store i64 %i.r, ptr %i.n, align 8, !noalias !1139
  %i.s = getelementptr inbounds nuw i8, ptr %.val16.i, i64 24
  invoke void @_RNvMs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7latticeNtB5_7Lattice5piece(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.s)
          to label %bb.g unwind label %bb.f, !noalias !1141

bb.f:                                             ; preds = %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeE6borrowBR_.exit.i.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load i64, ptr %i.n, align 8, !noalias !1140, !noundef !3
  %i.v = add i64 %i.u, -1
  store i64 %i.v, ptr %i.n, align 8, !noalias !1140
  br label %bb.h

bb.g:                                             ; preds = %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeE6borrowBR_.exit.i.i.i
  %i.w = load i64, ptr %i.n, align 8, !noalias !1140, !noundef !3
  %i.x = add i64 %i.w, -1
  store i64 %i.x, ptr %i.n, align 8, !noalias !1140
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1141
  %i.z = add i64 %.val15.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1138
  %i.aa = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %i.k
  br i1 %i.ab, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCscdodAO9FK5_5alloc2rc2RcINtNtBb_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2O_8adapters3map8map_foldRBQ_NtNtBV_6string6StringuNCNCNCNvXs3_B1H_NtB1H_7LatticeNtNtBb_3fmt7Display3fmt000NCINvNvB2I_8for_each4callB46_NCINvMsj_NtBV_3vecINtB5Y_3VecB46_E14extend_trustedINtB3y_3MapBF_B4s_EE0E0E0EB1N_.exit, label %bb.d

bb.h:                                             ; preds = %bb.f, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.t, %bb.f ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1138
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCscdodAO9FK5_5alloc2rc2RcINtNtBb_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2O_8adapters3map8map_foldRBQ_NtNtBV_6string6StringuNCNCNCNvXs3_B1H_NtB1H_7LatticeNtNtBb_3fmt7Display3fmt000NCINvNvB2I_8for_each4callB46_NCINvMsj_NtBV_3vecINtB5Y_3VecB46_E14extend_trustedINtB3y_3MapBF_B4s_EE0E0E0EB1N_.exit: ; preds = %bb.g, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.z, %bb.g ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1138
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCscdodAO9FK5_5alloc2rc2RcINtNtBc_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENCNCNvMs6_B2e_NtB2e_7Lattice12nbest_tokens00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3Y_8for_each4callNtNtB1s_6string6StringNCINvMsj_NtB1s_3vecINtB5w_3VecB51_E14extend_trustedBN_E0E0EB2k_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !align !4, !noundef !3
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.g = icmp eq ptr %i.b, %i.d
  br i1 %i.g, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCscdodAO9FK5_5alloc2rc2RcINtNtBb_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2O_8adapters3map8map_foldRBQ_NtNtBV_6string6StringuNCNCNvMs6_B1H_NtB1H_7Lattice12nbest_tokens00NCINvNvB2I_8for_each4callB46_NCINvMsj_NtBV_3vecINtB5M_3VecB46_E14extend_trustedINtB3y_3MapBF_B4s_EE0E0E0EB1N_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = ptrtoint ptr %i.b to i64
  %i.j = sub nuw i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 3
  br label %bb.d

bb.c:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.d:                                             ; preds = %bb.g, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.z, %bb.g ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.aa, %bb.g ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.01.0.i
  %.val16.i = load ptr, ptr %i.m, align 8, !noalias !1150, !nonnull !3, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1150
  %i.n = getelementptr inbounds nuw i8, ptr %.val16.i, i64 16 ; 6 uses
  %i.o = load i64, ptr %i.n, align 8, !noalias !1151, !noundef !3 ; 2 uses
  %i.p = icmp ult i64 %i.o, 9223372036854775807
  br i1 %i.p, label %_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeE6borrowBR_.exit.i.i.i, label %bb.e, !prof !9

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #30
          to label %.noexc.i unwind label %bb.c, !noalias !1150

.noexc.i:                                         ; preds = %bb.e
  unreachable

_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeE6borrowBR_.exit.i.i.i: ; preds = %bb.d
end_hunk_1
begin_hunk_2_@_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitENCNvMs0_B1p_NtB1p_18PreTokenizedString10get_splits0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3f_8for_each4callTReTjjERINtNtBc_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtB1r_5TokenEEENCINvMsj_B4P_IB4N_B4i_E14extend_trustedBN_E0E0EB1t_:bb.a
  store ptr %i.aj, ptr %.sroa.76.0..sroa_idx.i.i, align 8, !noalias !1237
  %i.al = add i64 %.val15.i, 1                    ; 2 uses
  %i.am = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.an = icmp eq i64 %i.am, %i.j
  br i1 %i.an, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1Y_8adapters3map8map_foldRBQ_TReTjjERINtNtBb_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtBU_5TokenEEEuNCNvMs0_BS_NtBS_18PreTokenizedString10get_splits0NCINvNvB1S_8for_each4callB3g_NCINvMsj_B3N_IB3L_B3g_E14extend_trustedINtB2I_3MapBF_B4v_EE0E0E0EBW_.exit, label %bb.c

bb.i:                                             ; preds = %bb.g
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1236
  resume { ptr, i32 } %i.ao

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1Y_8adapters3map8map_foldRBQ_TReTjjERINtNtBb_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtBU_5TokenEEEuNCNvMs0_BS_NtBS_18PreTokenizedString10get_splits0NCINvNvB1S_8for_each4callB3g_NCINvMsj_B3N_IB3L_B3g_E14extend_trustedINtB2I_3MapBF_B4v_EE0E0E0EBW_.exit: ; preds = %bb.h, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.al, %bb.h ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1236
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenENCNvMs_NtNtNtB1t_6models7unigram7trainerNtB2F_14UnigramTrainer8finalizes0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3M_8for_each4callTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMsj_NtB4U_3vecINtB5C_3VecB4P_E14extend_trustedBN_E0E0EB1t_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB27_8adapters3map8map_foldRBQ_TNtNtCscdodAO9FK5_5alloc6string6StringdEuNCNvMs_NtNtNtBW_6models7unigram7trainerNtB4b_14UnigramTrainer8finalizes0_0NCINvNvB21_8for_each4callB3p_NCINvMsj_NtB3u_3vecINtB5S_3VecB3p_E14extend_trustedINtB2R_3MapBF_B44_EE0E0E0EBW_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 5
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.j, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.k, %bb.d ] ; 2 uses
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1243
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h)
          to label %bb.d unwind label %bb.e, !noalias !1243

bb.d:                                             ; preds = %bb.c
  store double 0.000000e+00, ptr %i.g, align 8, !noalias !1244
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !1245
  %i.j = add i64 %.val15.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1243
  %i.k = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.f
  br i1 %i.l, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB27_8adapters3map8map_foldRBQ_TNtNtCscdodAO9FK5_5alloc6string6StringdEuNCNvMs_NtNtNtBW_6models7unigram7trainerNtB4b_14UnigramTrainer8finalizes0_0NCINvNvB21_8for_each4callB3p_NCINvMsj_NtB3u_3vecINtB5S_3VecB3p_E14extend_trustedINtB2R_3MapBF_B44_EE0E0E0EBW_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1243
  resume { ptr, i32 } %i.m

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB27_8adapters3map8map_foldRBQ_TNtNtCscdodAO9FK5_5alloc6string6StringdEuNCNvMs_NtNtNtBW_6models7unigram7trainerNtB4b_14UnigramTrainer8finalizes0_0NCINvNvB21_8for_each4callB3p_NCINvMsj_NtB3u_3vecINtB5S_3VecB3p_E14extend_trustedINtB2R_3MapBF_B44_EE0E0E0EBW_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.j, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1243
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenENCNvMs_NtNtNtB1t_6models9wordlevel7trainerNtB2F_16WordLevelTrainer8do_trains_0ENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvXs_NtB8_4takeINtB4I_4TakepEB3P_8try_fold5checkNtNtCscdodAO9FK5_5alloc6string6StringuINtNtNtBc_3ops9try_trait17NeverShortCircuituENCINvMB64_B61_10wrap_mut_2uB5p_NCINvNvXs_NtB8_9enumerateINtB7p_9EnumeratepEB3P_4fold9enumerateB5p_uNCINvB6_8map_foldTjB5p_ETB5p_mEuNCB2A_s2_0NCINvNvB3P_8for_each4callB8J_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB9E_7HashMapB5p_mNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB3T_7collect6ExtendB8J_E6extendIBO_IB7F_IB4T_INtNtB8_5chain5ChainBN_IBO_INtNtB8_6filter6FilterINtNtNtB5t_3vec9into_iter8IntoIterTRB5p_RyEENCB2A_s0_0ENCB2A_s1_0EEEEB8R_EE0E0E0E0E0E0INtNtB66_12control_flow11ControlFlowB61_EEB1t_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1271)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1272, !noalias !1271, !nonnull !3, !noundef !3
  %.promoted.i = load ptr, ptr %0, align 8, !alias.scope !1272, !noalias !1271
  %i.d = load ptr, ptr %1, align 8, !alias.scope !1271, !noalias !1270, !nonnull !3, !align !4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !1271, !noalias !1270, !nonnull !3, !align !4
  %.promoted11.i = load i64, ptr %i.f, align 8, !alias.scope !1271, !noalias !1270
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.g = phi i64 [ %i.n, %bb.c ], [ %.promoted11.i, %bb.a ] ; 2 uses
  %i.h = phi ptr [ %i.i, %bb.c ], [ %.promoted.i, %bb.a ] ; 3 uses
  %.not.not.not.i.not.not.not.not.not = icmp ne ptr %i.h, %i.c ; 2 uses
  br i1 %.not.not.not.i.not.not.not.not.not, label %bb.c, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB20_8adapters3map12map_try_foldRBJ_NtNtCscdodAO9FK5_5alloc6string6StringuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB48_9try_trait17NeverShortCircuituEENCNvMs_NtNtNtBP_6models9wordlevel7trainerNtB5u_16WordLevelTrainer8do_trains_0QNCINvNvXs_NtB2Q_4takeINtB6N_4TakepEB1U_8try_fold5checkB3r_uB4I_NCINvMB4L_B4I_10wrap_mut_2uB3r_NCINvNvXs_NtB2Q_9enumerateINtB8j_9EnumeratepEB1U_4fold9enumerateB3r_uNCINvB2O_8map_foldTjB3r_ETB3r_mEuNCB5p_s2_0NCINvNvB1U_8for_each4callB9F_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtBaA_7HashMapB3r_mNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB1Y_7collect6ExtendB9F_E6extendINtB2O_3MapIB8A_IB6Z_INtNtB2Q_5chain5ChainIBcP_B3_B5n_EIBcP_INtNtB2Q_6filter6FilterINtNtNtB3v_3vec9into_iter8IntoIterTRB3r_RyEENCB5p_s0_0ENCB5p_s1_0EEEEB9N_EE0E0E0E0E0E0E0B43_EBP_.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !alias.scope !1272, !noalias !1271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1273
  call void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h), !noalias !1274
  call void @llvm.experimental.noalias.scope.decl(metadata !1275)
  %i.j = load i64, ptr %i.d, align 8, !noalias !1276, !noundef !3
  %i.k = add i64 %i.j, -1
  store i64 %i.k, ptr %i.d, align 8, !noalias !1276
  call void @llvm.experimental.noalias.scope.decl(metadata !1277)
  call void @llvm.experimental.noalias.scope.decl(metadata !1278)
  %i.l = trunc i64 %i.g to i32
  %i.m = call { i32, i32 } @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE6insertCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %.val.i.i.i.i.i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, i32 noundef %i.l), !noalias !1279 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1273
  %i.n = add i64 %i.g, 1                          ; 2 uses
  store i64 %i.n, ptr %i.f, align 8, !alias.scope !1280, !noalias !1281
  %i.o = load i64, ptr %i.d, align 8, !noalias !1276, !noundef !3
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB20_8adapters3map12map_try_foldRBJ_NtNtCscdodAO9FK5_5alloc6string6StringuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB48_9try_trait17NeverShortCircuituEENCNvMs_NtNtNtBP_6models9wordlevel7trainerNtB5u_16WordLevelTrainer8do_trains_0QNCINvNvXs_NtB2Q_4takeINtB6N_4TakepEB1U_8try_fold5checkB3r_uB4I_NCINvMB4L_B4I_10wrap_mut_2uB3r_NCINvNvXs_NtB2Q_9enumerateINtB8j_9EnumeratepEB1U_4fold9enumerateB3r_uNCINvB2O_8map_foldTjB3r_ETB3r_mEuNCB5p_s2_0NCINvNvB1U_8for_each4callB9F_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtBaA_7HashMapB3r_mNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB1Y_7collect6ExtendB9F_E6extendINtB2O_3MapIB8A_IB6Z_INtNtB2Q_5chain5ChainIBcP_B3_B5n_EIBcP_INtNtB2Q_6filter6FilterINtNtNtB3v_3vec9into_iter8IntoIterTRB3r_RyEENCB5p_s0_0ENCB5p_s1_0EEEEB9N_EE0E0E0E0E0E0E0B43_EBP_.exit, label %bb.b

_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB20_8adapters3map12map_try_foldRBJ_NtNtCscdodAO9FK5_5alloc6string6StringuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB48_9try_trait17NeverShortCircuituEENCNvMs_NtNtNtBP_6models9wordlevel7trainerNtB5u_16WordLevelTrainer8do_trains_0QNCINvNvXs_NtB2Q_4takeINtB6N_4TakepEB1U_8try_fold5checkB3r_uB4I_NCINvMB4L_B4I_10wrap_mut_2uB3r_NCINvNvXs_NtB2Q_9enumerateINtB8j_9EnumeratepEB1U_4fold9enumerateB3r_uNCINvB2O_8map_foldTjB3r_ETB3r_mEuNCB5p_s2_0NCINvNvB1U_8for_each4callB9F_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtBaA_7HashMapB3r_mNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB1Y_7collect6ExtendB9F_E6extendINtB2O_3MapIB8A_IB6Z_INtNtB2Q_5chain5ChainIBcP_B3_B5n_EIBcP_INtNtB2Q_6filter6FilterINtNtNtB3v_3vec9into_iter8IntoIterTRB3r_RyEENCB5p_s0_0ENCB5p_s1_0EEEEB9N_EE0E0E0E0E0E0E0B43_EBP_.exit: ; preds = %bb.b, %bb.c
  ret i1 %.not.not.not.i.not.not.not.not.not
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENCNvNtNtB1t_5utils7padding13pad_encodings0ENtNtNtBa_6traits8iterator8Iterator4foldjNCINvNvB33_6max_by4foldjNvYjNtNtBc_3cmp3Ord3cmpE0EB1t_(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.d = icmp eq ptr %0, %1
  br i1 %i.d, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1V_8adapters3map8map_foldRBQ_jjNCNvNtNtBW_5utils7padding13pad_encodings0NCINvNvB1P_6max_by4foldjNvYjNtNtBb_3cmp3Ord3cmpE0E0EBW_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %0 to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.04.0.i = phi i64 [ 0, %bb.b ], [ %i.m, %bb.c ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %2, %bb.b ], [ %.sroa.0.0.i.i.i.i, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw [256 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.j = getelementptr i8, ptr %i.i, i64 16
  %.val.i = load i64, ptr %i.j, align 8, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1288
  store i64 %.sroa.02.0.i, ptr %i.c, align 8, !noalias !1289
  store i64 %.val.i, ptr %i.b, align 8, !noalias !1289
  %i.k = call noundef i8 @_RNvXs2_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNvYjNtNtBb_3cmp3Ord3cmpINtB7_6FnOnceTRjB1p_EE9call_onceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  %i.l = icmp sgt i8 %i.k, 0
  %.sroa.0.0.i.i.i.i = select i1 %i.l, i64 %.sroa.02.0.i, i64 %.val.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1288
  %i.m = add nuw i64 %.sroa.04.0.i, 1             ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.h
  br i1 %i.n, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1V_8adapters3map8map_foldRBQ_jjNCNvNtNtBW_5utils7padding13pad_encodings0NCINvNvB1P_6max_by4foldjNvYjNtNtBb_3cmp3Ord3cmpE0E0EBW_.exit, label %bb.c

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1V_8adapters3map8map_foldRBQ_jjNCNvNtNtBW_5utils7padding13pad_encodings0NCINvNvB1P_6max_by4foldjNvYjNtNtBb_3cmp3Ord3cmpE0E0EBW_.exit: ; preds = %bb.c, %bb.a
  %.sroa.0.0.i = phi i64 [ %2, %bb.a ], [ %.sroa.0.0.i.i.i.i, %bb.c ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolENCNvMs3_B1p_NtB1p_4Word9get_chars0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2S_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB45_3VecmE14extend_trustedBN_E0E0EB1v_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters3map8map_foldRBQ_muNCNvMs3_BS_NtBS_4Word9get_chars0NCINvNvB1M_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4h_3VecmE14extend_trustedINtB2C_3MapBF_B3c_EE0E0E0EBY_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 4 uses
  %i.e = lshr i64 %i.d, 5                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 544
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 2           ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.g = lshr exact i64 %i.d, 3
  %i.h = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %scevgep2 = getelementptr i8, ptr %i.h, i64 %i.g
  %scevgep3 = getelementptr i8, ptr %0, i64 24
  %i.i = and i64 %i.d, -32
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  %scevgep4 = getelementptr i8, ptr %i.j, i64 -4
  %bound0 = icmp ult ptr %scevgep, %scevgep4
  %bound1 = icmp ult ptr %scevgep3, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.k = and i64 %i.e, 7                          ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = select i1 %i.l, i64 8, i64 %i.k
  %n.vec = sub nsw i64 %i.e, %i.m                 ; 3 uses
  %i.n = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %index
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %index
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %index
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %index
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %index
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %index
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %index
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %index
  %i.w = getelementptr i8, ptr %i.o, i64 24
  %i.x = getelementptr i8, ptr %i.p, i64 56
  %i.y = getelementptr i8, ptr %i.q, i64 88
  %i.z = getelementptr i8, ptr %i.r, i64 120
  %i.aa = getelementptr i8, ptr %i.s, i64 152
  %i.ab = getelementptr i8, ptr %i.t, i64 184
  %i.ac = getelementptr i8, ptr %i.u, i64 216
  %i.ad = getelementptr i8, ptr %i.v, i64 248
  %i.ae = load i32, ptr %i.w, align 8, !alias.scope !1304, !noalias !1305, !noundef !3
  %i.af = load i32, ptr %i.x, align 8, !alias.scope !1304, !noalias !1305, !noundef !3
  %i.ag = load i32, ptr %i.y, align 8, !alias.scope !1304, !noalias !1305, !noundef !3
  %i.ah = load i32, ptr %i.z, align 8, !alias.scope !1304, !noalias !1305, !noundef !3
  %i.ai = insertelement <4 x i32> poison, i32 %i.ae, i64 0
  %i.aj = insertelement <4 x i32> %i.ai, i32 %i.af, i64 1
  %i.ak = insertelement <4 x i32> %i.aj, i32 %i.ag, i64 2
  %i.al = insertelement <4 x i32> %i.ak, i32 %i.ah, i64 3
  %i.am = load i32, ptr %i.aa, align 8, !alias.scope !1304, !noalias !1305, !noundef !3
  %i.an = load i32, ptr %i.ab, align 8, !alias.scope !1304, !noalias !1305, !noundef !3
  %i.ao = load i32, ptr %i.ac, align 8, !alias.scope !1304, !noalias !1305, !noundef !3
  %i.ap = load i32, ptr %i.ad, align 8, !alias.scope !1304, !noalias !1305, !noundef !3
  %i.aq = insertelement <4 x i32> poison, i32 %i.am, i64 0
  %i.ar = insertelement <4 x i32> %i.aq, i32 %i.an, i64 1
  %i.as = insertelement <4 x i32> %i.ar, i32 %i.ao, i64 2
  %i.at = insertelement <4 x i32> %i.as, i32 %i.ap, i64 3
  %i.au = getelementptr [4 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store <4 x i32> %i.al, ptr %i.au, align 4, !alias.scope !1306, !noalias !1307
  store <4 x i32> %i.at, ptr %i.av, align 4, !alias.scope !1306, !noalias !1307
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %scalar.ph.preheader.loopexit, label %vector.body, !llvm.loop !1301

scalar.ph.preheader.loopexit:                     ; preds = %vector.body
  %3 = add i64 %.sroa.5.0.copyload, %n.vec
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.loopexit, %vector.memcheck, %bb.b
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %3, %scalar.ph.preheader.loopexit ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %scalar.ph.preheader.loopexit ] ; 4 uses
  %i.ax = sub nsw i64 %i.e, %.sroa.01.0.i.ph
  %xtraiter = and i64 %i.ax, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.ay = phi i64 [ %i.bc, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.bd, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.0.i.prol
  %i.ba = getelementptr i8, ptr %i.az, i64 24
  %.val16.i.prol = load i32, ptr %i.ba, align 8, !noalias !1305, !noundef !3
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ay
  store i32 %.val16.i.prol, ptr %i.bb, align 4, !noalias !1308
  %i.bc = add i64 %i.ay, 1                        ; 3 uses
  %i.bd = add nuw i64 %.sroa.01.0.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1302

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.bc, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.bc, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.bd, %scalar.ph.prol ]
  %i.be = sub nsw i64 %.sroa.01.0.i.ph, %i.e
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters3map8map_foldRBQ_muNCNvMs3_BS_NtBS_4Word9get_chars0NCINvNvB1M_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4h_3VecmE14extend_trustedINtB2C_3MapBF_B3c_EE0E0E0EBY_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.bg = phi i64 [ %i.bw, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.bx, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bi = getelementptr i8, ptr %i.bh, i64 24
  %.val16.i = load i32, ptr %i.bi, align 8, !noalias !1305, !noundef !3
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.bg
  store i32 %.val16.i, ptr %i.bj, align 4, !noalias !1308
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bl = getelementptr i8, ptr %i.bk, i64 56
  %.val16.i.1 = load i32, ptr %i.bl, align 8, !noalias !1305, !noundef !3
  %i.bm = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.bg
  %i.bn = getelementptr i8, ptr %i.bm, i64 4
  store i32 %.val16.i.1, ptr %i.bn, align 4, !noalias !1308
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bp = getelementptr i8, ptr %i.bo, i64 88
  %.val16.i.2 = load i32, ptr %i.bp, align 8, !noalias !1305, !noundef !3
  %i.bq = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.bg
  %i.br = getelementptr i8, ptr %i.bq, i64 8
  store i32 %.val16.i.2, ptr %i.br, align 4, !noalias !1308
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bt = getelementptr i8, ptr %i.bs, i64 120
  %.val16.i.3 = load i32, ptr %i.bt, align 8, !noalias !1305, !noundef !3
  %i.bu = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.bg
  %i.bv = getelementptr i8, ptr %i.bu, i64 12
  store i32 %.val16.i.3, ptr %i.bv, align 4, !noalias !1308
  %i.bw = add i64 %i.bg, 4                        ; 2 uses
  %i.bx = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.by = icmp eq i64 %i.bx, %i.e
  br i1 %i.by, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters3map8map_foldRBQ_muNCNvMs3_BS_NtBS_4Word9get_chars0NCINvNvB1M_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4h_3VecmE14extend_trustedINtB2C_3MapBF_B3c_EE0E0E0EBY_.exit, label %scalar.ph, !llvm.loop !1303

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters3map8map_foldRBQ_muNCNvMs3_BS_NtBS_4Word9get_chars0NCINvNvB1M_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4h_3VecmE14extend_trustedINtB2C_3MapBF_B3c_EE0E0E0EBY_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.bw, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1305
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolENCNvXs2_B1p_NtB1p_4WordNtNtBc_3fmt5Debug3fmt0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB33_8for_each4callNtNtCscdodAO9FK5_5alloc6string6StringNCINvMsj_NtB4a_3vecINtB4Q_3VecB46_E14extend_trustedBN_E0E0EB1v_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [10 x i8], align 1                ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters3map8map_foldRBQ_NtNtCscdodAO9FK5_5alloc6string6StringuNCNvXs2_BS_NtBS_4WordNtNtBb_3fmt5Debug3fmt0NCINvNvB1M_8for_each4callB3a_NCINvMsj_NtB3e_3vecINtB55_3VecB3a_E14extend_trustedINtB2C_3MapBF_B3M_EE0E0E0EBY_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %1 to i64
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 5
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.v, %bb.g ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.w, %bb.g ] ; 2 uses
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.k = getelementptr i8, ptr %i.j, i64 24
  %.val16.i = load i32, ptr %i.k, align 8, !noalias !1319, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1320
  %i.l = invoke { ptr, i64 } @_RNvMsa_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impm4__fmt(i32 noundef %.val16.i, ptr noalias noundef nonnull %i.b, i64 noundef 10)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !1319 ; 2 uses

.noexc.i:                                         ; preds = %bb.c
  %i.m = extractvalue { ptr, i64 } %i.l, 0
  %i.n = extractvalue { ptr, i64 } %i.l, 1        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1320
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.n, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc17.i unwind label %.loopexit.i, !noalias !1319

.noexc17.i:                                       ; preds = %.noexc.i
  %i.o = load i64, ptr %i.a, align 8, !range !5, !noalias !1320, !noundef !3
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = load i64, ptr %i.h, align 8, !range !6, !noalias !1320, !noundef !3 ; 3 uses
  br i1 %i.p, label %bb.d, label %bb.e, !prof !7

bb.d:                                             ; preds = %.noexc17.i
  %i.r = load i64, ptr %i.i, align 8, !noalias !1320
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.r) #30
          to label %.noexc18.i unwind label %.loopexit.split-lp.i, !noalias !1319

.noexc18.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc17.i
  %i.s = load ptr, ptr %i.i, align 8, !noalias !1320, !nonnull !3, !noundef !3 ; 2 uses
  %i.t = icmp ule i64 %i.n, %i.q
  call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1320
  %.not.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.m, i64 %i.n, i1 false), !noalias !1320
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1320
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i ; 3 uses
  store i64 %i.q, ptr %i.u, align 8, !noalias !1321
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.s, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !1321
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %i.n, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !1321
  %i.v = add i64 %.val15.i, 1                     ; 2 uses
  %i.w = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.x = icmp eq i64 %i.w, %i.g
  br i1 %i.x, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters3map8map_foldRBQ_NtNtCscdodAO9FK5_5alloc6string6StringuNCNvXs2_BS_NtBS_4WordNtNtBb_3fmt5Debug3fmt0NCINvNvB1M_8for_each4callB3a_NCINvMsj_NtB3e_3vecINtB55_3VecB3a_E14extend_trustedINtB2C_3MapBF_B3M_EE0E0E0EBY_.exit, label %bb.c

.loopexit.i:                                      ; preds = %.noexc.i, %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp.i:                             ; preds = %bb.d
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1319
  resume { ptr, i32 } %lpad.phi.i

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters3map8map_foldRBQ_NtNtCscdodAO9FK5_5alloc6string6StringuNCNvXs2_BS_NtBS_4WordNtNtBb_3fmt5Debug3fmt0NCINvNvB1M_8for_each4callB3a_NCINvMsj_NtB3e_3vecINtB55_3VecB3a_E14extend_trustedINtB2C_3MapBF_B3M_EE0E0E0EBY_.exit: ; preds = %bb.g, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.v, %bb.g ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1319
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtCscdodAO9FK5_5alloc6string6StringmEENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB29_14UnigramTrainer14required_chars0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB4v_13FlattenCompatppE9iter_fold7flattenNtNtNtBc_3str4iter5CharsuNCINvNvXsi_B4v_B4I_B3G_4fold7flattenB5p_uQNCINvB6_8map_foldcB1o_uNCB24_s_0NCIB6x_B1o_TB1o_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB7s_7HashSetB1o_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB3K_7collect6ExtendB1o_E6extendIBO_INtNtB8_5chain5ChainINtB4v_7FlatMapBX_B5p_B22_EINtNtB8_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEEB6R_EE0NCINvNvB3G_8for_each4callB7b_NCINvXs1i_NtB7u_3mapINtBcw_7HashMapB1o_uB8f_EIB96_B7b_E6extendIBO_B9F_B7j_EE0E0E0E0E0E0EB2f_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0.i.i.i.i.i = alloca i32, align 4        ; 16 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1B_8adapters3map8map_foldRBQ_NtNtNtBb_3str4iter5CharsuNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3p_14UnigramTrainer14required_chars0NCINvNvMsg_NtB2n_7flattenINtB56_13FlattenCompatppE9iter_fold7flattenB2T_uNCINvNvXsi_B56_B5k_B1v_4fold7flattenB2T_uQNCIB2j_cBR_uNCB3k_s_0NCIB2j_BR_TBR_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB7x_7HashSetBR_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB1z_7collect6ExtendBR_E6extendINtB2l_3MapINtNtB2n_5chain5ChainINtB56_7FlatMapBF_B2T_B3i_EINtNtB2n_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEEB6Y_EE0NCINvNvB1v_8for_each4callB7h_NCINvXs1i_NtB7z_3mapINtBcI_7HashMapBR_uB8j_EIB9a_B7h_E6extendIB9J_B9I_B7o_EE0E0E0E0E0E0E0EB3v_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %1 to i64
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 5
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val.i.i = load ptr, ptr %2, align 8, !nonnull !3, !align !4 ; 2 uses
  %.sroa.0.i.i.i.i.i.1.i.i.i.i.i.1.i.i.i.i.i.1.i.i.i.i.1.i.i.i.i.1.i.i.i.1.i.i.i.1.i.i.1.i.i.1.i.1.i.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i.i.i, i64 1
  %.sroa.0.i.i.i.i.i.2.i.i.i.i.i.2.i.i.i.i.i.2.i.i.i.i.2.i.i.i.i.2.i.i.i.2.i.i.i.2.i.i.2.i.i.2.i.2.i.2..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i.i.i, i64 2
  %.sroa.0.i.i.i.i.i.3.i.i.i.i.i.3.i.i.i.i.i.3.i.i.i.i.3.i.i.i.i.3.i.i.i.3.i.i.i.3.i.i.3.i.i.3.i.3.i.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i.i.i, i64 3
  %.sroa.0.i.i.i.i.i.1.i.i.i.i.i.1.i.i.i.i.i.1.i.i.i.i.1.i.i.i.i.1.i.i.i.1.i.i.i.1.i.i.1.i.i.1.i.1.i.1..sroa_idx15 = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i.i.i, i64 1
  %.sroa.0.i.i.i.i.i.2.i.i.i.i.i.2.i.i.i.i.i.2.i.i.i.i.2.i.i.i.i.2.i.i.i.2.i.i.i.2.i.i.2.i.i.2.i.2.i.2..sroa_idx17 = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i.i.i, i64 2
  %.sroa.0.i.i.i.i.i.1.i.i.i.i.i.1.i.i.i.i.i.1.i.i.i.i.1.i.i.i.i.1.i.i.i.1.i.i.i.1.i.i.1.i.i.1.i.1.i.1..sroa_idx16 = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i.i.i, i64 1
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRTNtNtCscdodAO9FK5_5alloc6string6StringmENtNtNtBa_3str4iter5CharsuNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB25_14UnigramTrainer14required_chars0NCINvNvMsg_NtB6_7flattenINtB3M_13FlattenCompatppE9iter_fold7flattenB1z_uNCINvNvXsi_B3M_B3Z_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB1z_uQNCIB2_cBW_uNCB20_s_0NCIB2_BW_TBW_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB6E_7HashSetBW_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB58_7collect6ExtendBW_E6extendINtB4_3MapINtNtB6_5chain5ChainINtB3M_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB1z_B1Y_EINtNtB6_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEEB66_EE0NCINvNvB54_8for_each4callB6o_NCINvXs1i_NtB6G_3mapINtBcd_7HashMapBW_uB7q_EIB8h_B6o_E6extendIB8Q_B8P_B6v_EE0E0E0E0E0E0E0B2b_.exit.i, %bb.b
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.bw, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRTNtNtCscdodAO9FK5_5alloc6string6StringmENtNtNtBa_3str4iter5CharsuNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB25_14UnigramTrainer14required_chars0NCINvNvMsg_NtB6_7flattenINtB3M_13FlattenCompatppE9iter_fold7flattenB1z_uNCINvNvXsi_B3M_B3Z_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB1z_uQNCIB2_cBW_uNCB20_s_0NCIB2_BW_TBW_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB6E_7HashSetBW_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB58_7collect6ExtendBW_E6extendINtB4_3MapINtNtB6_5chain5ChainINtB3M_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB1z_B1Y_EINtNtB6_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEEB66_EE0NCINvNvB54_8for_each4callB6o_NCINvXs1i_NtB6G_3mapINtBcd_7HashMapBW_uB7q_EIB8h_B6o_E6extendIB8Q_B8P_B6v_EE0E0E0E0E0E0E0B2b_.exit.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 8
end_hunk_2
begin_hunk_3_@_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtCscdodAO9FK5_5alloc6string6StringmEENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB29_14UnigramTrainer14required_chars0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB4v_13FlattenCompatppE9iter_fold7flattenNtNtNtBc_3str4iter5CharsuNCINvNvXsi_B4v_B4I_B3G_4fold7flattenB5p_uQNCINvB6_8map_foldcB1o_uNCB24_s_0NCIB6x_B1o_TB1o_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB7s_7HashSetB1o_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB3K_7collect6ExtendB1o_E6extendIBO_INtNtB8_5chain5ChainINtB4v_7FlatMapBX_B5p_B22_EINtNtB8_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEEB6R_EE0NCINvNvB3G_8for_each4callB7b_NCINvXs1i_NtB7u_3mapINtBcw_7HashMapB1o_uB8f_EIB96_B7b_E6extendIBO_B9F_B7j_EE0E0E0E0E0E0EB2f_:bb.a
.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldcNtNtCscdodAO9FK5_5alloc6string6StringuNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2e_14UnigramTrainer14required_charss_0NCIBS_B1v_TB1v_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB4d_7HashSetB1v_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtNtBY_6traits7collect6ExtendB1v_E6extendINtBU_3MapINtNtBW_5chain5ChainINtNtBW_7flatten7FlatMapINtNtNtBb_5slice4iter4IterTB1v_mEENtNtNtBb_3str4iter5CharsNCB29_0EINtNtBW_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEEB27_EE0NCINvNvNtNtB5V_8iterator8Iterator8for_each4callB3W_NCINvXs1i_NtB4f_3mapINtBaS_7HashMapB1v_uB50_EIB5R_B3W_E6extendIB6z_B6y_B44_EE0E0E0E0INtB7_5FnMutTucEE8call_mutB2k_.exit.i
  %.sroa.0.010.i.i.i.i.i = phi ptr [ %.sroa.0.1.ph.i.i.i.i20.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldcNtNtCscdodAO9FK5_5alloc6string6StringuNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2e_14UnigramTrainer14required_charss_0NCIBS_B1v_TB1v_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB4d_7HashSetB1v_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtNtBY_6traits7collect6ExtendB1v_E6extendINtBU_3MapINtNtBW_5chain5ChainINtNtBW_7flatten7FlatMapINtNtNtBb_5slice4iter4IterTB1v_mEENtNtNtBb_3str4iter5CharsNCB29_0EINtNtBW_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEEB27_EE0NCINvNvNtNtB5V_8iterator8Iterator8for_each4callB3W_NCINvXs1i_NtB4f_3mapINtBaS_7HashMapB1v_uB50_EIB5R_B3W_E6extendIB6z_B6y_B44_EE0E0E0E0INtB7_5FnMutTucEE8call_mutB2k_.exit.i ], [ %.val10.i, %bb.c ] ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i, i64 1 ; 3 uses
  %i.o = load i8, ptr %.sroa.0.010.i.i.i.i.i, align 1, !noalias !1346, !noundef !3 ; 5 uses
  %i.p = icmp sgt i8 %i.o, -1
  br i1 %i.p, label %.thread.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.q = and i8 %i.o, 31
  %i.r = zext nneg i8 %i.q to i32                 ; 3 uses
  %i.s = icmp ne ptr %i.n, %i.m
  call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i, i64 2 ; 3 uses
  %i.u = load i8, ptr %i.n, align 1, !noalias !1346, !noundef !3
  %i.v = shl nuw nsw i32 %i.r, 6
  %i.w = and i8 %i.u, 63
  %i.x = zext nneg i8 %i.w to i32                 ; 2 uses
  %i.y = or disjoint i32 %i.v, %i.x
  %i.z = icmp samesign ugt i8 %i.o, -33
  br i1 %i.z, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i.i, label %bb.d

.thread.i:                                        ; preds = %.lr.ph.i.i.i.i.i
  %i.aa = zext nneg i8 %i.o to i32
  %.val.i.i19.i = load ptr, ptr %.val.i.i, align 8, !noalias !1347
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  store i32 0, ptr %.sroa.0.i.i.i.i.i, align 4, !noalias !1348
  br label %bb.f

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i.i
  %i.ab = icmp ne ptr %i.t, %i.m
  call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i, i64 3 ; 3 uses
  %i.ad = load i8, ptr %i.t, align 1, !noalias !1346, !noundef !3
  %i.ae = shl nuw nsw i32 %i.x, 6
  %i.af = and i8 %i.ad, 63
  %i.ag = zext nneg i8 %i.af to i32
  %i.ah = or disjoint i32 %i.ae, %i.ag            ; 2 uses
  %i.ai = shl nuw nsw i32 %i.r, 12
  %i.aj = or disjoint i32 %i.ah, %i.ai
  %i.ak = icmp samesign ugt i8 %i.o, -17
  br i1 %i.ak, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i.i, label %bb.d

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i.i
  %i.al = icmp ne ptr %i.ac, %i.m
  call void @llvm.assume(i1 %i.al)
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i, i64 4
  %i.an = load i8, ptr %i.ac, align 1, !noalias !1346, !noundef !3
  %i.ao = shl nuw nsw i32 %i.r, 18
  %i.ap = and i32 %i.ao, 1835008
  %i.aq = shl nuw nsw i32 %i.ah, 6
  %i.ar = and i8 %i.an, 63
  %i.as = zext nneg i8 %i.ar to i32
  %i.at = or disjoint i32 %i.aq, %i.as
  %i.au = or disjoint i32 %i.at, %i.ap
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i.i
  %.sroa.0.1.ph.i.i.i.i.i = phi ptr [ %i.t, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i.i ], [ %i.ac, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i.i ], [ %i.am, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i.i ] ; 4 uses
  %spec.select.i.ph.i.i.i.i.i = phi i32 [ %i.y, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i.i ], [ %i.aj, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i.i ], [ %i.au, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i.i ] ; 8 uses
  %.val.i.i.i = load ptr, ptr %.val.i.i, align 8, !noalias !1349 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  store i32 0, ptr %.sroa.0.i.i.i.i.i, align 4, !noalias !1350
  %i.av = icmp samesign ult i32 %spec.select.i.ph.i.i.i.i.i, 128
  br i1 %i.av, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aw = icmp samesign ult i32 %spec.select.i.ph.i.i.i.i.i, 2048
  %i.ax = trunc i32 %spec.select.i.ph.i.i.i.i.i to i8
  %i.ay = and i8 %i.ax, 63
  %i.az = or disjoint i8 %i.ay, -128              ; 3 uses
  %i.ba = lshr i32 %spec.select.i.ph.i.i.i.i.i, 6
  %i.bb = trunc i32 %i.ba to i8                   ; 2 uses
  %i.bc = and i8 %i.bb, 63
  %i.bd = or disjoint i8 %i.bc, -128              ; 2 uses
  %i.be = lshr i32 %spec.select.i.ph.i.i.i.i.i, 12
  %i.bf = trunc i32 %i.be to i8                   ; 2 uses
  %i.bg = and i8 %i.bf, 63
  %i.bh = or disjoint i8 %i.bg, -128
  %i.bi = lshr i32 %spec.select.i.ph.i.i.i.i.i, 18
  %i.bj = trunc nuw nsw i32 %i.bi to i8
  %i.bk = or disjoint i8 %i.bj, -16
  br i1 %i.aw, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d, %.thread.i
  %.val.i.i24.i = phi ptr [ %.val.i.i19.i, %.thread.i ], [ %.val.i.i.i, %bb.d ]
  %spec.select.i.ph.i.i.i.i22.i = phi i32 [ %i.aa, %.thread.i ], [ %spec.select.i.ph.i.i.i.i.i, %bb.d ]
  %.sroa.0.1.ph.i.i.i.i21.i = phi ptr [ %i.n, %.thread.i ], [ %.sroa.0.1.ph.i.i.i.i.i, %bb.d ]
  %i.bl = trunc nuw nsw i32 %spec.select.i.ph.i.i.i.i22.i to i8
  store i8 %i.bl, ptr %.sroa.0.i.i.i.i.i, align 4, !alias.scope !1351, !noalias !1350
  br label %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.bm = or disjoint i8 %i.bb, -64
  store i8 %i.bm, ptr %.sroa.0.i.i.i.i.i, align 4, !alias.scope !1351, !noalias !1350
  store i8 %i.az, ptr %.sroa.0.i.i.i.i.i.1.i.i.i.i.i.1.i.i.i.i.i.1.i.i.i.i.1.i.i.i.i.1.i.i.i.1.i.i.i.1.i.i.1.i.i.1.i.1.i.1..sroa_idx16, align 1, !alias.scope !1351, !noalias !1350
  br label %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.e
  %i.bn = icmp samesign ult i32 %spec.select.i.ph.i.i.i.i.i, 65536
  br i1 %i.bn, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bo = or disjoint i8 %i.bf, -32
  store i8 %i.bo, ptr %.sroa.0.i.i.i.i.i, align 4, !alias.scope !1351, !noalias !1350
  store i8 %i.bd, ptr %.sroa.0.i.i.i.i.i.1.i.i.i.i.i.1.i.i.i.i.i.1.i.i.i.i.1.i.i.i.i.1.i.i.i.1.i.i.i.1.i.i.1.i.i.1.i.1.i.1..sroa_idx15, align 1, !alias.scope !1351, !noalias !1350
  store i8 %i.az, ptr %.sroa.0.i.i.i.i.i.2.i.i.i.i.i.2.i.i.i.i.i.2.i.i.i.i.2.i.i.i.i.2.i.i.i.2.i.i.i.2.i.i.2.i.i.2.i.2.i.2..sroa_idx17, align 2, !alias.scope !1351, !noalias !1350
  br label %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  store i8 %i.bk, ptr %.sroa.0.i.i.i.i.i, align 4, !alias.scope !1351, !noalias !1350
  store i8 %i.bh, ptr %.sroa.0.i.i.i.i.i.1.i.i.i.i.i.1.i.i.i.i.i.1.i.i.i.i.1.i.i.i.i.1.i.i.i.1.i.i.i.1.i.i.1.i.i.1.i.1.i.1..sroa_idx, align 1, !alias.scope !1351, !noalias !1350
  store i8 %i.bd, ptr %.sroa.0.i.i.i.i.i.2.i.i.i.i.i.2.i.i.i.i.i.2.i.i.i.i.2.i.i.i.i.2.i.i.i.2.i.i.i.2.i.i.2.i.i.2.i.2.i.2..sroa_idx, align 2, !alias.scope !1351, !noalias !1350
  store i8 %i.az, ptr %.sroa.0.i.i.i.i.i.3.i.i.i.i.i.3.i.i.i.i.i.3.i.i.i.i.3.i.i.i.i.3.i.i.i.3.i.i.i.3.i.i.3.i.i.3.i.3.i.3..sroa_idx, align 1, !alias.scope !1351, !noalias !1350
  br label %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit.i.i.i.i.i

_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i, %bb.g, %bb.f
  %.val.i.i23.i = phi ptr [ %.val.i.i24.i, %bb.f ], [ %.val.i.i.i, %bb.g ], [ %.val.i.i.i, %bb.i ], [ %.val.i.i.i, %bb.j ] ; 2 uses
  %.sroa.0.1.ph.i.i.i.i20.i = phi ptr [ %.sroa.0.1.ph.i.i.i.i21.i, %bb.f ], [ %.sroa.0.1.ph.i.i.i.i.i, %bb.g ], [ %.sroa.0.1.ph.i.i.i.i.i, %bb.i ], [ %.sroa.0.1.ph.i.i.i.i.i, %bb.j ] ; 2 uses
  %.sroa.0.05.i.i.i.i.i.i = phi i64 [ 1, %bb.f ], [ 2, %bb.g ], [ 3, %bb.i ], [ 4, %bb.j ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1350
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.0.05.i.i.i.i.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !1350
  %i.bp = load i64, ptr %i.b, align 8, !range !5, !noalias !1350, !noundef !3
  %i.bq = trunc nuw i64 %i.bp to i1
  %i.br = load i64, ptr %i.h, align 8, !range !6, !noalias !1350, !noundef !3 ; 3 uses
  br i1 %i.bq, label %bb.k, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldcNtNtCscdodAO9FK5_5alloc6string6StringuNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2e_14UnigramTrainer14required_charss_0NCIBS_B1v_TB1v_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB4d_7HashSetB1v_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtNtBY_6traits7collect6ExtendB1v_E6extendINtBU_3MapINtNtBW_5chain5ChainINtNtBW_7flatten7FlatMapINtNtNtBb_5slice4iter4IterTB1v_mEENtNtNtBb_3str4iter5CharsNCB29_0EINtNtBW_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEEB27_EE0NCINvNvNtNtB5V_8iterator8Iterator8for_each4callB3W_NCINvXs1i_NtB4f_3mapINtBaS_7HashMapB1v_uB50_EIB5R_B3W_E6extendIB6z_B6y_B44_EE0E0E0E0INtB7_5FnMutTucEE8call_mutB2k_.exit.i, !prof !7

bb.k:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit.i.i.i.i.i
  %i.bs = load i64, ptr %i.i, align 8, !noalias !1350
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.br, i64 %i.bs) #30, !noalias !1350
  unreachable

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldcNtNtCscdodAO9FK5_5alloc6string6StringuNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2e_14UnigramTrainer14required_charss_0NCIBS_B1v_TB1v_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB4d_7HashSetB1v_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtNtBY_6traits7collect6ExtendB1v_E6extendINtBU_3MapINtNtBW_5chain5ChainINtNtBW_7flatten7FlatMapINtNtNtBb_5slice4iter4IterTB1v_mEENtNtNtBb_3str4iter5CharsNCB29_0EINtNtBW_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEEB27_EE0NCINvNvNtNtB5V_8iterator8Iterator8for_each4callB3W_NCINvXs1i_NtB4f_3mapINtBaS_7HashMapB1v_uB50_EIB5R_B3W_E6extendIB6z_B6y_B44_EE0E0E0E0INtB7_5FnMutTucEE8call_mutB2k_.exit.i: ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit.i.i.i.i.i
  %i.bt = load ptr, ptr %i.i, align 8, !noalias !1350, !nonnull !3, !noundef !3 ; 2 uses
  %i.bu = icmp samesign ule i64 %.sroa.0.05.i.i.i.i.i.i, %i.br
  call void @llvm.assume(i1 %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1350
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bt, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.0.i.i.i.i.i, i64 %.sroa.0.05.i.i.i.i.i.i, i1 false), !noalias !1350
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1352
  store i64 %i.br, ptr %i.a, align 8, !noalias !1349
  store ptr %i.bt, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !1349
  store i64 %.sroa.0.05.i.i.i.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !noalias !1349
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i23.i) ]
  %i.bv = call noundef zeroext i1 @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringuNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE6insertCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %.val.i.i23.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !1352 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1352
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.0.1.ph.i.i.i.i20.i, %i.m
  br i1 %.not.i.i.i.i.i.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRTNtNtCscdodAO9FK5_5alloc6string6StringmENtNtNtBa_3str4iter5CharsuNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB25_14UnigramTrainer14required_chars0NCINvNvMsg_NtB6_7flattenINtB3M_13FlattenCompatppE9iter_fold7flattenB1z_uNCINvNvXsi_B3M_B3Z_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB1z_uQNCIB2_cBW_uNCB20_s_0NCIB2_BW_TBW_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB6E_7HashSetBW_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB58_7collect6ExtendBW_E6extendINtB4_3MapINtNtB6_5chain5ChainINtB3M_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB1z_B1Y_EINtNtB6_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEEB66_EE0NCINvNvB54_8for_each4callB6o_NCINvXs1i_NtB6G_3mapINtBcd_7HashMapBW_uB7q_EIB8h_B6o_E6extendIB8Q_B8P_B6v_EE0E0E0E0E0E0E0B2b_.exit.i, label %.lr.ph.i.i.i.i.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRTNtNtCscdodAO9FK5_5alloc6string6StringmENtNtNtBa_3str4iter5CharsuNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB25_14UnigramTrainer14required_chars0NCINvNvMsg_NtB6_7flattenINtB3M_13FlattenCompatppE9iter_fold7flattenB1z_uNCINvNvXsi_B3M_B3Z_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB1z_uQNCIB2_cBW_uNCB20_s_0NCIB2_BW_TBW_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB6E_7HashSetBW_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB58_7collect6ExtendBW_E6extendINtB4_3MapINtNtB6_5chain5ChainINtB3M_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB1z_B1Y_EINtNtB6_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEEB66_EE0NCINvNvB54_8for_each4callB6o_NCINvXs1i_NtB6G_3mapINtBcd_7HashMapBW_uB7q_EIB8h_B6o_E6extendIB8Q_B8P_B6v_EE0E0E0E0E0E0E0B2b_.exit.i: ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldcNtNtCscdodAO9FK5_5alloc6string6StringuNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2e_14UnigramTrainer14required_charss_0NCIBS_B1v_TB1v_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB4d_7HashSetB1v_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtNtBY_6traits7collect6ExtendB1v_E6extendINtBU_3MapINtNtBW_5chain5ChainINtNtBW_7flatten7FlatMapINtNtNtBb_5slice4iter4IterTB1v_mEENtNtNtBb_3str4iter5CharsNCB29_0EINtNtBW_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEEB27_EE0NCINvNvNtNtB5V_8iterator8Iterator8for_each4callB3W_NCINvXs1i_NtB4f_3mapINtBaS_7HashMapB1v_uB50_EIB5R_B3W_E6extendIB6z_B6y_B44_EE0E0E0E0INtB7_5FnMutTucEE8call_mutB2k_.exit.i, %bb.c
  %i.bw = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.bx = icmp eq i64 %i.bw, %i.g
  br i1 %i.bx, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1B_8adapters3map8map_foldRBQ_NtNtNtBb_3str4iter5CharsuNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3p_14UnigramTrainer14required_chars0NCINvNvMsg_NtB2n_7flattenINtB56_13FlattenCompatppE9iter_fold7flattenB2T_uNCINvNvXsi_B56_B5k_B1v_4fold7flattenB2T_uQNCIB2j_cBR_uNCB3k_s_0NCIB2j_BR_TBR_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB7x_7HashSetBR_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB1z_7collect6ExtendBR_E6extendINtB2l_3MapINtNtB2n_5chain5ChainINtB56_7FlatMapBF_B2T_B3i_EINtNtB2n_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEEB6Y_EE0NCINvNvB1v_8for_each4callB7h_NCINvXs1i_NtB7z_3mapINtBcI_7HashMapBR_uB8j_EIB9a_B7h_E6extendIB9J_B9I_B7o_EE0E0E0E0E0E0E0EB3v_.exit, label %bb.c

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1B_8adapters3map8map_foldRBQ_NtNtNtBb_3str4iter5CharsuNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3p_14UnigramTrainer14required_chars0NCINvNvMsg_NtB2n_7flattenINtB56_13FlattenCompatppE9iter_fold7flattenB2T_uNCINvNvXsi_B56_B5k_B1v_4fold7flattenB2T_uQNCIB2j_cBR_uNCB3k_s_0NCIB2j_BR_TBR_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB7x_7HashSetBR_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB1z_7collect6ExtendBR_E6extendINtB2l_3MapINtNtB2n_5chain5ChainINtB56_7FlatMapBF_B2T_B3i_EINtNtB2n_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEEB6Y_EE0NCINvNvB1v_8for_each4callB7h_NCINvXs1i_NtB7z_3mapINtBcI_7HashMapBR_uB8j_EIB9a_B7h_E6extendIB9J_B9I_B7o_EE0E0E0E0E0E0E0EB3v_.exit: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRTNtNtCscdodAO9FK5_5alloc6string6StringmENtNtNtBa_3str4iter5CharsuNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB25_14UnigramTrainer14required_chars0NCINvNvMsg_NtB6_7flattenINtB3M_13FlattenCompatppE9iter_fold7flattenB1z_uNCINvNvXsi_B3M_B3Z_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB1z_uQNCIB2_cBW_uNCB20_s_0NCIB2_BW_TBW_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB6E_7HashSetBW_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB58_7collect6ExtendBW_E6extendINtB4_3MapINtNtB6_5chain5ChainINtB3M_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB1z_B1Y_EINtNtB6_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEEB66_EE0NCINvNvB54_8for_each4callB6o_NCINvXs1i_NtB6G_3mapINtBcd_7HashMapBW_uB7q_EIB8h_B6o_E6extendIB8Q_B8P_B6v_EE0E0E0E0E0E0E0B2b_.exit.i, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTjjEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB1B_16NormalizedString5sliceINtNtNtBc_3ops5range5RangejEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3q_8for_each4callB1n_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4G_3VecB1n_E14extend_trustedBN_E0E0EB1F_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !align !4, !noundef !3 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 7 uses
  %i.f = icmp eq ptr %i.a, %i.c
  br i1 %i.f, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_BQ_uNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2w_16NormalizedString5sliceINtNtNtBb_3ops5range5RangejEE0NCINvNvBV_8for_each4callBQ_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4U_3VecBQ_E14extend_trustedINtB1L_3MapBF_B2n_EE0E0E0EB2A_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h                   ; 4 uses
  %i.j = lshr i64 %i.i, 4                         ; 4 uses
  %min.iters.check = icmp ult i64 %i.i, 160
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.k = shl i64 %.sroa.5.0.copyload, 4           ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k ; 2 uses
  %i.l = and i64 %i.i, -16                        ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k
  %scevgep2 = getelementptr i8, ptr %i.m, i64 %i.l ; 2 uses
  %scevgep3 = getelementptr i8, ptr %i.a, i64 %i.l
  %scevgep4 = getelementptr i8, ptr %i.e, i64 8
  %bound0 = icmp ult ptr %scevgep, %scevgep3
  %bound1 = icmp ult ptr %i.a, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  %bound05 = icmp ult ptr %scevgep, %scevgep4
  %bound16 = icmp ult ptr %i.e, %scevgep2
  %found.conflict7 = and i1 %bound05, %bound16
  %conflict.rdx = or i1 %found.conflict, %found.conflict7
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, 1152921504606846974      ; 4 uses
  %i.n = load i64, ptr %i.e, align 8, !alias.scope !1367, !noalias !1368, !noundef !3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.n, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.o = add i64 %.sroa.5.0.copyload, %index      ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %index
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %index
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <2 x i64>, ptr %i.p, align 8, !alias.scope !1369, !noalias !1370
  %wide.load8 = load <2 x i64>, ptr %i.r, align 8, !alias.scope !1369, !noalias !1370
  %i.s = sub <2 x i64> %wide.load, %broadcast.splat
  %i.t = sub <2 x i64> %wide.load8, %broadcast.splat
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.o
  %i.v = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.o
  %i.w = getelementptr i8, ptr %i.v, i64 16
  store <2 x i64> %i.s, ptr %i.u, align 8, !alias.scope !1371, !noalias !1372
  store <2 x i64> %i.t, ptr %i.w, align 8, !alias.scope !1371, !noalias !1372
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !1365

middle.block:                                     ; preds = %vector.body
  %2 = add i64 %.sroa.5.0.copyload, %n.vec        ; 2 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_BQ_uNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2w_16NormalizedString5sliceINtNtNtBb_3ops5range5RangejEE0NCINvNvBV_8for_each4callBQ_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4U_3VecBQ_E14extend_trustedINtB1L_3MapBF_B2n_EE0E0E0EB2A_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %2, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1
  %i.y = and i64 %i.i, 16
  %lcmp.mod.not = icmp eq i64 %i.y, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.sroa.01.0.i.ph
  %i.aa = load i64, ptr %i.e, align 8, !noalias !1368, !noundef !3
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.ph
  %i.ac = load <2 x i64>, ptr %i.z, align 8, !noalias !1370
  %i.ad = insertelement <2 x i64> poison, i64 %i.aa, i64 0
  %i.ae = shufflevector <2 x i64> %i.ad, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.af = sub <2 x i64> %i.ac, %i.ae
  store <2 x i64> %i.af, ptr %i.ab, align 8, !noalias !1373
  %i.ag = add i64 %.ph, 1                         ; 2 uses
  %i.ah = or disjoint i64 %.sroa.01.0.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ag, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ag, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %i.ai = icmp eq i64 %i.j, %.neg
  br i1 %i.ai, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_BQ_uNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2w_16NormalizedString5sliceINtNtNtBb_3ops5range5RangejEE0NCINvNvBV_8for_each4callBQ_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4U_3VecBQ_E14extend_trustedINtB1L_3MapBF_B2n_EE0E0E0EB2A_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.aj = phi i64 [ %i.ba, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.bb, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.al = load i64, ptr %i.e, align 8, !noalias !1368, !noundef !3
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.aj
  %i.an = load <2 x i64>, ptr %i.ak, align 8, !noalias !1370
  %i.ao = insertelement <2 x i64> poison, i64 %i.al, i64 0
  %i.ap = shufflevector <2 x i64> %i.ao, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.aq = sub <2 x i64> %i.an, %i.ap
  store <2 x i64> %i.aq, ptr %i.am, align 8, !noalias !1373
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load i64, ptr %i.e, align 8, !noalias !1368, !noundef !3
  %i.au = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.aj
  %i.av = getelementptr i8, ptr %i.au, i64 16
  %i.aw = load <2 x i64>, ptr %i.as, align 8, !noalias !1370
  %i.ax = insertelement <2 x i64> poison, i64 %i.at, i64 0
  %i.ay = shufflevector <2 x i64> %i.ax, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.az = sub <2 x i64> %i.aw, %i.ay
  store <2 x i64> %i.az, ptr %i.av, align 8, !noalias !1373
  %i.ba = add i64 %i.aj, 2                        ; 2 uses
  %i.bb = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %i.bc = icmp eq i64 %i.bb, %i.j
  br i1 %i.bc, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_BQ_uNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2w_16NormalizedString5sliceINtNtNtBb_3ops5range5RangejEE0NCINvNvBV_8for_each4callBQ_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4U_3VecBQ_E14extend_trustedINtB1L_3MapBF_B2n_EE0E0E0EB2A_.exit, label %scalar.ph, !llvm.loop !1366

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_BQ_uNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2w_16NormalizedString5sliceINtNtNtBb_3ops5range5RangejEE0NCINvNvBV_8for_each4callBQ_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4U_3VecBQ_E14extend_trustedINtB1L_3MapBF_B2n_EE0E0E0EB2A_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %2, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ba, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1370
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB29_8for_each4callhNCINvMsj_NtB1v_3vecINtB3m_3VechE14extend_trustedBN_E0E0ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  %i.h = icmp eq ptr %i.a, %i.c
  br i1 %i.h, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %xtraiter = and i64 %i.k, 1
  %i.l = add i64 %i.i, -1
  %i.m = icmp eq i64 %i.l, %i.j
  br i1 %i.m, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.k, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.new
  %i.n = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.aa, %bb.g ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.ab, %bb.g ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.g ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i
  %.val16.i = load i8, ptr %i.o, align 1, !noalias !1382, !noundef !3 ; 2 uses
  %i.p = load i8, ptr %i.e, align 1, !noalias !1383, !noundef !3
  %i.q = icmp eq i8 %.val16.i, %i.p
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load i8, ptr %i.g, align 1, !noalias !1383, !noundef !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i = phi i8 [ %i.r, %bb.d ], [ %.val16.i, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.n
  store i8 %.sroa.0.0.i.i.i, ptr %i.s, align 1, !noalias !1384
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %.val16.i.1 = load i8, ptr %i.u, align 1, !noalias !1382, !noundef !3 ; 2 uses
  %i.v = load i8, ptr %i.e, align 1, !noalias !1383, !noundef !3
  %i.w = icmp eq i8 %.val16.i.1, %i.v
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = load i8, ptr %i.g, align 1, !noalias !1383, !noundef !3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i.i.1 = phi i8 [ %i.x, %bb.f ], [ %.val16.i.1, %bb.e ]
  %i.y = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.n
  %i.z = getelementptr i8, ptr %i.y, i64 1
  store i8 %.sroa.0.0.i.i.i.1, ptr %i.z, align 1, !noalias !1384
  %i.aa = add i64 %i.n, 2                         ; 3 uses
  %i.ab = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.aa, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.ab, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa ]
  %lcmp.mod4 = trunc i64 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.epil.init
  %.val16.i.epil = load i8, ptr %i.ac, align 1, !noalias !1382, !noundef !3 ; 2 uses
  %i.ad = load i8, ptr %i.e, align 1, !noalias !1383, !noundef !3
  %i.ae = icmp eq i8 %.val16.i.epil, %i.ad
  br i1 %i.ae, label %bb.h, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit.loopexit.epilog-lcssa

bb.h:                                             ; preds = %.epil.preheader
  %i.af = load i8, ptr %i.g, align 1, !noalias !1383, !noundef !3
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit.loopexit.epilog-lcssa

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit.loopexit.epilog-lcssa: ; preds = %bb.h, %.epil.preheader
  %.sroa.0.0.i.i.i.epil = phi i8 [ %i.af, %bb.h ], [ %.val16.i.epil, %.epil.preheader ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.epil.init
  store i8 %.sroa.0.0.i.i.i.epil, ptr %i.ag, align 1, !noalias !1384
  %i.ah = add i64 %.epil.init, 1
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit.loopexit.epilog-lcssa, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.aa, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa ], [ %i.ah, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit.loopexit.epilog-lcssa ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1382
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10bytes_char0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2D_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3Q_3VecmE14extend_trustedBN_E0E0EB1x_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhmuNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10bytes_char0NCINvNvBS_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB40_3VecmE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2n_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.d = sub nuw i64 %i.b, %i.c                   ; 4 uses
  %min.iters.check = icmp ult i64 %i.d, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.e = shl i64 %.sroa.5.0.copyload, 2
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.e
  %i.f = add i64 %.sroa.5.0.copyload, %i.b
  %i.g = sub i64 %i.f, %i.c
  %i.h = shl i64 %i.g, 2
  %scevgep2 = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.h
  %bound0 = icmp ult ptr %scevgep, %1
  %bound1 = icmp ult ptr %0, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.d, -8                       ; 4 uses
  %i.i = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %wide.load = load <4 x i8>, ptr %i.j, align 1, !alias.scope !1399, !noalias !1400
  %wide.load4 = load <4 x i8>, ptr %i.k, align 1, !alias.scope !1399, !noalias !1400
  %i.l = zext <4 x i8> %wide.load to <4 x i32>
  %i.m = zext <4 x i8> %wide.load4 to <4 x i32>
  %i.n = getelementptr [4 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <4 x i32> %i.l, ptr %i.n, align 4, !alias.scope !1401, !noalias !1402
  store <4 x i32> %i.m, ptr %i.o, align 4, !alias.scope !1401, !noalias !1402
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !1396

middle.block:                                     ; preds = %vector.body
  %3 = add i64 %.sroa.5.0.copyload, %n.vec        ; 2 uses
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhmuNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10bytes_char0NCINvNvBS_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB40_3VecmE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2n_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %3, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %i.q = sub i64 %i.b, %i.c
  %xtraiter = and i64 %i.q, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.r = phi i64 [ %i.v, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.w, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i.prol
  %.val16.i.prol = load i8, ptr %i.s, align 1, !noalias !1400, !noundef !3
  %i.t = zext i8 %.val16.i.prol to i32
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.r
  store i32 %i.t, ptr %i.u, align 4, !noalias !1403
  %i.v = add i64 %i.r, 1                          ; 3 uses
  %i.w = add nuw i64 %.sroa.01.0.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1397

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.v, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.v, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.w, %scalar.ph.prol ]
  %i.x = sub i64 %.sroa.01.0.i.ph, %i.b
  %i.y = add i64 %i.x, %i.c
  %i.z = icmp ugt i64 %i.y, -4
  br i1 %i.z, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhmuNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10bytes_char0NCINvNvBS_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB40_3VecmE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2n_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.aa = phi i64 [ %i.at, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.au, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %.val16.i = load i8, ptr %i.ab, align 1, !noalias !1400, !noundef !3
  %i.ac = zext i8 %.val16.i to i32
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.aa
  store i32 %i.ac, ptr %i.ad, align 4, !noalias !1403
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %.val16.i.1 = load i8, ptr %i.af, align 1, !noalias !1400, !noundef !3
  %i.ag = zext i8 %.val16.i.1 to i32
  %i.ah = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.aa
  %i.ai = getelementptr i8, ptr %i.ah, i64 4
  store i32 %i.ag, ptr %i.ai, align 4, !noalias !1403
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %.val16.i.2 = load i8, ptr %i.ak, align 1, !noalias !1400, !noundef !3
  %i.al = zext i8 %.val16.i.2 to i32
  %i.am = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.aa
  %i.an = getelementptr i8, ptr %i.am, i64 8
  store i32 %i.al, ptr %i.an, align 4, !noalias !1403
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 3
  %.val16.i.3 = load i8, ptr %i.ap, align 1, !noalias !1400, !noundef !3
  %i.aq = zext i8 %.val16.i.3 to i32
  %i.ar = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.aa
  %i.as = getelementptr i8, ptr %i.ar, i64 12
  store i32 %i.aq, ptr %i.as, align 4, !noalias !1403
  %i.at = add i64 %i.aa, 4                        ; 2 uses
  %i.au = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.av = icmp eq i64 %i.au, %i.d
  br i1 %i.av, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhmuNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10bytes_char0NCINvNvBS_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB40_3VecmE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2n_.exit, label %scalar.ph, !llvm.loop !1398

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhmuNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10bytes_char0NCINvNvBS_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB40_3VecmE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2n_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %3, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.at, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1400
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter6ChunksTNtNtCscdodAO9FK5_5alloc6string6StringmEENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2b_14UnigramTrainer10run_e_steps_0ENtNtNtBa_6traits8iterator8Iterator4foldTdmINtNtB1u_3vec3VecdEENCB26_s1_0EB2h_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [112 x i8], align 8               ; 12 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [40 x i8], align 8                ; 6 uses
  %.sroa.7.i = alloca [28 x i8], align 4          ; 7 uses
  %.sroa.5.i = alloca [28 x i8], align 4          ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !3, !align !4, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !3, !align !15, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1426)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %.sroa.0.0.copyload.i = load double, ptr %2, align 8, !alias.scope !1424, !noalias !1427 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1424, !noalias !1427 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.7.i, ptr noundef nonnull readonly align 4 dereferenceable(28) %.sroa.7.0..sroa_idx.i, i64 28, i1 false), !noalias !1427
  %i.m = icmp eq i64 %.sroa.4.0.copyload, 0
  br i1 %i.m, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter6ChunksTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtNtBa_4iter6traits8iterator8Iterator4foldTdmINtNtBQ_3vec3VecdEENCINvNtNtB1w_8adapters3map8map_foldRSBL_B2a_B2a_NCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3p_14UnigramTrainer10run_e_steps_0NCB3k_s1_0E0EB3v_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.n = load ptr, ptr %i.j, align 8, !alias.scope !1425, !noalias !1428, !nonnull !3, !align !4, !noundef !3 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.t = icmp eq i64 %.sroa.5.0.copyload, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 304
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 312
  %i.x = load i32, ptr %i.l, align 4, !alias.scope !1426, !noalias !1429
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 4 uses
  %i.aa = uitofp i32 %i.x to double
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.5.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.5.i, i64 4
  %.sroa.014.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.7.i, i64 4
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i, %.lr.ph.i
  %.sroa.4.0.copyload.i.i = phi i32 [ %.sroa.6.0.copyload.i, %.lr.ph.i ], [ %i.cg, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i ] ; 2 uses
  %.sroa.0.0.copyload.i.i = phi double [ %.sroa.0.0.copyload.i, %.lr.ph.i ], [ %i.cf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i ] ; 2 uses
  %i.ae = phi i64 [ %.sroa.4.0.copyload, %.lr.ph.i ], [ %i.ah, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i ] ; 2 uses
  %i.af = phi ptr [ %.sroa.0.0.copyload, %.lr.ph.i ], [ %i.ag, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.5.0.copyload, i64 %i.ae) ; 3 uses
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %.sroa.0.0.i.i.i
  %i.ah = sub nuw nsw i64 %i.ae, %.sroa.0.0.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1430)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1431
  store double %.sroa.0.0.copyload.i.i, ptr %i.h, align 8, !noalias !1432
  store i32 %.sroa.4.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.014.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.7.i, i64 28, i1 false), !noalias !1433
  call void @llvm.experimental.noalias.scope.decl(metadata !1434)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1435
  %i.ai = load i64, ptr %i.o, align 8, !noalias !1435, !noundef !3 ; 5 uses
  %i.aj = icmp ult i64 %i.ai, 288230376151711744
  call void @llvm.assume(i1 %i.aj)
  call void @llvm.experimental.noalias.scope.decl(metadata !1436)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1437
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.ai, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8)
          to label %.noexc.i.i unwind label %.body.thread14.i.loopexit.i, !noalias !1431

.noexc.i.i:                                       ; preds = %bb.b
  %i.ak = load i64, ptr %i.d, align 8, !range !5, !noalias !1437, !noundef !3
  %i.al = trunc nuw i64 %i.ak to i1
  %i.am = load i64, ptr %i.p, align 8, !range !6, !noalias !1437, !noundef !3 ; 3 uses
  br i1 %i.al, label %bb.c, label %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit.i.i.i, !prof !7

bb.c:                                             ; preds = %.noexc.i.i
  %i.an = load i64, ptr %i.q, align 8, !noalias !1437
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.am, i64 %i.an) #30
          to label %.noexc3.i.i unwind label %.body.thread14.i.loopexit.split-lp.i, !noalias !1431

.noexc3.i.i:                                      ; preds = %bb.c
  unreachable

_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit.i.i.i: ; preds = %.noexc.i.i
  %i.ao = load ptr, ptr %i.q, align 8, !noalias !1437, !nonnull !3, !noundef !3 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1437
  store i64 %i.am, ptr %i.g, align 8, !alias.scope !1436, !noalias !1435
  store ptr %i.ao, ptr %i.r, align 8, !alias.scope !1436, !noalias !1435
  store i64 %i.ai, ptr %i.s, align 8, !alias.scope !1436, !noalias !1435
  %.idx.i.i.i = shl nuw nsw i64 %.sroa.0.0.i.i.i, 5
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx.i.i.i
  br i1 %i.t, label %.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice7LatticeEBJ_.exit.i
  %.sroa.0.011.i.i.i = phi double [ %i.bv, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice7LatticeEBJ_.exit.i ], [ 0.000000e+00, %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit.i.i.i ]
  %.sroa.02.010.i.i.i = phi i32 [ %i.bi, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice7LatticeEBJ_.exit.i ], [ 0, %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit.i.i.i ]
  %.sroa.04.09.i.i.i = phi ptr [ %i.aq, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice7LatticeEBJ_.exit.i ], [ %i.af, %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit.i.i.i ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i.i, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1435
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i.i, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !1438, !noalias !1439, !nonnull !3, !noundef !3
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i.i, i64 16
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !1438, !noalias !1439, !noundef !3
  %i.av = load i64, ptr %i.v, align 8, !noalias !1435, !noundef !3
  %i.aw = load i64, ptr %i.w, align 8, !noalias !1435, !noundef !3
end_hunk_3
