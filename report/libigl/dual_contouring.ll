Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/dual_contouring?download=true
inline.NumInlined: 14668
inline.NumDeleted: 7831
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 71
loop-unroll.NumUnrolledNotLatch: 2
begin_hunk_0_@_ZN3igl15dual_contouringIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS2_IdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES4_S5_EEvRKSt8functionIFNT2_6ScalarERKNS2_IS8_Li1ELi3ELi1ELi1ELi3EEEEERKS6_IFS9_SB_EESB_RKNS1_10MatrixBaseIT_EERKNSK_IT0_EERKNSK_IT1_EEbbbRNS1_15PlainObjectBaseIS7_EERNSX_IT3_EE:bb.a

bb.i:                                             ; preds = %.invoke
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.j:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IS1_EERKNS_9EigenBaseIT_EE.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.k:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2INS0_IdLin1ELin1ELi0ELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %_ZN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEC2INS0_IiLin1ELin1ELi0ELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %14, align 8, !tbaa !175
  call void @free(ptr noundef %i.z) #23
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.y, %bb.l ], [ %i.x, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  %i.aa = load ptr, ptr %13, align 8, !tbaa !73
  call void @free(ptr noundef %i.aa) #23
  %.pre = load ptr, ptr %12, align 8, !tbaa !174
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %i.ab = phi ptr [ %.pre, %bb.m ], [ %i.n, %bb.j ]
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.m ], [ %i.w, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @free(ptr noundef %i.ab) #23
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.i
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.n ], [ %i.v, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.r

bb.p:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.pn20 = phi { ptr, i32 } [ %i.ad, %bb.q ], [ %i.ac, %bb.p ], [ %.pn.pn.pn, %bb.o ]
  call void @_ZN3igl14DualContouringIdED2Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  resume { ptr, i32 } %.pn20
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl14DualContouringIdE6sparseERKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEERKNS3_IdLin1ELi1ELi0ELin1ELi1EEERKNS3_IdLin1ELi3ELi0ELin1ELi3EEERKNS3_IiLin1ELi2ELi0ELin1ELi2EEE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i = alloca [3 x double], align 8       ; 12 uses
  %5 = alloca %class.anon.552, align 1            ; 4 uses
  %6 = alloca %class.anon.554, align 8            ; 4 uses
  %7 = alloca %class.anon.551, align 8            ; 4 uses
  %8 = alloca %"struct.Eigen::internal::evaluator.1836", align 8 ; 4 uses
  %9 = alloca %"struct.Eigen::internal::evaluator.246", align 8 ; 4 uses
  %10 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.1840", align 8 ; 7 uses
  %11 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %12 = alloca %"class.Eigen::Matrix", align 8    ; 12 uses
  %13 = alloca %"class.Eigen::Matrix", align 8    ; 12 uses
  %i.a = alloca double, align 8                   ; 7 uses
  %i.b = alloca double, align 8                   ; 7 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.h = load <2 x double>, ptr %1, align 8, !tbaa !88
  store <2 x double> %i.h, ptr %i.g, align 8, !tbaa !88
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load double, ptr %i.j, align 8, !tbaa !81
  store double %i.k, ptr %i.i, align 8, !tbaa !81
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.n = load i8, ptr %i.m, align 1, !tbaa !66, !range !94, !noundef !95 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !180
  %i.q = shl nuw nsw i8 %i.n, 1
  %i.r = zext nneg i8 %i.q to i64
  %i.s = shl i64 %i.p, %i.r                       ; 4 uses
  %i.t = trunc nuw i8 %i.n to i1                  ; 2 uses
  %i.u = icmp ne i64 %i.s, 0
  %i.v = select i1 %i.t, i64 3074457345618258602, i64 2305843009213693951
  %i.w = icmp sgt i64 %i.s, %i.v
  %or.cond = select i1 %i.u, i1 %i.w, i1 false
  br i1 %or.cond, label %bb.b, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIlLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

bb.b:                                             ; preds = %bb.a
  %i.x = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.x, align 8, !tbaa !99
  tail call void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIlLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %bb.a
  %i.y = select i1 %i.t, i64 3, i64 4             ; 2 uses
  %i.z = mul nsw i64 %i.s, %i.y
  tail call void @_ZN5Eigen12DenseStorageIlLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef %i.z, i64 noundef %i.s, i64 noundef %i.y)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store ptr %3, ptr %8, align 8, !tbaa !181
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store ptr %i.aa, ptr %9, align 8, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store ptr %9, ptr %10, align 8, !tbaa !154
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %8, ptr %i.ab, align 8, !tbaa !183
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %11, ptr %i.ac, align 8, !tbaa !158
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.aa, ptr %i.ad, align 8, !tbaa !160
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS3_INS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_15member_minCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERSG_(ptr noundef nonnull align 8 dereferenceable(32) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.ae = load i64, ptr %i.o, align 8, !tbaa !180 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIlLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.c

._crit_edge:                                      ; preds = %.preheader.preheader, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIlLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !109
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !110
  call void @_ZN5Eigen8internal29conservative_resize_like_implINS_6MatrixIlLin1ELin1ELi0ELin1ELin1EEES3_Lb0EE3runERNS_9DenseBaseIS3_EEll(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef %i.ao, i64 noundef %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !111
  call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 noundef %i.at, i64 noundef 3)
  %i.au = load i64, ptr %i.as, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr %0, ptr %7, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store ptr %7, ptr %6, align 8, !tbaa !17
  %i.av = call noundef zeroext i1 @_ZN3igl12parallel_forIlZNS_12parallel_forIlZNS_14DualContouringIdE21dual_vertex_positionsEvEUllE_EEbT_RKT0_mEUlmE_ZNS1_IlS4_EEbS5_S8_mEUllmE_S9_EEbS5_S8_RKT1_RKT2_m(i64 noundef %i.au, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %5, i64 noundef 1000) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  ret void

bb.c:                                             ; preds = %.lr.ph, %.preheader.preheader
  %i.aw = phi i64 [ %i.ae, %.lr.ph ], [ %i.ec, %.preheader.preheader ]
  %.03147 = phi i64 [ 0, %.lr.ph ], [ %i.eb, %.preheader.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.ax = load ptr, ptr %4, align 8, !tbaa !175
  %i.ay = getelementptr [4 x i8], ptr %i.ax, i64 %.03147 ; 3 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !74
  %i.ba = sext i32 %i.az to i64
  %i.bb = load ptr, ptr %3, align 8, !tbaa !73, !noalias !185 ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.ba ; 3 uses
  %i.bd = load i64, ptr %i.ag, align 8, !tbaa !114 ; 3 uses
  %i.be = load double, ptr %i.bc, align 8, !tbaa !81 ; 2 uses
  store double %i.be, ptr %12, align 8, !tbaa !81
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bd
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !81 ; 2 uses
  store double %i.bg, ptr %i.ah, align 8, !tbaa !81
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.bd, 4 ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bc, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !81 ; 2 uses
  store double %i.bi, ptr %i.ai, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.bj = getelementptr [4 x i8], ptr %i.ay, i64 %i.aw ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !74
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.bl ; 3 uses
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !81 ; 2 uses
  store double %i.bn, ptr %13, align 8, !tbaa !81
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.bd
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !81 ; 2 uses
  store double %i.bp, ptr %i.aj, align 8, !tbaa !81
  %i.bq = getelementptr inbounds i8, ptr %i.bm, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.br = load double, ptr %i.bq, align 8, !tbaa !81 ; 2 uses
  store double %i.br, ptr %i.ak, align 8, !tbaa !81
  %14 = load <2 x double>, ptr %i.aa, align 8
  %15 = load <2 x double>, ptr %i.g, align 8
  %i.bs = load <2 x double>, ptr %i.al, align 8, !tbaa !81, !noalias !188 ; 2 uses
  %i.bt = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.bu = insertelement <2 x double> %i.bt, double %i.bi, i64 1
  %i.bv = fsub <2 x double> %i.bu, %i.bs
  %i.bw = load <2 x double>, ptr %i.am, align 8, !tbaa !81, !noalias !188 ; 2 uses
  %i.bx = fdiv <2 x double> %i.bv, %i.bw          ; 2 uses
  %i.by = extractelement <2 x double> %i.bx, i64 0
  %i.bz = call noundef double @llvm.round.f64(double %i.by)
  %i.ca = fptosi double %i.bz to i32              ; 5 uses
  %i.cb = extractelement <2 x double> %i.bx, i64 1
  %i.cc = call noundef double @llvm.round.f64(double %i.cb)
  %i.cd = fptosi double %i.cc to i32              ; 5 uses
  %i.ce = insertelement <2 x double> poison, double %i.be, i64 0
  %i.cf = insertelement <2 x double> %i.ce, double %i.bn, i64 1
  %i.cg = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ch = fsub <2 x double> %i.cf, %i.cg
  %i.ci = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cj = fdiv <2 x double> %i.ch, %i.ci
  %i.ck = call <2 x double> @llvm.round.v2f64(<2 x double> %i.cj)
  %i.cl = fptosi <2 x double> %i.ck to <2 x i32>  ; 2 uses
  %i.cm = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.cn = insertelement <2 x double> %i.cm, double %i.br, i64 1
  %i.co = fsub <2 x double> %i.cn, %i.bs
  %i.cp = fdiv <2 x double> %i.co, %i.bw          ; 2 uses
  %i.cq = extractelement <2 x double> %i.cp, i64 0
  %i.cr = call noundef double @llvm.round.f64(double %i.cq)
  %i.cs = fptosi double %i.cr to i32              ; 5 uses
  %i.ct = extractelement <2 x double> %i.cp, i64 1
  %i.cu = call noundef double @llvm.round.f64(double %i.ct)
  %i.cv = fptosi double %i.cu to i32              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.cw = load i32, ptr %i.ay, align 4, !tbaa !74
  %i.cx = sext i32 %i.cw to i64
  %i.cy = load ptr, ptr %2, align 8, !tbaa !174   ; 2 uses
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.cx
  %i.da = load double, ptr %i.cz, align 8, !tbaa !81 ; 6 uses
  store double %i.da, ptr %i.a, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.db = load i32, ptr %i.bj, align 4, !tbaa !74
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.dc
  %i.de = load double, ptr %i.dd, align 8, !tbaa !81 ; 6 uses
  store double %i.de, ptr %i.b, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i32 -1, ptr %i.c, align 4, !tbaa !74
  %i.df = extractelement <2 x i32> %i.cl, i64 0   ; 8 uses
  %i.dg = extractelement <2 x i32> %i.cl, i64 1   ; 6 uses
  %i.dh = icmp eq i32 %i.df, %i.dg
  br i1 %i.dh, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.di = sub nsw i32 %i.df, %i.dg
  %i.dj = icmp eq i32 %i.di, 1
  br i1 %i.dj, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dk = sub nsw i32 %i.dg, %i.df
  %i.dl = icmp eq i32 %i.dk, 1
  br i1 %i.dl, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false), !tbaa.struct !191
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false), !tbaa.struct !191
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, i64 24, i1 false), !tbaa.struct !191
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  store double %i.de, ptr %i.a, align 8, !tbaa !81
  store double %i.da, ptr %i.b, align 8, !tbaa !81
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.f
  %.sroa.17.0.ph = phi i32 [ %i.cv, %bb.f ], [ %i.cd, %bb.d ]
  %.sroa.11.0.ph = phi i32 [ %i.cs, %bb.f ], [ %i.ca, %bb.d ]
  %.sroa.072.0.ph = phi i32 [ %i.dg, %bb.f ], [ %i.df, %bb.d ]
  %.sroa.12.0.ph = phi i32 [ %i.cd, %bb.f ], [ %i.cv, %bb.d ]
  %.sroa.10.0.ph = phi i32 [ %i.ca, %bb.f ], [ %i.cs, %bb.d ]
  %.sroa.0.0.ph = phi i32 [ %i.df, %bb.f ], [ %i.dg, %bb.d ]
  %.ph = phi double [ %i.da, %bb.f ], [ %i.de, %bb.d ]
  %.ph96 = phi double [ %i.de, %bb.f ], [ %i.da, %bb.d ]
  store i32 0, ptr %i.c, align 4, !tbaa !74
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.e, %bb.c
  %.sroa.17.0 = phi i32 [ %i.cd, %bb.c ], [ %i.cd, %bb.e ], [ %.sroa.17.0.ph, %.sink.split ] ; 4 uses
  %.sroa.11.0 = phi i32 [ %i.ca, %bb.c ], [ %i.ca, %bb.e ], [ %.sroa.11.0.ph, %.sink.split ] ; 7 uses
  %.sroa.072.0 = phi i32 [ %i.df, %bb.c ], [ %i.df, %bb.e ], [ %.sroa.072.0.ph, %.sink.split ] ; 4 uses
  %.sroa.12.0 = phi i32 [ %i.cv, %bb.c ], [ %i.cv, %bb.e ], [ %.sroa.12.0.ph, %.sink.split ] ; 4 uses
  %.sroa.10.0 = phi i32 [ %i.cs, %bb.c ], [ %i.cs, %bb.e ], [ %.sroa.10.0.ph, %.sink.split ] ; 5 uses
  %.sroa.0.0 = phi i32 [ %i.df, %bb.c ], [ %i.dg, %bb.e ], [ %.sroa.0.0.ph, %.sink.split ] ; 4 uses
  %i.dm = phi double [ %i.de, %bb.c ], [ %i.de, %bb.e ], [ %.ph, %.sink.split ] ; 5 uses
  %i.dn = phi double [ %i.da, %bb.c ], [ %i.da, %bb.e ], [ %.ph96, %.sink.split ] ; 5 uses
  %i.do = icmp eq i32 %i.ca, %i.cs
  br i1 %i.do, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dp = sub nsw i32 %.sroa.11.0, %.sroa.10.0
  %i.dq = icmp eq i32 %i.dp, 1
  br i1 %i.dq, label %.sink.split97, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dr = sub nsw i32 %.sroa.10.0, %.sroa.11.0
  %i.ds = icmp eq i32 %i.dr, 1
  br i1 %i.ds, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false), !tbaa.struct !191
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false), !tbaa.struct !191
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, i64 24, i1 false), !tbaa.struct !191
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  store double %i.dm, ptr %i.a, align 8, !tbaa !81
  store double %i.dn, ptr %i.b, align 8, !tbaa !81
  br label %.sink.split97

