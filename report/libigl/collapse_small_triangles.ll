Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/collapse_small_triangles?download=true
inline.NumInlined: 399
inline.NumDeleted: 244
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN3igl24collapse_small_trianglesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES4_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EEdRNS1_15PlainObjectBaseIT1_EE:bb.a

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EENS6_6ScalarERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %5, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.c = fmul double %2, 2.000000e+00
  %i.d = fmul double %i.c, %i.a
  %i.e = fmul double %i.a, %i.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !14
  %i.h = add nsw i64 %i.g, -1
  invoke void @_ZN3igl5colonIiilEEN5Eigen6MatrixIT_Lin1ELi1ELi0ELin1ELi1EEET0_T1_(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix.18") align 8 %7, i32 noundef 0, i64 noundef %i.h)
          to label %.preheader157 unwind label %bb.h

.preheader157:                                    ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !17   ; 4 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader157
  %i.l = load ptr, ptr %6, align 8, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = load ptr, ptr %7, align 8                ; 2 uses
  br label %bb.i

._crit_edge.loopexit:                             ; preds = %bb.l
  %i.o = icmp eq i32 %.199, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader157
  %.098.lcssa = phi i1 [ true, %.preheader157 ], [ %i.o, %._crit_edge.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IS1_EERKNS_9EigenBaseIT_EE.exit.preheader unwind label %bb.s

_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IS1_EERKNS_9EigenBaseIT_EE.exit.preheader: ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !17   ; 11 uses
  %i.r = icmp sgt i64 %i.q, 0
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !18   ; 8 uses
  br i1 %i.r, label %.preheader154.lr.ph, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IS1_EERKNS_9EigenBaseIT_EE.exit._crit_edge.split

.preheader154.lr.ph:                              ; preds = %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IS1_EERKNS_9EigenBaseIT_EE.exit.preheader
  %i.u = icmp sgt i64 %i.t, 0
  %i.v = load ptr, ptr %8, align 8
  %i.w = load ptr, ptr %7, align 8                ; 5 uses
  br i1 %i.u, label %.preheader154.preheader, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IS1_EERKNS_9EigenBaseIT_EE.exit._crit_edge.split

.preheader154.preheader:                          ; preds = %.preheader154.lr.ph
  %xtraiter = and i64 %i.t, 3                     ; 3 uses
  %i.x = icmp ult i64 %i.t, 4
  %unroll_iter = and i64 %i.t, 9223372036854775804
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod300 = icmp ne i64 %xtraiter, 0
  br label %.preheader154

bb.e:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %4, align 8, !tbaa !13
  call void @free(ptr noundef %i.z) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.ag

bb.f:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.g:                                             ; preds = %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.h:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.i:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 4 uses
  %.098165 = phi i32 [ 0, %.lr.ph ], [ %.199, %bb.l ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !58
  %i.af = fcmp olt double %i.ae, %i.e
  br i1 %i.af, label %.preheader155, label %bb.l

.preheader155:                                    ; preds = %bb.i
  %i.ag = load ptr, ptr %5, align 8
  %i.ah = load i64, ptr %i.m, align 8             ; 3 uses
  %i.ai = getelementptr [8 x i8], ptr %i.ag, i64 %indvars.iv ; 4 uses
  %.pre = load double, ptr %i.ai, align 8, !tbaa !58 ; 4 uses
  %i.aj = getelementptr [8 x i8], ptr %i.ai, i64 %i.ah
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !58 ; 4 uses
  %i.al = fcmp olt double %i.ak, %.pre            ; 2 uses
  %.196.1 = select i1 %i.al, double %i.ak, double %.pre
  %.194.1 = zext i1 %i.al to i32
  %.idx = shl i64 %i.ah, 4
  %i.am = getelementptr i8, ptr %i.ai, i64 %.idx
  %i.an = load double, ptr %i.am, align 8, !tbaa !58
  %i.ao = fcmp olt double %i.an, %.196.1
  %.194.2 = select i1 %i.ao, i32 2, i32 %.194.1   ; 4 uses
  %i.ap = fcmp ogt double %i.ak, %.pre            ; 2 uses
  %.191.1 = select i1 %i.ap, double %i.ak, double %.pre
  %.189.1 = zext i1 %i.ap to i32
  %.idx261 = shl i64 %i.ah, 4
  %i.aq = getelementptr i8, ptr %i.ai, i64 %.idx261
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !58
  %i.as = fcmp ogt double %i.ar, %.191.1
  %.189.2 = select i1 %i.as, i32 2, i32 %.189.1   ; 4 uses
  %i.at = icmp eq i32 %.194.2, %.189.2
  %i.au = add nuw nsw i32 %.194.2, 1              ; 2 uses
  %i.av = icmp eq i32 %i.au, 3
  %i.aw = select i1 %i.av, i32 0, i32 %i.au       ; 3 uses
  br i1 %i.at, label %.thread, label %bb.j

bb.j:                                             ; preds = %.preheader155
  %i.ax = icmp eq i32 %i.aw, %.189.2
  br i1 %i.ax, label %.thread, label %bb.k

.thread:                                          ; preds = %.preheader155, %bb.j
  %i.ay = phi i32 [ %.189.2, %bb.j ], [ %i.aw, %.preheader155 ]
  %.urem = add nsw i32 %.194.2, -1
  %.cmp = icmp eq i32 %.194.2, 0
  %i.az = select i1 %.cmp, i32 2, i32 %.urem
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread
  %i.ba = phi i32 [ %i.ay, %.thread ], [ %.189.2, %bb.j ]
  %i.bb = phi i32 [ %i.az, %.thread ], [ %i.aw, %bb.j ]
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = load ptr, ptr %1, align 8, !tbaa !19
  %i.be = mul nuw nsw i64 %i.j, %i.bc
  %i.bf = getelementptr [4 x i8], ptr %i.bd, i64 %indvars.iv ; 2 uses
  %i.bg = getelementptr [4 x i8], ptr %i.bf, i64 %i.be
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !20
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !20
  %i.bl = zext nneg i32 %i.ba to i64
  %i.bm = mul nuw nsw i64 %i.j, %i.bl
  %i.bn = getelementptr [4 x i8], ptr %i.bf, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !20
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.bp
  store i32 %i.bk, ptr %i.bq, align 4, !tbaa !20
  %i.br = add nsw i32 %.098165, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k
  %.199 = phi i32 [ %i.br, %bb.k ], [ %.098165, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.j
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.i, !llvm.loop !40

.preheader154:                                    ; preds = %.preheader154.preheader, %._crit_edge169
  %indvars.iv208 = phi i64 [ %indvars.iv.next209, %._crit_edge169 ], [ 0, %.preheader154.preheader ] ; 2 uses
  %i.bs = getelementptr [4 x i8], ptr %i.v, i64 %indvars.iv208 ; 5 uses
  br i1 %i.x, label %.epil.preheader, label %.preheader154.new

_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IS1_EERKNS_9EigenBaseIT_EE.exit._crit_edge.split: ; preds = %._crit_edge169, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IS1_EERKNS_9EigenBaseIT_EE.exit.preheader, %.preheader154.lr.ph
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bu = icmp eq i64 %i.q, 0
  %i.bv = icmp eq i64 %i.t, 0
  %or.cond.i.i = or i1 %i.bu, %i.bv
  br i1 %or.cond.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IS1_EERKNS_9EigenBaseIT_EE.exit._crit_edge.split
  %i.bw = sdiv i64 9223372036854775807, %i.t
  %i.bx = icmp sgt i64 %i.q, %i.bw
  br i1 %i.bx, label %bb.n, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i

bb.n:                                             ; preds = %bb.m
  %i.by = call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.by, align 8, !tbaa !23
  invoke void @__cxa_throw(ptr nonnull %i.by, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.n
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i: ; preds = %bb.m, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IS1_EERKNS_9EigenBaseIT_EE.exit._crit_edge.split
  %i.bz = mul nsw i64 %i.t, %i.q
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.bz, i64 noundef %i.q, i64 noundef %i.t)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit.preheader unwind label %bb.u

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit.preheader: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i
  %i.ca = load i64, ptr %i.p, align 8, !tbaa !17  ; 19 uses
  %i.cb = icmp sgt i64 %i.ca, 0
  br i1 %i.cb, label %.preheader.lr.ph, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit._crit_edge

.preheader.lr.ph:                                 ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit.preheader
  %i.cc = load i64, ptr %i.bt, align 8, !tbaa !18 ; 5 uses
  %i.cd = icmp sgt i64 %i.cc, 0
  %i.ce = load ptr, ptr %8, align 8               ; 4 uses
  %i.cf = ptrtoaddr ptr %i.ce to i64              ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br i1 %i.cd, label %.preheader.us.preheader, label %.preheader.lr.ph.split

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %ident.check280 = icmp ne i64 %i.ca, 1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us
  %10 = phi ptr [ %11, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us ], [ %i.ce, %.preheader.us.preheader ] ; 4 uses
  %indvars.iv232 = phi i64 [ %indvars.iv.next233, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us ], [ 0, %.preheader.us.preheader ] ; 4 uses
  %.083184.us = phi i32 [ %.184.us, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us ], [ 0, %.preheader.us.preheader ] ; 4 uses
  %i.ci = mul i64 %indvars.iv232, -4
  %i.cj = sub i64 %i.ci, %i.cf
  %i.ck = getelementptr [4 x i8], ptr %10, i64 %indvars.iv232 ; 2 uses
  br label %.outer

.outer:                                           ; preds = %._crit_edge175.us.thread, %.preheader.us
  %indvars.iv229.ph = phi i64 [ %indvars.iv.next230, %._crit_edge175.us.thread ], [ 0, %.preheader.us ]
  %indvars.iv223.ph = phi i64 [ %indvars.iv.next224264, %._crit_edge175.us.thread ], [ 1, %.preheader.us ]
  %.081179.us.ph = phi i1 [ true, %._crit_edge175.us.thread ], [ false, %.preheader.us ]
  br label %bb.o

bb.o:                                             ; preds = %.outer, %._crit_edge175.us
  %indvars.iv229 = phi i64 [ %indvars.iv.next230, %._crit_edge175.us ], [ %indvars.iv229.ph, %.outer ] ; 2 uses
  %indvars.iv223 = phi i64 [ %indvars.iv.next224, %._crit_edge175.us ], [ %indvars.iv223.ph, %.outer ] ; 3 uses
  %indvars.iv.next230 = add nuw nsw i64 %indvars.iv229, 1 ; 5 uses
  %i.cl = icmp samesign ugt i64 %i.cc, %indvars.iv.next230
  br i1 %i.cl, label %.lr.ph174.us, label %._crit_edge175.us

bb.p:                                             ; preds = %bb.q
  %indvars.iv.next226 = add nuw i64 %indvars.iv225, 1 ; 2 uses
  %exitcond228.not = icmp eq i64 %indvars.iv.next226, %i.cc
  br i1 %exitcond228.not, label %._crit_edge175.us, label %bb.q, !llvm.loop !41

bb.q:                                             ; preds = %.lr.ph174.us, %bb.p
  %indvars.iv225 = phi i64 [ %indvars.iv223, %.lr.ph174.us ], [ %indvars.iv.next226, %bb.p ] ; 2 uses
  %i.cm = mul nuw nsw i64 %indvars.iv225, %i.ca
  %i.cn = getelementptr [4 x i8], ptr %i.ck, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !20
  %i.cp = icmp eq i32 %i.er, %i.co
  br i1 %i.cp, label %._crit_edge175.us.thread, label %bb.p

._crit_edge175.us:                                ; preds = %bb.p, %bb.o
  %indvars.iv.next224 = add nuw i64 %indvars.iv223, 1
  %exitcond231.not = icmp eq i64 %indvars.iv.next230, %i.cc
  br i1 %exitcond231.not, label %._crit_edge182.us, label %bb.o, !llvm.loop !42

._crit_edge175.us.thread:                         ; preds = %bb.q
  %indvars.iv.next224264 = add nuw i64 %indvars.iv223, 1
  %exitcond231.not265 = icmp eq i64 %indvars.iv.next230, %i.cc
  br i1 %exitcond231.not265, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us, label %.outer, !llvm.loop !42

bb.r:                                             ; preds = %._crit_edge182.us
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv232 ; 6 uses
  %i.cr = add nsw i32 %.083184.us, 1              ; 2 uses
  %i.cs = sext i32 %.083184.us to i64             ; 2 uses
  %i.ct = load ptr, ptr %3, align 8, !tbaa !19, !noalias !59 ; 2 uses
  %i.cu = ptrtoaddr ptr %i.ct to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.cs ; 6 uses
  %i.cw = load i64, ptr %i.cg, align 8, !tbaa !18, !noalias !59 ; 7 uses
  %i.cx = load i64, ptr %i.ch, align 8, !tbaa !17 ; 6 uses
  %i.cy = icmp sgt i64 %i.cw, 0
  br i1 %i.cy, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader:        ; preds = %bb.r
  %min.iters.check284 = icmp ult i64 %i.cw, 16
  %ident.check279 = icmp ne i64 %i.cx, 1
  %i.cz = or i1 %ident.check279, %ident.check280
  %or.cond310 = select i1 %min.iters.check284, i1 true, i1 %i.cz
  br i1 %or.cond310, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader295, label %vector.memcheck281

vector.memcheck281:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader
  %i.da = add i64 %i.cj, %i.cu
  %i.db = shl nsw i64 %i.cs, 2
  %i.dc = add i64 %i.da, %i.db
  %i.dd = add i64 %i.dc, -1
  %diff.check282 = icmp ult i64 %i.dd, 31
  br i1 %diff.check282, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader295, label %vector.ph285

vector.ph285:                                     ; preds = %vector.memcheck281
  %n.vec286 = and i64 %i.cw, 9223372036854775800  ; 3 uses
  br label %vector.body287

vector.body287:                                   ; preds = %vector.body287, %vector.ph285
  %index288 = phi i64 [ 0, %vector.ph285 ], [ %index.next291, %vector.body287 ] ; 3 uses
  %i.de = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %index288 ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %index288 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %wide.load289 = load <4 x i32>, ptr %i.df, align 4, !tbaa !20
  %wide.load290 = load <4 x i32>, ptr %i.dg, align 4, !tbaa !20
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store <4 x i32> %wide.load289, ptr %i.de, align 4, !tbaa !20
  store <4 x i32> %wide.load290, ptr %i.dh, align 4, !tbaa !20
  %index.next291 = add nuw i64 %index288, 8       ; 2 uses
  %i.di = icmp eq i64 %index.next291, %n.vec286
  br i1 %i.di, label %middle.block292, label %vector.body287, !llvm.loop !45

middle.block292:                                  ; preds = %vector.body287
  %cmp.n293 = icmp eq i64 %i.cw, %n.vec286
  br i1 %cmp.n293, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader295

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader295:     ; preds = %vector.memcheck281, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader, %middle.block292
  %.05.i.i.i.i.i.i.i.i.i.i.i.us.ph = phi i64 [ 0, %vector.memcheck281 ], [ %n.vec286, %middle.block292 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader ] ; 3 uses
  %xtraiter303.a = and i64 %i.cw, 3               ; 2 uses
  %lcmp.mod304.not.a = icmp eq i64 %xtraiter303.a, 0
  br i1 %lcmp.mod304.not.a, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader295, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.us.prol = phi i64 [ %i.do, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.us.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader295 ] ; 3 uses
  %prol.iter305 = phi i64 [ %prol.iter305.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader295 ]
  %i.dj = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us.prol, %i.cx
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.dj
  %i.dl = mul nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us.prol, %i.ca
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !20
  store i32 %i.dn, ptr %i.dk, align 4, !tbaa !20
  %i.do = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us.prol, 1 ; 2 uses
  %prol.iter305.next = add i64 %prol.iter305, 1   ; 2 uses
  %prol.iter305.cmp.not = icmp eq i64 %prol.iter305.next, %xtraiter303.a
  br i1 %prol.iter305.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol, !llvm.loop !46

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol.loopexit:    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader295
  %.05.i.i.i.i.i.i.i.i.i.i.i.us.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.us.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader295 ], [ %i.do, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol ]
  %i.dp = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us.ph, %i.cw
  %i.dq = icmp ugt i64 %i.dp, -4
  br i1 %i.dq, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us
  %.05.i.i.i.i.i.i.i.i.i.i.i.us = phi i64 [ %i.eo, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.us.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol.loopexit ] ; 6 uses
  %i.dr = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us, %i.cx
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.dr
  %i.dt = mul nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us, %i.ca
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !20
  store i32 %i.dv, ptr %i.ds, align 4, !tbaa !20
  %i.dw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us, 1 ; 2 uses
  %i.dx = mul nsw i64 %i.dw, %i.cx
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.dx
  %i.dz = mul nuw nsw i64 %i.dw, %i.ca
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !20
  store i32 %i.eb, ptr %i.dy, align 4, !tbaa !20
  %i.ec = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us, 2 ; 2 uses
  %i.ed = mul nsw i64 %i.ec, %i.cx
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.ed
  %i.ef = mul nuw nsw i64 %i.ec, %i.ca
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !20
  store i32 %i.eh, ptr %i.ee, align 4, !tbaa !20
  %i.ei = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us, 3 ; 2 uses
  %i.ej = mul nsw i64 %i.ei, %i.cx
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.ej
  %i.el = mul nuw nsw i64 %i.ei, %i.ca
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !20
  store i32 %i.en, ptr %i.ek, align 4, !tbaa !20
  %i.eo = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.us.3 = icmp eq i64 %i.eo, %i.cw
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.us.3, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us, !llvm.loop !47

_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us, %middle.block292
  %.pre247 = load ptr, ptr %8, align 8
  br label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us

_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us: ; preds = %._crit_edge175.us.thread, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.loopexit, %bb.r, %._crit_edge182.us
  %11 = phi ptr [ %10, %._crit_edge182.us ], [ %10, %bb.r ], [ %.pre247, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.loopexit ], [ %10, %._crit_edge175.us.thread ]
  %.184.us = phi i32 [ %.083184.us, %._crit_edge182.us ], [ %i.cr, %bb.r ], [ %i.cr, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.loopexit ], [ %.083184.us, %._crit_edge175.us.thread ] ; 2 uses
  %indvars.iv.next233 = add nuw nsw i64 %indvars.iv232, 1 ; 2 uses
  %exitcond235.not = icmp eq i64 %indvars.iv.next233, %i.ca
  br i1 %exitcond235.not, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit._crit_edge, label %.preheader.us, !llvm.loop !48

.lr.ph174.us:                                     ; preds = %bb.o
  %i.ep = mul nuw nsw i64 %indvars.iv229, %i.ca
  %i.eq = getelementptr [4 x i8], ptr %i.ck, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !20
  br label %bb.q

._crit_edge182.us:                                ; preds = %._crit_edge175.us
  br i1 %.081179.us.ph, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us, label %bb.r

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.es = load ptr, ptr %3, align 8, !tbaa !19, !noalias !59 ; 2 uses
  %i.et = load i64, ptr %i.cg, align 8, !tbaa !18, !noalias !59 ; 7 uses
  %i.eu = load i64, ptr %i.ch, align 8, !tbaa !17 ; 6 uses
  %i.ev = icmp sgt i64 %i.et, 0
  br i1 %i.ev, label %.preheader.us187.preheader, label %.preheader.preheader

.preheader.us187.preheader:                       ; preds = %.preheader.lr.ph.split
  %i.ew = ptrtoaddr ptr %i.es to i64
  %min.iters.check = icmp ult i64 %i.et, 12
  %ident.check = icmp ne i64 %i.eu, 1
  %ident.check276 = icmp ne i64 %i.ca, 1
  %i.ex = or i1 %ident.check, %ident.check276
  %i.ey = sub i64 %i.cf, %i.ew
  %diff.check = icmp ugt i64 %i.ey, -32
  %or.cond = select i1 %i.ex, i1 true, i1 %diff.check
  %n.vec = and i64 %i.et, 9223372036854775800     ; 3 uses
  %cmp.n = icmp eq i64 %i.et, %n.vec
  %xtraiter301 = and i64 %i.et, 3                 ; 2 uses
  %lcmp.mod302.not = icmp eq i64 %xtraiter301, 0
  br label %.preheader.us187

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %i.ez = trunc i64 %i.ca to i32
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit._crit_edge

.preheader.us187:                                 ; preds = %.preheader.us187.preheader, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.loopexit.us194
  %indvars.iv217 = phi i64 [ %indvars.iv.next218, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.loopexit.us194 ], [ 0, %.preheader.us187.preheader ] ; 3 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv217 ; 6 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv217 ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %or.cond
  br i1 %brmerge, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us191.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us187, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us187 ] ; 3 uses
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %index ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %index ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %wide.load = load <4 x i32>, ptr %i.fd, align 4, !tbaa !20
  %wide.load277 = load <4 x i32>, ptr %i.fe, align 4, !tbaa !20
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store <4 x i32> %wide.load, ptr %i.fc, align 4, !tbaa !20
  store <4 x i32> %wide.load277, ptr %i.ff, align 4, !tbaa !20
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fg = icmp eq i64 %index.next, %n.vec
  br i1 %i.fg, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.loopexit.us194, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us191.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us191.preheader:     ; preds = %.preheader.us187, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.i.us192.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.us187 ] ; 3 uses
  br i1 %lcmp.mod302.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us191.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us191.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us191.prol:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us191.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us191.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.us192.prol = phi i64 [ %i.fm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us191.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.us192.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us191.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us191.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us191.preheader ]
  %i.fh = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us192.prol, %i.eu
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %i.fh
  %i.fj = mul nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us192.prol, %i.ca
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !20
  store i32 %i.fl, ptr %i.fi, align 4, !tbaa !20
  %i.fm = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us192.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter301
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us191.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us191.prol, !llvm.loop !50

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us191.prol.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us191.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us191.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.i.us192.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.us192.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us191.preheader ], [ %i.fm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us191.prol ]
  %i.fn = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us192.ph, %i.et
  %i.fo = icmp ugt i64 %i.fn, -4
  br i1 %i.fo, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.loopexit.us194, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us191

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us191:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us191.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us191
  %.05.i.i.i.i.i.i.i.i.i.i.i.us192 = phi i64 [ %i.gm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us191 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.us192.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us191.prol.loopexit ] ; 6 uses
  %i.fp = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us192, %i.eu
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %i.fp
  %i.fr = mul nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us192, %i.ca
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.fr
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !20
  store i32 %i.ft, ptr %i.fq, align 4, !tbaa !20
  %i.fu = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us192, 1 ; 2 uses
  %i.fv = mul nsw i64 %i.fu, %i.eu
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %i.fv
  %i.fx = mul nuw nsw i64 %i.fu, %i.ca
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !20
  store i32 %i.fz, ptr %i.fw, align 4, !tbaa !20
  %i.ga = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us192, 2 ; 2 uses
  %i.gb = mul nsw i64 %i.ga, %i.eu
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %i.gb
  %i.gd = mul nuw nsw i64 %i.ga, %i.ca
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.gd
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !20
  store i32 %i.gf, ptr %i.gc, align 4, !tbaa !20
  %i.gg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us192, 3 ; 2 uses
  %i.gh = mul nsw i64 %i.gg, %i.eu
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %i.gh
  %i.gj = mul nuw nsw i64 %i.gg, %i.ca
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.gj
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !20
  store i32 %i.gl, ptr %i.gi, align 4, !tbaa !20
  %i.gm = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us192, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.us193.3 = icmp eq i64 %i.gm, %i.et
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.us193.3, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.loopexit.us194, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us191, !llvm.loop !51

