Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/IndexIVFPQR?download=true
inline.NumInlined: 443
inline.NumDeleted: 247
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@llvm.lifetime.end.p0
declare void @llvm.lifetime.end.p0(ptr captures(none)) #12

declare void @_ZN5faiss10IndexIVFPQ13train_encoderElPKfPKl(ptr noundef nonnull align 8 dereferenceable(560), i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #13

declare void @_ZNK5faiss16ProductQuantizer13compute_codesEPKfPhm(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef, ptr noundef, i64 noundef) unnamed_addr #1

declare void @_ZNK5faiss16ProductQuantizer6decodeEPKhPf(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN5faiss16ProductQuantizer5trainEmPKf(ptr noundef nonnull align 8 dereferenceable(224), i64 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #14

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #15

declare void @_ZN5faiss10IndexIVFPQ10add_core_oElPKfPKlPfS4_Pv(ptr noundef nonnull align 8 dereferenceable(560), i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !14     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.i, %i.d                       ; 2 uses
  %i.k = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = xor i64 %i.f, 9223372036854775807        ; 2 uses
  %i.m = icmp ule i64 %i.j, %i.l
  tail call void @llvm.assume(i1 %i.m)
  %.not28 = icmp ult i64 %i.j, %1
  br i1 %.not28, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 1, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.o = add nsw i64 %1, -1                       ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.b, i64 %1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.n, i8 0, i64 %i.o, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi ptr [ %i.q, %bb.d ], [ %i.n, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !27
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %i.l, %1
  br i1 %i.r, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #27
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %1)
  %i.s = add nuw i64 %.sroa.speculated.i, %i.f
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.s, i64 9223372036854775807) ; 2 uses
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #28 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 3 uses
  store i8 0, ptr %i.v, align 1, !tbaa !26
  %i.w = add nsw i64 %1, -1                       ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.y, i8 0, i64 %i.w, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31: ; preds = %bb.g, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %.not35 = icmp eq ptr %i.b, %i.c
  br i1 %.not35, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.u, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31, %bb.h
  %.not.i33 = icmp eq ptr %i.c, null
  br i1 %.not.i33, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #26
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34: ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit, %bb.i
  store ptr %i.u, ptr %0, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 %1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !27
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  store ptr %i.ad, ptr %i.g, align 8, !tbaa !15
  br label %bb.j

bb.j:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #11

declare noundef i64 @_ZN5faiss10get_cyclesEv() local_unnamed_addr #1

declare void @_ZNK5faiss8IndexIVF18search_preassignedElPKflPKlS2_PfPlbPKNS_19SearchParametersIVFEPNS_13IndexIVFStatsE(ptr noundef nonnull align 8 dereferenceable(273), i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK5faiss11IndexIVFPQR18search_preassignedElPKflPKlS2_PfPlbPKNS_19SearchParametersIVFEPNS_13IndexIVFStatsE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %10, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %11) #17 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.f = alloca [1 x ptr], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 0, ptr %i.a, align 8, !tbaa !81
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !34   ; 2 uses
  %i.i = shl nsw i32 %i.h, 1
  %i.j = sext i32 %i.i to i64
  %i.k = icmp slt i32 %i.h, 0
  %i.l = shl nsw i64 %i.j, 2
  %i.m = select i1 %i.k, i64 -1, i64 %i.l
  %i.n = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #28
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 13 uses

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr %i.g, align 8, !tbaa !34
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr [4 x i8], ptr %i.n, i64 %i.p ; 10 uses
  %i.r = load i64, ptr %3, align 8, !tbaa !81     ; 2 uses
  %i.s = icmp sgt i64 %i.r, 0
  %.pre111 = load i32, ptr %0, align 4, !tbaa !122 ; 5 uses
  br i1 %i.s, label %bb.c, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.t = add nsw i64 %i.r, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 0, ptr %i.b, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i64 %i.t, ptr %i.c, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i64 1, ptr %i.d, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store i32 0, ptr %i.e, align 4, !tbaa !122
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %.pre111, i32 34, ptr nonnull %i.e, ptr nonnull %i.b, ptr nonnull %i.c, ptr nonnull %i.d, i64 1, i64 1)
  %i.u = load i64, ptr %i.c, align 8, !tbaa !81
  %i.v = call i64 @llvm.smin.i64(i64 %i.u, i64 %i.t) ; 2 uses
  store i64 %i.v, ptr %i.c, align 8, !tbaa !81
  %i.w = load i64, ptr %i.b, align 8, !tbaa !81   ; 2 uses
  %.not102 = icmp sgt i64 %i.w, %i.v
  br i1 %.not102, label %._crit_edge106, label %.lr.ph105.a

.lr.ph105.a:                                      ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 560
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 784
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 576
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph105.a, %_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit
  %i.af = phi i64 [ 0, %.lr.ph105.a ], [ %i.bg, %_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit ] ; 2 uses
  %.077103 = phi i64 [ %i.w, %.lr.ph105.a ], [ %i.ke, %_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit ] ; 5 uses
  %i.ag = load ptr, ptr %4, align 8, !tbaa !82
  %i.ah = load i32, ptr %i.g, align 8, !tbaa !34
  %i.ai = sext i32 %i.ah to i64
  %i.aj = mul nsw i64 %.077103, %i.ai
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.aj
  %i.al = load ptr, ptr %5, align 8, !tbaa !83
  %i.am = load i64, ptr %6, align 8, !tbaa !81    ; 2 uses
  %i.an = mul i64 %i.am, %.077103
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.an
  %i.ap = load ptr, ptr %7, align 8, !tbaa !82
  %i.aq = load i64, ptr %8, align 8, !tbaa !81    ; 6 uses
  %i.ar = mul nsw i64 %i.aq, %.077103             ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.ar ; 13 uses
  %i.at = load ptr, ptr %9, align 8, !tbaa !83
  %i.au = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.ar ; 12 uses
  %.not97 = icmp eq i64 %i.aq, 0
  br i1 %.not97, label %_ZN5faiss15maxheap_heapifyIfEEvmPT_PlPKS1_PKlm.exit, label %.lr.ph46.i.i.preheader

.lr.ph46.i.i.preheader:                           ; preds = %bb.d
  %min.iters.check160 = icmp ult i64 %i.aq, 4
  br i1 %min.iters.check160, label %.lr.ph46.i.i.preheader172, label %vector.ph161

vector.ph161:                                     ; preds = %.lr.ph46.i.i.preheader
  %n.vec162 = and i64 %i.aq, -4                   ; 3 uses
  br label %vector.body163

vector.body163:                                   ; preds = %vector.body163, %vector.ph161
  %index164 = phi i64 [ 0, %vector.ph161 ], [ %index.next165, %vector.body163 ] ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %index164 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.av, align 4, !tbaa !76
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.aw, align 4, !tbaa !76
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index164 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.ax, align 8, !tbaa !81
  store <2 x i64> splat (i64 -1), ptr %i.ay, align 8, !tbaa !81
  %index.next165 = add nuw i64 %index164, 4       ; 2 uses
  %i.az = icmp eq i64 %index.next165, %n.vec162
  br i1 %i.az, label %middle.block166, label %vector.body163, !llvm.loop !107

middle.block166:                                  ; preds = %vector.body163
  %cmp.n167 = icmp eq i64 %i.aq, %n.vec162
  br i1 %cmp.n167, label %_ZN5faiss15maxheap_heapifyIfEEvmPT_PlPKS1_PKlm.exit.loopexit, label %.lr.ph46.i.i.preheader172

.lr.ph46.i.i.preheader172:                        ; preds = %.lr.ph46.i.i.preheader, %middle.block166
  %.045.i.i.ph = phi i64 [ 0, %.lr.ph46.i.i.preheader ], [ %n.vec162, %middle.block166 ]
  br label %.lr.ph46.i.i

.lr.ph46.i.i:                                     ; preds = %.lr.ph46.i.i.preheader172, %.lr.ph46.i.i
  %.045.i.i = phi i64 [ %i.bc, %.lr.ph46.i.i ], [ %.045.i.i.ph, %.lr.ph46.i.i.preheader172 ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.045.i.i
  store float f0x7F7FFFFF, ptr %i.ba, align 4, !tbaa !76
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.045.i.i
  store i64 -1, ptr %i.bb, align 8, !tbaa !81
  %i.bc = add nuw i64 %.045.i.i, 1                ; 2 uses
  %exitcond51.not.i.i = icmp eq i64 %i.bc, %i.aq
  br i1 %exitcond51.not.i.i, label %_ZN5faiss15maxheap_heapifyIfEEvmPT_PlPKS1_PKlm.exit.loopexit, label %.lr.ph46.i.i, !llvm.loop !108

_ZN5faiss15maxheap_heapifyIfEEvmPT_PlPKS1_PKlm.exit.loopexit: ; preds = %.lr.ph46.i.i, %middle.block166
  %.pre = load i64, ptr %6, align 8, !tbaa !81
  br label %_ZN5faiss15maxheap_heapifyIfEEvmPT_PlPKS1_PKlm.exit

_ZN5faiss15maxheap_heapifyIfEEvmPT_PlPKS1_PKlm.exit: ; preds = %_ZN5faiss15maxheap_heapifyIfEEvmPT_PlPKS1_PKlm.exit.loopexit, %bb.d
  %i.bd = phi i64 [ %.pre, %_ZN5faiss15maxheap_heapifyIfEEvmPT_PlPKS1_PKlm.exit.loopexit ], [ %i.am, %bb.d ] ; 2 uses
  %.not107 = icmp eq i64 %i.bd, 0
  br i1 %.not107, label %._crit_edge101, label %.lr.ph100

.lr.ph100:                                        ; preds = %_ZN5faiss15maxheap_heapifyIfEEvmPT_PlPKS1_PKlm.exit
  %i.be = getelementptr inbounds i8, ptr %i.as, i64 -4 ; 4 uses
  %i.bf = getelementptr inbounds i8, ptr %i.au, i64 -8 ; 4 uses
  br label %bb.i

._crit_edge101:                                   ; preds = %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit, %_ZN5faiss15maxheap_heapifyIfEEvmPT_PlPKS1_PKlm.exit
  %i.bg = phi i64 [ %i.af, %_ZN5faiss15maxheap_heapifyIfEEvmPT_PlPKS1_PKlm.exit ], [ %i.kb, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit ]
  %i.bh = load i64, ptr %8, align 8, !tbaa !81    ; 9 uses
  %.not46.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge101
  %i.bi = getelementptr inbounds i8, ptr %i.as, i64 -4 ; 4 uses
  %i.bj = getelementptr inbounds i8, ptr %i.au, i64 -8 ; 5 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i, %.lr.ph.i.i
  %.041.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i, %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i ] ; 2 uses
  %.03740.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.dg, %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i ] ; 2 uses
  %i.bk = load float, ptr %i.as, align 4, !tbaa !76
  %i.bl = load i64, ptr %i.au, align 8, !tbaa !81 ; 2 uses
  %i.bm = sub nuw i64 %i.bh, %.03740.i.i          ; 5 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bm ; 3 uses
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !76 ; 5 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bm ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !81 ; 3 uses
  %i.br = icmp ult i64 %i.bm, 2
  br i1 %i.br, label %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.h
  %i.bs = phi i64 [ %i.cv, %bb.h ], [ 3, %bb.e ]
  %i.bt = phi i64 [ %i.cu, %bb.h ], [ 2, %bb.e ]  ; 7 uses
  %.062.i.i.i = phi i64 [ %.1.i.i.i, %bb.h ], [ 1, %bb.e ] ; 6 uses
  %i.bu = icmp eq i64 %i.bt, %i.bm
  br i1 %i.bu, label %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i.i, label %bb.f

.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i.i = load float, ptr %i.bn, align 4, !tbaa !76
  br label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bt
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !76 ; 4 uses
  %i.bx = getelementptr [4 x i8], ptr %i.as, i64 %i.bt
  %i.by = load float, ptr %i.bx, align 4, !tbaa !76 ; 5 uses
  %i.bz = getelementptr [8 x i8], ptr %i.au, i64 %i.bt
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !81 ; 3 uses
  %i.cb = fcmp ogt float %i.bw, %i.by
  br i1 %i.cb, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i.i:          ; preds = %bb.f
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bt
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !81
  %i.ce = fcmp oeq float %i.bw, %i.by
  %i.cf = icmp sgt i64 %i.cd, %i.ca
  %i.cg = and i1 %i.ce, %i.cf
  br i1 %i.cg, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i, label %bb.g

_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i:   ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i.i, %bb.f, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i.i
  %i.ch = phi float [ %.pre.i.i.i, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i.i ], [ %i.bw, %bb.f ], [ %i.bw, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i.i ] ; 3 uses
  %i.ci = fcmp ogt float %i.bo, %i.ch
  br i1 %i.ci, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i:        ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bt
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !81 ; 2 uses
  %i.cl = fcmp oeq float %i.bo, %i.ch
  %i.cm = icmp sgt i64 %i.bq, %i.ck
  %i.cn = and i1 %i.cl, %i.cm
  br i1 %i.cn, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, label %bb.h

bb.g:                                             ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i.i
  %i.co = fcmp ogt float %i.bo, %i.by
  br i1 %i.co, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i:        ; preds = %bb.g
  %i.cp = fcmp oeq float %i.bo, %i.by
  %i.cq = icmp sgt i64 %i.bq, %i.ca
  %i.cr = and i1 %i.cp, %i.cq
  br i1 %i.cr, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i
  %.sink79.i.i.i = phi float [ %i.ch, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i ], [ %i.by, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i ]
  %.sink.i.i.i = phi i64 [ %i.ck, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i ], [ %i.ca, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i ]
  %.1.i.i.i = phi i64 [ %i.bt, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i ], [ %i.bs, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.062.i.i.i
  store float %.sink79.i.i.i, ptr %i.cs, align 4, !tbaa !76
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %.062.i.i.i
  store i64 %.sink.i.i.i, ptr %i.ct, align 8, !tbaa !81
  %i.cu = shl i64 %.1.i.i.i, 1                    ; 3 uses
  %i.cv = or disjoint i64 %i.cu, 1
  %i.cw = icmp ugt i64 %i.cu, %i.bm
  br i1 %i.cw, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !109

_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i: ; preds = %bb.h, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i, %bb.g, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i
  %.0.lcssa.ph.i.i.i = phi i64 [ %.1.i.i.i, %bb.h ], [ %.062.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i ], [ %.062.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i ], [ %.062.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i ], [ %.062.i.i.i, %bb.g ]
  %.pre68.i.i.i = load float, ptr %i.bn, align 4, !tbaa !76
  %.pre69.i.i.i = load i64, ptr %i.bp, align 8, !tbaa !81
  br label %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i

_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i: ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, %bb.e
  %i.cx = phi i64 [ %i.bq, %bb.e ], [ %.pre69.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i ]
  %i.cy = phi float [ %i.bo, %bb.e ], [ %.pre68.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i ]
  %.0.lcssa.i.i.i = phi i64 [ 1, %bb.e ], [ %.0.lcssa.ph.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i ] ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.0.lcssa.i.i.i
  store float %i.cy, ptr %i.cz, align 4, !tbaa !76
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %.0.lcssa.i.i.i
  store i64 %i.cx, ptr %i.da, align 8, !tbaa !81
  %i.db = xor i64 %.041.i.i, -1
  %i.dc = add i64 %i.bh, %i.db                    ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.dc
  store float %i.bk, ptr %i.dd, align 4, !tbaa !76
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.dc
  store i64 %i.bl, ptr %i.de, align 8, !tbaa !81
  %.not.i.i = icmp ne i64 %i.bl, -1
  %i.df = zext i1 %.not.i.i to i64
  %spec.select.i.i = add i64 %.041.i.i, %i.df     ; 2 uses
  %i.dg = add nuw i64 %.03740.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.dg, %i.bh
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.e, !llvm.loop !110

._crit_edge.i.i:                                  ; preds = %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i, %._crit_edge101
  %.0.lcssa.i.i = phi i64 [ 0, %._crit_edge101 ], [ %spec.select.i.i, %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i ] ; 8 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bh
  %i.di = sub i64 0, %.0.lcssa.i.i                ; 2 uses
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %i.di
  %i.dk = shl i64 %.0.lcssa.i.i, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.as, ptr align 4 %i.dj, i64 %i.dk, i1 false)
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bh
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.di
  %i.dn = shl i64 %.0.lcssa.i.i, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.au, ptr align 8 %i.dm, i64 %i.dn, i1 false)
  %i.do = icmp ult i64 %.0.lcssa.i.i, %i.bh
  br i1 %i.do, label %.lr.ph44.i.i.preheader, label %_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit

.lr.ph44.i.i.preheader:                           ; preds = %._crit_edge.i.i
  %i.dp = sub nuw i64 %i.bh, %.0.lcssa.i.i        ; 3 uses
  %min.iters.check = icmp ult i64 %i.dp, 4
  br i1 %min.iters.check, label %.lr.ph44.i.i.preheader170, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph44.i.i.preheader
  %n.vec = and i64 %i.dp, -4                      ; 3 uses
  %i.dq = add i64 %.0.lcssa.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dr = add nuw i64 %.0.lcssa.i.i, %index       ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.dr ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.ds, align 4, !tbaa !76
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.dt, align 4, !tbaa !76
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.dr ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.du, align 8, !tbaa !81
  store <2 x i64> splat (i64 -1), ptr %i.dv, align 8, !tbaa !81
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dw = icmp eq i64 %index.next, %n.vec
  br i1 %i.dw, label %middle.block, label %vector.body, !llvm.loop !111

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dp, %n.vec
  br i1 %cmp.n, label %_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit, label %.lr.ph44.i.i.preheader170

.lr.ph44.i.i.preheader170:                        ; preds = %.lr.ph44.i.i.preheader, %middle.block
  %.242.i.i.ph = phi i64 [ %.0.lcssa.i.i, %.lr.ph44.i.i.preheader ], [ %i.dq, %middle.block ]
  br label %.lr.ph44.i.i

