Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-sampler?download=true
inline.NumInlined: 6714
inline.NumDeleted: 2633
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_ZL25llama_sampler_top_k_applyP13llama_samplerP22llama_token_data_array:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.d = load i32, ptr %i.c, align 4, !tbaa !137  ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %_ZL24llama_sampler_top_k_implP22llama_token_data_arrayi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !93
  %i.h = trunc i64 %i.g to i32
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.d, i32 %i.h) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load i8, ptr %i.i, align 8, !tbaa !95, !range !78, !noundef !79
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZL43llama_token_data_array_partial_sort_inplaceP22llama_token_data_arrayi(ptr noundef nonnull %1, i32 noundef %.sroa.speculated.i)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = sext i32 %.sroa.speculated.i to i64
  store i64 %i.l, ptr %i.f, align 8, !tbaa !93
  br label %_ZL24llama_sampler_top_k_implP22llama_token_data_arrayi.exit

_ZL24llama_sampler_top_k_implP22llama_token_data_arrayi.exit: ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noalias noundef nonnull ptr @_ZL25llama_sampler_top_k_clonePK13llama_sampler(ptr nofree noundef readonly captures(none) %0) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.d = load i32, ptr %i.c, align 4, !tbaa !137  ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #37, !inline_history !724 ; 2 uses
  store ptr @.str.13, ptr %i.f, align 8, !tbaa !135
  br label %llama_sampler_init_top_k.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #37, !inline_history !725 ; 4 uses
  invoke void @_ZN21llama_sampler_backendC2EPKc(ptr noundef nonnull align 8 dereferenceable(66) %i.g, ptr noundef nonnull @.str.14)
          to label %bb.d unwind label %bb.e, !inline_history !725

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 68
  store i32 %i.d, ptr %i.h, align 4, !tbaa !137
  br label %llama_sampler_init_top_k.exit

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 72) #39, !inline_history !725
  resume { ptr, i32 } %i.i

llama_sampler_init_top_k.exit:                    ; preds = %bb.b, %bb.d
  %_ZL21llama_sampler_top_k_i.sink.i = phi ptr [ @_ZL21llama_sampler_top_k_i, %bb.d ], [ @_ZL21llama_sampler_empty_i, %bb.b ]
  %.sink.i = phi ptr [ %i.g, %bb.d ], [ %i.f, %bb.b ]
  %i.j = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #37, !inline_history !725 ; 3 uses
  store ptr %_ZL21llama_sampler_top_k_i.sink.i, ptr %i.j, align 16, !tbaa !53
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %.sink.i, ptr %i.k, align 8, !tbaa !54
  ret ptr %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL24llama_sampler_top_k_freeP13llama_sampler(ptr nofree noundef readonly captures(none) %0) #18 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !113  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !87
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !113  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN21llama_sampler_backendD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !87
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #39
  br label %_ZN21llama_sampler_backendD2Ev.exit

_ZN21llama_sampler_backendD2Ev.exit:              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 72) #39
  br label %bb.c

bb.c:                                             ; preds = %_ZN21llama_sampler_backendD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZL32llama_sampler_top_k_backend_initP13llama_samplerP24ggml_backend_buffer_typej(ptr noundef %0, ptr noundef %1, i32 %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.c = tail call fastcc noundef zeroext i1 @_ZL29llama_sampler_backend_supportP13llama_samplerP24ggml_backend_buffer_type(ptr noundef %0, ptr noundef %1) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !116, !range !78, !noundef !79
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %_ZN21llama_sampler_backend4initEb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.1, i32 noundef 552, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.48) #38
  unreachable

_ZN21llama_sampler_backend4initEb.exit:           ; preds = %bb.a
  %i.g = zext i1 %i.c to i8
  store i8 1, ptr %i.d, align 8, !tbaa !116
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  store i8 %i.g, ptr %i.h, align 1, !tbaa !117
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL33llama_sampler_top_k_backend_applyP13llama_samplerP12ggml_contextP11ggml_cgraphP18llama_sampler_data(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr nofree noundef captures(none) %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = load ptr, ptr %3, align 8, !tbaa !285    ; 2 uses
  %i.d = tail call i64 @ggml_nelements(ptr noundef %i.c)
  %i.e = tail call ptr @ggml_reshape_1d(ptr noundef %1, ptr noundef %i.c, i64 noundef %i.d) ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.g = load i32, ptr %i.f, align 4, !tbaa !137
  %i.h = tail call ptr @ggml_top_k(ptr noundef %1, ptr noundef %i.e, i32 noundef %i.g) ; 4 uses
  %i.i = tail call ptr @ggml_set_name(ptr noundef %i.h, ptr noundef nonnull @.str.62) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !286  ; 3 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !111
  %i.n = tail call ptr @ggml_reshape_2d(ptr noundef %1, ptr noundef nonnull %i.k, i64 noundef 1, i64 noundef %i.m)
  %i.o = tail call ptr @ggml_get_rows(ptr noundef %1, ptr noundef %i.n, ptr noundef %i.h) ; 2 uses
  store ptr %i.o, ptr %i.j, align 8, !tbaa !286
  %i.p = tail call ptr @ggml_set_name(ptr noundef %i.o, ptr noundef nonnull @.str.63) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store ptr %i.h, ptr %i.j, align 8, !tbaa !286
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !111
  %i.s = tail call ptr @ggml_reshape_2d(ptr noundef %1, ptr noundef %i.e, i64 noundef 1, i64 noundef %i.r)
  %i.t = tail call ptr @ggml_get_rows(ptr noundef %1, ptr noundef %i.s, ptr noundef %i.h) ; 2 uses
  store ptr %i.t, ptr %3, align 8, !tbaa !285
  %i.u = tail call ptr @ggml_set_name(ptr noundef %i.t, ptr noundef nonnull @.str.64) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZL32llama_sampler_backend_copy_stateI19llama_sampler_top_kEvPK13llama_samplerPS1_(ptr nofree readonly captures(none) %0, ptr nofree readonly captures(none) %1) #14 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL43llama_token_data_array_partial_sort_inplaceP22llama_token_data_arrayi(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.0", align 8     ; 10 uses
  %i.a = icmp slt i32 %1, 129
  br i1 %i.a, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !92     ; 44 uses
  %i.c = sext i32 %1 to i64                       ; 7 uses
  %i.d = getelementptr inbounds [12 x i8], ptr %i.b, i64 %i.c ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !93   ; 2 uses
  %i.g = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %i.f ; 4 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = icmp slt i32 %1, 2
  br i1 %i.i, label %"_ZSt11__make_heapIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL43llama_token_data_array_partial_sort_inplaceP22llama_token_data_arrayiE3$_0EEEvT_S9_RT0_.exit.i.i.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = add nsw i64 %i.c, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 3 uses
  %i.l = add nsw i64 %i.c, -1
  %i.m = lshr i64 %i.l, 1                         ; 2 uses
  %i.n = and i32 %1, 1
  %i.o = icmp eq i32 %i.n, 0
  %3 = or disjoint i64 %i.j, 1                    ; 2 uses
  %i.p = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %3
  %i.q = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %i.k
  br label %bb.d

bb.d:                                             ; preds = %"_ZSt13__adjust_heapIP16llama_token_datalS0_N9__gnu_cxx5__ops15_Iter_comp_iterIZL43llama_token_data_array_partial_sort_inplaceP22llama_token_data_arrayiE3$_0EEEvT_T0_SA_T1_T2_.exit.i.i.i.i", %bb.c
  %.017.i.i.i.i = phi i64 [ %i.k, %bb.c ], [ %i.an, %"_ZSt13__adjust_heapIP16llama_token_datalS0_N9__gnu_cxx5__ops15_Iter_comp_iterIZL43llama_token_data_array_partial_sort_inplaceP22llama_token_data_arrayiE3$_0EEEvT_T0_SA_T1_T2_.exit.i.i.i.i" ] ; 8 uses
  %i.r = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %.017.i.i.i.i ; 2 uses
  %.sroa.04.0.copyload.i.i.i.i = load i64, ptr %i.r, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.4.0.copyload.i.i.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 4, !tbaa !86
  %i.s = icmp slt i64 %.017.i.i.i.i, %i.m
  br i1 %i.s, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.035.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.017.i.i.i.i, %bb.d ] ; 2 uses
  %i.t = shl i64 %.035.i.i.i.i.i, 1               ; 3 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %i.u
  %i.w = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %i.t
  %i.x = getelementptr i8, ptr %i.v, i64 4
  %.val.i.i.i.i.i = load float, ptr %i.x, align 4, !tbaa !290
  %i.y = getelementptr i8, ptr %i.w, i64 16
  %.val34.i.i.i.i.i = load float, ptr %i.y, align 4, !tbaa !290
  %i.z = fcmp ogt float %.val.i.i.i.i.i, %.val34.i.i.i.i.i
  %i.aa = or disjoint i64 %i.t, 1
  %spec.select.i.i.i.i.i = select i1 %i.z, i64 %i.aa, i64 %i.u ; 4 uses
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %spec.select.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %.035.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ac, ptr noundef nonnull align 4 dereferenceable(12) %i.ab, i64 12, i1 false), !tbaa.struct !289
  %i.ad = icmp slt i64 %spec.select.i.i.i.i.i, %i.m
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !726

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.017.i.i.i.i, %bb.d ], [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.ae = icmp eq i64 %.0.lcssa.i.i.i.i.i, %i.k
  %or.cond.i.i.i.i = select i1 %i.o, i1 %i.ae, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.q, ptr noundef nonnull align 4 dereferenceable(12) %i.p, i64 12, i1 false), !tbaa.struct !289
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i.i
  %.1.i.i.i.i.i = phi i64 [ %3, %bb.e ], [ %.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.af = icmp samesign ugt i64 %.1.i.i.i.i.i, %.017.i.i.i.i
  br i1 %i.af, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt13__adjust_heapIP16llama_token_datalS0_N9__gnu_cxx5__ops15_Iter_comp_iterIZL43llama_token_data_array_partial_sort_inplaceP22llama_token_data_arrayiE3$_0EEEvT_T0_SA_T1_T2_.exit.i.i.i.i"

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.f
  %.sroa.0.sroa.2.0.extract.shift.i.i.i.i.i.i = lshr i64 %.sroa.04.0.copyload.i.i.i.i, 32
  %.sroa.0.sroa.2.0.extract.trunc.i.i.i.i.i.i = trunc nuw i64 %.sroa.0.sroa.2.0.extract.shift.i.i.i.i.i.i to i32
  %i.ag = bitcast i32 %.sroa.0.sroa.2.0.extract.trunc.i.i.i.i.i.i to float
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i
  %.0135.i.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.0610.i.i.i.i.i.i, %bb.h ] ; 3 uses
  %.06.in.i.i.i.i.i.i = add nsw i64 %.0135.i.i.i.i.i.i, -1
  %.0610.i.i.i.i.i.i = lshr i64 %.06.in.i.i.i.i.i.i, 1 ; 4 uses
  %i.ah = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %.0610.i.i.i.i.i.i ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 4
  %.val.i.i.i.i.i.i = load float, ptr %i.ai, align 4, !tbaa !290
  %i.aj = fcmp ogt float %.val.i.i.i.i.i.i, %i.ag
  br i1 %i.aj, label %bb.h, label %"_ZSt13__adjust_heapIP16llama_token_datalS0_N9__gnu_cxx5__ops15_Iter_comp_iterIZL43llama_token_data_array_partial_sort_inplaceP22llama_token_data_arrayiE3$_0EEEvT_T0_SA_T1_T2_.exit.i.i.i.i"

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %.0135.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ak, ptr noundef nonnull align 4 dereferenceable(12) %i.ah, i64 12, i1 false), !tbaa.struct !289
  %i.al = icmp samesign ugt i64 %.0610.i.i.i.i.i.i, %.017.i.i.i.i
  br i1 %i.al, label %bb.g, label %"_ZSt13__adjust_heapIP16llama_token_datalS0_N9__gnu_cxx5__ops15_Iter_comp_iterIZL43llama_token_data_array_partial_sort_inplaceP22llama_token_data_arrayiE3$_0EEEvT_T0_SA_T1_T2_.exit.i.i.i.i", !llvm.loop !727

"_ZSt13__adjust_heapIP16llama_token_datalS0_N9__gnu_cxx5__ops15_Iter_comp_iterIZL43llama_token_data_array_partial_sort_inplaceP22llama_token_data_arrayiE3$_0EEEvT_T0_SA_T1_T2_.exit.i.i.i.i": ; preds = %bb.h, %bb.g, %bb.f
  %.013.lcssa.i.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i, %bb.f ], [ %.0610.i.i.i.i.i.i, %bb.h ], [ %.0135.i.i.i.i.i.i, %bb.g ]
  %i.am = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %.013.lcssa.i.i.i.i.i.i ; 2 uses
  store i64 %.sroa.04.0.copyload.i.i.i.i, ptr %i.am, align 4
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store float %.sroa.4.0.copyload.i.i.i.i, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i, align 4, !tbaa !86
  %.not.i.i.i.i = icmp eq i64 %.017.i.i.i.i, 0
  %i.an = add nsw i64 %.017.i.i.i.i, -1
  br i1 %.not.i.i.i.i, label %"_ZSt11__make_heapIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL43llama_token_data_array_partial_sort_inplaceP22llama_token_data_arrayiE3$_0EEEvT_S9_RT0_.exit.i.i.i", label %bb.d, !llvm.loop !728