_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.loopexit.us194: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us191.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us191, %middle.block
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1 ; 2 uses
  %exitcond222.not = icmp eq i64 %indvars.iv.next218, %i.ca
  br i1 %exitcond222.not, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit._crit_edge.loopexit198, label %.preheader.us187, !llvm.loop !48

bb.s:                                             ; preds = %._crit_edge
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

._crit_edge169.unr-lcssa:                         ; preds = %.preheader154.new
  br i1 %lcmp.mod.not, label %._crit_edge169, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge169.unr-lcssa, %.preheader154
  %indvars.iv204.epil.init = phi i64 [ 0, %.preheader154 ], [ %indvars.iv.next205.3, %._crit_edge169.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod300)
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.epil.preheader
  %indvars.iv204.epil = phi i64 [ %indvars.iv204.epil.init, %.epil.preheader ], [ %indvars.iv.next205.epil, %bb.t ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.t ]
  %i.go = mul nuw nsw i64 %indvars.iv204.epil, %i.q
  %i.gp = getelementptr [4 x i8], ptr %i.bs, i64 %i.go ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !20
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.gr
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !20
  store i32 %i.gt, ptr %i.gp, align 4, !tbaa !20
  %indvars.iv.next205.epil = add nuw nsw i64 %indvars.iv204.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge169, label %bb.t, !llvm.loop !52

