Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/data?download=true
inline.NumInlined: 1683
inline.NumDeleted: 715
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN2cv2ml16getSubMatrixImplIiEENS_3MatERKS2_S4_i:bb.a

.lr.ph76.split.split.split:                       ; preds = %.lr.ph76.split.split
  %i.gm = load i32, ptr %i.k, align 4, !tbaa !34
  %i.gn = icmp slt i32 %i.gm, 2
  br i1 %i.gn, label %.lr.ph76.split.split.split.split.us, label %.lr.ph76.split.split.split.split

.lr.ph76.split.split.split.split.us:              ; preds = %.lr.ph76.split.split.split
  %i.go = load ptr, ptr %i.n, align 8, !tbaa !35
  %wide.trip.count169 = zext nneg i32 %i.a to i64
  br label %_ZNK2cv3Mat2atIiEERKT_i.exit.us98

_ZNK2cv3Mat2atIiEERKT_i.exit.us98:                ; preds = %.preheader66.us100, %.lr.ph76.split.split.split.split.us
  %indvars.iv166 = phi i64 [ %indvars.iv.next167, %.preheader66.us100 ], [ 0, %.lr.ph76.split.split.split.split.us ] ; 2 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %indvars.iv166
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !37 ; 4 uses
  %i.gr = icmp sgt i32 %i.gq, -1
  br i1 %i.gr, label %bb.ap, label %.split78.us.invoke

bb.ap:                                            ; preds = %_ZNK2cv3Mat2atIiEERKT_i.exit.us98
  %i.gs = icmp slt i32 %i.gq, %.064
  br i1 %i.gs, label %.preheader66.us100, label %.split78.us.invoke

.preheader66.us100:                               ; preds = %bb.ap
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count169
  br i1 %exitcond170.not, label %._crit_edge, label %_ZNK2cv3Mat2atIiEERKT_i.exit.us98, !llvm.loop !141

.lr.ph76.split.split.split.split:                 ; preds = %.lr.ph76.split.split.split
  %i.gt = load i32, ptr %2, align 8, !tbaa !33
  %i.gu = and i32 %i.gt, 16384
  %i.gv = icmp ne i32 %i.gu, 0
  %i.gw = load i32, ptr %i.l, align 8
  %i.gx = icmp eq i32 %i.gw, 1
  %or.cond.i = select i1 %i.gv, i1 true, i1 %i.gx
  br i1 %or.cond.i, label %.lr.ph76.split.split.split.split.split.us, label %.lr.ph76.split.split.split.split.split

.lr.ph76.split.split.split.split.split.us:        ; preds = %.lr.ph76.split.split.split.split
  %i.gy = load ptr, ptr %i.n, align 8, !tbaa !35
  %wide.trip.count164 = zext nneg i32 %i.a to i64
  br label %_ZNK2cv3Mat2atIiEERKT_i.exit.us106

_ZNK2cv3Mat2atIiEERKT_i.exit.us106:               ; preds = %.preheader66.us108, %.lr.ph76.split.split.split.split.split.us
  %indvars.iv161 = phi i64 [ %indvars.iv.next162, %.preheader66.us108 ], [ 0, %.lr.ph76.split.split.split.split.split.us ] ; 2 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv161
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !37 ; 4 uses
  %i.hb = icmp sgt i32 %i.ha, -1
  br i1 %i.hb, label %bb.aq, label %.split78.us.invoke

bb.aq:                                            ; preds = %_ZNK2cv3Mat2atIiEERKT_i.exit.us106
  %i.hc = icmp slt i32 %i.ha, %.064
  br i1 %i.hc, label %.preheader66.us108, label %.split78.us.invoke

.preheader66.us108:                               ; preds = %bb.aq
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %exitcond165.not = icmp eq i64 %indvars.iv.next162, %wide.trip.count164
  br i1 %exitcond165.not, label %._crit_edge, label %_ZNK2cv3Mat2atIiEERKT_i.exit.us106, !llvm.loop !141

.lr.ph76.split.split.split.split.split:           ; preds = %.lr.ph76.split.split.split.split
  %i.hd = load i32, ptr %i.m, align 4, !tbaa !22  ; 4 uses
  %i.he = icmp eq i32 %i.hd, 1
  %i.hf = load ptr, ptr %i.n, align 8, !tbaa !35  ; 2 uses
  %i.hg = load i64, ptr %i.o, align 8, !tbaa !36  ; 2 uses
  br i1 %i.he, label %.lr.ph76.split.split.split.split.split.split.us, label %_ZNK2cv3Mat2atIiEERKT_i.exit

.lr.ph76.split.split.split.split.split.split.us:  ; preds = %.lr.ph76.split.split.split.split.split
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %_ZNK2cv3Mat2atIiEERKT_i.exit.us114

_ZNK2cv3Mat2atIiEERKT_i.exit.us114:               ; preds = %.preheader66.us116, %.lr.ph76.split.split.split.split.split.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader66.us116 ], [ 0, %.lr.ph76.split.split.split.split.split.split.us ] ; 2 uses
  %i.hh = mul i64 %i.hg, %indvars.iv
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.hh
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !37 ; 4 uses
  %i.hk = icmp sgt i32 %i.hj, -1
  br i1 %i.hk, label %bb.ar, label %.split78.us.invoke

bb.ar:                                            ; preds = %_ZNK2cv3Mat2atIiEERKT_i.exit.us114
  %i.hl = icmp slt i32 %i.hj, %.064
  br i1 %i.hl, label %.preheader66.us116, label %.split78.us.invoke

.preheader66.us116:                               ; preds = %bb.ar
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond160.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond160.not, label %._crit_edge, label %_ZNK2cv3Mat2atIiEERKT_i.exit.us114, !llvm.loop !141

_ZNK2cv3Mat2atIiEERKT_i.exit:                     ; preds = %.lr.ph76.split.split.split.split.split, %.preheader66
  %.03874 = phi i32 [ %i.ia, %.preheader66 ], [ 0, %.lr.ph76.split.split.split.split.split ] ; 3 uses
  %i.hm = sdiv i32 %.03874, %i.hd                 ; 2 uses
  %i.hn = mul nsw i32 %i.hm, %i.hd                ; 0 uses
  %.recomposed346 = srem i32 %.03874, %i.hd
  %i.ho = sext i32 %i.hm to i64
  %i.hp = mul i64 %i.hg, %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.hp
  %i.hr = sext i32 %.recomposed346 to i64
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.hq, i64 %i.hr
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !37 ; 4 uses
  %i.hu = icmp sgt i32 %i.ht, -1
  br i1 %i.hu, label %bb.at, label %.split78.us.invoke

