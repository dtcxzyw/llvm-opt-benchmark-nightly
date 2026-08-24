Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmComputeComponentGraph?download=true
inline.NumInlined: 801
inline.NumDeleted: 386
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN23cmComputeComponentGraphD2Ev:bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN23cmComputeComponentGraph7ComputeEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN23cmComputeComponentGraph6TarjanEv(ptr noundef nonnull align 8 dereferenceable(224) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_ZNSt6vectorI15cmGraphEdgeListSaIS0_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24
  tail call void @_ZNSt6vectorI15cmGraphEdgeListSaIS0_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.i)
  tail call void @_ZN23cmComputeComponentGraph13TransferEdgesEv(ptr noundef nonnull align 8 dereferenceable(224) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN23cmComputeComponentGraph6TarjanEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.cmComputeComponentGraph::TarjanEntry", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !62, !nonnull !81, !align !82 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !27   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24                  ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !83   ; 3 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !12   ; 5 uses
  %i.n = ptrtoint ptr %i.m to i64                 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i, label %._ZNSt6vectorIN23cmComputeComponentGraph11TarjanEntryESaIS1_EE6resizeEm.exit_crit_edge, label %_ZSt8_DestroyIPN23cmComputeComponentGraph11TarjanEntryES1_EvT_S3_RSaIT0_E.exit.i.i

._ZNSt6vectorIN23cmComputeComponentGraph11TarjanEntryESaIS1_EE6resizeEm.exit_crit_edge: ; preds = %bb.a
  %.pre = ptrtoint ptr %i.l to i64
  br label %_ZNSt6vectorIN23cmComputeComponentGraph11TarjanEntryESaIS1_EE6resizeEm.exit

_ZSt8_DestroyIPN23cmComputeComponentGraph11TarjanEntryES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.m, ptr %i.k, align 8, !tbaa !83
  br label %_ZNSt6vectorIN23cmComputeComponentGraph11TarjanEntryESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN23cmComputeComponentGraph11TarjanEntryESaIS1_EE6resizeEm.exit: ; preds = %._ZNSt6vectorIN23cmComputeComponentGraph11TarjanEntryESaIS1_EE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPN23cmComputeComponentGraph11TarjanEntryES1_EvT_S3_RSaIT0_E.exit.i.i
  %.pre-phi = phi i64 [ %.pre, %._ZNSt6vectorIN23cmComputeComponentGraph11TarjanEntryESaIS1_EE6resizeEm.exit_crit_edge ], [ %i.n, %_ZSt8_DestroyIPN23cmComputeComponentGraph11TarjanEntryES1_EvT_S3_RSaIT0_E.exit.i.i ]
  %i.o = phi ptr [ %i.l, %._ZNSt6vectorIN23cmComputeComponentGraph11TarjanEntryESaIS1_EE6resizeEm.exit_crit_edge ], [ %i.m, %_ZSt8_DestroyIPN23cmComputeComponentGraph11TarjanEntryES1_EvT_S3_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.p = sub i64 %.pre-phi, %i.n
  %i.q = ashr exact i64 %i.p, 4                   ; 3 uses
  %i.r = icmp ugt i64 %i.i, %i.q
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNSt6vectorIN23cmComputeComponentGraph11TarjanEntryESaIS1_EE6resizeEm.exit
  %i.s = sub nuw nsw i64 %i.i, %i.q
  call void @_ZNSt6vectorIN23cmComputeComponentGraph11TarjanEntryESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr %i.o, i64 noundef %i.s, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZNSt6vectorIN23cmComputeComponentGraph11TarjanEntryESaIS1_EE6resizeEmRKS1_.exit

bb.c:                                             ; preds = %_ZNSt6vectorIN23cmComputeComponentGraph11TarjanEntryESaIS1_EE6resizeEm.exit
  %i.t = icmp ult i64 %i.i, %i.q
  br i1 %i.t, label %bb.d, label %_ZNSt6vectorIN23cmComputeComponentGraph11TarjanEntryESaIS1_EE6resizeEmRKS1_.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.i ; 2 uses
  %.not.i.i8 = icmp eq ptr %i.o, %i.u
  br i1 %.not.i.i8, label %_ZNSt6vectorIN23cmComputeComponentGraph11TarjanEntryESaIS1_EE6resizeEmRKS1_.exit, label %_ZSt8_DestroyIPN23cmComputeComponentGraph11TarjanEntryES1_EvT_S3_RSaIT0_E.exit.i.i9

_ZSt8_DestroyIPN23cmComputeComponentGraph11TarjanEntryES1_EvT_S3_RSaIT0_E.exit.i.i9: ; preds = %bb.d
  store ptr %i.u, ptr %i.k, align 8, !tbaa !83
  br label %_ZNSt6vectorIN23cmComputeComponentGraph11TarjanEntryESaIS1_EE6resizeEmRKS1_.exit

_ZNSt6vectorIN23cmComputeComponentGraph11TarjanEntryESaIS1_EE6resizeEmRKS1_.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPN23cmComputeComponentGraph11TarjanEntryES1_EvT_S3_RSaIT0_E.exit.i.i9
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !84   ; 3 uses
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !16   ; 5 uses
  %i.z = ptrtoint ptr %i.y to i64                 ; 2 uses
  %.not.i.i10 = icmp eq ptr %i.x, %i.y
  br i1 %.not.i.i10, label %_ZNSt6vectorIN23cmComputeComponentGraph11TarjanEntryESaIS1_EE6resizeEmRKS1_.exit._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZNSt6vectorIN23cmComputeComponentGraph11TarjanEntryESaIS1_EE6resizeEmRKS1_.exit._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge: ; preds = %_ZNSt6vectorIN23cmComputeComponentGraph11TarjanEntryESaIS1_EE6resizeEmRKS1_.exit
  %.pre23 = ptrtoint ptr %i.x to i64
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZNSt6vectorIN23cmComputeComponentGraph11TarjanEntryESaIS1_EE6resizeEmRKS1_.exit
  store ptr %i.y, ptr %i.w, align 8, !tbaa !84
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %_ZNSt6vectorIN23cmComputeComponentGraph11TarjanEntryESaIS1_EE6resizeEmRKS1_.exit._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i
  %.pre-phi24 = phi i64 [ %.pre23, %_ZNSt6vectorIN23cmComputeComponentGraph11TarjanEntryESaIS1_EE6resizeEmRKS1_.exit._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge ], [ %i.z, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i ]
  %i.aa = phi ptr [ %i.x, %_ZNSt6vectorIN23cmComputeComponentGraph11TarjanEntryESaIS1_EE6resizeEmRKS1_.exit._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge ], [ %i.y, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.ab = sub i64 %.pre-phi24, %i.z
  %i.ac = ashr exact i64 %i.ab, 3                 ; 3 uses
  %i.ad = icmp ugt i64 %i.i, %i.ac
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.ae = sub nuw nsw i64 %i.i, %i.ac
  call void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr %i.aa, i64 noundef %i.ae, ptr noundef nonnull align 8 dereferenceable(8) @_ZN23cmComputeComponentGraph17INVALID_COMPONENTE)
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit

bb.f:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.af = icmp ult i64 %i.i, %i.ac
  br i1 %i.af, label %bb.g, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.i ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.aa, %i.ag
  br i1 %.not.i.i11, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i12

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i12:      ; preds = %bb.g
  store ptr %i.ag, ptr %i.w, align 8, !tbaa !84
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit

_ZNSt6vectorImSaImEE6resizeEmRKm.exit:            ; preds = %bb.e, %bb.f, %bb.g, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i12
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  store i64 0, ptr %i.ah, align 8, !tbaa !85
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !84 ; 3 uses
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !16 ; 5 uses
  %i.am = ptrtoint ptr %i.al to i64               ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.ak, %i.al
  br i1 %.not.i.i13, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit._ZNSt6vectorImSaImEE6resizeEm.exit15_crit_edge, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i14

_ZNSt6vectorImSaImEE6resizeEmRKm.exit._ZNSt6vectorImSaImEE6resizeEm.exit15_crit_edge: ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit
  %.pre25 = ptrtoint ptr %i.ak to i64
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit15

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i14:      ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !84
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit15

_ZNSt6vectorImSaImEE6resizeEm.exit15:             ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit._ZNSt6vectorImSaImEE6resizeEm.exit15_crit_edge, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i14
  %.pre-phi26 = phi i64 [ %.pre25, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit._ZNSt6vectorImSaImEE6resizeEm.exit15_crit_edge ], [ %i.am, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i14 ]
  %i.an = phi ptr [ %i.ak, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit._ZNSt6vectorImSaImEE6resizeEm.exit15_crit_edge ], [ %i.al, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i14 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 0, ptr %i.a, align 8, !tbaa !86
  %i.ao = sub i64 %.pre-phi26, %i.am
  %i.ap = ashr exact i64 %i.ao, 3                 ; 3 uses
  %i.aq = icmp ugt i64 %i.i, %i.ap
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit15
  %i.ar = sub nuw nsw i64 %i.i, %i.ap
  call void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr %i.an, i64 noundef %i.ar, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit18

bb.i:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit15
  %i.as = icmp ult i64 %i.i, %i.ap
  br i1 %i.as, label %bb.j, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit18

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.i ; 2 uses
  %.not.i.i16 = icmp eq ptr %i.an, %i.at
  br i1 %.not.i.i16, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit18, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i17

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i17:      ; preds = %bb.j
  store ptr %i.at, ptr %i.aj, align 8, !tbaa !84
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit18

_ZNSt6vectorImSaImEE6resizeEmRKm.exit18:          ; preds = %bb.h, %bb.i, %bb.j, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.not22 = icmp eq ptr %i.d, %i.e
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit18
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 216
  br label %bb.k

._crit_edge:                                      ; preds = %bb.m, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void

bb.k:                                             ; preds = %.lr.ph, %bb.m
  %.021 = phi i64 [ 0, %.lr.ph ], [ %i.ba, %bb.m ] ; 3 uses
  %i.av = load ptr, ptr %i.ai, align 8, !tbaa !16
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.021
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !86
  %.not = icmp eq i64 %i.ax, 0
  br i1 %.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ay = load i64, ptr %i.ah, align 8, !tbaa !85
  %i.az = add i64 %i.ay, 1
  store i64 %i.az, ptr %i.ah, align 8, !tbaa !85
  store i64 0, ptr %i.au, align 8, !tbaa !87
  call void @_ZN23cmComputeComponentGraph11TarjanVisitEm(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef %.021)
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.ba = add nuw i64 %.021, 1                    ; 2 uses
  %2 = icmp ult i64 %i.ba, %i.i
  br i1 %2, label %bb.k, label %._crit_edge, !llvm.loop !88
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI15cmGraphEdgeListSaIS0_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24                  ; 3 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g
  tail call void @_ZNSt6vectorI15cmGraphEdgeListSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i)
  br label %_ZNSt6vectorI15cmGraphEdgeListSaIS0_EE15_M_erase_at_endEPS0_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %1, %i.g
  br i1 %i.j, label %bb.d, label %_ZNSt6vectorI15cmGraphEdgeListSaIS0_EE15_M_erase_at_endEPS0_.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %1 ; 3 uses
  %.not.i = icmp eq ptr %i.b, %i.k
  br i1 %.not.i, label %_ZNSt6vectorI15cmGraphEdgeListSaIS0_EE15_M_erase_at_endEPS0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %_ZSt8_DestroyI15cmGraphEdgeListEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.am, %_ZSt8_DestroyI15cmGraphEdgeListEvPT_.exit.i.i.i ], [ %i.k, %bb.d ] ; 5 uses
  %i.l = load ptr, ptr %.05.i.i.i, align 8, !tbaa !31 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !34   ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIP11cmGraphEdgeS0_EvT_S2_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyI11cmGraphEdgeEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.af, %_ZSt8_DestroyI11cmGraphEdgeEvPT_.exit.i.i.i.i.i.i.i ], [ %i.l, %.lr.ph.i.i.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !35   ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyI11cmGraphEdgeEvPT_.exit.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.r = load atomic i64, ptr %i.q acquire, align 8 ; 2 uses
  %i.s = icmp eq i64 %i.r, 4294967297
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.q, align 8, !tbaa !38
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 0, ptr %i.u, align 4, !tbaa !40
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !41
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #18, !inline_history !89
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !41
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #18, !inline_history !89
  br label %_ZSt8_DestroyI11cmGraphEdgeEvPT_.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = add nsw i32 %i.t, -1
  store i32 %i.ac, ptr %i.q, align 8, !tbaa !45
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ad = atomicrmw volatile add ptr %i.q, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.t, %bb.h ], [ %i.ad, %bb.i ]
  %i.ae = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ae, label %bb.j, label %_ZSt8_DestroyI11cmGraphEdgeEvPT_.exit.i.i.i.i.i.i.i, !prof !46

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #18
  br label %_ZSt8_DestroyI11cmGraphEdgeEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyI11cmGraphEdgeEvPT_.exit.i.i.i.i.i.i.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f, %.lr.ph.i.i.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.af, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIP11cmGraphEdgeS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !47

