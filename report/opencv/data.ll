Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/data?download=true
inline.NumInlined: 1683
inline.NumDeleted: 715
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN2cv2ml16getSubMatrixImplIiEENS_3MatERKS2_S4_i:bb.a
  %.0.i.us91 = phi ptr [ %i.fv, %bb.am ], [ %i.ft, %bb.al ], [ %i.fr, %bb.ak ], [ %i.fn, %bb.aj ]
  %i.fw = load i32, ptr %.0.i.us91, align 4, !tbaa !37 ; 5 uses
  %i.fx = icmp sgt i32 %i.fw, -1
  br i1 %i.fx, label %bb.an, label %.split78.us.invoke

bb.an:                                            ; preds = %_ZNK2cv3Mat2atIiEERKT_i.exit.us90
  %i.fy = icmp slt i32 %i.fw, %.064
  br i1 %i.fy, label %.preheader66.us, label %.split78.us.invoke

.preheader66.us:                                  ; preds = %bb.an
  %i.fz = load ptr, ptr %i.s, align 8, !tbaa !35
  %i.ga = zext nneg i32 %i.fw to i64
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.preheader66.us
  %indvars.iv171 = phi i64 [ %indvars.iv.next172, %bb.ao ], [ 0, %.preheader66.us ] ; 3 uses
  %i.gb = load i32, ptr %i.r, align 4, !tbaa !34
  %i.gc = icmp slt i32 %i.gb, 2
  %i.gd = load i64, ptr %i.t, align 8
  %i.ge = mul i64 %i.gd, %i.ga
  %.sink.idx.i53.us = select i1 %i.gc, i64 0, i64 %i.ge
  %.sink.i54.us = getelementptr inbounds nuw i8, ptr %i.fz, i64 %.sink.idx.i53.us
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %.sink.i54.us, i64 %indvars.iv171
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !37
  %i.gh = load i32, ptr %i.u, align 4, !tbaa !34
  %i.gi = icmp slt i32 %i.gh, 2
  %i.gj = load i64, ptr %i.x, align 8
  %i.gk = mul i64 %i.gj, %indvars.iv176
  %.sink.idx.i55.us = select i1 %i.gi, i64 0, i64 %i.gk
  %.sink.i56.us = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sink.idx.i55.us
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.sink.i56.us, i64 %indvars.iv171
  store i32 %i.gg, ptr %i.gl, align 4, !tbaa !37
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %exitcond175.not = icmp eq i64 %indvars.iv.next172, %wide.trip.count174
  br i1 %exitcond175.not, label %..loopexit67_crit_edge.us, label %bb.ao, !llvm.loop !143

..loopexit67_crit_edge.us:                        ; preds = %bb.ao
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1 ; 2 uses
  %exitcond180.not = icmp eq i64 %indvars.iv.next177, %wide.trip.count179
  br i1 %exitcond180.not, label %._crit_edge, label %.lr.ph76.split.split.split.us, !llvm.loop !141

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
  %wide.trip.count102.a = zext nneg i32 %.062 to i64
  %wide.trip.count107 = zext i32 %.062 to i64     ; 11 uses
  %i.ao = add nsw i64 %wide.trip.count107, -1     ; 2 uses
  %xtraiter = and i64 %wide.trip.count107, 1
  %i.ap = icmp eq i64 %i.ao, 0
  %unroll_iter = and i64 %wide.trip.count107, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod135 = trunc i32 %.062 to i1
  %xtraiter136 = and i64 %wide.trip.count107, 3   ; 3 uses
  %i.aq = icmp ult i32 %.062, 4
  %unroll_iter139 = and i64 %wide.trip.count107, 2147483644
  %lcmp.mod137.not = icmp eq i64 %xtraiter136, 0
  %lcmp.mod138 = icmp ne i64 %xtraiter136, 0
  %xtraiter141 = and i64 %wide.trip.count107, 3   ; 3 uses
  %i.ar = icmp ult i32 %.062, 4
  %unroll_iter145 = and i64 %wide.trip.count107, 2147483644
  %lcmp.mod143.not = icmp eq i64 %xtraiter141, 0
  %lcmp.mod144 = icmp ne i64 %xtraiter141, 0
  %min.iters.check = icmp ult i32 %.062, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter147 = and i64 %wide.trip.count107, 3   ; 2 uses
  %lcmp.mod148.not = icmp eq i64 %xtraiter147, 0
  %xtraiter149 = and i64 %wide.trip.count107, 1
  %i.as = icmp eq i64 %i.ao, 0
  %unroll_iter153 = and i64 %wide.trip.count107, 2147483646
  %lcmp.mod151.not = icmp eq i64 %xtraiter149, 0
  %lcmp.mod152 = trunc i32 %.062 to i1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph79, %.loopexit
  %indvars.iv109 = phi i64 [ 0, %.lr.ph79 ], [ %indvars.iv.next110, %.loopexit ] ; 18 uses
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.at = load ptr, ptr %i.p, align 8, !tbaa !35
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv109
  br label %_ZNK2cv3Mat2atIiEERKT_i.exit

