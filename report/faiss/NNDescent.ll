inline.NumInlined: 1107
inline.NumDeleted: 428
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN5faiss9nndescent5NhoodC2EOS1_:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.c = load <2 x ptr>, ptr %i.b, align 8, !tbaa !55
  store <2 x ptr> %i.c, ptr %i.a, align 8, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28
  store ptr %i.f, ptr %i.d, align 8, !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.i = load i32, ptr %i.h, align 8, !tbaa !9
  store i32 %i.i, ptr %i.g, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.l = load <2 x ptr>, ptr %i.k, align 8, !tbaa !56
  store <2 x ptr> %i.l, ptr %i.j, align 8, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !26
  store ptr %i.o, ptr %i.m, align 8, !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.r = load <2 x ptr>, ptr %i.q, align 8, !tbaa !56
  store <2 x ptr> %i.r, ptr %i.p, align 8, !tbaa !56
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !26
  store ptr %i.u, ptr %i.s, align 8, !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.x = load <2 x ptr>, ptr %i.w, align 8, !tbaa !56
  store <2 x ptr> %i.x, ptr %i.v, align 8, !tbaa !56
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !26
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.ad = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !56
  store <2 x ptr> %i.ad, ptr %i.ab, align 8, !tbaa !56
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !26
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(168) ptr @_ZN5faiss9nndescent5NhoodaSEOS1_(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(168) %0, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(168) %1) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EEaSEOS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.b, ptr %i.c, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.i = load <2 x ptr>, ptr %i.d, align 8, !tbaa !56
  store <2 x ptr> %i.i, ptr %i.e, align 8, !tbaa !56
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26
  store ptr %i.k, ptr %i.g, align 8, !tbaa !26
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = ptrtoint ptr %i.f to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.n) #25
  br label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit

_ZNSt6vectorIiSaIiEEaSEOS1_.exit:                 ; preds = %bb.b, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !24   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !26
  %i.t = load <2 x ptr>, ptr %i.o, align 8, !tbaa !56
  store <2 x ptr> %i.t, ptr %i.p, align 8, !tbaa !56
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !26
  store ptr %i.v, ptr %i.r, align 8, !tbaa !26
  %.not.i.i.i.i.i9 = icmp eq ptr %i.q, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i9, label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit10, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEEaSEOS1_.exit
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = ptrtoint ptr %i.q to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.y) #25
  br label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit10

_ZNSt6vectorIiSaIiEEaSEOS1_.exit10:               ; preds = %_ZNSt6vectorIiSaIiEEaSEOS1_.exit, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !24 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !26
  %i.ae = load <2 x ptr>, ptr %i.z, align 8, !tbaa !56
  store <2 x ptr> %i.ae, ptr %i.aa, align 8, !tbaa !56
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !26
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !26
  %.not.i.i.i.i.i11 = icmp eq ptr %i.ab, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i11, label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit12, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEEaSEOS1_.exit10
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = ptrtoint ptr %i.ab to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.aj) #25
  br label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit12

_ZNSt6vectorIiSaIiEEaSEOS1_.exit12:               ; preds = %_ZNSt6vectorIiSaIiEEaSEOS1_.exit10, %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !24 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !26
  %i.ap = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !56
  store <2 x ptr> %i.ap, ptr %i.al, align 8, !tbaa !56
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !26
  store ptr %i.ar, ptr %i.an, align 8, !tbaa !26
  %.not.i.i.i.i.i13 = icmp eq ptr %i.am, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i13, label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit14, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEEaSEOS1_.exit12
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = ptrtoint ptr %i.am to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.au) #25
  br label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit14

_ZNSt6vectorIiSaIiEEaSEOS1_.exit14:               ; preds = %_ZNSt6vectorIiSaIiEEaSEOS1_.exit12, %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !27 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !28
  %i.ba = load <2 x ptr>, ptr %i.av, align 8, !tbaa !55
  store <2 x ptr> %i.ba, ptr %i.aw, align 8, !tbaa !55
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !28
  store ptr %i.bc, ptr %i.ay, align 8, !tbaa !28
  %.not.i.i.i.i.i15 = icmp eq ptr %i.ax, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i15, label %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EEaSEOS4_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEEaSEOS1_.exit14
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = ptrtoint ptr %i.ax to i64
  %i.bf = sub i64 %i.bd, %i.be
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bf) #25
  br label %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EEaSEOS4_.exit

_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EEaSEOS4_.exit: ; preds = %bb.g, %_ZNSt6vectorIiSaIiEEaSEOS1_.exit14, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss9nndescent5Nhood6insertEif(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef %1, float noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %0) #19 ; 2 uses
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #26
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55   ; 19 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !57
  %i.f = fcmp ogt float %2, %i.e
  br i1 %i.f, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !49   ; 12 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.k = sub i64 %i.i, %i.j                       ; 9 uses
  %i.l = sdiv i64 %i.k, 12                        ; 5 uses
  %.not57.not = icmp eq ptr %i.h, %i.c
  br i1 %.not57.not, label %.critedge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %umax = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  br label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.m = add nuw i64 %.01758, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, %umax
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !59

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.01758 = phi i64 [ %i.m, %bb.c ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.n = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %.01758
  %i.o = load i32, ptr %i.n, align 4, !tbaa !60
  %i.p = icmp eq i32 %1, %i.o
  br i1 %i.p, label %.loopexit, label %bb.c

.critedge:                                        ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !28   ; 2 uses
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.s, %i.j
  %i.u = icmp ult i64 %i.k, %i.t
  br i1 %i.u, label %bb.d, label %bb.l

.critedge.thread:                                 ; preds = %.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !28   ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.j
  %i.z = icmp ult i64 %i.k, %i.y
  br i1 %i.z, label %.thread76, label %_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit

bb.d:                                             ; preds = %.critedge
  %.not.i.i22 = icmp eq ptr %i.h, %i.r
  br i1 %.not.i.i22, label %bb.f, label %bb.e

.thread76:                                        ; preds = %.critedge.thread
  %.not.i.i2277 = icmp eq ptr %i.h, %i.w
  br i1 %.not.i.i2277, label %_ZNKSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.thread76, %bb.d
  store i32 %1, ptr %i.h, align 4, !tbaa !37
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store float %2, ptr %.sroa.640.0..sroa_idx, align 4, !tbaa !51
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i8 1, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !53
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 2 uses
  store ptr %i.aa, ptr %i.g, align 8, !tbaa !49
  br label %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE9push_backEOS2_.exit

bb.f:                                             ; preds = %bb.d
  %i.ab = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.ab, label %bb.g, label %_ZNKSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #26
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %.thread76, %bb.f
  %i.ac = phi ptr [ %i.q, %bb.f ], [ %i.v, %.thread76 ]
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i.i.i, %i.l ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.l
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 768614336404564650)
  %i.ag = select i1 %i.ae, i64 768614336404564650, i64 %i.af ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ah = mul nuw nsw i64 %i.ag, 12
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #27
          to label %.noexc23 unwind label %bb.k   ; 6 uses