"_ZSt11__make_heapIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL43llama_token_data_array_partial_sort_inplaceP22llama_token_data_arrayiE3$_0EEEvT_S9_RT0_.exit.i.i.i": ; preds = %"_ZSt13__adjust_heapIP16llama_token_datalS0_N9__gnu_cxx5__ops15_Iter_comp_iterIZL43llama_token_data_array_partial_sort_inplaceP22llama_token_data_arrayiE3$_0EEEvT_T0_SA_T1_T2_.exit.i.i.i.i", %bb.b
  %i.ao = icmp sgt i64 %i.f, %i.c
  br i1 %i.ao, label %.lr.ph.i.i.i, label %"_ZSt13__heap_selectIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL43llama_token_data_array_partial_sort_inplaceP22llama_token_data_arrayiE3$_0EEEvT_S9_S9_T0_.exit.i.i"

.lr.ph.i.i.i:                                     ; preds = %"_ZSt11__make_heapIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL43llama_token_data_array_partial_sort_inplaceP22llama_token_data_arrayiE3$_0EEEvT_S9_RT0_.exit.i.i.i"
  %i.ap = getelementptr i8, ptr %i.b, i64 4       ; 5 uses
  %i.aq = add nsw i64 %i.c, -1
  %i.ar = sdiv i64 %i.aq, 2
  %i.as = icmp sgt i32 %1, 2
  %i.at = and i32 %1, 1
  %i.au = icmp eq i32 %i.at, 0                    ; 2 uses
  %i.av = add nsw i64 %i.c, -2                    ; 3 uses
  %i.aw = ashr exact i64 %i.av, 1                 ; 2 uses
  br i1 %i.as, label %.lr.ph.split.us.preheader.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.preheader.i.i.i:                  ; preds = %.lr.ph.i.i.i
  %4 = or disjoint i64 %i.av, 1                   ; 2 uses
  %i.ax = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %4
  %i.ay = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %i.aw
  br label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %bb.l, %.lr.ph.split.us.preheader.i.i.i
  %.032.us.i.i.i = phi ptr [ %i.bs, %bb.l ], [ %i.d, %.lr.ph.split.us.preheader.i.i.i ] ; 5 uses
  %i.az = getelementptr i8, ptr %.032.us.i.i.i, i64 4
  %.0.val.us.i.i.i = load float, ptr %i.az, align 4, !tbaa !290
  %.val.us.i.i.i = load float, ptr %i.ap, align 4, !tbaa !290
  %i.ba = fcmp ogt float %.0.val.us.i.i.i, %.val.us.i.i.i
  br i1 %i.ba, label %.lr.ph.i.i27.preheader.us.i.i.i, label %bb.l

.lr.ph.i.i27.preheader.us.i.i.i:                  ; preds = %.lr.ph.split.us.i.i.i
  %.sroa.04.0.copyload.i11.us.i.i.i = load i64, ptr %.032.us.i.i.i, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i12.us.i.i.i = getelementptr inbounds nuw i8, ptr %.032.us.i.i.i, i64 8
  %.sroa.4.0.copyload.i13.us.i.i.i = load float, ptr %.sroa.4.0..sroa_idx.i12.us.i.i.i, align 4, !tbaa !86
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.032.us.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.b, i64 12, i1 false), !tbaa.struct !289
  br label %.lr.ph.i.i27.us.i.i.i

.lr.ph.i.i27.us.i.i.i:                            ; preds = %.lr.ph.i.i27.us.i.i.i, %.lr.ph.i.i27.preheader.us.i.i.i
  %.035.i.i28.us.i.i.i = phi i64 [ %spec.select.i.i31.us.i.i.i, %.lr.ph.i.i27.us.i.i.i ], [ 0, %.lr.ph.i.i27.preheader.us.i.i.i ] ; 2 uses
  %i.bb = shl i64 %.035.i.i28.us.i.i.i, 1         ; 3 uses
  %i.bc = add i64 %i.bb, 2                        ; 2 uses
  %i.bd = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %i.bc
  %i.be = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %i.bb
  %i.bf = getelementptr i8, ptr %i.bd, i64 4
  %.val.i.i29.us.i.i.i = load float, ptr %i.bf, align 4, !tbaa !290
  %i.bg = getelementptr i8, ptr %i.be, i64 16
  %.val34.i.i30.us.i.i.i = load float, ptr %i.bg, align 4, !tbaa !290
  %i.bh = fcmp ogt float %.val.i.i29.us.i.i.i, %.val34.i.i30.us.i.i.i
  %i.bi = or disjoint i64 %i.bb, 1
  %spec.select.i.i31.us.i.i.i = select i1 %i.bh, i64 %i.bi, i64 %i.bc ; 6 uses
  %i.bj = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %spec.select.i.i31.us.i.i.i
  %i.bk = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %.035.i.i28.us.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bk, ptr noundef nonnull align 4 dereferenceable(12) %i.bj, i64 12, i1 false), !tbaa.struct !289
  %i.bl = icmp slt i64 %spec.select.i.i31.us.i.i.i, %i.ar
  br i1 %i.bl, label %.lr.ph.i.i27.us.i.i.i, label %._crit_edge.i.i14.loopexit.us.i.i.i, !llvm.loop !726

bb.i:                                             ; preds = %._crit_edge.i.i14.loopexit.us.i.i.i
  %.not.i16.us.i.i.i = icmp eq i64 %spec.select.i.i31.us.i.i.i, 0
  br i1 %.not.i16.us.i.i.i, label %"_ZSt10__pop_heapIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL43llama_token_data_array_partial_sort_inplaceP22llama_token_data_arrayiE3$_0EEEvT_S9_S9_RT0_.exit.us.i.i.i", label %.lr.ph.i.i.i17.us.i.i.i

.thread.i.us.i.i.i:                               ; preds = %._crit_edge.i.i14.loopexit.us.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ay, ptr noundef nonnull align 4 dereferenceable(12) %i.ax, i64 12, i1 false), !tbaa.struct !289
  br label %.lr.ph.i.i.i17.us.i.i.i

.lr.ph.i.i.i17.us.i.i.i:                          ; preds = %.thread.i.us.i.i.i, %bb.i
  %.1.i2.i.us.i.i.i = phi i64 [ %4, %.thread.i.us.i.i.i ], [ %spec.select.i.i31.us.i.i.i, %bb.i ]
  %.sroa.0.sroa.2.0.extract.shift.i.i.i18.us.i.i.i = lshr i64 %.sroa.04.0.copyload.i11.us.i.i.i, 32
  %.sroa.0.sroa.2.0.extract.trunc.i.i.i19.us.i.i.i = trunc nuw i64 %.sroa.0.sroa.2.0.extract.shift.i.i.i18.us.i.i.i to i32
  %i.bm = bitcast i32 %.sroa.0.sroa.2.0.extract.trunc.i.i.i19.us.i.i.i to float
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i17.us.i.i.i
  %.0135.i.i.i20.us.i.i.i = phi i64 [ %.1.i2.i.us.i.i.i, %.lr.ph.i.i.i17.us.i.i.i ], [ %.0610.i.i.i22.us.i.i.i, %bb.k ] ; 3 uses
  %.06.in.i.i.i21.us.i.i.i = add nsw i64 %.0135.i.i.i20.us.i.i.i, -1
  %.0610.i.i.i22.us.i.i.i = lshr i64 %.06.in.i.i.i21.us.i.i.i, 1 ; 3 uses
  %i.bn = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %.0610.i.i.i22.us.i.i.i ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 4
  %.val.i.i.i23.us.i.i.i = load float, ptr %i.bo, align 4, !tbaa !290
  %i.bp = fcmp ogt float %.val.i.i.i23.us.i.i.i, %i.bm
  br i1 %i.bp, label %bb.k, label %"_ZSt10__pop_heapIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL43llama_token_data_array_partial_sort_inplaceP22llama_token_data_arrayiE3$_0EEEvT_S9_S9_RT0_.exit.us.i.i.i"

bb.k:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %.0135.i.i.i20.us.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bq, ptr noundef nonnull align 4 dereferenceable(12) %i.bn, i64 12, i1 false), !tbaa.struct !289
  %.not3.i.us.i.i.i = icmp eq i64 %.0610.i.i.i22.us.i.i.i, 0
  br i1 %.not3.i.us.i.i.i, label %"_ZSt10__pop_heapIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL43llama_token_data_array_partial_sort_inplaceP22llama_token_data_arrayiE3$_0EEEvT_S9_S9_RT0_.exit.us.i.i.i", label %bb.j, !llvm.loop !727

"_ZSt10__pop_heapIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL43llama_token_data_array_partial_sort_inplaceP22llama_token_data_arrayiE3$_0EEEvT_S9_S9_RT0_.exit.us.i.i.i": ; preds = %bb.k, %bb.j, %bb.i
  %.013.lcssa.i.i.i25.us.i.i.i = phi i64 [ 0, %bb.i ], [ 0, %bb.k ], [ %.0135.i.i.i20.us.i.i.i, %bb.j ]
  %i.br = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %.013.lcssa.i.i.i25.us.i.i.i ; 2 uses
  store i64 %.sroa.04.0.copyload.i11.us.i.i.i, ptr %i.br, align 4
  %.sroa.3.0..sroa_idx.i.i.i26.us.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store float %.sroa.4.0.copyload.i13.us.i.i.i, ptr %.sroa.3.0..sroa_idx.i.i.i26.us.i.i.i, align 4, !tbaa !86
  br label %bb.l

bb.l:                                             ; preds = %"_ZSt10__pop_heapIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL43llama_token_data_array_partial_sort_inplaceP22llama_token_data_arrayiE3$_0EEEvT_S9_S9_RT0_.exit.us.i.i.i", %.lr.ph.split.us.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.032.us.i.i.i, i64 12 ; 2 uses
  %i.bt = icmp ult ptr %i.bs, %i.g
  br i1 %i.bt, label %.lr.ph.split.us.i.i.i, label %"_ZSt13__heap_selectIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL43llama_token_data_array_partial_sort_inplaceP22llama_token_data_arrayiE3$_0EEEvT_S9_S9_T0_.exit.i.i", !llvm.loop !729

._crit_edge.i.i14.loopexit.us.i.i.i:              ; preds = %.lr.ph.i.i27.us.i.i.i
  %i.bu = icmp eq i64 %spec.select.i.i31.us.i.i.i, %i.aw
  %or.cond.i.i.i = select i1 %i.au, i1 %i.bu, i1 false
  br i1 %or.cond.i.i.i, label %.thread.i.us.i.i.i, label %bb.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  br i1 %i.au, label %.lr.ph.split.split.us.i.i.i, label %.lr.ph.split.split.i.i.i

.lr.ph.split.split.us.i.i.i:                      ; preds = %.lr.ph.split.i.i.i
  %i.bw = icmp eq i64 %i.av, 0
  br i1 %i.bw, label %.lr.ph.split.split.us.split.us.i.i.i, label %.lr.ph.split.split.us.split.i.i.i

.lr.ph.split.split.us.split.us.i.i.i:             ; preds = %.lr.ph.split.split.us.i.i.i, %bb.m
  %.032.us33.us.i.i.i = phi ptr [ %i.cc, %bb.m ], [ %i.d, %.lr.ph.split.split.us.i.i.i ] ; 5 uses
  %i.bx = getelementptr i8, ptr %.032.us33.us.i.i.i, i64 4
  %.0.val.us34.us.i.i.i = load float, ptr %i.bx, align 4, !tbaa !290
  %.val.us35.us.i.i.i = load float, ptr %i.ap, align 4, !tbaa !290
  %i.by = fcmp ogt float %.0.val.us34.us.i.i.i, %.val.us35.us.i.i.i
  br i1 %i.by, label %._crit_edge.i.i14.us36.us.i.i.i, label %bb.m

._crit_edge.i.i14.us36.us.i.i.i:                  ; preds = %.lr.ph.split.split.us.split.us.i.i.i
  %.sroa.04.0.copyload.i11.us37.us.i.i.i = load i64, ptr %.032.us33.us.i.i.i, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i12.us38.us.i.i.i = getelementptr inbounds nuw i8, ptr %.032.us33.us.i.i.i, i64 8
  %.sroa.4.0.copyload.i13.us39.us.i.i.i = load float, ptr %.sroa.4.0..sroa_idx.i12.us38.us.i.i.i, align 4, !tbaa !86
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.032.us33.us.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.b, i64 12, i1 false), !tbaa.struct !289
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %i.bv, i64 12, i1 false), !tbaa.struct !289
  %.sroa.0.sroa.2.0.extract.shift.i.i.i18.us41.us.i.i.i = lshr i64 %.sroa.04.0.copyload.i11.us37.us.i.i.i, 32
  %.sroa.0.sroa.2.0.extract.trunc.i.i.i19.us42.us.i.i.i = trunc nuw i64 %.sroa.0.sroa.2.0.extract.shift.i.i.i18.us41.us.i.i.i to i32
  %i.bz = bitcast i32 %.sroa.0.sroa.2.0.extract.trunc.i.i.i19.us42.us.i.i.i to float
  %.val.i.i.i23.us46.us.i.i.i = load float, ptr %i.ap, align 4, !tbaa !290
  %i.ca = fcmp ule float %.val.i.i.i23.us46.us.i.i.i, %i.bz
  %spec.select.i.i.i = zext i1 %i.ca to i64
  %i.cb = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %spec.select.i.i.i ; 2 uses
  store i64 %.sroa.04.0.copyload.i11.us37.us.i.i.i, ptr %i.cb, align 4
  %.sroa.3.0..sroa_idx.i.i.i26.us52.us.i.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store float %.sroa.4.0.copyload.i13.us39.us.i.i.i, ptr %.sroa.3.0..sroa_idx.i.i.i26.us52.us.i.i.i, align 4, !tbaa !86
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i14.us36.us.i.i.i, %.lr.ph.split.split.us.split.us.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.032.us33.us.i.i.i, i64 12 ; 2 uses
  %i.cd = icmp ult ptr %i.cc, %i.g
  br i1 %i.cd, label %.lr.ph.split.split.us.split.us.i.i.i, label %"_ZSt13__heap_selectIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL43llama_token_data_array_partial_sort_inplaceP22llama_token_data_arrayiE3$_0EEEvT_S9_S9_T0_.exit.i.i", !llvm.loop !729

