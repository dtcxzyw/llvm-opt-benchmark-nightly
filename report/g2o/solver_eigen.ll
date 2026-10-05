Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/solver_eigen?download=true
inline.NumInlined: 23967
inline.NumDeleted: 11511
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 155
loop-unroll.NumUnrolled: 180
begin_hunk_0_@_ZN5Eigen8internal20permute_symm_to_symmILi2ELi2ENS_12SparseMatrixIdLi0EiEELi0EEEvRKT1_RNS2_INS4_6ScalarEXT2_ENS4_12StorageIndexEEEPKS8_:bb.a
  %i.fv = icmp slt i64 %indvars.iv166, %i.fu
  br i1 %i.fv, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fw = load i32, ptr %i.fr, align 4, !tbaa !97 ; 2 uses
  %i.fx = add nsw i32 %i.fw, 1
  store i32 %i.fx, ptr %i.fr, align 4, !tbaa !97
  %i.fy = sext i32 %i.fw to i64                   ; 2 uses
  %i.fz = load ptr, ptr %i.ff, align 8, !tbaa !365
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.fz, i64 %i.fy
  store i32 %i.ft, ptr %i.ga, align 4, !tbaa !97
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %.sroa.9.0138.us.us
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !384
  %i.gd = load ptr, ptr %i.dy, align 8, !tbaa !364
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.gd, i64 %i.fy
  store double %i.gc, ptr %i.ge, align 8, !tbaa !384
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.gf = add nsw i64 %.sroa.9.0138.us.us, 1      ; 2 uses
  %exitcond165.not = icmp eq i64 %i.gf, %.sink.i74.us
  br i1 %exitcond165.not, label %._crit_edge140.split.us.us, label %bb.r, !llvm.loop !1094

._crit_edge140.split.us.us:                       ; preds = %bb.t, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit75.us
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %exitcond169.not = icmp eq i64 %indvars.iv.next167, %i.b
  br i1 %exitcond169.not, label %._crit_edge144, label %.lr.ph143.split.us, !llvm.loop !1095

._crit_edge144:                                   ; preds = %._crit_edge140.split, %._crit_edge140.split.us.us, %_ZN5Eigen12SparseMatrixIdLi0EiE14resizeNonZerosEl.exit.preheader
  tail call void @free(ptr noundef %.sroa.0106.0126) #38
  ret void

.lr.ph143.split:                                  ; preds = %.lr.ph143, %._crit_edge140.split
  %indvars.iv161 = phi i64 [ %indvars.iv.next162, %._crit_edge140.split ], [ 0, %.lr.ph143 ] ; 5 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %indvars.iv161 ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !97
  %i.gi = sext i32 %i.gh to i64                   ; 3 uses
  br i1 %i.fe, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph143.split
  %i.gj = getelementptr i8, ptr %i.gg, i64 4
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !97
  %i.gl = sext i32 %i.gk to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit75

bb.v:                                             ; preds = %.lr.ph143.split
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv161
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !97
  %i.go = sext i32 %i.gn to i64
  %i.gp = add nsw i64 %i.go, %i.gi
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit75

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit75: ; preds = %bb.u, %bb.v
  %.sink.i74 = phi i64 [ %i.gl, %bb.u ], [ %i.gp, %bb.v ] ; 2 uses
  %i.gq = icmp sgt i64 %.sink.i74, %i.gi
  br i1 %i.gq, label %.lr.ph139, label %._crit_edge140.split

.lr.ph139:                                        ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit75
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv161
  br label %bb.w

._crit_edge140.split:                             ; preds = %bb.y, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit75
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %exitcond164.not = icmp eq i64 %indvars.iv.next162, %i.b
  br i1 %exitcond164.not, label %._crit_edge144, label %.lr.ph143.split, !llvm.loop !1095

bb.w:                                             ; preds = %.lr.ph139, %bb.y
  %.sroa.9.0138 = phi i64 [ %i.gi, %.lr.ph139 ], [ %i.hk, %bb.y ] ; 3 uses
  %i.gs = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %.sroa.9.0138
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !97
  %i.gu = sext i32 %i.gt to i64                   ; 2 uses
  %i.gv = icmp slt i64 %indvars.iv161, %i.gu
  br i1 %i.gv, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gw = load i32, ptr %i.gr, align 4, !tbaa !97 ; 2 uses
  %i.gx = getelementptr inbounds [4 x i8], ptr %2, i64 %i.gu
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !97 ; 2 uses
  %.sroa.speculated82 = tail call i32 @llvm.smax.i32(i32 %i.gy, i32 %i.gw)
  %i.gz = sext i32 %.sroa.speculated82 to i64
  %i.ha = getelementptr inbounds [4 x i8], ptr %.sroa.0106.0126, i64 %i.gz ; 2 uses
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !97 ; 2 uses
  %i.hc = add nsw i32 %i.hb, 1
  store i32 %i.hc, ptr %i.ha, align 4, !tbaa !97
  %i.hd = sext i32 %i.hb to i64                   ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.gw, i32 %i.gy)
  %i.he = load ptr, ptr %i.ff, align 8, !tbaa !365
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.he, i64 %i.hd
  store i32 %.sroa.speculated, ptr %i.hf, align 4, !tbaa !97
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %.sroa.9.0138
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !384
  %i.hi = load ptr, ptr %i.dy, align 8, !tbaa !364
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.hi, i64 %i.hd
  store double %i.hh, ptr %i.hj, align 8, !tbaa !384
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.hk = add nsw i64 %.sroa.9.0138, 1            ; 2 uses
  %exitcond160.not = icmp eq i64 %i.hk, %.sink.i74
  br i1 %exitcond160.not, label %._crit_edge140.split, label %bb.w, !llvm.loop !1094
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal25ordering_helper_at_plus_aINS_12SparseMatrixIdLi0EiEEEEvRKT_RS4_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::SparseMatrix", align 8 ; 15 uses
  %3 = alloca %"class.Eigen::Transpose", align 8  ; 6 uses
  %4 = alloca %"class.Eigen::CwiseBinaryOp", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  store i8 0, ptr %2, align 8, !tbaa !355
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 -1, ptr %i.a, align 8, !tbaa !356
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  %i.d = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #43 ; 3 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !362
  %.not6.i = icmp eq ptr %i.d, null
  br i1 %.not6.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #38 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !96
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #41
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

