inline.NumInlined: 333
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2cv8ximgproc18EstimateCovariance22buildCombinationsTableEv:bb.a
  %i.y = phi i32 [ %i.h, %.preheader32 ], [ %.pre, %._crit_edge.loopexit ] ; 3 uses
  %i.z = phi i32 [ %i.i, %.preheader32 ], [ %i.v, %._crit_edge.loopexit ] ; 2 uses
  %.1.lcssa = phi i32 [ %.036, %.preheader32 ], [ %i.x, %._crit_edge.loopexit ] ; 2 uses
  %i.aa = add nuw nsw i32 %.02735, 1              ; 2 uses
  %i.ab = icmp slt i32 %i.aa, %i.y
  br i1 %i.ab, label %.preheader32, label %.preheader31, !llvm.loop !21

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
  %i.ag = load ptr, ptr %i.p, align 8, !tbaa !16
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
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !15  ; 2 uses
  %i.al = icmp slt i32 %i.aj, %i.ak
  br i1 %i.al, label %.lr.ph40, label %._crit_edge41.loopexit, !llvm.loop !23

._crit_edge41.loopexit:                           ; preds = %.lr.ph40
  %i.am = trunc nsw i64 %indvars.iv.next51 to i32
  %.pre54 = load i32, ptr %i.n, align 8, !tbaa !8
  br label %._crit_edge41

._crit_edge41:                                    ; preds = %._crit_edge41.loopexit, %.preheader
  %i.an = phi i32 [ %i.ac, %.preheader ], [ %.pre54, %._crit_edge41.loopexit ] ; 2 uses
  %i.ao = phi i32 [ %i.ad, %.preheader ], [ %i.ak, %._crit_edge41.loopexit ]
  %.3.lcssa = phi i32 [ %.244, %.preheader ], [ %i.am, %._crit_edge41.loopexit ]
  %i.ap = add nuw nsw i32 %.13043, 1              ; 2 uses
  %i.aq = icmp slt i32 %i.ap, %i.an
  br i1 %i.aq, label %.preheader, label %._crit_edge45, !llvm.loop !24

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
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15
  %i.e = mul nsw i32 %i.d, %i.b
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef %i.e, i32 noundef 1, i32 noundef 37)
  %i.f = load i32, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.g = load i32, ptr %i.c, align 4, !tbaa !15   ; 2 uses
  %i.h = mul nsw i32 %i.g, %i.f                   ; 4 uses
  %i.i = sext i32 %i.h to i64                     ; 3 uses
  %i.j = icmp slt i32 %i.h, 0
  br i1 %i.j, label %bb.b, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #20
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit44, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.k = shl nuw nsw i64 %i.i, 2                  ; 6 uses
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #21
          to label %.noexc34 unwind label %bb.f   ; 6 uses

.noexc34:                                         ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.l, i8 0, i64 %i.k, i1 false), !tbaa !25
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.i ; 2 uses
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #21
          to label %.noexc43 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit65.thread ; 4 uses

.noexc43:                                         ; preds = %.noexc34
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.n, i8 0, i64 %i.k, i1 false), !tbaa !25
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k
  %i.r = ptrtoint ptr %i.p to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit44

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit44:          ; preds = %.noexc43, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.0.i.i.i.i.i.i.i103 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.o, %.noexc43 ] ; 2 uses
  %.sroa.079.0101 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.l, %.noexc43 ] ; 11 uses
  %.sroa.1688.096 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.m, %.noexc43 ] ; 2 uses
  %.sroa.068.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.n, %.noexc43 ] ; 11 uses
  %.sroa.16.0 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.r, %.noexc43 ] ; 2 uses
  %.0.i.i.i.i.i.i.i40 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.q, %.noexc43 ] ; 2 uses
  %i.s = add nsw i32 %i.f, -1
  %i.t = add nsw i32 %i.g, -1
  %i.u = mul nsw i32 %i.t, %i.s
  %i.v = add nsw i32 %i.u, %i.h                   ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph127, label %._crit_edge128