.lr.ph.split.split.us.split.i.i.i:                ; preds = %.lr.ph.split.split.us.i.i.i
  %.sroa.3.0..sroa_idx.i.i.i26.us52.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val.us35.pre.i.i.i = load float, ptr %i.ap, align 4, !tbaa !290
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.lr.ph.split.split.us.split.i.i.i
  %.val.us35.i.i.i = phi float [ %.val.us35.pre.i.i.i, %.lr.ph.split.split.us.split.i.i.i ], [ %.val.us3560.i.i.i, %bb.o ] ; 2 uses
  %.032.us33.i.i.i = phi ptr [ %i.d, %.lr.ph.split.split.us.split.i.i.i ], [ %i.cj, %bb.o ] ; 5 uses
  %i.ce = getelementptr i8, ptr %.032.us33.i.i.i, i64 4
  %.0.val.us34.i.i.i = load float, ptr %i.ce, align 4, !tbaa !290
  %i.cf = fcmp ogt float %.0.val.us34.i.i.i, %.val.us35.i.i.i
  br i1 %i.cf, label %._crit_edge.i.i14.us36.i.i.i, label %bb.o

._crit_edge.i.i14.us36.i.i.i:                     ; preds = %bb.n
  %.sroa.04.0.copyload.i11.us37.i.i.i = load i64, ptr %.032.us33.i.i.i, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i12.us38.i.i.i = getelementptr inbounds nuw i8, ptr %.032.us33.i.i.i, i64 8
  %.sroa.4.0.copyload.i13.us39.i.i.i = load float, ptr %.sroa.4.0..sroa_idx.i12.us38.i.i.i, align 4, !tbaa !86
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.032.us33.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.b, i64 12, i1 false), !tbaa.struct !289
  store i64 %.sroa.04.0.copyload.i11.us37.i.i.i, ptr %i.b, align 4
  store float %.sroa.4.0.copyload.i13.us39.i.i.i, ptr %.sroa.3.0..sroa_idx.i.i.i26.us52.i.i.i, align 4, !tbaa !86
  %i.cg = lshr i64 %.sroa.04.0.copyload.i11.us37.i.i.i, 32
  %i.ch = trunc nuw i64 %i.cg to i32
  %i.ci = bitcast i32 %i.ch to float
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.i.i14.us36.i.i.i, %bb.n
  %.val.us3560.i.i.i = phi float [ %i.ci, %._crit_edge.i.i14.us36.i.i.i ], [ %.val.us35.i.i.i, %bb.n ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.032.us33.i.i.i, i64 12 ; 2 uses
  %i.ck = icmp ult ptr %i.cj, %i.g
  br i1 %i.ck, label %bb.n, label %"_ZSt13__heap_selectIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL43llama_token_data_array_partial_sort_inplaceP22llama_token_data_arrayiE3$_0EEEvT_S9_S9_T0_.exit.i.i", !llvm.loop !729

.lr.ph.split.split.i.i.i:                         ; preds = %.lr.ph.split.i.i.i
  %.sroa.3.0..sroa_idx.i.i.i26.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val.pre.i.i.i = load float, ptr %i.ap, align 4, !tbaa !290
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.split.split.i.i.i
  %.val.i.i.i = phi float [ %.val.pre.i.i.i, %.lr.ph.split.split.i.i.i ], [ %.val58.i.i.i, %bb.q ] ; 2 uses
  %.032.i.i.i = phi ptr [ %i.d, %.lr.ph.split.split.i.i.i ], [ %i.cq, %bb.q ] ; 5 uses
  %i.cl = getelementptr i8, ptr %.032.i.i.i, i64 4
  %.0.val.i.i.i = load float, ptr %i.cl, align 4, !tbaa !290
  %i.cm = fcmp ogt float %.0.val.i.i.i, %.val.i.i.i
  br i1 %i.cm, label %._crit_edge.i.i14.i.i.i, label %bb.q

._crit_edge.i.i14.i.i.i:                          ; preds = %bb.p
  %.sroa.04.0.copyload.i11.i.i.i = load i64, ptr %.032.i.i.i, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i12.i.i.i = getelementptr inbounds nuw i8, ptr %.032.i.i.i, i64 8
  %.sroa.4.0.copyload.i13.i.i.i = load float, ptr %.sroa.4.0..sroa_idx.i12.i.i.i, align 4, !tbaa !86
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.032.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.b, i64 12, i1 false), !tbaa.struct !289
  store i64 %.sroa.04.0.copyload.i11.i.i.i, ptr %i.b, align 4
  store float %.sroa.4.0.copyload.i13.i.i.i, ptr %.sroa.3.0..sroa_idx.i.i.i26.i.i.i, align 4, !tbaa !86
  %i.cn = lshr i64 %.sroa.04.0.copyload.i11.i.i.i, 32
  %i.co = trunc nuw i64 %i.cn to i32
  %i.cp = bitcast i32 %i.co to float
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge.i.i14.i.i.i, %bb.p
  %.val58.i.i.i = phi float [ %.val.i.i.i, %bb.p ], [ %i.cp, %._crit_edge.i.i14.i.i.i ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.032.i.i.i, i64 12 ; 2 uses
  %i.cr = icmp ult ptr %i.cq, %i.g
  br i1 %i.cr, label %bb.p, label %"_ZSt13__heap_selectIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL43llama_token_data_array_partial_sort_inplaceP22llama_token_data_arrayiE3$_0EEEvT_S9_S9_T0_.exit.i.i", !llvm.loop !729

"_ZSt13__heap_selectIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL43llama_token_data_array_partial_sort_inplaceP22llama_token_data_arrayiE3$_0EEEvT_S9_S9_T0_.exit.i.i": ; preds = %bb.q, %bb.o, %bb.m, %bb.l, %"_ZSt11__make_heapIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL43llama_token_data_array_partial_sort_inplaceP22llama_token_data_arrayiE3$_0EEEvT_S9_RT0_.exit.i.i.i"
  %i.cs = icmp sgt i32 %1, 1
  br i1 %i.cs, label %.lr.ph.i5.i.i, label %"_ZSt12partial_sortIP16llama_token_dataZL43llama_token_data_array_partial_sort_inplaceP22llama_token_data_arrayiE3$_0EvT_S5_S5_T0_.exit"

.lr.ph.i5.i.i:                                    ; preds = %"_ZSt13__heap_selectIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL43llama_token_data_array_partial_sort_inplaceP22llama_token_data_arrayiE3$_0EEEvT_S9_S9_T0_.exit.i.i", %"_ZSt10__pop_heapIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL43llama_token_data_array_partial_sort_inplaceP22llama_token_data_arrayiE3$_0EEEvT_S9_S9_RT0_.exit.i.i.i"
  %.01.i.i.i = phi ptr [ %i.ct, %"_ZSt10__pop_heapIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL43llama_token_data_array_partial_sort_inplaceP22llama_token_data_arrayiE3$_0EEEvT_S9_S9_RT0_.exit.i.i.i" ], [ %i.d, %"_ZSt13__heap_selectIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL43llama_token_data_array_partial_sort_inplaceP22llama_token_data_arrayiE3$_0EEEvT_S9_S9_T0_.exit.i.i" ] ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %.01.i.i.i, i64 -12 ; 4 uses
  %.sroa.04.0.copyload.i.i6.i.i = load i64, ptr %i.ct, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i7.i.i = getelementptr inbounds i8, ptr %.01.i.i.i, i64 -4
  %.sroa.4.0.copyload.i.i8.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i7.i.i, align 4, !tbaa !86
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ct, ptr noundef nonnull align 4 dereferenceable(12) %i.b, i64 12, i1 false), !tbaa.struct !289
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = sub i64 %i.cu, %i.h                     ; 3 uses
  %i.cw = sdiv exact i64 %i.cv, 12                ; 3 uses
  %i.cx = add nsw i64 %i.cw, -1
  %i.cy = sdiv i64 %i.cx, 2
  %i.cz = icmp sgt i64 %i.cv, 24
  br i1 %i.cz, label %.lr.ph.i.i.i21.i.i, label %._crit_edge.i.i.i9.i.i

.lr.ph.i.i.i21.i.i:                               ; preds = %.lr.ph.i5.i.i, %.lr.ph.i.i.i21.i.i
  %.035.i.i.i22.i.i = phi i64 [ %spec.select.i.i.i25.i.i, %.lr.ph.i.i.i21.i.i ], [ 0, %.lr.ph.i5.i.i ] ; 2 uses
  %i.da = shl i64 %.035.i.i.i22.i.i, 1            ; 3 uses
  %i.db = add i64 %i.da, 2                        ; 2 uses
  %i.dc = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %i.db
  %i.dd = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %i.da
  %i.de = getelementptr i8, ptr %i.dc, i64 4
  %.val.i.i.i23.i.i = load float, ptr %i.de, align 4, !tbaa !290
  %i.df = getelementptr i8, ptr %i.dd, i64 16
  %.val34.i.i.i24.i.i = load float, ptr %i.df, align 4, !tbaa !290
  %i.dg = fcmp ogt float %.val.i.i.i23.i.i, %.val34.i.i.i24.i.i
  %i.dh = or disjoint i64 %i.da, 1
  %spec.select.i.i.i25.i.i = select i1 %i.dg, i64 %i.dh, i64 %i.db ; 4 uses
  %i.di = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %spec.select.i.i.i25.i.i
  %i.dj = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %.035.i.i.i22.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dj, ptr noundef nonnull align 4 dereferenceable(12) %i.di, i64 12, i1 false), !tbaa.struct !289
  %i.dk = icmp slt i64 %spec.select.i.i.i25.i.i, %i.cy
  br i1 %i.dk, label %.lr.ph.i.i.i21.i.i, label %._crit_edge.i.i.i9.i.i, !llvm.loop !726

._crit_edge.i.i.i9.i.i:                           ; preds = %.lr.ph.i.i.i21.i.i, %.lr.ph.i5.i.i
  %.0.lcssa.i.i.i10.i.i = phi i64 [ 0, %.lr.ph.i5.i.i ], [ %spec.select.i.i.i25.i.i, %.lr.ph.i.i.i21.i.i ] ; 5 uses
  %i.dl = and i64 %i.cw, 1
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i.i9.i.i
  %i.dn = add nsw i64 %i.cw, -2
  %i.do = ashr exact i64 %i.dn, 1
  %i.dp = icmp eq i64 %.0.lcssa.i.i.i10.i.i, %i.do
  br i1 %i.dp, label %.thread.i.i.i.i, label %bb.s

.thread.i.i.i.i:                                  ; preds = %bb.r
  %i.dq = shl nuw nsw i64 %.0.lcssa.i.i.i10.i.i, 1
  %i.dr = or disjoint i64 %i.dq, 1                ; 2 uses
  %i.ds = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %i.dr
  %i.dt = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %.0.lcssa.i.i.i10.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dt, ptr noundef nonnull align 4 dereferenceable(12) %i.ds, i64 12, i1 false), !tbaa.struct !289
  br label %.lr.ph.i.i.i.i12.i.i

bb.s:                                             ; preds = %bb.r, %._crit_edge.i.i.i9.i.i
  %.not.i.i11.i.i = icmp eq i64 %.0.lcssa.i.i.i10.i.i, 0
end_hunk_0
begin_hunk_1_@_ZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorI16llama_token_dataSaIS3_EE:.noexc

.thread156:                                       ; preds = %.loopexit, %.loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0210, i64 noundef %i.cc) #39
  br label %.thread

.thread:                                          ; preds = %.loopexit183, %.loopexit.split-lp184, %bb.q, %bb.p, %.thread156
  %.sroa.16139.0200 = phi ptr [ %.sroa.16139.0.lcssa, %.thread156 ], [ %.sroa.11137.0203, %.loopexit.split-lp184 ], [ %.sroa.16139.0.lcssa, %bb.q ], [ %.sroa.16139.0.lcssa, %bb.p ], [ %.sroa.11137.0203, %.loopexit183 ]
  %.sroa.0132.0196 = phi ptr [ %.sroa.0132.0.lcssa, %.thread156 ], [ %.sroa.0132.0204, %.loopexit.split-lp184 ], [ %.sroa.0132.0.lcssa, %bb.q ], [ %.sroa.0132.0.lcssa, %bb.p ], [ %.sroa.0132.0204, %.loopexit183 ] ; 3 uses
  %.pn64153 = phi { ptr, i32 } [ %lpad.phi, %.thread156 ], [ %lpad.loopexit.split-lp186, %.loopexit.split-lp184 ], [ %i.bz, %bb.q ], [ %i.by, %bb.p ], [ %lpad.loopexit185, %.loopexit183 ] ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 512) #39
  %.not.i.i.i91 = icmp eq ptr %.sroa.0132.0196, null
  br i1 %.not.i.i.i91, label %_ZNSt6vectorIiSaIiEED2Ev.exit92, label %bb.an

bb.an:                                            ; preds = %.thread
  %i.fq = ptrtoint ptr %.sroa.16139.0200 to i64
  %i.fr = ptrtoint ptr %.sroa.0132.0196 to i64
  %i.fs = sub i64 %i.fq, %i.fr
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0132.0196, i64 noundef %i.fs) #39
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit92