common.resume:                                    ; preds = %bb.l, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.c ], [ %.pn, %bb.l ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.g) #38
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !tbaa !356
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store i32 0, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  store i8 0, ptr %3, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %0, ptr %i.i, align 8
  %i.j = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIdLi0EiEaSINS_9TransposeIKS1_EEEERS1_RKNS_16SparseMatrixBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  %i.k = load i64, ptr %i.b, align 8, !tbaa !399  ; 9 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph16, label %._crit_edge17

.lr.ph16:                                         ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !364  ; 6 uses
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !362  ; 6 uses
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !363  ; 4 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.preheader, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.preheader

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.preheader: ; preds = %.lr.ph16
  %xtraiter = and i64 %i.k, 1
  %i.r = icmp eq i64 %i.k, 1
  br i1 %i.r, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.epil.preheader, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.preheader.new

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.preheader.new: ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.preheader
  %unroll_iter = and i64 %i.k, 9223372036854775806
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.preheader: ; preds = %.lr.ph16
  %xtraiter33 = and i64 %i.k, 1
  %i.s = icmp eq i64 %i.k, 1
  br i1 %i.s, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.epil.preheader, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.preheader.new

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.preheader.new: ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.preheader
  %unroll_iter36 = and i64 %i.k, 9223372036854775806
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us: ; preds = %._crit_edge.us.1, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.preheader.new
  %indvars.iv21 = phi i64 [ 0, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.preheader.new ], [ %indvars.iv.next22.1, %._crit_edge.us.1 ] ; 3 uses
  %niter37 = phi i64 [ 0, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.preheader.new ], [ %niter37.next.1, %._crit_edge.us.1 ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv21 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !97   ; 2 uses
  %i.v = getelementptr i8, ptr %i.t, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !97   ; 4 uses
  %i.x = icmp slt i32 %i.u, %i.w
  br i1 %i.x, label %.lr.ph.us.preheader, label %._crit_edge.us

.lr.ph.us.preheader:                              ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us
  %i.y = sext i32 %i.w to i64
  %i.z = sext i32 %i.u to i64                     ; 2 uses
  %i.aa = shl nsw i64 %i.z, 3
  %scevgep20 = getelementptr i8, ptr %i.n, i64 %i.aa
  %i.ab = sub nsw i64 %i.y, %i.z
  %i.ac = shl nsw i64 %i.ab, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep20, i8 0, i64 range(i64 0, 34359738361) %i.ac, i1 false), !tbaa !384
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %.lr.ph.us.preheader, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv21
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !97 ; 2 uses
  %i.ag = icmp slt i32 %i.w, %i.af
  br i1 %i.ag, label %.lr.ph.us.preheader.1, label %._crit_edge.us.1

.lr.ph.us.preheader.1:                            ; preds = %._crit_edge.us
  %i.ah = sext i32 %i.af to i64
  %i.ai = sext i32 %i.w to i64                    ; 2 uses
  %i.aj = shl nsw i64 %i.ai, 3
  %scevgep20.1 = getelementptr i8, ptr %i.n, i64 %i.aj
  %i.ak = sub nsw i64 %i.ah, %i.ai
  %i.al = shl nsw i64 %i.ak, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep20.1, i8 0, i64 range(i64 0, 34359738361) %i.al, i1 false), !tbaa !384
  br label %._crit_edge.us.1

._crit_edge.us.1:                                 ; preds = %.lr.ph.us.preheader.1, %._crit_edge.us
  %indvars.iv.next22.1 = add nuw nsw i64 %indvars.iv21, 2 ; 2 uses
  %niter37.next.1 = add nuw nsw i64 %niter37, 2   ; 2 uses
  %niter37.ncmp.1 = icmp eq i64 %niter37.next.1, %unroll_iter36
  br i1 %niter37.ncmp.1, label %._crit_edge17.loopexit.unr-lcssa, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us, !llvm.loop !1096

bb.f:                                             ; preds = %bb.d
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %bb.l

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %._crit_edge.1, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.preheader.new
  %indvars.iv = phi i64 [ 0, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.preheader.new ], [ %indvars.iv.next.1, %._crit_edge.1 ] ; 4 uses
  %niter = phi i64 [ 0, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.preheader.new ], [ %niter.next.1, %._crit_edge.1 ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !97 ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.aq = zext nneg i32 %i.ao to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !97
  %i.at = sext i32 %i.as to i64
  %i.au = shl nsw i64 %i.at, 3
  %scevgep = getelementptr i8, ptr %i.n, i64 %i.au
  %i.av = shl nuw nsw i64 %i.aq, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 range(i64 0, 51539607537) %i.av, i1 false), !tbaa !384
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !97 ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph.preheader.1, label %._crit_edge.1

.lr.ph.preheader.1:                               ; preds = %._crit_edge
  %i.az = zext nneg i32 %i.ax to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !97
  %i.bc = sext i32 %i.bb to i64
  %i.bd = shl nsw i64 %i.bc, 3
  %scevgep.1 = getelementptr i8, ptr %i.n, i64 %i.bd
  %i.be = shl nuw nsw i64 %i.az, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.1, i8 0, i64 range(i64 0, 51539607537) %i.be, i1 false), !tbaa !384
  br label %._crit_edge.1

._crit_edge.1:                                    ; preds = %.lr.ph.preheader.1, %._crit_edge
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge17.loopexit31.unr-lcssa, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit, !llvm.loop !1096

._crit_edge17.loopexit.unr-lcssa:                 ; preds = %._crit_edge.us.1
  %lcmp.mod34.not = icmp eq i64 %xtraiter33, 0
  br i1 %lcmp.mod34.not, label %._crit_edge17, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.epil.preheader

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.epil.preheader: ; preds = %._crit_edge17.loopexit.unr-lcssa, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.preheader
  %indvars.iv21.epil.init = phi i64 [ 0, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.preheader ], [ %indvars.iv.next22.1, %._crit_edge17.loopexit.unr-lcssa ]
  %lcmp.mod35 = trunc i64 %i.k to i1
  call void @llvm.assume(i1 %lcmp.mod35)
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv21.epil.init ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !97 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bf, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !97 ; 2 uses
  %i.bj = icmp slt i32 %i.bg, %i.bi
  br i1 %i.bj, label %.lr.ph.us.preheader.epil, label %._crit_edge17

