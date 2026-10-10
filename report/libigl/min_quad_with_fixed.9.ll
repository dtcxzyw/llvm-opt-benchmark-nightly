Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/min_quad_with_fixed.9?download=true
inline.NumInlined: 35072
inline.NumDeleted: 18954
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 102
loop-unroll.NumUnrolled: 153
begin_hunk_0_@_ZN3igl19min_quad_with_fixedIfLi4ELi2ELb0EEEN5Eigen6MatrixIT_XT0_ELi1EXorLNS1_14StorageOptionsE0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEERKNS2_IS3_XT0_EXT0_EXorLS4_0EquaaeqT0_Li1EneT0_Li1ELS4_1EquaaeqT0_Li1EneT0_Li1ELS4_0ELS4_0EEXT0_EXT0_EEERKS5_RKNS1_5ArrayIbXT0_ELi1EXorLS4_0EquaaeqT0_Li1EneLi1ELi1ELS4_1EquaaeqLi1ELi1EneT0_Li1ELS4_0ELS4_0EEXT0_ELi1EEESA_:bb.a
  %i.ie = extractelement <2 x float> %i.fu, i64 0
  %.sink = select i1 %i.ic, float %i.ie, float %i.id
  %not. = xor i1 %i.ic, true
  %.141 = zext i1 %not. to i32
  store float %.sink, ptr %0, align 16, !tbaa !10
  %i.if = load i8, ptr %i.db, align 1, !tbaa !13, !range !14, !noundef !15 ; 2 uses
  %i.ig = trunc nuw i8 %i.if to i1                ; 2 uses
  %i.ih = zext nneg i8 %i.ib to i64
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.ih
  %.sroa.sel.idx = select i1 %i.ic, i64 0, i64 4
  %.sroa.sel = getelementptr inbounds nuw i8, ptr %9, i64 %.sroa.sel.idx
  %i.ij = select i1 %i.ic, i32 1, i32 2
  %.sink77.in = select i1 %i.ig, ptr %i.ii, ptr %.sroa.sel
  %.141.1 = select i1 %i.ig, i32 %.141, i32 %i.ij ; 2 uses
  %narrow = add nuw nsw i8 %i.ib, %i.if           ; 2 uses
  %.sink77 = load float, ptr %.sink77.in, align 4, !tbaa !10
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %.sink77, ptr %i.ik, align 4, !tbaa !10
  %i.il = load i8, ptr %i.ia, align 1, !tbaa !13, !range !14, !noundef !15 ; 2 uses
  %i.im = trunc nuw i8 %i.il to i1                ; 2 uses
  %i.in = zext nneg i8 %narrow to i64
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.in
  %i.ip = zext nneg i32 %.141.1 to i64
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %i.ip
  %.sink78.in = select i1 %i.im, ptr %i.io, ptr %i.iq
  %not.111 = xor i1 %i.im, true
  %i.ir = zext i1 %not.111 to i32
  %.141.2 = add nuw nsw i32 %.141.1, %i.ir
  %narrow112 = add nuw nsw i8 %narrow, %i.il
  %.1.2 = zext nneg i8 %narrow112 to i32
  %.sink78 = load float, ptr %.sink78.in, align 4, !tbaa !10
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sink78, ptr %i.is, align 8, !tbaa !10
  %i.it = load i8, ptr %i.hz, align 1, !tbaa !13, !range !14, !noundef !15
  %i.iu = trunc nuw i8 %i.it to i1                ; 2 uses
  %.1.2.sink = select i1 %i.iu, i32 %.1.2, i32 %.141.2
  %.sink107 = select i1 %i.iu, ptr %8, ptr %9
  %i.iv = zext nneg i32 %.1.2.sink to i64
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %.sink107, i64 %i.iv
  %.sink79 = load float, ptr %i.iw, align 4, !tbaa !10
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %.sink79, ptr %i.ix, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEEE14computeInPlaceEv(ptr noundef nonnull align 16 dereferenceable(240) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Eigen::Block.89", align 8   ; 10 uses
  %2 = alloca %"class.Eigen::Transpose.794", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load float, ptr %i.a, align 8, !tbaa !101
  %i.c = tail call noundef float @llvm.fabs.f32(float %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 177
  %i.e = load i8, ptr %i.d, align 1, !tbaa !41, !range !14, !noundef !15
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.h = load float, ptr %i.g, align 4
  %i.i = select i1 %i.f, float %i.h, float f0x35000000
  %i.j = fmul float %i.c, %i.i                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.l = load i64, ptr %i.k, align 16, !tbaa !102 ; 5 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.preheader, label %.loopexit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.l, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader223, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.l, 9223372036854775804      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x float> poison, float %i.j, i64 0
  %broadcast.splat = shufflevector <2 x float> %broadcast.splatinsert, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi178 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %i.n = or disjoint i64 %index, 1                ; 2 uses
  %i.o = or disjoint i64 %index, 2                ; 2 uses
  %i.p = or disjoint i64 %index, 3                ; 2 uses
  %i.q = getelementptr [4 x i8], ptr %0, i64 %index
  %i.r = getelementptr [4 x i8], ptr %0, i64 %i.n
  %i.s = getelementptr [4 x i8], ptr %0, i64 %i.o
  %i.t = getelementptr [4 x i8], ptr %0, i64 %i.p
  %i.u = shl i64 %index, 4
  %i.v = shl i64 %i.n, 4
  %i.w = shl i64 %i.o, 4
  %i.x = shl i64 %i.p, 4
  %i.y = getelementptr i8, ptr %i.q, i64 %i.u
  %i.z = getelementptr i8, ptr %i.r, i64 %i.v
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.w
  %i.ab = getelementptr i8, ptr %i.t, i64 %i.x
  %i.ac = load float, ptr %i.y, align 16, !tbaa !10
  %i.ad = load float, ptr %i.z, align 4, !tbaa !10
  %i.ae = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %i.ad, i64 1
  %i.ag = load float, ptr %i.aa, align 8, !tbaa !10
  %i.ah = load float, ptr %i.ab, align 4, !tbaa !10
  %i.ai = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.aj = insertelement <2 x float> %i.ai, float %i.ah, i64 1
  %i.ak = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.af)
  %i.al = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.aj)
  %i.am = fcmp ogt <2 x float> %i.ak, %broadcast.splat
  %i.an = fcmp ogt <2 x float> %i.al, %broadcast.splat
  %i.ao = zext <2 x i1> %i.am to <2 x i64>
  %i.ap = zext <2 x i1> %i.an to <2 x i64>
  %i.aq = add <2 x i64> %vec.phi, %i.ao           ; 2 uses
  %i.ar = add <2 x i64> %vec.phi178, %i.ap        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !365

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ar, %i.aq
  %i.at = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEEE4rankEv.exit, label %.lr.ph.i.preheader223

.lr.ph.i.preheader223:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.09.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  %.078.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader223, %.lr.ph.i
  %.09.i = phi i64 [ %i.bb, %.lr.ph.i ], [ %.09.i.ph, %.lr.ph.i.preheader223 ] ; 3 uses
  %.078.i = phi i64 [ %i.ba, %.lr.ph.i ], [ %.078.i.ph, %.lr.ph.i.preheader223 ]
  %i.au = getelementptr [4 x i8], ptr %0, i64 %.09.i
  %.idx.i.i = shl i64 %.09.i, 4
  %i.av = getelementptr i8, ptr %i.au, i64 %.idx.i.i
  %i.aw = load float, ptr %i.av, align 4, !tbaa !10
  %i.ax = tail call noundef float @llvm.fabs.f32(float %i.aw)
  %i.ay = fcmp ogt float %i.ax, %i.j
  %i.az = zext i1 %i.ay to i64
  %i.ba = add nuw nsw i64 %.078.i, %i.az          ; 2 uses
  %i.bb = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bb, %i.l
  br i1 %exitcond.not.i, label %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEEE4rankEv.exit, label %.lr.ph.i, !llvm.loop !366

_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEEE4rankEv.exit: ; preds = %.lr.ph.i, %middle.block
  %.lcssa177 = phi i64 [ %i.at, %middle.block ], [ %i.ba, %.lr.ph.i ] ; 16 uses
  %i.bc = icmp samesign ult i64 %.lcssa177, 4
  br i1 %i.bc, label %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEEE4rankEv.exit.thread, label %.loopexit

_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEEE4rankEv.exit.thread: ; preds = %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEEE4rankEv.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bf = add nsw i64 %.lcssa177, -1              ; 6 uses
  %.not164 = icmp eq i64 %.lcssa177, 0
  br i1 %.not164, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEEE4rankEv.exit.thread
  %.idx.i.i.i.i30 = shl i64 %i.bf, 4              ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i30 ; 9 uses
  %i.bh = sub nuw nsw i64 4, %.lcssa177
  %i.bi = sub nuw nsw i64 5, %.lcssa177
  %.not160 = icmp eq i64 %.lcssa177, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.idx.i.i.i.i.i33 = shl nuw nsw i64 %.lcssa177, 4
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.786.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.887.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.988.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.1089.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.sroa.1191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.sroa.1292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bp = mul nuw i64 %.lcssa177, 20
  %i.bq = add nsw i64 %i.bp, -16                  ; 4 uses
  %scevgep181 = getelementptr i8, ptr %0, i64 %.idx.i.i.i.i30
  %scevgep201 = getelementptr i8, ptr %0, i64 %.idx.i.i.i.i30
  %i.br = getelementptr i8, ptr %0, i64 %i.bq
  %i.bs = getelementptr i8, ptr %0, i64 %i.bq
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.lcssa177, 3
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %.lcssa177, 2
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.lcssa177, 3
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %.lcssa177, 2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit49
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit49 ] ; 9 uses
  %.0163 = phi i64 [ %i.bf, %.lr.ph ], [ %i.fv, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit49 ] ; 20 uses
  %i.bt = sub i64 %i.bf, %indvar
  %i.bu = shl i64 %i.bt, 4
  %scevgep198 = getelementptr i8, ptr %0, i64 %i.bu
  %i.bv = sub i64 %.lcssa177, %indvar
  %i.bw = shl i64 %i.bv, 2
  %i.bx = and i64 %i.bw, -16                      ; 2 uses
  %scevgep199 = getelementptr i8, ptr %scevgep198, i64 %i.bx
  %i.by = mul i64 %indvar, -20
  %scevgep200 = getelementptr i8, ptr %i.br, i64 %i.by
  %scevgep202 = getelementptr i8, ptr %scevgep201, i64 %i.bx
  %i.bz = shl i64 %indvar, 2
  %i.ca = sub i64 %i.bq, %i.bz
  %scevgep203 = getelementptr i8, ptr %0, i64 %i.ca
  %i.cb = sub i64 %i.bf, %indvar
  %i.cc = shl i64 %i.cb, 4
  %scevgep = getelementptr i8, ptr %0, i64 %i.cc
  %i.cd = sub i64 %.lcssa177, %indvar
  %i.ce = shl i64 %i.cd, 2
  %i.cf = and i64 %i.ce, -16                      ; 2 uses
  %scevgep179 = getelementptr i8, ptr %scevgep, i64 %i.cf
  %i.cg = mul i64 %indvar, -20
  %scevgep180 = getelementptr i8, ptr %i.bs, i64 %i.cg
  %scevgep182 = getelementptr i8, ptr %scevgep181, i64 %i.cf
  %i.ch = shl i64 %indvar, 2
  %i.ci = sub i64 %i.bq, %i.ch
  %scevgep183 = getelementptr i8, ptr %0, i64 %i.ci
  %.not = icmp eq i64 %.0163, %i.bf               ; 2 uses
  br i1 %.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.b
  %.idx.i.i.i.i = shl nuw nsw i64 %.0163, 4
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i ; 4 uses
  %i.ck = add nuw nsw i64 %.0163, 1               ; 4 uses
  %i.cl = and i64 %i.ck, 9223372036854775804      ; 4 uses
  %.not159 = icmp sgt i64 %i.cl, %.0163
  br i1 %.not159, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.cm = and i64 %i.ck, -9223372036854775805     ; 2 uses
  %min.iters.check208 = icmp ult i64 %i.cm, 8
  br i1 %min.iters.check208, label %.lr.ph.i17.i.i.i.i.i.i.preheader222, label %vector.memcheck197