.sink.split97:                                    ; preds = %bb.h, %bb.j
  %.sroa.17.1.ph = phi i32 [ %.sroa.12.0, %bb.j ], [ %.sroa.17.0, %bb.h ]
  %.sroa.11.1.ph = phi i32 [ %.sroa.10.0, %bb.j ], [ %.sroa.11.0, %bb.h ]
  %.sroa.072.1.ph = phi i32 [ %.sroa.0.0, %bb.j ], [ %.sroa.072.0, %bb.h ]
  %.sroa.12.1.ph = phi i32 [ %.sroa.17.0, %bb.j ], [ %.sroa.12.0, %bb.h ]
  %.sroa.10.1.ph = phi i32 [ %.sroa.11.0, %bb.j ], [ %.sroa.10.0, %bb.h ]
  %.sroa.0.1.ph = phi i32 [ %.sroa.072.0, %bb.j ], [ %.sroa.0.0, %bb.h ]
  %.ph98 = phi double [ %i.dn, %bb.j ], [ %i.dm, %bb.h ]
  %.ph99 = phi double [ %i.dm, %bb.j ], [ %i.dn, %bb.h ]
  store i32 1, ptr %i.c, align 4, !tbaa !74
  br label %bb.k

bb.k:                                             ; preds = %.sink.split97, %bb.i, %bb.g
  %.sroa.17.1 = phi i32 [ %.sroa.17.0, %bb.g ], [ %.sroa.17.0, %bb.i ], [ %.sroa.17.1.ph, %.sink.split97 ] ; 5 uses
  %.sroa.11.1 = phi i32 [ %.sroa.11.0, %bb.g ], [ %.sroa.11.0, %bb.i ], [ %.sroa.11.1.ph, %.sink.split97 ] ; 3 uses
  %.sroa.072.1 = phi i32 [ %.sroa.072.0, %bb.g ], [ %.sroa.072.0, %bb.i ], [ %.sroa.072.1.ph, %.sink.split97 ] ; 3 uses
  %.sroa.12.1 = phi i32 [ %.sroa.12.0, %bb.g ], [ %.sroa.12.0, %bb.i ], [ %.sroa.12.1.ph, %.sink.split97 ] ; 3 uses
  %.sroa.10.1 = phi i32 [ %.sroa.11.0, %bb.g ], [ %.sroa.10.0, %bb.i ], [ %.sroa.10.1.ph, %.sink.split97 ]
  %.sroa.0.1 = phi i32 [ %.sroa.0.0, %bb.g ], [ %.sroa.0.0, %bb.i ], [ %.sroa.0.1.ph, %.sink.split97 ]
  %i.dt = phi double [ %i.dm, %bb.g ], [ %i.dm, %bb.i ], [ %.ph98, %.sink.split97 ]
  %i.du = phi double [ %i.dn, %bb.g ], [ %i.dn, %bb.i ], [ %.ph99, %.sink.split97 ]
  %i.dv = icmp eq i32 %i.cd, %i.cv
  br i1 %i.dv, label %.preheader.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dw = sub nsw i32 %.sroa.17.1, %.sroa.12.1
  %i.dx = icmp eq i32 %i.dw, 1
  br i1 %i.dx, label %.preheader.preheader.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dy = sub nsw i32 %.sroa.12.1, %.sroa.17.1
  %i.dz = icmp eq i32 %i.dy, 1
  br i1 %i.dz, label %bb.n, label %.preheader.preheader

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false), !tbaa.struct !191
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false), !tbaa.struct !191
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, i64 24, i1 false), !tbaa.struct !191
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  store double %i.dt, ptr %i.a, align 8, !tbaa !81
  store double %i.du, ptr %i.b, align 8, !tbaa !81
  br label %.preheader.preheader.sink.split

