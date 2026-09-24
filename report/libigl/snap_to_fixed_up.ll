Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/snap_to_fixed_up?download=true
inline.NumInlined: 18317
inline.NumDeleted: 9926
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 115
loop-unroll.NumUnrolled: 157
loop-unroll.NumUnrolledNotLatch: 2
begin_hunk_0_@_ZN5Eigen8internal35apply_block_householder_on_the_leftINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEENS2_INS3_IfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEENS_11VectorBlockIKNS3_IfLi2ELi1ELi0ELi2ELi1EEELin1EEEEEvRT_RKT0_RKT1_b:bb.a
vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eg = add i64 %i.dv, %index                   ; 2 uses
  %i.eh = getelementptr inbounds [4 x i8], ptr %9, i64 %i.eg ; 2 uses
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.eg ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %wide.load = load <4 x float>, ptr %i.ei, align 4, !tbaa !12
  %wide.load91 = load <4 x float>, ptr %i.ej, align 4, !tbaa !12
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store <4 x float> %wide.load, ptr %i.eh, align 4, !tbaa !12
  store <4 x float> %wide.load91, ptr %i.ek, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.el = icmp eq i64 %index.next, %n.vec
  br i1 %i.el, label %middle.block, label %vector.body, !llvm.loop !869

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ed, %n.vec
  br i1 %cmp.n, label %.loopexit68, label %.lr.ph.i17.i.i.i.i.i.i.i.i30.preheader108

.lr.ph.i17.i.i.i.i.i.i.i.i30.preheader108:        ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i30.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.i.i31.ph = phi i64 [ %i.dv, %.lr.ph.i17.i.i.i.i.i.i.i.i30.preheader ], [ %i.ef, %middle.block ] ; 4 uses
  %i.em = sub i64 %i.dn, %.05.i18.i.i.i.i.i.i.i.i31.ph
  %xtraiter = and i64 %i.em, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i30.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i30.prol

.lr.ph.i17.i.i.i.i.i.i.i.i30.prol:                ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i30.preheader108, %.lr.ph.i17.i.i.i.i.i.i.i.i30.prol
  %.05.i18.i.i.i.i.i.i.i.i31.prol = phi i64 [ %i.eq, %.lr.ph.i17.i.i.i.i.i.i.i.i30.prol ], [ %.05.i18.i.i.i.i.i.i.i.i31.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i30.preheader108 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i17.i.i.i.i.i.i.i.i30.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i30.preheader108 ]
  %i.en = getelementptr inbounds [4 x i8], ptr %9, i64 %.05.i18.i.i.i.i.i.i.i.i31.prol
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.df, i64 %.05.i18.i.i.i.i.i.i.i.i31.prol
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !12
  store float %i.ep, ptr %i.en, align 4, !tbaa !12
  %i.eq = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i31.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i30.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i30.prol, !llvm.loop !870

.lr.ph.i17.i.i.i.i.i.i.i.i30.prol.loopexit:       ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i30.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i30.preheader108
  %.05.i18.i.i.i.i.i.i.i.i31.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i31.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i30.preheader108 ], [ %i.eq, %.lr.ph.i17.i.i.i.i.i.i.i.i30.prol ]
  %i.er = sub i64 %.05.i18.i.i.i.i.i.i.i.i31.ph, %i.dn
  %i.es = icmp ugt i64 %i.er, -4
  br i1 %i.es, label %.loopexit68, label %.lr.ph.i17.i.i.i.i.i.i.i.i30

.lr.ph.i17.i.i.i.i.i.i.i.i30:                     ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i30.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i30
  %.05.i18.i.i.i.i.i.i.i.i31 = phi i64 [ %i.fi, %.lr.ph.i17.i.i.i.i.i.i.i.i30 ], [ %.05.i18.i.i.i.i.i.i.i.i31.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i30.prol.loopexit ] ; 6 uses
  %i.et = getelementptr inbounds [4 x i8], ptr %9, i64 %.05.i18.i.i.i.i.i.i.i.i31
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.df, i64 %.05.i18.i.i.i.i.i.i.i.i31
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !12
  store float %i.ev, ptr %i.et, align 4, !tbaa !12
  %i.ew = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i31, 1 ; 2 uses
  %i.ex = getelementptr inbounds [4 x i8], ptr %9, i64 %i.ew
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.ew
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !12
  store float %i.ez, ptr %i.ex, align 4, !tbaa !12
  %i.fa = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i31, 2 ; 2 uses
  %i.fb = getelementptr inbounds [4 x i8], ptr %9, i64 %i.fa
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.fa
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !12
  store float %i.fd, ptr %i.fb, align 4, !tbaa !12
  %i.fe = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i31, 3 ; 2 uses
  %i.ff = getelementptr inbounds [4 x i8], ptr %9, i64 %i.fe
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.fe
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !12
  store float %i.fh, ptr %i.ff, align 4, !tbaa !12
  %i.fi = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i31, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i32.3 = icmp eq i64 %i.fi, %i.dn
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i32.3, label %.loopexit68, label %.lr.ph.i17.i.i.i.i.i.i.i.i30, !llvm.loop !871

.lr.ph.i.i.i.i.i.i.i.i27:                         ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELin1ELi0ELi2ELi3EEEEENS5_INS6_IfLin1ELin1ELi0ELin1ELi3EEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i25, %.lr.ph.i.i.i.i.i.i.i.i27
  %.021.i.i.i.i.i.i.i.i28 = phi i64 [ %i.fm, %.lr.ph.i.i.i.i.i.i.i.i27 ], [ %i.ds, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELin1ELi0ELi2ELi3EEEEENS5_INS6_IfLin1ELin1ELi0ELin1ELi3EEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i25 ] ; 3 uses
  %i.fj = getelementptr inbounds [4 x i8], ptr %9, i64 %.021.i.i.i.i.i.i.i.i28
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.df, i64 %.021.i.i.i.i.i.i.i.i28
  %i.fl = load <4 x float>, ptr %i.fk, align 1, !tbaa !13
  store <4 x float> %i.fl, ptr %i.fj, align 16, !tbaa !13
  %i.fm = add nsw i64 %.021.i.i.i.i.i.i.i.i28, 4  ; 2 uses
  %i.fn = icmp slt i64 %i.fm, %i.dv
  br i1 %i.fn, label %.lr.ph.i.i.i.i.i.i.i.i27, label %._crit_edge.i.i.i.i.i.i.i.i29, !llvm.loop !868

.loopexit68:                                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i30.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i30, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i29
  call void @free(ptr noundef %i.df) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %.body

bb.u:                                             ; preds = %.loopexit68, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store float -1.000000e+00, ptr %i.b, align 4, !tbaa !12
  %i.fp = load i64, ptr %i.y, align 8, !tbaa !187
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.fq = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 3, ptr %i.fq, align 16, !tbaa !189
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 3, ptr %i.fr, align 8, !tbaa !190
  %i.fs = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 2, ptr %i.fs, align 16, !tbaa !191
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %i.ft, ptr %4, align 16, !tbaa !192
  %i.fu = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.fu, ptr %i.fv, align 8, !tbaa !193
  %i.fw = load i64, ptr %i.x, align 8, !tbaa !186
  %i.fx = load ptr, ptr %0, align 8, !tbaa !99
  invoke void @_ZN5Eigen8internal32product_triangular_matrix_matrixIflLi5ELb1ELi0ELb0ELi0ELb0ELi0ELi1ELi0EE3runElllPKflS4_lPfllRS3_RNS0_15level3_blockingIffEE(i64 noundef %.sroa.664.0.copyload, i64 noundef %i.fp, i64 noundef %.sroa.speculated47.i.i.i.i.i.i.i.i.i, ptr noundef nonnull %.sroa.063.0.copyload, i64 noundef 3, ptr noundef nonnull align 8 dereferenceable(40) %9, i64 noundef %i.fw, ptr noundef nonnull %i.fx, i64 noundef 1, i64 noundef 3, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.fy = load ptr, ptr %8, align 8, !tbaa !182
  call void @free(ptr noundef %i.fy) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  ret void

bb.w:                                             ; preds = %bb.u
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.o, %bb.w, %bb.t, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.fz, %bb.w ], [ %i.dd, %bb.q ], [ %i.fo, %bb.t ], [ %i.au, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.x

bb.x:                                             ; preds = %.body, %bb.f
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.w, %bb.f ]
  %i.ga = load ptr, ptr %8, align 8, !tbaa !182
  call void @free(ptr noundef %i.ga) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal40make_block_householder_triangular_factorINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEENS_5BlockINS2_IfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEENS_11VectorBlockIKNS2_IfLi2ELi1ELi0ELi2ELi1EEELin1EEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Transpose.1755", align 8 ; 13 uses
  %4 = alloca %"class.Eigen::Transpose.1763", align 8 ; 10 uses
  %5 = alloca %"class.Eigen::Transpose.1770", align 8 ; 15 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %.sroa.7115 = alloca [64 x i8], align 8         ; 2 uses
  %.sroa.23 = alloca %"class.Eigen::internal::BlockImpl_dense.563", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !100  ; 5 uses
  %i.d = add nsw i64 %i.c, -1                     ; 3 uses
  %i.e = icmp sgt i64 %i.c, 0
  br i1 %i.e, label %.lr.ph187, label %._crit_edge