bb.as:                                            ; preds = %.split78.us.invoke
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.at:                                            ; preds = %_ZNK2cv3Mat2atIiEERKT_i.exit
  %i.hw = icmp slt i32 %i.ht, %.064
  br i1 %i.hw, label %.preheader66, label %.split78.us.invoke

.split78.us.invoke:                               ; preds = %bb.at, %_ZNK2cv3Mat2atIiEERKT_i.exit, %bb.ar, %_ZNK2cv3Mat2atIiEERKT_i.exit.us114, %bb.aq, %_ZNK2cv3Mat2atIiEERKT_i.exit.us106, %bb.ap, %_ZNK2cv3Mat2atIiEERKT_i.exit.us98, %bb.an, %_ZNK2cv3Mat2atIiEERKT_i.exit.us90, %bb.af, %_ZNK2cv3Mat2atIiEERKT_i.exit.us82, %bb.l, %_ZNK2cv3Mat2atIiEERKT_i.exit.us
  %i.hx = phi i32 [ %i.hj, %bb.ar ], [ %i.ha, %bb.aq ], [ %i.gq, %bb.ap ], [ %i.bd, %bb.l ], [ %i.eh, %bb.af ], [ %i.fw, %bb.an ], [ %i.bd, %_ZNK2cv3Mat2atIiEERKT_i.exit.us ], [ %i.eh, %_ZNK2cv3Mat2atIiEERKT_i.exit.us82 ], [ %i.fw, %_ZNK2cv3Mat2atIiEERKT_i.exit.us90 ], [ %i.gq, %_ZNK2cv3Mat2atIiEERKT_i.exit.us98 ], [ %i.ha, %_ZNK2cv3Mat2atIiEERKT_i.exit.us106 ], [ %i.hj, %_ZNK2cv3Mat2atIiEERKT_i.exit.us114 ], [ %i.ht, %_ZNK2cv3Mat2atIiEERKT_i.exit ], [ %i.ht, %bb.at ]
  %i.hy = phi i32 [ %.064, %bb.ar ], [ 0, %_ZNK2cv3Mat2atIiEERKT_i.exit.us106 ], [ %.064, %bb.ap ], [ %.064, %bb.l ], [ %.064, %bb.af ], [ %.064, %bb.an ], [ 0, %_ZNK2cv3Mat2atIiEERKT_i.exit.us ], [ 0, %_ZNK2cv3Mat2atIiEERKT_i.exit.us82 ], [ 0, %_ZNK2cv3Mat2atIiEERKT_i.exit.us90 ], [ 0, %_ZNK2cv3Mat2atIiEERKT_i.exit.us98 ], [ %.064, %bb.aq ], [ 0, %_ZNK2cv3Mat2atIiEERKT_i.exit.us114 ], [ %.064, %bb.at ], [ 0, %_ZNK2cv3Mat2atIiEERKT_i.exit ]
  %i.hz = phi ptr [ @_ZZN2cv2ml16getSubMatrixImplIiEENS_3MatERKS2_S4_iE14__cv_check__81_0, %bb.ar ], [ @_ZZN2cv2ml16getSubMatrixImplIiEENS_3MatERKS2_S4_iE14__cv_check__81, %_ZNK2cv3Mat2atIiEERKT_i.exit.us106 ], [ @_ZZN2cv2ml16getSubMatrixImplIiEENS_3MatERKS2_S4_iE14__cv_check__81_0, %bb.ap ], [ @_ZZN2cv2ml16getSubMatrixImplIiEENS_3MatERKS2_S4_iE14__cv_check__81_0, %bb.l ], [ @_ZZN2cv2ml16getSubMatrixImplIiEENS_3MatERKS2_S4_iE14__cv_check__81_0, %bb.af ], [ @_ZZN2cv2ml16getSubMatrixImplIiEENS_3MatERKS2_S4_iE14__cv_check__81_0, %bb.an ], [ @_ZZN2cv2ml16getSubMatrixImplIiEENS_3MatERKS2_S4_iE14__cv_check__81, %_ZNK2cv3Mat2atIiEERKT_i.exit.us ], [ @_ZZN2cv2ml16getSubMatrixImplIiEENS_3MatERKS2_S4_iE14__cv_check__81, %_ZNK2cv3Mat2atIiEERKT_i.exit.us82 ], [ @_ZZN2cv2ml16getSubMatrixImplIiEENS_3MatERKS2_S4_iE14__cv_check__81, %_ZNK2cv3Mat2atIiEERKT_i.exit.us90 ], [ @_ZZN2cv2ml16getSubMatrixImplIiEENS_3MatERKS2_S4_iE14__cv_check__81, %_ZNK2cv3Mat2atIiEERKT_i.exit.us98 ], [ @_ZZN2cv2ml16getSubMatrixImplIiEENS_3MatERKS2_S4_iE14__cv_check__81_0, %bb.aq ], [ @_ZZN2cv2ml16getSubMatrixImplIiEENS_3MatERKS2_S4_iE14__cv_check__81, %_ZNK2cv3Mat2atIiEERKT_i.exit.us114 ], [ @_ZZN2cv2ml16getSubMatrixImplIiEENS_3MatERKS2_S4_iE14__cv_check__81_0, %bb.at ], [ @_ZZN2cv2ml16getSubMatrixImplIiEENS_3MatERKS2_S4_iE14__cv_check__81, %_ZNK2cv3Mat2atIiEERKT_i.exit ]
  invoke void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %i.hx, i32 noundef %i.hy, ptr noundef nonnull align 8 dereferenceable(48) %i.hz) #29
          to label %.split78.us.cont unwind label %bb.as

.split78.us.cont:                                 ; preds = %.split78.us.invoke
  unreachable

