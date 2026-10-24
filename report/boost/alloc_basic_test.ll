Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/alloc_basic_test?download=true
inline.NumInlined: 546
inline.NumDeleted: 254
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvE37priv_insert_forward_range_no_capacityINS0_3dtl32insert_value_initialized_n_proxyIS3_EEEENS0_12vec_iteratorIPiLb0EEESA_mT_NS_11move_detail17integral_constantIjLj2EEE:bb.a

bb.l:                                             ; preds = %bb.j
  %.not12.i.i = icmp eq ptr %2, null
  br i1 %.not12.i.i, label %.lr.ph.preheader.i38.i.i.i, label %bb.m, !prof !20

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aq, ptr nonnull align 4 %2, i64 %i.ag, i1 false)
  br label %.lr.ph.preheader.i38.i.i.i

.lr.ph.preheader.i38.i.i.i:                       ; preds = %bb.m, %bb.l
  call void @llvm.memset.p0.i64(ptr align 4 %2, i8 0, i64 %i.ag, i1 false), !tbaa !19
  %i.ar = sub nuw i64 %3, %i.ah
  br label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIiLj2ELj0EEEE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit.sink.split.i.i

_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIiLj2ELj0EEEE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit.sink.split.i.i: ; preds = %.lr.ph.preheader.i38.i.i.i, %bb.k, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit.i.i.i, %bb.h
  %.sink19.i.i = phi i64 [ %3, %bb.h ], [ %i.ar, %.lr.ph.preheader.i38.i.i.i ], [ %3, %bb.k ], [ %3, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit.i.i.i ]
  %.sink.i.i = phi ptr [ %i.ac, %bb.h ], [ %i.ac, %.lr.ph.preheader.i38.i.i.i ], [ %2, %bb.k ], [ %2, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit.i.i.i ]
  %i.as = shl i64 %.sink19.i.i, 2
  call void @llvm.memset.p0.i64(ptr align 1 %.sink.i.i, i8 0, i64 %i.as, i1 false)
  %.pre.i = load i64, ptr %i.f, align 8, !tbaa !37
  br label %_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS3_EEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit

_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS3_EEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit: ; preds = %bb.h, %bb.i, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIiLj2ELj0EEEE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit.sink.split.i.i
  %i.at = phi i64 [ %i.ab, %bb.h ], [ %i.ab, %bb.i ], [ %.pre.i, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIiLj2ELj0EEEE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit.sink.split.i.i ]
  %i.au = add i64 %i.at, %3
  store i64 %i.au, ptr %i.f, align 8, !tbaa !37
  br label %bb.w

bb.n:                                             ; preds = %bb.f
  %i.av = load i64, ptr %i.f, align 8, !tbaa !18  ; 3 uses
  store ptr %i.v, ptr %1, align 8, !tbaa !15
  store i64 %i.x, ptr %i.c, align 8, !tbaa !11
  store i64 0, ptr %i.f, align 8, !tbaa !18
  %i.aw = icmp ult ptr %i.v, %i.z
  br i1 %i.aw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPiNS0_3dtl32insert_value_initialized_n_proxyINS0_9allocatorIiLj2ELj0EEEEES6_EEvT_mS8_S8_mT0_RT1_(ptr noundef nonnull %i.z, i64 noundef %i.av, ptr noundef nonnull %i.v, ptr noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvE42priv_insert_forward_range_expand_backwardsINS0_3dtl32insert_value_initialized_n_proxyIS3_EEEEvPimS9_mT_.exit

bb.p:                                             ; preds = %bb.n
  call void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl32insert_value_initialized_n_proxyIS3_EEEEvT0_mS8_S8_mT1_RT_(ptr noundef %i.z, i64 noundef %i.av, ptr noundef nonnull %i.v, ptr noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvE42priv_insert_forward_range_expand_backwardsINS0_3dtl32insert_value_initialized_n_proxyIS3_EEEEvPimS9_mT_.exit

_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvE42priv_insert_forward_range_expand_backwardsINS0_3dtl32insert_value_initialized_n_proxyIS3_EEEEvPimS9_mT_.exit: ; preds = %bb.o, %bb.p
  %i.ax = add i64 %i.av, %3
  store i64 %i.ax, ptr %i.f, align 8, !tbaa !18
  br label %bb.w

bb.q:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_9allocatorIiLj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE18allocation_commandEjmRmRPi.exit
  %i.ay = load i64, ptr %i.f, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ay ; 2 uses
  %i.ba = icmp ne ptr %i.z, %2
  %i.bb = icmp ne ptr %i.z, null                  ; 2 uses
  %spec.select.i.i.i.i = and i1 %i.bb, %i.ba
  br i1 %spec.select.i.i.i.i, label %bb.r, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i.i, !prof !38

bb.r:                                             ; preds = %bb.q
  %i.bc = ptrtoint ptr %2 to i64
  %i.bd = ptrtoint ptr %i.z to i64
  %i.be = sub i64 %i.bc, %i.bd                    ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull align 4 %i.z, i64 %i.be, i1 false)
  %i.bf = getelementptr inbounds i8, ptr %i.v, i64 %i.be
  br label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i.i

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i16 = phi ptr [ %i.bf, %bb.r ], [ %i.v, %bb.q ] ; 2 uses
  %.not.i.i.i.i17 = icmp eq i64 %3, 0
  br i1 %.not.i.i.i.i17, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIiLj2ELj0EEEE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit.i.i, label %bb.s, !prof !20

bb.s:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i.i
  %i.bg = shl i64 %3, 2
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i.i.i.i16, i8 0, i64 %i.bg, i1 false)
  br label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIiLj2ELj0EEEE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit.i.i

_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIiLj2ELj0EEEE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit.i.i: ; preds = %bb.s, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i.i
  %i.bh = icmp ne ptr %2, %i.az
  %i.bi = icmp ne ptr %2, null
  %spec.select.i.i18.i.i = and i1 %i.bi, %i.bh
  br i1 %spec.select.i.i18.i.i, label %bb.t, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_9allocatorIiLj2ELj0EEEPiS4_NS0_3dtl32insert_value_initialized_n_proxyIS3_EEEEvRT_T0_SA_SA_T1_mT2_.exit.i, !prof !38

bb.t:                                             ; preds = %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIiLj2ELj0EEEE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit.i.i
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i16, i64 %3
  %i.bk = ptrtoint ptr %i.az to i64
  %i.bl = ptrtoint ptr %2 to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr nonnull align 4 %2, i64 %i.bm, i1 false)
  br label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_9allocatorIiLj2ELj0EEEPiS4_NS0_3dtl32insert_value_initialized_n_proxyIS3_EEEEvRT_T0_SA_SA_T1_mT2_.exit.i

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_9allocatorIiLj2ELj0EEEPiS4_NS0_3dtl32insert_value_initialized_n_proxyIS3_EEEEvRT_T0_SA_SA_T1_mT2_.exit.i: ; preds = %bb.t, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIiLj2ELj0EEEE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit.i.i
  br i1 %i.bb, label %bb.u, label %_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvE40priv_insert_forward_range_new_allocationINS0_3dtl32insert_value_initialized_n_proxyIS3_EEEEvPimS9_mT_.exit

bb.u:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_9allocatorIiLj2ELj0EEEPiS4_NS0_3dtl32insert_value_initialized_n_proxyIS3_EEEEvRT_T0_SA_SA_T1_mT2_.exit.i
  %i.bn = load ptr, ptr %1, align 8, !tbaa !15
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef %i.bn)
          to label %_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvE40priv_insert_forward_range_new_allocationINS0_3dtl32insert_value_initialized_n_proxyIS3_EEEEvPimS9_mT_.exit unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #18
  unreachable