.noexc23:                                         ; preds = %_ZNKSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %i.k ; 4 uses
  store i32 %1, ptr %i.aj, align 4, !tbaa !37
  %.sroa.640.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store float %2, ptr %.sroa.640.0..sroa_idx41, align 4, !tbaa !51
  %.sroa.7.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i8 1, ptr %.sroa.7.0..sroa_idx43, align 4, !tbaa !53
  %i.ak = icmp sgt i64 %i.k, 0
  br i1 %i.ak, label %bb.h, label %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

bb.h:                                             ; preds = %.noexc23
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr nonnull align 4 %i.c, i64 %i.k, i1 false)
  br label %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.h, %.noexc23
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 12 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.k) #25
  store ptr %i.ai, ptr %i.b, align 8, !tbaa !27
  store ptr %i.al, ptr %i.g, align 8, !tbaa !49
  %i.am = getelementptr inbounds nuw [12 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.am, ptr %i.ac, align 8, !tbaa !28
  %.pre63 = ptrtoint ptr %i.ai to i64
  br label %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.e
  %.pre-phi = phi i64 [ %.pre63, %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.j, %bb.e ]
  %i.an = phi ptr [ %i.al, %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.aa, %bb.e ] ; 3 uses
  %i.ao = phi ptr [ %i.ai, %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.c, %bb.e ] ; 3 uses
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 -12
  %.sroa.05.0.copyload.i = load i64, ptr %i.ap, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.an, i64 -4
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !53
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.aq, %.pre-phi                ; 2 uses
  %i.as = sdiv exact i64 %i.ar, 12
  %i.at = add nsw i64 %i.as, -1                   ; 2 uses
  %i.au = icmp sgt i64 %i.ar, 12
  br i1 %i.au, label %.lr.ph.i.i, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE9push_backEOS2_.exit
  %.sroa.013.sroa.2.0.extract.shift.i.i = lshr i64 %.sroa.05.0.copyload.i, 32
  %.sroa.013.sroa.2.0.extract.trunc.i.i = trunc nuw i64 %.sroa.013.sroa.2.0.extract.shift.i.i to i32
  %i.av = bitcast i32 %.sroa.013.sroa.2.0.extract.trunc.i.i to float
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i.i
  %.022.i.i = phi i64 [ %i.at, %.lr.ph.i.i ], [ %.01023.i1011.i, %bb.j ] ; 3 uses
  %.01023.in.i.i = add nsw i64 %.022.i.i, -1
  %.01023.i1011.i = lshr i64 %.01023.in.i.i, 1    ; 3 uses
  %i.aw = getelementptr inbounds nuw [12 x i8], ptr %i.ao, i64 %.01023.i1011.i ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !57
  %i.az = fcmp olt float %i.ay, %i.av
  br i1 %i.az, label %bb.j, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds [12 x i8], ptr %i.ao, i64 %.022.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.ba, ptr noundef nonnull align 4 dereferenceable(9) %i.aw, i64 9, i1 false), !tbaa.struct !50
  %.not.i = icmp eq i64 %.01023.i1011.i, 0
  br i1 %.not.i, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %bb.i, !llvm.loop !61

_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit: ; preds = %bb.i, %bb.j, %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE9push_backEOS2_.exit
  %.0.lcssa.i.i = phi i64 [ %i.at, %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE9push_backEOS2_.exit ], [ 0, %bb.j ], [ %.022.i.i, %bb.i ]
  %i.bb = getelementptr inbounds [12 x i8], ptr %i.ao, i64 %.0.lcssa.i.i ; 2 uses
  store i64 %.sroa.05.0.copyload.i, ptr %i.bb, align 4
  br label %.loopexit.sink.split

bb.k:                                             ; preds = %_ZNKSt6vectorIN5faiss9nndescent8NeighborESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.g
  %i.bc = landingpad { ptr, i32 }
          cleanup
  %i.bd = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #19 ; 0 uses
  resume { ptr, i32 } %i.bc

bb.l:                                             ; preds = %.critedge
  %i.be = icmp sgt i64 %i.k, 12
  br i1 %i.be, label %bb.m, label %_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds i8, ptr %i.h, i64 -12 ; 3 uses
  %.sroa.05.0.copyload.i.i = load i64, ptr %i.bf, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.h, i64 -4
  %.sroa.4.0.copyload.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !53
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.bf, ptr noundef nonnull align 4 dereferenceable(9) %i.c, i64 9, i1 false), !tbaa.struct !50
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.bg, %i.j                     ; 2 uses
  %i.bi = sdiv exact i64 %i.bh, 12                ; 3 uses
  %i.bj = add nsw i64 %i.bi, -1
  %i.bk = sdiv i64 %i.bj, 2
  %i.bl = icmp sgt i64 %i.bh, 24
  br i1 %i.bl, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m, %.lr.ph.i.i.i
  %.043.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.m ] ; 2 uses
  %i.bm = shl i64 %.043.i.i.i, 1                  ; 2 uses
  %i.bn = add i64 %i.bm, 2                        ; 2 uses
  %i.bo = getelementptr inbounds [12 x i8], ptr %i.c, i64 %i.bn
  %i.bp = or disjoint i64 %i.bm, 1                ; 2 uses
  %i.bq = getelementptr inbounds [12 x i8], ptr %i.c, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bs = load float, ptr %i.br, align 4, !tbaa !57
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !57
  %i.bv = fcmp olt float %i.bs, %i.bu
  %spec.select.i.i.i = select i1 %i.bv, i64 %i.bp, i64 %i.bn ; 4 uses
  %i.bw = getelementptr inbounds [12 x i8], ptr %i.c, i64 %spec.select.i.i.i
  %i.bx = getelementptr inbounds [12 x i8], ptr %i.c, i64 %.043.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.bx, ptr noundef nonnull align 4 dereferenceable(9) %i.bw, i64 9, i1 false), !tbaa.struct !50
  %i.by = icmp slt i64 %spec.select.i.i.i, %i.bk
  br i1 %i.by, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !62

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.m
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.m ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 5 uses
  %i.bz = and i64 %i.bi, 1
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i.i
  %i.cb = add nsw i64 %i.bi, -2
  %i.cc = ashr exact i64 %i.cb, 1
  %i.cd = icmp eq i64 %.0.lcssa.i.i.i, %i.cc
  br i1 %i.cd, label %.thread.i.i, label %bb.o