.preheader66:                                     ; preds = %bb.at
  %i.ia = add nuw nsw i32 %.03874, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ia, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %_ZNK2cv3Mat2atIiEERKT_i.exit, !llvm.loop !141

._crit_edge:                                      ; preds = %.preheader66, %.preheader66.us116, %.preheader66.us108, %.preheader66.us100, %..loopexit67_crit_edge.us, %.loopexit.us, %_ZN2cv3Mat2atIiEERT_i.exit.us, %bb.e
  ret void

bb.au:                                            ; preds = %bb.as, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.hv, %bb.as ]
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #27
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv2ml16getSubMatrixImplIdEENS_3MatERKS2_S4_i(ptr dead_on_unwind noalias writable sret(%"class.cv::Mat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK2cv3Mat11checkVectorEiib(ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef 1, i32 noundef 4, i1 noundef zeroext true) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !22   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !32   ; 3 uses
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) #27
  %i.f = icmp eq i32 %3, 1                        ; 2 uses
  %i.g = load i32, ptr %1, align 8, !tbaa !33
  %i.h = and i32 %i.g, 4095                       ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %i.e, i32 noundef %i.a, i32 noundef %i.h)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.d:                                             ; preds = %bb.a
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %i.a, i32 noundef %i.c, i32 noundef %i.h)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d, %bb.b
  %.062 = phi i32 [ %i.e, %bb.b ], [ %i.c, %bb.d ] ; 10 uses
  %.061 = phi i32 [ %i.c, %bb.b ], [ %i.e, %bb.d ] ; 2 uses
  %i.j = icmp sgt i32 %i.a, 0
  br i1 %i.j, label %.lr.ph79, label %._crit_edge

.lr.ph79:                                         ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !34
  %i.m = icmp slt i32 %i.l, 2
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  %i.r = icmp eq i32 %.062, 1
  %i.s = icmp sgt i32 %.062, 0                    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 13 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = load i32, ptr %i.w, align 4
  %.fr80 = freeze i32 %i.x                        ; 2 uses
  %i.y = icmp slt i32 %.fr80, 2                   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8             ; 25 uses
  %i.ab = ptrtoaddr ptr %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 12 uses
  %i.ad = icmp slt i32 %.fr80, 2                  ; 4 uses
  %i.ae = load i32, ptr %0, align 8
  %i.af = and i32 %i.ae, 16384
  %i.ag = icmp ne i32 %i.af, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = icmp eq i32 %i.aj, 1
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.am = load i32, ptr %i.al, align 4            ; 3 uses
  %i.an = load i64, ptr %i.ac, align 8            ; 2 uses
  %wide.trip.count112 = zext nneg i32 %i.a to i64
  %wide.trip.count = zext i32 %.062 to i64        ; 2 uses
  %wide.trip.count102 = zext nneg i32 %.062 to i64
  %wide.trip.count107 = zext i32 %.062 to i64     ; 10 uses
  %xtraiter = and i64 %wide.trip.count107, 1
  %unroll_iter = and i64 %wide.trip.count107, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod135 = trunc i32 %.062 to i1
  %xtraiter136 = and i64 %wide.trip.count107, 3   ; 3 uses
  %i.ao = icmp ult i32 %.062, 4
  %unroll_iter139 = and i64 %wide.trip.count107, 2147483644
  %lcmp.mod137.not = icmp eq i64 %xtraiter136, 0
  %lcmp.mod138 = icmp ne i64 %xtraiter136, 0
  %xtraiter141 = and i64 %wide.trip.count107, 3   ; 3 uses
  %i.ap = icmp ult i32 %.062, 4
  %unroll_iter145 = and i64 %wide.trip.count107, 2147483644
  %lcmp.mod143.not = icmp eq i64 %xtraiter141, 0
  %lcmp.mod144 = icmp ne i64 %xtraiter141, 0
  %min.iters.check = icmp ult i32 %.062, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter147 = and i64 %wide.trip.count107, 3   ; 2 uses
  %lcmp.mod148.not = icmp eq i64 %xtraiter147, 0
  %xtraiter149 = and i64 %wide.trip.count107, 1
  %unroll_iter153 = and i64 %wide.trip.count107, 2147483646
  %lcmp.mod151.not = icmp eq i64 %xtraiter149, 0
  %lcmp.mod152 = trunc i32 %.062 to i1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph79, %.loopexit
  %indvars.iv109 = phi i64 [ 0, %.lr.ph79 ], [ %indvars.iv.next110, %.loopexit ] ; 18 uses
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr %i.p, align 8, !tbaa !35
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv109
  br label %_ZNK2cv3Mat2atIiEERKT_i.exit

bb.h:                                             ; preds = %bb.f
  %i.as = load i32, ptr %2, align 8, !tbaa !33
  %i.at = and i32 %i.as, 16384
  %i.au = icmp ne i32 %i.at, 0
  %i.av = load i32, ptr %i.n, align 8
  %i.aw = icmp eq i32 %i.av, 1
  %or.cond.i = select i1 %i.au, i1 true, i1 %i.aw
  br i1 %or.cond.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ax = load ptr, ptr %i.p, align 8, !tbaa !35
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv109
  br label %_ZNK2cv3Mat2atIiEERKT_i.exit

bb.j:                                             ; preds = %bb.h
  %i.az = load i32, ptr %i.o, align 4, !tbaa !22  ; 4 uses
  %i.ba = icmp eq i32 %i.az, 1
  br i1 %i.ba, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bb = load ptr, ptr %i.p, align 8, !tbaa !35
  %i.bc = load i64, ptr %i.q, align 8, !tbaa !36
  %i.bd = mul i64 %i.bc, %indvars.iv109
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bd
  br label %_ZNK2cv3Mat2atIiEERKT_i.exit

bb.l:                                             ; preds = %bb.j
  %i.bf = trunc nuw nsw i64 %indvars.iv109 to i32 ; 2 uses
  %i.bg = sdiv i32 %i.bf, %i.az                   ; 2 uses
  %i.bh = mul nsw i32 %i.bg, %i.az                ; 0 uses
  %.recomposed = srem i32 %i.bf, %i.az
  %i.bi = load ptr, ptr %i.p, align 8, !tbaa !35
  %i.bj = load i64, ptr %i.q, align 8, !tbaa !36
  %i.bk = sext i32 %i.bg to i64
  %i.bl = mul i64 %i.bj, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bl
  %i.bn = sext i32 %.recomposed to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.bn
  br label %_ZNK2cv3Mat2atIiEERKT_i.exit

