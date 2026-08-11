inline.NumInlined: 7129
inline.NumDeleted: 3730
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 63
begin_hunk_0_@_ZNK3g2o13VertexEllipse10_updateSVDEv:bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ao = load <2 x float>, ptr %i.f, align 16, !tbaa !19
  %i.ap = fmul <2 x float> %i.aa, %i.ao
  store <2 x float> %i.ap, ptr %i.an, align 16, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN3g2o13VertexEllipse4readERSi(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(216) initializes((104, 140), (144, 168)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Matrix.13", align 4  ; 3 uses
  %3 = alloca %"class.Eigen::HouseholderSequence", align 8 ; 8 uses
  %4 = alloca %"class.Eigen::SelfAdjointEigenSolver", align 16 ; 19 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = alloca float, align 4                    ; 4 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca float, align 4                    ; 4 uses
  %i.i = alloca float, align 4                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIfEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.k = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIfEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %i.l = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIfEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %i.m = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIfEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  %i.n = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIfEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  %i.o = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIfEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 4 dereferenceable(4) %i.f) ; 0 uses
  %i.p = load float, ptr %i.a, align 4, !tbaa !19 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  store float %i.p, ptr %i.q, align 8, !tbaa !19
  %i.r = load float, ptr %i.b, align 4, !tbaa !19 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 116
  store float %i.r, ptr %i.s, align 4, !tbaa !19
  %i.t = load float, ptr %i.c, align 4, !tbaa !19 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128
  store float %i.t, ptr %i.u, align 16, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 108
  store float %i.r, ptr %i.v, align 4, !tbaa !19
  %i.w = load float, ptr %i.d, align 4, !tbaa !19 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  store float %i.w, ptr %i.x, align 8, !tbaa !19
  %i.y = load float, ptr %i.e, align 4, !tbaa !19 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 132
  store float %i.y, ptr %i.z, align 4, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112
  store float %i.t, ptr %i.aa, align 16, !tbaa !19
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 124
  store float %i.y, ptr %i.ab, align 4, !tbaa !19
  %i.ac = load float, ptr %i.f, align 4, !tbaa !19
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 136
  store float %i.ac, ptr %i.ad, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 2 uses
  store <2 x float> splat (float 1.000000e+00), ptr %i.ae, align 8, !tbaa !19
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 36
  store i8 0, ptr %i.ag, align 4, !tbaa !21
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 37
  store i8 0, ptr %i.ah, align 1, !tbaa !37
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store float %i.p, ptr %4, align 16, !tbaa !19
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store float %i.r, ptr %i.aj, align 4, !tbaa !19
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float 0.000000e+00, ptr %i.ak, align 8, !tbaa !19
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store float %i.w, ptr %i.al, align 4, !tbaa !19
  %i.am = load <4 x float>, ptr %4, align 16      ; 2 uses
  %i.an = call noundef <4 x float> @llvm.fabs.v4f32(<4 x float> %i.am) ; 2 uses
  %i.ao = shufflevector <4 x float> %i.an, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.ap = shufflevector <4 x float> %i.an, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.aq = fcmp olt <2 x float> %i.ao, %i.ap
  %i.ar = select <2 x i1> %i.aq, <2 x float> %i.ap, <2 x float> %i.ao ; 2 uses
  %i.as = extractelement <2 x float> %i.ar, i64 0 ; 2 uses
  %i.at = extractelement <2 x float> %i.ar, i64 1 ; 2 uses
  %i.au = fcmp olt float %i.as, %i.at
  %i.av = select i1 %i.au, float %i.at, float %i.as ; 2 uses
  %i.aw = fcmp oeq float %i.av, 0.000000e+00
  %storemerge.i.i = select i1 %i.aw, float 1.000000e+00, float %i.av ; 2 uses
  %i.ax = shufflevector <4 x float> %i.am, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ay = insertelement <2 x float> %i.ax, float %i.r, i64 1
  %i.az = insertelement <2 x float> poison, float %storemerge.i.i, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bb = fdiv <2 x float> %i.ay, %i.ba
  store <2 x float> %i.bb, ptr %4, align 16, !tbaa !19
  %i.bc = fdiv float %i.w, %storemerge.i.i
  store float %i.bc, ptr %i.al, align 4, !tbaa !19
  call void @_ZN5Eigen8internal26tridiagonalization_inplaceINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEENS2_IfLi1ELi1ELi0ELi1ELi1EEEEEvRT_RT0_(ptr noundef nonnull align 16 dereferenceable(38) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.af)
  %i.bd = load <4 x float>, ptr %4, align 16, !tbaa !19
  %i.be = shufflevector <4 x float> %i.bd, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.be, ptr %i.ai, align 16, !tbaa !19
  %i.bf = load float, ptr %i.aj, align 4, !tbaa !19
  store float %i.bf, ptr %i.ae, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %4, ptr %3, align 8, !tbaa !38
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.af, ptr %i.bg, align 8, !tbaa !40
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 0, ptr %i.bh, align 8, !tbaa !42
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 1, ptr %i.bi, align 8, !tbaa !45
  store i64 1, ptr %i.bj, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEENS1_IfLi1ELi1ELi0ELi1ELi1EEELi1EE6evalToIS2_NS1_IfLi2ELi1ELi0ELi2ELi1EEEEEvRT_RT0_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 16 dereferenceable(38) %4, ptr noundef nonnull align 4 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.bk = call noundef i32 @_ZN5Eigen8internal27computeFromTridiagonal_implINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEENS2_IfLi2ELi1ELi0ELi2ELi1EEENS2_IfLi1ELi1ELi0ELi1ELi1EEEEENS_15ComputationInfoERT0_RT1_lbRT_(ptr noundef nonnull align 4 dereferenceable(8) %i.ai, ptr noundef nonnull align 4 dereferenceable(4) %i.ae, i64 noundef 30, i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(38) %4) ; 0 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bm = load <4 x float>, ptr %4, align 16, !tbaa !47
  store <4 x float> %i.bm, ptr %i.bl, align 16, !tbaa !47
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bo = load <2 x float>, ptr %i.ai, align 16, !tbaa !19
  %i.bp = fmul <2 x float> %i.ba, %i.bo
  store <2 x float> %i.bp, ptr %i.bn, align 16, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  %i.bq = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.g) ; 0 uses
  %i.br = load i32, ptr %i.g, align 4, !tbaa !48
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN3g2o13VertexEllipse17addMatchingVertexEff.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i1 true

