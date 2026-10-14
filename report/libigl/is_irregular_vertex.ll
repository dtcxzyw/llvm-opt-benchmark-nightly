Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/is_irregular_vertex?download=true
inline.NumInlined: 802
inline.NumDeleted: 417
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN3igl19is_irregular_vertexIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEESt6vectorIbSaIbEERKNS1_10MatrixBaseIT_EE:bb.a
.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.bw = load ptr, ptr %1, align 8, !tbaa !124
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph.split.us
  %indvars.iv307 = phi i64 [ %indvars.iv.next308, %._crit_edge.us ], [ 0, %.preheader.lr.ph.split.us ] ; 2 uses
  %i.bx = getelementptr [4 x i8], ptr %i.bw, i64 %indvars.iv307 ; 2 uses
  %i.by = load ptr, ptr %7, align 8               ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.preheader.us, %bb.k
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %i.bz = mul nuw nsw i64 %indvars.iv, %i.bq
  %i.ca = getelementptr [4 x i8], ptr %i.bx, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !14 ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.cc = and i64 %indvars.iv.next, 4294967295    ; 2 uses
  %i.cd = urem i64 %i.cc, %.pre
  %i.ce = mul nuw nsw i64 %i.cd, %i.bq
  %i.cf = getelementptr [4 x i8], ptr %i.bx, i64 %i.ce ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !14
  %i.ch = icmp slt i32 %i.cb, %i.cg
  br i1 %i.ch, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ci = sext i32 %i.cb to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.ci ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !14
  %i.cl = add nsw i32 %i.ck, 1
  store i32 %i.cl, ptr %i.cj, align 4, !tbaa !14
  %i.cm = load i32, ptr %i.cf, align 4, !tbaa !14
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.cn ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !14
  %i.cq = add nsw i32 %i.cp, 1
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !14
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cr = icmp sgt i64 %.pre, %i.cc
  br i1 %i.cr, label %bb.i, label %._crit_edge.us, !llvm.loop !64

._crit_edge.us:                                   ; preds = %bb.k
  %indvars.iv.next308 = add i64 %indvars.iv307, 1 ; 2 uses
  %i.cs = and i64 %indvars.iv.next308, 4294967295
  %i.ct = icmp sgt i64 %i.bq, %i.cs
  br i1 %i.ct, label %.preheader.us, label %._crit_edge298, !llvm.loop !65

._crit_edge298:                                   ; preds = %._crit_edge.us, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit
  %i.cu = icmp eq i64 %.pre, 3
  br i1 %i.cu, label %bb.l, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i

bb.l:                                             ; preds = %._crit_edge298
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  invoke void @_ZN3igl16is_border_vertexIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEESt6vectorIbSaIbEERKNS1_10MatrixBaseIT_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %8, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit unwind label %bb.m

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.l
  %.sroa.0243.0.copyload = load ptr, ptr %8, align 8
  %.sroa.22260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  %.sroa.22260.0.copyload = load ptr, ptr %.sroa.22260.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %bb.y

bb.m:                                             ; preds = %bb.l
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit167

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i: ; preds = %._crit_edge298
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %.not.i = icmp eq i64 %i.bq, 0
  br i1 %.not.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.cy = shl nsw i64 %i.bq, 1                    ; 2 uses
  br i1 %i.br, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, label %.sink.split.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %.thread347, %bb.n
  %i.cz = phi i64 [ %i.bt, %.thread347 ], [ %i.cy, %bb.n ]
  %i.da = phi ptr [ %i.bu, %.thread347 ], [ %i.cw, %bb.n ]
  %i.db = phi ptr [ %i.bv, %.thread347 ], [ %i.cx, %bb.n ]
  %i.dc = mul i64 %i.bq, 24
  %i.dd = call noalias ptr @malloc(i64 noundef %i.dc) #16 ; 2 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %bb.o, label %.sink.split.i

