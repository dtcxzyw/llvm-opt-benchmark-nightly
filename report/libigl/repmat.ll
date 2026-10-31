Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/repmat?download=true
inline.NumInlined: 1938
inline.NumDeleted: 791
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN3igl6repmatIdLi0EEEvRKN5Eigen12SparseMatrixIT_XT0_EiEEiiRS4_:bb.a
  br i1 %exitcond170.not, label %._crit_edge127.us, label %.preheader.us143, !llvm.loop !130

._crit_edge127.us:                                ; preds = %._crit_edge119.us, %.preheader75.us
  %i.fy = phi i64 [ %i.ds, %.preheader75.us ], [ %i.fv, %._crit_edge119.us ]
  %i.fz = phi i64 [ %i.dt, %.preheader75.us ], [ %i.fw, %._crit_edge119.us ]
  %i.ga = phi i64 [ %i.du, %.preheader75.us ], [ %i.fw, %._crit_edge119.us ]
  %.us-phi.us = phi ptr [ %.sroa.12.0133.us, %.preheader75.us ], [ %.sroa.12.2.lcssa.us, %._crit_edge119.us ] ; 2 uses
  %.us-phi131.us = phi ptr [ %.sroa.20.0134.us, %.preheader75.us ], [ %.sroa.20.2.lcssa.us, %._crit_edge119.us ] ; 2 uses
  %.us-phi132.us = phi ptr [ %.sroa.055.0135.us, %.preheader75.us ], [ %.sroa.055.2.lcssa.us, %._crit_edge119.us ] ; 2 uses
  %i.gb = add nuw nsw i32 %.026136.us, 1          ; 2 uses
  %exitcond171.not = icmp eq i32 %i.gb, %1
  br i1 %exitcond171.not, label %._crit_edge138, label %.preheader75.us, !llvm.loop !131

._crit_edge138:                                   ; preds = %._crit_edge127.us, %.preheader75.lr.ph.split.us, %.preheader75.lr.ph, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit
  %.sroa.12.0.lcssa = phi ptr [ %.sroa.12.4, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit ], [ %.sroa.12.4, %.preheader75.lr.ph ], [ %.sroa.12.4, %.preheader75.lr.ph.split.us ], [ %.us-phi.us, %._crit_edge127.us ]
  %.sroa.20.0.lcssa = phi ptr [ %.sroa.20.5, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit ], [ %.sroa.20.5, %.preheader75.lr.ph ], [ %.sroa.20.5, %.preheader75.lr.ph.split.us ], [ %.us-phi131.us, %._crit_edge127.us ] ; 2 uses
  %.sroa.055.0.lcssa = phi ptr [ %.sroa.12.4, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit ], [ %.sroa.12.4, %.preheader75.lr.ph ], [ %.sroa.12.4, %.preheader75.lr.ph.split.us ], [ %.us-phi132.us, %._crit_edge127.us ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr %.sroa.055.0.lcssa, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store ptr %.sroa.12.0.lcssa, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  invoke void @_ZN5Eigen8internal17set_from_tripletsIN9__gnu_cxx17__normal_iteratorIPNS_7TripletIdiEESt6vectorIS5_SaIS5_EEEENS_12SparseMatrixIdLi0EiEENS0_13scalar_sum_opIddEEEEvRKT_SH_RT0_T1_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 1 dead_on_return %4)
          to label %bb.q unwind label %bb.s

.split.us:                                        ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #18
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc39:                                         ; preds = %.split.us
  unreachable

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.us, %.split.us
  %lpad.loopexit.split-lp249 = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.q:                                             ; preds = %._crit_edge138
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %.not.i.i.i41 = icmp eq ptr %.sroa.055.0.lcssa, null
  br i1 %.not.i.i.i41, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gc = ptrtoint ptr %.sroa.20.0.lcssa to i64
  %i.gd = ptrtoint ptr %.sroa.055.0.lcssa to i64
  %i.ge = sub i64 %i.gc, %i.gd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.055.0.lcssa, i64 noundef %i.ge) #20
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit: ; preds = %bb.q, %bb.r
  ret void

bb.s:                                             ; preds = %._crit_edge138
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.t

bb.t:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.s
  %.sroa.20.4 = phi ptr [ %.sroa.20.0.lcssa, %bb.s ], [ %.sroa.20.3109.us, %.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.055.4 = phi ptr [ %.sroa.055.0.lcssa, %bb.s ], [ %.sroa.055.3111.us, %.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.pn.pn.pn = phi { ptr, i32 } [ %i.gf, %bb.s ], [ %lpad.loopexit.split-lp249, %.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i42 = icmp eq ptr %.sroa.055.4, null
  br i1 %.not.i.i.i42, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit43, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gg = ptrtoint ptr %.sroa.20.4 to i64
  %i.gh = ptrtoint ptr %.sroa.055.4 to i64
  %i.gi = sub i64 %i.gg, %i.gh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.055.4, i64 noundef %i.gi) #20
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit43

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit43: ; preds = %bb.t, %bb.u
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.a, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.b, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !23   ; 2 uses
  %.not = icmp ne i64 %i.d, %2
  %i.e = icmp eq i64 %i.d, 0
  %or.cond = or i1 %.not, %i.e
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25
  tail call void @free(ptr noundef %i.g) #21
  %i.h = shl i64 %2, 2
  %i.i = add i64 %i.h, 4
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #22 ; 2 uses
  store ptr %i.j, ptr %i.f, align 8, !tbaa !25
  %.not6 = icmp eq ptr %i.j, null
  br i1 %.not6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !39
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #18
  unreachable

bb.d:                                             ; preds = %bb.b
  store i64 %2, ptr %i.c, align 8, !tbaa !23
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !24   ; 2 uses
  %.not7 = icmp eq ptr %i.m, null
  br i1 %.not7, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.m) #21
  store ptr null, ptr %i.l, align 8, !tbaa !24
  %.pre = load i64, ptr %i.c, align 8, !tbaa !23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = phi i64 [ %.pre, %bb.f ], [ %2, %bb.e ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !25
  %i.q = shl i64 %i.n, 2
  %i.r = add i64 %i.q, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %i.r, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl6repmatIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS2_IdLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EEiiRNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !41
  %i.d = mul nsw i64 %i.c, %i.a                   ; 4 uses
  %i.e = sext i32 %2 to i64                       ; 3 uses
  %i.f = icmp eq i64 %i.d, 0
  %i.g = icmp eq i32 %2, 0
  %or.cond.i.i = or i1 %i.g, %i.f
  br i1 %or.cond.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sdiv i64 9223372036854775807, %i.e
  %i.i = icmp sgt i64 %i.d, %i.h
  br i1 %i.i, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !39
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #18
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %bb.a, %bb.b
  %i.k = mul nsw i64 %i.d, %i.e
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.k, i64 noundef %i.d, i64 noundef %i.e)
  %i.l = icmp sgt i32 %1, 0
  br i1 %i.l, label %.preheader.lr.ph, label %._crit_edge24.split

.preheader.lr.ph:                                 ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.m = icmp sgt i32 %2, 0
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  br i1 %i.m, label %.preheader.preheader, label %._crit_edge24.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count35 = zext nneg i32 %1 to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv32 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next33, %._crit_edge ] ; 4 uses
  %i.o = shl nuw nsw i64 %indvars.iv32, 3
  %i.p = shl nuw nsw i64 %indvars.iv32, 3
  br label %bb.d

