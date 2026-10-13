Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/direct_delta_mush?download=true
inline.NumInlined: 8135
inline.NumDeleted: 4104
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 65
begin_hunk_0_@_ZN3igl32direct_delta_mush_precomputationIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_S3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EEiNS6_6ScalarESI_SI_RNS1_15PlainObjectBaseIT2_EE:bb.a

bb.aa:                                            ; preds = %bb.z
  %i.fa = icmp samesign ugt i64 %i.ew, 2305843009213693951
  br i1 %i.fa, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.aa
  %i.fb = shl nuw i64 %i.ew, 3
  %i.fc = call noalias ptr @malloc(i64 noundef %i.fb) #26 ; 5 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %.invoke, label %bb.ab

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.aa, %bb.y
  %i.fe = call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.fe, align 8, !tbaa !82
  invoke void @__cxa_throw(ptr nonnull %i.fe, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
          to label %.cont unwind label %bb.ac

.cont:                                            ; preds = %.invoke
  unreachable

bb.ab:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  store ptr %i.fc, ptr %29, align 8, !tbaa !36
  store i64 %i.eq, ptr %i.es, align 8, !tbaa !22
  store i64 %i.er, ptr %i.et, align 8, !tbaa !25
  %i.ff = and i64 %i.ew, 2305843009213693950      ; 3 uses
  %.not = icmp eq i64 %i.ew, 1
  br i1 %.not, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %.thread838, %.thread, %bb.ab
  %i.fg = phi i64 [ 0, %.thread ], [ %i.ez, %.thread838 ], [ %i.ff, %bb.ab ], [ %i.ff, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  %.pre.i200837 = phi ptr [ null, %.thread ], [ null, %.thread838 ], [ %i.fc, %bb.ab ], [ %i.fc, %.lr.ph.i.i.i.i.i.i.i ] ; 7 uses
  %i.fh = icmp slt i64 %i.fg, %i.ew
  br i1 %i.fh, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %.loopexit653

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i.i
  %.pre.i200837879 = ptrtoaddr ptr %.pre.i200837 to i64
  %i.fi = sub i64 %i.ew, %i.fg                    ; 3 uses
  %min.iters.check881 = icmp ult i64 %i.fi, 8
  %i.fj = sub i64 %i.eo, %.pre.i200837879
  %diff.check = icmp ugt i64 %i.fj, -32
  %or.cond = select i1 %min.iters.check881, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.preheader1067, label %vector.ph882

vector.ph882:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec883 = and i64 %i.fi, -4                   ; 3 uses
  %i.fk = add i64 %i.fg, %n.vec883
  br label %vector.body884

vector.body884:                                   ; preds = %vector.body884, %vector.ph882
  %index885 = phi i64 [ 0, %vector.ph882 ], [ %index.next888, %vector.body884 ] ; 2 uses
  %i.fl = add i64 %i.fg, %index885                ; 2 uses
  %i.fm = getelementptr inbounds [8 x i8], ptr %.pre.i200837, i64 %i.fl ; 2 uses
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.fl ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %wide.load886 = load <2 x double>, ptr %i.fn, align 8, !tbaa !52
  %wide.load887 = load <2 x double>, ptr %i.fo, align 8, !tbaa !52
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store <2 x double> %wide.load886, ptr %i.fm, align 8, !tbaa !52
  store <2 x double> %wide.load887, ptr %i.fp, align 8, !tbaa !52
  %index.next888 = add nuw i64 %index885, 4       ; 2 uses
  %i.fq = icmp eq i64 %index.next888, %n.vec883
  br i1 %i.fq, label %middle.block889, label %vector.body884, !llvm.loop !256

middle.block889:                                  ; preds = %vector.body884
  %cmp.n890 = icmp eq i64 %i.fi, %n.vec883
  br i1 %cmp.n890, label %.loopexit653, label %.lr.ph.i.i.i.i.i.i.i.i.preheader1067

.lr.ph.i.i.i.i.i.i.i.i.preheader1067:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block889
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.fg, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.fk, %middle.block889 ] ; 4 uses
  %i.fr = sub i64 %i.ew, %.05.i.i.i.i.i.i.i.i.ph
  %xtraiter = and i64 %i.fr, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader1067, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.fv, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader1067 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader1067 ]
  %i.fs = getelementptr inbounds [8 x i8], ptr %.pre.i200837, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.en, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !52
  store double %i.fu, ptr %i.fs, align 8, !tbaa !52
  %i.fv = add nsw i64 %.05.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !257

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader1067
  %.05.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader1067 ], [ %i.fv, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.fw = sub i64 %.05.i.i.i.i.i.i.i.i.ph, %i.ew
  %i.fx = icmp ugt i64 %i.fw, -4
  br i1 %i.fx, label %.loopexit653, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.gn, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.fy = getelementptr inbounds [8 x i8], ptr %.pre.i200837, i64 %.05.i.i.i.i.i.i.i.i
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.en, i64 %.05.i.i.i.i.i.i.i.i
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !52
  store double %i.ga, ptr %i.fy, align 8, !tbaa !52
  %i.gb = add nsw i64 %.05.i.i.i.i.i.i.i.i, 1     ; 2 uses
  %i.gc = getelementptr inbounds [8 x i8], ptr %.pre.i200837, i64 %i.gb
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.gb
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !52
  store double %i.ge, ptr %i.gc, align 8, !tbaa !52
  %i.gf = add nsw i64 %.05.i.i.i.i.i.i.i.i, 2     ; 2 uses
  %i.gg = getelementptr inbounds [8 x i8], ptr %.pre.i200837, i64 %i.gf
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.gf
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !52
  store double %i.gi, ptr %i.gg, align 8, !tbaa !52
  %i.gj = add nsw i64 %.05.i.i.i.i.i.i.i.i, 3     ; 2 uses
  %i.gk = getelementptr inbounds [8 x i8], ptr %.pre.i200837, i64 %i.gj
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.gj
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !52
  store double %i.gm, ptr %i.gk, align 8, !tbaa !52
  %i.gn = add nsw i64 %.05.i.i.i.i.i.i.i.i, 4     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.gn, %i.ew
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.3, label %.loopexit653, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !258

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.ab, %.lr.ph.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i = phi i64 [ %i.gr, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %bb.ab ] ; 3 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %.011.i.i.i.i.i.i.i
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %.011.i.i.i.i.i.i.i
  %i.gq = load <2 x double>, ptr %i.gp, align 16, !tbaa !56
  store <2 x double> %i.gq, ptr %i.go, align 16, !tbaa !56
  %i.gr = add nuw nsw i64 %.011.i.i.i.i.i.i.i, 2  ; 2 uses
  %i.gs = icmp samesign ult i64 %i.gr, %i.ff
  br i1 %i.gs, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, !llvm.loop !1

bb.ac:                                            ; preds = %.invoke
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %.body201

.loopexit653:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block889, %_ZN5Eigen12SparseMatrixIdLi0EiEC2INS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKS1_KNS3_INS4_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS4_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_EEEEEERKNS_16SparseMatrixBaseIT_EE.exit, %._crit_edge.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #24
  store i8 0, ptr %31, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %31, i64 8
  store ptr %27, ptr %i.gu, align 8
  store i8 0, ptr %30, align 8, !tbaa !74
  %i.gv = getelementptr inbounds nuw i8, ptr %30, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.gv, i8 0, i64 64, i1 false)
  %i.gw = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIdLi0EiEaSINS_9TransposeIS1_EEEERS1_RKNS_16SparseMatrixBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(72) %30, ptr noundef nonnull align 1 dereferenceable(1) %31)
          to label %_ZN5Eigen12SparseMatrixIdLi0EiEC2INS_9TransposeIS1_EEEERKNS_16SparseMatrixBaseIT_EE.exit unwind label %bb.ad ; 0 uses