.lr.ph.us.preheader.epil:                         ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.epil.preheader
  %i.bk = sext i32 %i.bi to i64
  %i.bl = sext i32 %i.bg to i64                   ; 2 uses
  %i.bm = shl nsw i64 %i.bl, 3
  %scevgep20.epil = getelementptr i8, ptr %i.n, i64 %i.bm
  %i.bn = sub nsw i64 %i.bk, %i.bl
  %i.bo = shl nsw i64 %i.bn, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep20.epil, i8 0, i64 range(i64 0, 34359738361) %i.bo, i1 false), !tbaa !384
  br label %._crit_edge17

._crit_edge17.loopexit31.unr-lcssa:               ; preds = %._crit_edge.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge17, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.epil.preheader

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.epil.preheader: ; preds = %._crit_edge17.loopexit31.unr-lcssa, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.preheader ], [ %indvars.iv.next.1, %._crit_edge17.loopexit31.unr-lcssa ] ; 2 uses
  %lcmp.mod32 = trunc i64 %i.k to i1
  call void @llvm.assume(i1 %lcmp.mod32)
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.epil.init
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !97 ; 2 uses
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph.preheader.epil, label %._crit_edge17

.lr.ph.preheader.epil:                            ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.epil.preheader
  %i.bs = zext nneg i32 %i.bq to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.epil.init
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !97
  %i.bv = sext i32 %i.bu to i64
  %i.bw = shl nsw i64 %i.bv, 3
  %scevgep.epil = getelementptr i8, ptr %i.n, i64 %i.bw
  %i.bx = shl nuw nsw i64 %i.bs, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.epil, i8 0, i64 range(i64 0, 51539607537) %i.bx, i1 false), !tbaa !384
  br label %._crit_edge17

._crit_edge17:                                    ; preds = %._crit_edge17.loopexit31.unr-lcssa, %.lr.ph.preheader.epil, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.epil.preheader, %._crit_edge17.loopexit.unr-lcssa, %.lr.ph.us.preheader.epil, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.epil.preheader, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  store i8 0, ptr %4, align 8, !tbaa !474, !alias.scope !1099
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.by, align 8, !tbaa !472, !alias.scope !1099
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %0, ptr %i.bz, align 8, !tbaa !472, !alias.scope !1099
  %i.ca = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIdLi0EiEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKS1_S7_EEEERS1_RKNS_16SparseMatrixBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.g unwind label %bb.k       ; 0 uses

bb.g:                                             ; preds = %._crit_edge17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  %i.cb = load ptr, ptr %i.c, align 8, !tbaa !362
  call void @free(ptr noundef %i.cb) #38
  %i.cc = load ptr, ptr %i.h, align 8, !tbaa !363
  call void @free(ptr noundef %i.cc) #38
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !364 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.ce) #39
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !365 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.ch) #39
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  ret void

bb.k:                                             ; preds = %._crit_edge17
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.pn = phi { ptr, i32 } [ %i.am, %bb.f ], [ %i.cj, %bb.k ]
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal23minimum_degree_orderingIdiEEvRNS_12SparseMatrixIT_Li0ET0_EERNS_17PermutationMatrixILin1ELin1ES4_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !356  ; 32 uses
  %i.c = trunc i64 %i.b to i32                    ; 17 uses
  %i.d = sitofp i32 %i.c to double
  %i.e = tail call double @sqrt(double noundef %i.d) #38
  %i.f = fmul double %i.e, 1.000000e+01
  %i.g = fptosi double %i.f to i32
  %.sroa.speculated548 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 16)
  %i.h = add nsw i32 %i.c, -2
  %.sroa.speculated543 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated548, i32 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !363  ; 13 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !362  ; 2 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.b
  %i.o = load i32, ptr %i.n, align 4, !tbaa !97
  %i.p = load i32, ptr %i.m, align 4, !tbaa !97
  %i.q = sub nsw i32 %i.o, %i.p
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