bb.o:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.df = call ptr @__cxa_allocate_exception(i64 8) #13 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.df, align 8, !tbaa !31
  invoke void @__cxa_throw(ptr nonnull %i.df, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc168 unwind label %bb.p

.noexc168:                                        ; preds = %bb.o
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, %bb.n
  %i.dg = phi i64 [ %i.cz, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i ], [ %i.cy, %bb.n ]
  %i.dh = phi ptr [ %i.da, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i ], [ %i.cw, %bb.n ]
  %i.di = phi ptr [ %i.db, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i ], [ %i.cx, %bb.n ]
  %.sink.i = phi ptr [ %i.dd, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i ], [ null, %bb.n ] ; 2 uses
  store ptr %.sink.i, ptr %9, align 8, !tbaa !124
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.q:                                             ; preds = %.sink.split.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.dk = phi ptr [ %i.di, %.sink.split.i ], [ %i.cx, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i ] ; 6 uses
  %i.dl = phi ptr [ %i.dh, %.sink.split.i ], [ %i.cw, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i ] ; 6 uses
  %i.dm = phi i64 [ %i.dg, %.sink.split.i ], [ 0, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i ] ; 3 uses
  %i.dn = phi ptr [ %.sink.i, %.sink.split.i ], [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i ] ; 2 uses
  store i64 %i.dm, ptr %i.dl, align 8, !tbaa !29
  store i64 3, ptr %i.dk, align 8, !tbaa !125
  %i.do = load ptr, ptr %1, align 8, !tbaa !124, !noalias !126
  %i.dp = load i64, ptr %i.b, align 8, !tbaa !29, !noalias !126 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13, !noalias !127
  store ptr %i.dn, ptr %6, align 8, !tbaa !34, !alias.scope !128, !noalias !127
  %i.dq = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !35, !alias.scope !128, !noalias !127
  %i.dr = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 1, ptr %i.dr, align 8, !tbaa !35, !alias.scope !128, !noalias !127
  %i.ds = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %9, ptr %i.ds, align 8, !tbaa !129, !alias.scope !128, !noalias !127
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.du = getelementptr inbounds nuw i8, ptr %6, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, i8 0, i64 16, i1 false), !noalias !127
  store i64 %i.dm, ptr %i.du, align 8, !tbaa !130, !alias.scope !128, !noalias !127
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13, !noalias !127
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13, !noalias !127
  store ptr %i.do, ptr %2, align 8, !tbaa !41, !noalias !127
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.dp, ptr %i.dv, align 8, !tbaa !35, !noalias !127
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13, !noalias !127
  store ptr %i.dn, ptr %3, align 8, !tbaa !43, !noalias !127
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.dm, ptr %i.dw, align 8, !tbaa !35, !noalias !127
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13, !noalias !127
  store ptr %3, ptr %4, align 8, !tbaa !131, !noalias !127
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.dx, align 8, !tbaa !132, !noalias !127
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %5, ptr %i.dy, align 8, !tbaa !133, !noalias !127
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %6, ptr %i.dz, align 8, !tbaa !134, !noalias !127
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS4_IKS6_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSE_(ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %._crit_edge.i unwind label %bb.w

._crit_edge.i:                                    ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13, !noalias !127
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13, !noalias !127
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13, !noalias !127
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13, !noalias !127
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13, !noalias !127
  %i.ea = load ptr, ptr %1, align 8, !tbaa !124, !noalias !135 ; 2 uses
  %i.eb = ptrtoaddr ptr %i.ea to i64              ; 2 uses
  %i.ec = load i64, ptr %i.b, align 8, !tbaa !29, !noalias !135 ; 12 uses
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %i.ec ; 13 uses
  %i.ee = load i64, ptr %i.dk, align 8, !tbaa !125
  %.not = icmp eq i64 %i.ee, 1                    ; 6 uses
  %.sroa.46.0 = select i1 %.not, i64 %i.ec, i64 %i.dp ; 2 uses
  %.sroa.9219.0 = select i1 %.not, i64 %i.dp, i64 0 ; 6 uses
  %i.ef = load ptr, ptr %9, align 8, !tbaa !124, !noalias !136 ; 2 uses
  %i.eg = ptrtoaddr ptr %i.ef to i64              ; 2 uses
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %.sroa.9219.0
  %i.ei = load i64, ptr %i.dl, align 8, !tbaa !29, !noalias !136 ; 3 uses
  %i.ej = select i1 %.not, i64 0, i64 %i.ei
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.ej ; 14 uses
  %i.el = ptrtoint ptr %i.ek to i64               ; 2 uses
  %i.em = and i64 %i.el, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.em, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.r, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %._crit_edge.i
  %i.en = lshr exact i64 %i.el, 2
  %i.eo = sub nsw i64 0, %i.en
  %i.ep = and i64 %i.eo, 3
  %i.eq = call i64 @llvm.smin.i64(i64 %i.ep, i64 %i.ec)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.r, %._crit_edge.i
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.eq, %bb.r ], [ %i.ec, %._crit_edge.i ] ; 11 uses
  %i.er = sub nsw i64 %i.ec, %.0.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.es = sdiv i64 %i.er, 4
  %i.et = shl nsw i64 %i.es, 2                    ; 2 uses
  %i.eu = add nsw i64 %i.et, %.0.i.i.i.i.i.i.i.i.i.i.i.i ; 6 uses
  %i.ev = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ev, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i
  %min.iters.check378 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 24
  br i1 %min.iters.check378, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader524, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %11 = shl i64 %i.ec, 2
  %i.ew = select i1 %.not, i64 %i.dp, i64 %i.ei
  %i.ex = shl i64 %i.ew, 2
  %i.ey = add i64 %i.ex, %i.eg
  %i.ez = add i64 %11, %i.eb
  %i.fa = sub i64 %i.ez, %i.ey
  %diff.check = icmp ugt i64 %i.fa, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader524, label %vector.ph379