.lr.ph44.i.i:                                     ; preds = %.lr.ph44.i.i.preheader170, %.lr.ph44.i.i
  %.242.i.i = phi i64 [ %i.dz, %.lr.ph44.i.i ], [ %.242.i.i.ph, %.lr.ph44.i.i.preheader170 ] ; 3 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.242.i.i
  store float f0x7F7FFFFF, ptr %i.dx, align 4, !tbaa !76
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.242.i.i
  store i64 -1, ptr %i.dy, align 8, !tbaa !81
  %i.dz = add nuw i64 %.242.i.i, 1                ; 2 uses
  %exitcond47.not.i.i = icmp eq i64 %i.dz, %i.bh
  br i1 %exitcond47.not.i.i, label %_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit, label %.lr.ph44.i.i, !llvm.loop !112

bb.i:                                             ; preds = %.lr.ph100, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit
  %i.ea = phi i64 [ %i.bd, %.lr.ph100 ], [ %i.ka, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit ]
  %i.eb = phi i64 [ %i.af, %.lr.ph100 ], [ %i.kb, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit ] ; 2 uses
  %.07699 = phi i64 [ 0, %.lr.ph100 ], [ %i.kc, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit ] ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.07699
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !81 ; 6 uses
  %i.ee = icmp eq i64 %i.ed, -1
  br i1 %i.ee, label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ef = icmp sgt i64 %i.ed, -1
  br i1 %i.ef, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.eg = lshr i64 %i.ed, 32                      ; 6 uses
  %i.eh = load i64, ptr %i.y, align 8, !tbaa !123
  %i.ei = icmp ult i64 %i.eg, %i.eh
  br i1 %i.ei, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.ej = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %i.ej, ptr %12, align 8, !tbaa !28
  %i.ek = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i64 0, ptr %i.ek, align 8, !tbaa !29
  store i8 0, ptr %i.ej, align 8, !tbaa !26
  %i.el = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #18 ; 2 uses
  %i.em = icmp sgt i32 %i.el, 0
  br i1 %i.em, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.en = zext nneg i32 %i.el to i64              ; 2 uses
  %i.eo = add nuw nsw i64 %i.en, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %i.eo)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.m
  %i.ep = load ptr, ptr %12, align 8, !tbaa !25
  %i.eq = load i64, ptr %i.ek, align 8, !tbaa !29
  %i.er = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ep, i64 noundef %i.eq, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #18 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %i.en)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n, %bb.l
  %i.es = call ptr @__cxa_allocate_exception(i64 40) #18 ; 2 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.es, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5faiss11IndexIVFPQR18search_preassignedElPKflPKlS2_PfPlbPKNS_19SearchParametersIVFEPNS_13IndexIVFStatsE.omp_outlined, ptr noundef nonnull @.str.5, i32 noundef 180)
          to label %.invoke unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.k
  %i.et = and i64 %i.ed, 2147483648
  %i.eu = icmp eq i64 %i.et, 0
  br i1 %i.eu, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ev = and i64 %i.ed, 2147483647               ; 3 uses
  %i.ew = load ptr, ptr %i.z, align 8, !tbaa !86  ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !10
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = invoke noundef i64 %i.ez(ptr noundef nonnull align 8 dereferenceable(25) %i.ew, i64 noundef %i.eg)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.fb = icmp ult i64 %i.ev, %i.fa
  br i1 %i.fb, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.fc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store ptr %i.fc, ptr %13, align 8, !tbaa !28
  %i.fd = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store i64 0, ptr %i.fd, align 8, !tbaa !29
  store i8 0, ptr %i.fc, align 8, !tbaa !26
  %i.fe = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.6) #18 ; 2 uses
  %i.ff = icmp sgt i32 %i.fe, 0
  br i1 %i.ff, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.fg = zext nneg i32 %i.fe to i64              ; 2 uses
  %i.fh = add nuw nsw i64 %i.fg, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef %i.fh)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  %i.fi = load ptr, ptr %13, align 8, !tbaa !25
  %i.fj = load i64, ptr %i.fd, align 8, !tbaa !29
  %i.fk = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.fi, i64 noundef %i.fj, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.6) #18 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef %i.fg)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.u, %bb.s
  %i.fl = call ptr @__cxa_allocate_exception(i64 40) #18 ; 2 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.fl, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5faiss11IndexIVFPQR18search_preassignedElPKflPKlS2_PfPlbPKNS_19SearchParametersIVFEPNS_13IndexIVFStatsE.omp_outlined, ptr noundef nonnull @.str.5, i32 noundef 184)
          to label %.invoke unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.r
  %i.fm = load ptr, ptr %i.x, align 8, !tbaa !124 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !10
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 168
  %i.fp = load ptr, ptr %i.fo, align 8
  invoke void %i.fp(ptr noundef nonnull align 8 dereferenceable(36) %i.fm, ptr noundef %i.ak, ptr noundef nonnull %i.n, i64 noundef %i.eg)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.w
  %i.fq = load ptr, ptr %i.z, align 8, !tbaa !86  ; 4 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !10
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 64
  %i.ft = load ptr, ptr %i.fs, align 8
  %i.fu = invoke noundef ptr %i.ft(ptr noundef nonnull align 8 dereferenceable(25) %i.fq, i64 noundef %i.eg, i64 noundef %i.ev)
          to label %_ZN5faiss13InvertedLists11ScopedCodesC2EPKS0_mm.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !113 ; 2 uses

