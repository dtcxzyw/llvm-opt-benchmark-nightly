Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinympc/original/admm?download=true
inline.NumInlined: 3888
inline.NumDeleted: 1985
loop-unroll.NumRuntimeUnrolled: 109
loop-unroll.NumUnrolled: 109
begin_hunk_0_@forward_pass:bb.a
  %i.d = load i32, ptr %i.c, align 8, !tbaa !32
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.690.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.892.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.993.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.1094.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.sroa.1195.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.sroa.751.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 40
  %.sroa.852.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 48
  %.sroa.953.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 56
  %.sroa.1054.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 64
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 72
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 80
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 88
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 104
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 112
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 120
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 144
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 48
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 10 uses
  %i.af = phi ptr [ %i.b, %.lr.ph ], [ %i.cj, %bb.b ] ; 7 uses
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !33  ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !34, !noalias !164 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !35, !noalias !164 ; 3 uses
  %i.am = mul nsw i64 %i.al, %indvars.iv
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, null
  %i.an = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.am
  %i.ao = select i1 %.not.i.i.i.i.i, ptr null, ptr %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 136
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !34, !noalias !165 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 144 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !35, !noalias !165
  %i.at = mul nsw i64 %i.as, %indvars.iv
  %.not.i.i.i.i.i18 = icmp eq ptr %i.aq, null
  %i.au = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.at
  %i.av = select i1 %.not.i.i.i.i.i18, ptr null, ptr %i.au
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.aw = getelementptr inbounds nuw i8, ptr %i.af, i64 40 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !34, !noalias !166 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.af, i64 48 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !35, !noalias !166 ; 3 uses
  %i.ba = mul nsw i64 %i.az, %indvars.iv
  %.not.i.i.i.i.i19 = icmp eq ptr %i.ax, null
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.ba
  %i.bc = select i1 %.not.i.i.i.i.i19, ptr null, ptr %i.bb ; 2 uses
  store ptr %i.bc, ptr %6, align 8, !tbaa !41, !alias.scope !166
  store i64 %i.az, ptr %i.g, align 8, !tbaa !42, !alias.scope !166
  store ptr %i.aw, ptr %i.h, align 8, !tbaa !37, !alias.scope !166
  store i64 0, ptr %i.i, align 8, !tbaa !42, !alias.scope !166
  store i64 %indvars.iv, ptr %i.j, align 8, !tbaa !42, !alias.scope !166
  store i64 %i.az, ptr %i.k, align 8, !tbaa !45, !alias.scope !166
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr %i.ah, ptr %i.l, align 8, !tbaa !37
  store ptr %i.ao, ptr %i.m, align 8
  store i64 %i.al, ptr %.sroa.690.16..sroa_idx, align 8
  store ptr %i.ai, ptr %.sroa.892.16..sroa_idx, align 8
  store i64 0, ptr %.sroa.993.16..sroa_idx, align 8
  store i64 %indvars.iv, ptr %.sroa.1094.16..sroa_idx, align 8
  store i64 %i.al, ptr %.sroa.1195.16..sroa_idx, align 8
  %i.bd = load ptr, ptr %i.ah, align 8, !tbaa !34
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !35
  store ptr %i.bd, ptr %i.n, align 8, !tbaa !51
  store i64 %i.bf, ptr %i.o, align 8, !tbaa !52
  store ptr %i.ao, ptr %i.p, align 8, !tbaa !49
  %i.bg = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !35
  store i64 %i.bh, ptr %i.q, align 8, !tbaa !42
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !53
  store i64 %i.bj, ptr %i.r, align 8, !tbaa !61
  store ptr %i.av, ptr %i.s, align 8, !tbaa !49
  %i.bk = load i64, ptr %i.ar, align 8, !tbaa !35
  store i64 %i.bk, ptr %i.t, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr %i.bc, ptr %3, align 8, !tbaa !49
  %i.bl = load i64, ptr %i.ay, align 8, !tbaa !35
  store i64 %i.bl, ptr %i.u, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr %3, ptr %4, align 8, !tbaa !67
  store ptr %2, ptr %i.v, align 8, !tbaa !167
  store ptr %5, ptr %i.w, align 8, !tbaa !70
  store ptr %6, ptr %i.x, align 8, !tbaa !72
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS3_INS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_7ProductIS6_S7_Li1EEEEEKS7_EEEENS0_9assign_opIddEELi0EEELi3ELi0EE3runERSP_(ptr noundef nonnull align 8 dereferenceable(32) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !17  ; 7 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1160
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 4 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !34, !noalias !168 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 24 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !35, !noalias !168 ; 3 uses
  %i.bs = mul nsw i64 %i.br, %indvars.iv
  %.not.i.i.i.i.i20 = icmp eq ptr %i.bp, null
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.bs
  %i.bu = select i1 %.not.i.i.i.i.i20, ptr null, ptr %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 1184
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bm, i64 40 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !34, !noalias !169 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !35, !noalias !169 ; 3 uses
  %i.ca = mul nsw i64 %i.bz, %indvars.iv
  %.not.i.i.i.i.i21 = icmp eq ptr %i.bx, null
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.ca
  %i.cc = select i1 %.not.i.i.i.i.i21, ptr null, ptr %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bm, i64 1208
  store ptr %i.bn, ptr %i.y, align 8
  store ptr %i.bu, ptr %.sroa.448.0..sroa_idx, align 8
  store i64 %i.br, ptr %.sroa.549.0..sroa_idx, align 8
  store ptr %i.bo, ptr %.sroa.751.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.852.0..sroa_idx, align 8
  store i64 %indvars.iv, ptr %.sroa.953.0..sroa_idx, align 8
  store i64 %i.br, ptr %.sroa.1054.0..sroa_idx, align 8
  store ptr %i.bv, ptr %.sroa.11.0..sroa_idx, align 8
  store ptr %i.cc, ptr %.sroa.12.0..sroa_idx, align 8
  store i64 %i.bz, ptr %.sroa.13.0..sroa_idx, align 8
  store ptr %i.bw, ptr %.sroa.15.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.16.0..sroa_idx, align 8
  store i64 %indvars.iv, ptr %.sroa.17.0..sroa_idx, align 8
  store i64 %i.bz, ptr %.sroa.18.0..sroa_idx, align 8
  store ptr %i.cd, ptr %i.z, align 8, !tbaa !76, !alias.scope !170
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %i.ce = load ptr, ptr %i.bo, align 8, !tbaa !34, !noalias !171 ; 2 uses
  %i.cf = load i64, ptr %i.bq, align 8, !tbaa !35, !noalias !171 ; 3 uses
  %i.cg = mul nsw i64 %i.cf, %indvars.iv.next
  %.not.i.i.i.i.i22 = icmp eq ptr %i.ce, null
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.cg
  %i.ci = select i1 %.not.i.i.i.i.i22, ptr null, ptr %i.ch
  store ptr %i.ci, ptr %8, align 8, !tbaa !41, !alias.scope !171
  store i64 %i.cf, ptr %i.aa, align 8, !tbaa !42, !alias.scope !171
  store ptr %i.bo, ptr %i.ab, align 8, !tbaa !37, !alias.scope !171
  store i64 0, ptr %i.ac, align 8, !tbaa !42, !alias.scope !171
  store i64 %indvars.iv.next, ptr %i.ad, align 8, !tbaa !42, !alias.scope !171
  store i64 %i.cf, ptr %i.ae, align 8, !tbaa !45, !alias.scope !171
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @_ZN5Eigen8internal26call_dense_assignment_loopINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS6_IS8_KNS_7ProductIS4_S5_Li1EEESB_EEKNS3_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(153) %7, ptr noundef nonnull align 1 dereferenceable(1) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !32
  %i.cm = add nsw i32 %i.cl, -1
  %i.cn = sext i32 %i.cm to i64
  %i.co = icmp slt i64 %indvars.iv.next, %i.cn
  br i1 %i.co, label %bb.b, label %._crit_edge, !llvm.loop !163
}