bb.c:                                             ; preds = %bb.a
  %i.r = icmp eq i64 %i.b, 0
  br i1 %i.r, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.t = and i64 %i.s, 3
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.u = lshr exact i64 %i.s, 2
  %i.v = sub nsw i64 0, %i.u
  %i.w = and i64 %i.v, 3
  %i.x = tail call i64 @llvm.smin.i64(i64 %i.w, i64 %i.b)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.x, %bb.e ], [ %i.b, %bb.d ] ; 12 uses
  %i.y = sub nsw i64 %i.b, %.0.i.i.i.i.i.i.i.i    ; 5 uses
  %i.z = sdiv i64 %i.y, 8
  %i.aa = shl nsw i64 %i.z, 3                     ; 2 uses
  %i.ab = sdiv i64 %i.y, 4
  %i.ac = shl nsw i64 %i.ab, 2                    ; 3 uses
  %i.ad = add nsw i64 %i.aa, %.0.i.i.i.i.i.i.i.i  ; 2 uses
  %i.ae = add nsw i64 %i.ac, %.0.i.i.i.i.i.i.i.i  ; 4 uses
  %.off.i.i.i.i = add i64 %i.y, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.af = getelementptr [4 x i8], ptr %i.j, i64 %.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.ag = load <2 x i64>, ptr %i.af, align 1, !tbaa !87 ; 2 uses
  %i.ah = icmp sgt i64 %i.y, 7
  br i1 %i.ah, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr i8, ptr %i.af, i64 16
  %i.aj = load <4 x i32>, ptr %i.ai, align 1, !tbaa !87 ; 2 uses
  %i.ak = bitcast <2 x i64> %i.ag to <4 x i32>    ; 2 uses
  %i.al = icmp samesign ugt i64 %i.y, 15
  br i1 %i.al, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.g
  %.05777.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.g
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.aj, %bb.g ], [ %i.aw, %.lr.ph.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.ak, %bb.g ], [ %i.as, %.lr.ph.i.i.i.i ]
  %i.am = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i, %.lcssa.i.i.i.i ; 2 uses
  %i.an = bitcast <4 x i32> %i.am to <2 x i64>
  %i.ao = icmp sgt i64 %i.ac, %i.aa
  br i1 %i.ao, label %bb.h, label %bb.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.05780.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.05777.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i = phi i64 [ %.05780.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.067.078.i.i.i.i = phi <4 x i32> [ %i.as, %.lr.ph.i.i.i.i ], [ %i.ak, %.lr.ph.preheader.i.i.i.i ]
  %i.ap = phi <4 x i32> [ %i.aw, %.lr.ph.i.i.i.i ], [ %i.aj, %.lr.ph.preheader.i.i.i.i ]
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.j, i64 %.05780.i.i.i.i
  %i.ar = load <4 x i32>, ptr %i.aq, align 1, !tbaa !87
  %i.as = add <4 x i32> %i.ar, %.sroa.067.078.i.i.i.i ; 2 uses
  %i.at = getelementptr [4 x i8], ptr %i.j, i64 %.057.in79.i.i.i.i
  %i.au = getelementptr i8, ptr %i.at, i64 48
  %i.av = load <4 x i32>, ptr %i.au, align 1, !tbaa !87
  %i.aw = add <4 x i32> %i.av, %i.ap              ; 2 uses
  %.057.i.i.i.i = add nsw i64 %.05780.i.i.i.i, 8  ; 2 uses
  %i.ax = icmp slt i64 %.057.i.i.i.i, %i.ad
  br i1 %i.ax, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !8

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.ad
  %i.az = load <4 x i32>, ptr %i.ay, align 1, !tbaa !87
  %i.ba = add <4 x i32> %i.az, %i.am
  %i.bb = bitcast <4 x i32> %i.ba to <2 x i64>
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i, %bb.f
  %.sroa.067.2.i.i.i.i = phi <2 x i64> [ %i.ag, %bb.f ], [ %i.bb, %bb.h ], [ %i.an, %._crit_edge.i.i.i.i ]
  %i.bc = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32> ; 2 uses
  %i.bd = tail call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.bc, <4 x i32> %i.bc) ; 2 uses
  %i.be = tail call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.bd, <4 x i32> %i.bd) ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i = extractelement <4 x i32> %i.be, i64 0 ; 2 uses
  %i.bf = icmp sgt i64 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.bf, label %.lr.ph85.i.i.i.i.preheader, label %.preheader.i.i.i.i

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.i
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph85.i.i.i.i.preheader1352, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph85.i.i.i.i.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.bg = shufflevector <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>, <4 x i32> %i.be, <4 x i32> <i32 4, i32 0, i32 0, i32 0>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.bg, %vector.ph ], [ %i.bj, %vector.body ]
  %vec.phi1167 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bk, %vector.body ]
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %wide.load = load <4 x i32>, ptr %i.bh, align 4, !tbaa !97
  %wide.load1168 = load <4 x i32>, ptr %i.bi, align 4, !tbaa !97
  %i.bj = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.bk = add <4 x i32> %wide.load1168, %vec.phi1167 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !1100

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bk, %i.bj
  %i.bm = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i.preheader1352

.lr.ph85.i.i.i.i.preheader1352:                   ; preds = %.lr.ph85.i.i.i.i.preheader, %middle.block
  %.05683.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.07582.i.i.i.i.ph = phi i32 [ %.sroa.0.0.vec.extract.i.i.i.i.i.i, %.lr.ph85.i.i.i.i.preheader ], [ %i.bm, %middle.block ]
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal23minimum_degree_orderingIdiEEvRNS_12SparseMatrixIT_Li0ET0_EERNS_17PermutationMatrixILin1ELin1ES4_EE:bb.a
  %indvars.iv986 = phi i64 [ %i.wf, %.lr.ph871.preheader ], [ %indvars.iv.next987, %.lr.ph871 ]
  %indvars.iv.next987 = add nsw i64 %indvars.iv986, 1 ; 3 uses
  %i.wg = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %indvars.iv.next987
  %i.wh = load i32, ptr %i.wg, align 4, !tbaa !97
  %i.wi = sext i32 %i.wh to i64
  %i.wj = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.wi
  store i32 %.2429887, ptr %i.wj, align 4, !tbaa !97
  %i.wk = load i32, ptr %i.wb, align 4, !tbaa !97
  %i.wl = add i32 %i.wd, %i.wk
  %i.wm = sext i32 %i.wl to i64
  %.not494.not = icmp slt i64 %indvars.iv.next987, %i.wm
  br i1 %.not494.not, label %.lr.ph871, label %._crit_edge872, !llvm.loop !1130

._crit_edge872:                                   ; preds = %.lr.ph871
  %.pre1029 = load i32, ptr %i.vv, align 4, !tbaa !97 ; 2 uses
  %.not495879 = icmp eq i32 %.pre1029, -1
  br i1 %.not495879, label %._crit_edge884.thread, label %.lr.ph883

._crit_edge884.thread:                            ; preds = %._crit_edge872
  %i.wn = add nuw nsw i32 %.2429887, 1
  br label %.critedge5

.lr.ph883:                                        ; preds = %bb.bl, %._crit_edge872
  %i.wo = phi i32 [ %.pre1029, %._crit_edge872 ], [ %i.vw, %bb.bl ]
  %i.wp = sub nuw i32 -2, %.0733886
  %i.wq = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.vu ; 2 uses
  br label %bb.bm

bb.bm:                                            ; preds = %.lr.ph883, %bb.bp
  %.0434881 = phi i32 [ %.0733886, %.lr.ph883 ], [ %.1435, %bb.bp ] ; 2 uses
  %.0734880 = phi i32 [ %i.wo, %.lr.ph883 ], [ %.1735, %bb.bp ] ; 2 uses
  %i.wr = sext i32 %.0734880 to i64               ; 7 uses
  %i.ws = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.wr
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !97
  %i.wu = icmp eq i32 %i.wt, %i.vy
  br i1 %i.wu, label %bb.bn, label %.critedge510