_ZN5faiss13InvertedLists11ScopedCodesC2EPKS0_mm.exit: ; preds = %bb.x
  invoke void @_ZNK5faiss16ProductQuantizer6decodeEPKhPf(ptr noundef nonnull align 8 dereferenceable(224) %i.aa, ptr noundef %i.fu, ptr noundef nonnull %i.q)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader:                                       ; preds = %_ZN5faiss13InvertedLists11ScopedCodesC2EPKS0_mm.exit
  %i.fv = load i32, ptr %i.g, align 8, !tbaa !34  ; 3 uses
  %i.fw = icmp sgt i32 %i.fv, 0
  br i1 %i.fw, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.fv to i64   ; 6 uses
  %min.iters.check147 = icmp ult i32 %i.fv, 8
  br i1 %min.iters.check147, label %.lr.ph.preheader169, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.fx = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %i.fy = getelementptr i8, ptr %i.q, i64 %i.fx
  %i.fz = getelementptr i8, ptr %i.n, i64 %i.fx
  %bound0 = icmp ult ptr %i.q, %i.fz
  %bound1 = icmp ult ptr %i.n, %i.fy
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader169, label %vector.ph148

vector.ph148:                                     ; preds = %vector.memcheck
  %n.vec149 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body150

vector.body150:                                   ; preds = %vector.body150, %vector.ph148
  %index151 = phi i64 [ 0, %vector.ph148 ], [ %index.next155, %vector.body150 ] ; 3 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index151 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %wide.load = load <4 x float>, ptr %i.ga, align 4, !tbaa !76, !alias.scope !125
  %wide.load152 = load <4 x float>, ptr %i.gb, align 4, !tbaa !76, !alias.scope !125
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index151 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16 ; 2 uses
  %wide.load153 = load <4 x float>, ptr %i.gc, align 4, !tbaa !76, !alias.scope !126, !noalias !125
  %wide.load154 = load <4 x float>, ptr %i.gd, align 4, !tbaa !76, !alias.scope !126, !noalias !125
  %i.ge = fsub <4 x float> %wide.load, %wide.load153
  %i.gf = fsub <4 x float> %wide.load152, %wide.load154
  store <4 x float> %i.ge, ptr %i.gc, align 4, !tbaa !76, !alias.scope !126, !noalias !125
  store <4 x float> %i.gf, ptr %i.gd, align 4, !tbaa !76, !alias.scope !126, !noalias !125
  %index.next155 = add nuw i64 %index151, 8       ; 2 uses
  %i.gg = icmp eq i64 %index.next155, %n.vec149
  br i1 %i.gg, label %middle.block156, label %vector.body150, !llvm.loop !117