_ZNSt6vectorIiSaIiEED2Ev.exit92:                  ; preds = %.thread.thread, %.thread, %bb.an
  %.pn64.pn173 = phi { ptr, i32 } [ %i.j, %.thread.thread ], [ %.pn64153, %.thread ], [ %.pn64153, %bb.an ]
  resume { ptr, i32 } %.pn64.pn173
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #21

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIP16llama_token_datalN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_T0_T1_"(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #24 {
bb.a:
  %3 = alloca %struct.llama_token_data, align 4   ; 4 uses
  %4 = alloca %struct.llama_token_data, align 4   ; 4 uses
  %5 = alloca %struct.llama_token_data, align 4   ; 4 uses
  %6 = alloca %struct.llama_token_data, align 4   ; 4 uses
  %7 = alloca %struct.llama_token_data, align 4   ; 4 uses
  %8 = alloca %struct.llama_token_data, align 4   ; 4 uses
  %9 = alloca %struct.llama_token_data, align 4   ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 192
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.f = getelementptr i8, ptr %0, i64 16
  %i.g = getelementptr i8, ptr %0, i64 4
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph27

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEET_SE_SE_T0_.exit"
  %i.i = icmp eq i64 %i.k, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph27, !llvm.loop !740

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.020.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ] ; 2 uses
  tail call fastcc void @"_ZSt14__partial_sortIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_SE_T0_"(ptr noundef %0, ptr noundef %.020.lcssa, ptr noundef %.020.lcssa)
  br label %.loopexit

.lr.ph27:                                         ; preds = %.lr.ph, %bb.b
  %.0171926 = phi i64 [ %i.k, %bb.b ], [ %2, %.lr.ph ]
  %.02025 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %i.j = phi i64 [ %i.ac, %bb.b ], [ %i.c, %.lr.ph ]
  %i.k = add nsw i64 %.0171926, -1                ; 3 uses
  %i.l = udiv i64 %i.j, 24
  %i.m = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.l ; 5 uses
  %i.n = getelementptr inbounds i8, ptr %.02025, i64 -12 ; 4 uses
  %.val29.i.i = load float, ptr %i.f, align 4, !tbaa !290 ; 3 uses
  %i.o = getelementptr i8, ptr %i.m, i64 4
  %.val30.i.i = load float, ptr %i.o, align 4, !tbaa !290 ; 3 uses
  %i.p = fcmp ogt float %.val29.i.i, %.val30.i.i
  %i.q = getelementptr i8, ptr %.02025, i64 -8
  %.val28.i.i = load float, ptr %i.q, align 4, !tbaa !290 ; 4 uses
  br i1 %i.p, label %bb.c, label %bb.h

bb.c:                                             ; preds = %.lr.ph27
  %i.r = fcmp ogt float %.val30.i.i, %.val28.i.i
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !289
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.m, i64 12, i1 false), !tbaa.struct !289
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.m, ptr noundef nonnull align 4 dereferenceable(12) %9, i64 12, i1 false), !tbaa.struct !289
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %"_ZSt22__move_median_to_firstIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.e:                                             ; preds = %bb.c
  %i.s = fcmp ogt float %.val29.i.i, %.val28.i.i
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !289
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.n, i64 12, i1 false), !tbaa.struct !289
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.n, ptr noundef nonnull align 4 dereferenceable(12) %8, i64 12, i1 false), !tbaa.struct !289
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %"_ZSt22__move_median_to_firstIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !289
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false), !tbaa.struct !289
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !289
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %"_ZSt22__move_median_to_firstIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.h:                                             ; preds = %.lr.ph27
  %i.t = fcmp ogt float %.val29.i.i, %.val28.i.i
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !289
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false), !tbaa.struct !289
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %6, i64 12, i1 false), !tbaa.struct !289
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %"_ZSt22__move_median_to_firstIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.j:                                             ; preds = %bb.h
  %i.u = fcmp ogt float %.val30.i.i, %.val28.i.i
  br i1 %i.u, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !289
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.n, i64 12, i1 false), !tbaa.struct !289
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.n, ptr noundef nonnull align 4 dereferenceable(12) %5, i64 12, i1 false), !tbaa.struct !289
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %"_ZSt22__move_median_to_firstIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !289
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.m, i64 12, i1 false), !tbaa.struct !289
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.m, ptr noundef nonnull align 4 dereferenceable(12) %4, i64 12, i1 false), !tbaa.struct !289
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %"_ZSt22__move_median_to_firstIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader": ; preds = %bb.l, %bb.k, %bb.i, %bb.g, %bb.f, %bb.d
  br label %"_ZSt22__move_median_to_firstIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_SE_SE_T0_.exit.i"

"_ZSt22__move_median_to_firstIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_SE_SE_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader", %bb.o
  %.013.i.i = phi ptr [ %.114.i.i, %bb.o ], [ %.02025, %"_ZSt22__move_median_to_firstIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader" ]
  %.0.i.i = phi ptr [ %i.x, %bb.o ], [ %i.e, %"_ZSt22__move_median_to_firstIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader" ]
  %.val15.i.i = load float, ptr %i.g, align 4, !tbaa !290 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %"_ZSt22__move_median_to_firstIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_SE_SE_T0_.exit.i"
  %.1.i.i = phi ptr [ %.0.i.i, %"_ZSt22__move_median_to_firstIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_SE_SE_T0_.exit.i" ], [ %i.x, %bb.m ] ; 9 uses
  %i.v = getelementptr i8, ptr %.1.i.i, i64 4
  %.1.val.i.i = load float, ptr %i.v, align 4, !tbaa !290
  %i.w = fcmp ogt float %.1.val.i.i, %.val15.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 12 ; 2 uses
  br i1 %i.w, label %bb.m, label %.preheader.i.i, !llvm.loop !741

.preheader.i.i:                                   ; preds = %bb.m, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.m ] ; 2 uses
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -12 ; 5 uses
  %i.y = getelementptr i8, ptr %.013.pn.i.i, i64 -8
  %.114.val.i.i = load float, ptr %i.y, align 4, !tbaa !290
  %i.z = fcmp ogt float %.val15.i.i, %.114.val.i.i
  br i1 %i.z, label %.preheader.i.i, label %bb.n, !llvm.loop !742

bb.n:                                             ; preds = %.preheader.i.i
  %i.aa = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.aa, label %bb.o, label %"_ZSt27__unguarded_partition_pivotIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEET_SE_SE_T0_.exit"

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i, i64 12, i1 false), !tbaa.struct !289
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.114.i.i, i64 12, i1 false), !tbaa.struct !289
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.114.i.i, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !289
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %"_ZSt22__move_median_to_firstIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_SE_SE_T0_.exit.i", !llvm.loop !743

"_ZSt27__unguarded_partition_pivotIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEET_SE_SE_T0_.exit": ; preds = %bb.n
  tail call fastcc void @"_ZSt16__introsort_loopIP16llama_token_datalN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_T0_T1_"(ptr noundef nonnull %.1.i.i, ptr noundef %.02025, i64 noundef %i.k)
  %i.ab = ptrtoint ptr %.1.i.i to i64
  %i.ac = sub i64 %i.ab, %i.a                     ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, 192
  br i1 %i.ad, label %bb.b, label %.loopexit, !llvm.loop !740

.loopexit:                                        ; preds = %"_ZSt27__unguarded_partition_pivotIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEET_SE_SE_T0_.exit", %bb.a, %._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @"_ZSt14__partial_sortIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_SE_T0_"(ptr noundef %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #25 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 5 uses
  %i.d = icmp slt i64 %i.c, 24
  br i1 %i.d, label %"_ZSt11__make_heapIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_RT0_.exit.i", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = udiv exact i64 %i.c, 12                  ; 3 uses
  %i.f = add nsw i64 %i.e, -2                     ; 2 uses
  %i.g = lshr i64 %i.f, 1                         ; 3 uses
  %i.h = add nsw i64 %i.e, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.e, 1
  %i.k = icmp eq i64 %i.j, 0
  %3 = or disjoint i64 %i.f, 1                    ; 2 uses
  %i.l = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %3
  %i.m = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.g
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt13__adjust_heapIP16llama_token_datalS0_N9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_T0_SF_T1_T2_.exit.i.i", %bb.b
  %.017.i.i = phi i64 [ %i.g, %bb.b ], [ %i.aj, %"_ZSt13__adjust_heapIP16llama_token_datalS0_N9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_T0_SF_T1_T2_.exit.i.i" ] ; 8 uses
  %i.n = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.017.i.i ; 2 uses
  %.sroa.04.0.copyload.i.i = load i64, ptr %i.n, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.4.0.copyload.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !86
  %i.o = icmp slt i64 %.017.i.i, %i.i
  br i1 %i.o, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.035.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.017.i.i, %bb.c ] ; 2 uses
  %i.p = shl i64 %.035.i.i.i, 1                   ; 3 uses
  %i.q = add i64 %i.p, 2                          ; 2 uses
  %i.r = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.p
  %i.t = getelementptr i8, ptr %i.r, i64 4
  %.val.i.i.i = load float, ptr %i.t, align 4, !tbaa !290
  %i.u = getelementptr i8, ptr %i.s, i64 16
  %.val34.i.i.i = load float, ptr %i.u, align 4, !tbaa !290
  %i.v = fcmp ogt float %.val.i.i.i, %.val34.i.i.i
  %i.w = or disjoint i64 %i.p, 1
  %spec.select.i.i.i = select i1 %i.v, i64 %i.w, i64 %i.q ; 4 uses
  %i.x = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %spec.select.i.i.i
  %i.y = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.035.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.y, ptr noundef nonnull align 4 dereferenceable(12) %i.x, i64 12, i1 false), !tbaa.struct !289
  %i.z = icmp slt i64 %spec.select.i.i.i, %i.i
  br i1 %i.z, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !744

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.017.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.aa = icmp eq i64 %.0.lcssa.i.i.i, %i.g
  %or.cond.i.i = select i1 %i.k, i1 %i.aa, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.m, ptr noundef nonnull align 4 dereferenceable(12) %i.l, i64 12, i1 false), !tbaa.struct !289
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ab = icmp samesign ugt i64 %.1.i.i.i, %.017.i.i
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %"_ZSt13__adjust_heapIP16llama_token_datalS0_N9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_T0_SF_T1_T2_.exit.i.i"

.lr.ph.i.i.i.i:                                   ; preds = %bb.e
  %.sroa.0.sroa.2.0.extract.shift.i.i.i.i = lshr i64 %.sroa.04.0.copyload.i.i, 32
  %.sroa.0.sroa.2.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.0.sroa.2.0.extract.shift.i.i.i.i to i32
  %i.ac = bitcast i32 %.sroa.0.sroa.2.0.extract.trunc.i.i.i.i to float
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.0135.i.i.i.i = phi i64 [ %.1.i.i.i, %.lr.ph.i.i.i.i ], [ %.0610.i.i.i.i, %bb.g ] ; 3 uses
  %.06.in.i.i.i.i = add nsw i64 %.0135.i.i.i.i, -1
  %.0610.i.i.i.i = lshr i64 %.06.in.i.i.i.i, 1    ; 4 uses
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.0610.i.i.i.i ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 4
  %.val.i.i.i.i = load float, ptr %i.ae, align 4, !tbaa !290
  %i.af = fcmp ogt float %.val.i.i.i.i, %i.ac
  br i1 %i.af, label %bb.g, label %"_ZSt13__adjust_heapIP16llama_token_datalS0_N9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_T0_SF_T1_T2_.exit.i.i"

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.0135.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ag, ptr noundef nonnull align 4 dereferenceable(12) %i.ad, i64 12, i1 false), !tbaa.struct !289
  %i.ah = icmp samesign ugt i64 %.0610.i.i.i.i, %.017.i.i
  br i1 %i.ah, label %bb.f, label %"_ZSt13__adjust_heapIP16llama_token_datalS0_N9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_T0_SF_T1_T2_.exit.i.i", !llvm.loop !745

"_ZSt13__adjust_heapIP16llama_token_datalS0_N9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_T0_SF_T1_T2_.exit.i.i": ; preds = %bb.g, %bb.f, %bb.e
  %.013.lcssa.i.i.i.i = phi i64 [ %.1.i.i.i, %bb.e ], [ %.0610.i.i.i.i, %bb.g ], [ %.0135.i.i.i.i, %bb.f ]
  %i.ai = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i ; 2 uses
  store i64 %.sroa.04.0.copyload.i.i, ptr %i.ai, align 4
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store float %.sroa.4.0.copyload.i.i, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 4, !tbaa !86
  %.not.i.i = icmp eq i64 %.017.i.i, 0
  %i.aj = add nsw i64 %.017.i.i, -1
  br i1 %.not.i.i, label %"_ZSt11__make_heapIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_RT0_.exit.i", label %bb.c, !llvm.loop !746

"_ZSt11__make_heapIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_RT0_.exit.i": ; preds = %"_ZSt13__adjust_heapIP16llama_token_datalS0_N9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_T0_SF_T1_T2_.exit.i.i", %bb.a
  %i.ak = icmp ult ptr %1, %2
  br i1 %i.ak, label %.lr.ph.i, label %"_ZSt13__heap_selectIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_SE_T0_.exit"

