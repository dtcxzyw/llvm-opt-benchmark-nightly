Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinympc/original/quadrotor_linear_constraints?download=true
inline.NumInlined: 1802
inline.NumDeleted: 936
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 28
begin_hunk_0_@main:bb.a
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 28
  store i32 0, ptr %i.dj, align 4, !tbaa !76
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  store i32 1, ptr %i.dk, align 8, !tbaa !77
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 44
  store i32 1, ptr %i.dl, align 4, !tbaa !78
  %i.dm = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !79 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #15
  %i.do = getelementptr inbounds nuw i8, ptr %20, i64 8
  store <2 x double> splat (double -2.000000e+00), ptr %20, align 16, !tbaa !29
  %i.dp = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 8 uses
  store double 1.000000e+00, ptr %i.dp, align 16, !tbaa !29
  %i.dq = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.dr = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %20, i64 48 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %20, i64 64 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %20, i64 80 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dq, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #15
  store <2 x double> splat (double 2.000000e+00), ptr %21, align 16, !tbaa !29
  %i.dv = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  store double 4.000000e+00, ptr %i.dv, align 16, !tbaa !29
  %i.dw = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.dx = getelementptr inbounds nuw i8, ptr %21, i64 80
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dn, i64 1224
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dn, i64 1232
  %i.ea = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dn, i64 40 ; 6 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dn, i64 1160
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dn, i64 1184
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dn, i64 1208
  %i.eg = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %.sroa.5416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 16
  %.sroa.6417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 24 ; 2 uses
  %.sroa.7418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 32
  %.sroa.8419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 40
  %.sroa.10421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 56
  %.sroa.11422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 64
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 80
  %i.eh = getelementptr inbounds nuw i8, ptr %23, i64 96 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dw, i8 0, i64 72, i1 false)
  %i.en = load <2 x double>, ptr %i.dv, align 16  ; 2 uses
  %i.eo = fmul <2 x double> %i.en, splat (double 2.000000e-02)
  %i.ep = extractelement <2 x double> %i.en, i64 0
  br label %.preheader

.preheader:                                       ; preds = %bb.x, %bb.bi
  %indvars.iv718 = phi i64 [ 0, %bb.x ], [ %indvars.iv.next719, %bb.bi ] ; 2 uses
  br label %bb.as

bb.y:                                             ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15
  call void @free(ptr noundef %calloc) #15
  call void @free(ptr noundef %calloc746) #15
  %i.eq = load ptr, ptr %8, align 8, !tbaa !25
  call void @free(ptr noundef %i.eq) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  %i.er = load ptr, ptr %7, align 8, !tbaa !25
  call void @free(ptr noundef %i.er) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.es = load ptr, ptr %5, align 8, !tbaa !18
  call void @free(ptr noundef %i.es) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.et = load ptr, ptr %3, align 8, !tbaa !18
  call void @free(ptr noundef %i.et) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 0

bb.z:                                             ; preds = %.invoke753
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %.body152

bb.aa:                                            ; preds = %.invoke749
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ab:                                            ; preds = %.sink.split.i340
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ac:                                            ; preds = %bb.p
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_15DiagonalWrapperIKNS0_IdLin1ELi1ELi0ELin1ELi1EEEEEEERKNS_9EigenBaseIT_EE.exit158
  %i.ey = landingpad { ptr, i32 }
          cleanup
  %i.ez = load ptr, ptr %14, align 8, !tbaa !18
  call void @free(ptr noundef %i.ez) #15
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.ey, %bb.ad ], [ %i.ex, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  %i.fa = load ptr, ptr %12, align 8, !tbaa !18
  call void @free(ptr noundef %i.fa) #15
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ab
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ae ], [ %i.ew, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  br label %.body156

.body156:                                         ; preds = %bb.o, %bb.af
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.af ], [ %i.bs, %bb.o ]
  %i.fb = load ptr, ptr %11, align 8, !tbaa !18
  call void @free(ptr noundef %i.fb) #15
  %i.fc = load ptr, ptr %10, align 8, !tbaa !18
  call void @free(ptr noundef %i.fc) #15
  br label %bb.ag

