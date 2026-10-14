Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/optimizable_graph?download=true
inline.NumInlined: 8546
inline.NumDeleted: 4116
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 55
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_ZNK3g2o16OptimizableGraph25verifyInformationMatricesEb:bb.a
_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNK5Eigen10MatrixBaseINS_9TransposeINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEeqIS7_EEbRKNS0_IT_EE.exit.thread
  %.not.i.i.i.i = icmp eq ptr %i.br, %i.bs
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.by = ashr exact i64 %i.bv, 1
  %i.bz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #40
          to label %.noexc34 unwind label %.loopexit45 ; 5 uses

.noexc34:                                         ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bw ; 2 uses
  store i32 0, ptr %i.bz, align 4, !tbaa !101
  %i.cb = add nsw i64 %i.bw, -1                   ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc34
  %i.cd = getelementptr i8, ptr %i.bz, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.cb, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.cd, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !101
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc34
  %i.ce = load ptr, ptr %i.bq, align 8, !tbaa !91 ; 2 uses
  %i.cf = load ptr, ptr %i.bp, align 8, !tbaa !92 ; 2 uses
  %.not = icmp eq ptr %i.ce, %i.cf
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.thread:        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.cg = load ptr, ptr %i.bq, align 8, !tbaa !91 ; 2 uses
  %i.ch = load ptr, ptr %i.bp, align 8, !tbaa !92 ; 2 uses
  %.not80 = icmp eq ptr %i.cg, %i.ch
  br i1 %.not80, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.thread, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.ci = phi ptr [ %i.ch, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.thread ], [ %i.cf, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ] ; 6 uses
  %i.cj = phi ptr [ %i.cg, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.thread ], [ %i.ce, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ]
  %.sroa.9.085 = phi ptr [ null, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.thread ], [ %i.ca, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ] ; 2 uses
  %.sroa.035.081 = phi ptr [ null, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.thread ], [ %i.bz, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ] ; 7 uses
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.ci to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 3                 ; 3 uses
  %i.co = add nsw i64 %i.cn, -1
  %xtraiter = and i64 %i.cn, 3                    ; 3 uses
  %i.cp = icmp ult i64 %i.co, 3
  br i1 %i.cp, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.cn, -4
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.050.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.dw, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod94 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod94)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.050.epil = phi i64 [ %i.cv, %.lr.ph.epil ], [ %.050.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %.050.epil
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !94
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !143
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.035.081, i64 %.050.epil
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !101
  %i.cv = add nuw i64 %.050.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !348

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %.sroa.9.084 = phi ptr [ %i.ca, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ], [ %.sroa.9.085, %.lr.ph.epil ], [ %.sroa.9.085, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.035.083 = phi ptr [ %i.bz, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ], [ %.sroa.035.081, %.lr.ph.epil ], [ %.sroa.035.081, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %i.cw = ptrtoint ptr %.sroa.9.084 to i64
  %i.cx = ptrtoint ptr %.sroa.035.083 to i64
  %i.cy = sub i64 %i.cw, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.035.083, i64 noundef %i.cy) #41
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

.loopexit45:                                      ; preds = %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.050 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.dw, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %.050
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !94
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !143
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.035.081, i64 %.050
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !101
  %i.de = or disjoint i64 %.050, 1                ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.de
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !94
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !143
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.035.081, i64 %i.de
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !101
  %i.dk = or disjoint i64 %.050, 2                ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !94
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !143
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.035.081, i64 %i.dk
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !101
  %i.dq = or disjoint i64 %.050, 3                ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.dq
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !94
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !143
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.035.081, i64 %i.dq
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !101
  %i.dw = add nuw i64 %.050, 4                    ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !349

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.thread, %._crit_edge, %_ZNK5Eigen10MatrixBaseINS_9TransposeINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEeqIS7_EEbRKNS0_IT_EE.exit
  %i.dx = phi i1 [ false, %._crit_edge ], [ %i.bo, %_ZNK5Eigen10MatrixBaseINS_9TransposeINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEeqIS7_EEbRKNS0_IT_EE.exit ], [ false, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.thread ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #42
  %i.dy = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.040.052) #44 ; 2 uses
  %.not44 = icmp eq ptr %i.dy, %i.f
  br i1 %.not44, label %._crit_edge56, label %.lr.ph55.split, !llvm.loop !347

bb.k:                                             ; preds = %.loopexit45, %.loopexit.split-lp, %.split58, %.split58.us, %.split, %.split.us
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ai, %.split58.us ], [ %i.ah, %.split.us ], [ %i.bj, %.split ], [ %i.bk, %.split58 ], [ %lpad.loopexit, %.loopexit45 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #42
  call void @_ZN5Eigen22SelfAdjointEigenSolverINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(78) dereferenceable(78) %2) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #42
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(78) ptr @_ZN5Eigen22SelfAdjointEigenSolverINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7computeINS_3MapIS2_Li0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9EigenBaseIT_EEi(ptr noundef nonnull align 8 dereferenceable(78) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %2) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = and i32 %2, 128
  %i.b = icmp ne i32 %i.a, 0                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !208  ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 noundef %i.d, i64 noundef 1)
  %i.f = icmp eq i64 %i.d, 1
  %i.g = load ptr, ptr %1, align 8                ; 10 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8              ; 17 uses
  %i.k = load i64, ptr %i.c, align 8              ; 14 uses
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !214
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.m, %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8
  %.not8.i.i.i.i.i.i.i.i = icmp eq i64 %i.o, %i.k
  %or.cond.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i1 %.not8.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = icmp eq i64 %i.j, 0
  %i.q = icmp eq i64 %i.k, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i = or i1 %i.p, %i.q
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = sdiv i64 9223372036854775807, %i.k
  %i.s = icmp sgt i64 %i.j, %i.r
  br i1 %i.s, label %.noexc.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.d
  %i.t = tail call ptr @__cxa_allocate_exception(i64 8) #42 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.t, align 8, !tbaa !29
  tail call void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #45
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.u = mul nsw i64 %i.k, %i.j
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.u, i64 noundef %i.j, i64 noundef %i.k)
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.l, align 8, !tbaa !214
  %.pre21.i.i.i.i.i.i.i = load i64, ptr %i.n, align 8, !tbaa !215
  br label %bb.e

bb.e:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i, %bb.b
  %i.v = phi i64 [ %.pre21.i.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i ], [ %i.k, %bb.b ]
  %i.w = phi i64 [ %.pre.i.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i ], [ %i.j, %bb.b ]
  %i.x = load ptr, ptr %0, align 8, !tbaa !212    ; 8 uses
  %i.y = mul nsw i64 %i.w, %i.v                   ; 7 uses
  %i.z = sdiv i64 %i.y, 2
  %i.aa = shl nsw i64 %i.z, 1                     ; 6 uses
  %i.ab = icmp sgt i64 %i.y, 1
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.e
  %i.ac = icmp slt i64 %i.aa, %i.y
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.ad = sub i64 %i.y, %i.aa                     ; 3 uses
  %min.iters.check99 = icmp ult i64 %i.ad, 8
  %3 = ptrtoaddr ptr %i.x to i64
  %i.ae = sub i64 %i.h, %3
  %diff.check97 = icmp ugt i64 %i.ae, -32
  %or.cond = select i1 %min.iters.check99, i1 true, i1 %diff.check97
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader111, label %vector.ph100

vector.ph100:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %n.vec101 = and i64 %i.ad, -4                   ; 3 uses
  %i.af = add i64 %i.aa, %n.vec101
  br label %vector.body102

vector.body102:                                   ; preds = %vector.body102, %vector.ph100
  %index103 = phi i64 [ 0, %vector.ph100 ], [ %index.next106, %vector.body102 ] ; 2 uses
  %i.ag = add i64 %i.aa, %index103                ; 2 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ag ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load104 = load <2 x double>, ptr %i.ai, align 8, !tbaa !210
  %wide.load105 = load <2 x double>, ptr %i.aj, align 8, !tbaa !210
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store <2 x double> %wide.load104, ptr %i.ah, align 8, !tbaa !210
  store <2 x double> %wide.load105, ptr %i.ak, align 8, !tbaa !210
  %index.next106 = add nuw i64 %index103, 4       ; 2 uses
  %i.al = icmp eq i64 %index.next106, %n.vec101
  br i1 %i.al, label %middle.block107, label %vector.body102, !llvm.loop !352

middle.block107:                                  ; preds = %vector.body102
  %cmp.n108 = icmp eq i64 %i.ad, %n.vec101
  br i1 %cmp.n108, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader111

