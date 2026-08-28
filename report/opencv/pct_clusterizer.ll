Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/pct_clusterizer?download=true
inline.NumInlined: 336
inline.NumDeleted: 173
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZNSt6vectorIiSaIiEEaSERKS1_:bb.a

bb.s:                                             ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit
  %i.ao = icmp eq i64 %i.am, 4
  br i1 %i.ao, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.ap = load i32, ptr %i.ak, align 4, !tbaa !27
  store i32 %i.ap, ptr %i.ai, align 4, !tbaa !27
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit
  %i.aq = load ptr, ptr %0, align 8, !tbaa !22
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !18
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

declare noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !98
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.3) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.d, ptr %i.a, align 8, !tbaa !99
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !51
  %i.g = load i64, ptr %i.a, align 8, !tbaa !99
  store i64 %i.g, ptr %i.b, align 8, !tbaa !50
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !50
  store i8 %i.i, ptr %i.h, align 1, !tbaa !50
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !99   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !100
  %i.l = load ptr, ptr %0, align 8, !tbaa !51
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

declare void @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv11xfeatures2d14pct_signatures19PCTClusterizer_Impl18pickRandomClustersERNS_3MatES4_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::Range", align 4         ; 5 uses
  %4 = alloca %"class.cv::Range", align 8         ; 4 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !82
  %i.b = and i32 %i.a, 4095
  tail call void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef 0, i32 noundef 8, i32 noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2
  tail call void @_ZN2cv3Mat7reserveEm(ptr noundef nonnull align 8 dereferenceable(208) %2, i64 noundef %i.j)
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = lshr exact i64 %i.o, 2
  %i.q = trunc i64 %i.p to i32
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.b

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.t = phi ptr [ %i.l, %.lr.ph ], [ %i.y, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4, !tbaa !27   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16, !noalias !101
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.v, ptr %3, align 4, !tbaa !104, !noalias !101
  store i32 %i.w, ptr %i.s, align 4, !tbaa !106, !noalias !101
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16, !noalias !101
  store i64 9223372034707292160, ptr %4, align 8, !noalias !101
  call void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16, !noalias !101
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16, !noalias !101
  invoke void @_ZN2cv3Mat9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %5)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %sext = shl i64 %i.ab, 30
  %i.ac = ashr i64 %sext, 32
  %i.ad = icmp slt i64 %indvars.iv.next, %i.ac
  br i1 %i.ad, label %bb.b, label %._crit_edge, !llvm.loop !107

bb.d:                                             ; preds = %bb.b
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  resume { ptr, i32 } %i.ae
}

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv11xfeatures2d14pct_signatures19PCTClusterizer_Impl15dropLightPointsERNS_3MatE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Range", align 4         ; 5 uses
  %3 = alloca %"class.cv::Range", align 8         ; 4 uses
  %4 = alloca %"class.cv::Range", align 4         ; 5 uses
  %5 = alloca %"class.cv::Range", align 8         ; 4 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %7 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !61   ; 6 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !75
  %.fr43 = freeze i32 %i.e
  %i.f = icmp slt i32 %.fr43, 2
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !76   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load float, ptr %i.k, align 8, !tbaa !39 ; 2 uses
  br i1 %i.f, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.m = load float, ptr %i.h, align 4, !tbaa !77
  %i.n = fcmp ogt float %i.m, %i.l
  br i1 %i.n, label %.lr.ph.split.us.split.us.preheader, label %.critedge

.lr.ph.split.us.split.us.preheader:               ; preds = %.lr.ph.split.us
  br label %.critedge

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.o = mul i64 %i.j, %indvars.iv
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.o
  %i.p = load float, ptr %.sink.i, align 4, !tbaa !77
  %i.q = fcmp ogt float %i.p, %i.l
  br i1 %i.q, label %bb.b, label %.critedge.loopexit.split.loop.exit52

bb.b:                                             ; preds = %.lr.ph.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph.split, !llvm.loop !108

.critedge.loopexit.split.loop.exit52:             ; preds = %.lr.ph.split
  %i.r = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %.critedge.loopexit.split.loop.exit52, %.lr.ph.split.us.split.us.preheader, %.lr.ph.split.us, %bb.a
  %.024.lcssa = phi i32 [ 0, %bb.a ], [ 0, %.lr.ph.split.us ], [ %i.b, %.lr.ph.split.us.split.us.preheader ], [ %i.r, %.critedge.loopexit.split.loop.exit52 ], [ %i.b, %bb.b ] ; 5 uses
  %.12537 = add nuw nsw i32 %.024.lcssa, 1
  %i.s = icmp slt i32 %.12537, %i.b
  br i1 %i.s, label %.lr.ph41, label %._crit_edge

