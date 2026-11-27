Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/estimated_covariance?download=true
inline.NumInlined: 333
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2cv8ximgproc18EstimateCovariance22buildCombinationsTableEv:bb.a

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge41
  %i.ac = phi i32 [ %i.an, %._crit_edge41 ], [ %i.m, %.preheader.lr.ph ]
  %i.ad = phi i32 [ %i.ao, %._crit_edge41 ], [ %i.l, %.preheader.lr.ph ] ; 2 uses
  %.244 = phi i32 [ %.3.lcssa, %._crit_edge41 ], [ %.0.lcssa, %.preheader.lr.ph ] ; 2 uses
  %.13043 = phi i32 [ %i.ap, %._crit_edge41 ], [ 1, %.preheader.lr.ph ] ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 1
  br i1 %i.ae, label %.lr.ph40.preheader, label %._crit_edge41

.lr.ph40.preheader:                               ; preds = %.preheader
  %i.af = sext i32 %.244 to i64
  br label %.lr.ph40

.lr.ph40:                                         ; preds = %.lr.ph40.preheader, %.lr.ph40
  %indvars.iv50 = phi i64 [ %i.af, %.lr.ph40.preheader ], [ %indvars.iv.next51, %.lr.ph40 ] ; 3 uses
  %.12838 = phi i32 [ 1, %.lr.ph40.preheader ], [ %i.aj, %.lr.ph40 ] ; 2 uses
  %indvars.iv.next51 = add nsw i64 %indvars.iv50, 1 ; 2 uses
  %i.ag = load ptr, ptr %i.p, align 8, !tbaa !20
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %indvars.iv50 ; 6 uses
  store i32 %.13043, ptr %i.ah, align 4
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx2, align 4
  %.sroa.8.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i32 0, ptr %.sroa.8.0..sroa_idx4, align 4
  %.sroa.10.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 %.12838, ptr %.sroa.10.0..sroa_idx6, align 4
  %.sroa.12.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i32 1, ptr %.sroa.12.0..sroa_idx8, align 4
  %.sroa.14.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  %i.ai = trunc nsw i64 %indvars.iv50 to i32
  store i32 %i.ai, ptr %.sroa.14.0..sroa_idx10, align 4
  %i.aj = add nuw nsw i32 %.12838, 1              ; 2 uses
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !19  ; 2 uses
  %i.al = icmp slt i32 %i.aj, %i.ak
  br i1 %i.al, label %.lr.ph40, label %._crit_edge41.loopexit, !llvm.loop !2

._crit_edge41.loopexit:                           ; preds = %.lr.ph40
  %i.am = trunc nsw i64 %indvars.iv.next51 to i32
  %.pre54 = load i32, ptr %i.n, align 8, !tbaa !18
  br label %._crit_edge41

._crit_edge41:                                    ; preds = %._crit_edge41.loopexit, %.preheader
  %i.an = phi i32 [ %i.ac, %.preheader ], [ %.pre54, %._crit_edge41.loopexit ] ; 2 uses
  %i.ao = phi i32 [ %i.ad, %.preheader ], [ %i.ak, %._crit_edge41.loopexit ]
  %.3.lcssa = phi i32 [ %.244, %.preheader ], [ %i.am, %._crit_edge41.loopexit ]
  %i.ap = add nuw nsw i32 %.13043, 1              ; 2 uses
  %i.aq = icmp slt i32 %i.ap, %i.an
  br i1 %i.aq, label %.preheader, label %._crit_edge45, !llvm.loop !3

._crit_edge45:                                    ; preds = %._crit_edge41, %.preheader32.lr.ph, %.preheader.lr.ph, %.preheader31
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv8ximgproc18EstimateCovariance25computeEstimateCovarianceENS_3MatES2_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef align 8 %1, ptr noundef align 8 %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::Mat", align 8           ; 4 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 4 uses
  tail call void @_ZN2cv8ximgproc18EstimateCovariance26initInternalDataStructuresEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load <2 x i32>, ptr %i.a, align 8, !tbaa !25
  store <2 x i32> %i.b, ptr %0, align 8, !tbaa !25
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %1)
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN2cv8ximgproc18EstimateCovariance19iterateCombinationsENS_3MatES2_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 %3, ptr noundef nonnull align 8 %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #19
  ret void