_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvE40priv_insert_forward_range_new_allocationINS0_3dtl32insert_value_initialized_n_proxyIS3_EEEEvPimS9_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_9allocatorIiLj2ELj0EEEPiS4_NS0_3dtl32insert_value_initialized_n_proxyIS3_EEEEvRT_T0_SA_SA_T1_mT2_.exit.i, %bb.u
  store ptr %i.v, ptr %1, align 8, !tbaa !15
  %i.bq = load i64, ptr %i.f, align 8, !tbaa !37
  %i.br = add i64 %i.bq, %3
  store i64 %i.br, ptr %i.f, align 8, !tbaa !37
  store i64 %i.x, ptr %i.c, align 8, !tbaa !11
  br label %bb.w

bb.w:                                             ; preds = %_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS3_EEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit, %_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvE42priv_insert_forward_range_expand_backwardsINS0_3dtl32insert_value_initialized_n_proxyIS3_EEEEvPimS9_mT_.exit, %_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvE40priv_insert_forward_range_new_allocationINS0_3dtl32insert_value_initialized_n_proxyIS3_EEEEvPimS9_mT_.exit
  %i.bs = ptrtoint ptr %2 to i64
  %i.bt = ptrtoint ptr %i.b to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = load ptr, ptr %1, align 8, !tbaa !15
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 %i.bu
  store ptr %i.bw, ptr %0, align 8, !tbaa !40
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef %0) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.b, align 8, !tbaa !44
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost9container12length_errorE, i64 16), ptr %i.a, align 8, !tbaa !46
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost9container12length_errorE, ptr nonnull @_ZNSt9exceptionD2Ev) #19
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container12length_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK5boost9container9exception4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %spec.select = select i1 %.not, ptr @.str.1, ptr %i.b
  ret ptr %spec.select
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost9container15throw_bad_allocEv() local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @.str.2, ptr %i.b, align 8, !tbaa !44
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost9container9bad_allocE, i64 16), ptr %i.a, align 8, !tbaa !46
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost9container9bad_allocE, ptr nonnull @_ZNSt9exceptionD2Ev) #19
  unreachable
}

declare { ptr, i32 } @_ZN5boost9container27dlmalloc_allocation_commandEjmmmmPmPv(i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #14

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container9bad_allocD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPiNS0_3dtl32insert_value_initialized_n_proxyINS0_9allocatorIiLj2ELj0EEEEES6_EEvT_mS8_S8_mT0_RT1_(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds [4 x i8], ptr %0, i64 %1 ; 15 uses
  %i.b = ptrtoint ptr %3 to i64                   ; 8 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 6 uses
  %i.e = ashr exact i64 %i.d, 2                   ; 6 uses
  %i.f = ptrtoint ptr %2 to i64
  %i.g = sub i64 %i.c, %i.f                       ; 3 uses
  %i.h = ashr exact i64 %i.g, 2                   ; 8 uses
  %i.i = add i64 %i.e, %4                         ; 3 uses
  %.not = icmp ult i64 %i.h, %i.i
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ne ptr %0, %3
  %i.k = icmp ne ptr %2, null                     ; 3 uses
  %i.l = icmp ne ptr %0, null
  %i.m = and i1 %i.j, %i.l
  %spec.select.i.i = and i1 %i.m, %i.k
  br i1 %spec.select.i.i, label %bb.c, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit, !prof !38

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2, ptr nonnull align 4 %0, i64 %i.d, i1 false)
  %i.n = getelementptr inbounds i8, ptr %2, i64 %i.d
  br label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.n, %bb.c ], [ %2, %bb.b ]
  %.not.i.i = icmp eq i64 %4, 0
  br i1 %.not.i.i, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIiLj2ELj0EEEE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit, label %bb.d, !prof !20

bb.d:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit
  %i.o = shl i64 %4, 2
  tail call void @llvm.memset.p0.i64(ptr align 1 %.0.i.i, i8 0, i64 %i.o, i1 false)
  br label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIiLj2ELj0EEEE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit

_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIiLj2ELj0EEEE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit: ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit, %bb.d
  %i.p = add i64 %4, %1
  %.not145 = icmp ult i64 %i.h, %i.p
  br i1 %.not145, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIiLj2ELj0EEEE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit
  %.not146 = icmp eq i64 %i.e, %1
  br i1 %.not146, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit150, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = icmp ne ptr %3, %i.a
  %i.r = icmp ne ptr %3, null
  %i.s = and i1 %i.q, %i.r
  %spec.select.i.i148 = and i1 %i.s, %i.k
  br i1 %spec.select.i.i148, label %bb.g, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit150, !prof !38

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds [4 x i8], ptr %2, i64 %i.i
  %i.u = ptrtoint ptr %i.a to i64
  %i.v = sub i64 %i.u, %i.b
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull align 4 %3, i64 %i.v, i1 false)
  br label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit150

bb.h:                                             ; preds = %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIiLj2ELj0EEEE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit
  %.not.i.i151 = icmp ne ptr %i.a, %3
  %i.w = icmp ne ptr %3, null
  %i.x = and i1 %i.w, %.not.i.i151
  %or.cond = and i1 %i.x, %i.k
  br i1 %or.cond, label %bb.i, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit150, !prof !47

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds [4 x i8], ptr %2, i64 %i.i
  %i.z = ptrtoint ptr %i.a to i64
  %i.aa = sub i64 %i.z, %i.b
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 1 %3, i64 %i.aa, i1 false)
  br label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit150

bb.j:                                             ; preds = %bb.a
  %i.ab = icmp ugt i64 %4, %i.h                   ; 2 uses
  %.not143 = icmp ugt i64 %i.h, %i.e
  br i1 %.not143, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i.i154 = icmp eq ptr %0, %2
  br i1 %.not.i.i154, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit157, label %bb.l, !prof !20

bb.l:                                             ; preds = %bb.k
  %i.ac = icmp ne ptr %2, null
  %i.ad = icmp ne ptr %0, null
  %or.cond.i.i155 = and i1 %i.ad, %i.ac
  br i1 %or.cond.i.i155, label %bb.m, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit157

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2, ptr nonnull align 1 %0, i64 %i.g, i1 false)
  br label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit157

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit157: ; preds = %bb.l, %bb.m, %bb.k
  %i.ae = tail call i64 @llvm.umin.i64(i64 %4, i64 %i.h) ; 3 uses
  %i.af = getelementptr inbounds i8, ptr %0, i64 %i.g ; 3 uses
  %i.ag = icmp ne ptr %i.af, %3
  %i.ah = icmp ne ptr %0, null
  %or.cond.i.i158 = and i1 %i.ah, %i.ag
  br i1 %or.cond.i.i158, label %bb.n, label %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit, !prof !38

bb.n:                                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit157
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = sub i64 %i.b, %i.ai                     ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 4 %i.af, i64 %i.aj, i1 false)
  %i.ak = getelementptr inbounds i8, ptr %0, i64 %i.aj
  br label %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit

_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit: ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit157, %bb.n
  %.0.i.i160 = phi ptr [ %i.ak, %bb.n ], [ %0, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit157 ] ; 3 uses
  %.not8.i = icmp eq i64 %i.ae, 0
  br i1 %.not8.i, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIiLj2ELj0EEEE17copy_n_and_updateIPiEEvRS4_T_m.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit
  %i.al = shl nuw i64 %i.ae, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %.0.i.i160, i8 0, i64 %i.al, i1 false), !tbaa !19
  br label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIiLj2ELj0EEEE17copy_n_and_updateIPiEEvRS4_T_m.exit