.lr.ph127:                                        ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit44
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.z = ptrtoint ptr %.0.i.i.i.i.i.i.i103 to i64
  %i.aa = ptrtoint ptr %.sroa.079.0101 to i64     ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa                     ; 8 uses
  %i.ac = ashr exact i64 %i.ab, 2                 ; 5 uses
  %.not = icmp eq ptr %.0.i.i.i.i.i.i.i103, %.sroa.079.0101 ; 2 uses
  %i.ad = ptrtoint ptr %.0.i.i.i.i.i.i.i40 to i64
  %i.ae = ptrtoint ptr %.sroa.068.0 to i64        ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 9 uses
  %i.ag = ashr exact i64 %i.af, 2                 ; 5 uses
  %.not129 = icmp eq ptr %.0.i.i.i.i.i.i.i40, %.sroa.068.0 ; 2 uses
  %i.ah = icmp ugt i64 %i.ab, 9223372036854775804
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ak = icmp samesign ugt i64 %i.ab, 4
  %i.al = icmp eq i64 %i.ab, 4
  %i.am = getelementptr inbounds i8, ptr null, i64 %i.ab ; 2 uses
  %i.an = icmp ugt i64 %i.af, 9223372036854775804
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.aq = icmp samesign ugt i64 %i.af, 4
  %i.ar = icmp eq i64 %i.af, 4
  %i.as = getelementptr inbounds i8, ptr null, i64 %i.af ; 2 uses
  %i.at = call i64 @llvm.usub.sat.i64(i64 %i.ag, i64 1) ; 2 uses
  %i.au = call i64 @llvm.usub.sat.i64(i64 %i.ac, i64 1) ; 2 uses
  %min.iters.check161 = icmp ult i64 %i.ac, 16
  %i.av = and i64 %i.au, 4294967295
  %i.aw = icmp eq i64 %i.av, 4294967295
  %i.ax = icmp ugt i64 %i.au, 4294967295
  %i.ay = or i1 %i.aw, %i.ax
  %n.vec163 = and i64 %i.ac, -8                   ; 4 uses
  %11 = trunc i64 %n.vec163 to i32
  %cmp.n168 = icmp eq i64 %i.ac, %n.vec163
  %min.iters.check = icmp ult i64 %i.ag, 16
  %i.az = and i64 %i.at, 4294967295
  %i.ba = icmp eq i64 %i.az, 4294967295
  %i.bb = icmp ugt i64 %i.at, 4294967295
  %i.bc = or i1 %i.ba, %i.bb
  %n.vec = and i64 %i.ag, -8                      ; 4 uses
  %12 = trunc i64 %n.vec to i32
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br label %bb.g

._crit_edge128:                                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit59, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit44
  %.not.i.i.i = icmp eq ptr %.sroa.068.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge128
  %i.bd = ptrtoint ptr %.sroa.068.0 to i64
  %i.be = sub i64 %.sroa.16.0, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.068.0, i64 noundef %i.be) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge128, %bb.d
  %.not.i.i.i45 = icmp eq ptr %.sroa.079.0101, null
  br i1 %.not.i.i.i45, label %_ZNSt6vectorIiSaIiEED2Ev.exit46, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.bf = ptrtoint ptr %.sroa.1688.096 to i64
  %i.bg = ptrtoint ptr %.sroa.079.0101 to i64
  %i.bh = sub i64 %i.bf, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.079.0101, i64 noundef %i.bh) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit46

_ZNSt6vectorIiSaIiEED2Ev.exit46:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.e
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit67

_ZNSt6vectorIiSaIiEED2Ev.exit65.thread:           ; preds = %.noexc34
  %i.bj = landingpad { ptr, i32 }
          cleanup
  %.pre = ptrtoint ptr %i.l to i64
  br label %bb.ah