vector.memcheck197:                               ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %bound0204 = icmp ult ptr %scevgep199, %scevgep203
  %bound1205 = icmp ult ptr %scevgep202, %scevgep200
  %found.conflict206 = and i1 %bound0204, %bound1205
  br i1 %found.conflict206, label %.lr.ph.i17.i.i.i.i.i.i.preheader222, label %vector.ph209

vector.ph209:                                     ; preds = %vector.memcheck197
  %n.vec210 = and i64 %i.ck, -9223372036854775808 ; 2 uses
  %i.cn = and i64 %i.ck, -4
  br label %vector.body211

vector.body211:                                   ; preds = %vector.body211, %vector.ph209
  %index212 = phi i64 [ 0, %vector.ph209 ], [ %index.next217, %vector.body211 ] ; 2 uses
  %i.co = add nuw i64 %i.cl, %index212            ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.co ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.co ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %wide.load213 = load <4 x float>, ptr %i.cp, align 16, !tbaa !10, !alias.scope !381, !noalias !382
  %wide.load214 = load <4 x float>, ptr %i.cr, align 16, !tbaa !10, !alias.scope !381, !noalias !382
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %wide.load215 = load <4 x float>, ptr %i.cq, align 16, !tbaa !10, !alias.scope !382
  %wide.load216 = load <4 x float>, ptr %i.cs, align 16, !tbaa !10, !alias.scope !382
  store <4 x float> %wide.load215, ptr %i.cp, align 16, !tbaa !10, !alias.scope !381, !noalias !382
  store <4 x float> %wide.load216, ptr %i.cr, align 16, !tbaa !10, !alias.scope !381, !noalias !382
  store <4 x float> %wide.load213, ptr %i.cq, align 16, !tbaa !10, !alias.scope !382
  store <4 x float> %wide.load214, ptr %i.cs, align 16, !tbaa !10, !alias.scope !382
  %index.next217 = add nuw i64 %index212, 8       ; 2 uses
  %i.ct = icmp eq i64 %index.next217, %n.vec210
  br i1 %i.ct, label %middle.block218, label %vector.body211, !llvm.loop !370

middle.block218:                                  ; preds = %vector.body211
  %cmp.n219 = icmp eq i64 %i.cm, %n.vec210
  br i1 %cmp.n219, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader222