_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIiLj2ELj0EEEE17copy_n_and_updateIPiEEvRS4_T_m.exit: ; preds = %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit, %.lr.ph.preheader.i
  br i1 %i.ab, label %.critedge, label %bb.o

bb.o:                                             ; preds = %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIiLj2ELj0EEEE17copy_n_and_updateIPiEEvRS4_T_m.exit
  %i.am = getelementptr inbounds [4 x i8], ptr %.0.i.i160, i64 %i.ae ; 2 uses
  %.not.i = icmp eq ptr %3, %i.am
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit150, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = icmp ne ptr %3, %i.a
  %i.ao = icmp ne ptr %.0.i.i160, null
  %or.cond.i.i.i = and i1 %i.an, %i.ao
  %i.ap = icmp ne ptr %3, null
  %spec.select.i.i.i = and i1 %i.ap, %or.cond.i.i.i
  br i1 %spec.select.i.i.i, label %bb.q, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit150, !prof !38

bb.q:                                             ; preds = %bb.p
  %i.aq = ptrtoint ptr %i.a to i64
  %i.ar = sub i64 %i.aq, %i.b
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.am, ptr nonnull align 4 %3, i64 %i.ar, i1 false)
  br label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit150

bb.r:                                             ; preds = %bb.j
  %i.as = icmp ne ptr %0, %3                      ; 2 uses
  %i.at = icmp ne ptr %2, null
  %or.cond.i.i161 = and i1 %i.at, %i.as
  %i.au = icmp ne ptr %0, null                    ; 2 uses
  %spec.select.i.i162 = and i1 %i.au, %or.cond.i.i161
  br i1 %spec.select.i.i162, label %bb.s, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit164, !prof !38

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2, ptr nonnull align 4 %0, i64 %i.d, i1 false)
  %6 = getelementptr inbounds i8, ptr %2, i64 %i.d
  br label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit164

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit164: ; preds = %bb.r, %bb.s
  %.0.i.i163 = phi ptr [ %6, %bb.s ], [ %2, %bb.r ]
  %i.av = sub nuw nsw i64 %i.h, %i.e              ; 3 uses
  %i.aw = shl i64 %i.av, 2
  tail call void @llvm.memset.p0.i64(ptr align 1 %.0.i.i163, i8 0, i64 %i.aw, i1 false)
  br i1 %i.ab, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit164
  br i1 %i.as, label %.lr.ph.preheader.i168, label %.critedge

.lr.ph.preheader.i168:                            ; preds = %bb.t
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.d, i1 false), !tbaa !19
  br label %.critedge

bb.u:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit164
  %i.ax = sub i64 %4, %i.av                       ; 2 uses
  %.not8.i170 = icmp eq i64 %4, %i.av
  br i1 %.not8.i170, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIiLj2ELj0EEEE17copy_n_and_updateIPiEEvRS4_T_m.exit172, label %.lr.ph.preheader.i171

.lr.ph.preheader.i171:                            ; preds = %bb.u
  %i.ay = shl nuw i64 %i.ax, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.ay, i1 false), !tbaa !19
  br label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIiLj2ELj0EEEE17copy_n_and_updateIPiEEvRS4_T_m.exit172

_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIiLj2ELj0EEEE17copy_n_and_updateIPiEEvRS4_T_m.exit172: ; preds = %bb.u, %.lr.ph.preheader.i171
  %i.az = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ax ; 2 uses
  %.not.i173 = icmp eq ptr %3, %i.az
  br i1 %.not.i173, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit150, label %bb.v

bb.v:                                             ; preds = %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIiLj2ELj0EEEE17copy_n_and_updateIPiEEvRS4_T_m.exit172
  %i.ba = icmp ne ptr %3, %i.a
  %i.bb = icmp ne ptr %3, null
  %i.bc = and i1 %i.ba, %i.bb
  %spec.select.i.i.i175 = and i1 %i.bc, %i.au
  br i1 %spec.select.i.i.i175, label %bb.w, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit150, !prof !38

bb.w:                                             ; preds = %bb.v
  %i.bd = ptrtoint ptr %i.a to i64
  %i.be = sub i64 %i.bd, %i.b
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.az, ptr nonnull align 4 %3, i64 %i.be, i1 false)
  br label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit150

.critedge:                                        ; preds = %.lr.ph.preheader.i168, %bb.t, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIiLj2ELj0EEEE17copy_n_and_updateIPiEEvRS4_T_m.exit
  %i.bf = sub nuw i64 %4, %i.h                    ; 4 uses
  %i.bg = sub i64 %1, %i.e                        ; 3 uses
  %.not144 = icmp ult i64 %i.bg, %i.bf
  br i1 %.not144, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %.critedge
  %.neg = mul i64 %i.bf, -4                       ; 3 uses
  %i.bh = getelementptr inbounds i8, ptr %i.a, i64 %.neg ; 3 uses
  %i.bi = icmp ne i64 %.neg, 0                    ; 2 uses
  %i.bj = icmp ne ptr %0, null
  %or.cond.i.i177 = and i1 %i.bj, %i.bi
  br i1 %or.cond.i.i177, label %bb.y, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit180, !prof !38

bb.y:                                             ; preds = %bb.x
  %gepdiff = sub nsw i64 0, %.neg
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.a, ptr nonnull align 4 %i.bh, i64 %gepdiff, i1 false)
  br label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit180

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit180: ; preds = %bb.x, %bb.y
  %.not.i.i182 = icmp ne ptr %i.bh, %3
  %or.cond.not = and i1 %.not.i.i182, %i.bi
  br i1 %or.cond.not, label %bb.z, label %_ZN5boost9container25move_backward_overlappingIPiEET_S3_S3_S3_.exit, !prof !47

bb.z:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit180
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = sub i64 %i.bk, %i.b                     ; 2 uses
  %i.bm = ashr exact i64 %i.bl, 2
  %i.bn = sub nsw i64 0, %i.bm
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bn
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bo, ptr align 4 %3, i64 %i.bl, i1 false)
  br label %_ZN5boost9container25move_backward_overlappingIPiEET_S3_S3_S3_.exit

_ZN5boost9container25move_backward_overlappingIPiEET_S3_S3_S3_.exit: ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit180, %bb.z
  %.not8.i183 = icmp eq i64 %4, %i.h
  br i1 %.not8.i183, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit150, label %.lr.ph.preheader.i184

.lr.ph.preheader.i184:                            ; preds = %_ZN5boost9container25move_backward_overlappingIPiEET_S3_S3_S3_.exit
  %i.bp = shl nuw i64 %i.bf, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %3, i8 0, i64 %i.bp, i1 false), !tbaa !19
  br label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit150

bb.aa:                                            ; preds = %.critedge
  %i.bq = sub nuw i64 %i.bf, %i.bg                ; 2 uses
  %i.br = icmp ne ptr %3, %i.a
  %i.bs = icmp ne ptr %0, null
  %or.cond.i.i186 = and i1 %i.bs, %i.br
  %i.bt = icmp ne ptr %3, null
  %spec.select.i.i187 = and i1 %i.bt, %or.cond.i.i186
  br i1 %spec.select.i.i187, label %bb.ab, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit189, !prof !38

bb.ab:                                            ; preds = %bb.aa
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bq
  %i.bv = ptrtoint ptr %i.a to i64
  %i.bw = sub i64 %i.bv, %i.b
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bu, ptr nonnull align 4 %3, i64 %i.bw, i1 false)
  br label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit189

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit189: ; preds = %bb.aa, %bb.ab
  %.not8.i190 = icmp eq i64 %1, %i.e
  br i1 %.not8.i190, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIiLj2ELj0EEEE17copy_n_and_updateIPiEEvRS4_T_m.exit192, label %.lr.ph.preheader.i191

