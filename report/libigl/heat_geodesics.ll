Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/heat_geodesics?download=true
inline.NumInlined: 1824
inline.NumDeleted: 923
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi1ElEENS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEEEKNS_9TransposeINS2_IdLi0EiEEEEEENS_15DiagonalWrapperIKNS_9ReplicateINSB_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1EEEEELi0EEEEEvRT_RKT0_:bb.a
  br label %_ZN5Eigen8internal33sparse_diagonal_product_evaluatorINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEEEKNS_9TransposeINS_12SparseMatrixIdLi0EiEEEEEENSD_IKNS_9ReplicateINS8_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1EEEEELi1EE13InnerIteratorC2ERKSO_l.exit

_ZN5Eigen8internal33sparse_diagonal_product_evaluatorINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEEEKNS_9TransposeINS_12SparseMatrixIdLi0EiEEEEEENSD_IKNS_9ReplicateINS8_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1EEEEELi1EE13InnerIteratorC2ERKSO_l.exit: ; preds = %bb.h, %bb.i
  %.sink.i.i.i.i = phi i64 [ %i.br, %bb.h ], [ %i.bv, %bb.i ] ; 2 uses
  %i.bw = icmp sgt i64 %.sink.i.i.i.i, %i.bm
  br i1 %i.bw, label %.lr.ph149, label %_ZN5Eigen12SparseMatrixIdLi1ElE7reserveEl.exit

_ZN5Eigen12SparseMatrixIdLi1ElE7reserveEl.exit:   ; preds = %bb.m, %_ZN5Eigen8internal33sparse_diagonal_product_evaluatorINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEEEKNS_9TransposeINS_12SparseMatrixIdLi0EiEEEEEENSD_IKNS_9ReplicateINS8_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1EEEEELi1EE13InnerIteratorC2ERKSO_l.exit
  %i.bx = add nuw nsw i64 %.037151, 1             ; 2 uses
  %exitcond157.not = icmp eq i64 %i.bx, %i.g
  br i1 %exitcond157.not, label %_ZN5Eigen12SparseMatrixIdLi1ElE7reserveEl.exit._crit_edge, label %bb.g, !llvm.loop !236

.lr.ph149:                                        ; preds = %_ZN5Eigen8internal33sparse_diagonal_product_evaluatorINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEEEKNS_9TransposeINS_12SparseMatrixIdLi0EiEEEEEENSD_IKNS_9ReplicateINS8_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1EEEEELi1EE13InnerIteratorC2ERKSO_l.exit, %bb.m
  %.sroa.11119.0148 = phi i64 [ %i.do, %bb.m ], [ %i.bm, %_ZN5Eigen8internal33sparse_diagonal_product_evaluatorINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEEEKNS_9TransposeINS_12SparseMatrixIdLi0EiEEEEEENSD_IKNS_9ReplicateINS8_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1EEEEELi1EE13InnerIteratorC2ERKSO_l.exit ] ; 3 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %.sroa.11119.0148
  %i.bz = load double, ptr %i.by, align 8, !tbaa !26
  %i.ca = fmul double %i.c, %i.bz
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %.sroa.11119.0148
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !30
  %i.cd = sext i32 %i.cc to i64                   ; 2 uses
  %i.ce = load ptr, ptr %.sroa.0.i.i.sroa.0.0.copyload, align 8, !tbaa !24
  %i.cf = load i64, ptr %i.j, align 8, !tbaa !23
  %i.cg = srem i64 %i.cd, %i.cf
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.cg
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !26
  %i.cj = fmul double %i.ca, %i.ci
  %i.ck = load ptr, ptr %i.p, align 8, !tbaa !118
  %i.cl = getelementptr [8 x i8], ptr %i.ck, i64 %.037151
  %i.cm = getelementptr i8, ptr %i.cl, i64 8      ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !84 ; 2 uses
  %i.co = add nsw i64 %i.cn, 1
  store i64 %i.co, ptr %i.cm, align 8, !tbaa !84
  %i.cp = load i64, ptr %i.o, align 8, !tbaa !126 ; 4 uses
  %i.cq = add nsw i64 %i.cp, 1                    ; 3 uses
  %i.cr = load i64, ptr %i.ap, align 8, !tbaa !127
  %.not141 = icmp sgt i64 %i.cr, %i.cp
  br i1 %.not141, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.lr.ph149
  %i.cs = sitofp i64 %i.cq to double
  %i.ct = fptosi double %i.cs to i64              ; 2 uses
  %i.cu = add nsw i64 %i.cq, %i.ct                ; 4 uses
  %i.cv = icmp slt i64 %i.ct, 0
  br i1 %i.cv, label %.noexc, label %.noexc67

.noexc:                                           ; preds = %bb.j
  %i.cw = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.cw, align 8, !tbaa !81
  tail call void @__cxa_throw(ptr nonnull %i.cw, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
  unreachable

.noexc67:                                         ; preds = %bb.j
  %i.cx = icmp ugt i64 %i.cu, 2305843009213693951
  %i.cy = shl nuw i64 %i.cu, 3
  %i.cz = select i1 %i.cx, i64 -1, i64 %i.cy      ; 2 uses
  %i.da = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cz) #24 ; 3 uses
  %i.db = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cz) #24
          to label %_ZN5Eigen8internal12scoped_arrayIlEC2El.exit.i.i unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i ; 2 uses

_ZN5Eigen8internal12scoped_arrayIlEC2El.exit.i.i: ; preds = %.noexc67
  %i.dc = load i64, ptr %i.o, align 8, !tbaa !84
  %.sroa.speculated.i.i = tail call i64 @llvm.smin.i64(i64 %i.dc, i64 %i.cu) ; 2 uses
  %i.dd = icmp sgt i64 %.sroa.speculated.i.i, 0
  %.pre.i.i = load ptr, ptr %i.aj, align 8, !tbaa !122 ; 3 uses
  br i1 %i.dd, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i, label %_ZN5Eigen8internal12scoped_arrayIlEC2El.exit._ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit_crit_edge.i.i

_ZN5Eigen8internal12scoped_arrayIlEC2El.exit._ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit_crit_edge.i.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIlEC2El.exit.i.i
  %.pre23.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !128
  br label %_ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit.i.i

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIlEC2El.exit.i.i
  %.idx.i.i = shl nuw nsw i64 %.sroa.speculated.i.i, 3 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.da, ptr align 8 %.pre.i.i, i64 %.idx.i.i, i1 false)
  %i.de = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !117 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.db, ptr align 8 %i.de, i64 %.idx.i.i, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit.i.i

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i: ; preds = %.noexc67
  %i.df = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.da) #23
  br label %.body68

_ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit.i.i: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i, %_ZN5Eigen8internal12scoped_arrayIlEC2El.exit._ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit_crit_edge.i.i
  %i.dg = phi ptr [ %.pre23.i.i, %_ZN5Eigen8internal12scoped_arrayIlEC2El.exit._ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit_crit_edge.i.i ], [ %i.de, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i ] ; 2 uses
  store ptr %i.da, ptr %i.aj, align 8, !tbaa !122
  store ptr %i.db, ptr %.phi.trans.insert.i.i, align 8, !tbaa !128
  store i64 %i.cu, ptr %i.ap, align 8, !tbaa !127
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %_ZN5Eigen8internal12scoped_arrayIlED2Ev.exit8.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.dg) #23
  br label %_ZN5Eigen8internal12scoped_arrayIlED2Ev.exit8.i.i

_ZN5Eigen8internal12scoped_arrayIlED2Ev.exit8.i.i: ; preds = %bb.k, %_ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit.i.i
  %i.di = icmp eq ptr %.pre.i.i, null
  br i1 %i.di, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5Eigen8internal12scoped_arrayIlED2Ev.exit8.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #23
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph149, %_ZN5Eigen8internal12scoped_arrayIlED2Ev.exit8.i.i, %bb.l
  store i64 %i.cq, ptr %i.o, align 8, !tbaa !126
  %i.dj = load ptr, ptr %i.aj, align 8, !tbaa !121 ; 2 uses
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %i.cp
  store double 0.000000e+00, ptr %i.dk, align 8, !tbaa !26
  %i.dl = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !117
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.cp
  store i64 %i.cd, ptr %i.dm, align 8, !tbaa !84
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %i.cn
  store double %i.cj, ptr %i.dn, align 8, !tbaa !26
  %i.do = add nsw i64 %.sroa.11119.0148, 1        ; 2 uses
  %exitcond156.not = icmp eq i64 %i.do, %.sink.i.i.i.i
  br i1 %exitcond156.not, label %_ZN5Eigen12SparseMatrixIdLi1ElE7reserveEl.exit, label %.lr.ph149

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.sroa.0.0.copyload, i64 8 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !23
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !111
  %i.dt = mul nsw i64 %i.ds, %i.dq                ; 3 uses
  store i8 0, ptr %2, align 8, !tbaa !100
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.du, i8 0, i64 64, i1 false)
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.dt, ptr %i.dv, align 8, !tbaa !129
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.dy = shl i64 %i.g, 3
  %i.dz = add i64 %i.dy, 8
  %calloc = tail call ptr @calloc(i64 1, i64 %i.dz) ; 2 uses
  store ptr %calloc, ptr %i.dx, align 8, !tbaa !118
  %.not6.i = icmp eq ptr %calloc, null
  br i1 %.not6.i, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ea = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ea, align 8, !tbaa !81
  invoke void @__cxa_throw(ptr nonnull %i.ea, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.noexc71 unwind label %bb.p

.noexc71:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.eb = landingpad { ptr, i32 }
          cleanup
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdlED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.ec) #20
  br label %.body

bb.q:                                             ; preds = %bb.n
  store i64 %i.g, ptr %i.du, align 8, !tbaa !116
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ee = mul nsw i64 %i.dt, %i.g
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.g, i64 %i.dt)
  %i.ef = shl nsw i64 %.sroa.speculated, 1
  %.sroa.speculated109 = tail call i64 @llvm.smin.i64(i64 %i.ef, i64 %i.ee) ; 5 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.ei = icmp sgt i64 %.sroa.speculated109, 0
  br i1 %i.ei, label %bb.r, label %_ZN5Eigen12SparseMatrixIdLi1ElE7reserveEl.exit53

bb.r:                                             ; preds = %bb.q
  %i.ej = icmp samesign ugt i64 %.sroa.speculated109, 2305843009213693951
  %i.ek = shl nuw i64 %.sroa.speculated109, 3
  %i.el = select i1 %i.ej, i64 -1, i64 %i.ek      ; 2 uses
  %i.em = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.el) #24
          to label %.noexc83 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc83:                                         ; preds = %bb.r
  %i.en = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.el) #24
          to label %_ZN5Eigen8internal12scoped_arrayIlEC2El.exit.i.i73 unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i72 ; 2 uses

_ZN5Eigen8internal12scoped_arrayIlEC2El.exit.i.i73: ; preds = %.noexc83
  %i.eo = load i64, ptr %i.dw, align 8, !tbaa !84 ; 2 uses
  %i.ep = icmp sgt i64 %i.eo, 0
  %.pre.i.i75 = load ptr, ptr %i.eg, align 8, !tbaa !122 ; 3 uses
  br i1 %i.ep, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i81, label %_ZN5Eigen8internal12scoped_arrayIlEC2El.exit._ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit_crit_edge.i.i76

_ZN5Eigen8internal12scoped_arrayIlEC2El.exit._ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit_crit_edge.i.i76: ; preds = %_ZN5Eigen8internal12scoped_arrayIlEC2El.exit.i.i73
  %.phi.trans.insert.i.i77 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.pre23.i.i78 = load ptr, ptr %.phi.trans.insert.i.i77, align 8, !tbaa !128
  br label %_ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit.i.i79

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i81: ; preds = %_ZN5Eigen8internal12scoped_arrayIlEC2El.exit.i.i73
  %i.eq = tail call i64 @llvm.umin.i64(i64 %i.eo, i64 %.sroa.speculated109)
  %.idx.i.i82 = shl nuw nsw i64 %i.eq, 3          ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.em, ptr align 8 %.pre.i.i75, i64 %.idx.i.i82, i1 false)
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !117 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.en, ptr align 8 %i.es, i64 %.idx.i.i82, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit.i.i79

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i72: ; preds = %.noexc83
  %i.et = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.em) #23
  br label %.body84

_ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit.i.i79: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i81, %_ZN5Eigen8internal12scoped_arrayIlEC2El.exit._ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit_crit_edge.i.i76
  %i.eu = phi ptr [ %.pre23.i.i78, %_ZN5Eigen8internal12scoped_arrayIlEC2El.exit._ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit_crit_edge.i.i76 ], [ %i.es, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i81 ] ; 2 uses
  store ptr %i.em, ptr %i.eg, align 8, !tbaa !122
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.en, ptr %i.ev, align 8, !tbaa !128
  store i64 %.sroa.speculated109, ptr %i.eh, align 8, !tbaa !127
  %i.ew = icmp eq ptr %i.eu, null
  br i1 %i.ew, label %_ZN5Eigen8internal12scoped_arrayIlED2Ev.exit8.i.i80, label %bb.s

bb.s:                                             ; preds = %_ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit.i.i79
  tail call void @_ZdaPv(ptr noundef nonnull %i.eu) #23
  br label %_ZN5Eigen8internal12scoped_arrayIlED2Ev.exit8.i.i80

_ZN5Eigen8internal12scoped_arrayIlED2Ev.exit8.i.i80: ; preds = %bb.s, %_ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit.i.i79
  %i.ex = icmp eq ptr %.pre.i.i75, null
  br i1 %i.ex, label %_ZN5Eigen12SparseMatrixIdLi1ElE7reserveEl.exit53, label %bb.t

bb.t:                                             ; preds = %_ZN5Eigen8internal12scoped_arrayIlED2Ev.exit8.i.i80
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i75) #23
  br label %_ZN5Eigen12SparseMatrixIdLi1ElE7reserveEl.exit53

_ZN5Eigen12SparseMatrixIdLi1ElE7reserveEl.exit53: ; preds = %bb.q, %_ZN5Eigen8internal12scoped_arrayIlED2Ev.exit8.i.i80, %bb.t
  %i.ey = icmp sgt i64 %i.g, 0
  br i1 %i.ey, label %.lr.ph146, label %._crit_edge147

.lr.ph146:                                        ; preds = %_ZN5Eigen12SparseMatrixIdLi1ElE7reserveEl.exit53
  %i.ez = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.fa = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.fb = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.fc = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.phi.trans.insert.i.i91 = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  br label %bb.x

._crit_edge147:                                   ; preds = %._crit_edge, %_ZN5Eigen12SparseMatrixIdLi1ElE7reserveEl.exit53
  %i.fd = load ptr, ptr %i.ed, align 8, !tbaa !119
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %._crit_edge147
  %i.ff = load i64, ptr %i.dw, align 8, !tbaa !126
  %i.fg = load i64, ptr %i.du, align 8, !tbaa !116 ; 3 uses
  %i.fh = icmp sgt i64 %i.fg, -1
  br i1 %i.fh, label %.lr.ph.i54, label %.loopexit

.lr.ph.i54:                                       ; preds = %bb.u
  %i.fi = load ptr, ptr %i.dx, align 8, !tbaa !118 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %.lr.ph.i54
  %.08.i55 = phi i64 [ %i.fg, %.lr.ph.i54 ], [ %i.fm, %bb.w ] ; 4 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %.08.i55
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !84
  %i.fl = icmp eq i64 %i.fk, 0
  br i1 %i.fl, label %bb.w, label %.critedge.i56

bb.w:                                             ; preds = %bb.v
  %i.fm = add nsw i64 %.08.i55, -1
  %i.fn = icmp sgt i64 %.08.i55, 0
  br i1 %i.fn, label %bb.v, label %.critedge.i56, !llvm.loop !0

.critedge.i56:                                    ; preds = %bb.w, %bb.v
  %.0.lcssa.i57 = phi i64 [ -1, %bb.w ], [ %.08.i55, %bb.v ] ; 2 uses
  %.not.not11.i58 = icmp slt i64 %.0.lcssa.i57, %i.fg
  br i1 %.not.not11.i58, label %.lr.ph13.i59, label %.loopexit

.lr.ph13.i59:                                     ; preds = %.critedge.i56, %.lr.ph13.i59
  %.1.in12.i60 = phi i64 [ %.1.i61, %.lr.ph13.i59 ], [ %.0.lcssa.i57, %.critedge.i56 ]
  %.1.i61 = add nsw i64 %.1.in12.i60, 1           ; 3 uses
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %.1.i61
  store i64 %i.ff, ptr %i.fo, align 8, !tbaa !84
  %i.fp = load i64, ptr %i.du, align 8, !tbaa !116
  %.not.not.i62 = icmp slt i64 %.1.i61, %i.fp
  br i1 %.not.not.i62, label %.lr.ph13.i59, label %.loopexit, !llvm.loop !1

bb.x:                                             ; preds = %.lr.ph146, %._crit_edge
  %.0145 = phi i64 [ 0, %.lr.ph146 ], [ %i.gk, %._crit_edge ] ; 5 uses
  %i.fq = load ptr, ptr %i.dx, align 8, !tbaa !118
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %.0145 ; 2 uses
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !84
  %i.ft = getelementptr i8, ptr %i.fr, i64 8
  store i64 %i.fs, ptr %i.ft, align 8, !tbaa !84
  %i.fu = load ptr, ptr %i.ez, align 8, !tbaa !94
  %i.fv = load ptr, ptr %i.fa, align 8, !tbaa !96
  %i.fw = load ptr, ptr %i.fb, align 8, !tbaa !86
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %.0145 ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !30
  %i.fz = sext i32 %i.fy to i64                   ; 3 uses
  %i.ga = load ptr, ptr %i.fc, align 8, !tbaa !95 ; 2 uses
  %i.gb = icmp eq ptr %i.ga, null
  br i1 %i.gb, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.gc = getelementptr i8, ptr %i.fx, i64 4
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !30
  %i.ge = sext i32 %i.gd to i64
  br label %_ZN5Eigen8internal33sparse_diagonal_product_evaluatorINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEEEKNS_9TransposeINS_12SparseMatrixIdLi0EiEEEEEENSD_IKNS_9ReplicateINS8_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1EEEEELi1EE13InnerIteratorC2ERKSO_l.exit65