_ZNK2cv3Mat2atIiEERKT_i.exit:                     ; preds = %bb.g, %bb.i, %bb.k, %bb.l
  %.0.i = phi ptr [ %i.ar, %bb.g ], [ %i.ay, %bb.i ], [ %i.be, %bb.k ], [ %i.bo, %bb.l ]
  %i.bp = load i32, ptr %.0.i, align 4, !tbaa !37 ; 10 uses
  %i.bq = icmp sgt i32 %i.bp, -1
  br i1 %i.bq, label %bb.n, label %.invoke

bb.m:                                             ; preds = %.invoke
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.n:                                             ; preds = %_ZNK2cv3Mat2atIiEERKT_i.exit
  %i.bs = icmp slt i32 %i.bp, %.061
  br i1 %i.bs, label %bb.o, label %.invoke

.invoke:                                          ; preds = %_ZNK2cv3Mat2atIiEERKT_i.exit, %bb.n
  %i.bt = phi i32 [ %.061, %bb.n ], [ 0, %_ZNK2cv3Mat2atIiEERKT_i.exit ]
  %i.bu = phi ptr [ @_ZZN2cv2ml16getSubMatrixImplIdEENS_3MatERKS2_S4_iE14__cv_check__81_0, %bb.n ], [ @_ZZN2cv2ml16getSubMatrixImplIdEENS_3MatERKS2_S4_iE14__cv_check__81, %_ZNK2cv3Mat2atIiEERKT_i.exit ]
  invoke void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %i.bp, i32 noundef %i.bt, ptr noundef nonnull align 8 dereferenceable(48) %i.bu) #29
          to label %.cont unwind label %bb.m

.cont:                                            ; preds = %.invoke
  unreachable

bb.o:                                             ; preds = %bb.n
  br i1 %i.r, label %bb.p, label %bb.ac

bb.p:                                             ; preds = %bb.o
  %i.bv = load i32, ptr %i.t, align 4, !tbaa !34
  %i.bw = icmp slt i32 %i.bv, 2
  br i1 %i.bw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bx = load ptr, ptr %i.u, align 8, !tbaa !35
  %i.by = zext nneg i32 %i.bp to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.by
  br label %_ZNK2cv3Mat2atIdEERKT_i.exit

bb.r:                                             ; preds = %bb.p
  %i.ca = load i32, ptr %1, align 8, !tbaa !33
  %i.cb = and i32 %i.ca, 16384
  %i.cc = icmp ne i32 %i.cb, 0
  %i.cd = load i32, ptr %i.d, align 8
  %i.ce = icmp eq i32 %i.cd, 1
  %or.cond.i44 = select i1 %i.cc, i1 true, i1 %i.ce
  br i1 %or.cond.i44, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cf = load ptr, ptr %i.u, align 8, !tbaa !35
  %i.cg = zext nneg i32 %i.bp to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cg
  br label %_ZNK2cv3Mat2atIdEERKT_i.exit

bb.t:                                             ; preds = %bb.r
  %i.ci = load i32, ptr %i.b, align 4, !tbaa !22  ; 4 uses
  %i.cj = icmp eq i32 %i.ci, 1
  br i1 %i.cj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ck = load ptr, ptr %i.u, align 8, !tbaa !35
  %i.cl = load i64, ptr %i.v, align 8, !tbaa !36
  %i.cm = zext nneg i32 %i.bp to i64
  %i.cn = mul i64 %i.cl, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cn
  br label %_ZNK2cv3Mat2atIdEERKT_i.exit

bb.v:                                             ; preds = %bb.t
  %i.cp = sdiv i32 %i.bp, %i.ci                   ; 2 uses
  %i.cq = mul nsw i32 %i.cp, %i.ci                ; 0 uses
  %.recomposed156 = srem i32 %i.bp, %i.ci
  %i.cr = load ptr, ptr %i.u, align 8, !tbaa !35
  %i.cs = load i64, ptr %i.v, align 8, !tbaa !36
  %i.ct = sext i32 %i.cp to i64
  %i.cu = mul i64 %i.cs, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cu
  %i.cw = sext i32 %.recomposed156 to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.cw
  br label %_ZNK2cv3Mat2atIdEERKT_i.exit

_ZNK2cv3Mat2atIdEERKT_i.exit:                     ; preds = %bb.q, %bb.s, %bb.u, %bb.v
  %.0.i45 = phi ptr [ %i.bz, %bb.q ], [ %i.ch, %bb.s ], [ %i.co, %bb.u ], [ %i.cx, %bb.v ]
  %i.cy = load double, ptr %.0.i45, align 8, !tbaa !40
  br i1 %i.ad, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZNK2cv3Mat2atIdEERKT_i.exit
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv109
  br label %_ZN2cv3Mat2atIdEERT_i.exit

bb.x:                                             ; preds = %_ZNK2cv3Mat2atIdEERKT_i.exit
  %i.da = load i32, ptr %i.ah, align 4
  %i.db = icmp eq i32 %i.da, 1
  %or.cond.i46 = select i1 %i.ag, i1 true, i1 %i.db
  br i1 %or.cond.i46, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv109
  br label %_ZN2cv3Mat2atIdEERT_i.exit

bb.z:                                             ; preds = %bb.x
  br i1 %i.ak, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dd = mul i64 %i.an, %indvars.iv109
  %i.de = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.dd
  br label %_ZN2cv3Mat2atIdEERT_i.exit

bb.ab:                                            ; preds = %bb.z
  %i.df = trunc nuw nsw i64 %indvars.iv109 to i32 ; 2 uses
  %i.dg = sdiv i32 %i.df, %i.am                   ; 2 uses
  %i.dh = mul nsw i32 %i.dg, %i.am                ; 0 uses
  %.recomposed157 = srem i32 %i.df, %i.am
  %i.di = sext i32 %i.dg to i64
  %i.dj = mul i64 %i.an, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.dj
  %i.dl = sext i32 %.recomposed157 to i64
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.dl
  br label %_ZN2cv3Mat2atIdEERT_i.exit