.lr.ph.i.i.i.i.i.i.i.i.i.preheader111:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block107
  %.05.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.af, %middle.block107 ] ; 4 uses
  %i.am = sub i64 %i.y, %.05.i.i.i.i.i.i.i.i.i.ph
  %xtraiter118.a = and i64 %i.am, 3               ; 2 uses
  %lcmp.mod119.not.a = icmp eq i64 %xtraiter118.a, 0
  br i1 %lcmp.mod119.not.a, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader111, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader111 ] ; 3 uses
  %prol.iter120.a = phi i64 [ %prol.iter120.next.a, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader111 ]
  %i.an = getelementptr inbounds [8 x i8], ptr %i.x, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.g, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !210
  store double %i.ap, ptr %i.an, align 8, !tbaa !210
  %i.aq = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter120.next.a = add i64 %prol.iter120.a, 1 ; 2 uses
  %prol.iter120.cmp.not.a = icmp eq i64 %prol.iter120.next.a, %xtraiter118.a
  br i1 %prol.iter120.cmp.not.a, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !353

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader111
  %.05.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader111 ], [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.ar = sub i64 %.05.i.i.i.i.i.i.i.i.i.ph, %i.y
  %i.as = icmp ugt i64 %i.ar, -4
  br i1 %i.as, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bi, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %i.x, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.au = getelementptr inbounds [8 x i8], ptr %i.g, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.av = load double, ptr %i.au, align 8, !tbaa !210
  store double %i.av, ptr %i.at, align 8, !tbaa !210
  %i.aw = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.aw
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.aw
  %i.az = load double, ptr %i.ay, align 8, !tbaa !210
  store double %i.az, ptr %i.ax, align 8, !tbaa !210
  %i.ba = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 2   ; 2 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.ba
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ba
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !210
  store double %i.bd, ptr %i.bb, align 8, !tbaa !210
  %i.be = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 3   ; 2 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.be
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.be
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !210
  store double %i.bh, ptr %i.bf, align 8, !tbaa !210
  %i.bi = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 4   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bi, %i.y
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !354

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i = phi i64 [ %i.bm, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.e ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.011.i.i.i.i.i.i.i.i
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.011.i.i.i.i.i.i.i.i
  %i.bl = load <2 x double>, ptr %i.bk, align 1, !tbaa !88
  store <2 x double> %i.bl, ptr %i.bj, align 16, !tbaa !88
  %i.bm = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.bn = icmp slt i64 %i.bm, %i.aa
  br i1 %i.bn, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !355

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block107, %._crit_edge.i.i.i.i.i.i.i.i
  %i.bo = load ptr, ptr %0, align 8, !tbaa !212   ; 3 uses
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !210
  %i.bq = load ptr, ptr %i.e, align 8, !tbaa !211
  store double %i.bp, ptr %i.bq, align 8, !tbaa !210
  br i1 %i.b, label %bb.f, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setOnesEll.exit

bb.f:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit
  %i.br = load i64, ptr %i.l, align 8, !tbaa !214
  %i.bs = load i64, ptr %i.n, align 8, !tbaa !215
  %i.bt = mul nsw i64 %i.bs, %i.br
  %.not.i = icmp eq i64 %i.bt, 1
  br i1 %.not.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.bo) #42
  %i.bu = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #46 ; 3 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.h, label %.sink.split.i

bb.h:                                             ; preds = %bb.g
  %i.bw = tail call ptr @__cxa_allocate_exception(i64 8) #42 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bw, align 8, !tbaa !29
  tail call void @__cxa_throw(ptr nonnull %i.bw, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #45
  unreachable

.sink.split.i:                                    ; preds = %bb.g
  store ptr %i.bu, ptr %0, align 8, !tbaa !212
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.sink.split.i, %bb.f
  %i.bx = phi ptr [ %i.bu, %.sink.split.i ], [ %i.bo, %bb.f ]
  store i64 1, ptr %i.l, align 8, !tbaa !214
  store i64 1, ptr %i.n, align 8, !tbaa !215
  store double 1.000000e+00, ptr %i.bx, align 8, !tbaa !210
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setOnesEll.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setOnesEll.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.by, align 8, !tbaa !204
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEmLERKd.exit

bb.i:                                             ; preds = %bb.a
  %i.bz = icmp eq i64 %i.j, 0
  %i.ca = icmp eq i64 %i.k, 0
  %or.cond.i.i.i.i.i = or i1 %i.bz, %i.ca         ; 2 uses
  br i1 %or.cond.i.i.i.i.i, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_14TriangularViewIKNS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEELj1EEEEERS1_RKNS_9EigenBaseIT_EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cb = sdiv i64 9223372036854775807, %i.k
  %i.cc = icmp sgt i64 %i.j, %i.cb
  br i1 %i.cc, label %bb.k, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_14TriangularViewIKNS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEELj1EEEEERS1_RKNS_9EigenBaseIT_EE.exit

bb.k:                                             ; preds = %bb.j
  %i.cd = tail call ptr @__cxa_allocate_exception(i64 8) #42 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.cd, align 8, !tbaa !29
  tail call void @__cxa_throw(ptr nonnull %i.cd, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #45
  unreachable

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_14TriangularViewIKNS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEELj1EEEEERS1_RKNS_9EigenBaseIT_EE.exit: ; preds = %bb.i, %bb.j
  %i.ce = mul nsw i64 %i.k, %i.j                  ; 2 uses
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ce, i64 noundef %i.j, i64 noundef %i.k)
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !214
  %.not.i30 = icmp eq i64 %i.cg, %i.j
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8
  %.not16.i = icmp eq i64 %i.ci, %i.k
  %or.cond.i = select i1 %.not.i30, i1 %.not16.i, i1 false
  br i1 %or.cond.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_14TriangularViewIKNS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEELj1EEEEERS1_RKNS_9EigenBaseIT_EE.exit
  br i1 %or.cond.i.i.i.i.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cj = sdiv i64 9223372036854775807, %i.k
  %i.ck = icmp sgt i64 %i.j, %i.cj
  br i1 %i.ck, label %.noexc.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i

.noexc.i:                                         ; preds = %bb.m
  %i.cl = tail call ptr @__cxa_allocate_exception(i64 8) #42 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.cl, align 8, !tbaa !29
  tail call void @__cxa_throw(ptr nonnull %i.cl, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #45
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i: ; preds = %bb.m, %bb.l
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ce, i64 noundef %i.j, i64 noundef %i.k)
  %.pre.i = load i64, ptr %i.cf, align 8, !tbaa !214
  %.pre30.i = load i64, ptr %i.ch, align 8, !tbaa !215
  br label %bb.n

bb.n:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_14TriangularViewIKNS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEELj1EEEEERS1_RKNS_9EigenBaseIT_EE.exit
  %i.cm = phi i64 [ %.pre30.i, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i ], [ %i.k, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_14TriangularViewIKNS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEELj1EEEEERS1_RKNS_9EigenBaseIT_EE.exit ] ; 4 uses
  %i.cn = phi i64 [ %.pre.i, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i ], [ %i.j, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_14TriangularViewIKNS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEELj1EEEEERS1_RKNS_9EigenBaseIT_EE.exit ] ; 19 uses
  %i.co = load ptr, ptr %0, align 8, !tbaa !212   ; 17 uses
  %i.cp = icmp sgt i64 %i.cm, 0                   ; 2 uses
  br i1 %i.cp, label %.lr.ph30.i.i.preheader, label %_ZN5Eigen8internal31call_triangular_assignment_loopILi1ELb1ENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14TriangularViewIKNS_3MapIS3_Li0ENS_6StrideILi0ELi0EEEEELj1EEENS0_9assign_opIddEEEEvRT1_RKT2_RKT3_.exit

.lr.ph30.i.i.preheader:                           ; preds = %bb.n
  %i.cq = ptrtoaddr ptr %i.co to i64
  %i.cr = sub i64 %i.cq, %i.h
  %i.cs = sub i64 %i.cn, %i.j
  %i.ct = shl i64 %i.cs, 3
  %invariant.op = add i64 %i.cr, -1
  br label %.lr.ph30.i.i

.lr.ph30.i.i:                                     ; preds = %.lr.ph30.i.i.preheader, %._crit_edge25.i.i
  %storemerge28.i.i = phi i64 [ %i.el, %._crit_edge25.i.i ], [ 0, %.lr.ph30.i.i.preheader ] ; 6 uses
  %i.cu = mul i64 %i.ct, %storemerge28.i.i
  %smin32.i.i = tail call i64 @llvm.smin.i64(i64 %i.cn, i64 %storemerge28.i.i) ; 3 uses
  %i.cv = icmp sgt i64 %smin32.i.i, 0
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal26tridiagonalization_inplaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRT_RT0_:bb.a
  %i.ns = load double, ptr %i.nr, align 8, !tbaa !210
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %i.np
  %i.nu = load double, ptr %i.nt, align 8, !tbaa !210
  %i.nv = fmul double %i.nu, %i.lp
  %i.nw = fmul double %i.lk, %i.ns
  %i.nx = fsub double %i.nv, %i.nw
  %i.ny = load double, ptr %i.nq, align 8, !tbaa !210
  %i.nz = fadd double %i.ny, %i.nx
  store double %i.nz, ptr %i.nq, align 8, !tbaa !210
  %i.oa = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.oa, %.0.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNSD_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS8_EEKNS_5BlockIKNSO_IS8_Lin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNSD_ISH_SN_KNSO_IKNSO_INSO_INS7_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !488

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNSD_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS8_EEKNS_5BlockIKNSO_IS8_Lin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNSD_ISH_SN_KNSO_IKNSO_INSO_INS7_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block279, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i
  %i.ob = icmp sgt i64 %i.ly, 1
  br i1 %i.ob, label %.lr.ph.i.preheader.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i:                 ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNSD_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS8_EEKNS_5BlockIKNSO_IS8_Lin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNSD_ISH_SN_KNSO_IKNSO_INSO_INS7_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i
  %i.oc = shufflevector <2 x double> %.sroa.3.16.vec.insert.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.od = shufflevector <2 x double> %.sroa.1223.64.vec.insert.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNSD_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS8_EEKNS_5BlockIKNSO_IS8_Lin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNSD_ISH_SN_KNSO_IKNSO_INSO_INS7_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i
  %i.oe = icmp slt i64 %i.mb, %i.lm
  br i1 %i.oe, label %.lr.ph.i17.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS9_INSA_17scalar_product_opIddEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIdEEKS3_EEKNS_5BlockIKNSL_IS3_Lin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNS9_ISE_SK_KNSL_IKNSL_INSL_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEERS6_RKNS0_IT_EE.exit.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.preheader:             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.of = add i64 %.0.i.i.i.i.i.i.i.i.i, %i.ma
  %i.og = sub i64 %i.lm, %i.of                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.og, 6
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.i.i.preheader329, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.preheader
  %i.oh = shl i64 %i.lz, 4
  %i.oi = shl i64 %.0.i.i.i.i.i.i.i.i.i, 3
  %i.oj = add i64 %i.oh, %i.oi                    ; 3 uses
  %scevgep = getelementptr i8, ptr %i.ls, i64 %i.oj ; 2 uses
  %scevgep237 = getelementptr i8, ptr %i.ln, i64 %i.oj
  %scevgep239 = getelementptr i8, ptr %i.lj, i64 %i.oj
  %bound0 = icmp ult ptr %scevgep, %scevgep238
  %bound1 = icmp ult ptr %scevgep237, %scevgep236
  %found.conflict = and i1 %bound0, %bound1
  %bound0241 = icmp ult ptr %scevgep, %scevgep240
  %bound1242 = icmp ult ptr %scevgep239, %scevgep236
  %found.conflict243 = and i1 %bound0241, %bound1242
  %conflict.rdx = or i1 %found.conflict, %found.conflict243
  br i1 %conflict.rdx, label %.lr.ph.i17.i.i.i.i.i.i.i.i.preheader329, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.og, -4                      ; 3 uses
  %i.ok = add i64 %i.mb, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.lp, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert244 = insertelement <2 x double> poison, double %i.lk, i64 0
  %broadcast.splat245 = shufflevector <2 x double> %broadcast.splatinsert244, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ol = add i64 %i.mb, %index                   ; 3 uses
  %i.om = getelementptr inbounds [8 x i8], ptr %i.ls, i64 %i.ol ; 3 uses
  %i.on = getelementptr inbounds [8 x i8], ptr %i.ln, i64 %i.ol ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  %wide.load = load <2 x double>, ptr %i.on, align 8, !tbaa !210, !alias.scope !535
  %wide.load246 = load <2 x double>, ptr %i.oo, align 8, !tbaa !210, !alias.scope !535
  %i.op = getelementptr inbounds [8 x i8], ptr %i.lj, i64 %i.ol ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 16
  %wide.load247 = load <2 x double>, ptr %i.op, align 8, !tbaa !210, !alias.scope !536
  %wide.load248 = load <2 x double>, ptr %i.oq, align 8, !tbaa !210, !alias.scope !536
  %i.or = fmul <2 x double> %wide.load247, %broadcast.splat
  %i.os = fmul <2 x double> %wide.load248, %broadcast.splat
  %i.ot = fmul <2 x double> %broadcast.splat245, %wide.load
  %i.ou = fmul <2 x double> %broadcast.splat245, %wide.load246
  %i.ov = fsub <2 x double> %i.or, %i.ot
  %i.ow = fsub <2 x double> %i.os, %i.ou
  %i.ox = getelementptr inbounds nuw i8, ptr %i.om, i64 16 ; 2 uses
  %wide.load249 = load <2 x double>, ptr %i.om, align 8, !tbaa !210, !alias.scope !537, !noalias !538
  %wide.load250 = load <2 x double>, ptr %i.ox, align 8, !tbaa !210, !alias.scope !537, !noalias !538
  %i.oy = fadd <2 x double> %wide.load249, %i.ov
  %i.oz = fadd <2 x double> %wide.load250, %i.ow
  store <2 x double> %i.oy, ptr %i.om, align 8, !tbaa !210, !alias.scope !537, !noalias !538
  store <2 x double> %i.oz, ptr %i.ox, align 8, !tbaa !210, !alias.scope !537, !noalias !538
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.pa = icmp eq i64 %index.next, %n.vec
  br i1 %i.pa, label %middle.block, label %vector.body, !llvm.loop !493

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.og, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS9_INSA_17scalar_product_opIddEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIdEEKS3_EEKNS_5BlockIKNSL_IS3_Lin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNS9_ISE_SK_KNSL_IKNSL_INSL_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEERS6_RKNS0_IT_EE.exit.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.preheader329

.lr.ph.i17.i.i.i.i.i.i.i.i.preheader329:          ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.mb, %vector.memcheck ], [ %i.mb, %.lr.ph.i17.i.i.i.i.i.i.i.i.preheader ], [ %i.ok, %middle.block ] ; 7 uses
  %i.pb = sub i64 %i.lm, %.05.i18.i.i.i.i.i.i.i.i.ph
  %i.pc = add i64 %i.lh, %.05.i18.i.i.i.i.i.i.i.i.ph
  %xtraiter344 = and i64 %i.pb, 1
  %lcmp.mod345.not = icmp eq i64 %xtraiter344, 0
  br i1 %lcmp.mod345.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.preheader329
  %i.pd = getelementptr inbounds [8 x i8], ptr %i.ls, i64 %.05.i18.i.i.i.i.i.i.i.i.ph ; 2 uses
  %i.pe = getelementptr inbounds [8 x i8], ptr %i.ln, i64 %.05.i18.i.i.i.i.i.i.i.i.ph
  %i.pf = load double, ptr %i.pe, align 8, !tbaa !210
  %i.pg = getelementptr inbounds [8 x i8], ptr %i.lj, i64 %.05.i18.i.i.i.i.i.i.i.i.ph
  %i.ph = load double, ptr %i.pg, align 8, !tbaa !210
  %i.pi = fmul double %i.ph, %i.lp
  %i.pj = fmul double %i.lk, %i.pf
  %i.pk = fsub double %i.pi, %i.pj
  %i.pl = load double, ptr %i.pd, align 8, !tbaa !210
  %i.pm = fadd double %i.pl, %i.pk
  store double %i.pm, ptr %i.pd, align 8, !tbaa !210
  %i.pn = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.preheader329
  %.05.i18.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.preheader329 ], [ %i.pn, %.lr.ph.i17.i.i.i.i.i.i.i.i.prol ]
  %i.po = icmp eq i64 %i.z, %i.pc
  br i1 %i.po, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS9_INSA_17scalar_product_opIddEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIdEEKS3_EEKNS_5BlockIKNSL_IS3_Lin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNS9_ISE_SK_KNSL_IKNSL_INSL_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEERS6_RKNS0_IT_EE.exit.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i = phi i64 [ %i.qk, %.lr.ph.i17.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.pp = getelementptr inbounds [8 x i8], ptr %i.ls, i64 %.05.i18.i.i.i.i.i.i.i.i ; 2 uses
  %i.pq = getelementptr inbounds [8 x i8], ptr %i.ln, i64 %.05.i18.i.i.i.i.i.i.i.i
  %i.pr = load double, ptr %i.pq, align 8, !tbaa !210
  %i.ps = getelementptr inbounds [8 x i8], ptr %i.lj, i64 %.05.i18.i.i.i.i.i.i.i.i
  %i.pt = load double, ptr %i.ps, align 8, !tbaa !210
  %i.pu = fmul double %i.pt, %i.lp
  %i.pv = fmul double %i.lk, %i.pr
  %i.pw = fsub double %i.pu, %i.pv
  %i.px = load double, ptr %i.pp, align 8, !tbaa !210
  %i.py = fadd double %i.px, %i.pw
  store double %i.py, ptr %i.pp, align 8, !tbaa !210
  %i.pz = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.qa = getelementptr inbounds [8 x i8], ptr %i.ls, i64 %i.pz ; 2 uses
  %i.qb = getelementptr inbounds [8 x i8], ptr %i.ln, i64 %i.pz
  %i.qc = load double, ptr %i.qb, align 8, !tbaa !210
  %i.qd = getelementptr inbounds [8 x i8], ptr %i.lj, i64 %i.pz
  %i.qe = load double, ptr %i.qd, align 8, !tbaa !210
  %i.qf = fmul double %i.qe, %i.lp
  %i.qg = fmul double %i.lk, %i.qc
  %i.qh = fsub double %i.qf, %i.qg
  %i.qi = load double, ptr %i.qa, align 8, !tbaa !210
  %i.qj = fadd double %i.qi, %i.qh
  store double %i.qj, ptr %i.qa, align 8, !tbaa !210
  %i.qk = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.qk, %i.lm
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS9_INSA_17scalar_product_opIddEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIdEEKS3_EEKNS_5BlockIKNSL_IS3_Lin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNS9_ISE_SK_KNSL_IKNSL_INSL_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEERS6_RKNS0_IT_EE.exit.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i, !llvm.loop !494

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i = phi i64 [ %i.qv, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i ] ; 4 uses
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %.021.i.i.i.i.i.i.i.i ; 2 uses
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %.021.i.i.i.i.i.i.i.i
  %i.qn = load <2 x double>, ptr %i.qm, align 1, !tbaa !88
  %i.qo = fmul <2 x double> %i.oc, %i.qn
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %.021.i.i.i.i.i.i.i.i
  %i.qq = load <2 x double>, ptr %i.qp, align 1, !tbaa !88
  %i.qr = fmul <2 x double> %i.od, %i.qq
  %i.qs = fadd <2 x double> %i.qo, %i.qr
  %i.qt = load <2 x double>, ptr %i.ql, align 16, !tbaa !88
  %i.qu = fadd <2 x double> %i.qt, %i.qs
  store <2 x double> %i.qu, ptr %i.ql, align 16, !tbaa !88
  %i.qv = add nuw nsw i64 %.021.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.qw = icmp slt i64 %i.qv, %i.mb
  br i1 %i.qw, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !495

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS9_INSA_17scalar_product_opIddEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIdEEKS3_EEKNS_5BlockIKNSL_IS3_Lin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNS9_ISE_SK_KNSL_IKNSL_INSL_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEERS6_RKNS0_IT_EE.exit.i.i: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i
  %i.qx = add nuw nsw i64 %.070.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.qx, %i.al
  br i1 %exitcond.not.i.i, label %_ZN5Eigen15SelfAdjointViewINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELj1EE10rankUpdateINS1_INS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEERS5_RKNS_10MatrixBaseIT_EERKNSC_IT0_EERKd.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !496

_ZN5Eigen15SelfAdjointViewINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELj1EE10rankUpdateINS1_INS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEERS5_RKNS_10MatrixBaseIT_EERKNSC_IT0_EERKd.exit.loopexit: ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS9_INSA_17scalar_product_opIddEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIdEEKS3_EEKNS_5BlockIKNSL_IS3_Lin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNS9_ISE_SK_KNSL_IKNSL_INSL_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEERS6_RKNS0_IT_EE.exit.i.i
  %.pre220 = load ptr, ptr %0, align 8, !tbaa !212, !noalias !539
  %.pre221 = load i64, ptr %i.d, align 8, !tbaa !214, !noalias !539 ; 2 uses
  %.pre222 = load ptr, ptr %1, align 8, !tbaa !211
  %.pre223 = mul nsw i64 %.pre221, %.0217
  br label %_ZN5Eigen15SelfAdjointViewINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELj1EE10rankUpdateINS1_INS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEERS5_RKNS_10MatrixBaseIT_EERKNSC_IT0_EERKd.exit

_ZN5Eigen15SelfAdjointViewINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELj1EE10rankUpdateINS1_INS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEERS5_RKNS_10MatrixBaseIT_EERKNSC_IT0_EERKd.exit: ; preds = %_ZN5Eigen15SelfAdjointViewINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELj1EE10rankUpdateINS1_INS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEERS5_RKNS_10MatrixBaseIT_EERKNSC_IT0_EERKd.exit.loopexit, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKS3_EEKNS1_INS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEERS4_RKNS0_IT_EE.exit
  %.pre-phi = phi i64 [ %.pre223, %_ZN5Eigen15SelfAdjointViewINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELj1EE10rankUpdateINS1_INS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEERS5_RKNS_10MatrixBaseIT_EERKNSC_IT0_EERKd.exit.loopexit ], [ %i.kn, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKS3_EEKNS1_INS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEERS4_RKNS0_IT_EE.exit ]
  %i.qy = phi ptr [ %.pre222, %_ZN5Eigen15SelfAdjointViewINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELj1EE10rankUpdateINS1_INS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEERS5_RKNS_10MatrixBaseIT_EERKNSC_IT0_EERKd.exit.loopexit ], [ %i.ks, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKS3_EEKNS1_INS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEERS4_RKNS0_IT_EE.exit ]
  %i.qz = phi i64 [ %.pre221, %_ZN5Eigen15SelfAdjointViewINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELj1EE10rankUpdateINS1_INS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEERS5_RKNS_10MatrixBaseIT_EERKNSC_IT0_EERKd.exit.loopexit ], [ %i.kf, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKS3_EEKNS1_INS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEERS4_RKNS0_IT_EE.exit ]
  %i.ra = phi ptr [ %.pre220, %_ZN5Eigen15SelfAdjointViewINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELj1EE10rankUpdateINS1_INS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEERS5_RKNS_10MatrixBaseIT_EERKNSC_IT0_EERKd.exit.loopexit ], [ %i.kj, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKS3_EEKNS1_INS1_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEERS4_RKNS0_IT_EE.exit ] ; 2 uses
  %i.rb = load double, ptr %i.b, align 8, !tbaa !210
  %i.rc = getelementptr inbounds [8 x i8], ptr %i.ra, i64 %.pre-phi
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %i.rc, i64 %i.az
  store double %i.rb, ptr %i.rd, align 8, !tbaa !210
  %i.re = load double, ptr %i.c, align 8, !tbaa !210
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %i.qy, i64 %.0217
  store double %i.re, ptr %i.rf, align 8, !tbaa !210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #42
  %exitcond.not = icmp eq i64 %.0217, %i.z
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !499
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE15makeHouseholderINS_11VectorBlockIS5_Lin1EEEEEvRT_RdSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !208  ; 7 uses
  %i.c = add nsw i64 %i.b, -1                     ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !238    ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 23 uses
  %or.cond = icmp eq i64 %i.b, 1
  br i1 %or.cond, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sdiv i64 %i.c, 4
  %i.g = shl nsw i64 %i.f, 2                      ; 3 uses
  %i.h = sdiv i64 %i.c, 2
  %i.i = shl nsw i64 %i.h, 1                      ; 6 uses
  %.not.i.i.i.i = icmp ult i64 %i.b, 3
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load <2 x double>, ptr %i.e, align 1, !tbaa !88 ; 2 uses
  %i.k = fmul <2 x double> %i.j, %i.j             ; 3 uses
  %i.l = icmp sgt i64 %i.b, 4
  br i1 %i.l, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.n = load <2 x double>, ptr %i.m, align 1, !tbaa !88 ; 2 uses
  %i.o = fmul <2 x double> %i.n, %i.n             ; 2 uses
  %i.p = icmp samesign ugt i64 %i.b, 8
  br i1 %i.p, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.d
  %.075.lcssa.i.i.i.i = phi <2 x double> [ %i.o, %bb.d ], [ %i.aa, %.lr.ph.i.i.i.i ]
  %.072.lcssa.i.i.i.i = phi <2 x double> [ %i.k, %bb.d ], [ %i.v, %.lr.ph.i.i.i.i ]
  %i.q = fadd <2 x double> %.075.lcssa.i.i.i.i, %.072.lcssa.i.i.i.i ; 2 uses
  %i.r = icmp sgt i64 %i.i, %i.g
  br i1 %i.r, label %bb.e, label %bb.f

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.05480.i.i.i.i = phi i64 [ %.054.i.i.i.i, %.lr.ph.i.i.i.i ], [ 4, %bb.d ] ; 3 uses
  %.054.in79.i.i.i.i = phi i64 [ %.05480.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.d ]
  %.07278.i.i.i.i = phi <2 x double> [ %i.v, %.lr.ph.i.i.i.i ], [ %i.k, %bb.d ]
  %.07577.i.i.i.i = phi <2 x double> [ %i.aa, %.lr.ph.i.i.i.i ], [ %i.o, %bb.d ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.05480.i.i.i.i
  %i.t = load <2 x double>, ptr %i.s, align 1, !tbaa !88 ; 2 uses
  %i.u = fmul <2 x double> %i.t, %i.t
  %i.v = fadd <2 x double> %.07278.i.i.i.i, %i.u  ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.054.in79.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load <2 x double>, ptr %i.x, align 1, !tbaa !88 ; 2 uses
  %i.z = fmul <2 x double> %i.y, %i.y
  %i.aa = fadd <2 x double> %.07577.i.i.i.i, %i.z ; 2 uses
  %.054.i.i.i.i = add nuw nsw i64 %.05480.i.i.i.i, 4 ; 2 uses
  %i.ab = icmp slt i64 %.054.i.i.i.i, %i.g
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !540

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.g
  %i.ad = load <2 x double>, ptr %i.ac, align 1, !tbaa !88 ; 2 uses
  %i.ae = fmul <2 x double> %i.ad, %i.ad
  %i.af = fadd <2 x double> %i.q, %i.ae
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i, %bb.c
  %.274.i.i.i.i = phi <2 x double> [ %i.k, %bb.c ], [ %i.af, %bb.e ], [ %i.q, %._crit_edge.i.i.i.i ] ; 2 uses
  %shift = shufflevector <2 x double> %.274.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %.274.i.i.i.i, %shift
  %i.ag = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %i.ah = icmp slt i64 %i.i, %i.c
  br i1 %i.ah, label %.lr.ph85.i.i.i.i.preheader, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.f
  %i.ai = xor i64 %i.i, -1
  %i.aj = add i64 %i.b, %i.ai
  %i.ak = add i64 %i.b, -2
  %i.al = sub i64 %i.ak, %i.i
  %xtraiter = and i64 %i.aj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph85.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.prol

.lr.ph85.i.i.i.i.prol:                            ; preds = %.lr.ph85.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.prol
  %.05283.i.i.i.i.prol = phi i64 [ %i.aq, %.lr.ph85.i.i.i.i.prol ], [ %i.i, %.lr.ph85.i.i.i.i.preheader ] ; 2 uses
  %.182.i.i.i.i.prol = phi double [ %i.ap, %.lr.ph85.i.i.i.i.prol ], [ %i.ag, %.lr.ph85.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph85.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.preheader ]
  %i.am = getelementptr inbounds [8 x i8], ptr %i.e, i64 %.05283.i.i.i.i.prol
  %i.an = load double, ptr %i.am, align 8, !tbaa !210 ; 2 uses
  %i.ao = fmul double %i.an, %i.an
  %i.ap = fadd double %.182.i.i.i.i.prol, %i.ao   ; 3 uses
  %i.aq = add nsw i64 %.05283.i.i.i.i.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph85.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.prol, !llvm.loop !541

.lr.ph85.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph85.i.i.i.i.prol, %.lr.ph85.i.i.i.i.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph85.i.i.i.i.preheader ], [ %i.ap, %.lr.ph85.i.i.i.i.prol ]
  %.05283.i.i.i.i.unr = phi i64 [ %i.i, %.lr.ph85.i.i.i.i.preheader ], [ %i.aq, %.lr.ph85.i.i.i.i.prol ]
  %.182.i.i.i.i.unr = phi double [ %i.ag, %.lr.ph85.i.i.i.i.preheader ], [ %i.ap, %.lr.ph85.i.i.i.i.prol ]
  %i.ar = icmp ult i64 %i.al, 3
  br i1 %i.ar, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit, label %.lr.ph85.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i
  %.05283.i.i.i.i = phi i64 [ %i.bl, %.lr.ph85.i.i.i.i ], [ %.05283.i.i.i.i.unr, %.lr.ph85.i.i.i.i.prol.loopexit ] ; 5 uses
  %.182.i.i.i.i = phi double [ %i.bk, %.lr.ph85.i.i.i.i ], [ %.182.i.i.i.i.unr, %.lr.ph85.i.i.i.i.prol.loopexit ]
  %i.as = getelementptr inbounds [8 x i8], ptr %i.e, i64 %.05283.i.i.i.i
  %i.at = load double, ptr %i.as, align 8, !tbaa !210 ; 2 uses
  %i.au = fmul double %i.at, %i.at
  %i.av = fadd double %.182.i.i.i.i, %i.au
  %i.aw = getelementptr [8 x i8], ptr %i.e, i64 %.05283.i.i.i.i
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !210 ; 2 uses
  %i.az = fmul double %i.ay, %i.ay
  %i.ba = fadd double %i.av, %i.az
  %i.bb = getelementptr [8 x i8], ptr %i.e, i64 %.05283.i.i.i.i
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !210 ; 2 uses
  %i.be = fmul double %i.bd, %i.bd
  %i.bf = fadd double %i.ba, %i.be
  %i.bg = getelementptr [8 x i8], ptr %i.e, i64 %.05283.i.i.i.i
  %i.bh = getelementptr i8, ptr %i.bg, i64 24
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !210 ; 2 uses
  %i.bj = fmul double %i.bi, %i.bi
  %i.bk = fadd double %i.bf, %i.bj                ; 2 uses
  %i.bl = add nsw i64 %.05283.i.i.i.i, 4          ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.bl, %i.c
  br i1 %exitcond.not.i.i.i.i.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit, label %.lr.ph85.i.i.i.i, !llvm.loop !542

bb.g:                                             ; preds = %bb.b
  %i.bm = load double, ptr %i.e, align 8, !tbaa !210 ; 2 uses
  %i.bn = fmul double %i.bm, %i.bm
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.thread: ; preds = %bb.a
  %i.bo = load double, ptr %i.d, align 8, !tbaa !210
  br label %bb.h

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit: ; preds = %.lr.ph85.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i, %bb.g, %bb.f
  %i.bp = phi double [ %i.bn, %bb.g ], [ %i.ag, %bb.f ], [ %.lcssa.unr, %.lr.ph85.i.i.i.i.prol.loopexit ], [ %i.bk, %.lr.ph85.i.i.i.i ] ; 2 uses
  %i.bq = load double, ptr %i.d, align 8, !tbaa !210 ; 6 uses
  %i.br = fcmp ugt double %i.bp, f0x0010000000000000
  br i1 %i.br, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.thread
  %i.bs = phi double [ %i.bo, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.thread ], [ %i.bq, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit ]
  store double 0.000000e+00, ptr %2, align 8, !tbaa !210
  store double %i.bs, ptr %3, align 8, !tbaa !210
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bu = load ptr, ptr %1, align 8, !tbaa !241   ; 4 uses
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !208 ; 4 uses
  %i.bw = ptrtoint ptr %i.bu to i64               ; 2 uses
  %i.bx = and i64 %i.bw, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.by = lshr exact i64 %i.bw, 3
  %i.bz = and i64 %i.by, 1
  %i.ca = tail call i64 @llvm.smin.i64(i64 %i.bz, i64 %i.bv)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ca, %bb.i ], [ %i.bv, %bb.h ] ; 8 uses
  %i.cb = sub i64 %i.bv, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.cc = sdiv i64 %i.cb, 2                       ; 2 uses
  %i.cd = shl nsw i64 %i.cc, 1                    ; 2 uses
  %i.ce = add i64 %i.cd, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cf = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cf, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i:       ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cg = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bu, i8 0, i64 %i.cg, i1 false), !tbaa !210
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ch = icmp sgt i64 %i.cb, 1
  br i1 %i.ch, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i:         ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ci = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %scevgep.i = getelementptr i8, ptr %i.bu, i64 %i.ci
  %i.cj = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %smax.i = tail call i64 @llvm.smax.i64(i64 %i.ce, i64 %i.cj)
  %i.ck = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.cl = add i64 %smax.i, %i.ck
  %i.cm = shl i64 %i.cl, 3
  %i.cn = and i64 %i.cm, -16
  %i.co = add i64 %i.cn, 16
  tail call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i, i8 0, i64 %i.co, i1 false), !tbaa !88
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cp = icmp slt i64 %i.ce, %i.bv
  br i1 %i.cp, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE7setZeroEv.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cq = shl i64 %i.cc, 4
  %i.cr = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.cs = getelementptr i8, ptr %i.bu, i64 %i.cq
  %scevgep1.i = getelementptr i8, ptr %i.cs, i64 %i.cr
  %i.ct = sub i64 %i.cb, %i.cd
  %i.cu = shl nuw i64 %i.ct, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep1.i, i8 0, i64 %i.cu, i1 false), !tbaa !210
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE7setZeroEv.exit