.lr.ph.i:                                         ; preds = %"_ZSt11__make_heapIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_RT0_.exit.i"
  %i.al = getelementptr i8, ptr %0, i64 4         ; 5 uses
  %i.am = sdiv i64 %i.c, 12                       ; 3 uses
  %i.an = add nsw i64 %i.am, -1
  %i.ao = sdiv i64 %i.an, 2
  %i.ap = icmp sgt i64 %i.c, 24
  %i.aq = and i64 %i.am, 1
  %i.ar = icmp eq i64 %i.aq, 0                    ; 2 uses
  %i.as = add nsw i64 %i.am, -2                   ; 3 uses
  %i.at = ashr exact i64 %i.as, 1                 ; 2 uses
  br i1 %i.ap, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %.lr.ph.i
  %4 = or disjoint i64 %i.as, 1                   ; 2 uses
  %i.au = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %4
  %i.av = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.at
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.k, %.lr.ph.split.us.preheader.i
  %.032.us.i = phi ptr [ %i.bp, %bb.k ], [ %1, %.lr.ph.split.us.preheader.i ] ; 5 uses
  %i.aw = getelementptr i8, ptr %.032.us.i, i64 4
  %.0.val.us.i = load float, ptr %i.aw, align 4, !tbaa !290
  %.val.us.i = load float, ptr %i.al, align 4, !tbaa !290
  %i.ax = fcmp ogt float %.0.val.us.i, %.val.us.i
  br i1 %i.ax, label %.lr.ph.i.i27.preheader.us.i, label %bb.k

.lr.ph.i.i27.preheader.us.i:                      ; preds = %.lr.ph.split.us.i
  %.sroa.04.0.copyload.i11.us.i = load i64, ptr %.032.us.i, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i12.us.i = getelementptr inbounds nuw i8, ptr %.032.us.i, i64 8
  %.sroa.4.0.copyload.i13.us.i = load float, ptr %.sroa.4.0..sroa_idx.i12.us.i, align 4, !tbaa !86
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.032.us.i, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !289
  br label %.lr.ph.i.i27.us.i

.lr.ph.i.i27.us.i:                                ; preds = %.lr.ph.i.i27.us.i, %.lr.ph.i.i27.preheader.us.i
  %.035.i.i28.us.i = phi i64 [ %spec.select.i.i31.us.i, %.lr.ph.i.i27.us.i ], [ 0, %.lr.ph.i.i27.preheader.us.i ] ; 2 uses
  %i.ay = shl i64 %.035.i.i28.us.i, 1             ; 3 uses
  %i.az = add i64 %i.ay, 2                        ; 2 uses
  %i.ba = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.az
  %i.bb = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.ay
  %i.bc = getelementptr i8, ptr %i.ba, i64 4
  %.val.i.i29.us.i = load float, ptr %i.bc, align 4, !tbaa !290
  %i.bd = getelementptr i8, ptr %i.bb, i64 16
  %.val34.i.i30.us.i = load float, ptr %i.bd, align 4, !tbaa !290
  %i.be = fcmp ogt float %.val.i.i29.us.i, %.val34.i.i30.us.i
  %i.bf = or disjoint i64 %i.ay, 1
  %spec.select.i.i31.us.i = select i1 %i.be, i64 %i.bf, i64 %i.az ; 6 uses
  %i.bg = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %spec.select.i.i31.us.i
  %i.bh = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.035.i.i28.us.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bh, ptr noundef nonnull align 4 dereferenceable(12) %i.bg, i64 12, i1 false), !tbaa.struct !289
  %i.bi = icmp slt i64 %spec.select.i.i31.us.i, %i.ao
  br i1 %i.bi, label %.lr.ph.i.i27.us.i, label %._crit_edge.i.i14.loopexit.us.i, !llvm.loop !744

bb.h:                                             ; preds = %._crit_edge.i.i14.loopexit.us.i
  %.not.i16.us.i = icmp eq i64 %spec.select.i.i31.us.i, 0
  br i1 %.not.i16.us.i, label %"_ZSt10__pop_heapIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_SE_RT0_.exit.us.i", label %.lr.ph.i.i.i17.us.i

.thread.i.us.i:                                   ; preds = %._crit_edge.i.i14.loopexit.us.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.av, ptr noundef nonnull align 4 dereferenceable(12) %i.au, i64 12, i1 false), !tbaa.struct !289
  br label %.lr.ph.i.i.i17.us.i

.lr.ph.i.i.i17.us.i:                              ; preds = %.thread.i.us.i, %bb.h
  %.1.i2.i.us.i = phi i64 [ %4, %.thread.i.us.i ], [ %spec.select.i.i31.us.i, %bb.h ]
  %.sroa.0.sroa.2.0.extract.shift.i.i.i18.us.i = lshr i64 %.sroa.04.0.copyload.i11.us.i, 32
  %.sroa.0.sroa.2.0.extract.trunc.i.i.i19.us.i = trunc nuw i64 %.sroa.0.sroa.2.0.extract.shift.i.i.i18.us.i to i32
  %i.bj = bitcast i32 %.sroa.0.sroa.2.0.extract.trunc.i.i.i19.us.i to float
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i.i.i17.us.i
  %.0135.i.i.i20.us.i = phi i64 [ %.1.i2.i.us.i, %.lr.ph.i.i.i17.us.i ], [ %.0610.i.i.i22.us.i, %bb.j ] ; 3 uses
  %.06.in.i.i.i21.us.i = add nsw i64 %.0135.i.i.i20.us.i, -1
  %.0610.i.i.i22.us.i = lshr i64 %.06.in.i.i.i21.us.i, 1 ; 3 uses
  %i.bk = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.0610.i.i.i22.us.i ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 4
  %.val.i.i.i23.us.i = load float, ptr %i.bl, align 4, !tbaa !290
  %i.bm = fcmp ogt float %.val.i.i.i23.us.i, %i.bj
  br i1 %i.bm, label %bb.j, label %"_ZSt10__pop_heapIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_SE_RT0_.exit.us.i"

bb.j:                                             ; preds = %bb.i
  %i.bn = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.0135.i.i.i20.us.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bn, ptr noundef nonnull align 4 dereferenceable(12) %i.bk, i64 12, i1 false), !tbaa.struct !289
  %.not3.i.us.i = icmp eq i64 %.0610.i.i.i22.us.i, 0
  br i1 %.not3.i.us.i, label %"_ZSt10__pop_heapIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_SE_RT0_.exit.us.i", label %bb.i, !llvm.loop !745

"_ZSt10__pop_heapIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_SE_RT0_.exit.us.i": ; preds = %bb.j, %bb.i, %bb.h
  %.013.lcssa.i.i.i25.us.i = phi i64 [ 0, %bb.h ], [ 0, %bb.j ], [ %.0135.i.i.i20.us.i, %bb.i ]
  %i.bo = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.013.lcssa.i.i.i25.us.i ; 2 uses
  store i64 %.sroa.04.0.copyload.i11.us.i, ptr %i.bo, align 4
  %.sroa.3.0..sroa_idx.i.i.i26.us.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store float %.sroa.4.0.copyload.i13.us.i, ptr %.sroa.3.0..sroa_idx.i.i.i26.us.i, align 4, !tbaa !86
  br label %bb.k

bb.k:                                             ; preds = %"_ZSt10__pop_heapIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_SE_RT0_.exit.us.i", %.lr.ph.split.us.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.032.us.i, i64 12 ; 2 uses
  %i.bq = icmp ult ptr %i.bp, %2
  br i1 %i.bq, label %.lr.ph.split.us.i, label %"_ZSt13__heap_selectIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_SE_T0_.exit", !llvm.loop !747

._crit_edge.i.i14.loopexit.us.i:                  ; preds = %.lr.ph.i.i27.us.i
  %i.br = icmp eq i64 %spec.select.i.i31.us.i, %i.at
  %or.cond.i = select i1 %i.ar, i1 %i.br, i1 false
  br i1 %or.cond.i, label %.thread.i.us.i, label %bb.h

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 12
  br i1 %i.ar, label %.lr.ph.split.split.us.i, label %.lr.ph.split.split.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i
  %i.bt = icmp eq i64 %i.as, 0
  br i1 %i.bt, label %.lr.ph.split.split.us.split.us.i, label %.lr.ph.split.split.us.split.i

.lr.ph.split.split.us.split.us.i:                 ; preds = %.lr.ph.split.split.us.i, %bb.l
  %.032.us33.us.i = phi ptr [ %i.bz, %bb.l ], [ %1, %.lr.ph.split.split.us.i ] ; 5 uses
  %i.bu = getelementptr i8, ptr %.032.us33.us.i, i64 4
  %.0.val.us34.us.i = load float, ptr %i.bu, align 4, !tbaa !290
  %.val.us35.us.i = load float, ptr %i.al, align 4, !tbaa !290
  %i.bv = fcmp ogt float %.0.val.us34.us.i, %.val.us35.us.i
  br i1 %i.bv, label %._crit_edge.i.i14.us36.us.i, label %bb.l

._crit_edge.i.i14.us36.us.i:                      ; preds = %.lr.ph.split.split.us.split.us.i
  %.sroa.04.0.copyload.i11.us37.us.i = load i64, ptr %.032.us33.us.i, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i12.us38.us.i = getelementptr inbounds nuw i8, ptr %.032.us33.us.i, i64 8
  %.sroa.4.0.copyload.i13.us39.us.i = load float, ptr %.sroa.4.0..sroa_idx.i12.us38.us.i, align 4, !tbaa !86
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.032.us33.us.i, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !289
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.bs, i64 12, i1 false), !tbaa.struct !289
  %.sroa.0.sroa.2.0.extract.shift.i.i.i18.us41.us.i = lshr i64 %.sroa.04.0.copyload.i11.us37.us.i, 32
  %.sroa.0.sroa.2.0.extract.trunc.i.i.i19.us42.us.i = trunc nuw i64 %.sroa.0.sroa.2.0.extract.shift.i.i.i18.us41.us.i to i32
  %i.bw = bitcast i32 %.sroa.0.sroa.2.0.extract.trunc.i.i.i19.us42.us.i to float
  %.val.i.i.i23.us46.us.i = load float, ptr %i.al, align 4, !tbaa !290
  %i.bx = fcmp ule float %.val.i.i.i23.us46.us.i, %i.bw
  %spec.select.i = zext i1 %i.bx to i64
  %i.by = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %spec.select.i ; 2 uses
  store i64 %.sroa.04.0.copyload.i11.us37.us.i, ptr %i.by, align 4
  %.sroa.3.0..sroa_idx.i.i.i26.us52.us.i = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store float %.sroa.4.0.copyload.i13.us39.us.i, ptr %.sroa.3.0..sroa_idx.i.i.i26.us52.us.i, align 4, !tbaa !86
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.i14.us36.us.i, %.lr.ph.split.split.us.split.us.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.032.us33.us.i, i64 12 ; 2 uses
  %i.ca = icmp ult ptr %i.bz, %2
  br i1 %i.ca, label %.lr.ph.split.split.us.split.us.i, label %"_ZSt13__heap_selectIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_SE_T0_.exit", !llvm.loop !747

.lr.ph.split.split.us.split.i:                    ; preds = %.lr.ph.split.split.us.i
  %.sroa.3.0..sroa_idx.i.i.i26.us52.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.us35.pre.i = load float, ptr %i.al, align 4, !tbaa !290
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.split.split.us.split.i
  %.val.us35.i = phi float [ %.val.us35.pre.i, %.lr.ph.split.split.us.split.i ], [ %.val.us3560.i, %bb.n ] ; 2 uses
  %.032.us33.i = phi ptr [ %1, %.lr.ph.split.split.us.split.i ], [ %i.cg, %bb.n ] ; 5 uses
  %i.cb = getelementptr i8, ptr %.032.us33.i, i64 4
  %.0.val.us34.i = load float, ptr %i.cb, align 4, !tbaa !290
  %i.cc = fcmp ogt float %.0.val.us34.i, %.val.us35.i
  br i1 %i.cc, label %._crit_edge.i.i14.us36.i, label %bb.n