bb.g:                                             ; preds = %.lr.ph127, %_ZNSt6vectorIiSaIiEED2Ev.exit59
  %.013126 = phi i32 [ 0, %.lr.ph127 ], [ %i.ci, %_ZNSt6vectorIiSaIiEED2Ev.exit59 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  store i32 -1056833530, ptr %4, align 8, !tbaa !26
  store ptr %5, ptr %i.y, align 8, !tbaa !29
  store i64 17179869185, ptr %i.x, align 8
  %i.bk = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bl = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.bk)
          to label %bb.i unwind label %bb.j       ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br i1 %.not, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %brmerge = select i1 %min.iters.check161, i1 true, i1 %i.ay
  br i1 %brmerge, label %.lr.ph.preheader171, label %vector.body164

vector.body164:                                   ; preds = %.lr.ph.preheader, %vector.body164
  %index165 = phi i64 [ %index.next166, %vector.body164 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.079.0101, i64 %index165 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store <4 x i32> zeroinitializer, ptr %i.bm, align 4, !tbaa !25
  store <4 x i32> zeroinitializer, ptr %i.bn, align 4, !tbaa !25
  %index.next166 = add nuw i64 %index165, 8       ; 2 uses
  %i.bo = icmp eq i64 %index.next166, %n.vec163
  br i1 %i.bo, label %middle.block167, label %vector.body164, !llvm.loop !30

middle.block167:                                  ; preds = %vector.body164
  br i1 %cmp.n168, label %.preheader, label %.lr.ph.preheader171

.lr.ph.preheader171:                              ; preds = %.lr.ph.preheader, %middle.block167
  %indvars.iv.ph = phi i64 [ %n.vec163, %middle.block167 ], [ 0, %.lr.ph.preheader ]
  %.012122.ph = phi i32 [ %11, %middle.block167 ], [ 0, %.lr.ph.preheader ]
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %middle.block167, %bb.i
  br i1 %.not129, label %._crit_edge, label %.lr.ph124.preheader

.lr.ph124.preheader:                              ; preds = %.preheader
  %brmerge182 = select i1 %min.iters.check, i1 true, i1 %i.bc
  br i1 %brmerge182, label %.lr.ph124.preheader170, label %vector.body

vector.body:                                      ; preds = %.lr.ph124.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph124.preheader ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.068.0, i64 %index ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store <4 x i32> zeroinitializer, ptr %i.bp, align 4, !tbaa !25
  store <4 x i32> zeroinitializer, ptr %i.bq, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph124.preheader170

.lr.ph124.preheader170:                           ; preds = %.lr.ph124.preheader, %middle.block
  %indvars.iv136.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph124.preheader ]
  %.0123.ph = phi i32 [ %12, %middle.block ], [ 0, %.lr.ph124.preheader ]
  br label %.lr.ph124

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.af

.lr.ph:                                           ; preds = %.lr.ph.preheader171, %.lr.ph
  %indvars.iv = phi i64 [ %14, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader171 ]
  %.012122 = phi i32 [ %13, %.lr.ph ], [ %.012122.ph, %.lr.ph.preheader171 ]
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.079.0101, i64 %indvars.iv
  store i32 0, ptr %i.bt, align 4, !tbaa !25
  %13 = add i32 %.012122, 1                       ; 2 uses
  %14 = zext i32 %13 to i64                       ; 2 uses
  %i.bu = icmp ugt i64 %i.ac, %14
  br i1 %i.bu, label %.lr.ph, label %.preheader, !llvm.loop !34

._crit_edge:                                      ; preds = %.lr.ph124, %middle.block, %.preheader
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %1)
          to label %bb.k unwind label %bb.z

.lr.ph124:                                        ; preds = %.lr.ph124.preheader170, %.lr.ph124
  %indvars.iv136 = phi i64 [ %16, %.lr.ph124 ], [ %indvars.iv136.ph, %.lr.ph124.preheader170 ]
  %.0123 = phi i32 [ %15, %.lr.ph124 ], [ %.0123.ph, %.lr.ph124.preheader170 ]
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.068.0, i64 %indvars.iv136
  store i32 0, ptr %i.bv, align 4, !tbaa !25
  %15 = add i32 %.0123, 1                         ; 2 uses
  %16 = zext i32 %15 to i64                       ; 2 uses
  %i.bw = icmp ugt i64 %i.ag, %16
  br i1 %i.bw, label %.lr.ph124, label %._crit_edge, !llvm.loop !35