bb.z:                                             ; preds = %bb.x
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %.0145
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !30
  %i.gh = sext i32 %i.gg to i64
  %i.gi = add nsw i64 %i.gh, %i.fz
  br label %_ZN5Eigen8internal33sparse_diagonal_product_evaluatorINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEEEKNS_9TransposeINS_12SparseMatrixIdLi0EiEEEEEENSD_IKNS_9ReplicateINS8_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1EEEEELi1EE13InnerIteratorC2ERKSO_l.exit65

_ZN5Eigen8internal33sparse_diagonal_product_evaluatorINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEEEKNS_9TransposeINS_12SparseMatrixIdLi0EiEEEEEENSD_IKNS_9ReplicateINS8_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1EEEEELi1EE13InnerIteratorC2ERKSO_l.exit65: ; preds = %bb.y, %bb.z
  %.sink.i.i.i.i64 = phi i64 [ %i.ge, %bb.y ], [ %i.gi, %bb.z ] ; 2 uses
  %i.gj = icmp sgt i64 %.sink.i.i.i.i64, %i.fz
  br i1 %i.gj, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.af, %_ZN5Eigen8internal33sparse_diagonal_product_evaluatorINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEEEKNS_9TransposeINS_12SparseMatrixIdLi0EiEEEEEENSD_IKNS_9ReplicateINS8_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1EEEEELi1EE13InnerIteratorC2ERKSO_l.exit65
  %i.gk = add nuw nsw i64 %.0145, 1               ; 2 uses
  %exitcond155.not = icmp eq i64 %i.gk, %i.g
  br i1 %exitcond155.not, label %._crit_edge147, label %bb.x, !llvm.loop !237

.lr.ph:                                           ; preds = %_ZN5Eigen8internal33sparse_diagonal_product_evaluatorINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEEEKNS_9TransposeINS_12SparseMatrixIdLi0EiEEEEEENSD_IKNS_9ReplicateINS8_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1EEEEELi1EE13InnerIteratorC2ERKSO_l.exit65, %bb.af
  %.sroa.11.0144 = phi i64 [ %i.ib, %bb.af ], [ %i.fz, %_ZN5Eigen8internal33sparse_diagonal_product_evaluatorINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEEEKNS_9TransposeINS_12SparseMatrixIdLi0EiEEEEEENSD_IKNS_9ReplicateINS8_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1EEEEELi1EE13InnerIteratorC2ERKSO_l.exit65 ] ; 3 uses
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %.sroa.11.0144
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !26
  %i.gn = fmul double %i.c, %i.gm
  %i.go = getelementptr inbounds [4 x i8], ptr %i.fv, i64 %.sroa.11.0144
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !30
  %i.gq = sext i32 %i.gp to i64                   ; 2 uses
  %i.gr = load ptr, ptr %.sroa.0.i.i.sroa.0.0.copyload, align 8, !tbaa !24
  %i.gs = load i64, ptr %i.dp, align 8, !tbaa !23
  %i.gt = srem i64 %i.gq, %i.gs
  %i.gu = getelementptr inbounds [8 x i8], ptr %i.gr, i64 %i.gt
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !26
  %i.gw = fmul double %i.gn, %i.gv
  %i.gx = load ptr, ptr %i.dx, align 8, !tbaa !118
  %i.gy = getelementptr [8 x i8], ptr %i.gx, i64 %.0145
  %i.gz = getelementptr i8, ptr %i.gy, i64 8      ; 2 uses
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !84 ; 2 uses
  %i.hb = add nsw i64 %i.ha, 1
  store i64 %i.hb, ptr %i.gz, align 8, !tbaa !84
  %i.hc = load i64, ptr %i.dw, align 8, !tbaa !126 ; 4 uses
  %i.hd = add nsw i64 %i.hc, 1                    ; 3 uses
  %i.he = load i64, ptr %i.eh, align 8, !tbaa !127
  %.not = icmp sgt i64 %i.he, %i.hc
  br i1 %.not, label %.lr.ph._crit_edge, label %bb.aa

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.eg, align 8, !tbaa !121
  %.pre158 = load ptr, ptr %.phi.trans.insert.i.i91, align 8, !tbaa !117
  br label %bb.af

bb.aa:                                            ; preds = %.lr.ph
  %i.hf = sitofp i64 %i.hd to double
  %i.hg = fptosi double %i.hf to i64              ; 2 uses
  %i.hh = add nsw i64 %i.hd, %i.hg                ; 4 uses
  %i.hi = icmp slt i64 %i.hg, 0
  br i1 %i.hi, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.hj = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.hj, align 8, !tbaa !81
  invoke void @__cxa_throw(ptr nonnull %i.hj, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.noexc97 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc97:                                         ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.hk = icmp ugt i64 %i.hh, 2305843009213693951
  %i.hl = shl nuw i64 %i.hh, 3
  %i.hm = select i1 %i.hk, i64 -1, i64 %i.hl      ; 2 uses
  %i.hn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hm) #24
          to label %.noexc98 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc98:                                         ; preds = %bb.ac
  %i.ho = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hm) #24
          to label %_ZN5Eigen8internal12scoped_arrayIlEC2El.exit.i.i87 unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i86 ; 4 uses

_ZN5Eigen8internal12scoped_arrayIlEC2El.exit.i.i87: ; preds = %.noexc98
  %i.hp = load i64, ptr %i.dw, align 8, !tbaa !84
  %.sroa.speculated.i.i88 = tail call i64 @llvm.smin.i64(i64 %i.hp, i64 %i.hh) ; 2 uses
  %i.hq = icmp sgt i64 %.sroa.speculated.i.i88, 0
  %.pre.i.i89 = load ptr, ptr %i.eg, align 8, !tbaa !122 ; 3 uses
  br i1 %i.hq, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i95, label %_ZN5Eigen8internal12scoped_arrayIlEC2El.exit._ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit_crit_edge.i.i90

_ZN5Eigen8internal12scoped_arrayIlEC2El.exit._ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit_crit_edge.i.i90: ; preds = %_ZN5Eigen8internal12scoped_arrayIlEC2El.exit.i.i87
  %.pre23.i.i92 = load ptr, ptr %.phi.trans.insert.i.i91, align 8, !tbaa !128
  br label %_ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit.i.i93

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i95: ; preds = %_ZN5Eigen8internal12scoped_arrayIlEC2El.exit.i.i87
  %.idx.i.i96 = shl nuw nsw i64 %.sroa.speculated.i.i88, 3 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hn, ptr align 8 %.pre.i.i89, i64 %.idx.i.i96, i1 false)
  %i.hr = load ptr, ptr %.phi.trans.insert.i.i91, align 8, !tbaa !117 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ho, ptr align 8 %i.hr, i64 %.idx.i.i96, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit.i.i93

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i86: ; preds = %.noexc98
  %i.hs = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.hn) #23
  br label %.body84

_ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit.i.i93: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i95, %_ZN5Eigen8internal12scoped_arrayIlEC2El.exit._ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit_crit_edge.i.i90
  %i.ht = phi ptr [ %.pre23.i.i92, %_ZN5Eigen8internal12scoped_arrayIlEC2El.exit._ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit_crit_edge.i.i90 ], [ %i.hr, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i95 ] ; 2 uses
  store ptr %i.hn, ptr %i.eg, align 8, !tbaa !122
  store ptr %i.ho, ptr %.phi.trans.insert.i.i91, align 8, !tbaa !128
  store i64 %i.hh, ptr %i.eh, align 8, !tbaa !127
  %i.hu = icmp eq ptr %i.ht, null
  br i1 %i.hu, label %_ZN5Eigen8internal12scoped_arrayIlED2Ev.exit8.i.i94, label %bb.ad

bb.ad:                                            ; preds = %_ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit.i.i93
  tail call void @_ZdaPv(ptr noundef nonnull %i.ht) #23
  br label %_ZN5Eigen8internal12scoped_arrayIlED2Ev.exit8.i.i94

_ZN5Eigen8internal12scoped_arrayIlED2Ev.exit8.i.i94: ; preds = %bb.ad, %_ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit.i.i93
  %i.hv = icmp eq ptr %.pre.i.i89, null
  br i1 %i.hv, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZN5Eigen8internal12scoped_arrayIlED2Ev.exit8.i.i94
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i89) #23
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph._crit_edge, %_ZN5Eigen8internal12scoped_arrayIlED2Ev.exit8.i.i94, %bb.ae
  %i.hw = phi ptr [ %.pre158, %.lr.ph._crit_edge ], [ %i.ho, %_ZN5Eigen8internal12scoped_arrayIlED2Ev.exit8.i.i94 ], [ %i.ho, %bb.ae ]
  %i.hx = phi ptr [ %.pre, %.lr.ph._crit_edge ], [ %i.hn, %_ZN5Eigen8internal12scoped_arrayIlED2Ev.exit8.i.i94 ], [ %i.hn, %bb.ae ] ; 2 uses
  store i64 %i.hd, ptr %i.dw, align 8, !tbaa !126
  %i.hy = getelementptr inbounds [8 x i8], ptr %i.hx, i64 %i.hc
  store double 0.000000e+00, ptr %i.hy, align 8, !tbaa !26
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.hw, i64 %i.hc
  store i64 %i.gq, ptr %i.hz, align 8, !tbaa !84
  %i.ia = getelementptr inbounds [8 x i8], ptr %i.hx, i64 %i.ha
  store double %i.gw, ptr %i.ia, align 8, !tbaa !26
  %i.ib = add nsw i64 %.sroa.11.0144, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.ib, %.sink.i.i.i.i64
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ac, %.loopexit, %bb.r, %bb.ab
  %lpad.loopexit.split-lp178 = landingpad { ptr, i32 }
          cleanup
  br label %.body84

.loopexit:                                        ; preds = %.lr.ph13.i59, %._crit_edge147, %bb.u, %.critedge.i56
  store i8 1, ptr %2, align 8, !tbaa !100
  %i.ic = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIdLi1ElEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ag:                                            ; preds = %.loopexit
  %i.id = load ptr, ptr %i.dx, align 8, !tbaa !118
  call void @free(ptr noundef %i.id) #20
  %i.ie = load ptr, ptr %i.ed, align 8, !tbaa !119
  call void @free(ptr noundef %i.ie) #20
  %i.if = load ptr, ptr %i.eg, align 8, !tbaa !121 ; 2 uses
  %i.ig = icmp eq ptr %i.if, null
  br i1 %i.ig, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZdaPv(ptr noundef nonnull %i.if) #23
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ih = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !117 ; 2 uses
  %i.ij = icmp eq ptr %i.ii, null
  br i1 %i.ij, label %_ZN5Eigen12SparseMatrixIdLi1ElED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZdaPv(ptr noundef nonnull %i.ii) #23
  br label %_ZN5Eigen12SparseMatrixIdLi1ElED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi1ElED2Ev.exit:         ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %_ZN5Eigen12SparseMatrixIdLi1ElE8finalizeEv.exit

.body84:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i86, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i72
  %.pn.pn = phi { ptr, i32 } [ %i.et, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i72 ], [ %i.hs, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i86 ], [ %lpad.loopexit.split-lp178, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN5Eigen12SparseMatrixIdLi1ElED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #20
  br label %.body

.body:                                            ; preds = %bb.p, %.body84
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body84 ], [ %i.eb, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %.body68

_ZN5Eigen12SparseMatrixIdLi1ElE8finalizeEv.exit:  ; preds = %.lr.ph13.i, %.critedge.i, %bb.d, %_ZN5Eigen12SparseMatrixIdLi1ElE7reserveEl.exit._crit_edge, %_ZN5Eigen12SparseMatrixIdLi1ElED2Ev.exit
  ret void

.body68:                                          ; preds = %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i, %.body
  %.pn47.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.df, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i ]
  resume { ptr, i32 } %.pn47.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12SparseMatrixIdLi1ElE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.a, align 8, !tbaa !129
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.b, align 8, !tbaa !126
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !116  ; 2 uses
  %.not = icmp ne i64 %i.d, %1
  %i.e = icmp eq i64 %i.d, 0
  %or.cond = or i1 %.not, %i.e
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !118
  tail call void @free(ptr noundef %i.g) #20
  %i.h = shl i64 %1, 3
  %i.i = add i64 %i.h, 8
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #21 ; 2 uses
  store ptr %i.j, ptr %i.f, align 8, !tbaa !118
  %.not6 = icmp eq ptr %i.j, null
  br i1 %.not6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !81
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
  unreachable

bb.d:                                             ; preds = %bb.b
  store i64 %1, ptr %i.c, align 8, !tbaa !116
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !119  ; 2 uses
  %.not7 = icmp eq ptr %i.m, null
  br i1 %.not7, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.m) #20
  store ptr null, ptr %i.l, align 8, !tbaa !119
  %.pre = load i64, ptr %i.c, align 8, !tbaa !116
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = phi i64 [ %.pre, %bb.f ], [ %1, %bb.e ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !118
  %i.q = shl i64 %i.n, 3
  %i.r = add i64 %i.q, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.r, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIdLi1ElEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !100, !range !87, !noundef !82
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !128
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !128
  store ptr %i.f, ptr %i.c, align 8, !tbaa !128
  store ptr %i.e, ptr %i.d, align 8, !tbaa !128
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.g, align 8, !tbaa !84
  %i.j = load i64, ptr %i.h, align 8, !tbaa !84
  store i64 %i.j, ptr %i.g, align 8, !tbaa !84
  store i64 %i.i, ptr %i.h, align 8, !tbaa !84
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.k, align 8, !tbaa !84
  %i.n = load i64, ptr %i.l, align 8, !tbaa !84
  store i64 %i.n, ptr %i.k, align 8, !tbaa !84
  store i64 %i.m, ptr %i.l, align 8, !tbaa !84
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.q = load <2 x ptr>, ptr %i.p, align 8, !tbaa !123
  %i.r = load <2 x ptr>, ptr %i.o, align 8, !tbaa !123
  store <2 x ptr> %i.q, ptr %i.o, align 8, !tbaa !123
  store <2 x ptr> %i.r, ptr %i.p, align 8, !tbaa !123
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !128
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !128
  store ptr %i.v, ptr %i.s, align 8, !tbaa !128
  store ptr %i.u, ptr %i.t, align 8, !tbaa !128
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.y = load i64, ptr %i.w, align 8, !tbaa !84
  %i.z = load i64, ptr %i.x, align 8, !tbaa !84
  store i64 %i.z, ptr %i.w, align 8, !tbaa !84
  store i64 %i.y, ptr %i.x, align 8, !tbaa !84
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !84
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !84
  store i64 %i.ad, ptr %i.aa, align 8, !tbaa !84
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !84
  br label %_ZN5Eigen8internal17CompressedStorageIdlEaSERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %_ZN5Eigen8internal17CompressedStorageIdlEaSERKS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !116
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !129
  tail call void @_ZN5Eigen12SparseMatrixIdLi1ElE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %i.af, i64 noundef %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !119 ; 2 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %_ZN5Eigen12SparseMatrixIdLi1ElE14initAssignmentIS1_EEvRKT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.aj) #20
  store ptr null, ptr %i.ai, align 8, !tbaa !119
  br label %_ZN5Eigen12SparseMatrixIdLi1ElE14initAssignmentIS1_EEvRKT_.exit

_ZN5Eigen12SparseMatrixIdLi1ElE14initAssignmentIS1_EEvRKT_.exit: ; preds = %bb.d, %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !119
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi1ElE14initAssignmentIS1_EEvRKT_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !116
  %.idx = shl nsw i64 %i.ao, 3
  %i.ap = add nsw i64 %.idx, 8                    ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !118
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !118
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.au, ptr align 8 %i.as, i64 %i.ap, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit

_ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit: ; preds = %bb.f, %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !126
  tail call void @_ZN5Eigen8internal17CompressedStorageIdlE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, i64 noundef %i.ay, double noundef 0.000000e+00)
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !126
  %i.ba = icmp sgt i64 %i.az, 0
  br i1 %i.ba, label %bb.h, label %_ZN5Eigen8internal17CompressedStorageIdlEaSERKS2_.exit

bb.h:                                             ; preds = %_ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !126 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_ZN5Eigen8internal17CompressedStorageIdlEaSERKS2_.exit, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i: ; preds = %bb.h
  %.idx.i = shl nsw i64 %i.bc, 3
  %i.be = load ptr, ptr %i.av, align 8, !tbaa !121
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !121
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bf, ptr align 8 %i.be, i64 %.idx.i, i1 false)
  %.pre.i = load i64, ptr %i.bb, align 8, !tbaa !126 ; 2 uses
  %i.bg = icmp eq i64 %.pre.i, 0
  br i1 %i.bg, label %_ZN5Eigen8internal17CompressedStorageIdlEaSERKS2_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i
  %.idx7.i = shl nsw i64 %.pre.i, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !117
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !117
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bk, ptr align 8 %i.bi, i64 %.idx7.i, i1 false)
  br label %_ZN5Eigen8internal17CompressedStorageIdlEaSERKS2_.exit
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi1ElEES3_EEvRT_RKT0_:bb.a
  br i1 %i.az, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr i8, ptr %i.aw, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !84
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1ElEEE13InnerIteratorC2ERKS3_l.exit