bb.h:                                             ; preds = %bb.f
  %i.av = load i32, ptr %2, align 8, !tbaa !33
  %i.aw = and i32 %i.av, 16384
  %i.ax = icmp ne i32 %i.aw, 0
  %i.ay = load i32, ptr %i.n, align 8
  %i.az = icmp eq i32 %i.ay, 1
  %or.cond.i = select i1 %i.ax, i1 true, i1 %i.az
  br i1 %or.cond.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ba = load ptr, ptr %i.p, align 8, !tbaa !35
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv109
  br label %_ZNK2cv3Mat2atIiEERKT_i.exit

bb.j:                                             ; preds = %bb.h
  %i.bc = load i32, ptr %i.o, align 4, !tbaa !22  ; 4 uses
  %i.bd = icmp eq i32 %i.bc, 1
  br i1 %i.bd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.be = load ptr, ptr %i.p, align 8, !tbaa !35
  %i.bf = load i64, ptr %i.q, align 8, !tbaa !36
  %i.bg = mul i64 %i.bf, %indvars.iv109
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bg
  br label %_ZNK2cv3Mat2atIiEERKT_i.exit

bb.l:                                             ; preds = %bb.j
  %i.bi = trunc nuw nsw i64 %indvars.iv109 to i32 ; 2 uses
  %i.bj = sdiv i32 %i.bi, %i.bc                   ; 2 uses
  %i.bk = mul nsw i32 %i.bj, %i.bc                ; 0 uses
  %.recomposed = srem i32 %i.bi, %i.bc
  %i.bl = load ptr, ptr %i.p, align 8, !tbaa !35
  %i.bm = load i64, ptr %i.q, align 8, !tbaa !36
  %i.bn = sext i32 %i.bj to i64
  %i.bo = mul i64 %i.bm, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bo
  %i.bq = sext i32 %.recomposed to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.bq
  br label %_ZNK2cv3Mat2atIiEERKT_i.exit

_ZNK2cv3Mat2atIiEERKT_i.exit:                     ; preds = %bb.g, %bb.i, %bb.k, %bb.l
  %.0.i = phi ptr [ %i.au, %bb.g ], [ %i.bb, %bb.i ], [ %i.bh, %bb.k ], [ %i.br, %bb.l ]
  %i.bs = load i32, ptr %.0.i, align 4, !tbaa !37 ; 10 uses
  %i.bt = icmp sgt i32 %i.bs, -1
  br i1 %i.bt, label %bb.n, label %.invoke

bb.m:                                             ; preds = %.invoke
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.n:                                             ; preds = %_ZNK2cv3Mat2atIiEERKT_i.exit
  %i.bv = icmp slt i32 %i.bs, %.061
  br i1 %i.bv, label %bb.o, label %.invoke

.invoke:                                          ; preds = %_ZNK2cv3Mat2atIiEERKT_i.exit, %bb.n
  %i.bw = phi i32 [ %.061, %bb.n ], [ 0, %_ZNK2cv3Mat2atIiEERKT_i.exit ]
  %i.bx = phi ptr [ @_ZZN2cv2ml16getSubMatrixImplIdEENS_3MatERKS2_S4_iE14__cv_check__81_0, %bb.n ], [ @_ZZN2cv2ml16getSubMatrixImplIdEENS_3MatERKS2_S4_iE14__cv_check__81, %_ZNK2cv3Mat2atIiEERKT_i.exit ]
  invoke void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %i.bs, i32 noundef %i.bw, ptr noundef nonnull align 8 dereferenceable(48) %i.bx) #29
          to label %.cont unwind label %bb.m

