Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.13?download=true
inline.NumInlined: 1330
inline.NumDeleted: 900
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterINtNtCscdodAO9FK5_5alloc3vec3VecjEEINtNtB1G_9into_iter8IntoIterB1D_EENCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2T_14UnigramTrainer21prune_sentence_piecess0_0s_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4D_8for_each4callB1D_NCINvMsj_B1G_IB1E_B1D_E14extend_trustedBN_E0E0EB2Z_:bb.a
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
  %i.p = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.q = getelementptr [8 x i8], ptr %.sroa.8.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %i.r = add i64 %.pre, %index                    ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.pre, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.pre, i64 %i.r ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load = load <2 x double>, ptr %i.t, align 8, !noalias !286
  %wide.load5 = load <2 x double>, ptr %i.u, align 8, !noalias !286
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load6 = load <2 x double>, ptr %i.s, align 8, !noalias !283
  %wide.load7 = load <2 x double>, ptr %i.v, align 8, !noalias !283
  %i.w = fadd <2 x double> %wide.load, %wide.load6
  %i.x = fadd <2 x double> %wide.load5, %wide.load7
  %i.y = getelementptr [8 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <2 x double> %i.w, ptr %i.y, align 8, !noalias !287
  store <2 x double> %i.x, ptr %i.z, align 8, !noalias !287
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !280

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.sroa.0.0.i.i.i.i, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRddEduNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3v_14UnigramTrainer10run_e_steps1_00NCINvNvB2e_8for_each4calldNCINvMsj_B1t_INtB1t_3VecdE14extend_trustedINtB2X_3MapBM_B3m_EE0E0E0EB3B_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %.lr.ph.i.i ], [ %i.p, %middle.block ] ; 3 uses
  %.sroa.0.015.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.0.015.i.i.ph, 1
  %2 = trunc i64 %.sroa.0.0.i.i.i.i to i1
  br i1 %2, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ab = or disjoint i64 %.sroa.0.015.i.i.ph, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %i.ac = add i64 %.pre, %.sroa.0.015.i.i.ph      ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.pre, i64 %i.ac
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.pre, i64 %i.ac
  %i.af = load double, ptr %i.ae, align 8, !noalias !286, !noundef !3
  %.val12.i.i.prol = load double, ptr %i.ad, align 8, !noalias !283, !noundef !3
  %i.ag = fadd double %i.af, %.val12.i.i.prol
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %.ph
  store double %i.ag, ptr %i.ah, align 8, !noalias !287
  %i.ai = add i64 %.ph, 1                         ; 2 uses
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ai, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ai, %scalar.ph.prol ]
  %.sroa.0.015.i.i.unr = phi i64 [ %.sroa.0.015.i.i.ph, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %i.aj = icmp eq i64 %.sroa.0.0.i.i.i.i, %.neg
  br i1 %i.aj, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRddEduNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3v_14UnigramTrainer10run_e_steps1_00NCINvNvB2e_8for_each4calldNCINvMsj_B1t_INtB1t_3VecdE14extend_trustedINtB2X_3MapBM_B3m_EE0E0E0EB3B_.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.pre
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %i.ak = phi i64 [ %.unr, %scalar.ph.preheader.new ], [ %i.ay, %scalar.ph ] ; 3 uses
  %.sroa.0.015.i.i = phi i64 [ %.sroa.0.015.i.i.unr, %scalar.ph.preheader.new ], [ %i.ar, %scalar.ph ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %i.al = add i64 %.pre, %.sroa.0.015.i.i         ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.pre, i64 %i.al
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.pre, i64 %i.al
  %i.ao = load double, ptr %i.an, align 8, !noalias !286, !noundef !3
  %.val12.i.i = load double, ptr %i.am, align 8, !noalias !283, !noundef !3
  %i.ap = fadd double %i.ao, %.val12.i.i
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %i.ak
  store double %i.ap, ptr %i.aq, align 8, !noalias !287
  %i.ar = add nuw i64 %.sroa.0.015.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.015.i.i, %invariant.op ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.pre, i64 %.reass
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.pre, i64 %.reass
  %i.au = load double, ptr %i.at, align 8, !noalias !288, !noundef !3
  %.val12.i.i.1 = load double, ptr %i.as, align 8, !noalias !283, !noundef !3
  %i.av = fadd double %i.au, %.val12.i.i.1
  %i.aw = getelementptr [8 x i8], ptr %.sroa.8.0.copyload, i64 %i.ak
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  store double %i.av, ptr %i.ax, align 8, !noalias !287
  %i.ay = add i64 %i.ak, 2                        ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.ar, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRddEduNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3v_14UnigramTrainer10run_e_steps1_00NCINvNvB2e_8for_each4calldNCINvMsj_B1t_INtB1t_3VecdE14extend_trustedINtB2X_3MapBM_B3m_EE0E0E0EB3B_.exit, label %scalar.ph, !llvm.loop !282

bb.d:                                             ; preds = %bb.b
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !283
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdEEECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.e

_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRddEduNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3v_14UnigramTrainer10run_e_steps1_00NCINvNvB2e_8for_each4calldNCINvMsj_B1t_INtB1t_3VecdE14extend_trustedINtB2X_3MapBM_B3m_EE0E0E0EB3B_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.c
  %.val11.i.i = phi i64 [ %.sroa.5.0.copyload, %bb.c ], [ %i.p, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ay, %scalar.ph ]
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
  %i.p = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.q = getelementptr [8 x i8], ptr %.sroa.8.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !308)
  %i.r = add i64 %.pre, %index                    ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.pre, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.pre, i64 %i.r ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load = load <2 x double>, ptr %i.t, align 8, !noalias !309
  %wide.load5 = load <2 x double>, ptr %i.u, align 8, !noalias !309
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load6 = load <2 x double>, ptr %i.s, align 8, !noalias !306
  %wide.load7 = load <2 x double>, ptr %i.v, align 8, !noalias !306
  %i.w = fadd <2 x double> %wide.load, %wide.load6
  %i.x = fadd <2 x double> %wide.load5, %wide.load7
  %i.y = getelementptr [8 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <2 x double> %i.w, ptr %i.y, align 8, !noalias !310
  store <2 x double> %i.x, ptr %i.z, align 8, !noalias !310
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !303

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.sroa.0.0.i.i.i.i, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRddEduNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3v_14UnigramTrainer21prune_sentence_piecess0_00NCINvNvB2e_8for_each4calldNCINvMsj_B1t_INtB1t_3VecdE14extend_trustedINtB2X_3MapBM_B3m_EE0E0E0EB3B_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %.lr.ph.i.i ], [ %i.p, %middle.block ] ; 3 uses
  %.sroa.0.015.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.0.015.i.i.ph, 1
  %2 = trunc i64 %.sroa.0.0.i.i.i.i to i1
  br i1 %2, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ab = or disjoint i64 %.sroa.0.015.i.i.ph, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !308)
  %i.ac = add i64 %.pre, %.sroa.0.015.i.i.ph      ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.pre, i64 %i.ac
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.pre, i64 %i.ac
  %i.af = load double, ptr %i.ae, align 8, !noalias !309, !noundef !3
  %.val12.i.i.prol = load double, ptr %i.ad, align 8, !noalias !306, !noundef !3
  %i.ag = fadd double %i.af, %.val12.i.i.prol
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %.ph
  store double %i.ag, ptr %i.ah, align 8, !noalias !310
  %i.ai = add i64 %.ph, 1                         ; 2 uses
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ai, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ai, %scalar.ph.prol ]
  %.sroa.0.015.i.i.unr = phi i64 [ %.sroa.0.015.i.i.ph, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %i.aj = icmp eq i64 %.sroa.0.0.i.i.i.i, %.neg
  br i1 %i.aj, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRddEduNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3v_14UnigramTrainer21prune_sentence_piecess0_00NCINvNvB2e_8for_each4calldNCINvMsj_B1t_INtB1t_3VecdE14extend_trustedINtB2X_3MapBM_B3m_EE0E0E0EB3B_.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.pre
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %i.ak = phi i64 [ %.unr, %scalar.ph.preheader.new ], [ %i.ay, %scalar.ph ] ; 3 uses
  %.sroa.0.015.i.i = phi i64 [ %.sroa.0.015.i.i.unr, %scalar.ph.preheader.new ], [ %i.ar, %scalar.ph ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !308)
  %i.al = add i64 %.pre, %.sroa.0.015.i.i         ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.pre, i64 %i.al
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.pre, i64 %i.al
  %i.ao = load double, ptr %i.an, align 8, !noalias !309, !noundef !3
  %.val12.i.i = load double, ptr %i.am, align 8, !noalias !306, !noundef !3
  %i.ap = fadd double %i.ao, %.val12.i.i
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %i.ak
  store double %i.ap, ptr %i.aq, align 8, !noalias !310
  %i.ar = add nuw i64 %.sroa.0.015.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.015.i.i, %invariant.op ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.pre, i64 %.reass
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.pre, i64 %.reass
  %i.au = load double, ptr %i.at, align 8, !noalias !311, !noundef !3
  %.val12.i.i.1 = load double, ptr %i.as, align 8, !noalias !306, !noundef !3
  %i.av = fadd double %i.au, %.val12.i.i.1
  %i.aw = getelementptr [8 x i8], ptr %.sroa.8.0.copyload, i64 %i.ak
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  store double %i.av, ptr %i.ax, align 8, !noalias !310
  %i.ay = add i64 %i.ak, 2                        ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.ar, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRddEduNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3v_14UnigramTrainer21prune_sentence_piecess0_00NCINvNvB2e_8for_each4calldNCINvMsj_B1t_INtB1t_3VecdE14extend_trustedINtB2X_3MapBM_B3m_EE0E0E0EB3B_.exit, label %scalar.ph, !llvm.loop !305

bb.d:                                             ; preds = %bb.b
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !306
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdEEECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.e

_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRddEduNCNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3v_14UnigramTrainer21prune_sentence_piecess0_00NCINvNvB2e_8for_each4calldNCINvMsj_B1t_INtB1t_3VecdE14extend_trustedINtB2X_3MapBM_B3m_EE0E0E0EB3B_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.c
  %.val11.i.i = phi i64 [ %.sroa.5.0.copyload, %bb.c ], [ %i.p, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ay, %scalar.ph ]
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
  call void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources4once4OnceTciEEINtNtB7_3map3MapNtNtNtBb_3str4iter5CharsNCNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2j_16NormalizedString6append0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvB1A_8map_foldB1s_cuNCINvB2f_15transform_rangeINtNtNtBb_3ops5range9RangeFromjEBO_Es_0NCINvNvB3H_8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB6l_6StringINtNtB3L_7collect6ExtendcE6extendIB1y_BO_B4J_EE0E0E0EB2n_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map6ValueshcEENCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB2q_7HashSetcNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtNtBa_6traits7collect6ExtendcE6extendBX_E0ENtNtB45_8iterator8Iterator4folduNCINvNvB4L_8for_each4callTcuENCINvXs1i_NtB2s_3mapINtB5U_7HashMapcuB3a_EIB41_B5G_E6extendBN_E0E0ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map6ValueshcEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldcTcuEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB3g_7HashSetcNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB24_7collect6ExtendcE6extendBP_E0NCINvNvB20_8for_each4callB32_NCINvXs1i_NtB3i_3mapINtB65_7HashMapcuB40_EIB4R_B32_E6extendINtB2J_3MapBP_B37_EE0E0E0ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtCscdodAO9FK5_5alloc6string6StringmEENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB29_14UnigramTrainer14required_chars0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB4v_13FlattenCompatppE9iter_fold7flattenNtNtNtBc_3str4iter5CharsuNCINvNvXsi_B4v_B4I_B3G_4fold7flattenB5p_uQNCINvB6_8map_foldcB1o_uNCB24_s_0NCIB6x_B1o_TB1o_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB7s_7HashSetB1o_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB3K_7collect6ExtendB1o_E6extendIBO_INtNtB8_5chain5ChainINtB4v_7FlatMapBX_B5p_B22_EINtNtB8_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEEB6R_EE0NCINvNvB3G_8for_each4callB7b_NCINvXs1i_NtB7u_3mapINtBcw_7HashMapB1o_uB8f_EIB96_B7b_E6extendIBO_B9F_B7j_EE0E0E0E0E0E0EB2f_:bb.a
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
  %.val10.i = load ptr, ptr %i.k, align 8, !noalias !1345, !nonnull !3, !noundef !3 ; 2 uses
  %i.l = getelementptr i8, ptr %i.j, i64 16
  %.val11.i = load i64, ptr %i.l, align 8, !noalias !1345, !noundef !3 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %.val11.i ; 4 uses
  %.not.i9.i.i.i.i.i = icmp samesign eq i64 %.val11.i, 0
  br i1 %.not.i9.i.i.i.i.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRTNtNtCscdodAO9FK5_5alloc6string6StringmENtNtNtBa_3str4iter5CharsuNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB25_14UnigramTrainer14required_chars0NCINvNvMsg_NtB6_7flattenINtB3M_13FlattenCompatppE9iter_fold7flattenB1z_uNCINvNvXsi_B3M_B3Z_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB1z_uQNCIB2_cBW_uNCB20_s_0NCIB2_BW_TBW_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB6E_7HashSetBW_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB58_7collect6ExtendBW_E6extendINtB4_3MapINtNtB6_5chain5ChainINtB3M_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB1z_B1Y_EINtNtB6_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEEB66_EE0NCINvNvB54_8for_each4callB6o_NCINvXs1i_NtB6G_3mapINtBcd_7HashMapBW_uB7q_EIB8h_B6o_E6extendIB8Q_B8P_B6v_EE0E0E0E0E0E0E0B2b_.exit.i, label %.lr.ph.i.i.i.i.i

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
  %i.i = sub nuw i64 %i.g, %i.h                   ; 3 uses
  %i.j = lshr i64 %i.i, 4                         ; 5 uses
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
  %i.n = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.o = load i64, ptr %i.e, align 8, !alias.scope !1367, !noalias !1368, !noundef !3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.o, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.p = add i64 %.sroa.5.0.copyload, %index      ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %index
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %index
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <2 x i64>, ptr %i.q, align 8, !alias.scope !1369, !noalias !1370
  %wide.load8 = load <2 x i64>, ptr %i.s, align 8, !alias.scope !1369, !noalias !1370
  %i.t = sub <2 x i64> %wide.load, %broadcast.splat
  %i.u = sub <2 x i64> %wide.load8, %broadcast.splat
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.p
  %i.w = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.p
  %i.x = getelementptr i8, ptr %i.w, i64 16
  store <2 x i64> %i.t, ptr %i.v, align 8, !alias.scope !1371, !noalias !1372
  store <2 x i64> %i.u, ptr %i.x, align 8, !alias.scope !1371, !noalias !1372
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !1365

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_BQ_uNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2w_16NormalizedString5sliceINtNtNtBb_3ops5range5RangejEE0NCINvNvBV_8for_each4callBQ_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4U_3VecBQ_E14extend_trustedINtB1L_3MapBF_B2n_EE0E0E0EB2A_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1
  %2 = trunc i64 %i.j to i1
  br i1 %2, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

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
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.n, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ba, %scalar.ph ]
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
  %2 = trunc i64 %i.k to i1
  br i1 %2, label %.epil.preheader, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit

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
  %i.i = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.j = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %wide.load = load <4 x i8>, ptr %i.k, align 1, !alias.scope !1399, !noalias !1400
  %wide.load4 = load <4 x i8>, ptr %i.l, align 1, !alias.scope !1399, !noalias !1400
  %i.m = zext <4 x i8> %wide.load to <4 x i32>
  %i.n = zext <4 x i8> %wide.load4 to <4 x i32>
  %i.o = getelementptr [4 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store <4 x i32> %i.m, ptr %i.o, align 4, !alias.scope !1401, !noalias !1402
  store <4 x i32> %i.n, ptr %i.p, align 4, !alias.scope !1401, !noalias !1402
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !1396

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhmuNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10bytes_char0NCINvNvBS_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB40_3VecmE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2n_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.i, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %i.r = sub i64 %i.b, %i.c
  %xtraiter = and i64 %i.r, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.s = phi i64 [ %i.w, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.x, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i.prol
  %.val16.i.prol = load i8, ptr %i.t, align 1, !noalias !1400, !noundef !3
  %i.u = zext i8 %.val16.i.prol to i32
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.s
  store i32 %i.u, ptr %i.v, align 4, !noalias !1403
  %i.w = add i64 %i.s, 1                          ; 3 uses
  %i.x = add nuw i64 %.sroa.01.0.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1397

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.w, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.w, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.x, %scalar.ph.prol ]
  %i.y = sub i64 %.sroa.01.0.i.ph, %i.b
  %i.z = add i64 %i.y, %i.c
  %i.aa = icmp ugt i64 %i.z, -4
  br i1 %i.aa, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhmuNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10bytes_char0NCINvNvBS_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB40_3VecmE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2n_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ab = phi i64 [ %i.au, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.av, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %.val16.i = load i8, ptr %i.ac, align 1, !noalias !1400, !noundef !3
  %i.ad = zext i8 %.val16.i to i32
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab
  store i32 %i.ad, ptr %i.ae, align 4, !noalias !1403
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %.val16.i.1 = load i8, ptr %i.ag, align 1, !noalias !1400, !noundef !3
  %i.ah = zext i8 %.val16.i.1 to i32
  %i.ai = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  store i32 %i.ah, ptr %i.aj, align 4, !noalias !1403
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  %.val16.i.2 = load i8, ptr %i.al, align 1, !noalias !1400, !noundef !3
  %i.am = zext i8 %.val16.i.2 to i32
  %i.an = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  store i32 %i.am, ptr %i.ao, align 4, !noalias !1403
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 3
  %.val16.i.3 = load i8, ptr %i.aq, align 1, !noalias !1400, !noundef !3
  %i.ar = zext i8 %.val16.i.3 to i32
  %i.as = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab
  %i.at = getelementptr i8, ptr %i.as, i64 12
  store i32 %i.ar, ptr %i.at, align 4, !noalias !1403
  %i.au = add i64 %i.ab, 4                        ; 2 uses
  %i.av = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.aw = icmp eq i64 %i.av, %i.d
  br i1 %i.aw, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhmuNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10bytes_char0NCINvNvBS_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB40_3VecmE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2n_.exit, label %scalar.ph, !llvm.loop !1398

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhmuNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10bytes_char0NCINvNvBS_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB40_3VecmE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2n_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.i, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.au, %scalar.ph ]
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
end_hunk_1