.critedge:                                        ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit
  %i.cv = fmul double %i.bq, %i.bq
  %i.cw = fadd double %i.bp, %i.cv
  %i.cx = tail call double @sqrt(double noundef %i.cw) #42 ; 2 uses
  %i.cy = fcmp ult double %i.bq, 0.000000e+00
  %i.cz = fneg double %i.cx
  %spec.select = select i1 %i.cy, double %i.cx, double %i.cz ; 2 uses
  store double %spec.select, ptr %3, align 8, !tbaa !210
  %i.da = fsub double %i.bq, %spec.select         ; 13 uses
  %.sroa.8.32.vec.insert.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.da, i64 0
  %i.db = load ptr, ptr %1, align 8, !tbaa !241   ; 14 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !208 ; 8 uses
  %i.de = ptrtoint ptr %i.db to i64               ; 4 uses
  %i.df = and i64 %i.de, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.df, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.j, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %.critedge
  %i.dg = lshr exact i64 %i.de, 3
  %i.dh = and i64 %i.dg, 1
  %i.di = tail call i64 @llvm.smin.i64(i64 %i.dh, i64 %i.dd)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %.critedge
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.di, %bb.j ], [ %i.dd, %.critedge ] ; 11 uses
  %i.dj = sub nsw i64 %i.dd, %.0.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.dk = sdiv i64 %i.dj, 2
  %i.dl = shl nsw i64 %i.dk, 1                    ; 2 uses
  %i.dm = add nsw i64 %i.dl, %.0.i.i.i.i.i.i.i.i.i.i.i ; 6 uses
  %i.dn = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %min.iters.check = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader58, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %4 = ptrtoaddr ptr %i.d to i64
  %i.do = sub i64 %i.de, %4
  %i.dp = add i64 %i.do, -9
  %diff.check = icmp ult i64 %i.dp, 15
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader58, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775806 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.da, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %index
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index
  %wide.load = load <2 x double>, ptr %i.dr, align 8, !tbaa !210
  %i.ds = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.ds, ptr %i.dq, align 8, !tbaa !210
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !543

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader58

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader58:         ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %i.du = sub nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i, %.05.i.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter61 = and i64 %i.du, 3                  ; 2 uses
  %lcmp.mod62.not = icmp eq i64 %xtraiter61, 0
  br i1 %lcmp.mod62.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader58, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.dz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader58 ] ; 3 uses
  %prol.iter63 = phi i64 [ %prol.iter63.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader58 ]
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !210
  %i.dy = fdiv double %i.dx, %i.da
  store double %i.dy, ptr %i.dv, align 8, !tbaa !210
  %i.dz = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter63.next = add i64 %prol.iter63, 1     ; 2 uses
  %prol.iter63.cmp.not = icmp eq i64 %prol.iter63.next, %xtraiter61
  br i1 %prol.iter63.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !544

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader58
  %.05.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader58 ], [ %i.dz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ea = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.0.i.i.i.i.i.i.i.i.i.i.i
  %i.eb = icmp ugt i64 %i.ea, -4
  br i1 %i.eb, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ev, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !210
  %i.ef = fdiv double %i.ee, %i.da
  store double %i.ef, ptr %i.ec, align 8, !tbaa !210
  %i.eg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.eg
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.eg
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !210
  %i.ek = fdiv double %i.ej, %i.da
  store double %i.ek, ptr %i.eh, align 8, !tbaa !210
  %i.el = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.el
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.el
  %i.eo = load double, ptr %i.en, align 8, !tbaa !210
  %i.ep = fdiv double %i.eo, %i.da
  store double %i.ep, ptr %i.em, align 8, !tbaa !210
  %i.eq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.eq
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.eq
  %i.et = load double, ptr %i.es, align 8, !tbaa !210
  %i.eu = fdiv double %i.et, %i.da
  store double %i.eu, ptr %i.er, align 8, !tbaa !210
  %i.ev = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ev, %.0.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !545

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.ew = icmp sgt i64 %i.dj, 1
  br i1 %i.ew, label %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i:             ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.ex = shufflevector <2 x double> %.sroa.8.32.vec.insert.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.ey = icmp slt i64 %i.dm, %i.dd
  br i1 %i.ey, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.ez = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i, %i.dl
  %i.fa = sub i64 %i.dd, %i.ez                    ; 3 uses
  %min.iters.check44 = icmp ult i64 %i.fa, 2
  br i1 %min.iters.check44, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader57, label %vector.memcheck41

vector.memcheck41:                                ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader
  %5 = ptrtoaddr ptr %i.d to i64
  %i.fb = sub i64 %i.de, %5
  %i.fc = add i64 %i.fb, -9
  %diff.check42 = icmp ult i64 %i.fc, 15
  br i1 %diff.check42, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader57, label %vector.ph45

vector.ph45:                                      ; preds = %vector.memcheck41
  %n.vec46 = and i64 %i.fa, -2                    ; 3 uses
  %i.fd = add i64 %i.dm, %n.vec46
  %broadcast.splatinsert47 = insertelement <2 x double> poison, double %i.da, i64 0
  %broadcast.splat48 = shufflevector <2 x double> %broadcast.splatinsert47, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph45
  %index50 = phi i64 [ 0, %vector.ph45 ], [ %index.next52, %vector.body49 ] ; 2 uses
  %i.fe = add i64 %i.dm, %index50                 ; 2 uses
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.fe
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.fe
  %wide.load51 = load <2 x double>, ptr %i.fg, align 8, !tbaa !210
  %i.fh = fdiv <2 x double> %wide.load51, %broadcast.splat48
  store <2 x double> %i.fh, ptr %i.ff, align 8, !tbaa !210
  %index.next52 = add nuw i64 %index50, 2         ; 2 uses
  %i.fi = icmp eq i64 %index.next52, %n.vec46
  br i1 %i.fi, label %middle.block53, label %vector.body49, !llvm.loop !546

middle.block53:                                   ; preds = %vector.body49
  %cmp.n54 = icmp eq i64 %i.fa, %n.vec46
  br i1 %cmp.n54, label %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader57

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader57:       ; preds = %vector.memcheck41, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block53
  %.05.i18.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.dm, %vector.memcheck41 ], [ %i.dm, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.fd, %middle.block53 ] ; 4 uses
  %i.fj = sub i64 %i.dd, %.05.i18.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter64 = and i64 %i.fj, 3                  ; 2 uses
  %lcmp.mod65.not = icmp eq i64 %xtraiter64, 0
  br i1 %lcmp.mod65.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader57, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.fo, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader57 ] ; 3 uses
  %prol.iter66 = phi i64 [ %prol.iter66.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader57 ]
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.db, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.prol
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.e, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.prol
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !210
  %i.fn = fdiv double %i.fm, %i.da
  store double %i.fn, ptr %i.fk, align 8, !tbaa !210
  %i.fo = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter66.next = add i64 %prol.iter66, 1     ; 2 uses
  %prol.iter66.cmp.not = icmp eq i64 %prol.iter66.next, %xtraiter64
  br i1 %prol.iter66.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !547

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit:     ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader57
  %.05.i18.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader57 ], [ %i.fo, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.fp = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.ph, %i.dd
  %i.fq = icmp ugt i64 %i.fp, -4
  br i1 %i.fq, label %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gk, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.db, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.e, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !210
  %i.fu = fdiv double %i.ft, %i.da
  store double %i.fu, ptr %i.fr, align 8, !tbaa !210
  %i.fv = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.fv
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.fv
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !210
  %i.fz = fdiv double %i.fy, %i.da
  store double %i.fz, ptr %i.fw, align 8, !tbaa !210
  %i.ga = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.ga
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ga
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !210
  %i.ge = fdiv double %i.gd, %i.da
  store double %i.ge, ptr %i.gb, align 8, !tbaa !210
  %i.gf = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.gf
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.gf
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !210
  %i.gj = fdiv double %i.gi, %i.da
  store double %i.gj, ptr %i.gg, align 8, !tbaa !210
  %i.gk = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.gk, %i.dd
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i, !llvm.loop !548

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gp, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.db, i64 %.021.i.i.i.i.i.i.i.i.i.i
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.e, i64 %.021.i.i.i.i.i.i.i.i.i.i
  %i.gn = load <2 x double>, ptr %i.gm, align 1, !tbaa !88
  %i.go = fdiv <2 x double> %i.gn, %i.ex
  store <2 x double> %i.go, ptr %i.gl, align 16, !tbaa !88
  %i.gp = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.gq = icmp slt i64 %i.gp, %i.dm
  br i1 %i.gq, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, !llvm.loop !549

_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i, %middle.block53, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.gr = load double, ptr %3, align 8, !tbaa !210 ; 2 uses
  %i.gs = fsub double %i.gr, %i.bq
  %i.gt = fdiv double %i.gs, %i.gr
  store double %i.gt, ptr %2, align 8, !tbaa !210
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE7setZeroEv.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #32

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal24selfadjoint_product_implINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi17ELb0ENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS2_INS2_IS4_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEELi0ELb1EE3runINS2_ISC_Lin1ELi1ELb0EEEEEvRT_RKS5_RKSJ_RKd(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(137) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load double, ptr %3, align 8, !tbaa !210
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load double, ptr %i.c, align 8, !tbaa !244
  %i.e = fmul double %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !208  ; 4 uses
  %i.h = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %i.h, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit39

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #42 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !29
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #45
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit39: ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !246    ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit39
  %i.k = shl nuw i64 %i.g, 3                      ; 2 uses
  %i.l = icmp samesign ult i64 %i.g, 16385
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = add nuw nsw i64 %i.k, 15
  %i.n = alloca i8, i64 %i.m, align 16            ; 2 uses
  br label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.e:                                             ; preds = %bb.c
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.k) #46 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.f:                                             ; preds = %bb.e
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #42 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !29
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #45
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.e, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit39, %bb.d
  %i.r = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit39 ], [ %i.n, %bb.d ], [ %i.o, %bb.e ] ; 2 uses
  %i.s = phi ptr [ %i.j, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit39 ], [ %i.n, %bb.d ], [ %i.o, %bb.e ]
  %i.t = icmp samesign ugt i64 %i.g, 16384        ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.v = load i64, ptr %i.u, align 8, !tbaa !208  ; 4 uses
  %i.w = icmp ugt i64 %i.v, 2305843009213693951
  br i1 %i.w, label %bb.g, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.g:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.x = tail call ptr @__cxa_allocate_exception(i64 8) #42 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.x, align 8, !tbaa !29
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #45
          to label %.noexc40 unwind label %bb.p

