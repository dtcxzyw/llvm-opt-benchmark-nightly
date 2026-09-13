Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-sampler?download=true
inline.NumInlined: 6714
inline.NumDeleted: 2633
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_ZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_array:bb.a
  %i.fj = sdiv exact i64 %i.fh, 12                ; 3 uses
  %.sroa.speculated.i.i.i74 = tail call i64 @llvm.umax.i64(i64 %i.fj, i64 1)
  %i.fk = add nsw i64 %.sroa.speculated.i.i.i74, %i.fj ; 2 uses
  %i.fl = icmp ult i64 %i.fk, %i.fj
  %i.fm = tail call i64 @llvm.umin.i64(i64 %i.fk, i64 768614336404564650)
  %i.fn = select i1 %i.fl, i64 768614336404564650, i64 %i.fm ; 3 uses
  %.not.i.i.i75 = icmp ne i64 %i.fn, 0
  tail call void @llvm.assume(i1 %.not.i.i.i75)
  %i.fo = mul nuw nsw i64 %i.fn, 12
  %i.fp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fo) #37
          to label %.noexc78 unwind label %.loopexit ; 4 uses

.noexc78:                                         ; preds = %_ZNKSt6vectorI16llama_token_dataSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 %i.fh ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.fq, ptr noundef nonnull align 4 dereferenceable(12) %i.fe, i64 12, i1 false), !tbaa.struct !289
  %i.fr = icmp sgt i64 %i.fh, 0
  br i1 %i.fr, label %bb.ae, label %_ZNSt6vectorI16llama_token_dataSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

bb.ae:                                            ; preds = %.noexc78
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fp, ptr align 4 %.sroa.0.0197, i64 %i.fh, i1 false)
  br label %_ZNSt6vectorI16llama_token_dataSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

_ZNSt6vectorI16llama_token_dataSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i: ; preds = %bb.ae, %.noexc78
  %.not.i17.i.i76 = icmp eq ptr %.sroa.0.0197, null
  br i1 %.not.i17.i.i76, label %_ZNSt6vectorI16llama_token_dataSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorI16llama_token_dataSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0197, i64 noundef %i.fh) #39
  br label %_ZNSt6vectorI16llama_token_dataSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI16llama_token_dataSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.af, %_ZNSt6vectorI16llama_token_dataSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  %i.fs = getelementptr inbounds nuw [12 x i8], ptr %i.fp, i64 %i.fn
  br label %_ZNSt6vectorI16llama_token_dataSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorI16llama_token_dataSaIS0_EE9push_backERKS0_.exit: ; preds = %_ZNSt6vectorI16llama_token_dataSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.ab
  %.sroa.0.1 = phi ptr [ %i.fp, %_ZNSt6vectorI16llama_token_dataSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %.sroa.0.0197, %bb.ab ] ; 2 uses
  %.pn = phi ptr [ %i.fq, %_ZNSt6vectorI16llama_token_dataSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %.sroa.10.0198, %bb.ab ]
  %.sroa.16.1 = phi ptr [ %i.fs, %_ZNSt6vectorI16llama_token_dataSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %.sroa.16.0199, %bb.ab ] ; 2 uses
  %.sroa.10.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 12 ; 2 uses
  %i.ft = add nuw i64 %.047200, 1                 ; 2 uses
  %exitcond235.not = icmp eq i64 %i.ft, %.2
  br i1 %exitcond235.not, label %._crit_edge203.loopexit, label %.lr.ph202, !llvm.loop !769

.loopexit:                                        ; preds = %_ZNKSt6vectorI16llama_token_dataSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp:                               ; preds = %bb.ad
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i82 = icmp eq ptr %.sroa.0.0197, null
  br i1 %.not.i.i.i82, label %_ZNSt6vectorI16llama_token_dataSaIS0_EED2Ev.exit83.thread, label %bb.al

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP16llama_token_dataSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit: ; preds = %bb.aa, %bb.z
  %i.fu = sdiv exact i64 %i.ex, 12
  store i64 %i.fu, ptr %i.e, align 8, !tbaa !93
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 0, ptr %i.fv, align 8, !tbaa !95
  %.not.i.i.i79 = icmp eq ptr %.sroa.0.0.lcssa, null
  br i1 %.not.i.i.i79, label %_ZNSt6vectorI16llama_token_dataSaIS0_EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP16llama_token_dataSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit.thread, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP16llama_token_dataSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit
  %i.fw = sub i64 %.sroa.16.0.lcssa, %i.ew
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.lcssa, i64 noundef %i.fw) #39
  br label %_ZNSt6vectorI16llama_token_dataSaIS0_EED2Ev.exit

_ZNSt6vectorI16llama_token_dataSaIS0_EED2Ev.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP16llama_token_dataSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit, %bb.ah
  %.not.i.i.i80 = icmp eq ptr %.sroa.098.0115138275292, null
  br i1 %.not.i.i.i80, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorI16llama_token_dataSaIS0_EED2Ev.exit
  %i.fx = sub i64 %.sroa.19.0120137276291, %i.eu
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.098.0115138275292, i64 noundef %i.fx) #39
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorI16llama_token_dataSaIS0_EED2Ev.exit, %bb.ai
  %.not.i.i.i81 = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i81, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.fy = ptrtoint ptr %i.es to i64
  %i.fz = ptrtoint ptr %i.et to i64
  %i.ga = sub i64 %i.fy, %i.fz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef %i.ga) #39
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %bb.ak

bb.ak:                                            ; preds = %bb.a, %_ZNSt6vectorIfSaIfEED2Ev.exit
  ret void

bb.al:                                            ; preds = %bb.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0197, i64 noundef %i.fh) #39
  br label %_ZNSt6vectorI16llama_token_dataSaIS0_EED2Ev.exit83.thread

_ZNSt6vectorI16llama_token_dataSaIS0_EED2Ev.exit83.thread: ; preds = %bb.ag, %bb.al
  %.idx = shl nuw nsw i64 %.pr, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %.idx) #39
  br label %_ZNSt6vectorImSaImEED2Ev.exit85

_ZNSt6vectorImSaImEED2Ev.exit85:                  ; preds = %.loopexit152, %.loopexit.split-lp153, %bb.w, %_ZNSt6vectorI16llama_token_dataSaIS0_EED2Ev.exit83.thread
  %i.gb = phi ptr [ %i.aw, %_ZNSt6vectorI16llama_token_dataSaIS0_EED2Ev.exit83.thread ], [ %i.aw, %bb.w ], [ %i.x, %.loopexit152 ], [ %i.x, %.loopexit.split-lp153 ]
  %i.gc = phi ptr [ %i.ax, %_ZNSt6vectorI16llama_token_dataSaIS0_EED2Ev.exit83.thread ], [ %i.ax, %bb.w ], [ %i.z, %.loopexit152 ], [ %i.z, %.loopexit.split-lp153 ] ; 3 uses
  %.pn65 = phi { ptr, i32 } [ %lpad.phi, %_ZNSt6vectorI16llama_token_dataSaIS0_EED2Ev.exit83.thread ], [ %i.ec, %bb.w ], [ %lpad.loopexit154, %.loopexit152 ], [ %lpad.loopexit.split-lp155, %.loopexit.split-lp153 ]
  %.not.i.i.i86 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i86, label %_ZNSt6vectorIfSaIfEED2Ev.exit87, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit85
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = sub i64 %i.gd, %i.ge
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef %i.gf) #39
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit87

_ZNSt6vectorIfSaIfEED2Ev.exit87:                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit85, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  resume { ptr, i32 } %.pn65
}

; Function Attrs: mustprogress memory(readwrite, argmem: read, target_mem: none) uwtable
define internal noalias noundef nonnull ptr @_ZL27llama_sampler_typical_clonePK13llama_sampler(ptr nofree noundef readonly captures(none) %0) #23 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.c = load float, ptr %i.b, align 8, !tbaa !145 ; 2 uses
  %i.d = fcmp ult float %i.c, 1.000000e+00
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #37, !inline_history !770 ; 2 uses
  store ptr @.str.19, ptr %i.e, align 8, !tbaa !135
  br label %llama_sampler_init_typical.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !146
  %i.h = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #37, !inline_history !771 ; 3 uses
  store float %i.c, ptr %i.h, align 16, !tbaa !145
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.g, ptr %i.i, align 8, !tbaa !146
  br label %llama_sampler_init_typical.exit

