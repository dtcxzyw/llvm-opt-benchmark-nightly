Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/partition?download=true
inline.NumInlined: 2655
inline.NumDeleted: 1066
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi:bb.a
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %bb.x, %bb.y
  store ptr %i.cz, ptr %0, align 8, !tbaa !379
  store ptr %i.eb, ptr %i.c, align 8, !tbaa !380
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.cu
  store ptr %i.ef, ptr %i.a, align 8, !tbaa !917
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit

_ZSt4fillIPiiEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block132, %vec.epilog.middle.block147, %middle.block161, %vec.epilog.middle.block176, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorI20dd_comm_setup_work_tSaIS0_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !419  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !413    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 80                  ; 3 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g
  tail call void @_ZNSt6vectorI20dd_comm_setup_work_tSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i)
  br label %_ZNSt6vectorI20dd_comm_setup_work_tSaIS0_EE15_M_erase_at_endEPS0_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %1, %i.g
  br i1 %i.j, label %bb.d, label %_ZNSt6vectorI20dd_comm_setup_work_tSaIS0_EE15_M_erase_at_endEPS0_.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [80 x i8], ptr %i.c, i64 %1 ; 3 uses
  %.not.i = icmp eq ptr %i.b, %i.k
  br i1 %.not.i, label %_ZNSt6vectorI20dd_comm_setup_work_tSaIS0_EE15_M_erase_at_endEPS0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %_ZSt8_DestroyI20dd_comm_setup_work_tEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.af, %_ZSt8_DestroyI20dd_comm_setup_work_tEvPT_.exit.i.i.i ], [ %i.k, %bb.d ] ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !414  ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !451
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #30
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !371  ; 3 uses
  %.not.i.i.i1.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i1.i.i.i.i.i, label %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEED2Ev.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !420
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #30
  br label %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEED2Ev.exit.i.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit.i.i.i.i.i
  %i.z = load ptr, ptr %.05.i.i.i, align 8, !tbaa !371 ; 3 uses
  %.not.i.i.i2.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i2.i.i.i.i.i, label %_ZSt8_DestroyI20dd_comm_setup_work_tEvPT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEED2Ev.exit.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !420
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #30
  br label %_ZSt8_DestroyI20dd_comm_setup_work_tEvPT_.exit.i.i.i

_ZSt8_DestroyI20dd_comm_setup_work_tEvPT_.exit.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEED2Ev.exit.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 80 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.af, %i.b
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIP20dd_comm_setup_work_tS0_EvT_S2_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !918

_ZSt8_DestroyIP20dd_comm_setup_work_tS0_EvT_S2_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyI20dd_comm_setup_work_tEvPT_.exit.i.i.i
  store ptr %i.k, ptr %i.a, align 8, !tbaa !419
  br label %_ZNSt6vectorI20dd_comm_setup_work_tSaIS0_EE15_M_erase_at_endEPS0_.exit

_ZNSt6vectorI20dd_comm_setup_work_tSaIS0_EE15_M_erase_at_endEPS0_.exit: ; preds = %_ZSt8_DestroyIP20dd_comm_setup_work_tS0_EvT_S2_RSaIT0_E.exit.i, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZL22setup_dd_communicationP12gmx_domdec_tPA3_fP11gmx_ddbox_tP10t_forcerecP7t_state.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %15, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %16, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %17, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %18, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %19, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %20, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %21, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %22, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %23, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(84) %24, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %25, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %26, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %27, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %28, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %29, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %30, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %31, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %32) #18 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 11 uses
  %i.b = alloca [3 x float], align 8              ; 12 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca [3 x float], align 8              ; 11 uses
  %i.e = alloca [3 x float], align 8              ; 12 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 7 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = load i32, ptr %2, align 4, !tbaa !210    ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.dm

bb.b:                                             ; preds = %bb.a
  %i.l = add nsw i32 %i.j, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  store i32 0, ptr %i.f, align 4, !tbaa !210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  store i32 %i.l, ptr %i.g, align 4, !tbaa !210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #19
  store i32 1, ptr %i.h, align 4, !tbaa !210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #19
  store i32 0, ptr %i.i, align 4, !tbaa !210
  %i.m = load i32, ptr %0, align 4, !tbaa !210    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.m, i32 34, ptr nonnull %i.i, ptr nonnull %i.f, ptr nonnull %i.g, ptr nonnull %i.h, i32 1, i32 1)
  %i.n = load i32, ptr %i.g, align 4, !tbaa !210
  %i.o = call i32 @llvm.smin.i32(i32 %i.n, i32 %i.l) ; 2 uses
  store i32 %i.o, ptr %i.g, align 4, !tbaa !210
  %i.p = load i32, ptr %i.f, align 4, !tbaa !210  ; 2 uses
  %.not170 = icmp sgt i32 %i.p, %i.o
  br i1 %.not170, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %24, i64 68 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %24, i64 48 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %24, i64 52 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %24, i64 80 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.y = sext i32 %i.p to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.dj
  %indvars.iv = phi i64 [ %i.y, %.lr.ph ], [ %indvars.iv.next, %bb.dj ] ; 6 uses
  %i.z = load ptr, ptr %3, align 8, !tbaa !15
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1136
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !413
  %i.ac = getelementptr inbounds nuw [80 x i8], ptr %i.ab, i64 %indvars.iv ; 28 uses
  %i.ad = icmp sgt i64 %indvars.iv, 0
  br i1 %i.ad, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !371 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !372
  %.not.i.i.i = icmp eq ptr %i.ag, %i.ae
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE5clearEv.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !372
  br label %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE5clearEv.exit.i

_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE5clearEv.exit.i: ; preds = %bb.e, %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !371 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !372
  %.not.i.i5.i = icmp eq ptr %i.ak, %i.ai
  br i1 %.not.i.i5.i, label %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE5clearEv.exit6.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE5clearEv.exit.i
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !372
  br label %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE5clearEv.exit6.i

_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE5clearEv.exit6.i: ; preds = %bb.f, %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE5clearEv.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !414 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 56 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !415
  %.not.i.i7.i = icmp eq ptr %i.ao, %i.am
  br i1 %.not.i.i7.i, label %_ZL18clearCommSetupDataP20dd_comm_setup_work_t.exit, label %_ZSt8_DestroyIPN3gmx11BasicVectorIfEES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN3gmx11BasicVectorIfEES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE5clearEv.exit6.i
  store ptr %i.am, ptr %i.an, align 8, !tbaa !415
  br label %_ZL18clearCommSetupDataP20dd_comm_setup_work_t.exit

_ZL18clearCommSetupDataP20dd_comm_setup_work_t.exit: ; preds = %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE5clearEv.exit6.i, %_ZSt8_DestroyIPN3gmx11BasicVectorIfEES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  store i32 0, ptr %i.ap, align 8, !tbaa !417
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 76
  store i32 0, ptr %i.aq, align 4, !tbaa !418
  br label %bb.g