bb.bn:                                            ; preds = %bb.bm
  %i.wv = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.wr
  %i.ww = load i32, ptr %i.wv, align 4, !tbaa !97
  %.not = icmp eq i32 %i.ww, %i.wa
  %i.wx = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %i.wr ; 2 uses
  br i1 %.not, label %.lr.ph878, label %.critedge510

.lr.ph878:                                        ; preds = %bb.bn
  %i.wy = load i32, ptr %i.wx, align 4, !tbaa !97 ; 4 uses
  %i.wz = add i32 %i.wd, %i.wy                    ; 2 uses
  %smax = call i32 @llvm.smax.i32(i32 %i.wy, i32 %i.wz)
  %wide.trip.count992 = sext i32 %smax to i64
  %exitcond993.not1165.not = icmp slt i32 %i.wy, %i.wz
  br i1 %exitcond993.not1165.not, label %select.unfold.lr.ph, label %.critedge7

select.unfold.lr.ph:                              ; preds = %.lr.ph878
  %i.xa = sext i32 %i.wy to i64
  br label %select.unfold

bb.bo:                                            ; preds = %select.unfold
  %exitcond993.not = icmp eq i64 %indvars.iv.next990, %wide.trip.count992
  br i1 %exitcond993.not, label %.critedge7, label %select.unfold

select.unfold:                                    ; preds = %select.unfold.lr.ph, %bb.bo
  %indvars.iv9891166 = phi i64 [ %i.xa, %select.unfold.lr.ph ], [ %indvars.iv.next990, %bb.bo ]
  %indvars.iv.next990 = add nsw i64 %indvars.iv9891166, 1 ; 3 uses
  %i.xb = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %indvars.iv.next990
  %i.xc = load i32, ptr %i.xb, align 4, !tbaa !97
  %i.xd = sext i32 %i.xc to i64
  %i.xe = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.xd
  %i.xf = load i32, ptr %i.xe, align 4, !tbaa !97
  %.not498.not = icmp eq i32 %i.xf, %.2429887
  br i1 %.not498.not, label %bb.bo, label %.critedge510

.critedge7:                                       ; preds = %bb.bo, %.lr.ph878
  store i32 %i.wp, ptr %i.wx, align 4, !tbaa !97
  %i.xg = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.wr ; 2 uses
  %i.xh = load i32, ptr %i.xg, align 4, !tbaa !97
  %i.xi = load i32, ptr %i.wq, align 4, !tbaa !97
  %i.xj = add nsw i32 %i.xi, %i.xh
  store i32 %i.xj, ptr %i.wq, align 4, !tbaa !97
  store i32 0, ptr %i.xg, align 4, !tbaa !97
  %i.xk = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.wr
  store i32 -1, ptr %i.xk, align 4, !tbaa !97
  %i.xl = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.wr
  %i.xm = load i32, ptr %i.xl, align 4, !tbaa !97 ; 2 uses
  %i.xn = sext i32 %.0434881 to i64
  %i.xo = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.xn
  store i32 %i.xm, ptr %i.xo, align 4, !tbaa !97
  br label %bb.bp

.critedge510:                                     ; preds = %select.unfold, %bb.bm, %bb.bn
  %i.xp = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.wr
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !97
  br label %bb.bp

bb.bp:                                            ; preds = %.critedge510, %.critedge7
  %.1735 = phi i32 [ %i.xq, %.critedge510 ], [ %i.xm, %.critedge7 ] ; 2 uses
  %.1435 = phi i32 [ %.0734880, %.critedge510 ], [ %.0434881, %.critedge7 ]
  %.not495 = icmp eq i32 %.1735, -1
  br i1 %.not495, label %._crit_edge884, label %bb.bm, !llvm.loop !1131

._crit_edge884:                                   ; preds = %bb.bp
  %.pre1030 = load i32, ptr %i.vv, align 4, !tbaa !97 ; 2 uses
  %i.xr = add nuw nsw i32 %.2429887, 1            ; 2 uses
  %.not492 = icmp eq i32 %.pre1030, -1
  br i1 %.not492, label %.critedge5, label %.lr.ph889, !llvm.loop !1132

.critedge5:                                       ; preds = %._crit_edge884, %.lr.ph889, %._crit_edge884.thread, %bb.bk, %.lr.ph895
  %.3430 = phi i32 [ %.1428893, %.lr.ph895 ], [ %.1428893, %bb.bk ], [ %i.wn, %._crit_edge884.thread ], [ %i.xr, %._crit_edge884 ], [ %.2429887, %.lr.ph889 ] ; 3 uses
  %indvars.iv.next995 = add nsw i64 %indvars.iv994, 1 ; 2 uses
  %exitcond998.not = icmp eq i64 %indvars.iv.next995, %wide.trip.count997
  br i1 %exitcond998.not, label %.lr.ph900, label %.lr.ph895, !llvm.loop !1133