._crit_edge169:                                   ; preds = %bb.t, %._crit_edge169.unr-lcssa
  %indvars.iv.next209 = add nuw nsw i64 %indvars.iv208, 1 ; 2 uses
  %exitcond211.not = icmp eq i64 %indvars.iv.next209, %i.q
  br i1 %exitcond211.not, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IS1_EERKNS_9EigenBaseIT_EE.exit._crit_edge.split, label %.preheader154, !llvm.loop !53

.preheader154.new:                                ; preds = %.preheader154, %.preheader154.new
  %indvars.iv204 = phi i64 [ %indvars.iv.next205.3, %.preheader154.new ], [ 0, %.preheader154 ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.preheader154.new ], [ 0, %.preheader154 ]
  %i.gu = mul nuw nsw i64 %indvars.iv204, %i.q
  %i.gv = getelementptr [4 x i8], ptr %i.bs, i64 %i.gu ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !20
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !20
  store i32 %i.gz, ptr %i.gv, align 4, !tbaa !20
  %indvars.iv.next205 = or disjoint i64 %indvars.iv204, 1
  %i.ha = mul nuw nsw i64 %indvars.iv.next205, %i.q
  %i.hb = getelementptr [4 x i8], ptr %i.bs, i64 %i.ha ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !20
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.hd
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !20
  store i32 %i.hf, ptr %i.hb, align 4, !tbaa !20
  %indvars.iv.next205.1 = or disjoint i64 %indvars.iv204, 2
  %i.hg = mul nuw nsw i64 %indvars.iv.next205.1, %i.q
  %i.hh = getelementptr [4 x i8], ptr %i.bs, i64 %i.hg ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !20
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.hj
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !20
  store i32 %i.hl, ptr %i.hh, align 4, !tbaa !20
  %indvars.iv.next205.2 = or disjoint i64 %indvars.iv204, 3
  %i.hm = mul nuw nsw i64 %indvars.iv.next205.2, %i.q
  %i.hn = getelementptr [4 x i8], ptr %i.bs, i64 %i.hm ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !20
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.hp
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !20
  store i32 %i.hr, ptr %i.hn, align 4, !tbaa !20
  %indvars.iv.next205.3 = add nuw nsw i64 %indvars.iv204, 4 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge169.unr-lcssa, label %.preheader154.new, !llvm.loop !54

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit._crit_edge.loopexit198: ; preds = %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.loopexit.us194
  %i.hs = trunc nuw nsw i64 %i.ca to i32
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit._crit_edge
end_hunk_0