._crit_edge.i.i14.us36.i:                         ; preds = %bb.m
  %.sroa.04.0.copyload.i11.us37.i = load i64, ptr %.032.us33.i, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i12.us38.i = getelementptr inbounds nuw i8, ptr %.032.us33.i, i64 8
  %.sroa.4.0.copyload.i13.us39.i = load float, ptr %.sroa.4.0..sroa_idx.i12.us38.i, align 4, !tbaa !86
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.032.us33.i, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !289
  store i64 %.sroa.04.0.copyload.i11.us37.i, ptr %0, align 4
  store float %.sroa.4.0.copyload.i13.us39.i, ptr %.sroa.3.0..sroa_idx.i.i.i26.us52.i, align 4, !tbaa !86
  %i.cd = lshr i64 %.sroa.04.0.copyload.i11.us37.i, 32
  %i.ce = trunc nuw i64 %i.cd to i32
  %i.cf = bitcast i32 %i.ce to float
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge.i.i14.us36.i, %bb.m
  %.val.us3560.i = phi float [ %i.cf, %._crit_edge.i.i14.us36.i ], [ %.val.us35.i, %bb.m ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.032.us33.i, i64 12 ; 2 uses
  %i.ch = icmp ult ptr %i.cg, %2
  br i1 %i.ch, label %bb.m, label %"_ZSt13__heap_selectIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_SE_T0_.exit", !llvm.loop !747

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.i
  %.sroa.3.0..sroa_idx.i.i.i26.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.pre.i = load float, ptr %i.al, align 4, !tbaa !290
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.lr.ph.split.split.i
  %.val.i = phi float [ %.val.pre.i, %.lr.ph.split.split.i ], [ %.val58.i, %bb.p ] ; 2 uses
  %.032.i = phi ptr [ %1, %.lr.ph.split.split.i ], [ %i.cn, %bb.p ] ; 5 uses
  %i.ci = getelementptr i8, ptr %.032.i, i64 4
  %.0.val.i = load float, ptr %i.ci, align 4, !tbaa !290
  %i.cj = fcmp ogt float %.0.val.i, %.val.i
  br i1 %i.cj, label %._crit_edge.i.i14.i, label %bb.p

._crit_edge.i.i14.i:                              ; preds = %bb.o
  %.sroa.04.0.copyload.i11.i = load i64, ptr %.032.i, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i12.i = getelementptr inbounds nuw i8, ptr %.032.i, i64 8
  %.sroa.4.0.copyload.i13.i = load float, ptr %.sroa.4.0..sroa_idx.i12.i, align 4, !tbaa !86
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.032.i, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !289
  store i64 %.sroa.04.0.copyload.i11.i, ptr %0, align 4
  store float %.sroa.4.0.copyload.i13.i, ptr %.sroa.3.0..sroa_idx.i.i.i26.i, align 4, !tbaa !86
  %i.ck = lshr i64 %.sroa.04.0.copyload.i11.i, 32
  %i.cl = trunc nuw i64 %i.ck to i32
  %i.cm = bitcast i32 %i.cl to float
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge.i.i14.i, %bb.o
  %.val58.i = phi float [ %.val.i, %bb.o ], [ %i.cm, %._crit_edge.i.i14.i ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.032.i, i64 12 ; 2 uses
  %i.co = icmp ult ptr %i.cn, %2
  br i1 %i.co, label %bb.o, label %"_ZSt13__heap_selectIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_SE_T0_.exit", !llvm.loop !747

"_ZSt13__heap_selectIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_SE_T0_.exit": ; preds = %bb.p, %bb.n, %bb.l, %bb.k, %"_ZSt11__make_heapIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_RT0_.exit.i"
  %i.cp = icmp sgt i64 %i.c, 12
  br i1 %i.cp, label %.lr.ph.i5, label %"_ZSt11__sort_heapIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_RT0_.exit"

.lr.ph.i5:                                        ; preds = %"_ZSt13__heap_selectIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_SE_T0_.exit", %"_ZSt10__pop_heapIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_SE_RT0_.exit.i"
  %.01.i = phi ptr [ %i.cq, %"_ZSt10__pop_heapIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_SE_RT0_.exit.i" ], [ %1, %"_ZSt13__heap_selectIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_SE_T0_.exit" ] ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %.01.i, i64 -12 ; 4 uses
  %.sroa.04.0.copyload.i.i6 = load i64, ptr %i.cq, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i7 = getelementptr inbounds i8, ptr %.01.i, i64 -4
  %.sroa.4.0.copyload.i.i8 = load float, ptr %.sroa.4.0..sroa_idx.i.i7, align 4, !tbaa !86
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cq, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !289
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = sub i64 %i.cr, %i.b                     ; 3 uses
  %i.ct = sdiv exact i64 %i.cs, 12                ; 3 uses
  %i.cu = add nsw i64 %i.ct, -1
  %i.cv = sdiv i64 %i.cu, 2
  %i.cw = icmp sgt i64 %i.cs, 24
  br i1 %i.cw, label %.lr.ph.i.i.i21, label %._crit_edge.i.i.i9

.lr.ph.i.i.i21:                                   ; preds = %.lr.ph.i5, %.lr.ph.i.i.i21
  %.035.i.i.i22 = phi i64 [ %spec.select.i.i.i25, %.lr.ph.i.i.i21 ], [ 0, %.lr.ph.i5 ] ; 2 uses
  %i.cx = shl i64 %.035.i.i.i22, 1                ; 3 uses
  %i.cy = add i64 %i.cx, 2                        ; 2 uses
  %i.cz = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.cy
  %i.da = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.cx
  %i.db = getelementptr i8, ptr %i.cz, i64 4
  %.val.i.i.i23 = load float, ptr %i.db, align 4, !tbaa !290
  %i.dc = getelementptr i8, ptr %i.da, i64 16
  %.val34.i.i.i24 = load float, ptr %i.dc, align 4, !tbaa !290
  %i.dd = fcmp ogt float %.val.i.i.i23, %.val34.i.i.i24
  %i.de = or disjoint i64 %i.cx, 1
  %spec.select.i.i.i25 = select i1 %i.dd, i64 %i.de, i64 %i.cy ; 4 uses
  %i.df = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %spec.select.i.i.i25
  %i.dg = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.035.i.i.i22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dg, ptr noundef nonnull align 4 dereferenceable(12) %i.df, i64 12, i1 false), !tbaa.struct !289
  %i.dh = icmp slt i64 %spec.select.i.i.i25, %i.cv
  br i1 %i.dh, label %.lr.ph.i.i.i21, label %._crit_edge.i.i.i9, !llvm.loop !744

._crit_edge.i.i.i9:                               ; preds = %.lr.ph.i.i.i21, %.lr.ph.i5
  %.0.lcssa.i.i.i10 = phi i64 [ 0, %.lr.ph.i5 ], [ %spec.select.i.i.i25, %.lr.ph.i.i.i21 ] ; 5 uses
  %i.di = and i64 %i.ct, 1
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i.i9
  %i.dk = add nsw i64 %i.ct, -2
  %i.dl = ashr exact i64 %i.dk, 1
  %i.dm = icmp eq i64 %.0.lcssa.i.i.i10, %i.dl
  br i1 %i.dm, label %.thread.i.i, label %bb.r

.thread.i.i:                                      ; preds = %bb.q
  %i.dn = shl nuw nsw i64 %.0.lcssa.i.i.i10, 1
  %i.do = or disjoint i64 %i.dn, 1                ; 2 uses
  %i.dp = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.do
  %i.dq = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.0.lcssa.i.i.i10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dq, ptr noundef nonnull align 4 dereferenceable(12) %i.dp, i64 12, i1 false), !tbaa.struct !289
  br label %.lr.ph.i.i.i.i12

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i.i9
  %.not.i.i11 = icmp eq i64 %.0.lcssa.i.i.i10, 0
end_hunk_1
begin_hunk_2_@_ZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_array:bb.a
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
  %4 = or disjoint i64 %i.j, 1                    ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %4
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.k
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i"
  %.09.us.i.i.i = phi i64 [ %i.au, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i" ], [ %i.k, %._crit_edge ] ; 7 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.09.us.i.i.i
  %i.s = load i64, ptr %i.r, align 8, !tbaa !111  ; 2 uses
  %i.t = icmp slt i64 %.09.us.i.i.i, %i.m
  br i1 %i.t, label %.lr.ph.i.us.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i"

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i
  %.val.val.i.us.i.i.i = load ptr, ptr %3, align 8, !tbaa !297 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.us.i.i.i
  %.038.i.us.i.i.i = phi i64 [ %.09.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %spec.select.i.us.i.i.i, %bb.c ] ; 2 uses
  %i.u = shl i64 %.038.i.us.i.i.i, 1              ; 2 uses
  %i.v = add i64 %i.u, 2                          ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.v
  %i.x = or disjoint i64 %i.u, 1                  ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.x
  %i.z = load i64, ptr %i.w, align 8, !tbaa !111
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !111
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i.us.i.i.i, i64 %i.z
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !86
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i.us.i.i.i, i64 %i.aa
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !86
  %i.af = fcmp olt float %i.ac, %i.ae
  %spec.select.i.us.i.i.i = select i1 %i.af, i64 %i.x, i64 %i.v ; 4 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %spec.select.i.us.i.i.i
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !111
  %i.ai = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.038.i.us.i.i.i
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !111
  %i.aj = icmp slt i64 %spec.select.i.us.i.i.i, %i.m
  br i1 %i.aj, label %bb.c, label %._crit_edge.i.us.i.i.i, !llvm.loop !773

._crit_edge.i.us.i.i.i:                           ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i.us.i.i.i, i64 %i.s
  %i.al = load float, ptr %i.ak, align 4, !tbaa !86
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %._crit_edge.i.us.i.i.i
  %.010.i.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %._crit_edge.i.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.e ] ; 3 uses
  %.0911.in.i.i.us.i.i.i = add nsw i64 %.010.i.i.us.i.i.i, -1
  %.0911.i.i.us.i.i.i = sdiv i64 %.0911.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0911.i.i.us.i.i.i
  %i.an = load i64, ptr %i.am, align 8, !tbaa !111 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i.us.i.i.i, i64 %i.an
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !86
  %i.aq = fcmp olt float %i.ap, %i.al
  br i1 %i.aq, label %bb.e, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i"

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.010.i.i.us.i.i.i
  store i64 %i.an, ptr %i.ar, align 8, !tbaa !111
  %i.as = icmp sgt i64 %.0911.i.i.us.i.i.i, %.09.us.i.i.i
  br i1 %i.as, label %bb.d, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i", !llvm.loop !774

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i": ; preds = %bb.e, %bb.d, %.split.us.i.i.i
  %.0.lcssa.i.i.us.i.i.i = phi i64 [ %.09.us.i.i.i, %.split.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.e ], [ %.010.i.i.us.i.i.i, %bb.d ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.us.i.i.i
  store i64 %i.s, ptr %i.at, align 8, !tbaa !111
  %.not.us.i.i.i = icmp eq i64 %.09.us.i.i.i, 0
  %i.au = add nsw i64 %.09.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_SF_RT0_.exit.i.i", label %.split.us.i.i.i, !llvm.loop !775

.split.i.i.i:                                     ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i", %.split.preheader.i.i.i
  %.09.i.i.i = phi i64 [ %i.cb, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i" ], [ %i.k, %.split.preheader.i.i.i ] ; 8 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.09.i.i.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !111 ; 2 uses
  %i.ax = icmp slt i64 %.09.i.i.i, %i.m
  br i1 %i.ax, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i
  %.val.val.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !297 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.038.i.i.i.i = phi i64 [ %.09.i.i.i, %.lr.ph.i.i.i.i ], [ %spec.select.i.i.i.i, %bb.f ] ; 2 uses
  %i.ay = shl i64 %.038.i.i.i.i, 1                ; 2 uses
  %i.az = add i64 %i.ay, 2                        ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.az
  %i.bb = or disjoint i64 %i.ay, 1                ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.bb
  %i.bd = load i64, ptr %i.ba, align 8, !tbaa !111
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !111
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i.i.i.i, i64 %i.bd
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !86
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i.i.i.i, i64 %i.be
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !86
  %i.bj = fcmp olt float %i.bg, %i.bi
  %spec.select.i.i.i.i = select i1 %i.bj, i64 %i.bb, i64 %i.az ; 4 uses
  %i.bk = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %spec.select.i.i.i.i
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !111
  %i.bm = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.038.i.i.i.i
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !111
  %i.bn = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.bn, label %bb.f, label %._crit_edge.i.i.i.i, !llvm.loop !773

._crit_edge.i.i.i.i:                              ; preds = %bb.f, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.09.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %bb.f ] ; 2 uses
  %i.bo = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  br i1 %i.bo, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bp = load i64, ptr %i.p, align 8, !tbaa !111
  store i64 %i.bp, ptr %i.q, align 8, !tbaa !111
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %4, %bb.g ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bq = icmp sgt i64 %.1.i.i.i.i, %.09.i.i.i
  br i1 %i.bq, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h
  %.val.val.i.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !297 ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i.i.i.i.i, i64 %i.aw
  %i.bs = load float, ptr %i.br, align 4, !tbaa !86
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.j ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0911.i.i.i.i.i
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !111 ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i.i.i.i.i, i64 %i.bu
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !86
  %i.bx = fcmp olt float %i.bw, %i.bs
  br i1 %i.bx, label %bb.j, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i"

bb.j:                                             ; preds = %bb.i
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.010.i.i.i.i.i
  store i64 %i.bu, ptr %i.by, align 8, !tbaa !111
  %i.bz = icmp sgt i64 %.0911.i.i.i.i.i, %.09.i.i.i
  br i1 %i.bz, label %bb.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i", !llvm.loop !774

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i": ; preds = %bb.j, %bb.i, %bb.h
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.h ], [ %.010.i.i.i.i.i, %bb.i ], [ %.0911.i.i.i.i.i, %bb.j ]
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i.i.i
  store i64 %i.aw, ptr %i.ca, align 8, !tbaa !111
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.cb = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_SF_RT0_.exit.i.i", label %.split.i.i.i, !llvm.loop !775

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_SF_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i", %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i"
  %i.cc = icmp sgt i64 %.fr.i.i.i26.lcssa, 8
  br i1 %i.cc, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZL27llama_sampler_typical_applyP13llama_samplerP22llama_token_data_arrayE3$_0EEEvT_SF_SF_T0_.exit"

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

end_hunk_2
begin_hunk_3_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_:bb.a
.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.0.015.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i, %.lr.ph.i
  %.sroa.0.018.i.idx = phi i64 [ 1, %.lr.ph.i ], [ %.sroa.0.018.i.add, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %.pn17.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.018.i.ptr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i ] ; 3 uses
  %.sroa.0.018.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.018.i.idx ; 4 uses
  %i.e = load i8, ptr %.sroa.0.018.i.ptr, align 1, !tbaa !87 ; 4 uses
  %i.f = load i8, ptr %0, align 1, !tbaa !87      ; 2 uses
  %i.g = icmp slt i8 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %.sroa.0.018.i.idx, 1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !107

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.015.i.ptr, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %.sroa.0.018.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 1
  store i8 %i.f, ptr %i.i, align 1, !tbaa !87
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %bb.b
  %i.j = load i8, ptr %.pn17.i, align 1, !tbaa !87 ; 2 uses
  %i.k = icmp slt i8 %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.l = phi i8 [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.f ]
  %.sroa.0.09.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn17.i, %bb.f ] ; 3 uses
  %.sroa.04.08.i.i = phi ptr [ %.sroa.0.09.i.i, %.lr.ph.i.i ], [ %.sroa.0.018.i.ptr, %bb.f ]
  store i8 %i.l, ptr %.sroa.04.08.i.i, align 1, !tbaa !87
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i, i64 -1 ; 2 uses
  %i.m = load i8, ptr %.sroa.0.0.i.i, align 1, !tbaa !87 ; 2 uses
  %i.n = icmp slt i8 %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !1001

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.f, %bb.e, %bb.d
  %.sink.i = phi ptr [ %0, %bb.e ], [ %0, %bb.d ], [ %.sroa.0.018.i.ptr, %bb.f ], [ %.sroa.0.09.i.i, %.lr.ph.i.i ]
  store i8 %i.e, ptr %.sink.i, align 1, !tbaa !87
  %.sroa.0.018.i.add = add nuw nsw i64 %.sroa.0.018.i.idx, 1 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.018.i.add, 16
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %bb.b, !llvm.loop !1002

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %.not4.i = icmp eq ptr %i.o, %1
  br i1 %.not4.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i6.preheader