bb.ad:                                            ; preds = %.loopexit653
  %i.gx = landingpad { ptr, i32 }
          cleanup
  %i.gy = getelementptr inbounds nuw i8, ptr %30, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.gy) #24
  br label %.body203

_ZN5Eigen12SparseMatrixIdLi0EiEC2INS_9TransposeIS1_EEEERKNS_16SparseMatrixBaseIT_EE.exit: ; preds = %.loopexit653
  invoke void @_ZN5Eigen22SimplicialCholeskyBaseINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE7computeILb1EEEvRKS3_(ptr noundef nonnull align 8 dereferenceable(184) %26, ptr noundef nonnull align 8 dereferenceable(72) %30)
          to label %_ZN5Eigen14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEE7computeERKS2_.exit unwind label %bb.ak

_ZN5Eigen14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEE7computeERKS2_.exit: ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiEC2INS_9TransposeIS1_EEEERKNS_16SparseMatrixBaseIT_EE.exit
  %i.gz = getelementptr inbounds nuw i8, ptr %30, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !80
  call void @free(ptr noundef %i.ha) #24
  %i.hb = getelementptr inbounds nuw i8, ptr %30, i64 32
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !115
  call void @free(ptr noundef %i.hc) #24
  %i.hd = getelementptr inbounds nuw i8, ptr %30, i64 40
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !116 ; 2 uses
  %i.hf = icmp eq ptr %i.he, null
  br i1 %i.hf, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZN5Eigen14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEE7computeERKS2_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.he) #28
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZN5Eigen14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEE7computeERKS2_.exit
  %i.hg = getelementptr inbounds nuw i8, ptr %30, i64 48
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !117 ; 2 uses
  %i.hi = icmp eq ptr %i.hh, null
  br i1 %i.hi, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZdaPv(ptr noundef nonnull %i.hh) #28
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #24
  %i.hj = icmp sgt i32 %3, 0                      ; 2 uses
  br i1 %i.hj, label %.lr.ph659, label %._crit_edge660