.cont:                                            ; preds = %.invoke
  unreachable

bb.o:                                             ; preds = %bb.n
  br i1 %i.r, label %bb.p, label %bb.ac

bb.p:                                             ; preds = %bb.o
  %i.by = load i32, ptr %i.t, align 4, !tbaa !34
  %i.bz = icmp slt i32 %i.by, 2
  br i1 %i.bz, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ca = load ptr, ptr %i.u, align 8, !tbaa !35
  %i.cb = zext nneg i32 %i.bs to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cb
  br label %_ZNK2cv3Mat2atIdEERKT_i.exit

bb.r:                                             ; preds = %bb.p
  %i.cd = load i32, ptr %1, align 8, !tbaa !33
  %i.ce = and i32 %i.cd, 16384
  %i.cf = icmp ne i32 %i.ce, 0
  %i.cg = load i32, ptr %i.d, align 8
  %i.ch = icmp eq i32 %i.cg, 1
  %or.cond.i44 = select i1 %i.cf, i1 true, i1 %i.ch
  br i1 %or.cond.i44, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ci = load ptr, ptr %i.u, align 8, !tbaa !35
  %i.cj = zext nneg i32 %i.bs to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cj
  br label %_ZNK2cv3Mat2atIdEERKT_i.exit

bb.t:                                             ; preds = %bb.r
  %i.cl = load i32, ptr %i.b, align 4, !tbaa !22  ; 4 uses
  %i.cm = icmp eq i32 %i.cl, 1
  br i1 %i.cm, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cn = load ptr, ptr %i.u, align 8, !tbaa !35
  %i.co = load i64, ptr %i.v, align 8, !tbaa !36
  %i.cp = zext nneg i32 %i.bs to i64
  %i.cq = mul i64 %i.co, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cq
  br label %_ZNK2cv3Mat2atIdEERKT_i.exit

bb.v:                                             ; preds = %bb.t
  %i.cs = sdiv i32 %i.bs, %i.cl                   ; 2 uses
  %i.ct = mul nsw i32 %i.cs, %i.cl                ; 0 uses
  %.recomposed156 = srem i32 %i.bs, %i.cl
  %i.cu = load ptr, ptr %i.u, align 8, !tbaa !35
  %i.cv = load i64, ptr %i.v, align 8, !tbaa !36
  %i.cw = sext i32 %i.cs to i64
  %i.cx = mul i64 %i.cv, %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cx
  %i.cz = sext i32 %.recomposed156 to i64
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.cz
  br label %_ZNK2cv3Mat2atIdEERKT_i.exit

_ZNK2cv3Mat2atIdEERKT_i.exit:                     ; preds = %bb.q, %bb.s, %bb.u, %bb.v
  %.0.i45 = phi ptr [ %i.cc, %bb.q ], [ %i.ck, %bb.s ], [ %i.cr, %bb.u ], [ %i.da, %bb.v ]
  %i.db = load double, ptr %.0.i45, align 8, !tbaa !40
  br i1 %i.ad, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZNK2cv3Mat2atIdEERKT_i.exit
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv109
  br label %_ZN2cv3Mat2atIdEERT_i.exit

bb.x:                                             ; preds = %_ZNK2cv3Mat2atIdEERKT_i.exit
  %i.dd = load i32, ptr %i.ah, align 4
  %i.de = icmp eq i32 %i.dd, 1
  %or.cond.i46 = select i1 %i.ag, i1 true, i1 %i.de
  br i1 %or.cond.i46, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv109
  br label %_ZN2cv3Mat2atIdEERT_i.exit

bb.z:                                             ; preds = %bb.x
  br i1 %i.ak, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dg = mul i64 %i.an, %indvars.iv109
  %i.dh = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.dg
  br label %_ZN2cv3Mat2atIdEERT_i.exit

bb.ab:                                            ; preds = %bb.z
  %i.di = trunc nuw nsw i64 %indvars.iv109 to i32 ; 2 uses
  %i.dj = sdiv i32 %i.di, %i.am                   ; 2 uses
  %i.dk = mul nsw i32 %i.dj, %i.am                ; 0 uses
  %.recomposed157 = srem i32 %i.di, %i.am
  %i.dl = sext i32 %i.dj to i64
  %i.dm = mul i64 %i.an, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.dm
  %i.do = sext i32 %.recomposed157 to i64
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.do
  br label %_ZN2cv3Mat2atIdEERT_i.exit