; Function Attrs: mustprogress uwtable
define void @project_soc(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Eigen::Matrix.3") align 8 captures(none) %0, ptr nofreeobj noundef align 8 captures(none) dereferenceable(16) %1, float noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Matrix.130", align 16 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !77   ; 17 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !63     ; 4 uses
  %i.d = getelementptr [8 x i8], ptr %i.c, i64 %i.b
  %i.e = getelementptr i8, ptr %i.d, i64 -8
  %i.f = load double, ptr %i.e, align 8, !tbaa !46
  %i.g = fpext float %2 to double
  %i.h = fmul double %i.f, %i.g                   ; 4 uses
  %i.i = add i64 %i.b, -1                         ; 11 uses
  %.not = icmp eq i64 %i.i, 0
  %or.cond = icmp sgt i64 %i.b, 1
  br i1 %or.cond, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.j = icmp samesign ugt i64 %i.b, 2305843009213693952
  br i1 %i.j, label %.invoke.i.i, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = shl nuw i64 %i.i, 3
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #21 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.invoke.i.i, label %bb.c

.invoke.i.i:                                      ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i.i, %bb.b
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !79
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
  unreachable

.thread:                                          ; preds = %bb.a
  %.nonneg = sub i64 1, %i.b
  %i.o = and i64 %.nonneg, -2
  %i.p = sub i64 0, %i.o
  br label %._crit_edge.i.i

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i.i
  %.not74 = icmp eq i64 %i.b, 2
  br i1 %.not74, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.c
  %i.q = and i64 %i.i, -2                         ; 2 uses
  %i.r = tail call i64 @llvm.umax.i64(i64 %i.q, i64 2)
  %i.s = shl nuw i64 %i.r, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.l, ptr noundef nonnull align 1 dereferenceable(1) %i.c, i64 %i.s, i1 false), !tbaa !47
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.preheader, %.thread, %bb.c
  %i.t = phi i64 [ %i.p, %.thread ], [ 0, %bb.c ], [ %i.q, %.lr.ph.i.i.preheader ] ; 8 uses
  %.sroa.050.061 = phi ptr [ null, %.thread ], [ %i.l, %bb.c ], [ %i.l, %.lr.ph.i.i.preheader ] ; 16 uses
  %i.u = icmp slt i64 %i.t, %i.i                  ; 2 uses
  br i1 %i.u, label %.lr.ph.i.i.i.preheader, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_5BlockIS1_Lin1ELi1ELb0EEEEERKNS_9EigenBaseIT_EE.exit

