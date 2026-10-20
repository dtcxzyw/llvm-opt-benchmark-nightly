Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/shake?download=true
inline.NumInlined: 618
inline.NumDeleted: 288
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZdlPvm
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !26     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !28
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !25
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #19
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #20 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store float 0.000000e+00, ptr %i.y, align 4, !tbaa !28
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !28
  br label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !60
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #21
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36: ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !26
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !25
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !60
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx20make_shake_sblock_ddEPNS_9shakedataERK15InteractionList(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.c = load ptr, ptr %1, align 8, !tbaa !13     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 2
  %i.h = trunc i64 %i.g to i32                    ; 3 uses
  %i.i = sdiv i32 %i.h, 3                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !13   ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 8 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12   ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, %i.k
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.k, ptr %i.l, align 8, !tbaa !12
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.a, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.n = phi ptr [ %i.m, %bb.a ], [ %i.k, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ] ; 5 uses
  %i.o = icmp sgt i32 %i.h, 2
  br i1 %i.o, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 6 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !22
  %.not.i.i23.peel = icmp eq ptr %i.n, %i.q
  br i1 %.not.i.i23.peel, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.n, align 4, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  store ptr %i.r, ptr %i.l, align 8, !tbaa !12
  br label %.loopexit.peel

bb.d:                                             ; preds = %bb.b
  %i.s = ptrtoint ptr %i.n to i64
  %i.t = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.u = sub i64 %i.s, %i.t                       ; 5 uses
  %i.v = icmp eq i64 %i.u, 9223372036854775804
  br i1 %i.v, label %.loopexit39, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.peel

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.peel: ; preds = %bb.d
  %i.w = ashr exact i64 %i.u, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i.peel = tail call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %i.x = add nsw i64 %.sroa.speculated.i.i.i.i.peel, %i.w ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.w
  %i.z = tail call i64 @llvm.umin.i64(i64 %i.x, i64 2305843009213693951)
  %i.aa = select i1 %i.y, i64 2305843009213693951, i64 %i.z ; 3 uses
  %.not.i.i.i.i.peel = icmp ne i64 %i.aa, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.peel)
  %i.ab = shl nuw nsw i64 %i.aa, 2
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #20 ; 5 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 %i.u ; 2 uses
  store i32 0, ptr %i.ad, align 4, !tbaa !17
  %i.ae = icmp sgt i64 %i.u, 0
  br i1 %i.ae, label %bb.e, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.peel

bb.e:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.peel
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ac, ptr align 4 %i.k, i64 %i.u, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.peel

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.peel: ; preds = %bb.e, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.peel
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 2 uses
  %.not.i17.i.i.i.peel = icmp eq ptr %i.k, null
  br i1 %.not.i17.i.i.i.peel, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.peel, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.peel
  %i.ag = load ptr, ptr %i.p, align 8, !tbaa !22
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.ai) #21
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.peel

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.peel: ; preds = %bb.f, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.peel
  store ptr %i.ac, ptr %i.j, align 8, !tbaa !13
  store ptr %i.af, ptr %i.l, align 8, !tbaa !12
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.aa
  store ptr %i.aj, ptr %i.p, align 8, !tbaa !22
  br label %.loopexit.peel