bb.i:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.037143
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !84
  %i.be = add nsw i64 %i.bd, %i.ax
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1ElEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1ElEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %bb.h, %bb.i
  %.sink.i = phi i64 [ %i.bb, %bb.h ], [ %i.be, %bb.i ] ; 2 uses
  %i.bf = icmp slt i64 %i.ax, %.sink.i
  br i1 %i.bf, label %.lr.ph141, label %_ZN5Eigen12SparseMatrixIdLi1ElE7reserveEl.exit

_ZN5Eigen12SparseMatrixIdLi1ElE7reserveEl.exit:   ; preds = %bb.m, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1ElEEE13InnerIteratorC2ERKS3_l.exit
  %i.bg = add nuw nsw i64 %.037143, 1             ; 2 uses
  %exitcond149.not = icmp eq i64 %i.bg, %i.b
  br i1 %exitcond149.not, label %_ZN5Eigen12SparseMatrixIdLi1ElE7reserveEl.exit._crit_edge, label %bb.g, !llvm.loop !239

.lr.ph141:                                        ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1ElEEE13InnerIteratorC2ERKS3_l.exit, %bb.m
  %.sroa.8116.0140 = phi i64 [ %i.cp, %bb.m ], [ %i.ax, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1ElEEE13InnerIteratorC2ERKS3_l.exit ] ; 3 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.at, i64 %.sroa.8116.0140
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !26
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.au, i64 %.sroa.8116.0140
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !84
  %i.bl = load ptr, ptr %i.h, align 8, !tbaa !118
  %i.bm = getelementptr [8 x i8], ptr %i.bl, i64 %.037143
  %i.bn = getelementptr i8, ptr %i.bm, i64 8      ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !84 ; 2 uses
  %i.bp = add nsw i64 %i.bo, 1
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !84
  %i.bq = load i64, ptr %i.g, align 8, !tbaa !126 ; 4 uses
  %i.br = add nsw i64 %i.bq, 1                    ; 3 uses
  %i.bs = load i64, ptr %i.ab, align 8, !tbaa !127
  %.not133 = icmp sgt i64 %i.bs, %i.bq
  br i1 %.not133, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.lr.ph141
  %i.bt = sitofp i64 %i.br to double
  %i.bu = fptosi double %i.bt to i64              ; 2 uses
  %i.bv = add nsw i64 %i.br, %i.bu                ; 4 uses
  %i.bw = icmp slt i64 %i.bu, 0
  br i1 %i.bw, label %.noexc, label %.noexc67

.noexc:                                           ; preds = %bb.j
  %i.bx = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bx, align 8, !tbaa !81
  tail call void @__cxa_throw(ptr nonnull %i.bx, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
  unreachable

.noexc67:                                         ; preds = %bb.j
  %i.by = icmp ugt i64 %i.bv, 2305843009213693951
  %i.bz = shl nuw i64 %i.bv, 3
  %i.ca = select i1 %i.by, i64 -1, i64 %i.bz      ; 2 uses
  %i.cb = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ca) #24 ; 3 uses
  %i.cc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ca) #24
          to label %_ZN5Eigen8internal12scoped_arrayIlEC2El.exit.i.i unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i ; 2 uses

_ZN5Eigen8internal12scoped_arrayIlEC2El.exit.i.i: ; preds = %.noexc67
  %i.cd = load i64, ptr %i.g, align 8, !tbaa !84
  %.sroa.speculated.i.i = tail call i64 @llvm.smin.i64(i64 %i.cd, i64 %i.bv) ; 2 uses
  %i.ce = icmp sgt i64 %.sroa.speculated.i.i, 0
  %.pre.i.i = load ptr, ptr %i.v, align 8, !tbaa !122 ; 3 uses
  br i1 %i.ce, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i, label %_ZN5Eigen8internal12scoped_arrayIlEC2El.exit._ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit_crit_edge.i.i

_ZN5Eigen8internal12scoped_arrayIlEC2El.exit._ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit_crit_edge.i.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIlEC2El.exit.i.i
  %.pre23.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !128
  br label %_ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit.i.i

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIlEC2El.exit.i.i
  %.idx.i.i = shl nuw nsw i64 %.sroa.speculated.i.i, 3 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cb, ptr align 8 %.pre.i.i, i64 %.idx.i.i, i1 false)
  %i.cf = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !117 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cc, ptr align 8 %i.cf, i64 %.idx.i.i, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit.i.i

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i: ; preds = %.noexc67
  %i.cg = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.cb) #23
  br label %.body68

_ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit.i.i: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i, %_ZN5Eigen8internal12scoped_arrayIlEC2El.exit._ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit_crit_edge.i.i
  %i.ch = phi ptr [ %.pre23.i.i, %_ZN5Eigen8internal12scoped_arrayIlEC2El.exit._ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit_crit_edge.i.i ], [ %i.cf, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i ] ; 2 uses
  store ptr %i.cb, ptr %i.v, align 8, !tbaa !122
  store ptr %i.cc, ptr %.phi.trans.insert.i.i, align 8, !tbaa !128
  store i64 %i.bv, ptr %i.ab, align 8, !tbaa !127
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %_ZN5Eigen8internal12scoped_arrayIlED2Ev.exit8.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.ch) #23
  br label %_ZN5Eigen8internal12scoped_arrayIlED2Ev.exit8.i.i

_ZN5Eigen8internal12scoped_arrayIlED2Ev.exit8.i.i: ; preds = %bb.k, %_ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit.i.i
  %i.cj = icmp eq ptr %.pre.i.i, null
  br i1 %i.cj, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5Eigen8internal12scoped_arrayIlED2Ev.exit8.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #23
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph141, %_ZN5Eigen8internal12scoped_arrayIlED2Ev.exit8.i.i, %bb.l
  store i64 %i.br, ptr %i.g, align 8, !tbaa !126
  %i.ck = load ptr, ptr %i.v, align 8, !tbaa !121 ; 2 uses
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %i.bq
  store double 0.000000e+00, ptr %i.cl, align 8, !tbaa !26
  %i.cm = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !117
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.bq
  store i64 %i.bk, ptr %i.cn, align 8, !tbaa !84
  %i.co = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %i.bo
  store double %i.bi, ptr %i.co, align 8, !tbaa !26
  %i.cp = add i64 %.sroa.8116.0140, 1             ; 2 uses
  %exitcond148.not = icmp eq i64 %i.cp, %.sink.i
  br i1 %exitcond148.not, label %_ZN5Eigen12SparseMatrixIdLi1ElE7reserveEl.exit, label %.lr.ph141, !llvm.loop !240

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !129 ; 3 uses
  store i8 0, ptr %2, align 8, !tbaa !100
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cs, i8 0, i64 64, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.cr, ptr %i.ct, align 8, !tbaa !129
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.cw = shl i64 %i.b, 3
  %i.cx = add i64 %i.cw, 8
  %calloc = tail call ptr @calloc(i64 1, i64 %i.cx) ; 2 uses
  store ptr %calloc, ptr %i.cv, align 8, !tbaa !118
  %.not6.i = icmp eq ptr %calloc, null
  br i1 %.not6.i, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cy = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.cy, align 8, !tbaa !81
  invoke void @__cxa_throw(ptr nonnull %i.cy, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.noexc71 unwind label %bb.p

.noexc71:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.cz = landingpad { ptr, i32 }
          cleanup
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdlED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.da) #20
  br label %.body

bb.q:                                             ; preds = %bb.n
  store i64 %i.b, ptr %i.cs, align 8, !tbaa !116
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.dc = mul nsw i64 %i.cr, %i.b
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.b, i64 %i.cr)
  %i.dd = shl nsw i64 %.sroa.speculated, 1
  %.sroa.speculated108 = tail call i64 @llvm.smin.i64(i64 %i.dd, i64 %i.dc) ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.dg = icmp sgt i64 %.sroa.speculated108, 0
  br i1 %i.dg, label %bb.r, label %_ZN5Eigen12SparseMatrixIdLi1ElE7reserveEl.exit53

bb.r:                                             ; preds = %bb.q
  %i.dh = icmp samesign ugt i64 %.sroa.speculated108, 2305843009213693951
  %i.di = shl nuw i64 %.sroa.speculated108, 3
  %i.dj = select i1 %i.dh, i64 -1, i64 %i.di      ; 2 uses
  %i.dk = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dj) #24
          to label %.noexc83 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc83:                                         ; preds = %bb.r
  %i.dl = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dj) #24
          to label %_ZN5Eigen8internal12scoped_arrayIlEC2El.exit.i.i73 unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i72 ; 2 uses

_ZN5Eigen8internal12scoped_arrayIlEC2El.exit.i.i73: ; preds = %.noexc83
  %i.dm = load i64, ptr %i.cu, align 8, !tbaa !84 ; 2 uses
  %i.dn = icmp sgt i64 %i.dm, 0
  %.pre.i.i75 = load ptr, ptr %i.de, align 8, !tbaa !122 ; 3 uses
  br i1 %i.dn, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i81, label %_ZN5Eigen8internal12scoped_arrayIlEC2El.exit._ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit_crit_edge.i.i76

_ZN5Eigen8internal12scoped_arrayIlEC2El.exit._ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit_crit_edge.i.i76: ; preds = %_ZN5Eigen8internal12scoped_arrayIlEC2El.exit.i.i73
  %.phi.trans.insert.i.i77 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.pre23.i.i78 = load ptr, ptr %.phi.trans.insert.i.i77, align 8, !tbaa !128
  br label %_ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit.i.i79

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i81: ; preds = %_ZN5Eigen8internal12scoped_arrayIlEC2El.exit.i.i73
  %i.do = tail call i64 @llvm.umin.i64(i64 %i.dm, i64 %.sroa.speculated108)
  %.idx.i.i82 = shl nuw nsw i64 %i.do, 3          ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dk, ptr align 8 %.pre.i.i75, i64 %.idx.i.i82, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !117 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dl, ptr align 8 %i.dq, i64 %.idx.i.i82, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit.i.i79

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i72: ; preds = %.noexc83
  %i.dr = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.dk) #23
  br label %.body84

_ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit.i.i79: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i81, %_ZN5Eigen8internal12scoped_arrayIlEC2El.exit._ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit_crit_edge.i.i76
  %i.ds = phi ptr [ %.pre23.i.i78, %_ZN5Eigen8internal12scoped_arrayIlEC2El.exit._ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit_crit_edge.i.i76 ], [ %i.dq, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i81 ] ; 2 uses
  store ptr %i.dk, ptr %i.de, align 8, !tbaa !122
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.dl, ptr %i.dt, align 8, !tbaa !128
  store i64 %.sroa.speculated108, ptr %i.df, align 8, !tbaa !127
  %i.du = icmp eq ptr %i.ds, null
  br i1 %i.du, label %_ZN5Eigen8internal12scoped_arrayIlED2Ev.exit8.i.i80, label %bb.s

bb.s:                                             ; preds = %_ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit.i.i79
  tail call void @_ZdaPv(ptr noundef nonnull %i.ds) #23
  br label %_ZN5Eigen8internal12scoped_arrayIlED2Ev.exit8.i.i80

_ZN5Eigen8internal12scoped_arrayIlED2Ev.exit8.i.i80: ; preds = %bb.s, %_ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit.i.i79
  %i.dv = icmp eq ptr %.pre.i.i75, null
  br i1 %i.dv, label %_ZN5Eigen12SparseMatrixIdLi1ElE7reserveEl.exit53, label %bb.t

bb.t:                                             ; preds = %_ZN5Eigen8internal12scoped_arrayIlED2Ev.exit8.i.i80
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i75) #23
  br label %_ZN5Eigen12SparseMatrixIdLi1ElE7reserveEl.exit53

_ZN5Eigen12SparseMatrixIdLi1ElE7reserveEl.exit53: ; preds = %bb.q, %_ZN5Eigen8internal12scoped_arrayIlED2Ev.exit8.i.i80, %bb.t
  %i.dw = icmp sgt i64 %i.b, 0
  br i1 %i.dw, label %.lr.ph138, label %._crit_edge139

.lr.ph138:                                        ; preds = %_ZN5Eigen12SparseMatrixIdLi1ElE7reserveEl.exit53
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.phi.trans.insert.i.i91 = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  br label %bb.x

._crit_edge139:                                   ; preds = %._crit_edge, %_ZN5Eigen12SparseMatrixIdLi1ElE7reserveEl.exit53
  %i.eb = load ptr, ptr %i.db, align 8, !tbaa !119
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %._crit_edge139
  %i.ed = load i64, ptr %i.cu, align 8, !tbaa !126
  %i.ee = load i64, ptr %i.cs, align 8, !tbaa !116 ; 3 uses
  %i.ef = icmp sgt i64 %i.ee, -1
  br i1 %i.ef, label %.lr.ph.i54, label %.loopexit

.lr.ph.i54:                                       ; preds = %bb.u
  %i.eg = load ptr, ptr %i.cv, align 8, !tbaa !118 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %.lr.ph.i54
  %.08.i55 = phi i64 [ %i.ee, %.lr.ph.i54 ], [ %i.ek, %bb.w ] ; 4 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %.08.i55
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !84
  %i.ej = icmp eq i64 %i.ei, 0
  br i1 %i.ej, label %bb.w, label %.critedge.i56

bb.w:                                             ; preds = %bb.v
  %i.ek = add nsw i64 %.08.i55, -1
  %i.el = icmp sgt i64 %.08.i55, 0
  br i1 %i.el, label %bb.v, label %.critedge.i56, !llvm.loop !0

.critedge.i56:                                    ; preds = %bb.w, %bb.v
  %.0.lcssa.i57 = phi i64 [ -1, %bb.w ], [ %.08.i55, %bb.v ] ; 2 uses
  %.not.not11.i58 = icmp slt i64 %.0.lcssa.i57, %i.ee
  br i1 %.not.not11.i58, label %.lr.ph13.i59, label %.loopexit

.lr.ph13.i59:                                     ; preds = %.critedge.i56, %.lr.ph13.i59
  %.1.in12.i60 = phi i64 [ %.1.i61, %.lr.ph13.i59 ], [ %.0.lcssa.i57, %.critedge.i56 ]
  %.1.i61 = add nsw i64 %.1.in12.i60, 1           ; 3 uses
  %i.em = getelementptr inbounds [8 x i8], ptr %i.eg, i64 %.1.i61
  store i64 %i.ed, ptr %i.em, align 8, !tbaa !84
  %i.en = load i64, ptr %i.cs, align 8, !tbaa !116
  %.not.not.i62 = icmp slt i64 %.1.i61, %i.en
  br i1 %.not.not.i62, label %.lr.ph13.i59, label %.loopexit, !llvm.loop !1

bb.x:                                             ; preds = %.lr.ph138, %._crit_edge
  %.0137 = phi i64 [ 0, %.lr.ph138 ], [ %i.ff, %._crit_edge ] ; 5 uses
  %i.eo = load ptr, ptr %i.cv, align 8, !tbaa !118
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %.0137 ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !84
  %i.er = getelementptr i8, ptr %i.ep, i64 8
  store i64 %i.eq, ptr %i.er, align 8, !tbaa !84
  %i.es = load ptr, ptr %i.dx, align 8, !tbaa !121
  %i.et = load ptr, ptr %i.dy, align 8, !tbaa !117
  %i.eu = load ptr, ptr %i.dz, align 8, !tbaa !118
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %.0137 ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !84 ; 3 uses
  %i.ex = load ptr, ptr %i.ea, align 8, !tbaa !119 ; 2 uses
  %i.ey = icmp eq ptr %i.ex, null
  br i1 %i.ey, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ez = getelementptr i8, ptr %i.ev, i64 8
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !84
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1ElEEE13InnerIteratorC2ERKS3_l.exit65

bb.z:                                             ; preds = %bb.x
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %.0137
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !84
  %i.fd = add nsw i64 %i.fc, %i.ew
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1ElEEE13InnerIteratorC2ERKS3_l.exit65

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1ElEEE13InnerIteratorC2ERKS3_l.exit65: ; preds = %bb.y, %bb.z
  %.sink.i64 = phi i64 [ %i.fa, %bb.y ], [ %i.fd, %bb.z ] ; 2 uses
  %i.fe = icmp slt i64 %i.ew, %.sink.i64
  br i1 %i.fe, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.af, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1ElEEE13InnerIteratorC2ERKS3_l.exit65
  %i.ff = add nuw nsw i64 %.0137, 1               ; 2 uses
  %exitcond147.not = icmp eq i64 %i.ff, %i.b
  br i1 %exitcond147.not, label %._crit_edge139, label %bb.x, !llvm.loop !241

.lr.ph:                                           ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1ElEEE13InnerIteratorC2ERKS3_l.exit65, %bb.af
  %.sroa.8.0136 = phi i64 [ %i.go, %bb.af ], [ %i.ew, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1ElEEE13InnerIteratorC2ERKS3_l.exit65 ] ; 3 uses
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.es, i64 %.sroa.8.0136
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !26
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.et, i64 %.sroa.8.0136
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !84
  %i.fk = load ptr, ptr %i.cv, align 8, !tbaa !118
  %i.fl = getelementptr [8 x i8], ptr %i.fk, i64 %.0137
  %i.fm = getelementptr i8, ptr %i.fl, i64 8      ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !84 ; 2 uses
  %i.fo = add nsw i64 %i.fn, 1
  store i64 %i.fo, ptr %i.fm, align 8, !tbaa !84
  %i.fp = load i64, ptr %i.cu, align 8, !tbaa !126 ; 4 uses
  %i.fq = add nsw i64 %i.fp, 1                    ; 3 uses
  %i.fr = load i64, ptr %i.df, align 8, !tbaa !127
  %.not = icmp sgt i64 %i.fr, %i.fp
  br i1 %.not, label %.lr.ph._crit_edge, label %bb.aa

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.de, align 8, !tbaa !121
  %.pre150 = load ptr, ptr %.phi.trans.insert.i.i91, align 8, !tbaa !117
  br label %bb.af