bb.d:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.c, %bb.d ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #19
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv8ximgproc18EstimateCovariance19iterateCombinationsENS_3MatES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef align 8 %1, ptr noundef align 8 %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %4 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %5 = alloca %"class.cv::Scalar_", align 8       ; 5 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 5 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 5 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 5 uses
  %9 = alloca %"class.std::vector.0", align 8     ; 7 uses
  %10 = alloca %"class.std::vector.0", align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !19
  %i.e = mul nsw i32 %i.d, %i.b
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef %i.e, i32 noundef 1, i32 noundef 37)
  %i.f = load i32, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.g = load i32, ptr %i.c, align 4, !tbaa !19   ; 2 uses
  %i.h = mul nsw i32 %i.g, %i.f                   ; 3 uses
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = icmp slt i32 %i.h, 0
  br i1 %i.j, label %bb.b, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #20
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit44, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.k = shl nuw nsw i64 %i.i, 2                  ; 3 uses
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #21
          to label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit unwind label %bb.h ; 6 uses

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit:            ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.l, i8 0, i64 %i.k, i1 false), !tbaa !25
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k ; 2 uses
  %.pre = load i32, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %.pre118 = load i32, ptr %i.c, align 4, !tbaa !19 ; 2 uses
  %.pre121 = mul nsw i32 %.pre118, %.pre          ; 3 uses
  %.pre122 = zext nneg i32 %.pre121 to i64        ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 3 uses
  %i.p = icmp slt i32 %.pre121, 0
  br i1 %i.p, label %bb.d, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i35

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #20
          to label %.noexc42 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit65.thread

.noexc42:                                         ; preds = %bb.d
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i35: ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %.not.i.i.i.i36 = icmp eq i32 %.pre121, 0
  br i1 %.not.i.i.i.i36, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit44, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i35
  %i.q = shl nuw nsw i64 %.pre122, 2              ; 3 uses
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #21
          to label %.noexc43 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit65.thread ; 4 uses