.loopexit.peel:                                   ; preds = %bb.c, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.peel
  %i.ak = phi ptr [ %i.ac, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.peel ], [ %i.k, %bb.c ] ; 2 uses
  %i.al = phi ptr [ %i.af, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.peel ], [ %i.r, %bb.c ] ; 2 uses
  %exitcond.peel.not = icmp slt i32 %i.h, 6
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %.loopexit.peel
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !17
  %2 = add i32 %i.an, 1
  %smax.peel = tail call i32 @llvm.smax.i32(i32 %2, i32 1)
  %3 = add nsw i32 %smax.peel, -1
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader, %.loopexit
  %i.ao = phi ptr [ %i.br, %.loopexit ], [ %i.ak, %.peel.next.preheader ] ; 6 uses
  %i.ap = phi ptr [ %i.bs, %.loopexit ], [ %i.al, %.peel.next.preheader ] ; 5 uses
  %.pn = phi ptr [ %.037, %.loopexit ], [ %i.c, %.peel.next.preheader ] ; 3 uses
  %.01836 = phi i32 [ %.2, %.loopexit ], [ %3, %.peel.next.preheader ] ; 3 uses
  %.01935 = phi i32 [ %i.bt, %.loopexit ], [ 1, %.peel.next.preheader ] ; 2 uses
  %.037 = getelementptr inbounds nuw i8, ptr %.pn, i64 12
  %i.aq = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !17
  %.not.not = icmp sgt i32 %i.ar, %.01836
  br i1 %.not.not, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %.peel.next
  %i.as = mul nuw nsw i32 %.01935, 3              ; 2 uses
  %i.at = load ptr, ptr %i.p, align 8, !tbaa !22
  %.not.i.i23.a = icmp eq ptr %i.ap, %i.at
  br i1 %.not.i.i23.a, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.as, ptr %i.ap, align 4, !tbaa !17
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 4 ; 2 uses
  store ptr %i.au, ptr %i.l, align 8, !tbaa !12
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.i:                                             ; preds = %bb.g
  %i.av = ptrtoint ptr %i.ap to i64
  %i.aw = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.ax = sub i64 %i.av, %i.aw                    ; 5 uses
  %i.ay = icmp eq i64 %i.ax, 9223372036854775804
  br i1 %i.ay, label %.loopexit39, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

.loopexit39:                                      ; preds = %bb.i, %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #19
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.az = ashr exact i64 %i.ax, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.az, i64 1)
  %i.ba = add nsw i64 %.sroa.speculated.i.i.i.i, %i.az ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.az
  %i.bc = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 2305843009213693951)
  %i.bd = select i1 %i.bb, i64 2305843009213693951, i64 %i.bc ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.be = shl nuw nsw i64 %i.bd, 2
  %i.bf = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #20 ; 5 uses
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 %i.ax ; 2 uses
  store i32 %i.as, ptr %i.bg, align 4, !tbaa !17
  %i.bh = icmp sgt i64 %i.ax, 0
  br i1 %i.bh, label %bb.j, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bf, ptr align 4 %i.ao, i64 %i.ax, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.bj = load ptr, ptr %i.p, align 8, !tbaa !22
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.bl) #21
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.bf, ptr %i.j, align 8, !tbaa !13
  store ptr %i.bi, ptr %i.l, align 8, !tbaa !12
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bd
  store ptr %i.bm, ptr %i.p, align 8, !tbaa !22
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %bb.h, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i
  %i.bn = phi ptr [ %i.ao, %bb.h ], [ %i.bf, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ]
  %i.bo = phi ptr [ %i.au, %bb.h ], [ %i.bi, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !17
  %4 = add nuw nsw i32 %.01836, 1
  %5 = add i32 %i.bq, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %4, i32 %5)
  %6 = add nsw i32 %smax, -1
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %.peel.next
  %i.br = phi ptr [ %i.ao, %.peel.next ], [ %i.bn, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %i.bs = phi ptr [ %i.ap, %.peel.next ], [ %i.bo, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %.2 = phi i32 [ %.01836, %.peel.next ], [ %6, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ]
  %i.bt = add nuw nsw i32 %.01935, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.bt, %i.i
  br i1 %exitcond.not, label %._crit_edge, label %.peel.next, !llvm.loop !61

._crit_edge:                                      ; preds = %.loopexit, %.loopexit.peel, %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.bu = phi ptr [ %i.k, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ %i.ak, %.loopexit.peel ], [ %i.br, %.loopexit ] ; 4 uses
  %i.bv = phi ptr [ %i.n, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ %i.al, %.loopexit.peel ], [ %i.bs, %.loopexit ] ; 4 uses
  %i.bw = mul nsw i32 %i.i, 3                     ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !22
  %.not.i.i24 = icmp eq ptr %i.bv, %i.by
  br i1 %.not.i.i24, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  store i32 %i.bw, ptr %i.bv, align 4, !tbaa !17
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store ptr %i.bz, ptr %i.l, align 8, !tbaa !12
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit31

bb.m:                                             ; preds = %._crit_edge
  %i.ca = ptrtoint ptr %i.bv to i64
  %i.cb = ptrtoint ptr %i.bu to i64               ; 2 uses
  %i.cc = sub i64 %i.ca, %i.cb                    ; 5 uses
  %i.cd = icmp eq i64 %i.cc, 9223372036854775804
  br i1 %i.cd, label %bb.n, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i25

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #19
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i25: ; preds = %bb.m
  %i.ce = ashr exact i64 %i.cc, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i26 = tail call i64 @llvm.umax.i64(i64 %i.ce, i64 1)
  %i.cf = add nsw i64 %.sroa.speculated.i.i.i.i26, %i.ce ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.ce
  %i.ch = tail call i64 @llvm.umin.i64(i64 %i.cf, i64 2305843009213693951)
  %i.ci = select i1 %i.cg, i64 2305843009213693951, i64 %i.ch ; 3 uses
  %.not.i.i.i.i27 = icmp ne i64 %i.ci, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i27)
  %i.cj = shl nuw nsw i64 %i.ci, 2
  %i.ck = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #20 ; 4 uses
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 %i.cc ; 2 uses
  store i32 %i.bw, ptr %i.cl, align 4, !tbaa !17
  %i.cm = icmp sgt i64 %i.cc, 0
  br i1 %i.cm, label %bb.o, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i28

bb.o:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i25
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ck, ptr align 4 %i.bu, i64 %i.cc, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i28

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i28: ; preds = %bb.o, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i25
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %.not.i17.i.i.i29 = icmp eq ptr %i.bu, null
  br i1 %.not.i17.i.i.i29, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i30, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i28
  %i.co = load ptr, ptr %i.bx, align 8, !tbaa !22
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = sub i64 %i.cp, %i.cb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.cq) #21
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i30

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i30: ; preds = %bb.p, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i28
  store ptr %i.ck, ptr %i.j, align 8, !tbaa !13
  store ptr %i.cn, ptr %i.l, align 8, !tbaa !12
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.ci
  store ptr %i.cr, ptr %i.bx, align 8, !tbaa !22
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit31

