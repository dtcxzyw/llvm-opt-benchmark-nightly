Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/frame_field_deformer?download=true
inline.NumInlined: 7666
inline.NumDeleted: 3720
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 56
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_ZN3igl20Frame_field_deformer25compute_optimal_positionsEv:_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.rc = getelementptr inbounds [8 x i8], ptr %i.rb, i64 %index541 ; 2 uses
  %i.rd = getelementptr inbounds [8 x i8], ptr %i.ra, i64 %index541 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 16
  %wide.load542 = load <2 x double>, ptr %i.rd, align 8, !tbaa !93
  %wide.load543 = load <2 x double>, ptr %i.re, align 8, !tbaa !93
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rc, i64 16
  store <2 x double> %wide.load542, ptr %i.rc, align 8, !tbaa !93
  store <2 x double> %wide.load543, ptr %i.rf, align 8, !tbaa !93
  %index.next544 = add nuw i64 %index541, 4       ; 2 uses
  %i.rg = icmp eq i64 %index.next544, %n.vec539
  br i1 %i.rg, label %middle.block545, label %vector.body540, !llvm.loop !321

middle.block545:                                  ; preds = %vector.body540
  br i1 %cmp.n546, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader551

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader551:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block545
  %.05.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %n.vec539, %middle.block545 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  br i1 %lcmp.mod566.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader551, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.rm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader551 ] ; 3 uses
  %prol.iter567 = phi i64 [ %prol.iter567.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader551 ]
  %i.rh = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.prol, %i.qt
  %i.ri = getelementptr inbounds [8 x i8], ptr %i.rb, i64 %i.rh
  %i.rj = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.prol, %i.qr
  %i.rk = getelementptr inbounds [8 x i8], ptr %i.ra, i64 %i.rj
  %i.rl = load double, ptr %i.rk, align 8, !tbaa !93
  store double %i.rl, ptr %i.ri, align 8, !tbaa !93
  %i.rm = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter567.next = add i64 %prol.iter567, 1   ; 2 uses
  %prol.iter567.cmp.not = icmp eq i64 %prol.iter567.next, %xtraiter565
  br i1 %prol.iter567.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !322

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader551
  %.05.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader551 ], [ %i.rm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.rn = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %i.qq
  %i.ro = icmp ugt i64 %i.rn, -4
  br i1 %i.ro, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.sm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.rp = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, %i.qt
  %i.rq = getelementptr inbounds [8 x i8], ptr %i.rb, i64 %i.rp
  %i.rr = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, %i.qr
  %i.rs = getelementptr inbounds [8 x i8], ptr %i.ra, i64 %i.rr
  %i.rt = load double, ptr %i.rs, align 8, !tbaa !93
  store double %i.rt, ptr %i.rq, align 8, !tbaa !93
  %i.ru = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.rv = mul nsw i64 %i.ru, %i.qt
  %i.rw = getelementptr inbounds [8 x i8], ptr %i.rb, i64 %i.rv
  %i.rx = mul nsw i64 %i.ru, %i.qr
  %i.ry = getelementptr inbounds [8 x i8], ptr %i.ra, i64 %i.rx
  %i.rz = load double, ptr %i.ry, align 8, !tbaa !93
  store double %i.rz, ptr %i.rw, align 8, !tbaa !93
  %i.sa = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.sb = mul nsw i64 %i.sa, %i.qt
  %i.sc = getelementptr inbounds [8 x i8], ptr %i.rb, i64 %i.sb
  %i.sd = mul nsw i64 %i.sa, %i.qr
  %i.se = getelementptr inbounds [8 x i8], ptr %i.ra, i64 %i.sd
  %i.sf = load double, ptr %i.se, align 8, !tbaa !93
  store double %i.sf, ptr %i.sc, align 8, !tbaa !93
  %i.sg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.sh = mul nsw i64 %i.sg, %i.qt
  %i.si = getelementptr inbounds [8 x i8], ptr %i.rb, i64 %i.sh
  %i.sj = mul nsw i64 %i.sg, %i.qr
  %i.sk = getelementptr inbounds [8 x i8], ptr %i.ra, i64 %i.sj
  %i.sl = load double, ptr %i.sk, align 8, !tbaa !93
  store double %i.sl, ptr %i.si, align 8, !tbaa !93
  %i.sm = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.sm, %i.qq
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !323

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %middle.block545
  %indvars.iv.next390 = add nuw nsw i64 %indvars.iv389, 1 ; 2 uses
  %exitcond393.not = icmp eq i64 %indvars.iv.next390, %wide.trip.count392
  br i1 %exitcond393.not, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, !llvm.loop !324

.loopexit:                                        ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.loopexit, %.preheader, %.lr.ph384, %bb.l
  %i.sn = load ptr, ptr %4, align 8, !tbaa !72
  call void @free(ptr noundef %i.sn) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.so = load ptr, ptr %3, align 8, !tbaa !72
  call void @free(ptr noundef %i.so) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

.body:                                            ; preds = %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i81, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.m
  %.pn58.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fe, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ix, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i81 ], [ %i.qz, %bb.m ]
  %i.sp = load ptr, ptr %4, align 8, !tbaa !72
  call void @free(ptr noundef %i.sp) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.sq = load ptr, ptr %3, align 8, !tbaa !72
  call void @free(ptr noundef %i.sq) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %.pn58.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl20Frame_field_deformer13computeXFieldERSt6vectorIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEESaIS4_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(632) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.4.i.i.i.i28 = alloca [4 x double], align 16 ; 7 uses
  %.sroa.4.i.i.i.i = alloca [4 x double], align 16 ; 7 uses
  %.sroa.4 = alloca [4 x double], align 16        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !98
  tail call void @_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c)
  %i.d = load i64, ptr %i.b, align 8, !tbaa !98   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.sroa.4.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i, i64 8
  %.sroa.4.i.i.i.i.24.i.i.i.i.24.i.i.i.i.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i, i64 24
  %.sroa.4.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i, i64 16
  %.sroa.4.16..sroa_idx331 = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 16
  %.sroa.4.8..sroa_idx330 = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 8
  %.sroa.4.i.i.i.i28.8.i.i.i.i28.8.i.i.i.i28.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i28, i64 8
  %.sroa.4.i.i.i.i28.24.i.i.i.i28.24.i.i.i.i28.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i28, i64 24
  %.sroa.4.i.i.i.i28.16.i.i.i.i28.16.i.i.i.i28.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i28, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.j = phi i64 [ %i.d, %.lr.ph ], [ %i.if, %bb.b ] ; 2 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.l = getelementptr [4 x i8], ptr %i.k, i64 %indvars.iv ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !100
  %i.n = getelementptr [4 x i8], ptr %i.l, i64 %i.j
  %i.o = load i32, ptr %i.n, align 4, !tbaa !100
  %.idx = shl i64 %i.j, 3
  %i.p = getelementptr i8, ptr %i.l, i64 %.idx
  %i.q = load i32, ptr %i.p, align 4, !tbaa !100
  %i.r = sext i32 %i.o to i64                     ; 2 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !72, !noalias !346 ; 3 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.r ; 3 uses
  %i.u = sext i32 %i.m to i64                     ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.u ; 3 uses
  %i.w = load i64, ptr %i.f, align 8, !tbaa !89   ; 4 uses
  %i.x = load double, ptr %i.t, align 8, !tbaa !93
  %i.y = load double, ptr %i.v, align 8, !tbaa !93
  %i.z = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.w
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.w
  %i.ab = load double, ptr %i.z, align 8, !tbaa !93
  %i.ac = load double, ptr %i.aa, align 8, !tbaa !93
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.w, 4 ; 3 uses
  %i.ad = getelementptr inbounds i8, ptr %i.t, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ae = getelementptr inbounds i8, ptr %i.v, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.af = load double, ptr %i.ad, align 8, !tbaa !93
  %i.ag = load double, ptr %i.ae, align 8, !tbaa !93
  %i.ah = sext i32 %i.q to i64                    ; 2 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ah ; 3 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !93
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.w
  %i.al = load double, ptr %i.ak, align 8, !tbaa !93
  %i.am = getelementptr inbounds i8, ptr %i.ai, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.an = load double, ptr %i.am, align 8, !tbaa !93
  %i.ao = load ptr, ptr %i.g, align 8, !tbaa !72, !noalias !347 ; 3 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.r ; 3 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.u ; 4 uses
  %i.ar = load i64, ptr %i.h, align 8, !tbaa !89  ; 4 uses
  %i.as = load double, ptr %i.ap, align 8, !tbaa !93
  %i.at = load double, ptr %i.aq, align 8, !tbaa !93
  %i.au = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.ar
  %i.av = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ar ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i20 = shl nsw i64 %i.ar, 4 ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %i.ap, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i20
  %i.ax = getelementptr inbounds i8, ptr %i.aq, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i20 ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.ah ; 3 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.ar
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i20
  %i.bb = fsub double %i.as, %i.at                ; 3 uses
  %.sroa.0.0.vec.insert = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.bc = load double, ptr %i.au, align 8, !tbaa !93
  %i.bd = load double, ptr %i.av, align 8, !tbaa !93
  %i.be = fsub double %i.bc, %i.bd                ; 3 uses
  %.sroa.0.8.vec.insert = insertelement <2 x double> %.sroa.0.0.vec.insert, double %i.be, i64 1 ; 3 uses
  %i.bf = load double, ptr %i.aw, align 8, !tbaa !93
  %i.bg = load double, ptr %i.ax, align 8, !tbaa !93
  %i.bh = insertelement <2 x double> poison, double %i.be, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  %i.bi = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.bj = insertelement <2 x double> %i.bi, double %i.al, i64 1
  %i.bk = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bm = fsub <2 x double> %i.bj, %i.bl          ; 8 uses
  %i.bn = insertelement <2 x double> poison, double %i.af, i64 0
  %i.bo = insertelement <2 x double> %i.bn, double %i.an, i64 1
  %i.bp = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.bq = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.br = fsub <2 x double> %i.bo, %i.bq          ; 10 uses
  %2 = extractelement <2 x double> %i.bm, i64 1
  %i.bs = extractelement <2 x double> %i.br, i64 0
  %i.bt = extractelement <2 x double> %i.br, i64 1
  %i.bu = fneg double %i.bt                       ; 2 uses
  %i.bv = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.bw = shufflevector <2 x double> %i.br, <2 x double> %i.bm, <2 x i32> <i32 0, i32 2>
  %i.bx = insertelement <2 x double> poison, double %i.x, i64 0
  %i.by = insertelement <2 x double> %i.bx, double %i.aj, i64 1
  %i.bz = insertelement <2 x double> poison, double %i.y, i64 0
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cb = fsub <2 x double> %i.by, %i.ca          ; 8 uses
  %i.cc = shufflevector <2 x double> %i.cb, <2 x double> %i.bm, <2 x i32> <i32 0, i32 2>
  %i.cd = extractelement <2 x double> %i.cb, i64 0
  %i.ce = fmul double %i.cd, %i.bu
  %3 = extractelement <2 x double> %i.cb, i64 1   ; 2 uses
  %4 = shufflevector <2 x double> %i.br, <2 x double> %i.cb, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.bs, double %3, double %i.ce) ; 3 uses
  %i.cg = fmul double %i.cf, %i.bu
  %i.ch = insertelement <2 x double> %i.bv, double %i.cf, i64 0 ; 2 uses
  %i.ci = fneg <2 x double> %i.ch
  %i.cj = fmul <2 x double> %i.cb, %i.ci
  %i.ck = shufflevector <2 x double> %i.cb, <2 x double> %i.bm, <2 x i32> <i32 0, i32 3>
  %i.cl = fneg <2 x double> %i.ck                 ; 2 uses
  %i.cm = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cn = fneg double %3                          ; 2 uses
  %i.co = insertelement <2 x double> %i.cm, double %i.cn, i64 1
  %i.cp = fmul <2 x double> %i.bw, %i.co
  %i.cq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %4, <2 x double> %i.bm, <2 x double> %i.cp) ; 7 uses
  %i.cr = extractelement <2 x double> %i.cq, i64 1
  %i.cs = tail call noundef double @llvm.fmuladd.f64(double %2, double %i.cr, double %i.cg) ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.cs, i64 0
  %i.ct = shufflevector <2 x double> %i.cq, <2 x double> %i.br, <2 x i32> <i32 1, i32 2>
  %i.cu = insertelement <2 x double> poison, double %i.cn, i64 0
  %i.cv = fneg <2 x double> %i.cq
  %i.cw = shufflevector <2 x double> %i.cu, <2 x double> %i.cv, <2 x i32> <i32 0, i32 2>
  %i.cx = fmul <2 x double> %i.ct, %i.cw
  %i.cy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %4, <2 x double> %i.cq, <2 x double> %i.cx) ; 2 uses
  %i.cz = shufflevector <2 x double> %.sroa.0.0.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> %i.cy, <2 x i32> <i32 0, i32 2>
  %i.da = shufflevector <2 x double> %i.br, <2 x double> %i.cq, <2 x i32> <i32 1, i32 2>
  %i.db = fmul <2 x double> %i.da, %i.cl
  %i.dc = insertelement <2 x double> %i.br, double %i.cf, i64 1
  %i.dd = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.de = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dc, <2 x double> %i.dd, <2 x double> %i.db) ; 2 uses
  %i.df = fmul <2 x double> %i.cc, %i.cz          ; 2 uses
  %shift = shufflevector <2 x double> %i.df, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.df, %shift
  %shift304 = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop305 = fmul <2 x double> %i.br, %shift304
  %foldExtExtBinop307 = fadd <2 x double> %foldExtExtBinop305, %foldExtExtBinop
  %i.dg = extractelement <2 x double> %foldExtExtBinop307, i64 0
  %i.dh = fdiv double 1.000000e+00, %i.dg         ; 2 uses
  %i.di = shufflevector <2 x double> %i.cq, <2 x double> %i.br, <2 x i32> <i32 1, i32 2>
  %i.dj = fneg <2 x double> %i.di
  %i.dk = fmul <2 x double> %i.bm, %i.dj
  %i.dl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ch, <2 x double> %i.br, <2 x double> %i.dk)
  %i.dm = insertelement <2 x double> poison, double %i.dh, i64 0
  %i.dn = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.do = fmul <2 x double> %i.dl, %i.dn          ; 3 uses
  %i.dp = shufflevector <2 x double> %i.cq, <2 x double> %i.cb, <2 x i32> <i32 0, i32 2>
  %i.dq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dp, <2 x double> %i.bm, <2 x double> %i.cj)
  %i.dr = fmul <2 x double> %i.dq, %i.dn          ; 3 uses
  %i.ds = fmul double %i.cs, %i.dh                ; 2 uses
  %i.dt = fmul <2 x double> %i.cy, %i.dn          ; 3 uses
  %i.du = fmul <2 x double> %i.de, %i.dn          ; 3 uses
  %i.dv = insertelement <2 x double> poison, double %i.ds, i64 0
  %i.dw = shufflevector <2 x double> %i.dv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dx = fmul <2 x double> %i.dw, %.sroa.0.8.vec.insert
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.0.vec.extract = extractelement <2 x double> %i.do, i64 0
  %i.dy = bitcast double %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.0.vec.extract to <1 x double>
  %i.dz = shufflevector <1 x double> %i.dy, <1 x double> poison, <2 x i32> zeroinitializer
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.8.vec.extract = extractelement <2 x double> %i.do, i64 1
  %i.ea = bitcast double %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.8.vec.extract to <1 x double>
  %i.eb = shufflevector <1 x double> %i.ea, <1 x double> poison, <2 x i32> zeroinitializer
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.sroa.5.16.vec.extract = extractelement <2 x double> %i.dt, i64 0
  %i.ec = bitcast double %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.sroa.5.16.vec.extract to <1 x double>
  %i.ed = shufflevector <1 x double> %i.ec, <1 x double> poison, <2 x i32> zeroinitializer
  %i.ee = fmul <2 x double> %.sroa.0.8.vec.insert, %i.ed
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.sroa.5.24.vec.extract = extractelement <2 x double> %i.dt, i64 1
  %i.ef = bitcast double %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.sroa.5.24.vec.extract to <1 x double>
  %i.eg = shufflevector <1 x double> %i.ef, <1 x double> poison, <2 x i32> zeroinitializer
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.sroa.8.32.vec.extract = extractelement <2 x double> %i.du, i64 0
  %i.eh = bitcast double %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.sroa.8.32.vec.extract to <1 x double>
  %i.ei = shufflevector <1 x double> %i.eh, <1 x double> poison, <2 x i32> zeroinitializer
  %i.ej = fsub double %i.bf, %i.bg                ; 4 uses
  %i.ek = load double, ptr %i.ay, align 8, !tbaa !93
  %i.el = load double, ptr %i.aq, align 8, !tbaa !93
  %i.em = fsub double %i.ek, %i.el                ; 3 uses
  %.sroa.6.24.vec.insert = insertelement <2 x double> poison, double %i.em, i64 0
  %i.en = load double, ptr %i.az, align 8, !tbaa !93
  %i.eo = load double, ptr %i.av, align 8, !tbaa !93
  %i.ep = fsub double %i.en, %i.eo                ; 3 uses
  %.sroa.6.32.vec.insert = insertelement <2 x double> %.sroa.6.24.vec.insert, double %i.ep, i64 1 ; 3 uses
  %i.eq = load double, ptr %i.ba, align 8, !tbaa !93
  %i.er = load double, ptr %i.ax, align 8, !tbaa !93
  %i.es = insertelement <2 x double> poison, double %i.ep, i64 0
  %i.et = insertelement <2 x double> poison, double %i.ej, i64 0 ; 2 uses
  %i.eu = insertelement <2 x double> %i.et, double %i.bb, i64 1
  %i.ev = insertelement <2 x double> %i.bh, double %i.ej, i64 1
  %i.ew = fneg double %i.em
  %i.ex = fmul <2 x double> %.sroa.6.32.vec.insert, %i.dz
  %i.ey = fadd <2 x double> %i.dx, %i.ex
  %i.ez = fmul double %i.ej, %i.ds
  %i.fa = fmul <2 x double> %.sroa.6.32.vec.insert, %i.eg
  %i.fb = fadd <2 x double> %i.ee, %i.fa
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.sroa.8.40.vec.extract = extractelement <2 x double> %i.du, i64 1
  %i.fc = bitcast double %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.sroa.8.40.vec.extract to <1 x double>
  %i.fd = shufflevector <1 x double> %i.fc, <1 x double> poison, <2 x i32> zeroinitializer
  %i.fe = fmul <2 x double> %.sroa.0.8.vec.insert, %i.fd
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.sroa.11.48.vec.extract = extractelement <2 x double> %i.dr, i64 0
  %i.ff = bitcast double %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.sroa.11.48.vec.extract to <1 x double>
  %i.fg = shufflevector <1 x double> %i.ff, <1 x double> poison, <2 x i32> zeroinitializer
  %i.fh = fmul <2 x double> %.sroa.6.32.vec.insert, %i.fg
  %i.fi = fadd <2 x double> %i.fe, %i.fh
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.sroa.11.56.vec.extract = extractelement <2 x double> %i.dr, i64 1
  %i.fj = bitcast double %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.sroa.11.56.vec.extract to <1 x double>
  %i.fk = shufflevector <1 x double> %i.fj, <1 x double> poison, <2 x i32> zeroinitializer
  %i.fl = fsub double %i.eq, %i.er                ; 3 uses
  %i.fm = insertelement <2 x double> %i.es, double %i.fl, i64 1
  %i.fn = fneg <2 x double> %i.fm
  %i.fo = fmul <2 x double> %i.eu, %i.fn
  %i.fp = insertelement <2 x double> poison, double %i.fl, i64 0 ; 2 uses
  %i.fq = insertelement <2 x double> %i.fp, double %i.em, i64 1
  %i.fr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ev, <2 x double> %i.fq, <2 x double> %i.fo) ; 3 uses
  %i.fs = fmul double %i.be, %i.ew
  %i.ft = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.ep, double %i.fs) ; 2 uses
  %i.fu = fmul <2 x double> %i.fr, %i.eb
  %i.fv = fadd <2 x double> %i.ey, %i.fu          ; 2 uses
  %i.fw = insertelement <2 x double> %i.fp, double %i.ft, i64 1 ; 2 uses
  %i.fx = fmul <2 x double> %i.do, %i.fw          ; 2 uses
  %shift309 = shufflevector <2 x double> %i.fx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop310 = fadd <2 x double> %i.fx, %shift309
  %i.fy = extractelement <2 x double> %foldExtExtBinop310, i64 0
  %i.fz = fadd double %i.ez, %i.fy
  store double %i.fz, ptr %.sroa.4.i.i.i.i, align 16, !tbaa !93
  %i.ga = fmul <2 x double> %i.fr, %i.ei
  %i.gb = fadd <2 x double> %i.fb, %i.ga
  store <2 x double> %i.gb, ptr %.sroa.4.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !97
  %i.gc = insertelement <2 x double> %i.et, double %i.fl, i64 1
  %i.gd = fmul <2 x double> %i.gc, %i.dt          ; 2 uses
  %i.ge = fmul <2 x double> %i.fr, %i.fk
  %i.gf = fadd <2 x double> %i.fi, %i.ge          ; 2 uses
  %i.gg = insertelement <2 x double> poison, double %i.ft, i64 0
  %i.gh = insertelement <2 x double> %i.gg, double %i.ej, i64 1
  %i.gi = fmul <2 x double> %i.du, %i.gh          ; 2 uses
  %shift312 = shufflevector <2 x double> %i.gd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop313 = fadd <2 x double> %shift312, %i.gi
  %foldExtExtBinop315 = fadd <2 x double> %i.gd, %foldExtExtBinop313
  %i.gj = extractelement <2 x double> %foldExtExtBinop315, i64 0
  store double %i.gj, ptr %.sroa.4.i.i.i.i.24.i.i.i.i.24.i.i.i.i.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx, align 8, !tbaa !93
  %i.gk = fmul <2 x double> %i.dr, %i.fw          ; 2 uses
  %shift317 = shufflevector <2 x double> %i.gk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop318 = fadd <2 x double> %i.gk, %shift317
  %shift320 = shufflevector <2 x double> %i.gi, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop321 = fadd <2 x double> %shift320, %foldExtExtBinop318 ; 2 uses
  %i.gl = extractelement <2 x double> %foldExtExtBinop321, i64 0
  %.sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i = load <2 x double>, ptr %.sroa.4.i.i.i.i, align 16, !tbaa !97 ; 3 uses
  store <2 x double> %.sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i, ptr %.sroa.4, align 16, !tbaa !97
  %.sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i = load <2 x double>, ptr %.sroa.4.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx, align 16, !tbaa !97 ; 2 uses
  store <2 x double> %.sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i, ptr %.sroa.4.16..sroa_idx331, align 16, !tbaa !97
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  %i.gm = load ptr, ptr %i.i, align 8, !tbaa !73
  %i.gn = getelementptr inbounds nuw [48 x i8], ptr %i.gm, i64 %indvars.iv ; 5 uses
  %i.go = load ptr, ptr %1, align 8, !tbaa !73
  %i.gp = getelementptr inbounds nuw [48 x i8], ptr %i.go, i64 %indvars.iv ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i28)
  %i.gq = load <2 x double>, ptr %i.gn, align 16  ; 2 uses
  %i.gr = shufflevector <2 x double> %i.gq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gs = fmul <2 x double> %i.fv, %i.gr
  %.sroa.4.8..sroa.4.8..sroa.4.24. = load <2 x double>, ptr %.sroa.4.8..sroa_idx330, align 8, !tbaa !97 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gu = load <2 x double>, ptr %i.gt, align 8   ; 2 uses
  %i.gv = shufflevector <2 x double> %i.gu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gw = fmul <2 x double> %.sroa.4.8..sroa.4.8..sroa.4.24., %i.gv
  %i.gx = fadd <2 x double> %i.gs, %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gz = load <2 x double>, ptr %i.gy, align 16  ; 4 uses
  %i.ha = shufflevector <2 x double> %i.gz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hb = fmul <2 x double> %i.gf, %i.ha
  %i.hc = fadd <2 x double> %i.gx, %i.hb
  %foldExtExtBinop323 = fmul <2 x double> %i.gq, %.sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i
  %i.hd = extractelement <2 x double> %foldExtExtBinop323, i64 0
  %i.he = extractelement <2 x double> %.sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i, i64 1 ; 2 uses
  %i.hf = extractelement <2 x double> %i.gu, i64 0
  %i.hg = fmul double %i.hf, %i.he
  %foldExtExtBinop325 = fmul <2 x double> %foldExtExtBinop321, %i.gz
  %i.hh = extractelement <2 x double> %foldExtExtBinop325, i64 0
  %i.hi = fadd double %i.hh, %i.hg
  %i.hj = fadd double %i.hd, %i.hi
  store double %i.hj, ptr %.sroa.4.i.i.i.i28, align 16, !tbaa !93
  %i.hk = shufflevector <2 x double> %i.gz, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hl = fmul <2 x double> %i.fv, %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gn, i64 32
  %i.hn = load double, ptr %i.hm, align 16, !tbaa !93 ; 2 uses
  %i.ho = insertelement <2 x double> poison, double %i.hn, i64 0
  %i.hp = shufflevector <2 x double> %i.ho, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hq = fmul <2 x double> %.sroa.4.8..sroa.4.8..sroa.4.24., %i.hp
  %i.hr = fadd <2 x double> %i.hl, %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gn, i64 40
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !93 ; 2 uses
  %i.hu = insertelement <2 x double> poison, double %i.ht, i64 0
  %i.hv = shufflevector <2 x double> %i.hu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hw = fmul <2 x double> %i.gf, %i.hv
  %i.hx = fadd <2 x double> %i.hr, %i.hw
  store <2 x double> %i.hx, ptr %.sroa.4.i.i.i.i28.8.i.i.i.i28.8.i.i.i.i28.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !97
  %shift327 = shufflevector <2 x double> %i.gz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop328 = fmul <2 x double> %.sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i, %shift327
  %i.hy = extractelement <2 x double> %foldExtExtBinop328, i64 0
  %i.hz = fmul double %i.he, %i.hn
  %i.ia = fmul double %i.gl, %i.ht
  %i.ib = fadd double %i.hz, %i.ia
  %i.ic = fadd double %i.hy, %i.ib
  store double %i.ic, ptr %.sroa.4.i.i.i.i28.24.i.i.i.i28.24.i.i.i.i28.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx, align 8, !tbaa !93
  store <2 x double> %i.hc, ptr %i.gp, align 16, !tbaa !97
  %i.id = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %.sroa.4.i.i.i.i28.0..sroa.4.i.i.i.i28.0..sroa.4.i.i.i.i28.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i31 = load <2 x double>, ptr %.sroa.4.i.i.i.i28, align 16, !tbaa !97
  store <2 x double> %.sroa.4.i.i.i.i28.0..sroa.4.i.i.i.i28.0..sroa.4.i.i.i.i28.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i31, ptr %i.id, align 16, !tbaa !97
  %i.ie = getelementptr inbounds nuw i8, ptr %i.gp, i64 32
  %.sroa.4.i.i.i.i28.16..sroa.4.i.i.i.i28.16..sroa.4.i.i.i.i28.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i33 = load <2 x double>, ptr %.sroa.4.i.i.i.i28.16.i.i.i.i28.16.i.i.i.i28.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx, align 16, !tbaa !97
  store <2 x double> %.sroa.4.i.i.i.i28.16..sroa.4.i.i.i.i28.16..sroa.4.i.i.i.i28.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i33, ptr %i.ie, align 16, !tbaa !97
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i28)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.if = load i64, ptr %i.b, align 8, !tbaa !98  ; 2 uses
  %i.ig = icmp sgt i64 %i.if, %indvars.iv.next
  br i1 %i.ig, label %bb.b, label %._crit_edge, !llvm.loop !345
}

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

declare void @_ZN3igl25vertex_triangle_adjacencyIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEiEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERSt6vectorISE_IT1_SaISF_EESaISH_EESK_(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

declare void @_ZN3igl17cotmatrix_entriesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

declare void @_ZN3igl9cotmatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_12SparseMatrixIT1_Li0EiEE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #7
end_hunk_0