bb.g:                                             ; preds = %_ZL18clearCommSetupDataP20dd_comm_setup_work_t.exit, %bb.c
  %i.ar = load i32, ptr %4, align 4, !tbaa !210   ; 3 uses
  %i.as = load i32, ptr %5, align 4, !tbaa !210
  %i.at = sub nsw i32 %i.as, %i.ar                ; 2 uses
  %i.au = trunc nsw i64 %indvars.iv to i32
  %i.av = mul nsw i32 %i.at, %i.au
  %33 = load i32, ptr %2, align 4, !tbaa !210     ; 2 uses
  %34 = sdiv i32 %i.av, %33                       ; 3 uses
  %35 = add nsw i32 %34, %i.ar                    ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %36 = trunc nsw i64 %indvars.iv.next to i32
  %37 = mul nsw i32 %i.at, %36
  %38 = sdiv i32 %37, %33                         ; 3 uses
  %i.aw = add nsw i32 %38, %i.ar                  ; 2 uses
  %i.ax = icmp eq i64 %indvars.iv, 0
  %i.ay = load ptr, ptr %6, align 8, !tbaa !400   ; 11 uses
  %i.az = load i32, ptr %7, align 4, !tbaa !210   ; 6 uses
  %i.ba = load i32, ptr %8, align 4, !tbaa !210   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 896
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !371 ; 4 uses
  %i.bd = load i32, ptr %9, align 4, !tbaa !210   ; 6 uses
  %i.be = load i32, ptr %10, align 4, !tbaa !210  ; 10 uses
  %i.bf = load i32, ptr %11, align 4, !tbaa !210  ; 4 uses
  %i.bg = load i32, ptr %12, align 4, !tbaa !210  ; 4 uses
  %i.bh = load i32, ptr %13, align 4, !tbaa !210  ; 2 uses
  %i.bi = load float, ptr %14, align 4, !tbaa !211 ; 2 uses
  %i.bj = load float, ptr %15, align 4, !tbaa !211 ; 4 uses
  %i.bk = load ptr, ptr %16, align 8, !tbaa !401  ; 6 uses
  %i.bl = load i8, ptr %17, align 1, !tbaa !366, !range !335, !noundef !336
  %i.bm = load ptr, ptr %18, align 8, !tbaa !401  ; 4 uses
  %i.bn = load float, ptr %19, align 4, !tbaa !211 ; 4 uses
  %i.bo = load float, ptr %20, align 4, !tbaa !211 ; 8 uses
  %i.bp = load ptr, ptr %21, align 8, !tbaa !401  ; 2 uses
  %i.bq = load ptr, ptr %22, align 8, !tbaa !401  ; 2 uses
  %i.br = load ptr, ptr %23, align 8, !tbaa !401  ; 2 uses
  %i.bs = load i8, ptr %26, align 1, !tbaa !366, !range !335, !noundef !336 ; 3 uses
  %i.bt = load i8, ptr %27, align 1, !tbaa !366, !range !335, !noundef !336
  %i.bu = load i8, ptr %28, align 1, !tbaa !366, !range !335, !noundef !336
  %i.bv = load i8, ptr %29, align 1, !tbaa !366, !range !335, !noundef !336 ; 3 uses
  %i.bw = load ptr, ptr %30, align 8, !tbaa !405
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 416
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !370 ; 10 uses
  %i.bz = trunc nuw i8 %i.bv to i1                ; 2 uses
  %i.ca = trunc nuw i8 %i.bu to i1                ; 2 uses
  %i.cb = trunc nuw i8 %i.bt to i1                ; 2 uses
  %i.cc = trunc nuw i8 %i.bs to i1                ; 2 uses
  %i.cd = trunc nuw i8 %i.bl to i1                ; 2 uses
  %i.ce = load ptr, ptr %31, align 8, !tbaa !403
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 200
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !379 ; 2 uses
  br i1 %i.ax, label %bb.h, label %bb.bh

bb.h:                                             ; preds = %bb.g
  %i.ch = load ptr, ptr %32, align 8, !tbaa !409  ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ay, i64 928
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !15
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ay, i64 161
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !951, !range !335, !noundef !336
  %i.cn = trunc nuw i8 %i.cm to i1
  %i.co = icmp eq i32 %i.bd, 0
  %i.cp = and i1 %i.co, %i.cn
  %i.cq = and i8 %i.bv, %i.bs
  %.not156 = icmp eq i8 %i.cq, 0                  ; 9 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ac, i64 48 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ac, i64 72 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !417 ; 2 uses
  store i32 %35, ptr %i.c, align 4, !tbaa !210
  %i.cv = icmp slt i32 %34, %38
  br i1 %i.cv, label %.lr.ph43.i, label %_ZL21get_zone_pulse_groupsISt6vectorIiN3gmx9AllocatorIiNS1_20HostAllocationPolicyEEEEEvP12gmx_domdec_tiiiiNS1_8ArrayRefIKiEEiiiiiffPA3_fbSC_ffSC_SC_SC_PK12dd_corners_tPKfbbbbNS8_IKNS1_11BasicVectorIfEEEESA_PT_P20dd_comm_setup_work_t.exit

.lr.ph43.i:                                       ; preds = %bb.h
  %i.cw = sext i32 %i.bd to i64                   ; 11 uses
  %i.cx = sext i32 %i.be to i64                   ; 2 uses
  %i.cy = getelementptr inbounds [16 x i8], ptr %24, i64 %i.cx
  %i.cz = sext i32 %i.ba to i64                   ; 2 uses
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.cz ; 2 uses
  %i.db = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.cx ; 2 uses
  %i.dc = icmp sgt i32 %i.be, 0
  %i.dd = add i32 %i.az, -1
  %or.cond.i = icmp ult i32 %i.dd, 2
  %or.cond268.i = and i1 %or.cond.i, %i.dc        ; 2 uses
  %i.de = sext i32 %i.bf to i64                   ; 11 uses
  %i.df = icmp eq i32 %i.be, 2
  %i.dg = and i32 %i.az, -2
  %or.cond3.i = icmp eq i32 %i.dg, 2
  %or.cond270.i = and i1 %or.cond3.i, %i.df       ; 2 uses
  %i.dh = sext i32 %i.bg to i64                   ; 11 uses
  %i.di = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.cz ; 2 uses
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.de ; 6 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.bq, i64 %i.de ; 9 uses
  %i.dk = icmp slt i32 %i.bf, 2
  %i.dl = getelementptr inbounds [4 x i8], ptr %25, i64 %i.de
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.de ; 6 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ay, i64 180 ; 3 uses
  %i.do = getelementptr inbounds [12 x i8], ptr %i.bm, i64 %i.de ; 3 uses
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.dh ; 2 uses
  %invariant.gep23.i = getelementptr [4 x i8], ptr %i.br, i64 %i.dh ; 9 uses
  %i.dq = icmp slt i32 %i.bg, 2
  %i.dr = getelementptr inbounds [4 x i8], ptr %25, i64 %i.dh ; 2 uses
  %i.ds = getelementptr inbounds [12 x i8], ptr %i.bm, i64 %i.dh
  %i.dt = sext i32 %i.bh to i64                   ; 3 uses
  %i.du = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %i.dt ; 2 uses
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.dt ; 2 uses
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.dh ; 2 uses
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.dt ; 2 uses
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.cw ; 2 uses
  %invariant.gep31.i = getelementptr [4 x i8], ptr %i.bp, i64 %i.cw ; 9 uses
  %i.dz = icmp slt i32 %i.bd, 2
  %i.ea = icmp eq i32 %i.be, 1
  %i.eb = icmp eq i32 %i.az, 1
  %or.cond9.i = and i1 %i.eb, %i.ea               ; 2 uses
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.cw ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ck, i64 384
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ay, i64 920
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ch, i64 64 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ch, i64 72
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ac, i64 40 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ay, i64 36
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.cw
  %i.el = getelementptr inbounds [12 x i8], ptr %i.bk, i64 %i.cw ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %i.en = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ac, i64 56 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ac, i64 64 ; 3 uses
  %i.er = add i32 %i.be, 1                        ; 2 uses
  %wide.trip.count.i = zext i32 %i.er to i64
  %i.es = sub nsw i64 2, %i.de
  %i.et = add nsw i64 %wide.trip.count.i, -1      ; 3 uses
  %i.eu = sub nsw i64 2, %i.dh
  %i.ev = sub nsw i64 2, %i.cw
  %xtraiter357 = and i64 %i.es, 7                 ; 2 uses
  %lcmp.mod358.not = icmp eq i64 %xtraiter357, 0
  %i.ew = add nsw i64 %i.de, 5
  %i.ex = icmp ult i64 %i.ew, 7
  %xtraiter360 = and i64 %i.et, 1
  %i.ey = icmp eq i32 %i.er, 2
  %unroll_iter363 = and i64 %i.et, -2
  %lcmp.mod361.not = icmp eq i64 %xtraiter360, 0
  %lcmp.mod362 = trunc i64 %i.et to i1
  %xtraiter365 = and i64 %i.eu, 7                 ; 2 uses
  %lcmp.mod366.not = icmp eq i64 %xtraiter365, 0
  %i.ez = add nsw i64 %i.dh, 5
  %i.fa = icmp ult i64 %i.ez, 7
  %xtraiter368 = and i64 %i.ev, 7                 ; 2 uses
  %lcmp.mod369.not = icmp eq i64 %xtraiter368, 0
  %i.fb = add nsw i64 %i.cw, 5
  %i.fc = icmp ult i64 %i.fb, 7
  br label %bb.i