_ZSt8_DestroyIP11cmGraphEdgeS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyI11cmGraphEdgeEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %.05.i.i.i, align 8, !tbaa !31
  br label %_ZSt8_DestroyIP11cmGraphEdgeS0_EvT_S2_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIP11cmGraphEdgeS0_EvT_S2_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIP11cmGraphEdgeS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %.lr.ph.i.i.i
  %i.ag = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIP11cmGraphEdgeS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.l, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZSt8_DestroyI15cmGraphEdgeListEvPT_.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIP11cmGraphEdgeS0_EvT_S2_RSaIT0_E.exit.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !48
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #19
  br label %_ZSt8_DestroyI15cmGraphEdgeListEvPT_.exit.i.i.i

_ZSt8_DestroyI15cmGraphEdgeListEvPT_.exit.i.i.i:  ; preds = %bb.k, %_ZSt8_DestroyIP11cmGraphEdgeS0_EvT_S2_RSaIT0_E.exit.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.b
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIP15cmGraphEdgeListS0_EvT_S2_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !49

_ZSt8_DestroyIP15cmGraphEdgeListS0_EvT_S2_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyI15cmGraphEdgeListEvPT_.exit.i.i.i
  store ptr %i.k, ptr %i.a, align 8, !tbaa !30
  br label %_ZNSt6vectorI15cmGraphEdgeListSaIS0_EE15_M_erase_at_endEPS0_.exit