.noexc43:                                         ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.r, i8 0, i64 %i.q, i1 false), !tbaa !25
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.pre122
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q
  %.pre119 = load i32, ptr %i.a, align 8, !tbaa !18 ; 2 uses
  %.pre120 = load i32, ptr %i.c, align 4, !tbaa !19 ; 2 uses
  %.pre124 = mul nsw i32 %.pre120, %.pre119
  %i.u = ptrtoint ptr %i.s to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit44

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit44:          ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, %.noexc43, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i35
  %.sroa.1688.0141154 = phi i64 [ %i.o, %.noexc43 ], [ %i.o, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i35 ], [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.079.0144153 = phi ptr [ %i.l, %.noexc43 ], [ %i.l, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i35 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 11 uses
  %.0.i.i.i.i.i.i.i145152 = phi ptr [ %i.n, %.noexc43 ], [ %i.n, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i35 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.pre-phi125 = phi i32 [ %.pre124, %.noexc43 ], [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i35 ], [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.v = phi i32 [ %.pre120, %.noexc43 ], [ %.pre118, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i35 ], [ %i.g, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.w = phi i32 [ %.pre119, %.noexc43 ], [ %.pre, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i35 ], [ %i.f, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.068.0 = phi ptr [ %i.r, %.noexc43 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i35 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 11 uses
  %.sroa.16.0 = phi i64 [ %i.u, %.noexc43 ], [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i35 ], [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.0.i.i.i.i.i.i.i40 = phi ptr [ %i.t, %.noexc43 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i35 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.x = add nsw i32 %i.w, -1
  %i.y = add nsw i32 %i.v, -1
  %i.z = mul nsw i32 %i.y, %i.x
  %i.aa = add nsw i32 %i.z, %.pre-phi125          ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph104, label %._crit_edge105

.lr.ph104:                                        ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit44
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ae = ptrtoint ptr %.0.i.i.i.i.i.i.i145152 to i64
  %i.af = ptrtoint ptr %.sroa.079.0144153 to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 8 uses
  %i.ah = ashr exact i64 %i.ag, 2                 ; 6 uses
  %.not = icmp eq ptr %.0.i.i.i.i.i.i.i145152, %.sroa.079.0144153 ; 2 uses
  %i.ai = ptrtoint ptr %.0.i.i.i.i.i.i.i40 to i64
  %i.aj = ptrtoint ptr %.sroa.068.0 to i64        ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj                    ; 9 uses
  %i.al = ashr exact i64 %i.ak, 2                 ; 6 uses
  %.not106 = icmp eq ptr %.0.i.i.i.i.i.i.i40, %.sroa.068.0 ; 2 uses
  %i.am = icmp ugt i64 %i.ag, 9223372036854775804
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ap = icmp samesign ugt i64 %i.ag, 4
  %i.aq = icmp eq i64 %i.ag, 4
  %i.ar = getelementptr inbounds i8, ptr null, i64 %i.ag ; 2 uses
  %i.as = icmp ugt i64 %i.ak, 9223372036854775804
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.av = icmp samesign ugt i64 %i.ak, 4
  %i.aw = icmp eq i64 %i.ak, 4
  %i.ax = getelementptr inbounds i8, ptr null, i64 %i.ak ; 2 uses
  %i.ay = call i64 @llvm.usub.sat.i64(i64 %i.al, i64 1)
  %i.az = call i64 @llvm.usub.sat.i64(i64 %i.ah, i64 1)
  %min.iters.check176 = icmp ult i64 %i.ah, 12
  %i.ba = and i64 %i.az, 4294967295
  %i.bb = icmp eq i64 %i.ba, 4294967295
  %i.bc = icmp ugt i64 %i.ah, 4294967296
  %i.bd = or i1 %i.bb, %i.bc
  %n.vec178 = and i64 %i.ah, 8589934584           ; 3 uses
  %cmp.n183 = icmp eq i64 %i.ah, %n.vec178
  %min.iters.check = icmp ult i64 %i.al, 12
  %i.be = and i64 %i.ay, 4294967295
  %i.bf = icmp eq i64 %i.be, 4294967295
  %i.bg = icmp ugt i64 %i.al, 4294967296
  %i.bh = or i1 %i.bf, %i.bg
  %n.vec = and i64 %i.al, 8589934584              ; 3 uses
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br label %bb.i

._crit_edge105:                                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit59, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit44
  %.not.i.i.i = icmp eq ptr %.sroa.068.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge105
  %i.bi = ptrtoint ptr %.sroa.068.0 to i64
  %i.bj = sub i64 %.sroa.16.0, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.068.0, i64 noundef %i.bj) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge105, %bb.f
  %.not.i.i.i45 = icmp eq ptr %.sroa.079.0144153, null
  br i1 %.not.i.i.i45, label %_ZNSt6vectorIiSaIiEED2Ev.exit46, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.bk = ptrtoint ptr %.sroa.079.0144153 to i64
  %i.bl = sub i64 %.sroa.1688.0141154, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.079.0144153, i64 noundef %i.bl) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit46

_ZNSt6vectorIiSaIiEED2Ev.exit46:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.g
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

bb.h:                                             ; preds = %bb.c, %bb.b
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit67

_ZNSt6vectorIiSaIiEED2Ev.exit65.thread:           ; preds = %bb.d, %bb.e
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.i:                                             ; preds = %.lr.ph104, %_ZNSt6vectorIiSaIiEED2Ev.exit59
  %.013103 = phi i32 [ 0, %.lr.ph104 ], [ %i.co, %_ZNSt6vectorIiSaIiEED2Ev.exit59 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  store i32 -1056833530, ptr %4, align 8, !tbaa !28
  store ptr %5, ptr %i.ad, align 8, !tbaa !29
  store i64 17179869185, ptr %i.ac, align 8, !tbaa !25
  %i.bo = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bp = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %bb.k unwind label %bb.l       ; 0 uses

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br i1 %.not, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.k
  %brmerge = select i1 %min.iters.check176, i1 true, i1 %i.bd
  br i1 %brmerge, label %.lr.ph.preheader186, label %vector.body179

vector.body179:                                   ; preds = %.lr.ph.preheader, %vector.body179
  %index180 = phi i64 [ %index.next181, %vector.body179 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.079.0144153, i64 %index180 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store <4 x i32> zeroinitializer, ptr %i.bq, align 4, !tbaa !25
  store <4 x i32> zeroinitializer, ptr %i.br, align 4, !tbaa !25
  %index.next181 = add nuw i64 %index180, 8       ; 2 uses
  %i.bs = icmp eq i64 %index.next181, %n.vec178
  br i1 %i.bs, label %middle.block182, label %vector.body179, !llvm.loop !45

middle.block182:                                  ; preds = %vector.body179
  br i1 %cmp.n183, label %.preheader, label %.lr.ph.preheader186

.lr.ph.preheader186:                              ; preds = %.lr.ph.preheader, %middle.block182
  %indvars.iv.ph = phi i64 [ %n.vec178, %middle.block182 ], [ 0, %.lr.ph.preheader ]
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %middle.block182, %bb.k
  br i1 %.not106, label %._crit_edge, label %.lr.ph101.preheader

.lr.ph101.preheader:                              ; preds = %.preheader
  %brmerge200 = select i1 %min.iters.check, i1 true, i1 %i.bh
  br i1 %brmerge200, label %.lr.ph101.preheader185, label %vector.body

vector.body:                                      ; preds = %.lr.ph101.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph101.preheader ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.068.0, i64 %index ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store <4 x i32> zeroinitializer, ptr %i.bt, align 4, !tbaa !25
  store <4 x i32> zeroinitializer, ptr %i.bu, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph101.preheader185

.lr.ph101.preheader185:                           ; preds = %.lr.ph101.preheader, %middle.block
  %indvars.iv114.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph101.preheader ]
  br label %.lr.ph101

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.ah

.lr.ph:                                           ; preds = %.lr.ph.preheader186, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader186 ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.079.0144153, i64 %indvars.iv
  store i32 0, ptr %i.bx, align 4, !tbaa !25
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.by = and i64 %indvars.iv.next, 4294967295
  %i.bz = icmp ugt i64 %i.ah, %i.by
  br i1 %i.bz, label %.lr.ph, label %.preheader, !llvm.loop !47

._crit_edge:                                      ; preds = %.lr.ph101, %middle.block, %.preheader
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %1)
          to label %bb.m unwind label %bb.ab

.lr.ph101:                                        ; preds = %.lr.ph101.preheader185, %.lr.ph101
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %.lr.ph101 ], [ %indvars.iv114.ph, %.lr.ph101.preheader185 ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.sroa.068.0, i64 %indvars.iv114
  store i32 0, ptr %i.ca, align 4, !tbaa !25
  %indvars.iv.next115 = add i64 %indvars.iv114, 1 ; 2 uses
  %i.cb = and i64 %indvars.iv.next115, 4294967295
  %i.cc = icmp ugt i64 %i.al, %i.cb
  br i1 %i.cc, label %.lr.ph101, label %._crit_edge, !llvm.loop !48

bb.m:                                             ; preds = %._crit_edge
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.n unwind label %bb.ac

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %bb.o unwind label %bb.ad

bb.o:                                             ; preds = %bb.n
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br i1 %.not, label %.thread, label %bb.p

.thread:                                          ; preds = %bb.o
  store i64 0, ptr %9, align 8
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !52
  br label %bb.t

bb.p:                                             ; preds = %bb.o
  br i1 %i.am, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !53

.noexc.i.i:                                       ; preds = %bb.p
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #20
          to label %.noexc48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc48:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.p
  %i.cd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #21
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

.noexc49:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.cd, ptr %9, align 8, !tbaa !32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ag ; 4 uses
  store ptr %i.ce, ptr %i.ao, align 8, !tbaa !52
  br i1 %i.ap, label %bb.q, label %bb.r, !prof !54

bb.q:                                             ; preds = %.noexc49
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cd, ptr align 4 %.sroa.079.0144153, i64 %i.ag, i1 false)
  br label %bb.t

bb.r:                                             ; preds = %.noexc49
  br i1 %i.aq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cf = load i32, ptr %.sroa.079.0144153, align 4, !tbaa !25
  store i32 %i.cf, ptr %i.cd, align 4, !tbaa !25
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %.thread
  %i.cg = phi ptr [ %i.ce, %bb.q ], [ %i.ce, %bb.r ], [ %i.ce, %bb.s ], [ %i.ar, %.thread ] ; 3 uses
  %i.ch = phi ptr [ %i.cd, %bb.q ], [ %i.cd, %bb.r ], [ %i.cd, %bb.s ], [ null, %.thread ] ; 6 uses
  store ptr %i.cg, ptr %i.an, align 8, !tbaa !55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  br i1 %.not106, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  br i1 %i.as, label %.noexc.i.i52, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i51, !prof !53

.noexc.i.i52:                                     ; preds = %bb.u
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #20
          to label %.noexc53 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit61.loopexit.split-lp.loopexit.split-lp

.noexc53:                                         ; preds = %.noexc.i.i52
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i51: ; preds = %bb.u
  %i.ci = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #21
end_hunk_0