.noexc40:                                         ; preds = %bb.g
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !238  ; 2 uses
  %.not35 = icmp eq ptr %i.y, null
  br i1 %.not35, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.z = shl nuw i64 %i.v, 3                      ; 2 uses
  %i.aa = icmp samesign ult i64 %i.v, 16385
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = add nuw nsw i64 %i.z, 15
  %i.ac = alloca i8, i64 %i.ab, align 16          ; 2 uses
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ad = tail call noalias ptr @malloc(i64 noundef %i.z) #46 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = tail call ptr @__cxa_allocate_exception(i64 8) #42 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.af, align 8, !tbaa !29
  invoke void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #45
          to label %.noexc43 unwind label %bb.q

.noexc43:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.i, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit, %bb.j
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal22lhs_process_one_packetILi4ELl2ELl1EdddDv2_dS2_S2_S2_NS0_11gebp_traitsIddLb0ELb0ELi1ELi0EEENS0_16BlasLinearMapperIdlLi0ELi1EEENS0_16blas_data_mapperIdlLi0ELi0ELi1EEEEclERKS8_PKdSD_dllllllilllll:bb.a
  %.1306344 = phi <2 x double> [ %i.jv, %.lr.ph349 ], [ %i.ai, %._crit_edge ]
  %.1308343 = phi <2 x double> [ %i.jx, %.lr.ph349 ], [ %i.aj, %._crit_edge ]
  %.1310342 = phi <2 x double> [ %i.jz, %.lr.ph349 ], [ %i.ak, %._crit_edge ]
  %.1312341 = phi <2 x double> [ %i.kb, %.lr.ph349 ], [ %i.al, %._crit_edge ]
  tail call void asm sideeffect "#begin step of gebp micro kernel 1X4", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !991
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !992
  %i.je = load <2 x double>, ptr %.1125345, align 16, !tbaa !88 ; 4 uses
  %i.jf = load double, ptr %.1123346, align 1, !tbaa !88
  %i.jg = insertelement <2 x double> poison, double %i.jf, i64 0
  %i.jh = shufflevector <2 x double> %i.jg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ji = getelementptr inbounds nuw i8, ptr %.1123346, i64 8
  %i.jj = load double, ptr %i.ji, align 1, !tbaa !88
  %i.jk = insertelement <2 x double> poison, double %i.jj, i64 0
  %i.jl = shufflevector <2 x double> %i.jk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jm = getelementptr inbounds nuw i8, ptr %.1123346, i64 16
  %i.jn = load double, ptr %i.jm, align 1, !tbaa !88
  %i.jo = insertelement <2 x double> poison, double %i.jn, i64 0
  %i.jp = shufflevector <2 x double> %i.jo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jq = getelementptr inbounds nuw i8, ptr %.1123346, i64 24
  %i.jr = load double, ptr %i.jq, align 1, !tbaa !88
  %i.js = insertelement <2 x double> poison, double %i.jr, i64 0
  %i.jt = shufflevector <2 x double> %i.js, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ju = fmul <2 x double> %i.je, %i.jh
  %i.jv = fadd <2 x double> %.1306344, %i.ju      ; 2 uses
  %i.jw = fmul <2 x double> %i.je, %i.jl
  %i.jx = fadd <2 x double> %.1308343, %i.jw      ; 2 uses
  %i.jy = fmul <2 x double> %i.je, %i.jp
  %i.jz = fadd <2 x double> %.1310342, %i.jy      ; 2 uses
  %i.ka = fmul <2 x double> %i.je, %i.jt
  %i.kb = fadd <2 x double> %.1312341, %i.ka      ; 2 uses
  tail call void asm sideeffect "#end step of gebp micro kernel 1X4", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !993
  %i.kc = getelementptr inbounds nuw i8, ptr %.1123346, i64 32
  %i.kd = getelementptr inbounds nuw i8, ptr %.1125345, i64 16
  %i.ke = add i64 %.0120347, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ke, %15
  br i1 %exitcond.not, label %._crit_edge350, label %.lr.ph349, !llvm.loop !985