vector.ph379:                                     ; preds = %vector.memcheck
  %n.vec380 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  br label %vector.body381

vector.body381:                                   ; preds = %vector.body381, %vector.ph379
  %index382 = phi i64 [ 0, %vector.ph379 ], [ %index.next385, %vector.body381 ] ; 3 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %index382 ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %index382 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %wide.load383 = load <4 x i32>, ptr %i.fc, align 4, !tbaa !14
  %wide.load384 = load <4 x i32>, ptr %i.fd, align 4, !tbaa !14
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store <4 x i32> %wide.load383, ptr %i.fb, align 4, !tbaa !14
  store <4 x i32> %wide.load384, ptr %i.fe, align 4, !tbaa !14
  %index.next385 = add nuw i64 %index382, 8       ; 2 uses
  %i.ff = icmp eq i64 %index.next385, %n.vec380
  br i1 %i.ff, label %middle.block386, label %vector.body381, !llvm.loop !76

middle.block386:                                  ; preds = %vector.body381
  %cmp.n387 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, %n.vec380
  br i1 %cmp.n387, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader524

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader524:      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block386
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec380, %middle.block386 ] ; 3 uses
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader524, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.fj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader524 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader524 ]
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !14
  store i32 %i.fi, ptr %i.fg, align 4, !tbaa !14
  %i.fj = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !77

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader524
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader524 ], [ %i.fj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.fk = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fl = icmp ugt i64 %i.fk, -4
  br i1 %i.fl, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !14
  store i32 %i.fo, ptr %i.fm, align 4, !tbaa !14
  %i.fp = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.fp
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.fp
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !14
  store i32 %i.fs, ptr %i.fq, align 4, !tbaa !14
  %i.ft = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.ft
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.ft
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !14
  store i32 %i.fw, ptr %i.fu, align 4, !tbaa !14
  %i.fx = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.fx
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.fx
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !14
  store i32 %i.ga, ptr %i.fy, align 4, !tbaa !14
  %i.gb = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.gb, %.0.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !78

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block386, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.gc = icmp sgt i64 %i.er, 3
  br i1 %i.gc, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.gd = icmp slt i64 %i.eu, %i.ec
  br i1 %i.gd, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader, label %._crit_edge.i68

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.ge = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, %i.et
  %i.gf = sub i64 %i.ec, %i.ge                    ; 3 uses
  %min.iters.check392 = icmp ult i64 %i.gf, 20
  br i1 %min.iters.check392, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader523, label %vector.memcheck389

vector.memcheck389:                               ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.gg = select i1 %.not, i64 %i.dp, i64 %i.ei
  %i.gh = shl i64 %i.gg, 2
  %12 = shl i64 %i.ec, 2
  %13 = add i64 %i.gh, %i.eg
  %i.gi = add i64 %12, %i.eb
  %i.gj = sub i64 %i.gi, %13
  %diff.check390 = icmp ugt i64 %i.gj, -32
  br i1 %diff.check390, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader523, label %vector.ph393

vector.ph393:                                     ; preds = %vector.memcheck389
  %n.vec394 = and i64 %i.gf, -8                   ; 3 uses
  %i.gk = add i64 %i.eu, %n.vec394
  br label %vector.body395

vector.body395:                                   ; preds = %vector.body395, %vector.ph393
  %index396 = phi i64 [ 0, %vector.ph393 ], [ %index.next399, %vector.body395 ] ; 2 uses
  %i.gl = add i64 %i.eu, %index396                ; 2 uses
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %i.gl ; 2 uses
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.gl ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %wide.load397 = load <4 x i32>, ptr %i.gn, align 4, !tbaa !14
  %wide.load398 = load <4 x i32>, ptr %i.go, align 4, !tbaa !14
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  store <4 x i32> %wide.load397, ptr %i.gm, align 4, !tbaa !14
  store <4 x i32> %wide.load398, ptr %i.gp, align 4, !tbaa !14
  %index.next399 = add nuw i64 %index396, 8       ; 2 uses
  %i.gq = icmp eq i64 %index.next399, %n.vec394
  br i1 %i.gq, label %middle.block400, label %vector.body395, !llvm.loop !79

middle.block400:                                  ; preds = %vector.body395
  %cmp.n401 = icmp eq i64 %i.gf, %n.vec394
  br i1 %cmp.n401, label %._crit_edge.i68, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader523

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader523:    ; preds = %vector.memcheck389, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block400
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.eu, %vector.memcheck389 ], [ %i.eu, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.gk, %middle.block400 ] ; 4 uses
  %i.gr = sub i64 %i.ec, %.05.i18.i.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter535 = and i64 %i.gr, 3                 ; 2 uses
  %lcmp.mod536.not = icmp eq i64 %xtraiter535, 0
  br i1 %lcmp.mod536.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol:            ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader523, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.gv, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader523 ] ; 3 uses
  %prol.iter537 = phi i64 [ %prol.iter537.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader523 ]
  %i.gs = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !14
  store i32 %i.gu, ptr %i.gs, align 4, !tbaa !14
  %i.gv = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter537.next = add i64 %prol.iter537, 1   ; 2 uses
  %prol.iter537.cmp.not = icmp eq i64 %prol.iter537.next, %xtraiter535
  br i1 %prol.iter537.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !80

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:   ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader523
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader523 ], [ %i.gv, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.gw = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.ph, %i.ec
  %i.gx = icmp ugt i64 %i.gw, -4
  br i1 %i.gx, label %._crit_edge.i68, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hn, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !14
  store i32 %i.ha, ptr %i.gy, align 4, !tbaa !14
  %i.hb = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %i.hb
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.hb
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !14
  store i32 %i.he, ptr %i.hc, align 4, !tbaa !14
  %i.hf = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.hg = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %i.hf
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.hf
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !14
  store i32 %i.hi, ptr %i.hg, align 4, !tbaa !14
  %i.hj = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %i.hj
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.hj
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !14
  store i32 %i.hm, ptr %i.hk, align 4, !tbaa !14
  %i.hn = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.hn, %i.ec
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.3, label %._crit_edge.i68, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !81

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %.021.i.i.i.i.i.i.i.i.i.i.i
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %.021.i.i.i.i.i.i.i.i.i.i.i
  %i.hq = load <2 x i64>, ptr %i.hp, align 1, !tbaa !12
  store <2 x i64> %i.hq, ptr %i.ho, align 16, !tbaa !12
  %i.hr = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.hs = icmp slt i64 %i.hr, %i.eu
  br i1 %i.hs, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !82

._crit_edge.i68:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i, %middle.block400, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.ht = select i1 %.not, i64 1, i64 2           ; 2 uses
  %i.hu = load ptr, ptr %1, align 8, !tbaa !124, !noalias !137 ; 2 uses
  %i.hv = ptrtoaddr ptr %i.hu to i64              ; 2 uses
  %i.hw = load i64, ptr %i.b, align 8, !tbaa !29, !noalias !137 ; 10 uses
  %.idx = shl i64 %i.hw, 3                        ; 3 uses
  %i.hx = getelementptr inbounds i8, ptr %i.hu, i64 %.idx ; 13 uses
  %i.hy = load i64, ptr %i.dk, align 8, !tbaa !125
  %i.hz = icmp eq i64 %i.ht, %i.hy                ; 3 uses
  %.sroa.46.1 = select i1 %i.hz, i64 %i.hw, i64 %.sroa.46.0 ; 2 uses
  %.sroa.25.1 = select i1 %i.hz, i64 0, i64 %i.ht ; 3 uses
  %i.ia = select i1 %i.hz, i64 %.sroa.46.0, i64 0 ; 5 uses
  %.sroa.9219.1 = add nsw i64 %i.ia, %.sroa.9219.0 ; 3 uses
  %i.ib = load ptr, ptr %9, align 8, !tbaa !124, !noalias !138 ; 2 uses
  %i.ic = ptrtoaddr ptr %i.ib to i64              ; 2 uses
  %i.id = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %.sroa.9219.1
  %i.ie = load i64, ptr %i.dl, align 8, !tbaa !29, !noalias !138 ; 2 uses
  %i.if = mul nsw i64 %i.ie, %.sroa.25.1          ; 2 uses
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.id, i64 %i.if ; 14 uses
  %i.ih = ptrtoint ptr %i.ig to i64               ; 2 uses
  %i.ii = and i64 %i.ih, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i73 = icmp eq i64 %i.ii, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i73, label %bb.s, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i74

bb.s:                                             ; preds = %._crit_edge.i68
  %i.ij = lshr exact i64 %i.ih, 2
  %i.ik = sub nsw i64 0, %i.ij
  %i.il = and i64 %i.ik, 3
  %i.im = call i64 @llvm.smin.i64(i64 %i.il, i64 %i.hw)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i74

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i74: ; preds = %bb.s, %._crit_edge.i68
  %.0.i.i.i.i.i.i.i.i.i.i.i.i75 = phi i64 [ %i.im, %bb.s ], [ %i.hw, %._crit_edge.i68 ] ; 11 uses
  %i.in = sub nsw i64 %i.hw, %.0.i.i.i.i.i.i.i.i.i.i.i.i75 ; 2 uses
  %i.io = sdiv i64 %i.in, 4
  %i.ip = shl nsw i64 %i.io, 2                    ; 2 uses
  %i.iq = add nsw i64 %i.ip, %.0.i.i.i.i.i.i.i.i.i.i.i.i75 ; 6 uses
  %i.ir = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i75, 0
  br i1 %i.ir, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i83.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i83.preheader:       ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i74
  %min.iters.check406 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i75, 28
  br i1 %min.iters.check406, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i83.preheader522, label %vector.memcheck403

vector.memcheck403:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i83.preheader
  %i.is = mul i64 %.sroa.25.1, %i.ie
  %i.it = add i64 %i.is, %.sroa.9219.1
  %i.iu = shl i64 %i.it, 2
  %i.iv = add i64 %i.iu, %i.ic
  %i.iw = add i64 %.idx, %i.hv
  %i.ix = sub i64 %i.iw, %i.iv
  %diff.check404 = icmp ugt i64 %i.ix, -32
  br i1 %diff.check404, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i83.preheader522, label %vector.ph407

vector.ph407:                                     ; preds = %vector.memcheck403
  %n.vec408 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i75, 9223372036854775800 ; 3 uses
  br label %vector.body409

vector.body409:                                   ; preds = %vector.body409, %vector.ph407
  %index410 = phi i64 [ 0, %vector.ph407 ], [ %index.next413, %vector.body409 ] ; 3 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %index410 ; 2 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %index410 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %wide.load411 = load <4 x i32>, ptr %i.iz, align 4, !tbaa !14
  %wide.load412 = load <4 x i32>, ptr %i.ja, align 4, !tbaa !14
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  store <4 x i32> %wide.load411, ptr %i.iy, align 4, !tbaa !14
  store <4 x i32> %wide.load412, ptr %i.jb, align 4, !tbaa !14
  %index.next413 = add nuw i64 %index410, 8       ; 2 uses
  %i.jc = icmp eq i64 %index.next413, %n.vec408
  br i1 %i.jc, label %middle.block414, label %vector.body409, !llvm.loop !87

middle.block414:                                  ; preds = %vector.body409
  %cmp.n415 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i75, %n.vec408
  br i1 %cmp.n415, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i76, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i83.preheader522

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i83.preheader522:    ; preds = %vector.memcheck403, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i83.preheader, %middle.block414
  %.05.i.i.i.i.i.i.i.i.i.i.i.i84.ph = phi i64 [ 0, %vector.memcheck403 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i83.preheader ], [ %n.vec408, %middle.block414 ] ; 3 uses
  %xtraiter538 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i75, 3 ; 2 uses
  %lcmp.mod539.not = icmp eq i64 %xtraiter538, 0
  br i1 %lcmp.mod539.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i83.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i83.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i83.prol:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i83.preheader522, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i83.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i84.prol = phi i64 [ %i.jg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i83.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i84.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i83.preheader522 ] ; 3 uses
  %prol.iter540 = phi i64 [ %prol.iter540.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i83.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i83.preheader522 ]
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i84.prol
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i84.prol
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !14
  store i32 %i.jf, ptr %i.jd, align 4, !tbaa !14
  %i.jg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i84.prol, 1 ; 2 uses
  %prol.iter540.next = add i64 %prol.iter540, 1   ; 2 uses
  %prol.iter540.cmp.not = icmp eq i64 %prol.iter540.next, %xtraiter538
  br i1 %prol.iter540.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i83.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i83.prol, !llvm.loop !88

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i83.prol.loopexit:   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i83.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i83.preheader522
  %.05.i.i.i.i.i.i.i.i.i.i.i.i84.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i84.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i83.preheader522 ], [ %i.jg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i83.prol ]
  %i.jh = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i84.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i75
  %i.ji = icmp ugt i64 %i.jh, -4
  br i1 %i.ji, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IKS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i76, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i83

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i83:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i83.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i83
  %.05.i.i.i.i.i.i.i.i.i.i.i.i84 = phi i64 [ %i.jy, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i83 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i84.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i83.prol.loopexit ] ; 6 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i84
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i84
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !14
  store i32 %i.jl, ptr %i.jj, align 4, !tbaa !14
  %i.jm = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i84, 1 ; 2 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %i.jm
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.jm
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !14
  store i32 %i.jp, ptr %i.jn, align 4, !tbaa !14
  %i.jq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i84, 2 ; 2 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %i.jq
end_hunk_0