_ZNSt6vectorI15cmGraphEdgeListSaIS0_EE15_M_erase_at_endEPS0_.exit: ; preds = %_ZSt8_DestroyIP15cmGraphEdgeListS0_EvT_S2_RSaIT0_E.exit.i, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN23cmComputeComponentGraph13TransferEdgesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !62, !nonnull !81, !align !82 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %.not33 = icmp eq ptr %i.c, %i.d
  br i1 %.not33, label %._crit_edge32, label %.lr.ph31

.lr.ph31:                                         ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv i64 %i.g, 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  br label %bb.b

._crit_edge32:                                    ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph31, %._crit_edge
  %.029 = phi i64 [ 0, %.lr.ph31 ], [ %i.t, %._crit_edge ] ; 3 uses
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.029
  %i.m = load i64, ptr %i.l, align 8, !tbaa !86   ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !62, !nonnull !81, !align !82
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.029 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !90   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !90   ; 2 uses
  %.not2627 = icmp eq ptr %i.q, %i.s
  br i1 %.not2627, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorI11cmGraphEdgeSaIS0_EE12emplace_backIJRmbbRK19cmListFileBacktraceEEERS0_DpOT_.exit, %bb.b
  %i.t = add nuw i64 %.029, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.t, %umax
  br i1 %exitcond.not, label %._crit_edge32, label %bb.b, !llvm.loop !91