.lr.ph.preheader.i191:                            ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit189
  %i.bx = shl nuw i64 %i.bg, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %3, i8 0, i64 %i.bx, i1 false), !tbaa !19
  br label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIiLj2ELj0EEEE17copy_n_and_updateIPiEEvRS4_T_m.exit192

_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIiLj2ELj0EEEE17copy_n_and_updateIPiEEvRS4_T_m.exit192: ; preds = %.lr.ph.preheader.i191, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit189
  %i.by = shl i64 %i.bq, 2
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.a, i8 0, i64 %i.by, i1 false)
  br label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit150

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit150: ; preds = %bb.o, %bb.p, %bb.q, %bb.w, %bb.v, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIiLj2ELj0EEEE17copy_n_and_updateIPiEEvRS4_T_m.exit172, %_ZN5boost9container25move_backward_overlappingIPiEET_S3_S3_S3_.exit, %.lr.ph.preheader.i184, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIiLj2ELj0EEEE17copy_n_and_updateIPiEEvRS4_T_m.exit192, %bb.g, %bb.f, %bb.e, %bb.i, %bb.h
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl32insert_value_initialized_n_proxyIS3_EEEEvT0_mS8_S8_mT1_RT_(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds [4 x i8], ptr %0, i64 %1 ; 13 uses
  %i.b = add i64 %4, %1                           ; 2 uses
  %i.c = getelementptr inbounds [4 x i8], ptr %2, i64 %i.b ; 4 uses
  %i.d = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.e = ptrtoint ptr %3 to i64                   ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = sub i64 %i.h, %i.d                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 6 uses
  %i.k = add i64 %i.g, %4                         ; 4 uses
  %.not = icmp ult i64 %i.j, %i.k
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = sub i64 0, %i.k
  %i.m = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.l ; 2 uses
  %.not.i.i = icmp eq i64 %4, 0
  br i1 %.not.i.i, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIiLj2ELj0EEEE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit, label %bb.c, !prof !20

bb.c:                                             ; preds = %bb.b
  %i.n = shl i64 %4, 2
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.m, i8 0, i64 %i.n, i1 false)
  br label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIiLj2ELj0EEEE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit

_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIiLj2ELj0EEEE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit: ; preds = %bb.b, %bb.c
  %i.o = icmp ne ptr %3, %i.a
  %i.p = icmp ne ptr %2, null                     ; 2 uses
  %i.q = icmp ne ptr %3, null
  %i.r = and i1 %i.o, %i.q
  %spec.select.i.i = and i1 %i.r, %i.p
  br i1 %spec.select.i.i, label %bb.d, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit, !prof !38

bb.d:                                             ; preds = %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIiLj2ELj0EEEE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull align 4 %3, i64 %i.f, i1 false)
  br label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit: ; preds = %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIiLj2ELj0EEEE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit, %bb.d
  %.not98 = icmp ult i64 %i.j, %i.b
  br i1 %.not98, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit
  %i.t = icmp ne ptr %0, %3
  %i.u = icmp ne ptr %0, null
  %i.v = and i1 %i.t, %i.u
  %spec.select.i.i100 = and i1 %i.v, %i.p
  br i1 %spec.select.i.i100, label %bb.f, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit102, !prof !38

bb.f:                                             ; preds = %bb.e
  %i.w = ptrtoint ptr %0 to i64
  %i.x = sub i64 %i.e, %i.w
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2, ptr nonnull align 4 %0, i64 %i.x, i1 false)
  br label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit102

bb.g:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit
  %i.y = sub nuw i64 %i.j, %i.k                   ; 2 uses
  %i.z = sub i64 0, %i.y
  %i.aa = getelementptr inbounds [4 x i8], ptr %3, i64 %i.z ; 4 uses
  %.not.i.i103 = icmp ne i64 %i.j, %i.k
  %i.ab = icmp ne ptr %0, null
  %or.cond = and i1 %i.ab, %.not.i.i103
  br i1 %or.cond, label %bb.h, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit, !prof !47

bb.h:                                             ; preds = %bb.g
  %i.ac = shl i64 %i.y, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.a, ptr nonnull align 1 %i.aa, i64 %i.ac, i1 false)
  br label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit: ; preds = %bb.h, %bb.g
  %.not.i = icmp eq ptr %i.aa, %i.a
  %.not.i.i106 = icmp eq ptr %i.aa, %0
  %or.cond132 = or i1 %.not.i, %.not.i.i106
  br i1 %or.cond132, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit102, label %bb.i, !prof !48

bb.i:                                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit
  %i.ad = ptrtoint ptr %0 to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ae, %i.ad                    ; 2 uses
  %i.ag = ashr exact i64 %i.af, 2
  %i.ah = sub nsw i64 0, %i.ag
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ah
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ai, ptr align 4 %0, i64 %i.af, i1 false)
  br label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit102

bb.j:                                             ; preds = %bb.a
  %i.aj = icmp ugt i64 %i.j, %i.g
  br i1 %i.aj, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ak = icmp ne ptr %3, %i.a
  %i.al = icmp ne ptr %2, null
  %or.cond.i.i107 = and i1 %i.al, %i.ak
  %i.am = icmp ne ptr %3, null
  %spec.select.i.i108 = and i1 %i.am, %or.cond.i.i107
  br i1 %spec.select.i.i108, label %bb.l, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit110, !prof !38

bb.l:                                             ; preds = %bb.k
  %i.an = sub nsw i64 0, %i.g
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.an
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ao, ptr nonnull align 4 %3, i64 %i.f, i1 false)
  br label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit110

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit110: ; preds = %bb.k, %bb.l
  %i.ap = sub nuw nsw i64 %i.j, %i.g              ; 3 uses
  %i.aq = sub i64 %4, %i.ap                       ; 2 uses
  %i.ar = sub i64 0, %i.aq
  %i.as = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ar ; 3 uses
  %.not8.i = icmp eq i64 %4, %i.ap
  br i1 %.not8.i, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIiLj2ELj0EEEE17copy_n_and_updateIPiEEvRS4_T_m.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit110
  %i.at = shl nuw i64 %i.aq, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.as, i8 0, i64 %i.at, i1 false), !tbaa !19
  br label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIiLj2ELj0EEEE17copy_n_and_updateIPiEEvRS4_T_m.exit

_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIiLj2ELj0EEEE17copy_n_and_updateIPiEEvRS4_T_m.exit: ; preds = %.lr.ph.preheader.i, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit110
  %i.au = shl i64 %i.ap, 2
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.a, i8 0, i64 %i.au, i1 false)
  %.not.i113 = icmp eq ptr %3, %i.as
  %.not.i.i114 = icmp eq ptr %3, %0
  %or.cond133 = or i1 %.not.i.i114, %.not.i113
  br i1 %or.cond133, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit102, label %bb.m, !prof !48

bb.m:                                             ; preds = %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIiLj2ELj0EEEE17copy_n_and_updateIPiEEvRS4_T_m.exit
  %i.av = ptrtoint ptr %0 to i64
  %i.aw = sub i64 %i.e, %i.av                     ; 2 uses
  %i.ax = ashr exact i64 %i.aw, 2
  %i.ay = sub nsw i64 0, %i.ax
  %i.az = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.ay
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.az, ptr align 4 %0, i64 %i.aw, i1 false)
  br label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit102