._crit_edge660:                                   ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_5SolveINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEES1_EEEERS1_RKNS_9DenseBaseIT_EE.exit, %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %32, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi10ELi0ELin1ELi10EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %32, i64 noundef %i.g, i64 noundef 10)
          to label %_ZN5Eigen6MatrixIdLin1ELi10ELi0ELin1ELi10EEC2IiiEERKT_RKT0_.exit.preheader unwind label %bb.ah

_ZN5Eigen6MatrixIdLin1ELi10ELi0ELin1ELi10EEC2IiiEERKT_RKT0_.exit.preheader: ; preds = %._crit_edge660
  %i.hk = icmp sgt i32 %i.c, 0                    ; 3 uses
  br i1 %i.hk, label %.lr.ph662, label %_ZN5Eigen6MatrixIdLin1ELi10ELi0ELin1ELi10EEC2IiiEERKT_RKT0_.exit._crit_edge

.lr.ph662:                                        ; preds = %_ZN5Eigen6MatrixIdLin1ELi10ELi0ELin1ELi10EEC2IiiEERKT_RKT0_.exit.preheader
  %i.hl = load ptr, ptr %14, align 8, !tbaa !24, !noalias !319 ; 3 uses
  %i.hm = load i64, ptr %i.n, align 8, !tbaa !26, !noalias !320 ; 5 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %i.hm, 4 ; 12 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = mul i64 %i.hm, 24 ; 12 uses
  %i.hn = load ptr, ptr %32, align 8              ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.hp = load i64, ptr %i.ho, align 8            ; 11 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i219 = shl i64 %i.hp, 4 ; 4 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i220 = mul i64 %i.hp, 24 ; 5 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %i.hp, 5 ; 4 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = mul i64 %i.hp, 40 ; 5 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = mul i64 %i.hp, 48 ; 4 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = mul i64 %i.hp, 56 ; 5 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i221 = shl i64 %i.hp, 6 ; 4 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = mul i64 %i.hp, 72 ; 5 uses
  %wide.trip.count = and i64 %i.b, 2147483647     ; 3 uses
  %min.iters.check990 = icmp samesign ult i64 %wide.trip.count, 60
  br i1 %min.iters.check990, label %.preheader.i.preheader.preheader, label %vector.memcheck892