middle.block156:                                  ; preds = %vector.body150
  %cmp.n157 = icmp eq i64 %n.vec149, %wide.trip.count
  br i1 %cmp.n157, label %._crit_edge, label %.lr.ph.preheader169

.lr.ph.preheader169:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block156
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec149, %middle.block156 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader169, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader169 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader169 ]
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.prol
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !76
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.prol ; 2 uses
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !76
  %i.gl = fsub float %i.gi, %i.gk
  store float %i.gl, ptr %i.gj, align 4, !tbaa !76
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !118

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader169
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader169 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.gm = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.gn = icmp ugt i64 %i.gm, -4
  br i1 %i.gn, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block156, %.preheader
  %i.go = load ptr, ptr %i.z, align 8, !tbaa !86  ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !10
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 56
  %i.gr = load ptr, ptr %i.gq, align 8
  %i.gs = invoke noundef i64 %i.gr(ptr noundef nonnull align 8 dereferenceable(25) %i.go, i64 noundef %i.eg, i64 noundef %i.ev)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !76
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv ; 2 uses
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !76
  %i.gx = fsub float %i.gu, %i.gw
  store float %i.gx, ptr %i.gv, align 4, !tbaa !76
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !76
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next ; 2 uses
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !76
  %i.hc = fsub float %i.gz, %i.hb
  store float %i.hc, ptr %i.ha, align 4, !tbaa !76
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next.1
  %i.he = load float, ptr %i.hd, align 4, !tbaa !76
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.1 ; 2 uses
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !76
  %i.hh = fsub float %i.he, %i.hg
  store float %i.hh, ptr %i.hf, align 4, !tbaa !76
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next.2
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !76
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.2 ; 2 uses
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !76
  %i.hm = fsub float %i.hj, %i.hl
  store float %i.hm, ptr %i.hk, align 4, !tbaa !76
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !119