bb.ag:                                            ; preds = %.body156, %bb.aa
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body156 ], [ %i.ev, %bb.aa ]
  %i.fd = load ptr, ptr %9, align 8, !tbaa !18
  call void @free(ptr noundef %i.fd) #15
  br label %.body152

bb.ah:                                            ; preds = %bb.s
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %.body177

bb.ai:                                            ; preds = %bb.t
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.aj:                                            ; preds = %bb.u
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.ak:                                            ; preds = %bb.v
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.al:                                            ; preds = %bb.w
  %i.fi = landingpad { ptr, i32 }
          cleanup
  %i.fj = load ptr, ptr %19, align 8, !tbaa !25
  call void @free(ptr noundef %i.fj) #15
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.pn88 = phi { ptr, i32 } [ %i.fi, %bb.al ], [ %i.fh, %bb.ak ]
  %i.fk = load ptr, ptr %18, align 8, !tbaa !18
  call void @free(ptr noundef %i.fk) #15
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.aj
  %.pn88.pn = phi { ptr, i32 } [ %.pn88, %bb.am ], [ %i.fg, %bb.aj ]
  %i.fl = load ptr, ptr %17, align 8, !tbaa !25
  call void @free(ptr noundef %i.fl) #15
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ai
  %.pn88.pn.pn = phi { ptr, i32 } [ %.pn88.pn, %bb.an ], [ %i.ff, %bb.ai ]
  %i.fm = load ptr, ptr %16, align 8, !tbaa !18
  call void @free(ptr noundef %i.fm) #15
  br label %.body177

bb.ap:                                            ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi12ELi1ELi0ELi12ELi1EEEEESF_EESJ_EEEERS3_RKNS_9DenseBaseIT_EE.exit
  %i.fn = load ptr, ptr %i.a, align 8, !tbaa !70
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  %i.fo = call noalias dereferenceable_or_null(96) ptr @malloc(i64 noundef 96) #16 ; 8 uses
  %i.fp = icmp eq ptr %i.fo, null
  br i1 %i.fp, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %i.fq = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.fq, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.fq, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc.i.i296 unwind label %bb.ar

.noexc.i.i296:                                    ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %bb.aq
  %i.fr = landingpad { ptr, i32 }
          cleanup
  %i.fs = load ptr, ptr %22, align 8, !tbaa !25
  call void @free(ptr noundef %i.fs) #15
  br label %.body297

bb.as:                                            ; preds = %.preheader, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi12ELi1ELi0ELi12ELi1EEEEESF_EESJ_EEEERS3_RKNS_9DenseBaseIT_EE.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi12ELi1ELi0ELi12ELi1EEEEESF_EESJ_EEEERS3_RKNS_9DenseBaseIT_EE.exit ] ; 5 uses
  %24 = shl nuw nsw i64 %indvars.iv, 3
  %25 = shl nuw nsw i64 %indvars.iv, 3
  %i.ft = add nuw nsw i64 %indvars.iv, %indvars.iv718
  %i.fu = trunc nuw nsw i64 %i.ft to i32
  %i.fv = uitofp nneg i32 %i.fu to double
  %i.fw = fdiv double %i.fv, 4.900000e+01         ; 10 uses
  %i.fx = fsub double 1.000000e+00, %i.fw         ; 9 uses
  %i.fy = load ptr, ptr %i.dy, align 8, !tbaa !18, !noalias !80 ; 3 uses
  %i.fz = ptrtoaddr ptr %i.fy to i64              ; 2 uses
  %i.ga = load i64, ptr %i.dz, align 8, !tbaa !19, !noalias !80 ; 11 uses
  %i.gb = mul nsw i64 %i.ga, %indvars.iv
  %.not.i.i.i.i.i299 = icmp eq ptr %i.fy, null
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.fy, i64 %i.gb ; 10 uses
  %i.gd = select i1 %.not.i.i.i.i.i299, ptr null, ptr %i.gc
  %.sroa.3.16.vec.insert.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.fx, i64 0
  %.sroa.1122.48.vec.insert.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.fw, i64 0
  %i.ge = ptrtoint ptr %i.gd to i64               ; 2 uses
  %i.gf = and i64 %i.ge, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gf, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.at, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