.lr.ph187:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.7115.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7115, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.5179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 64
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 72
  %.sroa.15180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 88
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 96
  %.sroa.21.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.22.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.23.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.24.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.sroa.25.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 88
  %.sroa.26.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.8166.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.10168.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 56
  %.sroa.11169.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 64
  %.sroa.12170.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 72
  %.sroa.13171.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 136
  %.sroa.14172.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 144
  %.sroa.15173.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 152
  %.sroa.16174.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 160
  %.sroa.18176.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 176
  %i.k = shl i64 %i.c, 2
  %i.l = add i64 %i.k, -4                         ; 4 uses
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph187, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph187 ], [ %indvar.next, %.loopexit ] ; 3 uses
  %.047186 = phi i64 [ %i.d, %.lr.ph187 ], [ %i.hh, %.loopexit ] ; 15 uses
  %i.m = shl i64 %indvar, 2
  %i.n = sub i64 %i.l, %i.m
  %i.o = shl i64 %indvar, 2
  %i.p = sub i64 %i.l, %i.o
  %i.q = load i64, ptr %i.f, align 8, !tbaa !100  ; 2 uses
  %.neg = add nuw nsw i64 %.047186, 1             ; 4 uses
  %i.r = xor i64 %.047186, -1                     ; 2 uses
  %i.s = add i64 %i.c, %i.r                       ; 10 uses
  %.not193 = icmp eq i64 %i.s, 0
  br i1 %.not193, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = add i64 %i.q, %i.r                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.23)
  %i.u = load ptr, ptr %2, align 8, !tbaa !118
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.047186
  %i.w = load float, ptr %i.v, align 4, !tbaa !12
  %i.x = fneg float %i.w
  %i.y = load ptr, ptr %1, align 8, !tbaa !113, !noalias !892 ; 2 uses
  %.idx.i.i.i.i = mul nuw nsw i64 %.047186, 12
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7115.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.z, i64 %.neg
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !100, !noalias !893
  %i.ac = sub nsw i64 %i.ab, %i.s                 ; 2 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.y, i64 %.neg
  %.idx.i.i.i.i50 = mul nsw i64 %i.ac, 12
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.idx.i.i.i.i50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.23, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.af = load ptr, ptr %0, align 8, !tbaa !182, !noalias !894
  %i.ag = load i64, ptr %i.g, align 8, !tbaa !184, !noalias !894 ; 5 uses
  %i.ah = mul nsw i64 %i.ag, %.047186
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ah ; 2 uses
  %i.aj = sub nsw i64 %i.ag, %i.s                 ; 2 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.aj ; 5 uses
  %i.al = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.am = and i64 %i.al, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.an = lshr exact i64 %i.al, 2
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = and i64 %i.ao, 3                        ; 2 uses
  %i.aq = call i64 @llvm.umin.i64(i64 %i.ap, i64 %i.s) ; 3 uses
  %i.ar = sub nuw nsw i64 %i.s, %i.aq             ; 4 uses
  %i.as = lshr i64 %i.ar, 2                       ; 2 uses
  %i.at = and i64 %i.ar, 9223372036854775804      ; 3 uses
  %i.au = or disjoint i64 %i.at, %i.aq            ; 2 uses
  %.not = icmp eq i64 %i.ap, 0
  br i1 %.not, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %bb.c, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.av = phi i64 [ %i.au, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.s, %bb.c ]
  %i.aw = phi i64 [ %i.at, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %i.ax = phi i64 [ %i.as, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %i.ay = phi i64 [ %i.ar, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i183 = phi i64 [ %i.aq, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.s, %bb.c ] ; 2 uses
  %i.az = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i183, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ak, i8 0, i64 %i.az, i1 false), !tbaa !12
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ba = phi i64 [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.au, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bb = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.at, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bc = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.as, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bd = phi i64 [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.ar, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i182 = phi i64 [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i183, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ 0, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.be = icmp sgt i64 %i.bd, 3
  br i1 %i.be, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bf = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i182, 2
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.ak, i64 %i.bf
  %i.bg = add nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i182, 4
  %smax.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ba, i64 %i.bg)
  %i.bh = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i182, -1
  %i.bi = add nsw i64 %smax.i.i.i.i.i, %i.bh
  %i.bj = shl i64 %i.bi, 2
  %i.bk = and i64 %i.bj, -16
  %i.bl = add i64 %i.bk, 16
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i.i.i.i.i, i8 0, i64 %i.bl, i1 false), !tbaa !13
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bm = icmp samesign ult i64 %i.ba, %i.s
  br i1 %i.bm, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bn = shl i64 %i.bc, 4
  %i.bo = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i182, 2
  %i.bp = getelementptr i8, ptr %i.ak, i64 %i.bn
  %scevgep1.i.i.i.i.i = getelementptr i8, ptr %i.bp, i64 %i.bo
  %i.bq = sub nsw i64 %i.bd, %i.bb
  %i.br = shl nuw i64 %i.bq, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep1.i.i.i.i.i, i8 0, i64 %i.br, i1 false), !tbaa !12
  br label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit

_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store float 1.000000e+00, ptr %i.a, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr %i.ak, ptr %3, align 8
  store i64 %i.s, ptr %.sroa.5179.0..sroa_idx, align 8
  store ptr %i.ai, ptr %.sroa.7.0..sroa_idx, align 8
  store i64 %i.ag, ptr %.sroa.9.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.10.0..sroa_idx, align 8
  store i64 %.047186, ptr %.sroa.12.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.13.0..sroa_idx, align 8
  store i64 %i.ag, ptr %.sroa.14.0..sroa_idx, align 8
  store i64 %i.aj, ptr %.sroa.15180.0..sroa_idx, align 8
  store i64 %i.ag, ptr %.sroa.16.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store ptr %i.ae, ptr %4, align 8
  store i64 %i.t, ptr %.sroa.21.192..sroa_idx, align 8
  store i64 %i.s, ptr %.sroa.22.192..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.23.192..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.23, i64 56, i1 false)
  store i64 %.neg, ptr %.sroa.24.192..sroa_idx, align 8
  store i64 %i.ac, ptr %.sroa.25.192..sroa_idx, align 8
  store i64 3, ptr %.sroa.26.192..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store i64 %i.t, ptr %i.h, align 8, !alias.scope !895
  store float %i.x, ptr %i.i, align 8, !tbaa !199, !alias.scope !895
  store ptr %i.aa, ptr %i.j, align 8
  store i64 %i.t, ptr %.sroa.8166.32..sroa_idx, align 8
  store ptr %i.z, ptr %.sroa.10168.32..sroa_idx, align 8
  store i64 %i.q, ptr %.sroa.11169.32..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.12170.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7115, i64 64, i1 false)
  store i64 0, ptr %.sroa.13171.32..sroa_idx, align 8
  store i64 %.047186, ptr %.sroa.14172.32..sroa_idx, align 8
  store i64 3, ptr %.sroa.15173.32..sroa_idx, align 8
  store i64 %.neg, ptr %.sroa.16174.32..sroa_idx, align 8
  store i64 3, ptr %.sroa.18176.32..sroa_idx, align 8
  call void @_ZN5Eigen8internal13trmv_selectorILi6ELi1EE3runINS_9TransposeIKNS_5BlockIKNS5_INS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS4_IKNS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS6_IfLi1ELin1ELi1ELi1ELi3EEEEEKNS4_IKNS5_IKNS5_IS9_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEEEENS4_INS5_INS5_INS6_IfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNS16_6ScalarE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(192) %5, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23)
  %i.bs = icmp sgt i64 %i.d, %.047186
  br i1 %i.bs, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit
  %indvar198 = phi i64 [ %indvar.next199, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit ], [ 0, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit ] ; 5 uses
  %.0185 = phi i64 [ %i.gx, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit ], [ %i.d, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit ] ; 5 uses
  %i.bt = shl i64 %indvar198, 2
  %i.bu = sub i64 %i.l, %i.bt
  %i.bv = shl i64 %indvar198, 2                   ; 2 uses
  %i.bw = shl i64 %indvar198, 2
  %i.bx = sub i64 %i.l, %i.bw
  %i.by = load ptr, ptr %0, align 8, !tbaa !182   ; 8 uses
  %i.bz = load i64, ptr %i.g, align 8, !tbaa !184 ; 7 uses
  %i.ca = mul nsw i64 %i.bz, %.047186
  %i.cb = getelementptr [4 x i8], ptr %i.by, i64 %i.ca ; 2 uses
  %i.cc = getelementptr [4 x i8], ptr %i.cb, i64 %.0185 ; 2 uses
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !12 ; 10 uses
  %i.ce = mul nsw i64 %i.bz, %.0185
  %i.cf = getelementptr [4 x i8], ptr %i.by, i64 %i.ce ; 2 uses
  %i.cg = getelementptr [4 x i8], ptr %i.cf, i64 %.0185
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !12
  %i.ci = fmul float %i.cd, %i.ch
  store float %i.ci, ptr %i.cc, align 4, !tbaa !12
  %i.cj = xor i64 %.0185, -1
  %i.ck = add i64 %i.c, %i.cj                     ; 10 uses
  %i.cl = icmp sgt i64 %i.ck, 0
  br i1 %i.cl, label %bb.d, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit

bb.d:                                             ; preds = %.lr.ph
  %i.cm = sub nsw i64 %i.bz, %i.ck                ; 4 uses
  %i.cn = getelementptr [4 x i8], ptr %i.cf, i64 %i.cm ; 10 uses
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.cm ; 11 uses
  %i.cp = ptrtoint ptr %i.co to i64               ; 2 uses
  %i.cq = and i64 %i.cp, 3
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.cr = lshr exact i64 %i.cp, 2
  %i.cs = sub nsw i64 0, %i.cr
  %i.ct = and i64 %i.cs, 3                        ; 2 uses
  %i.cu = call i64 @llvm.umin.i64(i64 %i.ct, i64 %i.ck) ; 3 uses
  %i.cv = sub nsw i64 %i.ck, %i.cu                ; 3 uses
  %i.cw = sdiv i64 %i.cv, 4
  %i.cx = shl nuw nsw i64 %i.cw, 2
  %i.cy = or disjoint i64 %i.cx, %i.cu            ; 2 uses
  %.not184 = icmp eq i64 %i.ct, 0
  br i1 %.not184, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.d, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.cz = phi i64 [ %i.cy, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %i.ck, %bb.d ] ; 3 uses
  %i.da = phi i64 [ %i.cv, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ 0, %bb.d ] ; 3 uses
  %.0.i.i.i.i.i.i.i196 = phi i64 [ %i.cu, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %i.ck, %bb.d ] ; 10 uses
  %min.iters.check213 = icmp ult i64 %.0.i.i.i.i.i.i.i196, 8
  br i1 %min.iters.check213, label %.lr.ph.i.i.i.i.i.i.i.preheader229, label %vector.memcheck206