.lr.ph.i17.i.i.i.i.i.i.preheader222:              ; preds = %vector.memcheck197, %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block218
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.cl, %vector.memcheck197 ], [ %i.cl, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.cn, %middle.block218 ] ; 5 uses
  %i.cu = and i64 %.0163, 1
  %lcmp.mod.not.not = icmp eq i64 %i.cu, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i17.i.i.i.i.i.i.prol, label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader222
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.cx = load float, ptr %i.cv, align 16, !tbaa !10
  %i.cy = load float, ptr %i.cw, align 16, !tbaa !10
  store float %i.cy, ptr %i.cv, align 16, !tbaa !10
  store float %i.cx, ptr %i.cw, align 16, !tbaa !10
  %i.cz = or disjoint i64 %.05.i18.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.preheader222
  %.05.i18.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader222 ], [ %i.cz, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %i.da = icmp eq i64 %.0163, %.05.i18.i.i.i.i.i.i.ph
  br i1 %i.da, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.dk, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.dd = load float, ptr %i.db, align 4, !tbaa !10
  %i.de = load float, ptr %i.dc, align 4, !tbaa !10
  store float %i.de, ptr %i.db, align 4, !tbaa !10
  store float %i.dd, ptr %i.dc, align 4, !tbaa !10
  %i.df = add nuw nsw i64 %.05.i18.i.i.i.i.i.i, 1 ; 3 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.df ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.df ; 2 uses
  %i.di = load float, ptr %i.dg, align 4, !tbaa !10
  %i.dj = load float, ptr %i.dh, align 4, !tbaa !10
  store float %i.dj, ptr %i.dg, align 4, !tbaa !10
  store float %i.di, ptr %i.dh, align 4, !tbaa !10
  %i.dk = add nuw nsw i64 %.05.i18.i.i.i.i.i.i, 2
  %exitcond.not.i19.i.i.i.i.i.i.1 = icmp eq i64 %i.df, %.0163
  br i1 %exitcond.not.i19.i.i.i.i.i.i.1, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !371

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i, %middle.block218, %._crit_edge.i.i.i.i.i.i, %bb.b
  %i.dl = getelementptr [4 x i8], ptr %0, i64 %.0163 ; 3 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 %.idx.i.i.i.i30 ; 7 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.0163 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 5 uses
  %i.dp = load float, ptr %i.do, align 4, !tbaa !10 ; 2 uses
  %i.dq = fmul float %i.dp, %i.dp                 ; 2 uses
  br i1 %.not160, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i31

.lr.ph.i.i.i.i.i.i31:                             ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, %.lr.ph.i.i.i.i.i.i31
  %.01725.i.i.i.i.i.i = phi i64 [ %i.dv, %.lr.ph.i.i.i.i.i.i31 ], [ 1, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit ] ; 3 uses
  %.02324.i.i.i.i.i.i = phi float [ %i.du, %.lr.ph.i.i.i.i.i.i31 ], [ %i.dq, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit ]
  %.idx.i.i.i.i.i.i.i.i.i = shl i64 %.01725.i.i.i.i.i.i, 4
  %i.dr = getelementptr i8, ptr %i.do, i64 %.idx.i.i.i.i.i.i.i.i.i
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !10 ; 2 uses
  %i.dt = fmul float %i.ds, %i.ds
  %i.du = fadd float %.02324.i.i.i.i.i.i, %i.dt   ; 2 uses
  %i.dv = add nuw nsw i64 %.01725.i.i.i.i.i.i, 1
  %i.dw = xor i64 %.01725.i.i.i.i.i.i, %.lcssa177
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.dw, 3
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i31, !llvm.loop !372

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i31, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit
  %i.dx = phi float [ %i.dq, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi4ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit ], [ %i.du, %.lr.ph.i.i.i.i.i.i31 ] ; 2 uses
  %i.dy = load float, ptr %i.dm, align 4, !tbaa !10 ; 8 uses
  %i.dz = fcmp ugt float %i.dx, f0x00800000
  br i1 %i.dz, label %.critedge.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i
  store float 0.000000e+00, ptr %i.dn, align 4, !tbaa !10
  store float 0.000000e+00, ptr %i.do, align 4, !tbaa !10
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERfS7_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  store float 0.000000e+00, ptr %i.ea, align 4, !tbaa !10
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERfS7_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dm, i64 48
  store float 0.000000e+00, ptr %i.eb, align 4, !tbaa !10
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERfS7_.exit

.critedge.i.i:                                    ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i
  %i.ec = fmul float %i.dy, %i.dy
  %i.ed = fadd float %i.dx, %i.ec
  %i.ee = call noundef float @sqrtf(float noundef %i.ed) #14 ; 2 uses
  %i.ef = fcmp ult float %i.dy, 0.000000e+00
  %i.eg = fneg float %i.ee
  %storemerge.i.i = select i1 %i.ef, float %i.ee, float %i.eg ; 4 uses
  %i.eh = fsub float %i.dy, %storemerge.i.i       ; 3 uses
  %i.ei = load float, ptr %i.do, align 4, !tbaa !10
  %i.ej = fdiv float %i.ei, %i.eh
  store float %i.ej, ptr %i.do, align 4, !tbaa !10
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS0_IKS4_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIfEEKNS1_IfLi1ELin1ELi1ELi1ELi4EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.1:                 ; preds = %.critedge.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dm, i64 32 ; 2 uses
  %i.el = load float, ptr %i.ek, align 4, !tbaa !10
  %i.em = fdiv float %i.el, %i.eh
  store float %i.em, ptr %i.ek, align 4, !tbaa !10
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS0_IKS4_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIfEEKNS1_IfLi1ELin1ELi1ELi1ELi4EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.2:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.en = getelementptr inbounds nuw i8, ptr %i.dm, i64 48 ; 2 uses
  %i.eo = load float, ptr %i.en, align 4, !tbaa !10
  %i.ep = fdiv float %i.eo, %i.eh
  store float %i.ep, ptr %i.en, align 4, !tbaa !10
  br label %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS0_IKS4_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIfEEKNS1_IfLi1ELin1ELi1ELi1ELi4EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i

_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS0_IKS4_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIfEEKNS1_IfLi1ELin1ELi1ELi1ELi4EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.1, %.critedge.i.i
  %i.eq = fsub float %storemerge.i.i, %i.dy
  %i.er = fdiv float %i.eq, %storemerge.i.i
  store float %i.er, ptr %i.dn, align 4, !tbaa !10
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERfS7_.exit

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERfS7_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2, %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS0_IKS4_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIfEEKNS1_IfLi1ELin1ELi1ELi1ELi4EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i
  %.0156 = phi float [ %storemerge.i.i, %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS0_IKS4_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIfEEKNS1_IfLi1ELin1ELi1ELi1ELi4EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i ], [ %i.dy, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 ], [ %i.dy, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 ], [ %i.dy, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  store float %.0156, ptr %i.dm, align 4, !tbaa !10
  %.not29 = icmp eq i64 %.0163, 0
  br i1 %.not29, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERfS7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  store ptr %i.bg, ptr %1, align 8, !tbaa !106, !alias.scope !383
  store i64 %.0163, ptr %i.bj, align 8, !tbaa !107, !alias.scope !383
  store i64 %i.bi, ptr %i.bk, align 8, !tbaa !107, !alias.scope !383
  store ptr %0, ptr %i.bl, align 8, !tbaa !109, !alias.scope !383
  store i64 0, ptr %i.bm, align 8, !tbaa !107, !alias.scope !383
  store i64 %i.bf, ptr %i.bn, align 8, !tbaa !107, !alias.scope !383
  store i64 4, ptr %i.bo, align 8, !tbaa !112, !alias.scope !383
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.es = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.idx.i.i.i.i.i33
  store ptr %i.es, ptr %2, align 8
  store i64 %i.bh, ptr %.sroa.483.0..sroa_idx, align 8
  store ptr %i.dl, ptr %.sroa.584.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.786.0..sroa_idx, align 8
  store i64 %.0163, ptr %.sroa.887.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.988.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.1089.0..sroa_idx, align 8
  store i64 %.lcssa177, ptr %.sroa.1191.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.1292.0..sroa_idx, align 8
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS_9TransposeIKNS1_INS1_IS3_Li1ELi4ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKfPf(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.dn, ptr noundef nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
end_hunk_0
begin_hunk_1_@_ZN5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEEE14computeInPlaceEv:bb.a
  %cmp.n227 = icmp eq i64 %i.dd, %n.vec218
  br i1 %cmp.n227, label %.loopexit176, label %.lr.ph.i17.i.i.i.i.i.i.preheader237

.lr.ph.i17.i.i.i.i.i.i.preheader237:              ; preds = %vector.memcheck206, %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block226
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.cl, %vector.memcheck206 ], [ %i.cl, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.dh, %middle.block226 ] ; 6 uses
  %i.do = sub i64 %i.cd, %.05.i18.i.i.i.i.i.i.ph
  %xtraiter246 = and i64 %i.do, 1
  %lcmp.mod247.not = icmp eq i64 %xtraiter246, 0
  br i1 %lcmp.mod247.not, label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader237
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.dr = load float, ptr %i.dp, align 4, !tbaa !10
  %i.ds = load float, ptr %i.dq, align 4, !tbaa !10
  store float %i.ds, ptr %i.dp, align 4, !tbaa !10
  store float %i.dr, ptr %i.dq, align 4, !tbaa !10
  %i.dt = add nsw i64 %.05.i18.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.preheader237
  %.05.i18.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader237 ], [ %i.dt, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %i.du = icmp eq i64 %.0162, %.05.i18.i.i.i.i.i.i.ph
  br i1 %i.du, label %.loopexit176, label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.ee, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.dx = load float, ptr %i.dv, align 4, !tbaa !10
  %i.dy = load float, ptr %i.dw, align 4, !tbaa !10
  store float %i.dy, ptr %i.dv, align 4, !tbaa !10
  store float %i.dx, ptr %i.dw, align 4, !tbaa !10
  %i.dz = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 3 uses
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.dz ; 2 uses
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.dz ; 2 uses
  %i.ec = load float, ptr %i.ea, align 4, !tbaa !10
  %i.ed = load float, ptr %i.eb, align 4, !tbaa !10
  store float %i.ed, ptr %i.ea, align 4, !tbaa !10
  store float %i.ec, ptr %i.eb, align 4, !tbaa !10
  %i.ee = add nsw i64 %.05.i18.i.i.i.i.i.i, 2
  %exitcond.not.i19.i.i.i.i.i.i.1 = icmp eq i64 %i.dz, %.0162
  br i1 %exitcond.not.i19.i.i.i.i.i.i.1, label %.loopexit176, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !915

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIfEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.ej, %.lr.ph.i.i.i.i.i.i ], [ %i.ci, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIfEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.eg = load <4 x float>, ptr %i.ef, align 4, !tbaa !11
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.ei = load <4 x float>, ptr %i.eh, align 16, !tbaa !11
  store <4 x float> %i.ei, ptr %i.ef, align 4, !tbaa !11
  store <4 x float> %i.eg, ptr %i.eh, align 16, !tbaa !11
  %i.ej = add nuw nsw i64 %.021.i.i.i.i.i.i, 4    ; 2 uses
  %i.ek = icmp slt i64 %i.ej, %i.cl
  br i1 %i.ek, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !916

.loopexit176:                                     ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i, %middle.block226, %bb.b, %._crit_edge.i.i.i.i.i.i
  %i.el = getelementptr [4 x i8], ptr %0, i64 %.0162 ; 3 uses
  %i.em = getelementptr i8, ptr %i.el, i64 %.idx.i.i.i.i30 ; 4 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.0162 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 12 ; 7 uses
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !10 ; 2 uses
  %i.eq = fmul float %i.ep, %i.ep                 ; 2 uses
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i.i31, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i

.lr.ph.i.i.i.i.i.i31:                             ; preds = %.loopexit176
  %i.er = getelementptr i8, ptr %i.em, i64 24
  %i.es = load float, ptr %i.er, align 4, !tbaa !10 ; 2 uses
  %i.et = fmul float %i.es, %i.es
  %i.eu = fadd float %i.eq, %i.et
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i31, %.loopexit176
  %i.ev = phi float [ %i.eq, %.loopexit176 ], [ %i.eu, %.lr.ph.i.i.i.i.i.i31 ] ; 2 uses
  %i.ew = load float, ptr %i.em, align 4, !tbaa !10 ; 6 uses
  %i.ex = fcmp ugt float %i.ev, f0x00800000
  br i1 %i.ex, label %.critedge.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i
  store float 0.000000e+00, ptr %i.en, align 4, !tbaa !10
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil

.critedge.i.i:                                    ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i
  %i.ey = fmul float %i.ew, %i.ew
  %i.ez = fadd float %i.ev, %i.ey
  %i.fa = call noundef float @sqrtf(float noundef %i.ez) #14 ; 2 uses
  %i.fb = fcmp ult float %i.ew, 0.000000e+00
  %i.fc = fneg float %i.fa
  %storemerge.i.i = select i1 %i.fb, float %i.fa, float %i.fc ; 4 uses
  %i.fd = fsub float %i.ew, %storemerge.i.i       ; 2 uses
  br i1 %min.iters.check196, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %vector.ph197

vector.ph197:                                     ; preds = %.critedge.i.i
  %broadcast.splatinsert199 = insertelement <4 x float> poison, float %i.fd, i64 0
  %broadcast.splat200 = shufflevector <4 x float> %broadcast.splatinsert199, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body201

vector.body201:                                   ; preds = %vector.body201, %vector.ph197
  %index202 = phi i64 [ 0, %vector.ph197 ], [ %index.next203, %vector.body201 ] ; 5 uses
  %i.fe = mul nuw nsw i64 %index202, 12
  %i.ff = mul nuw i64 %index202, 12
  %i.fg = mul nuw i64 %index202, 12
  %i.fh = mul nuw i64 %index202, 12
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.fe ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.ff
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 12 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.fg
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 24 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.fh
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 36 ; 2 uses
  %i.fp = load float, ptr %i.fi, align 4, !tbaa !10
  %i.fq = load float, ptr %i.fk, align 4, !tbaa !10
  %i.fr = load float, ptr %i.fm, align 4, !tbaa !10
  %i.fs = load float, ptr %i.fo, align 4, !tbaa !10
  %i.ft = insertelement <4 x float> poison, float %i.fp, i64 0
  %i.fu = insertelement <4 x float> %i.ft, float %i.fq, i64 1
  %i.fv = insertelement <4 x float> %i.fu, float %i.fr, i64 2
  %i.fw = insertelement <4 x float> %i.fv, float %i.fs, i64 3
  %i.fx = fdiv <4 x float> %i.fw, %broadcast.splat200 ; 4 uses
  %i.fy = extractelement <4 x float> %i.fx, i64 0
  store float %i.fy, ptr %i.fi, align 4, !tbaa !10
  %i.fz = extractelement <4 x float> %i.fx, i64 1
  store float %i.fz, ptr %i.fk, align 4, !tbaa !10
  %i.ga = extractelement <4 x float> %i.fx, i64 2
  store float %i.ga, ptr %i.fm, align 4, !tbaa !10
  %i.gb = extractelement <4 x float> %i.fx, i64 3
  store float %i.gb, ptr %i.fo, align 4, !tbaa !10
  %index.next203 = add nuw i64 %index202, 4
  br label %vector.body201, !llvm.loop !917

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.critedge.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gf, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.critedge.i.i ] ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 12
  %i.gc = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !10
  %i.ge = fdiv float %i.gd, %i.fd
  store float %i.ge, ptr %i.gc, align 4, !tbaa !10
  %i.gf = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gf, %i.bh
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS0_IKS4_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIfEEKNS1_IfLi1ELin1ELi1ELi1ELi3EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !918

_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS0_IKS4_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIfEEKNS1_IfLi1ELin1ELi1ELi1ELi3EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gg = fsub float %storemerge.i.i, %i.ew
  %i.gh = fdiv float %i.gg, %storemerge.i.i
  store float %i.gh, ptr %i.en, align 4, !tbaa !10
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERfS7_.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.gj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = mul nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, 12
  %i.gi = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil
  store float 0.000000e+00, ptr %i.gi, align 4, !tbaa !10
  %i.gj = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %i.bh
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERfS7_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !919

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERfS7_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS0_IKS4_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIfEEKNS1_IfLi1ELin1ELi1ELi1ELi3EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i
  %.0156 = phi float [ %storemerge.i.i, %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS0_IKS4_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIfEEKNS1_IfLi1ELin1ELi1ELi1ELi3EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i ], [ %i.ew, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ]
  store float %.0156, ptr %i.em, align 4, !tbaa !10
  %.not29 = icmp eq i64 %.0162, 0
  br i1 %.not29, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERfS7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  store ptr %i.bg, ptr %1, align 8, !tbaa !245, !alias.scope !930
  store i64 %.0162, ptr %i.bk, align 8, !tbaa !107, !alias.scope !930
  store i64 %i.bi, ptr %i.bl, align 8, !tbaa !107, !alias.scope !930
  store ptr %0, ptr %i.bm, align 8, !tbaa !247, !alias.scope !930
  store i64 0, ptr %i.bn, align 8, !tbaa !107, !alias.scope !930
  store i64 %i.bf, ptr %i.bo, align 8, !tbaa !107, !alias.scope !930
  store i64 3, ptr %i.bp, align 8, !tbaa !250, !alias.scope !930
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.gk = getelementptr inbounds nuw i8, ptr %i.el, i64 %.idx.i.i.i.i.i33
  store ptr %i.gk, ptr %2, align 8
  store i64 %i.bh, ptr %.sroa.483.0..sroa_idx, align 8
  store ptr %i.el, ptr %.sroa.584.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.786.0..sroa_idx, align 8
  store i64 %.0162, ptr %.sroa.887.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.988.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.1089.0..sroa_idx, align 8
  store i64 %.lcssa, ptr %.sroa.1191.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.1292.0..sroa_idx, align 8
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS_9TransposeIKNS1_INS1_IS3_Li1ELi3ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKfPf(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.en, ptr noundef nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi1ELi3ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERfS7_.exit
  br i1 %.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit49, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i37

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i37: ; preds = %bb.d
  %.idx.i.i.i.i34 = mul nuw nsw i64 %.0162, 12
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i34 ; 11 uses
  %i.gm = add nuw nsw i64 %.0162, 1               ; 4 uses
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = lshr exact i64 %i.gn, 2
  %i.gp = sub nsw i64 0, %i.go
  %i.gq = and i64 %i.gp, 3
  %i.gr = call i64 @llvm.smin.i64(i64 %i.gq, i64 %i.gm) ; 8 uses
  %i.gs = sub i64 %i.gm, %i.gr                    ; 3 uses
  %i.gt = and i64 %i.gs, -4                       ; 2 uses
  %i.gu = add nsw i64 %i.gt, %i.gr                ; 6 uses
  %i.gv = icmp sgt i64 %i.gr, 0
  br i1 %i.gv, label %.lr.ph.i.i.i.i.i.i.i46, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIfEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i39

.lr.ph.i.i.i.i.i.i.i46:                           ; preds = %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i37
  %i.gw = load float, ptr %i.gl, align 4, !tbaa !10
  %i.gx = load float, ptr %i.bg, align 4, !tbaa !10
  store float %i.gx, ptr %i.gl, align 4, !tbaa !10
  store float %i.gw, ptr %i.bg, align 4, !tbaa !10
  %exitcond.not.i.i.i.i.i.i.i48 = icmp eq i64 %i.gr, 1
  br i1 %exitcond.not.i.i.i.i.i.i.i48, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIfEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i39, label %.lr.ph.i.i.i.i.i.i.i46.1

.lr.ph.i.i.i.i.i.i.i46.1:                         ; preds = %.lr.ph.i.i.i.i.i.i.i46
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gl, i64 4 ; 2 uses
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !10
  %i.ha = load float, ptr %i.bs, align 4, !tbaa !10
  store float %i.ha, ptr %i.gy, align 4, !tbaa !10
  store float %i.gz, ptr %i.bs, align 4, !tbaa !10
  %exitcond.not.i.i.i.i.i.i.i48.1 = icmp eq i64 %i.gr, 2
  br i1 %exitcond.not.i.i.i.i.i.i.i48.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIfEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i39, label %.lr.ph.i.i.i.i.i.i.i46.2

.lr.ph.i.i.i.i.i.i.i46.2:                         ; preds = %.lr.ph.i.i.i.i.i.i.i46.1
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gl, i64 8 ; 2 uses
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !10
  %i.hd = load float, ptr %i.bt, align 4, !tbaa !10
  store float %i.hd, ptr %i.hb, align 4, !tbaa !10
  store float %i.hc, ptr %i.bt, align 4, !tbaa !10
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIfEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i39

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIfEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i39: ; preds = %.lr.ph.i.i.i.i.i.i.i46, %.lr.ph.i.i.i.i.i.i.i46.1, %.lr.ph.i.i.i.i.i.i.i46.2, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i37
  %i.he = icmp sgt i64 %i.gs, 3
  br i1 %i.he, label %.lr.ph.i.i.i.i.i.i44, label %._crit_edge.i.i.i.i.i.i40

._crit_edge.i.i.i.i.i.i40:                        ; preds = %.lr.ph.i.i.i.i.i.i44, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIfEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i39
  %.not160 = icmp sgt i64 %i.gu, %.0162
  br i1 %.not160, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit49, label %.lr.ph.i17.i.i.i.i.i.i41.preheader

.lr.ph.i17.i.i.i.i.i.i41.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i40
  %i.hf = add i64 %i.gr, %i.gt
  %i.hg = sub i64 %i.gm, %i.hf                    ; 3 uses
  %min.iters.check183 = icmp ult i64 %i.hg, 8
  br i1 %min.iters.check183, label %.lr.ph.i17.i.i.i.i.i.i41.preheader236, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i41.preheader
  %i.hh = and i64 %i.gs, 4611686018427387900
  %i.hi = add i64 %i.gr, %i.hh
  %i.hj = shl i64 %i.hi, 2                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.gl, i64 %i.hj
  %scevgep180 = getelementptr i8, ptr %scevgep179.a, i64 %i.hj
  %bound0 = icmp ult ptr %scevgep, %scevgep181
  %bound1 = icmp ult ptr %scevgep180, %scevgep178
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i17.i.i.i.i.i.i41.preheader236, label %vector.ph184

vector.ph184:                                     ; preds = %vector.memcheck
  %n.vec185 = and i64 %i.hg, -8                   ; 3 uses
  %i.hk = add i64 %i.gu, %n.vec185
  br label %vector.body186

vector.body186:                                   ; preds = %vector.body186, %vector.ph184
  %index187 = phi i64 [ 0, %vector.ph184 ], [ %index.next191, %vector.body186 ] ; 2 uses
  %i.hl = add i64 %i.gu, %index187                ; 2 uses
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.gl, i64 %i.hl ; 3 uses
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.hl ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.hm, align 4, !tbaa !10, !alias.scope !931, !noalias !932
  %wide.load188.a = load <4 x float>, ptr %i.ho, align 4, !tbaa !10, !alias.scope !931, !noalias !932
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 16 ; 2 uses
  %wide.load189.a = load <4 x float>, ptr %i.hn, align 4, !tbaa !10, !alias.scope !932
  %wide.load190 = load <4 x float>, ptr %i.hp, align 4, !tbaa !10, !alias.scope !932
  store <4 x float> %wide.load189.a, ptr %i.hm, align 4, !tbaa !10, !alias.scope !931, !noalias !932
  store <4 x float> %wide.load190, ptr %i.ho, align 4, !tbaa !10, !alias.scope !931, !noalias !932
  store <4 x float> %wide.load, ptr %i.hn, align 4, !tbaa !10, !alias.scope !932
  store <4 x float> %wide.load188.a, ptr %i.hp, align 4, !tbaa !10, !alias.scope !932
  %index.next191 = add nuw i64 %index187, 8       ; 2 uses
  %i.hq = icmp eq i64 %index.next191, %n.vec185
  br i1 %i.hq, label %middle.block192, label %vector.body186, !llvm.loop !925

middle.block192:                                  ; preds = %vector.body186
  %cmp.n193 = icmp eq i64 %i.hg, %n.vec185
  br i1 %cmp.n193, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit49, label %.lr.ph.i17.i.i.i.i.i.i41.preheader236

.lr.ph.i17.i.i.i.i.i.i41.preheader236:            ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i41.preheader, %middle.block192
  %.05.i18.i.i.i.i.i.i42.ph = phi i64 [ %i.gu, %vector.memcheck ], [ %i.gu, %.lr.ph.i17.i.i.i.i.i.i41.preheader ], [ %i.hk, %middle.block192 ] ; 6 uses
  %i.hr = sub i64 %i.gm, %.05.i18.i.i.i.i.i.i42.ph
  %xtraiter253 = and i64 %i.hr, 1
  %lcmp.mod254.not = icmp eq i64 %xtraiter253, 0
  br i1 %lcmp.mod254.not, label %.lr.ph.i17.i.i.i.i.i.i41.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i41.prol

.lr.ph.i17.i.i.i.i.i.i41.prol:                    ; preds = %.lr.ph.i17.i.i.i.i.i.i41.preheader236
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.gl, i64 %.05.i18.i.i.i.i.i.i42.ph ; 2 uses
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %.05.i18.i.i.i.i.i.i42.ph ; 2 uses
  %i.hu = load float, ptr %i.hs, align 4, !tbaa !10
  %i.hv = load float, ptr %i.ht, align 4, !tbaa !10
  store float %i.hv, ptr %i.hs, align 4, !tbaa !10
  store float %i.hu, ptr %i.ht, align 4, !tbaa !10
  %i.hw = add nsw i64 %.05.i18.i.i.i.i.i.i42.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i41.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i41.prol.loopexit:           ; preds = %.lr.ph.i17.i.i.i.i.i.i41.prol, %.lr.ph.i17.i.i.i.i.i.i41.preheader236
  %.05.i18.i.i.i.i.i.i42.unr = phi i64 [ %.05.i18.i.i.i.i.i.i42.ph, %.lr.ph.i17.i.i.i.i.i.i41.preheader236 ], [ %i.hw, %.lr.ph.i17.i.i.i.i.i.i41.prol ]
  %i.hx = icmp eq i64 %.0162, %.05.i18.i.i.i.i.i.i42.ph
  br i1 %i.hx, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit49, label %.lr.ph.i17.i.i.i.i.i.i41

.lr.ph.i17.i.i.i.i.i.i41:                         ; preds = %.lr.ph.i17.i.i.i.i.i.i41.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i41
  %.05.i18.i.i.i.i.i.i42 = phi i64 [ %i.ih, %.lr.ph.i17.i.i.i.i.i.i41 ], [ %.05.i18.i.i.i.i.i.i42.unr, %.lr.ph.i17.i.i.i.i.i.i41.prol.loopexit ] ; 4 uses
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.gl, i64 %.05.i18.i.i.i.i.i.i42 ; 2 uses
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %.05.i18.i.i.i.i.i.i42 ; 2 uses
  %i.ia = load float, ptr %i.hy, align 4, !tbaa !10
  %i.ib = load float, ptr %i.hz, align 4, !tbaa !10
  store float %i.ib, ptr %i.hy, align 4, !tbaa !10
  store float %i.ia, ptr %i.hz, align 4, !tbaa !10
  %i.ic = add nsw i64 %.05.i18.i.i.i.i.i.i42, 1   ; 3 uses
  %i.id = getelementptr inbounds [4 x i8], ptr %i.gl, i64 %i.ic ; 2 uses
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.ic ; 2 uses
  %i.if = load float, ptr %i.id, align 4, !tbaa !10
  %i.ig = load float, ptr %i.ie, align 4, !tbaa !10
  store float %i.ig, ptr %i.id, align 4, !tbaa !10
  store float %i.if, ptr %i.ie, align 4, !tbaa !10
  %i.ih = add nsw i64 %.05.i18.i.i.i.i.i.i42, 2
  %exitcond.not.i19.i.i.i.i.i.i43.1 = icmp eq i64 %i.ic, %.0162
  br i1 %exitcond.not.i19.i.i.i.i.i.i43.1, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit49, label %.lr.ph.i17.i.i.i.i.i.i41, !llvm.loop !926

.lr.ph.i.i.i.i.i.i44:                             ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIfEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i39, %.lr.ph.i.i.i.i.i.i44
  %.021.i.i.i.i.i.i45 = phi i64 [ %7, %.lr.ph.i.i.i.i.i.i44 ], [ %i.gr, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIfEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i39 ] ; 3 uses
  %3 = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %.021.i.i.i.i.i.i45 ; 2 uses
  %4 = load <4 x float>, ptr %3, align 4, !tbaa !11
  %5 = getelementptr inbounds [4 x i8], ptr %i.gl, i64 %.021.i.i.i.i.i.i45 ; 2 uses
  %6 = load <4 x float>, ptr %5, align 16, !tbaa !11
  store <4 x float> %6, ptr %3, align 4, !tbaa !11
  store <4 x float> %4, ptr %5, align 16, !tbaa !11
  %7 = add nsw i64 %.021.i.i.i.i.i.i45, 4         ; 2 uses
  %8 = icmp slt i64 %7, %i.gu
  br i1 %8, label %.lr.ph.i.i.i.i.i.i44, label %._crit_edge.i.i.i.i.i.i40, !llvm.loop !916

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit49: ; preds = %.lr.ph.i17.i.i.i.i.i.i41.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i41, %middle.block192, %._crit_edge.i.i.i.i.i.i40, %bb.d
  %i.ii = add nsw i64 %.0162, -1
  %i.ij = icmp sgt i64 %.0162, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ij, label %bb.b, label %.loopexit, !llvm.loop !927

.loopexit:                                        ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit49, %bb.a, %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit.thread, %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen19ColPivHouseholderQRINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEEE14computeInPlaceEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Eigen::VectorBlock.2651", align 8 ; 8 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %2 = alloca %"class.Eigen::VectorBlock.2588", align 8 ; 13 uses
  %3 = alloca %"class.Eigen::Block.2602", align 8 ; 10 uses
  %4 = alloca %"class.Eigen::VectorBlock.2588", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.d = load <2 x float>, ptr %0, align 8, !tbaa !10 ; 2 uses
  %i.e = fmul <2 x float> %i.d, %i.d              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load float, ptr %i.f, align 8, !tbaa !10 ; 2 uses
  %i.h = fmul float %i.g, %i.g
  %i.i = extractelement <2 x float> %i.e, i64 1
  %i.j = fadd float %i.i, %i.h
  %i.k = extractelement <2 x float> %i.e, i64 0
  %i.l = fadd float %i.k, %i.j
  %i.m = tail call noundef float @llvm.sqrt.f32(float %i.l) ; 4 uses
  store float %i.m, ptr %i.c, align 8, !tbaa !10
  store float %i.m, ptr %i.b, align 4, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.o = load <2 x float>, ptr %i.n, align 4, !tbaa !10 ; 2 uses
  %i.p = fmul <2 x float> %i.o, %i.o              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.r = load <4 x float>, ptr %i.q, align 4
  %i.s = shufflevector <4 x float> %i.r, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load <2 x float>, ptr %i.v, align 8, !tbaa !10 ; 2 uses
  %i.x = fmul <2 x float> %i.w, %i.w              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load float, ptr %i.y, align 8, !tbaa !10
  %i.aa = insertelement <2 x float> %i.s, float %i.z, i64 1 ; 2 uses
  %i.ab = fmul <2 x float> %i.aa, %i.aa
  %i.ac = shufflevector <2 x float> %i.p, <2 x float> %i.x, <2 x i32> <i32 1, i32 3>
  %i.ad = fadd <2 x float> %i.ac, %i.ab
  %i.ae = shufflevector <2 x float> %i.p, <2 x float> %i.x, <2 x i32> <i32 0, i32 2>
  %i.af = fadd <2 x float> %i.ae, %i.ad
  %i.ag = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.af) ; 2 uses
  %i.ah = extractelement <2 x float> %i.ag, i64 0 ; 4 uses
  store float %i.ah, ptr %i.t, align 4, !tbaa !10
  store float %i.ah, ptr %i.u, align 8, !tbaa !10
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aj = extractelement <2 x float> %i.ag, i64 1 ; 4 uses
  store float %i.aj, ptr %i.ai, align 8, !tbaa !10
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 108
  store float %i.aj, ptr %i.ak, align 4, !tbaa !10
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ao = fcmp olt float %i.ah, %i.aj
  %i.ap = select i1 %i.ao, float %i.aj, float %i.ah ; 2 uses
  %i.aq = fcmp olt float %i.m, %i.ap
  %i.ar = select i1 %i.aq, float %i.ap, float %i.m
  %i.as = fmul float %i.ar, f0x34000000           ; 2 uses
  %i.at = fmul float %i.as, %i.as
  %i.au = fdiv float %i.at, 3.000000e+00
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  store i64 3, ptr %i.av, align 8, !tbaa !243
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 3 uses
  store float 0.000000e+00, ptr %i.aw, align 4, !tbaa !242
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.5105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.6106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.7107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.8108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.6100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.7101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.sroa.8102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 88
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  store i32 0, ptr %i.bp, align 8, !tbaa !113
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 1, ptr %i.bq, align 4, !tbaa !113
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 2, ptr %i.br, align 8, !tbaa !113
  %i.bs = load i64, ptr %i.an, align 8, !tbaa !114
  %i.bt = shl i64 %i.bs, 32
  %i.bu = ashr exact i64 %i.bt, 30
  %i.bv = getelementptr inbounds i8, ptr %i.bp, i64 %i.bu ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !113
  store i32 %i.bw, ptr %i.bp, align 8, !tbaa !113
  store i32 0, ptr %i.bv, align 4, !tbaa !113
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !114
  %i.bz = shl i64 %i.by, 32
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.cb = ashr exact i64 %i.bz, 30
  %i.cc = getelementptr inbounds i8, ptr %i.bp, i64 %i.cb ; 2 uses
  %i.cd = load i32, ptr %i.ca, align 4, !tbaa !113
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !113
  store i32 %i.ce, ptr %i.ca, align 4, !tbaa !113
  store i32 %i.cd, ptr %i.cc, align 4, !tbaa !113
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !114
  %i.ch = shl i64 %i.cg, 32
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cj = ashr exact i64 %i.ch, 30
  %i.ck = getelementptr inbounds i8, ptr %i.bp, i64 %i.cj ; 2 uses
  %i.cl = load i32, ptr %i.ci, align 8, !tbaa !113
  %i.cm = load i32, ptr %i.ck, align 4, !tbaa !113
  store i32 %i.cm, ptr %i.ci, align 8, !tbaa !113
  store i32 %i.cl, ptr %i.ck, align 4, !tbaa !113
  %i.cn = and i64 %.1, 1
  %.not = icmp eq i64 %i.cn, 0
  %i.co = select i1 %.not, i64 1, i64 -1
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %i.co, ptr %i.cp, align 8, !tbaa !942
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i8 1, ptr %i.cq, align 4, !tbaa !67
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.073149 = phi i64 [ 0, %bb.a ], [ %i.eq, %._crit_edge ] ; 21 uses
  %.075148 = phi i64 [ 0, %bb.a ], [ %.1, %._crit_edge ] ; 2 uses
  %i.cr = sub nsw i64 2, %.073149                 ; 3 uses
  %i.cs = sub nuw nsw i64 3, %.073149             ; 3 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.073149 ; 6 uses
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !10 ; 5 uses
  %.not145 = icmp eq i64 %.073149, 2
  br i1 %.not145, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEfPT_.exit, label %.preheader.i.i.i.i.preheader

.preheader.i.i.i.i.preheader:                     ; preds = %bb.c
  %xtraiter = and i64 %i.cr, 1
  %i.cv = icmp eq i64 %.073149, 1
  br i1 %i.cv, label %.preheader.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.preheader.new

.preheader.i.i.i.i.preheader.new:                 ; preds = %.preheader.i.i.i.i.preheader
  %unroll_iter = and i64 %i.cr, -2
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i, %.preheader.i.i.i.i.preheader.new
  %.sroa.7.0.i.i = phi float [ %i.cu, %.preheader.i.i.i.i.preheader.new ], [ %.sroa.7.1.i.i.1, %.preheader.i.i.i.i ]
  %.sroa.5.0.i.i = phi i64 [ 0, %.preheader.i.i.i.i.preheader.new ], [ %.sroa.5.1.i.i.1, %.preheader.i.i.i.i ]
  %.02030.i.i.i.i = phi i64 [ 1, %.preheader.i.i.i.i.preheader.new ], [ %i.dd, %.preheader.i.i.i.i ] ; 4 uses
  %.promoted2829.i.i.i.i = phi float [ %i.cu, %.preheader.i.i.i.i.preheader.new ], [ %.promoted27.i.i.i.i.1, %.preheader.i.i.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i.i ]
  %i.cw = getelementptr [4 x i8], ptr %i.ct, i64 %.02030.i.i.i.i
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !10 ; 3 uses
  %i.cy = fcmp ogt float %i.cx, %.promoted2829.i.i.i.i ; 3 uses
  %.sroa.7.1.i.i = select i1 %i.cy, float %i.cx, float %.sroa.7.0.i.i
  %.sroa.5.1.i.i = select i1 %i.cy, i64 %.02030.i.i.i.i, i64 %.sroa.5.0.i.i
  %.promoted27.i.i.i.i = select i1 %i.cy, float %i.cx, float %.promoted2829.i.i.i.i ; 2 uses
  %i.cz = add nuw nsw i64 %.02030.i.i.i.i, 1      ; 2 uses
  %i.da = getelementptr [4 x i8], ptr %i.ct, i64 %i.cz
  %i.db = load float, ptr %i.da, align 4, !tbaa !10 ; 3 uses
  %i.dc = fcmp ogt float %i.db, %.promoted27.i.i.i.i ; 3 uses
  %.sroa.7.1.i.i.1 = select i1 %i.dc, float %i.db, float %.sroa.7.1.i.i ; 3 uses
  %.sroa.5.1.i.i.1 = select i1 %i.dc, i64 %i.cz, i64 %.sroa.5.1.i.i ; 3 uses
  %.promoted27.i.i.i.i.1 = select i1 %i.dc, float %i.db, float %.promoted27.i.i.i.i ; 2 uses
  %i.dd = add nuw nsw i64 %.02030.i.i.i.i, 2      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEfPT_.exit.loopexit.unr-lcssa, label %.preheader.i.i.i.i, !llvm.loop !933

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEfPT_.exit.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEfPT_.exit, label %.preheader.i.i.i.i.epil.preheader

.preheader.i.i.i.i.epil.preheader:                ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEfPT_.exit.loopexit.unr-lcssa, %.preheader.i.i.i.i.preheader
  %.sroa.7.0.i.i.epil.init = phi float [ %i.cu, %.preheader.i.i.i.i.preheader ], [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEfPT_.exit.loopexit.unr-lcssa ]
  %.sroa.5.0.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.preheader ], [ %.sroa.5.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEfPT_.exit.loopexit.unr-lcssa ]
  %.02030.i.i.i.i.epil.init = phi i64 [ 1, %.preheader.i.i.i.i.preheader ], [ %i.dd, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEfPT_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.promoted2829.i.i.i.i.epil.init = phi float [ %i.cu, %.preheader.i.i.i.i.preheader ], [ %.promoted27.i.i.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEfPT_.exit.loopexit.unr-lcssa ]
  %lcmp.mod160 = trunc i64 %i.cr to i1
  call void @llvm.assume(i1 %lcmp.mod160)
  %i.de = getelementptr [4 x i8], ptr %i.ct, i64 %.02030.i.i.i.i.epil.init
end_hunk_1
begin_hunk_2_@_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEEE11_solve_implINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIfEEKNS1_IfLi2ELi1ELi0ELi2ELi1EEEEES9_EEvRKT_RT0_:bb.a
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEEESA_NS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cz = icmp samesign ult i64 %i.co, %.lcssa
  br i1 %i.cz, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.da = and i64 %i.cm, 4611686018427387900
  %i.db = add nsw i64 %i.cl, %i.da
  %i.dc = shl i64 %i.db, 2                        ; 2 uses
  %scevgep57 = getelementptr i8, ptr %2, i64 %i.dc
  %scevgep58 = getelementptr i8, ptr %7, i64 %i.dc
  %i.dd = shl i64 %i.cm, 2
  %i.de = and i64 %i.dd, 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep57, ptr align 4 %scevgep58, i64 %i.de, i1 false), !tbaa !10
  br label %_ZN5Eigen5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit

_ZN5Eigen5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZN5Eigen8internal26triangular_solver_selectorIKNS_5BlockIKNS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEENS2_INS3_IfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEELi1ELi2ELi0ELi1EE3runERS7_RS9_(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %i.df = icmp eq i64 %.lcssa, 1
  br i1 %i.df, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.b

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.dg, align 4
  call void @_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEEE29applyZAdjointOnTheLeftInPlaceINS1_IfLi2ELi1ELi0ELi2ELi1EEEEEvRT_(ptr noundef nonnull align 16 dereferenceable(128) %0, ptr noundef nonnull align 4 dereferenceable(8) %2)
  br label %bb.b

bb.b:                                             ; preds = %_ZN5Eigen5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store i16 0, ptr %3, align 2
  br label %.preheader.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %bb.e, %bb.d
  %i.di = icmp slt i64 %.163.i.i.i.i.i.i.i.i, 1
  br i1 %i.di, label %.preheader.i.i.i.i.i.i.i.i.backedge, label %_ZN5Eigen6MatrixIfLi2ELi1ELi0ELi2ELi1EEaSINS_7ProductINS_17PermutationMatrixILi2ELi2EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i.i.i.backedge, %bb.b
  %.163.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.b ], [ %.163.i.i.i.i.i.i.i.i.be, %.preheader.i.i.i.i.i.i.i.i.backedge ] ; 9 uses
  %i.dj = getelementptr inbounds i8, ptr %3, i64 %.163.i.i.i.i.i.i.i.i
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !13, !range !14, !noundef !15
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader.i.i.i.i.i.i.i.i
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %.163.i.i.i.i.i.i.i.i, 1
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen6MatrixIfLi2ELi1ELi0ELi2ELi1EEaSINS_7ProductINS_17PermutationMatrixILi2ELi2EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.backedge