llama_sampler_init_typical.exit:                  ; preds = %bb.b, %bb.c
  %_ZL23llama_sampler_typical_i.sink.i = phi ptr [ @_ZL23llama_sampler_typical_i, %bb.c ], [ @_ZL21llama_sampler_empty_i, %bb.b ]
  %.sink.i = phi ptr [ %i.h, %bb.c ], [ %i.e, %bb.b ]
  %i.j = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #37, !inline_history !771 ; 3 uses
  store ptr %_ZL23llama_sampler_typical_i.sink.i, ptr %i.j, align 16, !tbaa !53
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %.sink.i, ptr %i.k, align 8, !tbaa !54
  ret ptr %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL26llama_sampler_typical_freeP13llama_sampler(ptr nofree noundef readonly captures(none) %0) #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 16) #39
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #21

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_SF_T0_T1_"(ptr %0, ptr %1, i64 noundef %2, ptr nofree readonly captures(none) %3) unnamed_addr #24 {
bb.a:
  %.fr28 = freeze ptr %1                          ; 3 uses
  %.fr27 = freeze ptr %0                          ; 42 uses
  %i.a = ptrtoint ptr %.fr27 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr28 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_SF_SF_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr27, i64 8 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph59

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEET_SF_SF_T0_.exit"
  %i.h = icmp eq i64 %i.dx, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph59, !llvm.loop !772

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i.i26.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.fh, %bb.b ] ; 3 uses
  %storemerge24.lcssa = phi ptr [ %.fr28, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i.i.i26.lcssa, 3           ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 4 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = and i64 %.fr.i.i.i26.lcssa, 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.k
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i"
  %.09.us.i.i.i = phi i64 [ %i.av, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i" ], [ %i.k, %._crit_edge ] ; 7 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.09.us.i.i.i
  %i.t = load i64, ptr %i.s, align 8, !tbaa !111  ; 2 uses
  %i.u = icmp slt i64 %.09.us.i.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.us.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i"

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i
  %.val.val.i.us.i.i.i = load ptr, ptr %3, align 8, !tbaa !297 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.us.i.i.i
  %.038.i.us.i.i.i = phi i64 [ %.09.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %spec.select.i.us.i.i.i, %bb.c ] ; 2 uses
  %i.v = shl i64 %.038.i.us.i.i.i, 1              ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.y
  %i.aa = load i64, ptr %i.x, align 8, !tbaa !111
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !111
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i.us.i.i.i, i64 %i.aa
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !86
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i.us.i.i.i, i64 %i.ab
  %i.af = load float, ptr %i.ae, align 4, !tbaa !86
  %i.ag = fcmp olt float %i.ad, %i.af
  %spec.select.i.us.i.i.i = select i1 %i.ag, i64 %i.y, i64 %i.w ; 4 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %spec.select.i.us.i.i.i
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !111
  %i.aj = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.038.i.us.i.i.i
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !111
  %i.ak = icmp slt i64 %spec.select.i.us.i.i.i, %i.m
  br i1 %i.ak, label %bb.c, label %._crit_edge.i.us.i.i.i, !llvm.loop !773

._crit_edge.i.us.i.i.i:                           ; preds = %bb.c
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i.us.i.i.i, i64 %i.t
  %i.am = load float, ptr %i.al, align 4, !tbaa !86
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %._crit_edge.i.us.i.i.i
  %.010.i.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %._crit_edge.i.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.e ] ; 3 uses
  %.0911.in.i.i.us.i.i.i = add nsw i64 %.010.i.i.us.i.i.i, -1
  %.0911.i.i.us.i.i.i = sdiv i64 %.0911.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0911.i.i.us.i.i.i
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !111 ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i.us.i.i.i, i64 %i.ao
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !86
  %i.ar = fcmp olt float %i.aq, %i.am
  br i1 %i.ar, label %bb.e, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i"

bb.e:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.010.i.i.us.i.i.i
  store i64 %i.ao, ptr %i.as, align 8, !tbaa !111
  %i.at = icmp sgt i64 %.0911.i.i.us.i.i.i, %.09.us.i.i.i
  br i1 %i.at, label %bb.d, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i", !llvm.loop !774

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i": ; preds = %bb.e, %bb.d, %.split.us.i.i.i
  %.0.lcssa.i.i.us.i.i.i = phi i64 [ %.09.us.i.i.i, %.split.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.e ], [ %.010.i.i.us.i.i.i, %bb.d ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.us.i.i.i
  store i64 %i.t, ptr %i.au, align 8, !tbaa !111
  %.not.us.i.i.i = icmp eq i64 %.09.us.i.i.i, 0
  %i.av = add nsw i64 %.09.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_SF_RT0_.exit.i.i", label %.split.us.i.i.i, !llvm.loop !775

.split.i.i.i:                                     ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i", %.split.preheader.i.i.i
  %.09.i.i.i = phi i64 [ %i.cc, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i" ], [ %i.k, %.split.preheader.i.i.i ] ; 8 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.09.i.i.i
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !111 ; 2 uses
  %i.ay = icmp slt i64 %.09.i.i.i, %i.m
  br i1 %i.ay, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i
  %.val.val.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !297 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.038.i.i.i.i = phi i64 [ %.09.i.i.i, %.lr.ph.i.i.i.i ], [ %spec.select.i.i.i.i, %bb.f ] ; 2 uses
  %i.az = shl i64 %.038.i.i.i.i, 1                ; 2 uses
  %i.ba = add i64 %i.az, 2                        ; 2 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.ba
  %i.bc = or disjoint i64 %i.az, 1                ; 2 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.bc
  %i.be = load i64, ptr %i.bb, align 8, !tbaa !111
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !111
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i.i.i.i, i64 %i.be
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !86
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i.i.i.i, i64 %i.bf
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !86
  %i.bk = fcmp olt float %i.bh, %i.bj
  %spec.select.i.i.i.i = select i1 %i.bk, i64 %i.bc, i64 %i.ba ; 4 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %spec.select.i.i.i.i
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !111
  %i.bn = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.038.i.i.i.i
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !111
  %i.bo = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.bo, label %bb.f, label %._crit_edge.i.i.i.i, !llvm.loop !773

._crit_edge.i.i.i.i:                              ; preds = %bb.f, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.09.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %bb.f ] ; 2 uses
  %i.bp = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  br i1 %i.bp, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bq = load i64, ptr %i.q, align 8, !tbaa !111
  store i64 %i.bq, ptr %i.r, align 8, !tbaa !111
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.g ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.br = icmp sgt i64 %.1.i.i.i.i, %.09.i.i.i
  br i1 %i.br, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h
  %.val.val.i.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !297 ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i.i.i.i.i, i64 %i.ax
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !86
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.j ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0911.i.i.i.i.i
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !111 ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i.i.i.i.i, i64 %i.bv
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !86
  %i.by = fcmp olt float %i.bx, %i.bt
  br i1 %i.by, label %bb.j, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i"

bb.j:                                             ; preds = %bb.i
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.010.i.i.i.i.i
  store i64 %i.bv, ptr %i.bz, align 8, !tbaa !111
  %i.ca = icmp sgt i64 %.0911.i.i.i.i.i, %.09.i.i.i
  br i1 %i.ca, label %bb.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i", !llvm.loop !774

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i": ; preds = %bb.j, %bb.i, %bb.h
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.h ], [ %.010.i.i.i.i.i, %bb.i ], [ %.0911.i.i.i.i.i, %bb.j ]
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i.i.i
  store i64 %i.ax, ptr %i.cb, align 8, !tbaa !111
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.cc = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_SF_RT0_.exit.i.i", label %.split.i.i.i, !llvm.loop !775

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_SF_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i", %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i"
  %4 = icmp sgt i64 %.fr.i.i.i26.lcssa, 8
  br i1 %4, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_SF_SF_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_SF_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_SF_SF_RT0_.exit.i.i"
  %.sroa.0.03.i.i = phi ptr [ %i.cd, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_SF_SF_RT0_.exit.i.i" ], [ %storemerge24.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_SF_RT0_.exit.i.i" ]
  %i.cd = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !111 ; 2 uses
  %i.cf = load i64, ptr %.fr27, align 8, !tbaa !111
  store i64 %i.cf, ptr %i.cd, align 8, !tbaa !111
  %i.cg = ptrtoint ptr %i.cd to i64
  %i.ch = sub i64 %i.cg, %i.a                     ; 3 uses
  %i.ci = ashr exact i64 %i.ch, 3                 ; 3 uses
  %i.cj = add nsw i64 %i.ci, -1
  %i.ck = lshr i64 %i.cj, 1
  %i.cl = icmp sgt i64 %i.ci, 2
  br i1 %i.cl, label %.lr.ph.i.i.i18.i, label %._crit_edge.i.i.i10.i

.lr.ph.i.i.i18.i:                                 ; preds = %.lr.ph.i9.i
  %.val.val.i.i.i19.i = load ptr, ptr %3, align 8, !tbaa !297 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i.i.i18.i
  %.038.i.i.i20.i = phi i64 [ 0, %.lr.ph.i.i.i18.i ], [ %spec.select.i.i.i21.i, %bb.k ] ; 2 uses
  %i.cm = shl i64 %.038.i.i.i20.i, 1              ; 2 uses
  %i.cn = add i64 %i.cm, 2                        ; 2 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.cn
  %i.cp = or disjoint i64 %i.cm, 1                ; 2 uses
  %i.cq = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.cp
  %i.cr = load i64, ptr %i.co, align 8, !tbaa !111
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !111
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i.i.i19.i, i64 %i.cr
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !86
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i.i.i19.i, i64 %i.cs
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !86
  %i.cx = fcmp olt float %i.cu, %i.cw
  %spec.select.i.i.i21.i = select i1 %i.cx, i64 %i.cp, i64 %i.cn ; 4 uses
  %i.cy = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %spec.select.i.i.i21.i
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !111
  %i.da = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.038.i.i.i20.i
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !111
  %i.db = icmp slt i64 %spec.select.i.i.i21.i, %i.ck
  br i1 %i.db, label %bb.k, label %._crit_edge.i.i.i10.i, !llvm.loop !773

._crit_edge.i.i.i10.i:                            ; preds = %bb.k, %.lr.ph.i9.i
  %.0.lcssa.i.i.i11.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i21.i, %bb.k ] ; 5 uses
  %i.dc = and i64 %i.ch, 8
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i.i10.i
  %i.de = add nsw i64 %i.ci, -2
  %i.df = ashr exact i64 %i.de, 1
  %i.dg = icmp eq i64 %.0.lcssa.i.i.i11.i, %i.df
  br i1 %i.dg, label %.thread.i.i.i, label %bb.m