_ZN2cv3Mat2atIdEERT_i.exit:                       ; preds = %bb.w, %bb.y, %bb.aa, %bb.ab
  %.0.i47 = phi ptr [ %i.cz, %bb.w ], [ %i.dc, %bb.y ], [ %i.de, %bb.aa ], [ %i.dm, %bb.ab ]
  store double %i.cy, ptr %.0.i47, align 8, !tbaa !40
  br label %.loopexit

bb.ac:                                            ; preds = %bb.o
  br i1 %i.f, label %.preheader, label %.preheader63

.preheader63:                                     ; preds = %bb.ac
  br i1 %i.s, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader63
  %i.dn = load i32, ptr %i.t, align 4, !tbaa !34
  %.fr81 = freeze i32 %i.dn
  %i.do = icmp slt i32 %.fr81, 2
  %i.dp = load ptr, ptr %i.u, align 8, !tbaa !35  ; 20 uses
  %i.dq = ptrtoaddr ptr %i.dp to i64
  %i.dr = zext nneg i32 %i.bp to i64              ; 8 uses
  br i1 %i.do, label %.lr.ph.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.y, label %.lr.ph.split.us.split.us.preheader, label %.lr.ph.split.us.split.preheader

.lr.ph.split.us.split.preheader:                  ; preds = %.lr.ph.split.us
  br i1 %i.ap, label %.lr.ph.split.us.split.epil.preheader, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us.preheader:               ; preds = %.lr.ph.split.us
  %i.ds = sub i64 %i.dq, %i.ab
  %diff.check = icmp ugt i64 %i.ds, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.split.us.split.us.preheader129, label %vector.body

vector.body:                                      ; preds = %.lr.ph.split.us.split.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.split.us.split.us.preheader ] ; 3 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %index ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %wide.load = load <2 x double>, ptr %i.dt, align 8, !tbaa !40
  %wide.load128 = load <2 x double>, ptr %i.du, align 8, !tbaa !40
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %index ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store <2 x double> %wide.load, ptr %i.dv, align 8, !tbaa !40
  store <2 x double> %wide.load128, ptr %i.dw, align 8, !tbaa !40
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dx = icmp eq i64 %index.next, %n.vec
  br i1 %i.dx, label %middle.block, label %vector.body, !llvm.loop !144

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.split.us.split.us.preheader129