.lr.ph:                                           ; preds = %bb.b, %_ZNSt6vectorI11cmGraphEdgeSaIS0_EE12emplace_backIJRmbbRK19cmListFileBacktraceEEERS0_DpOT_.exit
  %.sroa.023.028 = phi ptr [ %i.cg, %_ZNSt6vectorI11cmGraphEdgeSaIS0_EE12emplace_backIJRmbbRK19cmListFileBacktraceEEERS0_DpOT_.exit ], [ %i.q, %bb.b ] ; 7 uses
  %i.u = load i64, ptr %.sroa.023.028, align 8, !tbaa !92
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !16
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.u
  %i.x = load i64, ptr %i.w, align 8, !tbaa !86   ; 3 uses
  %.not = icmp eq i64 %i.m, %i.x
  br i1 %.not, label %_ZNSt6vectorI11cmGraphEdgeSaIS0_EE12emplace_backIJRmbbRK19cmListFileBacktraceEEERS0_DpOT_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.y = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.m ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.023.028, i64 8
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !100, !range !101, !noundef !81 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.023.028, i64 9
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !102, !range !101, !noundef !81 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.023.028, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !34 ; 10 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !48
  %.not.i = icmp eq ptr %i.ag, %i.ai
  br i1 %.not.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.023.028, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !35 ; 2 uses
  %i.al = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !103
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 3 uses
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !45
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.am, align 4, !tbaa !45
  br label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit.i

