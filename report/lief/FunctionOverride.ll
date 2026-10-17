Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/FunctionOverride?download=true
inline.NumInlined: 3738
inline.NumDeleted: 1283
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN6spdlog7details10circular_qINS0_14log_msg_bufferEE9push_backEOS2_:bb.a

bb.e:                                             ; preds = %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE10deallocateEv.exit.i.i
  store ptr %i.m, ptr %i.j, align 8, !tbaa !92
  store i64 %i.q, ptr %i.t, align 8, !tbaa !93
  store ptr %i.r, ptr %i.i, align 8, !tbaa !92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  br label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i.i

_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.e, %bb.d
  %i.bn = load i64, ptr %i.t, align 8, !tbaa !93  ; 2 uses
  %i.bo = icmp ugt i64 %i.o, %i.bn
  br i1 %i.bo, label %bb.f, label %_ZN6spdlog7details14log_msg_bufferaSEOS1_.exit

bb.f:                                             ; preds = %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !91
  tail call void %i.bq(ptr noundef nonnull align 8 dereferenceable(283) %i.j, i64 noundef %i.o) #29, !inline_history !902
  %.pre.i.i.i.i.i = load i64, ptr %i.t, align 8, !tbaa !93
  br label %_ZN6spdlog7details14log_msg_bufferaSEOS1_.exit

_ZN6spdlog7details14log_msg_bufferaSEOS1_.exit:   ; preds = %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i.i, %bb.f
  %i.br = phi i64 [ %i.bn, %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i.i ], [ %.pre.i.i.i.i.i, %bb.f ]
  %i.bs = tail call noundef i64 @llvm.umin.i64(i64 %i.o, i64 %i.br)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !104
  %i.bu = load ptr, ptr %i.j, align 8, !tbaa !92  ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !207
  store ptr %i.bu, ptr %i.h, align 8, !tbaa !94
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !94
  %i.bz = load i64, ptr %i.d, align 8, !tbaa !910
  %i.ca = add i64 %i.bz, 1
  %i.cb = load i64, ptr %0, align 8, !tbaa !909   ; 2 uses
  %i.cc = urem i64 %i.ca, %i.cb
  %.fr = freeze i64 %i.cc                         ; 3 uses
  store i64 %.fr, ptr %i.d, align 8, !tbaa !910
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !912
  %i.cf = icmp eq i64 %.fr, %i.ce
  br i1 %i.cf, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN6spdlog7details14log_msg_bufferaSEOS1_.exit
  %i.cg = add i64 %.fr, 1                         ; 2 uses
  %i.ch = icmp eq i64 %i.cg, %i.cb
  %i.ci = select i1 %i.ch, i64 0, i64 %i.cg
  store i64 %i.ci, ptr %i.cd, align 8, !tbaa !912
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !913
  %i.cl = add i64 %i.ck, 1
  store i64 %i.cl, ptr %i.cj, align 8, !tbaa !913
  br label %bb.h

bb.h:                                             ; preds = %_ZN6spdlog7details14log_msg_bufferaSEOS1_.exit, %bb.g, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE16FunctionOverride16image_bdd_info_tESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #3 comdat {
bb.a:
  %.not9 = icmp eq ptr %0, %1
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt10_ConstructIN4LIEF2PE16FunctionOverride16image_bdd_info_tEJRKS3_EEvPT_DpOT0_.exit
  %.011 = phi ptr [ %i.ar, %_ZSt10_ConstructIN4LIEF2PE16FunctionOverride16image_bdd_info_tEJRKS3_EEvPT_DpOT0_.exit ], [ %2, %bb.a ] ; 8 uses
  %.sroa.04.010 = phi ptr [ %i.aq, %_ZSt10_ConstructIN4LIEF2PE16FunctionOverride16image_bdd_info_tEJRKS3_EEvPT_DpOT0_.exit ], [ %0, %bb.a ] ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.011, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.04.010, i64 12, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %.011, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.04.010, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.04.010, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !127  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !79   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIN4LIEF2PE16FunctionOverride30image_bdd_dynamic_relocation_tESaIS3_EEC2EmRKS4_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = icmp ugt i64 %i.h, 9223372036854775800
  br i1 %i.i, label %bb.c, label %_ZNSt15__new_allocatorIN4LIEF2PE16FunctionOverride30image_bdd_dynamic_relocation_tEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !59

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

_ZNSt15__new_allocatorIN4LIEF2PE16FunctionOverride30image_bdd_dynamic_relocation_tEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #27
  br label %_ZNSt12_Vector_baseIN4LIEF2PE16FunctionOverride30image_bdd_dynamic_relocation_tESaIS3_EEC2EmRKS4_.exit.i.i.i