bb.y:                                             ; preds = %._crit_edge
  %i.hn = icmp sgt i64 %i.gs, -1
  br i1 %i.hn, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ho = load i64, ptr %i.ab, align 8, !tbaa !35
  %i.hp = icmp slt i64 %i.gs, %i.ho
  br i1 %i.hp, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.hq = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr %i.hq, ptr %14, align 8, !tbaa !28
  %i.hr = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store i64 0, ptr %i.hr, align 8, !tbaa !29
  store i8 0, ptr %i.hq, align 8, !tbaa !26
  %i.hs = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.7) #18 ; 2 uses
  %i.ht = icmp sgt i32 %i.hs, 0
  br i1 %i.ht, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.hu = zext nneg i32 %i.hs to i64              ; 2 uses
  %i.hv = add nuw nsw i64 %i.hu, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef %i.hv)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %bb.ab
  %i.hw = load ptr, ptr %14, align 8, !tbaa !25
  %i.hx = load i64, ptr %i.hr, align 8, !tbaa !29
  %i.hy = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.hw, i64 noundef %i.hx, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.7) #18 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef %i.hu)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  %i.hz = call ptr @__cxa_allocate_exception(i64 40) #18 ; 2 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.hz, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5faiss11IndexIVFPQR18search_preassignedElPKflPKlS2_PfPlbPKNS_19SearchParametersIVFEPNS_13IndexIVFStatsE.omp_outlined, ptr noundef nonnull @.str.5, i32 noundef 198)
          to label %.invoke unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.invoke:                                          ; preds = %bb.ad, %bb.v, %bb.o
  %15 = phi ptr [ %i.fl, %bb.v ], [ %i.es, %bb.o ], [ %i.hz, %bb.ad ]
  invoke void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #27
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.ae:                                            ; preds = %bb.z
  %i.ia = load i64, ptr %i.ae, align 8, !tbaa !37
  %i.ib = mul i64 %i.ia, %i.gs
  %i.ic = load ptr, ptr %i.ad, align 8, !tbaa !14
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ib
  invoke void @_ZNK5faiss16ProductQuantizer6decodeEPKhPf(ptr noundef nonnull align 8 dereferenceable(224) %i.ac, ptr noundef nonnull %i.id, ptr noundef nonnull %i.n)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %bb.ae
  %i.ie = load i32, ptr %i.g, align 8, !tbaa !34
  %i.if = sext i32 %i.ie to i64
  %i.ig = invoke noundef float @_ZN5faiss10fvec_L2sqrEPKfS1_m(ptr noundef nonnull %i.n, ptr noundef nonnull %i.q, i64 noundef %i.if)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

bb.ag:                                            ; preds = %bb.af
  %i.ih = load float, ptr %i.as, align 4, !tbaa !76
  %i.ii = fcmp olt float %i.ig, %i.ih
  br i1 %i.ii, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.ij = load i8, ptr %10, align 1, !tbaa !84, !range !38, !noundef !39
  %i.ik = trunc nuw i8 %i.ij to i1
  %i.il = select i1 %i.ik, i64 %i.ed, i64 %i.gs   ; 3 uses
  %i.im = load i64, ptr %8, align 8, !tbaa !81    ; 4 uses
  %i.in = icmp ult i64 %i.im, 2
  br i1 %i.in, label %_ZN5faiss19maxheap_replace_topIfEEvmPT_PlS1_l.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ah
  %.phi.trans.insert.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.im
  br label %.lr.ph.i.i88

.lr.ph.i.i88:                                     ; preds = %bb.ak, %.lr.ph.preheader.i.i
  %i.io = phi i64 [ %i.jr, %bb.ak ], [ 3, %.lr.ph.preheader.i.i ]
  %i.ip = phi i64 [ %i.jq, %bb.ak ], [ 2, %.lr.ph.preheader.i.i ] ; 7 uses
  %.056.i.i = phi i64 [ %.1.i.i, %bb.ak ], [ 1, %.lr.ph.preheader.i.i ] ; 6 uses
  %i.iq = icmp eq i64 %i.ip, %i.im
  br i1 %i.iq, label %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i, label %bb.ai