bb.bq:                                            ; preds = %.lr.ph900, %bb.bu
  %indvars.iv999 = phi i64 [ %i.vi, %.lr.ph900 ], [ %indvars.iv.next1000, %bb.bu ] ; 2 uses
  %.11898 = phi i32 [ %i.ps, %.lr.ph900 ], [ %.12, %bb.bu ] ; 3 uses
  %.2738897 = phi i32 [ %.1737.lcssa, %.lr.ph900 ], [ %.3739, %bb.bu ] ; 2 uses
  %i.xs = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %indvars.iv999
  %i.xt = load i32, ptr %i.xs, align 4, !tbaa !97 ; 4 uses
  %i.xu = sext i32 %i.xt to i64                   ; 4 uses
  %i.xv = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.xu ; 2 uses
  %i.xw = load i32, ptr %i.xv, align 4, !tbaa !97 ; 3 uses
  %i.xx = icmp sgt i32 %i.xw, -1
  br i1 %i.xx, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.xy = sub nsw i32 0, %i.xw
  store i32 %i.xy, ptr %i.xv, align 4, !tbaa !97
  %i.xz = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %i.xu ; 2 uses
  %i.ya = load i32, ptr %i.xz, align 4, !tbaa !97
  %i.yb = add nsw i32 %i.ya, %.4731
  %i.yc = tail call i32 @llvm.smin.i32(i32 %i.vh, i32 %i.yb)
  %.sroa.speculated = add nsw i32 %i.yc, %i.xw    ; 3 uses
  %i.yd = sext i32 %.sroa.speculated to i64
  %i.ye = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.yd ; 3 uses
  %i.yf = load i32, ptr %i.ye, align 4, !tbaa !97 ; 2 uses
  %.not491 = icmp eq i32 %i.yf, -1
  br i1 %.not491, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.yg = sext i32 %i.yf to i64
  %i.yh = getelementptr inbounds [4 x i8], ptr %.fr, i64 %i.yg
  store i32 %i.xt, ptr %i.yh, align 4, !tbaa !97
  %.pre1031 = load i32, ptr %i.ye, align 4, !tbaa !97
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.yi = phi i32 [ %.pre1031, %bb.bs ], [ -1, %bb.br ]
  %i.yj = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.xu
  store i32 %i.yi, ptr %i.yj, align 4, !tbaa !97
  %i.yk = getelementptr inbounds [4 x i8], ptr %.fr, i64 %i.xu
  store i32 -1, ptr %i.yk, align 4, !tbaa !97
  store i32 %i.xt, ptr %i.ye, align 4, !tbaa !97
  %.sroa.speculated585 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated, i32 %.2738897)
  store i32 %.sroa.speculated, ptr %i.xz, align 4, !tbaa !97
  %i.yl = add nsw i32 %.11898, 1
  %i.ym = sext i32 %.11898 to i64
  %i.yn = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %i.ym
  store i32 %i.xt, ptr %i.yn, align 4, !tbaa !97
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bq, %bb.bt
  %.3739 = phi i32 [ %.2738897, %bb.bq ], [ %.sroa.speculated585, %bb.bt ] ; 3 uses
  %.12 = phi i32 [ %.11898, %bb.bq ], [ %i.yl, %bb.bt ] ; 5 uses
  %indvars.iv.next1000 = add nsw i64 %indvars.iv999, 1 ; 2 uses
  %exitcond1003.not = icmp eq i64 %indvars.iv.next1000, %wide.trip.count1002
  br i1 %exitcond1003.not, label %._crit_edge901, label %bb.bq, !llvm.loop !1134

._crit_edge901:                                   ; preds = %bb.bu
  store i32 %.1432, ptr %i.nk, align 4, !tbaa !97
  %i.yo = sub nsw i32 %.12, %i.ps
  store i32 %i.yo, ptr %i.ro, align 4, !tbaa !97
  %i.yp = icmp eq i32 %.12, %i.ps
  br i1 %i.yp, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %_ZN5Eigen8internalL9cs_wclearIiEET_S2_S2_PS2_S2_.exit534.thread, %._crit_edge901
  %.11.lcssa1141 = phi i32 [ %i.ps, %_ZN5Eigen8internalL9cs_wclearIiEET_S2_S2_PS2_S2_.exit534.thread ], [ %.12, %._crit_edge901 ]
  %.2738.lcssa1139 = phi i32 [ %.1737.lcssa, %_ZN5Eigen8internalL9cs_wclearIiEET_S2_S2_PS2_S2_.exit534.thread ], [ %.3739, %._crit_edge901 ]
  %.sroa.speculated689110911181137 = phi i32 [ %.sroa.speculated6891104, %_ZN5Eigen8internalL9cs_wclearIiEET_S2_S2_PS2_S2_.exit534.thread ], [ %.sroa.speculated689, %._crit_edge901 ]
  %.3423.lcssa110811191135 = phi i32 [ %i.nm, %_ZN5Eigen8internalL9cs_wclearIiEET_S2_S2_PS2_S2_.exit534.thread ], [ %.4424, %._crit_edge901 ]
  %.1428.lcssa11211133 = phi i32 [ %i.ve, %_ZN5Eigen8internalL9cs_wclearIiEET_S2_S2_PS2_S2_.exit534.thread ], [ %.3430, %._crit_edge901 ]
  store i32 -1, ptr %i.pp, align 4, !tbaa !97
  %i.yq = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.na
  store i32 0, ptr %i.yq, align 4, !tbaa !97
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %._crit_edge901
  %.11.lcssa1140 = phi i32 [ %.11.lcssa1141, %bb.bv ], [ %.12, %._crit_edge901 ]
  %.2738.lcssa1138 = phi i32 [ %.2738.lcssa1139, %bb.bv ], [ %.3739, %._crit_edge901 ]
  %.sroa.speculated689110911181136 = phi i32 [ %.sroa.speculated689110911181137, %bb.bv ], [ %.sroa.speculated689, %._crit_edge901 ]
  %.3423.lcssa110811191134 = phi i32 [ %.3423.lcssa110811191135, %bb.bv ], [ %.4424, %._crit_edge901 ] ; 2 uses
  %.1428.lcssa11211132 = phi i32 [ %.1428.lcssa11211133, %bb.bv ], [ %.3430, %._crit_edge901 ]
  %spec.select511 = select i1 %i.pr, i32 %.1, i32 %.11.lcssa1140
  %i.yr = icmp slt i32 %.3423.lcssa110811191134, %i.c
  br i1 %i.yr, label %.preheader770, label %.preheader763, !llvm.loop !1135

.preheader762:                                    ; preds = %.lr.ph910, %middle.block1334, %.preheader763
  br i1 %.not777108210841086, label %.preheader761, label %.lr.ph913.preheader

.lr.ph913.preheader:                              ; preds = %.preheader762
  %i.ys = zext nneg i32 %i.cy to i64
  %i.yt = shl nuw nsw i64 %i.ys, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ei, i8 -1, i64 range(i64 0, 8589934593) %i.yt, i1 false), !tbaa !97
  br label %.preheader761