bb.b:                                             ; preds = %.lr.ph, %_ZN3g2o13VertexEllipse17addMatchingVertexEff.exit
  %.05 = phi i32 [ 0, %.lr.ph ], [ %i.dh, %_ZN3g2o13VertexEllipse17addMatchingVertexEff.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  %i.bw = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIfEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
  %i.bx = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIfEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull align 4 dereferenceable(4) %i.i) ; 0 uses
  %i.by = load float, ptr %i.h, align 4, !tbaa !19 ; 2 uses
  %i.bz = load float, ptr %i.i, align 4, !tbaa !19 ; 2 uses
  %i.ca = load ptr, ptr %i.bu, align 8, !tbaa !49 ; 6 uses
  %i.cb = load ptr, ptr %i.bv, align 16, !tbaa !14
  %.not.i.i = icmp eq ptr %i.ca, %i.cb
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store float %i.by, ptr %i.ca, align 4, !tbaa !47
  %.sroa_idx1.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  store float %i.bz, ptr %.sroa_idx1.i, align 4, !tbaa !47
  %i.cc = load ptr, ptr %i.bu, align 8, !tbaa !49
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr %i.cd, ptr %i.bu, align 8, !tbaa !49
  br label %_ZN3g2o13VertexEllipse17addMatchingVertexEff.exit

bb.d:                                             ; preds = %bb.b
  %i.ce = load ptr, ptr %i.bt, align 16, !tbaa !10 ; 7 uses
  %i.cf = ptrtoint ptr %i.ca to i64               ; 2 uses
  %i.cg = ptrtoint ptr %i.ce to i64               ; 3 uses
  %i.ch = sub i64 %i.cf, %i.cg                    ; 4 uses
  %i.ci = icmp eq i64 %i.ch, 9223372036854775800
  br i1 %i.ci, label %bb.e, label %_ZNKSt6vectorIN5Eigen6MatrixIfLi2ELi1ELi0ELi2ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #27
  unreachable

_ZNKSt6vectorIN5Eigen6MatrixIfLi2ELi1ELi0ELi2ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.cj = ashr exact i64 %i.ch, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cj, i64 1)
  %i.ck = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cj ; 2 uses
  %i.cl = icmp ult i64 %i.ck, %i.cj
  %i.cm = call i64 @llvm.umin.i64(i64 %i.ck, i64 1152921504606846975)
  %i.cn = select i1 %i.cl, i64 1152921504606846975, i64 %i.cm ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.co = shl nuw nsw i64 %i.cn, 3
  %i.cp = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.co) #28 ; 8 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.ch ; 2 uses
  store float %i.by, ptr %i.cq, align 4, !tbaa !47
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  store float %i.bz, ptr %.sroa_idx3.i, align 4, !tbaa !47
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ce, %i.ca
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN5Eigen6MatrixIfLi2ELi1ELi0ELi2ELi1EEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN5Eigen6MatrixIfLi2ELi1ELi0ELi2ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cr = ptrtoaddr ptr %i.cp to i64
  %5 = add i64 %i.cf, -8
  %6 = sub i64 %5, %i.cg                          ; 2 uses
  %i.cs = lshr i64 %6, 3
  %i.ct = add nuw nsw i64 %i.cs, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 24
  %i.cu = sub i64 %i.cg, %i.cr
  %diff.check = icmp ugt i64 %i.cu, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ct, 4611686018427387900     ; 3 uses
  %i.cv = shl i64 %n.vec, 3                       ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cp, i64 %i.cv  ; 2 uses
  %i.cx = getelementptr i8, ptr %i.ce, i64 %i.cv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cy = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cp, i64 %i.cy ; 2 uses
  %next.gep9 = getelementptr i8, ptr %i.ce, i64 %i.cy ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50)
  call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %i.cz = getelementptr i8, ptr %next.gep9, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep9, align 4, !tbaa !47, !alias.scope !53, !noalias !50
  %wide.load10 = load <2 x i64>, ptr %i.cz, align 4, !tbaa !47, !alias.scope !53, !noalias !50
  %i.da = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !tbaa !47, !alias.scope !50, !noalias !53
  store <2 x i64> %wide.load10, ptr %i.da, align 4, !tbaa !47, !alias.scope !50, !noalias !53
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !55

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ct, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN5Eigen6MatrixIfLi2ELi1ELi0ELi2ELi1EEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader12

