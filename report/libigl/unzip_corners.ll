Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/unzip_corners?download=true
inline.NumInlined: 244
inline.NumDeleted: 158
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN3igl13unzip_cornersIKN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_S3_NS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKSt6vectorISt17reference_wrapperIT_ESaIS9_EERNS1_15PlainObjectBaseIT0_EERNSE_IT1_EERNSE_IT2_EE:bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bp = shl nsw i64 %i.z, 1                     ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %19, i64 40
  %i.bv = getelementptr inbounds nuw i8, ptr %19, i64 48
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 24
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 10 uses
  %i.cb = load ptr, ptr %0, align 8, !tbaa !56
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !61 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !15, !noalias !62
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #11
  call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %i.cg = load ptr, ptr %16, align 8, !tbaa !15, !noalias !63
  %i.ch = load i64, ptr %i.as, align 8, !tbaa !13, !noalias !63 ; 3 uses
  %i.ci = mul nsw i64 %i.ch, %indvars.iv
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.ci ; 2 uses
  store ptr %i.cj, ptr %17, align 8, !tbaa !21, !alias.scope !63
  store i64 %i.z, ptr %i.at, align 8, !tbaa !22, !alias.scope !63
  store i64 1, ptr %i.au, align 8, !tbaa !22, !alias.scope !63
  store ptr %16, ptr %i.av, align 8, !tbaa !64, !alias.scope !63
  store i64 0, ptr %i.aw, align 8, !tbaa !22, !alias.scope !63
  store i64 %indvars.iv, ptr %i.ax, align 8, !tbaa !22, !alias.scope !63
  store i64 %i.ch, ptr %i.ay, align 8, !tbaa !65, !alias.scope !63
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  store ptr %i.ce, ptr %12, align 8, !tbaa !27
  %i.ck = load i64, ptr %i.cf, align 8, !tbaa !13
  store i64 %i.ck, ptr %i.az, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #11
  store ptr %i.cj, ptr %13, align 8, !tbaa !29
  store i64 %i.ch, ptr %i.ba, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #11
  store ptr %13, ptr %14, align 8, !tbaa !66
  store ptr %12, ptr %i.bb, align 8, !tbaa !67
  store ptr %15, ptr %i.bc, align 8, !tbaa !68
  store ptr %17, ptr %i.bd, align 8, !tbaa !69
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS4_IKS6_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSE_(ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #11
  %i.cl = load ptr, ptr %0, align 8, !tbaa !56
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !61 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !15, !noalias !70
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !13, !noalias !70
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #11
  call void @llvm.experimental.noalias.scope.decl(metadata !71)
  %i.cs = load ptr, ptr %16, align 8, !tbaa !15, !noalias !71
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.z
  %i.cu = load i64, ptr %i.as, align 8, !tbaa !13, !noalias !71 ; 3 uses
  %i.cv = mul nsw i64 %i.cu, %indvars.iv
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.cv ; 2 uses
  store ptr %i.cw, ptr %18, align 8, !tbaa !21, !alias.scope !71
  store i64 %i.z, ptr %i.be, align 8, !tbaa !22, !alias.scope !71
  store i64 1, ptr %i.bf, align 8, !tbaa !22, !alias.scope !71
  store ptr %16, ptr %i.bg, align 8, !tbaa !64, !alias.scope !71
  store i64 %i.z, ptr %i.bh, align 8, !tbaa !22, !alias.scope !71
  store i64 %indvars.iv, ptr %i.bi, align 8, !tbaa !22, !alias.scope !71
  store i64 %i.cu, ptr %i.bj, align 8, !tbaa !65, !alias.scope !71
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  store ptr %i.cr, ptr %8, align 8, !tbaa !27
  %i.cx = load i64, ptr %i.cp, align 8, !tbaa !13
  store i64 %i.cx, ptr %i.bk, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  store ptr %i.cw, ptr %9, align 8, !tbaa !29
  store i64 %i.cu, ptr %i.bl, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  store ptr %9, ptr %10, align 8, !tbaa !66
  store ptr %8, ptr %i.bm, align 8, !tbaa !67
  store ptr %11, ptr %i.bn, align 8, !tbaa !68
  store ptr %18, ptr %i.bo, align 8, !tbaa !69
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS4_IKS6_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSE_(ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #11
  %i.cy = load ptr, ptr %0, align 8, !tbaa !56
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !61 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !15, !noalias !72
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !13, !noalias !72
  %.idx = shl nsw i64 %i.dd, 3
  %i.de = getelementptr inbounds i8, ptr %i.db, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #11
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.df = load ptr, ptr %16, align 8, !tbaa !15, !noalias !73
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.bp
  %i.dh = load i64, ptr %i.as, align 8, !tbaa !13, !noalias !73 ; 3 uses
  %i.di = mul nsw i64 %i.dh, %indvars.iv
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.di ; 2 uses
  store ptr %i.dj, ptr %19, align 8, !tbaa !21, !alias.scope !73
  store i64 %i.z, ptr %i.bq, align 8, !tbaa !22, !alias.scope !73
  store i64 1, ptr %i.br, align 8, !tbaa !22, !alias.scope !73
  store ptr %16, ptr %i.bs, align 8, !tbaa !64, !alias.scope !73
  store i64 %i.bp, ptr %i.bt, align 8, !tbaa !22, !alias.scope !73
  store i64 %indvars.iv, ptr %i.bu, align 8, !tbaa !22, !alias.scope !73
  store i64 %i.dh, ptr %i.bv, align 8, !tbaa !65, !alias.scope !73
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  store ptr %i.de, ptr %4, align 8, !tbaa !27
  %i.dk = load i64, ptr %i.dc, align 8, !tbaa !13
  store i64 %i.dk, ptr %i.bw, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  store ptr %i.dj, ptr %5, align 8, !tbaa !29
  store i64 %i.dh, ptr %i.bx, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  store ptr %5, ptr %6, align 8, !tbaa !66
  store ptr %4, ptr %i.by, align 8, !tbaa !67
  store ptr %7, ptr %i.bz, align 8, !tbaa !68
  store ptr %19, ptr %i.ca, align 8, !tbaa !69
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS4_IKS6_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSE_(ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #11
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %bb.j, !llvm.loop !50

bb.n:                                             ; preds = %bb.j
  %i.dl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #11
  br label %common.resume

bb.o:                                             ; preds = %bb.k
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #11
  br label %common.resume

bb.p:                                             ; preds = %bb.l
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #11
  br label %common.resume

._crit_edge:                                      ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl11unique_rowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_NS2_IiLin1ELi1ELi0ELin1ELi1EEES4_EEvRKNS1_9DenseBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EERNSA_IT2_EE(ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %._crit_edge
  %i.do = icmp sgt i64 %i.z, 3074457345618258602
  br i1 %i.do, label %bb.r, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.r:                                             ; preds = %bb.q
  %i.dp = call ptr @__cxa_allocate_exception(i64 8) #11 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dp, align 8, !tbaa !18
  invoke void @__cxa_throw(ptr nonnull %i.dp, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #12
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.r
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.q
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.aa, i64 noundef %i.z, i64 noundef 3)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader unwind label %bb.s

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.dq = icmp sgt i64 %i.z, 0
  br i1 %i.dq, label %.preheader.lr.ph, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge

.preheader.lr.ph:                                 ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader
  %i.dr = load ptr, ptr %3, align 8, !tbaa !59    ; 5 uses
  %i.ds = load ptr, ptr %2, align 8, !tbaa !15    ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !13 ; 6 uses
  %gep.2.idx = shl i64 %i.z, 3                    ; 6 uses
  %.idx105 = shl i64 %i.du, 3                     ; 6 uses
  %min.iters.check = icmp ult i64 %i.z, 64
  br i1 %min.iters.check, label %.preheader.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.lr.ph
  %i.dv = ptrtoaddr ptr %i.ds to i64              ; 5 uses
  %i.dw = ptrtoaddr ptr %i.dr to i64              ; 5 uses
  %i.dx = shl i64 %i.du, 2                        ; 3 uses
  %i.dy = add i64 %i.dx, -1
  %diff.check = icmp ult i64 %i.dy, 31
  %i.dz = add i64 %.idx105, -1
  %diff.check107 = icmp ult i64 %i.dz, 31
  %conflict.rdx = or i1 %diff.check, %diff.check107
  %i.ea = add i64 %gep.2.idx, %i.dw
  %i.eb = sub i64 %i.ea, %i.dv                    ; 2 uses
  %21 = add i64 %i.eb, -1
  %diff.check127 = icmp ult i64 %21, 31
  %conflict.rdx109 = or i1 %conflict.rdx, %diff.check127
  %i.ec = shl i64 %i.z, 2                         ; 3 uses
  %i.ed = add i64 %i.ec, %i.dw
  %i.ee = sub i64 %i.dv, %i.ed
  %diff.check110 = icmp ugt i64 %i.ee, -32
  %conflict.rdx111 = or i1 %conflict.rdx109, %diff.check110
  %i.ef = sub i64 %i.dw, %i.dv
  %diff.check112 = icmp ugt i64 %i.ef, -32
  %conflict.rdx113 = or i1 %conflict.rdx111, %diff.check112
  %i.eg = sub i64 %i.dx, %i.eb
  %diff.check114 = icmp ugt i64 %i.eg, -32
  %conflict.rdx115 = or i1 %conflict.rdx113, %diff.check114
  %i.eh = add i64 %i.dx, %i.dv
  %i.ei = sub i64 %i.eh, %i.dw                    ; 2 uses
  %i.ej = sub i64 %i.ec, %i.ei
  %diff.check116 = icmp ugt i64 %i.ej, -32
  %conflict.rdx117 = or i1 %conflict.rdx115, %diff.check116
  %i.ek = add i64 %i.ei, -1
  %diff.check118 = icmp ult i64 %i.ek, 31
  %conflict.rdx119 = or i1 %conflict.rdx117, %diff.check118
  %i.el = add i64 %.idx105, %i.dv
  %i.em = sub i64 %i.el, %i.dw                    ; 3 uses
  %i.en = sub i64 %gep.2.idx, %i.em
  %diff.check120 = icmp ugt i64 %i.en, -32
  %conflict.rdx121 = or i1 %conflict.rdx119, %diff.check120
  %i.eo = sub i64 %i.ec, %i.em
  %diff.check122 = icmp ugt i64 %i.eo, -32
  %conflict.rdx123 = or i1 %conflict.rdx121, %diff.check122
  %i.ep = add i64 %i.em, -1
  %diff.check143 = icmp ult i64 %i.ep, 31
  %conflict.rdx125 = or i1 %conflict.rdx123, %diff.check143
  br i1 %conflict.rdx125, label %.preheader.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, 9223372036854775800      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eq = getelementptr [4 x i8], ptr %i.dr, i64 %index ; 4 uses
  %i.er = getelementptr [4 x i8], ptr %i.ds, i64 %index ; 4 uses
  %i.es = getelementptr i8, ptr %i.eq, i64 16
  %wide.load = load <4 x i32>, ptr %i.eq, align 4, !tbaa !35
  %wide.load126 = load <4 x i32>, ptr %i.es, align 4, !tbaa !35
  %i.et = getelementptr i8, ptr %i.er, i64 16
  store <4 x i32> %wide.load, ptr %i.er, align 4, !tbaa !35
  store <4 x i32> %wide.load126, ptr %i.et, align 4, !tbaa !35
  %i.eu = getelementptr [4 x i8], ptr %i.eq, i64 %i.z ; 2 uses
  %i.ev = getelementptr i8, ptr %i.eu, i64 16
  %wide.load127 = load <4 x i32>, ptr %i.eu, align 4, !tbaa !35
  %wide.load128 = load <4 x i32>, ptr %i.ev, align 4, !tbaa !35
  %i.ew = getelementptr [4 x i8], ptr %i.er, i64 %i.du ; 2 uses
  %i.ex = getelementptr i8, ptr %i.ew, i64 16
  store <4 x i32> %wide.load127, ptr %i.ew, align 4, !tbaa !35
  store <4 x i32> %wide.load128, ptr %i.ex, align 4, !tbaa !35
  %i.ey = getelementptr i8, ptr %i.eq, i64 %gep.2.idx ; 2 uses
  %i.ez = getelementptr i8, ptr %i.ey, i64 16
  %wide.load129 = load <4 x i32>, ptr %i.ey, align 4, !tbaa !35
  %wide.load130 = load <4 x i32>, ptr %i.ez, align 4, !tbaa !35
  %i.fa = getelementptr i8, ptr %i.er, i64 %.idx105 ; 2 uses
  %i.fb = getelementptr i8, ptr %i.fa, i64 16
  store <4 x i32> %wide.load129, ptr %i.fa, align 4, !tbaa !35
  store <4 x i32> %wide.load130, ptr %i.fb, align 4, !tbaa !35
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fc = icmp eq i64 %index.next, %n.vec
  br i1 %i.fc, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %vector.memcheck, %.preheader.lr.ph, %middle.block
  %indvars.iv98.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.lr.ph ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %indvars.iv98.ph, 1
  %xtraiter = and i64 %i.z, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader
  %invariant.gep.prol = getelementptr [4 x i8], ptr %i.dr, i64 %indvars.iv98.ph ; 3 uses
  %i.fd = getelementptr [4 x i8], ptr %i.ds, i64 %indvars.iv98.ph ; 3 uses
  %i.fe = load i32, ptr %invariant.gep.prol, align 4, !tbaa !35
  store i32 %i.fe, ptr %i.fd, align 4, !tbaa !35
  %gep.1.prol = getelementptr [4 x i8], ptr %invariant.gep.prol, i64 %i.z
  %i.ff = load i32, ptr %gep.1.prol, align 4, !tbaa !35
  %i.fg = getelementptr [4 x i8], ptr %i.fd, i64 %i.du
  store i32 %i.ff, ptr %i.fg, align 4, !tbaa !35
  %gep.2.prol = getelementptr i8, ptr %invariant.gep.prol, i64 %gep.2.idx
  %i.fh = load i32, ptr %gep.2.prol, align 4, !tbaa !35
  %i.fi = getelementptr i8, ptr %i.fd, i64 %.idx105
  store i32 %i.fh, ptr %i.fi, align 4, !tbaa !35
  %indvars.iv.next99.prol = or disjoint i64 %indvars.iv98.ph, 1
  br label %.preheader.prol.loopexit

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %indvars.iv98.unr = phi i64 [ %indvars.iv98.ph, %.preheader.preheader ], [ %indvars.iv.next99.prol, %.preheader.prol ]
  %i.fj = icmp eq i64 %i.z, %.neg
  br i1 %i.fj, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %indvars.iv98 = phi i64 [ %indvars.iv.next99.1, %.preheader ], [ %indvars.iv98.unr, %.preheader.prol.loopexit ] ; 4 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.dr, i64 %indvars.iv98 ; 3 uses
  %i.fk = getelementptr [4 x i8], ptr %i.ds, i64 %indvars.iv98 ; 3 uses
  %i.fl = load i32, ptr %invariant.gep, align 4, !tbaa !35
  store i32 %i.fl, ptr %i.fk, align 4, !tbaa !35
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.z
  %i.fm = load i32, ptr %gep.1, align 4, !tbaa !35
  %i.fn = getelementptr [4 x i8], ptr %i.fk, i64 %i.du
  store i32 %i.fm, ptr %i.fn, align 4, !tbaa !35
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %gep.2.idx
  %i.fo = load i32, ptr %gep.2, align 4, !tbaa !35
  %i.fp = getelementptr i8, ptr %i.fk, i64 %.idx105
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !35
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %invariant.gep.1 = getelementptr [4 x i8], ptr %i.dr, i64 %indvars.iv.next99 ; 3 uses
  %i.fq = getelementptr [4 x i8], ptr %i.ds, i64 %indvars.iv.next99 ; 3 uses
  %i.fr = load i32, ptr %invariant.gep.1, align 4, !tbaa !35
  store i32 %i.fr, ptr %i.fq, align 4, !tbaa !35
  %gep.1.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.z
  %i.fs = load i32, ptr %gep.1.1, align 4, !tbaa !35
  %i.ft = getelementptr [4 x i8], ptr %i.fq, i64 %i.du
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !35
  %gep.2.1 = getelementptr i8, ptr %invariant.gep.1, i64 %gep.2.idx
  %i.fu = load i32, ptr %gep.2.1, align 4, !tbaa !35
  %i.fv = getelementptr i8, ptr %i.fq, i64 %.idx105
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !35
  %indvars.iv.next99.1 = add nuw nsw i64 %indvars.iv98, 2 ; 2 uses
  %exitcond101.not.1 = icmp eq i64 %indvars.iv.next99.1, %i.z
  br i1 %exitcond101.not.1, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge, label %.preheader, !llvm.loop !52

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge: ; preds = %.preheader.prol.loopexit, %.preheader, %middle.block, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader
  %i.fw = load ptr, ptr %20, align 8, !tbaa !59
  call void @free(ptr noundef %i.fw) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #11
  %i.fx = load ptr, ptr %16, align 8, !tbaa !15
  call void @free(ptr noundef %i.fx) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #11
  br label %bb.t

bb.s:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %bb.r, %._crit_edge
  %i.fy = landingpad { ptr, i32 }
          cleanup
  %i.fz = load ptr, ptr %20, align 8, !tbaa !59
  call void @free(ptr noundef %i.fz) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #11
  br label %common.resume

bb.t:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit
  ret void

common.resume:                                    ; preds = %bb.p, %bb.o, %bb.n, %bb.s
  %.pn60.pn.pn = phi { ptr, i32 } [ %i.fy, %bb.s ], [ %i.dn, %bb.p ], [ %i.dm, %bb.o ], [ %i.dl, %bb.n ]
  %i.ga = load ptr, ptr %16, align 8, !tbaa !15
  call void @free(ptr noundef %i.ga) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #11
  resume { ptr, i32 } %.pn60.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN3igl11unique_rowsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_NS2_IiLin1ELi1ELi0ELin1ELi1EEES4_EEvRKNS1_9DenseBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EERNSA_IT2_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !14
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !15
  tail call void @free(ptr noundef %i.f) #11
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 4611686018427387903
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #11 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !18
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #12
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 2
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #13 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #11 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !18
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #12
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !13
  store i64 %3, ptr %i.c, align 8, !tbaa !14
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6
end_hunk_0