bb.at:                                            ; preds = %bb.as
  %i.gg = lshr exact i64 %i.ge, 3
  %i.gh = and i64 %i.gg, 1
  %i.gi = call i64 @llvm.smin.i64(i64 %i.gh, i64 %i.ga)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.at, %bb.as
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gi, %bb.at ], [ %i.ga, %bb.as ] ; 11 uses
  %i.gj = sub nsw i64 %i.ga, %.0.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.gk = sdiv i64 %i.gj, 2
  %i.gl = shl nsw i64 %i.gk, 1                    ; 2 uses
  %i.gm = add nsw i64 %i.gl, %.0.i.i.i.i.i.i.i.i.i.i.i ; 6 uses
  %i.gn = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.gn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNSB_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi12ELi1ELi0ELi12ELi1EEEEESK_EESO_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %min.iters.check763 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 4
  br i1 %min.iters.check763, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader782, label %vector.memcheck760

vector.memcheck760:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %26 = sub i64 %i.fz, %i.b
  %i.go = mul i64 %i.ga, %24
  %i.gp = add i64 %26, %i.go
  %27 = add i64 %i.gp, -1
  %diff.check761 = icmp ult i64 %27, 31
  br i1 %diff.check761, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader782, label %vector.ph764

vector.ph764:                                     ; preds = %vector.memcheck760
  %n.vec765 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  %broadcast.splatinsert766 = insertelement <2 x double> poison, double %i.fx, i64 0
  %broadcast.splat767 = shufflevector <2 x double> %broadcast.splatinsert766, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert768 = insertelement <2 x double> poison, double %i.fw, i64 0
  %broadcast.splat769 = shufflevector <2 x double> %broadcast.splatinsert768, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body770

vector.body770:                                   ; preds = %vector.body770, %vector.ph764
  %index771 = phi i64 [ 0, %vector.ph764 ], [ %index.next776, %vector.body770 ] ; 4 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %index771 ; 2 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %20, i64 %index771 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %wide.load772 = load <2 x double>, ptr %i.gr, align 16, !tbaa !29
  %wide.load773 = load <2 x double>, ptr %i.gs, align 16, !tbaa !29
  %i.gt = fmul <2 x double> %broadcast.splat767, %wide.load772
  %i.gu = fmul <2 x double> %broadcast.splat767, %wide.load773
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %21, i64 %index771 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %wide.load774 = load <2 x double>, ptr %i.gv, align 16, !tbaa !29
  %wide.load775 = load <2 x double>, ptr %i.gw, align 16, !tbaa !29
  %i.gx = fmul <2 x double> %broadcast.splat769, %wide.load774
  %i.gy = fmul <2 x double> %broadcast.splat769, %wide.load775
  %i.gz = fadd <2 x double> %i.gt, %i.gx
  %i.ha = fadd <2 x double> %i.gu, %i.gy
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  store <2 x double> %i.gz, ptr %i.gq, align 8, !tbaa !29
  store <2 x double> %i.ha, ptr %i.hb, align 8, !tbaa !29
  %index.next776 = add nuw i64 %index771, 4       ; 2 uses
  %i.hc = icmp eq i64 %index.next776, %n.vec765
  br i1 %i.hc, label %middle.block777, label %vector.body770, !llvm.loop !58