vector.memcheck206:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.db = mul i64 %i.n, %i.bz
  %i.dc = shl i64 %.0.i.i.i.i.i.i.i196, 2         ; 2 uses
  %i.dd = shl i64 %i.cm, 2                        ; 2 uses
  %i.de = getelementptr i8, ptr %i.by, i64 %i.db
  %i.df = getelementptr i8, ptr %i.de, i64 %i.dc
  %scevgep207 = getelementptr i8, ptr %i.df, i64 %i.dd
  %i.dg = mul i64 %i.bz, %i.bu
  %i.dh = getelementptr i8, ptr %i.by, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 %i.dc
  %scevgep208 = getelementptr i8, ptr %i.di, i64 %i.dd
  %bound0209 = icmp ult ptr %i.co, %scevgep208
  %bound1210 = icmp ult ptr %i.cn, %scevgep207
  %found.conflict211 = and i1 %bound0209, %bound1210
  br i1 %found.conflict211, label %.lr.ph.i.i.i.i.i.i.i.preheader229, label %vector.ph214

vector.ph214:                                     ; preds = %vector.memcheck206
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal40make_block_householder_triangular_factorINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEENS_5BlockINS2_IfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEENS_11VectorBlockIKNS2_IfLi2ELi1ELi0ELi2ELi1EEELin1EEEEEvRT_RKT0_RKT1_:bb.a
.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.eu = sub nuw i64 %i.ck, %i.eo                ; 3 uses
  %min.iters.check = icmp ult i64 %i.eu, 12
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.preheader228, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %i.ev = mul i64 %i.p, %i.bz                     ; 2 uses
  %i.ew = shl i64 %i.eo, 2                        ; 2 uses
  %i.ex = shl i64 %i.cm, 2                        ; 4 uses
  %i.ey = getelementptr i8, ptr %i.by, i64 %i.ev
  %i.ez = getelementptr i8, ptr %i.ey, i64 %i.ew
  %scevgep = getelementptr i8, ptr %i.ez, i64 %i.ex
  %i.fa = getelementptr i8, ptr %i.by, i64 %i.bv
  %i.fb = getelementptr i8, ptr %i.fa, i64 %i.ev
  %scevgep200 = getelementptr i8, ptr %i.fb, i64 %i.ex
  %i.fc = mul i64 %i.bz, %i.bx                    ; 2 uses
  %i.fd = getelementptr i8, ptr %i.by, i64 %i.fc
  %i.fe = getelementptr i8, ptr %i.fd, i64 %i.ew
  %scevgep201 = getelementptr i8, ptr %i.fe, i64 %i.ex
  %i.ff = getelementptr i8, ptr %i.by, i64 %i.bv
  %i.fg = getelementptr i8, ptr %i.ff, i64 %i.fc
  %scevgep202 = getelementptr i8, ptr %i.fg, i64 %i.ex
  %bound0 = icmp ult ptr %scevgep, %scevgep202
  %bound1 = icmp ult ptr %scevgep201, %scevgep200
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i17.i.i.i.i.i.i.preheader228, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.eu, 9223372036854775800     ; 3 uses
  %i.fh = add i64 %i.eo, %n.vec
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.cd, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fi = add i64 %i.eo, %index                   ; 2 uses
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.fi ; 3 uses
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.fi ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %wide.load = load <4 x float>, ptr %i.fk, align 4, !tbaa !12, !alias.scope !898
  %wide.load203 = load <4 x float>, ptr %i.fl, align 4, !tbaa !12, !alias.scope !898
  %i.fm = fmul <4 x float> %broadcast.splat, %wide.load
  %i.fn = fmul <4 x float> %broadcast.splat, %wide.load203
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 16 ; 2 uses
  %wide.load204 = load <4 x float>, ptr %i.fj, align 4, !tbaa !12, !alias.scope !899, !noalias !898
  %wide.load205 = load <4 x float>, ptr %i.fo, align 4, !tbaa !12, !alias.scope !899, !noalias !898
  %i.fp = fadd <4 x float> %i.fm, %wide.load204
  %i.fq = fadd <4 x float> %i.fn, %wide.load205
  store <4 x float> %i.fp, ptr %i.fj, align 4, !tbaa !12, !alias.scope !899, !noalias !898
  store <4 x float> %i.fq, ptr %i.fo, align 4, !tbaa !12, !alias.scope !899, !noalias !898
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fr = icmp eq i64 %index.next, %n.vec
  br i1 %i.fr, label %middle.block, label %vector.body, !llvm.loop !888

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eu, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader228

.lr.ph.i17.i.i.i.i.i.i.preheader228:              ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.eo, %vector.memcheck ], [ %i.eo, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.fh, %middle.block ] ; 6 uses
  %i.fs = sub i64 %i.ck, %.05.i18.i.i.i.i.i.i.ph
  %.neg234 = add i64 %.05.i18.i.i.i.i.i.i.ph, 1
  %xtraiter230 = and i64 %i.fs, 1
  %lcmp.mod231.not = icmp eq i64 %xtraiter230, 0
  br i1 %lcmp.mod231.not, label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader228
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.co, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %.05.i18.i.i.i.i.i.i.ph
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !12
  %i.fw = fmul float %i.cd, %i.fv
  %i.fx = load float, ptr %i.ft, align 4, !tbaa !12
  %i.fy = fadd float %i.fw, %i.fx
  store float %i.fy, ptr %i.ft, align 4, !tbaa !12
  %i.fz = add nsw i64 %.05.i18.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.preheader228
  %.05.i18.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader228 ], [ %i.fz, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %i.ga = icmp eq i64 %indvar198, %.neg234
  br i1 %i.ga, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.go, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.co, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %.05.i18.i.i.i.i.i.i
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !12
  %i.ge = fmul float %i.cd, %i.gd
  %i.gf = load float, ptr %i.gb, align 4, !tbaa !12
  %i.gg = fadd float %i.ge, %i.gf
  store float %i.gg, ptr %i.gb, align 4, !tbaa !12
  %i.gh = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.gh ; 2 uses
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.gh
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !12
  %i.gl = fmul float %i.cd, %i.gk
  %i.gm = load float, ptr %i.gi, align 4, !tbaa !12
  %i.gn = fadd float %i.gl, %i.gm
  store float %i.gn, ptr %i.gi, align 4, !tbaa !12
  %i.go = add nsw i64 %.05.i18.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.1 = icmp eq i64 %i.go, %i.ck
  br i1 %exitcond.not.i19.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !889

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.gv, %.lr.ph.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i197, %.lr.ph.i.preheader.i.i.i.i.i ] ; 3 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.021.i.i.i.i.i.i
  %i.gr = load <4 x float>, ptr %i.gq, align 1, !tbaa !13
  %i.gs = fmul <4 x float> %i.es, %i.gr
  %i.gt = load <4 x float>, ptr %i.gp, align 16, !tbaa !13
  %i.gu = fadd <4 x float> %i.gt, %i.gs
  store <4 x float> %i.gu, ptr %i.gp, align 16, !tbaa !13
  %i.gv = add nuw nsw i64 %.021.i.i.i.i.i.i, 4    ; 2 uses
  %i.gw = icmp slt i64 %i.gv, %i.eo
  br i1 %i.gw, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !0

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i, %middle.block, %.lr.ph.i17.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph
  %i.gx = add nsw i64 %.0185, -1                  ; 2 uses
  %i.gy = icmp sgt i64 %i.gx, %.047186
  %indvar.next199 = add i64 %indvar198, 1
  br i1 %i.gy, label %.lr.ph, label %.loopexit, !llvm.loop !890

.loopexit:                                        ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit, %bb.b
  %i.gz = load ptr, ptr %2, align 8, !tbaa !118
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %.047186
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !12
  %i.hc = load ptr, ptr %0, align 8, !tbaa !182
  %i.hd = load i64, ptr %i.g, align 8, !tbaa !184
  %i.he = mul nsw i64 %i.hd, %.047186
  %i.hf = getelementptr [4 x i8], ptr %i.hc, i64 %i.he
  %i.hg = getelementptr [4 x i8], ptr %i.hf, i64 %.047186
  store float %i.hb, ptr %i.hg, align 4, !tbaa !12
  %i.hh = add nsw i64 %.047186, -1
  %i.hi = icmp sgt i64 %.047186, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.hi, label %bb.b, label %._crit_edge, !llvm.loop !891
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal40make_block_householder_triangular_factorINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEENS_5BlockINS2_IfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEENS4_IKNS2_IfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Transpose.1755", align 8 ; 13 uses
  %4 = alloca %"class.Eigen::Transpose.1763", align 8 ; 10 uses
  %5 = alloca %"class.Eigen::Transpose.1770", align 8 ; 15 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %.sroa.7115 = alloca [64 x i8], align 8         ; 2 uses
  %.sroa.23 = alloca %"class.Eigen::internal::BlockImpl_dense.563", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !100  ; 5 uses
  %i.d = add nsw i64 %i.c, -1                     ; 3 uses
  %i.e = icmp sgt i64 %i.c, 0
  br i1 %i.e, label %.lr.ph187, label %._crit_edge

