Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/IndexRaBitQFastScan?download=true
inline.NumInlined: 537
inline.NumDeleted: 277
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNSt6vectorIfSaIfEEaSERKS1_:bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.i = load ptr, ptr %0, align 8, !tbaa !16     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i, !prof !76

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 4
  br i1 %i.p, label %bb.e, label %bb.f, !prof !77

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEPfmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 4
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEPfmT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load float, ptr %i.c, align 4, !tbaa !27
  store float %i.r, ptr %i.o, align 4, !tbaa !27
  br label %_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEPfmT_S9_.exit

_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEPfmT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.s = load ptr, ptr %0, align 8, !tbaa !16     ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEPfmT_S9_.exit
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #25
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit: ; preds = %_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEPfmT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.x, ptr %i.g, align 8, !tbaa !17
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !31   ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.k                     ; 5 uses
  %.not24 = icmp ult i64 %i.ab, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp sgt i64 %i.f, 4
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !77

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = icmp eq i64 %i.f, 4
  br i1 %i.ad, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = load float, ptr %i.c, align 4, !tbaa !27
  store float %i.ae, ptr %i.i, align 4, !tbaa !27
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.af = icmp sgt i64 %i.ab, 4
  br i1 %i.af, label %bb.o, label %bb.p, !prof !77

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.ab, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !16
  %.pre25 = load ptr, ptr %i.y, align 8, !tbaa !31 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !16
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !31
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPfS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ag = icmp eq i64 %i.ab, 4
  br i1 %i.ag, label %bb.q, label %_ZSt4copyIPfS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ah = load float, ptr %i.c, align 4, !tbaa !27
  store float %i.ah, ptr %i.i, align 4, !tbaa !27
  br label %_ZSt4copyIPfS0_ET0_T_S2_S1_.exit

_ZSt4copyIPfS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.ab, %bb.p ], [ 4, %bb.q ]
  %i.ai = phi ptr [ %.pre25, %bb.o ], [ %i.z, %bb.p ], [ %i.z, %bb.q ] ; 2 uses
  %i.aj = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.pre-phi32 ; 3 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %.pre-phi34, %i.al              ; 3 uses
  %i.an = icmp sgt i64 %i.am, 4
  br i1 %i.an, label %bb.r, label %bb.s, !prof !77

bb.r:                                             ; preds = %_ZSt4copyIPfS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ai, ptr align 4 %i.ak, i64 %i.am, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPfS0_ET0_T_S2_S1_.exit
  %i.ao = icmp eq i64 %i.am, 4
  br i1 %i.ao, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.ap = load float, ptr %i.ak, align 4, !tbaa !27
  store float %i.ap, ptr %i.ai, align 4, !tbaa !27
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit
  %i.aq = load ptr, ptr %0, align 8, !tbaa !16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !31
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