._crit_edge24.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  ret void

._crit_edge:                                      ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS1_IdLin1ELi1ELi0ELin1ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 2 uses
  %exitcond36.not = icmp eq i64 %indvars.iv.next33, %wide.trip.count35
  br i1 %exitcond36.not, label %._crit_edge24.split, label %.preheader, !llvm.loop !133

bb.d:                                             ; preds = %.preheader, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS1_IdLin1ELi1ELi0ELin1ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS1_IdLin1ELi1ELi0ELin1ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit ] ; 4 uses
  %i.q = load i64, ptr %i.b, align 8, !tbaa !41   ; 15 uses
  %i.r = mul nsw i64 %i.q, %indvars.iv32
  %i.s = load ptr, ptr %3, align 8, !tbaa !43, !noalias !143 ; 2 uses
  %i.t = ptrtoaddr ptr %i.s to i64                ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.r
  %i.v = load i64, ptr %i.n, align 8, !tbaa !44, !noalias !143 ; 3 uses
  %i.w = mul nsw i64 %i.v, %indvars.iv
  %i.x = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.w ; 11 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !45     ; 11 uses
  %i.z = ptrtoaddr ptr %i.y to i64                ; 2 uses
  %i.aa = ptrtoint ptr %i.x to i64                ; 2 uses
  %i.ab = and i64 %i.aa, 7
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph52.i.i.i.i.i.i.i.i.i.i, label %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.d
  %i.ac = icmp sgt i64 %i.q, 0
  br i1 %i.ac, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS1_IdLin1ELi1ELi0ELin1ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit

.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %min.iters.check47 = icmp ult i64 %i.q, 10
  br i1 %min.iters.check47, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader59, label %vector.memcheck44

vector.memcheck44:                                ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.ad = mul i64 %i.q, %i.o
  %4 = shl nuw nsw i64 %indvars.iv, 3
  %i.ae = mul i64 %i.v, %4
  %5 = add i64 %i.ad, %i.t
  %i.af = add i64 %5, %i.ae
  %i.ag = sub i64 %i.z, %i.af
  %diff.check45 = icmp ugt i64 %i.ag, -32
  br i1 %diff.check45, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader59, label %vector.ph48

vector.ph48:                                      ; preds = %vector.memcheck44
  %n.vec49 = and i64 %i.q, 9223372036854775804    ; 3 uses
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %vector.ph48
  %index51 = phi i64 [ 0, %vector.ph48 ], [ %index.next54, %vector.body50 ] ; 3 uses
  %i.ah = getelementptr [8 x i8], ptr %i.x, i64 %index51 ; 2 uses
  %i.ai = getelementptr [8 x i8], ptr %i.y, i64 %index51 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 16
  %wide.load52 = load <2 x double>, ptr %i.ai, align 8, !tbaa !34
  %wide.load53 = load <2 x double>, ptr %i.aj, align 8, !tbaa !34
  %i.ak = getelementptr i8, ptr %i.ah, i64 16
  store <2 x double> %wide.load52, ptr %i.ah, align 8, !tbaa !34
  store <2 x double> %wide.load53, ptr %i.ak, align 8, !tbaa !34
  %index.next54 = add nuw i64 %index51, 4         ; 2 uses
  %i.al = icmp eq i64 %index.next54, %n.vec49
  br i1 %i.al, label %middle.block55, label %vector.body50, !llvm.loop !136

middle.block55:                                   ; preds = %vector.body50
  %cmp.n56 = icmp eq i64 %i.q, %n.vec49
  br i1 %cmp.n56, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS1_IdLin1ELi1ELi0ELin1ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader59

.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader59:     ; preds = %vector.memcheck44, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block55
  %.09.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck44 ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec49, %middle.block55 ] ; 3 uses
  %xtraiter = and i64 %i.q, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.prol

.preheader.i.i.i.i.i.i.i.i.i.i.i.prol:            ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader59, %.preheader.i.i.i.i.i.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.ap, %.preheader.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.09.i.i.i.i.i.i.i.i.i.i.i.ph, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader59 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader59 ]
  %i.am = getelementptr [8 x i8], ptr %i.x, i64 %.09.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.an = getelementptr [8 x i8], ptr %i.y, i64 %.09.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.ao = load double, ptr %i.an, align 8, !tbaa !34
  store double %i.ao, ptr %i.am, align 8, !tbaa !34
  %i.ap = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !137