.thread.i.i:                                      ; preds = %bb.n
  %i.ce = shl nuw nsw i64 %.0.lcssa.i.i.i, 1
  %i.cf = or disjoint i64 %i.ce, 1                ; 2 uses
  %i.cg = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %i.cf
  %i.ch = getelementptr inbounds [12 x i8], ptr %i.c, i64 %.0.lcssa.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.ch, ptr noundef nonnull align 4 dereferenceable(9) %i.cg, i64 9, i1 false), !tbaa.struct !50
  br label %.lr.ph.i.i.i.i

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i.i
  %.not.i.i24 = icmp eq i64 %.0.lcssa.i.i.i, 0
  br i1 %.not.i.i24, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.o, %.thread.i.i
  %.1.i11.i.i = phi i64 [ %i.cf, %.thread.i.i ], [ %.0.lcssa.i.i.i, %bb.o ]
  %.sroa.013.sroa.2.0.extract.shift.i.i.i.i = lshr i64 %.sroa.05.0.copyload.i.i, 32
end_hunk_0
begin_hunk_1_@_ZN5faiss9NNDescent9nndescentERNS_16DistanceComputerEb:bb.a
  %i.h = icmp slt i32 %i.e, 0
  br i1 %i.h, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #26
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.thread.i, label %.noexc18

.noexc18:                                         ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.i = shl nuw nsw i64 %i.g, 2
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #27 ; 6 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !24
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.g
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !26
  store i32 0, ptr %i.j, align 4, !tbaa !37
  %i.m = getelementptr i8, ptr %i.j, i64 4        ; 3 uses
  %i.n = add nsw i64 %i.g, -1                     ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc18
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.n, 2   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.m, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx.i.i.i.i.i.i.i
  br label %.lr.ph.preheader.i.i.i.i.i

_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.thread.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i64 0, ptr %4, align 8
  br label %bb.b

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.noexc18, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i.ph = phi ptr [ %i.p, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.m, %.noexc18 ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %.0.i.i.i.i.i.ph, ptr %i.r, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.s = mul nuw nsw i64 %i.g, 24                 ; 3 uses
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #27
          to label %.noexc21 unwind label %.thread ; 4 uses

.noexc21:                                         ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.t, ptr %4, align 8, !tbaa !128
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.g
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.t, i8 0, i64 %i.s, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.t, i64 %i.s
  %i.v = ptrtoint ptr %.0.i.i.i.i.i.ph to i64
  br label %bb.b

bb.b:                                             ; preds = %.noexc21, %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.thread.i
  %i.w = phi ptr [ null, %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.j, %.noexc21 ] ; 2 uses
  %i.x = phi ptr [ %i.q, %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.r, %.noexc21 ]
  %.0.i.i.i.i.i30 = phi i64 [ 0, %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.v, %.noexc21 ]
  %.sink.i = phi ptr [ null, %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.u, %.noexc21 ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %scevgep.i.i.i.i.i, %.noexc21 ]
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %.sink.i, ptr %i.z, align 8, !tbaa !131
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.y, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !90
  %i.ac = mul nsw i32 %i.ab, 6577
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  store i64 %i.ad, ptr %5, align 8, !tbaa !67
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %store_forwarded = phi i64 [ %i.ad, %bb.b ], [ %i.aq, %bb.d ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %bb.b ], [ %i.ar, %bb.d ] ; 4 uses
  %i.ae = getelementptr [8 x i8], ptr %5, i64 %.011.i.i
  %i.af = lshr i64 %store_forwarded, 30
  %i.ag = xor i64 %i.af, %store_forwarded
  %i.ah = mul nuw nsw i64 %i.ag, 1812433253
  %i.ai = add nuw i64 %i.ah, %.011.i.i            ; 2 uses
  %i.aj = and i64 %i.ai, 4294967295               ; 2 uses
  store i64 %i.aj, ptr %i.ae, align 8, !tbaa !67
  %i.ak = add nuw nsw i64 %.011.i.i, 1            ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.ak, 624
  br i1 %exitcond.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr [8 x i8], ptr %5, i64 %i.ak
  %i.am = lshr i64 %i.aj, 30
  %i.an = xor i64 %i.am, %i.ai
  %i.ao = mul i64 %i.an, 1812433253
  %i.ap = add i64 %i.ao, %i.ak
  %i.aq = and i64 %i.ap, 4294967295               ; 2 uses
  store i64 %i.aq, ptr %i.al, align 8, !tbaa !67
  %i.ar = add nuw nsw i64 %.011.i.i, 2
  br label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 4992
  store i64 624, ptr %i.as, align 8, !tbaa !65
  %i.at = ptrtoint ptr %i.w to i64
  %i.au = sub i64 %.0.i.i.i.i.i30, %i.at
  %i.av = lshr exact i64 %i.au, 2
  %i.aw = trunc i64 %i.av to i32
  invoke void @_ZN5faiss9nndescent10gen_randomERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEPiii(ptr noundef nonnull align 8 dereferenceable(5000) %5, ptr noundef %i.w, i32 noundef %i.aw, i32 noundef %i.e)
          to label %bb.f unwind label %bb.t

bb.f:                                             ; preds = %bb.e
  %i.ax = load i32, ptr %i.d, align 4, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.ax, ptr %i.c, align 4, !tbaa !37
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 5, ptr nonnull @_ZN5faiss9NNDescent17generate_eval_setERNS_16DistanceComputerERSt6vectorIiSaIiEERS3_IS5_SaIS5_EEi.omp_outlined, ptr nonnull align 8 dereferenceable(24) %3, ptr nonnull %i.c, ptr nonnull align 8 dereferenceable(8) %1, ptr nonnull align 8 dereferenceable(88) %0, ptr nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !133
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  br i1 %2, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN5faiss9NNDescent11eval_recallERSt6vectorIiSaIiEERS1_IS3_SaIS3_EE.exit.us
  %.033.us = phi i32 [ %i.dz, %_ZN5faiss9NNDescent11eval_recallERSt6vectorIiSaIiEERS1_IS3_SaIS3_EE.exit.us ], [ 0, %.lr.ph ] ; 2 uses
  %i.bf = load i32, ptr %i.bb, align 4, !tbaa !92
  %i.bg = load i32, ptr %i.bc, align 8, !tbaa !98
  %i.bh = mul nsw i32 %i.bg, %i.bf
  %i.bi = sext i32 %i.bh to i64
  %i.bj = invoke noundef i64 @_ZN5faiss17InterruptCallback15get_period_hintEm(i64 noundef %i.bi)
          to label %.noexc23.us unwind label %.loopexit.split-lp.split.us ; 2 uses

.noexc23.us:                                      ; preds = %.lr.ph.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 0, ptr %i.a, align 8, !tbaa !67
  %i.bk = load i32, ptr %i.d, align 4, !tbaa !99  ; 2 uses
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %.lr.ph.preheader.i.us, label %.loopexit32.us

.lr.ph.preheader.i.us:                            ; preds = %.noexc23.us
  %i.bm = zext nneg i32 %i.bk to i64
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.noexc24.us, %.lr.ph.preheader.i.us
  %i.bn = phi i64 [ %i.bs, %.noexc24.us ], [ %i.bm, %.lr.ph.preheader.i.us ]
  %storemerge6.i.us = phi i64 [ %i.bq, %.noexc24.us ], [ 0, %.lr.ph.preheader.i.us ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.bo = add nsw i64 %storemerge6.i.us, %i.bj
  %.sroa.speculated.i.us = call i64 @llvm.smin.i64(i64 %i.bo, i64 %i.bn)
  store i64 %.sroa.speculated.i.us, ptr %i.b, align 8, !tbaa !67
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 4, ptr nonnull @_ZN5faiss9NNDescent4joinERNS_16DistanceComputerE.omp_outlined, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(88) %0, ptr nonnull align 8 dereferenceable(8) %1)
  invoke void @_ZN5faiss17InterruptCallback5checkEv()
          to label %.noexc24.us unwind label %.loopexit.split.us

.noexc24.us:                                      ; preds = %.lr.ph.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !67
  %i.bq = add nsw i64 %i.bp, %i.bj                ; 3 uses
  store i64 %i.bq, ptr %i.a, align 8, !tbaa !67
  %i.br = load i32, ptr %i.d, align 4, !tbaa !99
  %i.bs = sext i32 %i.br to i64                   ; 2 uses
  %i.bt = icmp slt i64 %i.bq, %i.bs
  br i1 %i.bt, label %.lr.ph.i.us, label %.loopexit32.us, !llvm.loop !100

.loopexit32.us:                                   ; preds = %.noexc24.us, %.noexc23.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @_ZN5faiss9NNDescent6updateEv.omp_outlined, ptr nonnull align 8 dereferenceable(88) %0)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @_ZN5faiss9NNDescent6updateEv.omp_outlined.7, ptr nonnull align 8 dereferenceable(88) %0)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @_ZN5faiss9NNDescent6updateEv.omp_outlined.8, ptr nonnull align 8 dereferenceable(88) %0)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @_ZN5faiss9NNDescent6updateEv.omp_outlined.9, ptr nonnull align 8 dereferenceable(88) %0)
  %i.bu = load ptr, ptr %i.x, align 8, !tbaa !25  ; 2 uses
  %i.bv = load ptr, ptr %3, align 8, !tbaa !24    ; 3 uses
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = ashr exact i64 %i.by, 2                 ; 2 uses
  %.not.i.us = icmp eq ptr %i.bu, %i.bv
  br i1 %.not.i.us, label %_ZN5faiss9NNDescent11eval_recallERSt6vectorIiSaIiEERS1_IS3_SaIS3_EE.exit.us, label %.lr.ph.i25.us