vector.memcheck892:                               ; preds = %.lr.ph662
  %i.hq = ptrtoaddr ptr %i.hn to i64              ; 20 uses
  %i.hr = ptrtoaddr ptr %i.hl to i64              ; 20 uses
  %i.hs = shl nsw i64 %i.hp, 3                    ; 3 uses
  %i.ht = add i64 %i.hs, -1
  %diff.check893 = icmp ult i64 %i.ht, 15
  %i.hu = add i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i220, -1
  %diff.check895 = icmp ult i64 %i.hu, 15
  %conflict.rdx896 = or i1 %diff.check893, %diff.check895
  %i.hv = add i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %diff.check899 = icmp ult i64 %i.hv, 15
  %conflict.rdx900 = or i1 %conflict.rdx896, %diff.check899
  %i.hw = add i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %diff.check903 = icmp ult i64 %i.hw, 15
  %conflict.rdx904 = or i1 %conflict.rdx900, %diff.check903
  %i.hx = add i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %diff.check907 = icmp ult i64 %i.hx, 15
  %conflict.rdx908 = or i1 %conflict.rdx904, %diff.check907
  %i.hy = sub i64 %i.hq, %i.hr                    ; 2 uses
  %i.hz = sub i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.hy
  %diff.check909 = icmp ugt i64 %i.hz, -16
  %conflict.rdx910 = or i1 %conflict.rdx908, %diff.check909
  %i.ia = sub i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.hy
  %diff.check911 = icmp ugt i64 %i.ia, -16
  %conflict.rdx912 = or i1 %conflict.rdx910, %diff.check911
  %47 = sub i64 %i.hq, %i.hr                      ; 2 uses
  %i.ib = shl nsw i64 %i.hm, 3                    ; 10 uses
  %i.ic = sub i64 %i.ib, %47
  %diff.check913 = icmp ugt i64 %i.ic, -16
  %conflict.rdx914 = or i1 %conflict.rdx912, %diff.check913
  %i.id = add i64 %47, -1
  %diff.check915 = icmp ult i64 %i.id, 15
  %conflict.rdx916 = or i1 %conflict.rdx914, %diff.check915
  %i.ie = add i64 %i.hs, %i.hq
  %i.if = sub i64 %i.ie, %i.hr                    ; 2 uses
  %i.ig = sub i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.if
  %diff.check917 = icmp ugt i64 %i.ig, -16
  %conflict.rdx918 = or i1 %conflict.rdx916, %diff.check917
  %i.ih = sub i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.if
  %diff.check919 = icmp ugt i64 %i.ih, -16
  %conflict.rdx920 = or i1 %conflict.rdx918, %diff.check919
  %48 = add i64 %i.hs, %i.hq
  %49 = sub i64 %48, %i.hr                        ; 2 uses
  %i.ii = sub i64 %i.ib, %49
  %diff.check921 = icmp ugt i64 %i.ii, -16
  %conflict.rdx922 = or i1 %conflict.rdx920, %diff.check921
  %i.ij = add i64 %49, -1
  %diff.check923 = icmp ult i64 %i.ij, 15
  %conflict.rdx924 = or i1 %conflict.rdx922, %diff.check923
  %i.ik = add i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i219, %i.hq
  %i.il = sub i64 %i.ik, %i.hr                    ; 2 uses
  %i.im = sub i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.il
  %diff.check925 = icmp ugt i64 %i.im, -16
  %conflict.rdx926 = or i1 %conflict.rdx924, %diff.check925
  %i.in = sub i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.il
  %diff.check927 = icmp ugt i64 %i.in, -16
  %conflict.rdx928 = or i1 %conflict.rdx926, %diff.check927
  %50 = add i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i219, %i.hq
  %51 = sub i64 %50, %i.hr                        ; 2 uses
  %i.io = sub i64 %i.ib, %51
  %diff.check929 = icmp ugt i64 %i.io, -16
  %conflict.rdx930 = or i1 %conflict.rdx928, %diff.check929
  %i.ip = add i64 %51, -1
  %diff.check931 = icmp ult i64 %i.ip, 15
  %conflict.rdx932 = or i1 %conflict.rdx930, %diff.check931
  %i.iq = add i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i220, %i.hq
  %i.ir = sub i64 %i.iq, %i.hr                    ; 2 uses
  %i.is = sub i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ir
  %diff.check933 = icmp ugt i64 %i.is, -16
  %conflict.rdx934 = or i1 %conflict.rdx932, %diff.check933
  %i.it = sub i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ir
  %diff.check935 = icmp ugt i64 %i.it, -16
  %conflict.rdx936 = or i1 %conflict.rdx934, %diff.check935
  %52 = add i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i220, %i.hq
  %53 = sub i64 %52, %i.hr                        ; 2 uses
  %i.iu = sub i64 %i.ib, %53
  %diff.check937 = icmp ugt i64 %i.iu, -16
  %conflict.rdx938 = or i1 %conflict.rdx936, %diff.check937
  %i.iv = add i64 %53, -1
  %diff.check939 = icmp ult i64 %i.iv, 15
  %conflict.rdx940 = or i1 %conflict.rdx938, %diff.check939
  %i.iw = add i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.hq
  %i.ix = sub i64 %i.iw, %i.hr                    ; 2 uses
  %i.iy = sub i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ix
  %diff.check941 = icmp ugt i64 %i.iy, -16
  %conflict.rdx942 = or i1 %conflict.rdx940, %diff.check941
  %i.iz = sub i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ix
  %diff.check943 = icmp ugt i64 %i.iz, -16
  %conflict.rdx944 = or i1 %conflict.rdx942, %diff.check943
  %54 = add i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.hq
  %55 = sub i64 %54, %i.hr                        ; 2 uses
  %i.ja = sub i64 %i.ib, %55
  %diff.check945 = icmp ugt i64 %i.ja, -16
  %conflict.rdx946 = or i1 %conflict.rdx944, %diff.check945
  %i.jb = add i64 %55, -1
  %diff.check947 = icmp ult i64 %i.jb, 15
  %conflict.rdx948 = or i1 %conflict.rdx946, %diff.check947
  %i.jc = add i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.hq
  %i.jd = sub i64 %i.jc, %i.hr                    ; 2 uses
  %i.je = sub i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.jd
  %diff.check949 = icmp ugt i64 %i.je, -16
  %conflict.rdx950 = or i1 %conflict.rdx948, %diff.check949
  %i.jf = sub i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.jd
  %diff.check951 = icmp ugt i64 %i.jf, -16
  %conflict.rdx952 = or i1 %conflict.rdx950, %diff.check951
  %56 = add i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.hq
  %57 = sub i64 %56, %i.hr                        ; 2 uses
  %i.jg = sub i64 %i.ib, %57
  %diff.check953 = icmp ugt i64 %i.jg, -16
  %conflict.rdx954 = or i1 %conflict.rdx952, %diff.check953
  %i.jh = add i64 %57, -1
  %diff.check955 = icmp ult i64 %i.jh, 15
  %conflict.rdx956 = or i1 %conflict.rdx954, %diff.check955
  %i.ji = add i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.hq
  %i.jj = sub i64 %i.ji, %i.hr                    ; 2 uses
  %i.jk = sub i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.jj
  %diff.check957 = icmp ugt i64 %i.jk, -16
  %conflict.rdx958 = or i1 %conflict.rdx956, %diff.check957
  %i.jl = sub i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.jj
  %diff.check959 = icmp ugt i64 %i.jl, -16
  %conflict.rdx960 = or i1 %conflict.rdx958, %diff.check959
  %58 = add i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.hq
  %59 = sub i64 %58, %i.hr                        ; 2 uses
  %i.jm = sub i64 %i.ib, %59
  %diff.check961 = icmp ugt i64 %i.jm, -16
  %conflict.rdx962 = or i1 %conflict.rdx960, %diff.check961
  %i.jn = add i64 %59, -1
  %diff.check963 = icmp ult i64 %i.jn, 15
  %conflict.rdx964 = or i1 %conflict.rdx962, %diff.check963
  %i.jo = add i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.hq
  %i.jp = sub i64 %i.jo, %i.hr                    ; 2 uses
  %i.jq = sub i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.jp
  %diff.check965 = icmp ugt i64 %i.jq, -16
  %conflict.rdx966 = or i1 %conflict.rdx964, %diff.check965
  %i.jr = sub i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.jp
  %diff.check967 = icmp ugt i64 %i.jr, -16
  %conflict.rdx968 = or i1 %conflict.rdx966, %diff.check967
  %60 = add i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.hq
  %61 = sub i64 %60, %i.hr                        ; 2 uses
  %i.js = sub i64 %i.ib, %61
  %diff.check969 = icmp ugt i64 %i.js, -16
  %conflict.rdx970 = or i1 %conflict.rdx968, %diff.check969
  %i.jt = add i64 %61, -1
  %diff.check971 = icmp ult i64 %i.jt, 15
  %conflict.rdx972 = or i1 %conflict.rdx970, %diff.check971
  %i.ju = add i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i221, %i.hq
  %i.jv = sub i64 %i.ju, %i.hr                    ; 2 uses
  %i.jw = sub i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.jv
  %diff.check973 = icmp ugt i64 %i.jw, -16
  %conflict.rdx974 = or i1 %conflict.rdx972, %diff.check973
  %i.jx = sub i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.jv
  %diff.check975 = icmp ugt i64 %i.jx, -16
  %conflict.rdx976 = or i1 %conflict.rdx974, %diff.check975
  %62 = add i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i221, %i.hq
  %63 = sub i64 %62, %i.hr                        ; 2 uses
  %i.jy = sub i64 %i.ib, %63
  %diff.check977 = icmp ugt i64 %i.jy, -16
  %conflict.rdx978 = or i1 %conflict.rdx976, %diff.check977
  %i.jz = add i64 %63, -1
  %diff.check979 = icmp ult i64 %i.jz, 15
  %conflict.rdx980 = or i1 %conflict.rdx978, %diff.check979
  %i.ka = add i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.hq
  %i.kb = sub i64 %i.ka, %i.hr                    ; 2 uses
  %i.kc = sub i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.kb
  %diff.check981 = icmp ugt i64 %i.kc, -16
  %conflict.rdx982 = or i1 %conflict.rdx980, %diff.check981
  %i.kd = sub i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.kb
  %diff.check983 = icmp ugt i64 %i.kd, -16
  %conflict.rdx984 = or i1 %conflict.rdx982, %diff.check983
  %64 = add i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.hq
  %65 = sub i64 %64, %i.hr                        ; 2 uses
  %i.ke = sub i64 %i.ib, %65
  %diff.check985 = icmp ugt i64 %i.ke, -16
  %conflict.rdx986 = or i1 %conflict.rdx984, %diff.check985
  %i.kf = add i64 %65, -1
  %diff.check987 = icmp ult i64 %i.kf, 15
  %conflict.rdx988 = or i1 %conflict.rdx986, %diff.check987
  br i1 %conflict.rdx988, label %.preheader.i.preheader.preheader, label %vector.ph991