.preheader.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.prol, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader59
  %.09.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.i.i.i.i.i.i.ph, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader59 ], [ %i.ap, %.preheader.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.aq = sub nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.ph, %i.q
  %i.ar = icmp ugt i64 %i.aq, -4
  br i1 %i.ar, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS1_IdLin1ELi1ELi0ELin1ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.preheader.i.i.i.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bh, %.preheader.i.i.i.i.i.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.i.i.i.i.i.unr, %.preheader.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.as = getelementptr [8 x i8], ptr %i.x, i64 %.09.i.i.i.i.i.i.i.i.i.i.i
  %i.at = getelementptr [8 x i8], ptr %i.y, i64 %.09.i.i.i.i.i.i.i.i.i.i.i
  %i.au = load double, ptr %i.at, align 8, !tbaa !34
  store double %i.au, ptr %i.as, align 8, !tbaa !34
  %i.av = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %i.x, i64 %i.av
  %i.ax = getelementptr [8 x i8], ptr %i.y, i64 %i.av
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !34
  store double %i.ay, ptr %i.aw, align 8, !tbaa !34
  %i.az = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ba = getelementptr [8 x i8], ptr %i.x, i64 %i.az
  %i.bb = getelementptr [8 x i8], ptr %i.y, i64 %i.az
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !34
  store double %i.bc, ptr %i.ba, align 8, !tbaa !34
  %i.bd = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.be = getelementptr [8 x i8], ptr %i.x, i64 %i.bd
  %i.bf = getelementptr [8 x i8], ptr %i.y, i64 %i.bd
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !34
  store double %i.bg, ptr %i.be, align 8, !tbaa !34
  %i.bh = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bh, %i.q
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS1_IdLin1ELi1ELi0ELin1ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !138

.lr.ph52.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.d
  %i.bi = lshr exact i64 %i.aa, 3
  %i.bj = and i64 %i.bi, 1
  %i.bk = tail call i64 @llvm.smin.i64(i64 %i.bj, i64 %i.q) ; 5 uses
  %i.bl = sub i64 %i.q, %i.bk                     ; 2 uses
  %i.bm = and i64 %i.bl, -2                       ; 2 uses
  %i.bn = add nsw i64 %i.bm, %i.bk                ; 6 uses
  %i.bo = icmp sgt i64 %i.bk, 0
  br i1 %i.bo, label %.preheader43.loopexit.i.i.i.i.i.i.i.i.i.i, label %.preheader43.i.i.i.i.i.i.i.i.i.i

.preheader43.loopexit.i.i.i.i.i.i.i.i.i.i:        ; preds = %.lr.ph52.i.i.i.i.i.i.i.i.i.i
  %i.bp = load double, ptr %i.y, align 8, !tbaa !34
  store double %i.bp, ptr %i.x, align 8, !tbaa !34
  br label %.preheader43.i.i.i.i.i.i.i.i.i.i

.preheader43.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.preheader43.loopexit.i.i.i.i.i.i.i.i.i.i, %.lr.ph52.i.i.i.i.i.i.i.i.i.i
  %i.bq = icmp sgt i64 %i.bl, 1
  br i1 %i.bq, label %.lr.ph47.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph47.i.i.i.i.i.i.i.i.i.i, %.preheader43.i.i.i.i.i.i.i.i.i.i
  %i.br = icmp slt i64 %i.bn, %i.q
  br i1 %i.br, label %.lr.ph49.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS1_IdLin1ELi1ELi0ELin1ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit

.lr.ph49.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i
  %i.bs = add i64 %i.bk, %i.bm
  %i.bt = sub i64 %i.q, %i.bs                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.bt, 10
  br i1 %min.iters.check, label %.lr.ph49.i.i.i.i.i.i.i.i.i.i.preheader58, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph49.i.i.i.i.i.i.i.i.i.i.preheader
  %i.bu = mul i64 %i.q, %i.p
  %6 = shl nuw nsw i64 %indvars.iv, 3
  %i.bv = mul i64 %i.v, %6
  %7 = add i64 %i.bu, %i.t
  %i.bw = add i64 %7, %i.bv
  %i.bx = sub i64 %i.z, %i.bw
  %diff.check = icmp ugt i64 %i.bx, -32
  br i1 %diff.check, label %.lr.ph49.i.i.i.i.i.i.i.i.i.i.preheader58, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bt, -4                      ; 3 uses
  %i.by = add i64 %i.bn, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bz = add i64 %i.bn, %index                   ; 2 uses
  %i.ca = getelementptr [8 x i8], ptr %i.x, i64 %i.bz ; 2 uses
  %i.cb = getelementptr [8 x i8], ptr %i.y, i64 %i.bz ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 16
  %wide.load = load <2 x double>, ptr %i.cb, align 8, !tbaa !34
  %wide.load43 = load <2 x double>, ptr %i.cc, align 8, !tbaa !34
  %i.cd = getelementptr i8, ptr %i.ca, i64 16
  store <2 x double> %wide.load, ptr %i.ca, align 8, !tbaa !34
  store <2 x double> %wide.load43, ptr %i.cd, align 8, !tbaa !34
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !139

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bt, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS1_IdLin1ELi1ELi0ELin1ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph49.i.i.i.i.i.i.i.i.i.i.preheader58

.lr.ph49.i.i.i.i.i.i.i.i.i.i.preheader58:         ; preds = %vector.memcheck, %.lr.ph49.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.048.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.bn, %vector.memcheck ], [ %i.bn, %.lr.ph49.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.by, %middle.block ]
  br label %.lr.ph49.i.i.i.i.i.i.i.i.i.i

.lr.ph47.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.preheader43.i.i.i.i.i.i.i.i.i.i, %.lr.ph47.i.i.i.i.i.i.i.i.i.i
  %.03246.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ci, %.lr.ph47.i.i.i.i.i.i.i.i.i.i ], [ %i.bk, %.preheader43.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.cf = getelementptr [8 x i8], ptr %i.x, i64 %.03246.i.i.i.i.i.i.i.i.i.i
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.y, i64 %.03246.i.i.i.i.i.i.i.i.i.i
  %i.ch = load <2 x double>, ptr %i.cg, align 1, !tbaa !27
  store <2 x double> %i.ch, ptr %i.cf, align 16, !tbaa !27
  %i.ci = add nsw i64 %.03246.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.cj = icmp slt i64 %i.ci, %i.bn
  br i1 %i.cj, label %.lr.ph47.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i, !llvm.loop !140

.lr.ph49.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph49.i.i.i.i.i.i.i.i.i.i.preheader58, %.lr.ph49.i.i.i.i.i.i.i.i.i.i
  %.048.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cn, %.lr.ph49.i.i.i.i.i.i.i.i.i.i ], [ %.048.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph49.i.i.i.i.i.i.i.i.i.i.preheader58 ] ; 3 uses
  %i.ck = getelementptr [8 x i8], ptr %i.x, i64 %.048.i.i.i.i.i.i.i.i.i.i
  %i.cl = getelementptr [8 x i8], ptr %i.y, i64 %.048.i.i.i.i.i.i.i.i.i.i
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !34
  store double %i.cm, ptr %i.ck, align 8, !tbaa !34
  %i.cn = add nsw i64 %.048.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.co = icmp slt i64 %i.cn, %i.q
  br i1 %i.co, label %.lr.ph49.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS1_IdLin1ELi1ELi0ELin1ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit, !llvm.loop !141

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS1_IdLin1ELi1ELi0ELin1ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.preheader.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph49.i.i.i.i.i.i.i.i.i.i, %middle.block55, %middle.block, %.preheader.i.i.i.i.i.i.i.i.i.i, %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !142
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl6repmatIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EEiiRNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !41
  %i.d = mul nsw i64 %i.c, %i.a
  %i.e = sext i32 %2 to i64
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.d, i64 noundef %i.e)
  %i.f = icmp sgt i32 %1, 0
  br i1 %i.f, label %.preheader.lr.ph, label %._crit_edge24.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.g = icmp sgt i32 %2, 0
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  br i1 %i.g, label %.preheader.preheader, label %._crit_edge24.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count35 = zext nneg i32 %1 to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv32 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next33, %._crit_edge ] ; 4 uses
  %i.i = shl nuw nsw i64 %indvars.iv32, 3
  %i.j = shl nuw nsw i64 %indvars.iv32, 3
  br label %bb.b

._crit_edge24.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge:                                      ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEaSIS2_EERS3_RKNS_9DenseBaseIT_EE.exit
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 2 uses
  %exitcond36.not = icmp eq i64 %indvars.iv.next33, %wide.trip.count35
  br i1 %exitcond36.not, label %._crit_edge24.split, label %.preheader, !llvm.loop !144

bb.b:                                             ; preds = %.preheader, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEaSIS2_EERS3_RKNS_9DenseBaseIT_EE.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEaSIS2_EERS3_RKNS_9DenseBaseIT_EE.exit ] ; 4 uses
  %i.k = load i64, ptr %i.b, align 8, !tbaa !41   ; 15 uses
  %i.l = mul nsw i64 %i.k, %indvars.iv32
  %i.m = load ptr, ptr %3, align 8, !tbaa !45, !noalias !154 ; 2 uses
  %i.n = ptrtoaddr ptr %i.m to i64                ; 2 uses
  %i.o = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.l
  %i.p = load i64, ptr %i.h, align 8, !tbaa !41, !noalias !154 ; 3 uses
  %i.q = mul nsw i64 %i.p, %indvars.iv
  %i.r = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.q ; 11 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !45     ; 11 uses
  %i.t = ptrtoaddr ptr %i.s to i64                ; 2 uses
  %i.u = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.v = and i64 %i.u, 7
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph52.i.i.i.i.i.i.i.i.i.i, label %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.b
  %i.w = icmp sgt i64 %i.k, 0
  br i1 %i.w, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEaSIS2_EERS3_RKNS_9DenseBaseIT_EE.exit