_ZNSt6vectorIiSaIiEE9push_backEOi.exit31:         ; preds = %bb.l, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i30
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ct = sext i32 %i.i to i64                    ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !25 ; 2 uses
  %i.cw = load ptr, ptr %i.cs, align 8, !tbaa !26 ; 2 uses
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = ashr exact i64 %i.cz, 2                 ; 3 uses
  %i.db = icmp ult i64 %i.da, %i.ct
  br i1 %i.db, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit31
  %i.dc = sub nuw nsw i64 %i.ct, %i.da
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i64 noundef %i.dc)
  br label %_ZN3gmxL20resizeLagrangianDataEPNS_9shakedataEi.exit

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit31
  %i.dd = icmp ugt i64 %i.da, %i.ct
  br i1 %i.dd, label %bb.s, label %_ZN3gmxL20resizeLagrangianDataEPNS_9shakedataEi.exit

bb.s:                                             ; preds = %bb.r
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.ct ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cv, %i.de
  br i1 %.not.i.i.i, label %_ZN3gmxL20resizeLagrangianDataEPNS_9shakedataEi.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.s
  store ptr %i.de, ptr %i.cu, align 8, !tbaa !25
  br label %_ZN3gmxL20resizeLagrangianDataEPNS_9shakedataEi.exit