.lr.ph.i.i.i.i.i.i.preheader12:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cw, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cx, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader12, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader12 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader12 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50)
  call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %i.dc = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !tbaa !47, !alias.scope !53, !noalias !50
  store i64 %i.dc, ptr %.012.i.i.i.i.i.i, align 4, !tbaa !47, !alias.scope !50, !noalias !53
  %i.dd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dd, %i.ca
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN5Eigen6MatrixIfLi2ELi1ELi0ELi2ELi1EEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !59

_ZNSt6vectorIN5Eigen6MatrixIfLi2ELi1ELi0ELi2ELi1EEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN5Eigen6MatrixIfLi2ELi1ELi0ELi2ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.cp, %_ZNKSt6vectorIN5Eigen6MatrixIfLi2ELi1ELi0ELi2ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cw, %middle.block ], [ %i.de, %.lr.ph.i.i.i.i.i.i ]
  %i.df = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i33.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i33.i.i.i, label %_ZNSt6vectorIN5Eigen6MatrixIfLi2ELi1ELi0ELi2ELi1EEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN5Eigen6MatrixIfLi2ELi1ELi0ELi2ELi1EEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.ch) #25
  br label %_ZNSt6vectorIN5Eigen6MatrixIfLi2ELi1ELi0ELi2ELi1EEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN5Eigen6MatrixIfLi2ELi1ELi0ELi2ELi1EEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIN5Eigen6MatrixIfLi2ELi1ELi0ELi2ELi1EEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32.i.i.i
  store ptr %i.cp, ptr %i.bt, align 16, !tbaa !10
  store ptr %i.df, ptr %i.bu, align 8, !tbaa !49
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cn
  store ptr %i.dg, ptr %i.bv, align 16, !tbaa !14
  br label %_ZN3g2o13VertexEllipse17addMatchingVertexEff.exit

_ZN3g2o13VertexEllipse17addMatchingVertexEff.exit: ; preds = %bb.c, %_ZNSt6vectorIN5Eigen6MatrixIfLi2ELi1ELi0ELi2ELi1EEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  %i.dh = add nuw nsw i32 %.05, 1                 ; 2 uses
  %i.di = load i32, ptr %i.g, align 4, !tbaa !48
  %i.dj = icmp slt i32 %i.dh, %i.di
  br i1 %i.dj, label %bb.b, label %._crit_edge, !llvm.loop !60
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK3g2o13VertexEllipse5writeERSo(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load float, ptr %i.a, align 8, !tbaa !19
  %i.c = fpext float %i.b to double
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.c) ; 2 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.g = load float, ptr %i.f, align 4, !tbaa !19
  %i.h = fpext float %i.g to double
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, double noundef %i.h) ; 2 uses
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.l = load float, ptr %i.k, align 16, !tbaa !19
  %i.m = fpext float %i.l to double
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, double noundef %i.m) ; 2 uses
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.q = load float, ptr %i.p, align 8, !tbaa !19
  %i.r = fpext float %i.q to double
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.n, double noundef %i.r) ; 2 uses
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.v = load float, ptr %i.u, align 4, !tbaa !19
  %i.w = fpext float %i.v to double
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.s, double noundef %i.w) ; 2 uses
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aa = load float, ptr %i.z, align 8, !tbaa !19
  %i.ab = fpext float %i.aa to double
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.x, double noundef %i.ab)
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !49
  %i.ah = load ptr, ptr %i.ae, align 16, !tbaa !10
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  %i.am = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.al)
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !49
  %i.ap = load ptr, ptr %i.ae, align 16, !tbaa !10 ; 2 uses
  %.not = icmp eq ptr %i.ao, %i.ap
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.aq = load ptr, ptr %1, align 8, !tbaa !8
  %i.ar = getelementptr i8, ptr %i.aq, i64 -24
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds i8, ptr %1, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load i32, ptr %i.au, align 8, !tbaa !61
  %i.aw = icmp eq i32 %i.av, 0
  ret i1 %i.aw

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.ax = phi ptr [ %i.bm, %.lr.ph ], [ %i.ap, %bb.a ]
  %.08 = phi i64 [ %i.bk, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.08
  %i.az = load float, ptr %i.ay, align 4, !tbaa !19
  %i.ba = fpext float %i.az to double
  %i.bb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.ba) ; 2 uses
  %i.bc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.bd = load ptr, ptr %i.ae, align 16, !tbaa !10
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.08
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !19
  %i.bh = fpext float %i.bg to double
  %i.bi = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, double noundef %i.bh)
  %i.bj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.bk = add nuw i64 %.08, 1                     ; 2 uses
  %i.bl = load ptr, ptr %i.af, align 8, !tbaa !49
  %i.bm = load ptr, ptr %i.ae, align 16, !tbaa !10 ; 2 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = ashr exact i64 %i.bp, 3
  %i.br = icmp ult i64 %i.bk, %i.bq
  br i1 %i.br, label %.lr.ph, label %._crit_edge, !llvm.loop !70
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o10HyperGraph4Data11elementTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i32 4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN5Eigen8internal27computeFromTridiagonal_implINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEENS2_IfLi2ELi1ELi0ELi2ELi1EEENS2_IfLi1ELi1ELi0ELi1ELi1EEEEENS_15ComputationInfoERT0_RT1_lbRT_(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i64 noundef %2, i1 noundef zeroext %3, ptr noundef nonnull align 16 dereferenceable(16) %4) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = shl i64 %2, 1                            ; 2 uses
  %smax = tail call i64 @llvm.smax.i64(i64 %i.a, i64 0) ; 2 uses
  %i.b = or disjoint i64 %smax, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %.lr.ph