.lr.ph187:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.7115.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7115, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.5179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 64
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 72
  %.sroa.15180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 88
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 96
  %.sroa.21.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.22.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.23.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.24.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.sroa.25.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 88
  %.sroa.26.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.8166.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.10168.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 56
  %.sroa.11169.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 64
  %.sroa.12170.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 72
  %.sroa.13171.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 136
  %.sroa.14172.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 144
  %.sroa.15173.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 152
  %.sroa.16174.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 160
  %.sroa.18176.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 176
  %i.k = shl i64 %i.c, 2
  %i.l = add i64 %i.k, -4                         ; 4 uses
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph187, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph187 ], [ %indvar.next, %.loopexit ] ; 3 uses
  %.047186 = phi i64 [ %i.d, %.lr.ph187 ], [ %i.hh, %.loopexit ] ; 15 uses
  %i.m = shl i64 %indvar, 2
  %i.n = sub i64 %i.l, %i.m
  %i.o = shl i64 %indvar, 2
  %i.p = sub i64 %i.l, %i.o
  %i.q = load i64, ptr %i.f, align 8, !tbaa !100  ; 2 uses
  %.neg = add nuw nsw i64 %.047186, 1             ; 4 uses
  %i.r = xor i64 %.047186, -1                     ; 2 uses
  %i.s = add i64 %i.c, %i.r                       ; 10 uses
  %.not193 = icmp eq i64 %i.s, 0
  br i1 %.not193, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = add i64 %i.q, %i.r                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.23)
  %i.u = load ptr, ptr %2, align 8, !tbaa !118
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.047186
  %i.w = load float, ptr %i.v, align 4, !tbaa !12
  %i.x = fneg float %i.w
  %i.y = load ptr, ptr %1, align 8, !tbaa !113, !noalias !920 ; 2 uses
  %.idx.i.i.i.i = mul nuw nsw i64 %.047186, 12
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7115.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.z, i64 %.neg
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !100, !noalias !921
  %i.ac = sub nsw i64 %i.ab, %i.s                 ; 2 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.y, i64 %.neg
  %.idx.i.i.i.i50 = mul nsw i64 %i.ac, 12
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.idx.i.i.i.i50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.23, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.af = load ptr, ptr %0, align 8, !tbaa !182, !noalias !922
  %i.ag = load i64, ptr %i.g, align 8, !tbaa !184, !noalias !922 ; 5 uses
  %i.ah = mul nsw i64 %i.ag, %.047186
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ah ; 2 uses
  %i.aj = sub nsw i64 %i.ag, %i.s                 ; 2 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.aj ; 5 uses
  %i.al = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.am = and i64 %i.al, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.an = lshr exact i64 %i.al, 2
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = and i64 %i.ao, 3                        ; 2 uses
  %i.aq = call i64 @llvm.umin.i64(i64 %i.ap, i64 %i.s) ; 3 uses
  %i.ar = sub nuw nsw i64 %i.s, %i.aq             ; 4 uses
  %i.as = lshr i64 %i.ar, 2                       ; 2 uses
  %i.at = and i64 %i.ar, 9223372036854775804      ; 3 uses
  %i.au = or disjoint i64 %i.at, %i.aq            ; 2 uses
  %.not = icmp eq i64 %i.ap, 0
  br i1 %.not, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %bb.c, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.av = phi i64 [ %i.au, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.s, %bb.c ]
  %i.aw = phi i64 [ %i.at, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %i.ax = phi i64 [ %i.as, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %i.ay = phi i64 [ %i.ar, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i183 = phi i64 [ %i.aq, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.s, %bb.c ] ; 2 uses
  %i.az = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i183, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ak, i8 0, i64 %i.az, i1 false), !tbaa !12
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ba = phi i64 [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.au, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bb = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.at, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bc = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.as, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bd = phi i64 [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.ar, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i182 = phi i64 [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i183, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ 0, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.be = icmp sgt i64 %i.bd, 3
  br i1 %i.be, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bf = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i182, 2
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.ak, i64 %i.bf
  %i.bg = add nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i182, 4
  %smax.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ba, i64 %i.bg)
  %i.bh = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i182, -1
  %i.bi = add nsw i64 %smax.i.i.i.i.i, %i.bh
  %i.bj = shl i64 %i.bi, 2
  %i.bk = and i64 %i.bj, -16
  %i.bl = add i64 %i.bk, 16
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i.i.i.i.i, i8 0, i64 %i.bl, i1 false), !tbaa !13
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bm = icmp samesign ult i64 %i.ba, %i.s
  br i1 %i.bm, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bn = shl i64 %i.bc, 4
  %i.bo = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i182, 2
  %i.bp = getelementptr i8, ptr %i.ak, i64 %i.bn
  %scevgep1.i.i.i.i.i = getelementptr i8, ptr %i.bp, i64 %i.bo
  %i.bq = sub nsw i64 %i.bd, %i.bb
  %i.br = shl nuw i64 %i.bq, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep1.i.i.i.i.i, i8 0, i64 %i.br, i1 false), !tbaa !12
  br label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit

_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store float 1.000000e+00, ptr %i.a, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr %i.ak, ptr %3, align 8
  store i64 %i.s, ptr %.sroa.5179.0..sroa_idx, align 8
  store ptr %i.ai, ptr %.sroa.7.0..sroa_idx, align 8
  store i64 %i.ag, ptr %.sroa.9.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.10.0..sroa_idx, align 8
  store i64 %.047186, ptr %.sroa.12.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.13.0..sroa_idx, align 8
  store i64 %i.ag, ptr %.sroa.14.0..sroa_idx, align 8
  store i64 %i.aj, ptr %.sroa.15180.0..sroa_idx, align 8
  store i64 %i.ag, ptr %.sroa.16.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store ptr %i.ae, ptr %4, align 8
  store i64 %i.t, ptr %.sroa.21.192..sroa_idx, align 8
  store i64 %i.s, ptr %.sroa.22.192..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.23.192..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.23, i64 56, i1 false)
  store i64 %.neg, ptr %.sroa.24.192..sroa_idx, align 8
  store i64 %i.ac, ptr %.sroa.25.192..sroa_idx, align 8
  store i64 3, ptr %.sroa.26.192..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store i64 %i.t, ptr %i.h, align 8, !alias.scope !923
  store float %i.x, ptr %i.i, align 8, !tbaa !199, !alias.scope !923
  store ptr %i.aa, ptr %i.j, align 8
  store i64 %i.t, ptr %.sroa.8166.32..sroa_idx, align 8
  store ptr %i.z, ptr %.sroa.10168.32..sroa_idx, align 8
  store i64 %i.q, ptr %.sroa.11169.32..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.12170.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7115, i64 64, i1 false)
  store i64 0, ptr %.sroa.13171.32..sroa_idx, align 8
  store i64 %.047186, ptr %.sroa.14172.32..sroa_idx, align 8
  store i64 3, ptr %.sroa.15173.32..sroa_idx, align 8
  store i64 %.neg, ptr %.sroa.16174.32..sroa_idx, align 8
  store i64 3, ptr %.sroa.18176.32..sroa_idx, align 8
  call void @_ZN5Eigen8internal13trmv_selectorILi6ELi1EE3runINS_9TransposeIKNS_5BlockIKNS5_INS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS4_IKNS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS6_IfLi1ELin1ELi1ELi1ELi3EEEEEKNS4_IKNS5_IKNS5_IS9_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEEEENS4_INS5_INS5_INS6_IfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNS16_6ScalarE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(192) %5, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23)
  %i.bs = icmp sgt i64 %i.d, %.047186
  br i1 %i.bs, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit
  %indvar198 = phi i64 [ %indvar.next199, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit ], [ 0, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit ] ; 5 uses
  %.0185 = phi i64 [ %i.gx, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit ], [ %i.d, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit ] ; 5 uses
  %i.bt = shl i64 %indvar198, 2
  %i.bu = sub i64 %i.l, %i.bt
  %i.bv = shl i64 %indvar198, 2                   ; 2 uses
  %i.bw = shl i64 %indvar198, 2
  %i.bx = sub i64 %i.l, %i.bw
  %i.by = load ptr, ptr %0, align 8, !tbaa !182   ; 8 uses
  %i.bz = load i64, ptr %i.g, align 8, !tbaa !184 ; 7 uses
  %i.ca = mul nsw i64 %i.bz, %.047186
  %i.cb = getelementptr [4 x i8], ptr %i.by, i64 %i.ca ; 2 uses
  %i.cc = getelementptr [4 x i8], ptr %i.cb, i64 %.0185 ; 2 uses
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !12 ; 10 uses
  %i.ce = mul nsw i64 %i.bz, %.0185
  %i.cf = getelementptr [4 x i8], ptr %i.by, i64 %i.ce ; 2 uses
  %i.cg = getelementptr [4 x i8], ptr %i.cf, i64 %.0185
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !12
  %i.ci = fmul float %i.cd, %i.ch
  store float %i.ci, ptr %i.cc, align 4, !tbaa !12
  %i.cj = xor i64 %.0185, -1
  %i.ck = add i64 %i.c, %i.cj                     ; 10 uses
  %i.cl = icmp sgt i64 %i.ck, 0
  br i1 %i.cl, label %bb.d, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit

bb.d:                                             ; preds = %.lr.ph
  %i.cm = sub nsw i64 %i.bz, %i.ck                ; 4 uses
  %i.cn = getelementptr [4 x i8], ptr %i.cf, i64 %i.cm ; 10 uses
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.cm ; 11 uses
  %i.cp = ptrtoint ptr %i.co to i64               ; 2 uses
  %i.cq = and i64 %i.cp, 3
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.cr = lshr exact i64 %i.cp, 2
  %i.cs = sub nsw i64 0, %i.cr
  %i.ct = and i64 %i.cs, 3                        ; 2 uses
  %i.cu = call i64 @llvm.umin.i64(i64 %i.ct, i64 %i.ck) ; 3 uses
  %i.cv = sub nsw i64 %i.ck, %i.cu                ; 3 uses
  %i.cw = sdiv i64 %i.cv, 4
  %i.cx = shl nuw nsw i64 %i.cw, 2
  %i.cy = or disjoint i64 %i.cx, %i.cu            ; 2 uses
  %.not184 = icmp eq i64 %i.ct, 0
  br i1 %.not184, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.d, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.cz = phi i64 [ %i.cy, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %i.ck, %bb.d ] ; 3 uses
  %i.da = phi i64 [ %i.cv, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ 0, %bb.d ] ; 3 uses
  %.0.i.i.i.i.i.i.i196 = phi i64 [ %i.cu, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %i.ck, %bb.d ] ; 10 uses
  %min.iters.check213 = icmp ult i64 %.0.i.i.i.i.i.i.i196, 8
  br i1 %min.iters.check213, label %.lr.ph.i.i.i.i.i.i.i.preheader229, label %vector.memcheck206

vector.memcheck206:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.db = mul i64 %i.n, %i.bz
  %i.dc = shl i64 %.0.i.i.i.i.i.i.i196, 2         ; 2 uses
  %i.dd = shl i64 %i.cm, 2                        ; 2 uses
  %i.de = getelementptr i8, ptr %i.by, i64 %i.db
  %i.df = getelementptr i8, ptr %i.de, i64 %i.dc
  %scevgep207 = getelementptr i8, ptr %i.df, i64 %i.dd
  %i.dg = mul i64 %i.bz, %i.bu
  %i.dh = getelementptr i8, ptr %i.by, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 %i.dc
  %scevgep208 = getelementptr i8, ptr %i.di, i64 %i.dd
  %bound0209 = icmp ult ptr %i.co, %scevgep208
  %bound1210 = icmp ult ptr %i.cn, %scevgep207
  %found.conflict211 = and i1 %bound0209, %bound1210
  br i1 %found.conflict211, label %.lr.ph.i.i.i.i.i.i.i.preheader229, label %vector.ph214