bb.aa:                                            ; preds = %.lr.ph
  %i.fs = sitofp i64 %i.fq to double
  %i.ft = fptosi double %i.fs to i64              ; 2 uses
  %i.fu = add nsw i64 %i.fq, %i.ft                ; 4 uses
  %i.fv = icmp slt i64 %i.ft, 0
  br i1 %i.fv, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fw = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.fw, align 8, !tbaa !81
  invoke void @__cxa_throw(ptr nonnull %i.fw, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.noexc97 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc97:                                         ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.fx = icmp ugt i64 %i.fu, 2305843009213693951
  %i.fy = shl nuw i64 %i.fu, 3
  %i.fz = select i1 %i.fx, i64 -1, i64 %i.fy      ; 2 uses
  %i.ga = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fz) #24
          to label %.noexc98 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc98:                                         ; preds = %bb.ac
  %i.gb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fz) #24
          to label %_ZN5Eigen8internal12scoped_arrayIlEC2El.exit.i.i87 unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i86 ; 4 uses

_ZN5Eigen8internal12scoped_arrayIlEC2El.exit.i.i87: ; preds = %.noexc98
  %i.gc = load i64, ptr %i.cu, align 8, !tbaa !84
  %.sroa.speculated.i.i88 = tail call i64 @llvm.smin.i64(i64 %i.gc, i64 %i.fu) ; 2 uses
  %i.gd = icmp sgt i64 %.sroa.speculated.i.i88, 0
  %.pre.i.i89 = load ptr, ptr %i.de, align 8, !tbaa !122 ; 3 uses
  br i1 %i.gd, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i95, label %_ZN5Eigen8internal12scoped_arrayIlEC2El.exit._ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit_crit_edge.i.i90

_ZN5Eigen8internal12scoped_arrayIlEC2El.exit._ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit_crit_edge.i.i90: ; preds = %_ZN5Eigen8internal12scoped_arrayIlEC2El.exit.i.i87
  %.pre23.i.i92 = load ptr, ptr %.phi.trans.insert.i.i91, align 8, !tbaa !128
  br label %_ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit.i.i93

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i95: ; preds = %_ZN5Eigen8internal12scoped_arrayIlEC2El.exit.i.i87
  %.idx.i.i96 = shl nuw nsw i64 %.sroa.speculated.i.i88, 3 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ga, ptr align 8 %.pre.i.i89, i64 %.idx.i.i96, i1 false)
  %i.ge = load ptr, ptr %.phi.trans.insert.i.i91, align 8, !tbaa !117 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gb, ptr align 8 %i.ge, i64 %.idx.i.i96, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit.i.i93

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i86: ; preds = %.noexc98
  %i.gf = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.ga) #23
  br label %.body84

_ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit.i.i93: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i95, %_ZN5Eigen8internal12scoped_arrayIlEC2El.exit._ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit_crit_edge.i.i90
  %i.gg = phi ptr [ %.pre23.i.i92, %_ZN5Eigen8internal12scoped_arrayIlEC2El.exit._ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit_crit_edge.i.i90 ], [ %i.ge, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i95 ] ; 2 uses
  store ptr %i.ga, ptr %i.de, align 8, !tbaa !122
  store ptr %i.gb, ptr %.phi.trans.insert.i.i91, align 8, !tbaa !128
  store i64 %i.fu, ptr %i.df, align 8, !tbaa !127
  %i.gh = icmp eq ptr %i.gg, null
  br i1 %i.gh, label %_ZN5Eigen8internal12scoped_arrayIlED2Ev.exit8.i.i94, label %bb.ad

bb.ad:                                            ; preds = %_ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit.i.i93
  tail call void @_ZdaPv(ptr noundef nonnull %i.gg) #23
  br label %_ZN5Eigen8internal12scoped_arrayIlED2Ev.exit8.i.i94

_ZN5Eigen8internal12scoped_arrayIlED2Ev.exit8.i.i94: ; preds = %bb.ad, %_ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit.i.i93
  %i.gi = icmp eq ptr %.pre.i.i89, null
  br i1 %i.gi, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZN5Eigen8internal12scoped_arrayIlED2Ev.exit8.i.i94
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i89) #23
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph._crit_edge, %_ZN5Eigen8internal12scoped_arrayIlED2Ev.exit8.i.i94, %bb.ae
  %i.gj = phi ptr [ %.pre150, %.lr.ph._crit_edge ], [ %i.gb, %_ZN5Eigen8internal12scoped_arrayIlED2Ev.exit8.i.i94 ], [ %i.gb, %bb.ae ]
  %i.gk = phi ptr [ %.pre, %.lr.ph._crit_edge ], [ %i.ga, %_ZN5Eigen8internal12scoped_arrayIlED2Ev.exit8.i.i94 ], [ %i.ga, %bb.ae ] ; 2 uses
  store i64 %i.fq, ptr %i.cu, align 8, !tbaa !126
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.gk, i64 %i.fp
  store double 0.000000e+00, ptr %i.gl, align 8, !tbaa !26
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.gj, i64 %i.fp
  store i64 %i.fj, ptr %i.gm, align 8, !tbaa !84
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.gk, i64 %i.fn
  store double %i.fh, ptr %i.gn, align 8, !tbaa !26
  %i.go = add i64 %.sroa.8.0136, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.go, %.sink.i64
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !242

.loopexit:                                        ; preds = %.lr.ph13.i59, %._crit_edge139, %bb.u, %.critedge.i56
  store i8 1, ptr %2, align 8, !tbaa !100
  %i.gp = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIdLi1ElEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ag:                                            ; preds = %.loopexit
  %i.gq = load ptr, ptr %i.cv, align 8, !tbaa !118
  call void @free(ptr noundef %i.gq) #20
  %i.gr = load ptr, ptr %i.db, align 8, !tbaa !119
  call void @free(ptr noundef %i.gr) #20
  %i.gs = load ptr, ptr %i.de, align 8, !tbaa !121 ; 2 uses
  %i.gt = icmp eq ptr %i.gs, null
  br i1 %i.gt, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZdaPv(ptr noundef nonnull %i.gs) #23
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !117 ; 2 uses
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %_ZN5Eigen12SparseMatrixIdLi1ElED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZdaPv(ptr noundef nonnull %i.gv) #23
  br label %_ZN5Eigen12SparseMatrixIdLi1ElED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi1ElED2Ev.exit:         ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %_ZN5Eigen12SparseMatrixIdLi1ElE8finalizeEv.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ac, %bb.ab, %bb.r, %.loopexit
  %lpad.loopexit.split-lp170 = landingpad { ptr, i32 }
          cleanup
  br label %.body84

.body84:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i86, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i72
  %.pn.pn = phi { ptr, i32 } [ %i.dr, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i72 ], [ %i.gf, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i86 ], [ %lpad.loopexit.split-lp170, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN5Eigen12SparseMatrixIdLi1ElED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #20
  br label %.body

.body:                                            ; preds = %bb.p, %.body84
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body84 ], [ %i.cz, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %.body68

_ZN5Eigen12SparseMatrixIdLi1ElE8finalizeEv.exit:  ; preds = %.lr.ph13.i, %.critedge.i, %bb.d, %_ZN5Eigen12SparseMatrixIdLi1ElE7reserveEl.exit._crit_edge, %_ZN5Eigen12SparseMatrixIdLi1ElED2Ev.exit
  ret void

.body68:                                          ; preds = %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i, %.body
  %.pn47.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.cg, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i ]
  resume { ptr, i32 } %.pn47.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKS3_KNS4_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_EEEEEEvRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(65) %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::SparseMatrix", align 8 ; 20 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !257, !nonnull !82, !align !83 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load double, ptr %i.c, align 8, !tbaa !91 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !258, !nonnull !82, !align !83 ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !21   ; 9 uses
  %i.i = load i8, ptr %1, align 8, !tbaa !93, !range !87, !noundef !82
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.z

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !36
  tail call void @_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %i.l, i64 noundef %i.h)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  store i64 0, ptr %i.m, align 8, !tbaa !124
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !86
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !21
  %i.r = shl i64 %i.q, 2
  %i.s = add i64 %i.r, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.o, i8 0, i64 %i.s, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !95   ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = load i64, ptr %i.p, align 8, !tbaa !21
  %i.w = shl i64 %i.v, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.u, i8 0, i64 %i.w, i1 false)
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit

_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit:   ; preds = %bb.b, %bb.c
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !258, !nonnull !82, !align !83 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !36   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !21 ; 2 uses
  %i.ac = mul nsw i64 %i.ab, %i.z
  %.sroa.speculated165 = tail call i64 @llvm.smax.i64(i64 %i.z, i64 %i.ab)
  %i.ad = shl nsw i64 %.sroa.speculated165, 1
  %.sroa.speculated170 = tail call i64 @llvm.smin.i64(i64 %i.ad, i64 %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 noundef %.sroa.speculated170)
  %i.af = icmp sgt i64 %i.h, 0
  br i1 %i.af, label %.lr.ph204, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit._crit_edge

.lr.ph204:                                        ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  br label %bb.g

_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit._crit_edge: ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit, %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit
  %i.ap = load ptr, ptr %i.t, align 8, !tbaa !95
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.d, label %_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit

bb.d:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit._crit_edge
  %i.ar = load i64, ptr %i.m, align 8, !tbaa !124
  %i.as = trunc i64 %i.ar to i32                  ; 2 uses
  %i.at = load i64, ptr %i.p, align 8, !tbaa !21  ; 5 uses
  %i.au = icmp sgt i64 %i.at, -1
  br i1 %i.au, label %.lr.ph.i, label %_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.av = load ptr, ptr %i.n, align 8, !tbaa !86  ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i
  %.08.i = phi i64 [ %i.at, %.lr.ph.i ], [ %i.az, %bb.f ] ; 4 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.08.i
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !30
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.az = add nsw i64 %.08.i, -1
  %i.ba = icmp sgt i64 %.08.i, 0
  br i1 %i.ba, label %bb.e, label %.critedge.i, !llvm.loop !2

.critedge.i:                                      ; preds = %bb.f, %bb.e
  %.0.lcssa.i = phi i64 [ -1, %bb.f ], [ %.08.i, %bb.e ] ; 5 uses
  %.not.not11.i = icmp slt i64 %.0.lcssa.i, %i.at
  br i1 %.not.not11.i, label %.lr.ph13.i.preheader, label %_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit

.lr.ph13.i.preheader:                             ; preds = %.critedge.i
  %i.bb = sub i64 %i.at, %.0.lcssa.i              ; 3 uses
  %min.iters.check270 = icmp ult i64 %i.bb, 8
  br i1 %min.iters.check270, label %.lr.ph13.i.preheader281, label %vector.ph271

vector.ph271:                                     ; preds = %.lr.ph13.i.preheader
  %n.vec272 = and i64 %i.bb, -8                   ; 3 uses
  %i.bc = add i64 %.0.lcssa.i, %n.vec272
  %broadcast.splatinsert273 = insertelement <4 x i32> poison, i32 %i.as, i64 0
  %broadcast.splat274 = shufflevector <4 x i32> %broadcast.splatinsert273, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bd = getelementptr [4 x i8], ptr %i.av, i64 %.0.lcssa.i
  br label %vector.body275

vector.body275:                                   ; preds = %vector.body275, %vector.ph271
  %index276 = phi i64 [ 0, %vector.ph271 ], [ %index.next277, %vector.body275 ] ; 2 uses
  %i.be = getelementptr [4 x i8], ptr %i.bd, i64 %index276 ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 4
  %i.bg = getelementptr i8, ptr %i.be, i64 20
  store <4 x i32> %broadcast.splat274, ptr %i.bf, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat274, ptr %i.bg, align 4, !tbaa !30
  %index.next277 = add nuw i64 %index276, 8       ; 2 uses
  %i.bh = icmp eq i64 %index.next277, %n.vec272
  br i1 %i.bh, label %middle.block278, label %vector.body275, !llvm.loop !243

middle.block278:                                  ; preds = %vector.body275
  %cmp.n279 = icmp eq i64 %i.bb, %n.vec272
  br i1 %cmp.n279, label %_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit, label %.lr.ph13.i.preheader281

.lr.ph13.i.preheader281:                          ; preds = %.lr.ph13.i.preheader, %middle.block278
  %.1.in12.i.ph = phi i64 [ %.0.lcssa.i, %.lr.ph13.i.preheader ], [ %i.bc, %middle.block278 ]
  br label %.lr.ph13.i

.lr.ph13.i:                                       ; preds = %.lr.ph13.i.preheader281, %.lr.ph13.i
  %.1.in12.i = phi i64 [ %.1.i, %.lr.ph13.i ], [ %.1.in12.i.ph, %.lr.ph13.i.preheader281 ]
  %.1.i = add nsw i64 %.1.in12.i, 1               ; 3 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.av, i64 %.1.i
  store i32 %i.as, ptr %i.bi, align 4, !tbaa !30
  %exitcond.not.i = icmp eq i64 %.1.i, %i.at
  br i1 %exitcond.not.i, label %_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit, label %.lr.ph13.i, !llvm.loop !244

bb.g:                                             ; preds = %.lr.ph204, %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit
  %.037203 = phi i64 [ 0, %.lr.ph204 ], [ %i.dt, %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit ] ; 7 uses
  %i.bj = load ptr, ptr %i.n, align 8, !tbaa !86
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.037203 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !30
  %i.bm = getelementptr i8, ptr %i.bk, i64 4
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !30
  %i.bn = load ptr, ptr %i.ag, align 8, !tbaa !94 ; 4 uses
  %i.bo = load ptr, ptr %i.ah, align 8, !tbaa !96 ; 2 uses
  %i.bp = load ptr, ptr %i.ai, align 8, !tbaa !86
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %.037203 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !30
  %i.bs = sext i32 %i.br to i64                   ; 8 uses
  %i.bt = load ptr, ptr %i.aj, align 8, !tbaa !95 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bv = getelementptr i8, ptr %i.bq, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !30
  %i.bx = sext i32 %i.bw to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i

bb.i:                                             ; preds = %bb.g
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %.037203
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !30
  %i.ca = sext i32 %i.bz to i64
  %i.cb = add nsw i64 %i.ca, %i.bs
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i: ; preds = %bb.i, %bb.h
  %.sink.i.i = phi i64 [ %i.bx, %bb.h ], [ %i.cb, %bb.i ] ; 2 uses
  %i.cc = load ptr, ptr %i.ak, align 8, !tbaa !94 ; 4 uses
  %i.cd = load ptr, ptr %i.al, align 8, !tbaa !96 ; 4 uses
  %i.ce = load ptr, ptr %i.am, align 8, !tbaa !86
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %.037203 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !30
  %i.ch = sext i32 %i.cg to i64                   ; 9 uses
  %i.ci = load ptr, ptr %i.an, align 8, !tbaa !95 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKS3_KNS4_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_EEEEEEvRT_RKT0_:bb.a
  %.pre.i.i = load ptr, ptr %i.ae, align 8, !tbaa !122 ; 3 uses
  br i1 %i.eq, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i
  %.pre23.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !120
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i
  %.idx.i.i = shl nuw nsw i64 %.sroa.speculated.i.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ek, ptr align 8 %.pre.i.i, i64 %.idx.i.i, i1 false)
  %.idx22.i.i = shl nuw nsw i64 %.sroa.speculated.i.i, 2
  %i.er = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !96 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.eo, ptr align 4 %i.er, i64 %.idx22.i.i, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i: ; preds = %.noexc84
  %i.es = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.ek) #23
  br label %.body85

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i
  %i.et = phi ptr [ %.pre23.i.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i ], [ %i.er, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i ] ; 2 uses
  store ptr %i.ek, ptr %i.ae, align 8, !tbaa !122
  store ptr %i.eo, ptr %.phi.trans.insert.i.i, align 8, !tbaa !120
  store i64 %.sroa.speculated.i, ptr %i.ao, align 8, !tbaa !125
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i, label %bb.r

bb.r:                                             ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.et) #23
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i: ; preds = %bb.r, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i
  %i.ev = icmp eq ptr %.pre.i.i, null
  br i1 %i.ev, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #23
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph201, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i, %bb.s
  store i64 %i.eb, ptr %i.m, align 8, !tbaa !124
  %i.ew = load ptr, ptr %i.ae, align 8, !tbaa !94 ; 2 uses
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.du
  store double 0.000000e+00, ptr %i.ex, align 8, !tbaa !26
  %i.ey = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !96
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %i.du
  store i32 %.sroa.52162.0198.in, ptr %i.ez, align 4, !tbaa !30
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.dz
  store double %.sroa.43161.0199, ptr %i.fa, align 8, !tbaa !26
  %i.fb = icmp slt i64 %.sroa.10145.0200, %.sink.i.i
  %i.fc = icmp slt i64 %.sroa.29154.0197, %i.cr   ; 2 uses
  br i1 %i.fb, label %bb.u, label %.thread4.i

bb.u:                                             ; preds = %bb.t
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %.sroa.10145.0200
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !30 ; 5 uses
  br i1 %i.fc, label %bb.v, label %._crit_edge8.i

bb.v:                                             ; preds = %bb.u
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %.sroa.29154.0197
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !30 ; 4 uses
  %i.fh = icmp eq i32 %i.fg, %i.fe
  br i1 %i.fh, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %.sroa.10145.0200
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %.sroa.29154.0197
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !26
  %i.fl = fmul double %i.d, %i.fk
  %i.fm = load double, ptr %i.fi, align 8, !tbaa !26
  %i.fn = fsub double %i.fm, %i.fl
  %i.fo = add nsw i64 %.sroa.10145.0200, 1
  %i.fp = add nsw i64 %.sroa.29154.0197, 1
  br label %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEEKNS2_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_EEEENS0_13IteratorBasedESL_ddE13InnerIteratorppEv.exit

