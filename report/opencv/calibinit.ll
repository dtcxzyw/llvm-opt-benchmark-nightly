inline.NumInlined: 5558
inline.NumDeleted: 2160
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 78
loop-unroll.NumUnrolled: 111
begin_hunk_0_@_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_:bb.a
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us
  %.013.us = phi i64 [ %i.am, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.us
  %i.q = load i32, ptr %i.p, align 4, !tbaa !97   ; 2 uses
  %i.r = icmp slt i64 %.013.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.029.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.013.us, %.split.us ] ; 2 uses
  %i.s = shl i64 %.029.i.us, 1                    ; 3 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr [4 x i8], ptr %0, i64 %i.s
  %i.w = getelementptr i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.u, align 4, !tbaa !97
  %i.y = load i32, ptr %i.w, align 4, !tbaa !97
  %i.z = icmp slt i32 %i.x, %i.y
  %i.aa = or disjoint i64 %i.s, 1
  %spec.select.i.us = select i1 %i.z, i64 %i.aa, i64 %i.t ; 6 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.us
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !97
  %i.ad = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i.us
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !97
  %i.ae = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ae, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !884

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.af = icmp sgt i64 %spec.select.i.us, %.013.us
  br i1 %i.af, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.01317.i.i.us = phi i64 [ %.018.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.018.in.i.i.us = add nsw i64 %.01317.i.i.us, -1
  %.018.i.i.us = sdiv i64 %.018.in.i.i.us, 2      ; 4 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i.us
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !97 ; 2 uses
  %i.ai = icmp slt i32 %i.ah, %i.q
  br i1 %i.ai, label %bb.c, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01317.i.i.us
  store i32 %i.ah, ptr %i.aj, align 4, !tbaa !97
  %i.ak = icmp sgt i64 %.018.i.i.us, %.013.us
  br i1 %i.ak, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us, !llvm.loop !885

_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.013.us, %.split.us ], [ %.01317.i.i.us, %.lr.ph.i.i.us ], [ %.018.i.i.us, %bb.c ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store i32 %i.q, ptr %i.al, align 4, !tbaa !97
  %.not.us = icmp eq i64 %.013.us, 0
  %i.am = add nsw i64 %.013.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !893

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit
  %.013 = phi i64 [ %i.bm, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !97 ; 2 uses
  %i.ap = icmp slt i64 %.013, %i.i
  br i1 %i.ap, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.029.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.013, %.split ] ; 2 uses
  %i.aq = shl i64 %.029.i, 1                      ; 3 uses
  %i.ar = add i64 %i.aq, 2                        ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ar
  %i.at = getelementptr [4 x i8], ptr %0, i64 %i.aq
  %i.au = getelementptr i8, ptr %i.at, i64 4
  %i.av = load i32, ptr %i.as, align 4, !tbaa !97
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !97
  %i.ax = icmp slt i32 %i.av, %i.aw
  %i.ay = or disjoint i64 %i.aq, 1
  %spec.select.i = select i1 %i.ax, i64 %i.ay, i64 %i.ar ; 4 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !97
  %i.bb = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !97
  %i.bc = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.bc, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !884

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.013, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bd = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.be = load i32, ptr %i.n, align 4, !tbaa !97
  store i32 %i.be, ptr %i.o, align 4, !tbaa !97
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.128.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bf = icmp sgt i64 %.128.i, %.013
  br i1 %i.bf, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.01317.i.i = phi i64 [ %.018.i.i, %bb.f ], [ %.128.i, %bb.e ] ; 3 uses
  %.018.in.i.i = add nsw i64 %.01317.i.i, -1
  %.018.i.i = sdiv i64 %.018.in.i.i, 2            ; 4 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !97 ; 2 uses
  %i.bi = icmp slt i32 %i.bh, %i.ao
  br i1 %i.bi, label %bb.f, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01317.i.i
  store i32 %i.bh, ptr %i.bj, align 4, !tbaa !97
  %i.bk = icmp sgt i64 %.018.i.i, %.013
  br i1 %i.bk, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit, !llvm.loop !885

_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.013.lcssa.i.i = phi i64 [ %.128.i, %bb.e ], [ %.018.i.i, %bb.f ], [ %.01317.i.i, %.lr.ph.i.i ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i.i
  store i32 %i.ao, ptr %i.bl, align 4, !tbaa !97
  %.not = icmp eq i64 %.013, 0
  %i.bm = add nsw i64 %.013, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !893

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #12

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7cvflann11KMeansIndexINS_9L2_SimpleIfEEE16refineClusteringEPiiiPPfRSt6vectorIfSaIfEES4_S4_(ptr noundef nonnull align 8 dereferenceable(212) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.cv::AutoBuffer.169", align 8 ; 9 uses
  %9 = alloca %"class.cvflann::Matrix.170", align 8 ; 8 uses
  %10 = alloca %"class.std::vector", align 8      ; 11 uses
  %11 = alloca %"class.std::vector.0", align 8    ; 12 uses
  %12 = alloca %"class.cvflann::KMeansIndex<cvflann::L2_Simple<float>>::KMeansDistanceComputer", align 8 ; 14 uses
  %13 = alloca %"class.cv::Range", align 4        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 9 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !841  ; 3 uses
  %i.d = mul i64 %i.c, %i.a                       ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.e, ptr %8, align 8, !tbaa !894
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.not.i.i = icmp ugt i64 %i.d, 136
  store i64 %i.d, ptr %i.f, align 8, !tbaa !897
  br i1 %.not.i.i, label %bb.b, label %_ZN2cv10AutoBufferIdLm136EEC2Em.exit

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.d, 2305843009213693951
  %i.h = shl nuw i64 %i.d, 3
  %i.i = select i1 %i.g, i64 -1, i64 %i.h
  %i.j = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #35 ; 2 uses
  store ptr %i.j, ptr %8, align 8, !tbaa !894
  br label %_ZN2cv10AutoBufferIdLm136EEC2Em.exit

_ZN2cv10AutoBufferIdLm136EEC2Em.exit:             ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.e, %bb.a ], [ %i.j, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  store i64 %i.a, ptr %9, align 8, !tbaa !898
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.c, ptr %i.l, align 8, !tbaa !900
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 8 uses
  store ptr %i.k, ptr %i.n, align 8, !tbaa !901
  store i64 %i.c, ptr %i.m, align 8, !tbaa !902
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = icmp sgt i32 %3, 0                       ; 4 uses
  %i.q = icmp sgt i32 %2, 0                       ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.t = sext i32 %2 to i64                       ; 4 uses
  %i.u = icmp slt i32 %2, 0
  %.not.i.i.i.i = icmp eq i32 %2, 0
  %i.v = shl nuw nsw i64 %i.t, 2                  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.x = add nsw i64 %i.t, -1                     ; 2 uses
  %i.y = icmp eq i64 %i.x, 0                      ; 2 uses
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.x, 2   ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 4
  %wide.trip.count203 = zext nneg i32 %2 to i64
  %wide.trip.count209 = zext nneg i32 %3 to i64
  %wide.trip.count213 = zext nneg i32 %2 to i64
  %wide.trip.count222 = zext i32 %3 to i64        ; 3 uses
  %wide.trip.count218 = zext nneg i32 %2 to i64
  %xtraiter = and i64 %wide.trip.count222, 1
  %i.al = icmp eq i32 %3, 1
  %unroll_iter = and i64 %wide.trip.count222, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod289 = trunc i32 %3 to i1
  br label %bb.c

bb.c:                                             ; preds = %_ZN2cv10AutoBufferIdLm136EEC2Em.exit, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %.0114182 = phi i32 [ 0, %_ZN2cv10AutoBufferIdLm136EEC2Em.exit ], [ %i.ao, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 2 uses
  %i.am = load i32, ptr %i.o, align 8, !tbaa !539
  %i.an = icmp slt i32 %.0114182, %i.am
  br i1 %i.an, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.ao = add nuw nsw i32 %.0114182, 1
  br i1 %i.p, label %.lr.ph.preheader, label %.preheader152

.lr.ph.preheader:                                 ; preds = %bb.d
  br i1 %i.al, label %.lr.ph.epil.preheader, label %.lr.ph

.preheader152.loopexit.unr-lcssa:                 ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %.preheader152, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader152.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.preheader152.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod289)
  %i.ap = load ptr, ptr %i.n, align 8, !tbaa !901
  %i.aq = load i64, ptr %i.m, align 8, !tbaa !902
  %i.ar = mul i64 %i.aq, %indvars.iv.epil.init
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ar
  %i.at = load i64, ptr %i.b, align 8, !tbaa !841
  %i.au = shl i64 %i.at, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.as, i8 0, i64 %i.au, i1 false)
  %i.av = load ptr, ptr %5, align 8, !tbaa !114
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.epil.init
  store float 0.000000e+00, ptr %i.aw, align 4, !tbaa !149
  br label %.preheader152

.preheader152:                                    ; preds = %.lr.ph.epil.preheader, %.preheader152.loopexit.unr-lcssa, %bb.d
  br i1 %i.q, label %.lr.ph161, label %.preheader151

.lr.ph161:                                        ; preds = %.preheader152
  %i.ax = load ptr, ptr %i.r, align 8, !tbaa !147
  %i.ay = load i64, ptr %i.s, align 8, !tbaa !148
  %i.az = load ptr, ptr %i.n, align 8, !tbaa !901
  %i.ba = load i64, ptr %i.m, align 8, !tbaa !902
  %i.bb = load i64, ptr %i.b, align 8, !tbaa !841 ; 5 uses
  %.not190 = icmp eq i64 %i.bb, 0
  br i1 %.not190, label %.preheader151, label %.lr.ph159.preheader

.lr.ph159.preheader:                              ; preds = %.lr.ph161
  %min.iters.check261 = icmp ult i64 %i.bb, 4
  %n.vec263 = and i64 %i.bb, -4                   ; 3 uses
  %cmp.n272 = icmp eq i64 %i.bb, %n.vec263
  br label %.lr.ph159

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.bc = load ptr, ptr %i.n, align 8, !tbaa !901
  %i.bd = load i64, ptr %i.m, align 8, !tbaa !902
  %i.be = mul i64 %i.bd, %indvars.iv
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.be
  %i.bg = load i64, ptr %i.b, align 8, !tbaa !841
  %i.bh = shl i64 %i.bg, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bf, i8 0, i64 %i.bh, i1 false)
  %i.bi = load ptr, ptr %5, align 8, !tbaa !114
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv
  store float 0.000000e+00, ptr %i.bj, align 4, !tbaa !149
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bk = load ptr, ptr %i.n, align 8, !tbaa !901
  %i.bl = load i64, ptr %i.m, align 8, !tbaa !902
  %i.bm = mul i64 %i.bl, %indvars.iv.next
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bm
  %i.bo = load i64, ptr %i.b, align 8, !tbaa !841
  %i.bp = shl i64 %i.bo, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bn, i8 0, i64 %i.bp, i1 false)
  %i.bq = load ptr, ptr %5, align 8, !tbaa !114
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.next
  store float 0.000000e+00, ptr %i.br, align 4, !tbaa !149
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader152.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !903