.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i: ; preds = %.lr.ph.i.i88
  %.pre.i.i = load float, ptr %.phi.trans.insert.i.i, align 4, !tbaa !76
  br label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i

bb.ai:                                            ; preds = %.lr.ph.i.i88
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.ip
  %i.is = load float, ptr %i.ir, align 4, !tbaa !76 ; 4 uses
  %i.it = getelementptr [4 x i8], ptr %i.as, i64 %i.ip
  %i.iu = load float, ptr %i.it, align 4, !tbaa !76 ; 5 uses
  %i.iv = getelementptr [8 x i8], ptr %i.au, i64 %i.ip
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !81 ; 3 uses
  %i.ix = fcmp ogt float %i.is, %i.iu
  br i1 %i.ix, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i:            ; preds = %bb.ai
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.ip
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !81
  %i.ja = fcmp oeq float %i.is, %i.iu
  %i.jb = icmp sgt i64 %i.iz, %i.iw
  %i.jc = and i1 %i.ja, %i.jb
  br i1 %i.jc, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i, label %bb.aj

_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i:     ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i, %bb.ai, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i
  %i.jd = phi float [ %.pre.i.i, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i ], [ %i.is, %bb.ai ], [ %i.is, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i ] ; 3 uses
  %i.je = fcmp ogt float %i.ig, %i.jd
  br i1 %i.je, label %_ZN5faiss19maxheap_replace_topIfEEvmPT_PlS1_l.exit, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i:          ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.ip
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !81 ; 2 uses
  %i.jh = fcmp oeq float %i.ig, %i.jd
  %i.ji = icmp sgt i64 %i.il, %i.jg
  %i.jj = and i1 %i.jh, %i.ji
  br i1 %i.jj, label %_ZN5faiss19maxheap_replace_topIfEEvmPT_PlS1_l.exit, label %bb.ak

bb.aj:                                            ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i
  %i.jk = fcmp ogt float %i.ig, %i.iu
  br i1 %i.jk, label %_ZN5faiss19maxheap_replace_topIfEEvmPT_PlS1_l.exit, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i:          ; preds = %bb.aj
  %i.jl = fcmp oeq float %i.ig, %i.iu
  %i.jm = icmp sgt i64 %i.il, %i.iw
  %i.jn = and i1 %i.jl, %i.jm
  br i1 %i.jn, label %_ZN5faiss19maxheap_replace_topIfEEvmPT_PlS1_l.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i
  %.sink71.i.i = phi float [ %i.jd, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i ], [ %i.iu, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i ]
  %.sink.i.i = phi i64 [ %i.jg, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i ], [ %i.iw, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i ]
  %.1.i.i = phi i64 [ %i.ip, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i ], [ %i.io, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i ] ; 3 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %.056.i.i
  store float %.sink71.i.i, ptr %i.jo, align 4, !tbaa !76
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.056.i.i
  store i64 %.sink.i.i, ptr %i.jp, align 8, !tbaa !81
  %i.jq = shl i64 %.1.i.i, 1                      ; 3 uses
  %i.jr = or disjoint i64 %i.jq, 1
  %i.js = icmp ugt i64 %i.jq, %i.im
  br i1 %i.js, label %_ZN5faiss19maxheap_replace_topIfEEvmPT_PlS1_l.exit, label %.lr.ph.i.i88, !llvm.loop !120

_ZN5faiss19maxheap_replace_topIfEEvmPT_PlS1_l.exit: ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i, %bb.aj, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i, %bb.ak, %bb.ah
  %.0.lcssa.i.i89 = phi i64 [ 1, %bb.ah ], [ %.056.i.i, %bb.aj ], [ %.056.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i ], [ %.056.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i ], [ %.056.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i ], [ %.1.i.i, %bb.ak ] ; 2 uses
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %.0.lcssa.i.i89
  store float %i.ig, ptr %i.jt, align 4, !tbaa !76
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.0.lcssa.i.i89
  store i64 %i.il, ptr %i.ju, align 8, !tbaa !81
  br label %bb.al

bb.al:                                            ; preds = %_ZN5faiss19maxheap_replace_topIfEEvmPT_PlS1_l.exit, %bb.ag
  %16 = add i64 %i.eb, 1                          ; 2 uses
  store i64 %16, ptr %i.a, align 8, !tbaa !81
  %i.jv = load ptr, ptr %i.fq, align 8, !tbaa !10
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 40
  %i.jx = load ptr, ptr %i.jw, align 8
  invoke void %i.jx(ptr noundef nonnull align 8 dereferenceable(25) %i.fq, i64 noundef %i.eg, ptr noundef %i.fu)
          to label %._ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit_crit_edge unwind label %bb.am

._ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit_crit_edge: ; preds = %bb.al
  %.pre110 = load i64, ptr %6, align 8, !tbaa !81
  br label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit

bb.am:                                            ; preds = %bb.al
  %i.jy = landingpad { ptr, i32 }
          catch ptr null
  %i.jz = extractvalue { ptr, i32 } %i.jy, 0
  call void @__clang_call_terminate(ptr %i.jz) #29
  unreachable