vector.ph991:                                     ; preds = %vector.memcheck892
  %n.vec992 = and i64 %i.b, 2147483646            ; 3 uses
  br label %vector.body993

vector.body993:                                   ; preds = %vector.body993, %vector.ph991
  %index994 = phi i64 [ 0, %vector.ph991 ], [ %index.next999, %vector.body993 ] ; 3 uses
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %index994 ; 4 uses
  %wide.load995 = load <2 x double>, ptr %i.kg, align 8, !tbaa !52 ; 5 uses
  %i.kh = getelementptr inbounds [8 x i8], ptr %i.kg, i64 %i.hm
  %wide.load996 = load <2 x double>, ptr %i.kh, align 8, !tbaa !52 ; 5 uses
  %i.ki = getelementptr inbounds i8, ptr %i.kg, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  %wide.load997 = load <2 x double>, ptr %i.ki, align 8, !tbaa !52 ; 5 uses
  %i.kj = getelementptr inbounds i8, ptr %i.kg, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %wide.load998 = load <2 x double>, ptr %i.kj, align 8, !tbaa !52 ; 5 uses
  %i.kk = fmul <2 x double> %wide.load998, %wide.load998
  %i.kl = fmul <2 x double> %wide.load997, %wide.load998
  %i.km = fmul <2 x double> %wide.load997, %wide.load997
  %i.kn = fmul <2 x double> %wide.load996, %wide.load998
  %i.ko = fmul <2 x double> %wide.load995, %wide.load998
  %i.kp = fmul <2 x double> %wide.load996, %wide.load997
  %i.kq = fmul <2 x double> %wide.load995, %wide.load997
  %i.kr = fmul <2 x double> %wide.load996, %wide.load996
  %i.ks = fmul <2 x double> %wide.load995, %wide.load996
  %i.kt = fmul <2 x double> %wide.load995, %wide.load995
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %index994 ; 10 uses
  store <2 x double> %i.kt, ptr %i.ku, align 8, !tbaa !52
  %i.kv = getelementptr inbounds [8 x i8], ptr %i.ku, i64 %i.hp
  store <2 x double> %i.ks, ptr %i.kv, align 8, !tbaa !52
  %i.kw = getelementptr inbounds i8, ptr %i.ku, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i219
  store <2 x double> %i.kq, ptr %i.kw, align 8, !tbaa !52
  %i.kx = getelementptr inbounds i8, ptr %i.ku, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i220
  store <2 x double> %i.ko, ptr %i.kx, align 8, !tbaa !52
  %i.ky = getelementptr inbounds i8, ptr %i.ku, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store <2 x double> %i.kr, ptr %i.ky, align 8, !tbaa !52
  %i.kz = getelementptr inbounds i8, ptr %i.ku, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store <2 x double> %i.kp, ptr %i.kz, align 8, !tbaa !52
  %i.la = getelementptr inbounds i8, ptr %i.ku, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store <2 x double> %i.kn, ptr %i.la, align 8, !tbaa !52
  %i.lb = getelementptr inbounds i8, ptr %i.ku, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store <2 x double> %i.km, ptr %i.lb, align 8, !tbaa !52
  %i.lc = getelementptr inbounds i8, ptr %i.ku, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i221
  store <2 x double> %i.kl, ptr %i.lc, align 8, !tbaa !52
  %i.ld = getelementptr inbounds i8, ptr %i.ku, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store <2 x double> %i.kk, ptr %i.ld, align 8, !tbaa !52
  %index.next999 = add nuw i64 %index994, 2       ; 2 uses
  %i.le = icmp eq i64 %index.next999, %n.vec992
  br i1 %i.le, label %middle.block1000, label %vector.body993, !llvm.loop !263