bb.n:                                             ; preds = %bb.j
  %.idx = sub i64 0, %i.i
  %i.ba = getelementptr inbounds i8, ptr %i.a, i64 %.idx ; 3 uses
  %.not.i.i116 = icmp ne ptr %i.c, %i.a           ; 2 uses
  %i.bb = icmp ne ptr %0, null
  %or.cond134 = and i1 %i.bb, %.not.i.i116
  br i1 %or.cond134, label %bb.o, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit119, !prof !47

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.a, ptr nonnull align 1 %i.ba, i64 %i.i, i1 false)
  br label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit119

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit119: ; preds = %bb.o, %bb.n
  br i1 %.not.i.i116, label %bb.p, label %_ZN5boost9container25move_backward_overlappingIPiEET_S3_S3_S3_.exit122

bb.p:                                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit119
  %.not.i.i121 = icmp eq ptr %i.ba, %3
  br i1 %.not.i.i121, label %_ZN5boost9container25move_backward_overlappingIPiEET_S3_S3_S3_.exit122, label %bb.q, !prof !20

bb.q:                                             ; preds = %bb.p
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bc, %i.e                     ; 2 uses
  %i.be = ashr exact i64 %i.bd, 2
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bf ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bg, ptr align 4 %3, i64 %i.bd, i1 false)
  br label %_ZN5boost9container25move_backward_overlappingIPiEET_S3_S3_S3_.exit122

_ZN5boost9container25move_backward_overlappingIPiEET_S3_S3_S3_.exit122: ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit119, %bb.p, %bb.q
  %i.bh = phi ptr [ %3, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit119 ], [ %i.a, %bb.p ], [ %i.bg, %bb.q ]
  %i.bi = sub i64 0, %4
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.bi ; 3 uses
  %.not8.i123 = icmp eq i64 %4, 0
  br i1 %.not8.i123, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIiLj2ELj0EEEE17copy_n_and_updateIPiEEvRS4_T_m.exit125, label %.lr.ph.preheader.i124

.lr.ph.preheader.i124:                            ; preds = %_ZN5boost9container25move_backward_overlappingIPiEET_S3_S3_S3_.exit122
  %i.bk = shl nuw i64 %4, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bj, i8 0, i64 %i.bk, i1 false), !tbaa !19
  br label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIiLj2ELj0EEEE17copy_n_and_updateIPiEEvRS4_T_m.exit125

_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIiLj2ELj0EEEE17copy_n_and_updateIPiEEvRS4_T_m.exit125: ; preds = %_ZN5boost9container25move_backward_overlappingIPiEET_S3_S3_S3_.exit122, %.lr.ph.preheader.i124
  %.not.i126 = icmp eq ptr %3, %i.bj
  %.not.i.i127 = icmp eq ptr %3, %0
  %or.cond135 = or i1 %.not.i.i127, %.not.i126
  br i1 %or.cond135, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit102, label %bb.r, !prof !48

bb.r:                                             ; preds = %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIiLj2ELj0EEEE17copy_n_and_updateIPiEEvRS4_T_m.exit125
  %i.bl = ptrtoint ptr %0 to i64
  %i.bm = sub i64 %i.e, %i.bl                     ; 2 uses
  %i.bn = ashr exact i64 %i.bm, 2
  %i.bo = sub nsw i64 0, %i.bn
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.bo
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bp, ptr align 4 %0, i64 %i.bm, i1 false)
  br label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit102

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit102: ; preds = %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIiLj2ELj0EEEE17copy_n_and_updateIPiEEvRS4_T_m.exit, %bb.m, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorIiLj2ELj0EEEE17copy_n_and_updateIPiEEvRS4_T_m.exit125, %bb.r, %bb.e, %bb.f, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit, %bb.i
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS3_JiEEEEENS0_12vec_iteratorIPiLb0EEESA_mT_NS_11move_detail17integral_constantIjLj2EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !15     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16   ; 6 uses
  %i.e = sub i64 2305843009213693951, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !37   ; 2 uses
  %.neg.i = sub i64 %3, %i.d
  %i.h = add i64 %.neg.i, %i.g
  %i.i = icmp ult i64 %i.e, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %i.d, 2305843009213693952
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = shl nuw i64 %i.d, 3
  %i.l = udiv i64 %i.k, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_9allocatorIiLj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.m = icmp ugt i64 %i.d, -6917529027641081857
  %i.n = shl i64 %i.d, 3
  %spec.select.i.i = select i1 %i.m, i64 -1, i64 %i.n
  br label %_ZNK5boost9container19vector_alloc_holderINS0_9allocatorIiLj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_9allocatorIiLj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.l, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.o = add i64 %i.g, %3                         ; 3 uses
  %i.p = icmp ugt i64 %i.o, 2305843009213693951
  br i1 %i.p, label %_ZN5boost9container9allocatorIiLj2ELj0EE23priv_allocation_commandEjmRmRPi.exit.i.i.i.thread, label %_ZN5boost9container9allocatorIiLj2ELj0EE23priv_allocation_commandEjmRmRPi.exit.i.i.i

_ZN5boost9container9allocatorIiLj2ELj0EE23priv_allocation_commandEjmRmRPi.exit.i.i.i: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_9allocatorIiLj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.q = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.r = tail call noundef i64 @llvm.umax.i64(i64 %i.o, i64 %i.q)
  %i.s = shl nuw nsw i64 %i.o, 2
  %i.t = shl nuw nsw i64 %i.r, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.u = call { ptr, i32 } @_ZN5boost9container27dlmalloc_allocation_commandEjmmmmPmPv(i32 noundef 7, i64 noundef 4, i64 noundef 4, i64 noundef %i.s, i64 noundef %i.t, ptr noundef nonnull %i.a, ptr noundef %i.b) ; 2 uses
  %i.v = extractvalue { ptr, i32 } %i.u, 0        ; 10 uses
  %i.w = load i64, ptr %i.a, align 8, !tbaa !11
  %i.x = lshr i64 %i.w, 2                         ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %_ZN5boost9container9allocatorIiLj2ELj0EE23priv_allocation_commandEjmRmRPi.exit.i.i.i.thread, label %_ZN5boost9container19vector_alloc_holderINS0_9allocatorIiLj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE18allocation_commandEjmRmRPi.exit

_ZN5boost9container9allocatorIiLj2ELj0EE23priv_allocation_commandEjmRmRPi.exit.i.i.i.thread: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_9allocatorIiLj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit, %_ZN5boost9container9allocatorIiLj2ELj0EE23priv_allocation_commandEjmRmRPi.exit.i.i.i
  call void @_ZN5boost9container15throw_bad_allocEv() #19
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_9allocatorIiLj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE18allocation_commandEjmRmRPi.exit: ; preds = %_ZN5boost9container9allocatorIiLj2ELj0EE23priv_allocation_commandEjmRmRPi.exit.i.i.i
  %i.y = extractvalue { ptr, i32 } %i.u, 1
  %.not.i.i.i.i = icmp eq i32 %i.y, 0
  %.not27 = icmp eq ptr %i.b, null
  %.not = select i1 %.not.i.i.i.i, i1 true, i1 %.not27
  %i.z = load ptr, ptr %1, align 8, !tbaa !15     ; 12 uses
  br i1 %.not, label %bb.n, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_9allocatorIiLj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE18allocation_commandEjmRmRPi.exit
  %i.aa = icmp eq ptr %i.z, %i.v
  br i1 %i.aa, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  store i64 %i.x, ptr %i.c, align 8, !tbaa !11
  %i.ab = load i64, ptr %i.f, align 8, !tbaa !18  ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ab ; 6 uses
  %.not.i = icmp eq ptr %i.ac, %2
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ]
  %i.ad = load i32, ptr %4, align 4, !tbaa !19
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !19
  %i.ae = add i64 %i.ab, 1
  store i64 %i.ae, ptr %i.f, align 8, !tbaa !18
  br label %_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyIS3_JiEEEEEvPimT_NS_11move_detail17integral_constantIbLb1EEE.exit