.lr.ph.i25.us:                                    ; preds = %.loopexit32.us
  %i.ca = load ptr, ptr %i.bd, align 8, !tbaa !94
  %i.cb = load ptr, ptr %4, align 8, !tbaa !128
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.us, %.lr.ph.i25.us
  %.02532.i.us = phi i64 [ 0, %.lr.ph.i25.us ], [ %i.dt, %._crit_edge.i.us ] ; 3 uses
  %.02631.i.us = phi float [ 0.000000e+00, %.lr.ph.i25.us ], [ %i.ds, %._crit_edge.i.us ]
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %.02532.i.us
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !37
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [168 x i8], ptr %i.ca, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.cb, i64 %.02532.i.us ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !49 ; 2 uses
  %i.ck = load ptr, ptr %i.cg, align 8, !tbaa !27 ; 5 uses
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = sdiv i64 %i.cn, 12                      ; 2 uses
  %.not36.i.us = icmp eq ptr %i.cj, %i.ck
  %.phi.trans.insert.i.us = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %.pre.i.us = load ptr, ptr %.phi.trans.insert.i.us, align 8, !tbaa !25 ; 2 uses
  %.pre43.i.us = load ptr, ptr %i.ch, align 8, !tbaa !24 ; 5 uses
  %.pre44.i.us = ptrtoint ptr %.pre.i.us to i64   ; 3 uses
  %.pre45.i.us = ptrtoint ptr %.pre43.i.us to i64 ; 5 uses
  br i1 %.not36.i.us, label %._crit_edge.i.us, label %.preheader.lr.ph.i.us

.preheader.lr.ph.i.us:                            ; preds = %bb.g
  %.not37.i.us = icmp eq ptr %.pre.i.us, %.pre43.i.us
  br i1 %.not37.i.us, label %._crit_edge.i.us, label %.preheader.us.preheader.i.us

.preheader.us.preheader.i.us:                     ; preds = %.preheader.lr.ph.i.us
  %i.cp = sub i64 %.pre44.i.us, %.pre45.i.us
  %i.cq = ashr exact i64 %i.cp, 2                 ; 3 uses
  %umax39.i.us = call i64 @llvm.umax.i64(i64 %i.co, i64 1) ; 3 uses
  %xtraiter = and i64 %umax39.i.us, 1
  %6 = icmp ult i64 %i.co, 2
  br i1 %6, label %.preheader.us.i.us.epil.preheader, label %.preheader.us.preheader.i.us.new

.preheader.us.preheader.i.us.new:                 ; preds = %.preheader.us.preheader.i.us
  %unroll_iter = and i64 %umax39.i.us, -2
  br label %.preheader.us.i.us