vector.ph214:                                     ; preds = %vector.memcheck206
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal35apply_block_householder_on_the_leftINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEENS2_INS3_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEENS_11VectorBlockIKNS3_IdLi2ELi1ELi0ELi2ELi1EEELin1EEEEEvRT_RKT0_RKT1_b:bb.a
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dl = add i64 %i.df, %index                   ; 2 uses
  %i.dm = getelementptr inbounds [8 x i8], ptr %9, i64 %i.dl ; 2 uses
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.dl ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %wide.load = load <2 x double>, ptr %i.dn, align 8, !tbaa !15
  %wide.load82 = load <2 x double>, ptr %i.do, align 8, !tbaa !15
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store <2 x double> %wide.load, ptr %i.dm, align 16, !tbaa !15
  store <2 x double> %wide.load82, ptr %i.dp, align 16, !tbaa !15
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !1468

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.di, %n.vec
  br i1 %cmp.n, label %.loopexit63, label %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader99

.lr.ph.i.i.i.i.i.i.i.i.i26.preheader99:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i27.ph = phi i64 [ %i.df, %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader ], [ %i.dk, %middle.block ] ; 4 uses
  %i.dr = sub i64 %i.dd, %.05.i.i.i.i.i.i.i.i.i27.ph
  %xtraiter = and i64 %i.dr, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i26.prol

.lr.ph.i.i.i.i.i.i.i.i.i26.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader99, %.lr.ph.i.i.i.i.i.i.i.i.i26.prol
  %.05.i.i.i.i.i.i.i.i.i27.prol = phi i64 [ %i.dv, %.lr.ph.i.i.i.i.i.i.i.i.i26.prol ], [ %.05.i.i.i.i.i.i.i.i.i27.ph, %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader99 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i26.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader99 ]
  %i.ds = getelementptr inbounds [8 x i8], ptr %9, i64 %.05.i.i.i.i.i.i.i.i.i27.prol
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %.05.i.i.i.i.i.i.i.i.i27.prol
  %i.du = load double, ptr %i.dt, align 8, !tbaa !15
  store double %i.du, ptr %i.ds, align 8, !tbaa !15
  %i.dv = add nsw i64 %.05.i.i.i.i.i.i.i.i.i27.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i26.prol, !llvm.loop !1469

.lr.ph.i.i.i.i.i.i.i.i.i26.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i26.prol, %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader99
  %.05.i.i.i.i.i.i.i.i.i27.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i27.ph, %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader99 ], [ %i.dv, %.lr.ph.i.i.i.i.i.i.i.i.i26.prol ]
  %i.dw = sub i64 %.05.i.i.i.i.i.i.i.i.i27.ph, %i.dd
  %i.dx = icmp ugt i64 %i.dw, -4
  br i1 %i.dx, label %.loopexit63, label %.lr.ph.i.i.i.i.i.i.i.i.i26

.lr.ph.i.i.i.i.i.i.i.i.i26:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i26
  %.05.i.i.i.i.i.i.i.i.i27 = phi i64 [ %i.en, %.lr.ph.i.i.i.i.i.i.i.i.i26 ], [ %.05.i.i.i.i.i.i.i.i.i27.unr, %.lr.ph.i.i.i.i.i.i.i.i.i26.prol.loopexit ] ; 6 uses
  %i.dy = getelementptr inbounds [8 x i8], ptr %9, i64 %.05.i.i.i.i.i.i.i.i.i27
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %.05.i.i.i.i.i.i.i.i.i27
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !15
  store double %i.ea, ptr %i.dy, align 8, !tbaa !15
  %i.eb = add nsw i64 %.05.i.i.i.i.i.i.i.i.i27, 1 ; 2 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %9, i64 %i.eb
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.eb
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !15
  store double %i.ee, ptr %i.ec, align 8, !tbaa !15
  %i.ef = add nsw i64 %.05.i.i.i.i.i.i.i.i.i27, 2 ; 2 uses
  %i.eg = getelementptr inbounds [8 x i8], ptr %9, i64 %i.ef
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.ef
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !15
  store double %i.ei, ptr %i.eg, align 8, !tbaa !15
  %i.ej = add nsw i64 %.05.i.i.i.i.i.i.i.i.i27, 3 ; 2 uses
  %i.ek = getelementptr inbounds [8 x i8], ptr %9, i64 %i.ej
  %i.el = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.ej
  %i.em = load double, ptr %i.el, align 8, !tbaa !15
  store double %i.em, ptr %i.ek, align 8, !tbaa !15
  %i.en = add nsw i64 %.05.i.i.i.i.i.i.i.i.i27, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i28.3 = icmp eq i64 %i.en, %i.dd
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i28.3, label %.loopexit63, label %.lr.ph.i.i.i.i.i.i.i.i.i26, !llvm.loop !1470

