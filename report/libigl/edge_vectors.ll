Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/edge_vectors?download=true
inline.NumInlined: 1708
inline.NumDeleted: 1040
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN3igl12edge_vectorsILb1EN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES4_S4_S3_S3_EEvRKNS1_10MatrixBaseIT0_EERKNS5_IT1_EERKNS5_IT2_EERKNS5_IT3_EERNS1_15PlainObjectBaseIT4_EERNSM_IT5_EE:bb.a
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.em = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit72
  %.043153 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.er, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit72 ] ; 4 uses
  br label %bb.l

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit72._crit_edge: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit72, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit72.preheader
  %i.eo = load ptr, ptr %9, align 8, !tbaa !21
  call void @free(ptr noundef %i.eo) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.ep = load ptr, ptr %8, align 8, !tbaa !21
  call void @free(ptr noundef %i.ep) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  ret void

bb.k:                                             ; preds = %._crit_edge.split
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit72: ; preds = %bb.o
  %i.er = add nuw nsw i64 %.043153, 1             ; 2 uses
  %i.es = load i64, ptr %i.b, align 8, !tbaa !71
  %i.et = icmp slt i64 %i.er, %i.es
  br i1 %i.et, label %.preheader, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit72._crit_edge, !llvm.loop !44

bb.l:                                             ; preds = %.preheader, %bb.o
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.pre-phi, %bb.o ] ; 7 uses
  %i.eu = load ptr, ptr %3, align 8, !tbaa !70
  %i.ev = load i64, ptr %i.ef, align 8, !tbaa !71
  %i.ew = mul nsw i64 %i.ev, %indvars.iv
  %i.ex = getelementptr [4 x i8], ptr %i.eu, i64 %.043153
  %i.ey = getelementptr [4 x i8], ptr %i.ex, i64 %i.ew
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !73
  %i.fa = icmp slt i32 %i.ez, 0
  br i1 %i.fa, label %._crit_edge, label %bb.m