bb.k:                                             ; preds = %._crit_edge
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.l unwind label %bb.aa

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %bb.m unwind label %bb.ab

bb.m:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br i1 %.not, label %.thread, label %bb.n

.thread:                                          ; preds = %bb.m
  store i64 0, ptr %9, align 8
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !36
  br label %bb.r

bb.n:                                             ; preds = %bb.m
  br i1 %i.ah, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !39

.noexc.i.i:                                       ; preds = %bb.n
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #20
          to label %.noexc48 unwind label %.loopexit.split-lp

.noexc48:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.n
  %i.bx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #21
          to label %.noexc49 unwind label %.loopexit ; 7 uses

.noexc49:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.bx, ptr %9, align 8, !tbaa !40
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.ab ; 4 uses
  store ptr %i.by, ptr %i.aj, align 8, !tbaa !36
  br i1 %i.ak, label %bb.o, label %bb.p, !prof !41

bb.o:                                             ; preds = %.noexc49
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bx, ptr align 4 %.sroa.079.0101, i64 %i.ab, i1 false)
  br label %bb.r

bb.p:                                             ; preds = %.noexc49
  br i1 %i.al, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bz = load i32, ptr %.sroa.079.0101, align 4, !tbaa !25
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !25
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %.thread
  %i.ca = phi ptr [ %i.by, %bb.o ], [ %i.by, %bb.p ], [ %i.by, %bb.q ], [ %i.am, %.thread ] ; 3 uses
  %i.cb = phi ptr [ %i.bx, %bb.o ], [ %i.bx, %bb.p ], [ %i.bx, %bb.q ], [ null, %.thread ] ; 6 uses
  store ptr %i.ca, ptr %i.ai, align 8, !tbaa !42
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  br i1 %.not129, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %i.an, label %.noexc.i.i52, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i51, !prof !39

.noexc.i.i52:                                     ; preds = %bb.s
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #20
          to label %.noexc53 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit61.loopexit.split-lp

.noexc53:                                         ; preds = %.noexc.i.i52
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i51: ; preds = %bb.s
  %i.cc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #21
          to label %.noexc54 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit61.loopexit ; 5 uses

.noexc54:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i51
  store ptr %i.cc, ptr %10, align 8, !tbaa !40
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.af ; 2 uses
  store ptr %i.cd, ptr %i.ap, align 8, !tbaa !36
  br i1 %i.aq, label %bb.t, label %bb.u, !prof !41

bb.t:                                             ; preds = %.noexc54
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cc, ptr align 4 %.sroa.068.0, i64 %i.af, i1 false)
  br label %bb.x

bb.u:                                             ; preds = %.noexc54
  br i1 %i.ar, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.ce = load i32, ptr %.sroa.068.0, align 4, !tbaa !25
  store i32 %i.ce, ptr %i.cc, align 4, !tbaa !25
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  store i64 0, ptr %10, align 8
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !36
  store ptr %i.as, ptr %i.ao, align 8, !tbaa !42
  call void @_ZN2cv8ximgproc18EstimateCovariance21computeOneCombinationEiNS_3MatES2_S2_St6vectorIiSaIiEES5_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %.013126, ptr noundef nonnull align 8 %6, ptr noundef nonnull align 8 %7, ptr noundef nonnull align 8 %8, ptr noundef nonnull align 8 %9, ptr noundef nonnull align 8 %10)
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit57

bb.x:                                             ; preds = %bb.t, %bb.u, %bb.v
  store ptr %i.cd, ptr %i.ao, align 8, !tbaa !42
  call void @_ZN2cv8ximgproc18EstimateCovariance21computeOneCombinationEiNS_3MatES2_S2_St6vectorIiSaIiEES5_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %.013126, ptr noundef nonnull align 8 %6, ptr noundef nonnull align 8 %7, ptr noundef nonnull align 8 %8, ptr noundef nonnull align 8 %9, ptr noundef nonnull align 8 %10)
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.af) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit57