.thread.i.i.i:                                    ; preds = %bb.l
  %i.dh = shl nuw nsw i64 %.0.lcssa.i.i.i11.i, 1
  %i.di = or disjoint i64 %i.dh, 1                ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.di
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !111
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i11.i
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !111
  br label %.lr.ph.i.i.i.i13.i

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i.i10.i
  %.not.i.i12.i = icmp eq i64 %.0.lcssa.i.i.i11.i, 0
  br i1 %.not.i.i12.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_SF_SF_RT0_.exit.i.i", label %.lr.ph.i.i.i.i13.i

.lr.ph.i.i.i.i13.i:                               ; preds = %bb.m, %.thread.i.i.i
  %.1.i6.i.i.i = phi i64 [ %i.di, %.thread.i.i.i ], [ %.0.lcssa.i.i.i11.i, %bb.m ]
  %.val.val.i.i.i.i14.i = load ptr, ptr %3, align 8, !tbaa !297 ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i.i.i.i14.i, i64 %i.ce
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !86
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.lr.ph.i.i.i.i13.i
  %.010.i.i.i.i15.i = phi i64 [ %.1.i6.i.i.i, %.lr.ph.i.i.i.i13.i ], [ %.0911.i.i78.i.i.i, %bb.o ] ; 3 uses
  %.0911.in.i.i.i.i16.i = add nsw i64 %.010.i.i.i.i15.i, -1
  %.0911.i.i78.i.i.i = lshr i64 %.0911.in.i.i.i.i16.i, 1 ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0911.i.i78.i.i.i
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !111 ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i.i.i.i14.i, i64 %i.dp
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !86
  %i.ds = fcmp olt float %i.dr, %i.dn
  br i1 %i.ds, label %bb.o, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_SF_SF_RT0_.exit.i.i"

bb.o:                                             ; preds = %bb.n
  %i.dt = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.010.i.i.i.i15.i
  store i64 %i.dp, ptr %i.dt, align 8, !tbaa !111
  %.not9.i.i.i = icmp eq i64 %.0911.i.i78.i.i.i, 0
  br i1 %.not9.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_SF_SF_RT0_.exit.i.i", label %bb.n, !llvm.loop !774

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_SF_SF_RT0_.exit.i.i": ; preds = %bb.o, %bb.n, %bb.m
  %.0.lcssa.i.i.i.i17.i = phi i64 [ 0, %bb.m ], [ %.010.i.i.i.i15.i, %bb.n ], [ 0, %bb.o ]
  %i.du = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i.i17.i
  store i64 %i.ce, ptr %i.du, align 8, !tbaa !111
  %i.dv = icmp sgt i64 %i.ch, 8
  br i1 %i.dv, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_SF_SF_T0_.exit", !llvm.loop !776

.lr.ph59:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2458 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %.fr28, %.lr.ph ] ; 3 uses
  %.02557 = phi i64 [ %i.dx, %bb.b ], [ %2, %.lr.ph ]
  %i.dw = phi i64 [ %i.fi, %bb.b ], [ %i.d, %.lr.ph ]
  %i.dx = add nsw i64 %.02557, -1                 ; 3 uses
  %.val = load ptr, ptr %3, align 8, !tbaa !297   ; 6 uses
  %i.dy = lshr i64 %i.dw, 1
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.dy ; 3 uses
  %i.ea = getelementptr inbounds i8, ptr %storemerge2458, i64 -8 ; 3 uses
  %i.eb = load i64, ptr %i.f, align 8, !tbaa !111 ; 3 uses
  %i.ec = load i64, ptr %i.dz, align 8, !tbaa !111 ; 3 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.eb
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !86 ; 3 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.ec
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !86 ; 3 uses
  %i.eh = fcmp olt float %i.ee, %i.eg
  %i.ei = load i64, ptr %i.ea, align 8, !tbaa !111 ; 3 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.ei
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !86 ; 4 uses
  br i1 %i.eh, label %bb.p, label %bb.u

bb.p:                                             ; preds = %.lr.ph59
  %i.el = fcmp olt float %i.eg, %i.ek
  br i1 %i.el, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.em = load i64, ptr %.fr27, align 8, !tbaa !111
  store i64 %i.ec, ptr %.fr27, align 8, !tbaa !111
  store i64 %i.em, ptr %i.dz, align 8, !tbaa !111
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.r:                                             ; preds = %bb.p
  %i.en = fcmp olt float %i.ee, %i.ek
  %i.eo = load i64, ptr %.fr27, align 8, !tbaa !111 ; 2 uses
  br i1 %i.en, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i64 %i.ei, ptr %.fr27, align 8, !tbaa !111
  store i64 %i.eo, ptr %i.ea, align 8, !tbaa !111
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.t:                                             ; preds = %bb.r
  store i64 %i.eb, ptr %.fr27, align 8, !tbaa !111
  store i64 %i.eo, ptr %i.f, align 8, !tbaa !111
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.u:                                             ; preds = %.lr.ph59
  %i.ep = fcmp olt float %i.ee, %i.ek
  br i1 %i.ep, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.eq = load i64, ptr %.fr27, align 8, !tbaa !111
  store i64 %i.eb, ptr %.fr27, align 8, !tbaa !111
  store i64 %i.eq, ptr %i.f, align 8, !tbaa !111
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.w:                                             ; preds = %bb.u
  %i.er = fcmp olt float %i.eg, %i.ek
  %i.es = load i64, ptr %.fr27, align 8, !tbaa !111 ; 2 uses
  br i1 %i.er, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i64 %i.ei, ptr %.fr27, align 8, !tbaa !111
  store i64 %i.es, ptr %i.ea, align 8, !tbaa !111
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.y:                                             ; preds = %bb.w
  store i64 %i.ec, ptr %.fr27, align 8, !tbaa !111
  store i64 %i.es, ptr %i.dz, align 8, !tbaa !111
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader": ; preds = %bb.y, %bb.x, %bb.v, %bb.t, %bb.s, %bb.q
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_SF_SF_SF_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_SF_SF_SF_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader", %bb.ab
  %.sroa.09.0.i.i = phi ptr [ %.sroa.09.1.i.i, %bb.ab ], [ %storemerge2458, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader" ]
  %.sroa.012.0.i.i = phi ptr [ %i.fa, %bb.ab ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader" ]
  %i.et = load i64, ptr %.fr27, align 8, !tbaa !111
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.et
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !86 ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_SF_SF_SF_T0_.exit.i"
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_SF_SF_SF_T0_.exit.i" ], [ %i.fa, %bb.z ] ; 8 uses
  %i.ew = load i64, ptr %.sroa.012.1.i.i, align 8, !tbaa !111 ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.ew
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !86
  %i.ez = fcmp olt float %i.ey, %i.ev
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.ez, label %bb.z, label %.preheader.i.i, !llvm.loop !777

.preheader.i.i:                                   ; preds = %bb.z, %.preheader.i.i
  %.sroa.09.0.pn.i.i = phi ptr [ %.sroa.09.1.i.i, %.preheader.i.i ], [ %.sroa.09.0.i.i, %bb.z ]
  %.sroa.09.1.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -8 ; 5 uses
  %i.fb = load i64, ptr %.sroa.09.1.i.i, align 8, !tbaa !111 ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.fb
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !86
  %i.fe = fcmp olt float %i.ev, %i.fd
  br i1 %i.fe, label %.preheader.i.i, label %bb.aa, !llvm.loop !778

bb.aa:                                            ; preds = %.preheader.i.i
  %i.ff = icmp ult ptr %.sroa.012.1.i.i, %.sroa.09.1.i.i
  br i1 %i.ff, label %bb.ab, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEET_SF_SF_T0_.exit"

bb.ab:                                            ; preds = %bb.aa
  store i64 %i.fb, ptr %.sroa.012.1.i.i, align 8, !tbaa !111
  store i64 %i.ew, ptr %.sroa.09.1.i.i, align 8, !tbaa !111
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_SF_SF_SF_T0_.exit.i", !llvm.loop !779

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEET_SF_SF_T0_.exit": ; preds = %bb.aa
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_SF_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2458, i64 noundef %i.dx, ptr nonnull %3)
  %i.fg = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.fh = sub i64 %i.fg, %i.a                     ; 2 uses
  %i.fi = ashr exact i64 %i.fh, 3                 ; 2 uses
  %i.fj = icmp sgt i64 %i.fi, 16
  br i1 %i.fj, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_SF_SF_T0_.exit", !llvm.loop !772

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_SF_SF_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEET_SF_SF_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_SF_SF_RT0_.exit.i.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_SF_RT0_.exit.i.i"
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZL23llama_sampler_temp_namePK13llama_sampler(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = tail call noundef ptr @_ZN21llama_sampler_backend8get_nameEv(ptr noundef nonnull align 8 dereferenceable(66) %i.b)
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL24llama_sampler_temp_applyP13llama_samplerP22llama_token_data_array(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #27 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.d = load float, ptr %i.c, align 4, !tbaa !148 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !93   ; 8 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_ZL23llama_sampler_temp_implP22llama_token_data_arrayf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = fcmp ugt float %i.d, 0.000000e+00
  %i.i = load ptr, ptr %1, align 8, !tbaa !92     ; 12 uses
  br i1 %i.h, label %.preheader.i.preheader, label %bb.c

.preheader.i.preheader:                           ; preds = %bb.b
  %min.iters.check = icmp ult i64 %i.f, 5
  br i1 %min.iters.check, label %.preheader.i.preheader9, label %vector.ph

.preheader.i.preheader9:                          ; preds = %vector.body, %.preheader.i.preheader
  %.030.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %n.vec, %vector.body ]
  br label %.preheader.i

vector.ph:                                        ; preds = %.preheader.i.preheader
  %i.j = and i64 %i.f, 3                          ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = select i1 %i.k, i64 4, i64 %i.j
  %n.vec = sub i64 %i.f, %i.l                     ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.d, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.m = getelementptr inbounds nuw [12 x i8], ptr %i.i, i64 %index
  %i.n = getelementptr inbounds nuw [12 x i8], ptr %i.i, i64 %index
  %i.o = getelementptr inbounds nuw [12 x i8], ptr %i.i, i64 %index
  %i.p = getelementptr inbounds nuw [12 x i8], ptr %i.i, i64 %index
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 28 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 2 uses
  %i.u = load float, ptr %i.q, align 4, !tbaa !290
  %i.v = load float, ptr %i.r, align 4, !tbaa !290
  %i.w = load float, ptr %i.s, align 4, !tbaa !290
  %i.x = load float, ptr %i.t, align 4, !tbaa !290
  %i.y = insertelement <4 x float> poison, float %i.u, i64 0
  %i.z = insertelement <4 x float> %i.y, float %i.v, i64 1
  %i.aa = insertelement <4 x float> %i.z, float %i.w, i64 2
  %i.ab = insertelement <4 x float> %i.aa, float %i.x, i64 3
  %i.ac = fdiv <4 x float> %i.ab, %broadcast.splat ; 4 uses
  %i.ad = extractelement <4 x float> %i.ac, i64 0
  store float %i.ad, ptr %i.q, align 4, !tbaa !290
  %i.ae = extractelement <4 x float> %i.ac, i64 1
  store float %i.ae, ptr %i.r, align 4, !tbaa !290
  %i.af = extractelement <4 x float> %i.ac, i64 2
  store float %i.af, ptr %i.s, align 4, !tbaa !290
  %i.ag = extractelement <4 x float> %i.ac, i64 3
  store float %i.ag, ptr %i.t, align 4, !tbaa !290
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %.preheader.i.preheader9, label %vector.body, !llvm.loop !780

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.f, 1
  br i1 %.not.i, label %_ZL23llama_sampler_temp_implP22llama_token_data_arrayf.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !290 ; 2 uses
  %i.ak = add i64 %i.f, -1                        ; 3 uses
  %xtraiter = and i64 %i.ak, 1
  %i.al = icmp eq i64 %i.f, 2
  br i1 %i.al, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.ak, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.preheader.i.new
  %.02129.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %i.bb, %bb.h ] ; 4 uses
  %.02228.i = phi float [ %i.aj, %.lr.ph.preheader.i.new ], [ %.1.i.1, %bb.h ] ; 2 uses
  %.02327.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %.124.i.1, %bb.h ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %bb.h ]
  %i.am = getelementptr inbounds nuw [12 x i8], ptr %i.i, i64 %.02129.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 3 uses
  %i.ao = load float, ptr %i.an, align 4, !tbaa !290
  %i.ap = fcmp ogt float %i.ao, %.02228.i
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.aq = getelementptr inbounds nuw [12 x i8], ptr %i.i, i64 %.02327.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store float -inf, ptr %i.ar, align 4, !tbaa !290
  %i.as = load float, ptr %i.an, align 4, !tbaa !290
  br label %.lr.ph.i.1