._crit_edge377:                                   ; preds = %._crit_edge371, %.preheader319
  %i.kf = add nsw i64 %.0127378, 2                ; 2 uses
  %i.kg = icmp slt i64 %i.kf, %6
  br i1 %i.kg, label %.preheader320, label %._crit_edge379, !llvm.loop !986

bb.c:                                             ; preds = %.lr.ph376, %._crit_edge371
  %.0119375 = phi i64 [ %16, %.lr.ph376 ], [ %i.ne, %._crit_edge371 ] ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %gep383, i32 0, i32 3, i32 1)
  %i.kh = load ptr, ptr %1, align 8, !tbaa !304
  %i.ki = load i64, ptr %i.c, align 8, !tbaa !305
  %i.kj = mul nsw i64 %i.ki, %.0119375
  %i.kk = getelementptr [8 x i8], ptr %i.kh, i64 %.0127378
  %i.kl = getelementptr [8 x i8], ptr %i.kk, i64 %i.kj ; 2 uses
  %i.km = mul nsw i64 %.0119375, %8
  %gep374 = getelementptr [8 x i8], ptr %invariant.gep373, i64 %i.km ; 2 uses
  br i1 %i.e, label %.lr.ph362, label %.preheader

.preheader:                                       ; preds = %.lr.ph362, %bb.c
  %.0313.lcssa = phi <2 x double> [ zeroinitializer, %bb.c ], [ %i.mw, %.lr.ph362 ] ; 2 uses
  %.0117.lcssa = phi ptr [ %gep383, %bb.c ], [ %i.my, %.lr.ph362 ]
  %.0116.lcssa = phi ptr [ %gep374, %bb.c ], [ %i.mx, %.lr.ph362 ]
  br i1 %i.f, label %.lr.ph370, label %._crit_edge371