.lr.ph.i.i.i.preheader:                           ; preds = %._crit_edge.i.i
  %i.v = shl i64 %i.t, 3                          ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.050.061, i64 %i.v
  %scevgep80 = getelementptr i8, ptr %i.c, i64 %i.v
  %i.w = sub i64 %i.i, %i.t
  %i.x = shl nuw i64 %i.w, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scevgep, ptr align 8 %scevgep80, i64 %i.x, i1 false), !tbaa !46
  br label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_5BlockIS1_Lin1ELi1ELb0EEEEERKNS_9EigenBaseIT_EE.exit

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_5BlockIS1_Lin1ELi1ELb0EEEEERKNS_9EigenBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.preheader, %._crit_edge.i.i
  br i1 %.not, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_5BlockIS1_Lin1ELi1ELb0EEEEERKNS_9EigenBaseIT_EE.exit
  %i.y = sdiv i64 %i.i, 4
  %i.z = shl nsw i64 %i.y, 2                      ; 3 uses
  %.not.i.i.i.i.i25 = icmp ult i64 %i.b, 3
  br i1 %.not.i.i.i.i.i25, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load <2 x double>, ptr %.sroa.050.061, align 16, !tbaa !47 ; 2 uses
  %i.ab = fmul <2 x double> %i.aa, %i.aa          ; 3 uses
  %i.ac = icmp sgt i64 %i.b, 4
  br i1 %i.ac, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.050.061, i64 16
  %i.ae = load <2 x double>, ptr %i.ad, align 16, !tbaa !47 ; 2 uses
  %i.af = fmul <2 x double> %i.ae, %i.ae          ; 2 uses
  %i.ag = icmp samesign ugt i64 %i.b, 8
  br i1 %i.ag, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.f
  %.075.lcssa.i.i.i.i.i = phi <2 x double> [ %i.af, %bb.f ], [ %i.ar, %.lr.ph.i.i.i.i.i ]
  %.072.lcssa.i.i.i.i.i = phi <2 x double> [ %i.ab, %bb.f ], [ %i.am, %.lr.ph.i.i.i.i.i ]
  %i.ah = fadd <2 x double> %.075.lcssa.i.i.i.i.i, %.072.lcssa.i.i.i.i.i ; 2 uses
  %i.ai = icmp sgt i64 %i.t, %i.z
  br i1 %i.ai, label %bb.g, label %bb.h

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %.05480.i.i.i.i.i = phi i64 [ %.054.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 4, %bb.f ] ; 3 uses
  %.054.in79.i.i.i.i.i = phi i64 [ %.05480.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.f ]
  %.07278.i.i.i.i.i = phi <2 x double> [ %i.am, %.lr.ph.i.i.i.i.i ], [ %i.ab, %bb.f ]
  %.07577.i.i.i.i.i = phi <2 x double> [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %i.af, %bb.f ]
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.050.061, i64 %.05480.i.i.i.i.i
  %i.ak = load <2 x double>, ptr %i.aj, align 16, !tbaa !47 ; 2 uses
  %i.al = fmul <2 x double> %i.ak, %i.ak
  %i.am = fadd <2 x double> %.07278.i.i.i.i.i, %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.sroa.050.061, i64 %.054.in79.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.ap = load <2 x double>, ptr %i.ao, align 16, !tbaa !47 ; 2 uses
  %i.aq = fmul <2 x double> %i.ap, %i.ap
  %i.ar = fadd <2 x double> %.07577.i.i.i.i.i, %i.aq ; 2 uses
  %.054.i.i.i.i.i = add nuw nsw i64 %.05480.i.i.i.i.i, 4 ; 2 uses
  %i.as = icmp slt i64 %.054.i.i.i.i.i, %i.z
  br i1 %i.as, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !0

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.sroa.050.061, i64 %i.z
  %i.au = load <2 x double>, ptr %i.at, align 16, !tbaa !47 ; 2 uses
  %i.av = fmul <2 x double> %i.au, %i.au
  %i.aw = fadd <2 x double> %i.ah, %i.av
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i.i, %bb.e
  %.274.i.i.i.i.i = phi <2 x double> [ %i.ab, %bb.e ], [ %i.aw, %bb.g ], [ %i.ah, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %shift = shufflevector <2 x double> %.274.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %.274.i.i.i.i.i, %shift
  %i.ax = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  br i1 %i.u, label %.lr.ph85.i.i.i.i.i.preheader, label %.loopexit75

.lr.ph85.i.i.i.i.i.preheader:                     ; preds = %bb.h
  %4 = xor i64 %i.t, -1
  %5 = add i64 %i.b, %4
  %i.ay = add i64 %i.b, -2
  %i.az = sub i64 %i.ay, %i.t
  %xtraiter = and i64 %5, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph85.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.prol:                          ; preds = %.lr.ph85.i.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.prol = phi i64 [ %i.be, %.lr.ph85.i.i.i.i.i.prol ], [ %i.t, %.lr.ph85.i.i.i.i.i.preheader ] ; 2 uses
  %.182.i.i.i.i.i.prol = phi double [ %i.bd, %.lr.ph85.i.i.i.i.i.prol ], [ %i.ax, %.lr.ph85.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph85.i.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.preheader ]
  %i.ba = getelementptr inbounds [8 x i8], ptr %.sroa.050.061, i64 %.05283.i.i.i.i.i.prol
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !46 ; 2 uses
  %i.bc = fmul double %i.bb, %i.bb
  %i.bd = fadd double %.182.i.i.i.i.i.prol, %i.bc ; 3 uses
  %i.be = add nsw i64 %.05283.i.i.i.i.i.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph85.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.prol, !llvm.loop !172

.lr.ph85.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph85.i.i.i.i.i.prol, %.lr.ph85.i.i.i.i.i.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.bd, %.lr.ph85.i.i.i.i.i.prol ]
  %.05283.i.i.i.i.i.unr = phi i64 [ %i.t, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.be, %.lr.ph85.i.i.i.i.i.prol ]
  %.182.i.i.i.i.i.unr = phi double [ %i.ax, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.bd, %.lr.ph85.i.i.i.i.i.prol ]
  %i.bf = icmp ult i64 %i.az, 3
  br i1 %i.bf, label %.loopexit75, label %.lr.ph85.i.i.i.i.i

