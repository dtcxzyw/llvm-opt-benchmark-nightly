Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-context?download=true
inline.NumInlined: 3997
inline.NumDeleted: 2070
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZL22copy_tensor_async_rowsIiEvRKSt6vectorIP11ggml_tensorSaIS2_EERK11buffer_viewIT_EmjP18ggml_backend_schedPS0_IjSaIjEE:bb.a
  %i.ab = phi ptr [ %.pre49, %bb.e ], [ %i.k, %.lr.ph.split.us ] ; 2 uses
  %i.ac = add nuw i64 %.038.us, 1                 ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 3
  %i.ah = icmp ult i64 %i.ac, %i.ag
  br i1 %i.ah, label %.lr.ph.split.us, label %.loopexit, !llvm.loop !884

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.m
  %i.ai = phi ptr [ %i.bi, %bb.m ], [ %i.h, %.lr.ph ] ; 2 uses
  %i.aj = phi ptr [ %i.bj, %bb.m ], [ %i.g, %.lr.ph ]
  %.038 = phi i64 [ %i.bk, %bb.m ], [ 0, %.lr.ph ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.038
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !481 ; 6 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.m, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split
  %i.an = trunc i64 %.038 to i32
  %i.ao = add i32 %3, %i.an
  %i.ap = tail call i64 @ggml_nelements(ptr noundef nonnull %i.al) ; 3 uses
  %i.aq = tail call zeroext i1 @ggml_is_contiguous(ptr noundef nonnull %i.al)
  br i1 %i.aq, label %bb.h, label %.split.us

.split.us:                                        ; preds = %bb.g, %bb.b
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.71, i32 noundef 1612, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.233) #33
  unreachable

bb.h:                                             ; preds = %bb.g
  %.not = icmp ugt i64 %i.ap, %2
  br i1 %.not, label %.split40.us, label %bb.i

.split40.us:                                      ; preds = %bb.h, %bb.c
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.71, i32 noundef 1613, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.234) #33
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.ar = zext i32 %i.ao to i64                   ; 3 uses
  %i.as = mul nuw i64 %2, %i.ar                   ; 2 uses
  %i.at = add nuw i64 %i.ap, %i.as
  %i.au = load i64, ptr %i.b, align 8, !tbaa !885
  %.not36 = icmp ugt i64 %i.at, %i.au
  br i1 %.not36, label %.split42.us, label %bb.j

.split42.us:                                      ; preds = %bb.i, %bb.d
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.71, i32 noundef 1614, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.235) #33
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.av = tail call ptr @ggml_backend_sched_get_tensor_backend(ptr noundef %4, ptr noundef nonnull %i.al)
  %i.aw = load ptr, ptr %1, align 8, !tbaa !419
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.as
  %i.ay = tail call i64 @ggml_nbytes(ptr noundef nonnull %i.al)
  tail call void @ggml_backend_tensor_get_async(ptr noundef %i.av, ptr noundef nonnull %i.al, ptr noundef %i.ax, i64 noundef 0, i64 noundef %i.ay)
  %i.az = load ptr, ptr %i.i, align 8, !tbaa !361
  %i.ba = load ptr, ptr %5, align 8, !tbaa !362   ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 2
  %i.bf = icmp ugt i64 %i.be, %i.ar
  br i1 %i.bf, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.71, i32 noundef 1621, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.236) #33
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.bg = trunc nuw i64 %i.ap to i32
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.ar
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !199
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !482
  %.pre48 = load ptr, ptr %0, align 8, !tbaa !480
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.split
  %i.bi = phi ptr [ %.pre48, %bb.l ], [ %i.ai, %.lr.ph.split ] ; 2 uses
  %i.bj = phi ptr [ %.pre, %bb.l ], [ %i.aj, %.lr.ph.split ] ; 2 uses
  %i.bk = add nuw i64 %.038, 1                    ; 2 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = ashr exact i64 %i.bn, 3
  %i.bp = icmp ult i64 %i.bk, %i.bo
  br i1 %i.bp, label %.lr.ph.split, label %.loopexit, !llvm.loop !884

.loopexit:                                        ; preds = %bb.m, %bb.f, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL22copy_tensor_async_rowsIfEvRKSt6vectorIP11ggml_tensorSaIS2_EERK11buffer_viewIT_EmjP18ggml_backend_schedPS0_IjSaIjEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i64 noundef range(i64 0, 4294967296) %2, i32 noundef %3, ptr noundef %4, ptr nofree noundef nonnull readonly captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !416
  %.not.i = icmp ne ptr %i.a, null
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp ne i64 %i.c, 0
  %i.e = select i1 %.not.i, i1 %i.d, i1 false
  br i1 %i.e, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !482  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !480    ; 2 uses
  %.not38 = icmp eq ptr %i.g, %i.h
  br i1 %.not38, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %i.j = phi ptr [ %i.h, %.lr.ph ], [ %i.aj, %bb.l ] ; 2 uses
  %i.k = phi ptr [ %i.g, %.lr.ph ], [ %i.ak, %bb.l ]
  %.037 = phi i64 [ 0, %.lr.ph ], [ %i.al, %bb.l ] ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.037
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !481  ; 6 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = trunc i64 %.037 to i32
  %i.p = add i32 %3, %i.o
  %i.q = tail call i64 @ggml_nelements(ptr noundef nonnull %i.m) ; 3 uses
  %i.r = tail call zeroext i1 @ggml_is_contiguous(ptr noundef nonnull %i.m)
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.71, i32 noundef 1612, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.233) #33
  unreachable