middle.block1000:                                 ; preds = %vector.body993
  %cmp.n1001 = icmp eq i64 %wide.trip.count, %n.vec992
  br i1 %cmp.n1001, label %_ZN5Eigen6MatrixIdLin1ELi10ELi0ELin1ELi10EEC2IiiEERKT_RKT0_.exit._crit_edge, label %.preheader.i.preheader.preheader

.preheader.i.preheader.preheader:                 ; preds = %vector.memcheck892, %.lr.ph662, %middle.block1000
  %indvars.iv698.ph = phi i64 [ 0, %vector.memcheck892 ], [ 0, %.lr.ph662 ], [ %n.vec992, %middle.block1000 ]
  br label %.preheader.i.preheader

bb.ah:                                            ; preds = %._crit_edge660
  %i.lf = landingpad { ptr, i32 }
          cleanup
  br label %.body205

bb.ai:                                            ; preds = %._crit_edge
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.aj:                                            ; preds = %.body192, %bb.ai
  %.pn128 = phi { ptr, i32 } [ %i.dh, %.body192 ], [ %i.lg, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit362

bb.ak:                                            ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiEC2INS_9TransposeIS1_EEEERKNS_16SparseMatrixBaseIT_EE.exit
  %i.lh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %30) #24
  br label %.body203