.preheader.us.i.us:                               ; preds = %..loopexit_crit_edge.us.i.us.1, %.preheader.us.preheader.i.us.new
  %.02329.us.i.us = phi i64 [ 0, %.preheader.us.preheader.i.us.new ], [ %i.dg, %..loopexit_crit_edge.us.i.us.1 ] ; 3 uses
  %.02428.us.i.us = phi float [ 0.000000e+00, %.preheader.us.preheader.i.us.new ], [ %.1.us.i.us.1, %..loopexit_crit_edge.us.i.us.1 ] ; 2 uses
  %niter = phi i64 [ 0, %.preheader.us.preheader.i.us.new ], [ %niter.next.1, %..loopexit_crit_edge.us.i.us.1 ]
  %i.cr = getelementptr inbounds nuw [12 x i8], ptr %i.ck, i64 %.02329.us.i.us
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !60
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.preheader.us.i.us
  %.027.us.i.us = phi i64 [ 0, %.preheader.us.i.us ], [ %i.cw, %bb.i ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.pre43.i.us, i64 %.027.us.i.us
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !37
  %i.cv = icmp eq i32 %i.cs, %i.cu
  br i1 %i.cv, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cw = add nuw i64 %.027.us.i.us, 1            ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.cw, %i.cq
  br i1 %exitcond.not.i.us, label %..loopexit_crit_edge.us.i.us, label %bb.h, !llvm.loop !134

bb.j:                                             ; preds = %bb.h
  %i.cx = fadd float %.02428.us.i.us, 1.000000e+00
  br label %..loopexit_crit_edge.us.i.us

..loopexit_crit_edge.us.i.us:                     ; preds = %bb.i, %bb.j
  %.1.us.i.us = phi float [ %i.cx, %bb.j ], [ %.02428.us.i.us, %bb.i ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [12 x i8], ptr %i.ck, i64 %.02329.us.i.us
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !60
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %..loopexit_crit_edge.us.i.us
  %.027.us.i.us.1 = phi i64 [ 0, %..loopexit_crit_edge.us.i.us ], [ %i.de, %bb.l ] ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %.pre43.i.us, i64 %.027.us.i.us.1
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !37
  %i.dd = icmp eq i32 %i.da, %i.dc
  br i1 %i.dd, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.de = add nuw i64 %.027.us.i.us.1, 1          ; 2 uses
  %exitcond.not.i.us.1 = icmp eq i64 %i.de, %i.cq
  br i1 %exitcond.not.i.us.1, label %..loopexit_crit_edge.us.i.us.1, label %bb.k, !llvm.loop !134

bb.m:                                             ; preds = %bb.k
  %i.df = fadd float %.1.us.i.us, 1.000000e+00
  br label %..loopexit_crit_edge.us.i.us.1

..loopexit_crit_edge.us.i.us.1:                   ; preds = %bb.l, %bb.m
  %.1.us.i.us.1 = phi float [ %i.df, %bb.m ], [ %.1.us.i.us, %bb.l ] ; 3 uses
  %i.dg = add nuw i64 %.02329.us.i.us, 2          ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.us.loopexit.unr-lcssa, label %.preheader.us.i.us, !llvm.loop !135

._crit_edge.i.us.loopexit.unr-lcssa:              ; preds = %..loopexit_crit_edge.us.i.us.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.us, label %.preheader.us.i.us.epil.preheader

.preheader.us.i.us.epil.preheader:                ; preds = %._crit_edge.i.us.loopexit.unr-lcssa, %.preheader.us.preheader.i.us
  %.02329.us.i.us.epil.init = phi i64 [ 0, %.preheader.us.preheader.i.us ], [ %i.dg, %._crit_edge.i.us.loopexit.unr-lcssa ]
  %.02428.us.i.us.epil.init = phi float [ 0.000000e+00, %.preheader.us.preheader.i.us ], [ %.1.us.i.us.1, %._crit_edge.i.us.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod65 = trunc i64 %umax39.i.us to i1
  call void @llvm.assume(i1 %lcmp.mod65)
  %i.dh = getelementptr inbounds nuw [12 x i8], ptr %i.ck, i64 %.02329.us.i.us.epil.init
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !60
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.preheader.us.i.us.epil.preheader
  %.027.us.i.us.epil = phi i64 [ 0, %.preheader.us.i.us.epil.preheader ], [ %i.dm, %bb.o ] ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.pre43.i.us, i64 %.027.us.i.us.epil
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !37
  %i.dl = icmp eq i32 %i.di, %i.dk
  br i1 %i.dl, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dm = add nuw i64 %.027.us.i.us.epil, 1       ; 2 uses
  %exitcond.not.i.us.epil = icmp eq i64 %i.dm, %i.cq
  br i1 %exitcond.not.i.us.epil, label %._crit_edge.i.us, label %bb.n, !llvm.loop !134

bb.p:                                             ; preds = %bb.n
  %i.dn = fadd float %.02428.us.i.us.epil.init, 1.000000e+00
  br label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %._crit_edge.i.us.loopexit.unr-lcssa, %bb.o, %bb.p, %.preheader.lr.ph.i.us, %bb.g
  %.pre-phi46.i.us = phi i64 [ %.pre45.i.us, %bb.g ], [ %.pre44.i.us, %.preheader.lr.ph.i.us ], [ %.pre45.i.us, %bb.p ], [ %.pre45.i.us, %bb.o ], [ %.pre45.i.us, %._crit_edge.i.us.loopexit.unr-lcssa ]
  %.024.lcssa.i.us = phi float [ 0.000000e+00, %bb.g ], [ 0.000000e+00, %.preheader.lr.ph.i.us ], [ %.1.us.i.us.1, %._crit_edge.i.us.loopexit.unr-lcssa ], [ %i.dn, %bb.p ], [ %.02428.us.i.us.epil.init, %bb.o ]
  %i.do = sub i64 %.pre44.i.us, %.pre-phi46.i.us
  %i.dp = ashr exact i64 %i.do, 2
  %i.dq = uitofp i64 %i.dp to float
  %i.dr = fdiv float %.024.lcssa.i.us, %i.dq
  %i.ds = fadd float %.02631.i.us, %i.dr          ; 2 uses
  %i.dt = add nuw i64 %.02532.i.us, 1             ; 2 uses
  %exitcond42.not.i.us = icmp eq i64 %i.dt, %i.bz
  br i1 %exitcond42.not.i.us, label %_ZN5faiss9NNDescent11eval_recallERSt6vectorIiSaIiEERS1_IS3_SaIS3_EE.exit.us, label %bb.g, !llvm.loop !136

_ZN5faiss9NNDescent11eval_recallERSt6vectorIiSaIiEERS1_IS3_SaIS3_EE.exit.us: ; preds = %._crit_edge.i.us, %.loopexit32.us
  %.026.lcssa.i.us = phi float [ 0.000000e+00, %.loopexit32.us ], [ %i.ds, %._crit_edge.i.us ]
  %i.du = uitofp i64 %i.bz to float
  %i.dv = fdiv float %.026.lcssa.i.us, %i.du
  %i.dw = load i32, ptr %i.be, align 8, !tbaa !91
  %i.dx = fpext float %i.dv to double
  %i.dy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %.033.us, i32 noundef %i.dw, double noundef %i.dx) ; 0 uses
  %i.dz = add nuw nsw i32 %.033.us, 1             ; 2 uses
  %i.ea = load i32, ptr %i.ay, align 4, !tbaa !133
  %i.eb = icmp slt i32 %i.dz, %i.ea
  br i1 %i.eb, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !137

.loopexit.split-lp.split.us:                      ; preds = %.lr.ph.split.us
  %lpad.loopexit.split-lp.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split.us:                               ; preds = %.lr.ph.i.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

._crit_edge:                                      ; preds = %.loopexit32, %_ZN5faiss9NNDescent11eval_recallERSt6vectorIiSaIiEERS1_IS3_SaIS3_EE.exit.us, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.ec = load ptr, ptr %4, align 8, !tbaa !128   ; 3 uses
  %i.ed = load ptr, ptr %i.y, align 8, !tbaa !132 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ec, %i.ed
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ek, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i ], [ %i.ec, %._crit_edge ] ; 3 uses
  %i.ee = load ptr, ptr %.05.i.i.i, align 8, !tbaa !24 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !26
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = ptrtoint ptr %i.ee to i64
  %i.ej = sub i64 %i.eh, %i.ei
  call void @_ZdlPvm(ptr noundef nonnull %i.ee, i64 noundef %i.ej) #25
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i:  ; preds = %bb.q, %.lr.ph.i.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ek, %i.ed
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !138

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !128
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %i.el = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.ec, %._crit_edge ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.el, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i
  %i.em = load ptr, ptr %i.z, align 8, !tbaa !131
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = ptrtoint ptr %i.el to i64
  %i.ep = sub i64 %i.en, %i.eo
  call void @_ZdlPvm(ptr noundef nonnull %i.el, i64 noundef %i.ep) #25
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.eq = load ptr, ptr %3, align 8, !tbaa !24    ; 3 uses
  %.not.i.i.i22 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i22, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !26
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = ptrtoint ptr %i.eq to i64
  %i.ev = sub i64 %i.et, %i.eu
  call void @_ZdlPvm(ptr noundef nonnull %i.eq, i64 noundef %i.ev) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

.thread:                                          ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.v

bb.t:                                             ; preds = %bb.e
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.lr.ph.split:                                     ; preds = %.lr.ph, %.loopexit32
  %.033 = phi i32 [ %i.fn, %.loopexit32 ], [ 0, %.lr.ph ]
  %i.ey = load i32, ptr %i.bb, align 4, !tbaa !92
  %i.ez = load i32, ptr %i.bc, align 8, !tbaa !98
  %i.fa = mul nsw i32 %i.ez, %i.ey
  %i.fb = sext i32 %i.fa to i64
  %i.fc = invoke noundef i64 @_ZN5faiss17InterruptCallback15get_period_hintEm(i64 noundef %i.fb)
          to label %.noexc23 unwind label %.loopexit.split-lp.split ; 2 uses

.noexc23:                                         ; preds = %.lr.ph.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 0, ptr %i.a, align 8, !tbaa !67
  %i.fd = load i32, ptr %i.d, align 4, !tbaa !99  ; 2 uses
  %i.fe = icmp sgt i32 %i.fd, 0
  br i1 %i.fe, label %.lr.ph.preheader.i, label %.loopexit32

.lr.ph.preheader.i:                               ; preds = %.noexc23
  %i.ff = zext nneg i32 %i.fd to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc24, %.lr.ph.preheader.i
  %i.fg = phi i64 [ %i.fl, %.noexc24 ], [ %i.ff, %.lr.ph.preheader.i ]
  %storemerge6.i = phi i64 [ %i.fj, %.noexc24 ], [ 0, %.lr.ph.preheader.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.fh = add nsw i64 %storemerge6.i, %i.fc
  %.sroa.speculated.i = call i64 @llvm.smin.i64(i64 %i.fh, i64 %i.fg)
  store i64 %.sroa.speculated.i, ptr %i.b, align 8, !tbaa !67
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 4, ptr nonnull @_ZN5faiss9NNDescent4joinERNS_16DistanceComputerE.omp_outlined, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(88) %0, ptr nonnull align 8 dereferenceable(8) %1)
  invoke void @_ZN5faiss17InterruptCallback5checkEv()
          to label %.noexc24 unwind label %.loopexit.split

.noexc24:                                         ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.fi = load i64, ptr %i.a, align 8, !tbaa !67
  %i.fj = add nsw i64 %i.fi, %i.fc                ; 3 uses
  store i64 %i.fj, ptr %i.a, align 8, !tbaa !67
  %i.fk = load i32, ptr %i.d, align 4, !tbaa !99
  %i.fl = sext i32 %i.fk to i64                   ; 2 uses
  %i.fm = icmp slt i64 %i.fj, %i.fl
  br i1 %i.fm, label %.lr.ph.i, label %.loopexit32, !llvm.loop !100

.loopexit32:                                      ; preds = %.noexc24, %.noexc23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @_ZN5faiss9NNDescent6updateEv.omp_outlined, ptr nonnull align 8 dereferenceable(88) %0)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @_ZN5faiss9NNDescent6updateEv.omp_outlined.7, ptr nonnull align 8 dereferenceable(88) %0)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @_ZN5faiss9NNDescent6updateEv.omp_outlined.8, ptr nonnull align 8 dereferenceable(88) %0)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 1, ptr nonnull @_ZN5faiss9NNDescent6updateEv.omp_outlined.9, ptr nonnull align 8 dereferenceable(88) %0)
  %i.fn = add nuw nsw i32 %.033, 1                ; 2 uses
  %i.fo = load i32, ptr %i.ay, align 4, !tbaa !133
  %i.fp = icmp slt i32 %i.fn, %i.fo
  br i1 %i.fp, label %.lr.ph.split, label %._crit_edge, !llvm.loop !137