_ZNSt6vectorIiSaIiEED2Ev.exit57:                  ; preds = %bb.w, %bb.x
  %.not.i.i.i58 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i58, label %_ZNSt6vectorIiSaIiEED2Ev.exit59, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit57
  %i.cf = ptrtoint ptr %i.ca to i64
  %i.cg = ptrtoint ptr %i.cb to i64
  %i.ch = sub i64 %i.cf, %i.cg
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.ch) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit59

_ZNSt6vectorIiSaIiEED2Ev.exit59:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit57, %bb.y
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #19
  %i.ci = add nuw nsw i32 %.013126, 2             ; 2 uses
  %i.cj = icmp slt i32 %i.ci, %i.v
  br i1 %i.cj, label %bb.g, label %._crit_edge128, !llvm.loop !43

bb.z:                                             ; preds = %._crit_edge
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.aa:                                            ; preds = %bb.k
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ab:                                            ; preds = %bb.l
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit63

.loopexit.split-lp:                               ; preds = %.noexc.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit63

_ZNSt6vectorIiSaIiEED2Ev.exit61.loopexit:         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i51
  %lpad.loopexit114 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit61

_ZNSt6vectorIiSaIiEED2Ev.exit61.loopexit.split-lp: ; preds = %.noexc.i.i52
  %lpad.loopexit.split-lp115 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit61

_ZNSt6vectorIiSaIiEED2Ev.exit61:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit61.loopexit.split-lp, %_ZNSt6vectorIiSaIiEED2Ev.exit61.loopexit
  %lpad.phi116 = phi { ptr, i32 } [ %lpad.loopexit114, %_ZNSt6vectorIiSaIiEED2Ev.exit61.loopexit ], [ %lpad.loopexit.split-lp115, %_ZNSt6vectorIiSaIiEED2Ev.exit61.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorIiSaIiEED2Ev.exit63, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit61
  %i.cn = ptrtoint ptr %i.ca to i64
  %i.co = ptrtoint ptr %i.cb to i64
  %i.cp = sub i64 %i.cn, %i.co
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.cp) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit63

_ZNSt6vectorIiSaIiEED2Ev.exit63:                  ; preds = %.loopexit, %.loopexit.split-lp, %bb.ac, %_ZNSt6vectorIiSaIiEED2Ev.exit61
  %.pn26.pn = phi { ptr, i32 } [ %lpad.phi116, %bb.ac ], [ %lpad.phi116, %_ZNSt6vectorIiSaIiEED2Ev.exit61 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #19
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit63, %bb.ab
  %.pn26.pn.pn = phi { ptr, i32 } [ %.pn26.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit63 ], [ %i.cm, %bb.ab ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #19
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.aa
  %.pn26.pn.pn.pn = phi { ptr, i32 } [ %.pn26.pn.pn, %bb.ad ], [ %i.cl, %bb.aa ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #19
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.z, %bb.j
  %.pn26.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn26.pn.pn.pn, %bb.ae ], [ %i.ck, %bb.z ], [ %i.bs, %bb.j ] ; 2 uses
  %.not.i.i.i64 = icmp eq ptr %.sroa.068.0, null
  br i1 %.not.i.i.i64, label %_ZNSt6vectorIiSaIiEED2Ev.exit65, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cq = sub i64 %.sroa.16.0, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.068.0, i64 noundef %i.cq) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit65

_ZNSt6vectorIiSaIiEED2Ev.exit65:                  ; preds = %bb.ag, %bb.af
  %.not.i.i.i66 = icmp eq ptr %.sroa.079.0101, null
  br i1 %.not.i.i.i66, label %_ZNSt6vectorIiSaIiEED2Ev.exit67, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit65.thread, %_ZNSt6vectorIiSaIiEED2Ev.exit65
  %.pre-phi = phi i64 [ %.pre, %_ZNSt6vectorIiSaIiEED2Ev.exit65.thread ], [ %i.aa, %_ZNSt6vectorIiSaIiEED2Ev.exit65 ]
end_hunk_0