bb.e:                                             ; preds = %.lr.ph.i
  store float -inf, ptr %i.an, align 4, !tbaa !290
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.e, %bb.d
  %.124.i = phi i64 [ %.02129.i, %bb.d ], [ %.02327.i, %bb.e ] ; 2 uses
  %.1.i = phi float [ %i.as, %bb.d ], [ %.02228.i, %bb.e ] ; 2 uses
  %i.at = add nuw i64 %.02129.i, 1                ; 2 uses
  %i.au = getelementptr inbounds nuw [12 x i8], ptr %i.i, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4 ; 3 uses
  %i.aw = load float, ptr %i.av, align 4, !tbaa !290
  %i.ax = fcmp ogt float %i.aw, %.1.i
  br i1 %i.ax, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.1
  store float -inf, ptr %i.av, align 4, !tbaa !290
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.1
  %i.ay = getelementptr inbounds nuw [12 x i8], ptr %i.i, i64 %.124.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store float -inf, ptr %i.az, align 4, !tbaa !290
  %i.ba = load float, ptr %i.av, align 4, !tbaa !290
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.124.i.1 = phi i64 [ %i.at, %bb.g ], [ %.124.i, %bb.f ] ; 2 uses
  %.1.i.1 = phi float [ %i.ba, %bb.g ], [ %.1.i, %bb.f ] ; 2 uses
  %i.bb = add nuw i64 %.02129.i, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZL23llama_sampler_temp_implP22llama_token_data_arrayf.exit.loopexit10.unr-lcssa, label %.lr.ph.i, !llvm.loop !11

.preheader.i:                                     ; preds = %.preheader.i.preheader9, %.preheader.i
  %.030.i = phi i64 [ %i.bg, %.preheader.i ], [ %.030.i.ph, %.preheader.i.preheader9 ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [12 x i8], ptr %i.i, i64 %.030.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4 ; 2 uses
  %i.be = load float, ptr %i.bd, align 4, !tbaa !290
  %i.bf = fdiv float %i.be, %i.d
  store float %i.bf, ptr %i.bd, align 4, !tbaa !290
  %i.bg = add nuw i64 %.030.i, 1                  ; 2 uses
  %exitcond32.not.i = icmp eq i64 %i.bg, %i.f
  br i1 %exitcond32.not.i, label %_ZL23llama_sampler_temp_implP22llama_token_data_arrayf.exit, label %.preheader.i, !llvm.loop !781

_ZL23llama_sampler_temp_implP22llama_token_data_arrayf.exit.loopexit10.unr-lcssa: ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL23llama_sampler_temp_implP22llama_token_data_arrayf.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZL23llama_sampler_temp_implP22llama_token_data_arrayf.exit.loopexit10.unr-lcssa, %.lr.ph.preheader.i
  %.02129.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %i.bb, %_ZL23llama_sampler_temp_implP22llama_token_data_arrayf.exit.loopexit10.unr-lcssa ]
  %.02228.i.epil.init = phi float [ %i.aj, %.lr.ph.preheader.i ], [ %.1.i.1, %_ZL23llama_sampler_temp_implP22llama_token_data_arrayf.exit.loopexit10.unr-lcssa ]
  %.02327.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %.124.i.1, %_ZL23llama_sampler_temp_implP22llama_token_data_arrayf.exit.loopexit10.unr-lcssa ]
  %lcmp.mod11 = trunc i64 %i.ak to i1
  tail call void @llvm.assume(i1 %lcmp.mod11)
  %i.bh = getelementptr inbounds nuw [12 x i8], ptr %i.i, i64 %.02129.i.epil.init
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4 ; 2 uses
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !290
  %i.bk = fcmp ogt float %i.bj, %.02228.i.epil.init
  br i1 %i.bk, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.epil.preheader
  store float -inf, ptr %i.bi, align 4, !tbaa !290
  br label %_ZL23llama_sampler_temp_implP22llama_token_data_arrayf.exit

bb.j:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.bl = getelementptr inbounds nuw [12 x i8], ptr %i.i, i64 %.02327.i.epil.init
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  store float -inf, ptr %i.bm, align 4, !tbaa !290
  br label %_ZL23llama_sampler_temp_implP22llama_token_data_arrayf.exit

_ZL23llama_sampler_temp_implP22llama_token_data_arrayf.exit: ; preds = %_ZL23llama_sampler_temp_implP22llama_token_data_arrayf.exit.loopexit10.unr-lcssa, %bb.j, %bb.i, %.preheader.i, %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noalias noundef nonnull ptr @_ZL24llama_sampler_temp_clonePK13llama_sampler(ptr nofree noundef readonly captures(none) %0) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.d = load float, ptr %i.c, align 4, !tbaa !148 ; 2 uses
  %i.e = fcmp oeq float %i.d, 1.000000e+00
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #37, !inline_history !782 ; 2 uses
  store ptr @.str.20, ptr %i.f, align 8, !tbaa !135
  br label %llama_sampler_init_temp.exit