bb.x:                                             ; preds = %bb.v
  %i.fq = icmp sgt i32 %i.fg, %i.fe
  br i1 %i.fq, label %._crit_edge8.i, label %bb.y

._crit_edge8.i:                                   ; preds = %bb.x, %bb.u
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %.sroa.10145.0200
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !26
  %i.ft = add nsw i64 %.sroa.10145.0200, 1
  br label %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEEKNS2_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_EEEENS0_13IteratorBasedESL_ddE13InnerIteratorppEv.exit

.thread4.i:                                       ; preds = %bb.t
  br i1 %i.fc, label %.thread4..thread5_crit_edge.i, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit

.thread4..thread5_crit_edge.i:                    ; preds = %.thread4.i
  %.phi.trans.insert6.i = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %.sroa.29154.0197
  %.pre7.i = load i32, ptr %.phi.trans.insert6.i, align 4, !tbaa !30
  br label %.thread5.i

bb.y:                                             ; preds = %bb.x
  %i.fu = icmp slt i32 %i.fg, %i.fe
  br i1 %i.fu, label %.thread5.i, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit

.thread5.i:                                       ; preds = %bb.y, %.thread4..thread5_crit_edge.i
  %i.fv = phi i32 [ %.pre7.i, %.thread4..thread5_crit_edge.i ], [ %i.fg, %bb.y ]
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %.sroa.29154.0197
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !26
  %i.fy = fmul double %i.d, %i.fx
  %i.fz = fsub double 0.000000e+00, %i.fy
  %i.ga = add nsw i64 %.sroa.29154.0197, 1
  br label %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEEKNS2_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_EEEENS0_13IteratorBasedESL_ddE13InnerIteratorppEv.exit

_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEEKNS2_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_EEEENS0_13IteratorBasedESL_ddE13InnerIteratorppEv.exit: ; preds = %bb.w, %._crit_edge8.i, %.thread5.i
  %.sroa.29154.2 = phi i64 [ %i.fp, %bb.w ], [ %.sroa.29154.0197, %._crit_edge8.i ], [ %i.ga, %.thread5.i ]
  %.sroa.52162.2.in = phi i32 [ %i.fe, %bb.w ], [ %i.fe, %._crit_edge8.i ], [ %i.fv, %.thread5.i ] ; 2 uses
  %.sroa.43161.2 = phi double [ %i.fn, %bb.w ], [ %i.fs, %._crit_edge8.i ], [ %i.fz, %.thread5.i ]
  %.sroa.10145.2 = phi i64 [ %i.fo, %bb.w ], [ %i.ft, %._crit_edge8.i ], [ %.sroa.10145.0200, %.thread5.i ]
  %i.gb = icmp sgt i32 %.sroa.52162.2.in, -1
  br i1 %i.gb, label %.lr.ph201, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit

bb.z:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.gc = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !36 ; 3 uses
  store i8 0, ptr %2, align 8, !tbaa !85
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ge, i8 0, i64 64, i1 false)
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.gd, ptr %i.gf, align 8, !tbaa !36
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 5 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.gi = shl i64 %i.h, 2
  %i.gj = add i64 %i.gi, 4
  %calloc = tail call ptr @calloc(i64 1, i64 %i.gj) ; 2 uses
  store ptr %calloc, ptr %i.gh, align 8, !tbaa !86
  %.not6.i = icmp eq ptr %calloc, null
  br i1 %.not6.i, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.gk = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.gk, align 8, !tbaa !81
  invoke void @__cxa_throw(ptr nonnull %i.gk, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.noexc89 unwind label %bb.ab

.noexc89:                                         ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %bb.aa
  %i.gl = landingpad { ptr, i32 }
          cleanup
  %i.gm = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.gm) #20
  br label %.body

bb.ac:                                            ; preds = %bb.z
  store i64 %i.h, ptr %i.ge, align 8, !tbaa !21
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.go = mul nsw i64 %i.h, %i.gd
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.gd, i64 %i.h)
  %i.gp = shl nsw i64 %.sroa.speculated, 1
  %.sroa.speculated135 = tail call i64 @llvm.smin.i64(i64 %i.gp, i64 %i.go) ; 9 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.gs = icmp sgt i64 %.sroa.speculated135, 0
  br i1 %i.gs, label %bb.ad, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit53

bb.ad:                                            ; preds = %bb.ac
  %i.gt = icmp samesign ugt i64 %.sroa.speculated135, 2305843009213693951
  %i.gu = shl nuw i64 %.sroa.speculated135, 3
  %i.gv = select i1 %i.gt, i64 -1, i64 %i.gu
  %i.gw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.gv) #24
          to label %.noexc102 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc102:                                        ; preds = %bb.ad
  %i.gx = icmp samesign ugt i64 %.sroa.speculated135, 4611686018427387903
  %i.gy = shl nuw i64 %.sroa.speculated135, 2
  %i.gz = select i1 %i.gx, i64 -1, i64 %i.gy
  %i.ha = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.gz) #24
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i91 unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i90 ; 2 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i91: ; preds = %.noexc102
  %i.hb = load i64, ptr %i.gg, align 8, !tbaa !84 ; 2 uses
  %i.hc = icmp sgt i64 %i.hb, 0
  %.pre.i.i93 = load ptr, ptr %i.gq, align 8, !tbaa !122 ; 3 uses
  br i1 %i.hc, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i99, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i94

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i94: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i91
  %.phi.trans.insert.i.i95 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.pre23.i.i96 = load ptr, ptr %.phi.trans.insert.i.i95, align 8, !tbaa !120
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i97

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i99: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i91
  %i.hd = tail call i64 @llvm.umin.i64(i64 %i.hb, i64 %.sroa.speculated135) ; 2 uses
  %.idx.i.i100 = shl nuw nsw i64 %i.hd, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gw, ptr align 8 %.pre.i.i93, i64 %.idx.i.i100, i1 false)
  %.idx22.i.i101 = shl nuw nsw i64 %i.hd, 2
  %i.he = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !96 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ha, ptr align 4 %i.hf, i64 %.idx22.i.i101, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i97

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i90: ; preds = %.noexc102
  %i.hg = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.gw) #23
  br label %.body103

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i97: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i99, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i94
  %i.hh = phi ptr [ %.pre23.i.i96, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i94 ], [ %i.hf, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i99 ] ; 2 uses
  store ptr %i.gw, ptr %i.gq, align 8, !tbaa !122
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.ha, ptr %i.hi, align 8, !tbaa !120
  store i64 %.sroa.speculated135, ptr %i.gr, align 8, !tbaa !125
  %i.hj = icmp eq ptr %i.hh, null
  br i1 %i.hj, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i98, label %bb.ae

bb.ae:                                            ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i97
  tail call void @_ZdaPv(ptr noundef nonnull %i.hh) #23
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i98

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i98: ; preds = %bb.ae, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i97
  %i.hk = icmp eq ptr %.pre.i.i93, null
  br i1 %i.hk, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit53, label %bb.af

bb.af:                                            ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i98
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i93) #23
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit53

_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit53: ; preds = %bb.ac, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i98, %bb.af
  %i.hl = phi i64 [ 0, %bb.ac ], [ %.sroa.speculated135, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i98 ], [ %.sroa.speculated135, %bb.af ]
  %i.hm = icmp sgt i64 %i.h, 0
  br i1 %i.hm, label %.lr.ph195, label %._crit_edge196

.lr.ph195:                                        ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit53
  %i.hn = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ho = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.hp = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.hq = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.hr = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.hs = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.ht = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.hu = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.phi.trans.insert.i.i111 = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  br label %bb.aj

._crit_edge196:                                   ; preds = %._crit_edge, %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit53
  %i.hv = load ptr, ptr %i.gn, align 8, !tbaa !95
  %i.hw = icmp eq ptr %i.hv, null
  br i1 %i.hw, label %bb.ag, label %_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit63

bb.ag:                                            ; preds = %._crit_edge196
  %i.hx = load i64, ptr %i.gg, align 8, !tbaa !124
  %i.hy = trunc i64 %i.hx to i32                  ; 2 uses
  %i.hz = load i64, ptr %i.ge, align 8, !tbaa !21 ; 5 uses
  %i.ia = icmp sgt i64 %i.hz, -1
  br i1 %i.ia, label %.lr.ph.i54, label %_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit63

.lr.ph.i54:                                       ; preds = %bb.ag
  %i.ib = load ptr, ptr %i.gh, align 8, !tbaa !86 ; 3 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ai, %.lr.ph.i54
  %.08.i55 = phi i64 [ %i.hz, %.lr.ph.i54 ], [ %i.if, %bb.ai ] ; 4 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %.08.i55
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !30
  %i.ie = icmp eq i32 %i.id, 0
  br i1 %i.ie, label %bb.ai, label %.critedge.i56

bb.ai:                                            ; preds = %bb.ah
  %i.if = add nsw i64 %.08.i55, -1
  %i.ig = icmp sgt i64 %.08.i55, 0
  br i1 %i.ig, label %bb.ah, label %.critedge.i56, !llvm.loop !2

.critedge.i56:                                    ; preds = %bb.ai, %bb.ah
  %.0.lcssa.i57 = phi i64 [ -1, %bb.ai ], [ %.08.i55, %bb.ah ] ; 5 uses
  %.not.not11.i58 = icmp slt i64 %.0.lcssa.i57, %i.hz
  br i1 %.not.not11.i58, label %.lr.ph13.i59.preheader, label %_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit63

.lr.ph13.i59.preheader:                           ; preds = %.critedge.i56
  %i.ih = sub i64 %i.hz, %.0.lcssa.i57            ; 3 uses
  %min.iters.check = icmp ult i64 %i.ih, 8
  br i1 %min.iters.check, label %.lr.ph13.i59.preheader282, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph13.i59.preheader
  %n.vec = and i64 %i.ih, -8                      ; 3 uses
  %i.ii = add i64 %.0.lcssa.i57, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.hy, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ij = getelementptr [4 x i8], ptr %i.ib, i64 %.0.lcssa.i57
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ik = getelementptr [4 x i8], ptr %i.ij, i64 %index ; 2 uses
  %i.il = getelementptr i8, ptr %i.ik, i64 4
  %i.im = getelementptr i8, ptr %i.ik, i64 20
  store <4 x i32> %broadcast.splat, ptr %i.il, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat, ptr %i.im, align 4, !tbaa !30
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.in = icmp eq i64 %index.next, %n.vec
  br i1 %i.in, label %middle.block, label %vector.body, !llvm.loop !246

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ih, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit63, label %.lr.ph13.i59.preheader282

.lr.ph13.i59.preheader282:                        ; preds = %.lr.ph13.i59.preheader, %middle.block
  %.1.in12.i60.ph = phi i64 [ %.0.lcssa.i57, %.lr.ph13.i59.preheader ], [ %i.ii, %middle.block ]
  br label %.lr.ph13.i59

.lr.ph13.i59:                                     ; preds = %.lr.ph13.i59.preheader282, %.lr.ph13.i59
  %.1.in12.i60 = phi i64 [ %.1.i61, %.lr.ph13.i59 ], [ %.1.in12.i60.ph, %.lr.ph13.i59.preheader282 ]
  %.1.i61 = add nsw i64 %.1.in12.i60, 1           ; 3 uses
  %i.io = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %.1.i61
  store i32 %i.hy, ptr %i.io, align 4, !tbaa !30
  %exitcond.not.i62 = icmp eq i64 %.1.i61, %i.hz
  br i1 %exitcond.not.i62, label %_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit63, label %.lr.ph13.i59, !llvm.loop !247

bb.aj:                                            ; preds = %.lr.ph195, %._crit_edge
  %i.ip = phi i64 [ %i.hl, %.lr.ph195 ], [ %i.la, %._crit_edge ] ; 4 uses
  %.0194 = phi i64 [ 0, %.lr.ph195 ], [ %i.lb, %._crit_edge ] ; 7 uses
  %i.iq = load ptr, ptr %i.gh, align 8, !tbaa !86
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %.0194 ; 2 uses
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !30
  %i.it = getelementptr i8, ptr %i.ir, i64 4
  store i32 %i.is, ptr %i.it, align 4, !tbaa !30
  %i.iu = load ptr, ptr %i.hn, align 8, !tbaa !94 ; 4 uses
  %i.iv = load ptr, ptr %i.ho, align 8, !tbaa !96 ; 2 uses
  %i.iw = load ptr, ptr %i.hp, align 8, !tbaa !86
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %.0194 ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !30
  %i.iz = sext i32 %i.iy to i64                   ; 8 uses
  %i.ja = load ptr, ptr %i.hq, align 8, !tbaa !95 ; 2 uses
  %i.jb = icmp eq ptr %i.ja, null
  br i1 %i.jb, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.jc = getelementptr i8, ptr %i.ix, i64 4
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !30
  %i.je = sext i32 %i.jd to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i64

bb.al:                                            ; preds = %bb.aj
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %.0194
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !30
  %i.jh = sext i32 %i.jg to i64
  %i.ji = add nsw i64 %i.jh, %i.iz
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i64

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i64: ; preds = %bb.al, %bb.ak
  %.sink.i.i65 = phi i64 [ %i.je, %bb.ak ], [ %i.ji, %bb.al ] ; 2 uses
  %i.jj = load ptr, ptr %i.hr, align 8, !tbaa !94 ; 4 uses
  %i.jk = load ptr, ptr %i.hs, align 8, !tbaa !96 ; 4 uses
  %i.jl = load ptr, ptr %i.ht, align 8, !tbaa !86
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %.0194 ; 2 uses
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !30
  %i.jo = sext i32 %i.jn to i64                   ; 9 uses
  %i.jp = load ptr, ptr %i.hu, align 8, !tbaa !95 ; 2 uses
  %i.jq = icmp eq ptr %i.jp, null
  br i1 %i.jq, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i64
  %i.jr = getelementptr i8, ptr %i.jm, i64 4
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !30
  %i.jt = sext i32 %i.js to i64
  br label %_ZN5Eigen8internal28sparse_conjunction_evaluatorINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEKNS_12SparseMatrixIdLi0EiEEEENS0_10IndexBasedENS0_13IteratorBasedEddE13InnerIteratorC2ERKSJ_l.exit.i66

bb.an:                                            ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i64
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %.0194
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !30
  %i.jw = sext i32 %i.jv to i64
  %i.jx = add nsw i64 %i.jw, %i.jo
  br label %_ZN5Eigen8internal28sparse_conjunction_evaluatorINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEKNS_12SparseMatrixIdLi0EiEEEENS0_10IndexBasedENS0_13IteratorBasedEddE13InnerIteratorC2ERKSJ_l.exit.i66

_ZN5Eigen8internal28sparse_conjunction_evaluatorINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEKNS_12SparseMatrixIdLi0EiEEEENS0_10IndexBasedENS0_13IteratorBasedEddE13InnerIteratorC2ERKSJ_l.exit.i66: ; preds = %bb.an, %bb.am
  %i.jy = phi i64 [ %i.jt, %bb.am ], [ %i.jx, %bb.an ] ; 2 uses
  %i.jz = icmp sgt i64 %.sink.i.i65, %i.iz
  %i.ka = icmp sgt i64 %i.jy, %i.jo               ; 2 uses
  br i1 %i.jz, label %bb.ao, label %.thread4.i.i67

bb.ao:                                            ; preds = %_ZN5Eigen8internal28sparse_conjunction_evaluatorINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEKNS_12SparseMatrixIdLi0EiEEEENS0_10IndexBasedENS0_13IteratorBasedEddE13InnerIteratorC2ERKSJ_l.exit.i66
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %i.iz
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !30 ; 5 uses
  br i1 %i.ka, label %bb.ap, label %._crit_edge8.i.i72

bb.ap:                                            ; preds = %bb.ao
  %i.kd = getelementptr inbounds [4 x i8], ptr %i.jk, i64 %i.jo
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !30 ; 4 uses
  %i.kf = icmp eq i32 %i.ke, %i.kc
  br i1 %i.kf, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.kg = getelementptr inbounds [8 x i8], ptr %i.iu, i64 %i.iz
  %i.kh = getelementptr inbounds [8 x i8], ptr %i.jj, i64 %i.jo
  %i.ki = load double, ptr %i.kh, align 8, !tbaa !26
  %i.kj = fmul double %i.d, %i.ki
  %i.kk = load double, ptr %i.kg, align 8, !tbaa !26
  %i.kl = fsub double %i.kk, %i.kj
  %i.km = add nsw i64 %i.iz, 1
  %i.kn = add nsw i64 %i.jo, 1
  br label %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEEKNS2_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_EEEENS0_13IteratorBasedESL_ddE13InnerIteratorC2ERKSM_l.exit73

bb.ar:                                            ; preds = %bb.ap
  %i.ko = icmp sgt i32 %i.ke, %i.kc
  br i1 %i.ko, label %._crit_edge8.i.i72, label %bb.as

._crit_edge8.i.i72:                               ; preds = %bb.ar, %bb.ao
  %i.kp = getelementptr inbounds [8 x i8], ptr %i.iu, i64 %i.iz
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !26
  %i.kr = add nsw i64 %i.iz, 1
  br label %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEEKNS2_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_EEEENS0_13IteratorBasedESL_ddE13InnerIteratorC2ERKSM_l.exit73

.thread4.i.i67:                                   ; preds = %_ZN5Eigen8internal28sparse_conjunction_evaluatorINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEKNS_12SparseMatrixIdLi0EiEEEENS0_10IndexBasedENS0_13IteratorBasedEddE13InnerIteratorC2ERKSJ_l.exit.i66
  br i1 %i.ka, label %.thread4..thread5_crit_edge.i.i68, label %._crit_edge