bb.i:                                             ; preds = %bb.bg, %.lr.ph43.i
  %.041.i = phi i32 [ %i.cu, %.lr.ph43.i ], [ %.1.i, %bb.bg ] ; 5 uses
  %.023640.i = phi i32 [ 0, %.lr.ph43.i ], [ %.1237.i, %bb.bg ] ; 5 uses
  %storemerge39.i = phi i32 [ %35, %.lr.ph43.i ], [ %i.uo, %bb.bg ] ; 8 uses
  br i1 %i.cd, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fd = sext i32 %storemerge39.i to i64
  %i.fe = getelementptr inbounds [12 x i8], ptr %i.by, i64 %i.fd ; 3 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.cw
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !211 ; 2 uses
  %i.fh = load float, ptr %i.da, align 4, !tbaa !211
  %i.fi = fsub float %i.fg, %i.fh                 ; 3 uses
  %i.fj = fcmp ogt float %i.fi, 0.000000e+00
  %i.fk = call float @llvm.fmuladd.f32(float %i.fi, float %i.fi, float 0.000000e+00)
  %spec.select.i = select i1 %i.fj, float %i.fk, float 0.000000e+00 ; 2 uses
  br i1 %.not156, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fl = load float, ptr %i.db, align 4, !tbaa !211
  %i.fm = fsub float %i.fg, %i.fl                 ; 3 uses
  %i.fn = fcmp ogt float %i.fm, 0.000000e+00
  %i.fo = call float @llvm.fmuladd.f32(float %i.fm, float %i.fm, float 0.000000e+00)
  %spec.select267.i = select i1 %i.fn, float %i.fo, float 0.000000e+00
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0240.i = phi float [ 0.000000e+00, %bb.j ], [ %spec.select267.i, %bb.k ] ; 3 uses
  br i1 %or.cond268.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.de
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !211
  %i.fr = load float, ptr %i.r, align 4, !tbaa !407
  %i.fs = fsub float %i.fq, %i.fr                 ; 4 uses
  %i.ft = call float @llvm.fmuladd.f32(float %i.fs, float %i.fs, float %spec.select.i)
  %i.fu = call float @llvm.fmuladd.f32(float %i.fs, float %i.fs, float %.0240.i)
  %spec.select269.i = select i1 %.not156, float %.0240.i, float %i.fu
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1243.i = phi float [ %spec.select.i, %bb.l ], [ %i.ft, %bb.m ] ; 3 uses
  %.1241.i = phi float [ %.0240.i, %bb.l ], [ %spec.select269.i, %bb.m ] ; 4 uses
  br i1 %or.cond270.i, label %bb.o, label %bb.an

bb.o:                                             ; preds = %bb.n
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.dh
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !211 ; 2 uses
  %i.fx = load float, ptr %i.di, align 4, !tbaa !211
  %i.fy = fsub float %i.fw, %i.fx                 ; 3 uses
  %i.fz = fcmp ogt float %i.fy, 0.000000e+00
  %i.ga = call float @llvm.fmuladd.f32(float %i.fy, float %i.fy, float %.1243.i)
  %spec.select271.i = select i1 %i.fz, float %i.ga, float %.1243.i ; 2 uses
  br i1 %.not156, label %bb.an, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gb = load float, ptr %i.t, align 4, !tbaa !408
  %i.gc = fsub float %i.fw, %i.gb                 ; 3 uses
  %i.gd = fcmp ogt float %i.gc, 0.000000e+00
  %i.ge = call float @llvm.fmuladd.f32(float %i.gc, float %i.gc, float %.1241.i)
  %spec.select272.i = select i1 %i.gd, float %i.ge, float %.1241.i
  br label %bb.an

bb.q:                                             ; preds = %bb.i
  store <2 x float> zeroinitializer, ptr %i.d, align 8, !tbaa !211
  store float 0.000000e+00, ptr %i.w, align 8, !tbaa !211
  store <2 x float> zeroinitializer, ptr %i.e, align 8, !tbaa !211
  store float 0.000000e+00, ptr %i.x, align 8, !tbaa !211
  %i.gf = sext i32 %storemerge39.i to i64         ; 3 uses
  br i1 %or.cond268.i, label %bb.r, label %.loopexit.i