.lr.ph362:                                        ; preds = %bb.c, %.lr.ph362
  %.0115360 = phi i64 [ %i.mz, %.lr.ph362 ], [ 0, %bb.c ]
  %.0116359 = phi ptr [ %i.mx, %.lr.ph362 ], [ %gep374, %bb.c ] ; 9 uses
  %.0117358 = phi ptr [ %i.my, %.lr.ph362 ], [ %gep383, %bb.c ] ; 9 uses
  %.0313357 = phi <2 x double> [ %i.mw, %.lr.ph362 ], [ zeroinitializer, %bb.c ]
  tail call void asm sideeffect "#begin gebp micro kernel 1/half/quarterX1", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !995
  tail call void asm sideeffect "#begin step of gebp micro kernel 1/half/quarterX1", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !996
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !997
  %i.kn = load <2 x double>, ptr %.0117358, align 1, !tbaa !88
  %i.ko = load double, ptr %.0116359, align 8, !tbaa !210
  %i.kp = insertelement <2 x double> poison, double %i.ko, i64 0
  %i.kq = shufflevector <2 x double> %i.kp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kr = fmul <2 x double> %i.kn, %i.kq
  %i.ks = fadd <2 x double> %.0313357, %i.kr
  tail call void asm sideeffect "#end step of gebp micro kernel 1/half/quarterX1", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !998
  tail call void asm sideeffect "#begin step of gebp micro kernel 1/half/quarterX1", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !999
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !1000
  %i.kt = getelementptr inbounds nuw i8, ptr %.0117358, i64 16
  %i.ku = load <2 x double>, ptr %i.kt, align 1, !tbaa !88
  %i.kv = getelementptr inbounds nuw i8, ptr %.0116359, i64 8
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !210
  %i.kx = insertelement <2 x double> poison, double %i.kw, i64 0
  %i.ky = shufflevector <2 x double> %i.kx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kz = fmul <2 x double> %i.ku, %i.ky
  %i.la = fadd <2 x double> %i.ks, %i.kz
  tail call void asm sideeffect "#end step of gebp micro kernel 1/half/quarterX1", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !1001
  tail call void asm sideeffect "#begin step of gebp micro kernel 1/half/quarterX1", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !1002
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !1003
  %i.lb = getelementptr inbounds nuw i8, ptr %.0117358, i64 32
  %i.lc = load <2 x double>, ptr %i.lb, align 1, !tbaa !88
  %i.ld = getelementptr inbounds nuw i8, ptr %.0116359, i64 16
  %i.le = load double, ptr %i.ld, align 8, !tbaa !210
  %i.lf = insertelement <2 x double> poison, double %i.le, i64 0
  %i.lg = shufflevector <2 x double> %i.lf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lh = fmul <2 x double> %i.lc, %i.lg
  %i.li = fadd <2 x double> %i.la, %i.lh
  tail call void asm sideeffect "#end step of gebp micro kernel 1/half/quarterX1", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !1004
  tail call void asm sideeffect "#begin step of gebp micro kernel 1/half/quarterX1", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !1005
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !1006
  %i.lj = getelementptr inbounds nuw i8, ptr %.0117358, i64 48
  %i.lk = load <2 x double>, ptr %i.lj, align 1, !tbaa !88
  %i.ll = getelementptr inbounds nuw i8, ptr %.0116359, i64 24
  %i.lm = load double, ptr %i.ll, align 8, !tbaa !210
  %i.ln = insertelement <2 x double> poison, double %i.lm, i64 0
  %i.lo = shufflevector <2 x double> %i.ln, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lp = fmul <2 x double> %i.lk, %i.lo
  %i.lq = fadd <2 x double> %i.li, %i.lp
  tail call void asm sideeffect "#end step of gebp micro kernel 1/half/quarterX1", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !1007
  tail call void asm sideeffect "#begin step of gebp micro kernel 1/half/quarterX1", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !1008
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !1009
  %i.lr = getelementptr inbounds nuw i8, ptr %.0117358, i64 64
  %i.ls = load <2 x double>, ptr %i.lr, align 1, !tbaa !88
  %i.lt = getelementptr inbounds nuw i8, ptr %.0116359, i64 32
  %i.lu = load double, ptr %i.lt, align 8, !tbaa !210
  %i.lv = insertelement <2 x double> poison, double %i.lu, i64 0
  %i.lw = shufflevector <2 x double> %i.lv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lx = fmul <2 x double> %i.ls, %i.lw
  %i.ly = fadd <2 x double> %i.lq, %i.lx
  tail call void asm sideeffect "#end step of gebp micro kernel 1/half/quarterX1", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !1010
  tail call void asm sideeffect "#begin step of gebp micro kernel 1/half/quarterX1", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !1011
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !1012
  %i.lz = getelementptr inbounds nuw i8, ptr %.0117358, i64 80
  %i.ma = load <2 x double>, ptr %i.lz, align 1, !tbaa !88
  %i.mb = getelementptr inbounds nuw i8, ptr %.0116359, i64 40
  %i.mc = load double, ptr %i.mb, align 8, !tbaa !210
  %i.md = insertelement <2 x double> poison, double %i.mc, i64 0
  %i.me = shufflevector <2 x double> %i.md, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mf = fmul <2 x double> %i.ma, %i.me
  %i.mg = fadd <2 x double> %i.ly, %i.mf
  tail call void asm sideeffect "#end step of gebp micro kernel 1/half/quarterX1", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !1013
  tail call void asm sideeffect "#begin step of gebp micro kernel 1/half/quarterX1", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !1014
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !1015
  %i.mh = getelementptr inbounds nuw i8, ptr %.0117358, i64 96
  %i.mi = load <2 x double>, ptr %i.mh, align 1, !tbaa !88
  %i.mj = getelementptr inbounds nuw i8, ptr %.0116359, i64 48
  %i.mk = load double, ptr %i.mj, align 8, !tbaa !210
  %i.ml = insertelement <2 x double> poison, double %i.mk, i64 0
  %i.mm = shufflevector <2 x double> %i.ml, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mn = fmul <2 x double> %i.mi, %i.mm
  %i.mo = fadd <2 x double> %i.mg, %i.mn
  tail call void asm sideeffect "#end step of gebp micro kernel 1/half/quarterX1", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !1016
  tail call void asm sideeffect "#begin step of gebp micro kernel 1/half/quarterX1", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !1017
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !1018
  %i.mp = getelementptr inbounds nuw i8, ptr %.0117358, i64 112
  %i.mq = load <2 x double>, ptr %i.mp, align 1, !tbaa !88
  %i.mr = getelementptr inbounds nuw i8, ptr %.0116359, i64 56
  %i.ms = load double, ptr %i.mr, align 8, !tbaa !210
  %i.mt = insertelement <2 x double> poison, double %i.ms, i64 0
  %i.mu = shufflevector <2 x double> %i.mt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mv = fmul <2 x double> %i.mq, %i.mu
  %i.mw = fadd <2 x double> %i.mo, %i.mv          ; 2 uses
  tail call void asm sideeffect "#end step of gebp micro kernel 1/half/quarterX1", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !1019
  %i.mx = getelementptr inbounds [8 x i8], ptr %.0116359, i64 %13 ; 2 uses
  %i.my = getelementptr inbounds i8, ptr %.0117358, i64 %.idx135 ; 2 uses
  tail call void asm sideeffect "#end gebp micro kernel 1/half/quarterX1", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !1020
  %i.mz = add nsw i64 %.0115360, %13              ; 2 uses
  %i.na = icmp slt i64 %i.mz, %12
  br i1 %i.na, label %.lr.ph362, label %.preheader, !llvm.loop !987

._crit_edge371:                                   ; preds = %.lr.ph370, %.preheader
  %.1314.lcssa = phi <2 x double> [ %.0313.lcssa, %.preheader ], [ %i.nk, %.lr.ph370 ]
  %i.nb = load <2 x double>, ptr %i.kl, align 1, !tbaa !88
  %i.nc = fmul <2 x double> %i.h, %.1314.lcssa
  %i.nd = fadd <2 x double> %i.nc, %i.nb
  store <2 x double> %i.nd, ptr %i.kl, align 1, !tbaa !88
  %i.ne = add i64 %.0119375, 1                    ; 2 uses
  %exitcond402.not = icmp eq i64 %i.ne, %14
  br i1 %exitcond402.not, label %._crit_edge377, label %bb.c, !llvm.loop !988

.lr.ph370:                                        ; preds = %.preheader, %.lr.ph370
  %.0369 = phi i64 [ %i.nn, %.lr.ph370 ], [ %12, %.preheader ]
  %.1368 = phi ptr [ %i.nl, %.lr.ph370 ], [ %.0116.lcssa, %.preheader ] ; 2 uses
  %.1118367 = phi ptr [ %i.nm, %.lr.ph370 ], [ %.0117.lcssa, %.preheader ] ; 2 uses
  %.1314366 = phi <2 x double> [ %i.nk, %.lr.ph370 ], [ %.0313.lcssa, %.preheader ]
  tail call void asm sideeffect "#begin step of gebp micro kernel 1/half/quarterX1", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !1021
  tail call void asm sideeffect "#Note: these asm comments work around bug 935!", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !1022
  %i.nf = load <2 x double>, ptr %.1118367, align 1, !tbaa !88
  %i.ng = load double, ptr %.1368, align 8, !tbaa !210
  %i.nh = insertelement <2 x double> poison, double %i.ng, i64 0
  %i.ni = shufflevector <2 x double> %i.nh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nj = fmul <2 x double> %i.nf, %i.ni
  %i.nk = fadd <2 x double> %.1314366, %i.nj      ; 2 uses
  tail call void asm sideeffect "#end step of gebp micro kernel 1/half/quarterX1", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !1023
  %i.nl = getelementptr inbounds nuw i8, ptr %.1368, i64 8
  %i.nm = getelementptr inbounds nuw i8, ptr %.1118367, i64 16
  %i.nn = add i64 %.0369, 1                       ; 2 uses
  %exitcond401.not = icmp eq i64 %i.nn, %15
  br i1 %exitcond401.not, label %._crit_edge371, label %.lr.ph370, !llvm.loop !989
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #37

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_14TriangularViewINS2_IdLin1ELin1ELi1ELin1ELin1EEELj2EEES3_Li0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISD_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %3) local_unnamed_addr #34 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::Matrix", align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #42
  call void @_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS_14TriangularViewINS0_IdLin1ELin1ELi1ELin1ELin1EEELj2EEES1_Li0EEEEERKT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.a = load ptr, ptr %4, align 8, !tbaa !212    ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !214  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !215  ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !214
  %.not.i.i.i.i = icmp eq i64 %i.g, %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %.not8.i.i.i.i = icmp eq i64 %i.i, %i.e
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i, i1 %.not8.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %i.c, 0
  %i.k = icmp eq i64 %i.e, 0
  %or.cond.i.i.i.i.i.i = or i1 %i.j, %i.k
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = sdiv i64 9223372036854775807, %i.e
  %i.m = icmp sgt i64 %i.c, %i.l
  br i1 %i.m, label %.noexc.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.c
  %i.n = call ptr @__cxa_allocate_exception(i64 8) #42 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !29
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #45
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.o = mul nsw i64 %i.e, %i.c
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.o, i64 noundef %i.c, i64 noundef %i.e)
          to label %.noexc4 unwind label %bb.e

.noexc4:                                          ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i
  %.pre.i.i.i = load i64, ptr %i.f, align 8, !tbaa !214
  %.pre20.i.i.i = load i64, ptr %i.h, align 8, !tbaa !215
  br label %bb.d