.lr.ph.split.us.split.us.preheader129:            ; preds = %.lr.ph.split.us.split.us.preheader, %middle.block
  %indvars.iv99.ph = phi i64 [ 0, %.lr.ph.split.us.split.us.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod148.not, label %.lr.ph.split.us.split.us.prol.loopexit, label %.lr.ph.split.us.split.us.prol

.lr.ph.split.us.split.us.prol:                    ; preds = %.lr.ph.split.us.split.us.preheader129, %.lr.ph.split.us.split.us.prol
  %indvars.iv99.prol = phi i64 [ %indvars.iv.next100.prol, %.lr.ph.split.us.split.us.prol ], [ %indvars.iv99.ph, %.lr.ph.split.us.split.us.preheader129 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.us.split.us.prol ], [ 0, %.lr.ph.split.us.split.us.preheader129 ]
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv99.prol
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !40
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv99.prol
  store double %i.dz, ptr %i.ea, align 8, !tbaa !40
  %indvars.iv.next100.prol = add nuw nsw i64 %indvars.iv99.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter147
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us.split.us.prol.loopexit, label %.lr.ph.split.us.split.us.prol, !llvm.loop !145

.lr.ph.split.us.split.us.prol.loopexit:           ; preds = %.lr.ph.split.us.split.us.prol, %.lr.ph.split.us.split.us.preheader129
  %indvars.iv99.unr = phi i64 [ %indvars.iv99.ph, %.lr.ph.split.us.split.us.preheader129 ], [ %indvars.iv.next100.prol, %.lr.ph.split.us.split.us.prol ]
  %i.eb = sub nsw i64 %indvars.iv99.ph, %wide.trip.count107
  %i.ec = icmp ugt i64 %i.eb, -4
  br i1 %i.ec, label %.loopexit, label %.lr.ph.split.us.split.us

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us.split.us.prol.loopexit, %.lr.ph.split.us.split.us
  %indvars.iv99 = phi i64 [ %indvars.iv.next100.3, %.lr.ph.split.us.split.us ], [ %indvars.iv99.unr, %.lr.ph.split.us.split.us.prol.loopexit ] ; 6 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv99
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !40
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv99
  store double %i.ee, ptr %i.ef, align 8, !tbaa !40
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.next100
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !40
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next100
  store double %i.eh, ptr %i.ei, align 8, !tbaa !40
  %indvars.iv.next100.1 = add nuw nsw i64 %indvars.iv99, 2 ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.next100.1
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !40
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next100.1
  store double %i.ek, ptr %i.el, align 8, !tbaa !40
  %indvars.iv.next100.2 = add nuw nsw i64 %indvars.iv99, 3 ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.next100.2
  %i.en = load double, ptr %i.em, align 8, !tbaa !40
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next100.2
  store double %i.en, ptr %i.eo, align 8, !tbaa !40
  %indvars.iv.next100.3 = add nuw nsw i64 %indvars.iv99, 4 ; 2 uses
  %exitcond103.not.3 = icmp eq i64 %indvars.iv.next100.3, %wide.trip.count102
  br i1 %exitcond103.not.3, label %.loopexit, label %.lr.ph.split.us.split.us, !llvm.loop !146

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us.split.preheader, %.lr.ph.split.us.split
  %indvars.iv94 = phi i64 [ %indvars.iv.next95.3, %.lr.ph.split.us.split ], [ 0, %.lr.ph.split.us.split.preheader ] ; 6 uses
  %niter146 = phi i64 [ %niter146.next.3, %.lr.ph.split.us.split ], [ 0, %.lr.ph.split.us.split.preheader ]
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv94
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !40
  %i.er = load i64, ptr %i.ac, align 8
  %i.es = mul i64 %i.er, %indvars.iv109
  %.sink.i53.us = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.es
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %.sink.i53.us, i64 %indvars.iv94
  store double %i.eq, ptr %i.et, align 8, !tbaa !40
  %indvars.iv.next95 = or disjoint i64 %indvars.iv94, 1 ; 2 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.next95
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !40
  %i.ew = load i64, ptr %i.ac, align 8
  %i.ex = mul i64 %i.ew, %indvars.iv109
  %.sink.i53.us.1 = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ex
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %.sink.i53.us.1, i64 %indvars.iv.next95
  store double %i.ev, ptr %i.ey, align 8, !tbaa !40
  %indvars.iv.next95.1 = or disjoint i64 %indvars.iv94, 2 ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.next95.1
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !40
  %i.fb = load i64, ptr %i.ac, align 8
  %i.fc = mul i64 %i.fb, %indvars.iv109
  %.sink.i53.us.2 = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.fc
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %.sink.i53.us.2, i64 %indvars.iv.next95.1
  store double %i.fa, ptr %i.fd, align 8, !tbaa !40
  %indvars.iv.next95.2 = or disjoint i64 %indvars.iv94, 3 ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.next95.2
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !40
  %i.fg = load i64, ptr %i.ac, align 8
  %i.fh = mul i64 %i.fg, %indvars.iv109
  %.sink.i53.us.3 = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.fh
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %.sink.i53.us.3, i64 %indvars.iv.next95.2
  store double %i.ff, ptr %i.fi, align 8, !tbaa !40
  %indvars.iv.next95.3 = add nuw nsw i64 %indvars.iv94, 4 ; 2 uses
  %niter146.next.3 = add i64 %niter146, 4         ; 2 uses
  %niter146.ncmp.3 = icmp eq i64 %niter146.next.3, %unroll_iter145
  br i1 %niter146.ncmp.3, label %.loopexit.loopexit131.unr-lcssa, label %.lr.ph.split.us.split, !llvm.loop !147

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph
  br i1 %i.y, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split.split.preheader
  br i1 %i.ao, label %.lr.ph.split.split.us.epil.preheader, label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.preheader, %.lr.ph.split.split.us
  %indvars.iv89 = phi i64 [ %indvars.iv.next90.3, %.lr.ph.split.split.us ], [ 0, %.lr.ph.split.split.us.preheader ] ; 6 uses
  %niter140 = phi i64 [ %niter140.next.3, %.lr.ph.split.split.us ], [ 0, %.lr.ph.split.split.us.preheader ]
  %i.fj = load i64, ptr %i.v, align 8
  %i.fk = mul i64 %i.fj, %i.dr
  %.sink.i51.us68 = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.fk
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %.sink.i51.us68, i64 %indvars.iv89
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !40
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv89
  store double %i.fm, ptr %i.fn, align 8, !tbaa !40
  %indvars.iv.next90 = or disjoint i64 %indvars.iv89, 1 ; 2 uses
  %i.fo = load i64, ptr %i.v, align 8
  %i.fp = mul i64 %i.fo, %i.dr
  %.sink.i51.us68.1 = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.fp
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %.sink.i51.us68.1, i64 %indvars.iv.next90
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !40
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next90
  store double %i.fr, ptr %i.fs, align 8, !tbaa !40
  %indvars.iv.next90.1 = or disjoint i64 %indvars.iv89, 2 ; 2 uses
  %i.ft = load i64, ptr %i.v, align 8
  %i.fu = mul i64 %i.ft, %i.dr
  %.sink.i51.us68.2 = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.fu
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %.sink.i51.us68.2, i64 %indvars.iv.next90.1
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !40
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next90.1
  store double %i.fw, ptr %i.fx, align 8, !tbaa !40
  %indvars.iv.next90.2 = or disjoint i64 %indvars.iv89, 3 ; 2 uses
  %i.fy = load i64, ptr %i.v, align 8
  %i.fz = mul i64 %i.fy, %i.dr
  %.sink.i51.us68.3 = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.fz
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %.sink.i51.us68.3, i64 %indvars.iv.next90.2
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !40
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next90.2
  store double %i.gb, ptr %i.gc, align 8, !tbaa !40
  %indvars.iv.next90.3 = add nuw nsw i64 %indvars.iv89, 4 ; 2 uses
  %niter140.next.3 = add i64 %niter140, 4         ; 2 uses
  %niter140.ncmp.3 = icmp eq i64 %niter140.next.3, %unroll_iter139
  br i1 %niter140.ncmp.3, label %.loopexit.loopexit132.unr-lcssa, label %.lr.ph.split.split.us, !llvm.loop !147

.preheader:                                       ; preds = %bb.ac
  br i1 %i.s, label %.lr.ph74, label %.loopexit

.lr.ph74:                                         ; preds = %.preheader
  %i.gd = load i32, ptr %i.t, align 4, !tbaa !34
  %i.ge = icmp slt i32 %i.gd, 2                   ; 3 uses
  %i.gf = load ptr, ptr %i.u, align 8, !tbaa !35
  %i.gg = zext nneg i32 %i.bp to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.gf, i64 %i.gg ; 3 uses
  %invariant.gep75 = getelementptr [8 x i8], ptr %i.aa, i64 %indvars.iv109 ; 3 uses
  br label %.lr.ph74.new

.lr.ph74.new:                                     ; preds = %.lr.ph74.new, %.lr.ph74
  %indvars.iv104 = phi i64 [ 0, %.lr.ph74 ], [ %indvars.iv.next105.1, %.lr.ph74.new ] ; 4 uses
  %niter154 = phi i64 [ 0, %.lr.ph74 ], [ %niter154.next.1, %.lr.ph74.new ]
  %i.gh = load i64, ptr %i.v, align 8
  %i.gi = mul i64 %i.gh, %indvars.iv104
  %.sink.idx.i = select i1 %i.ge, i64 0, i64 %i.gi
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.sink.idx.i
  %i.gj = load double, ptr %gep, align 8, !tbaa !40
  %i.gk = load i64, ptr %i.ac, align 8
  %i.gl = mul i64 %i.gk, %indvars.iv104
  %.sink.idx.i48 = select i1 %i.ad, i64 0, i64 %i.gl
  %gep76 = getelementptr i8, ptr %invariant.gep75, i64 %.sink.idx.i48
  store double %i.gj, ptr %gep76, align 8, !tbaa !40
  %indvars.iv.next105 = or disjoint i64 %indvars.iv104, 1 ; 2 uses
  %i.gm = load i64, ptr %i.v, align 8
  %i.gn = mul i64 %i.gm, %indvars.iv.next105
  %.sink.idx.i.1 = select i1 %i.ge, i64 0, i64 %i.gn
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %.sink.idx.i.1
  %i.go = load double, ptr %gep.1, align 8, !tbaa !40
  %i.gp = load i64, ptr %i.ac, align 8
  %i.gq = mul i64 %i.gp, %indvars.iv.next105
  %.sink.idx.i48.1 = select i1 %i.ad, i64 0, i64 %i.gq
  %gep76.1 = getelementptr i8, ptr %invariant.gep75, i64 %.sink.idx.i48.1
  store double %i.go, ptr %gep76.1, align 8, !tbaa !40
  %indvars.iv.next105.1 = add nuw nsw i64 %indvars.iv104, 2 ; 3 uses
  %niter154.next.1 = add i64 %niter154, 2         ; 2 uses
  %niter154.ncmp.1 = icmp eq i64 %niter154.next.1, %unroll_iter153
  br i1 %niter154.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph74.new, !llvm.loop !148

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %.lr.ph.split.split
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.split.split ], [ 0, %.lr.ph.split.split.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.split.split ], [ 0, %.lr.ph.split.split.preheader ]
  %i.gr = load i64, ptr %i.v, align 8
  %i.gs = mul i64 %i.gr, %i.dr
  %.sink.i51 = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.gs
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %.sink.i51, i64 %indvars.iv
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !40
  %i.gv = load i64, ptr %i.ac, align 8
  %i.gw = mul i64 %i.gv, %indvars.iv109
  %.sink.i53 = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.gw
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %.sink.i53, i64 %indvars.iv
  store double %i.gu, ptr %i.gx, align 8, !tbaa !40
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.gy = load i64, ptr %i.v, align 8
  %i.gz = mul i64 %i.gy, %i.dr
  %.sink.i51.1 = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.gz
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %.sink.i51.1, i64 %indvars.iv.next
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !40
  %i.hc = load i64, ptr %i.ac, align 8
  %i.hd = mul i64 %i.hc, %indvars.iv109
  %.sink.i53.1 = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.hd
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %.sink.i53.1, i64 %indvars.iv.next
  store double %i.hb, ptr %i.he, align 8, !tbaa !40
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit133.unr-lcssa, label %.lr.ph.split.split, !llvm.loop !147

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph74.new
  br i1 %lcmp.mod151.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod152)
  %i.hf = load i64, ptr %i.v, align 8
  %i.hg = mul i64 %i.hf, %indvars.iv.next105.1
  %.sink.idx.i.epil = select i1 %i.ge, i64 0, i64 %i.hg
  %gep.epil = getelementptr i8, ptr %invariant.gep, i64 %.sink.idx.i.epil
  %i.hh = load double, ptr %gep.epil, align 8, !tbaa !40
  %i.hi = load i64, ptr %i.ac, align 8
  %i.hj = mul i64 %i.hi, %indvars.iv.next105.1
  %.sink.idx.i48.epil = select i1 %i.ad, i64 0, i64 %i.hj
  %gep76.epil = getelementptr i8, ptr %invariant.gep75, i64 %.sink.idx.i48.epil
  store double %i.hh, ptr %gep76.epil, align 8, !tbaa !40
  br label %.loopexit