.preheader.i.i.i.i.i.i.i.i.backedge:              ; preds = %bb.c, %.loopexit.i.i.i.i.i.i.i.i
  %.163.i.i.i.i.i.i.i.i.be = add i64 %.163.i.i.i.i.i.i.i.i, 1
  br label %.preheader.i.i.i.i.i.i.i.i, !llvm.loop !1373

bb.d:                                             ; preds = %.preheader.i.i.i.i.i.i.i.i
  %i.dm = getelementptr inbounds i8, ptr %3, i64 %.163.i.i.i.i.i.i.i.i
  store i8 1, ptr %i.dm, align 1, !tbaa !13
  %.035.in.in64.i.i.i.i.i.i.i.i = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %.163.i.i.i.i.i.i.i.i
  %.035.in65.i.i.i.i.i.i.i.i = load i32, ptr %.035.in.in64.i.i.i.i.i.i.i.i, align 4, !tbaa !113
  %.03566.i.i.i.i.i.i.i.i = sext i32 %.035.in65.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %.not3767.i.i.i.i.i.i.i.i = icmp eq i64 %.163.i.i.i.i.i.i.i.i, %.03566.i.i.i.i.i.i.i.i
  br i1 %.not3767.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.d
  %i.dn = getelementptr inbounds [4 x i8], ptr %2, i64 %.163.i.i.i.i.i.i.i.i ; 2 uses
  %.pre.i.i.i.i.i.i.i.i = load float, ptr %i.dn, align 4, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i
  %i.do = phi float [ %.pre.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.dq, %bb.e ]
  %.03568.i.i.i.i.i.i.i.i = phi i64 [ %.03566.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.035.i.i.i.i.i.i.i.i, %bb.e ] ; 3 uses
  %i.dp = getelementptr inbounds [4 x i8], ptr %2, i64 %.03568.i.i.i.i.i.i.i.i ; 2 uses
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !10 ; 2 uses
  store float %i.do, ptr %i.dp, align 4, !tbaa !10
  store float %i.dq, ptr %i.dn, align 4, !tbaa !10
  %i.dr = getelementptr inbounds i8, ptr %3, i64 %.03568.i.i.i.i.i.i.i.i
  store i8 1, ptr %i.dr, align 1, !tbaa !13
  %.035.in.in.i.i.i.i.i.i.i.i = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %.03568.i.i.i.i.i.i.i.i
  %.035.in.i.i.i.i.i.i.i.i = load i32, ptr %.035.in.in.i.i.i.i.i.i.i.i, align 4, !tbaa !113
  %.035.i.i.i.i.i.i.i.i = sext i32 %.035.in.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %.not37.i.i.i.i.i.i.i.i = icmp eq i64 %.163.i.i.i.i.i.i.i.i, %.035.i.i.i.i.i.i.i.i
  br i1 %.not37.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %bb.e, !llvm.loop !1374