bb.g:                                             ; preds = %bb.e
  %i.aq = atomicrmw volatile add ptr %i.am, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %i.af, align 8, !tbaa !34
  br label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit.i

_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.ar = phi ptr [ %.pre.i, %bb.g ], [ %i.ag, %bb.f ], [ %i.ag, %bb.d ]
  store i64 %i.x, ptr %i.ag, align 8, !tbaa !92
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i8 %i.ab, ptr %i.as, align 8, !tbaa !100
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 9
  store i8 %i.ad, ptr %i.at, align 1, !tbaa !102
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store <2 x ptr> %i.al, ptr %i.au, align 8, !tbaa !103
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  store ptr %i.av, ptr %i.af, align 8, !tbaa !34
  br label %_ZNSt6vectorI11cmGraphEdgeSaIS0_EE12emplace_backIJRmbbRK19cmListFileBacktraceEEERS0_DpOT_.exit

bb.h:                                             ; preds = %bb.c
  %i.aw = load ptr, ptr %i.z, align 8, !tbaa !31  ; 5 uses
  %i.ax = ptrtoint ptr %i.ag to i64
  %i.ay = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.az = sub i64 %i.ax, %i.ay                    ; 3 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775776
  br i1 %i.ba, label %bb.i, label %_ZNKSt6vectorI11cmGraphEdgeSaIS0_EE12_M_check_lenEmPKc.exit.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #20
  unreachable

_ZNKSt6vectorI11cmGraphEdgeSaIS0_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.h
  %i.bb = ashr exact i64 %i.az, 5                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 1)
  %i.bc = add nsw i64 %.sroa.speculated.i.i, %i.bb ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.bb
  %i.be = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 288230376151711743)
  %i.bf = select i1 %i.bd, i64 288230376151711743, i64 %i.be ; 3 uses
  %.not.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseI11cmGraphEdgeSaIS0_EE11_M_allocateEm.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNKSt6vectorI11cmGraphEdgeSaIS0_EE12_M_check_lenEmPKc.exit.i
  %i.bg = shl nuw nsw i64 %i.bf, 5
  %i.bh = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #21
  br label %_ZNSt12_Vector_baseI11cmGraphEdgeSaIS0_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseI11cmGraphEdgeSaIS0_EE11_M_allocateEm.exit.i: ; preds = %bb.j, %_ZNKSt6vectorI11cmGraphEdgeSaIS0_EE12_M_check_lenEmPKc.exit.i
  %i.bi = phi ptr [ %i.bh, %bb.j ], [ null, %_ZNKSt6vectorI11cmGraphEdgeSaIS0_EE12_M_check_lenEmPKc.exit.i ] ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.az ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.023.028, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !35 ; 2 uses
  %i.bm = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !103
  %.not.i.i.i.i.i.i16 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i.i.i16, label %bb.n, label %bb.k