bb.e:                                             ; preds = %bb.c
  %.not = icmp ugt i64 %i.q, %2
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.71, i32 noundef 1613, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.234) #33
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.s = zext i32 %i.p to i64                     ; 3 uses
  %i.t = mul nuw i64 %2, %i.s                     ; 2 uses
  %i.u = add nuw i64 %i.q, %i.t
  %i.v = load i64, ptr %i.b, align 8, !tbaa !415
  %.not36 = icmp ugt i64 %i.u, %i.v
  br i1 %.not36, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.71, i32 noundef 1614, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.235) #33
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.w = tail call ptr @ggml_backend_sched_get_tensor_backend(ptr noundef %4, ptr noundef nonnull %i.m)
  %i.x = load ptr, ptr %1, align 8, !tbaa !416
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.t
  %i.z = tail call i64 @ggml_nbytes(ptr noundef nonnull %i.m)
  tail call void @ggml_backend_tensor_get_async(ptr noundef %i.w, ptr noundef nonnull %i.m, ptr noundef %i.y, i64 noundef 0, i64 noundef %i.z)
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !361
  %i.ab = load ptr, ptr %5, align 8, !tbaa !362   ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 2
  %i.ag = icmp ugt i64 %i.af, %i.s
  br i1 %i.ag, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.71, i32 noundef 1621, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.236) #33
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ah = trunc nuw i64 %i.q to i32
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.s
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !199
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !482
  %.pre39 = load ptr, ptr %0, align 8, !tbaa !480
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.k
  %i.aj = phi ptr [ %i.j, %bb.b ], [ %.pre39, %bb.k ] ; 2 uses
  %i.ak = phi ptr [ %i.k, %bb.b ], [ %.pre, %bb.k ] ; 2 uses
  %i.al = add nuw i64 %.037, 1                    ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 3
  %i.aq = icmp ult i64 %i.al, %i.ap
  br i1 %i.aq, label %bb.b, label %.loopexit, !llvm.loop !886

.loopexit:                                        ; preds = %bb.l, %.preheader, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN18llama_batch_allocr11get_out_idsEv(ptr noundef nonnull align 8 dereferenceable(444)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN13llama_context9swap_infoESaIS1_EE9push_backEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !410  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !345
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 4, !tbaa !199
  store i64 %i.e, ptr %i.b, align 4, !tbaa !199
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %i.a, align 8, !tbaa !410
  br label %_ZNSt6vectorIN13llama_context9swap_infoESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !344    ; 4 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 6 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIN13llama_context9swap_infoESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.222) #33
  unreachable

_ZNKSt6vectorIN13llama_context9swap_infoESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 1152921504606846975)
  %i.p = select i1 %i.n, i64 1152921504606846975, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #31 ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.j ; 2 uses
  %i.t = load i64, ptr %1, align 4, !tbaa !199
  store i64 %i.t, ptr %i.s, align 4, !tbaa !199
  %i.u = icmp sgt i64 %i.j, 0
  br i1 %i.u, label %bb.e, label %_ZNSt6vectorIN13llama_context9swap_infoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIN13llama_context9swap_infoESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.r, ptr align 4 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIN13llama_context9swap_infoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIN13llama_context9swap_infoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIN13llama_context9swap_infoESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.not.i17.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN13llama_context9swap_infoESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN13llama_context9swap_infoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.j) #32
  br label %_ZNSt6vectorIN13llama_context9swap_infoESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN13llama_context9swap_infoESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN13llama_context9swap_infoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !344
  store ptr %i.v, ptr %i.a, align 8, !tbaa !410
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.w, ptr %i.c, align 8, !tbaa !345
  br label %_ZNSt6vectorIN13llama_context9swap_infoESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

_ZNSt6vectorIN13llama_context9swap_infoESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorIN13llama_context9swap_infoESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  ret void
}

declare ptr @ggml_backend_cpu_buffer_type() local_unnamed_addr #3