.body203:                                         ; preds = %bb.ad, %bb.ak
  %.pn130 = phi { ptr, i32 } [ %i.lh, %bb.ak ], [ %i.gx, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #24
  br label %.body201

.lr.ph659:                                        ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_5SolveINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEES1_EEEERS1_RKNS_9DenseBaseIT_EE.exit
  %.072658 = phi i32 [ %i.lx, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_5SolveINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEES1_EEEERS1_RKNS_9DenseBaseIT_EE.exit ], [ 0, %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit ]
  %i.li = load i64, ptr %i.du, align 8, !tbaa !83 ; 5 uses
  %i.lj = load i64, ptr %i.et, align 8, !tbaa !25 ; 4 uses
  %i.lk = load i64, ptr %i.es, align 8, !tbaa !22
  %.not.i.i.i.i.i.i = icmp eq i64 %i.lk, %i.li
  br i1 %.not.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4_setINS_5SolveINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEES2_EEEERS2_RKNS_9DenseBaseIT_EE.exit.i, label %bb.al

bb.al:                                            ; preds = %.lr.ph659
  %i.ll = icmp eq i64 %i.li, 0
  %i.lm = icmp eq i64 %i.lj, 0                    ; 2 uses
  %or.cond.i.i.i.i.i.i.i.i = or i1 %i.ll, %i.lm
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ln = sdiv i64 9223372036854775807, %i.lj
  %i.lo = icmp sgt i64 %i.li, %i.ln
  br i1 %i.lo, label %.invoke846, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.thread

.invoke846:                                       ; preds = %bb.am, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i387, %bb.an
  %i.lp = call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.lp, align 8, !tbaa !82
  invoke void @__cxa_throw(ptr nonnull %i.lp, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
          to label %.cont847 unwind label %.loopexit.split-lp649

.cont847:                                         ; preds = %.invoke846
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i: ; preds = %bb.al
  br i1 %i.lm, label %.noexc209, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.thread

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.thread: ; preds = %bb.am, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i
  %i.lq = mul nsw i64 %i.lj, %i.li                ; 3 uses
  %i.lr = load ptr, ptr %29, align 8, !tbaa !36
  call void @free(ptr noundef %i.lr) #24
  %i.ls = icmp sgt i64 %i.lq, 0
  br i1 %i.ls, label %bb.an, label %.sink.split.i385

bb.an:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.thread
  %i.lt = icmp samesign ugt i64 %i.lq, 2305843009213693951
  br i1 %i.lt, label %.invoke846, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i387

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i387: ; preds = %bb.an
  %i.lu = shl nuw i64 %i.lq, 3
  %i.lv = call noalias ptr @malloc(i64 noundef %i.lu) #26 ; 2 uses
  %i.lw = icmp eq ptr %i.lv, null
  br i1 %i.lw, label %.invoke846, label %.sink.split.i385

.sink.split.i385:                                 ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i387, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.thread
  %.sink.i386 = phi ptr [ %i.lv, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i387 ], [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.thread ]
  store ptr %.sink.i386, ptr %29, align 8, !tbaa !36
  br label %.noexc209

.noexc209:                                        ; preds = %.sink.split.i385, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i
  store i64 %i.li, ptr %i.es, align 8, !tbaa !22
  store i64 %i.lj, ptr %i.et, align 8, !tbaa !25
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4_setINS_5SolveINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEES2_EEEERS2_RKNS_9DenseBaseIT_EE.exit.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4_setINS_5SolveINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEES2_EEEERS2_RKNS_9DenseBaseIT_EE.exit.i: ; preds = %.noexc209, %.lr.ph659
  invoke void @_ZNK5Eigen22SimplicialCholeskyBaseINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE11_solve_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEESA_EEvRKNS_10MatrixBaseIT_EERNSB_IT0_EE(ptr noundef nonnull align 8 dereferenceable(184) %26, ptr noundef nonnull align 1 dereferenceable(1) %29, ptr noundef nonnull align 8 dereferenceable(24) %29)
          to label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_5SolveINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEES1_EEEERS1_RKNS_9DenseBaseIT_EE.exit unwind label %.loopexit648

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_5SolveINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEES1_EEEERS1_RKNS_9DenseBaseIT_EE.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4_setINS_5SolveINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEES2_EEEERS2_RKNS_9DenseBaseIT_EE.exit.i
  %i.lx = add nuw nsw i32 %.072658, 1             ; 2 uses
  %exitcond689.not = icmp eq i32 %i.lx, %3
  br i1 %exitcond689.not, label %._crit_edge660, label %.lr.ph659, !llvm.loop !264

.loopexit648:                                     ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4_setINS_5SolveINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEES2_EEEERS2_RKNS_9DenseBaseIT_EE.exit.i
  %lpad.loopexit650 = landingpad { ptr, i32 }
          cleanup
  br label %.body201

.loopexit.split-lp649:                            ; preds = %.invoke846
  %lpad.loopexit.split-lp651 = landingpad { ptr, i32 }
          cleanup
  br label %.body201

_ZN5Eigen6MatrixIdLin1ELi10ELi0ELin1ELi10EEC2IiiEERKT_RKT0_.exit._crit_edge: ; preds = %.preheader.i.preheader, %middle.block1000, %_ZN5Eigen6MatrixIdLin1ELi10ELi0ELin1ELi10EEC2IiiEERKT_RKT0_.exit.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %33, i8 0, i64 24, i1 false)
  %sext645 = mul i64 %i.e, 42949672960            ; 2 uses
  %i.ly = ashr exact i64 %sext645, 32             ; 5 uses
  %i.lz = icmp eq i32 %i.c, 0
  %i.ma = icmp eq i32 %i.f, 0
  %or.cond.i.i.i.i = or i1 %i.lz, %i.ma
  br i1 %or.cond.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZN5Eigen6MatrixIdLin1ELi10ELi0ELin1ELi10EEC2IiiEERKT_RKT0_.exit._crit_edge
  %i.mb = sdiv i64 9223372036854775807, %i.ly
  %i.mc = icmp slt i64 %i.mb, %i.g
  br i1 %i.mc, label %.invoke848, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i: ; preds = %bb.ao, %_ZN5Eigen6MatrixIdLin1ELi10ELi0ELin1ELi10EEC2IiiEERKT_RKT0_.exit._crit_edge
  %i.md = mul nsw i64 %i.ly, %i.g                 ; 5 uses
  %i.me = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %33, i64 16
  %.not.i391 = icmp eq i64 %i.md, 0
  br i1 %.not.i391, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.mg = icmp sgt i64 %i.md, 0
  br i1 %i.mg, label %bb.aq, label %.sink.split.i392

bb.aq:                                            ; preds = %bb.ap
  %i.mh = icmp samesign ugt i64 %i.md, 2305843009213693951
  br i1 %i.mh, label %.invoke848, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i394

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i394: ; preds = %bb.aq
  %i.mi = shl nuw i64 %i.md, 3
  %i.mj = call noalias ptr @malloc(i64 noundef %i.mi) #26 ; 2 uses
  %i.mk = icmp eq ptr %i.mj, null
end_hunk_0