.lr.ph.i6.preheader:                              ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit
  %i.p = sub i64 %i.a, %i.b
  %i.q = add i64 %i.a, -17
  %xtraiter = and i64 %i.p, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i6.prol.loopexit, label %.lr.ph.i6.prol

.lr.ph.i6.prol:                                   ; preds = %.lr.ph.i6.preheader
  %i.r = load i8, ptr %i.o, align 1, !tbaa !87    ; 3 uses
  %.sroa.0.07.i.i.prol = getelementptr inbounds nuw i8, ptr %0, i64 15 ; 2 uses
  %i.s = load i8, ptr %.sroa.0.07.i.i.prol, align 1, !tbaa !87 ; 2 uses
  %i.t = icmp slt i8 %i.r, %i.s
  br i1 %i.t, label %.lr.ph.i.i8.prol, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.prol

.lr.ph.i.i8.prol:                                 ; preds = %.lr.ph.i6.prol, %.lr.ph.i.i8.prol
  %i.u = phi i8 [ %i.v, %.lr.ph.i.i8.prol ], [ %i.s, %.lr.ph.i6.prol ]
  %.sroa.0.09.i.i9.prol = phi ptr [ %.sroa.0.0.i.i11.prol, %.lr.ph.i.i8.prol ], [ %.sroa.0.07.i.i.prol, %.lr.ph.i6.prol ] ; 3 uses
  %.sroa.04.08.i.i10.prol = phi ptr [ %.sroa.0.09.i.i9.prol, %.lr.ph.i.i8.prol ], [ %i.o, %.lr.ph.i6.prol ]
  store i8 %i.u, ptr %.sroa.04.08.i.i10.prol, align 1, !tbaa !87
  %.sroa.0.0.i.i11.prol = getelementptr inbounds i8, ptr %.sroa.0.09.i.i9.prol, i64 -1 ; 2 uses
  %i.v = load i8, ptr %.sroa.0.0.i.i11.prol, align 1, !tbaa !87 ; 2 uses
  %i.w = icmp slt i8 %i.r, %i.v
  br i1 %i.w, label %.lr.ph.i.i8.prol, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.prol, !llvm.loop !1001

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.prol: ; preds = %.lr.ph.i.i8.prol, %.lr.ph.i6.prol
  %.sroa.04.0.lcssa.i.i.prol = phi ptr [ %i.o, %.lr.ph.i6.prol ], [ %.sroa.0.09.i.i9.prol, %.lr.ph.i.i8.prol ]
  store i8 %i.r, ptr %.sroa.04.0.lcssa.i.i.prol, align 1, !tbaa !87
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 17
  br label %.lr.ph.i6.prol.loopexit

.lr.ph.i6.prol.loopexit:                          ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.prol, %.lr.ph.i6.preheader
  %.sroa.0.05.i.unr = phi ptr [ %i.o, %.lr.ph.i6.preheader ], [ %i.x, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.prol ]
  %i.y = icmp eq i64 %i.q, %i.b
  br i1 %i.y, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %.lr.ph.i6.prol.loopexit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.1
  %.sroa.0.05.i = phi ptr [ %i.am, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.1 ], [ %.sroa.0.05.i.unr, %.lr.ph.i6.prol.loopexit ] ; 8 uses
  %i.z = load i8, ptr %.sroa.0.05.i, align 1, !tbaa !87 ; 3 uses
  %.sroa.0.07.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i, i64 -1 ; 2 uses
  %i.aa = load i8, ptr %.sroa.0.07.i.i, align 1, !tbaa !87 ; 2 uses
  %i.ab = icmp slt i8 %i.z, %i.aa
  br i1 %i.ab, label %.lr.ph.i.i8, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

.lr.ph.i.i8:                                      ; preds = %.lr.ph.i6, %.lr.ph.i.i8
  %i.ac = phi i8 [ %i.ad, %.lr.ph.i.i8 ], [ %i.aa, %.lr.ph.i6 ]
  %.sroa.0.09.i.i9 = phi ptr [ %.sroa.0.0.i.i11, %.lr.ph.i.i8 ], [ %.sroa.0.07.i.i, %.lr.ph.i6 ] ; 3 uses
  %.sroa.04.08.i.i10 = phi ptr [ %.sroa.0.09.i.i9, %.lr.ph.i.i8 ], [ %.sroa.0.05.i, %.lr.ph.i6 ]
  store i8 %i.ac, ptr %.sroa.04.08.i.i10, align 1, !tbaa !87
  %.sroa.0.0.i.i11 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i9, i64 -1 ; 2 uses
  %i.ad = load i8, ptr %.sroa.0.0.i.i11, align 1, !tbaa !87 ; 2 uses
  %i.ae = icmp slt i8 %i.z, %i.ad
  br i1 %i.ae, label %.lr.ph.i.i8, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, !llvm.loop !1001

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i8, %.lr.ph.i6
  %.sroa.04.0.lcssa.i.i = phi ptr [ %.sroa.0.05.i, %.lr.ph.i6 ], [ %.sroa.0.09.i.i9, %.lr.ph.i.i8 ]
  store i8 %i.z, ptr %.sroa.04.0.lcssa.i.i, align 1, !tbaa !87
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 1 ; 3 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !87  ; 3 uses
  %i.ah = load i8, ptr %.sroa.0.05.i, align 1, !tbaa !87 ; 2 uses
  %i.ai = icmp slt i8 %i.ag, %i.ah
  br i1 %i.ai, label %.lr.ph.i.i8.1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.1

.lr.ph.i.i8.1:                                    ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %.lr.ph.i.i8.1
  %i.aj = phi i8 [ %i.ak, %.lr.ph.i.i8.1 ], [ %i.ah, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i ]
  %.sroa.0.09.i.i9.1 = phi ptr [ %.sroa.0.0.i.i11.1, %.lr.ph.i.i8.1 ], [ %.sroa.0.05.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i ] ; 3 uses
  %.sroa.04.08.i.i10.1 = phi ptr [ %.sroa.0.09.i.i9.1, %.lr.ph.i.i8.1 ], [ %i.af, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i ]
  store i8 %i.aj, ptr %.sroa.04.08.i.i10.1, align 1, !tbaa !87
  %.sroa.0.0.i.i11.1 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i9.1, i64 -1 ; 2 uses
  %i.ak = load i8, ptr %.sroa.0.0.i.i11.1, align 1, !tbaa !87 ; 2 uses
  %i.al = icmp slt i8 %i.ag, %i.ak
  br i1 %i.al, label %.lr.ph.i.i8.1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.1, !llvm.loop !1001

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.1: ; preds = %.lr.ph.i.i8.1, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i
  %.sroa.04.0.lcssa.i.i.1 = phi ptr [ %i.af, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i ], [ %.sroa.0.09.i.i9.1, %.lr.ph.i.i8.1 ]
  store i8 %i.ag, ptr %.sroa.04.0.lcssa.i.i.1, align 1, !tbaa !87
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 2 ; 2 uses
  %.not.i7.1 = icmp eq ptr %i.am, %1
  br i1 %.not.i7.1, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i6, !llvm.loop !1003

bb.g:                                             ; preds = %bb.a
  %i.an = icmp eq ptr %0, %1
  br i1 %i.an, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.preheader.i12

.preheader.i12:                                   ; preds = %bb.g
  %.sroa.0.015.i13 = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %.not16.i14 = icmp eq ptr %.sroa.0.015.i13, %1
  br i1 %.not16.i14, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %.preheader.i12, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18
  %.sroa.0.018.i16 = phi ptr [ %.sroa.0.0.i20, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18 ], [ %.sroa.0.015.i13, %.preheader.i12 ] ; 6 uses
  %.pn17.i17 = phi ptr [ %.sroa.0.018.i16, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18 ], [ %0, %.preheader.i12 ] ; 3 uses
  %i.ao = load i8, ptr %.sroa.0.018.i16, align 1, !tbaa !87 ; 4 uses
  %i.ap = load i8, ptr %0, align 1, !tbaa !87     ; 2 uses
  %i.aq = icmp slt i8 %i.ao, %i.ap
  br i1 %i.aq, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.lr.ph.i15
  %i.ar = ptrtoint ptr %.sroa.0.018.i16 to i64
  %i.as = sub i64 %i.ar, %i.b                     ; 3 uses
  %i.at = icmp sgt i64 %i.as, 1
  br i1 %i.at, label %bb.i, label %bb.j, !prof !107

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.015.i13, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %i.as, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18

bb.j:                                             ; preds = %bb.h
  %i.au = icmp eq i64 %i.as, 1
  br i1 %i.au, label %bb.k, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %.pn17.i17, i64 1
  store i8 %i.ap, ptr %i.av, align 1, !tbaa !87
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18

bb.l:                                             ; preds = %.lr.ph.i15
  %i.aw = load i8, ptr %.pn17.i17, align 1, !tbaa !87 ; 2 uses
  %i.ax = icmp slt i8 %i.ao, %i.aw
  br i1 %i.ax, label %.lr.ph.i.i22, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18