.lr.ph.i.i.i.i.i.i.i.i29:                         ; preds = %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELi2ELi3EEENS2_IdLin1ELin1ELi0ELin1ELi3EEEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i24, %.lr.ph.i.i.i.i.i.i.i.i29
  %.011.i.i.i.i.i.i.i.i30 = phi i64 [ %i.er, %.lr.ph.i.i.i.i.i.i.i.i29 ], [ 0, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELi2ELi3EEENS2_IdLin1ELin1ELi0ELin1ELi3EEEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i24 ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.011.i.i.i.i.i.i.i.i30
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %.011.i.i.i.i.i.i.i.i30
  %i.eq = load <2 x double>, ptr %i.ep, align 16, !tbaa !13
  store <2 x double> %i.eq, ptr %i.eo, align 16, !tbaa !13
  %i.er = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i30, 2 ; 2 uses
  %i.es = icmp slt i64 %i.er, %i.df
  br i1 %i.es, label %.lr.ph.i.i.i.i.i.i.i.i29, label %._crit_edge.i.i.i.i.i.i.i.i25, !llvm.loop !1467

.loopexit63:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i26, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i25
  call void @free(ptr noundef %i.cv) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %.body

bb.u:                                             ; preds = %.loopexit63, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store double -1.000000e+00, ptr %i.b, align 8, !tbaa !15
  %i.eu = load i64, ptr %i.z, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 3, ptr %i.ev, align 16, !tbaa !411
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 3, ptr %i.ew, align 8, !tbaa !412
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 2, ptr %i.ex, align 16, !tbaa !413
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %i.ey, ptr %4, align 16, !tbaa !414
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !415
  %i.fb = load i64, ptr %i.y, align 16, !tbaa !408
  %i.fc = load ptr, ptr %0, align 8, !tbaa !321
  invoke void @_ZN5Eigen8internal32product_triangular_matrix_matrixIdlLi5ELb1ELi0ELb0ELi0ELb0ELi0ELi1ELi0EE3runElllPKdlS4_lPdllRS3_RNS0_15level3_blockingIddEE(i64 noundef %.sroa.659.0.copyload, i64 noundef %i.eu, i64 noundef %.sroa.speculated40.i.i.i.i.i.i.i.i.i, ptr noundef nonnull %.sroa.058.0.copyload, i64 noundef 3, ptr noundef nonnull align 16 dereferenceable(64) %9, i64 noundef %i.fb, ptr noundef nonnull %i.fc, i64 noundef 1, i64 noundef 3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.fd = load ptr, ptr %8, align 8, !tbaa !404
  call void @free(ptr noundef %i.fd) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  ret void

bb.w:                                             ; preds = %bb.u
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.o, %bb.w, %bb.t, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.fe, %bb.w ], [ %i.ct, %bb.q ], [ %i.et, %bb.t ], [ %i.av, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.x

bb.x:                                             ; preds = %.body, %bb.f
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.x, %bb.f ]
  %i.ff = load ptr, ptr %8, align 8, !tbaa !404
  call void @free(ptr noundef %i.ff) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal40make_block_householder_triangular_factorINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS_5BlockINS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEENS_11VectorBlockIKNS2_IdLi2ELi1ELi0ELi2ELi1EEELin1EEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Transpose.4044", align 8 ; 13 uses
  %4 = alloca %"class.Eigen::Transpose.4052", align 8 ; 10 uses
  %5 = alloca %"class.Eigen::Transpose.4059", align 8 ; 15 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %.sroa.7114 = alloca [64 x i8], align 8         ; 2 uses
  %.sroa.23 = alloca %"class.Eigen::internal::BlockImpl_dense.2843", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !100  ; 5 uses
  %i.d = add nsw i64 %i.c, -1                     ; 3 uses
  %i.e = icmp sgt i64 %i.c, 0
  br i1 %i.e, label %.lr.ph184, label %._crit_edge

.lr.ph184:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.7114.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7114, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.5176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 64
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 72
  %.sroa.15177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 88
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 96
  %.sroa.21.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.22.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.23.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.24.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.sroa.25.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 88
  %.sroa.26.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.8163.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.10165.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 56
  %.sroa.11166.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 64
  %.sroa.12167.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 72
  %.sroa.13168.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 136
  %.sroa.14169.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 144
  %.sroa.15170.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 152
  %.sroa.16171.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 160
  %.sroa.18173.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 176
  %i.k = shl i64 %i.c, 3                          ; 3 uses
  %i.l = add i64 %i.k, -8                         ; 4 uses
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph184, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph184 ], [ %indvar.next, %.loopexit ] ; 3 uses
  %.047183 = phi i64 [ %i.d, %.lr.ph184 ], [ %i.hb, %.loopexit ] ; 15 uses
  %i.m = shl i64 %indvar, 3
  %i.n = sub i64 %i.l, %i.m
  %i.o = mul i64 %indvar, -8                      ; 2 uses
  %i.p = add i64 %i.l, %i.o
  %i.q = add i64 %i.k, %i.o
  %i.r = load i64, ptr %i.f, align 8, !tbaa !100  ; 2 uses
  %.neg = add nuw nsw i64 %.047183, 1             ; 4 uses
  %i.s = xor i64 %.047183, -1                     ; 2 uses
  %i.t = add i64 %i.c, %i.s                       ; 9 uses
  %.not190 = icmp eq i64 %i.t, 0
  br i1 %.not190, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = add i64 %i.r, %i.s                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.23)
  %i.v = load ptr, ptr %2, align 8, !tbaa !338
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.047183
  %i.x = load double, ptr %i.w, align 8, !tbaa !15
  %i.y = fneg double %i.x
  %i.z = load ptr, ptr %1, align 8, !tbaa !333, !noalias !1491 ; 2 uses
  %.idx.i.i.i.i = mul nuw nsw i64 %.047183, 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7114.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %.neg
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !100, !noalias !1492
  %i.ad = sub nsw i64 %i.ac, %i.t                 ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.neg
  %.idx.i.i.i.i50 = mul nsw i64 %i.ad, 24
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 %.idx.i.i.i.i50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.23, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.ag = load ptr, ptr %0, align 8, !tbaa !404, !noalias !1493
  %i.ah = load i64, ptr %i.g, align 8, !tbaa !406, !noalias !1493 ; 5 uses
  %i.ai = mul nsw i64 %i.ah, %.047183
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ai ; 2 uses
  %i.ak = sub nsw i64 %i.ah, %i.t                 ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ak ; 5 uses
  %i.am = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.an = and i64 %i.am, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.ao = lshr exact i64 %i.am, 3
  %i.ap = and i64 %i.ao, 1                        ; 3 uses
  %i.aq = sub nuw nsw i64 %i.t, %i.ap             ; 4 uses
  %i.ar = lshr i64 %i.aq, 1                       ; 2 uses
  %i.as = and i64 %i.aq, 9223372036854775806      ; 3 uses
  %i.at = or disjoint i64 %i.as, %i.ap            ; 2 uses
  %.not = icmp eq i64 %i.ap, 0
  br i1 %.not, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %bb.c, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.au = phi i64 [ %i.at, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.t, %bb.c ]
  %i.av = phi i64 [ %i.as, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %i.aw = phi i64 [ %i.ar, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %i.ax = phi i64 [ %i.aq, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i180 = phi i64 [ 1, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.t, %bb.c ] ; 2 uses
  %i.ay = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i180, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.al, i8 0, i64 %i.ay, i1 false), !tbaa !15
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.az = phi i64 [ %i.au, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.at, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ba = phi i64 [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.as, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bb = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.ar, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bc = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.aq, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i179 = phi i64 [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i180, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ 0, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.bd = icmp samesign ugt i64 %i.bc, 1
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.be = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i179, 3
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.al, i64 %i.be
  %i.bf = add nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i179, 2
  %smax.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.az, i64 %i.bf)
  %i.bg = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i179, -1
  %i.bh = add nsw i64 %smax.i.i.i.i.i, %i.bg
  %i.bi = shl i64 %i.bh, 3
  %i.bj = and i64 %i.bi, -16
  %i.bk = add i64 %i.bj, 16
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i.i.i.i.i, i8 0, i64 %i.bk, i1 false), !tbaa !13
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bl = icmp samesign ult i64 %i.az, %i.t
  br i1 %i.bl, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bm = shl i64 %i.bb, 4
  %i.bn = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i179, 3
  %i.bo = getelementptr i8, ptr %i.al, i64 %i.bm
  %scevgep1.i.i.i.i.i = getelementptr i8, ptr %i.bo, i64 %i.bn
  %i.bp = sub nsw i64 %i.bc, %i.ba
  %i.bq = shl nuw i64 %i.bp, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep1.i.i.i.i.i, i8 0, i64 %i.bq, i1 false), !tbaa !15
  br label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit

_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr %i.al, ptr %3, align 8
  store i64 %i.t, ptr %.sroa.5176.0..sroa_idx, align 8
  store ptr %i.aj, ptr %.sroa.7.0..sroa_idx, align 8
  store i64 %i.ah, ptr %.sroa.9.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.10.0..sroa_idx, align 8
  store i64 %.047183, ptr %.sroa.12.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.13.0..sroa_idx, align 8
  store i64 %i.ah, ptr %.sroa.14.0..sroa_idx, align 8
  store i64 %i.ak, ptr %.sroa.15177.0..sroa_idx, align 8
  store i64 %i.ah, ptr %.sroa.16.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store ptr %i.af, ptr %4, align 8
  store i64 %i.u, ptr %.sroa.21.192..sroa_idx, align 8
  store i64 %i.t, ptr %.sroa.22.192..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.23.192..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.23, i64 56, i1 false)
  store i64 %.neg, ptr %.sroa.24.192..sroa_idx, align 8
  store i64 %i.ad, ptr %.sroa.25.192..sroa_idx, align 8
  store i64 3, ptr %.sroa.26.192..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store i64 %i.u, ptr %i.h, align 8, !alias.scope !1494
  store double %i.y, ptr %i.i, align 8, !tbaa !421, !alias.scope !1494
  store ptr %i.ab, ptr %i.j, align 8
  store i64 %i.u, ptr %.sroa.8163.32..sroa_idx, align 8
  store ptr %i.aa, ptr %.sroa.10165.32..sroa_idx, align 8
  store i64 %i.r, ptr %.sroa.11166.32..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.12167.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7114, i64 64, i1 false)
  store i64 0, ptr %.sroa.13168.32..sroa_idx, align 8
  store i64 %.047183, ptr %.sroa.14169.32..sroa_idx, align 8
  store i64 3, ptr %.sroa.15170.32..sroa_idx, align 8
  store i64 %.neg, ptr %.sroa.16171.32..sroa_idx, align 8
  store i64 3, ptr %.sroa.18173.32..sroa_idx, align 8
  call void @_ZN5Eigen8internal13trmv_selectorILi6ELi1EE3runINS_9TransposeIKNS_5BlockIKNS5_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS4_IKNS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS6_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS4_IKNS5_IKNS5_IS9_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEEEENS4_INS5_INS5_INS6_IdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNS16_6ScalarE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(192) %5, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23)
  %i.br = icmp sgt i64 %i.d, %.047183
  br i1 %i.br, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit
  %indvar192 = phi i64 [ %indvar.next193, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit ], [ 0, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit ] ; 4 uses
  %.0182 = phi i64 [ %i.gr, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit ], [ %i.d, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit ] ; 5 uses
  %i.bs = shl i64 %indvar192, 3
  %i.bt = sub i64 %i.l, %i.bs
  %i.bu = mul i64 %indvar192, -8                  ; 2 uses
  %i.bv = add i64 %i.l, %i.bu
  %i.bw = add i64 %i.k, %i.bu
  %i.bx = load ptr, ptr %0, align 8, !tbaa !404   ; 8 uses
  %i.by = load i64, ptr %i.g, align 8, !tbaa !406 ; 9 uses
  %i.bz = mul nsw i64 %i.by, %.047183
  %i.ca = getelementptr [8 x i8], ptr %i.bx, i64 %i.bz ; 2 uses
  %i.cb = getelementptr [8 x i8], ptr %i.ca, i64 %.0182 ; 2 uses
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !15 ; 10 uses
  %i.cd = mul nsw i64 %i.by, %.0182
  %i.ce = getelementptr [8 x i8], ptr %i.bx, i64 %i.cd ; 2 uses
  %i.cf = getelementptr [8 x i8], ptr %i.ce, i64 %.0182
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !15
  %i.ch = fmul double %i.cc, %i.cg
  store double %i.ch, ptr %i.cb, align 8, !tbaa !15
  %i.ci = xor i64 %.0182, -1
  %i.cj = add i64 %i.c, %i.ci                     ; 8 uses
  %i.ck = icmp sgt i64 %i.cj, 0
  br i1 %i.ck, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %.lr.ph
  %i.cl = sub nsw i64 %i.by, %i.cj                ; 4 uses
  %i.cm = getelementptr [8 x i8], ptr %i.ce, i64 %i.cl ; 10 uses
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.cl ; 11 uses
  %.sroa.3.8.vec.insert.i.i.i.i.i = insertelement <2 x double> poison, double %i.cc, i64 0
  %i.co = ptrtoint ptr %i.cn to i64               ; 2 uses
  %i.cp = and i64 %i.co, 7
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cp, 0
  %i.cq = lshr exact i64 %i.co, 3
  %i.cr = and i64 %i.cq, 1
  %.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 %i.cr, i64 %i.cj ; 13 uses
  %i.cs = sub nsw i64 %i.cj, %.0.i.i.i.i.i.i.i    ; 2 uses
  %i.ct = sdiv i64 %i.cs, 2                       ; 2 uses
  %i.cu = shl nsw i64 %i.ct, 1                    ; 2 uses
  %i.cv = add nsw i64 %i.cu, %.0.i.i.i.i.i.i.i    ; 6 uses
  %.not181 = icmp eq i64 %.0.i.i.i.i.i.i.i, 0
  br i1 %.not181, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %min.iters.check206 = icmp ult i64 %.0.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check206, label %.lr.ph.i.i.i.i.i.i.i.preheader222, label %vector.memcheck199

vector.memcheck199:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.cw = mul i64 %i.n, %i.by
  %i.cx = shl i64 %.0.i.i.i.i.i.i.i, 3            ; 2 uses
  %i.cy = shl i64 %i.cl, 3                        ; 2 uses
  %i.cz = getelementptr i8, ptr %i.bx, i64 %i.cw
  %i.da = getelementptr i8, ptr %i.cz, i64 %i.cx
  %scevgep200 = getelementptr i8, ptr %i.da, i64 %i.cy
  %i.db = mul i64 %i.by, %i.bt
  %i.dc = getelementptr i8, ptr %i.bx, i64 %i.db
  %i.dd = getelementptr i8, ptr %i.dc, i64 %i.cx
  %scevgep201 = getelementptr i8, ptr %i.dd, i64 %i.cy
  %bound0202 = icmp ult ptr %i.cn, %scevgep201
  %bound1203 = icmp ult ptr %i.cm, %scevgep200
  %found.conflict204 = and i1 %bound0202, %bound1203
  br i1 %found.conflict204, label %.lr.ph.i.i.i.i.i.i.i.preheader222, label %vector.ph207