.preheader151:                                    ; preds = %._crit_edge, %.lr.ph161, %.preheader152
  br i1 %i.p, label %.lr.ph167, label %._crit_edge168.split

.lr.ph167:                                        ; preds = %.preheader151
  %i.bs = load i64, ptr %i.b, align 8, !tbaa !841 ; 5 uses
  %.not191 = icmp eq i64 %i.bs, 0
  %i.bt = load ptr, ptr %i.n, align 8
  %i.bu = load i64, ptr %i.m, align 8
  br i1 %.not191, label %._crit_edge168.split, label %.lr.ph164.preheader

.lr.ph164.preheader:                              ; preds = %.lr.ph167
  %min.iters.check = icmp eq i64 %i.bs, 1
  %n.vec = and i64 %i.bs, -2                      ; 3 uses
  %cmp.n = icmp eq i64 %i.bs, %n.vec
  br label %.lr.ph164

.lr.ph159:                                        ; preds = %.lr.ph159.preheader, %._crit_edge
  %indvars.iv200 = phi i64 [ %indvars.iv.next201, %._crit_edge ], [ 0, %.lr.ph159.preheader ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv200
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !97
  %i.bx = sext i32 %i.bw to i64
  %i.by = mul i64 %i.ay, %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.by ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv200
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !97
  %i.cc = sext i32 %i.cb to i64
  %i.cd = mul i64 %i.ba, %i.cc
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.cd ; 2 uses
  br i1 %min.iters.check261, label %scalar.ph260.preheader, label %vector.body264

vector.body264:                                   ; preds = %.lr.ph159, %vector.body264
  %index265 = phi i64 [ %index.next270, %vector.body264 ], [ 0, %.lr.ph159 ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %index265 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %wide.load266 = load <2 x float>, ptr %i.cf, align 4, !tbaa !149
  %wide.load267 = load <2 x float>, ptr %i.cg, align 4, !tbaa !149
  %i.ch = fpext <2 x float> %wide.load266 to <2 x double>
  %i.ci = fpext <2 x float> %wide.load267 to <2 x double>
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index265 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 2 uses
  %wide.load268 = load <2 x double>, ptr %i.cj, align 8, !tbaa !204
  %wide.load269 = load <2 x double>, ptr %i.ck, align 8, !tbaa !204
  %i.cl = fadd <2 x double> %wide.load268, %i.ch
  %i.cm = fadd <2 x double> %wide.load269, %i.ci
  store <2 x double> %i.cl, ptr %i.cj, align 8, !tbaa !204
  store <2 x double> %i.cm, ptr %i.ck, align 8, !tbaa !204
  %index.next270 = add nuw i64 %index265, 4       ; 2 uses
  %i.cn = icmp eq i64 %index.next270, %n.vec263
  br i1 %i.cn, label %middle.block271, label %vector.body264, !llvm.loop !904

middle.block271:                                  ; preds = %vector.body264
  br i1 %cmp.n272, label %._crit_edge, label %scalar.ph260.preheader

scalar.ph260.preheader:                           ; preds = %.lr.ph159, %middle.block271
  %.0111158.ph = phi i64 [ 0, %.lr.ph159 ], [ %n.vec263, %middle.block271 ]
  br label %scalar.ph260

._crit_edge:                                      ; preds = %scalar.ph260, %middle.block271
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %exitcond204.not = icmp eq i64 %indvars.iv.next201, %wide.trip.count203
  br i1 %exitcond204.not, label %.preheader151, label %.lr.ph159, !llvm.loop !905

scalar.ph260:                                     ; preds = %scalar.ph260.preheader, %scalar.ph260
  %.0111158 = phi i64 [ %i.cu, %scalar.ph260 ], [ %.0111158.ph, %scalar.ph260.preheader ] ; 3 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %.0111158
  %i.cp = load float, ptr %i.co, align 4, !tbaa !149
  %i.cq = fpext float %i.cp to double
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.0111158 ; 2 uses
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !204
  %i.ct = fadd double %i.cs, %i.cq
  store double %i.ct, ptr %i.cr, align 8, !tbaa !204
  %i.cu = add nuw i64 %.0111158, 1                ; 2 uses
  %exitcond199.not = icmp eq i64 %i.cu, %i.bb
  br i1 %exitcond199.not, label %._crit_edge, label %scalar.ph260, !llvm.loop !906

._crit_edge168.split:                             ; preds = %._crit_edge165, %.lr.ph167, %.preheader151
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  br i1 %i.u, label %bb.e, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.e:                                             ; preds = %._crit_edge168.split
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.79) #34
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %._crit_edge168.split
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.cv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #35
          to label %.noexc132 unwind label %.loopexit153 ; 4 uses

.noexc132:                                        ; preds = %bb.f
  store ptr %i.cv, ptr %10, align 8, !tbaa !112
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.t
  store ptr %i.cw, ptr %i.w, align 8, !tbaa !120
  store i32 0, ptr %i.cv, align 4, !tbaa !97
  %i.cx = getelementptr i8, ptr %i.cv, i64 4      ; 3 uses
  br i1 %i.y, label %bb.g, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc132
  call void @llvm.memset.p0.i64(ptr align 4 %i.cx, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !97
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.g

.lr.ph164:                                        ; preds = %.lr.ph164.preheader, %._crit_edge165
  %indvars.iv206 = phi i64 [ %indvars.iv.next207, %._crit_edge165 ], [ 0, %.lr.ph164.preheader ] ; 3 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv206
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !97
  %i.db = sitofp i32 %i.da to double              ; 2 uses
  %i.dc = mul i64 %i.bu, %indvars.iv206
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.dc ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph164
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.db, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
end_hunk_0