_ZNSt12_Vector_baseIN4LIEF2PE16FunctionOverride30image_bdd_dynamic_relocation_tESaIS3_EEC2EmRKS4_.exit.i.i.i: ; preds = %_ZNSt15__new_allocatorIN4LIEF2PE16FunctionOverride30image_bdd_dynamic_relocation_tEE8allocateEmPKv.exit.i.i.i.i.i.i, %.lr.ph
  %i.k = phi ptr [ %i.j, %_ZNSt15__new_allocatorIN4LIEF2PE16FunctionOverride30image_bdd_dynamic_relocation_tEE8allocateEmPKv.exit.i.i.i.i.i.i ], [ null, %.lr.ph ] ; 5 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !79
  %i.l = getelementptr inbounds nuw i8, ptr %.011, i64 24 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !127
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %.011, i64 32
  store ptr %i.m, ptr %i.n, align 8, !tbaa !80
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !153  ; 2 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !153  ; 2 uses
  %.not7.i.i.i.i.i.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not7.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE16FunctionOverride30image_bdd_dynamic_relocation_tESaIS3_EEC2ERKS5_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt12_Vector_baseIN4LIEF2PE16FunctionOverride30image_bdd_dynamic_relocation_tESaIS3_EEC2EmRKS4_.exit.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.i ], [ %i.k, %_ZNSt12_Vector_baseIN4LIEF2PE16FunctionOverride30image_bdd_dynamic_relocation_tESaIS3_EEC2EmRKS4_.exit.i.i.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseIN4LIEF2PE16FunctionOverride30image_bdd_dynamic_relocation_tESaIS3_EEC2EmRKS4_.exit.i.i.i ] ; 2 uses
  %i.q = load i64, ptr %.sroa.04.08.i.i.i.i.i.i.i, align 4
  store i64 %i.q, ptr %.09.i.i.i.i.i.i.i, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.r, %i.p
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE16FunctionOverride30image_bdd_dynamic_relocation_tESaIS3_EEC2ERKS5_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !40

_ZNSt6vectorIN4LIEF2PE16FunctionOverride30image_bdd_dynamic_relocation_tESaIS3_EEC2ERKS5_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseIN4LIEF2PE16FunctionOverride30image_bdd_dynamic_relocation_tESaIS3_EEC2EmRKS4_.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.k, %_ZNSt12_Vector_baseIN4LIEF2PE16FunctionOverride30image_bdd_dynamic_relocation_tESaIS3_EEC2EmRKS4_.exit.i.i.i ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.l, align 8, !tbaa !127
  %i.t = getelementptr inbounds nuw i8, ptr %.011, i64 40 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.04.010, i64 40 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.04.010, i64 48 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !288  ; 2 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !75   ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %.not.i.i.i.i4.i.i = icmp eq ptr %i.w, %i.x
  br i1 %.not.i.i.i.i4.i.i, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN4LIEF2PE16FunctionOverride30image_bdd_dynamic_relocation_tESaIS3_EEC2ERKS5_.exit.i.i
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !59

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #27
  br label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i.i.i

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i.i.i:  ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i, %_ZNSt6vectorIN4LIEF2PE16FunctionOverride30image_bdd_dynamic_relocation_tESaIS3_EEC2ERKS5_.exit.i.i
  %i.ad = phi ptr [ %i.ac, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i ], [ null, %_ZNSt6vectorIN4LIEF2PE16FunctionOverride30image_bdd_dynamic_relocation_tESaIS3_EEC2ERKS5_.exit.i.i ] ; 6 uses
  store ptr %i.ad, ptr %i.t, align 8, !tbaa !75
  %i.ae = getelementptr inbounds nuw i8, ptr %.011, i64 48 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !288
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.aa
  %i.ag = getelementptr inbounds nuw i8, ptr %.011, i64 56
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !76
  %i.ah = load ptr, ptr %i.u, align 8, !tbaa !94  ; 3 uses
  %i.ai = load ptr, ptr %i.v, align 8, !tbaa !94
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 4 uses
  %i.am = icmp sgt i64 %i.al, 1
  br i1 %i.am, label %bb.f, label %bb.g, !prof !299

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ad, ptr align 1 %i.ah, i64 %i.al, i1 false)
  br label %_ZSt10_ConstructIN4LIEF2PE16FunctionOverride16image_bdd_info_tEJRKS3_EEvPT_DpOT0_.exit

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i.i.i
  %i.an = icmp eq i64 %i.al, 1
  br i1 %i.an, label %bb.h, label %_ZSt10_ConstructIN4LIEF2PE16FunctionOverride16image_bdd_info_tEJRKS3_EEvPT_DpOT0_.exit