vector.ph207:                                     ; preds = %vector.memcheck199
  %n.vec208 = and i64 %.0.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  %broadcast.splatinsert209 = insertelement <2 x double> poison, double %i.cc, i64 0
  %broadcast.splat210 = shufflevector <2 x double> %broadcast.splatinsert209, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body211

vector.body211:                                   ; preds = %vector.body211, %vector.ph207
  %index212 = phi i64 [ 0, %vector.ph207 ], [ %index.next217, %vector.body211 ] ; 3 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %index212 ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN5Eigen8internal40make_block_householder_triangular_factorINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS_5BlockINS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEENS_11VectorBlockIKNS2_IdLi2ELi1ELi0ELi2ELi1EEELin1EEEEEvRT_RKT0_RKT1_:bb.a
  %min.iters.check = icmp ult i64 %i.en, 12
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.preheader221, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %i.eo = mul i64 %i.p, %i.by
  %i.ep = shl i64 %i.ct, 4                        ; 2 uses
  %i.eq = shl i64 %.0.i.i.i.i.i.i.i, 3            ; 2 uses
  %i.er = shl i64 %i.cl, 3                        ; 2 uses
  %i.es = getelementptr i8, ptr %i.bx, i64 %i.eo
  %i.et = getelementptr i8, ptr %i.es, i64 %i.ep
  %i.eu = getelementptr i8, ptr %i.et, i64 %i.eq
  %scevgep = getelementptr i8, ptr %i.eu, i64 %i.er
  %i.ev = mul i64 %i.q, %i.by
  %scevgep191 = getelementptr i8, ptr %i.bx, i64 %i.ev
  %i.ew = mul i64 %i.by, %i.bv
  %i.ex = getelementptr i8, ptr %i.bx, i64 %i.ew
  %i.ey = getelementptr i8, ptr %i.ex, i64 %i.ep
  %i.ez = getelementptr i8, ptr %i.ey, i64 %i.eq
  %scevgep194 = getelementptr i8, ptr %i.ez, i64 %i.er
  %i.fa = mul i64 %i.by, %i.bw
  %scevgep195 = getelementptr i8, ptr %i.bx, i64 %i.fa
  %bound0 = icmp ult ptr %scevgep, %scevgep195
  %bound1 = icmp ult ptr %scevgep194, %scevgep191
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i17.i.i.i.i.i.i.preheader221, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.en, -4                      ; 3 uses
  %i.fb = add i64 %i.cv, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cc, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fc = add i64 %i.cv, %index                   ; 2 uses
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.fc ; 3 uses
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.fc ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %wide.load = load <2 x double>, ptr %i.fe, align 8, !tbaa !15, !alias.scope !1497
  %wide.load196 = load <2 x double>, ptr %i.ff, align 8, !tbaa !15, !alias.scope !1497
  %i.fg = fmul <2 x double> %broadcast.splat, %wide.load
  %i.fh = fmul <2 x double> %broadcast.splat, %wide.load196
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 16 ; 2 uses
  %wide.load197 = load <2 x double>, ptr %i.fd, align 8, !tbaa !15, !alias.scope !1498, !noalias !1497
  %wide.load198 = load <2 x double>, ptr %i.fi, align 8, !tbaa !15, !alias.scope !1498, !noalias !1497
  %i.fj = fadd <2 x double> %i.fg, %wide.load197
  %i.fk = fadd <2 x double> %i.fh, %wide.load198
  store <2 x double> %i.fj, ptr %i.fd, align 8, !tbaa !15, !alias.scope !1498, !noalias !1497
  store <2 x double> %i.fk, ptr %i.fi, align 8, !tbaa !15, !alias.scope !1498, !noalias !1497
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fl = icmp eq i64 %index.next, %n.vec
  br i1 %i.fl, label %middle.block, label %vector.body, !llvm.loop !1487

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.en, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader221

.lr.ph.i17.i.i.i.i.i.i.preheader221:              ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.cv, %vector.memcheck ], [ %i.cv, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.fb, %middle.block ] ; 6 uses
  %i.fm = sub i64 %i.cj, %.05.i18.i.i.i.i.i.i.ph
  %.neg226 = add i64 %.05.i18.i.i.i.i.i.i.ph, 1
  %xtraiter223 = and i64 %i.fm, 1
  %lcmp.mod224.not = icmp eq i64 %xtraiter223, 0
  br i1 %lcmp.mod224.not, label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader221
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %.05.i18.i.i.i.i.i.i.ph
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !15
  %i.fq = fmul double %i.cc, %i.fp
  %i.fr = load double, ptr %i.fn, align 8, !tbaa !15
  %i.fs = fadd double %i.fq, %i.fr
  store double %i.fs, ptr %i.fn, align 8, !tbaa !15
  %i.ft = add nsw i64 %.05.i18.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.preheader221
  %.05.i18.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader221 ], [ %i.ft, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %i.fu = icmp eq i64 %indvar192, %.neg226
  br i1 %i.fu, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.gi, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %.05.i18.i.i.i.i.i.i
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !15
  %i.fy = fmul double %i.cc, %i.fx
  %i.fz = load double, ptr %i.fv, align 8, !tbaa !15
  %i.ga = fadd double %i.fy, %i.fz
  store double %i.ga, ptr %i.fv, align 8, !tbaa !15
  %i.gb = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.gb ; 2 uses
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.gb
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !15
  %i.gf = fmul double %i.cc, %i.ge
  %i.gg = load double, ptr %i.gc, align 8, !tbaa !15
  %i.gh = fadd double %i.gf, %i.gg
  store double %i.gh, ptr %i.gc, align 8, !tbaa !15
  %i.gi = add nsw i64 %.05.i18.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.1 = icmp eq i64 %i.gi, %i.cj
  br i1 %exitcond.not.i19.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !1488

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.gp, %.lr.ph.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i ] ; 3 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %.021.i.i.i.i.i.i
  %i.gl = load <2 x double>, ptr %i.gk, align 1, !tbaa !13
  %i.gm = fmul <2 x double> %i.ek, %i.gl
  %i.gn = load <2 x double>, ptr %i.gj, align 16, !tbaa !13
  %i.go = fadd <2 x double> %i.gn, %i.gm
  store <2 x double> %i.go, ptr %i.gj, align 16, !tbaa !13
  %i.gp = add nuw nsw i64 %.021.i.i.i.i.i.i, 2    ; 2 uses
  %i.gq = icmp slt i64 %i.gp, %i.cv
  br i1 %i.gq, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !1

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i, %.lr.ph
  %i.gr = add nsw i64 %.0182, -1                  ; 2 uses
  %i.gs = icmp sgt i64 %i.gr, %.047183
  %indvar.next193 = add i64 %indvar192, 1
  br i1 %i.gs, label %.lr.ph, label %.loopexit, !llvm.loop !1489

.loopexit:                                        ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit, %bb.b
  %i.gt = load ptr, ptr %2, align 8, !tbaa !338
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %.047183
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !15
  %i.gw = load ptr, ptr %0, align 8, !tbaa !404
  %i.gx = load i64, ptr %i.g, align 8, !tbaa !406
  %i.gy = mul nsw i64 %i.gx, %.047183
  %i.gz = getelementptr [8 x i8], ptr %i.gw, i64 %i.gy
  %i.ha = getelementptr [8 x i8], ptr %i.gz, i64 %.047183
  store double %i.gv, ptr %i.ha, align 8, !tbaa !15
  %i.hb = add nsw i64 %.047183, -1
  %i.hc = icmp sgt i64 %.047183, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.hc, label %bb.b, label %._crit_edge, !llvm.loop !1490
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal40make_block_householder_triangular_factorINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS_5BlockINS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEENS4_IKNS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Transpose.4044", align 8 ; 13 uses
  %4 = alloca %"class.Eigen::Transpose.4052", align 8 ; 10 uses
  %5 = alloca %"class.Eigen::Transpose.4059", align 8 ; 15 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %.sroa.7114 = alloca [64 x i8], align 8         ; 2 uses
  %.sroa.23 = alloca %"class.Eigen::internal::BlockImpl_dense.2843", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !100  ; 5 uses
  %i.d = add nsw i64 %i.c, -1                     ; 3 uses
  %i.e = icmp sgt i64 %i.c, 0
  br i1 %i.e, label %.lr.ph184, label %._crit_edge