.loopexit.split:                                  ; preds = %.lr.ph.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp.split:                         ; preds = %.lr.ph.split
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.loopexit.split-lp.split, %.loopexit.split-lp.split.us, %.loopexit.split, %.loopexit.split.us
  %.pn = phi { ptr, i32 } [ %i.ex, %bb.t ], [ %lpad.loopexit.us, %.loopexit.split.us ], [ %lpad.loopexit, %.loopexit.split ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.split ], [ %lpad.loopexit.split-lp.us, %.loopexit.split-lp.split.us ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #19
  %.pre = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %.not.i.i.i26 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIiSaIiEED2Ev.exit27, label %bb.v

bb.v:                                             ; preds = %.thread, %bb.u
  %.pn.pn59 = phi { ptr, i32 } [ %i.ew, %.thread ], [ %.pn, %bb.u ]
  %i.fq = phi ptr [ %i.j, %.thread ], [ %.pre, %bb.u ] ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !26
  %i.ft = ptrtoint ptr %i.fs to i64
  %i.fu = ptrtoint ptr %i.fq to i64
  %i.fv = sub i64 %i.ft, %i.fu
  call void @_ZdlPvm(ptr noundef nonnull %i.fq, i64 noundef %i.fv) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit27

_ZNSt6vectorIiSaIiEED2Ev.exit27:                  ; preds = %bb.v, %bb.u
  %.pn.pn60 = phi { ptr, i32 } [ %.pn.pn59, %bb.v ], [ %.pn, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %.pn.pn60
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5faiss9NNDescent17generate_eval_setERNS_16DistanceComputerERSt6vectorIiSaIiEERS3_IS5_SaIS5_EEi(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %4) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %4, ptr %i.a, align 4, !tbaa !37
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 5, ptr nonnull @_ZN5faiss9NNDescent17generate_eval_setERNS_16DistanceComputerERSt6vectorIiSaIiEERS3_IS5_SaIS5_EEi.omp_outlined, ptr nonnull %2, ptr nonnull %i.a, ptr nonnull %1, ptr nonnull %0, ptr nonnull %3)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef float @_ZN5faiss9NNDescent11eval_recallERSt6vectorIiSaIiEERS1_IS3_SaIS3_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #21 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !24     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 2                   ; 2 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge34, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !94
  %i.j = load ptr, ptr %2, align 8, !tbaa !128
  br label %bb.b

._crit_edge34:                                    ; preds = %._crit_edge, %bb.a
  %.026.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.bc, %._crit_edge ]
  %i.k = uitofp i64 %i.g to float
  %i.l = fdiv float %.026.lcssa, %i.k
  ret float %i.l