bb.k:                                             ; preds = %_ZNSt12_Vector_baseI11cmGraphEdgeSaIS0_EE11_M_allocateEm.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 3 uses
  %i.bo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i.i.i.i.i17 = icmp eq i8 %i.bo, 0
  br i1 %.not.i.i.i.i.i.i.i17, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !45
  %i.bq = add nsw i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bn, align 4, !tbaa !45
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.br = atomicrmw volatile add ptr %i.bn, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %_ZNSt12_Vector_baseI11cmGraphEdgeSaIS0_EE11_M_allocateEm.exit.i
  store i64 %i.x, ptr %i.bj, align 8, !tbaa !92
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i8 %i.ab, ptr %i.bs, align 8, !tbaa !100
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 9
  store i8 %i.ad, ptr %i.bt, align 1, !tbaa !102
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store <2 x ptr> %i.bm, ptr %i.bu, align 8, !tbaa !103
  %.not10.i.i.i.i = icmp eq ptr %i.aw, %i.ag
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI11cmGraphEdgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit36.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.n, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i ], [ %i.bi, %bb.n ] ; 3 uses
  %.0911.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i ], [ %i.aw, %bb.n ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i, i64 10, i1 false), !alias.scope !109
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24
  %i.by = load <2 x ptr>, ptr %i.bw, align 8, !tbaa !103, !alias.scope !107, !noalias !104
  store ptr null, ptr %i.bx, align 8, !tbaa !35, !alias.scope !107, !noalias !104
  store <2 x ptr> %i.by, ptr %i.bv, align 8, !tbaa !103, !alias.scope !104, !noalias !107
  store ptr null, ptr %i.bw, align 8, !tbaa !110, !alias.scope !107, !noalias !104
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i29.i = icmp eq ptr %i.bz, %i.ag
  br i1 %.not.i.i.i29.i, label %_ZNSt6vectorI11cmGraphEdgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit36.i, label %.lr.ph.i.i.i.i, !llvm.loop !111

_ZNSt6vectorI11cmGraphEdgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit36.i: ; preds = %.lr.ph.i.i.i.i, %bb.n
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bi, %bb.n ], [ %i.ca, %.lr.ph.i.i.i.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 32
  %.not.i37.i = icmp eq ptr %i.aw, null
  br i1 %.not.i37.i, label %_ZNSt6vectorI11cmGraphEdgeSaIS0_EE17_M_realloc_insertIJRmbbRK19cmListFileBacktraceEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorI11cmGraphEdgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit36.i
  %i.cc = load ptr, ptr %i.ah, align 8, !tbaa !48
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = sub i64 %i.cd, %i.ay
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.ce) #19
  br label %_ZNSt6vectorI11cmGraphEdgeSaIS0_EE17_M_realloc_insertIJRmbbRK19cmListFileBacktraceEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit

_ZNSt6vectorI11cmGraphEdgeSaIS0_EE17_M_realloc_insertIJRmbbRK19cmListFileBacktraceEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit: ; preds = %_ZNSt6vectorI11cmGraphEdgeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit36.i, %bb.o
  store ptr %i.bi, ptr %i.z, align 8, !tbaa !31
  store ptr %i.cb, ptr %i.af, align 8, !tbaa !34
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %i.bf
  store ptr %i.cf, ptr %i.ah, align 8, !tbaa !48
  br label %_ZNSt6vectorI11cmGraphEdgeSaIS0_EE12emplace_backIJRmbbRK19cmListFileBacktraceEEERS0_DpOT_.exit

_ZNSt6vectorI11cmGraphEdgeSaIS0_EE12emplace_backIJRmbbRK19cmListFileBacktraceEEERS0_DpOT_.exit: ; preds = %_ZNSt6vectorI11cmGraphEdgeSaIS0_EE17_M_realloc_insertIJRmbbRK19cmListFileBacktraceEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit, %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit.i, %.lr.ph
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.023.028, i64 32 ; 2 uses
  %.not26 = icmp eq ptr %i.cg, %i.s
  br i1 %.not26, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN23cmComputeComponentGraph11TarjanVisitEm(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !86
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !85
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  store i64 %i.c, ptr %i.f, align 8, !tbaa !86
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %1 ; 2 uses
  store i64 %1, ptr %i.i, align 8, !tbaa !112
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %1
  store i64 -1, ptr %i.l, align 8, !tbaa !86
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !87
end_hunk_0