bb.d:                                             ; preds = %.noexc4, %bb.a
  %i.p = phi i64 [ %.pre20.i.i.i, %.noexc4 ], [ %i.e, %bb.a ]
  %i.q = phi i64 [ %.pre.i.i.i, %.noexc4 ], [ %i.c, %bb.a ]
  %i.r = load ptr, ptr %0, align 8, !tbaa !212    ; 8 uses
  %i.s = mul nsw i64 %i.q, %i.p                   ; 7 uses
  %i.t = sdiv i64 %i.s, 2
  %i.u = shl nsw i64 %i.t, 1                      ; 6 uses
  %i.v = icmp sgt i64 %i.s, 1
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.d
  %i.w = icmp slt i64 %i.u, %i.s
  br i1 %i.w, label %.lr.ph.i.i.i.i.i.preheader, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %._crit_edge.i.i.i.i
  %i.x = sub i64 %i.s, %i.u                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.x, 8
  %5 = ptrtoaddr ptr %i.r to i64
  %6 = ptrtoaddr ptr %i.a to i64
  %i.y = sub i64 %6, %5
  %diff.check = icmp ugt i64 %i.y, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.x, -4                       ; 3 uses
  %i.z = add i64 %i.u, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = add i64 %i.u, %index                    ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load = load <2 x double>, ptr %i.ac, align 8, !tbaa !210
  %wide.load10 = load <2 x double>, ptr %i.ad, align 8, !tbaa !210
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <2 x double> %wide.load, ptr %i.ab, align 8, !tbaa !210
  store <2 x double> %wide.load10, ptr %i.ae, align 8, !tbaa !210
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !1024

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit, label %.lr.ph.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.preheader11:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.ph = phi i64 [ %i.u, %.lr.ph.i.i.i.i.i.preheader ], [ %i.z, %middle.block ] ; 4 uses
  %i.ag = sub i64 %i.s, %.05.i.i.i.i.i.ph
  %xtraiter = and i64 %i.ag, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i.prol
  %.05.i.i.i.i.i.prol = phi i64 [ %i.ak, %.lr.ph.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader11 ]
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.r, i64 %.05.i.i.i.i.i.prol
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.05.i.i.i.i.i.prol
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !210
  store double %i.aj, ptr %i.ah, align 8, !tbaa !210
  %i.ak = add nsw i64 %.05.i.i.i.i.i.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !1025

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader11
  %.05.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ], [ %i.ak, %.lr.ph.i.i.i.i.i.prol ]
  %i.al = sub i64 %.05.i.i.i.i.i.ph, %i.s
  %i.am = icmp ugt i64 %i.al, -4
  br i1 %i.am, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi i64 [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %.05.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.r, i64 %.05.i.i.i.i.i
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.05.i.i.i.i.i
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !210
  store double %i.ap, ptr %i.an, align 8, !tbaa !210
  %i.aq = add nsw i64 %.05.i.i.i.i.i, 1           ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.aq
  %i.as = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.aq
  %i.at = load double, ptr %i.as, align 8, !tbaa !210
  store double %i.at, ptr %i.ar, align 8, !tbaa !210
  %i.au = add nsw i64 %.05.i.i.i.i.i, 2           ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.au
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.au
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !210
  store double %i.ax, ptr %i.av, align 8, !tbaa !210
  %i.ay = add nsw i64 %.05.i.i.i.i.i, 3           ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ay
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ay
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !210
  store double %i.bb, ptr %i.az, align 8, !tbaa !210
  %i.bc = add nsw i64 %.05.i.i.i.i.i, 4           ; 2 uses
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.bc, %i.s
  br i1 %exitcond.not.i.i.i.i.i.3, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1026

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi i64 [ %i.bg, %.lr.ph.i.i.i.i ], [ 0, %bb.d ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.011.i.i.i.i
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.011.i.i.i.i
  %i.bf = load <2 x double>, ptr %i.be, align 16, !tbaa !88
  store <2 x double> %i.bf, ptr %i.bd, align 16, !tbaa !88
  %i.bg = add nuw nsw i64 %.011.i.i.i.i, 2        ; 2 uses
  %i.bh = icmp slt i64 %i.bg, %i.u
  br i1 %i.bh, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !15

_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i
  %i.bi = load ptr, ptr %4, align 8, !tbaa !212
  call void @free(ptr noundef %i.bi) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #42
  ret void

bb.e:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i, %.noexc.i.i.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  %i.bk = load ptr, ptr %4, align 8, !tbaa !212
  call void @free(ptr noundef %i.bk) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #42
  resume { ptr, i32 } %i.bj
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS_14TriangularViewINS0_IdLin1ELin1ELi1ELin1ELin1EEELj2EEES1_Li0EEEEERKT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #28 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = load ptr, ptr %1, align 8, !tbaa !1028, !nonnull !102, !align !242
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !290  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1030, !nonnull !102, !align !242 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !215  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not.i.i.i.i = icmp eq i64 %i.d, 0             ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not11.i.i.i.i = icmp eq i64 %i.h, 0           ; 2 uses
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i, i1 %.not11.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_7ProductINS_14TriangularViewINS1_IdLin1ELin1ELi1ELin1ELin1EEELj2EEES2_Li0EEEEERS2_RKNS_9DenseBaseIT_EE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %or.cond.i.i.i.i.i.i = or i1 %.not.i.i.i.i, %.not11.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = sdiv i64 9223372036854775807, %i.h
  %i.l = icmp sgt i64 %i.d, %i.k
  br i1 %i.l, label %bb.d, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #42 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !29
  invoke void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #45
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.n = mul nsw i64 %i.h, %i.d
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.n, i64 noundef %i.d, i64 noundef %i.h)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !1030 ; 2 uses
  %.pre13.i.i.i.i = load i64, ptr %i.i, align 8, !tbaa !214
  %.pre14.i.i.i.i = load i64, ptr %i.j, align 8, !tbaa !215
  %i.o = mul nsw i64 %.pre13.i.i.i.i, %.pre14.i.i.i.i ; 2 uses
  %i.p = icmp slt i64 %i.o, 1
  br i1 %i.p, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_7ProductINS_14TriangularViewINS1_IdLin1ELin1ELi1ELin1ELin1EEELj2EEES2_Li0EEEEERS2_RKNS_9DenseBaseIT_EE.exit.i, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.i.i.i.i.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.i.i.i.i.i: ; preds = %bb.e
  %i.q = load ptr, ptr %0, align 8, !tbaa !212
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.o, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.q, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !210
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_7ProductINS_14TriangularViewINS1_IdLin1ELin1ELi1ELin1ELin1EEELj2EEES2_Li0EEEEERS2_RKNS_9DenseBaseIT_EE.exit.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_7ProductINS_14TriangularViewINS1_IdLin1ELin1ELi1ELin1ELin1EEELj2EEES2_Li0EEEEERS2_RKNS_9DenseBaseIT_EE.exit.i: ; preds = %bb.a, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.i.i.i.i.i, %bb.e
  %i.r = phi ptr [ %.pre.i.i.i.i, %bb.e ], [ %.pre.i.i.i.i, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.i.i.i.i.i ], [ %i.f, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #42
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !210
  %i.s = load ptr, ptr %1, align 8, !tbaa !1028, !nonnull !102, !align !242
  invoke void @_ZN5Eigen8internal23triangular_product_implILi2ELb1ENS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELb0ENS2_IdLin1ELin1ELi0ELin1ELin1EEELb0EE3runIS4_EEvRT_RKS3_RKS4_RKNS7_6ScalarE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_7ProductINS_14TriangularViewINS1_IdLin1ELin1ELi1ELin1ELin1EEELj2EEES2_Li0EEEEERS2_RKNS_9DenseBaseIT_EE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #42
  ret void

bb.g:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_7ProductINS_14TriangularViewINS1_IdLin1ELin1ELi1ELin1ELin1EEELj2EEES2_Li0EEEEERS2_RKNS_9DenseBaseIT_EE.exit.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i, %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %0, align 8, !tbaa !212
  call void @free(ptr noundef %i.u) #42
  resume { ptr, i32 } %i.t
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal23triangular_product_implILi2ELb1ENS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELb0ENS2_IdLin1ELin1ELi0ELin1ELin1EEELb0EE3runIS4_EEvRT_RKS3_RKS4_RKNS7_6ScalarE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %4 = alloca %"class.Eigen::internal::gemm_blocking_space", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #42
  %i.c = load double, ptr %3, align 8, !tbaa !210
  store double %i.c, ptr %i.b, align 8, !tbaa !210
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !290
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !291  ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.g, i64 %i.e) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !215  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #42
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i64 %.sroa.speculated, ptr %i.j, align 8, !tbaa !293
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN5Eigen8internal32product_triangular_matrix_matrixIdlLi2ELb1ELi1ELb0ELi0ELb0ELi0ELi1ELi0EE3runElllPKdlS4_lPdllRS3_RNS0_15level3_blockingIddEE:bb.a
  %i.hg = getelementptr [8 x i8], ptr %i.hf, i64 %i.he
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !210
  store double %i.hh, ptr %i.bz, align 8, !tbaa !210
  %i.hi = mul nsw i64 %i.ct, %4
  %i.hj = getelementptr [8 x i8], ptr %i.hf, i64 %i.hi
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !210
  store double %i.hk, ptr %i.by, align 8, !tbaa !210
  %i.hl = add nsw i64 %i.ct, 1
  %i.hm = mul nsw i64 %i.hl, %4
  %i.hn = getelementptr [8 x i8], ptr %i.hf, i64 %i.hm
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !210
  store double %i.ho, ptr %i.ca, align 8, !tbaa !210
  %i.hp = add nsw i64 %i.ct, 2
  %i.hq = mul nsw i64 %i.hp, %4
  %i.hr = getelementptr [8 x i8], ptr %i.hf, i64 %i.hq
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !210
  store double %i.hs, ptr %i.cb, align 8, !tbaa !210
  %i.ht = add nsw i64 %i.ct, 3
  %i.hu = mul nsw i64 %i.ht, %4
  %i.hv = getelementptr [8 x i8], ptr %i.hf, i64 %i.hu
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !210
  store double %i.hw, ptr %i.cc, align 8, !tbaa !210
  %i.hx = add nsw i64 %i.ct, 4
  %i.hy = mul nsw i64 %i.hx, %4
  %i.hz = getelementptr [8 x i8], ptr %i.hf, i64 %i.hy
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !210
  store double %i.ia, ptr %i.cd, align 8, !tbaa !210
  %i.ib = add nsw i64 %i.ct, 5
  %i.ic = mul nsw i64 %i.ib, %4
  %i.id = getelementptr [8 x i8], ptr %i.hf, i64 %i.ic
  %i.ie = load double, ptr %i.id, align 8, !tbaa !210
  store double %i.ie, ptr %i.ce, align 8, !tbaa !210
  %i.if = add nsw i64 %i.ct, 6
  %i.ig = mul nsw i64 %i.if, %4
  %i.ih = getelementptr [8 x i8], ptr %i.hf, i64 %i.ig
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !210
  store double %i.ii, ptr %i.cf, align 8, !tbaa !210
  br label %._crit_edge309

._crit_edge309:                                   ; preds = %.lr.ph308, %.lr.ph308.1, %.lr.ph308.2, %.lr.ph308.3, %.lr.ph308.4, %.lr.ph308.5, %.lr.ph308.6, %.lr.ph308.7, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #42
  store ptr %12, ptr %17, align 8, !tbaa !284
  store i64 8, ptr %i.ar, align 8, !tbaa !285
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi1EEELi4ELi2EDv2_dLi1ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 noundef %.sroa.speculated201, i64 noundef %.sroa.speculated201, i64 noundef 0, i64 noundef 0)
          to label %bb.u unwind label %bb.z

bb.u:                                             ; preds = %._crit_edge309
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #42
  %i.ij = getelementptr [8 x i8], ptr %7, i64 %i.ct
  store ptr %i.ij, ptr %18, align 8
  store i64 %9, ptr %i.as, align 8
  %i.ik = load double, ptr %10, align 8, !tbaa !210
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull %i.r, ptr noundef nonnull %i.af, i64 noundef %.sroa.speculated201, i64 noundef %.sroa.speculated201, i64 noundef %1, double noundef %i.ik, i64 noundef %.sroa.speculated201, i64 noundef %.0122, i64 noundef 0, i64 noundef %.0121310)
          to label %bb.v unwind label %bb.aa

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #42
  %i.il = icmp sgt i64 %.0121310, 0
  br i1 %i.il, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #42
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ct
  store ptr %gep, ptr %19, align 8
  store i64 %4, ptr %i.at, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi1EEELi4ELi2EDv2_dLi1ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %19, i64 noundef %.sroa.speculated201, i64 noundef %.0121310, i64 noundef 0, i64 noundef 0)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #42
  store ptr %i.cq, ptr %20, align 8
  store i64 %9, ptr %i.au, align 8
  %i.im = load double, ptr %10, align 8, !tbaa !210
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull %i.r, ptr noundef nonnull %i.af, i64 noundef %.0121310, i64 noundef %.sroa.speculated201, i64 noundef %1, double noundef %i.im, i64 noundef %.sroa.speculated201, i64 noundef %.0122, i64 noundef 0, i64 noundef %.0121310)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #42
  br label %bb.ad

bb.z:                                             ; preds = %._crit_edge309
  %i.in = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #42
  br label %bb.aj

bb.aa:                                            ; preds = %bb.u
  %i.io = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #42
  br label %bb.aj

bb.ab:                                            ; preds = %bb.w
  %i.ip = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #42
  br label %bb.aj

bb.ac:                                            ; preds = %bb.x
  %i.iq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #42
  br label %bb.aj

bb.ad:                                            ; preds = %bb.y, %bb.v
  %i.ir = add nsw i64 %.0121310, %.sroa.speculated232 ; 2 uses
  %i.is = icmp slt i64 %i.ir, %.0122
  %indvars.iv.next = sub i64 %indvars.iv, %.sroa.speculated232
  br i1 %i.is, label %bb.t, label %.loopexit, !llvm.loop !1031

.loopexit:                                        ; preds = %bb.ad, %bb.r
  %.sroa.speculated210 = call i64 @llvm.smin.i64(i64 %.sroa.speculated288, i64 %.0123316) ; 3 uses
  %i.it = icmp sgt i64 %.sroa.speculated210, 0
  br i1 %i.it, label %.lr.ph314, label %._crit_edge315

.lr.ph314:                                        ; preds = %.loopexit
  %i.iu = getelementptr [8 x i8], ptr %3, i64 %.0123316
  br label %bb.ae

._crit_edge315:                                   ; preds = %bb.ag, %.loopexit
  %i.iv = add nsw i64 %.1, %i.b                   ; 2 uses
  %i.iw = icmp slt i64 %i.iv, %2
  br i1 %i.iw, label %bb.q, label %._crit_edge319, !llvm.loop !1032