.lr.ph910:                                        ; preds = %.lr.ph910.preheader1337, %.lr.ph910
  %indvars.iv1004 = phi i64 [ %indvars.iv.next1005, %.lr.ph910 ], [ %indvars.iv1004.ph, %.lr.ph910.preheader1337 ] ; 2 uses
  %i.yu = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv1004 ; 2 uses
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !97
  %i.yw = sub i32 -2, %i.yv
  store i32 %i.yw, ptr %i.yu, align 4, !tbaa !97
  %indvars.iv.next1005 = add nuw nsw i64 %indvars.iv1004, 1 ; 2 uses
  %exitcond1008.not = icmp eq i64 %indvars.iv.next1005, %wide.trip.count1007
  br i1 %exitcond1008.not, label %.preheader762, label %.lr.ph910, !llvm.loop !1136

.preheader761:                                    ; preds = %.lr.ph913.preheader, %.preheader762
  %i.yx = icmp sgt i32 %i.c, -1
  br i1 %i.yx, label %.lr.ph915.preheader, label %.preheader

.lr.ph915.preheader:                              ; preds = %.preheader761
  %i.yy = and i64 %i.b, 2147483647                ; 6 uses
  %i.yz = and i64 %i.b, 1
  %lcmp.mod1362.not.not = icmp eq i64 %i.yz, 0
  br i1 %lcmp.mod1362.not.not, label %.lr.ph915.prol, label %.lr.ph915.prol.loopexit

.lr.ph915.prol:                                   ; preds = %.lr.ph915.preheader
  %i.za = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.yy
  %i.zb = load i32, ptr %i.za, align 4, !tbaa !97
  %i.zc = icmp sgt i32 %i.zb, 0
  br i1 %i.zc, label %.lr.ph915.prol.loopexit.unr-lcssa, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph915.prol
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.yy ; 2 uses
  %i.ze = load i32, ptr %i.zd, align 4, !tbaa !97
  %i.zf = sext i32 %i.ze to i64
  %i.zg = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.zf
  %i.zh = load i32, ptr %i.zg, align 4, !tbaa !97
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.yy
  store i32 %i.zh, ptr %i.zi, align 4, !tbaa !97
  %i.zj = load i32, ptr %i.zd, align 4, !tbaa !97
  %i.zk = sext i32 %i.zj to i64
  %i.zl = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.zk
  %i.zm = trunc i64 %i.b to i32
  store i32 %i.zm, ptr %i.zl, align 4, !tbaa !97
  br label %.lr.ph915.prol.loopexit.unr-lcssa

.lr.ph915.prol.loopexit.unr-lcssa:                ; preds = %bb.bx, %.lr.ph915.prol
  %indvars.iv.next1013.prol = add nsw i64 %i.yy, -1
  br label %.lr.ph915.prol.loopexit

.lr.ph915.prol.loopexit:                          ; preds = %.lr.ph915.prol.loopexit.unr-lcssa, %.lr.ph915.preheader
  %indvars.iv1012.unr = phi i64 [ %i.yy, %.lr.ph915.preheader ], [ %indvars.iv.next1013.prol, %.lr.ph915.prol.loopexit.unr-lcssa ]
  %i.zn = icmp eq i64 %i.yy, 0
  br i1 %i.zn, label %.lr.ph917.preheader, label %.lr.ph915

.lr.ph917.preheader:                              ; preds = %bb.ca, %.lr.ph915.prol.loopexit
  %i.zo = and i64 %i.b, 2147483647
  br label %.lr.ph917

.lr.ph915:                                        ; preds = %.lr.ph915.prol.loopexit, %bb.ca
  %indvars.iv1012 = phi i64 [ %indvars.iv.next1013.1, %bb.ca ], [ %indvars.iv1012.unr, %.lr.ph915.prol.loopexit ] ; 7 uses
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv1012
  %i.zq = load i32, ptr %i.zp, align 4, !tbaa !97
  %i.zr = icmp sgt i32 %i.zq, 0
  br i1 %i.zr, label %.lr.ph915.1, label %bb.by

bb.by:                                            ; preds = %.lr.ph915
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv1012 ; 2 uses
  %i.zt = load i32, ptr %i.zs, align 4, !tbaa !97
  %i.zu = sext i32 %i.zt to i64
  %i.zv = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.zu
  %i.zw = load i32, ptr %i.zv, align 4, !tbaa !97
  %i.zx = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv1012
  store i32 %i.zw, ptr %i.zx, align 4, !tbaa !97
  %i.zy = load i32, ptr %i.zs, align 4, !tbaa !97
  %i.zz = sext i32 %i.zy to i64
  %i.aaa = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.zz
  %i.aab = trunc nuw nsw i64 %indvars.iv1012 to i32
  store i32 %i.aab, ptr %i.aaa, align 4, !tbaa !97
  br label %.lr.ph915.1

.lr.ph915.1:                                      ; preds = %.lr.ph915, %bb.by
  %indvars.iv.next1013 = add nsw i64 %indvars.iv1012, -1 ; 4 uses
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv.next1013
  %i.aad = load i32, ptr %i.aac, align 4, !tbaa !97
  %i.aae = icmp sgt i32 %i.aad, 0
  br i1 %i.aae, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %.lr.ph915.1
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv.next1013 ; 2 uses
  %i.aag = load i32, ptr %i.aaf, align 4, !tbaa !97
  %i.aah = sext i32 %i.aag to i64
  %i.aai = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.aah
  %i.aaj = load i32, ptr %i.aai, align 4, !tbaa !97
  %i.aak = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.next1013
  store i32 %i.aaj, ptr %i.aak, align 4, !tbaa !97
  %i.aal = load i32, ptr %i.aaf, align 4, !tbaa !97
  %i.aam = sext i32 %i.aal to i64
  %i.aan = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.aam
  %i.aao = trunc nuw nsw i64 %indvars.iv.next1013 to i32
  store i32 %i.aao, ptr %i.aan, align 4, !tbaa !97
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %.lr.ph915.1
  %indvars.iv.next1013.1 = add nsw i64 %indvars.iv1012, -2
  %i.aap = icmp sgt i64 %indvars.iv1012, 1
  br i1 %i.aap, label %.lr.ph915, label %.lr.ph917.preheader, !llvm.loop !1137