.thread4..thread5_crit_edge.i.i68:                ; preds = %.thread4.i.i67
  %.phi.trans.insert6.i.i69 = getelementptr inbounds [4 x i8], ptr %i.jk, i64 %i.jo
  %.pre7.i.i70 = load i32, ptr %.phi.trans.insert6.i.i69, align 4, !tbaa !30
  br label %.thread5.i.i71

bb.as:                                            ; preds = %bb.ar
  %i.ks = icmp slt i32 %i.ke, %i.kc
  br i1 %i.ks, label %.thread5.i.i71, label %._crit_edge

.thread5.i.i71:                                   ; preds = %bb.as, %.thread4..thread5_crit_edge.i.i68
  %i.kt = phi i32 [ %.pre7.i.i70, %.thread4..thread5_crit_edge.i.i68 ], [ %i.ke, %bb.as ]
  %i.ku = getelementptr inbounds [8 x i8], ptr %i.jj, i64 %i.jo
  %i.kv = load double, ptr %i.ku, align 8, !tbaa !26
  %i.kw = fmul double %i.d, %i.kv
  %i.kx = fsub double 0.000000e+00, %i.kw
  %i.ky = add nsw i64 %i.jo, 1
  br label %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEEKNS2_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_EEEENS0_13IteratorBasedESL_ddE13InnerIteratorC2ERKSM_l.exit73

_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEEKNS2_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_EEEENS0_13IteratorBasedESL_ddE13InnerIteratorC2ERKSM_l.exit73: ; preds = %bb.aq, %._crit_edge8.i.i72, %.thread5.i.i71
  %.sroa.29.1 = phi i64 [ %i.kn, %bb.aq ], [ %i.jo, %._crit_edge8.i.i72 ], [ %i.ky, %.thread5.i.i71 ]
  %.sroa.52.1.in = phi i32 [ %i.kc, %bb.aq ], [ %i.kc, %._crit_edge8.i.i72 ], [ %i.kt, %.thread5.i.i71 ] ; 2 uses
  %.sroa.43.1 = phi double [ %i.kl, %bb.aq ], [ %i.kq, %._crit_edge8.i.i72 ], [ %i.kx, %.thread5.i.i71 ]
  %.sroa.10.1 = phi i64 [ %i.km, %bb.aq ], [ %i.kr, %._crit_edge8.i.i72 ], [ %i.iz, %.thread5.i.i71 ]
  %i.kz = icmp sgt i32 %.sroa.52.1.in, -1
  br i1 %i.kz, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.thread4.i75, %bb.bd, %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEEKNS2_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_EEEENS0_13IteratorBasedESL_ddE13InnerIteratorppEv.exit83, %.thread4.i.i67, %bb.as, %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEEKNS2_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_EEEENS0_13IteratorBasedESL_ddE13InnerIteratorC2ERKSM_l.exit73
  %i.la = phi i64 [ %i.ip, %.thread4.i.i67 ], [ %i.ip, %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEEKNS2_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_EEEENS0_13IteratorBasedESL_ddE13InnerIteratorC2ERKSM_l.exit73 ], [ %i.ip, %bb.as ], [ %i.mc, %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEEKNS2_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_EEEENS0_13IteratorBasedESL_ddE13InnerIteratorppEv.exit83 ], [ %i.mc, %bb.bd ], [ %i.mc, %.thread4.i75 ]
  %i.lb = add nuw nsw i64 %.0194, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.lb, %i.h
  br i1 %exitcond.not, label %._crit_edge196, label %bb.aj, !llvm.loop !248

.lr.ph:                                           ; preds = %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEEKNS2_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_EEEENS0_13IteratorBasedESL_ddE13InnerIteratorC2ERKSM_l.exit73, %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEEKNS2_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_EEEENS0_13IteratorBasedESL_ddE13InnerIteratorppEv.exit83
  %i.lc = phi i64 [ %i.mc, %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEEKNS2_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_EEEENS0_13IteratorBasedESL_ddE13InnerIteratorppEv.exit83 ], [ %i.ip, %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEEKNS2_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_EEEENS0_13IteratorBasedESL_ddE13InnerIteratorC2ERKSM_l.exit73 ] ; 2 uses
  %.sroa.10.0193 = phi i64 [ %.sroa.10.2, %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEEKNS2_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_EEEENS0_13IteratorBasedESL_ddE13InnerIteratorppEv.exit83 ], [ %.sroa.10.1, %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEEKNS2_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_EEEENS0_13IteratorBasedESL_ddE13InnerIteratorC2ERKSM_l.exit73 ] ; 7 uses
  %.sroa.43.0192 = phi double [ %.sroa.43.2, %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEEKNS2_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_EEEENS0_13IteratorBasedESL_ddE13InnerIteratorppEv.exit83 ], [ %.sroa.43.1, %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEEKNS2_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_EEEENS0_13IteratorBasedESL_ddE13InnerIteratorC2ERKSM_l.exit73 ]
  %.sroa.52.0191.in = phi i32 [ %.sroa.52.2.in, %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEEKNS2_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_EEEENS0_13IteratorBasedESL_ddE13InnerIteratorppEv.exit83 ], [ %.sroa.52.1.in, %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEEKNS2_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_EEEENS0_13IteratorBasedESL_ddE13InnerIteratorC2ERKSM_l.exit73 ]
  %.sroa.29.0190 = phi i64 [ %.sroa.29.2, %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEEKNS2_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_EEEENS0_13IteratorBasedESL_ddE13InnerIteratorppEv.exit83 ], [ %.sroa.29.1, %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEEKNS2_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_EEEENS0_13IteratorBasedESL_ddE13InnerIteratorC2ERKSM_l.exit73 ] ; 8 uses
  %i.ld = load ptr, ptr %i.gh, align 8, !tbaa !86
  %i.le = getelementptr [4 x i8], ptr %i.ld, i64 %.0194
  %i.lf = getelementptr i8, ptr %i.le, i64 4      ; 2 uses
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !30 ; 2 uses
  %i.lh = sext i32 %i.lg to i64
  %i.li = add nsw i32 %i.lg, 1
  store i32 %i.li, ptr %i.lf, align 4, !tbaa !30
  %i.lj = load i64, ptr %i.gg, align 8, !tbaa !124 ; 5 uses
  %i.lk = add nsw i64 %i.lj, 1                    ; 3 uses
  %.not = icmp sgt i64 %i.lc, %i.lj
  br i1 %.not, label %.lr.ph._crit_edge, label %bb.at

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.gq, align 8, !tbaa !94
  %.pre208 = load ptr, ptr %.phi.trans.insert.i.i111, align 8, !tbaa !96
  br label %bb.ay

bb.at:                                            ; preds = %.lr.ph
  %i.ll = sitofp i64 %i.lk to double
  %i.lm = fptosi double %i.ll to i64
  %i.ln = add nsw i64 %i.lk, %i.lm
  %.sroa.speculated.i105 = tail call i64 @llvm.smin.i64(i64 %i.ln, i64 2147483647) ; 7 uses
  %.not186 = icmp sgt i64 %.sroa.speculated.i105, %i.lj
  br i1 %.not186, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.lo = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.lo, align 8, !tbaa !81
  invoke void @__cxa_throw(ptr nonnull %i.lo, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.noexc118 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc118:                                        ; preds = %bb.au
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.lp = shl nuw nsw i64 %.sroa.speculated.i105, 3
  %i.lq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.lp) #24
          to label %.noexc119 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc119:                                        ; preds = %bb.av
  %i.lr = shl nuw nsw i64 %.sroa.speculated.i105, 2
  %i.ls = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.lr) #24
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i107 unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i106 ; 4 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i107: ; preds = %.noexc119
  %i.lt = load i64, ptr %i.gg, align 8, !tbaa !84
  %.sroa.speculated.i.i108 = tail call i64 @llvm.smin.i64(i64 %i.lt, i64 %.sroa.speculated.i105) ; 3 uses
  %i.lu = icmp sgt i64 %.sroa.speculated.i.i108, 0
  %.pre.i.i109 = load ptr, ptr %i.gq, align 8, !tbaa !122 ; 3 uses
  br i1 %i.lu, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i115, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i110

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i110: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i107
  %.pre23.i.i112 = load ptr, ptr %.phi.trans.insert.i.i111, align 8, !tbaa !120
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i113

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i115: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i107
  %.idx.i.i116 = shl nuw nsw i64 %.sroa.speculated.i.i108, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.lq, ptr align 8 %.pre.i.i109, i64 %.idx.i.i116, i1 false)
  %.idx22.i.i117 = shl nuw nsw i64 %.sroa.speculated.i.i108, 2
  %i.lv = load ptr, ptr %.phi.trans.insert.i.i111, align 8, !tbaa !96 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ls, ptr align 4 %i.lv, i64 %.idx22.i.i117, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i113

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i106: ; preds = %.noexc119
  %i.lw = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.lq) #23
  br label %.body103

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i113: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i115, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i110
  %i.lx = phi ptr [ %.pre23.i.i112, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i110 ], [ %i.lv, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i115 ] ; 2 uses
  store ptr %i.lq, ptr %i.gq, align 8, !tbaa !122
  store ptr %i.ls, ptr %.phi.trans.insert.i.i111, align 8, !tbaa !120
  store i64 %.sroa.speculated.i105, ptr %i.gr, align 8, !tbaa !125
  %i.ly = icmp eq ptr %i.lx, null
  br i1 %i.ly, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i114, label %bb.aw

bb.aw:                                            ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i113
  tail call void @_ZdaPv(ptr noundef nonnull %i.lx) #23
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i114

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i114: ; preds = %bb.aw, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i113
  %i.lz = icmp eq ptr %.pre.i.i109, null
  br i1 %i.lz, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i114
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i109) #23
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph._crit_edge, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i114, %bb.ax
  %i.ma = phi ptr [ %.pre208, %.lr.ph._crit_edge ], [ %i.ls, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i114 ], [ %i.ls, %bb.ax ]
  %i.mb = phi ptr [ %.pre, %.lr.ph._crit_edge ], [ %i.lq, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i114 ], [ %i.lq, %bb.ax ] ; 2 uses
  %i.mc = phi i64 [ %i.lc, %.lr.ph._crit_edge ], [ %.sroa.speculated.i105, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i114 ], [ %.sroa.speculated.i105, %bb.ax ] ; 4 uses
  store i64 %i.lk, ptr %i.gg, align 8, !tbaa !124
  %i.md = getelementptr inbounds [8 x i8], ptr %i.mb, i64 %i.lj
  store double 0.000000e+00, ptr %i.md, align 8, !tbaa !26
  %i.me = getelementptr inbounds [4 x i8], ptr %i.ma, i64 %i.lj
  store i32 %.sroa.52.0191.in, ptr %i.me, align 4, !tbaa !30
  %i.mf = getelementptr inbounds [8 x i8], ptr %i.mb, i64 %i.lh
  store double %.sroa.43.0192, ptr %i.mf, align 8, !tbaa !26
  %i.mg = icmp slt i64 %.sroa.10.0193, %.sink.i.i65
  %i.mh = icmp slt i64 %.sroa.29.0190, %i.jy      ; 2 uses
  br i1 %i.mg, label %bb.az, label %.thread4.i75

bb.az:                                            ; preds = %bb.ay
  %i.mi = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %.sroa.10.0193
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !30 ; 5 uses
  br i1 %i.mh, label %bb.ba, label %._crit_edge8.i82

bb.ba:                                            ; preds = %bb.az
  %i.mk = getelementptr inbounds [4 x i8], ptr %i.jk, i64 %.sroa.29.0190
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !30 ; 4 uses
  %i.mm = icmp eq i32 %i.ml, %i.mj
  br i1 %i.mm, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.mn = getelementptr inbounds [8 x i8], ptr %i.iu, i64 %.sroa.10.0193
  %i.mo = getelementptr inbounds [8 x i8], ptr %i.jj, i64 %.sroa.29.0190
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !26
  %i.mq = fmul double %i.d, %i.mp
  %i.mr = load double, ptr %i.mn, align 8, !tbaa !26
  %i.ms = fsub double %i.mr, %i.mq
  %i.mt = add nsw i64 %.sroa.10.0193, 1
  %i.mu = add nsw i64 %.sroa.29.0190, 1
  br label %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEEKNS2_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_EEEENS0_13IteratorBasedESL_ddE13InnerIteratorppEv.exit83

bb.bc:                                            ; preds = %bb.ba
  %i.mv = icmp sgt i32 %i.ml, %i.mj
  br i1 %i.mv, label %._crit_edge8.i82, label %bb.bd

._crit_edge8.i82:                                 ; preds = %bb.bc, %bb.az
  %i.mw = getelementptr inbounds [8 x i8], ptr %i.iu, i64 %.sroa.10.0193
  %i.mx = load double, ptr %i.mw, align 8, !tbaa !26
  %i.my = add nsw i64 %.sroa.10.0193, 1
  br label %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEEKNS2_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_EEEENS0_13IteratorBasedESL_ddE13InnerIteratorppEv.exit83

.thread4.i75:                                     ; preds = %bb.ay
  br i1 %i.mh, label %.thread4..thread5_crit_edge.i76, label %._crit_edge

.thread4..thread5_crit_edge.i76:                  ; preds = %.thread4.i75
  %.phi.trans.insert6.i79 = getelementptr inbounds [4 x i8], ptr %i.jk, i64 %.sroa.29.0190
  %.pre7.i80 = load i32, ptr %.phi.trans.insert6.i79, align 4, !tbaa !30
  br label %.thread5.i81

bb.bd:                                            ; preds = %bb.bc
  %i.mz = icmp slt i32 %i.ml, %i.mj
  br i1 %i.mz, label %.thread5.i81, label %._crit_edge

.thread5.i81:                                     ; preds = %bb.bd, %.thread4..thread5_crit_edge.i76
  %i.na = phi i32 [ %.pre7.i80, %.thread4..thread5_crit_edge.i76 ], [ %i.ml, %bb.bd ]
  %i.nb = getelementptr inbounds [8 x i8], ptr %i.jj, i64 %.sroa.29.0190
  %i.nc = load double, ptr %i.nb, align 8, !tbaa !26
  %i.nd = fmul double %i.d, %i.nc
  %i.ne = fsub double 0.000000e+00, %i.nd
  %i.nf = add nsw i64 %.sroa.29.0190, 1
  br label %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEEKNS2_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_EEEENS0_13IteratorBasedESL_ddE13InnerIteratorppEv.exit83

_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEEKNS2_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_EEEENS0_13IteratorBasedESL_ddE13InnerIteratorppEv.exit83: ; preds = %bb.bb, %._crit_edge8.i82, %.thread5.i81
  %.sroa.29.2 = phi i64 [ %i.mu, %bb.bb ], [ %.sroa.29.0190, %._crit_edge8.i82 ], [ %i.nf, %.thread5.i81 ]
  %.sroa.52.2.in = phi i32 [ %i.mj, %bb.bb ], [ %i.mj, %._crit_edge8.i82 ], [ %i.na, %.thread5.i81 ] ; 2 uses
  %.sroa.43.2 = phi double [ %i.ms, %bb.bb ], [ %i.mx, %._crit_edge8.i82 ], [ %i.ne, %.thread5.i81 ]
  %.sroa.10.2 = phi i64 [ %i.mt, %bb.bb ], [ %i.my, %._crit_edge8.i82 ], [ %.sroa.10.0193, %.thread5.i81 ]
  %i.ng = icmp sgt i32 %.sroa.52.2.in, -1
  br i1 %i.ng, label %.lr.ph, label %._crit_edge

_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit63: ; preds = %.lr.ph13.i59, %middle.block, %.critedge.i56, %bb.ag, %._crit_edge196
  store i8 1, ptr %2, align 8, !tbaa !85
  %i.nh = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIdLi0EiEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %bb.be unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.be:                                            ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit63
  %i.ni = load ptr, ptr %i.gh, align 8, !tbaa !86
  call void @free(ptr noundef %i.ni) #20
  %i.nj = load ptr, ptr %i.gn, align 8, !tbaa !95
  call void @free(ptr noundef %i.nj) #20
  %i.nk = load ptr, ptr %i.gq, align 8, !tbaa !94 ; 2 uses
  %i.nl = icmp eq ptr %i.nk, null
  br i1 %i.nl, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @_ZdaPv(ptr noundef nonnull %i.nk) #23
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.nm = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !96 ; 2 uses
  %i.no = icmp eq ptr %i.nn, null
  br i1 %i.no, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @_ZdaPv(ptr noundef nonnull %i.nn) #23
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.bg, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.av, %bb.au, %bb.ad, %_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit63
  %lpad.loopexit.split-lp283 = landingpad { ptr, i32 }
          cleanup
  br label %.body103