.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %min.iters.check46 = icmp ult i64 %i.k, 10
  br i1 %min.iters.check46, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader58, label %vector.memcheck43

vector.memcheck43:                                ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.x = mul i64 %i.k, %i.i
  %4 = shl nuw nsw i64 %indvars.iv, 3
  %i.y = mul i64 %i.p, %4
  %5 = add i64 %i.x, %i.n
  %i.z = add i64 %5, %i.y
  %i.aa = sub i64 %i.t, %i.z
  %diff.check44 = icmp ugt i64 %i.aa, -32
  br i1 %diff.check44, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader58, label %vector.ph47

vector.ph47:                                      ; preds = %vector.memcheck43
  %n.vec48 = and i64 %i.k, 9223372036854775804    ; 3 uses
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph47
  %index50 = phi i64 [ 0, %vector.ph47 ], [ %index.next53, %vector.body49 ] ; 3 uses
  %i.ab = getelementptr [8 x i8], ptr %i.r, i64 %index50 ; 2 uses
  %i.ac = getelementptr [8 x i8], ptr %i.s, i64 %index50 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  %wide.load51 = load <2 x double>, ptr %i.ac, align 8, !tbaa !34
  %wide.load52 = load <2 x double>, ptr %i.ad, align 8, !tbaa !34
  %i.ae = getelementptr i8, ptr %i.ab, i64 16
  store <2 x double> %wide.load51, ptr %i.ab, align 8, !tbaa !34
  store <2 x double> %wide.load52, ptr %i.ae, align 8, !tbaa !34
  %index.next53 = add nuw i64 %index50, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next53, %n.vec48
  br i1 %i.af, label %middle.block54, label %vector.body49, !llvm.loop !147

middle.block54:                                   ; preds = %vector.body49
  %cmp.n55 = icmp eq i64 %i.k, %n.vec48
  br i1 %cmp.n55, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEaSIS2_EERS3_RKNS_9DenseBaseIT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader58

.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader58:     ; preds = %vector.memcheck43, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block54
  %.09.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck43 ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec48, %middle.block54 ] ; 3 uses
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.prol

.preheader.i.i.i.i.i.i.i.i.i.i.i.prol:            ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader58, %.preheader.i.i.i.i.i.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.aj, %.preheader.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.09.i.i.i.i.i.i.i.i.i.i.i.ph, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader58 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader58 ]
  %i.ag = getelementptr [8 x i8], ptr %i.r, i64 %.09.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.ah = getelementptr [8 x i8], ptr %i.s, i64 %.09.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !34
  store double %i.ai, ptr %i.ag, align 8, !tbaa !34
  %i.aj = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !148

.preheader.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.prol, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader58
  %.09.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.i.i.i.i.i.i.ph, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader58 ], [ %i.aj, %.preheader.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ak = sub nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.ph, %i.k
  %i.al = icmp ugt i64 %i.ak, -4
  br i1 %i.al, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEaSIS2_EERS3_RKNS_9DenseBaseIT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.preheader.i.i.i.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bb, %.preheader.i.i.i.i.i.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.i.i.i.i.i.unr, %.preheader.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.am = getelementptr [8 x i8], ptr %i.r, i64 %.09.i.i.i.i.i.i.i.i.i.i.i
  %i.an = getelementptr [8 x i8], ptr %i.s, i64 %.09.i.i.i.i.i.i.i.i.i.i.i
  %i.ao = load double, ptr %i.an, align 8, !tbaa !34
  store double %i.ao, ptr %i.am, align 8, !tbaa !34
  %i.ap = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.aq = getelementptr [8 x i8], ptr %i.r, i64 %i.ap
  %i.ar = getelementptr [8 x i8], ptr %i.s, i64 %i.ap
  %i.as = load double, ptr %i.ar, align 8, !tbaa !34
  store double %i.as, ptr %i.aq, align 8, !tbaa !34
  %i.at = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.au = getelementptr [8 x i8], ptr %i.r, i64 %i.at
  %i.av = getelementptr [8 x i8], ptr %i.s, i64 %i.at
  %i.aw = load double, ptr %i.av, align 8, !tbaa !34
  store double %i.aw, ptr %i.au, align 8, !tbaa !34
  %i.ax = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ay = getelementptr [8 x i8], ptr %i.r, i64 %i.ax
  %i.az = getelementptr [8 x i8], ptr %i.s, i64 %i.ax
  %i.ba = load double, ptr %i.az, align 8, !tbaa !34
  store double %i.ba, ptr %i.ay, align 8, !tbaa !34
  %i.bb = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bb, %i.k
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEaSIS2_EERS3_RKNS_9DenseBaseIT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !149

.lr.ph52.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.b
  %i.bc = lshr exact i64 %i.u, 3
  %i.bd = and i64 %i.bc, 1
  %i.be = tail call i64 @llvm.smin.i64(i64 %i.bd, i64 %i.k) ; 5 uses
  %i.bf = sub i64 %i.k, %i.be                     ; 2 uses
  %i.bg = and i64 %i.bf, -2                       ; 2 uses
  %i.bh = add nsw i64 %i.bg, %i.be                ; 6 uses
  %i.bi = icmp sgt i64 %i.be, 0
  br i1 %i.bi, label %.preheader43.loopexit.i.i.i.i.i.i.i.i.i.i, label %.preheader43.i.i.i.i.i.i.i.i.i.i

.preheader43.loopexit.i.i.i.i.i.i.i.i.i.i:        ; preds = %.lr.ph52.i.i.i.i.i.i.i.i.i.i
  %i.bj = load double, ptr %i.s, align 8, !tbaa !34
  store double %i.bj, ptr %i.r, align 8, !tbaa !34
  br label %.preheader43.i.i.i.i.i.i.i.i.i.i

.preheader43.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.preheader43.loopexit.i.i.i.i.i.i.i.i.i.i, %.lr.ph52.i.i.i.i.i.i.i.i.i.i
  %i.bk = icmp sgt i64 %i.bf, 1
  br i1 %i.bk, label %.lr.ph47.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph47.i.i.i.i.i.i.i.i.i.i, %.preheader43.i.i.i.i.i.i.i.i.i.i
  %i.bl = icmp slt i64 %i.bh, %i.k
  br i1 %i.bl, label %.lr.ph49.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEaSIS2_EERS3_RKNS_9DenseBaseIT_EE.exit

.lr.ph49.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i
  %i.bm = add i64 %i.be, %i.bg
  %i.bn = sub i64 %i.k, %i.bm                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.bn, 10
  br i1 %min.iters.check, label %.lr.ph49.i.i.i.i.i.i.i.i.i.i.preheader57, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph49.i.i.i.i.i.i.i.i.i.i.preheader
  %i.bo = mul i64 %i.k, %i.j
  %6 = shl nuw nsw i64 %indvars.iv, 3
  %i.bp = mul i64 %i.p, %6
  %7 = add i64 %i.bo, %i.n
  %i.bq = add i64 %7, %i.bp
  %i.br = sub i64 %i.t, %i.bq
  %diff.check = icmp ugt i64 %i.br, -32
  br i1 %diff.check, label %.lr.ph49.i.i.i.i.i.i.i.i.i.i.preheader57, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bn, -4                      ; 3 uses
  %i.bs = add i64 %i.bh, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bt = add i64 %i.bh, %index                   ; 2 uses
  %i.bu = getelementptr [8 x i8], ptr %i.r, i64 %i.bt ; 2 uses
  %i.bv = getelementptr [8 x i8], ptr %i.s, i64 %i.bt ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 16
  %wide.load = load <2 x double>, ptr %i.bv, align 8, !tbaa !34
  %wide.load42 = load <2 x double>, ptr %i.bw, align 8, !tbaa !34
  %i.bx = getelementptr i8, ptr %i.bu, i64 16
  store <2 x double> %wide.load, ptr %i.bu, align 8, !tbaa !34
  store <2 x double> %wide.load42, ptr %i.bx, align 8, !tbaa !34
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !150

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bn, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEaSIS2_EERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph49.i.i.i.i.i.i.i.i.i.i.preheader57

.lr.ph49.i.i.i.i.i.i.i.i.i.i.preheader57:         ; preds = %vector.memcheck, %.lr.ph49.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.048.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.bh, %vector.memcheck ], [ %i.bh, %.lr.ph49.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bs, %middle.block ]
  br label %.lr.ph49.i.i.i.i.i.i.i.i.i.i