.loopexit.loopexit131.unr-lcssa:                  ; preds = %.lr.ph.split.us.split
  br i1 %lcmp.mod143.not, label %.loopexit, label %.lr.ph.split.us.split.epil.preheader

.lr.ph.split.us.split.epil.preheader:             ; preds = %.loopexit.loopexit131.unr-lcssa, %.lr.ph.split.us.split.preheader
  %indvars.iv94.epil.init = phi i64 [ 0, %.lr.ph.split.us.split.preheader ], [ %indvars.iv.next95.3, %.loopexit.loopexit131.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod144)
  br label %.lr.ph.split.us.split.epil

.lr.ph.split.us.split.epil:                       ; preds = %.lr.ph.split.us.split.epil, %.lr.ph.split.us.split.epil.preheader
  %indvars.iv94.epil = phi i64 [ %indvars.iv.next95.epil, %.lr.ph.split.us.split.epil ], [ %indvars.iv94.epil.init, %.lr.ph.split.us.split.epil.preheader ] ; 3 uses
  %epil.iter142 = phi i64 [ %epil.iter142.next, %.lr.ph.split.us.split.epil ], [ 0, %.lr.ph.split.us.split.epil.preheader ]
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv94.epil
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !40
  %i.hm = load i64, ptr %i.ac, align 8
  %i.hn = mul i64 %i.hm, %indvars.iv109
  %.sink.i53.us.epil = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.hn
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %.sink.i53.us.epil, i64 %indvars.iv94.epil
  store double %i.hl, ptr %i.ho, align 8, !tbaa !40
  %indvars.iv.next95.epil = add nuw nsw i64 %indvars.iv94.epil, 1
  %epil.iter142.next = add i64 %epil.iter142, 1   ; 2 uses
  %epil.iter142.cmp.not = icmp eq i64 %epil.iter142.next, %xtraiter141
  br i1 %epil.iter142.cmp.not, label %.loopexit, label %.lr.ph.split.us.split.epil, !llvm.loop !149

.loopexit.loopexit132.unr-lcssa:                  ; preds = %.lr.ph.split.split.us
  br i1 %lcmp.mod137.not, label %.loopexit, label %.lr.ph.split.split.us.epil.preheader

.lr.ph.split.split.us.epil.preheader:             ; preds = %.loopexit.loopexit132.unr-lcssa, %.lr.ph.split.split.us.preheader
  %indvars.iv89.epil.init = phi i64 [ 0, %.lr.ph.split.split.us.preheader ], [ %indvars.iv.next90.3, %.loopexit.loopexit132.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod138)
  br label %.lr.ph.split.split.us.epil