._crit_edge:                                      ; preds = %bb.l
  %.pre = add nuw nsw i64 %indvars.iv, 1
  br label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.fb = load ptr, ptr %2, align 8, !tbaa !70
  %i.fc = load i64, ptr %i.b, align 8, !tbaa !71
  %i.fd = mul nsw i64 %i.fc, %indvars.iv
  %i.fe = getelementptr [4 x i8], ptr %i.fb, i64 %.043153
  %i.ff = getelementptr [4 x i8], ptr %i.fe, i64 %i.fd
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !73
  %i.fh = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %.cmp.not = icmp eq i64 %indvars.iv, 2
  %i.fi = select i1 %.cmp.not, i64 0, i64 %i.fh
  %i.fj = load ptr, ptr %1, align 8, !tbaa !70
  %i.fk = load i64, ptr %i.eg, align 8, !tbaa !71 ; 2 uses
  %i.fl = mul nsw i64 %i.fk, %i.fi
  %i.fm = getelementptr [4 x i8], ptr %i.fj, i64 %.043153 ; 2 uses
  %i.fn = getelementptr [4 x i8], ptr %i.fm, i64 %i.fl
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !73
  %.cmp143 = icmp eq i64 %indvars.iv, 0
  %i.fp = add i64 %indvars.iv, 4294967295
  %i.fq = and i64 %i.fp, 4294967295
  %i.fr = select i1 %.cmp143, i64 2, i64 %i.fq
  %i.fs = mul nsw i64 %i.fk, %i.fr
  %i.ft = getelementptr [4 x i8], ptr %i.fm, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.fv = sext i32 %i.fu to i64                   ; 2 uses
  %i.fw = load ptr, ptr %0, align 8, !tbaa !21, !noalias !77 ; 2 uses
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.fw, i64 %i.fv
  %i.fy = load i64, ptr %i.eh, align 8, !tbaa !18, !noalias !77 ; 2 uses
  %i.fz = sext i32 %i.fo to i64                   ; 2 uses
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.fw, i64 %i.fz
  store ptr %i.fx, ptr %11, align 8
  store i64 %i.fy, ptr %.sroa.5118.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.6119.0..sroa_idx, align 8
  store i64 %i.fv, ptr %.sroa.7120.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.8121.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.9122.0..sroa_idx, align 8
  store ptr %i.ga, ptr %i.ei, align 8
  store i64 %i.fy, ptr %.sroa.5111.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.6112.0..sroa_idx, align 8
  store i64 %i.fz, ptr %.sroa.7113.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.8114.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.9115.0..sroa_idx, align 8
  invoke void @_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE10normalizedEv(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix.16") align 8 %10, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.gb = sext i32 %i.fg to i64                   ; 5 uses
  %i.gc = load ptr, ptr %4, align 8, !tbaa !21, !noalias !78 ; 2 uses
  %i.gd = ptrtoaddr ptr %i.gc to i64
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %i.gb ; 6 uses
  %i.gf = load i64, ptr %i.ej, align 8, !tbaa !18, !noalias !78 ; 7 uses
  %i.gg = load ptr, ptr %10, align 8, !tbaa !26   ; 8 uses
  %i.gh = ptrtoaddr ptr %i.gg to i64
  %i.gi = load i64, ptr %i.ek, align 8, !tbaa !17 ; 6 uses
  %i.gj = icmp sgt i64 %i.gf, 0
  br i1 %i.gj, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %bb.n
  %min.iters.check215 = icmp ugt i64 %i.gf, 7
  %ident.check213.not = icmp eq i64 %i.gi, 1
  %or.cond = select i1 %min.iters.check215, i1 %ident.check213.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader228

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %i.gk = shl nsw i64 %i.gb, 3
  %i.gl = add i64 %i.gk, %i.gd
  %i.gm = sub i64 %i.gh, %i.gl
  %diff.check = icmp ugt i64 %i.gm, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader228, label %vector.ph216

vector.ph216:                                     ; preds = %vector.memcheck
  %n.vec217 = and i64 %i.gf, 9223372036854775804  ; 3 uses
  br label %vector.body218

vector.body218:                                   ; preds = %vector.body218, %vector.ph216
  %index219 = phi i64 [ 0, %vector.ph216 ], [ %index.next222, %vector.body218 ] ; 3 uses
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.ge, i64 %index219 ; 2 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %index219 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %wide.load220 = load <2 x double>, ptr %i.go, align 8, !tbaa !23
  %wide.load221 = load <2 x double>, ptr %i.gp, align 8, !tbaa !23
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  store <2 x double> %wide.load220, ptr %i.gn, align 8, !tbaa !23
  store <2 x double> %wide.load221, ptr %i.gq, align 8, !tbaa !23
  %index.next222 = add nuw i64 %index219, 4       ; 2 uses
  %i.gr = icmp eq i64 %index.next222, %n.vec217
  br i1 %i.gr, label %middle.block223, label %vector.body218, !llvm.loop !49

middle.block223:                                  ; preds = %vector.body218
  %cmp.n224 = icmp eq i64 %i.gf, %n.vec217
  br i1 %cmp.n224, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader228

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader228:          ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block223
  %.05.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec217, %middle.block223 ] ; 3 uses
  %xtraiter = and i64 %i.gf, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader228, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.gw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader228 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader228 ]
  %i.gs = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.prol, %i.gi
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.ge, i64 %i.gs
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %.05.i.i.i.i.i.i.i.i.i.i.prol
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !23
  store double %i.gv, ptr %i.gt, align 8, !tbaa !23
  %i.gw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !50

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader228
  %.05.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader228 ], [ %i.gw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.gx = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.ph, %i.gf
  %i.gy = icmp ugt i64 %i.gx, -4
  br i1 %i.gy, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hs, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.gz = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, %i.gi
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.ge, i64 %i.gz
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %.05.i.i.i.i.i.i.i.i.i.i
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !23
  store double %i.hc, ptr %i.ha, align 8, !tbaa !23
  %i.hd = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.he = mul nsw i64 %i.hd, %i.gi
  %i.hf = getelementptr inbounds [8 x i8], ptr %i.ge, i64 %i.he
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.hd
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !23
  store double %i.hh, ptr %i.hf, align 8, !tbaa !23
  %i.hi = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.hj = mul nsw i64 %i.hi, %i.gi
  %i.hk = getelementptr inbounds [8 x i8], ptr %i.ge, i64 %i.hj
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.hi
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !23
  store double %i.hm, ptr %i.hk, align 8, !tbaa !23
  %i.hn = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ho = mul nsw i64 %i.hn, %i.gi
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.ge, i64 %i.ho
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.hn
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !23
  store double %i.hr, ptr %i.hp, align 8, !tbaa !23
  %i.hs = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.hs, %i.gf
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !51

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block223, %bb.n
  call void @free(ptr noundef %i.gg) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  %i.ht = load ptr, ptr %9, align 8, !tbaa !21, !noalias !79
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.ht, i64 %i.gb ; 3 uses
  %i.hv = load i64, ptr %i.bk, align 8, !tbaa !17 ; 2 uses
  %i.hw = load double, ptr %i.hu, align 8, !tbaa !23 ; 3 uses
  %.sroa.098.0.vec.insert = insertelement <2 x double> poison, double %i.hw, i64 0
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.hu, i64 %i.hv
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !23 ; 4 uses
  %.sroa.098.8.vec.insert = insertelement <2 x double> %.sroa.098.0.vec.insert, double %i.hy, i64 1 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i73 = shl nsw i64 %i.hv, 4
  %i.hz = getelementptr inbounds i8, ptr %i.hu, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i73
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !23 ; 6 uses
  %i.ib = load ptr, ptr %4, align 8, !tbaa !21, !noalias !80
  %i.ic = getelementptr inbounds [8 x i8], ptr %i.ib, i64 %i.gb ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %i.id = fmul <2 x double> %.sroa.098.8.vec.insert, splat (double f0x3FEFFFFFFFFFFFFF) ; 3 uses
  %i.ie = fmul double %i.ia, f0x3FEFFFFFFFFFFFFF
  %.sroa.0.8.vec.extract.i.i.i.i.i.a = extractelement <2 x double> %i.id, i64 1
  %i.if = fmul double %i.ia, %.sroa.0.8.vec.extract.i.i.i.i.i.a ; 2 uses
  %13 = fsub double %i.if, %i.hw
  %14 = fadd double %i.hw, %i.if
  %15 = shufflevector <2 x double> %i.id, <2 x double> poison, <2 x i32> zeroinitializer
  %16 = fmul <2 x double> %.sroa.098.8.vec.insert, %15 ; 2 uses
  %17 = extractelement <2 x double> %16, i64 1
  %i.ig = fsub double %17, %i.ia
  %i.ih = insertelement <2 x double> <double f0x3C91A62633145C07, double poison>, double %i.ia, i64 1
  %18 = fadd <2 x double> %i.ih, %16
  %i.ii = insertelement <2 x double> poison, double %i.ia, i64 0
  %i.ij = insertelement <2 x double> %i.ii, double %i.hy, i64 1
  %i.ik = fmul <2 x double> %i.ij, %i.id          ; 2 uses
  %i.il = insertelement <2 x double> <double poison, double f0x3C91A62633145C07>, double %i.hy, i64 0
  %19 = fadd <2 x double> %i.il, %i.ik            ; 2 uses
  %i.im = extractelement <2 x double> %i.ik, i64 0
  %20 = fsub double %i.im, %i.hy
  %.sroa.12.56.vec.insert.i.i.i = insertelement <2 x double> %19, double %13, i64 1
  %i.in = insertelement <2 x double> %19, double %i.ig, i64 0
  %i.io = fmul double %i.ia, %i.ie
  %i.ip = fadd double %i.io, f0x3C91A62633145C07
  %i.iq = load i64, ptr %i.ek, align 8, !tbaa !17, !noalias !84 ; 2 uses
  %i.ir = load double, ptr %i.ic, align 8, !tbaa !23, !noalias !84 ; 2 uses
  %i.is = insertelement <2 x double> poison, double %i.ir, i64 0
  %i.it = shufflevector <2 x double> %i.is, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iu = fmul <2 x double> %18, %i.it
  %i.iv = getelementptr [8 x i8], ptr %i.ic, i64 %i.iq
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !23, !noalias !84 ; 2 uses
  %i.ix = insertelement <2 x double> poison, double %i.iw, i64 0
  %i.iy = shufflevector <2 x double> %i.ix, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iz = fmul <2 x double> %i.in, %i.iy
  %i.ja = fadd <2 x double> %i.iu, %i.iz
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %i.iq, 4
  %i.jb = getelementptr i8, ptr %i.ic, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !23, !noalias !84 ; 2 uses
  %i.jd = insertelement <2 x double> poison, double %i.jc, i64 0
  %i.je = shufflevector <2 x double> %i.jd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jf = fmul <2 x double> %.sroa.12.56.vec.insert.i.i.i, %i.je
  %i.jg = fadd <2 x double> %i.jf, %i.ja
  store <2 x double> %i.jg, ptr %12, align 16, !tbaa !11, !alias.scope !84
  %i.jh = fmul double %20, %i.ir
  %i.ji = fmul double %14, %i.iw
  %i.jj = fmul double %i.ip, %i.jc
  %i.jk = fadd double %i.ji, %i.jj
  %i.jl = fadd double %i.jh, %i.jk
  store double %i.jl, ptr %i.el, align 16, !tbaa !23, !alias.scope !84
  %i.jm = load ptr, ptr %5, align 8, !tbaa !21, !noalias !85
  %i.jn = getelementptr inbounds [8 x i8], ptr %i.jm, i64 %i.gb ; 6 uses
  %i.jo = load i64, ptr %i.em, align 8, !tbaa !18, !noalias !85 ; 7 uses
  %i.jp = load i64, ptr %i.en, align 8, !tbaa !17 ; 6 uses
  %i.jq = icmp sgt i64 %i.jo, 0
  br i1 %i.jq, label %.lr.ph.i.i.i.i.i.i.i.i.i.i74.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi3ELi1ELi0ELi3ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i74.preheader:           ; preds = %.loopexit
  %min.iters.check201 = icmp ugt i64 %i.jo, 3
  %ident.check.not = icmp eq i64 %i.jp, 1
  %or.cond226 = select i1 %min.iters.check201, i1 %ident.check.not, i1 false
  br i1 %or.cond226, label %vector.ph202, label %.lr.ph.i.i.i.i.i.i.i.i.i.i74.preheader227

vector.ph202:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i74.preheader
  %n.vec203 = and i64 %i.jo, 9223372036854775804  ; 3 uses
  br label %vector.body204

vector.body204:                                   ; preds = %vector.body204, %vector.ph202
  %index205 = phi i64 [ 0, %vector.ph202 ], [ %index.next208, %vector.body204 ] ; 3 uses
  %i.jr = getelementptr inbounds [8 x i8], ptr %i.jn, i64 %index205 ; 2 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %index205 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %wide.load206 = load <2 x double>, ptr %i.js, align 16, !tbaa !23
  %wide.load207 = load <2 x double>, ptr %i.jt, align 16, !tbaa !23
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  store <2 x double> %wide.load206, ptr %i.jr, align 8, !tbaa !23
  store <2 x double> %wide.load207, ptr %i.ju, align 8, !tbaa !23
  %index.next208 = add nuw i64 %index205, 4       ; 2 uses
  %i.jv = icmp eq i64 %index.next208, %n.vec203
  br i1 %i.jv, label %middle.block209, label %vector.body204, !llvm.loop !64

middle.block209:                                  ; preds = %vector.body204
  %cmp.n210 = icmp eq i64 %i.jo, %n.vec203
  br i1 %cmp.n210, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi3ELi1ELi0ELi3ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i74.preheader227

.lr.ph.i.i.i.i.i.i.i.i.i.i74.preheader227:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i74.preheader, %middle.block209
  %.05.i.i.i.i.i.i.i.i.i.i75.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i74.preheader ], [ %n.vec203, %middle.block209 ] ; 3 uses
  %xtraiter245 = and i64 %i.jo, 3                 ; 2 uses
  %lcmp.mod246.not = icmp eq i64 %xtraiter245, 0
  br i1 %lcmp.mod246.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i74.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i74.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i74.prol:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i74.preheader227, %.lr.ph.i.i.i.i.i.i.i.i.i.i74.prol
  %.05.i.i.i.i.i.i.i.i.i.i75.prol = phi i64 [ %i.ka, %.lr.ph.i.i.i.i.i.i.i.i.i.i74.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i75.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i74.preheader227 ] ; 3 uses
  %prol.iter247 = phi i64 [ %prol.iter247.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i74.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i74.preheader227 ]
  %i.jw = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i75.prol, %i.jp
  %i.jx = getelementptr inbounds [8 x i8], ptr %i.jn, i64 %i.jw
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %.05.i.i.i.i.i.i.i.i.i.i75.prol
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !23
  store double %i.jz, ptr %i.jx, align 8, !tbaa !23
  %i.ka = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i75.prol, 1 ; 2 uses
  %prol.iter247.next = add i64 %prol.iter247, 1   ; 2 uses
  %prol.iter247.cmp.not = icmp eq i64 %prol.iter247.next, %xtraiter245
  br i1 %prol.iter247.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i74.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i74.prol, !llvm.loop !65