.preheader96.sink.split:                          ; preds = %bb.b, %.lr.ph
  store float 0.000000e+00, ptr %1, align 4, !tbaa !19
  br label %.preheader96

.lr.ph:                                           ; preds = %.lr.ph.backedge, %bb.a
  %.069 = phi i64 [ 0, %bb.a ], [ %i.q, %.lr.ph.backedge ] ; 3 uses
  %i.f = load float, ptr %1, align 4, !tbaa !19   ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal32product_triangular_matrix_matrixIflLi6ELb1ELi1ELb0ELi0ELb0ELi0ELi1ELi0EE3runElllPKflS4_lPfllRS3_RNS0_15level3_blockingIffEE:bb.a
  %.idx.i.1 = shl nuw nsw i64 %i.da, 6
  %i.df = getelementptr i8, ptr %i.bw, i64 %.idx.i.1
  store float %i.de, ptr %i.df, align 4, !tbaa !19
  %i.dg = add nuw nsw i64 %.0124296, 2            ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dg, %.0125297
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !567

._crit_edge298:                                   ; preds = %._crit_edge, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  store ptr %12, ptr %17, align 8, !tbaa !547
  store i64 16, ptr %i.az, align 8, !tbaa !549
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIflNS0_22const_blas_data_mapperIflLi1EEELi8ELi4EDv4_fLi1ELb0ELb0EEclEPfRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 noundef %.sroa.speculated192, i64 noundef %.sroa.speculated192, i64 noundef 0, i64 noundef 0)
          to label %bb.u unwind label %bb.z

bb.u:                                             ; preds = %._crit_edge298
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.dh = getelementptr [4 x i8], ptr %7, i64 %i.bs
  store ptr %i.dh, ptr %18, align 8
  store i64 %9, ptr %i.ba, align 8
  %i.di = load float, ptr %10, align 4, !tbaa !19
  invoke void @_ZN5Eigen8internal11gebp_kernelIfflNS0_16blas_data_mapperIflLi0ELi0ELi1EEELi8ELi4ELb0ELb0EEclERKS3_PKfS8_lllfllll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull %i.r, ptr noundef nonnull %i.af, i64 noundef %.sroa.speculated192, i64 noundef %.sroa.speculated192, i64 noundef %1, float noundef %i.di, i64 noundef %.sroa.speculated192, i64 noundef %.0126, i64 noundef 0, i64 noundef %.0127299)
          to label %bb.v unwind label %bb.aa

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  %i.dj = icmp sgt i64 %.0127299, 0
  br i1 %i.dj, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bs
  store ptr %gep, ptr %19, align 8
  store i64 %4, ptr %i.bb, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIflNS0_22const_blas_data_mapperIflLi1EEELi8ELi4EDv4_fLi1ELb0ELb0EEclEPfRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %19, i64 noundef %.sroa.speculated192, i64 noundef %.0127299, i64 noundef 0, i64 noundef 0)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  store ptr %i.bp, ptr %20, align 8
  store i64 %9, ptr %i.bc, align 8
  %i.dk = load float, ptr %10, align 4, !tbaa !19
  invoke void @_ZN5Eigen8internal11gebp_kernelIfflNS0_16blas_data_mapperIflLi0ELi0ELi1EEELi8ELi4ELb0ELb0EEclERKS3_PKfS8_lllfllll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull %i.r, ptr noundef nonnull %i.af, i64 noundef %.0127299, i64 noundef %.sroa.speculated192, i64 noundef %1, float noundef %i.dk, i64 noundef %.sroa.speculated192, i64 noundef %.0126, i64 noundef 0, i64 noundef %.0127299)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br label %bb.ad

bb.z:                                             ; preds = %._crit_edge298
  %i.dl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.aj

bb.aa:                                            ; preds = %bb.u
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.aj

bb.ab:                                            ; preds = %bb.w
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.aj

bb.ac:                                            ; preds = %bb.x
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br label %bb.aj