end_hunk_0
begin_hunk_1_@_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi:bb.a
bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.f) #39
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !201  ; 8 uses
  %i.aa = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ab = sub i64 %i.aa, %i.e                     ; 2 uses
  %i.ac = ashr exact i64 %i.ab, 2                 ; 2 uses
  %i.ad = icmp ugt i64 %1, %i.ac
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = load i32, ptr %2, align 4, !tbaa !84    ; 3 uses
  %.not5.i.i.i.i = icmp eq ptr %i.c, %i.z
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.f
  %i.af = add i64 %i.aa, -4
  %i.ag = sub i64 %i.af, %i.e                     ; 2 uses
  %i.ah = lshr i64 %i.ag, 2
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %min.iters.check24 = icmp ult i64 %i.ag, 28
  br i1 %min.iters.check24, label %.lr.ph.i.i.i.i.preheader62, label %vector.ph25

vector.ph25:                                      ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec26 = and i64 %i.ai, 9223372036854775800   ; 3 uses
  %i.aj = shl i64 %n.vec26, 2
  %i.ak = getelementptr i8, ptr %i.c, i64 %i.aj
  %broadcast.splatinsert27 = insertelement <4 x i32> poison, i32 %i.ae, i64 0
  %broadcast.splat28 = shufflevector <4 x i32> %broadcast.splatinsert27, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body29

vector.body29:                                    ; preds = %vector.body29, %vector.ph25
  %index30 = phi i64 [ 0, %vector.ph25 ], [ %index.next32, %vector.body29 ] ; 2 uses
  %i.al = shl i64 %index30, 2
  %next.gep31 = getelementptr i8, ptr %i.c, i64 %i.al ; 2 uses
  %i.am = getelementptr i8, ptr %next.gep31, i64 16
  store <4 x i32> %broadcast.splat28, ptr %next.gep31, align 4, !tbaa !84
  store <4 x i32> %broadcast.splat28, ptr %i.am, align 4, !tbaa !84
  %index.next32 = add nuw i64 %index30, 8         ; 2 uses
  %i.an = icmp eq i64 %index.next32, %n.vec26
  br i1 %i.an, label %middle.block33, label %vector.body29, !llvm.loop !1274

middle.block33:                                   ; preds = %vector.body29
  %cmp.n34 = icmp eq i64 %i.ai, %n.vec26
  br i1 %cmp.n34, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.loopexit, label %.lr.ph.i.i.i.i.preheader62

.lr.ph.i.i.i.i.preheader62:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block33
  %.06.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.ak, %middle.block33 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader62, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %.06.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader62 ] ; 2 uses
  store i32 %i.ae, ptr %.06.i.i.i.i, align 4, !tbaa !84
  %i.ao = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.ao, %i.z
  br i1 %.not.i.i.i.i11, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !1275

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i, %middle.block33
  %.pre = load i32, ptr %2, align 4, !tbaa !84
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit: ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.loopexit, %bb.f
  %i.ap = phi i32 [ %.pre, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.loopexit ], [ %i.ae, %bb.f ] ; 2 uses
  %i.aq = sub nuw i64 %1, %i.ac
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.aq, 2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx.i.i.i.i.i ; 2 uses
  %i.as = shl i64 %1, 2
  %i.at = add i64 %i.as, -4
  %i.au = sub i64 %i.at, %i.ab                    ; 2 uses
  %i.av = lshr i64 %i.au, 2
  %i.aw = add nuw nsw i64 %i.av, 1                ; 2 uses
  %min.iters.check37 = icmp ult i64 %i.au, 28
  br i1 %min.iters.check37, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph38

vector.ph38:                                      ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit
  %n.vec39 = and i64 %i.aw, 9223372036854775800   ; 3 uses
  %i.ax = shl i64 %n.vec39, 2
  %i.ay = getelementptr i8, ptr %i.z, i64 %i.ax
  %broadcast.splatinsert40 = insertelement <4 x i32> poison, i32 %i.ap, i64 0
  %broadcast.splat41 = shufflevector <4 x i32> %broadcast.splatinsert40, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body42

vector.body42:                                    ; preds = %vector.body42, %vector.ph38
  %index43 = phi i64 [ 0, %vector.ph38 ], [ %index.next45, %vector.body42 ] ; 2 uses
  %i.az = shl i64 %index43, 2
  %next.gep44 = getelementptr i8, ptr %i.z, i64 %i.az ; 2 uses
  %i.ba = getelementptr i8, ptr %next.gep44, i64 16
  store <4 x i32> %broadcast.splat41, ptr %next.gep44, align 4, !tbaa !84
  store <4 x i32> %broadcast.splat41, ptr %i.ba, align 4, !tbaa !84
  %index.next45 = add nuw i64 %index43, 8         ; 2 uses
  %i.bb = icmp eq i64 %index.next45, %n.vec39
  br i1 %i.bb, label %middle.block46, label %vector.body42, !llvm.loop !1276