declare void @_ZN5faiss12rabitq_utils16set_bit_fastscanEPhm(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN5faiss20pq4_pack_codes_rangeEPKhmmmmmPhmm(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss9QuantizerD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss9QuantizerD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #29
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #16

declare void @_ZN5faiss14RaBitQuantizer5trainEmPKf(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #8

declare void @_ZN5faiss17InterruptCallback5checkEv() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #17

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZNK5faiss19IndexRaBitQFastScan13compute_codesEPhlPKf.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9) #18 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"struct.faiss::rabitq_utils::ExtraBitsFactors", align 8 ; 5 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !68     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 0, ptr %i.a, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 %i.g, ptr %i.b, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i64 1, ptr %i.c, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !72
  %i.h = load i32, ptr %0, align 4, !tbaa !72     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !68
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !68
  %i.k = load i64, ptr %i.a, align 8, !tbaa !68   ; 2 uses
  %.not56 = icmp sgt i64 %i.k, %i.j
  br i1 %.not56, label %._crit_edge60, label %.lr.ph59

.lr.ph59:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 176
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph59, %_ZNSt6vectorIfSaIfEED2Ev.exit
  %.057 = phi i64 [ %i.k, %.lr.ph59 ], [ %i.ex, %_ZNSt6vectorIfSaIfEED2Ev.exit ] ; 6 uses
  %i.p = shl i64 %.057, 2
  %i.q = shl i64 %.057, 2
  %i.r = load ptr, ptr %3, align 8, !tbaa !44
  %i.s = load i64, ptr %i.l, align 8, !tbaa !43
  %i.t = mul i64 %i.s, %.057
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.t ; 4 uses
  %i.v = load ptr, ptr %5, align 8, !tbaa !69     ; 2 uses
  %i.w = ptrtoaddr ptr %i.v to i64                ; 2 uses
  %i.x = load i32, ptr %i.m, align 8, !tbaa !26   ; 3 uses
  %i.y = sext i32 %i.x to i64                     ; 6 uses
  %i.z = mul nsw i64 %.057, %i.y
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.z ; 13 uses
  %i.ab = icmp slt i32 %i.x, 0
  br i1 %i.ab, label %bb.d, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #26
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.c
  %.not.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ac = shl nuw nsw i64 %i.y, 2
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #27
          to label %.noexc44 unwind label %.loopexit.split-lp.loopexit ; 5 uses

.noexc44:                                         ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.y ; 2 uses
  store float 0.000000e+00, ptr %i.ad, align 4, !tbaa !27
  %i.af = add nsw i64 %i.y, -1                    ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc44
  %i.ah = getelementptr i8, ptr %i.ad, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.af, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ah, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !27
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc44, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.10.0 = phi ptr [ %i.ae, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ae, %.noexc44 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.045.0 = phi ptr [ %i.ad, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ad, %.noexc44 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 18 uses
  %.sroa.045.078 = ptrtoaddr ptr %.sroa.045.0 to i64 ; 3 uses
  %i.ai = load i32, ptr %i.m, align 8, !tbaa !26  ; 6 uses
  %i.aj = sext i32 %i.ai to i64                   ; 10 uses
  %.not61 = icmp eq i32 %i.ai, 0
  br i1 %.not61, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %i.ak = load ptr, ptr %6, align 8, !tbaa !69    ; 8 uses
  %i.al = ptrtoaddr ptr %i.ak to i64
  %.not43 = icmp eq ptr %i.ak, null
  %min.iters.check = icmp ult i32 %i.ai, 8        ; 2 uses
  br i1 %.not43, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  br i1 %min.iters.check, label %.lr.ph.split.preheader98, label %vector.memcheck80

vector.memcheck80:                                ; preds = %.lr.ph.split.preheader
  %i.am = sub i64 %i.al, %.sroa.045.078
  %diff.check81 = icmp ugt i64 %i.am, -32
  %i.an = mul i64 %i.p, %i.y
  %i.ao = add i64 %i.an, %i.w
  %i.ap = sub i64 %i.ao, %.sroa.045.078
  %diff.check82 = icmp ugt i64 %i.ap, -32
  %conflict.rdx = or i1 %diff.check81, %diff.check82
  br i1 %conflict.rdx, label %.lr.ph.split.preheader98, label %vector.ph85

vector.ph85:                                      ; preds = %vector.memcheck80
  %n.vec86 = and i64 %i.aj, -8                    ; 3 uses
  br label %vector.body87

vector.body87:                                    ; preds = %vector.body87, %vector.ph85
  %index88 = phi i64 [ 0, %vector.ph85 ], [ %index.next93, %vector.body87 ] ; 4 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index88 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load89 = load <4 x float>, ptr %i.aq, align 4, !tbaa !27
  %wide.load90 = load <4 x float>, ptr %i.ar, align 4, !tbaa !27
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index88 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load91 = load <4 x float>, ptr %i.as, align 4, !tbaa !27
  %wide.load92 = load <4 x float>, ptr %i.at, align 4, !tbaa !27
  %i.au = fsub <4 x float> %wide.load91, %wide.load89
  %i.av = fsub <4 x float> %wide.load92, %wide.load90
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.045.0, i64 %index88 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store <4 x float> %i.au, ptr %i.aw, align 4, !tbaa !27
  store <4 x float> %i.av, ptr %i.ax, align 4, !tbaa !27
  %index.next93 = add nuw i64 %index88, 8         ; 2 uses
  %i.ay = icmp eq i64 %index.next93, %n.vec86
  br i1 %i.ay, label %middle.block94, label %vector.body87, !llvm.loop !134

middle.block94:                                   ; preds = %vector.body87
  %cmp.n95 = icmp eq i64 %n.vec86, %i.aj
  br i1 %cmp.n95, label %.lr.ph55.preheader, label %.lr.ph.split.preheader98

.lr.ph.split.preheader98:                         ; preds = %vector.memcheck80, %.lr.ph.split.preheader, %middle.block94
  %.04053.ph = phi i64 [ 0, %vector.memcheck80 ], [ 0, %.lr.ph.split.preheader ], [ %n.vec86, %middle.block94 ] ; 3 uses
  %xtraiter = and i64 %i.aj, 3
  %i.az = and i32 %i.ai, 3
  %lcmp.mod.not = icmp eq i32 %i.az, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol

.lr.ph.split.prol:                                ; preds = %.lr.ph.split.preheader98, %.lr.ph.split.prol
  %.04053.prol = phi i64 [ %i.bg, %.lr.ph.split.prol ], [ %.04053.ph, %.lr.ph.split.preheader98 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.prol ], [ 0, %.lr.ph.split.preheader98 ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.04053.prol
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !27
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.04053.prol
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !27
  %i.be = fsub float %i.bd, %i.bb
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.045.0, i64 %.04053.prol
  store float %i.be, ptr %i.bf, align 4, !tbaa !27
  %i.bg = add nuw i64 %.04053.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol, !llvm.loop !135

.lr.ph.split.prol.loopexit:                       ; preds = %.lr.ph.split.prol, %.lr.ph.split.preheader98
  %.04053.unr = phi i64 [ %.04053.ph, %.lr.ph.split.preheader98 ], [ %i.bg, %.lr.ph.split.prol ]
  %i.bh = sub nsw i64 %.04053.ph, %i.aj
  %i.bi = icmp ugt i64 %i.bh, -4
  br i1 %i.bi, label %.lr.ph55.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  br i1 %min.iters.check, label %.lr.ph.split.us.preheader97, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.us.preheader
  %i.bj = mul i64 %i.q, %i.y
  %i.bk = add i64 %i.bj, %i.w
  %i.bl = sub i64 %i.bk, %.sroa.045.078
  %diff.check = icmp ugt i64 %i.bl, -32
  br i1 %diff.check, label %.lr.ph.split.us.preheader97, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aj, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load = load <4 x float>, ptr %i.bm, align 4, !tbaa !27
  %wide.load79 = load <4 x float>, ptr %i.bn, align 4, !tbaa !27
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.045.0, i64 %index ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store <4 x float> %wide.load, ptr %i.bo, align 4, !tbaa !27
  store <4 x float> %wide.load79, ptr %i.bp, align 4, !tbaa !27
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !136

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.aj
  br i1 %cmp.n, label %.lr.ph55.preheader, label %.lr.ph.split.us.preheader97

.lr.ph.split.us.preheader97:                      ; preds = %vector.memcheck, %.lr.ph.split.us.preheader, %middle.block
  %.04053.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.us.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter101 = and i64 %i.aj, 3
  %i.br = and i32 %i.ai, 3
  %lcmp.mod102.not = icmp eq i32 %i.br, 0
  br i1 %lcmp.mod102.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader97, %.lr.ph.split.us.prol
  %.04053.us.prol = phi i64 [ %i.bv, %.lr.ph.split.us.prol ], [ %.04053.us.ph, %.lr.ph.split.us.preheader97 ] ; 3 uses
  %prol.iter103 = phi i64 [ %prol.iter103.next, %.lr.ph.split.us.prol ], [ 0, %.lr.ph.split.us.preheader97 ]
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.04053.us.prol
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !27
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.045.0, i64 %.04053.us.prol
  store float %i.bt, ptr %i.bu, align 4, !tbaa !27
  %i.bv = add nuw i64 %.04053.us.prol, 1          ; 2 uses
  %prol.iter103.next = add i64 %prol.iter103, 1   ; 2 uses
  %prol.iter103.cmp.not = icmp eq i64 %prol.iter103.next, %xtraiter101
  br i1 %prol.iter103.cmp.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol, !llvm.loop !137

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader97
  %.04053.us.unr = phi i64 [ %.04053.us.ph, %.lr.ph.split.us.preheader97 ], [ %i.bv, %.lr.ph.split.us.prol ]
  %i.bw = sub nsw i64 %.04053.us.ph, %i.aj
  %i.bx = icmp ugt i64 %i.bw, -4
  br i1 %i.bx, label %.lr.ph55.preheader, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us
  %.04053.us = phi i64 [ %i.cn, %.lr.ph.split.us ], [ %.04053.us.unr, %.lr.ph.split.us.prol.loopexit ] ; 6 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.04053.us
  %i.bz = load float, ptr %i.by, align 4, !tbaa !27
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.sroa.045.0, i64 %.04053.us
  store float %i.bz, ptr %i.ca, align 4, !tbaa !27
  %i.cb = add nuw i64 %.04053.us, 1               ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.cb
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !27
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.sroa.045.0, i64 %i.cb
  store float %i.cd, ptr %i.ce, align 4, !tbaa !27
  %i.cf = add nuw i64 %.04053.us, 2               ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.cf
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !27
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.sroa.045.0, i64 %i.cf
  store float %i.ch, ptr %i.ci, align 4, !tbaa !27
  %i.cj = add nuw i64 %.04053.us, 3               ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.cj
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !27
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.045.0, i64 %i.cj
  store float %i.cl, ptr %i.cm, align 4, !tbaa !27
  %i.cn = add nuw i64 %.04053.us, 4               ; 2 uses
  %exitcond65.not.3 = icmp eq i64 %i.cn, %i.aj
  br i1 %exitcond65.not.3, label %.lr.ph55.preheader, label %.lr.ph.split.us, !llvm.loop !138

.lr.ph55.preheader:                               ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split, %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us, %middle.block94, %middle.block
  br label %.lr.ph55

.lr.ph.split:                                     ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split
  %.04053 = phi i64 [ %i.dp, %.lr.ph.split ], [ %.04053.unr, %.lr.ph.split.prol.loopexit ] ; 7 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.04053
  %i.cp = load float, ptr %i.co, align 4, !tbaa !27
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.04053
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !27
  %i.cs = fsub float %i.cr, %i.cp
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.sroa.045.0, i64 %.04053
  store float %i.cs, ptr %i.ct, align 4, !tbaa !27
  %i.cu = add nuw i64 %.04053, 1                  ; 3 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.cu
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !27
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.cu
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !27
  %i.cz = fsub float %i.cy, %i.cw
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.sroa.045.0, i64 %i.cu
  store float %i.cz, ptr %i.da, align 4, !tbaa !27
  %i.db = add nuw i64 %.04053, 2                  ; 3 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.db
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !27
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.db
  %i.df = load float, ptr %i.de, align 4, !tbaa !27
  %i.dg = fsub float %i.df, %i.dd
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.045.0, i64 %i.db
  store float %i.dg, ptr %i.dh, align 4, !tbaa !27
  %i.di = add nuw i64 %.04053, 3                  ; 3 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.di
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !27
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.di
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !27
  %i.dn = fsub float %i.dm, %i.dk
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.sroa.045.0, i64 %i.di
  store float %i.dn, ptr %i.do, align 4, !tbaa !27
  %i.dp = add nuw i64 %.04053, 4                  ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dp, %i.aj
  br i1 %exitcond.not.3, label %.lr.ph55.preheader, label %.lr.ph.split, !llvm.loop !139

._crit_edge:                                      ; preds = %bb.g, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %.lcssa = phi i64 [ 0, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit ], [ %i.eb, %bb.g ]
  %i.dq = load ptr, ptr %6, align 8, !tbaa !69
  %i.dr = load i32, ptr %i.n, align 4, !tbaa !67
  %i.ds = load i64, ptr %7, align 8, !tbaa !68
  %i.dt = icmp ne i64 %i.ds, 0
  %i.du = invoke { <2 x float>, float } @_ZN5faiss12rabitq_utils22compute_vector_factorsEPKfmS2_NS_10MetricTypeEb(ptr noundef %i.aa, i64 noundef %.lcssa, ptr noundef %i.dq, i32 noundef %i.dr, i1 noundef zeroext %i.dt)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit ; 2 uses

.lr.ph55:                                         ; preds = %.lr.ph55.preheader, %bb.g
  %i.dv = phi i32 [ %i.dz, %bb.g ], [ %i.ai, %.lr.ph55.preheader ]
  %.03954 = phi i64 [ %i.ea, %bb.g ], [ 0, %.lr.ph55.preheader ] ; 3 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.045.0, i64 %.03954
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !27
  %i.dy = fcmp ogt float %i.dx, 0.000000e+00
  br i1 %i.dy, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph55
  invoke void @_ZN5faiss12rabitq_utils16set_bit_fastscanEPhm(ptr noundef %i.u, i64 noundef %.03954)
          to label %._crit_edge66 unwind label %.loopexit

._crit_edge66:                                    ; preds = %bb.f
  %.pre = load i32, ptr %i.m, align 8, !tbaa !26
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge66, %.lr.ph55
  %i.dz = phi i32 [ %.pre, %._crit_edge66 ], [ %i.dv, %.lr.ph55 ] ; 2 uses
  %i.ea = add nuw i64 %.03954, 1                  ; 2 uses
  %i.eb = sext i32 %i.dz to i64                   ; 2 uses
  %i.ec = icmp ult i64 %i.ea, %i.eb
  br i1 %i.ec, label %.lr.ph55, label %._crit_edge, !llvm.loop !140

bb.h:                                             ; preds = %._crit_edge
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.du, 0 ; 2 uses
  %i.ed = load i64, ptr %7, align 8, !tbaa !68
  %i.ee = icmp eq i64 %i.ed, 0
  br i1 %i.ee, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ef = load i64, ptr %8, align 8, !tbaa !68
  %i.eg = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ef
  store <2 x float> %.fca.0.extract, ptr %i.eg, align 1
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.du, 1
  %i.eh = load i64, ptr %8, align 8, !tbaa !68
  %i.ei = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.eh ; 2 uses
  store <2 x float> %.fca.0.extract, ptr %i.ei, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store float %.fca.1.extract, ptr %.sroa.5.0..sroa_idx, align 1
  %i.ej = load i64, ptr %8, align 8, !tbaa !68
  %i.ek = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  store <2 x float> zeroinitializer, ptr %10, align 8, !tbaa !27
  %i.em = load i32, ptr %i.m, align 8, !tbaa !26
  %i.en = sext i32 %i.em to i64
  %i.eo = load i64, ptr %i.o, align 8, !tbaa !51
  %i.ep = load i32, ptr %i.n, align 4, !tbaa !67
  %i.eq = load ptr, ptr %6, align 8, !tbaa !69
  invoke void @_ZN5faiss15rabitq_multibit16quantize_ex_bitsEPKfmmPhRNS_12rabitq_utils16ExtraBitsFactorsENS_10MetricTypeES2_(ptr noundef %.sroa.045.0, i64 noundef %i.en, i64 noundef %i.eo, ptr noundef nonnull %i.el, ptr noundef nonnull align 1 dereferenceable(8) %10, i32 noundef %i.ep, ptr noundef %i.eq)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit

bb.k:                                             ; preds = %bb.j
  %i.er = load i64, ptr %9, align 8, !tbaa !68
  %i.es = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.er
  %i.et = load i64, ptr %10, align 8
  store i64 %i.et, ptr %i.es, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.not.i.i.i = icmp eq ptr %.sroa.045.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.eu = ptrtoint ptr %.sroa.10.0 to i64
  %i.ev = ptrtoint ptr %.sroa.045.0 to i64
  %i.ew = sub i64 %i.eu, %i.ev
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.045.0, i64 noundef %i.ew) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.l, %bb.m
  %i.ex = add i64 %.057, 1
  %i.ey = load i64, ptr %i.b, align 8, !tbaa !68
  %.not.not = icmp slt i64 %.057, %i.ey
  br i1 %.not.not, label %bb.c, label %._crit_edge60

._crit_edge60:                                    ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge60, %bb.a
  ret void

.loopexit:                                        ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.e, %bb.j, %._crit_edge
  %lpad.loopexit49 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.d
  %lpad.loopexit.split-lp50 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit49, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp50, %.loopexit.split-lp.loopexit.split-lp ]
  %i.ez = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.ez) #29
  unreachable
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #19

declare { <2 x float>, float } @_ZN5faiss12rabitq_utils22compute_vector_factorsEPKfmS2_NS_10MetricTypeEb(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN5faiss15rabitq_multibit16quantize_ex_bitsEPKfmmPhRNS_12rabitq_utils16ExtraBitsFactorsENS_10MetricTypeES2_(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef nonnull align 1 dereferenceable(8), i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #19

; Function Attrs: nounwind
declare !callback !79 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #19

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #19

; Function Attrs: nounwind
declare void @__kmpc_serialized_parallel(ptr, i32) local_unnamed_addr #19

; Function Attrs: nounwind
declare void @__kmpc_end_serialized_parallel(ptr, i32) local_unnamed_addr #19

declare void @_ZN5faiss12rabitq_utils21compute_query_factorsEPKfmS2_hbNS_10MetricTypeERSt6vectorIfSaIfEERS4_IhSaIhEE(ptr dead_on_unwind writable sret(%"struct.faiss::rabitq_utils::QueryFactorsData") align 8, ptr noundef, i64 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext, i32 noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #20

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZNK5faiss19IndexRaBitQFastScan9sa_decodeElPKhPf.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8) #21 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !68     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 0, ptr %i.a, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 %i.g, ptr %i.b, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i64 1, ptr %i.c, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !72
  %i.h = load i32, ptr %0, align 4, !tbaa !72     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !68
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 3 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !68
  %i.k = load i64, ptr %i.a, align 8, !tbaa !68   ; 2 uses
  %.not32 = icmp sgt i64 %i.k, %i.j
  br i1 %.not32, label %._crit_edge36, label %.lr.ph35

.lr.ph35:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.pre = load i32, ptr %i.m, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph35, %._crit_edge
  %i.n = phi i64 [ %i.j, %.lr.ph35 ], [ %i.w, %._crit_edge ]
  %i.o = phi i32 [ %.pre, %.lr.ph35 ], [ %i.x, %._crit_edge ]
  %.02933 = phi i64 [ %i.k, %.lr.ph35 ], [ %i.y, %._crit_edge ] ; 4 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !44
  %i.q = load i64, ptr %i.l, align 8, !tbaa !43
  %i.r = mul i64 %i.q, %.02933
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.r ; 2 uses
  %.not37 = icmp eq i32 %i.o, 0
  br i1 %.not37, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.t = load i64, ptr %5, align 8, !tbaa !68
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.g
  %.pre38 = load i64, ptr %i.b, align 8, !tbaa !68
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.w = phi i64 [ %.pre38, %._crit_edge.loopexit ], [ %i.n, %bb.c ] ; 2 uses
  %i.x = phi i32 [ %i.am, %._crit_edge.loopexit ], [ 0, %bb.c ]
  %i.y = add nsw i64 %.02933, 1
  %.not.not = icmp slt i64 %.02933, %i.w
  br i1 %.not.not, label %bb.c, label %._crit_edge36

bb.d:                                             ; preds = %.lr.ph, %bb.g
  %.031 = phi i64 [ 0, %.lr.ph ], [ %i.ar, %bb.g ] ; 4 uses
  %i.z = invoke noundef zeroext i1 @_ZN5faiss12rabitq_utils20extract_bit_fastscanEPKhm(ptr noundef %i.s, i64 noundef %.031)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.aa = select i1 %i.z, float 5.000000e-01, float -5.000000e-01
  %i.ab = load float, ptr %i.v, align 1, !tbaa !143
  %i.ac = fmul float %i.aa, %i.ab
  %i.ad = fmul float %i.ac, 2.000000e+00
  %i.ae = load float, ptr %7, align 4, !tbaa !27
  %i.af = load ptr, ptr %8, align 8, !tbaa !69    ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.031
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !27
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.aj = phi float [ %i.ai, %bb.f ], [ 0.000000e+00, %bb.e ]
  %i.ak = call float @llvm.fmuladd.f32(float %i.ad, float %i.ae, float %i.aj)
  %i.al = load ptr, ptr %6, align 8, !tbaa !69
  %i.am = load i32, ptr %i.m, align 8, !tbaa !26  ; 2 uses
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %i.ao = mul nsw i64 %.02933, %i.an
  %i.ap = getelementptr [4 x i8], ptr %i.al, i64 %i.ao
  %i.aq = getelementptr [4 x i8], ptr %i.ap, i64 %.031
  store float %i.ak, ptr %i.aq, align 4, !tbaa !27
  %i.ar = add nuw i64 %.031, 1                    ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.an
  br i1 %i.as, label %bb.d, label %._crit_edge.loopexit, !llvm.loop !141

._crit_edge36:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge36, %bb.a
  ret void

bb.i:                                             ; preds = %bb.d
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #29
  unreachable
}

declare noundef zeroext i1 @_ZN5faiss12rabitq_utils20extract_bit_fastscanEPKhm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #22

declare void @_ZNK5faiss13IndexFastScan22search_dispatch_implemILb1EEEvlPKflPfPlRKNS_30FastScanDistancePostProcessingE(ptr noundef nonnull align 8 dereferenceable(136), i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(26)) local_unnamed_addr #2

declare void @_ZNK5faiss13IndexFastScan22search_dispatch_implemILb0EEEvlPKflPfPlRKNS_30FastScanDistancePostProcessingE(ptr noundef nonnull align 8 dereferenceable(136), i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(26)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN5faiss12rabitq_utils16QueryFactorsDataESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !60     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !64   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5faiss12rabitq_utils16QueryFactorsDataES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN5faiss12rabitq_utils16QueryFactorsDataEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.k, %_ZSt8_DestroyIN5faiss12rabitq_utils16QueryFactorsDataEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
end_hunk_0