_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit:   ; preds = %._ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit_crit_edge, %bb.i
  %i.ka = phi i64 [ %.pre110, %._ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit_crit_edge ], [ %i.ea, %bb.i ] ; 2 uses
  %i.kb = phi i64 [ %16, %._ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit_crit_edge ], [ %i.eb, %bb.i ] ; 2 uses
  %i.kc = add nuw i64 %.07699, 1                  ; 2 uses
  %i.kd = icmp ult i64 %i.kc, %i.ka
  br i1 %i.kd, label %bb.i, label %._crit_edge101, !llvm.loop !121

_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit:       ; preds = %.lr.ph44.i.i, %middle.block, %._crit_edge.i.i
  %i.ke = add nsw i64 %.077103, 1
  %i.kf = load i64, ptr %i.c, align 8, !tbaa !81
  %.not.not = icmp slt i64 %.077103, %i.kf
  br i1 %.not.not, label %bb.d, label %._crit_edge106

._crit_edge106:                                   ; preds = %_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit, %bb.c
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %.pre111)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit: ; preds = %._crit_edge106, %bb.b
  call void @__kmpc_barrier(ptr nonnull @2, i32 %.pre111)
  call void @_ZdaPv(ptr noundef nonnull %i.n) #26
  store ptr %i.a, ptr %i.f, align 8
  %i.kg = call i32 @__kmpc_reduce_nowait(ptr nonnull @3, i32 %.pre111, i32 1, i64 8, ptr nonnull %i.f, ptr nonnull @_ZNK5faiss11IndexIVFPQR18search_preassignedElPKflPKlS2_PfPlbPKNS_19SearchParametersIVFEPNS_13IndexIVFStatsE.omp_outlined.omp.reduction.reduction_func, ptr nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %i.kg, label %bb.ap [
    i32 1, label %bb.an
    i32 2, label %bb.ao
  ]

bb.an:                                            ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit
  %i.kh = load i64, ptr %11, align 8, !tbaa !81
  %i.ki = load i64, ptr %i.a, align 8, !tbaa !81
  %i.kj = add i64 %i.ki, %i.kh
  store i64 %i.kj, ptr %11, align 8, !tbaa !81
  call void @__kmpc_end_reduce_nowait(ptr nonnull @3, i32 %.pre111, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %bb.ap

bb.ao:                                            ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit
  %i.kk = load i64, ptr %i.a, align 8, !tbaa !81
  %i.kl = atomicrmw add ptr %11, i64 %i.kk monotonic, align 8 ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.x, %bb.af, %bb.ae, %._crit_edge, %_ZN5faiss13InvertedLists11ScopedCodesC2EPKS0_mm.exit, %bb.w, %bb.q, %.invoke, %bb.ad, %bb.ac, %bb.ab, %bb.v, %bb.u, %bb.t, %bb.o, %bb.n, %bb.m, %bb.a
  %lpad.loopexit.split-lp171 = landingpad { ptr, i32 }
          catch ptr null
  %i.km = extractvalue { ptr, i32 } %lpad.loopexit.split-lp171, 0
  call void @__clang_call_terminate(ptr %i.km) #29
  unreachable
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !29   ; 7 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %1, %i.b                     ; 4 uses
  %i.e = sub i64 9223372036854775807, %i.b
  %i.f = icmp ult i64 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #27
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.k = load i64, ptr %i.h, align 8, !tbaa !26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %1, %i.l
  br i1 %.not.i.i.i, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.b, i64 noundef 0, ptr noundef null, i64 noundef %i.d)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.m = phi ptr [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ], [ %.pre.i, %bb.d ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.b ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.d, 1
  br i1 %cond.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i
  store i8 0, ptr %i.n, align 1, !tbaa !26
  br label %.sink.split.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.n, i8 0, i64 %i.d, i1 false)
  br label %.sink.split.i

bb.g:                                             ; preds = %bb.a
  %i.o = icmp ult i64 %1, %i.b
  br i1 %i.o, label %.sink.split.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit

.sink.split.i:                                    ; preds = %bb.g, %bb.f, %bb.e
  store i64 %1, ptr %i.a, align 8, !tbaa !29
  %i.p = load ptr, ptr %0, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %1
  store i8 0, ptr %i.q, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit: ; preds = %bb.g, %.sink.split.i
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss14FaissExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5faiss14FaissExceptionE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !26
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #19

declare noundef float @_ZN5faiss10fvec_L2sqrEPKfS1_m(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #18

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(ptr, i32) local_unnamed_addr #20

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZNK5faiss11IndexIVFPQR18search_preassignedElPKflPKlS2_PfPlbPKNS_19SearchParametersIVFEPNS_13IndexIVFStatsE.omp_outlined.omp.reduction.reduction_func(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #21 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !81
  %i.d = load i64, ptr %i.a, align 8, !tbaa !81
  %i.e = add i64 %i.d, %i.c
  store i64 %i.e, ptr %i.b, align 8, !tbaa !81
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_reduce_nowait(ptr, i32, i32, i64, ptr, ptr, ptr) local_unnamed_addr #20

; Function Attrs: convergent nounwind
declare void @__kmpc_end_reduce_nowait(ptr, i32, ptr) local_unnamed_addr #20

; Function Attrs: nounwind
declare !callback !89 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !29   ; 4 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !tbaa !26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ] ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #27
  unreachable

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ %spec.store.select.i, %bb.e ], [ %i.f, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !90

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.f
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #28 ; 5 uses
  %.not = icmp eq i64 %1, 0
end_hunk_0