middle.block46:                                   ; preds = %vector.body42
  %cmp.n47 = icmp eq i64 %i.aw, %n.vec39
  br i1 %cmp.n47, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit, %middle.block46
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.z, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit ], [ %i.ay, %middle.block46 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.ap, ptr %.06.i.i.i.i.i.i.i, align 4, !tbaa !84
  %i.bc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bc, %i.ar
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1277

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block46
  store ptr %i.ar, ptr %i.y, align 8, !tbaa !201
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.bd = icmp eq i64 %1, 0
  br i1 %i.bd, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.idx.i.i = shl nuw nsw i64 %1, 2               ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i ; 3 uses
  %i.bf = load i32, ptr %2, align 4, !tbaa !84    ; 2 uses
  %i.bg = add nsw i64 %.idx.i.i, -4               ; 2 uses
  %i.bh = lshr exact i64 %i.bg, 2
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bg, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i12.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.h
  %n.vec = and i64 %i.bi, 9223372036854775800     ; 3 uses
  %i.bj = shl i64 %n.vec, 2
  %i.bk = getelementptr i8, ptr %i.c, i64 %i.bj
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bf, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bl = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.bl ; 2 uses
  %i.bm = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !84
  store <4 x i32> %broadcast.splat, ptr %i.bm, align 4, !tbaa !84
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !1278

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit, label %.lr.ph.i.i.i.i12.preheader

.lr.ph.i.i.i.i12.preheader:                       ; preds = %bb.h, %middle.block
  %.06.i.i.i.i13.ph = phi ptr [ %i.c, %bb.h ], [ %i.bk, %middle.block ]
  br label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %.lr.ph.i.i.i.i12.preheader, %.lr.ph.i.i.i.i12
  %.06.i.i.i.i13 = phi ptr [ %i.bo, %.lr.ph.i.i.i.i12 ], [ %.06.i.i.i.i13.ph, %.lr.ph.i.i.i.i12.preheader ] ; 2 uses
  store i32 %i.bf, ptr %.06.i.i.i.i13, align 4, !tbaa !84
  %i.bo = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i13, i64 4 ; 2 uses
  %.not.i.i.i.i14 = icmp eq ptr %i.bo, %i.be
  br i1 %.not.i.i.i.i14, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit, label %.lr.ph.i.i.i.i12, !llvm.loop !1279

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit:              ; preds = %.lr.ph.i.i.i.i12, %middle.block, %bb.g
  %.0.i.i = phi ptr [ %i.c, %bb.g ], [ %i.be, %middle.block ], [ %i.be, %.lr.ph.i.i.i.i12 ] ; 2 uses
  %.not.i = icmp eq ptr %i.z, %.0.i.i
  br i1 %.not.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i:          ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit
  store ptr %.0.i.i, ptr %i.y, align 8, !tbaa !201
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit, %bb.d, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #24 {
bb.a:
  %.fr28 = freeze ptr %1                          ; 3 uses
  %.fr27 = freeze ptr %0                          ; 44 uses
  %i.a = ptrtoint ptr %.fr27 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr28 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr27, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.fr27, i64 4 ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.fr27, i64 12 ; 3 uses
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph46

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEET_SF_SF_T0_.exit"
  %i.j = icmp eq i64 %i.da, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph46, !llvm.loop !1280

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i.i26.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.ek, %bb.b ] ; 3 uses
  %storemerge24.lcssa = phi ptr [ %.fr28, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.k = lshr i64 %.fr.i.i.i26.lcssa, 3           ; 2 uses
  %i.l = add nsw i64 %i.k, -2                     ; 2 uses
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = add nsw i64 %i.k, -1
  %i.o = lshr i64 %i.n, 1                         ; 4 uses
  %i.p = and i64 %.fr.i.i.i26.lcssa, 8
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.r = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.r
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.m
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i"
  %.010.us.i.i.i = phi i64 [ %i.ao, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i" ], [ %i.m, %._crit_edge ] ; 7 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.010.us.i.i.i
  %.sroa.03.0.copyload.us.i.i.i = load i64, ptr %i.u, align 4 ; 2 uses
  %i.v = icmp slt i64 %.010.us.i.i.i, %i.o
  br i1 %i.v, label %.lr.ph.i.us.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i"

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.036.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.010.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.w = shl i64 %.036.i.us.i.i.i, 1              ; 2 uses
  %i.x = add i64 %i.w, 2                          ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.x
  %i.z = or disjoint i64 %i.w, 1                  ; 2 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.z
  %.val.i.i.us.i.i.i = load i32, ptr %i.y, align 4, !tbaa !627
  %.val1.i.i.us.i.i.i = load i32, ptr %i.aa, align 4, !tbaa !627
  %i.ab = icmp slt i32 %.val.i.i.us.i.i.i, %.val1.i.i.us.i.i.i
  %spec.select.i.us.i.i.i = select i1 %i.ab, i64 %i.z, i64 %i.x ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %spec.select.i.us.i.i.i
  %i.ad = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.036.i.us.i.i.i
  %i.ae = load <2 x i32>, ptr %i.ac, align 4, !tbaa !84
  store <2 x i32> %i.ae, ptr %i.ad, align 4, !tbaa !84
  %i.af = icmp slt i64 %spec.select.i.us.i.i.i, %i.o
  br i1 %i.af, label %.lr.ph.i.us.i.i.i, label %._crit_edge.i.us.i.i.i, !llvm.loop !1281

._crit_edge.i.us.i.i.i:                           ; preds = %.lr.ph.i.us.i.i.i
  %.sroa.03.0.extract.trunc.i.i.us.i.i.i = trunc i64 %.sroa.03.0.copyload.us.i.i.i to i32
  br label %.lr.ph.i.i.us.i.i.i

.lr.ph.i.i.us.i.i.i:                              ; preds = %bb.c, %._crit_edge.i.us.i.i.i
  %.010.i.i.us.i.i.i = phi i64 [ %.0911.i.i.us.i.i.i, %bb.c ], [ %spec.select.i.us.i.i.i, %._crit_edge.i.us.i.i.i ] ; 3 uses
  %.0911.in.i.i.us.i.i.i = add nsw i64 %.010.i.i.us.i.i.i, -1
  %.0911.i.i.us.i.i.i = sdiv i64 %.0911.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0911.i.i.us.i.i.i ; 2 uses
  %.val.i.i.i.us.i.i.i = load i32, ptr %i.ag, align 4, !tbaa !627 ; 2 uses
  %i.ah = icmp slt i32 %.val.i.i.i.us.i.i.i, %.sroa.03.0.extract.trunc.i.i.us.i.i.i
  br i1 %i.ah, label %bb.c, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i"

bb.c:                                             ; preds = %.lr.ph.i.i.us.i.i.i
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.010.i.i.us.i.i.i ; 2 uses
  store i32 %.val.i.i.i.us.i.i.i, ptr %i.ai, align 4, !tbaa !627
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !84
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !628
  %i.am = icmp sgt i64 %.0911.i.i.us.i.i.i, %.010.us.i.i.i
  br i1 %i.am, label %.lr.ph.i.i.us.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i", !llvm.loop !1282

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i": ; preds = %bb.c, %.lr.ph.i.i.us.i.i.i, %.split.us.i.i.i
  %.0.lcssa.i.i.us.i.i.i = phi i64 [ %.010.us.i.i.i, %.split.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.c ], [ %.010.i.i.us.i.i.i, %.lr.ph.i.i.us.i.i.i ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.us.i.i.i
  store i64 %.sroa.03.0.copyload.us.i.i.i, ptr %i.an, align 4
  %.not.us.i.i.i = icmp eq i64 %.010.us.i.i.i, 0
  %i.ao = add nsw i64 %.010.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_RT0_.exit.i.i", label %.split.us.i.i.i, !llvm.loop !1283

.split.i.i.i:                                     ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i", %.split.preheader.i.i.i
  %.010.i.i.i = phi i64 [ %i.bm, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i" ], [ %i.m, %.split.preheader.i.i.i ] ; 8 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.010.i.i.i
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %i.ap, align 4 ; 2 uses
  %i.aq = icmp slt i64 %.010.i.i.i, %i.o
  br i1 %i.aq, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.036.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.010.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.ar = shl i64 %.036.i.i.i.i, 1                ; 2 uses
  %i.as = add i64 %i.ar, 2                        ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.as
  %i.au = or disjoint i64 %i.ar, 1                ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.au
  %.val.i.i.i.i.i = load i32, ptr %i.at, align 4, !tbaa !627
  %.val1.i.i.i.i.i = load i32, ptr %i.av, align 4, !tbaa !627
  %i.aw = icmp slt i32 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.aw, i64 %i.au, i64 %i.as ; 4 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %spec.select.i.i.i.i
  %i.ay = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.036.i.i.i.i
  %i.az = load <2 x i32>, ptr %i.ax, align 4, !tbaa !84
  store <2 x i32> %i.az, ptr %i.ay, align 4, !tbaa !84
  %i.ba = icmp slt i64 %spec.select.i.i.i.i, %i.o
  br i1 %i.ba, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1281

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.010.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bb = icmp eq i64 %.0.lcssa.i.i.i.i, %i.m
  br i1 %i.bb, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bc = load <2 x i32>, ptr %i.s, align 4, !tbaa !84
  store <2 x i32> %i.bc, ptr %i.t, align 4, !tbaa !84
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.r, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %.sroa.03.0.extract.trunc.i.i.i.i.i = trunc i64 %.sroa.03.0.copyload.i.i.i to i32
  %i.bd = icmp sgt i64 %.1.i.i.i.i, %.010.i.i.i
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.010.i.i.i.i.i = phi i64 [ %.0911.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0911.i.i.i.i.i ; 2 uses
  %.val.i.i.i.i.i.i = load i32, ptr %i.be, align 4, !tbaa !627 ; 2 uses
  %i.bf = icmp slt i32 %.val.i.i.i.i.i.i, %.sroa.03.0.extract.trunc.i.i.i.i.i
  br i1 %i.bf, label %bb.f, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.010.i.i.i.i.i ; 2 uses
  store i32 %.val.i.i.i.i.i.i, ptr %i.bg, align 4, !tbaa !627
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !84
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !628
  %i.bk = icmp sgt i64 %.0911.i.i.i.i.i, %.010.i.i.i
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i", !llvm.loop !1282

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.f ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i.i.i
  store i64 %.sroa.03.0.copyload.i.i.i, ptr %i.bl, align 4
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.bm = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_RT0_.exit.i.i", label %.split.i.i.i, !llvm.loop !1283

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i", %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i"
  %3 = icmp sgt i64 %.fr.i.i.i26.lcssa, 8
  br i1 %3, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_RT0_.exit.i.i"
  %.sroa.0.03.i.i = phi ptr [ %i.bn, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_RT0_.exit.i.i" ], [ %storemerge24.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_RT0_.exit.i.i" ] ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %.sroa.03.0.copyload.i.i10.i = load i64, ptr %i.bn, align 4 ; 2 uses
  %i.bo = load i32, ptr %.fr27, align 4, !tbaa !84
  store i32 %i.bo, ptr %i.bn, align 4, !tbaa !627
  %i.bp = load i32, ptr %i.g, align 4, !tbaa !84
  %i.bq = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -4
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !628
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = sub i64 %i.br, %i.a                     ; 3 uses
  %i.bt = ashr exact i64 %i.bs, 3                 ; 3 uses
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = lshr i64 %i.bu, 1
  %i.bw = icmp sgt i64 %i.bt, 2
  br i1 %i.bw, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i11.i

.lr.ph.i.i.i19.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i19.i
  %.036.i.i.i20.i = phi i64 [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.bx = shl i64 %.036.i.i.i20.i, 1              ; 2 uses
  %i.by = add i64 %i.bx, 2                        ; 2 uses
  %i.bz = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.by
  %i.ca = or disjoint i64 %i.bx, 1                ; 2 uses
  %i.cb = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.ca
  %.val.i.i.i.i21.i = load i32, ptr %i.bz, align 4, !tbaa !627
  %.val1.i.i.i.i22.i = load i32, ptr %i.cb, align 4, !tbaa !627
  %i.cc = icmp slt i32 %.val.i.i.i.i21.i, %.val1.i.i.i.i22.i
  %spec.select.i.i.i23.i = select i1 %i.cc, i64 %i.ca, i64 %i.by ; 4 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %spec.select.i.i.i23.i
  %i.ce = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.036.i.i.i20.i
  %i.cf = load <2 x i32>, ptr %i.cd, align 4, !tbaa !84
  store <2 x i32> %i.cf, ptr %i.ce, align 4, !tbaa !84
  %i.cg = icmp slt i64 %spec.select.i.i.i23.i, %i.bv
  br i1 %i.cg, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i11.i, !llvm.loop !1281

._crit_edge.i.i.i11.i:                            ; preds = %.lr.ph.i.i.i19.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i12.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ] ; 5 uses
  %i.ch = and i64 %i.bs, 8
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i11.i
  %i.cj = add nsw i64 %i.bt, -2
  %i.ck = ashr exact i64 %i.cj, 1
  %i.cl = icmp eq i64 %.0.lcssa.i.i.i12.i, %i.ck
  br i1 %i.cl, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.cm = shl nuw nsw i64 %.0.lcssa.i.i.i12.i, 1
  %i.cn = or disjoint i64 %i.cm, 1                ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.cn
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i12.i
  %i.cq = load <2 x i32>, ptr %i.co, align 4, !tbaa !84
  store <2 x i32> %i.cq, ptr %i.cp, align 4, !tbaa !84
  br label %.lr.ph.i.i.preheader.i.i.i

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i11.i
  %.not.i.i13.i = icmp eq i64 %.0.lcssa.i.i.i12.i, 0
  br i1 %.not.i.i13.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_RT0_.exit.i.i", label %.lr.ph.i.i.preheader.i.i.i

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %bb.h, %.thread.i.i.i
  %.1.i11.i.i.i = phi i64 [ %i.cn, %.thread.i.i.i ], [ %.0.lcssa.i.i.i12.i, %bb.h ]
  %.sroa.03.0.extract.trunc.i.i12.i.i.i = trunc i64 %.sroa.03.0.copyload.i.i10.i to i32
  br label %.lr.ph.i.i.i.i14.i

.lr.ph.i.i.i.i14.i:                               ; preds = %bb.i, %.lr.ph.i.i.preheader.i.i.i
  %.010.i.i.i.i15.i = phi i64 [ %.0911.i.i56.i.i.i, %bb.i ], [ %.1.i11.i.i.i, %.lr.ph.i.i.preheader.i.i.i ] ; 3 uses
  %.0911.in.i.i.i.i16.i = add nsw i64 %.010.i.i.i.i15.i, -1
  %.0911.i.i56.i.i.i = lshr i64 %.0911.in.i.i.i.i16.i, 1 ; 3 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0911.i.i56.i.i.i ; 2 uses
  %.val.i.i.i.i.i17.i = load i32, ptr %i.cr, align 4, !tbaa !627 ; 2 uses
  %i.cs = icmp slt i32 %.val.i.i.i.i.i17.i, %.sroa.03.0.extract.trunc.i.i12.i.i.i
  br i1 %i.cs, label %bb.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_RT0_.exit.i.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i14.i
  %i.ct = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.010.i.i.i.i15.i ; 2 uses
  store i32 %.val.i.i.i.i.i17.i, ptr %i.ct, align 4, !tbaa !627
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !84
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !628
  %.not7.i.i.i = icmp eq i64 %.0911.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_RT0_.exit.i.i", label %.lr.ph.i.i.i.i14.i, !llvm.loop !1282

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_RT0_.exit.i.i": ; preds = %bb.i, %.lr.ph.i.i.i.i14.i, %bb.h
  %.0.lcssa.i.i.i.i18.i = phi i64 [ 0, %bb.h ], [ %.010.i.i.i.i15.i, %.lr.ph.i.i.i.i14.i ], [ 0, %bb.i ]
  %i.cx = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i.i18.i
  store i64 %.sroa.03.0.copyload.i.i10.i, ptr %i.cx, align 4
  %i.cy = icmp sgt i64 %i.bs, 8
  br i1 %i.cy, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_T0_.exit", !llvm.loop !1284

.lr.ph46:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2445 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %.fr28, %.lr.ph ] ; 5 uses
  %.02544 = phi i64 [ %i.da, %bb.b ], [ %2, %.lr.ph ]
  %i.cz = phi i64 [ %i.el, %bb.b ], [ %i.d, %.lr.ph ]
  %i.da = add nsw i64 %.02544, -1                 ; 3 uses
  %i.db = lshr i64 %i.cz, 1
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.db ; 5 uses
  %i.dd = getelementptr inbounds i8, ptr %storemerge2445, i64 -8 ; 3 uses
  %.val.i.i.i = load i32, ptr %i.f, align 4, !tbaa !627 ; 5 uses
  %.val1.i.i.i = load i32, ptr %i.dc, align 4, !tbaa !627 ; 5 uses
  %i.de = icmp slt i32 %.val.i.i.i, %.val1.i.i.i
  %.val1.i27.i.i = load i32, ptr %i.dd, align 4, !tbaa !627 ; 6 uses
  br i1 %i.de, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph46
  %i.df = icmp slt i32 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.df, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !84
  %i.di = load <2 x i32>, ptr %.fr27, align 4, !tbaa !84
  store i32 %.val1.i.i.i, ptr %.fr27, align 4, !tbaa !84
  store i32 %i.dh, ptr %i.g, align 4, !tbaa !84
  store <2 x i32> %i.di, ptr %i.dc, align 4, !tbaa !84
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.dj = icmp slt i32 %.val.i.i.i, %.val1.i27.i.i
  %i.dk = load i32, ptr %.fr27, align 4, !tbaa !84 ; 2 uses
  br i1 %i.dj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %.val1.i27.i.i, ptr %.fr27, align 4, !tbaa !84
  store i32 %i.dk, ptr %i.dd, align 4, !tbaa !84
  %i.dl = getelementptr inbounds i8, ptr %storemerge2445, i64 -4 ; 2 uses
  %i.dm = load i32, ptr %i.g, align 4, !tbaa !84
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !84
  store i32 %i.dn, ptr %i.g, align 4, !tbaa !84
  store i32 %i.dm, ptr %i.dl, align 4, !tbaa !84
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  store i32 %.val.i.i.i, ptr %.fr27, align 4, !tbaa !84
  store i32 %i.dk, ptr %i.f, align 4, !tbaa !84
  %i.do = load i32, ptr %i.g, align 4, !tbaa !84
  %i.dp = load i32, ptr %i.h, align 4, !tbaa !84
  store i32 %i.dp, ptr %i.g, align 4, !tbaa !84
  store i32 %i.do, ptr %i.h, align 4, !tbaa !84
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph46
  %i.dq = icmp slt i32 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.dq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dr = load i32, ptr %i.h, align 4, !tbaa !84
  %i.ds = load <2 x i32>, ptr %.fr27, align 4, !tbaa !84
  store i32 %.val.i.i.i, ptr %.fr27, align 4, !tbaa !84
  store i32 %i.dr, ptr %i.g, align 4, !tbaa !84
  store <2 x i32> %i.ds, ptr %i.f, align 4, !tbaa !84
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.dt = icmp slt i32 %.val1.i.i.i, %.val1.i27.i.i
  %i.du = load i32, ptr %.fr27, align 4, !tbaa !84 ; 2 uses
  br i1 %i.dt, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 %.val1.i27.i.i, ptr %.fr27, align 4, !tbaa !84
  store i32 %i.du, ptr %i.dd, align 4, !tbaa !84
  %i.dv = getelementptr inbounds i8, ptr %storemerge2445, i64 -4 ; 2 uses
  %i.dw = load i32, ptr %i.g, align 4, !tbaa !84
  %i.dx = load i32, ptr %i.dv, align 4, !tbaa !84
  store i32 %i.dx, ptr %i.g, align 4, !tbaa !84
  store i32 %i.dw, ptr %i.dv, align 4, !tbaa !84
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  store i32 %.val1.i.i.i, ptr %.fr27, align 4, !tbaa !84
  store i32 %i.du, ptr %i.dc, align 4, !tbaa !84
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dc, i64 4 ; 2 uses
  %i.dz = load i32, ptr %i.g, align 4, !tbaa !84
  %i.ea = load i32, ptr %i.dy, align 4, !tbaa !84
  store i32 %i.ea, ptr %i.g, align 4, !tbaa !84
  store i32 %i.dz, ptr %i.dy, align 4, !tbaa !84
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader": ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_SF_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_SF_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader", %bb.v
  %.sroa.012.0.i.i = phi ptr [ %i.ec, %bb.v ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2445, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader" ]
  %.val1.i.i13.i = load i32, ptr %.fr27, align 4, !tbaa !627 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_SF_T0_.exit.i"
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_SF_T0_.exit.i" ], [ %i.ec, %bb.t ] ; 9 uses
  %.val.i.i14.i = load i32, ptr %.sroa.012.1.i.i, align 4, !tbaa !627 ; 2 uses
  %i.eb = icmp slt i32 %.val.i.i14.i, %.val1.i.i13.i
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.eb, label %bb.t, label %.preheader.i.i, !llvm.loop !1285

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
  %.val1.i9.i.i = load i32, ptr %.sroa.0.1.i.i, align 4, !tbaa !627 ; 2 uses
  %i.ed = icmp slt i32 %.val1.i.i13.i, %.val1.i9.i.i
  br i1 %i.ed, label %.preheader.i.i, label %bb.u, !llvm.loop !1286

bb.u:                                             ; preds = %.preheader.i.i
  %i.ee = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.ee, label %bb.v, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEET_SF_SF_T0_.exit"

bb.v:                                             ; preds = %bb.u
  store i32 %.val1.i9.i.i, ptr %.sroa.012.1.i.i, align 4, !tbaa !84
  store i32 %.val.i.i14.i, ptr %.sroa.0.1.i.i, align 4, !tbaa !84
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 4 ; 2 uses
  %i.eg = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -4 ; 2 uses
  %i.eh = load i32, ptr %i.ef, align 4, !tbaa !84
  %i.ei = load i32, ptr %i.eg, align 4, !tbaa !84
  store i32 %i.ei, ptr %i.ef, align 4, !tbaa !84
  store i32 %i.eh, ptr %i.eg, align 4, !tbaa !84
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_SF_T0_.exit.i", !llvm.loop !1287

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEET_SF_SF_T0_.exit": ; preds = %bb.u
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2445, i64 noundef %i.da)
  %i.ej = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.ek = sub i64 %i.ej, %i.a                     ; 2 uses
  %i.el = ashr exact i64 %i.ek, 3                 ; 2 uses
  %i.em = icmp sgt i64 %i.el, 16
  br i1 %i.em, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_T0_.exit", !llvm.loop !1280

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEET_SF_SF_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_RT0_.exit.i.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_RT0_.exit.i.i"
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_ZL30llama_sampler_top_n_sigma_namePK13llama_sampler(ptr nofree readnone captures(none) %0) #14 {
bb.a:
  ret ptr @.str.286
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL31llama_sampler_top_n_sigma_applyP13llama_samplerP22llama_token_data_array(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !206
  %i.d = fcmp ugt float %i.c, 0.000000e+00
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !93   ; 9 uses
  %i.g = icmp ult i64 %i.f, 2
  br i1 %i.g, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %1, align 8, !tbaa !92     ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load float, ptr %i.i, align 4, !tbaa !290 ; 2 uses
  %i.k = add i64 %i.f, -1                         ; 2 uses
  %xtraiter = and i64 %i.f, 1
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.c
  %unroll_iter = and i64 %i.f, -2
  br label %bb.e

.unr-lcssa:                                       ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.c
  %.04052.epil.init = phi i64 [ 0, %bb.c ], [ %i.al, %.unr-lcssa ]
  %.04151.epil.init = phi i64 [ 0, %bb.c ], [ %.142.1, %.unr-lcssa ] ; 2 uses
  %.04350.epil.init = phi float [ 0.000000e+00, %bb.c ], [ %.144.1, %.unr-lcssa ] ; 2 uses
  %.04749.epil.init = phi float [ %i.j, %bb.c ], [ %.148.1, %.unr-lcssa ] ; 3 uses
  %lcmp.mod83 = trunc i64 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod83)
  %i.m = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %.04052.epil.init
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !290 ; 4 uses
  %i.p = fcmp une float %i.o, -inf
  br i1 %i.p, label %bb.d, label %.epilog-lcssa

bb.d:                                             ; preds = %.epil.preheader
  %i.q = fcmp olt float %.04749.epil.init, %i.o
  %.sroa.speculated.epil = select i1 %i.q, float %i.o, float %.04749.epil.init
  %i.r = fadd float %.04350.epil.init, %i.o
  %i.s = add i64 %.04151.epil.init, 1
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %.epil.preheader, %bb.d, %.unr-lcssa
  %.148.lcssa = phi float [ %.148.1, %.unr-lcssa ], [ %.sroa.speculated.epil, %bb.d ], [ %.04749.epil.init, %.epil.preheader ]
  %.144.lcssa = phi float [ %.144.1, %.unr-lcssa ], [ %i.r, %bb.d ], [ %.04350.epil.init, %.epil.preheader ]
  %.142.lcssa = phi i64 [ %.142.1, %.unr-lcssa ], [ %i.s, %bb.d ], [ %.04151.epil.init, %.epil.preheader ] ; 2 uses
  %.not = icmp eq i64 %.142.lcssa, 0              ; 2 uses
  %i.t = uitofp i64 %.142.lcssa to float          ; 2 uses
  %i.u = fdiv float %.144.lcssa, %i.t
  %i.v = select i1 %.not, float 0.000000e+00, float %i.u ; 3 uses
  %xtraiter87 = and i64 %i.f, 1
  %i.w = icmp eq i64 %i.k, 0
  br i1 %i.w, label %.epil.preheader86, label %.new84

.new84:                                           ; preds = %.epilog-lcssa
  %unroll_iter92 = and i64 %i.f, -2
  br label %bb.k

bb.e:                                             ; preds = %bb.i, %.new
  %.04052 = phi i64 [ 0, %.new ], [ %i.al, %bb.i ] ; 3 uses
  %.04151 = phi i64 [ 0, %.new ], [ %.142.1, %bb.i ] ; 2 uses
  %.04350 = phi float [ 0.000000e+00, %.new ], [ %.144.1, %bb.i ] ; 2 uses
  %.04749 = phi float [ %i.j, %.new ], [ %.148.1, %bb.i ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.i ]
  %i.x = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %.04052
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !290 ; 4 uses
  %i.aa = fcmp une float %i.z, -inf
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = fcmp olt float %.04749, %i.z
  %.sroa.speculated = select i1 %i.ab, float %i.z, float %.04749
  %i.ac = fadd float %.04350, %i.z
  %i.ad = add i64 %.04151, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.148 = phi float [ %.sroa.speculated, %bb.f ], [ %.04749, %bb.e ] ; 3 uses
  %.144 = phi float [ %i.ac, %bb.f ], [ %.04350, %bb.e ] ; 2 uses
  %.142 = phi i64 [ %i.ad, %bb.f ], [ %.04151, %bb.e ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %.04052
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load float, ptr %i.af, align 4, !tbaa !290 ; 4 uses
  %i.ah = fcmp une float %i.ag, -inf
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = fcmp olt float %.148, %i.ag
  %.sroa.speculated.1 = select i1 %i.ai, float %i.ag, float %.148
  %i.aj = fadd float %.144, %i.ag
  %i.ak = add i64 %.142, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.148.1 = phi float [ %.sroa.speculated.1, %bb.h ], [ %.148, %bb.g ] ; 3 uses
  %.144.1 = phi float [ %i.aj, %bb.h ], [ %.144, %bb.g ] ; 3 uses
  %.142.1 = phi i64 [ %i.ak, %bb.h ], [ %.142, %bb.g ] ; 3 uses
  %i.al = add nuw i64 %.04052, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.e, !llvm.loop !1288

.unr-lcssa85:                                     ; preds = %bb.o
  %lcmp.mod88.not = icmp eq i64 %xtraiter87, 0
  br i1 %lcmp.mod88.not, label %.epilog-lcssa89, label %.epil.preheader86

.epil.preheader86:                                ; preds = %.unr-lcssa85, %.epilog-lcssa
  %.03854.epil.init = phi i64 [ 0, %.epilog-lcssa ], [ %i.bq, %.unr-lcssa85 ]
  %.03953.epil.init = phi float [ 0.000000e+00, %.epilog-lcssa ], [ %.1.1, %.unr-lcssa85 ] ; 2 uses
  %lcmp.mod91 = trunc i64 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod91)
  %i.am = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %.03854.epil.init
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load float, ptr %i.an, align 4, !tbaa !290 ; 2 uses
  %i.ap = fcmp une float %i.ao, -inf
  br i1 %i.ap, label %bb.j, label %.epilog-lcssa89

bb.j:                                             ; preds = %.epil.preheader86
  %i.aq = fsub float %i.ao, %i.v
  %i.ar = fpext float %i.aq to double
  %i.as = tail call double @pow(double noundef %i.ar, double noundef 2.000000e+00) #40
  %i.at = fpext float %.03953.epil.init to double
  %i.au = fadd double %i.as, %i.at
  %i.av = fptrunc double %i.au to float
  br label %.epilog-lcssa89

.epilog-lcssa89:                                  ; preds = %.epil.preheader86, %bb.j, %.unr-lcssa85
  %.1.lcssa = phi float [ %.1.1, %.unr-lcssa85 ], [ %i.av, %bb.j ], [ %.03953.epil.init, %.epil.preheader86 ]
  br i1 %.not, label %.lr.ph, label %bb.p

bb.k:                                             ; preds = %bb.o, %.new84
  %.03854 = phi i64 [ 0, %.new84 ], [ %i.bq, %bb.o ] ; 3 uses
  %.03953 = phi float [ 0.000000e+00, %.new84 ], [ %.1.1, %bb.o ] ; 2 uses
  %niter93 = phi i64 [ 0, %.new84 ], [ %niter93.next.1, %bb.o ]
  %i.aw = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %.03854
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !290 ; 2 uses
  %i.az = fcmp une float %i.ay, -inf
  br i1 %i.az, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ba = fsub float %i.ay, %i.v
  %i.bb = fpext float %i.ba to double
  %i.bc = tail call double @pow(double noundef %i.bb, double noundef 2.000000e+00) #40
  %i.bd = fpext float %.03953 to double
  %i.be = fadd double %i.bc, %i.bd
  %i.bf = fptrunc double %i.be to float
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.1 = phi float [ %i.bf, %bb.l ], [ %.03953, %bb.k ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %.03854
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !290 ; 2 uses
  %i.bj = fcmp une float %i.bi, -inf
  br i1 %i.bj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bk = fsub float %i.bi, %i.v
  %i.bl = fpext float %i.bk to double
  %i.bm = tail call double @pow(double noundef %i.bl, double noundef 2.000000e+00) #40
  %i.bn = fpext float %.1 to double
  %i.bo = fadd double %i.bm, %i.bn
  %i.bp = fptrunc double %i.bo to float
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1.1 = phi float [ %i.bp, %bb.n ], [ %.1, %bb.m ] ; 3 uses
  %i.bq = add nuw i64 %.03854, 2                  ; 2 uses
  %niter93.next.1 = add i64 %niter93, 2           ; 2 uses
  %niter93.ncmp.1 = icmp eq i64 %niter93.next.1, %unroll_iter92
  br i1 %niter93.ncmp.1, label %.unr-lcssa85, label %bb.k, !llvm.loop !1289

bb.p:                                             ; preds = %.epilog-lcssa89
  %i.br = fdiv float %.1.lcssa, %i.t
  %sqrtf = tail call float @sqrtf(float noundef %i.br) #40
  %.pre = load i64, ptr %i.e, align 8, !tbaa !93  ; 2 uses
  %.not56 = icmp eq i64 %.pre, 0
  br i1 %.not56, label %.loopexit, label %.lr.ph

end_hunk_1