.lr.ph47.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.preheader43.i.i.i.i.i.i.i.i.i.i, %.lr.ph47.i.i.i.i.i.i.i.i.i.i
  %.03246.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cc, %.lr.ph47.i.i.i.i.i.i.i.i.i.i ], [ %i.be, %.preheader43.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bz = getelementptr [8 x i8], ptr %i.r, i64 %.03246.i.i.i.i.i.i.i.i.i.i
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.s, i64 %.03246.i.i.i.i.i.i.i.i.i.i
  %i.cb = load <2 x double>, ptr %i.ca, align 1, !tbaa !27
  store <2 x double> %i.cb, ptr %i.bz, align 16, !tbaa !27
  %i.cc = add nsw i64 %.03246.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.cd = icmp slt i64 %i.cc, %i.bh
  br i1 %i.cd, label %.lr.ph47.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i, !llvm.loop !151

.lr.ph49.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph49.i.i.i.i.i.i.i.i.i.i.preheader57, %.lr.ph49.i.i.i.i.i.i.i.i.i.i
  %.048.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ch, %.lr.ph49.i.i.i.i.i.i.i.i.i.i ], [ %.048.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph49.i.i.i.i.i.i.i.i.i.i.preheader57 ] ; 3 uses
  %i.ce = getelementptr [8 x i8], ptr %i.r, i64 %.048.i.i.i.i.i.i.i.i.i.i
  %i.cf = getelementptr [8 x i8], ptr %i.s, i64 %.048.i.i.i.i.i.i.i.i.i.i
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !34
  store double %i.cg, ptr %i.ce, align 8, !tbaa !34
  %i.ch = add nsw i64 %.048.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ci = icmp slt i64 %i.ch, %i.k
  br i1 %i.ci, label %.lr.ph49.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEaSIS2_EERS3_RKNS_9DenseBaseIT_EE.exit, !llvm.loop !152

_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEaSIS2_EERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.preheader.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph49.i.i.i.i.i.i.i.i.i.i, %middle.block54, %middle.block, %.preheader.i.i.i.i.i.i.i.i.i.i, %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !153
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i64 9223372036854775807, %2
  %i.d = icmp sgt i64 %1, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !39
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #18
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !41
  %.not.i = icmp eq i64 %i.f, %i.h
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !45
  tail call void @free(ptr noundef %i.i) #21
  %i.j = icmp sgt i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %i.f, 2305843009213693951
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !39
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #18
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.e
  %i.m = shl nuw i64 %i.f, 3
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #22 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !39
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #18
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !45
  br label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !41
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl6repmatIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EEiiRNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !44
  %i.d = mul nsw i64 %i.c, %i.a                   ; 4 uses
  %i.e = sext i32 %2 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !47
  %i.h = mul nsw i64 %i.g, %i.e                   ; 4 uses
  %i.i = icmp eq i64 %i.d, 0
  %i.j = icmp eq i64 %i.h, 0
  %or.cond.i.i = or i1 %i.i, %i.j
  br i1 %or.cond.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = sdiv i64 9223372036854775807, %i.h
  %i.l = icmp sgt i64 %i.d, %i.k
  br i1 %i.l, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

bb.c:                                             ; preds = %bb.b
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !39
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #18
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %bb.a, %bb.b
  %i.n = mul nsw i64 %i.h, %i.d
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.n, i64 noundef %i.d, i64 noundef %i.h)
  %i.o = icmp sgt i32 %1, 0
  br i1 %i.o, label %.preheader.lr.ph, label %._crit_edge49.split

.preheader.lr.ph:                                 ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.p = icmp sgt i32 %2, 0
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  br i1 %i.p, label %.preheader.preheader, label %._crit_edge49.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count57 = zext nneg i32 %1 to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv54 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next55, %._crit_edge ] ; 4 uses
  %i.r = shl nuw nsw i64 %indvars.iv54, 3
  %i.s = add nuw i64 %i.r, 8
  %i.t = shl nuw nsw i64 %indvars.iv54, 3
  br label %bb.d

._crit_edge49.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  ret void

._crit_edge:                                      ; preds = %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_.exit
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %exitcond58.not = icmp eq i64 %indvars.iv.next55, %wide.trip.count57
  br i1 %exitcond58.not, label %._crit_edge49.split, label %.preheader, !llvm.loop !155

bb.d:                                             ; preds = %.preheader, %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_.exit ] ; 4 uses
  %i.u = shl nuw nsw i64 %indvars.iv, 3
  %i.v = add nuw i64 %i.u, 8
  %i.w = shl nuw nsw i64 %indvars.iv, 3
  %i.x = load i64, ptr %i.b, align 8, !tbaa !44   ; 23 uses
  %i.y = mul nsw i64 %i.x, %indvars.iv54
  %i.z = load i64, ptr %i.f, align 8, !tbaa !47   ; 8 uses
  %i.aa = mul nsw i64 %i.z, %indvars.iv
  %i.ab = load ptr, ptr %3, align 8, !tbaa !43, !noalias !170 ; 3 uses
  %i.ac = ptrtoaddr ptr %i.ab to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.y
  %i.ae = load i64, ptr %i.q, align 8, !tbaa !44, !noalias !170 ; 10 uses
  %i.af = mul nsw i64 %i.aa, %i.ae
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.af ; 6 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !43    ; 7 uses
  %i.ai = ptrtoaddr ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.ak = and i64 %i.aj, 7
  %.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = icmp sgt i64 %i.z, 0
  %i.am = icmp sgt i64 %i.x, 0
  %or.cond = and i1 %i.am, %i.al
  br i1 %or.cond, label %.preheader.i.i.preheader, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_.exit