declare ptr @ggml_backend_buft_alloc_buffer(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @ggml_backend_buffer_clear(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @ggml_backend_buffer_get_base(ptr noundef) local_unnamed_addr #3

declare noundef i64 @_ZNK11llama_model9n_tensorsEv(ptr noundef nonnull align 8 dereferenceable(36840)) local_unnamed_addr #3

declare noundef i32 @_Z29llama_sampler_backend_n_nodesPK13llama_sampler(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZNK13llama_context18get_gf_res_reserveEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(996) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !343
  ret ptr %i.b
}

declare void @_ZN18llama_batch_allocrC1Ej(ptr noundef nonnull align 8 dereferenceable(444), i32 noundef) unnamed_addr #3

declare void @_ZN18llama_batch_allocr14ubatch_reserveEjj(ptr dead_on_unwind writable sret(%struct.llama_ubatch) align 8, ptr noundef nonnull align 8 dereferenceable(444), i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @ggml_backend_sched_reserve_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ggml_backend_sched_split_graph(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i1 @ggml_backend_sched_reserve(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN18llama_batch_allocrD2Ev(ptr noundef nonnull align 8 dead_on_return(444) dereferenceable(444) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 3
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.i
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.g) #32
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !342  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !346
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #32
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !890  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableISt6bitsetILm256EESt4pairIKS1_St6vectorIiSaIiEEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKSt6bitsetILm256EESt6vectorIiSaIiEEELb0EEEEE18_M_deallocate_nodeEPSA_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.u, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKSt6bitsetILm256EESt6vectorIiSaIiEEELb0EEEEE18_M_deallocate_nodeEPSA_.exit.i.i.i.i ], [ %i.t, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 4 uses
  %i.u = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !376 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !342  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKSt6bitsetILm256EESt6vectorIiSaIiEEELb0EEEEE18_M_deallocate_nodeEPSA_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !346
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #32
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKSt6bitsetILm256EESt6vectorIiSaIiEEELb0EEEEE18_M_deallocate_nodeEPSA_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKSt6bitsetILm256EESt6vectorIiSaIiEEELb0EEEEE18_M_deallocate_nodeEPSA_.exit.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 64) #32
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableISt6bitsetILm256EESt4pairIKS1_St6vectorIiSaIiEEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !887

_ZNSt10_HashtableISt6bitsetILm256EESt4pairIKS1_St6vectorIiSaIiEEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKSt6bitsetILm256EESt6vectorIiSaIiEEELb0EEEEE18_M_deallocate_nodeEPSA_.exit.i.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ac = load ptr, ptr %i.r, align 8, !tbaa !891
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !892
  %i.af = shl i64 %i.ae, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ac, i8 0, i64 %i.af, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %i.ag = load ptr, ptr %i.r, align 8, !tbaa !891 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt13unordered_mapISt6bitsetILm256EESt6vectorIiSaIiEESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S4_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt10_HashtableISt6bitsetILm256EESt4pairIKS1_St6vectorIiSaIiEEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.aj = load i64, ptr %i.ad, align 8, !tbaa !892
  %i.ak = shl i64 %i.aj, 3
  tail call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #32
  br label %_ZNSt13unordered_mapISt6bitsetILm256EESt6vectorIiSaIiEESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S4_EEED2Ev.exit

_ZNSt13unordered_mapISt6bitsetILm256EESt6vectorIiSaIiEESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S4_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableISt6bitsetILm256EESt4pairIKS1_St6vectorIiSaIiEEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !895 ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorISt6bitsetILm256EESaIS1_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt13unordered_mapISt6bitsetILm256EESt6vectorIiSaIiEESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S4_EEED2Ev.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !896
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ar) #32
  br label %_ZNSt6vectorISt6bitsetILm256EESaIS1_EED2Ev.exit

_ZNSt6vectorISt6bitsetILm256EESaIS1_EED2Ev.exit:  ; preds = %_ZNSt13unordered_mapISt6bitsetILm256EESt6vectorIiSaIiEESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S4_EEED2Ev.exit, %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !899 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !900 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.at, %i.av
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIbSaIbEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorISt6bitsetILm256EESaIS1_EED2Ev.exit, %_ZSt8_DestroyISt6vectorIbSaIbEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bf, %_ZSt8_DestroyISt6vectorIbSaIbEEEvPT_.exit.i.i.i ], [ %i.at, %_ZNSt6vectorISt6bitsetILm256EESaIS1_EED2Ev.exit ] ; 3 uses
  %i.aw = load ptr, ptr %.05.i.i.i, align 8, !tbaa !41 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIbSaIbEEEvPT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !43 ; 2 uses
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 2 uses
  %i.bc = ashr exact i64 %i.bb, 3
  %i.bd = sub nsw i64 0, %i.bc
  %i.be = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.bd
  tail call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bb) #32
  br label %_ZSt8_DestroyISt6vectorIbSaIbEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIbSaIbEEEvPT_.exit.i.i.i:  ; preds = %bb.g, %.lr.ph.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i2 = icmp eq ptr %i.bf, %i.av
  br i1 %.not.i.i.i2, label %_ZSt8_DestroyIPSt6vectorIbSaIbEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !888

_ZSt8_DestroyIPSt6vectorIbSaIbEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIbSaIbEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.as, align 8, !tbaa !899
  br label %_ZSt8_DestroyIPSt6vectorIbSaIbEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIbSaIbEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIbSaIbEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorISt6bitsetILm256EESaIS1_EED2Ev.exit
  %i.bg = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIbSaIbEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.at, %_ZNSt6vectorISt6bitsetILm256EESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IbSaIbEESaIS1_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIbSaIbEES2_EvT_S4_RSaIT0_E.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !901
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
end_hunk_0