_ZN2cv3Mat2atIdEERT_i.exit:                       ; preds = %bb.w, %bb.y, %bb.aa, %bb.ab
  %.0.i47 = phi ptr [ %i.dc, %bb.w ], [ %i.df, %bb.y ], [ %i.dh, %bb.aa ], [ %i.dp, %bb.ab ]
  store double %i.db, ptr %.0.i47, align 8, !tbaa !40
  br label %.loopexit

bb.ac:                                            ; preds = %bb.o
  br i1 %i.f, label %.preheader, label %.preheader63

.preheader63:                                     ; preds = %bb.ac
  br i1 %i.s, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader63
  %i.dq = load i32, ptr %i.t, align 4, !tbaa !34
  %.fr81 = freeze i32 %i.dq
  %i.dr = icmp slt i32 %.fr81, 2
  %i.ds = load ptr, ptr %i.u, align 8, !tbaa !35  ; 20 uses
  %i.dt = ptrtoaddr ptr %i.ds to i64
  %i.du = zext nneg i32 %i.bs to i64              ; 8 uses
  br i1 %i.dr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.y, label %.lr.ph.split.us.split.us.preheader, label %.lr.ph.split.us.split.preheader

.lr.ph.split.us.split.preheader:                  ; preds = %.lr.ph.split.us
  br i1 %i.ar, label %.lr.ph.split.us.split.epil.preheader, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us.preheader:               ; preds = %.lr.ph.split.us
  %i.dv = sub i64 %i.dt, %i.ab
  %diff.check = icmp ugt i64 %i.dv, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.split.us.split.us.preheader129, label %vector.body

vector.body:                                      ; preds = %.lr.ph.split.us.split.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.split.us.split.us.preheader ] ; 3 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %index ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %wide.load = load <2 x double>, ptr %i.dw, align 8, !tbaa !40
  %wide.load128 = load <2 x double>, ptr %i.dx, align 8, !tbaa !40
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %index ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store <2 x double> %wide.load, ptr %i.dy, align 8, !tbaa !40
  store <2 x double> %wide.load128, ptr %i.dz, align 8, !tbaa !40
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ea = icmp eq i64 %index.next, %n.vec
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !144

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.split.us.split.us.preheader129