.lr.ph.i.i.i.i.i.i.i.i.i.i74.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i74.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i74.preheader227
  %.05.i.i.i.i.i.i.i.i.i.i75.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i75.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i74.preheader227 ], [ %i.ka, %.lr.ph.i.i.i.i.i.i.i.i.i.i74.prol ]
  %i.kb = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i75.ph, %i.jo
  %i.kc = icmp ugt i64 %i.kb, -4
  br i1 %i.kc, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi3ELi1ELi0ELi3ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i74

.lr.ph.i.i.i.i.i.i.i.i.i.i74:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i74.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i74
  %.05.i.i.i.i.i.i.i.i.i.i75 = phi i64 [ %i.kw, %.lr.ph.i.i.i.i.i.i.i.i.i.i74 ], [ %.05.i.i.i.i.i.i.i.i.i.i75.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i74.prol.loopexit ] ; 6 uses
  %i.kd = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i75, %i.jp
  %i.ke = getelementptr inbounds [8 x i8], ptr %i.jn, i64 %i.kd
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %.05.i.i.i.i.i.i.i.i.i.i75
  %i.kg = load double, ptr %i.kf, align 8, !tbaa !23
  store double %i.kg, ptr %i.ke, align 8, !tbaa !23
  %i.kh = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i75, 1 ; 2 uses
  %i.ki = mul nsw i64 %i.kh, %i.jp
  %i.kj = getelementptr inbounds [8 x i8], ptr %i.jn, i64 %i.ki
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %i.kh
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !23
  store double %i.kl, ptr %i.kj, align 8, !tbaa !23
  %i.km = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i75, 2 ; 2 uses
  %i.kn = mul nsw i64 %i.km, %i.jp
  %i.ko = getelementptr inbounds [8 x i8], ptr %i.jn, i64 %i.kn
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %i.km
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !23
  store double %i.kq, ptr %i.ko, align 8, !tbaa !23
  %i.kr = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i75, 3 ; 2 uses
  %i.ks = mul nsw i64 %i.kr, %i.jp
  %i.kt = getelementptr inbounds [8 x i8], ptr %i.jn, i64 %i.ks
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %i.kr
  %i.kv = load double, ptr %i.ku, align 8, !tbaa !23
  store double %i.kv, ptr %i.kt, align 8, !tbaa !23
  %i.kw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i75, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i76.3 = icmp eq i64 %i.kw, %i.jo
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i76.3, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi3ELi1ELi0ELi3ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i74, !llvm.loop !66

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi3ELi1ELi0ELi3ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i74.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i74, %middle.block209, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi3ELi1ELi0ELi3ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %indvars.iv.next.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.fh, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi3ELi1ELi0ELi3ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit ] ; 2 uses
  %exitcond161.not = icmp eq i64 %indvars.iv.next.pre-phi, 3
  br i1 %exitcond161.not, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit72, label %bb.l, !llvm.loop !67