.preheader:                                       ; preds = %bb.cd, %.preheader761
  %.not752 = icmp eq ptr %.fr, null
  %or.cond = or i1 %.not777108210841086, %.not752
  br i1 %or.cond, label %._crit_edge922, label %.lr.ph921.split.preheader

.lr.ph921.split.preheader:                        ; preds = %.preheader
  %wide.trip.count1021 = zext nneg i32 %i.cy to i64
  br label %.lr.ph921.split

.lr.ph917:                                        ; preds = %.lr.ph917.preheader, %bb.cd
  %indvars.iv1015 = phi i64 [ %i.zo, %.lr.ph917.preheader ], [ %indvars.iv.next1016, %bb.cd ] ; 6 uses
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv1015
  %i.aar = load i32, ptr %i.aaq, align 4, !tbaa !97
  %i.aas = icmp slt i32 %i.aar, 1
  br i1 %i.aas, label %bb.cd, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph917
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv1015 ; 2 uses
  %i.aau = load i32, ptr %i.aat, align 4, !tbaa !97 ; 2 uses
  %.not485 = icmp eq i32 %i.aau, -1
  br i1 %.not485, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.aav = sext i32 %i.aau to i64
  %i.aaw = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.aav
  %i.aax = load i32, ptr %i.aaw, align 4, !tbaa !97
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv1015
  store i32 %i.aax, ptr %i.aay, align 4, !tbaa !97
  %i.aaz = load i32, ptr %i.aat, align 4, !tbaa !97
  %i.aba = sext i32 %i.aaz to i64
  %i.abb = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.aba
  %i.abc = trunc nuw nsw i64 %indvars.iv1015 to i32
  store i32 %i.abc, ptr %i.abb, align 4, !tbaa !97
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc, %.lr.ph917
  %indvars.iv.next1016 = add nsw i64 %indvars.iv1015, -1
  %i.abd = icmp sgt i64 %indvars.iv1015, 0
  br i1 %i.abd, label %.lr.ph917, label %.preheader, !llvm.loop !1138

.lr.ph921.split:                                  ; preds = %.lr.ph921.split.preheader, %_ZN5Eigen8internal7cs_tdfsIiEET_S2_S2_PS2_PKS2_S3_S3_.exit
  %indvars.iv1018 = phi i64 [ 0, %.lr.ph921.split.preheader ], [ %indvars.iv.next1019, %_ZN5Eigen8internal7cs_tdfsIiEET_S2_S2_PS2_PKS2_S3_S3_.exit ] ; 3 uses
  %.2742919 = phi i32 [ 0, %.lr.ph921.split.preheader ], [ %.3743, %_ZN5Eigen8internal7cs_tdfsIiEET_S2_S2_PS2_PKS2_S3_S3_.exit ] ; 2 uses
  %i.abe = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv1018
  %i.abf = load i32, ptr %i.abe, align 4, !tbaa !97
  %i.abg = icmp eq i32 %i.abf, -1
  br i1 %i.abg, label %bb.ce, label %_ZN5Eigen8internal7cs_tdfsIiEET_S2_S2_PS2_PKS2_S3_S3_.exit

bb.ce:                                            ; preds = %.lr.ph921.split
  %i.abh = trunc nuw nsw i64 %indvars.iv1018 to i32
  store i32 %i.abh, ptr %i.er, align 4, !tbaa !97
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ci, %bb.ce
  %.038.i = phi i32 [ 0, %bb.ce ], [ %.1.i, %bb.ci ] ; 3 uses
  %.03037.i = phi i32 [ %.2742919, %bb.ce ], [ %.131.i, %bb.ci ] ; 3 uses
  %i.abi = zext nneg i32 %.038.i to i64
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.abi
  %i.abk = load i32, ptr %i.abj, align 4, !tbaa !97 ; 2 uses
  %i.abl = sext i32 %i.abk to i64
  %i.abm = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.abl ; 2 uses
  %i.abn = load i32, ptr %i.abm, align 4, !tbaa !97 ; 3 uses
  %i.abo = icmp eq i32 %i.abn, -1
  br i1 %i.abo, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.abp = add nsw i32 %.038.i, -1
  %i.abq = add nsw i32 %.03037.i, 1
  %i.abr = sext i32 %.03037.i to i64
  %i.abs = getelementptr inbounds [4 x i8], ptr %.fr, i64 %i.abr
  store i32 %i.abk, ptr %i.abs, align 4, !tbaa !97
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cf
  %i.abt = sext i32 %i.abn to i64
  %i.abu = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.abt
  %i.abv = load i32, ptr %i.abu, align 4, !tbaa !97
  store i32 %i.abv, ptr %i.abm, align 4, !tbaa !97
  %i.abw = add nuw nsw i32 %.038.i, 1             ; 2 uses
  %i.abx = zext nneg i32 %i.abw to i64
  %i.aby = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.abx
  store i32 %i.abn, ptr %i.aby, align 4, !tbaa !97
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.131.i = phi i32 [ %i.abq, %bb.cg ], [ %.03037.i, %bb.ch ] ; 2 uses
  %.1.i = phi i32 [ %i.abp, %bb.cg ], [ %i.abw, %bb.ch ] ; 2 uses
  %i.abz = icmp sgt i32 %.1.i, -1
  br i1 %i.abz, label %bb.cf, label %_ZN5Eigen8internal7cs_tdfsIiEET_S2_S2_PS2_PKS2_S3_S3_.exit, !llvm.loop !1139

_ZN5Eigen8internal7cs_tdfsIiEET_S2_S2_PS2_PKS2_S3_S3_.exit: ; preds = %bb.ci, %.lr.ph921.split
  %.3743 = phi i32 [ %.2742919, %.lr.ph921.split ], [ %.131.i, %bb.ci ]
  %indvars.iv.next1019 = add nuw nsw i64 %indvars.iv1018, 1 ; 2 uses
  %exitcond1022.not = icmp eq i64 %indvars.iv.next1019, %wide.trip.count1021
  br i1 %exitcond1022.not, label %._crit_edge922, label %.lr.ph921.split, !llvm.loop !1140
end_hunk_1