.lr.ph.split.split.us.epil:                       ; preds = %.lr.ph.split.split.us.epil, %.lr.ph.split.split.us.epil.preheader
  %indvars.iv89.epil = phi i64 [ %indvars.iv.next90.epil, %.lr.ph.split.split.us.epil ], [ %indvars.iv89.epil.init, %.lr.ph.split.split.us.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.split.us.epil ], [ 0, %.lr.ph.split.split.us.epil.preheader ]
  %i.hp = load i64, ptr %i.v, align 8
  %i.hq = mul i64 %i.hp, %i.dr
  %.sink.i51.us68.epil = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.hq
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %.sink.i51.us68.epil, i64 %indvars.iv89.epil
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !40
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv89.epil
  store double %i.hs, ptr %i.ht, align 8, !tbaa !40
  %indvars.iv.next90.epil = add nuw nsw i64 %indvars.iv89.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter136
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.split.split.us.epil, !llvm.loop !150

.loopexit.loopexit133.unr-lcssa:                  ; preds = %.lr.ph.split.split
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.split.split.epil.preheader

.lr.ph.split.split.epil.preheader:                ; preds = %.loopexit.loopexit133.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod135)
  %i.hu = load i64, ptr %i.v, align 8
  %i.hv = mul i64 %i.hu, %i.dr
  %.sink.i51.epil = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.hv
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.sink.i51.epil, i64 %indvars.iv.next.1
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !40
  %i.hy = load i64, ptr %i.ac, align 8
  %i.hz = mul i64 %i.hy, %indvars.iv109
  %.sink.i53.epil = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.hz
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %.sink.i53.epil, i64 %indvars.iv.next.1
  store double %i.hx, ptr %i.ia, align 8, !tbaa !40
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.split.split.epil.preheader, %.loopexit.loopexit133.unr-lcssa, %.loopexit.loopexit132.unr-lcssa, %.lr.ph.split.split.us.epil, %.loopexit.loopexit131.unr-lcssa, %.lr.ph.split.us.split.epil, %.lr.ph.split.us.split.us.prol.loopexit, %.lr.ph.split.us.split.us, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %middle.block, %.preheader63, %.preheader, %_ZN2cv3Mat2atIdEERT_i.exit
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %exitcond113.not = icmp eq i64 %indvars.iv.next110, %wide.trip.count112
  br i1 %exitcond113.not, label %._crit_edge, label %bb.f, !llvm.loop !151

._crit_edge:                                      ; preds = %.loopexit, %bb.e
  ret void

bb.ad:                                            ; preds = %bb.m, %bb.c
  %.pn = phi { ptr, i32 } [ %i.br, %bb.m ], [ %i.i, %bb.c ]
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #27
  resume { ptr, i32 } %.pn
}

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !24
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.41) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.d, ptr %i.a, align 8, !tbaa !36
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !29
  %i.g = load i64, ptr %i.a, align 8, !tbaa !36
  store i64 %i.g, ptr %i.b, align 8, !tbaa !28
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !28
  store i8 %i.i, ptr %i.h, align 1, !tbaa !28
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !27
  %i.l = load ptr, ptr %0, align 8, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv2ml9TrainData11loadFromCSVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiiS9_cc(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.cv::Ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(32) %5, i8 noundef signext %6, i8 noundef signext %7) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %9 = alloca %"struct.cv::Ptr.0", align 16       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv2ml9TrainData11loadFromCSVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiiS9_ccE26__cv_trace_location_fn1026)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %i.a = invoke noalias noundef nonnull dereferenceable(3416) ptr @_Znwm(i64 noundef 3416) #30
          to label %.noexc unwind label %bb.j     ; 11 uses

.noexc:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  store i32 1, ptr %i.b, align 8, !tbaa !45, !noalias !158
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !46, !noalias !158
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN2cv2ml13TrainDataImplESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !31, !noalias !158
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  invoke void @_ZN2cv2ml13TrainDataImplC2Ev(ptr noundef nonnull align 8 dereferenceable(3400) %i.d)
          to label %bb.b unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv2ml13TrainDataImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i, !noalias !158

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv2ml13TrainDataImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i: ; preds = %.noexc
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 3416) #28, !noalias !158
  br label %.body

bb.b:                                             ; preds = %.noexc
  store ptr %i.d, ptr %9, align 16, !tbaa !51, !alias.scope !157
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.a, ptr %i.f, align 8, !tbaa !52, !alias.scope !157
  %i.g = invoke noundef zeroext i1 @_ZN2cv2ml13TrainDataImpl7loadCSVERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiiS9_cc(ptr noundef nonnull align 8 dereferenceable(3400) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(32) %5, i8 noundef signext %6, i8 noundef signext %7)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  br i1 %i.g, label %_ZNSt12__shared_ptrIN2cv2ml13TrainDataImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %i.h = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.b, align 8, !tbaa !45
  store i32 0, ptr %i.c, align 4, !tbaa !46
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #27, !inline_history !156
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #27, !inline_history !156
  br label %_ZNSt12__shared_ptrIN2cv2ml13TrainDataImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = add nsw i32 %i.j, -1
  store i32 %i.r, ptr %i.b, align 8, !tbaa !37
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.s = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.j, %bb.g ], [ %i.s, %bb.h ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.i, label %_ZNSt12__shared_ptrIN2cv2ml13TrainDataImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !53

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #27
  br label %_ZNSt12__shared_ptrIN2cv2ml13TrainDataImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN2cv2ml13TrainDataImplELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #27
  br label %.body

_ZNSt12__shared_ptrIN2cv2ml13TrainDataImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.c, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.i
  %i.w = load <2 x ptr>, ptr %9, align 16, !tbaa !159
  store <2 x ptr> %i.w, ptr %0, align 8, !tbaa !159
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !56
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt12__shared_ptrIN2cv2ml13TrainDataImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %8)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #26
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %_ZNSt12__shared_ptrIN2cv2ml13TrainDataImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  ret void

.body:                                            ; preds = %bb.j, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv2ml13TrainDataImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i, %bb.k
  %.pn = phi { ptr, i32 } [ %i.v, %bb.k ], [ %i.u, %bb.j ], [ %i.e, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv2ml13TrainDataImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  resume { ptr, i32 } %.pn
}

declare void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

end_hunk_0