.lr.ph184:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.7114.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7114, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.5176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 64
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 72
  %.sroa.15177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 88
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 96
  %.sroa.21.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.22.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.23.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.24.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.sroa.25.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 88
  %.sroa.26.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.8163.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.10165.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 56
  %.sroa.11166.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 64
  %.sroa.12167.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 72
  %.sroa.13168.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 136
  %.sroa.14169.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 144
  %.sroa.15170.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 152
  %.sroa.16171.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 160
  %.sroa.18173.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 176
  %i.k = shl i64 %i.c, 3                          ; 3 uses
  %i.l = add i64 %i.k, -8                         ; 4 uses
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph184, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph184 ], [ %indvar.next, %.loopexit ] ; 3 uses
  %.047183 = phi i64 [ %i.d, %.lr.ph184 ], [ %i.hb, %.loopexit ] ; 15 uses
  %i.m = shl i64 %indvar, 3
  %i.n = sub i64 %i.l, %i.m
  %i.o = mul i64 %indvar, -8                      ; 2 uses
  %i.p = add i64 %i.l, %i.o
  %i.q = add i64 %i.k, %i.o
  %i.r = load i64, ptr %i.f, align 8, !tbaa !100  ; 2 uses
  %.neg = add nuw nsw i64 %.047183, 1             ; 4 uses
  %i.s = xor i64 %.047183, -1                     ; 2 uses
  %i.t = add i64 %i.c, %i.s                       ; 9 uses
  %.not190 = icmp eq i64 %i.t, 0
  br i1 %.not190, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = add i64 %i.r, %i.s                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.23)
  %i.v = load ptr, ptr %2, align 8, !tbaa !338
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.047183
  %i.x = load double, ptr %i.w, align 8, !tbaa !15
  %i.y = fneg double %i.x
  %i.z = load ptr, ptr %1, align 8, !tbaa !333, !noalias !1519 ; 2 uses
  %.idx.i.i.i.i = mul nuw nsw i64 %.047183, 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7114.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %.neg
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !100, !noalias !1520
  %i.ad = sub nsw i64 %i.ac, %i.t                 ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.neg
  %.idx.i.i.i.i50 = mul nsw i64 %i.ad, 24
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 %.idx.i.i.i.i50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.23, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.ag = load ptr, ptr %0, align 8, !tbaa !404, !noalias !1521
  %i.ah = load i64, ptr %i.g, align 8, !tbaa !406, !noalias !1521 ; 5 uses
  %i.ai = mul nsw i64 %i.ah, %.047183
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ai ; 2 uses
  %i.ak = sub nsw i64 %i.ah, %i.t                 ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ak ; 5 uses
  %i.am = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.an = and i64 %i.am, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.ao = lshr exact i64 %i.am, 3
  %i.ap = and i64 %i.ao, 1                        ; 3 uses
  %i.aq = sub nuw nsw i64 %i.t, %i.ap             ; 4 uses
  %i.ar = lshr i64 %i.aq, 1                       ; 2 uses
  %i.as = and i64 %i.aq, 9223372036854775806      ; 3 uses
  %i.at = or disjoint i64 %i.as, %i.ap            ; 2 uses
  %.not = icmp eq i64 %i.ap, 0
  br i1 %.not, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %bb.c, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.au = phi i64 [ %i.at, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.t, %bb.c ]
  %i.av = phi i64 [ %i.as, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %i.aw = phi i64 [ %i.ar, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %i.ax = phi i64 [ %i.aq, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i180 = phi i64 [ 1, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.t, %bb.c ] ; 2 uses
  %i.ay = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i180, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.al, i8 0, i64 %i.ay, i1 false), !tbaa !15
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.az = phi i64 [ %i.au, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.at, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ba = phi i64 [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.as, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bb = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.ar, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bc = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.aq, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i179 = phi i64 [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i180, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ 0, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.bd = icmp samesign ugt i64 %i.bc, 1
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.be = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i179, 3
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.al, i64 %i.be
  %i.bf = add nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i179, 2
  %smax.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.az, i64 %i.bf)
  %i.bg = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i179, -1
  %i.bh = add nsw i64 %smax.i.i.i.i.i, %i.bg
  %i.bi = shl i64 %i.bh, 3
  %i.bj = and i64 %i.bi, -16
  %i.bk = add i64 %i.bj, 16
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i.i.i.i.i, i8 0, i64 %i.bk, i1 false), !tbaa !13
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bl = icmp samesign ult i64 %i.az, %i.t
  br i1 %i.bl, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bm = shl i64 %i.bb, 4
  %i.bn = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i179, 3
  %i.bo = getelementptr i8, ptr %i.al, i64 %i.bm
  %scevgep1.i.i.i.i.i = getelementptr i8, ptr %i.bo, i64 %i.bn
  %i.bp = sub nsw i64 %i.bc, %i.ba
  %i.bq = shl nuw i64 %i.bp, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep1.i.i.i.i.i, i8 0, i64 %i.bq, i1 false), !tbaa !15
  br label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit

_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr %i.al, ptr %3, align 8
  store i64 %i.t, ptr %.sroa.5176.0..sroa_idx, align 8
  store ptr %i.aj, ptr %.sroa.7.0..sroa_idx, align 8
  store i64 %i.ah, ptr %.sroa.9.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.10.0..sroa_idx, align 8
  store i64 %.047183, ptr %.sroa.12.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.13.0..sroa_idx, align 8
  store i64 %i.ah, ptr %.sroa.14.0..sroa_idx, align 8
  store i64 %i.ak, ptr %.sroa.15177.0..sroa_idx, align 8
  store i64 %i.ah, ptr %.sroa.16.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store ptr %i.af, ptr %4, align 8
  store i64 %i.u, ptr %.sroa.21.192..sroa_idx, align 8
  store i64 %i.t, ptr %.sroa.22.192..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.23.192..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.23, i64 56, i1 false)
  store i64 %.neg, ptr %.sroa.24.192..sroa_idx, align 8
  store i64 %i.ad, ptr %.sroa.25.192..sroa_idx, align 8
  store i64 3, ptr %.sroa.26.192..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store i64 %i.u, ptr %i.h, align 8, !alias.scope !1522
  store double %i.y, ptr %i.i, align 8, !tbaa !421, !alias.scope !1522
  store ptr %i.ab, ptr %i.j, align 8
  store i64 %i.u, ptr %.sroa.8163.32..sroa_idx, align 8
  store ptr %i.aa, ptr %.sroa.10165.32..sroa_idx, align 8
  store i64 %i.r, ptr %.sroa.11166.32..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.12167.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7114, i64 64, i1 false)
  store i64 0, ptr %.sroa.13168.32..sroa_idx, align 8
  store i64 %.047183, ptr %.sroa.14169.32..sroa_idx, align 8
  store i64 3, ptr %.sroa.15170.32..sroa_idx, align 8
  store i64 %.neg, ptr %.sroa.16171.32..sroa_idx, align 8
  store i64 3, ptr %.sroa.18173.32..sroa_idx, align 8
  call void @_ZN5Eigen8internal13trmv_selectorILi6ELi1EE3runINS_9TransposeIKNS_5BlockIKNS5_INS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS4_IKNS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS6_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS4_IKNS5_IKNS5_IS9_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEEEENS4_INS5_INS5_INS6_IdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNS16_6ScalarE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(192) %5, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23)
  %i.br = icmp sgt i64 %i.d, %.047183
  br i1 %i.br, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit
  %indvar192 = phi i64 [ %indvar.next193, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit ], [ 0, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit ] ; 4 uses
  %.0182 = phi i64 [ %i.gr, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit ], [ %i.d, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit ] ; 5 uses
  %i.bs = shl i64 %indvar192, 3
  %i.bt = sub i64 %i.l, %i.bs
  %i.bu = mul i64 %indvar192, -8                  ; 2 uses
  %i.bv = add i64 %i.l, %i.bu
  %i.bw = add i64 %i.k, %i.bu
  %i.bx = load ptr, ptr %0, align 8, !tbaa !404   ; 8 uses
  %i.by = load i64, ptr %i.g, align 8, !tbaa !406 ; 9 uses
  %i.bz = mul nsw i64 %i.by, %.047183
  %i.ca = getelementptr [8 x i8], ptr %i.bx, i64 %i.bz ; 2 uses
  %i.cb = getelementptr [8 x i8], ptr %i.ca, i64 %.0182 ; 2 uses
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !15 ; 10 uses
  %i.cd = mul nsw i64 %i.by, %.0182
  %i.ce = getelementptr [8 x i8], ptr %i.bx, i64 %i.cd ; 2 uses
  %i.cf = getelementptr [8 x i8], ptr %i.ce, i64 %.0182
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !15
  %i.ch = fmul double %i.cc, %i.cg
  store double %i.ch, ptr %i.cb, align 8, !tbaa !15
  %i.ci = xor i64 %.0182, -1
  %i.cj = add i64 %i.c, %i.ci                     ; 8 uses
  %i.ck = icmp sgt i64 %i.cj, 0
  br i1 %i.ck, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %.lr.ph
  %i.cl = sub nsw i64 %i.by, %i.cj                ; 4 uses
  %i.cm = getelementptr [8 x i8], ptr %i.ce, i64 %i.cl ; 10 uses
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.cl ; 11 uses
  %.sroa.3.8.vec.insert.i.i.i.i.i = insertelement <2 x double> poison, double %i.cc, i64 0
  %i.co = ptrtoint ptr %i.cn to i64               ; 2 uses
  %i.cp = and i64 %i.co, 7
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cp, 0
  %i.cq = lshr exact i64 %i.co, 3
  %i.cr = and i64 %i.cq, 1
  %.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 %i.cr, i64 %i.cj ; 13 uses
  %i.cs = sub nsw i64 %i.cj, %.0.i.i.i.i.i.i.i    ; 2 uses
  %i.ct = sdiv i64 %i.cs, 2                       ; 2 uses
  %i.cu = shl nsw i64 %i.ct, 1                    ; 2 uses
  %i.cv = add nsw i64 %i.cu, %.0.i.i.i.i.i.i.i    ; 6 uses
  %.not181 = icmp eq i64 %.0.i.i.i.i.i.i.i, 0
  br i1 %.not181, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %min.iters.check206 = icmp ult i64 %.0.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check206, label %.lr.ph.i.i.i.i.i.i.i.preheader222, label %vector.memcheck199

vector.memcheck199:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.cw = mul i64 %i.n, %i.by
  %i.cx = shl i64 %.0.i.i.i.i.i.i.i, 3            ; 2 uses
  %i.cy = shl i64 %i.cl, 3                        ; 2 uses
  %i.cz = getelementptr i8, ptr %i.bx, i64 %i.cw
  %i.da = getelementptr i8, ptr %i.cz, i64 %i.cx
  %scevgep200 = getelementptr i8, ptr %i.da, i64 %i.cy
  %i.db = mul i64 %i.by, %i.bt
  %i.dc = getelementptr i8, ptr %i.bx, i64 %i.db
  %i.dd = getelementptr i8, ptr %i.dc, i64 %i.cx
  %scevgep201 = getelementptr i8, ptr %i.dd, i64 %i.cy
  %bound0202 = icmp ult ptr %i.cn, %scevgep201
  %bound1203 = icmp ult ptr %i.cm, %scevgep200
  %found.conflict204 = and i1 %bound0202, %bound1203
  br i1 %found.conflict204, label %.lr.ph.i.i.i.i.i.i.i.preheader222, label %vector.ph207

vector.ph207:                                     ; preds = %vector.memcheck199
  %n.vec208 = and i64 %.0.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  %broadcast.splatinsert209 = insertelement <2 x double> poison, double %i.cc, i64 0
  %broadcast.splat210 = shufflevector <2 x double> %broadcast.splatinsert209, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body211

vector.body211:                                   ; preds = %vector.body211, %vector.ph207
  %index212 = phi i64 [ 0, %vector.ph207 ], [ %index.next217, %vector.body211 ] ; 3 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %index212 ; 3 uses
end_hunk_3