.preheader.i.i.preheader:                         ; preds = %bb.e
  %4 = shl i64 %i.z, 3
  %i.an = mul i64 %4, %i.x
  %scevgep = getelementptr i8, ptr %i.ah, i64 %i.an
  %i.ao = mul i64 %i.s, %i.x
  %5 = mul i64 %i.z, %i.v
  %6 = add i64 %5, -8
  %7 = mul i64 %i.ae, %6
  %8 = getelementptr i8, ptr %i.ab, i64 %i.ao
  %scevgep72 = getelementptr i8, ptr %8, i64 %7
  %min.iters.check75 = icmp ult i64 %i.x, 8
  %bound0 = icmp ult ptr %i.ag, %scevgep
  %bound1 = icmp ult ptr %i.ah, %scevgep72
  %found.conflict = and i1 %bound0, %bound1
  %i.ap = or i64 %i.x, %i.ae
  %i.aq = and i64 %i.ap, 1152921504606846976
  %i.ar = icmp ne i64 %i.aq, 0
  %i.as = or i1 %found.conflict, %i.ar
  %n.vec77 = and i64 %i.x, 9223372036854775804    ; 3 uses
  %cmp.n84 = icmp eq i64 %i.x, %n.vec77
  %xtraiter = and i64 %i.x, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %._crit_edge.i.i
  %.0810.i.i = phi i64 [ %i.bg, %._crit_edge.i.i ], [ 0, %.preheader.i.i.preheader ] ; 3 uses
  %i.at = mul nsw i64 %.0810.i.i, %i.ae
  %i.au = getelementptr [8 x i8], ptr %i.ag, i64 %i.at ; 6 uses
  %i.av = mul nuw nsw i64 %.0810.i.i, %i.x
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %i.ah, i64 %i.av ; 6 uses
  %brmerge = select i1 %min.iters.check75, i1 true, i1 %i.as
  br i1 %brmerge, label %scalar.ph74.preheader, label %vector.body78