.body103:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i106, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i90
  %.pn.pn = phi { ptr, i32 } [ %i.hg, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i90 ], [ %i.lw, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i106 ], [ %lpad.loopexit.split-lp283, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #20
  br label %.body

.body:                                            ; preds = %bb.ab, %.body103
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body103 ], [ %i.gl, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %.body85

_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit:  ; preds = %.lr.ph13.i, %middle.block278, %.critedge.i, %bb.d, %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit._crit_edge, %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit
  ret void

.body85:                                          ; preds = %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i, %.body
  %.pn47.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.es, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i ]
  resume { ptr, i32 } %.pn47.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIdLi0EiEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !85, !range !87, !noundef !82
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !120
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !120
  store ptr %i.f, ptr %i.c, align 8, !tbaa !120
  store ptr %i.e, ptr %i.d, align 8, !tbaa !120
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.g, align 8, !tbaa !84
  %i.j = load i64, ptr %i.h, align 8, !tbaa !84
  store i64 %i.j, ptr %i.g, align 8, !tbaa !84
  store i64 %i.i, ptr %i.h, align 8, !tbaa !84
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.k, align 8, !tbaa !84
  %i.n = load i64, ptr %i.l, align 8, !tbaa !84
  store i64 %i.n, ptr %i.k, align 8, !tbaa !84
  store i64 %i.m, ptr %i.l, align 8, !tbaa !84
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.q = load <2 x ptr>, ptr %i.p, align 8, !tbaa !123
  %i.r = load <2 x ptr>, ptr %i.o, align 8, !tbaa !123
  store <2 x ptr> %i.q, ptr %i.o, align 8, !tbaa !123
  store <2 x ptr> %i.r, ptr %i.p, align 8, !tbaa !123
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !120
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !120
  store ptr %i.v, ptr %i.s, align 8, !tbaa !120
  store ptr %i.u, ptr %i.t, align 8, !tbaa !120
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.y = load i64, ptr %i.w, align 8, !tbaa !84
  %i.z = load i64, ptr %i.x, align 8, !tbaa !84
  store i64 %i.z, ptr %i.w, align 8, !tbaa !84
  store i64 %i.y, ptr %i.x, align 8, !tbaa !84
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !84
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !84
  store i64 %i.ad, ptr %i.aa, align 8, !tbaa !84
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !84
  br label %_ZN5Eigen8internal17CompressedStorageIdiEaSERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %_ZN5Eigen8internal17CompressedStorageIdiEaSERKS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !36
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !21
  tail call void @_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %i.af, i64 noundef %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !95 ; 2 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %_ZN5Eigen12SparseMatrixIdLi0EiE14initAssignmentIS1_EEvRKT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.aj) #20
  store ptr null, ptr %i.ai, align 8, !tbaa !95
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE14initAssignmentIS1_EEvRKT_.exit

_ZN5Eigen12SparseMatrixIdLi0EiE14initAssignmentIS1_EEvRKT_.exit: ; preds = %bb.d, %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !95
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE14initAssignmentIS1_EEvRKT_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !21
  %.idx = shl nsw i64 %i.ao, 2
  %i.ap = add nsw i64 %.idx, 4                    ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !86
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !86
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.au, ptr align 4 %i.as, i64 %i.ap, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit: ; preds = %bb.f, %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !124
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, i64 noundef %i.ay, double noundef 0.000000e+00)
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !124
  %i.ba = icmp sgt i64 %i.az, 0
  br i1 %i.ba, label %bb.h, label %_ZN5Eigen8internal17CompressedStorageIdiEaSERKS2_.exit

bb.h:                                             ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !124 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_ZN5Eigen8internal17CompressedStorageIdiEaSERKS2_.exit, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i: ; preds = %bb.h
  %.idx.i = shl nsw i64 %i.bc, 3
  %i.be = load ptr, ptr %i.av, align 8, !tbaa !94
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !94
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bf, ptr align 8 %i.be, i64 %.idx.i, i1 false)
  %.pre.i = load i64, ptr %i.bb, align 8, !tbaa !124 ; 2 uses
  %i.bg = icmp eq i64 %.pre.i, 0
  br i1 %i.bg, label %_ZN5Eigen8internal17CompressedStorageIdiEaSERKS2_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i
  %.idx7.i = shl nsw i64 %.pre.i, 2
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !96
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !96
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bk, ptr align 4 %i.bi, i64 %.idx7.i, i1 false)
  br label %_ZN5Eigen8internal17CompressedStorageIdiEaSERKS2_.exit

bb.j:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE14initAssignmentIS1_EEvRKT_.exit
  tail call void @_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi0EiEES3_EEvRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1), !inline_history !259
  br label %_ZN5Eigen8internal17CompressedStorageIdiEaSERKS2_.exit

_ZN5Eigen8internal17CompressedStorageIdiEaSERKS2_.exit: ; preds = %bb.i, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i, %bb.h, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit, %bb.c, %bb.j, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !124
  %i.c = add nsw i64 %i.b, %1                     ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !125
  %i.f = icmp sgt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.c, 2305843009213693951
  %i.h = shl nuw i64 %i.c, 3
  %i.i = select i1 %i.g, i64 -1, i64 %i.h
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #24 ; 3 uses
  %i.k = icmp ugt i64 %i.c, 4611686018427387903
  %i.l = shl nuw i64 %i.c, 2
  %i.m = select i1 %i.k, i64 -1, i64 %i.l
  %i.n = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #24
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i ; 2 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i:   ; preds = %bb.b
  %i.o = load i64, ptr %i.a, align 8, !tbaa !84
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.o, i64 %i.c) ; 3 uses
  %i.p = icmp sgt i64 %.sroa.speculated.i, 0
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !122 ; 3 uses
  br i1 %i.p, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre23.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !120
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i
  %.idx.i = shl nuw nsw i64 %.sroa.speculated.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr align 8 %.pre.i, i64 %.idx.i, i1 false)
  %.idx22.i = shl nuw nsw i64 %.sroa.speculated.i, 2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !96   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.n, ptr align 4 %i.r, i64 %.idx22.i, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i:  ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.j) #23
  resume { ptr, i32 } %i.s
end_hunk_2
begin_hunk_3_@_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi0EiEES3_EEvRT_RKT0_:bb.a
  %.sink.i = phi i64 [ %i.bk, %bb.h ], [ %i.bo, %bb.i ] ; 2 uses
  %i.bp = icmp sgt i64 %.sink.i, %i.bf
  br i1 %i.bp, label %.lr.ph145.preheader, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit

.lr.ph145.preheader:                              ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %.pre155 = load i64, ptr %i.g, align 8, !tbaa !124
  br label %.lr.ph145

_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit:   ; preds = %bb.m, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.bq = add nuw nsw i64 %.037147, 1             ; 2 uses
  %exitcond153.not = icmp eq i64 %i.bq, %i.b
  br i1 %exitcond153.not, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit._crit_edge, label %bb.g, !llvm.loop !262

.lr.ph145:                                        ; preds = %.lr.ph145.preheader, %bb.m
  %i.br = phi i64 [ %i.cc, %bb.m ], [ %.pre155, %.lr.ph145.preheader ] ; 5 uses
  %.sroa.8119.0144 = phi i64 [ %i.dc, %bb.m ], [ %i.bf, %.lr.ph145.preheader ] ; 3 uses
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %.sroa.8119.0144
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !26
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %.sroa.8119.0144
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !30
  %i.bw = load ptr, ptr %i.h, align 8, !tbaa !86
  %i.bx = getelementptr [4 x i8], ptr %i.bw, i64 %.037147
  %i.by = getelementptr i8, ptr %i.bx, i64 4      ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !30 ; 2 uses
  %i.ca = sext i32 %i.bz to i64
  %i.cb = add nsw i32 %i.bz, 1
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !30
  %i.cc = add nsw i64 %i.br, 1                    ; 4 uses
  %i.cd = load i64, ptr %i.ab, align 8, !tbaa !125
  %.not137 = icmp sgt i64 %i.cd, %i.br
  br i1 %.not137, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.lr.ph145
  %i.ce = sitofp i64 %i.cc to double
  %i.cf = fptosi double %i.ce to i64
  %i.cg = add nsw i64 %i.cc, %i.cf
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.cg, i64 2147483647) ; 7 uses
  %.not138 = icmp sgt i64 %.sroa.speculated.i, %i.br
  br i1 %.not138, label %.noexc67, label %.noexc

.noexc:                                           ; preds = %bb.j
  %i.ch = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ch, align 8, !tbaa !81
  tail call void @__cxa_throw(ptr nonnull %i.ch, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
  unreachable

.noexc67:                                         ; preds = %bb.j
  %i.ci = icmp ugt i64 %.sroa.speculated.i, 2305843009213693951
  %i.cj = shl nuw i64 %.sroa.speculated.i, 3
  %i.ck = select i1 %i.ci, i64 -1, i64 %i.cj
  %i.cl = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ck) #24 ; 3 uses
  %i.cm = icmp ugt i64 %.sroa.speculated.i, 4611686018427387903
  %i.cn = shl nuw i64 %.sroa.speculated.i, 2
  %i.co = select i1 %i.cm, i64 -1, i64 %i.cn
  %i.cp = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.co) #24
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i ; 2 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i: ; preds = %.noexc67
  %i.cq = load i64, ptr %i.g, align 8, !tbaa !84
  %.sroa.speculated.i.i = tail call i64 @llvm.smin.i64(i64 %i.cq, i64 %.sroa.speculated.i) ; 3 uses
  %i.cr = icmp sgt i64 %.sroa.speculated.i.i, 0
  %.pre.i.i = load ptr, ptr %i.v, align 8, !tbaa !122 ; 3 uses
  br i1 %i.cr, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i
  %.pre23.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !120
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i
  %.idx.i.i = shl nuw nsw i64 %.sroa.speculated.i.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cl, ptr align 8 %.pre.i.i, i64 %.idx.i.i, i1 false)
  %.idx22.i.i = shl nuw nsw i64 %.sroa.speculated.i.i, 2
  %i.cs = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !96 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cp, ptr align 4 %i.cs, i64 %.idx22.i.i, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i: ; preds = %.noexc67
  %i.ct = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.cl) #23
  br label %.body68

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i
  %i.cu = phi ptr [ %.pre23.i.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i ], [ %i.cs, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i ] ; 2 uses
  store ptr %i.cl, ptr %i.v, align 8, !tbaa !122
  store ptr %i.cp, ptr %.phi.trans.insert.i.i, align 8, !tbaa !120
  store i64 %.sroa.speculated.i, ptr %i.ab, align 8, !tbaa !125
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.cu) #23
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i: ; preds = %bb.k, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i
  %i.cw = icmp eq ptr %.pre.i.i, null
  br i1 %i.cw, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #23
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph145, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i, %bb.l
  store i64 %i.cc, ptr %i.g, align 8, !tbaa !124
  %i.cx = load ptr, ptr %i.v, align 8, !tbaa !94  ; 2 uses
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.br
  store double 0.000000e+00, ptr %i.cy, align 8, !tbaa !26
  %i.cz = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !96
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.br
  store i32 %i.bv, ptr %i.da, align 4, !tbaa !30
  %i.db = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.ca
  store double %i.bt, ptr %i.db, align 8, !tbaa !26
  %i.dc = add nsw i64 %.sroa.8119.0144, 1         ; 2 uses
  %exitcond152.not = icmp eq i64 %i.dc, %.sink.i
  br i1 %exitcond152.not, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit, label %.lr.ph145, !llvm.loop !263

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !36 ; 3 uses
  store i8 0, ptr %2, align 8, !tbaa !85
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.df, i8 0, i64 64, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.de, ptr %i.dg, align 8, !tbaa !36
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.dj = shl i64 %i.b, 2
  %i.dk = add i64 %i.dj, 4
  %calloc = tail call ptr @calloc(i64 1, i64 %i.dk) ; 2 uses
  store ptr %calloc, ptr %i.di, align 8, !tbaa !86
  %.not6.i = icmp eq ptr %calloc, null
  br i1 %.not6.i, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.dl = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dl, align 8, !tbaa !81
  invoke void @__cxa_throw(ptr nonnull %i.dl, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.noexc71 unwind label %bb.p

.noexc71:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.dm = landingpad { ptr, i32 }
          cleanup
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.dn) #20
  br label %.body

bb.q:                                             ; preds = %bb.n
  store i64 %i.b, ptr %i.df, align 8, !tbaa !21
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.dp = mul nsw i64 %i.b, %i.de
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.de, i64 %i.b)
  %i.dq = shl nsw i64 %.sroa.speculated, 1
  %.sroa.speculated111 = tail call i64 @llvm.smin.i64(i64 %i.dq, i64 %i.dp) ; 9 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.dt = icmp sgt i64 %.sroa.speculated111, 0
  br i1 %i.dt, label %bb.r, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit53

bb.r:                                             ; preds = %bb.q
  %i.du = icmp samesign ugt i64 %.sroa.speculated111, 2305843009213693951
  %i.dv = shl nuw i64 %.sroa.speculated111, 3
  %i.dw = select i1 %i.du, i64 -1, i64 %i.dv
  %i.dx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dw) #24
          to label %.noexc84 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc84:                                         ; preds = %bb.r
  %i.dy = icmp samesign ugt i64 %.sroa.speculated111, 4611686018427387903
  %i.dz = shl nuw i64 %.sroa.speculated111, 2
  %i.ea = select i1 %i.dy, i64 -1, i64 %i.dz
  %i.eb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ea) #24
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i73 unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i72 ; 2 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i73: ; preds = %.noexc84
  %i.ec = load i64, ptr %i.dh, align 8, !tbaa !84 ; 2 uses
  %i.ed = icmp sgt i64 %i.ec, 0
  %.pre.i.i75 = load ptr, ptr %i.dr, align 8, !tbaa !122 ; 3 uses
  br i1 %i.ed, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i81, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i76

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i76: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i73
  %.phi.trans.insert.i.i77 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.pre23.i.i78 = load ptr, ptr %.phi.trans.insert.i.i77, align 8, !tbaa !120
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i79

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i81: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i73
  %i.ee = tail call i64 @llvm.umin.i64(i64 %i.ec, i64 %.sroa.speculated111) ; 2 uses
  %.idx.i.i82 = shl nuw nsw i64 %i.ee, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dx, ptr align 8 %.pre.i.i75, i64 %.idx.i.i82, i1 false)
  %.idx22.i.i83 = shl nuw nsw i64 %i.ee, 2
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !96 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.eb, ptr align 4 %i.eg, i64 %.idx22.i.i83, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i79

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i72: ; preds = %.noexc84
  %i.eh = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.dx) #23
  br label %.body85

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i79: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i81, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i76
  %i.ei = phi ptr [ %.pre23.i.i78, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i76 ], [ %i.eg, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i81 ] ; 2 uses
  store ptr %i.dx, ptr %i.dr, align 8, !tbaa !122
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.eb, ptr %i.ej, align 8, !tbaa !120
  store i64 %.sroa.speculated111, ptr %i.ds, align 8, !tbaa !125
  %i.ek = icmp eq ptr %i.ei, null
  br i1 %i.ek, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i80, label %bb.s

bb.s:                                             ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i79
  tail call void @_ZdaPv(ptr noundef nonnull %i.ei) #23
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i80

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i80: ; preds = %bb.s, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i79
  %i.el = icmp eq ptr %.pre.i.i75, null
  br i1 %i.el, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit53, label %bb.t

bb.t:                                             ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i80
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i75) #23
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit53

_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit53: ; preds = %bb.q, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i80, %bb.t
  %i.em = phi i64 [ 0, %bb.q ], [ %.sroa.speculated111, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i80 ], [ %.sroa.speculated111, %bb.t ]
  %i.en = icmp sgt i64 %i.b, 0
  br i1 %i.en, label %.lr.ph142, label %._crit_edge143

.lr.ph142:                                        ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit53
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.phi.trans.insert.i.i93 = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  br label %bb.x

._crit_edge143:                                   ; preds = %._crit_edge, %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit53
  %i.es = load ptr, ptr %i.do, align 8, !tbaa !95
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %bb.u, label %_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit63

bb.u:                                             ; preds = %._crit_edge143
  %i.eu = load i64, ptr %i.dh, align 8, !tbaa !124
  %i.ev = trunc i64 %i.eu to i32                  ; 2 uses
  %i.ew = load i64, ptr %i.df, align 8, !tbaa !21 ; 5 uses
  %i.ex = icmp sgt i64 %i.ew, -1
  br i1 %i.ex, label %.lr.ph.i54, label %_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit63

.lr.ph.i54:                                       ; preds = %bb.u
  %i.ey = load ptr, ptr %i.di, align 8, !tbaa !86 ; 3 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %.lr.ph.i54
  %.08.i55 = phi i64 [ %i.ew, %.lr.ph.i54 ], [ %i.fc, %bb.w ] ; 4 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %.08.i55
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !30
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.w, label %.critedge.i56

bb.w:                                             ; preds = %bb.v
  %i.fc = add nsw i64 %.08.i55, -1
  %i.fd = icmp sgt i64 %.08.i55, 0
  br i1 %i.fd, label %bb.v, label %.critedge.i56, !llvm.loop !2

.critedge.i56:                                    ; preds = %bb.w, %bb.v
  %.0.lcssa.i57 = phi i64 [ -1, %bb.w ], [ %.08.i55, %bb.v ] ; 5 uses
  %.not.not11.i58 = icmp slt i64 %.0.lcssa.i57, %i.ew
  br i1 %.not.not11.i58, label %.lr.ph13.i59.preheader, label %_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit63

.lr.ph13.i59.preheader:                           ; preds = %.critedge.i56
  %i.fe = sub i64 %i.ew, %.0.lcssa.i57            ; 3 uses
  %min.iters.check = icmp ult i64 %i.fe, 8
  br i1 %min.iters.check, label %.lr.ph13.i59.preheader193, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph13.i59.preheader
  %n.vec = and i64 %i.fe, -8                      ; 3 uses
  %i.ff = add i64 %.0.lcssa.i57, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ev, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fg = getelementptr [4 x i8], ptr %i.ey, i64 %.0.lcssa.i57
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fh = getelementptr [4 x i8], ptr %i.fg, i64 %index ; 2 uses
  %i.fi = getelementptr i8, ptr %i.fh, i64 4
  %i.fj = getelementptr i8, ptr %i.fh, i64 20
  store <4 x i32> %broadcast.splat, ptr %i.fi, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat, ptr %i.fj, align 4, !tbaa !30
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fk = icmp eq i64 %index.next, %n.vec
  br i1 %i.fk, label %middle.block, label %vector.body, !llvm.loop !264

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fe, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit63, label %.lr.ph13.i59.preheader193