bb.ad:                                            ; preds = %bb.y, %bb.v
  %i.dp = add nsw i64 %.0127299, %.sroa.speculated223 ; 2 uses
  %i.dq = icmp slt i64 %i.dp, %.0126
  %indvars.iv.next = sub i64 %indvars.iv, %.sroa.speculated223
  br i1 %i.dq, label %bb.t, label %.loopexit, !llvm.loop !568

.loopexit:                                        ; preds = %bb.ad, %bb.r
  %.sroa.speculated201 = call i64 @llvm.smin.i64(i64 %.sroa.speculated278, i64 %.0122305) ; 3 uses
  %i.dr = icmp sgt i64 %.sroa.speculated201, 0
  br i1 %i.dr, label %.lr.ph303, label %._crit_edge304

.lr.ph303:                                        ; preds = %.loopexit
  %i.ds = getelementptr [4 x i8], ptr %3, i64 %.0122305
  br label %bb.ae

._crit_edge304:                                   ; preds = %bb.ag, %.loopexit
  %i.dt = add nsw i64 %.1123, %i.b                ; 2 uses
  %i.du = icmp slt i64 %i.dt, %2
  br i1 %i.du, label %bb.q, label %._crit_edge308, !llvm.loop !569

bb.ae:                                            ; preds = %.lr.ph303, %bb.ag
  %.0113301 = phi i64 [ 0, %.lr.ph303 ], [ %i.dv, %bb.ag ] ; 4 uses
  %i.dv = add nsw i64 %.0113301, %.sroa.speculated229 ; 3 uses
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %.sroa.speculated201, i64 %i.dv)
  %i.dw = sub nsw i64 %.sroa.speculated, %.0113301 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  %i.dx = mul nsw i64 %.0113301, %4
  %i.dy = getelementptr [4 x i8], ptr %i.ds, i64 %i.dx
  store ptr %i.dy, ptr %22, align 8
  store i64 %4, ptr %i.bd, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIflNS0_22const_blas_data_mapperIflLi1EEELi8ELi4EDv4_fLi1ELb0ELb0EEclEPfRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %21, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %22, i64 noundef %.0126, i64 noundef %i.dw, i64 noundef 0, i64 noundef 0)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  %i.dz = getelementptr [4 x i8], ptr %7, i64 %.0113301
  store ptr %i.dz, ptr %23, align 8
  store i64 %9, ptr %i.be, align 8
  %i.ea = load float, ptr %10, align 4, !tbaa !19
  invoke void @_ZN5Eigen8internal11gebp_kernelIfflNS0_16blas_data_mapperIflLi0ELi0ELi1EEELi8ELi4ELb0ELb0EEclERKS3_PKfS8_lllfllll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull %i.r, ptr noundef nonnull %i.af, i64 noundef %i.dw, i64 noundef %.0126, i64 noundef %1, float noundef %i.ea, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  %i.eb = icmp slt i64 %i.dv, %.sroa.speculated201
  br i1 %i.eb, label %bb.ae, label %._crit_edge304, !llvm.loop !570

bb.ah:                                            ; preds = %bb.ae
  %i.ec = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  br label %bb.aj

bb.ai:                                            ; preds = %bb.af
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %bb.z, %bb.aa, %bb.ac, %bb.ab, %bb.s
  %.pn139.pn = phi { ptr, i32 } [ %i.bq, %bb.s ], [ %i.dn, %bb.ab ], [ %i.ec, %bb.ah ], [ %i.dl, %bb.z ], [ %i.dm, %bb.aa ], [ %i.do, %bb.ac ], [ %i.ed, %bb.ai ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br i1 %i.ag, label %bb.ak, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit186

bb.ak:                                            ; preds = %bb.aj
  call void @free(ptr noundef %i.ae) #26
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit186

_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit186: ; preds = %bb.aj, %bb.ak, %bb.p, %bb.o
  %.pn139.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bf, %bb.o ], [ %i.bg, %bb.p ], [ %.pn139.pn, %bb.ak ], [ %.pn139.pn, %bb.aj ]
  br i1 %i.s, label %bb.al, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit187

bb.al:                                            ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit186
  call void @free(ptr noundef %i.q) #26
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit187

_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit187: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit186, %bb.al
  resume { ptr, i32 } %.pn139.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal13gemm_pack_rhsIflNS0_22const_blas_data_mapperIflLi0EEELi4ELi0ELb0ELb0EEclEPfRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK RHS COLMAJOR", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !571
  %i.b = sdiv i64 %4, 4                           ; 2 uses
  %i.c = shl nsw i64 %i.b, 2                      ; 4 uses
  %i.d = sdiv i64 %3, 4
  %i.e = shl nsw i64 %i.d, 2                      ; 4 uses
  %i.f = icmp sgt i64 %4, 3
  br i1 %i.f, label %.lr.ph94, label %.preheader