bb.b:                                             ; preds = %.lr.ph, %._crit_edge
  %.02532 = phi i64 [ 0, %.lr.ph ], [ %i.bd, %._crit_edge ] ; 3 uses
  %.02631 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.bc, %._crit_edge ]
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.02532
  %i.n = load i32, ptr %i.m, align 4, !tbaa !37
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [168 x i8], ptr %i.i, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.02532 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !49   ; 2 uses
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !27   ; 5 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = sdiv i64 %i.x, 12                        ; 2 uses
  %.not36 = icmp eq ptr %i.t, %i.u
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !25 ; 2 uses
  %.pre43 = load ptr, ptr %i.r, align 8, !tbaa !24 ; 5 uses
  %.pre44 = ptrtoint ptr %.pre to i64             ; 3 uses
  %.pre45 = ptrtoint ptr %.pre43 to i64           ; 5 uses
  br i1 %.not36, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %.not37 = icmp eq ptr %.pre, %.pre43
  br i1 %.not37, label %._crit_edge, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.z = sub i64 %.pre44, %.pre45
  %i.aa = ashr exact i64 %i.z, 2                  ; 3 uses
  %umax39 = tail call i64 @llvm.umax.i64(i64 %i.y, i64 1) ; 3 uses
  %xtraiter = and i64 %umax39, 1
  %3 = icmp ult i64 %i.y, 2
  br i1 %3, label %.preheader.us.epil.preheader, label %.preheader.us.preheader.new

.preheader.us.preheader.new:                      ; preds = %.preheader.us.preheader
  %unroll_iter = and i64 %umax39, -2
  br label %.preheader.us

.preheader.us:                                    ; preds = %..loopexit_crit_edge.us.1, %.preheader.us.preheader.new
  %.02329.us = phi i64 [ 0, %.preheader.us.preheader.new ], [ %i.aq, %..loopexit_crit_edge.us.1 ] ; 3 uses
  %.02428.us = phi float [ 0.000000e+00, %.preheader.us.preheader.new ], [ %.1.us.1, %..loopexit_crit_edge.us.1 ] ; 2 uses
  %niter = phi i64 [ 0, %.preheader.us.preheader.new ], [ %niter.next.1, %..loopexit_crit_edge.us.1 ]
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %.02329.us
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !60
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.ad = add nuw i64 %.027.us, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %i.aa
  br i1 %exitcond.not, label %..loopexit_crit_edge.us, label %bb.d, !llvm.loop !134