vector.body78:                                    ; preds = %.preheader.i.i, %vector.body78
  %index79 = phi i64 [ %index.next82, %vector.body78 ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.aw = getelementptr [8 x i8], ptr %i.au, i64 %index79 ; 2 uses
  %i.ax = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %index79 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 16
  %wide.load80 = load <2 x double>, ptr %i.ax, align 8, !tbaa !34, !alias.scope !171
  %wide.load81 = load <2 x double>, ptr %i.ay, align 8, !tbaa !34, !alias.scope !171
  %i.az = getelementptr i8, ptr %i.aw, i64 16
  store <2 x double> %wide.load80, ptr %i.aw, align 8, !tbaa !34, !alias.scope !172, !noalias !171
  store <2 x double> %wide.load81, ptr %i.az, align 8, !tbaa !34, !alias.scope !172, !noalias !171
  %index.next82 = add nuw i64 %index79, 4         ; 2 uses
  %i.ba = icmp eq i64 %index.next82, %n.vec77
  br i1 %i.ba, label %middle.block83, label %vector.body78, !llvm.loop !161

middle.block83:                                   ; preds = %vector.body78
  br i1 %cmp.n84, label %._crit_edge.i.i, label %scalar.ph74.preheader

scalar.ph74.preheader:                            ; preds = %.preheader.i.i, %middle.block83
  %.09.i.i.ph = phi i64 [ %n.vec77, %middle.block83 ], [ 0, %.preheader.i.i ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph74.prol.loopexit, label %scalar.ph74.prol

scalar.ph74.prol:                                 ; preds = %scalar.ph74.preheader, %scalar.ph74.prol
  %.09.i.i.prol = phi i64 [ %i.bd, %scalar.ph74.prol ], [ %.09.i.i.ph, %scalar.ph74.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph74.prol ], [ 0, %scalar.ph74.preheader ]
  %i.bb = getelementptr [8 x i8], ptr %i.au, i64 %.09.i.i.prol
  %gep.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %.09.i.i.prol
  %i.bc = load double, ptr %gep.i.i.prol, align 8, !tbaa !34
  store double %i.bc, ptr %i.bb, align 8, !tbaa !34
  %i.bd = add nuw nsw i64 %.09.i.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph74.prol.loopexit, label %scalar.ph74.prol, !llvm.loop !162

scalar.ph74.prol.loopexit:                        ; preds = %scalar.ph74.prol, %scalar.ph74.preheader
  %.09.i.i.unr = phi i64 [ %.09.i.i.ph, %scalar.ph74.preheader ], [ %i.bd, %scalar.ph74.prol ]
  %i.be = sub nsw i64 %.09.i.i.ph, %i.x
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %._crit_edge.i.i, label %scalar.ph74

._crit_edge.i.i:                                  ; preds = %scalar.ph74.prol.loopexit, %scalar.ph74, %middle.block83
  %i.bg = add nuw nsw i64 %.0810.i.i, 1           ; 2 uses
  %exitcond12.not.i.i = icmp eq i64 %i.bg, %i.z
  br i1 %exitcond12.not.i.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_.exit, label %.preheader.i.i, !llvm.loop !163

scalar.ph74:                                      ; preds = %scalar.ph74.prol.loopexit, %scalar.ph74
  %.09.i.i = phi i64 [ %i.bs, %scalar.ph74 ], [ %.09.i.i.unr, %scalar.ph74.prol.loopexit ] ; 6 uses
  %i.bh = getelementptr [8 x i8], ptr %i.au, i64 %.09.i.i
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %.09.i.i
  %i.bi = load double, ptr %gep.i.i, align 8, !tbaa !34
  store double %i.bi, ptr %i.bh, align 8, !tbaa !34
  %i.bj = add nuw nsw i64 %.09.i.i, 1             ; 2 uses
  %i.bk = getelementptr [8 x i8], ptr %i.au, i64 %i.bj
  %gep.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.bj
  %i.bl = load double, ptr %gep.i.i.1, align 8, !tbaa !34
  store double %i.bl, ptr %i.bk, align 8, !tbaa !34
  %i.bm = add nuw nsw i64 %.09.i.i, 2             ; 2 uses
  %i.bn = getelementptr [8 x i8], ptr %i.au, i64 %i.bm
  %gep.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.bm
  %i.bo = load double, ptr %gep.i.i.2, align 8, !tbaa !34
  store double %i.bo, ptr %i.bn, align 8, !tbaa !34
  %i.bp = add nuw nsw i64 %.09.i.i, 3             ; 2 uses
  %i.bq = getelementptr [8 x i8], ptr %i.au, i64 %i.bp
  %gep.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.bp
  %i.br = load double, ptr %gep.i.i.3, align 8, !tbaa !34
  store double %i.br, ptr %i.bq, align 8, !tbaa !34
  %i.bs = add nuw nsw i64 %.09.i.i, 4             ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bs, %i.x
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %scalar.ph74, !llvm.loop !164

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i: ; preds = %bb.d
  %i.bt = and i64 %i.ae, 1
  %i.bu = icmp sgt i64 %i.z, 0
  br i1 %i.bu, label %.lr.ph54.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_.exit

.lr.ph54.i:                                       ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i
  %i.bv = lshr exact i64 %i.aj, 3
  %i.bw = and i64 %i.bv, 1
  %i.bx = tail call i64 @llvm.smin.i64(i64 %i.bw, i64 %i.x)
  %9 = sub i64 %i.ae, %i.x
  %10 = shl i64 %9, 3
  %i.by = mul i64 %i.ae, %i.z
  %i.bz = mul i64 %i.by, %i.w
  %i.ca = add i64 %i.bz, %i.ac
  %i.cb = mul i64 %i.t, %i.x
  %i.cc = add i64 %i.ca, %i.cb
  %i.cd = sub i64 %i.cc, %i.ai
  %invariant.op = add i64 %i.cd, -1
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i, %.lr.ph54.i
  %.03453.i = phi i64 [ 0, %.lr.ph54.i ], [ %i.dj, %._crit_edge.i ] ; 8 uses
  %.03552.i = phi i64 [ %i.bx, %.lr.ph54.i ], [ %.sroa.speculated.i, %._crit_edge.i ] ; 6 uses
  %i.ce = sub i64 %i.x, %.03552.i                 ; 2 uses
  %i.cf = and i64 %i.ce, -2                       ; 2 uses
  %i.cg = add nsw i64 %i.cf, %.03552.i            ; 6 uses
  %i.ch = icmp sgt i64 %.03552.i, 0
  br i1 %i.ch, label %.preheader43.loopexit.i, label %.preheader43.i

.preheader43.loopexit.i:                          ; preds = %bb.f
  %i.ci = mul nsw i64 %.03453.i, %i.x
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.ah, i64 %i.ci
  %i.cj = mul nsw i64 %.03453.i, %i.ae
  %i.ck = getelementptr [8 x i8], ptr %i.ag, i64 %i.cj
  %i.cl = load double, ptr %invariant.gep.i, align 8, !tbaa !34
  store double %i.cl, ptr %i.ck, align 8, !tbaa !34
  br label %.preheader43.i

.preheader43.i:                                   ; preds = %.preheader43.loopexit.i, %bb.f
  %i.cm = icmp sgt i64 %i.ce, 1
  br i1 %i.cm, label %.lr.ph47.i.preheader, label %.preheader.i

.lr.ph47.i.preheader:                             ; preds = %.preheader43.i
  %i.cn = mul nsw i64 %.03453.i, %i.ae
  %i.co = getelementptr [8 x i8], ptr %i.ag, i64 %i.cn
  %i.cp = mul nsw i64 %.03453.i, %i.x
  %invariant.gep = getelementptr [8 x i8], ptr %i.ah, i64 %i.cp
  br label %.lr.ph47.i

.preheader.i:                                     ; preds = %.lr.ph47.i, %.preheader43.i
  %i.cq = icmp slt i64 %i.cg, %i.x
  br i1 %i.cq, label %.lr.ph49.i, label %._crit_edge.i

.lr.ph49.i:                                       ; preds = %.preheader.i
  %i.cr = mul nsw i64 %.03453.i, %i.ae
  %i.cs = getelementptr [8 x i8], ptr %i.ag, i64 %i.cr ; 2 uses
  %i.ct = mul nsw i64 %.03453.i, %i.x
  %invariant.gep50.i = getelementptr [8 x i8], ptr %i.ah, i64 %i.ct ; 2 uses
  %i.cu = add i64 %.03552.i, %i.cf
  %i.cv = sub i64 %i.x, %i.cu                     ; 3 uses
  %diff.check.a = icmp ult i64 %i.cv, 4
  br i1 %diff.check.a, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph49.i
  %11 = mul i64 %.03453.i, %10
  %.reass = add i64 %11, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cv, -4                      ; 3 uses
  %i.cw = add i64 %i.cg, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cx = add i64 %i.cg, %index                   ; 2 uses
  %i.cy = getelementptr [8 x i8], ptr %i.cs, i64 %i.cx ; 2 uses
  %i.cz = getelementptr [8 x i8], ptr %invariant.gep50.i, i64 %i.cx ; 2 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 16
  %wide.load = load <2 x double>, ptr %i.cz, align 8, !tbaa !34
  %wide.load70 = load <2 x double>, ptr %i.da, align 8, !tbaa !34
  %i.db = getelementptr i8, ptr %i.cy, i64 16
  store <2 x double> %wide.load, ptr %i.cy, align 8, !tbaa !34
  store <2 x double> %wide.load70, ptr %i.db, align 8, !tbaa !34
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dc = icmp eq i64 %index.next, %n.vec
  br i1 %i.dc, label %middle.block, label %vector.body, !llvm.loop !165

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cv, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph49.i, %middle.block
  %.048.i.ph = phi i64 [ %i.cg, %vector.memcheck ], [ %i.cg, %.lr.ph49.i ], [ %i.cw, %middle.block ]
  br label %scalar.ph

.lr.ph47.i:                                       ; preds = %.lr.ph47.i.preheader, %.lr.ph47.i
  %.03246.i = phi i64 [ %i.df, %.lr.ph47.i ], [ %.03552.i, %.lr.ph47.i.preheader ] ; 3 uses
  %i.dd = getelementptr [8 x i8], ptr %i.co, i64 %.03246.i
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.03246.i
  %i.de = load <2 x double>, ptr %gep, align 1, !tbaa !27
  store <2 x double> %i.de, ptr %i.dd, align 16, !tbaa !27
  %i.df = add nsw i64 %.03246.i, 2                ; 2 uses
  %i.dg = icmp slt i64 %i.df, %i.cg
  br i1 %i.dg, label %.lr.ph47.i, label %.preheader.i, !llvm.loop !166

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block, %.preheader.i
  %i.dh = add nsw i64 %.03552.i, %i.bt
  %i.di = srem i64 %i.dh, 2
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.x, i64 %i.di)
  %i.dj = add nuw nsw i64 %.03453.i, 1            ; 2 uses
  %exitcond57.not.i = icmp eq i64 %i.dj, %i.z
  br i1 %exitcond57.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_.exit, label %bb.f, !llvm.loop !167

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.048.i = phi i64 [ %i.dm, %scalar.ph ], [ %.048.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.dk = getelementptr [8 x i8], ptr %i.cs, i64 %.048.i
  %gep51.i = getelementptr [8 x i8], ptr %invariant.gep50.i, i64 %.048.i
  %i.dl = load double, ptr %gep51.i, align 8, !tbaa !34
  store double %i.dl, ptr %i.dk, align 8, !tbaa !34
  %i.dm = add nsw i64 %.048.i, 1                  ; 2 uses
  %i.dn = icmp slt i64 %i.dm, %i.x
  br i1 %i.dn, label %scalar.ph, label %._crit_edge.i, !llvm.loop !168

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_.exit: ; preds = %._crit_edge.i.i, %._crit_edge.i, %bb.e, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !169
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl6repmatIdLi1EEEvRKN5Eigen12SparseMatrixIT_XT0_EiEEiiRS4_(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(72) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::scalar_sum_op.76", align 1 ; 3 uses
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 5 uses
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 5 uses
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !51
  %i.d = mul nsw i64 %i.c, %i.a
  %i.e = sext i32 %2 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !52
  %i.h = mul nsw i64 %i.g, %i.e
  tail call void @_ZN5Eigen12SparseMatrixIdLi1EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %3, i64 noundef %i.d, i64 noundef %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !53   ; 13 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !54   ; 2 uses
  %i.n = load i64, ptr %i.b, align 8, !tbaa !51
  %i.o = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !26
  %i.q = load i32, ptr %i.m, align 4, !tbaa !26
  %i.r = sub nsw i32 %i.p, %i.q
  %i.s = sext i32 %i.r to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE8nonZerosEv.exit

bb.c:                                             ; preds = %bb.a
  %i.t = load i64, ptr %i.b, align 8, !tbaa !51   ; 11 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE8nonZerosEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.w = and i64 %i.v, 3
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.x = lshr exact i64 %i.v, 2
  %i.y = sub nsw i64 0, %i.x
  %i.z = and i64 %i.y, 3
  %i.aa = tail call i64 @llvm.smin.i64(i64 %i.z, i64 %i.t)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.aa, %bb.e ], [ %i.t, %bb.d ] ; 12 uses
  %i.ab = sub nsw i64 %i.t, %.0.i.i.i.i.i.i.i.i   ; 5 uses
  %i.ac = sdiv i64 %i.ab, 8
  %i.ad = shl nsw i64 %i.ac, 3                    ; 2 uses
  %i.ae = sdiv i64 %i.ab, 4
  %i.af = shl nsw i64 %i.ae, 2                    ; 3 uses
  %i.ag = add nsw i64 %i.ad, %.0.i.i.i.i.i.i.i.i  ; 2 uses
  %i.ah = add nsw i64 %i.af, %.0.i.i.i.i.i.i.i.i  ; 4 uses
  %.off.i.i.i.i = add i64 %i.ab, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.ai = getelementptr [4 x i8], ptr %i.j, i64 %.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.aj = load <2 x i64>, ptr %i.ai, align 1, !tbaa !27 ; 2 uses
  %i.ak = icmp sgt i64 %i.ab, 7
  br i1 %i.ak, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr i8, ptr %i.ai, i64 16
  %i.am = load <4 x i32>, ptr %i.al, align 1, !tbaa !27 ; 2 uses
  %i.an = bitcast <2 x i64> %i.aj to <4 x i32>    ; 2 uses
  %i.ao = icmp samesign ugt i64 %i.ab, 15
  br i1 %i.ao, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.g
  %.05777.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.g
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.am, %bb.g ], [ %i.az, %.lr.ph.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.an, %bb.g ], [ %i.av, %.lr.ph.i.i.i.i ]
  %i.ap = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i, %.lcssa.i.i.i.i ; 2 uses
  %i.aq = bitcast <4 x i32> %i.ap to <2 x i64>
  %i.ar = icmp sgt i64 %i.af, %i.ad
  br i1 %i.ar, label %bb.h, label %bb.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.05780.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.05777.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i = phi i64 [ %.05780.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.067.078.i.i.i.i = phi <4 x i32> [ %i.av, %.lr.ph.i.i.i.i ], [ %i.an, %.lr.ph.preheader.i.i.i.i ]
  %i.as = phi <4 x i32> [ %i.az, %.lr.ph.i.i.i.i ], [ %i.am, %.lr.ph.preheader.i.i.i.i ]
  %i.at = getelementptr inbounds [4 x i8], ptr %i.j, i64 %.05780.i.i.i.i
  %i.au = load <4 x i32>, ptr %i.at, align 1, !tbaa !27
  %i.av = add <4 x i32> %i.au, %.sroa.067.078.i.i.i.i ; 2 uses
  %i.aw = getelementptr [4 x i8], ptr %i.j, i64 %.057.in79.i.i.i.i
  %i.ax = getelementptr i8, ptr %i.aw, i64 48
  %i.ay = load <4 x i32>, ptr %i.ax, align 1, !tbaa !27
  %i.az = add <4 x i32> %i.ay, %i.as              ; 2 uses
  %.057.i.i.i.i = add nsw i64 %.05780.i.i.i.i, 8  ; 2 uses
  %i.ba = icmp slt i64 %.057.i.i.i.i, %i.ag
  br i1 %i.ba, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !0

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.ag
  %i.bc = load <4 x i32>, ptr %i.bb, align 1, !tbaa !27
  %i.bd = add <4 x i32> %i.bc, %i.ap
  %i.be = bitcast <4 x i32> %i.bd to <2 x i64>
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i, %bb.f
  %.sroa.067.2.i.i.i.i = phi <2 x i64> [ %i.aj, %bb.f ], [ %i.be, %bb.h ], [ %i.aq, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.bf = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32>
  %i.bg = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32> ; 2 uses
  %i.bh = shufflevector <4 x i32> %i.bg, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.bi = add <4 x i32> %i.bh, %i.bf              ; 2 uses
  %shift = shufflevector <4 x i32> %i.bi, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.bi, %shift
  %i.bj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bg) ; 2 uses
  %i.bk = icmp sgt i64 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.bk, label %.lr.ph85.i.i.i.i.preheader, label %.preheader.i.i.i.i

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.i
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph85.i.i.i.i.preheader266, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph85.i.i.i.i.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.bl = shufflevector <4 x i32> %foldExtExtBinop, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.bl, %vector.ph ], [ %i.bo, %vector.body ]
  %vec.phi212 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bp, %vector.body ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load = load <4 x i32>, ptr %i.bm, align 4, !tbaa !26
  %wide.load213 = load <4 x i32>, ptr %i.bn, align 4, !tbaa !26
  %i.bo = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.bp = add <4 x i32> %wide.load213, %vec.phi212 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !173

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bp, %i.bo
  %i.br = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i.preheader266

.lr.ph85.i.i.i.i.preheader266:                    ; preds = %.lr.ph85.i.i.i.i.preheader, %middle.block
  %.05683.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.07582.i.i.i.i.ph = phi i32 [ %i.bj, %.lr.ph85.i.i.i.i.preheader ], [ %i.br, %middle.block ]
  br label %.lr.ph85.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i, %middle.block, %bb.i
  %.075.lcssa.i.i.i.i = phi i32 [ %i.bj, %bb.i ], [ %i.br, %middle.block ], [ %i.cg, %.lr.ph85.i.i.i.i ] ; 3 uses
  %i.bs = icmp slt i64 %i.ah, %i.t
  br i1 %i.bs, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i

.lr.ph89.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i
  %i.bt = add i64 %.0.i.i.i.i.i.i.i.i, %i.af
  %i.bu = sub i64 %i.t, %i.bt                     ; 3 uses
end_hunk_0