bb.ae:                                            ; preds = %.lr.ph314, %bb.ag
  %.0312 = phi i64 [ 0, %.lr.ph314 ], [ %i.ix, %bb.ag ] ; 4 uses
  %i.ix = add nsw i64 %.0312, %.sroa.speculated238 ; 3 uses
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %.sroa.speculated210, i64 %i.ix)
  %i.iy = sub nsw i64 %.sroa.speculated, %.0312   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #42
  %i.iz = mul nsw i64 %.0312, %4
  %i.ja = getelementptr [8 x i8], ptr %i.iu, i64 %i.iz
  store ptr %i.ja, ptr %22, align 8
  store i64 %4, ptr %i.av, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi1EEELi4ELi2EDv2_dLi1ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %21, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %22, i64 noundef %.0122, i64 noundef %i.iy, i64 noundef 0, i64 noundef 0)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #42
  %i.jb = getelementptr [8 x i8], ptr %7, i64 %.0312
  store ptr %i.jb, ptr %23, align 8
  store i64 %9, ptr %i.aw, align 8
  %i.jc = load double, ptr %10, align 8, !tbaa !210
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull %i.r, ptr noundef nonnull %i.af, i64 noundef %i.iy, i64 noundef %.0122, i64 noundef %1, double noundef %i.jc, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #42
  %i.jd = icmp slt i64 %i.ix, %.sroa.speculated210
  br i1 %i.jd, label %bb.ae, label %._crit_edge315, !llvm.loop !1033

bb.ah:                                            ; preds = %bb.ae
  %i.je = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #42
  br label %bb.aj

bb.ai:                                            ; preds = %bb.af
  %i.jf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #42
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %bb.z, %bb.aa, %bb.ac, %bb.ab, %bb.s
  %.pn146.pn.pn = phi { ptr, i32 } [ %i.cr, %bb.s ], [ %i.ip, %bb.ab ], [ %i.in, %bb.z ], [ %i.je, %bb.ah ], [ %i.io, %bb.aa ], [ %i.jf, %bb.ai ], [ %i.iq, %bb.ac ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #42
  br i1 %i.ag, label %bb.ak, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit195

bb.ak:                                            ; preds = %bb.aj
  call void @free(ptr noundef %i.ae) #42
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit195

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit195: ; preds = %bb.aj, %bb.ak, %bb.p, %bb.o
  %.pn146.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cg, %bb.o ], [ %i.ch, %bb.p ], [ %.pn146.pn.pn, %bb.ak ], [ %.pn146.pn.pn, %bb.aj ]
  br i1 %i.s, label %bb.al, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit196

bb.al:                                            ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit195
  call void @free(ptr noundef %i.q) #42
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit196

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit196: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit195, %bb.al
  resume { ptr, i32 } %.pn146.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_14TriangularViewIKNS_9TransposeIKNS2_IdLin1ELin1ELi1ELin1ELin1EEEEELj1EEES3_Li0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISH_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %3) local_unnamed_addr #34 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::Matrix", align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #42
  call void @_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS_14TriangularViewIKNS_9TransposeIKNS0_IdLin1ELin1ELi1ELin1ELin1EEEEELj1EEES1_Li0EEEEERKT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.a = load ptr, ptr %4, align 8, !tbaa !212    ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !214  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !215  ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !214
  %.not.i.i.i.i = icmp eq i64 %i.g, %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %.not8.i.i.i.i = icmp eq i64 %i.i, %i.e
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i, i1 %.not8.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %i.c, 0
  %i.k = icmp eq i64 %i.e, 0
  %or.cond.i.i.i.i.i.i = or i1 %i.j, %i.k
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = sdiv i64 9223372036854775807, %i.e
  %i.m = icmp sgt i64 %i.c, %i.l
  br i1 %i.m, label %.noexc.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.c
  %i.n = call ptr @__cxa_allocate_exception(i64 8) #42 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !29
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #45
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.o = mul nsw i64 %i.e, %i.c
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.o, i64 noundef %i.c, i64 noundef %i.e)
          to label %.noexc4 unwind label %bb.e

.noexc4:                                          ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i
  %.pre.i.i.i = load i64, ptr %i.f, align 8, !tbaa !214
  %.pre20.i.i.i = load i64, ptr %i.h, align 8, !tbaa !215
  br label %bb.d

bb.d:                                             ; preds = %.noexc4, %bb.a
  %i.p = phi i64 [ %.pre20.i.i.i, %.noexc4 ], [ %i.e, %bb.a ]
  %i.q = phi i64 [ %.pre.i.i.i, %.noexc4 ], [ %i.c, %bb.a ]
  %i.r = load ptr, ptr %0, align 8, !tbaa !212    ; 8 uses
  %i.s = mul nsw i64 %i.q, %i.p                   ; 7 uses
  %i.t = sdiv i64 %i.s, 2
  %i.u = shl nsw i64 %i.t, 1                      ; 6 uses
  %i.v = icmp sgt i64 %i.s, 1
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.d
  %i.w = icmp slt i64 %i.u, %i.s
  br i1 %i.w, label %.lr.ph.i.i.i.i.i.preheader, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %._crit_edge.i.i.i.i
  %i.x = sub i64 %i.s, %i.u                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.x, 8
  %5 = ptrtoaddr ptr %i.r to i64
  %6 = ptrtoaddr ptr %i.a to i64
  %i.y = sub i64 %6, %5
  %diff.check = icmp ugt i64 %i.y, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.x, -4                       ; 3 uses
  %i.z = add i64 %i.u, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = add i64 %i.u, %index                    ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load = load <2 x double>, ptr %i.ac, align 8, !tbaa !210
  %wide.load10 = load <2 x double>, ptr %i.ad, align 8, !tbaa !210
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <2 x double> %wide.load, ptr %i.ab, align 8, !tbaa !210
  store <2 x double> %wide.load10, ptr %i.ae, align 8, !tbaa !210
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !1034

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit, label %.lr.ph.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.preheader11:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.ph = phi i64 [ %i.u, %.lr.ph.i.i.i.i.i.preheader ], [ %i.z, %middle.block ] ; 4 uses
  %i.ag = sub i64 %i.s, %.05.i.i.i.i.i.ph
  %xtraiter = and i64 %i.ag, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i.prol
  %.05.i.i.i.i.i.prol = phi i64 [ %i.ak, %.lr.ph.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader11 ]
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.r, i64 %.05.i.i.i.i.i.prol
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.05.i.i.i.i.i.prol
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !210
  store double %i.aj, ptr %i.ah, align 8, !tbaa !210
  %i.ak = add nsw i64 %.05.i.i.i.i.i.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !1035

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader11
  %.05.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ], [ %i.ak, %.lr.ph.i.i.i.i.i.prol ]
  %i.al = sub i64 %.05.i.i.i.i.i.ph, %i.s
  %i.am = icmp ugt i64 %i.al, -4
  br i1 %i.am, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi i64 [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %.05.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.r, i64 %.05.i.i.i.i.i
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.05.i.i.i.i.i
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !210
  store double %i.ap, ptr %i.an, align 8, !tbaa !210
  %i.aq = add nsw i64 %.05.i.i.i.i.i, 1           ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.aq
  %i.as = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.aq
  %i.at = load double, ptr %i.as, align 8, !tbaa !210
  store double %i.at, ptr %i.ar, align 8, !tbaa !210
  %i.au = add nsw i64 %.05.i.i.i.i.i, 2           ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.au
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.au
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !210
  store double %i.ax, ptr %i.av, align 8, !tbaa !210
  %i.ay = add nsw i64 %.05.i.i.i.i.i, 3           ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ay
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ay
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !210
  store double %i.bb, ptr %i.az, align 8, !tbaa !210
  %i.bc = add nsw i64 %.05.i.i.i.i.i, 4           ; 2 uses
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.bc, %i.s
  br i1 %exitcond.not.i.i.i.i.i.3, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1036

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi i64 [ %i.bg, %.lr.ph.i.i.i.i ], [ 0, %bb.d ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.011.i.i.i.i
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.011.i.i.i.i
  %i.bf = load <2 x double>, ptr %i.be, align 16, !tbaa !88
  store <2 x double> %i.bf, ptr %i.bd, align 16, !tbaa !88
  %i.bg = add nuw nsw i64 %.011.i.i.i.i, 2        ; 2 uses
  %i.bh = icmp slt i64 %i.bg, %i.u
  br i1 %i.bh, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !15

_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i
  %i.bi = load ptr, ptr %4, align 8, !tbaa !212
  call void @free(ptr noundef %i.bi) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #42
  ret void

bb.e:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i, %.noexc.i.i.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  %i.bk = load ptr, ptr %4, align 8, !tbaa !212
  call void @free(ptr noundef %i.bk) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #42
  resume { ptr, i32 } %i.bj
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS_14TriangularViewIKNS_9TransposeIKNS0_IdLin1ELin1ELi1ELin1ELin1EEEEELj1EEES1_Li0EEEEERKT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #28 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = load ptr, ptr %1, align 8, !tbaa !308, !nonnull !102, !align !242
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !291  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1039, !nonnull !102, !align !242 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !215  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not.i.i.i.i = icmp eq i64 %i.d, 0             ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not11.i.i.i.i = icmp eq i64 %i.h, 0           ; 2 uses
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i, i1 %.not11.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_7ProductINS_14TriangularViewIKNS_9TransposeIKNS1_IdLin1ELin1ELi1ELin1ELin1EEEEELj1EEES2_Li0EEEEERS2_RKNS_9DenseBaseIT_EE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %or.cond.i.i.i.i.i.i = or i1 %.not.i.i.i.i, %.not11.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = sdiv i64 9223372036854775807, %i.h
  %i.l = icmp sgt i64 %i.d, %i.k
  br i1 %i.l, label %bb.d, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #42 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !29
  invoke void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #45
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.n = mul nsw i64 %i.h, %i.d
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.n, i64 noundef %i.d, i64 noundef %i.h)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !1039 ; 2 uses
  %.pre13.i.i.i.i = load i64, ptr %i.i, align 8, !tbaa !214
  %.pre14.i.i.i.i = load i64, ptr %i.j, align 8, !tbaa !215
  %i.o = mul nsw i64 %.pre13.i.i.i.i, %.pre14.i.i.i.i ; 2 uses
  %i.p = icmp slt i64 %i.o, 1
  br i1 %i.p, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_7ProductINS_14TriangularViewIKNS_9TransposeIKNS1_IdLin1ELin1ELi1ELin1ELin1EEEEELj1EEES2_Li0EEEEERS2_RKNS_9DenseBaseIT_EE.exit.i, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.i.i.i.i.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.i.i.i.i.i: ; preds = %bb.e
  %i.q = load ptr, ptr %0, align 8, !tbaa !212
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.o, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.q, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !210
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_7ProductINS_14TriangularViewIKNS_9TransposeIKNS1_IdLin1ELin1ELi1ELin1ELin1EEEEELj1EEES2_Li0EEEEERS2_RKNS_9DenseBaseIT_EE.exit.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_7ProductINS_14TriangularViewIKNS_9TransposeIKNS1_IdLin1ELin1ELi1ELin1ELin1EEEEELj1EEES2_Li0EEEEERS2_RKNS_9DenseBaseIT_EE.exit.i: ; preds = %bb.a, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.i.i.i.i.i, %bb.e
  %i.r = phi ptr [ %.pre.i.i.i.i, %bb.e ], [ %.pre.i.i.i.i, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.i.i.i.i.i ], [ %i.f, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #42
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !210
  invoke void @_ZN5Eigen8internal23triangular_product_implILi1ELb1EKNS_9TransposeIKNS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEEELb0ENS3_IdLin1ELin1ELi0ELin1ELin1EEELb0EE3runIS8_EEvRT_RS7_RKS8_RKNSB_6ScalarE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_7ProductINS_14TriangularViewIKNS_9TransposeIKNS1_IdLin1ELin1ELi1ELin1ELin1EEEEELj1EEES2_Li0EEEEERS2_RKNS_9DenseBaseIT_EE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #42
  ret void

bb.g:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_7ProductINS_14TriangularViewIKNS_9TransposeIKNS1_IdLin1ELin1ELi1ELin1ELin1EEEEELj1EEES2_Li0EEEEERS2_RKNS_9DenseBaseIT_EE.exit.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i, %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %0, align 8, !tbaa !212
  call void @free(ptr noundef %i.t) #42
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal23triangular_product_implILi1ELb1EKNS_9TransposeIKNS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEEELb0ENS3_IdLin1ELin1ELi0ELin1ELin1EEELb0EE3runIS8_EEvRT_RS7_RKS8_RKNSB_6ScalarE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %4 = alloca %"class.Eigen::internal::gemm_blocking_space", align 8 ; 14 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !308, !nonnull !102, !align !242 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #42
  %i.d = load double, ptr %3, align 8, !tbaa !210
  store double %i.d, ptr %i.b, align 8, !tbaa !210
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !291  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !215  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !290
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.f, i64 %i.j) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #42
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i64 %i.f, ptr %i.k, align 8, !tbaa !293
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
end_hunk_3