bb.h:                                             ; preds = %bb.g
  %i.ao = load i8, ptr %i.ah, align 1, !tbaa !89
  store i8 %i.ao, ptr %i.ad, align 1, !tbaa !89
  br label %_ZSt10_ConstructIN4LIEF2PE16FunctionOverride16image_bdd_info_tEJRKS3_EEvPT_DpOT0_.exit

_ZSt10_ConstructIN4LIEF2PE16FunctionOverride16image_bdd_info_tEJRKS3_EEvPT_DpOT0_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.ap = getelementptr inbounds i8, ptr %i.ad, i64 %i.al
  store ptr %i.ap, ptr %i.ae, align 8, !tbaa !288
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.04.010, i64 64 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.011, i64 64 ; 2 uses
  %.not = icmp eq ptr %i.aq, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !914

._crit_edge:                                      ; preds = %_ZSt10_ConstructIN4LIEF2PE16FunctionOverride16image_bdd_info_tEJRKS3_EEvPT_DpOT0_.exit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.ar, %_ZSt10_ConstructIN4LIEF2PE16FunctionOverride16image_bdd_info_tEJRKS3_EEvPT_DpOT0_.exit ]
  ret ptr %.0.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind
declare void @_ZN4LIEF2PE20FunctionOverrideInfoD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #13

declare void @_ZN4LIEF2PE20FunctionOverrideInfoC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4LIEF2PE16FunctionOverride30image_bdd_dynamic_relocation_tESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !127
  %i.c = load ptr, ptr %1, align 8, !tbaa !79     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !80
  %i.i = load ptr, ptr %0, align 8, !tbaa !79     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %.lr.ph.i.i.i.i.preheader.i, !prof !59

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27 ; 3 uses
  %i.o = add i64 %i.d, -8
  %i.p = sub i64 %i.o, %i.e
  %i.q = and i64 %i.p, -8
  %i.r = add i64 %i.q, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr align 4 %i.c, i64 %i.r, i1 false)
  %3 = load ptr, ptr %0, align 8, !tbaa !79       ; 3 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4LIEF2PE16FunctionOverride30image_bdd_dynamic_relocation_tESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.preheader.i
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !80
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %3 to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %i.v) #28
  br label %_ZNSt12_Vector_baseIN4LIEF2PE16FunctionOverride30image_bdd_dynamic_relocation_tESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN4LIEF2PE16FunctionOverride30image_bdd_dynamic_relocation_tESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %.lr.ph.i.i.i.i.preheader.i, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !79
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.w, ptr %i.g, align 8, !tbaa !80
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE16FunctionOverride30image_bdd_dynamic_relocation_tESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.f:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !127
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.k                      ; 4 uses
  %.not24 = icmp ult i64 %i.aa, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp sgt i64 %i.f, 8
  br i1 %i.ab, label %bb.h, label %bb.i, !prof !299

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE16FunctionOverride30image_bdd_dynamic_relocation_tESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = icmp eq i64 %i.f, 8
  br i1 %i.ac, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE16FunctionOverride30image_bdd_dynamic_relocation_tESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = load i64, ptr %i.c, align 4
  store i64 %i.ad, ptr %i.i, align 4
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE16FunctionOverride30image_bdd_dynamic_relocation_tESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.k:                                             ; preds = %bb.f
  %i.ae = icmp sgt i64 %i.aa, 8
  br i1 %i.ae, label %bb.l, label %bb.m, !prof !299

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.aa, i1 false)
  br label %_ZSt4copyIPN4LIEF2PE16FunctionOverride30image_bdd_dynamic_relocation_tES4_ET0_T_S6_S5_.exit

bb.m:                                             ; preds = %bb.k
  %i.af = icmp eq i64 %i.aa, 8
  br i1 %i.af, label %bb.n, label %_ZSt4copyIPN4LIEF2PE16FunctionOverride30image_bdd_dynamic_relocation_tES4_ET0_T_S6_S5_.exit

bb.n:                                             ; preds = %bb.m
  %i.ag = load i64, ptr %i.c, align 4
  store i64 %i.ag, ptr %i.i, align 4
  br label %_ZSt4copyIPN4LIEF2PE16FunctionOverride30image_bdd_dynamic_relocation_tES4_ET0_T_S6_S5_.exit