.lr.ph85.i.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i
  %.05283.i.i.i.i.i = phi i64 [ %i.bz, %.lr.ph85.i.i.i.i.i ], [ %.05283.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.182.i.i.i.i.i = phi double [ %i.by, %.lr.ph85.i.i.i.i.i ], [ %.182.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.prol.loopexit ]
  %i.bg = getelementptr inbounds [8 x i8], ptr %.sroa.050.061, i64 %.05283.i.i.i.i.i
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !46 ; 2 uses
  %i.bi = fmul double %i.bh, %i.bh
  %i.bj = fadd double %.182.i.i.i.i.i, %i.bi
  %i.bk = getelementptr [8 x i8], ptr %.sroa.050.061, i64 %.05283.i.i.i.i.i
  %i.bl = getelementptr i8, ptr %i.bk, i64 8
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !46 ; 2 uses
  %i.bn = fmul double %i.bm, %i.bm
  %i.bo = fadd double %i.bj, %i.bn
  %i.bp = getelementptr [8 x i8], ptr %.sroa.050.061, i64 %.05283.i.i.i.i.i
  %i.bq = getelementptr i8, ptr %i.bp, i64 16
  %i.br = load double, ptr %i.bq, align 8, !tbaa !46 ; 2 uses
  %i.bs = fmul double %i.br, %i.br
  %i.bt = fadd double %i.bo, %i.bs
  %i.bu = getelementptr [8 x i8], ptr %.sroa.050.061, i64 %.05283.i.i.i.i.i
  %i.bv = getelementptr i8, ptr %i.bu, i64 24
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !46 ; 2 uses
  %i.bx = fmul double %i.bw, %i.bw
  %i.by = fadd double %i.bt, %i.bx                ; 2 uses
  %i.bz = add nsw i64 %.05283.i.i.i.i.i, 4        ; 2 uses
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.bz, %i.i
  br i1 %exitcond.not.i.i.i.i.i.3, label %.loopexit75, label %.lr.ph85.i.i.i.i.i, !llvm.loop !1

bb.i:                                             ; preds = %bb.d
  %i.ca = load double, ptr %.sroa.050.061, align 8, !tbaa !46 ; 2 uses
  %i.cb = fmul double %i.ca, %i.ca
  br label %.loopexit75

.loopexit75:                                      ; preds = %.lr.ph85.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i, %bb.i, %bb.h
  %.0.i.i.i = phi double [ %i.cb, %bb.i ], [ %i.ax, %bb.h ], [ %.lcssa.unr, %.lr.ph85.i.i.i.i.i.prol.loopexit ], [ %i.by, %.lr.ph85.i.i.i.i.i ]
  %.scalar.i = tail call noundef double @llvm.sqrt.f64(double %.0.i.i.i)
  %i.cc = fptrunc double %.scalar.i to float      ; 2 uses
  %i.cd = icmp sgt i64 %i.b, 0
  br i1 %i.cd, label %bb.j, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit

bb.j:                                             ; preds = %.loopexit75
  %i.ce = icmp samesign ugt i64 %i.b, 2305843009213693951
  br i1 %i.ce, label %.invoke.i, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i: ; preds = %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_5BlockIS1_Lin1ELi1ELb0EEEEERKNS_9EigenBaseIT_EE.exit, %bb.j
  %i.cf = phi float [ %i.cc, %bb.j ], [ 0.000000e+00, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_5BlockIS1_Lin1ELi1ELb0EEEEERKNS_9EigenBaseIT_EE.exit ]
  %i.cg = shl nuw i64 %i.b, 3
  %calloc = tail call ptr @calloc(i64 1, i64 %i.cg) ; 2 uses
  %i.ch = icmp eq ptr %calloc, null
  br i1 %i.ch, label %.invoke.i, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit

.invoke.i:                                        ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i, %bb.j
  %i.ci = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ci, align 8, !tbaa !79
  invoke void @__cxa_throw(ptr nonnull %i.ci, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.cont.i unwind label %bb.k

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.k:                                             ; preds = %.invoke.i
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i, %.loopexit75
  %i.ck = phi float [ %i.cc, %.loopexit75 ], [ %i.cf, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.036.169 = phi ptr [ null, %.loopexit75 ], [ %calloc, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i ] ; 5 uses
  %i.cl = fpext float %i.ck to double             ; 4 uses
  %i.cm = fneg double %i.h
  %i.cn = fcmp ugt double %i.cl, %i.cm
  br i1 %i.cn, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit
  store ptr %.sroa.036.169, ptr %0, align 8, !tbaa !63
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.co, align 8, !tbaa !77
  br label %bb.s

bb.m:                                             ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit
  %i.cp = fcmp ult double %i.h, %i.cl
  br i1 %i.cp, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %i.c, ptr %0, align 8, !tbaa !63
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.cq, align 8, !tbaa !77
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %bb.s

bb.o:                                             ; preds = %bb.m
  %i.cr = tail call noundef double @llvm.fabs.f64(double %i.h)
  %i.cs = fcmp ugt double %i.cr, %i.cl
  br i1 %i.cs, label %bb.r, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEEENS5_INS7_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEEENS5_INS7_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.ct = tail call i64 @llvm.smin.i64(i64 %i.i, i64 0) ; 6 uses
  %i.cu = sub i64 %i.i, %i.ct                     ; 3 uses
  %i.cv = sdiv i64 %i.cu, 2                       ; 2 uses
  %i.cw = shl nsw i64 %i.cv, 1                    ; 2 uses
  %i.cx = add i64 %i.cw, %i.ct                    ; 2 uses
  %i.cy = icmp sgt i64 %i.cu, 1
  br i1 %i.cy, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEEENS5_INS7_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cz = shl i64 %i.ct, 3                        ; 2 uses
  %scevgep81 = getelementptr i8, ptr %3, i64 %i.cz
  %scevgep82 = getelementptr i8, ptr %.sroa.050.061, i64 %i.cz
  %i.da = add nsw i64 %i.ct, 2
  %smax83 = tail call i64 @llvm.smax.i64(i64 %i.cx, i64 %i.da)
  %i.db = xor i64 %i.ct, -1
  %i.dc = add i64 %smax83, %i.db
  %i.dd = shl i64 %i.dc, 3
  %i.de = and i64 %i.dd, -16
  %i.df = add i64 %i.de, 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %scevgep81, ptr align 1 %scevgep82, i64 %i.df, i1 false), !tbaa !47, !noalias !175
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEEENS5_INS7_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dg = icmp slt i64 %i.cx, %i.i
  br i1 %i.dg, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %.loopexit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dh = shl i64 %i.cv, 4
  %i.di = shl i64 %i.ct, 3
  %i.dj = add i64 %i.dh, %i.di                    ; 2 uses
  %scevgep84 = getelementptr i8, ptr %3, i64 %i.dj
  %scevgep85 = getelementptr i8, ptr %.sroa.050.061, i64 %i.dj
  %i.dk = sub i64 %i.cu, %i.cw
  %i.dl = shl nuw i64 %i.dk, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scevgep84, ptr align 8 %scevgep85, i64 %i.dl, i1 false), !tbaa !46, !noalias !175
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dm = fdiv float %i.ck, %2
  %i.dn = fpext float %i.dm to double
  %i.do = getelementptr [8 x i8], ptr %3, i64 %i.i
  store double %i.dn, ptr %i.do, align 8, !tbaa !46
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.dp = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #21 ; 4 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.loopexit
  %i.dr = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dr, align 8, !tbaa !79
  invoke void @__cxa_throw(ptr nonnull %i.dr, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.noexc.i.i unwind label %.body26

.noexc.i.i:                                       ; preds = %bb.p
  unreachable

.body26:                                          ; preds = %bb.p
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  tail call void @free(ptr noundef %.sroa.036.169) #20
  br label %.body

bb.q:                                             ; preds = %.loopexit
  %i.dt = fdiv double %i.h, %i.cl
  %i.du = fadd double %i.dt, 1.000000e+00
  %i.dv = fmul double %i.du, 5.000000e-01         ; 2 uses
  store ptr %i.dp, ptr %0, align 8, !tbaa !63
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.dw, align 8, !tbaa !77
  %.sroa.3.8.vec.insert.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.dv, i64 0
  %i.dx = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dy = load <2 x double>, ptr %3, align 16, !tbaa !47
  %i.dz = fmul <2 x double> %i.dx, %i.dy
  store <2 x double> %i.dz, ptr %i.dp, align 16, !tbaa !47
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ec = load double, ptr %i.eb, align 16, !tbaa !46
  %i.ed = fmul double %i.dv, %i.ec
  store double %i.ed, ptr %i.ea, align 16, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.s
end_hunk_0