bb.r:                                             ; preds = %bb.q
  %i.gg = getelementptr inbounds [12 x i8], ptr %i.by, i64 %i.gf ; 10 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.de
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !211
  %i.gj = load float, ptr %i.r, align 4, !tbaa !407
  %i.gk = fsub float %i.gi, %i.gj                 ; 3 uses
  br i1 %i.dk, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.r
  br i1 %lcmp.mod358.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %i.de, %.lr.ph.i.preheader ]
  %storemerge26616.i.prol = phi float [ %i.gp, %.lr.ph.i.prol ], [ %i.gk, %.lr.ph.i.preheader ]
  %prol.iter359 = phi i64 [ %prol.iter359.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 4 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv.next.i.prol
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !211
  %gep.i.prol = getelementptr [12 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.prol
  %i.gn = load float, ptr %gep.i.prol, align 4, !tbaa !211
  %i.go = fneg float %i.gm
  %i.gp = call float @llvm.fmuladd.f32(float %i.go, float %i.gn, float %storemerge26616.i.prol) ; 3 uses
  %prol.iter359.next = add i64 %prol.iter359, 1   ; 2 uses
  %prol.iter359.cmp.not = icmp eq i64 %prol.iter359.next, %xtraiter357
  br i1 %prol.iter359.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !919

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa343.unr = phi float [ poison, %.lr.ph.i.preheader ], [ %i.gp, %.lr.ph.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %i.de, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %storemerge26616.i.unr = phi float [ %i.gk, %.lr.ph.i.preheader ], [ %i.gp, %.lr.ph.i.prol ]
  br i1 %i.ex, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 8 uses
  %storemerge26616.i = phi float [ %i.id, %.lr.ph.i ], [ %storemerge26616.i.unr, %.lr.ph.i.prol.loopexit ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv.next.i
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !211
  %gep.i = getelementptr [12 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.gs = load float, ptr %gep.i, align 4, !tbaa !211
  %i.gt = fneg float %i.gr
  %i.gu = call float @llvm.fmuladd.f32(float %i.gt, float %i.gs, float %storemerge26616.i)
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv.next.i.1
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !211
  %gep.i.1 = getelementptr [12 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.1
  %i.gx = load float, ptr %gep.i.1, align 4, !tbaa !211
  %i.gy = fneg float %i.gw
  %i.gz = call float @llvm.fmuladd.f32(float %i.gy, float %i.gx, float %i.gu)
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv.next.i.2
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !211
  %gep.i.2 = getelementptr [12 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.2
  %i.hc = load float, ptr %gep.i.2, align 4, !tbaa !211
  %i.hd = fneg float %i.hb
  %i.he = call float @llvm.fmuladd.f32(float %i.hd, float %i.hc, float %i.gz)
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv.next.i.3
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !211
  %gep.i.3 = getelementptr [12 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.3
  %i.hh = load float, ptr %gep.i.3, align 4, !tbaa !211
  %i.hi = fneg float %i.hg
  %i.hj = call float @llvm.fmuladd.f32(float %i.hi, float %i.hh, float %i.he)
  %indvars.iv.next.i.4 = add nsw i64 %indvars.iv.i, 5 ; 2 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv.next.i.4
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !211
  %gep.i.4 = getelementptr [12 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.4
  %i.hm = load float, ptr %gep.i.4, align 4, !tbaa !211
  %i.hn = fneg float %i.hl
  %i.ho = call float @llvm.fmuladd.f32(float %i.hn, float %i.hm, float %i.hj)
  %indvars.iv.next.i.5 = add nsw i64 %indvars.iv.i, 6 ; 2 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv.next.i.5
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !211
  %gep.i.5 = getelementptr [12 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.5
  %i.hr = load float, ptr %gep.i.5, align 4, !tbaa !211
  %i.hs = fneg float %i.hq
  %i.ht = call float @llvm.fmuladd.f32(float %i.hs, float %i.hr, float %i.ho)
  %indvars.iv.next.i.6 = add nsw i64 %indvars.iv.i, 7 ; 2 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv.next.i.6
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !211
  %gep.i.6 = getelementptr [12 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.6
  %i.hw = load float, ptr %gep.i.6, align 4, !tbaa !211
  %i.hx = fneg float %i.hv
  %i.hy = call float @llvm.fmuladd.f32(float %i.hx, float %i.hw, float %i.ht)
  %indvars.iv.next.i.7 = add nsw i64 %indvars.iv.i, 8 ; 4 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv.next.i.7
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !211
  %gep.i.7 = getelementptr [12 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.7
  %i.ib = load float, ptr %gep.i.7, align 4, !tbaa !211
  %i.ic = fneg float %i.ia
  %i.id = call float @llvm.fmuladd.f32(float %i.ic, float %i.ib, float %i.hy) ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, 2
  br i1 %exitcond.not.i.7, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !920

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.r
  %storemerge266.lcssa15.i = phi float [ %i.gk, %bb.r ], [ %.lcssa343.unr, %.lr.ph.i.prol.loopexit ], [ %i.id, %.lr.ph.i ] ; 4 uses
  store float %storemerge266.lcssa15.i, ptr %i.dj, align 4, !tbaa !211
  %i.ie = fmul float %storemerge266.lcssa15.i, %storemerge266.lcssa15.i
  %i.if = load float, ptr %i.dl, align 4, !tbaa !211
  %i.ig = fmul float %i.ie, %i.if                 ; 5 uses
  br i1 %.not156, label %.lr.ph22.preheader.i, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i
  store float %storemerge266.lcssa15.i, ptr %i.dm, align 4, !tbaa !211
  br label %.lr.ph22.preheader.i

.lr.ph22.preheader.i:                             ; preds = %bb.s, %._crit_edge.i
  %.2.i = phi float [ %i.ig, %bb.s ], [ 0.000000e+00, %._crit_edge.i ] ; 4 uses
  br i1 %i.ey, label %.lr.ph22.i.epil.preheader, label %.lr.ph22.i

.lr.ph22.i:                                       ; preds = %.lr.ph22.preheader.i, %bb.x
  %indvars.iv52.i = phi i64 [ %indvars.iv.next53.i.1, %bb.x ], [ 1, %.lr.ph22.preheader.i ] ; 3 uses
  %niter364 = phi i64 [ %niter364.next.1, %bb.x ], [ 0, %.lr.ph22.preheader.i ]
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv52.i
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !210
  %i.ij = sext i32 %i.ii to i64                   ; 3 uses
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.ij
  %i.il = load float, ptr %i.ik, align 4, !tbaa !211 ; 3 uses
  %i.im = fcmp ogt float %i.il, 0.000000e+00
  br i1 %i.im, label %bb.t, label %.lr.ph22.i.1

bb.t:                                             ; preds = %.lr.ph22.i
  %i.in = load float, ptr %i.dj, align 4, !tbaa !211
  %i.io = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ij ; 2 uses
  %i.ip = load float, ptr %i.io, align 4, !tbaa !211
  %i.iq = fneg float %i.in
  %i.ir = call float @llvm.fmuladd.f32(float %i.iq, float %i.il, float %i.ip)
  store float %i.ir, ptr %i.io, align 4, !tbaa !211
  br i1 %.not156, label %.lr.ph22.i.1, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.is = load float, ptr %i.dm, align 4, !tbaa !211
  %i.it = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.ij ; 2 uses
end_hunk_0
begin_hunk_1_@_ZL22setup_dd_communicationP12gmx_domdec_tPA3_fP11gmx_ddbox_tP10t_forcerecP7t_state.omp_outlined:bb.a
  %.sroa.010.014.i.i.i.i.i = phi ptr [ %i.sl, %.lr.ph.i.i.i.i.i ], [ %.sroa.010.014.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.sk = load i32, ptr %.sroa.010.014.i.i.i.i.i, align 4, !tbaa !210
  store i32 %i.sk, ptr %.015.i.i.i.i.i, align 4, !tbaa !210
  %i.sl = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i.i.i.i, i64 4 ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.sl, %i.qv
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N3gmx30DefaultInitializationAllocatorIiSaIiEEEET0_T_S6_S5_RT1_.exit34.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !928

_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N3gmx30DefaultInitializationAllocatorIiSaIiEEEET0_T_S6_S5_RT1_.exit34.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc63
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.rk, %.noexc63 ], [ %i.sg, %vec.epilog.middle.block ], [ %i.rv, %middle.block ], [ %i.sm, %.lr.ph.i.i.i.i.i ]
  %i.sn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4
  %.not.i35.i.i.i = icmp eq ptr %i.qz, null
  br i1 %.not.i35.i.i.i, label %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS4_EEDpOT_.exit.i.i, label %bb.ay

bb.ay:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N3gmx30DefaultInitializationAllocatorIiSaIiEEEET0_T_S6_S5_RT1_.exit34.i.i.i
  %i.so = load ptr, ptr %i.ei, align 8, !tbaa !420
  %i.sp = ptrtoint ptr %i.so to i64
  %i.sq = sub i64 %i.sp, %i.rb
  call void @_ZdlPvm(ptr noundef nonnull %i.qz, i64 noundef %i.sq) #30
  br label %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS4_EEDpOT_.exit.i.i

_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS4_EEDpOT_.exit.i.i: ; preds = %bb.ay, %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N3gmx30DefaultInitializationAllocatorIiSaIiEEEET0_T_S6_S5_RT1_.exit34.i.i.i
  store ptr %i.rk, ptr %i.cr, align 8, !tbaa !371
  store ptr %i.sn, ptr %i.eh, align 8, !tbaa !372
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %i.ri
  store ptr %i.sr, ptr %i.ei, align 8, !tbaa !420
  br label %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE9push_backERKi.exit.i

_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE9push_backERKi.exit.i: ; preds = %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS4_EEDpOT_.exit.i.i, %bb.aw
  %i.ss = add nsw i32 %.023640.i, 1
  %i.st = load i32, ptr %i.ek, align 4, !tbaa !210
  %i.su = icmp eq i32 %i.st, 0
  %i.sv = load i32, ptr %i.c, align 4, !tbaa !210 ; 2 uses
  %i.sw = sext i32 %i.sv to i64
  %i.sx = getelementptr inbounds [12 x i8], ptr %i.by, i64 %i.sw ; 3 uses
  %i.sy = load float, ptr %i.sx, align 4, !tbaa !211 ; 2 uses
  br i1 %i.su, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE9push_backERKi.exit.i
  %i.sz = load float, ptr %i.el, align 4, !tbaa !211
  %i.ta = fadd float %i.sy, %i.sz                 ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sx, i64 4
  %i.tc = load <2 x float>, ptr %i.tb, align 4, !tbaa !211
  %i.td = load <2 x float>, ptr %i.em, align 4, !tbaa !211
  %i.te = fadd <2 x float> %i.tc, %i.td           ; 2 uses
  br i1 %i.cp, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.tf = load float, ptr %i.en, align 4, !tbaa !211
  %i.tg = load float, ptr %i.eo, align 4, !tbaa !211
  %i.th = insertelement <2 x float> poison, float %i.tf, i64 0
  %i.ti = insertelement <2 x float> %i.th, float %i.tg, i64 1
  %i.tj = fsub <2 x float> %i.ti, %i.te
  br label %bb.bc

bb.bb:                                            ; preds = %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE9push_backERKi.exit.i
  %i.tk = getelementptr inbounds nuw i8, ptr %i.sx, i64 4
  %i.tl = load <2 x float>, ptr %i.tk, align 4, !tbaa !211
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az
  %.sroa.0.0.i = phi float [ %i.ta, %bb.ba ], [ %i.ta, %bb.az ], [ %i.sy, %bb.bb ] ; 2 uses
  %i.tm = phi <2 x float> [ %i.tj, %bb.ba ], [ %i.te, %bb.az ], [ %i.tl, %bb.bb ] ; 2 uses
  %i.tn = load ptr, ptr %i.ep, align 8, !tbaa !415 ; 7 uses
  %i.to = load ptr, ptr %i.eq, align 8, !tbaa !451
  %.not.i280.i = icmp eq ptr %i.tn, %i.to
  br i1 %.not.i280.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store float %.sroa.0.0.i, ptr %i.tn, align 4, !tbaa !211
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tn, i64 4
  store <2 x float> %i.tm, ptr %i.tp, align 4, !tbaa !211
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tn, i64 12
  store ptr %i.tq, ptr %i.ep, align 8, !tbaa !415
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12emplace_backIJRfS6_S6_EEERS2_DpOT_.exit.i

bb.be:                                            ; preds = %bb.bc
  %i.tr = load ptr, ptr %i.cs, align 8, !tbaa !414 ; 5 uses
  %i.ts = ptrtoint ptr %i.tn to i64
  %i.tt = ptrtoint ptr %i.tr to i64               ; 2 uses
  %i.tu = sub i64 %i.ts, %i.tt                    ; 3 uses
  %i.tv = icmp eq i64 %i.tu, 9223372036854775800
  br i1 %i.tv, label %.invoke, label %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.be
  %i.tw = sdiv exact i64 %i.tu, 12                ; 3 uses
  %.sroa.speculated.i.i.i281.i = call i64 @llvm.umax.i64(i64 %i.tw, i64 1)
  %i.tx = add nsw i64 %.sroa.speculated.i.i.i281.i, %i.tw ; 2 uses
  %i.ty = icmp ult i64 %i.tx, %i.tw
  %i.tz = call i64 @llvm.umin.i64(i64 %i.tx, i64 768614336404564650)
  %i.ua = select i1 %i.ty, i64 768614336404564650, i64 %i.tz ; 3 uses
  %.not.i.i.i282.i = icmp ne i64 %i.ua, 0
  call void @llvm.assume(i1 %.not.i.i.i282.i)
  %i.ub = mul nuw nsw i64 %i.ua, 12
  %i.uc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ub) #35
          to label %.noexc65 unwind label %.loopexit ; 5 uses

.noexc65:                                         ; preds = %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 %i.tu ; 2 uses
  store float %.sroa.0.0.i, ptr %i.ud, align 4, !tbaa !211
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 4
  store <2 x float> %i.tm, ptr %i.ue, align 4, !tbaa !211
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.tr, %i.tn
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc65, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ug, %.lr.ph.i.i.i.i.i.i ], [ %i.uc, %.noexc65 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.uf, %.lr.ph.i.i.i.i.i.i ], [ %i.tr, %.noexc65 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !398, !alias.scope !953
  %i.uf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.uf, %i.tn
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !932

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc65
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.uc, %.noexc65 ], [ %i.ug, %.lr.ph.i.i.i.i.i.i ]
  %i.uh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 12
  %.not.i35.i.i283.i = icmp eq ptr %i.tr, null
  br i1 %.not.i35.i.i283.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_M_realloc_insertIJRfS6_S6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i.i
  %i.ui = load ptr, ptr %i.eq, align 8, !tbaa !451
  %i.uj = ptrtoint ptr %i.ui to i64
  %i.uk = sub i64 %i.uj, %i.tt
  call void @_ZdlPvm(ptr noundef nonnull %i.tr, i64 noundef %i.uk) #30
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_M_realloc_insertIJRfS6_S6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_M_realloc_insertIJRfS6_S6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.bf, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i.i
  store ptr %i.uc, ptr %i.cs, align 8, !tbaa !414
  store ptr %i.uh, ptr %i.ep, align 8, !tbaa !415
  %i.ul = getelementptr inbounds nuw [12 x i8], ptr %i.uc, i64 %i.ua
  store ptr %i.ul, ptr %i.eq, align 8, !tbaa !451
  %.pre.pre.i = load i32, ptr %i.c, align 4, !tbaa !210
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12emplace_backIJRfS6_S6_EEERS2_DpOT_.exit.i

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12emplace_backIJRfS6_S6_EEERS2_DpOT_.exit.i: ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_M_realloc_insertIJRfS6_S6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.bd
  %.pre.i = phi i32 [ %i.sv, %bb.bd ], [ %.pre.pre.i, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_M_realloc_insertIJRfS6_S6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.um = add nsw i32 %.041.i, 1
  br label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12emplace_backIJRfS6_S6_EEERS2_DpOT_.exit.i, %bb.as, %bb.ar, %bb.ap, %bb.ao
  %i.un = phi i32 [ %.pre.i, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12emplace_backIJRfS6_S6_EEERS2_DpOT_.exit.i ], [ %storemerge39.i, %bb.as ], [ %storemerge39.i, %bb.ar ], [ %storemerge39.i, %bb.ao ], [ %storemerge39.i, %bb.ap ]
  %.1237.i = phi i32 [ %i.ss, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12emplace_backIJRfS6_S6_EEERS2_DpOT_.exit.i ], [ %.023640.i, %bb.as ], [ %.023640.i, %bb.ar ], [ %.023640.i, %bb.ao ], [ %.023640.i, %bb.ap ] ; 2 uses
  %.1.i = phi i32 [ %i.um, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12emplace_backIJRfS6_S6_EEERS2_DpOT_.exit.i ], [ %.041.i, %bb.as ], [ %.041.i, %bb.ar ], [ %.041.i, %bb.ao ], [ %.041.i, %bb.ap ] ; 2 uses
  %i.uo = add nsw i32 %i.un, 1                    ; 3 uses
  store i32 %i.uo, ptr %i.c, align 4, !tbaa !210
  %i.up = icmp slt i32 %i.uo, %i.aw
  br i1 %i.up, label %bb.i, label %_ZL21get_zone_pulse_groupsISt6vectorIiN3gmx9AllocatorIiNS1_20HostAllocationPolicyEEEEEvP12gmx_domdec_tiiiiNS1_8ArrayRefIKiEEiiiiiffPA3_fbSC_ffSC_SC_SC_PK12dd_corners_tPKfbbbbNS8_IKNS1_11BasicVectorIfEEEESA_PT_P20dd_comm_setup_work_t.exit, !llvm.loop !933

_ZL21get_zone_pulse_groupsISt6vectorIiN3gmx9AllocatorIiNS1_20HostAllocationPolicyEEEEEvP12gmx_domdec_tiiiiNS1_8ArrayRefIKiEEiiiiiffPA3_fbSC_ffSC_SC_SC_PK12dd_corners_tPKfbbbbNS8_IKNS1_11BasicVectorIfEEEESA_PT_P20dd_comm_setup_work_t.exit: ; preds = %bb.bg, %bb.h
  %.0236.lcssa.i = phi i32 [ 0, %bb.h ], [ %.1237.i, %bb.bg ]
  %.0.lcssa.i = phi i32 [ %i.cu, %bb.h ], [ %.1.i, %bb.bg ]
  store i32 %.0.lcssa.i, ptr %i.ct, align 8, !tbaa !417
  %i.uq = getelementptr inbounds nuw i8, ptr %i.ac, i64 76
  store i32 %.0236.lcssa.i, ptr %i.uq, align 4, !tbaa !418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %bb.dj

.loopexit:                                        ; preds = %bb.av, %_ZNKSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE12_M_check_lenEmPKc.exit.i.i.i, %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i93, %_ZNKSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE12_M_check_lenEmPKc.exit.i.i280.i, %_ZNKSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE12_M_check_lenEmPKc.exit.i.i.i104
  %lpad.loopexit157 = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke
  %lpad.loopexit.split-lp158 = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit157, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp158, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.ur = extractvalue { ptr, i32 } %lpad.phi, 0  ; 2 uses
  %i.us = extractvalue { ptr, i32 } %lpad.phi, 1
  %i.ut = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #19
  %i.uu = icmp eq i32 %i.us, %i.ut
  br i1 %i.uu, label %bb.dk, label %bb.do

bb.bh:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ay, i64 161
  %i.uw = load i8, ptr %i.uv, align 1, !tbaa !951, !range !335, !noundef !336
  %i.ux = trunc nuw i8 %i.uw to i1
  %i.uy = icmp eq i32 %i.bd, 0
  %i.uz = and i1 %i.uy, %i.ux
  %i.va = and i8 %i.bv, %i.bs
  %.not155 = icmp eq i8 %i.va, 0                  ; 9 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.ac, i64 48 ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.ac, i64 72 ; 2 uses
  %i.ve = load i32, ptr %i.vd, align 8, !tbaa !417 ; 2 uses
  %i.vf = icmp slt i32 %34, %38
  br i1 %i.vf, label %.lr.ph66.i, label %_ZL21get_zone_pulse_groupsISt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEEEvP12gmx_domdec_tiiiiNS1_8ArrayRefIKiEEiiiiiffPA3_fbSC_ffSC_SC_SC_PK12dd_corners_tPKfbbbbNS8_IKNS1_11BasicVectorIfEEEESA_PT_P20dd_comm_setup_work_t.exit

.lr.ph66.i:                                       ; preds = %bb.bh
  %i.vg = getelementptr inbounds nuw i8, ptr %i.ay, i64 928
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !15
  %i.vi = sext i32 %i.bd to i64                   ; 11 uses
  %i.vj = sext i32 %i.be to i64                   ; 2 uses
  %i.vk = getelementptr inbounds [16 x i8], ptr %24, i64 %i.vj
  %i.vl = sext i32 %i.ba to i64                   ; 2 uses
  %i.vm = getelementptr inbounds [4 x i8], ptr %i.vk, i64 %i.vl ; 2 uses
  %i.vn = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.vj ; 2 uses
  %i.vo = icmp sgt i32 %i.be, 0
  %i.vp = add i32 %i.az, -1
  %or.cond.i68 = icmp ult i32 %i.vp, 2
  %or.cond268.i69 = and i1 %or.cond.i68, %i.vo    ; 2 uses
  %i.vq = sext i32 %i.bf to i64                   ; 11 uses
  %i.vr = icmp eq i32 %i.be, 2
  %i.vs = and i32 %i.az, -2
  %or.cond3.i70 = icmp eq i32 %i.vs, 2
  %or.cond270.i71 = and i1 %or.cond3.i70, %i.vr   ; 2 uses
  %i.vt = sext i32 %i.bg to i64                   ; 11 uses
  %i.vu = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.vl ; 2 uses
  %i.vv = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.vq ; 6 uses
  %invariant.gep.i72 = getelementptr [4 x i8], ptr %i.bq, i64 %i.vq ; 9 uses
  %i.vw = icmp slt i32 %i.bf, 2
  %i.vx = getelementptr inbounds [4 x i8], ptr %25, i64 %i.vq
  %i.vy = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.vq ; 6 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.ay, i64 180 ; 3 uses
  %i.wa = getelementptr inbounds [12 x i8], ptr %i.bm, i64 %i.vq ; 3 uses
  %i.wb = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.vt ; 2 uses
  %invariant.gep45.i = getelementptr [4 x i8], ptr %i.br, i64 %i.vt ; 9 uses
  %i.wc = icmp slt i32 %i.bg, 2
  %i.wd = getelementptr inbounds [4 x i8], ptr %25, i64 %i.vt ; 2 uses
  %i.we = getelementptr inbounds [12 x i8], ptr %i.bm, i64 %i.vt
  %i.wf = sext i32 %i.bh to i64                   ; 3 uses
  %i.wg = getelementptr inbounds [4 x i8], ptr %i.we, i64 %i.wf ; 2 uses
  %i.wh = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.wf ; 2 uses
  %i.wi = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.vt ; 2 uses
  %i.wj = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.wf ; 2 uses
  %i.wk = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.vi ; 2 uses
  %invariant.gep53.i = getelementptr [4 x i8], ptr %i.bp, i64 %i.vi ; 9 uses
  %i.wl = icmp slt i32 %i.bd, 2
  %i.wm = icmp eq i32 %i.be, 1
  %i.wn = icmp eq i32 %i.az, 1
  %or.cond9.i73 = and i1 %i.wn, %i.wm             ; 2 uses
  %i.wo = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.vi ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.vh, i64 384
  %i.wq = getelementptr inbounds nuw i8, ptr %i.ay, i64 920
  %i.wr = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 3 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 3 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.ac, i64 40 ; 3 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.ay, i64 36
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %i.wv, i64 %i.vi
  %i.wx = getelementptr inbounds [12 x i8], ptr %i.bk, i64 %i.vi ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 4
  %i.wz = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.xa = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.xb = getelementptr inbounds nuw i8, ptr %i.ac, i64 56 ; 3 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.ac, i64 64 ; 3 uses
  %i.xd = add i32 %i.be, 1                        ; 2 uses
  %i.xe = sext i32 %35 to i64
  %wide.trip.count.i74 = zext i32 %i.xd to i64
  %i.xf = sub nsw i64 2, %i.vq
  %i.xg = add nsw i64 %wide.trip.count.i74, -1    ; 3 uses
  %i.xh = sub nsw i64 2, %i.vt
  %i.xi = sub nsw i64 2, %i.vi
  %xtraiter = and i64 %i.xf, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.xj = add nsw i64 %i.vq, 5
  %i.xk = icmp ult i64 %i.xj, 7
  %xtraiter348 = and i64 %i.xg, 1
  %i.xl = icmp eq i32 %i.xd, 2
  %unroll_iter = and i64 %i.xg, -2
  %lcmp.mod349.not = icmp eq i64 %xtraiter348, 0
  %lcmp.mod350 = trunc i64 %i.xg to i1
  %xtraiter351 = and i64 %i.xh, 7                 ; 2 uses
  %lcmp.mod352.not = icmp eq i64 %xtraiter351, 0
  %i.xm = add nsw i64 %i.vt, 5
  %i.xn = icmp ult i64 %i.xm, 7
  %xtraiter354 = and i64 %i.xi, 7                 ; 2 uses
  %lcmp.mod355.not = icmp eq i64 %xtraiter354, 0
  %i.xo = add nsw i64 %i.vi, 5
  %i.xp = icmp ult i64 %i.xo, 7
  br label %bb.bi

bb.bi:                                            ; preds = %bb.di, %.lr.ph66.i
  %indvars.iv88.i = phi i64 [ %i.xe, %.lr.ph66.i ], [ %indvars.iv.next89.i, %bb.di ] ; 11 uses
  %.064.i = phi i32 [ %i.ve, %.lr.ph66.i ], [ %.1.i82, %bb.di ] ; 5 uses
  %.023663.i = phi i32 [ 0, %.lr.ph66.i ], [ %.1237.i81, %bb.di ] ; 5 uses
  br i1 %i.cd, label %bb.bq, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.xq = getelementptr inbounds [12 x i8], ptr %i.by, i64 %indvars.iv88.i ; 3 uses
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %i.xq, i64 %i.vi
  %i.xs = load float, ptr %i.xr, align 4, !tbaa !211 ; 2 uses
  %i.xt = load float, ptr %i.vm, align 4, !tbaa !211
  %i.xu = fsub float %i.xs, %i.xt                 ; 3 uses
  %i.xv = fcmp ogt float %i.xu, 0.000000e+00
  %i.xw = call float @llvm.fmuladd.f32(float %i.xu, float %i.xu, float 0.000000e+00)
  %spec.select.i75 = select i1 %i.xv, float %i.xw, float 0.000000e+00 ; 2 uses
  br i1 %.not155, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.xx = load float, ptr %i.vn, align 4, !tbaa !211
  %i.xy = fsub float %i.xs, %i.xx                 ; 3 uses
  %i.xz = fcmp ogt float %i.xy, 0.000000e+00
  %i.ya = call float @llvm.fmuladd.f32(float %i.xy, float %i.xy, float 0.000000e+00)
  %spec.select267.i122 = select i1 %i.xz, float %i.ya, float 0.000000e+00
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.0240.i76 = phi float [ 0.000000e+00, %bb.bj ], [ %spec.select267.i122, %bb.bk ] ; 3 uses
  br i1 %or.cond268.i69, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %i.xq, i64 %i.vq
  %i.yc = load float, ptr %i.yb, align 4, !tbaa !211
  %i.yd = load float, ptr %i.r, align 4, !tbaa !407
  %i.ye = fsub float %i.yc, %i.yd                 ; 4 uses
  %i.yf = call float @llvm.fmuladd.f32(float %i.ye, float %i.ye, float %spec.select.i75)
  %i.yg = call float @llvm.fmuladd.f32(float %i.ye, float %i.ye, float %.0240.i76)
  %spec.select269.i121 = select i1 %.not155, float %.0240.i76, float %i.yg
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.1243.i77 = phi float [ %spec.select.i75, %bb.bl ], [ %i.yf, %bb.bm ] ; 3 uses
  %.1241.i78 = phi float [ %.0240.i76, %bb.bl ], [ %spec.select269.i121, %bb.bm ] ; 4 uses
  br i1 %or.cond270.i71, label %bb.bo, label %bb.co

bb.bo:                                            ; preds = %bb.bn
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %i.xq, i64 %i.vt
  %i.yi = load float, ptr %i.yh, align 4, !tbaa !211 ; 2 uses
  %i.yj = load float, ptr %i.vu, align 4, !tbaa !211
  %i.yk = fsub float %i.yi, %i.yj                 ; 3 uses
  %i.yl = fcmp ogt float %i.yk, 0.000000e+00
  %i.ym = call float @llvm.fmuladd.f32(float %i.yk, float %i.yk, float %.1243.i77)
  %spec.select271.i119 = select i1 %i.yl, float %i.ym, float %.1243.i77 ; 2 uses
  br i1 %.not155, label %bb.co, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.yn = load float, ptr %i.t, align 4, !tbaa !408
  %i.yo = fsub float %i.yi, %i.yn                 ; 3 uses
  %i.yp = fcmp ogt float %i.yo, 0.000000e+00
  %i.yq = call float @llvm.fmuladd.f32(float %i.yo, float %i.yo, float %.1241.i78)
  %spec.select272.i120 = select i1 %i.yp, float %i.yq, float %.1241.i78
  br label %bb.co

bb.bq:                                            ; preds = %bb.bi
  store <2 x float> zeroinitializer, ptr %i.a, align 8, !tbaa !211
  store float 0.000000e+00, ptr %i.u, align 8, !tbaa !211
  store <2 x float> zeroinitializer, ptr %i.b, align 8, !tbaa !211
  store float 0.000000e+00, ptr %i.v, align 8, !tbaa !211
  br i1 %or.cond268.i69, label %bb.br, label %.loopexit.i123

bb.br:                                            ; preds = %bb.bq
  %i.yr = getelementptr inbounds [12 x i8], ptr %i.by, i64 %indvars.iv88.i ; 10 uses
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %i.yr, i64 %i.vq
  %i.yt = load float, ptr %i.ys, align 4, !tbaa !211
  %i.yu = load float, ptr %i.r, align 4, !tbaa !407
  %i.yv = fsub float %i.yt, %i.yu                 ; 3 uses
  br i1 %i.vw, label %.lr.ph.i134.preheader, label %._crit_edge.i132

.lr.ph.i134.preheader:                            ; preds = %bb.br
  br i1 %lcmp.mod.not, label %.lr.ph.i134.prol.loopexit, label %.lr.ph.i134.prol

.lr.ph.i134.prol:                                 ; preds = %.lr.ph.i134.preheader, %.lr.ph.i134.prol
  %indvars.iv.i135.prol = phi i64 [ %indvars.iv.next.i136.prol, %.lr.ph.i134.prol ], [ %i.vq, %.lr.ph.i134.preheader ]
  %storemerge26638.i.prol = phi float [ %i.za, %.lr.ph.i134.prol ], [ %i.yv, %.lr.ph.i134.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i134.prol ], [ 0, %.lr.ph.i134.preheader ]
  %indvars.iv.next.i136.prol = add nsw i64 %indvars.iv.i135.prol, 1 ; 4 uses
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.yr, i64 %indvars.iv.next.i136.prol
  %i.yx = load float, ptr %i.yw, align 4, !tbaa !211
  %gep.i137.prol = getelementptr [12 x i8], ptr %invariant.gep.i72, i64 %indvars.iv.next.i136.prol
  %i.yy = load float, ptr %gep.i137.prol, align 4, !tbaa !211
  %i.yz = fneg float %i.yx
  %i.za = call float @llvm.fmuladd.f32(float %i.yz, float %i.yy, float %storemerge26638.i.prol) ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i134.prol.loopexit, label %.lr.ph.i134.prol, !llvm.loop !934

.lr.ph.i134.prol.loopexit:                        ; preds = %.lr.ph.i134.prol, %.lr.ph.i134.preheader
  %.lcssa.unr = phi float [ poison, %.lr.ph.i134.preheader ], [ %i.za, %.lr.ph.i134.prol ]
  %indvars.iv.i135.unr = phi i64 [ %i.vq, %.lr.ph.i134.preheader ], [ %indvars.iv.next.i136.prol, %.lr.ph.i134.prol ]
  %storemerge26638.i.unr = phi float [ %i.yv, %.lr.ph.i134.preheader ], [ %i.za, %.lr.ph.i134.prol ]
  br i1 %i.xk, label %._crit_edge.i132, label %.lr.ph.i134

.lr.ph.i134:                                      ; preds = %.lr.ph.i134.prol.loopexit, %.lr.ph.i134
  %indvars.iv.i135 = phi i64 [ %indvars.iv.next.i136.7, %.lr.ph.i134 ], [ %indvars.iv.i135.unr, %.lr.ph.i134.prol.loopexit ] ; 8 uses
  %storemerge26638.i = phi float [ %i.aao, %.lr.ph.i134 ], [ %storemerge26638.i.unr, %.lr.ph.i134.prol.loopexit ]
  %indvars.iv.next.i136 = add nsw i64 %indvars.iv.i135, 1 ; 2 uses
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %i.yr, i64 %indvars.iv.next.i136
  %i.zc = load float, ptr %i.zb, align 4, !tbaa !211
  %gep.i137 = getelementptr [12 x i8], ptr %invariant.gep.i72, i64 %indvars.iv.next.i136
  %i.zd = load float, ptr %gep.i137, align 4, !tbaa !211
  %i.ze = fneg float %i.zc
  %i.zf = call float @llvm.fmuladd.f32(float %i.ze, float %i.zd, float %storemerge26638.i)
  %indvars.iv.next.i136.1 = add nsw i64 %indvars.iv.i135, 2 ; 2 uses
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %i.yr, i64 %indvars.iv.next.i136.1
  %i.zh = load float, ptr %i.zg, align 4, !tbaa !211
  %gep.i137.1 = getelementptr [12 x i8], ptr %invariant.gep.i72, i64 %indvars.iv.next.i136.1
  %i.zi = load float, ptr %gep.i137.1, align 4, !tbaa !211
  %i.zj = fneg float %i.zh
  %i.zk = call float @llvm.fmuladd.f32(float %i.zj, float %i.zi, float %i.zf)
  %indvars.iv.next.i136.2 = add nsw i64 %indvars.iv.i135, 3 ; 2 uses
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %i.yr, i64 %indvars.iv.next.i136.2
  %i.zm = load float, ptr %i.zl, align 4, !tbaa !211
  %gep.i137.2 = getelementptr [12 x i8], ptr %invariant.gep.i72, i64 %indvars.iv.next.i136.2
  %i.zn = load float, ptr %gep.i137.2, align 4, !tbaa !211
  %i.zo = fneg float %i.zm
  %i.zp = call float @llvm.fmuladd.f32(float %i.zo, float %i.zn, float %i.zk)
  %indvars.iv.next.i136.3 = add nsw i64 %indvars.iv.i135, 4 ; 2 uses
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.yr, i64 %indvars.iv.next.i136.3
  %i.zr = load float, ptr %i.zq, align 4, !tbaa !211
  %gep.i137.3 = getelementptr [12 x i8], ptr %invariant.gep.i72, i64 %indvars.iv.next.i136.3
  %i.zs = load float, ptr %gep.i137.3, align 4, !tbaa !211
  %i.zt = fneg float %i.zr
  %i.zu = call float @llvm.fmuladd.f32(float %i.zt, float %i.zs, float %i.zp)
  %indvars.iv.next.i136.4 = add nsw i64 %indvars.iv.i135, 5 ; 2 uses
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr %i.yr, i64 %indvars.iv.next.i136.4
  %i.zw = load float, ptr %i.zv, align 4, !tbaa !211
  %gep.i137.4 = getelementptr [12 x i8], ptr %invariant.gep.i72, i64 %indvars.iv.next.i136.4
  %i.zx = load float, ptr %gep.i137.4, align 4, !tbaa !211
  %i.zy = fneg float %i.zw
  %i.zz = call float @llvm.fmuladd.f32(float %i.zy, float %i.zx, float %i.zu)
  %indvars.iv.next.i136.5 = add nsw i64 %indvars.iv.i135, 6 ; 2 uses
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %i.yr, i64 %indvars.iv.next.i136.5
  %i.aab = load float, ptr %i.aaa, align 4, !tbaa !211
  %gep.i137.5 = getelementptr [12 x i8], ptr %invariant.gep.i72, i64 %indvars.iv.next.i136.5
  %i.aac = load float, ptr %gep.i137.5, align 4, !tbaa !211
  %i.aad = fneg float %i.aab
  %i.aae = call float @llvm.fmuladd.f32(float %i.aad, float %i.aac, float %i.zz)
  %indvars.iv.next.i136.6 = add nsw i64 %indvars.iv.i135, 7 ; 2 uses
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %i.yr, i64 %indvars.iv.next.i136.6
  %i.aag = load float, ptr %i.aaf, align 4, !tbaa !211
  %gep.i137.6 = getelementptr [12 x i8], ptr %invariant.gep.i72, i64 %indvars.iv.next.i136.6
  %i.aah = load float, ptr %gep.i137.6, align 4, !tbaa !211
  %i.aai = fneg float %i.aag
  %i.aaj = call float @llvm.fmuladd.f32(float %i.aai, float %i.aah, float %i.aae)
  %indvars.iv.next.i136.7 = add nsw i64 %indvars.iv.i135, 8 ; 4 uses
  %i.aak = getelementptr inbounds nuw [4 x i8], ptr %i.yr, i64 %indvars.iv.next.i136.7
  %i.aal = load float, ptr %i.aak, align 4, !tbaa !211
  %gep.i137.7 = getelementptr [12 x i8], ptr %invariant.gep.i72, i64 %indvars.iv.next.i136.7
  %i.aam = load float, ptr %gep.i137.7, align 4, !tbaa !211
  %i.aan = fneg float %i.aal
  %i.aao = call float @llvm.fmuladd.f32(float %i.aan, float %i.aam, float %i.aaj) ; 2 uses
  %exitcond.not.i138.7 = icmp eq i64 %indvars.iv.next.i136.7, 2
  br i1 %exitcond.not.i138.7, label %._crit_edge.i132, label %.lr.ph.i134, !llvm.loop !935

._crit_edge.i132:                                 ; preds = %.lr.ph.i134.prol.loopexit, %.lr.ph.i134, %bb.br
  %storemerge266.lcssa37.i = phi float [ %i.yv, %bb.br ], [ %.lcssa.unr, %.lr.ph.i134.prol.loopexit ], [ %i.aao, %.lr.ph.i134 ] ; 4 uses
  store float %storemerge266.lcssa37.i, ptr %i.vv, align 4, !tbaa !211
  %i.aap = fmul float %storemerge266.lcssa37.i, %storemerge266.lcssa37.i
  %i.aaq = load float, ptr %i.vx, align 4, !tbaa !211
  %i.aar = fmul float %i.aap, %i.aaq              ; 5 uses
  br i1 %.not155, label %.lr.ph44.preheader.i, label %bb.bs

bb.bs:                                            ; preds = %._crit_edge.i132
  store float %storemerge266.lcssa37.i, ptr %i.vy, align 4, !tbaa !211
  br label %.lr.ph44.preheader.i

.lr.ph44.preheader.i:                             ; preds = %bb.bs, %._crit_edge.i132
end_hunk_1