_ZN5Eigen6MatrixIfLi2ELi1ELi0ELi2ELi1EEaSINS_7ProductINS_17PermutationMatrixILi2ELi2EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit: ; preds = %.loopexit.i.i.i.i.i.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen6MatrixIfLi2ELi1ELi0ELi2ELi1EEaSINS_7ProductINS_17PermutationMatrixILi2ELi2EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit, %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEEE4rankEv.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEEE29applyZAdjointOnTheLeftInPlaceINS1_IfLi2ELi1ELi0ELi2ELi1EEEEEvRT_(ptr noundef nonnull align 16 dereferenceable(128) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load float, ptr %i.a, align 16, !tbaa !97
  %i.c = tail call noundef float @llvm.fabs.f32(float %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.e = load i8, ptr %i.d, align 1, !tbaa !96, !range !14, !noundef !15
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.h = load float, ptr %i.g, align 4
  %i.i = select i1 %i.f, float %i.h, float f0x34800000
  %.fr120 = freeze float %i.i
  %i.j = fmul float %i.c, %.fr120                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load i64, ptr %i.k, align 8, !tbaa !98   ; 5 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.i.preheader, label %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.l, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader127, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.l, 9223372036854775804      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x float> poison, float %i.j, i64 0
  %broadcast.splat = shufflevector <2 x float> %broadcast.splatinsert, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi126 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %i.n = or disjoint i64 %index, 1                ; 2 uses
  %i.o = or disjoint i64 %index, 2                ; 2 uses
  %i.p = or disjoint i64 %index, 3                ; 2 uses
  %i.q = getelementptr [4 x i8], ptr %0, i64 %index
  %i.r = getelementptr [4 x i8], ptr %0, i64 %i.n
  %i.s = getelementptr [4 x i8], ptr %0, i64 %i.o
  %i.t = getelementptr [4 x i8], ptr %0, i64 %i.p
  %i.u = shl i64 %index, 3
  %i.v = shl i64 %i.n, 3
  %i.w = shl i64 %i.o, 3
  %i.x = shl i64 %i.p, 3
  %i.y = getelementptr i8, ptr %i.q, i64 %i.u
  %i.z = getelementptr i8, ptr %i.r, i64 %i.v
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.w
  %i.ab = getelementptr i8, ptr %i.t, i64 %i.x
  %i.ac = load float, ptr %i.y, align 16, !tbaa !10
  %i.ad = load float, ptr %i.z, align 4, !tbaa !10
  %i.ae = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %i.ad, i64 1
  %i.ag = load float, ptr %i.aa, align 8, !tbaa !10
  %i.ah = load float, ptr %i.ab, align 4, !tbaa !10
  %i.ai = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.aj = insertelement <2 x float> %i.ai, float %i.ah, i64 1
  %i.ak = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.af)
  %i.al = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.aj)
  %i.am = fcmp ogt <2 x float> %i.ak, %broadcast.splat
  %i.an = fcmp ogt <2 x float> %i.al, %broadcast.splat
  %i.ao = zext <2 x i1> %i.am to <2 x i64>
  %i.ap = zext <2 x i1> %i.an to <2 x i64>
  %i.aq = add <2 x i64> %vec.phi, %i.ao           ; 2 uses
  %i.ar = add <2 x i64> %vec.phi126, %i.ap        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !1390

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ar, %i.aq
  %i.at = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.preheader, label %.lr.ph.i.i.preheader127