.lr.ph.split.us.split.us.preheader129:            ; preds = %.lr.ph.split.us.split.us.preheader, %middle.block
  %indvars.iv99.ph = phi i64 [ 0, %.lr.ph.split.us.split.us.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod148.not, label %.lr.ph.split.us.split.us.prol.loopexit, label %.lr.ph.split.us.split.us.prol

.lr.ph.split.us.split.us.prol:                    ; preds = %.lr.ph.split.us.split.us.preheader129, %.lr.ph.split.us.split.us.prol
  %indvars.iv99.prol = phi i64 [ %indvars.iv.next100.prol, %.lr.ph.split.us.split.us.prol ], [ %indvars.iv99.ph, %.lr.ph.split.us.split.us.preheader129 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.us.split.us.prol ], [ 0, %.lr.ph.split.us.split.us.preheader129 ]
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv99.prol
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !40
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv99.prol
  store double %i.ec, ptr %i.ed, align 8, !tbaa !40
  %indvars.iv.next100.prol = add nuw nsw i64 %indvars.iv99.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter147
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us.split.us.prol.loopexit, label %.lr.ph.split.us.split.us.prol, !llvm.loop !145

.lr.ph.split.us.split.us.prol.loopexit:           ; preds = %.lr.ph.split.us.split.us.prol, %.lr.ph.split.us.split.us.preheader129
  %indvars.iv99.unr = phi i64 [ %indvars.iv99.ph, %.lr.ph.split.us.split.us.preheader129 ], [ %indvars.iv.next100.prol, %.lr.ph.split.us.split.us.prol ]
  %i.ee = sub nsw i64 %indvars.iv99.ph, %wide.trip.count107
  %i.ef = icmp ugt i64 %i.ee, -4
  br i1 %i.ef, label %.loopexit, label %.lr.ph.split.us.split.us

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us.split.us.prol.loopexit, %.lr.ph.split.us.split.us
  %indvars.iv99 = phi i64 [ %indvars.iv.next100.3, %.lr.ph.split.us.split.us ], [ %indvars.iv99.unr, %.lr.ph.split.us.split.us.prol.loopexit ] ; 6 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv99
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !40
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv99
  store double %i.eh, ptr %i.ei, align 8, !tbaa !40
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv.next100
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !40
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next100
  store double %i.ek, ptr %i.el, align 8, !tbaa !40
  %indvars.iv.next100.1 = add nuw nsw i64 %indvars.iv99, 2 ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv.next100.1
  %i.en = load double, ptr %i.em, align 8, !tbaa !40
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next100.1
  store double %i.en, ptr %i.eo, align 8, !tbaa !40
  %indvars.iv.next100.2 = add nuw nsw i64 %indvars.iv99, 3 ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv.next100.2
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !40
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next100.2
  store double %i.eq, ptr %i.er, align 8, !tbaa !40
  %indvars.iv.next100.3 = add nuw nsw i64 %indvars.iv99, 4 ; 2 uses
  %exitcond103.not.3 = icmp eq i64 %indvars.iv.next100.3, %wide.trip.count102.a
  br i1 %exitcond103.not.3, label %.loopexit, label %.lr.ph.split.us.split.us, !llvm.loop !146

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us.split.preheader, %.lr.ph.split.us.split
  %indvars.iv94 = phi i64 [ %indvars.iv.next95.3, %.lr.ph.split.us.split ], [ 0, %.lr.ph.split.us.split.preheader ] ; 6 uses
  %niter146 = phi i64 [ %niter146.next.3, %.lr.ph.split.us.split ], [ 0, %.lr.ph.split.us.split.preheader ]
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv94
  %i.et = load double, ptr %i.es, align 8, !tbaa !40
  %i.eu = load i64, ptr %i.ac, align 8
  %i.ev = mul i64 %i.eu, %indvars.iv109
  %.sink.i53.us = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ev
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %.sink.i53.us, i64 %indvars.iv94
  store double %i.et, ptr %i.ew, align 8, !tbaa !40
  %indvars.iv.next95 = or disjoint i64 %indvars.iv94, 1 ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv.next95
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !40
  %i.ez = load i64, ptr %i.ac, align 8
  %i.fa = mul i64 %i.ez, %indvars.iv109
  %.sink.i53.us.1 = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.fa
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %.sink.i53.us.1, i64 %indvars.iv.next95
  store double %i.ey, ptr %i.fb, align 8, !tbaa !40
  %indvars.iv.next95.1 = or disjoint i64 %indvars.iv94, 2 ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv.next95.1
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !40
  %i.fe = load i64, ptr %i.ac, align 8
  %i.ff = mul i64 %i.fe, %indvars.iv109
  %.sink.i53.us.2 = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ff
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %.sink.i53.us.2, i64 %indvars.iv.next95.1
  store double %i.fd, ptr %i.fg, align 8, !tbaa !40
  %indvars.iv.next95.2 = or disjoint i64 %indvars.iv94, 3 ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv.next95.2
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !40
  %i.fj = load i64, ptr %i.ac, align 8
  %i.fk = mul i64 %i.fj, %indvars.iv109
  %.sink.i53.us.3 = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.fk
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %.sink.i53.us.3, i64 %indvars.iv.next95.2
  store double %i.fi, ptr %i.fl, align 8, !tbaa !40
  %indvars.iv.next95.3 = add nuw nsw i64 %indvars.iv94, 4 ; 2 uses
  %niter146.next.3 = add i64 %niter146, 4         ; 2 uses
  %niter146.ncmp.3 = icmp eq i64 %niter146.next.3, %unroll_iter145
  br i1 %niter146.ncmp.3, label %.loopexit.loopexit131.unr-lcssa, label %.lr.ph.split.us.split, !llvm.loop !147

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.y, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  br i1 %i.ap, label %.lr.ph.split.split.epil.preheader, label %.lr.ph.split.split

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  br i1 %i.aq, label %.lr.ph.split.split.us.epil.preheader, label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.preheader, %.lr.ph.split.split.us
  %indvars.iv89 = phi i64 [ %indvars.iv.next90.3, %.lr.ph.split.split.us ], [ 0, %.lr.ph.split.split.us.preheader ] ; 6 uses
  %niter140 = phi i64 [ %niter140.next.3, %.lr.ph.split.split.us ], [ 0, %.lr.ph.split.split.us.preheader ]
  %i.fm = load i64, ptr %i.v, align 8
  %i.fn = mul i64 %i.fm, %i.du
  %.sink.i51.us68 = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.fn
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %.sink.i51.us68, i64 %indvars.iv89
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !40
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv89
  store double %i.fp, ptr %i.fq, align 8, !tbaa !40
  %indvars.iv.next90 = or disjoint i64 %indvars.iv89, 1 ; 2 uses
  %i.fr = load i64, ptr %i.v, align 8
  %i.fs = mul i64 %i.fr, %i.du
  %.sink.i51.us68.1 = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.fs
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %.sink.i51.us68.1, i64 %indvars.iv.next90
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !40
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next90
  store double %i.fu, ptr %i.fv, align 8, !tbaa !40
  %indvars.iv.next90.1 = or disjoint i64 %indvars.iv89, 2 ; 2 uses
  %i.fw = load i64, ptr %i.v, align 8
  %i.fx = mul i64 %i.fw, %i.du
  %.sink.i51.us68.2 = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.fx
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %.sink.i51.us68.2, i64 %indvars.iv.next90.1
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !40
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next90.1
  store double %i.fz, ptr %i.ga, align 8, !tbaa !40
  %indvars.iv.next90.2 = or disjoint i64 %indvars.iv89, 3 ; 2 uses
  %i.gb = load i64, ptr %i.v, align 8
  %i.gc = mul i64 %i.gb, %i.du
  %.sink.i51.us68.3 = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.gc
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.sink.i51.us68.3, i64 %indvars.iv.next90.2
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !40
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next90.2
  store double %i.ge, ptr %i.gf, align 8, !tbaa !40
  %indvars.iv.next90.3 = add nuw nsw i64 %indvars.iv89, 4 ; 2 uses
  %niter140.next.3 = add i64 %niter140, 4         ; 2 uses
  %niter140.ncmp.3 = icmp eq i64 %niter140.next.3, %unroll_iter139
  br i1 %niter140.ncmp.3, label %.loopexit.loopexit132.unr-lcssa, label %.lr.ph.split.split.us, !llvm.loop !147

.preheader:                                       ; preds = %bb.ac
  br i1 %i.s, label %.lr.ph74, label %.loopexit

.lr.ph74:                                         ; preds = %.preheader
  %i.gg = load i32, ptr %i.t, align 4, !tbaa !34
  %i.gh = icmp slt i32 %i.gg, 2                   ; 3 uses
  %i.gi = load ptr, ptr %i.u, align 8, !tbaa !35
  %i.gj = zext nneg i32 %i.bs to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.gi, i64 %i.gj ; 3 uses
  %invariant.gep75 = getelementptr [8 x i8], ptr %i.aa, i64 %indvars.iv109 ; 3 uses
  br i1 %i.as, label %.epil.preheader, label %.lr.ph74.new

.lr.ph74.new:                                     ; preds = %.lr.ph74, %.lr.ph74.new
  %indvars.iv104 = phi i64 [ %indvars.iv.next105.1, %.lr.ph74.new ], [ 0, %.lr.ph74 ] ; 4 uses
  %niter154 = phi i64 [ %niter154.next.1, %.lr.ph74.new ], [ 0, %.lr.ph74 ]
  %i.gk = load i64, ptr %i.v, align 8
  %i.gl = mul i64 %i.gk, %indvars.iv104
  %.sink.idx.i = select i1 %i.gh, i64 0, i64 %i.gl
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.sink.idx.i
  %i.gm = load double, ptr %gep, align 8, !tbaa !40
  %i.gn = load i64, ptr %i.ac, align 8
  %i.go = mul i64 %i.gn, %indvars.iv104
  %.sink.idx.i48 = select i1 %i.ad, i64 0, i64 %i.go
  %gep76 = getelementptr i8, ptr %invariant.gep75, i64 %.sink.idx.i48
  store double %i.gm, ptr %gep76, align 8, !tbaa !40
  %indvars.iv.next105 = or disjoint i64 %indvars.iv104, 1 ; 2 uses
  %i.gp = load i64, ptr %i.v, align 8
  %i.gq = mul i64 %i.gp, %indvars.iv.next105
  %.sink.idx.i.1 = select i1 %i.gh, i64 0, i64 %i.gq
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %.sink.idx.i.1
  %i.gr = load double, ptr %gep.1, align 8, !tbaa !40
  %i.gs = load i64, ptr %i.ac, align 8
  %i.gt = mul i64 %i.gs, %indvars.iv.next105
  %.sink.idx.i48.1 = select i1 %i.ad, i64 0, i64 %i.gt
  %gep76.1 = getelementptr i8, ptr %invariant.gep75, i64 %.sink.idx.i48.1
  store double %i.gr, ptr %gep76.1, align 8, !tbaa !40
  %indvars.iv.next105.1 = add nuw nsw i64 %indvars.iv104, 2 ; 2 uses
  %niter154.next.1 = add i64 %niter154, 2         ; 2 uses
  %niter154.ncmp.1 = icmp eq i64 %niter154.next.1, %unroll_iter153
  br i1 %niter154.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph74.new, !llvm.loop !148

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %.lr.ph.split.split
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.split.split ], [ 0, %.lr.ph.split.split.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.split.split ], [ 0, %.lr.ph.split.split.preheader ]
  %i.gu = load i64, ptr %i.v, align 8
  %i.gv = mul i64 %i.gu, %i.du
  %.sink.i51 = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.gv
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %.sink.i51, i64 %indvars.iv
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !40
  %i.gy = load i64, ptr %i.ac, align 8
  %i.gz = mul i64 %i.gy, %indvars.iv109
  %.sink.i53 = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.gz
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %.sink.i53, i64 %indvars.iv
  store double %i.gx, ptr %i.ha, align 8, !tbaa !40
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.hb = load i64, ptr %i.v, align 8
  %i.hc = mul i64 %i.hb, %i.du
  %.sink.i51.1 = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.hc
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %.sink.i51.1, i64 %indvars.iv.next
  %i.he = load double, ptr %i.hd, align 8, !tbaa !40
  %i.hf = load i64, ptr %i.ac, align 8
  %i.hg = mul i64 %i.hf, %indvars.iv109
  %.sink.i53.1 = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.hg
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %.sink.i53.1, i64 %indvars.iv.next
  store double %i.he, ptr %i.hh, align 8, !tbaa !40
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit133.unr-lcssa, label %.lr.ph.split.split, !llvm.loop !147

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph74.new
  br i1 %lcmp.mod151.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph74
  %indvars.iv104.epil.init = phi i64 [ 0, %.lr.ph74 ], [ %indvars.iv.next105.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod152)
  %i.hi = load i64, ptr %i.v, align 8
  %i.hj = mul i64 %i.hi, %indvars.iv104.epil.init
  %.sink.idx.i.epil = select i1 %i.gh, i64 0, i64 %i.hj
  %gep.epil = getelementptr i8, ptr %invariant.gep, i64 %.sink.idx.i.epil
  %i.hk = load double, ptr %gep.epil, align 8, !tbaa !40
  %i.hl = load i64, ptr %i.ac, align 8
  %i.hm = mul i64 %i.hl, %indvars.iv104.epil.init
  %.sink.idx.i48.epil = select i1 %i.ad, i64 0, i64 %i.hm
  %gep76.epil = getelementptr i8, ptr %invariant.gep75, i64 %.sink.idx.i48.epil
  store double %i.hk, ptr %gep76.epil, align 8, !tbaa !40
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
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv94.epil
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !40
  %i.hp = load i64, ptr %i.ac, align 8
  %i.hq = mul i64 %i.hp, %indvars.iv109
  %.sink.i53.us.epil = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.hq
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %.sink.i53.us.epil, i64 %indvars.iv94.epil
  store double %i.ho, ptr %i.hr, align 8, !tbaa !40
  %indvars.iv.next95.epil = add nuw nsw i64 %indvars.iv94.epil, 1
  %epil.iter142.next = add i64 %epil.iter142, 1   ; 2 uses
  %epil.iter142.cmp.not = icmp eq i64 %epil.iter142.next, %xtraiter141
  br i1 %epil.iter142.cmp.not, label %.loopexit, label %.lr.ph.split.us.split.epil, !llvm.loop !149

end_hunk_0