.lr.ph94:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = icmp sgt i64 %3, 3
  br i1 %i.h, label %.lr.ph.us.preheader, label %.lr.ph94.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph94
  %smax = tail call i64 @llvm.smax.i64(i64 %i.e, i64 4) ; 2 uses
  %i.i = or disjoint i64 %smax, 1
  %smax138 = tail call i64 @llvm.smax.i64(i64 %3, i64 %i.i)
  %i.j = xor i64 %smax, -1
  %i.k = add nsw i64 %smax138, %i.j               ; 2 uses
  %smax142 = tail call i64 @llvm.smax.i64(i64 %i.e, i64 4)
  %i.l = add nsw i64 %smax142, -1                 ; 2 uses
  %i.m = and i64 %i.l, -4
  %i.n = add nuw nsw i64 %i.m, 5
  %smax143 = tail call i64 @llvm.smax.i64(i64 %3, i64 %i.n) ; 2 uses
  %i.o = shl i64 %smax143, 4
  %i.p = lshr i64 %i.l, 2                         ; 2 uses
  %i.q = shl i64 %i.p, 6
  %i.r = sub i64 %i.o, %i.q
  %i.s = shl i64 %smax143, 2                      ; 4 uses
  %i.t = shl i64 %i.p, 4                          ; 4 uses
  %i.u = sub i64 %i.s, %i.t
  %i.v = sub i64 %i.s, %i.t
  %i.w = sub i64 %i.s, %i.t
  %i.x = sub i64 %i.s, %i.t
  %i.y = tail call i64 @llvm.smax.i64(i64 %i.e, i64 4) ; 2 uses
  %i.z = or disjoint i64 %i.y, 1
  %i.aa = tail call i64 @llvm.smax.i64(i64 %3, i64 %i.z) ; 2 uses
  %i.ab = sub nsw i64 %i.aa, %i.y                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.ab, 44
  %mul.result = shl i64 %i.k, 4                   ; 3 uses
  %mul.overflow = icmp ugt i64 %i.k, 1152921504606846975
  %invariant.gep = getelementptr i8, ptr %1, i64 %i.r
  %i.ac = and i64 %i.aa, 3                        ; 2 uses
  %n.vec = sub i64 %i.ab, %i.ac                   ; 3 uses
  %i.ad = shl i64 %n.vec, 2
  %cmp.n = icmp eq i64 %i.ac, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvar145 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvar.next146, %._crit_edge.us ] ; 2 uses
  %.06092.us = phi i64 [ 0, %.lr.ph.us.preheader ], [ %i.ch, %._crit_edge.us ] ; 5 uses
  %.06191.us = phi i64 [ 0, %.lr.ph.us.preheader ], [ %.2.lcssa.us, %._crit_edge.us ] ; 4 uses
  %i.ae = shl i64 %indvar145, 4                   ; 4 uses
  %i.af = or disjoint i64 %i.ae, 12
  %i.ag = or disjoint i64 %i.ae, 8
  %i.ah = or disjoint i64 %i.ae, 4
  %i.ai = load ptr, ptr %2, align 8, !tbaa !572   ; 12 uses
  %i.aj = load i64, ptr %i.g, align 8, !tbaa !574 ; 8 uses
  %i.ak = mul nsw i64 %i.aj, %.06092.us
  %i.al = getelementptr [4 x i8], ptr %i.ai, i64 %i.ak ; 3 uses
  %i.am = or disjoint i64 %.06092.us, 1
  %i.an = mul nsw i64 %i.aj, %i.am
  %i.ao = getelementptr [4 x i8], ptr %i.ai, i64 %i.an ; 3 uses
  %i.ap = or disjoint i64 %.06092.us, 2
  %i.aq = mul nsw i64 %i.aj, %i.ap
  %i.ar = getelementptr [4 x i8], ptr %i.ai, i64 %i.aq ; 3 uses
  %i.as = or disjoint i64 %.06092.us, 3
  %i.at = mul nsw i64 %i.aj, %i.as
  %i.au = getelementptr [4 x i8], ptr %i.ai, i64 %i.at ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.b
  %indvar = phi i64 [ 0, %.lr.ph.us ], [ %indvar.next, %bb.b ] ; 3 uses
  %.05985.us = phi i64 [ 0, %.lr.ph.us ], [ %i.bq, %bb.b ] ; 5 uses
  %.16284.us = phi i64 [ %.06191.us, %.lr.ph.us ], [ %i.bp, %bb.b ] ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.05985.us
  %i.aw = load <4 x float>, ptr %i.av, align 1, !tbaa !47 ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.05985.us
  %i.ay = load <4 x float>, ptr %i.ax, align 1, !tbaa !47 ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.05985.us
  %i.ba = load <4 x float>, ptr %i.az, align 1, !tbaa !47 ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %.05985.us
  %i.bc = load <4 x float>, ptr %i.bb, align 1, !tbaa !47 ; 2 uses
  %i.bd = shufflevector <4 x float> %i.aw, <4 x float> %i.ay, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.be = shufflevector <4 x float> %i.ba, <4 x float> %i.bc, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bf = shufflevector <4 x float> %i.aw, <4 x float> %i.ay, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bg = shufflevector <4 x float> %i.ba, <4 x float> %i.bc, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bh = shufflevector <4 x float> %i.bd, <4 x float> %i.be, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bi = shufflevector <4 x float> %i.be, <4 x float> %i.bd, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.bj = shufflevector <4 x float> %i.bf, <4 x float> %i.bg, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bk = shufflevector <4 x float> %i.bg, <4 x float> %i.bf, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.bl = getelementptr inbounds [4 x i8], ptr %1, i64 %.16284.us ; 4 uses
  store <4 x float> %i.bh, ptr %i.bl, align 1, !tbaa !47
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store <4 x float> %i.bi, ptr %i.bm, align 1, !tbaa !47
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  store <4 x float> %i.bj, ptr %i.bn, align 1, !tbaa !47
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  store <4 x float> %i.bk, ptr %i.bo, align 1, !tbaa !47
  %i.bp = add nsw i64 %.16284.us, 16              ; 7 uses
  %i.bq = add nuw nsw i64 %.05985.us, 4           ; 8 uses
  %i.br = icmp slt i64 %i.bq, %i.e
  %indvar.next = add i64 %indvar, 1
  br i1 %i.br, label %bb.b, label %..preheader83_crit_edge.us, !llvm.loop !575