.lr.ph41:                                         ; preds = %.critedge
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ab = zext i32 %.024.lcssa to i64
  %i.ac = add nuw nsw i64 %i.ab, 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph41, %bb.j
  %i.ad = phi i32 [ %i.b, %.lr.ph41 ], [ %i.ar, %bb.j ]
  %indvars.iv46 = phi i64 [ %i.ac, %.lr.ph41 ], [ %indvars.iv.next47, %bb.j ] ; 4 uses
  %.02239 = phi i32 [ %.024.lcssa, %.lr.ph41 ], [ %.123, %bb.j ] ; 3 uses
  %.125.in38 = phi i32 [ %.024.lcssa, %.lr.ph41 ], [ %.pre-phi, %bb.j ]
  %i.ae = load i32, ptr %i.t, align 4, !tbaa !75
  %i.af = icmp slt i32 %i.ae, 2
  %i.ag = load ptr, ptr %i.u, align 8, !tbaa !76
  %i.ah = load i64, ptr %i.v, align 8
  %i.ai = mul i64 %i.ah, %indvars.iv46
  %.sink.idx.i28 = select i1 %i.af, i64 0, i64 %i.ai
  %.sink.i29 = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.sink.idx.i28
  %i.aj = load float, ptr %.sink.i29, align 4, !tbaa !77
  %i.ak = load float, ptr %i.w, align 8, !tbaa !39
  %i.al = fcmp ogt float %i.aj, %i.ak
  br i1 %i.al, label %bb.d, label %._crit_edge49

._crit_edge49:                                    ; preds = %bb.c
  %.pre50 = trunc nuw i64 %indvars.iv46 to i32
  br label %bb.j

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16, !noalias !109
  %i.am = add nuw nsw i32 %.125.in38, 2
  %i.an = trunc nuw i64 %indvars.iv46 to i32      ; 2 uses
  store i32 %i.an, ptr %4, align 4, !tbaa !104, !noalias !109
  store i32 %i.am, ptr %i.x, align 4, !tbaa !106, !noalias !109
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16, !noalias !109
  store i64 9223372034707292160, ptr %5, align 8, !noalias !109
  call void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16, !noalias !109
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16, !noalias !109
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16, !noalias !112
  %i.ao = add nsw i32 %.02239, 1                  ; 2 uses
  store i32 %.02239, ptr %2, align 4, !tbaa !104, !noalias !112
  store i32 %i.ao, ptr %i.y, align 4, !tbaa !106, !noalias !112
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16, !noalias !112
  store i64 9223372034707292160, ptr %3, align 8, !noalias !112
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16, !noalias !112
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16, !noalias !112
  store i64 0, ptr %i.aa, align 8
  store i32 -1040121856, ptr %7, align 8, !tbaa !83
  store ptr %8, ptr %i.z, align 8, !tbaa !58
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %.pre = load i32, ptr %i.a, align 8, !tbaa !61
  br label %bb.j

bb.g:                                             ; preds = %bb.d
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.aq, %bb.h ], [ %i.ap, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  resume { ptr, i32 } %.pn.pn

bb.j:                                             ; preds = %._crit_edge49, %bb.f
  %.pre-phi = phi i32 [ %.pre50, %._crit_edge49 ], [ %i.an, %bb.f ]
  %i.ar = phi i32 [ %i.ad, %._crit_edge49 ], [ %.pre, %bb.f ] ; 2 uses
  %.123 = phi i32 [ %.02239, %._crit_edge49 ], [ %i.ao, %bb.f ] ; 2 uses
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %i.as = trunc nuw i64 %indvars.iv.next47 to i32
  %i.at = icmp sgt i32 %i.ar, %i.as
  br i1 %i.at, label %bb.c, label %._crit_edge, !llvm.loop !115

._crit_edge:                                      ; preds = %bb.j, %.critedge
  %.022.lcssa = phi i32 [ %.024.lcssa, %.critedge ], [ %.123, %bb.j ]
  %i.au = sext i32 %.022.lcssa to i64
  call void @_ZN2cv3Mat6resizeEm(ptr noundef nonnull align 8 dereferenceable(208) %1, i64 noundef %i.au)
  ret void
}

declare void @_ZN2cv3MatC1ENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208), i64, i32 noundef) unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv() local_unnamed_addr #5

declare void @_ZN2cv3Mat6resizeEm(ptr noundef nonnull align 8 dereferenceable(208), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv11xfeatures2d14pct_signatures19PCTClusterizer_Impl12cropClustersERNS_3MatE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Range", align 4         ; 5 uses
  %3 = alloca %"class.cv::Range", align 8         ; 4 uses
  %4 = alloca %"class.cv::Range", align 4         ; 5 uses
  %5 = alloca %"class.cv::Range", align 8         ; 4 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %10 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %11 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %13 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %14 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !61
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !36
  %i.e = icmp sgt i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %7) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.f = load i32, ptr %i.a, align 8, !tbaa !61
  store i32 0, ptr %10, align 4, !tbaa !70
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 0, ptr %i.g, align 4, !tbaa !72
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 1, ptr %i.h, align 4, !tbaa !73
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 %i.f, ptr %i.i, align 4, !tbaa !74
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(16) %10)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.j, align 8, !tbaa !89
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 0, ptr %i.k, align 4, !tbaa !90
  store i32 16842752, ptr %8, align 8, !tbaa !83
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %9, ptr %i.l, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 0, ptr %i.n, align 8
  store i32 33619968, ptr %11, align 8, !tbaa !83
  store ptr %7, ptr %i.m, align 8, !tbaa !58
  invoke void @_ZN2cv7sortIdxERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 17)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %i.o = load i32, ptr %i.c, align 4, !tbaa !36
  %i.p = sext i32 %i.o to i64
  invoke void @_ZN2cv3Mat6resizeEm(ptr noundef nonnull align 8 dereferenceable(208) %1, i64 noundef %i.p)
          to label %.preheader unwind label %bb.h

.preheader:                                       ; preds = %bb.d
  %i.q = load i32, ptr %i.c, align 4, !tbaa !36
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 24
end_hunk_0