.preheader.preheader.sink.split:                  ; preds = %bb.l, %bb.n
  %.sroa.17.2.ph = phi i32 [ %.sroa.12.1, %bb.n ], [ %.sroa.17.1, %bb.l ]
  %.sroa.11.2.ph = phi i32 [ %.sroa.10.1, %bb.n ], [ %.sroa.11.1, %bb.l ]
  %.sroa.072.2.ph = phi i32 [ %.sroa.0.1, %bb.n ], [ %.sroa.072.1, %bb.l ]
  store i32 2, ptr %i.c, align 4, !tbaa !74
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.preheader.sink.split, %bb.m, %bb.k
  %.sroa.17.2 = phi i32 [ %.sroa.17.1, %bb.k ], [ %.sroa.17.1, %bb.m ], [ %.sroa.17.2.ph, %.preheader.preheader.sink.split ]
  %.sroa.11.2 = phi i32 [ %.sroa.11.1, %bb.k ], [ %.sroa.11.1, %bb.m ], [ %.sroa.11.2.ph, %.preheader.preheader.sink.split ]
  %.sroa.072.2 = phi i32 [ %.sroa.072.1, %bb.k ], [ %.sroa.072.1, %bb.m ], [ %.sroa.072.2.ph, %.preheader.preheader.sink.split ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i32 %.sroa.072.2, ptr %i.d, align 4, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i32 %.sroa.11.2, ptr %i.e, align 4, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  store i32 %.sroa.17.2, ptr %i.f, align 4, !tbaa !74
  %i.ea = call noundef zeroext i1 @_ZN3igl14DualContouringIdE11single_edgeERKiS3_S3_S3_RKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEERKdS8_SA_(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.eb = add nuw nsw i64 %.03147, 1              ; 2 uses
  %i.ec = load i64, ptr %i.o, align 8, !tbaa !180 ; 2 uses
  %i.ed = icmp slt i64 %i.eb, %i.ec
  br i1 %i.ed, label %bb.c, label %._crit_edge, !llvm.loop !192
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl15dual_contouringIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS2_IdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi2ELi0ELin1ELi2EEES4_NS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKSt8functionIFNT2_6ScalarERKNS2_IS9_Li1ELi3ELi1ELi1ELi3EEEEERKS7_IFSA_SC_EESC_RKNS1_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EEbbbRNS1_15PlainObjectBaseIS8_EERNSY_IT3_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, i1 noundef zeroext %6, i1 noundef zeroext %7, i1 noundef zeroext %8, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %11 = alloca %"class.igl::DualContouring", align 8 ; 9 uses
  %12 = alloca %"class.Eigen::Matrix.80", align 8 ; 9 uses
  %13 = alloca %"class.Eigen::Matrix.6", align 8  ; 7 uses
  %14 = alloca %"class.Eigen::Matrix.83", align 8 ; 9 uses
  %15 = alloca %"class.Eigen::CwiseUnaryOp", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !180
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @_ZN3igl14DualContouringIdEC2ERKSt8functionIFdRKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEERKS2_IFS5_S7_EEbbb(ptr noundef nonnull align 8 dereferenceable(408) %11, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %6, i1 noundef zeroext %7, i1 noundef zeroext %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !172  ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit.i.i.i.thread, label %bb.c

_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit.i.i.i.thread: ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  br label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IS1_EERKNS_9EigenBaseIT_EE.exit

bb.c:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt6threadSaIS0_EED2Ev:bb.a
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN3igl14DualContouringIdE5denseIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS4_IdLin1ELi3ELi1ELin1ELi3EEEEEvRKNS3_10MatrixBaseIT_EERKNS7_IT0_EEiiiENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %2 = alloca %"class.Eigen::Matrix", align 16    ; 5 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %3 = alloca %"class.Eigen::Matrix.170", align 4 ; 7 uses
  %4 = alloca %"class.Eigen::Matrix", align 16    ; 5 uses
  %i.f = alloca double, align 8                   ; 4 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !74
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 0, ptr %i.b, align 4, !tbaa !74
  %i.i = load ptr, ptr %0, align 8, !tbaa !355, !nonnull !95, !align !356 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !74
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph17, label %._crit_edge18

.lr.ph17:                                         ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !357
  br label %bb.b

._crit_edge18:                                    ; preds = %._crit_edge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret void

bb.b:                                             ; preds = %.lr.ph17, %._crit_edge
  %.pre2434 = phi i32 [ %1, %.lr.ph17 ], [ %.pre2430, %._crit_edge ] ; 2 uses
  %i.t = phi i32 [ %1, %.lr.ph17 ], [ %i.z, %._crit_edge ] ; 2 uses
  %i.u = phi ptr [ %i.i, %.lr.ph17 ], [ %i.aa, %._crit_edge ]
  %i.v = phi i32 [ 0, %.lr.ph17 ], [ %i.ad, %._crit_edge ] ; 3 uses
  %i.w = phi ptr [ %.pre, %.lr.ph17 ], [ %i.ac, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i32 0, ptr %i.c, align 4, !tbaa !74
  %i.x = load i32, ptr %i.w, align 4, !tbaa !74
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !355
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.pre2430 = phi i32 [ %.pre2431, %._crit_edge.loopexit ], [ %.pre2434, %bb.b ]
  %i.z = phi i32 [ %i.cq, %._crit_edge.loopexit ], [ %i.t, %bb.b ]
  %i.aa = phi ptr [ %.pre26, %._crit_edge.loopexit ], [ %i.u, %bb.b ] ; 2 uses
  %i.ab = phi i32 [ %i.cr, %._crit_edge.loopexit ], [ %i.v, %bb.b ]
  %i.ac = phi ptr [ %i.be, %._crit_edge.loopexit ], [ %i.w, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.ad = add nsw i32 %i.ab, 1                    ; 3 uses
  store i32 %i.ad, ptr %i.b, align 4, !tbaa !74
  %i.ae = load i32, ptr %i.aa, align 4, !tbaa !74
  %i.af = icmp slt i32 %i.ad, %i.ae
  br i1 %i.af, label %bb.b, label %._crit_edge18, !llvm.loop !358

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.pre24 = phi i32 [ %.pre2431, %bb.c ], [ %.pre2434, %bb.b ] ; 2 uses
  %.pre22 = phi i32 [ %.pre2227, %bb.c ], [ %i.v, %bb.b ] ; 2 uses
  %i.ag = phi i32 [ %i.cq, %bb.c ], [ %i.t, %bb.b ] ; 2 uses
  %i.ah = phi i32 [ %i.cr, %bb.c ], [ %i.v, %bb.b ] ; 2 uses
  %.pre20 = phi i32 [ %i.bd, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !359, !nonnull !95, !align !129 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !360, !nonnull !95, !align !356
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !74
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !362, !nonnull !95, !align !356
  %i.an = load i32, ptr %i.am, align 4, !tbaa !74
  %i.ao = mul nsw i32 %i.ag, %i.an
  %i.ap = add nsw i32 %i.ao, %i.ah
  %i.aq = mul nsw i32 %i.ap, %i.ak
  %i.ar = add nsw i32 %i.aq, %.pre20
  %i.as = sext i32 %i.ar to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.at = load ptr, ptr %i.n, align 8, !tbaa !363, !nonnull !95
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !75, !noalias !364
  %.idx.i.i.i.i = mul nsw i64 %i.as, 24
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %.idx.i.i.i.i ; 2 uses
  %i.aw = load <2 x double>, ptr %i.av, align 1, !tbaa !88
  store <2 x double> %i.aw, ptr %2, align 16, !tbaa !88
  %i.ax = getelementptr i8, ptr %i.av, i64 16
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !81
  store double %i.ay, ptr %i.o, align 16, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.az = load ptr, ptr %i.p, align 8, !tbaa !367, !nonnull !95
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !174
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.as
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !81
  store double %i.bc, ptr %i.d, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i32 0, ptr %i.e, align 4, !tbaa !74
  br label %bb.d

bb.c:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.bd = add nsw i32 %i.cv, 1                    ; 3 uses
  store i32 %i.bd, ptr %i.c, align 4, !tbaa !74
  %i.be = load ptr, ptr %i.l, align 8, !tbaa !357, !nonnull !95, !align !356 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !74
  %i.bg = icmp slt i32 %i.bd, %i.bf
  br i1 %i.bg, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !368

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.pre2432 = phi i32 [ %.pre24, %.lr.ph ], [ %.pre2431, %bb.f ]
  %.pre2228 = phi i32 [ %.pre22, %.lr.ph ], [ %.pre2227, %bb.f ]
  %i.bh = phi i32 [ %.pre24, %.lr.ph ], [ %i.cq, %bb.f ]
  %i.bi = phi i32 [ %.pre22, %.lr.ph ], [ %i.cr, %bb.f ]
  %i.bj = phi i32 [ %i.ag, %.lr.ph ], [ %i.ct, %bb.f ] ; 2 uses
  %i.bk = phi i32 [ %i.ah, %.lr.ph ], [ %i.cu, %bb.f ] ; 2 uses
  %i.bl = phi i32 [ %.pre20, %.lr.ph ], [ %i.cv, %bb.f ] ; 2 uses
  %storemerge514 = phi i32 [ 0, %.lr.ph ], [ %i.cw, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i32 %i.bl, ptr %3, align 4, !tbaa !74
  store i32 %i.bk, ptr %i.q, align 4, !tbaa !74
  store i32 %i.bj, ptr %i.r, align 4, !tbaa !74
  %i.bm = sext i32 %storemerge514 to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bm ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !74 ; 2 uses
  %i.bp = add nsw i32 %i.bo, -1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !74
  %i.bq = icmp slt i32 %i.bo, 1
  br i1 %i.bq, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.br = load ptr, ptr %i.m, align 8, !tbaa !359, !nonnull !95, !align !129 ; 2 uses
  %i.bs = load i32, ptr %3, align 4, !tbaa !74
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !360, !nonnull !95, !align !356
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !74
  %i.bv = load i32, ptr %i.q, align 4, !tbaa !74
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !362, !nonnull !95, !align !356
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !74
  %i.bz = load i32, ptr %i.r, align 4, !tbaa !74
  %i.ca = mul nsw i32 %i.bz, %i.by
  %i.cb = add nsw i32 %i.ca, %i.bv
  %i.cc = mul nsw i32 %i.cb, %i.bu
  %i.cd = add nsw i32 %i.cc, %i.bs
  %i.ce = sext i32 %i.cd to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.cf = load ptr, ptr %i.n, align 8, !tbaa !363, !nonnull !95
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !75, !noalias !369
  %.idx.i.i.i.i6 = mul nsw i64 %i.ce, 24
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 %.idx.i.i.i.i6 ; 2 uses
  %i.ci = load <2 x double>, ptr %i.ch, align 1, !tbaa !88
  store <2 x double> %i.ci, ptr %4, align 16, !tbaa !88
  %i.cj = getelementptr i8, ptr %i.ch, i64 16
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !81
  store double %i.ck, ptr %i.s, align 16, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  %i.cl = load ptr, ptr %i.p, align 8, !tbaa !367, !nonnull !95
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !174
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.ce
  %i.co = load double, ptr %i.cn, align 8, !tbaa !81
  store double %i.co, ptr %i.f, align 8, !tbaa !81
  %i.cp = call noundef zeroext i1 @_ZN3igl14DualContouringIdE11single_edgeERKiS3_S3_S3_RKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEERKdS8_SA_(ptr noundef nonnull align 8 dereferenceable(408) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.f) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %.pre19 = load i32, ptr %i.c, align 4, !tbaa !74
  %.pre21 = load i32, ptr %i.b, align 4, !tbaa !74 ; 3 uses
  %.pre23 = load i32, ptr %i.a, align 4, !tbaa !74 ; 3 uses
  %.pre25 = load i32, ptr %i.e, align 4, !tbaa !74
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.pre2431 = phi i32 [ %.pre2432, %bb.d ], [ %.pre23, %bb.e ] ; 3 uses
  %.pre2227 = phi i32 [ %.pre2228, %bb.d ], [ %.pre21, %bb.e ] ; 2 uses
  %i.cq = phi i32 [ %i.bh, %bb.d ], [ %.pre23, %bb.e ] ; 3 uses
  %i.cr = phi i32 [ %i.bi, %bb.d ], [ %.pre21, %bb.e ] ; 3 uses
  %i.cs = phi i32 [ %storemerge514, %bb.d ], [ %.pre25, %bb.e ] ; 2 uses
  %i.ct = phi i32 [ %i.bj, %bb.d ], [ %.pre23, %bb.e ]
  %i.cu = phi i32 [ %i.bk, %bb.d ], [ %.pre21, %bb.e ]
  %i.cv = phi i32 [ %i.bl, %bb.d ], [ %.pre19, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.cw = add nsw i32 %i.cs, 1                    ; 2 uses
  store i32 %i.cw, ptr %i.e, align 4, !tbaa !74
  %i.cx = icmp slt i32 %i.cs, 2
  br i1 %i.cx, label %bb.d, label %bb.c, !llvm.loop !372
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl14DualContouringIdE11single_edgeERKiS3_S3_S3_RKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEERKdS8_SA_(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(8) %8) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::tuple", align 4        ; 6 uses
  %10 = alloca %"class.Eigen::Matrix", align 16   ; 27 uses
  %11 = alloca %"class.Eigen::Matrix", align 16   ; 6 uses
  %12 = alloca %"class.Eigen::Matrix.393", align 16 ; 20 uses
  %13 = alloca %"class.Eigen::Matrix.170", align 4 ; 10 uses
  %i.a = load double, ptr %6, align 8, !tbaa !81  ; 4 uses
  %i.b = fcmp ogt double %i.a, 0.000000e+00
  %i.c = load double, ptr %8, align 8, !tbaa !81  ; 2 uses
  %i.d = fcmp ule double %i.c, 0.000000e+00       ; 8 uses
  %i.e = xor i1 %i.b, %i.d                        ; 2 uses
  br i1 %i.e, label %bb.cb, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.g = load i8, ptr %i.f, align 2, !tbaa !67, !range !94, !noundef !95
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %.preheader568, label %bb.r

.preheader568:                                    ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.n = fcmp ule double %i.a, 0.000000e+00       ; 7 uses
  %i.o = load <2 x double>, ptr %5, align 8, !tbaa !88 ; 2 uses
  %i.p = load <2 x double>, ptr %7, align 8, !tbaa !88
  %i.q = fsub <2 x double> %i.p, %i.o
  %i.r = fmul <2 x double> %i.q, splat (double 5.000000e-01)
  %i.s = fadd <2 x double> %i.o, %i.r
  store <2 x double> %i.s, ptr %10, align 16, !tbaa !88
  %i.t = load double, ptr %i.k, align 8, !tbaa !81
  %i.u = load double, ptr %i.j, align 8, !tbaa !81 ; 2 uses
  %i.v = fsub double %i.t, %i.u
  %i.w = fmul double %i.v, 5.000000e-01
  %i.x = fadd double %i.u, %i.w
  store double %i.x, ptr %i.i, align 16, !tbaa !81
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !15
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %bb.c, label %_ZNKSt8functionIFdRKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEclES4_.exit

bb.c:                                             ; preds = %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %.preheader568
  call void @_ZSt25__throw_bad_function_callv() #25
  unreachable

_ZNKSt8functionIFdRKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEclES4_.exit: ; preds = %.preheader568
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !373
  %i.aa = call noundef double %i.z(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %10), !inline_history !374
  %i.ab = fcmp ogt double %i.aa, 0.000000e+00     ; 2 uses
  %i.ac = xor i1 %i.d, %i.ab
  br i1 %i.ac, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNKSt8functionIFdRKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEclES4_.exit
  %i.ad = xor i1 %i.n, %i.ab
  br i1 %i.ad, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d, %_ZNKSt8functionIFdRKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEclES4_.exit
  %.287 = phi double [ 0.000000e+00, %_ZNKSt8functionIFdRKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEclES4_.exit ], [ 5.000000e-01, %bb.d ] ; 2 uses
  %.284 = phi double [ 5.000000e-01, %_ZNKSt8functionIFdRKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEclES4_.exit ], [ 1.000000e+00, %bb.d ] ; 2 uses
  %i.ae = fadd nnan double %.287, %.284
  %i.af = fmul nnan double %i.ae, 5.000000e-01    ; 4 uses
  %.sroa.615.24.vec.insert.i.i.i.i.i.i.i.1 = insertelement <2 x double> poison, double %i.af, i64 0
  %i.ag = load <2 x double>, ptr %5, align 8, !tbaa !88 ; 2 uses
  %i.ah = shufflevector <2 x double> %.sroa.615.24.vec.insert.i.i.i.i.i.i.i.1, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ai = load <2 x double>, ptr %7, align 8, !tbaa !88
  %i.aj = fsub <2 x double> %i.ai, %i.ag
  %i.ak = fmul <2 x double> %i.ah, %i.aj
  %i.al = fadd <2 x double> %i.ag, %i.ak
  store <2 x double> %i.al, ptr %10, align 16, !tbaa !88
  %i.am = load double, ptr %i.k, align 8, !tbaa !81
  %i.an = load double, ptr %i.j, align 8, !tbaa !81 ; 2 uses
  %i.ao = fsub double %i.am, %i.an
  %i.ap = fmul double %i.af, %i.ao
  %i.aq = fadd double %i.an, %i.ap
  store double %i.aq, ptr %i.i, align 16, !tbaa !81
  %i.ar = load ptr, ptr %i.l, align 8, !tbaa !15
  %.not.i.i.1 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.1, label %bb.c, label %_ZNKSt8functionIFdRKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEclES4_.exit.1

_ZNKSt8functionIFdRKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEclES4_.exit.1: ; preds = %bb.e
  %i.as = load ptr, ptr %i.m, align 8, !tbaa !373
  %i.at = call noundef double %i.as(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %10), !inline_history !374
  %i.au = fcmp ogt double %i.at, 0.000000e+00     ; 2 uses
  %i.av = xor i1 %i.d, %i.au
  br i1 %i.av, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt8functionIFdRKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEclES4_.exit.1
  %i.aw = xor i1 %i.n, %i.au
  br i1 %i.aw, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f, %_ZNKSt8functionIFdRKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEclES4_.exit.1
  %.287.1 = phi double [ %.287, %_ZNKSt8functionIFdRKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEclES4_.exit.1 ], [ %i.af, %bb.f ] ; 2 uses
  %.284.1 = phi double [ %i.af, %_ZNKSt8functionIFdRKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEclES4_.exit.1 ], [ %.284, %bb.f ] ; 2 uses
  %i.ax = fadd double %.287.1, %.284.1
  %i.ay = fmul double %i.ax, 5.000000e-01         ; 4 uses
  %.sroa.615.24.vec.insert.i.i.i.i.i.i.i.2 = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.az = load <2 x double>, ptr %5, align 8, !tbaa !88 ; 2 uses
  %i.ba = shufflevector <2 x double> %.sroa.615.24.vec.insert.i.i.i.i.i.i.i.2, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = load <2 x double>, ptr %7, align 8, !tbaa !88
  %i.bc = fsub <2 x double> %i.bb, %i.az
  %i.bd = fmul <2 x double> %i.ba, %i.bc
  %i.be = fadd <2 x double> %i.az, %i.bd
  store <2 x double> %i.be, ptr %10, align 16, !tbaa !88
  %i.bf = load double, ptr %i.k, align 8, !tbaa !81
  %i.bg = load double, ptr %i.j, align 8, !tbaa !81 ; 2 uses
  %i.bh = fsub double %i.bf, %i.bg
  %i.bi = fmul double %i.ay, %i.bh
  %i.bj = fadd double %i.bg, %i.bi
  store double %i.bj, ptr %i.i, align 16, !tbaa !81
  %i.bk = load ptr, ptr %i.l, align 8, !tbaa !15
  %.not.i.i.2 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.2, label %bb.c, label %_ZNKSt8functionIFdRKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEclES4_.exit.2

_ZNKSt8functionIFdRKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEclES4_.exit.2: ; preds = %bb.g
  %i.bl = load ptr, ptr %i.m, align 8, !tbaa !373
  %i.bm = call noundef double %i.bl(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %10), !inline_history !374
  %i.bn = fcmp ogt double %i.bm, 0.000000e+00     ; 2 uses
  %i.bo = xor i1 %i.d, %i.bn
  br i1 %i.bo, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt8functionIFdRKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEclES4_.exit.2
  %i.bp = xor i1 %i.n, %i.bn
  br i1 %i.bp, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h, %_ZNKSt8functionIFdRKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEclES4_.exit.2
  %.287.2 = phi double [ %.287.1, %_ZNKSt8functionIFdRKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEclES4_.exit.2 ], [ %i.ay, %bb.h ] ; 2 uses
  %.284.2 = phi double [ %i.ay, %_ZNKSt8functionIFdRKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEclES4_.exit.2 ], [ %.284.1, %bb.h ] ; 2 uses
  %i.bq = fadd double %.287.2, %.284.2
  %i.br = fmul double %i.bq, 5.000000e-01         ; 4 uses
  %.sroa.615.24.vec.insert.i.i.i.i.i.i.i.3 = insertelement <2 x double> poison, double %i.br, i64 0
  %i.bs = load <2 x double>, ptr %5, align 8, !tbaa !88 ; 2 uses
  %i.bt = shufflevector <2 x double> %.sroa.615.24.vec.insert.i.i.i.i.i.i.i.3, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bu = load <2 x double>, ptr %7, align 8, !tbaa !88
  %i.bv = fsub <2 x double> %i.bu, %i.bs
  %i.bw = fmul <2 x double> %i.bt, %i.bv
  %i.bx = fadd <2 x double> %i.bs, %i.bw
  store <2 x double> %i.bx, ptr %10, align 16, !tbaa !88
  %i.by = load double, ptr %i.k, align 8, !tbaa !81
  %i.bz = load double, ptr %i.j, align 8, !tbaa !81 ; 2 uses
  %i.ca = fsub double %i.by, %i.bz
  %i.cb = fmul double %i.br, %i.ca
  %i.cc = fadd double %i.bz, %i.cb
  store double %i.cc, ptr %i.i, align 16, !tbaa !81
  %i.cd = load ptr, ptr %i.l, align 8, !tbaa !15
  %.not.i.i.3 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.3, label %bb.c, label %_ZNKSt8functionIFdRKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEclES4_.exit.3

_ZNKSt8functionIFdRKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEclES4_.exit.3: ; preds = %bb.i
  %i.ce = load ptr, ptr %i.m, align 8, !tbaa !373
  %i.cf = call noundef double %i.ce(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %10), !inline_history !374
  %i.cg = fcmp ogt double %i.cf, 0.000000e+00     ; 2 uses
  %i.ch = xor i1 %i.d, %i.cg
  br i1 %i.ch, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt8functionIFdRKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEclES4_.exit.3
  %i.ci = xor i1 %i.n, %i.cg
  br i1 %i.ci, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j, %_ZNKSt8functionIFdRKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEclES4_.exit.3
  %.287.3 = phi double [ %.287.2, %_ZNKSt8functionIFdRKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEclES4_.exit.3 ], [ %i.br, %bb.j ] ; 2 uses
  %.284.3 = phi double [ %i.br, %_ZNKSt8functionIFdRKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEclES4_.exit.3 ], [ %.284.2, %bb.j ] ; 2 uses
  %i.cj = fadd double %.287.3, %.284.3
  %i.ck = fmul double %i.cj, 5.000000e-01         ; 4 uses
  %.sroa.615.24.vec.insert.i.i.i.i.i.i.i.4 = insertelement <2 x double> poison, double %i.ck, i64 0
  %i.cl = load <2 x double>, ptr %5, align 8, !tbaa !88 ; 2 uses
  %i.cm = shufflevector <2 x double> %.sroa.615.24.vec.insert.i.i.i.i.i.i.i.4, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cn = load <2 x double>, ptr %7, align 8, !tbaa !88
  %i.co = fsub <2 x double> %i.cn, %i.cl
  %i.cp = fmul <2 x double> %i.cm, %i.co
  %i.cq = fadd <2 x double> %i.cl, %i.cp
  store <2 x double> %i.cq, ptr %10, align 16, !tbaa !88
  %i.cr = load double, ptr %i.k, align 8, !tbaa !81
  %i.cs = load double, ptr %i.j, align 8, !tbaa !81 ; 2 uses
  %i.ct = fsub double %i.cr, %i.cs
  %i.cu = fmul double %i.ck, %i.ct
  %i.cv = fadd double %i.cs, %i.cu
  store double %i.cv, ptr %i.i, align 16, !tbaa !81
  %i.cw = load ptr, ptr %i.l, align 8, !tbaa !15
  %.not.i.i.4 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.4, label %bb.c, label %_ZNKSt8functionIFdRKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEclES4_.exit.4

_ZNKSt8functionIFdRKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEclES4_.exit.4: ; preds = %bb.k
  %i.cx = load ptr, ptr %i.m, align 8, !tbaa !373
  %i.cy = call noundef double %i.cx(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %10), !inline_history !374
  %i.cz = fcmp ogt double %i.cy, 0.000000e+00     ; 2 uses
  %i.da = xor i1 %i.d, %i.cz
  br i1 %i.da, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt8functionIFdRKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEclES4_.exit.4
  %i.db = xor i1 %i.n, %i.cz
  br i1 %i.db, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l, %_ZNKSt8functionIFdRKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEclES4_.exit.4
  %.287.4 = phi double [ %.287.3, %_ZNKSt8functionIFdRKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEclES4_.exit.4 ], [ %i.ck, %bb.l ] ; 2 uses
  %.284.4 = phi double [ %i.ck, %_ZNKSt8functionIFdRKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEclES4_.exit.4 ], [ %.284.3, %bb.l ] ; 2 uses
  %i.dc = fadd double %.287.4, %.284.4
  %i.dd = fmul double %i.dc, 5.000000e-01         ; 4 uses
  %.sroa.615.24.vec.insert.i.i.i.i.i.i.i.5 = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.de = load <2 x double>, ptr %5, align 8, !tbaa !88 ; 2 uses
  %i.df = shufflevector <2 x double> %.sroa.615.24.vec.insert.i.i.i.i.i.i.i.5, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dg = load <2 x double>, ptr %7, align 8, !tbaa !88
  %i.dh = fsub <2 x double> %i.dg, %i.de
  %i.di = fmul <2 x double> %i.df, %i.dh
  %i.dj = fadd <2 x double> %i.de, %i.di
  store <2 x double> %i.dj, ptr %10, align 16, !tbaa !88
  %i.dk = load double, ptr %i.k, align 8, !tbaa !81
  %i.dl = load double, ptr %i.j, align 8, !tbaa !81 ; 2 uses
  %i.dm = fsub double %i.dk, %i.dl
  %i.dn = fmul double %i.dd, %i.dm
  %i.do = fadd double %i.dl, %i.dn
  store double %i.do, ptr %i.i, align 16, !tbaa !81
  %i.dp = load ptr, ptr %i.l, align 8, !tbaa !15
  %.not.i.i.5 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.5, label %bb.c, label %_ZNKSt8functionIFdRKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEclES4_.exit.5

_ZNKSt8functionIFdRKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEclES4_.exit.5: ; preds = %bb.m
  %i.dq = load ptr, ptr %i.m, align 8, !tbaa !373
  %i.dr = call noundef double %i.dq(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %10), !inline_history !374
  %i.ds = fcmp ogt double %i.dr, 0.000000e+00     ; 2 uses
  %i.dt = xor i1 %i.d, %i.ds
  br i1 %i.dt, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt8functionIFdRKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEclES4_.exit.5
  %i.du = xor i1 %i.n, %i.ds
  br i1 %i.du, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n, %_ZNKSt8functionIFdRKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEclES4_.exit.5
  %.287.5 = phi double [ %.287.4, %_ZNKSt8functionIFdRKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEclES4_.exit.5 ], [ %i.dd, %bb.n ] ; 2 uses
  %.284.5 = phi double [ %i.dd, %_ZNKSt8functionIFdRKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEclES4_.exit.5 ], [ %.284.4, %bb.n ] ; 2 uses
  %i.dv = fadd double %.287.5, %.284.5
  %i.dw = fmul double %i.dv, 5.000000e-01         ; 4 uses
  %.sroa.615.24.vec.insert.i.i.i.i.i.i.i.6 = insertelement <2 x double> poison, double %i.dw, i64 0
  %i.dx = load <2 x double>, ptr %5, align 8, !tbaa !88 ; 2 uses
  %i.dy = shufflevector <2 x double> %.sroa.615.24.vec.insert.i.i.i.i.i.i.i.6, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dz = load <2 x double>, ptr %7, align 8, !tbaa !88
  %i.ea = fsub <2 x double> %i.dz, %i.dx
  %i.eb = fmul <2 x double> %i.dy, %i.ea
  %i.ec = fadd <2 x double> %i.dx, %i.eb
  store <2 x double> %i.ec, ptr %10, align 16, !tbaa !88
  %i.ed = load double, ptr %i.k, align 8, !tbaa !81
  %i.ee = load double, ptr %i.j, align 8, !tbaa !81 ; 2 uses
  %i.ef = fsub double %i.ed, %i.ee
  %i.eg = fmul double %i.dw, %i.ef
  %i.eh = fadd double %i.ee, %i.eg
  store double %i.eh, ptr %i.i, align 16, !tbaa !81
  %i.ei = load ptr, ptr %i.l, align 8, !tbaa !15
  %.not.i.i.6 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.6, label %bb.c, label %_ZNKSt8functionIFdRKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEclES4_.exit.6

_ZNKSt8functionIFdRKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEclES4_.exit.6: ; preds = %bb.o
  %i.ej = load ptr, ptr %i.m, align 8, !tbaa !373
  %i.ek = call noundef double %i.ej(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %10), !inline_history !374
  %i.el = fcmp ogt double %i.ek, 0.000000e+00     ; 2 uses
  %i.em = xor i1 %i.d, %i.el
  br i1 %i.em, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNKSt8functionIFdRKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEclES4_.exit.6
  %i.en = xor i1 %i.n, %i.el
  br i1 %i.en, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p, %_ZNKSt8functionIFdRKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEclES4_.exit.6
  %.287.6 = phi double [ %.287.5, %_ZNKSt8functionIFdRKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEclES4_.exit.6 ], [ %i.dw, %bb.p ]
  %.284.6 = phi double [ %i.dw, %_ZNKSt8functionIFdRKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEclES4_.exit.6 ], [ %.284.5, %bb.p ]
  %i.eo = fadd double %.287.6, %.284.6
  %i.ep = fmul double %i.eo, 5.000000e-01         ; 2 uses
  %.sroa.615.24.vec.insert.i.i.i.i.i.i.i.7 = insertelement <2 x double> poison, double %i.ep, i64 0
  %i.eq = load <2 x double>, ptr %5, align 8, !tbaa !88 ; 2 uses
  %i.er = shufflevector <2 x double> %.sroa.615.24.vec.insert.i.i.i.i.i.i.i.7, <2 x double> poison, <2 x i32> zeroinitializer
  %i.es = load <2 x double>, ptr %7, align 8, !tbaa !88
  %i.et = fsub <2 x double> %i.es, %i.eq
  %i.eu = fmul <2 x double> %i.er, %i.et
  %i.ev = fadd <2 x double> %i.eq, %i.eu
  store <2 x double> %i.ev, ptr %10, align 16, !tbaa !88
  %i.ew = load double, ptr %i.k, align 8, !tbaa !81
  %i.ex = load double, ptr %i.j, align 8, !tbaa !81 ; 2 uses
  %i.ey = fsub double %i.ew, %i.ex
  %i.ez = fmul double %i.ep, %i.ey
  %i.fa = fadd double %i.ex, %i.ez
  store double %i.fa, ptr %i.i, align 16, !tbaa !81
  br label %.thread

bb.r:                                             ; preds = %bb.b
  %i.fb = fsub double %i.c, %i.a
  %i.fc = fsub double 0.000000e+00, %i.a
  %i.fd = fdiv double %i.fc, %i.fb                ; 2 uses
  %.sroa.615.24.vec.insert.i.i.i.i.i.i.i133 = insertelement <2 x double> poison, double %i.fd, i64 0
  %i.fe = load <2 x double>, ptr %5, align 8, !tbaa !88 ; 2 uses
  %i.ff = shufflevector <2 x double> %.sroa.615.24.vec.insert.i.i.i.i.i.i.i133, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fg = load <2 x double>, ptr %7, align 8, !tbaa !88
  %i.fh = fsub <2 x double> %i.fg, %i.fe
  %i.fi = fmul <2 x double> %i.ff, %i.fh
  %i.fj = fadd <2 x double> %i.fe, %i.fi
  store <2 x double> %i.fj, ptr %10, align 16, !tbaa !88
  %i.fk = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.fl = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fm = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !81
  %i.fo = load double, ptr %i.fl, align 8, !tbaa !81 ; 2 uses
  %i.fp = fsub double %i.fn, %i.fo
  %i.fq = fmul double %i.fd, %i.fp
  %i.fr = fadd double %i.fo, %i.fq
  store double %i.fr, ptr %i.fk, align 16, !tbaa !81
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.p, %bb.q, %bb.r
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 6 uses
  %i.ft = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.fs) #23 ; 2 uses
  %.not.i.i134 = icmp eq i32 %i.ft, 0
  br i1 %.not.i.i134, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.s

bb.s:                                             ; preds = %.thread
  call void @_ZSt20__throw_system_errori(i32 noundef %i.ft) #25
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %.thread
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 3 uses
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !66, !range !94, !noundef !95
  %i.fw = trunc nuw i8 %i.fv to i1
  br i1 %i.fw, label %bb.t, label %.thread683

bb.t:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.fx = invoke noundef i64 @_ZN3igl14DualContouringIdE10new_vertexEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
          to label %bb.u unwind label %bb.w       ; 5 uses

bb.u:                                             ; preds = %bb.t
  %.pre = load i8, ptr %i.fu, align 1, !tbaa !66, !range !94
  %i.fy = trunc nuw i8 %.pre to i1
  br i1 %i.fy, label %bb.v, label %.thread683

bb.v:                                             ; preds = %bb.u
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !143
  %i.gb = getelementptr inbounds nuw [24 x i8], ptr %i.ga, i64 %i.fx ; 2 uses
  %i.gc = load <2 x double>, ptr %10, align 16, !tbaa !88
  store <2 x double> %i.gc, ptr %i.gb, align 1, !tbaa !88
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.ge = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.gf = load double, ptr %i.ge, align 16, !tbaa !81
  store double %i.gf, ptr %i.gd, align 8, !tbaa !81
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !139
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.fx
  store i32 1, ptr %i.gi, align 4, !tbaa !74
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !142
  %i.gl = getelementptr inbounds nuw [12 x i8], ptr %i.gk, i64 %i.fx ; 3 uses
  store i32 -1, ptr %i.gl, align 4
  %.sroa.5413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  store i32 -1, ptr %.sroa.5413.0..sroa_idx, align 4
  %.sroa.6414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  store i32 -1, ptr %.sroa.6414.0..sroa_idx, align 4, !tbaa !88
  br label %.thread683

bb.w:                                             ; preds = %bb.t
  %i.gm = landingpad { ptr, i32 }
          cleanup
  %i.gn = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.fs) #23 ; 0 uses
  br label %bb.ca

.thread683:                                       ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %bb.v, %bb.u
  %i.go = phi i64 [ %i.fx, %bb.u ], [ %i.fx, %bb.v ], [ -1, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ] ; 5 uses
  %i.gp = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.fs) #23 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !15, !noalias !375
  %.not.i.i135 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i135, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.thread683
  call void @_ZSt25__throw_bad_function_callv() #25, !noalias !375
  unreachable

bb.y:                                             ; preds = %.thread683
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !378, !noalias !375
  call void %i.gu(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %i.gs, ptr noundef nonnull align 8 dereferenceable(24) %10), !inline_history !379
  %i.gv = load <2 x double>, ptr %11, align 16, !tbaa !88, !noalias !380 ; 7 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.gx = load double, ptr %i.gw, align 16, !tbaa !81, !noalias !380 ; 2 uses
  %i.gy = load <2 x double>, ptr %10, align 16, !tbaa !88
  %i.gz = fmul <2 x double> %i.gv, %i.gy          ; 2 uses
  %shift = shufflevector <2 x double> %i.gz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.gz, %shift
  %i.ha = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.hb = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.hc = load double, ptr %i.hb, align 16, !tbaa !81
  %i.hd = fmul double %i.gx, %i.hc
  %i.he = fadd double %i.hd, %i.ha
  %i.hf = fneg double %i.he
  %.sroa.0610.sroa.5.16.vec.insert = insertelement <2 x double> poison, double %i.gx, i64 0 ; 2 uses
  %.sroa.0610.sroa.5.24.vec.insert = insertelement <2 x double> %.sroa.0610.sroa.5.16.vec.insert, double %i.hf, i64 1 ; 5 uses
  %i.hg = shufflevector <2 x double> %i.gv, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hh = fmul <2 x double> %i.gv, %i.hg
  %i.hi = fmul <2 x double> %.sroa.0610.sroa.5.24.vec.insert, %i.hg
  %.sroa.0610.sroa.0.8.vec.extract = extractelement <2 x double> %i.gv, i64 1
  %14 = bitcast double %.sroa.0610.sroa.0.8.vec.extract to <1 x double>
  %i.hj = shufflevector <1 x double> %14, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hk = fmul <2 x double> %i.gv, %i.hj
  %i.hl = fmul <2 x double> %.sroa.0610.sroa.5.24.vec.insert, %i.hj
  %15 = shufflevector <2 x double> %.sroa.0610.sroa.5.16.vec.insert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hm = fmul <2 x double> %i.gv, %15
  %i.hn = fmul <2 x double> %.sroa.0610.sroa.5.24.vec.insert, %15
  %i.ho = shufflevector <2 x double> %.sroa.0610.sroa.5.24.vec.insert, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.hp = fmul <2 x double> %i.gv, %i.ho
  %i.hq = fmul <2 x double> %.sroa.0610.sroa.5.24.vec.insert, %i.ho
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.hr = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.hu = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 4 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.y, %bb.ab
  %exitcond609.not = phi i1 [ false, %bb.y ], [ true, %bb.ab ]
  %.048592 = phi i32 [ -1, %bb.y ], [ 0, %bb.ab ]
  %.049591 = phi i32 [ 0, %bb.y ], [ %i.in, %bb.ab ] ; 2 uses
  %i.im = sext i32 %.049591 to i64
  %i.in = add i32 %.049591, 2                     ; 2 uses
  br label %bb.ac

bb.z:                                             ; preds = %bb.ab
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.ip = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.io) #23 ; 2 uses
  %.not.i.i136 = icmp eq i32 %i.ip, 0
  br i1 %.not.i.i136, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit137, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZSt20__throw_system_errori(i32 noundef %i.ip) #25
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit137:       ; preds = %bb.z
  %i.iq = load i8, ptr %i.fu, align 1, !tbaa !66, !range !94, !noundef !95
  %i.ir = trunc nuw i8 %i.iq to i1
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 10 uses
  %i.it = load i64, ptr %i.is, align 8, !tbaa !109 ; 4 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 17 uses
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !130 ; 2 uses
  br i1 %i.ir, label %bb.br, label %bb.bv

bb.ab:                                            ; preds = %bb.bp
  br i1 %exitcond609.not, label %bb.z, label %.preheader, !llvm.loop !383

bb.ac:                                            ; preds = %.preheader, %bb.bp
  %indvars.iv = phi i64 [ %i.im, %.preheader ], [ %indvars.iv.next, %bb.bp ] ; 2 uses
  %.0590 = phi i32 [ -1, %.preheader ], [ %i.sm, %bb.bp ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.ix = load i32, ptr %1, align 4, !tbaa !74
  store i32 %i.ix, ptr %13, align 4, !tbaa !74
  %i.iy = load i32, ptr %2, align 4, !tbaa !74
  store i32 %i.iy, ptr %i.hr, align 4, !tbaa !74
  %i.iz = load i32, ptr %3, align 4, !tbaa !74
  store i32 %i.iz, ptr %i.hs, align 4, !tbaa !74
  %i.ja = load i32, ptr %4, align 4, !tbaa !74    ; 3 uses
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr inbounds [4 x i8], ptr %13, i64 %i.jb ; 2 uses
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !74
  %i.je = add nsw i32 %i.jd, -1
  store i32 %i.je, ptr %i.jc, align 4, !tbaa !74
  %i.jf = add nsw i32 %i.ja, 1
  %i.jg = srem i32 %i.jf, 3
  %i.jh = sext i32 %i.jg to i64
  %i.ji = getelementptr inbounds [4 x i8], ptr %13, i64 %i.jh ; 2 uses
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !74
  %i.jk = add nsw i32 %i.jj, %.048592
  store i32 %i.jk, ptr %i.ji, align 4, !tbaa !74
  %i.jl = add nsw i32 %i.ja, 2
  %i.jm = srem i32 %i.jl, 3
  %i.jn = sext i32 %i.jm to i64
  %i.jo = getelementptr inbounds [4 x i8], ptr %13, i64 %i.jn ; 2 uses
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !74
  %i.jq = add nsw i32 %i.jp, %.0590
  store i32 %i.jq, ptr %i.jo, align 4, !tbaa !74
  %i.jr = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.fs) #23 ; 2 uses
  %.not.i.i138 = icmp eq i32 %i.jr, 0
  br i1 %.not.i.i138, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit139, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZSt20__throw_system_errori(i32 noundef %i.jr) #25
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit139:       ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.js = load i32, ptr %i.hs, align 4, !tbaa !74 ; 5 uses
  store i32 %i.js, ptr %9, align 4, !tbaa !347
  %i.jt = load i32, ptr %i.hr, align 4, !tbaa !74 ; 5 uses
  store i32 %i.jt, ptr %i.ht, align 4, !tbaa !349
  %i.ju = load i32, ptr %13, align 4, !tbaa !74   ; 5 uses
  store i32 %i.ju, ptr %i.hu, align 4, !tbaa !384
  %i.jv = load i64, ptr %i.hw, align 8, !tbaa !386
  %.not.not.i.i.i = icmp eq i64 %i.jv, 0
  br i1 %.not.not.i.i.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit139
  %.sroa.06.012.i.i.i = load ptr, ptr %i.hy, align 8, !tbaa !145 ; 2 uses
  %.not13.i.i.i = icmp eq ptr %.sroa.06.012.i.i.i, null
  br i1 %.not13.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ae, %_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i
  %.sroa.06.014.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i ], [ %.sroa.06.012.i.i.i, %bb.ae ] ; 5 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.06.014.i.i.i, i64 16
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !74
  %i.jy = icmp eq i32 %i.ju, %i.jx
  br i1 %i.jy, label %_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i

_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.06.014.i.i.i, i64 8
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.06.014.i.i.i, i64 12
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !74
  %i.kc = icmp eq i32 %i.jt, %i.kb
  %i.kd = load i32, ptr %i.jz, align 4
  %i.ke = icmp eq i32 %i.js, %i.kd
  %i.kf = select i1 %i.kc, i1 %i.ke, i1 false
  br i1 %i.kf, label %_ZNSt13unordered_mapISt5tupleIJiiiEElN3igl4HashESt8equal_toIS1_ESaISt4pairIKS1_lEEE4findERS7_.exit.i, label %_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i

_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.014.i.i.i, align 8, !tbaa !145 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !387

bb.af:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit139
  %i.kg = shl i32 %i.ju, 16
  %i.kh = and i32 %i.jt, 65535
  %i.ki = or disjoint i32 %i.kg, %i.kh
  %i.kj = zext i32 %i.ki to i64
  %i.kk = shl nuw nsw i64 %i.kj, 16
  %i.kl = and i32 %i.js, 65535
  %i.km = zext nneg i32 %i.kl to i64
  %i.kn = or disjoint i64 %i.kk, %i.km            ; 2 uses
  %i.ko = load i64, ptr %i.hx, align 8, !tbaa !69 ; 2 uses
  %i.kp = urem i64 %i.kn, %i.ko                   ; 2 uses
  %i.kq = load ptr, ptr %i.hv, align 8, !tbaa !68
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %i.kp
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !388 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ks, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !145 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kt, i64 32
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !389
  br label %bb.ah

bb.ah:                                            ; preds = %bb.aj, %bb.ag
  %i.ku = phi i64 [ %.pre.i.i.i.i.i, %bb.ag ], [ %i.lj, %bb.aj ]
  %i.kv = phi ptr [ %i.kt, %bb.ag ], [ %i.lh, %bb.aj ] ; 5 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  %i.kx = icmp eq i64 %i.kn, %i.ku
  br i1 %i.kx, label %bb.ai, label %_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !74
  %i.la = icmp eq i32 %i.ju, %i.kz
  br i1 %i.la, label %_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i.i: ; preds = %bb.ai
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kv, i64 12
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !74
  %i.ld = icmp eq i32 %i.jt, %i.lc
  %i.le = load i32, ptr %i.kw, align 4
  %i.lf = icmp eq i32 %i.js, %i.le
  %i.lg = select i1 %i.ld, i1 %i.lf, i1 false
  br i1 %i.lg, label %_ZNSt13unordered_mapISt5tupleIJiiiEElN3igl4HashESt8equal_toIS1_ESaISt4pairIKS1_lEEE4findERS7_.exit.i, label %_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i.i, %bb.ai, %bb.ah
  %i.lh = load ptr, ptr %i.kv, align 8, !tbaa !145 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.lh, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.i
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 32
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !389 ; 2 uses
  %i.lk = urem i64 %i.lj, %i.ko
  %.not19.i.i.i.i.i = icmp eq i64 %i.lk, %i.kp
  br i1 %.not19.i.i.i.i.i, label %bb.ah, label %.loopexit.i, !llvm.loop !391

.loopexit.i:                                      ; preds = %bb.aj, %_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.i, %_ZNKSt8__detail15_Hashtable_baseISt5tupleIJiiiEESt4pairIKS2_lENS_10_Select1stESt8equal_toIS2_EN3igl4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i, %bb.af, %bb.ae
  %i.ll = load i64, ptr %i.hz, align 8, !tbaa !111 ; 7 uses
  %i.lm = add nsw i64 %i.ll, 1                    ; 9 uses
  store i64 %i.lm, ptr %i.hz, align 8, !tbaa !111
  %i.ln = load ptr, ptr %i.ib, align 8, !tbaa !392 ; 4 uses
  %i.lo = load ptr, ptr %i.ia, align 8, !tbaa !139 ; 5 uses
  %i.lp = ptrtoint ptr %i.ln to i64               ; 2 uses
  %i.lq = ptrtoint ptr %i.lo to i64               ; 2 uses
  %i.lr = sub i64 %i.lp, %i.lq                    ; 4 uses
  %i.ls = ashr exact i64 %i.lr, 2                 ; 7 uses
  %i.lt = icmp ugt i64 %i.lm, %i.ls
end_hunk_1
begin_hunk_2_@_ZN3igl14DualContouringIdE11single_edgeERKiS3_S3_S3_RKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEERKdS8_SA_:bb.a
  store i64 %i.va, ptr %i.ti, align 8, !tbaa !136
  %i.vb = getelementptr inbounds nuw i8, ptr %12, i64 12
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !74
  %i.vd = sext i32 %i.vc to i64                   ; 2 uses
  %i.ve = load i64, ptr %i.iv, align 8, !tbaa !130
  %i.vf = mul nsw i64 %i.ve, %i.tl
  %i.vg = getelementptr [8 x i8], ptr %i.ta, i64 %i.vf
  %i.vh = getelementptr [8 x i8], ptr %i.vg, i64 %i.tm
  store i64 %i.vd, ptr %i.vh, align 8, !tbaa !136
  %i.vi = load i64, ptr %i.is, align 8, !tbaa !109
  %i.vj = getelementptr [8 x i8], ptr %i.sz, i64 %i.vi
  %i.vk = getelementptr i8, ptr %i.vj, i64 8      ; 3 uses
  %i.vl = load i64, ptr %i.tb, align 8, !tbaa !110, !noalias !434 ; 2 uses
  store i64 %i.go, ptr %i.vk, align 8, !tbaa !136, !noalias !437
  %i.vm = icmp eq i64 %i.vl, 1                    ; 4 uses
  %.sroa.6326.0 = zext i1 %i.vm to i64            ; 2 uses
  %i.vn = select i1 %i.vm, i64 1, i64 2           ; 2 uses
  %i.vo = load i64, ptr %i.iv, align 8, !tbaa !130
  %i.vp = select i1 %i.vm, i64 0, i64 %i.vo
  %i.vq = getelementptr [8 x i8], ptr %i.vk, i64 %i.vp
  %i.vr = getelementptr [8 x i8], ptr %i.vq, i64 %.sroa.6326.0
  store i64 %i.vd, ptr %i.vr, align 8, !tbaa !136
  %i.vs = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.vt = load i32, ptr %i.vs, align 8, !tbaa !74
  %i.vu = sext i32 %i.vt to i64                   ; 2 uses
  %i.vv = icmp eq i64 %i.vn, %i.vl                ; 2 uses
  %i.vw = select i1 %i.vm, i64 2, i64 1
  %i.vx = select i1 %i.vv, i64 0, i64 %i.vn
  %i.vy = select i1 %i.vv, i64 %i.vw, i64 %.sroa.6326.0
  %i.vz = load i64, ptr %i.iv, align 8, !tbaa !130
  %i.wa = mul nsw i64 %i.vz, %i.vx
  %i.wb = getelementptr [8 x i8], ptr %i.vk, i64 %i.wa
  %i.wc = getelementptr [8 x i8], ptr %i.wb, i64 %i.vy
  store i64 %i.vu, ptr %i.wc, align 8, !tbaa !136
  %i.wd = load i64, ptr %i.is, align 8, !tbaa !109
  %i.we = getelementptr [8 x i8], ptr %i.sz, i64 %i.wd
  %i.wf = getelementptr i8, ptr %i.we, i64 16     ; 2 uses
  %i.wg = load i64, ptr %i.tb, align 8, !tbaa !110, !noalias !440
  %i.wh = load i32, ptr %12, align 16, !tbaa !74
  %i.wi = sext i32 %i.wh to i64                   ; 2 uses
  store i64 %i.wi, ptr %i.wf, align 8, !tbaa !136, !noalias !443
  br label %bb.bu

bb.bu:                                            ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIlLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKl.exit200, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIlLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKl.exit168
  %.sink749 = phi i64 [ %i.wg, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIlLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKl.exit200 ], [ %i.uu, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIlLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKl.exit168 ] ; 2 uses
  %.sink743 = phi ptr [ %i.wf, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIlLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKl.exit200 ], [ %i.ut, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIlLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKl.exit168 ] ; 2 uses
  %.sink = phi i64 [ %i.vu, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIlLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKl.exit200 ], [ %i.ui, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIlLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKl.exit168 ]
  %.sink723 = phi i64 [ %i.wi, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIlLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKl.exit200 ], [ %i.ux, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIlLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKl.exit168 ]
  %.sink712 = phi i64 [ %i.va, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIlLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKl.exit200 ], [ %i.tp, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIlLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKl.exit168 ]
  %i.wj = icmp eq i64 %.sink749, 1                ; 4 uses
  %.sroa.6314.0 = zext i1 %i.wj to i64            ; 2 uses
  %i.wk = select i1 %i.wj, i64 1, i64 2           ; 2 uses
  %i.wl = load i64, ptr %i.iv, align 8, !tbaa !130
  %i.wm = select i1 %i.wj, i64 0, i64 %i.wl
  %i.wn = getelementptr [8 x i8], ptr %.sink743, i64 %i.wm
  %i.wo = getelementptr [8 x i8], ptr %i.wn, i64 %.sroa.6314.0
  store i64 %i.go, ptr %i.wo, align 8, !tbaa !136
  %i.wp = icmp eq i64 %i.wk, %.sink749            ; 2 uses
  %i.wq = select i1 %i.wj, i64 2, i64 1
  %i.wr = select i1 %i.wp, i64 0, i64 %i.wk
  %i.ws = select i1 %i.wp, i64 %i.wq, i64 %.sroa.6314.0
  %i.wt = load i64, ptr %i.iv, align 8, !tbaa !130
  %i.wu = mul nsw i64 %i.wt, %i.wr
  %i.wv = getelementptr [8 x i8], ptr %.sink743, i64 %i.wu
  %i.ww = getelementptr [8 x i8], ptr %i.wv, i64 %i.ws
  store i64 %.sink, ptr %i.ww, align 8, !tbaa !136
  %i.wx = load i64, ptr %i.is, align 8, !tbaa !109
  %i.wy = getelementptr [8 x i8], ptr %i.sz, i64 %i.wx
  %i.wz = getelementptr i8, ptr %i.wy, i64 24     ; 3 uses
  %i.xa = load i64, ptr %i.tb, align 8, !tbaa !110, !noalias !95 ; 2 uses
  store i64 %.sink723, ptr %i.wz, align 8, !tbaa !136, !noalias !95
  %i.xb = icmp eq i64 %i.xa, 1                    ; 4 uses
  %.sroa.6.0 = zext i1 %i.xb to i64               ; 2 uses
  %i.xc = select i1 %i.xb, i64 1, i64 2           ; 2 uses
  %i.xd = load i64, ptr %i.iv, align 8, !tbaa !130
  %i.xe = select i1 %i.xb, i64 0, i64 %i.xd
  %i.xf = getelementptr [8 x i8], ptr %i.wz, i64 %i.xe
  %i.xg = getelementptr [8 x i8], ptr %i.xf, i64 %.sroa.6.0
  store i64 %.sink712, ptr %i.xg, align 8, !tbaa !136
  %i.xh = icmp eq i64 %i.xc, %i.xa                ; 2 uses
  %i.xi = select i1 %i.xb, i64 2, i64 1
  %i.xj = select i1 %i.xh, i64 0, i64 %i.xc
  %i.xk = select i1 %i.xh, i64 %i.xi, i64 %.sroa.6.0
  %i.xl = load i64, ptr %i.iv, align 8, !tbaa !130
  %i.xm = mul nsw i64 %i.xl, %i.xj
  %i.xn = getelementptr [8 x i8], ptr %i.wz, i64 %i.xm
  %i.xo = getelementptr [8 x i8], ptr %i.xn, i64 %i.xk
  store i64 %i.go, ptr %i.xo, align 8, !tbaa !136
  br label %bb.by

bb.bv:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit137
  %i.xp = add nsw i64 %i.it, 1
  %.not = icmp slt i64 %i.xp, %i.iw
  br i1 %.not, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIlLin1ELin1ELi0ELin1ELin1EEEE18conservativeResizeEll.exit206, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.xq = shl nsw i64 %i.it, 1
  %i.xr = or disjoint i64 %i.xq, 1
  %i.xs = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.xt = load i64, ptr %i.xs, align 8, !tbaa !110
  invoke void @_ZN5Eigen8internal29conservative_resize_like_implINS_6MatrixIlLin1ELin1ELi0ELin1ELin1EEES3_Lb0EE3runERNS_9DenseBaseIS3_EEll(ptr noundef nonnull align 8 dereferenceable(24) %i.iu, i64 noundef %i.xr, i64 noundef %i.xt)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIlLin1ELin1ELi0ELin1ELin1EEEE18conservativeResizeEll.exit206 unwind label %bb.bt

_ZN5Eigen15PlainObjectBaseINS_6MatrixIlLin1ELin1ELi0ELin1ELin1EEEE18conservativeResizeEll.exit206: ; preds = %bb.bw, %bb.bv
  %i.xu = load double, ptr %6, align 8, !tbaa !81
  %i.xv = load double, ptr %8, align 8, !tbaa !81
  %i.xw = fcmp ogt double %i.xu, %i.xv
  %i.xx = load i64, ptr %i.is, align 8, !tbaa !109
  %i.xy = load ptr, ptr %i.iu, align 8, !tbaa !131, !noalias !95
  %i.xz = getelementptr inbounds [8 x i8], ptr %i.xy, i64 %i.xx ; 7 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.yb = load i64, ptr %i.ya, align 8, !tbaa !110, !noalias !95 ; 5 uses
  br i1 %i.xw, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIlLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKl.exit218, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIlLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKl.exit230

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIlLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKl.exit218: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIlLin1ELin1ELi0ELin1ELin1EEEE18conservativeResizeEll.exit206
  %i.yc = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.yd = load i32, ptr %i.yc, align 8, !tbaa !74
  %i.ye = sext i32 %i.yd to i64
  store i64 %i.ye, ptr %i.xz, align 8, !tbaa !136, !noalias !446
  %i.yf = getelementptr inbounds nuw i8, ptr %12, i64 12
  %i.yg = load i32, ptr %i.yf, align 4, !tbaa !74
  %i.yh = sext i32 %i.yg to i64
  %i.yi = icmp eq i64 %i.yb, 1                    ; 4 uses
  %.sroa.7289.0 = zext i1 %i.yi to i64            ; 2 uses
  %i.yj = select i1 %i.yi, i64 1, i64 2           ; 2 uses
  %i.yk = load i64, ptr %i.iv, align 8, !tbaa !130
  %i.yl = select i1 %i.yi, i64 0, i64 %i.yk
  %i.ym = getelementptr [8 x i8], ptr %i.xz, i64 %i.yl
  %i.yn = getelementptr [8 x i8], ptr %i.ym, i64 %.sroa.7289.0
  store i64 %i.yh, ptr %i.yn, align 8, !tbaa !136
  %i.yo = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.yp = load i32, ptr %i.yo, align 4, !tbaa !74
  %i.yq = sext i32 %i.yp to i64
  %i.yr = icmp eq i64 %i.yj, %i.yb                ; 2 uses
  %i.ys = select i1 %i.yi, i64 2, i64 1
  %.sroa.7289.1 = select i1 %i.yr, i64 %i.ys, i64 %.sroa.7289.0 ; 2 uses
  %i.yt = select i1 %i.yr, i64 0, i64 %i.yj       ; 2 uses
  %i.yu = load i64, ptr %i.iv, align 8, !tbaa !130
  %i.yv = mul nsw i64 %i.yu, %i.yt
  %i.yw = getelementptr [8 x i8], ptr %i.xz, i64 %i.yv
  %i.yx = getelementptr [8 x i8], ptr %i.yw, i64 %.sroa.7289.1
  store i64 %i.yq, ptr %i.yx, align 8, !tbaa !136
  %i.yy = load i32, ptr %12, align 16, !tbaa !74
  br label %bb.bx

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIlLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKl.exit230: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIlLin1ELin1ELi0ELin1ELin1EEEE18conservativeResizeEll.exit206
  %i.yz = load i32, ptr %12, align 16, !tbaa !74
  %i.za = sext i32 %i.yz to i64
  store i64 %i.za, ptr %i.xz, align 8, !tbaa !136, !noalias !449
  %i.zb = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.zc = load i32, ptr %i.zb, align 4, !tbaa !74
  %i.zd = sext i32 %i.zc to i64
  %i.ze = icmp eq i64 %i.yb, 1                    ; 4 uses
  %.sroa.7.0 = zext i1 %i.ze to i64               ; 2 uses
  %i.zf = select i1 %i.ze, i64 1, i64 2           ; 2 uses
  %i.zg = load i64, ptr %i.iv, align 8, !tbaa !130
  %i.zh = select i1 %i.ze, i64 0, i64 %i.zg
  %i.zi = getelementptr [8 x i8], ptr %i.xz, i64 %i.zh
  %i.zj = getelementptr [8 x i8], ptr %i.zi, i64 %.sroa.7.0
  store i64 %i.zd, ptr %i.zj, align 8, !tbaa !136
  %i.zk = getelementptr inbounds nuw i8, ptr %12, i64 12
  %i.zl = load i32, ptr %i.zk, align 4, !tbaa !74
  %i.zm = sext i32 %i.zl to i64
  %i.zn = icmp eq i64 %i.zf, %i.yb                ; 2 uses
  %i.zo = select i1 %i.ze, i64 2, i64 1
  %.sroa.7.1 = select i1 %i.zn, i64 %i.zo, i64 %.sroa.7.0 ; 2 uses
  %i.zp = select i1 %i.zn, i64 0, i64 %i.zf       ; 2 uses
  %i.zq = load i64, ptr %i.iv, align 8, !tbaa !130
  %i.zr = mul nsw i64 %i.zq, %i.zp
  %i.zs = getelementptr [8 x i8], ptr %i.xz, i64 %i.zr
  %i.zt = getelementptr [8 x i8], ptr %i.zs, i64 %.sroa.7.1
  store i64 %i.zm, ptr %i.zt, align 8, !tbaa !136
  %i.zu = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.zv = load i32, ptr %i.zu, align 8, !tbaa !74
  br label %bb.bx

bb.bx:                                            ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIlLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKl.exit230, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIlLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKl.exit218
  %.sink762 = phi i32 [ %i.zv, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIlLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKl.exit230 ], [ %i.yy, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIlLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKl.exit218 ]
  %.sink761.in = phi i64 [ %i.zp, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIlLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKl.exit230 ], [ %i.yt, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIlLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKl.exit218 ]
  %.sroa.7.1.sink = phi i64 [ %.sroa.7.1, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIlLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKl.exit230 ], [ %.sroa.7289.1, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIlLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKl.exit218 ]
  %.sink761 = add nuw nsw i64 %.sink761.in, 1     ; 2 uses
  %i.zw = sext i32 %.sink762 to i64
  %i.zx = icmp eq i64 %.sink761, %i.yb            ; 2 uses
  %i.zy = select i1 %i.zx, i64 0, i64 %.sink761
  %i.zz = zext i1 %i.zx to i64
  %i.aaa = load i64, ptr %i.iv, align 8, !tbaa !130
  %i.aab = mul nsw i64 %i.aaa, %i.zy
  %i.aac = getelementptr [8 x i8], ptr %i.xz, i64 %i.aab
  %i.aad = getelementptr [8 x i8], ptr %i.aac, i64 %.sroa.7.1.sink
  %i.aae = getelementptr [8 x i8], ptr %i.aad, i64 %i.zz
  store i64 %i.zw, ptr %i.aae, align 8, !tbaa !136
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bu
  %.sink765 = phi i64 [ 1, %bb.bx ], [ 4, %bb.bu ]
  %i.aaf = load i64, ptr %i.is, align 8, !tbaa !109
  %i.aag = add nsw i64 %i.aaf, %.sink765
  store i64 %i.aag, ptr %i.is, align 8, !tbaa !109
  %i.aah = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.io) #23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.cb

bb.bz:                                            ; preds = %bb.bt, %bb.bq
  %.pn129 = phi { ptr, i32 } [ %lpad.phi, %bb.bq ], [ %i.st, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.w
  %.pn129.pn.pn = phi { ptr, i32 } [ %.pn129, %bb.bz ], [ %i.gm, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  resume { ptr, i32 } %.pn129.pn.pn

bb.cb:                                            ; preds = %bb.a, %bb.by
  %.089 = xor i1 %i.e, true
  ret i1 %.089
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN3igl14DualContouringIdE10new_vertexEv(ptr noundef nonnull align 8 dereferenceable(408) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !111  ; 5 uses
  %i.c = add nsw i64 %i.b, 1                      ; 8 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !111
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !392  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !139  ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 2                   ; 3 uses
  %i.l = icmp ugt i64 %i.c, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = sub nuw i64 %i.c, %i.k
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.m)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !111
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.n = icmp ult i64 %i.c, %i.k
  br i1 %i.n, label %bb.d, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.c ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %i.o
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.o, ptr %i.e, align 8, !tbaa !392
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.p = phi i64 [ %.pre, %bb.b ], [ %i.c, %bb.c ], [ %i.c, %bb.d ], [ %i.c, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ] ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !393  ; 2 uses
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !143  ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 24                  ; 3 uses
  %i.y = icmp ugt i64 %i.p, %i.x
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.z = sub nuw i64 %i.p, %i.x
  tail call void @_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef %i.z)
  %.pre7 = load i64, ptr %i.a, align 8, !tbaa !111
  br label %_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEE6resizeEm.exit

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.aa = icmp ult i64 %i.p, %i.x
  br i1 %i.aa, label %bb.g, label %_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEE6resizeEm.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.p ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.s, %i.ab
  br i1 %.not.i.i4, label %_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEE6resizeEm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.ab, ptr %i.r, align 8, !tbaa !393
  br label %_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEE6resizeEm.exit

_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEE6resizeEm.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %i.ac = phi i64 [ %.pre7, %bb.e ], [ %i.p, %bb.f ], [ %i.p, %bb.g ], [ %i.p, %bb.h ] ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !400 ; 2 uses
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !142 ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = sdiv exact i64 %i.aj, 12                ; 3 uses
  %i.al = icmp ugt i64 %i.ac, %i.ak
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEE6resizeEm.exit
  %i.am = sub nuw i64 %i.ac, %i.ak
  tail call void @_ZNSt6vectorIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 noundef %i.am)
  %.pre8 = load i64, ptr %i.a, align 8, !tbaa !111
  br label %_ZNSt6vectorIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEE6resizeEm.exit

bb.j:                                             ; preds = %_ZNSt6vectorIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEE6resizeEm.exit
  %i.an = icmp ult i64 %i.ac, %i.ak
  br i1 %i.an, label %bb.k, label %_ZNSt6vectorIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEE6resizeEm.exit

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr %i.ag, i64 %i.ac ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.af, %i.ao
  br i1 %.not.i.i5, label %_ZNSt6vectorIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEE6resizeEm.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.ao, ptr %i.ae, align 8, !tbaa !400
  br label %_ZNSt6vectorIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEE6resizeEm.exit

_ZNSt6vectorIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEE6resizeEm.exit: ; preds = %bb.i, %bb.j, %bb.k, %bb.l
  %i.ap = phi i64 [ %.pre8, %bb.i ], [ %i.ac, %bb.j ], [ %i.ac, %bb.k ], [ %i.ac, %bb.l ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !407 ; 2 uses
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !141 ; 2 uses
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 7                 ; 3 uses
  %i.ay = icmp ugt i64 %i.ap, %i.ax
  br i1 %i.ay, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNSt6vectorIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEE6resizeEm.exit
  %i.az = sub nuw i64 %i.ap, %i.ax
  tail call void @_ZNSt6vectorIN5Eigen6MatrixIdLi4ELi4ELi0ELi4ELi4EEENS0_17aligned_allocatorIS2_EEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 noundef %i.az)
  br label %_ZNSt6vectorIN5Eigen6MatrixIdLi4ELi4ELi0ELi4ELi4EEENS0_17aligned_allocatorIS2_EEE6resizeEm.exit

bb.n:                                             ; preds = %_ZNSt6vectorIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEENS0_17aligned_allocatorIS2_EEE6resizeEm.exit
  %i.ba = icmp ult i64 %i.ap, %i.ax
  br i1 %i.ba, label %bb.o, label %_ZNSt6vectorIN5Eigen6MatrixIdLi4ELi4ELi0ELi4ELi4EEENS0_17aligned_allocatorIS2_EEE6resizeEm.exit

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw [128 x i8], ptr %i.at, i64 %i.ap ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.as, %i.bb
  br i1 %.not.i.i6, label %_ZNSt6vectorIN5Eigen6MatrixIdLi4ELi4ELi0ELi4ELi4EEENS0_17aligned_allocatorIS2_EEE6resizeEm.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.bb, ptr %i.ar, align 8, !tbaa !407
  br label %_ZNSt6vectorIN5Eigen6MatrixIdLi4ELi4ELi0ELi4ELi4EEENS0_17aligned_allocatorIS2_EEE6resizeEm.exit

_ZNSt6vectorIN5Eigen6MatrixIdLi4ELi4ELi0ELi4ELi4EEENS0_17aligned_allocatorIS2_EEE6resizeEm.exit: ; preds = %bb.m, %bb.n, %bb.o, %bb.p
  %i.bc = load ptr, ptr %i.d, align 8, !tbaa !139
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.b
  store i32 0, ptr %i.bd, align 4, !tbaa !74
  %i.be = load ptr, ptr %i.q, align 8, !tbaa !143
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.be, i64 %i.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i8 0, i64 24, i1 false)
  %i.bg = load ptr, ptr %i.aq, align 8, !tbaa !141
  %i.bh = getelementptr inbounds nuw [128 x i8], ptr %i.bg, i64 %i.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.bh, i8 0, i64 128, i1 false)
  ret i64 %i.b
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !392  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !139    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !140
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
  store i32 0, ptr %i.b, align 4, !tbaa !74
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i
end_hunk_2