.lr.ph89.us:                                      ; preds = %.lr.ph89.us.preheader187, %.lr.ph89.us
  %.188.us = phi i64 [ %i.cf, %.lr.ph89.us ], [ %.188.us.ph, %.lr.ph89.us.preheader187 ] ; 5 uses
  %.287.us = phi i64 [ %i.ce, %.lr.ph89.us ], [ %.287.us.ph, %.lr.ph89.us.preheader187 ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.188.us
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !19
  %i.bu = getelementptr inbounds [4 x i8], ptr %1, i64 %.287.us ; 4 uses
  store float %i.bt, ptr %i.bu, align 4, !tbaa !19
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.188.us
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !19
  %i.bx = getelementptr i8, ptr %i.bu, i64 4
  store float %i.bw, ptr %i.bx, align 4, !tbaa !19
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.188.us
  %i.bz = load float, ptr %i.by, align 4, !tbaa !19
  %i.ca = getelementptr i8, ptr %i.bu, i64 8
  store float %i.bz, ptr %i.ca, align 4, !tbaa !19
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %.188.us
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !19
  %i.cd = getelementptr i8, ptr %i.bu, i64 12
  store float %i.cc, ptr %i.cd, align 4, !tbaa !19
  %i.ce = add nsw i64 %.287.us, 4                 ; 2 uses
  %i.cf = add nuw nsw i64 %.188.us, 1             ; 2 uses
  %i.cg = icmp slt i64 %i.cf, %3
  br i1 %i.cg, label %.lr.ph89.us, label %._crit_edge.us, !llvm.loop !576

._crit_edge.us:                                   ; preds = %.lr.ph89.us, %middle.block, %..preheader83_crit_edge.us
  %.2.lcssa.us = phi i64 [ %i.bp, %..preheader83_crit_edge.us ], [ %i.eb, %middle.block ], [ %i.ce, %.lr.ph89.us ] ; 2 uses
  %i.ch = add nuw nsw i64 %.06092.us, 4           ; 2 uses
  %i.ci = icmp slt i64 %i.ch, %i.c
  %indvar.next146 = add i64 %indvar145, 1
  br i1 %i.ci, label %.lr.ph.us, label %.preheader, !llvm.loop !577

..preheader83_crit_edge.us:                       ; preds = %bb.b
  %i.cj = icmp slt i64 %i.bq, %3
  br i1 %i.cj, label %.lr.ph89.us.preheader, label %._crit_edge.us

.lr.ph89.us.preheader:                            ; preds = %..preheader83_crit_edge.us
  br i1 %min.iters.check, label %.lr.ph89.us.preheader187, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph89.us.preheader
  %i.ck = shl i64 %.06191.us, 2                   ; 3 uses
  %i.cl = shl i64 %indvar, 6                      ; 3 uses
  %i.cm = getelementptr i8, ptr %1, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.cm, i64 %i.ck
  %scevgep = getelementptr i8, ptr %i.cn, i64 68  ; 2 uses
  %i.co = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.cp = icmp ult ptr %i.co, %scevgep
  %i.cq = getelementptr i8, ptr %1, i64 %i.cl
  %i.cr = getelementptr i8, ptr %i.cq, i64 %i.ck
  %scevgep139 = getelementptr i8, ptr %i.cr, i64 72 ; 2 uses
  %i.cs = getelementptr i8, ptr %scevgep139, i64 %mul.result
  %i.ct = icmp ult ptr %i.cs, %scevgep139
  %i.cu = getelementptr i8, ptr %1, i64 %i.cl
  %i.cv = getelementptr i8, ptr %i.cu, i64 %i.ck
  %scevgep140 = getelementptr i8, ptr %i.cv, i64 76 ; 2 uses
  %i.cw = getelementptr i8, ptr %scevgep140, i64 %mul.result
  %i.cx = icmp ult ptr %i.cw, %scevgep140
  %i.cy = or i1 %i.cx, %mul.overflow
  %i.cz = or i1 %i.ct, %i.cp
  %i.da = or i1 %i.cz, %i.cy
  br i1 %i.da, label %.lr.ph89.us.preheader187, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.db = shl i64 %.06191.us, 2                   ; 2 uses
  %i.dc = shl i64 %indvar, 6                      ; 2 uses
  %i.dd = getelementptr i8, ptr %1, i64 %i.dc
  %i.de = getelementptr i8, ptr %i.dd, i64 %i.db
  %scevgep141 = getelementptr i8, ptr %i.de, i64 64 ; 4 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.dc
  %scevgep144 = getelementptr i8, ptr %gep, i64 %i.db ; 4 uses
  %i.df = mul i64 %i.aj, %i.af                    ; 2 uses
  %i.dg = sub i64 %.16284.us, %.06191.us          ; 8 uses
  %i.dh = getelementptr i8, ptr %i.ai, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 %i.df
  %scevgep147 = getelementptr i8, ptr %i.di, i64 16
  %i.dj = getelementptr i8, ptr %i.ai, i64 %i.dg
  %i.dk = getelementptr i8, ptr %i.dj, i64 %i.u
  %scevgep148 = getelementptr i8, ptr %i.dk, i64 %i.df
  %i.dl = mul i64 %i.aj, %i.ag                    ; 2 uses
  %i.dm = getelementptr i8, ptr %i.ai, i64 %i.dg
  %i.dn = getelementptr i8, ptr %i.dm, i64 %i.dl
  %scevgep149 = getelementptr i8, ptr %i.dn, i64 16
  %i.do = getelementptr i8, ptr %i.ai, i64 %i.dg
  %i.dp = getelementptr i8, ptr %i.do, i64 %i.v
  %scevgep150 = getelementptr i8, ptr %i.dp, i64 %i.dl
  %i.dq = mul i64 %i.aj, %i.ah                    ; 2 uses
  %i.dr = getelementptr i8, ptr %i.ai, i64 %i.dg
  %i.ds = getelementptr i8, ptr %i.dr, i64 %i.dq
  %scevgep151 = getelementptr i8, ptr %i.ds, i64 16
  %i.dt = getelementptr i8, ptr %i.ai, i64 %i.dg
  %i.du = getelementptr i8, ptr %i.dt, i64 %i.w
  %scevgep152 = getelementptr i8, ptr %i.du, i64 %i.dq
  %i.dv = mul i64 %i.aj, %i.ae                    ; 2 uses
  %i.dw = getelementptr i8, ptr %i.ai, i64 %i.dg
  %i.dx = getelementptr i8, ptr %i.dw, i64 %i.dv
  %scevgep153 = getelementptr i8, ptr %i.dx, i64 16
  %i.dy = getelementptr i8, ptr %i.ai, i64 %i.dg
  %i.dz = getelementptr i8, ptr %i.dy, i64 %i.x
  %scevgep154 = getelementptr i8, ptr %i.dz, i64 %i.dv
  %bound0 = icmp ult ptr %scevgep141, %scevgep148
  %bound1 = icmp ult ptr %scevgep147, %scevgep144
  %found.conflict = and i1 %bound0, %bound1
  %bound0155 = icmp ult ptr %scevgep141, %scevgep150
  %bound1156 = icmp ult ptr %scevgep149, %scevgep144
  %found.conflict157 = and i1 %bound0155, %bound1156
  %conflict.rdx = or i1 %found.conflict, %found.conflict157
  %bound0158 = icmp ult ptr %scevgep141, %scevgep152
  %bound1159 = icmp ult ptr %scevgep151, %scevgep144
  %found.conflict160 = and i1 %bound0158, %bound1159
  %conflict.rdx161 = or i1 %conflict.rdx, %found.conflict160
  %bound0162 = icmp ult ptr %scevgep141, %scevgep154
  %bound1163 = icmp ult ptr %scevgep153, %scevgep144
  %found.conflict164 = and i1 %bound0162, %bound1163
  %conflict.rdx165 = or i1 %conflict.rdx161, %found.conflict164
  br i1 %conflict.rdx165, label %.lr.ph89.us.preheader187, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ea = add i64 %i.bq, %n.vec
  %i.eb = add i64 %i.bp, %i.ad                    ; 2 uses
  %i.ec = getelementptr [4 x i8], ptr %1, i64 %i.bp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ed = add nuw i64 %i.bq, %index               ; 4 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ed
  %wide.load = load <4 x float>, ptr %i.ee, align 4, !tbaa !19, !alias.scope !578
  %.idx = shl i64 %index, 4
  %i.ef = getelementptr i8, ptr %i.ec, i64 %.idx
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ed
  %wide.load166 = load <4 x float>, ptr %i.eg, align 4, !tbaa !19, !alias.scope !581
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ed
  %wide.load167 = load <4 x float>, ptr %i.eh, align 4, !tbaa !19, !alias.scope !583
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ed
  %wide.load168 = load <4 x float>, ptr %i.ei, align 4, !tbaa !19, !alias.scope !585
  %i.ej = shufflevector <4 x float> %wide.load, <4 x float> %wide.load166, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ek = shufflevector <4 x float> %wide.load167, <4 x float> %wide.load168, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.ej, <8 x float> %i.ek, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.ef, align 4, !tbaa !19, !alias.scope !587, !noalias !589
  %index.next = add nuw i64 %index, 4             ; 2 uses
end_hunk_1