.lr.ph13.i59.preheader193:                        ; preds = %.lr.ph13.i59.preheader, %middle.block
  %.1.in12.i60.ph = phi i64 [ %.0.lcssa.i57, %.lr.ph13.i59.preheader ], [ %i.ff, %middle.block ]
  br label %.lr.ph13.i59

.lr.ph13.i59:                                     ; preds = %.lr.ph13.i59.preheader193, %.lr.ph13.i59
  %.1.in12.i60 = phi i64 [ %.1.i61, %.lr.ph13.i59 ], [ %.1.in12.i60.ph, %.lr.ph13.i59.preheader193 ]
  %.1.i61 = add nsw i64 %.1.in12.i60, 1           ; 3 uses
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %.1.i61
  store i32 %i.ev, ptr %i.fl, align 4, !tbaa !30
  %exitcond.not.i62 = icmp eq i64 %.1.i61, %i.ew
  br i1 %exitcond.not.i62, label %_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit63, label %.lr.ph13.i59, !llvm.loop !265

bb.x:                                             ; preds = %.lr.ph142, %._crit_edge
  %i.fm = phi i64 [ %i.em, %.lr.ph142 ], [ %i.gh, %._crit_edge ] ; 2 uses
  %.0141 = phi i64 [ 0, %.lr.ph142 ], [ %i.gi, %._crit_edge ] ; 5 uses
  %i.fn = load ptr, ptr %i.di, align 8, !tbaa !86
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.0141 ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !30
  %i.fq = getelementptr i8, ptr %i.fo, i64 4
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !30
  %i.fr = load ptr, ptr %i.eo, align 8, !tbaa !94
  %i.fs = load ptr, ptr %i.ep, align 8, !tbaa !96
  %i.ft = load ptr, ptr %i.eq, align 8, !tbaa !86
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %.0141 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !30
  %i.fw = sext i32 %i.fv to i64                   ; 3 uses
  %i.fx = load ptr, ptr %i.er, align 8, !tbaa !95 ; 2 uses
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fz = getelementptr i8, ptr %i.fu, i64 4
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !30
  %i.gb = sext i32 %i.ga to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit65

bb.z:                                             ; preds = %bb.x
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %.0141
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !30
  %i.ge = sext i32 %i.gd to i64
  %i.gf = add nsw i64 %i.ge, %i.fw
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit65

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit65: ; preds = %bb.y, %bb.z
  %.sink.i64 = phi i64 [ %i.gb, %bb.y ], [ %i.gf, %bb.z ] ; 2 uses
  %i.gg = icmp sgt i64 %.sink.i64, %i.fw
  br i1 %i.gg, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.af, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit65
  %i.gh = phi i64 [ %i.fm, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit65 ], [ %i.hn, %bb.af ]
  %i.gi = add nuw nsw i64 %.0141, 1               ; 2 uses
  %exitcond151.not = icmp eq i64 %i.gi, %i.b
  br i1 %exitcond151.not, label %._crit_edge143, label %bb.x, !llvm.loop !266

.lr.ph:                                           ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit65, %bb.af
  %i.gj = phi i64 [ %i.hn, %bb.af ], [ %i.fm, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit65 ] ; 2 uses
  %.sroa.8.0140 = phi i64 [ %i.hr, %bb.af ], [ %i.fw, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit65 ] ; 3 uses
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %.sroa.8.0140
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !26
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.fs, i64 %.sroa.8.0140
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !30
  %i.go = load ptr, ptr %i.di, align 8, !tbaa !86
  %i.gp = getelementptr [4 x i8], ptr %i.go, i64 %.0141
  %i.gq = getelementptr i8, ptr %i.gp, i64 4      ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !30 ; 2 uses
  %i.gs = sext i32 %i.gr to i64
  %i.gt = add nsw i32 %i.gr, 1
  store i32 %i.gt, ptr %i.gq, align 4, !tbaa !30
  %i.gu = load i64, ptr %i.dh, align 8, !tbaa !124 ; 5 uses
  %i.gv = add nsw i64 %i.gu, 1                    ; 3 uses
  %.not = icmp sgt i64 %i.gj, %i.gu
  br i1 %.not, label %.lr.ph._crit_edge, label %bb.aa

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.dr, align 8, !tbaa !94
  %.pre154 = load ptr, ptr %.phi.trans.insert.i.i93, align 8, !tbaa !96
  br label %bb.af

bb.aa:                                            ; preds = %.lr.ph
  %i.gw = sitofp i64 %i.gv to double
  %i.gx = fptosi double %i.gw to i64
  %i.gy = add nsw i64 %i.gv, %i.gx
  %.sroa.speculated.i87 = tail call i64 @llvm.smin.i64(i64 %i.gy, i64 2147483647) ; 7 uses
  %.not136 = icmp sgt i64 %.sroa.speculated.i87, %i.gu
  br i1 %.not136, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gz = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.gz, align 8, !tbaa !81
  invoke void @__cxa_throw(ptr nonnull %i.gz, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.noexc100 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc100:                                        ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.ha = shl nuw nsw i64 %.sroa.speculated.i87, 3
  %i.hb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ha) #24
          to label %.noexc101 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc101:                                        ; preds = %bb.ac
  %i.hc = shl nuw nsw i64 %.sroa.speculated.i87, 2
  %i.hd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hc) #24
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i89 unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i88 ; 4 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i89: ; preds = %.noexc101
  %i.he = load i64, ptr %i.dh, align 8, !tbaa !84
  %.sroa.speculated.i.i90 = tail call i64 @llvm.smin.i64(i64 %i.he, i64 %.sroa.speculated.i87) ; 3 uses
  %i.hf = icmp sgt i64 %.sroa.speculated.i.i90, 0
  %.pre.i.i91 = load ptr, ptr %i.dr, align 8, !tbaa !122 ; 3 uses
  br i1 %i.hf, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i97, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i92

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i92: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i89
  %.pre23.i.i94 = load ptr, ptr %.phi.trans.insert.i.i93, align 8, !tbaa !120
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i95

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i97: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i89
  %.idx.i.i98 = shl nuw nsw i64 %.sroa.speculated.i.i90, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hb, ptr align 8 %.pre.i.i91, i64 %.idx.i.i98, i1 false)
  %.idx22.i.i99 = shl nuw nsw i64 %.sroa.speculated.i.i90, 2
  %i.hg = load ptr, ptr %.phi.trans.insert.i.i93, align 8, !tbaa !96 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.hd, ptr align 4 %i.hg, i64 %.idx22.i.i99, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i95

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i88: ; preds = %.noexc101
  %i.hh = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.hb) #23
  br label %.body85

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i95: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i97, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i92
  %i.hi = phi ptr [ %.pre23.i.i94, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i92 ], [ %i.hg, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i97 ] ; 2 uses
  store ptr %i.hb, ptr %i.dr, align 8, !tbaa !122
  store ptr %i.hd, ptr %.phi.trans.insert.i.i93, align 8, !tbaa !120
  store i64 %.sroa.speculated.i87, ptr %i.ds, align 8, !tbaa !125
  %i.hj = icmp eq ptr %i.hi, null
  br i1 %i.hj, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i96, label %bb.ad

bb.ad:                                            ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i95
  tail call void @_ZdaPv(ptr noundef nonnull %i.hi) #23
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i96

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i96: ; preds = %bb.ad, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i95
  %i.hk = icmp eq ptr %.pre.i.i91, null
  br i1 %i.hk, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i96
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i91) #23
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph._crit_edge, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i96, %bb.ae
  %i.hl = phi ptr [ %.pre154, %.lr.ph._crit_edge ], [ %i.hd, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i96 ], [ %i.hd, %bb.ae ]
  %i.hm = phi ptr [ %.pre, %.lr.ph._crit_edge ], [ %i.hb, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i96 ], [ %i.hb, %bb.ae ] ; 2 uses
  %i.hn = phi i64 [ %i.gj, %.lr.ph._crit_edge ], [ %.sroa.speculated.i87, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i96 ], [ %.sroa.speculated.i87, %bb.ae ] ; 2 uses
  store i64 %i.gv, ptr %i.dh, align 8, !tbaa !124
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.hm, i64 %i.gu
  store double 0.000000e+00, ptr %i.ho, align 8, !tbaa !26
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %i.gu
  store i32 %i.gn, ptr %i.hp, align 4, !tbaa !30
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.hm, i64 %i.gs
  store double %i.gl, ptr %i.hq, align 8, !tbaa !26
  %i.hr = add nsw i64 %.sroa.8.0140, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.hr, %.sink.i64
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !267

_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit63: ; preds = %.lr.ph13.i59, %middle.block, %.critedge.i56, %bb.u, %._crit_edge143
  store i8 1, ptr %2, align 8, !tbaa !85
  %i.hs = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIdLi0EiEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ag:                                            ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit63
  %i.ht = load ptr, ptr %i.di, align 8, !tbaa !86
  call void @free(ptr noundef %i.ht) #20
  %i.hu = load ptr, ptr %i.do, align 8, !tbaa !95
  call void @free(ptr noundef %i.hu) #20
  %i.hv = load ptr, ptr %i.dr, align 8, !tbaa !94 ; 2 uses
  %i.hw = icmp eq ptr %i.hv, null
  br i1 %i.hw, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZdaPv(ptr noundef nonnull %i.hv) #23
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.hx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !96 ; 2 uses
  %i.hz = icmp eq ptr %i.hy, null
  br i1 %i.hz, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZdaPv(ptr noundef nonnull %i.hy) #23
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ac, %bb.ab, %bb.r, %_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit63
  %lpad.loopexit.split-lp194 = landingpad { ptr, i32 }
          cleanup
  br label %.body85

.body85:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i88, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i72
  %.pn.pn = phi { ptr, i32 } [ %i.eh, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i72 ], [ %i.hh, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i88 ], [ %lpad.loopexit.split-lp194, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #20
  br label %.body

.body:                                            ; preds = %bb.p, %.body85
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body85 ], [ %i.dm, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %.body68

_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit:  ; preds = %.lr.ph13.i, %middle.block189, %.critedge.i, %bb.d, %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit._crit_edge, %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit
  ret void

.body68:                                          ; preds = %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i, %.body
  %.pn47.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.ct, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i ]
  resume { ptr, i32 } %.pn47.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEC2INS_9TransposeINS_8DiagonalINS_12SparseMatrixIdLi0EiEELi0EEEEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !272, !nonnull !82, !align !83 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !21
  %.sroa.speculated.i.i.i = tail call noundef i64 @llvm.smin.i64(i64 %i.e, i64 %i.c) ; 3 uses
  %i.f = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.f, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv i64 9223372036854775807, %.sroa.speculated.i.i.i
  %i.h = icmp slt i64 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !81
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.c
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.b, %bb.a
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 1, i64 noundef %.sroa.speculated.i.i.i)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_9TransposeINS_8DiagonalINS_12SparseMatrixIdLi0EiEELi0EEEEEEEvRKNS_9EigenBaseIT_EE.exit unwind label %bb.k

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_9TransposeINS_8DiagonalINS_12SparseMatrixIdLi0EiEELi0EEEEEEEvRKNS_9EigenBaseIT_EE.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.j = load ptr, ptr %1, align 8, !tbaa !272, !nonnull !82, !align !83 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !21
  %.sroa.speculated.i.i.i.i.i.i.i = tail call noundef i64 @llvm.smin.i64(i64 %i.n, i64 %i.l) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !130
  %.not8.i.i.i.i.i = icmp eq i64 %i.p, %.sroa.speculated.i.i.i.i.i.i.i
  br i1 %.not8.i.i.i.i.i, label %bb.d, label %thread-pre-split.i.i.i.i

thread-pre-split.i.i.i.i:                         ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_9TransposeINS_8DiagonalINS_12SparseMatrixIdLi0EiEELi0EEEEEEEvRKNS_9EigenBaseIT_EE.exit
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 1, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i)
          to label %.noexc5 unwind label %bb.k

.noexc5:                                          ; preds = %thread-pre-split.i.i.i.i
  %.pr.i.i.i.i = load i64, ptr %i.o, align 8, !tbaa !130
  br label %bb.d

bb.d:                                             ; preds = %.noexc5, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_9TransposeINS_8DiagonalINS_12SparseMatrixIdLi0EiEELi0EEEEEEEvRKNS_9EigenBaseIT_EE.exit
  %i.q = phi i64 [ %.pr.i.i.i.i, %.noexc5 ], [ %.sroa.speculated.i.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_9TransposeINS_8DiagonalINS_12SparseMatrixIdLi0EiEELi0EEEEEEEvRKNS_9EigenBaseIT_EE.exit ] ; 2 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !98
  %i.s = icmp sgt i64 %i.q, 0
  br i1 %i.s, label %.lr.ph.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE12_set_noaliasINS_9TransposeINS_8DiagonalINS_12SparseMatrixIdLi0EiEELi0EEEEEEERS2_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !86
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !95   ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !96   ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  br label %bb.e

bb.e:                                             ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEENS2_INS_9TransposeINS_8DiagonalINS_12SparseMatrixIdLi0EiEELi0EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.bk, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEENS2_INS_9TransposeINS_8DiagonalINS_12SparseMatrixIdLi0EiEELi0EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i ] ; 6 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.05.i.i.i.i.i ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !30 ; 2 uses
  %i.ae = sext i32 %i.ad to i64                   ; 2 uses
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr i8, ptr %i.ac, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !30
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.05.i.i.i.i.i
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !30
  %i.aj = add nsw i32 %i.ai, %i.ad
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ak = phi i32 [ %i.ag, %bb.f ], [ %i.aj, %bb.g ]
  %i.al = sext i32 %i.ak to i64                   ; 2 uses
  %.idx11.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.ae, 2
  %i.am = getelementptr inbounds i8, ptr %i.z, i64 %.idx11.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.an = sub nsw i64 %i.al, %i.ae                ; 2 uses
  %i.ao = icmp sgt i64 %i.an, 0
  br i1 %i.ao, label %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt11lower_boundIPKilET_S2_S2_RKT0_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.an, %bb.h ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.112.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.am, %bb.h ] ; 2 uses
  %i.ap = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ap ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !30
  %i.as = sext i32 %i.ar to i64
  %i.at = icmp sgt i64 %.05.i.i.i.i.i, %i.as      ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.av = xor i64 %i.ap, -1
  %i.aw = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.av
  %.112.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.at, ptr %i.au, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.at, i64 %i.aw, i64 %i.ap ; 2 uses
  %i.ax = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ax, label %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt11lower_boundIPKilET_S2_S2_RKT0_.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !268

_ZSt11lower_boundIPKilET_S2_S2_RKT0_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.h
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.am, %bb.h ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ay = ptrtoint ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.az = sub i64 %i.ay, %i.aa                    ; 3 uses
  %i.ba = ashr exact i64 %i.az, 2                 ; 2 uses
  %i.bb = icmp slt i64 %i.ba, %i.al
  br i1 %i.bb, label %bb.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEENS2_INS_9TransposeINS_8DiagonalINS_12SparseMatrixIdLi0EiEELi0EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i

bb.i:                                             ; preds = %_ZSt11lower_boundIPKilET_S2_S2_RKT0_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.bc = getelementptr inbounds i8, ptr %i.z, i64 %i.az
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !30
  %i.be = sext i32 %i.bd to i64
  %i.bf = icmp ne i64 %.05.i.i.i.i.i, %i.be
  %i.bg = icmp eq i64 %i.az, -4
  %or.cond.i.i.i.i.i.i.i.i.i = or i1 %i.bg, %i.bf
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEENS2_INS_9TransposeINS_8DiagonalINS_12SparseMatrixIdLi0EiEELi0EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = load ptr, ptr %i.ab, align 8, !tbaa !94
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.ba
  %.0.i.i.i.i.i.sroa.speculate.load..i.i.i.i = load double, ptr %i.bi, align 8, !tbaa !26
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEENS2_INS_9TransposeINS_8DiagonalINS_12SparseMatrixIdLi0EiEELi0EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEENS2_INS_9TransposeINS_8DiagonalINS_12SparseMatrixIdLi0EiEELi0EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i, %_ZSt11lower_boundIPKilET_S2_S2_RKT0_.exit.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.sroa.speculated.i.i.i.i = phi double [ %.0.i.i.i.i.i.sroa.speculate.load..i.i.i.i, %bb.j ], [ 0.000000e+00, %bb.i ], [ 0.000000e+00, %_ZSt11lower_boundIPKilET_S2_S2_RKT0_.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.05.i.i.i.i.i
  store double %.0.i.i.i.i.i.sroa.speculated.i.i.i.i, ptr %i.bj, align 8, !tbaa !26
  %i.bk = add nuw nsw i64 %.05.i.i.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.bk, %i.q
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE12_set_noaliasINS_9TransposeINS_8DiagonalINS_12SparseMatrixIdLi0EiEELi0EEEEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %bb.e, !llvm.loop !269

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE12_set_noaliasINS_9TransposeINS_8DiagonalINS_12SparseMatrixIdLi0EiEELi0EEEEEEERS2_RKNS_9DenseBaseIT_EE.exit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEENS2_INS_9TransposeINS_8DiagonalINS_12SparseMatrixIdLi0EiEELi0EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i, %bb.d
  ret void

bb.k:                                             ; preds = %thread-pre-split.i.i.i.i, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %bb.c
  %i.bl = landingpad { ptr, i32 }
          cleanup
  %i.bm = load ptr, ptr %0, align 8, !tbaa !98
  tail call void @free(ptr noundef %i.bm) #20
  resume { ptr, i32 } %i.bl
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #9 comdat align 2 {
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
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !81
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !130
  %.not.i = icmp eq i64 %i.f, %i.h
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIdLin1ELi1ELin1ELi1EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !98
  tail call void @free(ptr noundef %i.i) #20
  %i.j = icmp sgt i64 %i.f, 0
end_hunk_3