_ZN3gmxL20resizeLagrangianDataEPNS_9shakedataEi.exit: ; preds = %bb.q, %bb.r, %bb.s, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx6cshakeEPKiiPiiNS_8ArrayRefIKfEENS3_INS_11BasicVectorIfEEEEPK5t_pbcNS3_IKS7_EES5_fS5_S5_NS3_IfEES2_(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, ptr nofree readonly captures(none) %4, ptr nofree readnone captures(none) %5, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.32") align 8 captures(none) %6, ptr noundef %7, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.35") align 8 captures(none) %8, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.29") align 8 captures(none) %9, float noundef %10, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.29") align 8 captures(none) %11, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.29") align 8 captures(none) %12, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.38") align 8 captures(none) %13, ptr nofree noundef writeonly captures(none) %14) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 5 uses
  %i.b = icmp sgt i32 %3, 0
  br i1 %i.b, label %.preheader.lr.ph, label %.critedge

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.c = icmp sgt i32 %1, 0
  %i.d = load i64, ptr %8, align 8
  %i.e = inttoptr i64 %i.d to ptr
  %.not = icmp eq ptr %7, null
  %i.f = load i64, ptr %6, align 8
  %i.g = inttoptr i64 %i.f to ptr                 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %12, align 8
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load i64, ptr %9, align 8
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i64, ptr %13, align 8
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load i64, ptr %11, align 8
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  br i1 %i.c, label %.preheader.us.preheader, label %.critedge

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.q = zext nneg i32 %1 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.07785.us = phi i32 [ %i.cx, %._crit_edge.us ], [ 0, %.preheader.us.preheader ]
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.i
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.i ] ; 8 uses
  %.17583.us = phi i32 [ 0, %.preheader.us ], [ %.276.us, %bb.i ]
  %i.r = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.s = load <2 x float>, ptr %i.r, align 4, !tbaa !28 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load float, ptr %i.t, align 4, !tbaa !28 ; 2 uses
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !17   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !17   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.aa = sext i32 %i.x to i64
  %i.ab = getelementptr inbounds [12 x i8], ptr %i.g, i64 %i.aa ; 3 uses
  %i.ac = sext i32 %i.z to i64
  %i.ad = getelementptr inbounds [12 x i8], ptr %i.g, i64 %i.ac ; 3 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %7, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.a)
  %i.ae = load <2 x float>, ptr %i.a, align 8, !tbaa !28
  %.pre91 = load float, ptr %i.h, align 8, !tbaa !28
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.af = load <2 x float>, ptr %i.ab, align 4, !tbaa !28
  %i.ag = load <2 x float>, ptr %i.ad, align 4, !tbaa !28
  %i.ah = fsub <2 x float> %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !28
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.al = load float, ptr %i.ak, align 4, !tbaa !28
  %i.am = fsub float %i.aj, %i.al
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.an = phi float [ %i.am, %bb.d ], [ %.pre91, %bb.c ] ; 3 uses
  %i.ao = phi <2 x float> [ %i.ah, %bb.d ], [ %i.ae, %bb.c ] ; 4 uses
  %foldExtExtBinop100 = fmul <2 x float> %i.ao, %i.ao
  %i.ap = extractelement <2 x float> %foldExtExtBinop100, i64 1
  %i.aq = extractelement <2 x float> %i.ao, i64 0 ; 3 uses
  %i.ar = call float @llvm.fmuladd.f32(float %i.aq, float %i.aq, float %i.ap)
  %i.as = call noundef float @llvm.fmuladd.f32(float %i.an, float %i.an, float %i.ar)
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.au = load float, ptr %i.at, align 4, !tbaa !28 ; 2 uses
  %i.av = fsub float %i.au, %i.as                 ; 2 uses
  %i.aw = call noundef float @llvm.fabs.f32(float %i.av)
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !28
  %i.az = fmul float %i.ay, %i.aw                 ; 2 uses
  %i.ba = fcmp ogt float %i.az, 1.000000e+00
  br i1 %i.ba, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.bb = fptosi float %i.az to i32               ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.s, %i.ao
  %i.bc = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bd = extractelement <2 x float> %i.s, i64 0
  %i.be = call float @llvm.fmuladd.f32(float %i.bd, float %i.aq, float %i.bc)
  %i.bf = call float @llvm.fmuladd.f32(float %i.u, float %i.an, float %i.be) ; 2 uses
  %i.bg = fmul float %i.au, 1.000000e-10
end_hunk_0