.lr.ph.i.i.preheader127:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.09.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  %.078.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader127, %.lr.ph.i.i
  %.09.i.i = phi i64 [ %i.bb, %.lr.ph.i.i ], [ %.09.i.i.ph, %.lr.ph.i.i.preheader127 ] ; 3 uses
  %.078.i.i = phi i64 [ %i.ba, %.lr.ph.i.i ], [ %.078.i.i.ph, %.lr.ph.i.i.preheader127 ]
  %i.au = getelementptr [4 x i8], ptr %0, i64 %.09.i.i
  %.idx.i.i.i = shl i64 %.09.i.i, 3
  %i.av = getelementptr i8, ptr %i.au, i64 %.idx.i.i.i
  %i.aw = load float, ptr %i.av, align 4, !tbaa !10
  %i.ax = tail call noundef float @llvm.fabs.f32(float %i.aw)
  %i.ay = fcmp ogt float %i.ax, %i.j
  %i.az = zext i1 %i.ay to i64
  %i.ba = add i64 %.078.i.i, %i.az                ; 2 uses
  %i.bb = add nuw nsw i64 %.09.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bb, %i.l
  br i1 %exitcond.not.i.i, label %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.preheader, label %.lr.ph.i.i, !llvm.loop !1391

_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.preheader: ; preds = %.lr.ph.i.i, %middle.block
  %.lcssa125 = phi i64 [ %i.at, %middle.block ], [ %i.ba, %.lr.ph.i.i ] ; 5 uses
  %i.bc = icmp sgt i64 %.lcssa125, 0
  br i1 %i.bc, label %.lr.ph, label %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.preheader
  %i.bd = add nsw i64 %.lcssa125, -1              ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bd ; 20 uses
  %.idx.i.i.i.i.i = shl nuw nsw i64 %.lcssa125, 3
  %invariant.gep = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i.i ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 4 uses
  switch i64 %.lcssa125, label %.lr.ph.split.split.preheader.split [
    i64 2, label %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us.peel.a
    i64 1, label %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge.loopexit104.peel.begin
  ]

.lr.ph.split.split.preheader.split:               ; preds = %.lr.ph
  %i.bh = add nsw i64 %.lcssa125, -2
  br label %bb.e

_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us.peel.a: ; preds = %.lr.ph
  %i.bi = load float, ptr %1, align 4, !tbaa !10  ; 2 uses
  %i.bj = load float, ptr %i.be, align 4, !tbaa !10
  store float %i.bj, ptr %1, align 4, !tbaa !10
  store float %i.bi, ptr %i.be, align 4, !tbaa !10
  %i.bk = load float, ptr %i.bf, align 16, !tbaa !10
  %2 = fsub float 1.000000e+00, %i.bk
  %i.bl = fmul float %2, %i.bi                    ; 2 uses
  store float %i.bl, ptr %i.be, align 4, !tbaa !10
  %3 = load float, ptr %1, align 4, !tbaa !10     ; 2 uses
  store float %i.bl, ptr %1, align 4, !tbaa !10
  store float %3, ptr %i.be, align 4, !tbaa !10
  %4 = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bd
  %5 = load float, ptr %4, align 4, !tbaa !10
  %6 = fsub float 1.000000e+00, %5
  %7 = fmul float %6, %3
  store float %7, ptr %i.be, align 4, !tbaa !10
  br label %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge

_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge.loopexit104.peel.begin: ; preds = %.lr.ph
  %8 = load float, ptr %i.bf, align 16, !tbaa !10 ; 2 uses
  %9 = fcmp une float %8, 0.000000e+00
  br i1 %9, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIfLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IfLi2ELi2ELi0ELi2ELi2EEELi1ELi2ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.us.peel, label %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIfLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IfLi2ELi2ELi0ELi2ELi2EEELi1ELi2ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.us.peel: ; preds = %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge.loopexit104.peel.begin
  %i.bm = load float, ptr %invariant.gep, align 8, !tbaa !10
  %i.bn = load float, ptr %i.bg, align 4, !tbaa !10 ; 2 uses
  %10 = fmul float %i.bm, %i.bn
  %i.bo = load float, ptr %i.be, align 4, !tbaa !10 ; 2 uses
  %11 = fadd float %10, %i.bo                     ; 2 uses
  %i.bp = fmul float %11, %8
  %12 = fsub float %i.bo, %i.bp
  store float %12, ptr %i.be, align 4, !tbaa !10
  %13 = load float, ptr %i.bf, align 16, !tbaa !10, !noalias !1395
  %14 = load float, ptr %invariant.gep, align 8, !tbaa !10
  %15 = fmul float %13, %14
  %16 = fmul float %15, %11
  %17 = fsub float %i.bn, %16
  store float %17, ptr %i.bg, align 4, !tbaa !10
  br label %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge

_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge.loopexit105.peel.begin: ; preds = %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit
  %.not.peel = icmp eq i64 %i.cw, %i.bd           ; 2 uses
  br i1 %.not.peel, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge.loopexit105.peel.begin
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cw ; 2 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !10
  %i.bs = load float, ptr %i.be, align 4, !tbaa !10
  store float %i.bs, ptr %i.bq, align 4, !tbaa !10
  store float %i.br, ptr %i.be, align 4, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge.loopexit105.peel.begin
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.cw
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !10 ; 2 uses
  %i.bv = fcmp une float %i.bu, 0.000000e+00
  br i1 %i.bv, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIfLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IfLi2ELi2ELi0ELi2ELi2EEELi1ELi2ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.peel, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IfLi2ELi2ELi0ELi2ELi2EEELi1ELi2ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKfPf.exit.peel

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIfLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IfLi2ELi2ELi0ELi2ELi2EEELi1ELi2ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.peel: ; preds = %bb.c
  %gep.peel = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.cw
  %i.bw = load float, ptr %gep.peel, align 4, !tbaa !10
  %i.bx = load float, ptr %i.bg, align 4, !tbaa !10
  %i.by = fmul float %i.bw, %i.bx
  %i.bz = load float, ptr %i.be, align 4, !tbaa !10 ; 2 uses
  %i.ca = fadd float %i.by, %i.bz
  %i.cb = fmul float %i.ca, %i.bu
  %i.cc = fsub float %i.bz, %i.cb
  store float %i.cc, ptr %i.be, align 4, !tbaa !10
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IfLi2ELi2ELi0ELi2ELi2EEELi1ELi2ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKfPf.exit.peel

_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IfLi2ELi2ELi0ELi2ELi2EEELi1ELi2ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKfPf.exit.peel: ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIfLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IfLi2ELi2ELi0ELi2ELi2EEELi1ELi2ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.peel, %bb.c
  br i1 %.not.peel, label %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IfLi2ELi2ELi0ELi2ELi2EEELi1ELi2ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKfPf.exit.peel
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cw ; 2 uses
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !10
  %i.cf = load float, ptr %i.be, align 4, !tbaa !10
  store float %i.cf, ptr %i.cd, align 4, !tbaa !10
  store float %i.ce, ptr %i.be, align 4, !tbaa !10
  br label %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge

_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge: ; preds = %bb.a, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IfLi2ELi2ELi0ELi2ELi2EEELi1ELi2ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKfPf.exit.peel, %bb.d, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIfLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IfLi2ELi2ELi0ELi2ELi2EEELi1ELi2ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.us.peel, %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge.loopexit104.peel.begin, %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us.peel.a, %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.preheader
  ret void

bb.e:                                             ; preds = %.lr.ph.split.split.preheader.split, %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit
  %.02898 = phi i64 [ %i.cw, %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit ], [ 0, %.lr.ph.split.split.preheader.split ] ; 6 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02898 ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !10
  %i.ci = load float, ptr %i.be, align 4, !tbaa !10
  store float %i.ci, ptr %i.cg, align 4, !tbaa !10
  store float %i.ch, ptr %i.be, align 4, !tbaa !10
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %.02898
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !10 ; 2 uses
  %i.cl = fcmp une float %i.ck, 0.000000e+00
  br i1 %i.cl, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIfLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IfLi2ELi2ELi0ELi2ELi2EEELi1ELi2ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i, label %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIfLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IfLi2ELi2ELi0ELi2ELi2EEELi1ELi2ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i: ; preds = %bb.e
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %.02898
  %i.cm = load float, ptr %gep, align 4, !tbaa !10
  %i.cn = load float, ptr %i.bg, align 4, !tbaa !10
  %i.co = fmul float %i.cm, %i.cn
  %i.cp = load float, ptr %i.be, align 4, !tbaa !10 ; 2 uses
  %i.cq = fadd float %i.co, %i.cp
  %i.cr = fmul float %i.cq, %i.ck
  %i.cs = fsub float %i.cp, %i.cr
  store float %i.cs, ptr %i.be, align 4, !tbaa !10
  br label %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit

_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit: ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIfLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IfLi2ELi2ELi0ELi2ELi2EEELi1ELi2ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i, %bb.e
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02898 ; 2 uses
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !10
  %i.cv = load float, ptr %i.be, align 4, !tbaa !10
  store float %i.cv, ptr %i.ct, align 4, !tbaa !10
  store float %i.cu, ptr %i.be, align 4, !tbaa !10
  %i.cw = add nuw nsw i64 %.02898, 1              ; 6 uses
  %exitcond.not = icmp eq i64 %.02898, %i.bh
  br i1 %exitcond.not, label %_ZN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge.loopexit105.peel.begin, label %bb.e, !llvm.loop !1394
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEEvRKT_RKfPf(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::evaluator.5734", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !107  ; 17 uses
  %i.c = icmp eq i64 %i.b, 1
  %i.d = load float, ptr %2, align 4, !tbaa !10   ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = fsub float 1.000000e+00, %i.d            ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %0, align 8, !tbaa !341    ; 11 uses
  %i.h = load i64, ptr %i.f, align 8, !tbaa !107  ; 8 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.preheader.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEEEmLERKf.exit

.preheader.i.i.i.i.i.i.preheader:                 ; preds = %bb.b
  %min.iters.check201 = icmp ult i64 %i.h, 45
  br i1 %min.iters.check201, label %.preheader.i.i.i.i.i.i.preheader213, label %vector.scevcheck196

vector.scevcheck196:                              ; preds = %.preheader.i.i.i.i.i.i.preheader
  %i.j = add nsw i64 %i.h, -1                     ; 2 uses
  %mul.result198 = shl i64 %i.j, 3
  %mul.overflow199 = icmp ugt i64 %i.j, 2305843009213693951
  %i.k = getelementptr i8, ptr %i.g, i64 %mul.result198
  %i.l = icmp ult ptr %i.k, %i.g
  %i.m = or i1 %i.l, %mul.overflow199
  br i1 %i.m, label %.preheader.i.i.i.i.i.i.preheader213, label %vector.ph202

vector.ph202:                                     ; preds = %vector.scevcheck196
  %i.n = and i64 %i.h, 3                          ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  %i.p = select i1 %i.o, i64 4, i64 %i.n
  %n.vec203 = sub nsw i64 %i.h, %i.p              ; 2 uses
  %broadcast.splatinsert204 = insertelement <4 x float> poison, float %i.e, i64 0
  %broadcast.splat205 = shufflevector <4 x float> %broadcast.splatinsert204, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body206

vector.body206:                                   ; preds = %vector.body206, %vector.ph202
  %index207 = phi i64 [ 0, %vector.ph202 ], [ %index.next210, %vector.body206 ] ; 5 uses
  %i.q = shl i64 %index207, 3
  %i.r = shl i64 %index207, 3
  %i.s = shl i64 %index207, 3
  %i.t = shl i64 %index207, 3
  %i.u = getelementptr i8, ptr %i.g, i64 %i.q     ; 2 uses
  %i.v = getelementptr i8, ptr %i.g, i64 %i.r
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = getelementptr i8, ptr %i.g, i64 %i.s
  %i.y = getelementptr i8, ptr %i.x, i64 16
  %i.z = getelementptr i8, ptr %i.g, i64 %i.t
  %i.aa = getelementptr i8, ptr %i.z, i64 24
  %wide.vec208 = load <8 x float>, ptr %i.u, align 4, !tbaa !10
  %strided.vec209 = shufflevector <8 x float> %wide.vec208, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ab = fmul <4 x float> %broadcast.splat205, %strided.vec209 ; 4 uses
  %i.ac = extractelement <4 x float> %i.ab, i64 0
  store float %i.ac, ptr %i.u, align 4, !tbaa !10
  %i.ad = extractelement <4 x float> %i.ab, i64 1
  store float %i.ad, ptr %i.w, align 4, !tbaa !10
  %i.ae = extractelement <4 x float> %i.ab, i64 2
  store float %i.ae, ptr %i.y, align 4, !tbaa !10
  %i.af = extractelement <4 x float> %i.ab, i64 3
  store float %i.af, ptr %i.aa, align 4, !tbaa !10
  %index.next210 = add nuw i64 %index207, 4       ; 2 uses
  %i.ag = icmp eq i64 %index.next210, %n.vec203
  br i1 %i.ag, label %.preheader.i.i.i.i.i.i.preheader213, label %vector.body206, !llvm.loop !1396

.preheader.i.i.i.i.i.i.preheader213:              ; preds = %vector.body206, %vector.scevcheck196, %.preheader.i.i.i.i.i.i.preheader
  %.0810.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.scevcheck196 ], [ 0, %.preheader.i.i.i.i.i.i.preheader ], [ %n.vec203, %vector.body206 ] ; 4 uses
  %i.ah = sub i64 %i.h, %.0810.i.i.i.i.i.i.ph
  %xtraiter248 = and i64 %i.ah, 3                 ; 2 uses
  %lcmp.mod249.not = icmp eq i64 %xtraiter248, 0
  br i1 %lcmp.mod249.not, label %.preheader.i.i.i.i.i.i.prol.loopexit, label %.preheader.i.i.i.i.i.i.prol

.preheader.i.i.i.i.i.i.prol:                      ; preds = %.preheader.i.i.i.i.i.i.preheader213, %.preheader.i.i.i.i.i.i.prol
  %.0810.i.i.i.i.i.i.prol = phi i64 [ %i.al, %.preheader.i.i.i.i.i.i.prol ], [ %.0810.i.i.i.i.i.i.ph, %.preheader.i.i.i.i.i.i.preheader213 ] ; 2 uses
  %prol.iter250 = phi i64 [ %prol.iter250.next, %.preheader.i.i.i.i.i.i.prol ], [ 0, %.preheader.i.i.i.i.i.i.preheader213 ]
  %.idx.i.i.i.i.i.i.i.i.i.prol = shl i64 %.0810.i.i.i.i.i.i.prol, 3
  %i.ai = getelementptr i8, ptr %i.g, i64 %.idx.i.i.i.i.i.i.i.i.i.prol ; 2 uses
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !10
  %i.ak = fmul float %i.e, %i.aj
  store float %i.ak, ptr %i.ai, align 4, !tbaa !10
  %i.al = add nuw nsw i64 %.0810.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter250.next = add i64 %prol.iter250, 1   ; 2 uses
  %prol.iter250.cmp.not = icmp eq i64 %prol.iter250.next, %xtraiter248
  br i1 %prol.iter250.cmp.not, label %.preheader.i.i.i.i.i.i.prol.loopexit, label %.preheader.i.i.i.i.i.i.prol, !llvm.loop !1397

.preheader.i.i.i.i.i.i.prol.loopexit:             ; preds = %.preheader.i.i.i.i.i.i.prol, %.preheader.i.i.i.i.i.i.preheader213
  %.0810.i.i.i.i.i.i.unr = phi i64 [ %.0810.i.i.i.i.i.i.ph, %.preheader.i.i.i.i.i.i.preheader213 ], [ %i.al, %.preheader.i.i.i.i.i.i.prol ]
  %i.am = sub i64 %.0810.i.i.i.i.i.i.ph, %i.h
  %i.an = icmp ugt i64 %i.am, -4
  br i1 %i.an, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEEEmLERKf.exit, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i.prol.loopexit, %.preheader.i.i.i.i.i.i
  %.0810.i.i.i.i.i.i = phi i64 [ %i.bg, %.preheader.i.i.i.i.i.i ], [ %.0810.i.i.i.i.i.i.unr, %.preheader.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.idx.i.i.i.i.i.i.i.i.i = shl i64 %.0810.i.i.i.i.i.i, 3
  %i.ao = getelementptr i8, ptr %i.g, i64 %.idx.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !10
  %i.aq = fmul float %i.e, %i.ap
  store float %i.aq, ptr %i.ao, align 4, !tbaa !10
  %i.ar = shl i64 %.0810.i.i.i.i.i.i, 3
  %i.as = getelementptr i8, ptr %i.g, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 8      ; 2 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !10
  %i.av = fmul float %i.e, %i.au
  store float %i.av, ptr %i.at, align 4, !tbaa !10
  %i.aw = shl i64 %.0810.i.i.i.i.i.i, 3
  %i.ax = getelementptr i8, ptr %i.g, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 16     ; 2 uses
  %i.az = load float, ptr %i.ay, align 4, !tbaa !10
  %i.ba = fmul float %i.e, %i.az
  store float %i.ba, ptr %i.ay, align 4, !tbaa !10
  %i.bb = shl i64 %.0810.i.i.i.i.i.i, 3
  %i.bc = getelementptr i8, ptr %i.g, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 24     ; 2 uses
  %i.be = load float, ptr %i.bd, align 4, !tbaa !10
  %i.bf = fmul float %i.e, %i.be
  store float %i.bf, ptr %i.bd, align 4, !tbaa !10
  %i.bg = add nuw nsw i64 %.0810.i.i.i.i.i.i, 4   ; 2 uses
  %exitcond12.not.i.i.i.i.i.i.3 = icmp eq i64 %i.bg, %i.h
  br i1 %exitcond12.not.i.i.i.i.i.i.3, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEEEmLERKf.exit, label %.preheader.i.i.i.i.i.i, !llvm.loop !1398

bb.c:                                             ; preds = %bb.a
  %i.bh = fcmp une float %i.d, 0.000000e+00
  br i1 %i.bh, label %bb.d, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEEEmLERKf.exit

bb.d:                                             ; preds = %bb.c
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !107 ; 39 uses
  %i.bk = add i64 %i.b, -1                        ; 9 uses
  %i.bl = load ptr, ptr %0, align 8, !tbaa !341   ; 23 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 4      ; 14 uses
  %.sroa.043.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 32 uses
  %.sroa.043.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bn = icmp sgt i64 %i.bj, 0                   ; 2 uses
  br i1 %i.bn, label %.split.i.i.i.i.i.i.i.i, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit

.split.i.i.i.i.i.i.i.i:                           ; preds = %bb.d
  %i.bo = icmp eq i64 %i.bk, 0
  %i.bp = sdiv i64 %i.bk, 8
  %i.bq = shl nsw i64 %i.bp, 3                    ; 4 uses
  %i.br = sdiv i64 %i.bk, 4
  %i.bs = shl nsw i64 %i.br, 2                    ; 8 uses
  %i.bt = icmp sgt i64 %i.b, 8
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.043.sroa.0.0.copyload, i64 16
  %i.bv = icmp sgt i64 %i.b, 16
  %i.bw = icmp sgt i64 %i.bs, %i.bq
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.043.sroa.0.0.copyload, i64 %i.bq
  %i.by = icmp slt i64 %i.bs, %i.bk               ; 2 uses
  %i.bz = icmp sgt i64 %i.b, 2
  br i1 %i.bo, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IfLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.preheader.i.i.i.i.i.i.i.i, label %.split.split.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IfLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.preheader.i.i.i.i.i.i.i.i: ; preds = %.split.i.i.i.i.i.i.i.i
  %i.ca = shl nuw i64 %i.bj, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %3, i8 0, i64 %i.ca, i1 false), !tbaa !10
  br label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IfLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit

.split.split.i.i.i.i.i.i.i.i:                     ; preds = %.split.i.i.i.i.i.i.i.i
  %.off.i.i.i.i.i.i.i.i.i.i.i.i.i.i = add i64 %i.b, 2
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 7
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.split.split.split.us.i.i.i.i.i.i.i.i, label %.preheader.i.preheader.i.i.i.i.i.i.i

end_hunk_2