bb.i:                                             ; preds = %bb.g
  %i.af = ptrtoint ptr %2 to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.ag, %i.af
  %i.ai = ashr exact i64 %i.ah, 2                 ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ]
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !19
  store i32 %i.ak, ptr %i.ac, align 4, !tbaa !19
  %i.al = add i64 %i.ab, 1
  store i64 %i.al, ptr %i.f, align 8, !tbaa !18
  %i.am = add nsw i64 %i.ai, -1                   ; 2 uses
  %.not.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i, label %_ZN5boost9container15move_backward_nIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i, label %bb.j, !prof !20

bb.j:                                             ; preds = %bb.i
  %i.an = sub nsw i64 1, %i.ai                    ; 2 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.an
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.an
  %i.aq = shl i64 %i.am, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ao, ptr nonnull align 1 %i.ap, i64 %i.aq, i1 false)
  br label %_ZN5boost9container15move_backward_nIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i

_ZN5boost9container15move_backward_nIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i: ; preds = %bb.j, %bb.i
  %i.ar = load i32, ptr %4, align 4, !tbaa !19
  store i32 %i.ar, ptr %2, align 4, !tbaa !19
  br label %_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyIS3_JiEEEEEvPimT_NS_11move_detail17integral_constantIbLb1EEE.exit

bb.k:                                             ; preds = %bb.f
  %i.as = load i64, ptr %i.f, align 8, !tbaa !18  ; 3 uses
  store ptr %i.v, ptr %1, align 8, !tbaa !15
  store i64 %i.x, ptr %i.c, align 8, !tbaa !11
  store i64 0, ptr %i.f, align 8, !tbaa !18
  %i.at = icmp ult ptr %i.v, %i.z
  br i1 %i.at, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPiNS0_3dtl20insert_emplace_proxyINS0_9allocatorIiLj2ELj0EEEJiEEES6_EEvT_mS8_S8_mT0_RT1_(ptr noundef nonnull %i.z, i64 noundef %i.as, ptr noundef nonnull %i.v, ptr noundef %2, i64 noundef %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvE42priv_insert_forward_range_expand_backwardsINS0_3dtl20insert_emplace_proxyIS3_JiEEEEEvPimS9_mT_.exit

bb.m:                                             ; preds = %bb.k
  call void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl20insert_emplace_proxyIS3_JiEEEEEvT0_mS8_S8_mT1_RT_(ptr noundef %i.z, i64 noundef %i.as, ptr noundef nonnull %i.v, ptr noundef %2, i64 noundef %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvE42priv_insert_forward_range_expand_backwardsINS0_3dtl20insert_emplace_proxyIS3_JiEEEEEvPimS9_mT_.exit

_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvE42priv_insert_forward_range_expand_backwardsINS0_3dtl20insert_emplace_proxyIS3_JiEEEEEvPimS9_mT_.exit: ; preds = %bb.l, %bb.m
  %i.au = add i64 %i.as, %3
  store i64 %i.au, ptr %i.f, align 8, !tbaa !18
  br label %_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyIS3_JiEEEEEvPimT_NS_11move_detail17integral_constantIbLb1EEE.exit

bb.n:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_9allocatorIiLj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE18allocation_commandEjmRmRPi.exit
  %i.av = load i64, ptr %i.f, align 8, !tbaa !18
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.av ; 2 uses
  %i.ax = icmp ne ptr %i.z, %2
  %i.ay = icmp ne ptr %i.z, null                  ; 2 uses
  %spec.select.i.i.i.i = and i1 %i.ay, %i.ax
  br i1 %spec.select.i.i.i.i, label %bb.o, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i.i, !prof !38

bb.o:                                             ; preds = %bb.n
  %i.az = ptrtoint ptr %2 to i64
  %i.ba = ptrtoint ptr %i.z to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull align 4 %i.z, i64 %i.bb, i1 false)
  %i.bc = getelementptr inbounds i8, ptr %i.v, i64 %i.bb
  br label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i.i

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i17 = phi ptr [ %i.bc, %bb.o ], [ %i.v, %bb.n ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i.i.i.i17) ]
  %i.bd = load i32, ptr %4, align 4, !tbaa !19
  store i32 %i.bd, ptr %.0.i.i.i.i17, align 4, !tbaa !19
  %i.be = icmp ne ptr %2, %i.aw
  %i.bf = icmp ne ptr %2, null
end_hunk_0
begin_hunk_1_@_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPiNS0_3dtl20insert_emplace_proxyINS0_9allocatorIiLj2ELj0EEEJiEEES6_EEvT_mS8_S8_mT0_RT1_:bb.a
  br label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit150

_ZN5boost9container24move_forward_overlappingIPiEET_S3_S3_S3_.exit: ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit163
  store i32 %i.av, ptr %0, align 4, !tbaa !19
  br label %.critedge

.critedge:                                        ; preds = %_ZN5boost9container24move_forward_overlappingIPiEET_S3_S3_S3_.exit, %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit
  %i.bc = sub nuw i64 %4, %i.h                    ; 3 uses
  %i.bd = sub i64 %1, %i.e                        ; 2 uses
  %.not144 = icmp ult i64 %i.bd, %i.bc
  br i1 %.not144, label %bb.y, label %bb.v

bb.v:                                             ; preds = %.critedge
  %.neg190 = mul i64 %i.bc, -4                    ; 3 uses
  %i.be = getelementptr inbounds i8, ptr %i.a, i64 %.neg190 ; 3 uses
  %i.bf = icmp ne i64 %.neg190, 0                 ; 2 uses
  %i.bg = icmp ne ptr %0, null
  %or.cond.i.i168 = and i1 %i.bg, %i.bf
  br i1 %or.cond.i.i168, label %bb.w, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit171, !prof !38

bb.w:                                             ; preds = %bb.v
  %gepdiff = sub nsw i64 0, %.neg190
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.a, ptr nonnull align 4 %i.be, i64 %gepdiff, i1 false)
  br label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit171

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit171: ; preds = %bb.v, %bb.w
  %.not.i.i173 = icmp ne ptr %i.be, %3
  %or.cond.not = and i1 %.not.i.i173, %i.bf
  br i1 %or.cond.not, label %bb.x, label %_ZN5boost9container25move_backward_overlappingIPiEET_S3_S3_S3_.exit, !prof !47

bb.x:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit171
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = sub i64 %i.bh, %i.b                     ; 2 uses
  %i.bj = ashr exact i64 %i.bi, 2
  %i.bk = sub nsw i64 0, %i.bj
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bk
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bl, ptr align 4 %3, i64 %i.bi, i1 false)
  br label %_ZN5boost9container25move_backward_overlappingIPiEET_S3_S3_S3_.exit

_ZN5boost9container25move_backward_overlappingIPiEET_S3_S3_S3_.exit: ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit171, %bb.x
  %i.bm = load i32, ptr %5, align 4, !tbaa !19
  store i32 %i.bm, ptr %3, align 4, !tbaa !19
  br label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit150

bb.y:                                             ; preds = %.critedge
  %i.bn = icmp ne ptr %3, %i.a
  %i.bo = icmp ne ptr %0, null
  %or.cond.i.i174 = and i1 %i.bo, %i.bn
  %i.bp = icmp ne ptr %3, null
  %spec.select.i.i175 = and i1 %i.bp, %or.cond.i.i174
  br i1 %spec.select.i.i175, label %bb.z, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit177, !prof !38