bb.d:                                             ; preds = %.preheader.us, %bb.c
  %.027.us = phi i64 [ 0, %.preheader.us ], [ %i.ad, %bb.c ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.pre43, i64 %.027.us
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !37
  %i.ag = icmp eq i32 %i.ac, %i.af
  br i1 %i.ag, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.ah = fadd float %.02428.us, 1.000000e+00
  br label %..loopexit_crit_edge.us

..loopexit_crit_edge.us:                          ; preds = %bb.c, %bb.e
  %.1.us = phi float [ %i.ah, %bb.e ], [ %.02428.us, %bb.c ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %.02329.us
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !60
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %..loopexit_crit_edge.us
  %.027.us.1 = phi i64 [ 0, %..loopexit_crit_edge.us ], [ %i.ao, %bb.g ] ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.pre43, i64 %.027.us.1
  %i.am = load i32, ptr %i.al, align 4, !tbaa !37
  %i.an = icmp eq i32 %i.ak, %i.am
  br i1 %i.an, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = add nuw i64 %.027.us.1, 1               ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ao, %i.aa
  br i1 %exitcond.not.1, label %..loopexit_crit_edge.us.1, label %bb.f, !llvm.loop !134

bb.h:                                             ; preds = %bb.f
  %i.ap = fadd float %.1.us, 1.000000e+00
  br label %..loopexit_crit_edge.us.1

..loopexit_crit_edge.us.1:                        ; preds = %bb.g, %bb.h
  %.1.us.1 = phi float [ %i.ap, %bb.h ], [ %.1.us, %bb.g ] ; 3 uses
  %i.aq = add nuw i64 %.02329.us, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.preheader.us, !llvm.loop !135

._crit_edge.loopexit.unr-lcssa:                   ; preds = %..loopexit_crit_edge.us.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.preheader.us.epil.preheader

.preheader.us.epil.preheader:                     ; preds = %._crit_edge.loopexit.unr-lcssa, %.preheader.us.preheader
  %.02329.us.epil.init = phi i64 [ 0, %.preheader.us.preheader ], [ %i.aq, %._crit_edge.loopexit.unr-lcssa ]
  %.02428.us.epil.init = phi float [ 0.000000e+00, %.preheader.us.preheader ], [ %.1.us.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod54 = trunc i64 %umax39 to i1
  tail call void @llvm.assume(i1 %lcmp.mod54)
  %i.ar = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %.02329.us.epil.init
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !60
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.preheader.us.epil.preheader
  %.027.us.epil = phi i64 [ 0, %.preheader.us.epil.preheader ], [ %i.aw, %bb.j ] ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.pre43, i64 %.027.us.epil
  %i.au = load i32, ptr %i.at, align 4, !tbaa !37
  %i.av = icmp eq i32 %i.as, %i.au
  br i1 %i.av, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = add nuw i64 %.027.us.epil, 1            ; 2 uses
  %exitcond.not.epil = icmp eq i64 %i.aw, %i.aa
  br i1 %exitcond.not.epil, label %._crit_edge, label %bb.i, !llvm.loop !134

bb.k:                                             ; preds = %bb.i
  %i.ax = fadd float %.02428.us.epil.init, 1.000000e+00
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.j, %bb.k, %bb.b, %.preheader.lr.ph
  %.pre-phi46 = phi i64 [ %.pre45, %bb.b ], [ %.pre44, %.preheader.lr.ph ], [ %.pre45, %bb.k ], [ %.pre45, %bb.j ], [ %.pre45, %._crit_edge.loopexit.unr-lcssa ]
  %.024.lcssa = phi float [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %.preheader.lr.ph ], [ %.1.us.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.ax, %bb.k ], [ %.02428.us.epil.init, %bb.j ]
  %i.ay = sub i64 %.pre44, %.pre-phi46
  %i.az = ashr exact i64 %i.ay, 2
  %i.ba = uitofp i64 %i.az to float
  %i.bb = fdiv float %.024.lcssa, %i.ba
  %i.bc = fadd float %.02631, %i.bb               ; 2 uses
  %i.bd = add nuw i64 %.02532, 1                  ; 2 uses
  %exitcond42.not = icmp eq i64 %i.bd, %i.g
  br i1 %exitcond42.not, label %._crit_edge34, label %bb.b, !llvm.loop !136
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !128    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !132  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !24 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #25
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i:    ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !138

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !128
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !131
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #25
  br label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN5faiss9NNDescent17generate_eval_setERNS_16DistanceComputerERSt6vectorIiSaIiEERS3_IS5_SaIS5_EEi.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6) #18 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.g = load ptr, ptr %2, align 8, !tbaa !24
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 2
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.n = add nsw i32 %i.l, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 %i.n, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 1, ptr %i.c, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.o = load i32, ptr %0, align 4, !tbaa !37     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @2, i32 %i.o, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.p = load i32, ptr %i.b, align 4, !tbaa !37
  %i.q = call i32 @llvm.smin.i32(i32 %i.p, i32 %i.n) ; 2 uses
  store i32 %i.q, ptr %i.b, align 4, !tbaa !37
  %i.r = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %.not77 = icmp sgt i32 %i.r, %i.q
  br i1 %.not77, label %._crit_edge79, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.t = sext i32 %i.r to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EED2Ev.exit
  %indvars.iv84 = phi i64 [ %i.t, %.preheader.lr.ph ], [ %indvars.iv.next85, %_ZNSt6vectorIN5faiss9nndescent8NeighborESaIS2_EED2Ev.exit ] ; 4 uses
  %i.u = load i32, ptr %3, align 4, !tbaa !37     ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %bb.m
  %i.w = ptrtoint ptr %.sroa.14.1 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.sroa.048.0.lcssa = phi ptr [ null, %.preheader ], [ %.sroa.048.1, %._crit_edge.loopexit ] ; 16 uses
  %.sroa.9.0.lcssa = phi ptr [ null, %.preheader ], [ %.sroa.9.1, %._crit_edge.loopexit ]
  %.sroa.14.0.lcssa = phi i64 [ 0, %.preheader ], [ %i.w, %._crit_edge.loopexit ]
  %i.x = load i32, ptr %i.s, align 8, !tbaa !91   ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [12 x i8], ptr %.sroa.048.0.lcssa, i64 %i.y ; 2 uses
  invoke void @_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_(ptr %.sroa.048.0.lcssa, ptr %i.z, ptr %.sroa.9.0.lcssa)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc:                                           ; preds = %._crit_edge
  %i.aa = ptrtoint ptr %.sroa.048.0.lcssa to i64  ; 2 uses
  %i.ab = icmp sgt i32 %i.x, 1
  br i1 %i.ab, label %.lr.ph.i.i.i, label %_ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEEEvT_SA_SA_.exit

.lr.ph.i.i.i:                                     ; preds = %.noexc, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i.i
  %.sroa.0.05.i.i.i = phi ptr [ %i.ac, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss9nndescent8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i.i ], [ %i.z, %.noexc ] ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %.sroa.0.05.i.i.i, i64 -12 ; 4 uses
  %.sroa.05.0.copyload.i.i.i.i = load i64, ptr %i.ac, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i.i, i64 -4
  %.sroa.4.0.copyload.i.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 4, !tbaa !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.ac, ptr noundef nonnull align 4 dereferenceable(9) %.sroa.048.0.lcssa, i64 9, i1 false), !tbaa.struct !50
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.aa                    ; 3 uses
  %i.af = sdiv exact i64 %i.ae, 12                ; 3 uses
  %i.ag = add nsw i64 %i.af, -1
  %i.ah = sdiv i64 %i.ag, 2
  %i.ai = icmp sgt i64 %i.ae, 24
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.i.i
  %.043.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i ] ; 2 uses
  %i.aj = shl i64 %.043.i.i.i.i.i, 1              ; 2 uses
  %i.ak = add i64 %i.aj, 2                        ; 2 uses
  %i.al = getelementptr inbounds [12 x i8], ptr %.sroa.048.0.lcssa, i64 %i.ak
  %i.am = or disjoint i64 %i.aj, 1                ; 2 uses
  %i.an = getelementptr inbounds [12 x i8], ptr %.sroa.048.0.lcssa, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !57
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !57
  %i.as = fcmp olt float %i.ap, %i.ar
  %spec.select.i.i.i.i.i = select i1 %i.as, i64 %i.am, i64 %i.ak ; 4 uses
  %i.at = getelementptr inbounds [12 x i8], ptr %.sroa.048.0.lcssa, i64 %spec.select.i.i.i.i.i
  %i.au = getelementptr inbounds [12 x i8], ptr %.sroa.048.0.lcssa, i64 %.043.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.au, ptr noundef nonnull align 4 dereferenceable(9) %i.at, i64 9, i1 false), !tbaa.struct !50
  %i.av = icmp slt i64 %spec.select.i.i.i.i.i, %i.ah
  br i1 %i.av, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !62

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %i.aw = and i64 %i.af, 1
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ay = add nsw i64 %i.af, -2
  %i.az = ashr exact i64 %i.ay, 1
  %i.ba = icmp eq i64 %.0.lcssa.i.i.i.i.i, %i.az
  br i1 %i.ba, label %.thread.i.i.i.i, label %bb.d
end_hunk_1