bb.p:                                             ; preds = %bb.m
  %i.kx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.k, %bb.j
  %.pn67.pn = phi { ptr, i32 } [ %i.kx, %bb.p ], [ %i.eq, %bb.k ], [ %i.ea, %bb.j ]
  %i.ky = load ptr, ptr %9, align 8, !tbaa !21
  call void @free(ptr noundef %i.ky) #14
  br label %.body

.body:                                            ; preds = %bb.i, %bb.q
  %.pn67.pn.pn = phi { ptr, i32 } [ %.pn67.pn, %bb.q ], [ %i.br, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.kz = load ptr, ptr %8, align 8, !tbaa !21
  call void @free(ptr noundef %i.kz) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  resume { ptr, i32 } %.pn67.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN3igl16per_face_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE10normalizedEv(ptr dead_on_unwind noalias writable sret(%"class.Eigen::Matrix.16") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.016.0.copyload = load ptr, ptr %1, align 8 ; 13 uses
  %.sroa.016.0.copyload32 = ptrtoaddr ptr %.sroa.016.0.copyload to i64 ; 2 uses
  %.sroa.718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.718.0.copyload = load ptr, ptr %.sroa.718.0..sroa_idx, align 8 ; 2 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.11.0.copyload = load ptr, ptr %.sroa.11.0..sroa_idx, align 8 ; 13 uses
  %.sroa.11.0.copyload33 = ptrtoaddr ptr %.sroa.11.0.copyload to i64 ; 2 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.15.0.copyload = load i64, ptr %.sroa.15.0..sroa_idx, align 8 ; 14 uses
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.19.0.copyload = load ptr, ptr %.sroa.19.0..sroa_idx, align 8 ; 2 uses
  %i.a = icmp eq i64 %.sroa.15.0.copyload, 0
  br i1 %i.a, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i1

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.718.0.copyload, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !17   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.19.0.copyload, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !17   ; 3 uses
  %i.f = load double, ptr %.sroa.016.0.copyload, align 8, !tbaa !23
  %i.g = load double, ptr %.sroa.11.0.copyload, align 8, !tbaa !23
  %i.h = fsub double %i.f, %i.g                   ; 2 uses
  %i.i = fmul double %i.h, %i.h                   ; 3 uses
  %i.j = icmp sgt i64 %.sroa.15.0.copyload, 1
  br i1 %i.j, label %.lr.ph.i.i.i.i.preheader, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEESA_EEE11squaredNormEv.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.b
  %i.k = add nsw i64 %.sroa.15.0.copyload, -1     ; 3 uses
  %xtraiter = and i64 %i.k, 1
  %i.l = icmp eq i64 %.sroa.15.0.copyload, 2
  br i1 %i.l, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter = and i64 %i.k, -2
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %.01724.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader.new ], [ %i.af, %.lr.ph.i.i.i.i ] ; 4 uses
  %.02223.i.i.i.i = phi double [ %i.i, %.lr.ph.i.i.i.i.preheader.new ], [ %i.ae, %.lr.ph.i.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i ]
  %i.m = mul nsw i64 %.01724.i.i.i.i, %i.c
  %i.n = getelementptr [8 x i8], ptr %.sroa.016.0.copyload, i64 %i.m
  %i.o = load double, ptr %i.n, align 8, !tbaa !23
  %i.p = mul nsw i64 %.01724.i.i.i.i, %i.e
  %i.q = getelementptr [8 x i8], ptr %.sroa.11.0.copyload, i64 %i.p
  %i.r = load double, ptr %i.q, align 8, !tbaa !23
  %i.s = fsub double %i.o, %i.r                   ; 2 uses
  %i.t = fmul double %i.s, %i.s
  %i.u = fadd double %.02223.i.i.i.i, %i.t
  %i.v = add nuw nsw i64 %.01724.i.i.i.i, 1       ; 2 uses
  %i.w = mul nsw i64 %i.v, %i.c
  %i.x = getelementptr [8 x i8], ptr %.sroa.016.0.copyload, i64 %i.w
  %i.y = load double, ptr %i.x, align 8, !tbaa !23
  %i.z = mul nsw i64 %i.v, %i.e
  %i.aa = getelementptr [8 x i8], ptr %.sroa.11.0.copyload, i64 %i.z
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !23
  %i.ac = fsub double %i.y, %i.ab                 ; 2 uses
  %i.ad = fmul double %i.ac, %i.ac
  %i.ae = fadd double %i.u, %i.ad                 ; 3 uses
end_hunk_0