bb.z:                                             ; preds = %bb.y
  %i.bq = sub nuw i64 %i.bc, %i.bd
  %i.br = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bq
  %i.bs = ptrtoint ptr %i.a to i64
  %i.bt = sub i64 %i.bs, %i.b
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.br, ptr nonnull align 4 %3, i64 %i.bt, i1 false)
  br label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit177

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit177: ; preds = %bb.y, %bb.z
  %i.bu = load i32, ptr %5, align 4, !tbaa !19    ; 2 uses
  store i32 %i.bu, ptr %3, align 4, !tbaa !19
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  store i32 %i.bu, ptr %i.a, align 4, !tbaa !19
  br label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit150

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit150: ; preds = %bb.n, %bb.o, %bb.p, %bb.u, %bb.t, %bb.s, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit177, %_ZN5boost9container25move_backward_overlappingIPiEET_S3_S3_S3_.exit, %bb.f, %bb.e, %bb.d, %bb.h, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl20insert_emplace_proxyIS3_JiEEEEEvT0_mS8_S8_mT1_RT_(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sub i64 0, %4
  %i.b = getelementptr inbounds [4 x i8], ptr %0, i64 %1 ; 13 uses
  %i.c = add i64 %4, %1                           ; 2 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %2, i64 %i.c ; 4 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %3 to i64                   ; 5 uses
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = ashr exact i64 %i.g, 2                   ; 3 uses
  %i.i = sub nsw i64 0, %i.h
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = sub i64 %i.j, %i.e                       ; 3 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 6 uses
  %i.m = add i64 %i.h, %4                         ; 5 uses
  %.not = icmp ult i64 %i.l, %i.m
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = sub i64 0, %i.m
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.p = load i32, ptr %5, align 4, !tbaa !19
  store i32 %i.p, ptr %i.o, align 4, !tbaa !19
  %i.q = icmp ne ptr %3, %i.b
  %i.r = icmp ne ptr %3, null
  %spec.select.i.i = and i1 %i.r, %i.q
  br i1 %spec.select.i.i, label %bb.c, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit, !prof !38

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull align 4 %3, i64 %i.g, i1 false)
  br label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit: ; preds = %bb.b, %bb.c
  %.not98 = icmp ult i64 %i.l, %i.c
  br i1 %.not98, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit
  %i.t = icmp ne ptr %0, %3
  %i.u = icmp ne ptr %0, null
  %spec.select.i.i100 = and i1 %i.u, %i.t
  br i1 %spec.select.i.i100, label %bb.e, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit102, !prof !38

bb.e:                                             ; preds = %bb.d
  %i.v = ptrtoint ptr %0 to i64
  %i.w = sub i64 %i.f, %i.v
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2, ptr nonnull align 4 %0, i64 %i.w, i1 false)
  br label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit102

bb.f:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit
  %i.x = sub nuw i64 %i.l, %i.m                   ; 2 uses
  %i.y = sub i64 0, %i.x
  %i.z = getelementptr inbounds [4 x i8], ptr %3, i64 %i.y ; 4 uses
  %.not.i.i = icmp ne i64 %i.l, %i.m
  %i.aa = icmp ne ptr %0, null
  %or.cond = and i1 %i.aa, %.not.i.i
  br i1 %or.cond, label %bb.g, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit, !prof !47

bb.g:                                             ; preds = %bb.f
  %i.ab = shl i64 %i.x, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.b, ptr nonnull align 1 %i.z, i64 %i.ab, i1 false)
  br label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit: ; preds = %bb.g, %bb.f
  %.not.i = icmp eq ptr %i.z, %i.b
  %.not.i.i105 = icmp eq ptr %i.z, %0
  %or.cond130 = or i1 %.not.i, %.not.i.i105
  br i1 %or.cond130, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit102, label %bb.h, !prof !48

bb.h:                                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit
  %i.ac = ptrtoint ptr %0 to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ad, %i.ac                    ; 2 uses
  %i.af = ashr exact i64 %i.ae, 2
  %i.ag = sub nsw i64 0, %i.af
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ah, ptr align 4 %0, i64 %i.ae, i1 false)
  br label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit102

bb.i:                                             ; preds = %bb.a
  %i.ai = icmp ugt i64 %i.l, %i.h
  br i1 %i.ai, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.aj = icmp ne ptr %3, %i.b
  %i.ak = icmp ne ptr %2, null
  %or.cond.i.i106 = and i1 %i.ak, %i.aj
  %i.al = icmp ne ptr %3, null
  %spec.select.i.i107 = and i1 %i.al, %or.cond.i.i106
  br i1 %spec.select.i.i107, label %bb.k, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit109, !prof !38

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.am, ptr nonnull align 4 %3, i64 %i.g, i1 false)
  br label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit109

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit109: ; preds = %bb.j, %bb.k
  %.neg134 = sub i64 %i.l, %i.m
  %i.an = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.neg134 ; 3 uses
  %i.ao = load i32, ptr %5, align 4, !tbaa !19    ; 2 uses
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !19
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  store i32 %i.ao, ptr %i.b, align 4, !tbaa !19
  %.not.i110 = icmp eq ptr %3, %i.an
  %.not.i.i111 = icmp eq ptr %3, %0
  %or.cond131 = or i1 %.not.i.i111, %.not.i110
  br i1 %or.cond131, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit102, label %bb.l, !prof !48

bb.l:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit109
  %i.ap = ptrtoint ptr %0 to i64
  %i.aq = sub i64 %i.f, %i.ap                     ; 2 uses
  %i.ar = ashr exact i64 %i.aq, 2
  %i.as = sub nsw i64 0, %i.ar
  %i.at = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.as
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.at, ptr nonnull align 4 %0, i64 %i.aq, i1 false)
  br label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit102

bb.m:                                             ; preds = %bb.i
  %.idx = sub i64 0, %i.k
  %i.au = getelementptr inbounds i8, ptr %i.b, i64 %.idx ; 3 uses
  %.not.i.i113 = icmp ne ptr %i.d, %i.b           ; 2 uses
  %i.av = icmp ne ptr %0, null
  %or.cond132 = and i1 %i.av, %.not.i.i113
  br i1 %or.cond132, label %bb.n, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit116, !prof !47

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.b, ptr nonnull align 1 %i.au, i64 %i.k, i1 false)
  br label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit116

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit116: ; preds = %bb.n, %bb.m
  br i1 %.not.i.i113, label %bb.o, label %_ZN5boost9container25move_backward_overlappingIPiEET_S3_S3_S3_.exit119

bb.o:                                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit116
  %.not.i.i118 = icmp eq ptr %i.au, %3
  br i1 %.not.i.i118, label %_ZN5boost9container25move_backward_overlappingIPiEET_S3_S3_S3_.exit119, label %bb.p, !prof !20

bb.p:                                             ; preds = %bb.o
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.aw, %i.f                     ; 2 uses
  %i.ay = ashr exact i64 %i.ax, 2
  %i.az = sub nsw i64 0, %i.ay
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.az ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ba, ptr align 4 %3, i64 %i.ax, i1 false)
  br label %_ZN5boost9container25move_backward_overlappingIPiEET_S3_S3_S3_.exit119