_ZSt4copyIPN4LIEF2PE16FunctionOverride30image_bdd_dynamic_relocation_tES4_ET0_T_S6_S5_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.ah = load ptr, ptr %1, align 8, !tbaa !79
  %i.ai = load ptr, ptr %i.x, align 8, !tbaa !127 ; 2 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !79
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.am ; 2 uses
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !127 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.an, %i.ao
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE16FunctionOverride30image_bdd_dynamic_relocation_tESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN4LIEF2PE16FunctionOverride30image_bdd_dynamic_relocation_tES4_ET0_T_S6_S5_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i ], [ %i.ai, %_ZSt4copyIPN4LIEF2PE16FunctionOverride30image_bdd_dynamic_relocation_tES4_ET0_T_S6_S5_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %i.an, %_ZSt4copyIPN4LIEF2PE16FunctionOverride30image_bdd_dynamic_relocation_tES4_ET0_T_S6_S5_.exit ] ; 2 uses
  %i.ap = load i64, ptr %.0810.i.i.i.i, align 4
  store i64 %i.ap, ptr %.011.i.i.i.i, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.aq, %i.ao
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE16FunctionOverride30image_bdd_dynamic_relocation_tESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !915

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE16FunctionOverride30image_bdd_dynamic_relocation_tESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPN4LIEF2PE16FunctionOverride30image_bdd_dynamic_relocation_tES4_ET0_T_S6_S5_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN4LIEF2PE16FunctionOverride30image_bdd_dynamic_relocation_tESaIS3_EE13_M_deallocateEPS3_m.exit
  %i.as = load ptr, ptr %0, align 8, !tbaa !79
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.f
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.at, ptr %i.au, align 8, !tbaa !127
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE16FunctionOverride30image_bdd_dynamic_relocation_tESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIhSaIhEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !288
  %i.c = load ptr, ptr %1, align 8, !tbaa !75     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !76
  %i.i = load ptr, ptr %0, align 8, !tbaa !75     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.n = icmp slt i64 %i.f, 0
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i, !prof !59

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 1
  br i1 %i.p, label %bb.e, label %bb.f, !prof !299

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKhS1_EEEEPhmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  %i.q = load i8, ptr %i.c, align 1, !tbaa !89
  store i8 %i.q, ptr %i.o, align 1, !tbaa !89
  br label %_ZNSt6vectorIhSaIhEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKhS1_EEEEPhmT_S9_.exit

_ZNSt6vectorIhSaIhEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKhS1_EEEEPhmT_S9_.exit: ; preds = %bb.e, %bb.f
  %i.r = load ptr, ptr %0, align 8, !tbaa !75     ; 3 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKhS1_EEEEPhmT_S9_.exit
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !76
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.v) #28
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %_ZNSt6vectorIhSaIhEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKhS1_EEEEPhmT_S9_.exit, %bb.g
  store ptr %i.o, ptr %0, align 8, !tbaa !75
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.w, ptr %i.g, align 8, !tbaa !76
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.h:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !288
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.k                      ; 4 uses
  %.not24 = icmp ult i64 %i.aa, %i.f
  br i1 %.not24, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = icmp sgt i64 %i.f, 1
  br i1 %i.ab, label %bb.j, label %bb.k, !prof !299

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.k:                                             ; preds = %bb.i
  %i.ac = icmp eq i64 %i.f, 1
  br i1 %i.ac, label %bb.l, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.k
  %i.ad = load i8, ptr %i.c, align 1, !tbaa !89
  store i8 %i.ad, ptr %i.i, align 1, !tbaa !89
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.h
  %i.ae = icmp sgt i64 %i.aa, 1
  br i1 %i.ae, label %bb.n, label %bb.o, !prof !299

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.aa, i1 false)
  br label %_ZSt4copyIPhS0_ET0_T_S2_S1_.exit

bb.o:                                             ; preds = %bb.m
  %i.af = icmp eq i64 %i.aa, 1
  br i1 %i.af, label %bb.p, label %_ZSt4copyIPhS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.o
  %i.ag = load i8, ptr %i.c, align 1, !tbaa !89
  store i8 %i.ag, ptr %i.i, align 1, !tbaa !89
  br label %_ZSt4copyIPhS0_ET0_T_S2_S1_.exit

_ZSt4copyIPhS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.n, %bb.o, %bb.p
  %i.ah = load ptr, ptr %1, align 8, !tbaa !75
  %i.ai = load ptr, ptr %i.x, align 8, !tbaa !288 ; 3 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !75
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.am ; 3 uses
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !288
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 3 uses
  %i.as = icmp sgt i64 %i.ar, 1
  br i1 %i.as, label %bb.q, label %bb.r, !prof !299

end_hunk_0