middle.block777:                                  ; preds = %vector.body770
  %cmp.n778 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i, %n.vec765
  br i1 %cmp.n778, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNSB_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi12ELi1ELi0ELi12ELi1EEEEESK_EESO_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader782

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader782:        ; preds = %vector.memcheck760, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block777
  %.05.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck760 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec765, %middle.block777 ] ; 6 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader782
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.ph
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %20, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.ph
  %i.hf = load double, ptr %i.he, align 16, !tbaa !29
  %i.hg = fmul double %i.fx, %i.hf
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %21, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.ph
  %i.hi = load double, ptr %i.hh, align 16, !tbaa !29
  %i.hj = fmul double %i.fw, %i.hi
  %i.hk = fadd double %i.hg, %i.hj
  store double %i.hk, ptr %i.hd, align 8, !tbaa !29
  %i.hl = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader782
  %.05.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader782 ], [ %i.hl, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.hm = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i, %.neg
  br i1 %i.hm, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNSB_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi12ELi1ELi0ELi12ELi1EEEEESK_EESO_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ie, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %20, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !29
  %i.hq = fmul double %i.fx, %i.hp
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %21, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !29
  %i.ht = fmul double %i.fw, %i.hs
  %i.hu = fadd double %i.hq, %i.ht
  store double %i.hu, ptr %i.hn, align 8, !tbaa !29
  %i.hv = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %i.hv
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %20, i64 %i.hv
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !29
  %i.hz = fmul double %i.fx, %i.hy
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %21, i64 %i.hv
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !29
  %i.ic = fmul double %i.fw, %i.ib
  %i.id = fadd double %i.hz, %i.ic
  store double %i.id, ptr %i.hw, align 8, !tbaa !29
  %i.ie = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.ie, %.0.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNSB_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi12ELi1ELi0ELi12ELi1EEEEESK_EESO_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !59

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNSB_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi12ELi1ELi0ELi12ELi1EEEEESK_EESO_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %middle.block777, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.if = icmp sgt i64 %i.gj, 1
  br i1 %i.if, label %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i:             ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNSB_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi12ELi1ELi0ELi12ELi1EEEEESK_EESO_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.ig = shufflevector <2 x double> %.sroa.3.16.vec.insert.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ih = shufflevector <2 x double> %.sroa.1122.48.vec.insert.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i300

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i300, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNSB_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi12ELi1ELi0ELi12ELi1EEEEESK_EESO_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.ii = icmp slt i64 %i.gm, %i.ga
  br i1 %i.ii, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi12ELi1ELi0ELi12ELi1EEEEESF_EESJ_EEEERS3_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.ij = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i, %i.gl
  %i.ik = sub i64 %i.ga, %i.ij                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.ik, 4
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader781, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader
  %28 = sub i64 %i.fz, %i.b
  %i.il = mul i64 %i.ga, %25
  %i.im = add i64 %28, %i.il
  %29 = add i64 %i.im, -1
  %diff.check = icmp ult i64 %29, 31
  br i1 %diff.check, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader781, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ik, -4                      ; 3 uses
  %i.in = add i64 %i.gm, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.fx, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert755 = insertelement <2 x double> poison, double %i.fw, i64 0
  %broadcast.splat756 = shufflevector <2 x double> %broadcast.splatinsert755, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.io = add i64 %i.gm, %index                   ; 3 uses
  %i.ip = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %i.io ; 2 uses
  %i.iq = getelementptr inbounds [8 x i8], ptr %20, i64 %i.io ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %wide.load = load <2 x double>, ptr %i.iq, align 8, !tbaa !29
  %wide.load757 = load <2 x double>, ptr %i.ir, align 8, !tbaa !29
  %i.is = fmul <2 x double> %broadcast.splat, %wide.load
  %i.it = fmul <2 x double> %broadcast.splat, %wide.load757
  %i.iu = getelementptr inbounds [8 x i8], ptr %21, i64 %i.io ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %wide.load758 = load <2 x double>, ptr %i.iu, align 8, !tbaa !29
  %wide.load759 = load <2 x double>, ptr %i.iv, align 8, !tbaa !29
  %i.iw = fmul <2 x double> %broadcast.splat756, %wide.load758
  %i.ix = fmul <2 x double> %broadcast.splat756, %wide.load759
  %i.iy = fadd <2 x double> %i.is, %i.iw
  %i.iz = fadd <2 x double> %i.it, %i.ix
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  store <2 x double> %i.iy, ptr %i.ip, align 8, !tbaa !29
  store <2 x double> %i.iz, ptr %i.ja, align 8, !tbaa !29
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jb = icmp eq i64 %index.next, %n.vec
  br i1 %i.jb, label %middle.block, label %vector.body, !llvm.loop !60

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ik, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi12ELi1ELi0ELi12ELi1EEEEESF_EESJ_EEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader781

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader781:      ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.gm, %vector.memcheck ], [ %i.gm, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.in, %middle.block ] ; 7 uses
  %i.jc = sub i64 %i.ga, %.05.i18.i.i.i.i.i.i.i.i.i.i.ph
  %.neg786 = add i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter784 = and i64 %i.jc, 1
  %lcmp.mod785.not = icmp eq i64 %xtraiter784, 0
  br i1 %lcmp.mod785.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader781
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.ph
  %i.je = getelementptr inbounds [8 x i8], ptr %20, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.ph
  %i.jf = load double, ptr %i.je, align 8, !tbaa !29
  %i.jg = fmul double %i.fx, %i.jf
  %i.jh = getelementptr inbounds [8 x i8], ptr %21, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.ph
  %i.ji = load double, ptr %i.jh, align 8, !tbaa !29
  %i.jj = fmul double %i.fw, %i.ji
  %i.jk = fadd double %i.jg, %i.jj
  store double %i.jk, ptr %i.jd, align 8, !tbaa !29
  %i.jl = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit:     ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader781
  %.05.i18.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader781 ], [ %i.jl, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.jm = icmp eq i64 %i.ga, %.neg786
  br i1 %i.jm, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi12ELi1ELi0ELi12ELi1EEEEESF_EESJ_EEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ke, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.jn = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i
  %i.jo = getelementptr inbounds [8 x i8], ptr %20, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !29
  %i.jq = fmul double %i.fx, %i.jp
  %i.jr = getelementptr inbounds [8 x i8], ptr %21, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i
  %i.js = load double, ptr %i.jr, align 8, !tbaa !29
  %i.jt = fmul double %i.fw, %i.js
  %i.ju = fadd double %i.jq, %i.jt
  store double %i.ju, ptr %i.jn, align 8, !tbaa !29
  %i.jv = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.jw = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %i.jv
  %i.jx = getelementptr inbounds [8 x i8], ptr %20, i64 %i.jv
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !29
  %i.jz = fmul double %i.fx, %i.jy
  %i.ka = getelementptr inbounds [8 x i8], ptr %21, i64 %i.jv
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !29
  %i.kc = fmul double %i.fw, %i.kb
  %i.kd = fadd double %i.jz, %i.kc
  store double %i.kd, ptr %i.jw, align 8, !tbaa !29
  %i.ke = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.ke, %i.ga
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi12ELi1ELi0ELi12ELi1EEEEESF_EESJ_EEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i, !llvm.loop !61

.lr.ph.i.i.i.i.i.i.i.i.i.i300:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i300, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.kn, %.lr.ph.i.i.i.i.i.i.i.i.i.i300 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.kf = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %.021.i.i.i.i.i.i.i.i.i.i
  %i.kg = getelementptr inbounds [8 x i8], ptr %20, i64 %.021.i.i.i.i.i.i.i.i.i.i
  %i.kh = load <2 x double>, ptr %i.kg, align 8, !tbaa !27
  %i.ki = fmul <2 x double> %i.ig, %i.kh
  %i.kj = getelementptr inbounds [8 x i8], ptr %21, i64 %.021.i.i.i.i.i.i.i.i.i.i
  %i.kk = load <2 x double>, ptr %i.kj, align 8, !tbaa !27
  %i.kl = fmul <2 x double> %i.ih, %i.kk
  %i.km = fadd <2 x double> %i.ki, %i.kl
  store <2 x double> %i.km, ptr %i.kf, align 16, !tbaa !27
  %i.kn = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ko = icmp slt i64 %i.kn, %i.gm
  br i1 %i.ko, label %.lr.ph.i.i.i.i.i.i.i.i.i.i300, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, !llvm.loop !62

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi12ELi1ELi0ELi12ELi1EEEEESF_EESJ_EEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10
  br i1 %exitcond.not, label %bb.ap, label %bb.as, !llvm.loop !63

bb.au:                                            ; preds = %bb.ap
  store ptr %i.fo, ptr %22, align 8, !tbaa !25
  store i64 12, ptr %i.ea, align 8, !tbaa !26
  %i.kp = load <2 x double>, ptr %20, align 16, !tbaa !27
  store <2 x double> %i.kp, ptr %i.fo, align 16, !tbaa !27
  %i.kq = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.kr = load <2 x double>, ptr %i.dp, align 16, !tbaa !27
  store <2 x double> %i.kr, ptr %i.kq, align 16, !tbaa !27
  %i.ks = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  %i.kt = load <2 x double>, ptr %i.dr, align 16, !tbaa !27
  store <2 x double> %i.kt, ptr %i.ks, align 16, !tbaa !27
  %i.ku = getelementptr inbounds nuw i8, ptr %i.fo, i64 48
  %i.kv = load <2 x double>, ptr %i.ds, align 16, !tbaa !27
  store <2 x double> %i.kv, ptr %i.ku, align 16, !tbaa !27
  %i.kw = getelementptr inbounds nuw i8, ptr %i.fo, i64 64
  %i.kx = load <2 x double>, ptr %i.dt, align 16, !tbaa !27
  store <2 x double> %i.kx, ptr %i.kw, align 16, !tbaa !27
  %i.ky = getelementptr inbounds nuw i8, ptr %i.fo, i64 80
  %i.kz = load <2 x double>, ptr %i.du, align 16, !tbaa !27
  store <2 x double> %i.kz, ptr %i.ky, align 16, !tbaa !27
  %i.la = invoke i32 @tiny_set_x0(ptr noundef %i.fn, ptr nofreeobj noundef nonnull align 8 dereferenceable(16) %22)
          to label %bb.av unwind label %bb.az     ; 0 uses

bb.av:                                            ; preds = %bb.au
  %i.lb = load ptr, ptr %22, align 8, !tbaa !25
  call void @free(ptr noundef %i.lb) #15
  %i.lc = load ptr, ptr %i.a, align 8, !tbaa !70
  %i.ld = invoke i32 @tiny_solve(ptr noundef %i.lc)
          to label %.lr.ph85.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.lr.ph85.i.i.i.i.i:                               ; preds = %bb.av
  %i.le = load <2 x double>, ptr %20, align 16, !tbaa !27
  %i.lf = load double, ptr %i.dp, align 16, !tbaa !29
  %i.lg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 16)
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.aw:                                            ; preds = %.lr.ph85.i.i.i.i.i
  %i.lh = fadd <2 x double> %i.le, splat (double -2.000000e+00) ; 2 uses
  %i.li = fmul <2 x double> %i.lh, %i.lh          ; 2 uses
  %shift = shufflevector <2 x double> %i.li, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.li, %shift
  %i.lj = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.lk = fsub double %i.lf, %i.ep                ; 2 uses
  %i.ll = fmul double %i.lk, %i.lk
  %i.lm = fadd double %i.lj, %i.ll
  %.scalar.i = call noundef double @llvm.sqrt.f64(double %i.lm)
  %i.ln = load ptr, ptr @_ZSt4cout, align 8, !tbaa !15
  %i.lo = getelementptr i8, ptr %i.ln, i64 -24
  %i.lp = load i64, ptr %i.lo, align 8
  %i.lq = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.lp
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  store i64 3, ptr %i.lr, align 8, !tbaa !91
  %i.ls = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %.scalar.i)
          to label %_ZNSolsEd.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEd.exit:                                   ; preds = %bb.aw
  %i.lt = load double, ptr %i.dp, align 16, !tbaa !29 ; 2 uses
  %i.lu = fcmp ogt double %i.lt, f0x400800008637BD06
  br i1 %i.lu, label %bb.ax, label %_ZNSolsEd.exit307

bb.ax:                                            ; preds = %_ZNSolsEd.exit
  %i.lv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.3, i64 noundef 24)
          to label %bb.ay unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ay:                                            ; preds = %bb.ax
  %i.lw = load ptr, ptr @_ZSt4cout, align 8, !tbaa !15
  %i.lx = getelementptr i8, ptr %i.lw, i64 -24
  %i.ly = load i64, ptr %i.lx, align 8
  %i.lz = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ly
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  store i64 2, ptr %i.ma, align 8, !tbaa !91
  %i.mb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.lt)
          to label %_ZNSolsEd.exit307 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.az:                                            ; preds = %bb.au
  %i.mc = landingpad { ptr, i32 }
          cleanup
  %i.md = load ptr, ptr %22, align 8, !tbaa !25
  call void @free(ptr noundef %i.md) #15
  br label %.body297

_ZNSolsEd.exit307:                                ; preds = %bb.ay, %_ZNSolsEd.exit
  %i.me = load ptr, ptr @_ZSt4cout, align 8, !tbaa !15
  %i.mf = getelementptr i8, ptr %i.me, i64 -24
  %i.mg = load i64, ptr %i.mf, align 8
  %i.mh = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.mg
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 240
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.mj, null
end_hunk_0