_ZN5boost9container25move_backward_overlappingIPiEET_S3_S3_S3_.exit119: ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit116, %bb.o, %bb.p
  %i.bb = phi ptr [ %3, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit116 ], [ %i.b, %bb.o ], [ %i.ba, %bb.p ]
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.a ; 3 uses
  %i.bd = load i32, ptr %5, align 4, !tbaa !19
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !19
  %.not.i120 = icmp eq ptr %3, %i.bc
  %.not.i.i121 = icmp eq ptr %3, %0
  %or.cond133 = or i1 %.not.i.i121, %.not.i120
  br i1 %or.cond133, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit102, label %bb.q, !prof !48

bb.q:                                             ; preds = %_ZN5boost9container25move_backward_overlappingIPiEET_S3_S3_S3_.exit119
  %i.be = ptrtoint ptr %0 to i64
  %i.bf = sub i64 %i.f, %i.be                     ; 2 uses
  %i.bg = ashr exact i64 %i.bf, 2
  %i.bh = sub nsw i64 0, %i.bg
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bh
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bi, ptr align 4 %0, i64 %i.bf, i1 false)
  br label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit102

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit102: ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit109, %bb.l, %_ZN5boost9container25move_backward_overlappingIPiEET_S3_S3_S3_.exit119, %bb.q, %bb.d, %bb.e, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit, %bb.h
  ret void
}

declare void @_ZN5boost9container21dlmalloc_multideallocEP24boost_cont_memchain_impl(ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN5boost9container25dlmalloc_multialloc_nodesEmmmP24boost_cont_memchain_impl(i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noreturn }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { noreturn }
attributes #20 = { builtin nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !21}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"long", !6, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 int", !12, i64 0}
!14 = !{!"_ZTSN5boost9container19vector_alloc_holderINS0_9allocatorIiLj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEEE", !13, i64 0, !10, i64 8, !10, i64 16}
!15 = !{!14, !13, i64 0}
!16 = !{!14, !10, i64 16}
!17 = !{!"_ZTSN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvEE", !14, i64 0}
!18 = !{!17, !10, i64 8}
!19 = !{!7, !7, i64 0}
!20 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"p1 _ZTSN5boost9intrusive9list_nodeIPvEE", !12, i64 0}
!23 = !{!"_ZTSN5boost9intrusive9list_nodeIPvEE", !22, i64 0, !22, i64 8}
!24 = !{!23, !22, i64 0}
!25 = !{!23, !22, i64 8}
!26 = !{!"p1 _ZTSN5boost9intrusive10slist_nodeIPvEE", !12, i64 0}
!27 = !{!"_ZTSN5boost9intrusive10slist_nodeIPvEE", !26, i64 0}
!28 = !{!"p1 _ZTS20multialloc_node_impl", !12, i64 0}
!29 = !{!"_ZTS20multialloc_node_impl", !28, i64 0}
!30 = !{!"_ZTS24boost_cont_memchain_impl", !10, i64 0, !29, i64 8, !28, i64 16}
!31 = !{!30, !28, i64 8}
!32 = !{!30, !28, i64 16}
!33 = !{!30, !10, i64 0}
!34 = !{!27, !26, i64 0}
!35 = !{!"_ZTSN5boost9intrusive6detail11size_holderILb1EmvEE", !10, i64 0}
!36 = !{!35, !10, i64 0}
!37 = !{!14, !10, i64 8}
!38 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!39 = !{!"_ZTSN5boost9container12vec_iteratorIPiLb0EEE", !13, i64 0}
!40 = !{!39, !13, i64 0}
!41 = !{!"_ZTSSt9exception"}
!42 = !{!"p1 omnipotent char", !12, i64 0}
!43 = !{!"_ZTSN5boost9container9exceptionE", !41, i64 0, !42, i64 8}
!44 = !{!43, !42, i64 8}
!45 = !{!"vtable pointer", !5, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!"branch_weights", i32 2000, i32 2002}
!48 = !{!"branch_weights", i32 2002, i32 2000}
!49 = distinct !{!49, !21}
!50 = distinct !{!50, !21}
!51 = !{}
!52 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!53 = !{!13, !13, i64 0}
!54 = distinct !{!54, i1 true, !"_ZN5boost9container4listIiNS0_9allocatorIiLj2ELj0EEEE6insertIPiEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIiNS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb0EEENS8_ISM_Lb1EEET_SP_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISP_mEE5valuentoosr3dtl17is_input_iteratorISP_EE5valueL_ZNSQ_7is_sameINSQ_17integral_constantIjLj2EEENST_IjLj1EEEE5valueEEENSQ_13enable_if_natEE4typeE"}
!55 = distinct !{!55, !54, !"_ZN5boost9container4listIiNS0_9allocatorIiLj2ELj0EEEE6insertIPiEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIiNS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb0EEENS8_ISM_Lb1EEET_SP_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISP_mEE5valuentoosr3dtl17is_input_iteratorISP_EE5valueL_ZNSQ_7is_sameINSQ_17integral_constantIjLj2EEENST_IjLj1EEEE5valueEEENSQ_13enable_if_natEE4typeE: argument 0"}
!56 = distinct !{!56, i1 true, !"_ZN5boost9container3dtl31transform_multiallocation_chainINS1_27basic_multiallocation_chainIPvEENS0_9base_nodeIiNS1_9list_hookIS4_EELb0EEEE5beginEv"}
!57 = distinct !{!57, !56, !"_ZN5boost9container3dtl31transform_multiallocation_chainINS1_27basic_multiallocation_chainIPvEENS0_9base_nodeIiNS1_9list_hookIS4_EELb0EEEE5beginEv: argument 0"}
!58 = distinct !{!58, i1 true, !"_ZN5boost9container3dtl27basic_multiallocation_chainIPvE5beginEv"}
!59 = distinct !{!59, !58, !"_ZN5boost9container3dtl27basic_multiallocation_chainIPvE5beginEv: argument 0"}
!60 = distinct !{!60, i1 true, !"_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS0_15slist_base_hookIJNS0_12void_pointerIPvEENS0_9link_modeILNS0_14link_mode_typeE0EEEEEENS0_17slist_node_traitsIS5_EELS8_0ENS0_7dft_tagELj2EEEmLm7EvE5beginEv"}
!61 = distinct !{!61, !60, !"_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS0_15slist_base_hookIJNS0_12void_pointerIPvEENS0_9link_modeILNS0_14link_mode_typeE0EEEEEENS0_17slist_node_traitsIS5_EELS8_0ENS0_7dft_tagELj2EEEmLm7EvE5beginEv: argument 0"}
!62 = distinct !{!62, i1 true, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6insertENS0_13list_iteratorISE_Lb1EEERS9_"}
!63 = distinct !{!63, !62, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6insertENS0_13list_iteratorISE_Lb1EEERS9_: argument 0"}
!64 = distinct !{!64, !21}
!65 = distinct !{!65, i1 true, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE5beginEv"}
!66 = distinct !{!66, !65, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE5beginEv: argument 0"}
!67 = !{!55}
!68 = !{!"_ZTSN5boost9intrusive6detail21default_header_holderINS0_17slist_node_traitsIPvEEEE", !27, i64 0}
!69 = !{!"_ZTSN5boost9intrusive23header_holder_plus_lastINS0_6detail21default_header_holderINS0_17slist_node_traitsIPvEEEEPNS0_10slist_nodeIS5_EELb1EEE", !68, i64 0, !26, i64 8}
!70 = !{!69, !26, i64 8}
!71 = !{!61, !59, !57, !55}
!72 = !{!63, !55}
!73 = !{!66}
!74 = distinct !{!74, i1 true, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE5beginEv"}
!75 = distinct !{!75, !74, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE5beginEv: argument 0"}
!76 = !{!75}
end_hunk_1