.lr.ph.i.i22:                                     ; preds = %bb.l, %.lr.ph.i.i22
  %i.ay = phi i8 [ %i.az, %.lr.ph.i.i22 ], [ %i.aw, %bb.l ]
  %.sroa.0.09.i.i23 = phi ptr [ %.sroa.0.0.i.i25, %.lr.ph.i.i22 ], [ %.pn17.i17, %bb.l ] ; 3 uses
  %.sroa.04.08.i.i24 = phi ptr [ %.sroa.0.09.i.i23, %.lr.ph.i.i22 ], [ %.sroa.0.018.i16, %bb.l ]
  store i8 %i.ay, ptr %.sroa.04.08.i.i24, align 1, !tbaa !87
  %.sroa.0.0.i.i25 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i23, i64 -1 ; 2 uses
  %i.az = load i8, ptr %.sroa.0.0.i.i25, align 1, !tbaa !87 ; 2 uses
  %i.ba = icmp slt i8 %i.ao, %i.az
  br i1 %i.ba, label %.lr.ph.i.i22, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18, !llvm.loop !1001

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18: ; preds = %.lr.ph.i.i22, %bb.l, %bb.k, %bb.j, %bb.i
  %.sink.i19 = phi ptr [ %0, %bb.k ], [ %0, %bb.i ], [ %0, %bb.j ], [ %.sroa.0.018.i16, %bb.l ], [ %.sroa.0.09.i.i23, %.lr.ph.i.i22 ]
  store i8 %i.ao, ptr %.sink.i19, align 1, !tbaa !87
  %.sroa.0.0.i20 = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i16, i64 1 ; 2 uses
  %.not.i21 = icmp eq ptr %.sroa.0.0.i20, %1
  br i1 %.not.i21, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i15, !llvm.loop !1002

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18, %.lr.ph.i6.prol.loopexit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.1, %.preheader.i12, %bb.g, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 4 uses
  %i.d = icmp slt i64 %.fr, 2
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i64 %.fr, -2                     ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = add nsw i64 %.fr, -1
  %i.h = lshr i64 %i.g, 1                         ; 4 uses
  %i.i = and i64 %.fr, 1
  %i.j = icmp eq i64 %i.i, 0
  %i.k = lshr exact i64 %i.e, 1                   ; 2 uses
  br i1 %i.j, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %3 = or disjoint i64 %i.e, 1                    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %3
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us
  %.08.us = phi i64 [ %i.aj, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us ], [ %i.f, %bb.b ] ; 8 uses
  %i.n = getelementptr inbounds i8, ptr %0, i64 %.08.us
  %i.o = load i8, ptr %i.n, align 1, !tbaa !87    ; 2 uses
  %i.p = icmp slt i64 %.08.us, %i.h
  br i1 %i.p, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.035.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.08.us, %.split.us ] ; 2 uses
  %i.q = shl i64 %.035.i.us, 1                    ; 2 uses
  %i.r = add i64 %i.q, 2                          ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %0, i64 %i.r
  %i.t = or disjoint i64 %i.q, 1                  ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %0, i64 %i.t
  %i.v = load i8, ptr %i.s, align 1, !tbaa !87
  %i.w = load i8, ptr %i.u, align 1, !tbaa !87
  %i.x = icmp slt i8 %i.v, %i.w
  %spec.select.i.us = select i1 %i.x, i64 %i.t, i64 %i.r ; 6 uses
  %i.y = getelementptr inbounds i8, ptr %0, i64 %spec.select.i.us
  %i.z = load i8, ptr %i.y, align 1, !tbaa !87
  %i.aa = getelementptr inbounds i8, ptr %0, i64 %.035.i.us
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !87
  %i.ab = icmp slt i64 %spec.select.i.us, %i.h
  br i1 %i.ab, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !24

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ac = icmp sgt i64 %spec.select.i.us, %.08.us
  br i1 %i.ac, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.019.i.i.us = phi i64 [ %.0920.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.0920.i.i.us
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !87  ; 2 uses
  %i.af = icmp slt i8 %i.ae, %i.o
  br i1 %i.af, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %.019.i.i.us
  store i8 %i.ae, ptr %i.ag, align 1, !tbaa !87
  %i.ah = icmp sgt i64 %.0920.i.i.us, %.08.us
  br i1 %i.ah, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us, !llvm.loop !25

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.0.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.08.us, %.split.us ], [ %.019.i.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.c ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa.i.i.us
  store i8 %i.o, ptr %i.ai, align 1, !tbaa !87
  %.not.us = icmp eq i64 %.08.us, 0
  %i.aj = add nsw i64 %.08.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !1004

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit
  %.08 = phi i64 [ %i.bi, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit ], [ %i.f, %.split.preheader ] ; 8 uses
  %i.ak = getelementptr inbounds i8, ptr %0, i64 %.08
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !87  ; 2 uses
  %i.am = icmp slt i64 %.08, %i.h
  br i1 %i.am, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.035.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.08, %.split ] ; 2 uses
  %i.an = shl i64 %.035.i, 1                      ; 2 uses
  %i.ao = add i64 %i.an, 2                        ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %0, i64 %i.ao
  %i.aq = or disjoint i64 %i.an, 1                ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %0, i64 %i.aq
  %i.as = load i8, ptr %i.ap, align 1, !tbaa !87
  %i.at = load i8, ptr %i.ar, align 1, !tbaa !87
  %i.au = icmp slt i8 %i.as, %i.at
  %spec.select.i = select i1 %i.au, i64 %i.aq, i64 %i.ao ; 4 uses
  %i.av = getelementptr inbounds i8, ptr %0, i64 %spec.select.i
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !87
  %i.ax = getelementptr inbounds i8, ptr %0, i64 %.035.i
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !87
  %i.ay = icmp slt i64 %spec.select.i, %i.h
  br i1 %i.ay, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !24

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.08, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.az = icmp eq i64 %.0.lcssa.i, %i.k
  br i1 %i.az, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.ba = load i8, ptr %i.l, align 1, !tbaa !87
  store i8 %i.ba, ptr %i.m, align 1, !tbaa !87
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bb = icmp sgt i64 %.1.i, %.08
  br i1 %i.bb, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %.0920.i.i
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !87  ; 2 uses
  %i.be = icmp slt i8 %i.bd, %i.al
  br i1 %i.be, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %.019.i.i
  store i8 %i.bd, ptr %i.bf, align 1, !tbaa !87
  %i.bg = icmp sgt i64 %.0920.i.i, %.08
  br i1 %i.bg, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit, !llvm.loop !25

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa.i.i
  store i8 %i.al, ptr %i.bh, align 1, !tbaa !87
  %.not = icmp eq i64 %.08, 0
  %i.bi = add nsw i64 %.08, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !1004

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZNKSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE8_M_applyEcSt17integral_constantIbLb0EEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(9) %0) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !505    ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !173  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !173  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !506   ; 6 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.a, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.016.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.i, %bb.a ] ; 2 uses
  %.sroa.011.015.i.i = phi ptr [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.k = lshr i64 %.016.i.i, 1                    ; 3 uses
  %.sink.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.011.015.i.i, i64 %i.k ; 2 uses
  %i.l = load i8, ptr %.sink.i.i.i, align 1, !tbaa !87
  %i.m = icmp slt i8 %i.l, %i.f                   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sink.i.i.i, i64 1
  %i.o = xor i64 %i.k, -1
  %i.p = add nsw i64 %.016.i.i, %i.o
  %.sroa.011.1.i.i = select i1 %i.m, ptr %i.n, ptr %.sroa.011.015.i.i ; 2 uses
  %.1.i.i = select i1 %i.m, i64 %i.p, i64 %i.k    ; 2 uses
  %i.q = icmp sgt i64 %.1.i.i, 0
  br i1 %i.q, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i, !llvm.loop !26

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %bb.a
  %.sroa.011.0.lcssa.i.i = phi ptr [ %i.b, %bb.a ], [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.011.0.lcssa.i.i, %i.d
  br i1 %.not.i, label %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread, label %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit

_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i
  %i.r = load i8, ptr %.sroa.011.0.lcssa.i.i, align 1, !tbaa !87
  %.not = icmp slt i8 %i.f, %i.r
  br i1 %.not, label %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread, label %_ZNKSt7__cxx1112regex_traitsIcE7isctypeEcNS1_10_RegexMaskE.exit.thread

_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i, %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !507  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !507  ; 2 uses
  %.not5256 = icmp eq ptr %i.t, %i.v
  br i1 %.not5256, label %.critedge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.046.057, i64 2 ; 2 uses
  %.not52 = icmp eq ptr %i.w, %i.v
  br i1 %.not52, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread, %bb.b
  %.sroa.046.057 = phi ptr [ %i.w, %bb.b ], [ %i.t, %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread ] ; 3 uses
  %i.x = load i8, ptr %.sroa.046.057, align 1, !tbaa !404
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.046.057, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !405
  %i.aa = icmp sle i8 %i.x, %i.f
  %i.ab = icmp sle i8 %i.f, %i.z
  %i.ac = and i1 %i.aa, %i.ab
  br i1 %i.ac, label %_ZNKSt7__cxx1112regex_traitsIcE7isctypeEcNS1_10_RegexMaskE.exit.thread, label %bb.b

.critedge:                                        ; preds = %bb.b, %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !501, !nonnull !79, !align !410
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.sroa.09.0.copyload = load i32, ptr %i.af, align 8 ; 2 uses
  %i.ag = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #40
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !343
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !347
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ag
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !349 ; 7 uses
  %.not.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.not.i.i, label %bb.c, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i
end_hunk_3
begin_hunk_4_@_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi:bb.a

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
  br i1 %i.an, label %middle.block33, label %vector.body29, !llvm.loop !1272

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
  br i1 %.not.i.i.i.i11, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !1273

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
  br i1 %i.bb, label %middle.block46, label %vector.body42, !llvm.loop !1274

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
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1275

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
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !1276

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
  br i1 %.not.i.i.i.i14, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit, label %.lr.ph.i.i.i.i12, !llvm.loop !1277

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
  br i1 %i.j, label %._crit_edge, label %.lr.ph46, !llvm.loop !1278

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
  %3 = or disjoint i64 %i.l, 1                    ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %3
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.m
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i"
  %.010.us.i.i.i = phi i64 [ %i.an, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i" ], [ %i.m, %._crit_edge ] ; 7 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.010.us.i.i.i
  %.sroa.03.0.copyload.us.i.i.i = load i64, ptr %i.t, align 4 ; 2 uses
  %i.u = icmp slt i64 %.010.us.i.i.i, %i.o
  br i1 %i.u, label %.lr.ph.i.us.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i"

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.036.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.010.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.v = shl i64 %.036.i.us.i.i.i, 1              ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.y
  %.val.i.i.us.i.i.i = load i32, ptr %i.x, align 4, !tbaa !627
  %.val1.i.i.us.i.i.i = load i32, ptr %i.z, align 4, !tbaa !627
  %i.aa = icmp slt i32 %.val.i.i.us.i.i.i, %.val1.i.i.us.i.i.i
  %spec.select.i.us.i.i.i = select i1 %i.aa, i64 %i.y, i64 %i.w ; 4 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %spec.select.i.us.i.i.i
  %i.ac = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.036.i.us.i.i.i
  %i.ad = load <2 x i32>, ptr %i.ab, align 4, !tbaa !84
  store <2 x i32> %i.ad, ptr %i.ac, align 4, !tbaa !84
  %i.ae = icmp slt i64 %spec.select.i.us.i.i.i, %i.o
  br i1 %i.ae, label %.lr.ph.i.us.i.i.i, label %._crit_edge.i.us.i.i.i, !llvm.loop !1279

._crit_edge.i.us.i.i.i:                           ; preds = %.lr.ph.i.us.i.i.i
  %.sroa.03.0.extract.trunc.i.i.us.i.i.i = trunc i64 %.sroa.03.0.copyload.us.i.i.i to i32
  br label %.lr.ph.i.i.us.i.i.i

.lr.ph.i.i.us.i.i.i:                              ; preds = %bb.c, %._crit_edge.i.us.i.i.i
  %.010.i.i.us.i.i.i = phi i64 [ %.0911.i.i.us.i.i.i, %bb.c ], [ %spec.select.i.us.i.i.i, %._crit_edge.i.us.i.i.i ] ; 3 uses
  %.0911.in.i.i.us.i.i.i = add nsw i64 %.010.i.i.us.i.i.i, -1
  %.0911.i.i.us.i.i.i = sdiv i64 %.0911.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0911.i.i.us.i.i.i ; 2 uses
  %.val.i.i.i.us.i.i.i = load i32, ptr %i.af, align 4, !tbaa !627 ; 2 uses
  %i.ag = icmp slt i32 %.val.i.i.i.us.i.i.i, %.sroa.03.0.extract.trunc.i.i.us.i.i.i
  br i1 %i.ag, label %bb.c, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i"

bb.c:                                             ; preds = %.lr.ph.i.i.us.i.i.i
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.010.i.i.us.i.i.i ; 2 uses
  store i32 %.val.i.i.i.us.i.i.i, ptr %i.ah, align 4, !tbaa !627
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !84
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !628
  %i.al = icmp sgt i64 %.0911.i.i.us.i.i.i, %.010.us.i.i.i
  br i1 %i.al, label %.lr.ph.i.i.us.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i", !llvm.loop !1280

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i": ; preds = %bb.c, %.lr.ph.i.i.us.i.i.i, %.split.us.i.i.i
  %.0.lcssa.i.i.us.i.i.i = phi i64 [ %.010.us.i.i.i, %.split.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.c ], [ %.010.i.i.us.i.i.i, %.lr.ph.i.i.us.i.i.i ]
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.us.i.i.i
  store i64 %.sroa.03.0.copyload.us.i.i.i, ptr %i.am, align 4
  %.not.us.i.i.i = icmp eq i64 %.010.us.i.i.i, 0
  %i.an = add nsw i64 %.010.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_RT0_.exit.i.i", label %.split.us.i.i.i, !llvm.loop !1281

.split.i.i.i:                                     ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i", %.split.preheader.i.i.i
  %.010.i.i.i = phi i64 [ %i.bl, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i" ], [ %i.m, %.split.preheader.i.i.i ] ; 8 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.010.i.i.i
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %i.ao, align 4 ; 2 uses
  %i.ap = icmp slt i64 %.010.i.i.i, %i.o
  br i1 %i.ap, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.036.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.010.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.aq = shl i64 %.036.i.i.i.i, 1                ; 2 uses
  %i.ar = add i64 %i.aq, 2                        ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.ar
  %i.at = or disjoint i64 %i.aq, 1                ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.at
  %.val.i.i.i.i.i = load i32, ptr %i.as, align 4, !tbaa !627
  %.val1.i.i.i.i.i = load i32, ptr %i.au, align 4, !tbaa !627
  %i.av = icmp slt i32 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.av, i64 %i.at, i64 %i.ar ; 4 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %spec.select.i.i.i.i
  %i.ax = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.036.i.i.i.i
  %i.ay = load <2 x i32>, ptr %i.aw, align 4, !tbaa !84
  store <2 x i32> %i.ay, ptr %i.ax, align 4, !tbaa !84
  %i.az = icmp slt i64 %spec.select.i.i.i.i, %i.o
  br i1 %i.az, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1279

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.010.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ba = icmp eq i64 %.0.lcssa.i.i.i.i, %i.m
  br i1 %i.ba, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bb = load <2 x i32>, ptr %i.r, align 4, !tbaa !84
  store <2 x i32> %i.bb, ptr %i.s, align 4, !tbaa !84
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %.sroa.03.0.extract.trunc.i.i.i.i.i = trunc i64 %.sroa.03.0.copyload.i.i.i to i32
  %i.bc = icmp sgt i64 %.1.i.i.i.i, %.010.i.i.i
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.010.i.i.i.i.i = phi i64 [ %.0911.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0911.i.i.i.i.i ; 2 uses
  %.val.i.i.i.i.i.i = load i32, ptr %i.bd, align 4, !tbaa !627 ; 2 uses
  %i.be = icmp slt i32 %.val.i.i.i.i.i.i, %.sroa.03.0.extract.trunc.i.i.i.i.i
  br i1 %i.be, label %bb.f, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.010.i.i.i.i.i ; 2 uses
  store i32 %.val.i.i.i.i.i.i, ptr %i.bf, align 4, !tbaa !627
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !84
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !628
  %i.bj = icmp sgt i64 %.0911.i.i.i.i.i, %.010.i.i.i
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i", !llvm.loop !1280

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.f ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i.i.i
  store i64 %.sroa.03.0.copyload.i.i.i, ptr %i.bk, align 4
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.bl = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_RT0_.exit.i.i", label %.split.i.i.i, !llvm.loop !1281

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i", %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i"
  %i.bm = icmp sgt i64 %.fr.i.i.i26.lcssa, 8
  br i1 %i.bm, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_T0_.exit"

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
  br i1 %i.cg, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i11.i, !llvm.loop !1279

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
  br i1 %.not7.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_RT0_.exit.i.i", label %.lr.ph.i.i.i.i14.i, !llvm.loop !1280

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_RT0_.exit.i.i": ; preds = %bb.i, %.lr.ph.i.i.i.i14.i, %bb.h
  %.0.lcssa.i.i.i.i18.i = phi i64 [ 0, %bb.h ], [ %.010.i.i.i.i15.i, %.lr.ph.i.i.i.i14.i ], [ 0, %bb.i ]
  %i.cx = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i.i18.i
  store i64 %.sroa.03.0.copyload.i.i10.i, ptr %i.cx, align 4
  %i.cy = icmp sgt i64 %i.bs, 8
  br i1 %i.cy, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_T0_.exit", !llvm.loop !1282

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
end_hunk_4
