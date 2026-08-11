inline.NumInlined: 1740
inline.NumDeleted: 961
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6Assimp11B3DImporter8ReadBB3DEP7aiScene:bb.a
  %i.hj = add nsw i64 %i.hi, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.he, i8 0, i64 %i.hj, i1 false)
  br label %.loopexit317

.loopexit317:                                     ; preds = %.loopexit317.loopexit, %bb.at
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ga, i64 112
  store ptr %i.he, ptr %i.hk, align 8
  br label %bb.au

bb.au:                                            ; preds = %.loopexit317, %bb.ar
  %.099 = phi ptr [ %i.he, %.loopexit317 ], [ null, %bb.ar ]
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ga, i64 208
  %i.hm = load ptr, ptr %i.hl, align 8
  %i.hn = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.ho = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.hp = ptrtoint ptr %i.hn to i64
  %i.hq = ptrtoint ptr %i.ho to i64
  %i.hr = sub i64 %i.hp, %i.hq
  %i.hs = ashr exact i64 %i.hr, 3                 ; 3 uses
  %i.ht = icmp ugt i64 %i.hs, 384307168202282325
  br i1 %i.ht, label %bb.av, label %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.av:                                            ; preds = %bb.au
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #26
          to label %.noexc185 unwind label %.loopexit.split-lp321

.noexc185:                                        ; preds = %bb.av
  unreachable

_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.au
  %.not.i.i.i.i184 = icmp eq ptr %i.hn, %i.ho
  br i1 %.not.i.i.i.i184, label %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EEC2EmRKS3_.exit, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.hu = mul nuw nsw i64 %i.hs, 24               ; 3 uses
  %i.hv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hu) #27
          to label %.noexc186 unwind label %.loopexit320 ; 4 uses

.noexc186:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.hw = getelementptr inbounds nuw [24 x i8], ptr %i.hv, i64 %i.hs
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.hv, i8 0, i64 %i.hu, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.hv, i64 %i.hu
  %i.hx = ptrtoint ptr %i.hw to i64
  br label %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EEC2EmRKS3_.exit

_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EEC2EmRKS3_.exit: ; preds = %.noexc186, %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %.sroa.0294.0 = phi ptr [ %i.hv, %.noexc186 ], [ null, %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 15 uses
  %.sink.i = phi i64 [ %i.hx, %.noexc186 ], [ 0, %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.noexc186 ], [ null, %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 5 uses
  %i.hy = icmp sgt i32 %.fr, 0
  br i1 %i.hy, label %.preheader, label %.preheader311

.preheader311:                                    ; preds = %bb.aw, %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EEC2EmRKS3_.exit
  %i.hz = ptrtoint ptr %.sroa.0294.0 to i64       ; 2 uses
  %.not459 = icmp eq ptr %.0.lcssa.i.i.i.i.i, %.sroa.0294.0
  br i1 %.not459, label %_ZNSt6vectorIP6aiBoneSaIS1_EED2Ev.exit.thread, label %.lr.ph444.preheader

_ZNSt6vectorIP6aiBoneSaIS1_EED2Ev.exit.thread:    ; preds = %.preheader311
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ga, i64 216
  store i32 0, ptr %i.ia, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ga, i64 224
  store ptr null, ptr %i.ib, align 8
  br label %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i

.lr.ph444.preheader:                              ; preds = %.preheader311
  %i.ic = ptrtoint ptr %.0.lcssa.i.i.i.i.i to i64
  %i.id = sub i64 %i.ic, %i.hz
  %i.ie = sdiv exact i64 %i.id, 24
  br label %.lr.ph444

.preheader:                                       ; preds = %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EEC2EmRKS3_.exit, %bb.aw
  %indvars.iv525 = phi i64 [ %indvars.iv.next526, %bb.aw ], [ 0, %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EEC2EmRKS3_.exit ] ; 2 uses
  %.098405 = phi ptr [ %i.ig, %bb.aw ], [ %i.hm, %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EEC2EmRKS3_.exit ] ; 2 uses
  %.1100404 = phi ptr [ %.3102, %bb.aw ], [ %.099, %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EEC2EmRKS3_.exit ]
  %.1104403 = phi ptr [ %.3106, %bb.aw ], [ %.0103, %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EEC2EmRKS3_.exit ]
  %.0107402 = phi ptr [ %i.ip, %bb.aw ], [ %i.gk, %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EEC2EmRKS3_.exit ]
  %i.if = getelementptr inbounds nuw i8, ptr %.098405, i64 8 ; 2 uses
  br label %bb.ax

.loopexit320:                                     ; preds = %.lr.ph.preheader.i.i.i.i.i
  %lpad.loopexit322 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp321:                            ; preds = %bb.av
  %lpad.loopexit.split-lp323 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aw:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJiRfEEERS0_DpOT_.exit.3
  %i.ig = getelementptr inbounds nuw i8, ptr %.098405, i64 16
  %indvars.iv.next526 = add nuw nsw i64 %indvars.iv525, 3 ; 2 uses
  %i.ih = trunc nuw i64 %indvars.iv.next526 to i32
  %i.ii = icmp sgt i32 %i.gd, %i.ih
  br i1 %i.ii, label %.preheader, label %.preheader311, !llvm.loop !16

bb.ax:                                            ; preds = %.preheader, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJiRfEEERS0_DpOT_.exit.3
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJiRfEEERS0_DpOT_.exit.3 ] ; 4 uses
  %.2101400 = phi ptr [ %.1100404, %.preheader ], [ %.3102, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJiRfEEERS0_DpOT_.exit.3 ] ; 3 uses
  %.2105399 = phi ptr [ %.1104403, %.preheader ], [ %.3106, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJiRfEEERS0_DpOT_.exit.3 ] ; 3 uses
  %.1108398 = phi ptr [ %.0107402, %.preheader ], [ %i.ip, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJiRfEEERS0_DpOT_.exit.3 ] ; 2 uses
  %i.ij = load ptr, ptr %i.if, align 8
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %indvars.iv
  %i.il = load i32, ptr %i.ik, align 4
  %i.im = zext i32 %i.il to i64
  %i.in = load ptr, ptr %i.r, align 8
  %i.io = getelementptr inbounds nuw [56 x i8], ptr %i.in, i64 %i.im ; 11 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.1108398, i64 12 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1108398, ptr noundef nonnull align 4 dereferenceable(12) %i.io, i64 12, i1 false)
  %.not134 = icmp eq ptr %.2105399, null
  br i1 %.not134, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 12
  %i.ir = getelementptr inbounds nuw i8, ptr %.2105399, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.2105399, ptr noundef nonnull align 4 dereferenceable(12) %i.iq, i64 12, i1 false)
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.3106 = phi ptr [ %i.ir, %bb.ay ], [ null, %bb.ax ] ; 2 uses
  %.not135 = icmp eq ptr %.2101400, null
  br i1 %.not135, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.is = getelementptr inbounds nuw i8, ptr %i.io, i64 24
  %i.it = getelementptr inbounds nuw i8, ptr %.2101400, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.2101400, ptr noundef nonnull align 4 dereferenceable(12) %i.is, i64 12, i1 false)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.3102 = phi ptr [ %i.it, %bb.ba ], [ null, %bb.az ] ; 2 uses
  %i.iu = add nuw nsw i64 %indvars.iv, %indvars.iv525
  %i.iv = load ptr, ptr %i.if, align 8
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv
  %i.ix = trunc nuw i64 %i.iu to i32              ; 9 uses
  store i32 %i.ix, ptr %i.iw, align 4
  %i.iy = getelementptr inbounds nuw i8, ptr %i.io, i64 40
  %i.iz = load float, ptr %i.iy, align 4          ; 3 uses
  %i.ja = fcmp une float %i.iz, 0.000000e+00
  br i1 %i.ja, label %bb.bc, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJiRfEEERS0_DpOT_.exit.3

bb.bc:                                            ; preds = %bb.bb
  %i.jb = getelementptr inbounds nuw i8, ptr %i.io, i64 36
  %i.jc = load i8, ptr %i.jb, align 4
  %i.jd = zext i8 %i.jc to i64
  %i.je = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0294.0, i64 %i.jd ; 4 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 8 ; 4 uses
  %i.jg = load ptr, ptr %i.jf, align 8            ; 6 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.je, i64 16 ; 2 uses
  %i.ji = load ptr, ptr %i.jh, align 8
  %.not.i187 = icmp eq ptr %i.jg, %i.ji
  br i1 %.not.i187, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store i32 %i.ix, ptr %i.jg, align 4
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 4
  store float %i.iz, ptr %i.jj, align 4
  %i.jk = load ptr, ptr %i.jf, align 8
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  store ptr %i.jl, ptr %i.jf, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJiRfEEERS0_DpOT_.exit

bb.be:                                            ; preds = %bb.bc
  %i.jm = load ptr, ptr %i.je, align 8            ; 7 uses
  %i.jn = ptrtoint ptr %i.jg to i64               ; 2 uses
  %i.jo = ptrtoint ptr %i.jm to i64               ; 3 uses
  %i.jp = sub i64 %i.jn, %i.jo                    ; 4 uses
  %i.jq = icmp eq i64 %i.jp, 9223372036854775800
  br i1 %i.jq, label %bb.bf, label %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.bf:                                            ; preds = %bb.br, %bb.bn, %bb.bj, %bb.be
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #26
          to label %.noexc189 unwind label %.loopexit.split-lp

.noexc189:                                        ; preds = %bb.bf
  unreachable

_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.be
  %i.jr = ashr exact i64 %i.jp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.jr, i64 1)
  %i.js = add nsw i64 %.sroa.speculated.i.i.i, %i.jr ; 2 uses
  %i.jt = icmp ult i64 %i.js, %i.jr
  %i.ju = call i64 @llvm.umin.i64(i64 %i.js, i64 1152921504606846975)
  %i.jv = select i1 %i.jt, i64 1152921504606846975, i64 %i.ju ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.jv, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.jw = shl nuw nsw i64 %i.jv, 3
  %i.jx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jw) #27
          to label %.noexc190 unwind label %.loopexit ; 8 uses

.noexc190:                                        ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.jp ; 2 uses
  store i32 %i.ix, ptr %i.jy, align 4
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 4
  store float %i.iz, ptr %i.jz, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.jm, %i.jg
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc190
  %i.ka = ptrtoaddr ptr %i.jx to i64
  %14 = add i64 %i.jn, -8
  %15 = sub i64 %14, %i.jo                        ; 2 uses
  %i.kb = lshr i64 %15, 3
  %i.kc = add nuw nsw i64 %i.kb, 1                ; 2 uses
  %min.iters.check815 = icmp ult i64 %15, 24
  %i.kd = sub i64 %i.jo, %i.ka
  %diff.check813 = icmp ugt i64 %i.kd, -32
  %or.cond = or i1 %min.iters.check815, %diff.check813
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader835, label %vector.ph816

vector.ph816:                                     ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec817 = and i64 %i.kc, 4611686018427387900  ; 3 uses
  %i.ke = shl i64 %n.vec817, 3                    ; 2 uses
  %i.kf = getelementptr i8, ptr %i.jx, i64 %i.ke  ; 2 uses
  %i.kg = getelementptr i8, ptr %i.jm, i64 %i.ke
  br label %vector.body818

vector.body818:                                   ; preds = %vector.body818, %vector.ph816
  %index819 = phi i64 [ 0, %vector.ph816 ], [ %index.next824, %vector.body818 ] ; 2 uses
  %i.kh = shl i64 %index819, 3                    ; 2 uses
  %next.gep820 = getelementptr i8, ptr %i.jx, i64 %i.kh ; 2 uses
  %next.gep821 = getelementptr i8, ptr %i.jm, i64 %i.kh ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17)
  call void @llvm.experimental.noalias.scope.decl(metadata !20)
  %i.ki = getelementptr i8, ptr %next.gep821, i64 16
  %wide.load822 = load <2 x i64>, ptr %next.gep821, align 4, !alias.scope !20, !noalias !17
  %wide.load823 = load <2 x i64>, ptr %i.ki, align 4, !alias.scope !20, !noalias !17
  %i.kj = getelementptr i8, ptr %next.gep820, i64 16
  store <2 x i64> %wide.load822, ptr %next.gep820, align 4, !alias.scope !17, !noalias !20
  store <2 x i64> %wide.load823, ptr %i.kj, align 4, !alias.scope !17, !noalias !20
  %index.next824 = add nuw i64 %index819, 4       ; 2 uses
  %i.kk = icmp eq i64 %index.next824, %n.vec817
  br i1 %i.kk, label %middle.block825, label %vector.body818, !llvm.loop !22

middle.block825:                                  ; preds = %vector.body818
  %cmp.n826 = icmp eq i64 %i.kc, %n.vec817
  br i1 %cmp.n826, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i, label %.lr.ph.i.i.i.i.i.preheader835

.lr.ph.i.i.i.i.i.preheader835:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block825
  %.012.i.i.i.i.i.ph = phi ptr [ %i.jx, %.lr.ph.i.i.i.i.i.preheader ], [ %i.kf, %middle.block825 ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.jm, %.lr.ph.i.i.i.i.i.preheader ], [ %i.kg, %middle.block825 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader835, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.kn, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader835 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.km, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader835 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17)
  call void @llvm.experimental.noalias.scope.decl(metadata !20)
  %i.kl = load i64, ptr %.0911.i.i.i.i.i, align 4, !alias.scope !20, !noalias !17
  store i64 %i.kl, ptr %.012.i.i.i.i.i, align 4, !alias.scope !17, !noalias !20
  %i.km = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.km, %i.jg
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !25

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block825, %.noexc190
  %.0.lcssa.i.i.i.i.i188 = phi ptr [ %i.jx, %.noexc190 ], [ %i.kf, %middle.block825 ], [ %i.kn, %.lr.ph.i.i.i.i.i ]
  %i.ko = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i188, i64 8
  %.not.i34.i.i = icmp eq ptr %i.jm, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.jm, i64 noundef %i.jp) #25
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.bg, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i
  store ptr %i.jx, ptr %i.je, align 8
  store ptr %i.ko, ptr %i.jf, align 8
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %i.jv
  store ptr %i.kp, ptr %i.jh, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJiRfEEERS0_DpOT_.exit

_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJiRfEEERS0_DpOT_.exit: ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.bd
  %i.kq = getelementptr inbounds nuw i8, ptr %i.io, i64 44
  %i.kr = load float, ptr %i.kq, align 4          ; 3 uses
  %i.ks = fcmp une float %i.kr, 0.000000e+00
  br i1 %i.ks, label %bb.bh, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJiRfEEERS0_DpOT_.exit.3

bb.bh:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJiRfEEERS0_DpOT_.exit
  %i.kt = getelementptr inbounds nuw i8, ptr %i.io, i64 37
  %i.ku = load i8, ptr %i.kt, align 1
  %i.kv = zext i8 %i.ku to i64
  %i.kw = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0294.0, i64 %i.kv ; 4 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 8 ; 4 uses
  %i.ky = load ptr, ptr %i.kx, align 8            ; 6 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kw, i64 16 ; 2 uses
  %i.la = load ptr, ptr %i.kz, align 8
  %.not.i187.1 = icmp eq ptr %i.ky, %i.la
  br i1 %.not.i187.1, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  store i32 %i.ix, ptr %i.ky, align 4
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 4
  store float %i.kr, ptr %i.lb, align 4
  %i.lc = load ptr, ptr %i.kx, align 8
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  store ptr %i.ld, ptr %i.kx, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJiRfEEERS0_DpOT_.exit.1

bb.bj:                                            ; preds = %bb.bh
  %i.le = load ptr, ptr %i.kw, align 8            ; 7 uses
  %i.lf = ptrtoint ptr %i.ky to i64               ; 2 uses
  %i.lg = ptrtoint ptr %i.le to i64               ; 3 uses
  %i.lh = sub i64 %i.lf, %i.lg                    ; 4 uses
  %i.li = icmp eq i64 %i.lh, 9223372036854775800
  br i1 %i.li, label %bb.bf, label %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i.1

_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i.1: ; preds = %bb.bj
  %i.lj = ashr exact i64 %i.lh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.1 = call i64 @llvm.umax.i64(i64 %i.lj, i64 1)
  %i.lk = add nsw i64 %.sroa.speculated.i.i.i.1, %i.lj ; 2 uses
  %i.ll = icmp ult i64 %i.lk, %i.lj
  %i.lm = call i64 @llvm.umin.i64(i64 %i.lk, i64 1152921504606846975)
  %i.ln = select i1 %i.ll, i64 1152921504606846975, i64 %i.lm ; 3 uses
  %.not.i.i.i.1 = icmp ne i64 %i.ln, 0
  call void @llvm.assume(i1 %.not.i.i.i.1)
  %i.lo = shl nuw nsw i64 %i.ln, 3
  %i.lp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lo) #27
          to label %.noexc190.1 unwind label %.loopexit ; 8 uses

.noexc190.1:                                      ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i.1
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.lh ; 2 uses
  store i32 %i.ix, ptr %i.lq, align 4
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 4
  store float %i.kr, ptr %i.lr, align 4
  %.not10.i.i.i.i.i.1 = icmp eq ptr %i.le, %i.ky
  br i1 %.not10.i.i.i.i.i.1, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i.1, label %.lr.ph.i.i.i.i.i.1.preheader

.lr.ph.i.i.i.i.i.1.preheader:                     ; preds = %.noexc190.1
  %i.ls = ptrtoaddr ptr %i.lp to i64
  %16 = add i64 %i.lf, -8
  %17 = sub i64 %16, %i.lg                        ; 2 uses
  %i.lt = lshr i64 %17, 3
  %i.lu = add nuw nsw i64 %i.lt, 1                ; 2 uses
  %min.iters.check798 = icmp ult i64 %17, 24
  %i.lv = sub i64 %i.lg, %i.ls
  %diff.check796 = icmp ugt i64 %i.lv, -32
  %or.cond829 = or i1 %min.iters.check798, %diff.check796
  br i1 %or.cond829, label %.lr.ph.i.i.i.i.i.1.preheader834, label %vector.ph799

vector.ph799:                                     ; preds = %.lr.ph.i.i.i.i.i.1.preheader
  %n.vec800 = and i64 %i.lu, 4611686018427387900  ; 3 uses
  %i.lw = shl i64 %n.vec800, 3                    ; 2 uses
  %i.lx = getelementptr i8, ptr %i.lp, i64 %i.lw  ; 2 uses
  %i.ly = getelementptr i8, ptr %i.le, i64 %i.lw
  br label %vector.body801

vector.body801:                                   ; preds = %vector.body801, %vector.ph799
  %index802 = phi i64 [ 0, %vector.ph799 ], [ %index.next807, %vector.body801 ] ; 2 uses
  %i.lz = shl i64 %index802, 3                    ; 2 uses
  %next.gep803 = getelementptr i8, ptr %i.lp, i64 %i.lz ; 2 uses
  %next.gep804 = getelementptr i8, ptr %i.le, i64 %i.lz ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26)
  call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %i.ma = getelementptr i8, ptr %next.gep804, i64 16
  %wide.load805 = load <2 x i64>, ptr %next.gep804, align 4, !alias.scope !28, !noalias !26
  %wide.load806 = load <2 x i64>, ptr %i.ma, align 4, !alias.scope !28, !noalias !26
  %i.mb = getelementptr i8, ptr %next.gep803, i64 16
  store <2 x i64> %wide.load805, ptr %next.gep803, align 4, !alias.scope !26, !noalias !28
  store <2 x i64> %wide.load806, ptr %i.mb, align 4, !alias.scope !26, !noalias !28
  %index.next807 = add nuw i64 %index802, 4       ; 2 uses
  %i.mc = icmp eq i64 %index.next807, %n.vec800
  br i1 %i.mc, label %middle.block808, label %vector.body801, !llvm.loop !30

middle.block808:                                  ; preds = %vector.body801
  %cmp.n809 = icmp eq i64 %i.lu, %n.vec800
  br i1 %cmp.n809, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i.1, label %.lr.ph.i.i.i.i.i.1.preheader834

.lr.ph.i.i.i.i.i.1.preheader834:                  ; preds = %.lr.ph.i.i.i.i.i.1.preheader, %middle.block808
  %.012.i.i.i.i.i.1.ph = phi ptr [ %i.lp, %.lr.ph.i.i.i.i.i.1.preheader ], [ %i.lx, %middle.block808 ]
  %.0911.i.i.i.i.i.1.ph = phi ptr [ %i.le, %.lr.ph.i.i.i.i.i.1.preheader ], [ %i.ly, %middle.block808 ]
  br label %.lr.ph.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.1:                               ; preds = %.lr.ph.i.i.i.i.i.1.preheader834, %.lr.ph.i.i.i.i.i.1
  %.012.i.i.i.i.i.1 = phi ptr [ %i.mf, %.lr.ph.i.i.i.i.i.1 ], [ %.012.i.i.i.i.i.1.ph, %.lr.ph.i.i.i.i.i.1.preheader834 ] ; 2 uses
  %.0911.i.i.i.i.i.1 = phi ptr [ %i.me, %.lr.ph.i.i.i.i.i.1 ], [ %.0911.i.i.i.i.i.1.ph, %.lr.ph.i.i.i.i.i.1.preheader834 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26)
  call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %i.md = load i64, ptr %.0911.i.i.i.i.i.1, align 4, !alias.scope !28, !noalias !26
  store i64 %i.md, ptr %.012.i.i.i.i.i.1, align 4, !alias.scope !26, !noalias !28
  %i.me = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.1, i64 8 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.1, i64 8 ; 2 uses
  %.not.i.i.i.i.i.1 = icmp eq ptr %i.me, %i.ky
  br i1 %.not.i.i.i.i.i.1, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i.1, label %.lr.ph.i.i.i.i.i.1, !llvm.loop !31

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i.1: ; preds = %.lr.ph.i.i.i.i.i.1, %middle.block808, %.noexc190.1
  %.0.lcssa.i.i.i.i.i188.1 = phi ptr [ %i.lp, %.noexc190.1 ], [ %i.lx, %middle.block808 ], [ %i.mf, %.lr.ph.i.i.i.i.i.1 ]
  %i.mg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i188.1, i64 8
  %.not.i34.i.i.1 = icmp eq ptr %i.le, null
  br i1 %.not.i34.i.i.1, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.1, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i.1
  call void @_ZdlPvm(ptr noundef nonnull %i.le, i64 noundef %i.lh) #25
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.1

_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.1: ; preds = %bb.bk, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i.1
  store ptr %i.lp, ptr %i.kw, align 8
  store ptr %i.mg, ptr %i.kx, align 8
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.lp, i64 %i.ln
  store ptr %i.mh, ptr %i.kz, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJiRfEEERS0_DpOT_.exit.1

_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJiRfEEERS0_DpOT_.exit.1: ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.1, %bb.bi
  %i.mi = getelementptr inbounds nuw i8, ptr %i.io, i64 48
  %i.mj = load float, ptr %i.mi, align 4          ; 3 uses
  %i.mk = fcmp une float %i.mj, 0.000000e+00
  br i1 %i.mk, label %bb.bl, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJiRfEEERS0_DpOT_.exit.3

bb.bl:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJiRfEEERS0_DpOT_.exit.1
  %i.ml = getelementptr inbounds nuw i8, ptr %i.io, i64 38
  %i.mm = load i8, ptr %i.ml, align 2
  %i.mn = zext i8 %i.mm to i64
  %i.mo = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0294.0, i64 %i.mn ; 4 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 8 ; 4 uses
  %i.mq = load ptr, ptr %i.mp, align 8            ; 6 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mo, i64 16 ; 2 uses
  %i.ms = load ptr, ptr %i.mr, align 8
  %.not.i187.2 = icmp eq ptr %i.mq, %i.ms
  br i1 %.not.i187.2, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  store i32 %i.ix, ptr %i.mq, align 4
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mq, i64 4
  store float %i.mj, ptr %i.mt, align 4
  %i.mu = load ptr, ptr %i.mp, align 8
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  store ptr %i.mv, ptr %i.mp, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJiRfEEERS0_DpOT_.exit.2

bb.bn:                                            ; preds = %bb.bl
  %i.mw = load ptr, ptr %i.mo, align 8            ; 7 uses
  %i.mx = ptrtoint ptr %i.mq to i64               ; 2 uses
  %i.my = ptrtoint ptr %i.mw to i64               ; 3 uses
  %i.mz = sub i64 %i.mx, %i.my                    ; 4 uses
  %i.na = icmp eq i64 %i.mz, 9223372036854775800
  br i1 %i.na, label %bb.bf, label %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i.2

_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i.2: ; preds = %bb.bn
  %i.nb = ashr exact i64 %i.mz, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.2 = call i64 @llvm.umax.i64(i64 %i.nb, i64 1)
  %i.nc = add nsw i64 %.sroa.speculated.i.i.i.2, %i.nb ; 2 uses
  %i.nd = icmp ult i64 %i.nc, %i.nb
  %i.ne = call i64 @llvm.umin.i64(i64 %i.nc, i64 1152921504606846975)
  %i.nf = select i1 %i.nd, i64 1152921504606846975, i64 %i.ne ; 3 uses
  %.not.i.i.i.2 = icmp ne i64 %i.nf, 0
  call void @llvm.assume(i1 %.not.i.i.i.2)
  %i.ng = shl nuw nsw i64 %i.nf, 3
  %i.nh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ng) #27
          to label %.noexc190.2 unwind label %.loopexit ; 8 uses

.noexc190.2:                                      ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i.2
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 %i.mz ; 2 uses
  store i32 %i.ix, ptr %i.ni, align 4
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 4
  store float %i.mj, ptr %i.nj, align 4
  %.not10.i.i.i.i.i.2 = icmp eq ptr %i.mw, %i.mq
  br i1 %.not10.i.i.i.i.i.2, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i.2, label %.lr.ph.i.i.i.i.i.2.preheader

.lr.ph.i.i.i.i.i.2.preheader:                     ; preds = %.noexc190.2
  %i.nk = ptrtoaddr ptr %i.nh to i64
  %18 = add i64 %i.mx, -8
  %19 = sub i64 %18, %i.my                        ; 2 uses
  %i.nl = lshr i64 %19, 3
  %i.nm = add nuw nsw i64 %i.nl, 1                ; 2 uses
  %min.iters.check781 = icmp ult i64 %19, 24
  %i.nn = sub i64 %i.my, %i.nk
  %diff.check779 = icmp ugt i64 %i.nn, -32
  %or.cond830 = or i1 %min.iters.check781, %diff.check779
  br i1 %or.cond830, label %.lr.ph.i.i.i.i.i.2.preheader833, label %vector.ph782

vector.ph782:                                     ; preds = %.lr.ph.i.i.i.i.i.2.preheader
  %n.vec783 = and i64 %i.nm, 4611686018427387900  ; 3 uses
  %i.no = shl i64 %n.vec783, 3                    ; 2 uses
  %i.np = getelementptr i8, ptr %i.nh, i64 %i.no  ; 2 uses
  %i.nq = getelementptr i8, ptr %i.mw, i64 %i.no
  br label %vector.body784

vector.body784:                                   ; preds = %vector.body784, %vector.ph782
  %index785 = phi i64 [ 0, %vector.ph782 ], [ %index.next790, %vector.body784 ] ; 2 uses
  %i.nr = shl i64 %index785, 3                    ; 2 uses
  %next.gep786 = getelementptr i8, ptr %i.nh, i64 %i.nr ; 2 uses
  %next.gep787 = getelementptr i8, ptr %i.mw, i64 %i.nr ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32)
  call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %i.ns = getelementptr i8, ptr %next.gep787, i64 16
  %wide.load788 = load <2 x i64>, ptr %next.gep787, align 4, !alias.scope !34, !noalias !32
  %wide.load789 = load <2 x i64>, ptr %i.ns, align 4, !alias.scope !34, !noalias !32
  %i.nt = getelementptr i8, ptr %next.gep786, i64 16
  store <2 x i64> %wide.load788, ptr %next.gep786, align 4, !alias.scope !32, !noalias !34
  store <2 x i64> %wide.load789, ptr %i.nt, align 4, !alias.scope !32, !noalias !34
  %index.next790 = add nuw i64 %index785, 4       ; 2 uses
  %i.nu = icmp eq i64 %index.next790, %n.vec783
  br i1 %i.nu, label %middle.block791, label %vector.body784, !llvm.loop !36

middle.block791:                                  ; preds = %vector.body784
  %cmp.n792 = icmp eq i64 %i.nm, %n.vec783
  br i1 %cmp.n792, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i.2, label %.lr.ph.i.i.i.i.i.2.preheader833

.lr.ph.i.i.i.i.i.2.preheader833:                  ; preds = %.lr.ph.i.i.i.i.i.2.preheader, %middle.block791
  %.012.i.i.i.i.i.2.ph = phi ptr [ %i.nh, %.lr.ph.i.i.i.i.i.2.preheader ], [ %i.np, %middle.block791 ]
  %.0911.i.i.i.i.i.2.ph = phi ptr [ %i.mw, %.lr.ph.i.i.i.i.i.2.preheader ], [ %i.nq, %middle.block791 ]
  br label %.lr.ph.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.2:                               ; preds = %.lr.ph.i.i.i.i.i.2.preheader833, %.lr.ph.i.i.i.i.i.2
  %.012.i.i.i.i.i.2 = phi ptr [ %i.nx, %.lr.ph.i.i.i.i.i.2 ], [ %.012.i.i.i.i.i.2.ph, %.lr.ph.i.i.i.i.i.2.preheader833 ] ; 2 uses
  %.0911.i.i.i.i.i.2 = phi ptr [ %i.nw, %.lr.ph.i.i.i.i.i.2 ], [ %.0911.i.i.i.i.i.2.ph, %.lr.ph.i.i.i.i.i.2.preheader833 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32)
  call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %i.nv = load i64, ptr %.0911.i.i.i.i.i.2, align 4, !alias.scope !34, !noalias !32
  store i64 %i.nv, ptr %.012.i.i.i.i.i.2, align 4, !alias.scope !32, !noalias !34
  %i.nw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.2, i64 8 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.2, i64 8 ; 2 uses
  %.not.i.i.i.i.i.2 = icmp eq ptr %i.nw, %i.mq
  br i1 %.not.i.i.i.i.i.2, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i.2, label %.lr.ph.i.i.i.i.i.2, !llvm.loop !37

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i.2: ; preds = %.lr.ph.i.i.i.i.i.2, %middle.block791, %.noexc190.2
  %.0.lcssa.i.i.i.i.i188.2 = phi ptr [ %i.nh, %.noexc190.2 ], [ %i.np, %middle.block791 ], [ %i.nx, %.lr.ph.i.i.i.i.i.2 ]
  %i.ny = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i188.2, i64 8
  %.not.i34.i.i.2 = icmp eq ptr %i.mw, null
  br i1 %.not.i34.i.i.2, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.2, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i.2
  call void @_ZdlPvm(ptr noundef nonnull %i.mw, i64 noundef %i.mz) #25
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.2

_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.2: ; preds = %bb.bo, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i.2
  store ptr %i.nh, ptr %i.mo, align 8
  store ptr %i.ny, ptr %i.mp, align 8
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.nh, i64 %i.nf
  store ptr %i.nz, ptr %i.mr, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJiRfEEERS0_DpOT_.exit.2

_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJiRfEEERS0_DpOT_.exit.2: ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.2, %bb.bm
  %i.oa = getelementptr inbounds nuw i8, ptr %i.io, i64 52
  %i.ob = load float, ptr %i.oa, align 4          ; 3 uses
  %i.oc = fcmp une float %i.ob, 0.000000e+00
  br i1 %i.oc, label %bb.bp, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJiRfEEERS0_DpOT_.exit.3

bb.bp:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJiRfEEERS0_DpOT_.exit.2
  %i.od = getelementptr inbounds nuw i8, ptr %i.io, i64 39
  %i.oe = load i8, ptr %i.od, align 1
  %i.of = zext i8 %i.oe to i64
  %i.og = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0294.0, i64 %i.of ; 4 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 8 ; 4 uses
  %i.oi = load ptr, ptr %i.oh, align 8            ; 6 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.og, i64 16 ; 2 uses
  %i.ok = load ptr, ptr %i.oj, align 8
  %.not.i187.3 = icmp eq ptr %i.oi, %i.ok
  br i1 %.not.i187.3, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  store i32 %i.ix, ptr %i.oi, align 4
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oi, i64 4
  store float %i.ob, ptr %i.ol, align 4
  %i.om = load ptr, ptr %i.oh, align 8
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  store ptr %i.on, ptr %i.oh, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJiRfEEERS0_DpOT_.exit.3

bb.br:                                            ; preds = %bb.bp
  %i.oo = load ptr, ptr %i.og, align 8            ; 7 uses
  %i.op = ptrtoint ptr %i.oi to i64               ; 2 uses
  %i.oq = ptrtoint ptr %i.oo to i64               ; 3 uses
  %i.or = sub i64 %i.op, %i.oq                    ; 4 uses
  %i.os = icmp eq i64 %i.or, 9223372036854775800
  br i1 %i.os, label %bb.bf, label %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i.3

_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i.3: ; preds = %bb.br
  %i.ot = ashr exact i64 %i.or, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.3 = call i64 @llvm.umax.i64(i64 %i.ot, i64 1)
  %i.ou = add nsw i64 %.sroa.speculated.i.i.i.3, %i.ot ; 2 uses
  %i.ov = icmp ult i64 %i.ou, %i.ot
  %i.ow = call i64 @llvm.umin.i64(i64 %i.ou, i64 1152921504606846975)
  %i.ox = select i1 %i.ov, i64 1152921504606846975, i64 %i.ow ; 3 uses
  %.not.i.i.i.3 = icmp ne i64 %i.ox, 0
  call void @llvm.assume(i1 %.not.i.i.i.3)
  %i.oy = shl nuw nsw i64 %i.ox, 3
  %i.oz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oy) #27
          to label %.noexc190.3 unwind label %.loopexit ; 8 uses

.noexc190.3:                                      ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i.3
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 %i.or ; 2 uses
  store i32 %i.ix, ptr %i.pa, align 4
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 4
  store float %i.ob, ptr %i.pb, align 4
  %.not10.i.i.i.i.i.3 = icmp eq ptr %i.oo, %i.oi
  br i1 %.not10.i.i.i.i.i.3, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i.3, label %.lr.ph.i.i.i.i.i.3.preheader

.lr.ph.i.i.i.i.i.3.preheader:                     ; preds = %.noexc190.3
  %i.pc = ptrtoaddr ptr %i.oz to i64
  %20 = add i64 %i.op, -8
  %21 = sub i64 %20, %i.oq                        ; 2 uses
  %i.pd = lshr i64 %21, 3
  %i.pe = add nuw nsw i64 %i.pd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %21, 24
  %i.pf = sub i64 %i.oq, %i.pc
  %diff.check = icmp ugt i64 %i.pf, -32
  %or.cond831 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond831, label %.lr.ph.i.i.i.i.i.3.preheader832, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.3.preheader
  %n.vec = and i64 %i.pe, 4611686018427387900     ; 3 uses
  %i.pg = shl i64 %n.vec, 3                       ; 2 uses
  %i.ph = getelementptr i8, ptr %i.oz, i64 %i.pg  ; 2 uses
  %i.pi = getelementptr i8, ptr %i.oo, i64 %i.pg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.pj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.oz, i64 %i.pj ; 2 uses
  %next.gep775 = getelementptr i8, ptr %i.oo, i64 %i.pj ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38)
  call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %i.pk = getelementptr i8, ptr %next.gep775, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep775, align 4, !alias.scope !40, !noalias !38
  %wide.load776 = load <2 x i64>, ptr %i.pk, align 4, !alias.scope !40, !noalias !38
  %i.pl = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !38, !noalias !40
  store <2 x i64> %wide.load776, ptr %i.pl, align 4, !alias.scope !38, !noalias !40
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.pm = icmp eq i64 %index.next, %n.vec
  br i1 %i.pm, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.pe, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i.3, label %.lr.ph.i.i.i.i.i.3.preheader832

.lr.ph.i.i.i.i.i.3.preheader832:                  ; preds = %.lr.ph.i.i.i.i.i.3.preheader, %middle.block
  %.012.i.i.i.i.i.3.ph = phi ptr [ %i.oz, %.lr.ph.i.i.i.i.i.3.preheader ], [ %i.ph, %middle.block ]
  %.0911.i.i.i.i.i.3.ph = phi ptr [ %i.oo, %.lr.ph.i.i.i.i.i.3.preheader ], [ %i.pi, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.3

.lr.ph.i.i.i.i.i.3:                               ; preds = %.lr.ph.i.i.i.i.i.3.preheader832, %.lr.ph.i.i.i.i.i.3
  %.012.i.i.i.i.i.3 = phi ptr [ %i.pp, %.lr.ph.i.i.i.i.i.3 ], [ %.012.i.i.i.i.i.3.ph, %.lr.ph.i.i.i.i.i.3.preheader832 ] ; 2 uses
  %.0911.i.i.i.i.i.3 = phi ptr [ %i.po, %.lr.ph.i.i.i.i.i.3 ], [ %.0911.i.i.i.i.i.3.ph, %.lr.ph.i.i.i.i.i.3.preheader832 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38)
  call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %i.pn = load i64, ptr %.0911.i.i.i.i.i.3, align 4, !alias.scope !40, !noalias !38
  store i64 %i.pn, ptr %.012.i.i.i.i.i.3, align 4, !alias.scope !38, !noalias !40
  %i.po = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.3, i64 8 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.3, i64 8 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq ptr %i.po, %i.oi
  br i1 %.not.i.i.i.i.i.3, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i.3, label %.lr.ph.i.i.i.i.i.3, !llvm.loop !43

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i.3: ; preds = %.lr.ph.i.i.i.i.i.3, %middle.block, %.noexc190.3
  %.0.lcssa.i.i.i.i.i188.3 = phi ptr [ %i.oz, %.noexc190.3 ], [ %i.ph, %middle.block ], [ %i.pp, %.lr.ph.i.i.i.i.i.3 ]
  %i.pq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i188.3, i64 8
  %.not.i34.i.i.3 = icmp eq ptr %i.oo, null
  br i1 %.not.i34.i.i.3, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.3, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i.3
  call void @_ZdlPvm(ptr noundef nonnull %i.oo, i64 noundef %i.or) #25
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.3

_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.3: ; preds = %bb.bs, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i.3
  store ptr %i.oz, ptr %i.og, align 8
  store ptr %i.pq, ptr %i.oh, align 8
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.oz, i64 %i.ox
  store ptr %i.pr, ptr %i.oj, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJiRfEEERS0_DpOT_.exit.3

.loopexit:                                        ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i.3, %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i.2, %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i.1, %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIP6aiBoneSaIS1_EED2Ev.exit204

.loopexit.split-lp:                               ; preds = %bb.bf
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIP6aiBoneSaIS1_EED2Ev.exit204

_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJiRfEEERS0_DpOT_.exit.3: ; preds = %bb.bq, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.3, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJiRfEEERS0_DpOT_.exit.2, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJiRfEEERS0_DpOT_.exit.1, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJiRfEEERS0_DpOT_.exit, %bb.bb
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.aw, label %bb.ax, !llvm.loop !44

._crit_edge445:                                   ; preds = %bb.cf
  %i.ps = ptrtoint ptr %.sroa.10.1 to i64
  %i.pt = ptrtoint ptr %.sroa.0280.1 to i64       ; 2 uses
  %i.pu = sub i64 %i.ps, %i.pt                    ; 3 uses
  %i.pv = lshr exact i64 %i.pu, 3
  %i.pw = trunc i64 %i.pv to i32
  %i.px = getelementptr inbounds nuw i8, ptr %i.ga, i64 216
  store i32 %i.pw, ptr %i.px, align 8
  %i.py = icmp eq ptr %.sroa.0280.1, %.sroa.10.1
  br i1 %i.py, label %_ZN6Assimp11B3DImporter8to_arrayIP6aiBoneEEPT_RKSt6vectorIS4_SaIS4_EE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge445
  %i.pz = call i64 @llvm.smax.i64(i64 %i.pu, i64 -1)
  %i.qa = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.pz) #27
          to label %.noexc191 unwind label %bb.cj ; 2 uses

.noexc191:                                        ; preds = %.lr.ph.preheader.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.qa, ptr align 8 %.sroa.0280.1, i64 %i.pu, i1 false)
  br label %_ZN6Assimp11B3DImporter8to_arrayIP6aiBoneEEPT_RKSt6vectorIS4_SaIS4_EE.exit

.lr.ph444:                                        ; preds = %.lr.ph444.preheader, %bb.cf
  %.093443 = phi i64 [ %i.un, %bb.cf ], [ 0, %.lr.ph444.preheader ] ; 3 uses
  %.sroa.16.0442 = phi ptr [ %.sroa.16.1, %bb.cf ], [ null, %.lr.ph444.preheader ] ; 6 uses
  %.sroa.10.0441 = phi ptr [ %.sroa.10.1, %bb.cf ], [ null, %.lr.ph444.preheader ] ; 4 uses
  %.sroa.0280.0440 = phi ptr [ %.sroa.0280.1, %bb.cf ], [ null, %.lr.ph444.preheader ] ; 8 uses
  %i.qb = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0294.0, i64 %.093443 ; 3 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 8 ; 2 uses
  %i.qd = load ptr, ptr %i.qc, align 8
  %i.qe = load ptr, ptr %i.qb, align 8
  %.not127 = icmp eq ptr %i.qd, %i.qe
  br i1 %.not127, label %bb.cf, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph444
  %i.qf = invoke noalias noundef nonnull dereferenceable(1120) ptr @_Znwm(i64 noundef 1120) #27
          to label %bb.bu unwind label %.loopexit312 ; 15 uses

bb.bu:                                            ; preds = %bb.bt
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 1056 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1120) %i.qf, i8 0, i64 1056, i1 false)
  store float 1.000000e+00, ptr %i.qg, align 4
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qf, i64 1060
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qf, i64 1076
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.qh, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.qi, align 4
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qf, i64 1080
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qf, i64 1096
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qj, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.qk, align 4
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qf, i64 1100
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qf, i64 1116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ql, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.qm, align 4
  %.not.i192 = icmp eq ptr %.sroa.10.0441, %.sroa.16.0442
  br i1 %.not.i192, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  store ptr %i.qf, ptr %.sroa.10.0441, align 8
  br label %_ZNSt6vectorIP6aiBoneSaIS1_EE9push_backERKS1_.exit

bb.bw:                                            ; preds = %bb.bu
  %i.qn = ptrtoint ptr %.sroa.16.0442 to i64
  %i.qo = ptrtoint ptr %.sroa.0280.0440 to i64
  %i.qp = sub i64 %i.qn, %i.qo                    ; 6 uses
  %i.qq = icmp eq i64 %i.qp, 9223372036854775800
  br i1 %i.qq, label %bb.bx, label %_ZNKSt6vectorIP6aiBoneSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.bx:                                            ; preds = %bb.bw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #26
          to label %.noexc195 unwind label %.loopexit.split-lp313

.noexc195:                                        ; preds = %bb.bx
  unreachable

_ZNKSt6vectorIP6aiBoneSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bw
  %i.qr = ashr exact i64 %i.qp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i193 = call i64 @llvm.umax.i64(i64 %i.qr, i64 1)
  %i.qs = add nsw i64 %.sroa.speculated.i.i.i193, %i.qr ; 2 uses
  %i.qt = icmp ult i64 %i.qs, %i.qr
  %i.qu = call i64 @llvm.umin.i64(i64 %i.qs, i64 1152921504606846975)
  %i.qv = select i1 %i.qt, i64 1152921504606846975, i64 %i.qu ; 3 uses
  %.not.i.i.i194 = icmp ne i64 %i.qv, 0
  call void @llvm.assume(i1 %.not.i.i.i194)
  %i.qw = shl nuw nsw i64 %i.qv, 3
  %i.qx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qw) #27
          to label %.noexc196 unwind label %.loopexit312 ; 4 uses

.noexc196:                                        ; preds = %_ZNKSt6vectorIP6aiBoneSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.qy = getelementptr inbounds i8, ptr %i.qx, i64 %i.qp ; 2 uses
  store ptr %i.qf, ptr %i.qy, align 8
  %i.qz = icmp sgt i64 %i.qp, 0
  br i1 %i.qz, label %bb.by, label %_ZNSt6vectorIP6aiBoneSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.by:                                            ; preds = %.noexc196
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.qx, ptr align 8 %.sroa.0280.0440, i64 %i.qp, i1 false)
  br label %_ZNSt6vectorIP6aiBoneSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6aiBoneSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.by, %.noexc196
  %.not.i17.i.i = icmp eq ptr %.sroa.0280.0440, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP6aiBoneSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt6vectorIP6aiBoneSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0280.0440, i64 noundef %i.qp) #25
  br label %_ZNSt6vectorIP6aiBoneSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiBoneSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.bz, %_ZNSt6vectorIP6aiBoneSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.ra = getelementptr inbounds nuw [8 x i8], ptr %i.qx, i64 %i.qv
  br label %_ZNSt6vectorIP6aiBoneSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP6aiBoneSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP6aiBoneSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.bv
  %.sroa.0280.4 = phi ptr [ %i.qx, %_ZNSt6vectorIP6aiBoneSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0280.0440, %bb.bv ] ; 3 uses
  %.pn309 = phi ptr [ %i.qy, %_ZNSt6vectorIP6aiBoneSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.10.0441, %bb.bv ]
  %.sroa.16.4 = phi ptr [ %i.ra, %_ZNSt6vectorIP6aiBoneSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.16.0442, %bb.bv ] ; 3 uses
  %.sroa.10.2 = getelementptr inbounds nuw i8, ptr %.pn309, i64 8
  %i.rb = load ptr, ptr %i.ab, align 8
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.rb, i64 %.093443
end_hunk_0
begin_hunk_1_@_ZN6Assimp11B3DImporter8ReadBRUSEv:bb.a
_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit: ; preds = %_ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.ct = fmul float %.0.copyload.i54, 1.280000e+02
  store float %i.ct, ptr %i.b, align 4
  %i.cu = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull %i.b, i32 noundef 4, ptr noundef nonnull @.str.12, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit82 unwind label %.loopexit ; 0 uses

_ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit82:    ; preds = %_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit
  %i.cv = and i32 %.0.copyload.i70, 16
  %.not35 = icmp eq i32 %i.cv, 0
  br i1 %.not35, label %bb.ao, label %bb.ae

bb.ae:                                            ; preds = %_ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i32 1, ptr %i.c, align 4
  %i.cw = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull %i.c, i32 noundef 4, ptr noundef nonnull @.str.13, i32 noundef 0, i32 noundef 0, i32 noundef 4)
          to label %_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit unwind label %bb.an ; 0 uses

_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit:      ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %bb.ao

bb.af:                                            ; preds = %bb.j
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.ag:                                            ; preds = %bb.l
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ah:                                            ; preds = %bb.t, %bb.p
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ai:                                            ; preds = %bb.x
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aj:                                            ; preds = %bb.aa
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.ak:                                            ; preds = %bb.ab
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef 16) #25
  br label %bb.bk

bb.al:                                            ; preds = %_ZN10aiMaterial11AddPropertyEPK10aiVector3tIfEjPKcjj.exit, %bb.ad, %bb.ac
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.am:                                            ; preds = %_ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

.loopexit:                                        ; preds = %_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit, %_ZNKSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body91

.loopexit.split-lp:                               ; preds = %bb.av
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body91

bb.an:                                            ; preds = %bb.ae
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %.body91

bb.ao:                                            ; preds = %_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit, %_ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit82
  br i1 %.not123, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ao
  %i.dg = load i64, ptr %i.d, align 8             ; 2 uses
  %i.dh = add i64 %i.dg, 4                        ; 2 uses
  %i.di = load ptr, ptr %i.h, align 8
  %i.dj = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = icmp ugt i64 %i.dh, %i.dm
  br i1 %i.dn, label %.loopexit135, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.preheader
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dg
  %.0.copyload.i86.peel = load i32, ptr %i.do, align 1 ; 4 uses
  store i64 %i.dh, ptr %i.d, align 8
  %i.dp = icmp slt i32 %.0.copyload.i86.peel, -1
  br i1 %i.dp, label %.loopexit136, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dq = icmp sgt i32 %.0.copyload.i86.peel, -1
  br i1 %i.dq, label %bb.ar, label %.thread.peel

bb.ar:                                            ; preds = %bb.aq
  %i.dr = load ptr, ptr %i.ae, align 8
  %i.ds = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = lshr exact i64 %i.dv, 5
  %i.dx = trunc i64 %i.dw to i32
  %.not36.peel = icmp slt i32 %.0.copyload.i86.peel, %i.dx
  br i1 %.not36.peel, label %bb.as, label %.loopexit136

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24
  %i.dy = zext nneg i32 %.0.copyload.i86.peel to i64
  %i.dz = getelementptr inbounds nuw [32 x i8], ptr %i.ds, i64 %i.dy ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load i64, ptr %i.ea, align 8            ; 2 uses
  %i.ec = trunc i64 %i.eb to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.af, i8 0, i64 1024, i1 false)
  %i.ed = and i64 %i.eb, 4294966272
  %.not.i97.peel = icmp eq i64 %i.ed, 0
  %spec.select.i98.peel = select i1 %.not.i97.peel, i32 %i.ec, i32 1023 ; 2 uses
  store i32 %spec.select.i98.peel, ptr %22, align 4
  %i.ee = load ptr, ptr %i.dz, align 8
  %i.ef = zext i32 %spec.select.i98.peel to i64   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.af, ptr align 1 %i.ee, i64 %i.ef, i1 false)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ef
  store i8 0, ptr %i.eg, align 1
  %i.eh = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull %22, ptr noundef nonnull @.str.15, i32 noundef 1, i32 noundef 0)
          to label %bb.at unwind label %bb.bh     ; 0 uses

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  br label %.thread.peel

.thread.peel:                                     ; preds = %bb.at, %bb.aq
  br i1 %exitcond.peel.not, label %._crit_edge, label %.lr.ph.peel.next

.lr.ph.peel.next:                                 ; preds = %.thread.peel
  %.pre = load i64, ptr %i.d, align 8
  %.pre143 = load ptr, ptr %i.h, align 8
  %.pre144 = load ptr, ptr %i.g, align 8          ; 2 uses
  %i.ei = ptrtoint ptr %.pre143 to i64
  %i.ej = ptrtoint ptr %.pre144 to i64
  %i.ek = sub i64 %i.ei, %i.ej
  br label %.lr.ph

._crit_edge:                                      ; preds = %.thread, %.thread.peel, %bb.ao
  %i.el = load ptr, ptr %i.ah, align 8            ; 5 uses
  %i.em = load ptr, ptr %i.ai, align 8
  %.not.i84 = icmp eq ptr %i.el, %i.em
  br i1 %.not.i84, label %bb.au, label %_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit.thread

_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit.thread: ; preds = %._crit_edge
  store i64 %i.co, ptr %i.el, align 8
  %i.en = load ptr, ptr %i.ah, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store ptr %i.eo, ptr %i.ah, align 8
  br label %_ZNSt10unique_ptrI10aiMaterialSt14default_deleteIS0_EED2Ev.exit

bb.au:                                            ; preds = %._crit_edge
  %i.ep = load ptr, ptr %i.ag, align 8            ; 10 uses
  %i.eq = ptrtoint ptr %i.el to i64               ; 3 uses
  %i.er = ptrtoint ptr %i.ep to i64               ; 4 uses
  %i.es = sub i64 %i.eq, %i.er                    ; 3 uses
  %i.et = icmp eq i64 %i.es, 9223372036854775800
  br i1 %i.et, label %bb.av, label %_ZNKSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.av:                                            ; preds = %bb.au
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #26
          to label %.noexc106 unwind label %.loopexit.split-lp

.noexc106:                                        ; preds = %bb.av
  unreachable

_ZNKSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.au
  %i.eu = ashr exact i64 %i.es, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.eu, i64 1)
  %i.ev = add nsw i64 %.sroa.speculated.i.i, %i.eu ; 2 uses
  %i.ew = icmp ult i64 %i.ev, %i.eu
  %i.ex = call i64 @llvm.umin.i64(i64 %i.ev, i64 1152921504606846975)
  %i.ey = select i1 %i.ew, i64 1152921504606846975, i64 %i.ex ; 3 uses
  %.not.i.i = icmp ne i64 %i.ey, 0
  call void @llvm.assume(i1 %.not.i.i)
  %i.ez = shl nuw nsw i64 %i.ey, 3
  %i.fa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ez) #27
          to label %.noexc107 unwind label %.loopexit ; 10 uses

.noexc107:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.es
  store i64 %i.co, ptr %i.fb, align 8
  store ptr null, ptr %17, align 8
  %.not10.i.i.i.i = icmp eq ptr %i.ep, %i.el
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc107
  %23 = add i64 %i.eq, -8
  %24 = sub i64 %23, %i.er                        ; 2 uses
  %i.fc = lshr i64 %24, 3
  %i.fd = add nuw nsw i64 %i.fc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %24, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader210, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.fa, i64 8
  %i.fe = add i64 %i.eq, -8
  %i.ff = sub i64 %i.fe, %i.er
  %i.fg = and i64 %i.ff, -8                       ; 2 uses
  %scevgep204 = getelementptr i8, ptr %scevgep, i64 %i.fg
  %scevgep205 = getelementptr i8, ptr %i.ep, i64 8
  %scevgep206 = getelementptr i8, ptr %scevgep205, i64 %i.fg
  %bound0 = icmp ult ptr %i.fa, %scevgep206
  %bound1 = icmp ult ptr %i.ep, %scevgep204
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader210, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fd, 4611686018427387900     ; 3 uses
  %i.fh = shl i64 %n.vec, 3                       ; 2 uses
  %i.fi = getelementptr i8, ptr %i.fa, i64 %i.fh  ; 2 uses
  %i.fj = getelementptr i8, ptr %i.ep, i64 %i.fh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fk = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fa, i64 %i.fk ; 2 uses
  %next.gep207 = getelementptr i8, ptr %i.ep, i64 %i.fk ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !55)
  call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %i.fl = getelementptr i8, ptr %next.gep207, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep207, align 8, !alias.scope !60, !noalias !55
  %wide.load208 = load <2 x i64>, ptr %i.fl, align 8, !alias.scope !60, !noalias !55
  %i.fm = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !63, !noalias !60
  store <2 x i64> %wide.load208, ptr %i.fm, align 8, !alias.scope !63, !noalias !60
  %i.fn = getelementptr i8, ptr %next.gep207, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep207, align 8, !alias.scope !60, !noalias !55
  store <2 x ptr> splat (ptr null), ptr %i.fn, align 8, !alias.scope !60, !noalias !55
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fo = icmp eq i64 %index.next, %n.vec
  br i1 %i.fo, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fd, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i.preheader210

.lr.ph.i.i.i.i.preheader210:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.fa, %vector.memcheck ], [ %i.fa, %.lr.ph.i.i.i.i.preheader ], [ %i.fi, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ep, %vector.memcheck ], [ %i.ep, %.lr.ph.i.i.i.i.preheader ], [ %i.fj, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader210, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.fr, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader210 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.fq, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader210 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !55)
  call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %i.fp = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !58, !noalias !55
  store i64 %i.fp, ptr %.012.i.i.i.i, align 8, !alias.scope !55, !noalias !58
  store ptr null, ptr %.0911.i.i.i.i, align 8, !alias.scope !58, !noalias !55
  %i.fq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fq, %i.el
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !66

_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc107
  %.0.lcssa.i.i.i.i = phi ptr [ %i.fa, %.noexc107 ], [ %i.fi, %middle.block ], [ %i.fr, %.lr.ph.i.i.i.i ]
  %i.fs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.ep, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i
  %i.ft = load ptr, ptr %i.ai, align 8
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = sub i64 %i.fu, %i.er
  call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef %i.fv) #25
  br label %_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit

.lr.ph:                                           ; preds = %.lr.ph.peel.next, %.thread
  %i.fw = phi i64 [ %i.fx, %.thread ], [ %.pre, %.lr.ph.peel.next ] ; 2 uses
  %.021119 = phi i32 [ %i.gx, %.thread ], [ 1, %.lr.ph.peel.next ]
  %i.fx = add i64 %i.fw, 4                        ; 3 uses
  %i.fy = icmp ugt i64 %i.fx, %i.ek
  br i1 %i.fy, label %.loopexit135, label %bb.az

.loopexit135:                                     ; preds = %.lr.ph.preheader, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %.noexc90 unwind label %bb.be

.noexc90:                                         ; preds = %.loopexit135
  invoke void @_ZN6Assimp11B3DImporter4FailERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %1) #26
          to label %bb.ax unwind label %bb.ay

bb.ax:                                            ; preds = %.noexc90
  unreachable

bb.ay:                                            ; preds = %.noexc90
  %i.fz = landingpad { ptr, i32 }
          cleanup
  %i.ga = load ptr, ptr %1, align 8               ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.gc = icmp eq ptr %i.ga, %i.gb
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i87: ; preds = %bb.ay
  %i.gd = load i64, ptr %i.gb, align 8
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.ge) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i88: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %.body91

bb.az:                                            ; preds = %.lr.ph
  %i.gf = getelementptr inbounds nuw i8, ptr %.pre144, i64 %i.fw
  %.0.copyload.i86 = load i32, ptr %i.gf, align 1 ; 3 uses
  store i64 %i.fx, ptr %i.d, align 8
  %i.gg = icmp slt i32 %.0.copyload.i86, -1
  br i1 %i.gg, label %.loopexit136, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gh = icmp sgt i32 %.0.copyload.i86, -1
  br i1 %i.gh, label %bb.bb, label %.thread

bb.bb:                                            ; preds = %bb.ba
  %i.gi = load ptr, ptr %i.ae, align 8
  %i.gj = load ptr, ptr %i.ad, align 8
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = sub i64 %i.gk, %i.gl
  %i.gn = lshr exact i64 %i.gm, 5
  %i.go = trunc i64 %i.gn to i32
  %.not36 = icmp slt i32 %.0.copyload.i86, %i.go
  br i1 %.not36, label %.thread, label %.loopexit136

.loopexit136:                                     ; preds = %bb.ar, %bb.ap, %bb.bb, %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %bb.bc unwind label %bb.bf

bb.bc:                                            ; preds = %.loopexit136
  invoke void @_ZN6Assimp11B3DImporter4FailERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %20) #26
          to label %bb.bd unwind label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  unreachable

bb.be:                                            ; preds = %.loopexit135
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %.body91

bb.bf:                                            ; preds = %.loopexit136
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

bb.bg:                                            ; preds = %bb.bc
  %i.gr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gs = load ptr, ptr %20, align 8              ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.gu = icmp eq ptr %i.gs, %i.gt
  br i1 %i.gu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %bb.bg
  %i.gv = load i64, ptr %i.gt, align 8
  %i.gw = add i64 %i.gv, 1
  call void @_ZdlPvm(ptr noundef %i.gs, i64 noundef %i.gw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94, %bb.bf
  %.pn = phi { ptr, i32 } [ %i.gq, %bb.bf ], [ %i.gr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ], [ %i.gr, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  br label %.body91

bb.bh:                                            ; preds = %bb.as
  %lpad.loopexit.split-lp140 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  br label %.body91

.thread:                                          ; preds = %bb.bb, %bb.ba
  %i.gx = add nuw nsw i32 %.021119, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.gx, %.0.copyload.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !67

_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, %bb.aw
  store ptr %i.fa, ptr %i.ag, align 8
  store ptr %i.fs, ptr %i.ah, align 8
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.ey
  store ptr %i.gy, ptr %i.ai, align 8
end_hunk_1
begin_hunk_2_@_ZN6Assimp11B3DImporter8ReadVRTSEv:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48: ; preds = %bb.j
  %i.ak = load i64, ptr %i.ai, align 8
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i49: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %common.resume

_ZN6Assimp11B3DImporter7ReadIntEv.exit51:         ; preds = %_ZN6Assimp11B3DImporter7ReadIntEv.exit46
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.u
  %.0.copyload.i47 = load i32, ptr %i.am, align 1 ; 3 uses
  store i64 %i.ae, ptr %i.b, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store i32 %.0.copyload.i47, ptr %i.an, align 8
  %or.cond = icmp ugt i32 %.0.copyload.i42, 4
  %i.ao = icmp ugt i32 %.0.copyload.i47, 4
  %or.cond41 = or i1 %or.cond, %i.ao
  br i1 %or.cond41, label %bb.k, label %bb.p

bb.k:                                             ; preds = %_ZN6Assimp11B3DImporter7ReadIntEv.exit51
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN6Assimp11B3DImporter4FailERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %8) #26
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.o:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %8, align 8               ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.au = load i64, ptr %i.as, align 8
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.n ], [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.aq, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %common.resume

bb.p:                                             ; preds = %_ZN6Assimp11B3DImporter7ReadIntEv.exit51
  %i.aw = and i32 %.0.copyload.i, 1
  %.not = icmp eq i32 %i.aw, 0
  %i.ax = select i1 %.not, i32 12, i32 24
  %i.ay = shl i32 %.0.copyload.i, 3
  %i.az = and i32 %i.ay, 16
  %i.ba = add nuw nsw i32 %i.ax, %i.az
  %i.bb = shl nuw nsw i32 %.0.copyload.i42, 2
  %i.bc = mul nuw nsw i32 %i.bb, %.0.copyload.i47
  %i.bd = add nuw nsw i32 %i.ba, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -8
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = sub i64 %i.bh, %i.ae                    ; 2 uses
  %i.bj = zext nneg i32 %i.bd to i64              ; 2 uses
  %i.bk = udiv i64 %i.bi, %i.bj                   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  %i.bo = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 56                ; 5 uses
  %i.bt = trunc i64 %i.bs to i32
  %sext = shl i64 %i.bs, 32
  %i.bu = ashr exact i64 %sext, 32
  %i.bv = add nsw i64 %i.bu, %i.bk                ; 4 uses
  %i.bw = icmp ugt i64 %i.bv, %i.bs
  br i1 %i.bw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bx = sub nuw nsw i64 %i.bv, %i.bs
  tail call void @_ZNSt6vectorIN6Assimp11B3DImporter6VertexESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 noundef %i.bx)
  br label %_ZNSt6vectorIN6Assimp11B3DImporter6VertexESaIS2_EE6resizeEm.exit

bb.r:                                             ; preds = %bb.p
  %i.by = icmp ult i64 %i.bv, %i.bs
  br i1 %i.by, label %bb.s, label %_ZNSt6vectorIN6Assimp11B3DImporter6VertexESaIS2_EE6resizeEm.exit

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw [56 x i8], ptr %i.bo, i64 %i.bv ; 2 uses
  %.not.i.i = icmp eq ptr %i.bn, %i.bz
  br i1 %.not.i.i, label %_ZNSt6vectorIN6Assimp11B3DImporter6VertexESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPN6Assimp11B3DImporter6VertexES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6Assimp11B3DImporter6VertexES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.s
  store ptr %i.bz, ptr %i.bm, align 8
  br label %_ZNSt6vectorIN6Assimp11B3DImporter6VertexESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN6Assimp11B3DImporter6VertexESaIS2_EE6resizeEm.exit: ; preds = %bb.q, %bb.r, %bb.s, %_ZSt8_DestroyIPN6Assimp11B3DImporter6VertexES2_EvT_S4_RSaIT0_E.exit.i.i
  %.not66 = icmp ult i64 %i.bi, %i.bj
  br i1 %.not66, label %._crit_edge65, label %.lr.ph64

.lr.ph64:                                         ; preds = %_ZNSt6vectorIN6Assimp11B3DImporter6VertexESaIS2_EE6resizeEm.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.t

._crit_edge65:                                    ; preds = %._crit_edge62, %_ZNSt6vectorIN6Assimp11B3DImporter6VertexESaIS2_EE6resizeEm.exit
  ret void

bb.t:                                             ; preds = %.lr.ph64, %._crit_edge62
  %.03263 = phi i32 [ 0, %.lr.ph64 ], [ %i.cs, %._crit_edge62 ] ; 2 uses
  %i.cc = add i32 %.03263, %i.bt
  %i.cd = zext i32 %i.cc to i64
  %i.ce = load ptr, ptr %i.bl, align 8
  %i.cf = getelementptr inbounds nuw [56 x i8], ptr %i.ce, i64 %i.cd ; 8 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cg, i8 0, i64 20, i1 false)
  %i.ch = tail call { <2 x float>, float } @_ZN6Assimp11B3DImporter8ReadVec3Ev(ptr noundef nonnull align 8 dereferenceable(312) %0) ; 2 uses
  %.fca.0.extract8 = extractvalue { <2 x float>, float } %i.ch, 0
  %.fca.1.extract9 = extractvalue { <2 x float>, float } %i.ch, 1
  store <2 x float> %.fca.0.extract8, ptr %i.cf, align 4
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store float %.fca.1.extract9, ptr %.sroa.413.0..sroa_idx, align 4
  %i.ci = load i32, ptr %i.t, align 8             ; 2 uses
  %i.cj = and i32 %i.ci, 1
  %.not36 = icmp eq i32 %i.cj, 0
  br i1 %.not36, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ck = tail call { <2 x float>, float } @_ZN6Assimp11B3DImporter8ReadVec3Ev(ptr noundef nonnull align 8 dereferenceable(312) %0) ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.ck, 0
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.ck, 1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  store <2 x float> %.fca.0.extract, ptr %i.cl, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 20
  store float %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 4
  %.pre = load i32, ptr %i.t, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cm = phi i32 [ %.pre, %bb.u ], [ %i.ci, %bb.t ]
  %i.cn = and i32 %i.cm, 2
  %.not37 = icmp eq i32 %i.cn, 0
  br i1 %.not37, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.co = tail call { <2 x float>, <2 x float> } @_ZN6Assimp11B3DImporter8ReadQuatEv(ptr noundef nonnull align 8 dereferenceable(312) %0) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cp = load i32, ptr %i.ad, align 4            ; 2 uses
  %i.cq = icmp sgt i32 %i.cp, 0
  br i1 %i.cq, label %.lr.ph61, label %._crit_edge62

.lr.ph61:                                         ; preds = %bb.x
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %.sroa.4.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.cf, i64 28
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  br label %bb.y

._crit_edge62:                                    ; preds = %bb.ac, %bb.x
  %i.cs = add i32 %.03263, 1                      ; 2 uses
  %i.ct = zext i32 %i.cs to i64
  %i.cu = icmp samesign ugt i64 %i.bk, %i.ct
  br i1 %i.cu, label %bb.t, label %._crit_edge65, !llvm.loop !70

bb.y:                                             ; preds = %.lr.ph61, %bb.ac
  %i.cv = phi i32 [ %i.cp, %.lr.ph61 ], [ %i.fv, %bb.ac ]
  %.02959 = phi i32 [ 0, %.lr.ph61 ], [ %i.fw, %bb.ac ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.cw = load i32, ptr %i.an, align 8            ; 2 uses
  %i.cx = icmp sgt i32 %i.cw, 0
  br i1 %i.cx, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.y
  %i.cy = load ptr, ptr %i.f, align 8
  %i.cz = load ptr, ptr %i.e, align 8             ; 5 uses
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db                    ; 4 uses
  %.promoted = load i64, ptr %i.b, align 8        ; 12 uses
  %wide.trip.count = zext nneg i32 %i.cw to i64   ; 4 uses
  %i.dd = zext i64 %i.dc to i128
  %i.de = add nuw nsw i128 %i.dd, 1
  %i.df = add i64 %.promoted, 4
  %i.dg = zext i64 %i.df to i128                  ; 2 uses
  %i.dh = tail call i128 @llvm.umax.i128(i128 %i.de, i128 %i.dg)
  %i.di = add nuw nsw i128 %i.dh, 3
  %10 = sub nsw i128 %i.di, %i.dg
  %i.dj = lshr i128 %10, 2
  %i.dk = add nsw i64 %wide.trip.count, -1
  %i.dl = zext i64 %i.dk to i128
  %i.dm = tail call i128 @llvm.umin.i128(i128 %i.dj, i128 %i.dl)
  %i.dn = trunc nuw i128 %i.dm to i64
  %i.do = add i64 %i.dn, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.do, 61
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

scalar.ph.preheader.loopexit:                     ; preds = %vector.body
  store i64 %i.ez, ptr %i.b, align 8, !alias.scope !71, !noalias !74
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.loopexit, %vector.memcheck, %vector.scevcheck, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %n.vec, %scalar.ph.preheader.loopexit ]
  %.ph = phi i64 [ %.promoted, %vector.memcheck ], [ %.promoted, %vector.scevcheck ], [ %.promoted, %.lr.ph ], [ %i.es, %scalar.ph.preheader.loopexit ]
  br label %scalar.ph

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.dp = zext i64 %i.dc to i128
  %i.dq = add nuw nsw i128 %i.dp, 1
  %i.dr = add i64 %.promoted, 4
  %i.ds = zext i64 %i.dr to i128                  ; 2 uses
  %umax = tail call i128 @llvm.umax.i128(i128 %i.dq, i128 %i.ds)
  %i.dt = add nuw nsw i128 %umax, 3
  %i.du = sub nsw i128 %i.dt, %i.ds
  %i.dv = lshr i128 %i.du, 2
  %i.dw = add nsw i64 %wide.trip.count, -1
  %i.dx = zext i64 %i.dw to i128
  %umin = tail call i128 @llvm.umin.i128(i128 %i.dv, i128 %i.dx)
  %i.dy = trunc nuw i128 %umin to i64             ; 2 uses
  %mul.result = shl i64 %i.dy, 2
  %mul.overflow = icmp ugt i64 %i.dy, 4611686018427387903
  %i.dz = sub i64 -5, %.promoted
  %i.ea = icmp ult i64 %i.dz, %mul.result
  %i.eb = or i1 %i.ea, %mul.overflow
  br i1 %i.eb, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep = getelementptr i8, ptr %i.cz, i64 %.promoted
  %scevgep92 = getelementptr i8, ptr %i.cz, i64 4
  %i.ec = zext i64 %i.dc to i128
  %i.ed = add nuw nsw i128 %i.ec, 1
  %i.ee = add i64 %.promoted, 4
  %i.ef = zext i64 %i.ee to i128                  ; 2 uses
  %umax93 = tail call i128 @llvm.umax.i128(i128 %i.ed, i128 %i.ef)
  %i.eg = add nuw nsw i128 %umax93, 3
  %i.eh = sub nsw i128 %i.eg, %i.ef
  %i.ei = lshr i128 %i.eh, 2
  %i.ej = add nsw i64 %wide.trip.count, -1
  %i.ek = zext i64 %i.ej to i128
  %umin94 = tail call i128 @llvm.umin.i128(i128 %i.ei, i128 %i.ek)
  %i.el = trunc nuw i128 %umin94 to i64
  %i.em = shl i64 %i.el, 2
  %i.en = getelementptr i8, ptr %scevgep92, i64 %.promoted
  %scevgep95 = getelementptr i8, ptr %i.en, i64 %i.em
  %bound0 = icmp ult ptr %i.b, %scevgep95
  %bound1 = icmp ult ptr %scevgep, %i.e
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.eo = and i64 %i.do, 3                        ; 2 uses
  %i.ep = icmp eq i64 %i.eo, 0
  %i.eq = select i1 %i.ep, i64 4, i64 %i.eo
  %n.vec = sub i64 %i.do, %i.eq                   ; 3 uses
  %i.er = shl i64 %n.vec, 2
  %i.es = add i64 %.promoted, %i.er
  %i.et = add i64 %.promoted, 4
  %i.eu = getelementptr i8, ptr %i.cz, i64 %.promoted
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ev = phi i64 [ %i.et, %vector.ph ], [ %i.fc, %vector.body ] ; 2 uses
  %i.ew = shl i64 %index, 2
  %i.ex = getelementptr i8, ptr %i.eu, i64 %i.ew  ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %wide.load = load <2 x float>, ptr %i.ex, align 1, !alias.scope !74
  %wide.load96 = load <2 x float>, ptr %i.ey, align 1, !alias.scope !74
  %i.ez = add i64 %i.ev, 12
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  store <2 x float> %wide.load, ptr %i.fa, align 16
  store <2 x float> %wide.load96, ptr %i.fb, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fc = add i64 %i.ev, 16
  %i.fd = icmp eq i64 %index.next, %n.vec
  br i1 %i.fd, label %scalar.ph.preheader.loopexit, label %vector.body, !llvm.loop !76

._crit_edge.loopexit:                             ; preds = %_ZN6Assimp11B3DImporter9ReadFloatEv.exit
  %.pre68 = load float, ptr %i.ca, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.y
  %i.fe = phi float [ %.pre68, %._crit_edge.loopexit ], [ 0.000000e+00, %bb.y ]
  %.not38 = icmp eq i32 %.02959, 0
  br i1 %.not38, label %bb.ab, label %bb.ac

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN6Assimp11B3DImporter9ReadFloatEv.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN6Assimp11B3DImporter9ReadFloatEv.exit ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ff = phi i64 [ %i.fg, %_ZN6Assimp11B3DImporter9ReadFloatEv.exit ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %i.fg = add i64 %i.ff, 4                        ; 3 uses
  %i.fh = icmp ugt i64 %i.fg, %i.dc
  br i1 %i.fh, label %._crit_edge.i.i, label %_ZN6Assimp11B3DImporter9ReadFloatEv.exit

._crit_edge.i.i:                                  ; preds = %scalar.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.fi, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.fi, ptr noundef nonnull align 1 dereferenceable(3) @.str.6, i64 3, i1 false)
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 3, ptr %i.fj, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 0, ptr %i.fk, align 1
  invoke void @_ZN6Assimp11B3DImporter4FailERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %1) #26
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i.i
  unreachable

bb.aa:                                            ; preds = %._crit_edge.i.i
  %i.fl = landingpad { ptr, i32 }
          cleanup
  %i.fm = load ptr, ptr %1, align 8               ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.fi
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53: ; preds = %bb.aa
  %i.fo = load i64, ptr %i.fi, align 8
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fp) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i54: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %common.resume

_ZN6Assimp11B3DImporter9ReadFloatEv.exit:         ; preds = %scalar.ph
  %i.fq = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.ff
  %.0.copyload.i52 = load float, ptr %i.fq, align 1
  store i64 %i.fg, ptr %i.b, align 8
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store float %.0.copyload.i52, ptr %i.fr, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %scalar.ph, !llvm.loop !77

bb.ab:                                            ; preds = %._crit_edge
  %i.fs = fsub float 1.000000e+00, %i.fe
  %i.ft = load float, ptr %i.a, align 16
  %i.fu = load float, ptr %i.cb, align 8
  store float %i.ft, ptr %i.cr, align 4
  store float %i.fs, ptr %.sroa.4.0..sroa_idx56, align 4
  store float %i.fu, ptr %.sroa.5.0..sroa_idx, align 4
  %.pre69 = load i32, ptr %i.ad, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge
  %i.fv = phi i32 [ %.pre69, %bb.ab ], [ %i.cv, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.fw = add nuw nsw i32 %.02959, 1              ; 2 uses
  %i.fx = icmp slt i32 %i.fw, %i.fv
  br i1 %i.fx, label %bb.y, label %._crit_edge62, !llvm.loop !78
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11B3DImporter8ReadTRISEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(312) %0, i32 noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %12 = alloca %"class.std::unique_ptr.54", align 8 ; 5 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = add i64 %i.b, 4                          ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load ptr, ptr %i.d, align 8              ; 5 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 4 uses
  %i.k = icmp ugt i64 %i.c, %i.j
  br i1 %i.k, label %bb.b, label %_ZN6Assimp11B3DImporter7ReadIntEv.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
end_hunk_2
begin_hunk_3_@_ZN6Assimp11B3DImporter8ReadTRISEi:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6Assimp11B3DImporter4FailERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %10) #26
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = load ptr, ptr %10, align 8              ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.ai = load i64, ptr %i.ag, align 8
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.j ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ae, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %common.resume

bb.l:                                             ; preds = %_ZN6Assimp11B3DImporter7ReadIntEv.exit, %bb.f
  %.0 = phi i32 [ %.0.copyload.i, %bb.f ], [ 0, %_ZN6Assimp11B3DImporter7ReadIntEv.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.ak = tail call noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #27 ; 12 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store i32 0, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 224
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 1272
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 1312
  store ptr null, ptr %i.aq, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.an, i8 0, i64 204, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.ao, i8 0, i64 1044, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ap, i8 0, i64 36, i1 false)
  store ptr %i.ak, ptr %12, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 232
  store i32 %.0, ptr %i.ar, align 8
  store i32 0, ptr %i.am, align 8
  store i32 4, ptr %i.ak, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -8
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = sub i64 %i.av, %i.c                     ; 3 uses
  %i.ax = udiv i64 %i.aw, 12                      ; 6 uses
  %i.ay = icmp ugt i64 %i.aw, -4611686018427387905
  %i.az = shl i64 %i.ax, 4
  %i.ba = or disjoint i64 %i.az, 8
  %i.bb = select i1 %i.ay, i64 -1, i64 %i.ba
  %i.bc = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.bd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bb) #27
          to label %bb.m unwind label %bb.r       ; 2 uses

bb.m:                                             ; preds = %bb.l
  store i64 %i.ax, ptr %i.bd, align 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 6 uses
  %i.bf = icmp ult i64 %i.aw, 12
  br i1 %i.bf, label %.loopexit88.thread, label %bb.n

.loopexit88.thread:                               ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ak, i64 208
  store ptr %i.be, ptr %i.bg, align 8
  br label %._crit_edge

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %i.ax
  %i.bi = add nuw nsw i64 %i.ax, 1152921504606846975
  %i.bj = and i64 %i.bi, 1152921504606846975
  %xtraiter = and i64 %i.ax, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.n, %.prol.preheader
  %i.bk = phi ptr [ %i.bm, %.prol.preheader ], [ %i.be, %bb.n ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.n ]
  store i32 0, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr null, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !79

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.n
  %.unr = phi ptr [ %i.be, %bb.n ], [ %i.bm, %.prol.preheader ]
  %i.bn = icmp samesign ult i64 %i.bj, 7
  br i1 %i.bn, label %.lr.ph, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.bo = phi ptr [ %i.ce, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr null, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i32 0, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store ptr null, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  store i32 0, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  store ptr null, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  store i32 0, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  store ptr null, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  store i32 0, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  store ptr null, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 80
  store i32 0, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 88
  store ptr null, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bo, i64 96
  store i32 0, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bo, i64 104
  store ptr null, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bo, i64 112
  store i32 0, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bo, i64 120
  store ptr null, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bo, i64 128 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.bh
  br i1 %i.cf, label %.lr.ph, label %.new

.lr.ph:                                           ; preds = %.new, %.prol.loopexit
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ak, i64 208
  store ptr %i.be, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 200
  br label %bb.s

._crit_edge:                                      ; preds = %bb.ap, %.loopexit88.thread
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.cl = load ptr, ptr %i.ck, align 8            ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8
  %.not.i = icmp eq ptr %i.cl, %i.cn
  br i1 %.not.i, label %bb.o, label %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit.thread

_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit.thread: ; preds = %._crit_edge
  store i64 %i.bc, ptr %i.cl, align 8
  %i.co = load ptr, ptr %i.ck, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %i.cp, ptr %i.ck, align 8
  br label %_ZNSt10unique_ptrI6aiMeshSt14default_deleteIS0_EED2Ev.exit

bb.o:                                             ; preds = %._crit_edge
  %i.cq = load ptr, ptr %i.cj, align 8            ; 10 uses
  %i.cr = ptrtoint ptr %i.cl to i64               ; 3 uses
  %i.cs = ptrtoint ptr %i.cq to i64               ; 4 uses
  %i.ct = sub i64 %i.cr, %i.cs                    ; 3 uses
  %i.cu = icmp eq i64 %i.ct, 9223372036854775800
  br i1 %i.cu, label %bb.p, label %_ZNKSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #26
          to label %.noexc81 unwind label %bb.r

.noexc81:                                         ; preds = %bb.p
  unreachable

_ZNKSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.o
  %i.cv = ashr exact i64 %i.ct, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.cv, i64 1)
  %i.cw = add nsw i64 %.sroa.speculated.i.i, %i.cv ; 2 uses
  %i.cx = icmp ult i64 %i.cw, %i.cv
  %i.cy = tail call i64 @llvm.umin.i64(i64 %i.cw, i64 1152921504606846975)
  %i.cz = select i1 %i.cx, i64 1152921504606846975, i64 %i.cy ; 3 uses
  %.not.i.i = icmp ne i64 %i.cz, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.da = shl nuw nsw i64 %i.cz, 3
  %i.db = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.da) #27
          to label %.noexc82 unwind label %bb.r   ; 10 uses

.noexc82:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.ct
  store i64 %i.bc, ptr %i.dc, align 8
  %.not10.i.i.i.i = icmp eq ptr %i.cq, %i.cl
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc82
  %15 = add i64 %i.cr, -8
  %16 = sub i64 %15, %i.cs                        ; 2 uses
  %i.dd = lshr i64 %16, 3
  %i.de = add nuw nsw i64 %i.dd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %16, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader120, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.df = add i64 %i.cr, -8
  %i.dg = sub i64 %i.df, %i.cs
  %i.dh = and i64 %i.dg, -8
  %i.di = add i64 %i.dh, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.db, i64 %i.di
  %scevgep116 = getelementptr i8, ptr %i.cq, i64 %i.di
  %bound0 = icmp ult ptr %i.db, %scevgep116
  %bound1 = icmp ult ptr %i.cq, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader120, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.de, 4611686018427387900     ; 3 uses
  %i.dj = shl i64 %n.vec, 3                       ; 2 uses
  %i.dk = getelementptr i8, ptr %i.db, i64 %i.dj  ; 2 uses
  %i.dl = getelementptr i8, ptr %i.cq, i64 %i.dj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dm = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.db, i64 %i.dm ; 2 uses
  %next.gep117 = getelementptr i8, ptr %i.cq, i64 %i.dm ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.dn = getelementptr i8, ptr %next.gep117, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep117, align 8, !alias.scope !86, !noalias !81
  %wide.load118 = load <2 x i64>, ptr %i.dn, align 8, !alias.scope !86, !noalias !81
  %i.do = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !89, !noalias !86
  store <2 x i64> %wide.load118, ptr %i.do, align 8, !alias.scope !89, !noalias !86
  %i.dp = getelementptr i8, ptr %next.gep117, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep117, align 8, !alias.scope !86, !noalias !81
  store <2 x ptr> splat (ptr null), ptr %i.dp, align 8, !alias.scope !86, !noalias !81
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !91

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.de, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i.preheader120

.lr.ph.i.i.i.i.preheader120:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.db, %vector.memcheck ], [ %i.db, %.lr.ph.i.i.i.i.preheader ], [ %i.dk, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.cq, %vector.memcheck ], [ %i.cq, %.lr.ph.i.i.i.i.preheader ], [ %i.dl, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader120, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.dt, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader120 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ds, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader120 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.dr = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !84, !noalias !81
  store i64 %i.dr, ptr %.012.i.i.i.i, align 8, !alias.scope !81, !noalias !84
  store ptr null, ptr %.0911.i.i.i.i, align 8, !alias.scope !84, !noalias !81
  %i.ds = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ds, %i.cl
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !92

_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc82
  %.0.lcssa.i.i.i.i = phi ptr [ %i.db, %.noexc82 ], [ %i.dk, %middle.block ], [ %i.dt, %.lr.ph.i.i.i.i ]
  %i.du = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.cq, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i
  %i.dv = load ptr, ptr %i.cm, align 8
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = sub i64 %i.dw, %i.cs
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.dx) #25
  br label %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit

bb.r:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i, %bb.p, %bb.l
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.s:                                             ; preds = %.lr.ph, %bb.ap
  %i.dz = phi i32 [ 0, %.lr.ph ], [ %i.ge, %bb.ap ]
  %i.ea = phi i64 [ %i.c, %.lr.ph ], [ %i.ev, %bb.ap ] ; 4 uses
  %.03990 = phi i32 [ 0, %.lr.ph ], [ %i.gg, %bb.ap ]
  %.04089 = phi ptr [ %i.be, %.lr.ph ], [ %i.gf, %bb.ap ] ; 3 uses
  %i.eb = add i64 %i.ea, 4                        ; 3 uses
  %i.ec = icmp ugt i64 %i.eb, %i.j
  br i1 %i.ec, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc59 unwind label %bb.ak

.noexc59:                                         ; preds = %bb.t
  invoke void @_ZN6Assimp11B3DImporter4FailERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %6) #26
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %.noexc59
  unreachable

bb.v:                                             ; preds = %.noexc59
  %i.ed = landingpad { ptr, i32 }
          cleanup
  %i.ee = load ptr, ptr %6, align 8               ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56: ; preds = %bb.v
  %i.eh = load i64, ptr %i.ef, align 8
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i57: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %.body

bb.w:                                             ; preds = %bb.s
  %i.ej = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ea
  %.0.copyload.i55 = load i32, ptr %i.ej, align 1
  store i64 %i.eb, ptr %i.a, align 8
  %i.ek = add nsw i32 %.0.copyload.i55, %1        ; 3 uses
  %i.el = add i64 %i.ea, 8                        ; 3 uses
  %i.em = icmp ugt i64 %i.el, %i.j
  br i1 %i.em, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc65 unwind label %bb.al

.noexc65:                                         ; preds = %bb.x
  invoke void @_ZN6Assimp11B3DImporter4FailERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %4) #26
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.noexc65
  unreachable

bb.z:                                             ; preds = %.noexc65
  %i.en = landingpad { ptr, i32 }
          cleanup
  %i.eo = load ptr, ptr %4, align 8               ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.eq = icmp eq ptr %i.eo, %i.ep
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62: ; preds = %bb.z
  %i.er = load i64, ptr %i.ep, align 8
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.es) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i63: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.body

bb.aa:                                            ; preds = %bb.w
  %i.et = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.eb
  %.0.copyload.i61 = load i32, ptr %i.et, align 1
  store i64 %i.el, ptr %i.a, align 8
  %i.eu = add nsw i32 %.0.copyload.i61, %1        ; 3 uses
  %i.ev = add i64 %i.ea, 12                       ; 3 uses
  %i.ew = icmp ugt i64 %i.ev, %i.j
  br i1 %i.ew, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc73 unwind label %.loopexit.split-lp

.noexc73:                                         ; preds = %bb.ab
  invoke void @_ZN6Assimp11B3DImporter4FailERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %2) #26
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %.noexc73
  unreachable

bb.ad:                                            ; preds = %.noexc73
  %i.ex = landingpad { ptr, i32 }
          cleanup
  %i.ey = load ptr, ptr %2, align 8               ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70: ; preds = %bb.ad
  %i.fb = load i64, ptr %i.ez, align 8
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fc) #25
end_hunk_3
begin_hunk_4_@_ZN6Assimp11B3DImporter8ReadANIMEv:bb.a
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::unique_ptr.72", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = add i64 %i.b, 4                          ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = icmp ugt i64 %i.c, %i.j
  br i1 %i.k, label %bb.b, label %_ZN6Assimp11B3DImporter7ReadIntEv.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN6Assimp11B3DImporter4FailERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %5) #26
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %5, align 8                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.p = load i64, ptr %i.n, align 8
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i6 ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i11 ], [ %i.cl, %bb.n ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %common.resume

_ZN6Assimp11B3DImporter7ReadIntEv.exit:           ; preds = %bb.a
  store i64 %i.c, ptr %i.a, align 8
  %i.r = add i64 %i.b, 8                          ; 3 uses
  %i.s = icmp ugt i64 %i.r, %i.j
  br i1 %i.s, label %bb.e, label %_ZN6Assimp11B3DImporter7ReadIntEv.exit8

bb.e:                                             ; preds = %_ZN6Assimp11B3DImporter7ReadIntEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN6Assimp11B3DImporter4FailERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %3) #26
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %3, align 8                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5: ; preds = %bb.g
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i6: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %common.resume

_ZN6Assimp11B3DImporter7ReadIntEv.exit8:          ; preds = %_ZN6Assimp11B3DImporter7ReadIntEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.c
  %.0.copyload.i4 = load i32, ptr %i.z, align 1
  store i64 %i.r, ptr %i.a, align 8
  %i.aa = add i64 %i.b, 12                        ; 2 uses
  %i.ab = icmp ugt i64 %i.aa, %i.j
  br i1 %i.ab, label %bb.h, label %_ZN6Assimp11B3DImporter9ReadFloatEv.exit

bb.h:                                             ; preds = %_ZN6Assimp11B3DImporter7ReadIntEv.exit8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %2)
  invoke void @_ZN6Assimp11B3DImporter4FailERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %1) #26
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %1, align 8               ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10: ; preds = %bb.j
  %i.ag = load i64, ptr %i.ae, align 8
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i11: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %common.resume

_ZN6Assimp11B3DImporter9ReadFloatEv.exit:         ; preds = %_ZN6Assimp11B3DImporter7ReadIntEv.exit8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.r
  %.0.copyload.i9 = load float, ptr %i.ai, align 1
  store i64 %i.aa, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.aj = tail call noalias noundef nonnull dereferenceable(1096) ptr @_Znwm(i64 noundef 1096) #27 ; 11 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %i.aj, i8 0, i64 1028, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1032
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 1040
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 1048
  store i32 0, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 1056
  store ptr null, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 1064
  store i32 0, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 1072
  store ptr null, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 1080
  store i32 0, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 1088
  store ptr null, ptr %i.ar, align 8
  store ptr %i.aj, ptr %7, align 8
  %i.as = sitofp i32 %.0.copyload.i4 to double
  store double %i.as, ptr %i.ak, align 8
  %i.at = fpext float %.0.copyload.i9 to double
  store double %i.at, ptr %i.al, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %i.aw = load ptr, ptr %i.av, align 8            ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8
  %.not.i = icmp eq ptr %i.aw, %i.ay
  %i.az = ptrtoint ptr %i.aj to i64               ; 2 uses
  br i1 %.not.i, label %bb.k, label %_ZNSt6vectorISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit.thread

_ZNSt6vectorISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit.thread: ; preds = %_ZN6Assimp11B3DImporter9ReadFloatEv.exit
  store i64 %i.az, ptr %i.aw, align 8
  %i.ba = load ptr, ptr %i.av, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.bb, ptr %i.av, align 8
  br label %_ZNSt10unique_ptrI11aiAnimationSt14default_deleteIS0_EED2Ev.exit

bb.k:                                             ; preds = %_ZN6Assimp11B3DImporter9ReadFloatEv.exit
  %i.bc = load ptr, ptr %i.au, align 8            ; 10 uses
  %i.bd = ptrtoint ptr %i.aw to i64               ; 3 uses
  %i.be = ptrtoint ptr %i.bc to i64               ; 4 uses
  %i.bf = sub i64 %i.bd, %i.be                    ; 3 uses
  %i.bg = icmp eq i64 %i.bf, 9223372036854775800
  br i1 %i.bg, label %bb.l, label %_ZNKSt6vectorISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #26
          to label %.noexc14 unwind label %bb.n

.noexc14:                                         ; preds = %bb.l
  unreachable

_ZNKSt6vectorISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.k
  %i.bh = ashr exact i64 %i.bf, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.bh, i64 1)
  %i.bi = add nsw i64 %.sroa.speculated.i.i, %i.bh ; 2 uses
  %i.bj = icmp ult i64 %i.bi, %i.bh
  %i.bk = tail call i64 @llvm.umin.i64(i64 %i.bi, i64 1152921504606846975)
  %i.bl = select i1 %i.bj, i64 1152921504606846975, i64 %i.bk ; 3 uses
  %.not.i.i = icmp ne i64 %i.bl, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.bm = shl nuw nsw i64 %i.bl, 3
  %i.bn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bm) #27
          to label %.noexc15 unwind label %bb.n   ; 10 uses

.noexc15:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bf
  store i64 %i.az, ptr %i.bo, align 8
  %.not10.i.i.i.i = icmp eq ptr %i.bc, %i.aw
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc15
  %8 = add i64 %i.bd, -8
  %9 = sub i64 %8, %i.be                          ; 2 uses
  %i.bp = lshr i64 %9, 3
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %9, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader33, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.br = add i64 %i.bd, -8
  %i.bs = sub i64 %i.br, %i.be
  %i.bt = and i64 %i.bs, -8
  %i.bu = add i64 %i.bt, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bn, i64 %i.bu
  %scevgep29 = getelementptr i8, ptr %i.bc, i64 %i.bu
  %bound0 = icmp ult ptr %i.bn, %scevgep29
  %bound1 = icmp ult ptr %i.bc, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader33, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bq, 4611686018427387900     ; 3 uses
  %i.bv = shl i64 %n.vec, 3                       ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bn, i64 %i.bv  ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bc, i64 %i.bv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.by = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bn, i64 %i.by ; 2 uses
  %next.gep30 = getelementptr i8, ptr %i.bc, i64 %i.by ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %i.bz = getelementptr i8, ptr %next.gep30, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep30, align 8, !alias.scope !117, !noalias !112
  %wide.load31 = load <2 x i64>, ptr %i.bz, align 8, !alias.scope !117, !noalias !112
  %i.ca = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !120, !noalias !117
  store <2 x i64> %wide.load31, ptr %i.ca, align 8, !alias.scope !120, !noalias !117
  %i.cb = getelementptr i8, ptr %next.gep30, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep30, align 8, !alias.scope !117, !noalias !112
  store <2 x ptr> splat (ptr null), ptr %i.cb, align 8, !alias.scope !117, !noalias !112
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !122

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i.preheader33

.lr.ph.i.i.i.i.preheader33:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bn, %vector.memcheck ], [ %i.bn, %.lr.ph.i.i.i.i.preheader ], [ %i.bw, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.bc, %vector.memcheck ], [ %i.bc, %.lr.ph.i.i.i.i.preheader ], [ %i.bx, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader33, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader33 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader33 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %i.cd = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !115, !noalias !112
  store i64 %i.cd, ptr %.012.i.i.i.i, align 8, !alias.scope !112, !noalias !115
  store ptr null, ptr %.0911.i.i.i.i, align 8, !alias.scope !115, !noalias !112
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ce, %i.aw
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !123

_ZNSt6vectorISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc15
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bn, %.noexc15 ], [ %i.bw, %middle.block ], [ %i.cf, %.lr.ph.i.i.i.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.bc, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i
  %i.ch = load ptr, ptr %i.ax, align 8
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = sub i64 %i.ci, %i.be
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.cj) #25
  br label %_ZNSt6vectorISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit

_ZNSt6vectorISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, %bb.m
  store ptr %i.bn, ptr %i.au, align 8
  store ptr %i.cg, ptr %i.av, align 8
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bl
  store ptr %i.ck, ptr %i.ax, align 8
  br label %_ZNSt10unique_ptrI11aiAnimationSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI11aiAnimationSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit, %_ZNSt6vectorISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret void

bb.n:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i, %bb.l
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrI11aiAnimationSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrI11aiAnimationSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteI11aiAnimationEclEPS0_.exit

_ZNKSt14default_deleteI11aiAnimationEclEPS0_.exit: ; preds = %bb.a
  tail call void @_ZN11aiAnimationD2Ev(ptr noundef nonnull align 8 dead_on_return(1096) dereferenceable(1096) %i.a) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 1096) #25
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteI11aiAnimationEclEPS0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN6Assimp11B3DImporter8ReadNODEEP6aiNode(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::unique_ptr.80", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZN6Assimp11B3DImporter10ReadStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(312) %0)
  %i.a = invoke { <2 x float>, float } @_ZN6Assimp11B3DImporter8ReadVec3Ev(ptr noundef nonnull align 8 dereferenceable(312) %0)
          to label %bb.b unwind label %bb.o       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %.fca.0.extract2 = extractvalue { <2 x float>, float } %i.a, 0 ; 3 uses
  %.fca.1.extract3 = extractvalue { <2 x float>, float } %i.a, 1 ; 2 uses
  %i.b = invoke { <2 x float>, float } @_ZN6Assimp11B3DImporter8ReadVec3Ev(ptr noundef nonnull align 8 dereferenceable(312) %0)
          to label %bb.c unwind label %bb.p       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.c = invoke { <2 x float>, <2 x float> } @_ZN6Assimp11B3DImporter8ReadQuatEv(ptr noundef nonnull align 8 dereferenceable(312) %0)
          to label %bb.d unwind label %bb.q       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.b, 1 ; 4 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.b, 0 ; 4 uses
  %i.d = extractvalue { <2 x float>, <2 x float> } %i.c, 0 ; 8 uses
  %i.e = extractvalue { <2 x float>, <2 x float> } %i.c, 1 ; 9 uses
  %.sroa.0220.0.vec.extract = extractelement <2 x float> %.fca.0.extract2, i64 0 ; 4 uses
  %i.f = shufflevector <2 x float> %i.e, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 1>
  %.sroa.6217.8.vec.extract = extractelement <2 x float> %i.e, i64 0 ; 2 uses
  %.sroa.0216.4.vec.extract = extractelement <2 x float> %i.d, i64 1 ; 2 uses
  %.sroa.0216.0.vec.extract = extractelement <2 x float> %i.d, i64 0
  %i.g = fneg float %.sroa.0216.0.vec.extract     ; 2 uses
  %i.h = shufflevector <2 x float> %i.d, <2 x float> %i.e, <4 x i32> <i32 poison, i32 0, i32 0, i32 3>
  %i.i = insertelement <4 x float> poison, float %i.g, i64 0
  %i.j = insertelement <4 x float> %i.h, float %i.g, i64 0
  %i.k = fmul <4 x float> %i.f, %i.j              ; 2 uses
  %i.l = shufflevector <2 x float> %i.d, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.m = shufflevector <2 x float> %i.e, <2 x float> %i.d, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.n = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.l, <4 x float> %i.m, <4 x float> %i.k) ; 3 uses
  %i.o = shufflevector <2 x float> %i.d, <2 x float> %i.e, <4 x i32> <i32 poison, i32 1, i32 2, i32 1>
  %i.p = insertelement <4 x float> %i.o, float 1.000000e+00, i64 0
  %i.q = shufflevector <2 x float> %i.d, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>
  %i.r = insertelement <4 x float> %i.q, float 1.000000e+00, i64 0
  %i.s = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 poison>
  %i.t = shufflevector <4 x float> %i.r, <4 x float> %i.s, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.u = fmul <4 x float> %i.p, %i.t
  %i.v = shufflevector <2 x float> %i.e, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.w = shufflevector <4 x float> %i.n, <4 x float> %i.v, <4 x i32> <i32 3, i32 4, i32 5, i32 4>
  %i.x = shufflevector <2 x float> %i.e, <2 x float> %i.d, <4 x i32> <i32 poison, i32 1, i32 3, i32 1>
  %i.y = insertelement <4 x float> %i.x, float -2.000000e+00, i64 0
  %i.z = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.w, <4 x float> %i.y, <4 x float> %i.u) ; 3 uses
  %i.aa = extractelement <4 x float> %i.z, i64 2
  %i.ab = fmul float %i.aa, 2.000000e+00          ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.e, %i.e
  %i.ac = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ad = fadd float %.sroa.0220.0.vec.extract, 0.000000e+00 ; 3 uses
  %.sroa.0220.4.vec.extract = extractelement <2 x float> %.fca.0.extract2, i64 1 ; 3 uses
  %i.ae = shufflevector <2 x float> %.fca.0.extract2, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> %i.n, <4 x i32> <i32 1, i32 5, i32 4, i32 5>
  %i.ag = fmul <4 x float> %i.af, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00> ; 3 uses
  %i.ah = extractelement <4 x float> %i.ag, i64 2
  %i.ai = fadd float %.sroa.0220.4.vec.extract, 0.000000e+00 ; 3 uses
  %i.aj = extractelement <4 x float> %i.k, i64 3
  %i.ak = call float @llvm.fmuladd.f32(float %.sroa.6217.8.vec.extract, float %.sroa.6217.8.vec.extract, float %i.aj)
  %i.al = call float @llvm.fmuladd.f32(float %i.ak, float -2.000000e+00, float 1.000000e+00) ; 3 uses
  %i.am = call float @llvm.fmuladd.f32(float %.sroa.0216.4.vec.extract, float %.sroa.0216.4.vec.extract, float %i.ac)
  %i.an = call float @llvm.fmuladd.f32(float %i.am, float -2.000000e+00, float 1.000000e+00) ; 4 uses
  %i.ao = extractelement <4 x float> %i.z, i64 0
  %i.ap = shufflevector <4 x float> %i.z, <4 x float> %i.n, <4 x i32> <i32 0, i32 1, i32 3, i32 6>
  %i.aq = fmul <4 x float> %i.ap, <float 1.000000e+00, float 2.000000e+00, float 1.000000e+00, float 2.000000e+00> ; 3 uses
  %i.ar = fmul <4 x float> %i.aq, <float 0.000000e+00, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00> ; 5 uses
  %i.as = call float @llvm.fmuladd.f32(float %i.ah, float 0.000000e+00, float %i.ao)
  %i.at = extractelement <4 x float> %i.ar, i64 2 ; 2 uses
  %i.au = call float @llvm.fmuladd.f32(float %i.at, float 0.000000e+00, float %i.as)
  %i.av = insertelement <4 x float> poison, float %i.au, i64 0
  %i.aw = shufflevector <4 x float> %i.av, <4 x float> %i.ar, <4 x i32> <i32 0, i32 poison, i32 4, i32 5>
  %i.ax = shufflevector <4 x float> %i.aw, <4 x float> %i.aq, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.ay = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ag, <4 x float> zeroinitializer, <4 x float> %i.ax) ; 6 uses
  %i.az = shufflevector <4 x float> %i.ag, <4 x float> %i.ay, <4 x i32> <i32 2, i32 1, i32 6, i32 poison>
  %i.ba = insertelement <4 x float> %i.az, float %i.al, i64 3
  %i.bb = fadd <4 x float> %i.ar, %i.ba           ; 4 uses
  %i.bc = extractelement <4 x float> %i.bb, i64 0
  %i.bd = call float @llvm.fmuladd.f32(float %i.at, float 0.000000e+00, float %i.bc)
  %i.be = call float @llvm.fmuladd.f32(float %.sroa.0220.0.vec.extract, float 0.000000e+00, float %i.bd)
  %i.bf = extractelement <4 x float> %i.bb, i64 3
  %i.bg = call float @llvm.fmuladd.f32(float %i.ab, float 0.000000e+00, float %i.bf)
end_hunk_4
begin_hunk_5_@_ZN6Assimp11B3DImporter8ReadNODEEP6aiNode:bb.a
  br label %_ZN8aiStringaSERKS_.exit

_ZN8aiStringaSERKS_.exit:                         ; preds = %bb.ac, %_ZNSt10unique_ptrI10aiNodeAnimSt14default_deleteIS0_EE5resetEPS0_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit46.thread
  %i.ju = phi ptr [ %i.jl, %bb.ac ], [ %i.jl, %_ZNSt10unique_ptrI10aiNodeAnimSt14default_deleteIS0_EE5resetEPS0_.exit ], [ %i.jk, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit46.thread ]
  invoke void @_ZN6Assimp11B3DImporter8ReadKEYSEP10aiNodeAnim(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull %i.ju)
          to label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit58 unwind label %bb.u

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit46.thread225: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread224
  %i.jv = load i32, ptr %i.gz, align 1
  %i.jw = icmp ne i32 %i.jv, 1162104654
  %i.jx = zext i1 %i.jw to i32
  %i.jy = icmp eq i32 %i.jx, 0
  br i1 %i.jy, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread, label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit58

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit46.thread225
  %i.jz = invoke noundef ptr @_ZN6Assimp11B3DImporter8ReadNODEEP6aiNode(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull %i.fl)
          to label %bb.ad unwind label %.loopexit232 ; 2 uses

bb.ad:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread
  %.not.i49 = icmp eq ptr %.sroa.10.0316, %.sroa.16.0317
  br i1 %.not.i49, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store ptr %i.jz, ptr %.sroa.10.0316, align 8
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.10.0316, i64 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit58

bb.af:                                            ; preds = %bb.ad
  %i.kb = ptrtoint ptr %.sroa.16.0317 to i64
  %i.kc = ptrtoint ptr %.sroa.0.0315 to i64
  %i.kd = sub i64 %i.kb, %i.kc                    ; 6 uses
  %i.ke = icmp eq i64 %i.kd, 9223372036854775800
  br i1 %i.ke, label %bb.ag, label %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i50

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #26
          to label %.noexc56 unwind label %.loopexit.split-lp233

.noexc56:                                         ; preds = %bb.ag
  unreachable

_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i50: ; preds = %bb.af
  %i.kf = ashr exact i64 %i.kd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i51 = call i64 @llvm.umax.i64(i64 %i.kf, i64 1)
  %i.kg = add nsw i64 %.sroa.speculated.i.i.i51, %i.kf ; 2 uses
  %i.kh = icmp ult i64 %i.kg, %i.kf
  %i.ki = call i64 @llvm.umin.i64(i64 %i.kg, i64 1152921504606846975)
  %i.kj = select i1 %i.kh, i64 1152921504606846975, i64 %i.ki ; 3 uses
  %.not.i.i.i52 = icmp ne i64 %i.kj, 0
  call void @llvm.assume(i1 %.not.i.i.i52)
  %i.kk = shl nuw nsw i64 %i.kj, 3
  %i.kl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kk) #27
          to label %.noexc57 unwind label %.loopexit232 ; 4 uses

.noexc57:                                         ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i50
  %i.km = getelementptr inbounds i8, ptr %i.kl, i64 %i.kd ; 2 uses
  store ptr %i.jz, ptr %i.km, align 8
  %i.kn = icmp sgt i64 %i.kd, 0
  br i1 %i.kn, label %bb.ah, label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i53

bb.ah:                                            ; preds = %.noexc57
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kl, ptr align 8 %.sroa.0.0315, i64 %i.kd, i1 false)
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i53

_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i53: ; preds = %bb.ah, %.noexc57
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %.not.i17.i.i54 = icmp eq ptr %.sroa.0.0315, null
  br i1 %.not.i17.i.i54, label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i55, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i53
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0315, i64 noundef %i.kd) #25
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i55

_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i55: ; preds = %bb.ai, %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i53
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %i.kj
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit58

.loopexit232:                                     ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread, %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i50
  %lpad.loopexit234 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit.split-lp233:                            ; preds = %bb.ag
  %lpad.loopexit.split-lp235 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit58: ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, %bb.n, %bb.m, %bb.ae, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i55, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit42.thread, %_ZN8aiStringaSERKS_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit46.thread225, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread
  %.sroa.096.2 = phi ptr [ %.sroa.096.0312, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit46.thread225 ], [ %.sroa.096.0312, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit42.thread ], [ %.sroa.096.0312, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread ], [ %.sroa.096.0312, %_ZN8aiStringaSERKS_.exit ], [ %.sroa.096.0312, %bb.ae ], [ %.sroa.096.0312, %bb.m ], [ %.sroa.096.0312, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i55 ], [ %.sroa.096.0312, %bb.n ], [ %.sroa.096.6, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 7 uses
  %.sroa.10101.2 = phi ptr [ %.sroa.10101.0313, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit46.thread225 ], [ %.sroa.10101.0313, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit42.thread ], [ %.sroa.10101.0313, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread ], [ %.sroa.10101.0313, %_ZN8aiStringaSERKS_.exit ], [ %.sroa.10101.0313, %bb.ae ], [ %.sroa.10101.0313, %bb.m ], [ %.sroa.10101.0313, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i55 ], [ %.sroa.10101.0313, %bb.n ], [ %.sroa.10101.3, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 3 uses
  %.sroa.16105.2 = phi ptr [ %.sroa.16105.0314, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit46.thread225 ], [ %.sroa.16105.0314, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit42.thread ], [ %.sroa.16105.0314, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread ], [ %.sroa.16105.0314, %_ZN8aiStringaSERKS_.exit ], [ %.sroa.16105.0314, %bb.ae ], [ %.sroa.16105.0314, %bb.m ], [ %.sroa.16105.0314, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i55 ], [ %.sroa.16105.0314, %bb.n ], [ %.sroa.16105.6, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 3 uses
  %.sroa.0.1 = phi ptr [ %.sroa.0.0315, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit46.thread225 ], [ %.sroa.0.0315, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit42.thread ], [ %.sroa.0.0315, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread ], [ %.sroa.0.0315, %_ZN8aiStringaSERKS_.exit ], [ %.sroa.0.0315, %bb.ae ], [ %.sroa.0.0315, %bb.m ], [ %i.kl, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i55 ], [ %.sroa.0.0315, %bb.n ], [ %.sroa.0.0315, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 7 uses
  %.sroa.10.1 = phi ptr [ %.sroa.10.0316, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit46.thread225 ], [ %.sroa.10.0316, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit42.thread ], [ %.sroa.10.0316, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread ], [ %.sroa.10.0316, %_ZN8aiStringaSERKS_.exit ], [ %i.ka, %bb.ae ], [ %.sroa.10.0316, %bb.m ], [ %i.ko, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i55 ], [ %.sroa.10.0316, %bb.n ], [ %.sroa.10.0316, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 3 uses
  %.sroa.16.1 = phi ptr [ %.sroa.16.0317, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit46.thread225 ], [ %.sroa.16.0317, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit42.thread ], [ %.sroa.16.0317, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread ], [ %.sroa.16.0317, %_ZN8aiStringaSERKS_.exit ], [ %.sroa.16.0317, %bb.ae ], [ %.sroa.16.0317, %bb.m ], [ %i.kp, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i55 ], [ %.sroa.16.0317, %bb.n ], [ %.sroa.16.0317, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 3 uses
  %i.kq = load ptr, ptr %i.gj, align 8
  %i.kr = getelementptr inbounds i8, ptr %i.kq, i64 -8 ; 3 uses
  %i.ks = load i64, ptr %i.kr, align 8            ; 2 uses
  store i64 %i.ks, ptr %i.gk, align 8
  store ptr %i.kr, ptr %i.gj, align 8
  %i.kt = load ptr, ptr %4, align 8               ; 2 uses
  %i.ku = icmp eq ptr %i.kt, %i.gx
  br i1 %i.ku, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit58
  %i.kv = load i64, ptr %i.gx, align 8
  %i.kw = add i64 %i.kv, 1
  call void @_ZdlPvm(ptr noundef %i.kt, i64 noundef %i.kw) #25
  %.pre = load ptr, ptr %i.gj, align 8
  %.pre361 = load i64, ptr %i.gk, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.kx = phi i64 [ %.pre361, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ks, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit58 ]
  %i.ky = phi ptr [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.kr, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit58 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.kz = getelementptr inbounds i8, ptr %i.ky, i64 -8
  %i.la = load i64, ptr %i.kz, align 8
  %.not = icmp eq i64 %i.la, %i.kx
  br i1 %.not, label %._crit_edge, label %bb.l, !llvm.loop !125

bb.aj:                                            ; preds = %.loopexit232, %.loopexit.split-lp233, %.loopexit, %.loopexit.split-lp, %bb.v, %bb.u
  %.sroa.096.3 = phi ptr [ %.sroa.096.1305, %.loopexit.split-lp ], [ %.sroa.096.0312, %bb.v ], [ %.sroa.096.0312, %bb.u ], [ %.sroa.096.1305, %.loopexit ], [ %.sroa.096.0312, %.loopexit232 ], [ %.sroa.096.0312, %.loopexit.split-lp233 ] ; 2 uses
  %.sroa.16105.3 = phi ptr [ %.sroa.16105.1307, %.loopexit.split-lp ], [ %.sroa.16105.0314, %bb.v ], [ %.sroa.16105.0314, %bb.u ], [ %.sroa.16105.1307, %.loopexit ], [ %.sroa.16105.0314, %.loopexit232 ], [ %.sroa.16105.0314, %.loopexit.split-lp233 ] ; 2 uses
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.ia, %bb.v ], [ %i.hz, %bb.u ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit234, %.loopexit232 ], [ %lpad.loopexit.split-lp235, %.loopexit.split-lp233 ] ; 2 uses
  %i.lb = load ptr, ptr %4, align 8               ; 2 uses
  %i.lc = icmp eq ptr %i.lb, %i.gx
  br i1 %i.lc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.aj
  %i.ld = load i64, ptr %i.gx, align 8
  %i.le = add i64 %i.ld, 1
  call void @_ZdlPvm(ptr noundef %i.lb, i64 noundef %i.le) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59, %bb.t
  %.sroa.096.4 = phi ptr [ %.sroa.096.0312, %bb.t ], [ %.sroa.096.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59 ], [ %.sroa.096.3, %bb.aj ]
  %.sroa.16105.4 = phi ptr [ %.sroa.16105.0314, %bb.t ], [ %.sroa.16105.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59 ], [ %.sroa.16105.3, %bb.aj ]
  %.pn.pn.pn = phi { ptr, i32 } [ %i.hy, %bb.t ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59 ], [ %.pn.pn, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.ay

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pre362 = load ptr, ptr %3, align 8            ; 2 uses
  %i.lf = ptrtoint ptr %.pre362 to i64            ; 2 uses
  %i.lg = icmp eq ptr %.pre362, null
  br i1 %i.lg, label %_ZNSt6vectorISt10unique_ptrI10aiNodeAnimSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 4 uses
  %i.lj = load ptr, ptr %i.li, align 8            ; 5 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.ll = load ptr, ptr %i.lk, align 8
  %.not.i62 = icmp eq ptr %i.lj, %i.ll
  br i1 %.not.i62, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i64 %i.lf, ptr %i.lj, align 8
  store ptr null, ptr %3, align 8
  %i.lm = load ptr, ptr %i.li, align 8
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  store ptr %i.ln, ptr %i.li, align 8
  br label %_ZNSt6vectorISt10unique_ptrI10aiNodeAnimSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit

bb.am:                                            ; preds = %bb.ak
  %i.lo = load ptr, ptr %i.lh, align 8            ; 10 uses
  %i.lp = ptrtoint ptr %i.lj to i64               ; 3 uses
  %i.lq = ptrtoint ptr %i.lo to i64               ; 4 uses
  %i.lr = sub i64 %i.lp, %i.lq                    ; 3 uses
  %i.ls = icmp eq i64 %i.lr, 9223372036854775800
  br i1 %i.ls, label %bb.an, label %_ZNKSt6vectorISt10unique_ptrI10aiNodeAnimSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.an:                                            ; preds = %bb.am
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #26
          to label %.noexc82 unwind label %bb.ap

.noexc82:                                         ; preds = %bb.an
  unreachable

_ZNKSt6vectorISt10unique_ptrI10aiNodeAnimSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.am
  %i.lt = ashr exact i64 %i.lr, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.lt, i64 1)
  %i.lu = add nsw i64 %.sroa.speculated.i.i, %i.lt ; 2 uses
  %i.lv = icmp ult i64 %i.lu, %i.lt
  %i.lw = call i64 @llvm.umin.i64(i64 %i.lu, i64 1152921504606846975)
  %i.lx = select i1 %i.lv, i64 1152921504606846975, i64 %i.lw ; 3 uses
  %.not.i.i81 = icmp ne i64 %i.lx, 0
  call void @llvm.assume(i1 %.not.i.i81)
  %i.ly = shl nuw nsw i64 %i.lx, 3
  %i.lz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ly) #27
          to label %.noexc83 unwind label %bb.ap  ; 10 uses

.noexc83:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrI10aiNodeAnimSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.lr
  store i64 %i.lf, ptr %i.ma, align 8
  store ptr null, ptr %3, align 8
  %.not10.i.i.i.i = icmp eq ptr %i.lo, %i.lj
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI10aiNodeAnimSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc83
  %5 = add i64 %i.lp, -8
  %6 = sub i64 %5, %i.lq                          ; 2 uses
  %i.mb = lshr i64 %6, 3
  %i.mc = add nuw nsw i64 %i.mb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader517, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.md = add i64 %i.lp, -8
  %i.me = sub i64 %i.md, %i.lq
  %i.mf = and i64 %i.me, -8
  %i.mg = add i64 %i.mf, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.lz, i64 %i.mg
  %scevgep510 = getelementptr i8, ptr %i.lo, i64 %i.mg
  %bound0 = icmp ult ptr %i.lz, %scevgep510
  %bound1 = icmp ult ptr %i.lo, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader517, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.mc, 4611686018427387900     ; 3 uses
  %i.mh = shl i64 %n.vec, 3                       ; 2 uses
  %i.mi = getelementptr i8, ptr %i.lz, i64 %i.mh  ; 2 uses
  %i.mj = getelementptr i8, ptr %i.lo, i64 %i.mh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.mk = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.lz, i64 %i.mk ; 2 uses
  %next.gep511 = getelementptr i8, ptr %i.lo, i64 %i.mk ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.ml = getelementptr i8, ptr %next.gep511, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep511, align 8, !alias.scope !131, !noalias !126
  %wide.load512 = load <2 x i64>, ptr %i.ml, align 8, !alias.scope !131, !noalias !126
  %i.mm = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !134, !noalias !131
  store <2 x i64> %wide.load512, ptr %i.mm, align 8, !alias.scope !134, !noalias !131
  %i.mn = getelementptr i8, ptr %next.gep511, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep511, align 8, !alias.scope !131, !noalias !126
  store <2 x ptr> splat (ptr null), ptr %i.mn, align 8, !alias.scope !131, !noalias !126
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.mo = icmp eq i64 %index.next, %n.vec
  br i1 %i.mo, label %middle.block, label %vector.body, !llvm.loop !136

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.mc, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrI10aiNodeAnimSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i.preheader517

.lr.ph.i.i.i.i.preheader517:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.lz, %vector.memcheck ], [ %i.lz, %.lr.ph.i.i.i.i.preheader ], [ %i.mi, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.lo, %vector.memcheck ], [ %i.lo, %.lr.ph.i.i.i.i.preheader ], [ %i.mj, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader517, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.mr, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader517 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.mq, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader517 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.mp = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !129, !noalias !126
  store i64 %i.mp, ptr %.012.i.i.i.i, align 8, !alias.scope !126, !noalias !129
  store ptr null, ptr %.0911.i.i.i.i, align 8, !alias.scope !129, !noalias !126
  %i.mq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.mq, %i.lj
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI10aiNodeAnimSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !137

_ZNSt6vectorISt10unique_ptrI10aiNodeAnimSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc83
  %.0.lcssa.i.i.i.i = phi ptr [ %i.lz, %.noexc83 ], [ %i.mi, %middle.block ], [ %i.mr, %.lr.ph.i.i.i.i ]
  %i.ms = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.lo, null
  br i1 %.not.i23.i, label %.noexc63, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorISt10unique_ptrI10aiNodeAnimSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i
  %i.mt = load ptr, ptr %i.lk, align 8
  %i.mu = ptrtoint ptr %i.mt to i64
  %i.mv = sub i64 %i.mu, %i.lq
  call void @_ZdlPvm(ptr noundef nonnull %i.lo, i64 noundef %i.mv) #25
  br label %.noexc63

.noexc63:                                         ; preds = %bb.ao, %_ZNSt6vectorISt10unique_ptrI10aiNodeAnimSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i
  store ptr %i.lz, ptr %i.lh, align 8
  store ptr %i.ms, ptr %i.li, align 8
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.lx
  store ptr %i.mw, ptr %i.lk, align 8
  br label %_ZNSt6vectorISt10unique_ptrI10aiNodeAnimSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit

bb.ap:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrI10aiNodeAnimSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i, %bb.an, %.lr.ph.preheader.i65, %.lr.ph.preheader.i
  %i.mx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

_ZNSt6vectorISt10unique_ptrI10aiNodeAnimSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit: ; preds = %.noexc63, %bb.al, %._crit_edge
  %i.my = ptrtoint ptr %.sroa.10101.2 to i64
  %i.mz = ptrtoint ptr %.sroa.096.2 to i64        ; 2 uses
  %i.na = sub i64 %i.my, %i.mz                    ; 3 uses
  %i.nb = lshr exact i64 %i.na, 2
  %i.nc = trunc i64 %i.nb to i32
  %i.nd = getelementptr inbounds nuw i8, ptr %i.fl, i64 1120
  store i32 %i.nc, ptr %i.nd, align 8
  %i.ne = icmp eq ptr %.sroa.096.2, %.sroa.10101.2
  br i1 %i.ne, label %_ZN6Assimp11B3DImporter8to_arrayIjEEPT_RKSt6vectorIS2_SaIS2_EE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNSt6vectorISt10unique_ptrI10aiNodeAnimSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit
  %i.nf = call i64 @llvm.smax.i64(i64 %i.na, i64 -1)
  %i.ng = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.nf) #27
          to label %.noexc64 unwind label %bb.ap  ; 2 uses

.noexc64:                                         ; preds = %.lr.ph.preheader.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ng, ptr align 4 %.sroa.096.2, i64 %i.na, i1 false)
  br label %_ZN6Assimp11B3DImporter8to_arrayIjEEPT_RKSt6vectorIS2_SaIS2_EE.exit

_ZN6Assimp11B3DImporter8to_arrayIjEEPT_RKSt6vectorIS2_SaIS2_EE.exit: ; preds = %.noexc64, %_ZNSt6vectorISt10unique_ptrI10aiNodeAnimSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit
  %.010.i = phi ptr [ null, %_ZNSt6vectorISt10unique_ptrI10aiNodeAnimSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit ], [ %i.ng, %.noexc64 ]
  %i.nh = getelementptr inbounds nuw i8, ptr %i.fl, i64 1128
  store ptr %.010.i, ptr %i.nh, align 8
  %i.ni = ptrtoint ptr %.sroa.10.1 to i64
  %i.nj = ptrtoint ptr %.sroa.0.1 to i64          ; 2 uses
  %i.nk = sub i64 %i.ni, %i.nj                    ; 3 uses
  %i.nl = lshr exact i64 %i.nk, 3
  %i.nm = trunc i64 %i.nl to i32
  %i.nn = getelementptr inbounds nuw i8, ptr %i.fl, i64 1104
  store i32 %i.nm, ptr %i.nn, align 8
  %i.no = icmp eq ptr %.sroa.0.1, %.sroa.10.1
  br i1 %i.no, label %_ZN6Assimp11B3DImporter8to_arrayIP6aiNodeEEPT_RKSt6vectorIS4_SaIS4_EE.exit, label %.lr.ph.preheader.i65

.lr.ph.preheader.i65:                             ; preds = %_ZN6Assimp11B3DImporter8to_arrayIjEEPT_RKSt6vectorIS2_SaIS2_EE.exit
  %i.np = call i64 @llvm.smax.i64(i64 %i.nk, i64 -1)
  %i.nq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.np) #27
          to label %.noexc67 unwind label %bb.ap  ; 2 uses

.noexc67:                                         ; preds = %.lr.ph.preheader.i65
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.nq, ptr align 8 %.sroa.0.1, i64 %i.nk, i1 false)
  br label %_ZN6Assimp11B3DImporter8to_arrayIP6aiNodeEEPT_RKSt6vectorIS4_SaIS4_EE.exit

_ZN6Assimp11B3DImporter8to_arrayIP6aiNodeEEPT_RKSt6vectorIS4_SaIS4_EE.exit: ; preds = %.noexc67, %_ZN6Assimp11B3DImporter8to_arrayIjEEPT_RKSt6vectorIS2_SaIS2_EE.exit
  %.010.i66 = phi ptr [ null, %_ZN6Assimp11B3DImporter8to_arrayIjEEPT_RKSt6vectorIS2_SaIS2_EE.exit ], [ %i.nq, %.noexc67 ]
  %i.nr = getelementptr inbounds nuw i8, ptr %i.fl, i64 1112
  store ptr %.010.i66, ptr %i.nr, align 8
  %.not.i.i.i68 = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i.i.i68, label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZN6Assimp11B3DImporter8to_arrayIP6aiNodeEEPT_RKSt6vectorIS4_SaIS4_EE.exit
  %i.ns = ptrtoint ptr %.sroa.16.1 to i64
  %i.nt = sub i64 %i.ns, %i.nj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1, i64 noundef %i.nt) #25
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit

_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit:           ; preds = %_ZN6Assimp11B3DImporter8to_arrayIP6aiNodeEEPT_RKSt6vectorIS4_SaIS4_EE.exit, %bb.aq
  %.not.i.i.i69 = icmp eq ptr %.sroa.096.2, null
  br i1 %.not.i.i.i69, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit
  %i.nu = ptrtoint ptr %.sroa.16105.2 to i64
  %i.nv = sub i64 %i.nu, %i.mz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.096.2, i64 noundef %i.nv) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit.thread, %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit, %bb.ar
  %i.nw = load ptr, ptr %3, align 8               ; 5 uses
  %.not.i70 = icmp eq ptr %i.nw, null
  br i1 %.not.i70, label %_ZNSt10unique_ptrI10aiNodeAnimSt14default_deleteIS0_EED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 1032
  %i.ny = load ptr, ptr %i.nx, align 8            ; 2 uses
  %i.nz = icmp eq ptr %i.ny, null
  br i1 %i.nz, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @_ZdaPv(ptr noundef nonnull %i.ny) #25
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nw, i64 1048
  %i.ob = load ptr, ptr %i.oa, align 8            ; 2 uses
  %i.oc = icmp eq ptr %i.ob, null
  br i1 %i.oc, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @_ZdaPv(ptr noundef nonnull %i.ob) #25
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.od = getelementptr inbounds nuw i8, ptr %i.nw, i64 1064
  %i.oe = load ptr, ptr %i.od, align 8            ; 2 uses
  %i.of = icmp eq ptr %i.oe, null
  br i1 %i.of, label %_ZNKSt14default_deleteI10aiNodeAnimEclEPS0_.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @_ZdaPv(ptr noundef nonnull %i.oe) #25
  br label %_ZNKSt14default_deleteI10aiNodeAnimEclEPS0_.exit.i

_ZNKSt14default_deleteI10aiNodeAnimEclEPS0_.exit.i: ; preds = %bb.ax, %bb.aw
  call void @_ZdlPvm(ptr noundef nonnull %i.nw, i64 noundef 1080) #25
  br label %_ZNSt10unique_ptrI10aiNodeAnimSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI10aiNodeAnimSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %_ZNKSt14default_deleteI10aiNodeAnimEclEPS0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.og = load ptr, ptr %2, align 8               ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN15DeadlyErrorBaseC2IJRA2_KcERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_:bb.a
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #24
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.r) #24
  ret void

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #24
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJERA2_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(2) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(2) %2) #24
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(2) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %3, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %3, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #25
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #24
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #24
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #24
  resume { ptr, i32 } %i.q
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA40_KcEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(40) %2) #24
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(40) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %4, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %4, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #25
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #24
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #24
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #24
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef %i.a, i64 noundef %i.c) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.e, ptr %3, align 8
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.g = getelementptr i8, ptr %i.e, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %3, i64 %i.h
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.o = load i64, ptr %i.m, align 8
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #25
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.j, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #24
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.r) #24
  ret void

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #24
  resume { ptr, i32 } %i.s
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZN10aiMaterialD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #26
  unreachable

_ZNKSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %2, align 8
  store i64 %i.r, ptr %i.q, align 8
  store ptr null, ptr %2, align 8
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit
  %3 = add i64 %i.m, -8
  %4 = sub i64 %3, %i.e                           ; 2 uses
  %i.s = lshr i64 %4, 3
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %4, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader61, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.u = add i64 %i.m, -8
  %i.v = sub i64 %i.u, %i.e
  %i.w = and i64 %i.v, -8
  %i.x = add i64 %i.w, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.x
  %scevgep35 = getelementptr i8, ptr %i.c, i64 %i.x
  %bound0 = icmp ult ptr %i.p, %scevgep35
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader61, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.t, 4611686018427387900      ; 3 uses
  %i.y = shl i64 %n.vec, 3                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.p, i64 %i.y     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ab ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.c, i64 %i.ab ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.ac = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep36, align 8, !alias.scope !179, !noalias !174
  %wide.load37 = load <2 x i64>, ptr %i.ac, align 8, !alias.scope !179, !noalias !174
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !182, !noalias !179
  store <2 x i64> %wide.load37, ptr %i.ad, align 8, !alias.scope !182, !noalias !179
  %i.ae = getelementptr i8, ptr %next.gep36, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep36, align 8, !alias.scope !179, !noalias !174
  store <2 x ptr> splat (ptr null), ptr %i.ae, align 8, !alias.scope !179, !noalias !174
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !184

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i.preheader61

.lr.ph.i.i.i.preheader61:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader61, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader61 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader61 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.ag = load i64, ptr %.0911.i.i.i, align 8, !alias.scope !177, !noalias !174
  store i64 %i.ag, ptr %.012.i.i.i, align 8, !alias.scope !174, !noalias !177
  store ptr null, ptr %.0911.i.i.i, align 8, !alias.scope !177, !noalias !174
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !185

_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.z, %middle.block ], [ %i.ai, %.lr.ph.i.i.i ] ; 2 uses
  %i.aj = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %5 = add i64 %i.d, -8
  %6 = sub i64 %5, %i.m                           ; 2 uses
  %i.ak = lshr i64 %6, 3
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check46 = icmp ult i64 %6, 152
  br i1 %min.iters.check46, label %.lr.ph.i.i.i17.preheader60, label %vector.memcheck39

vector.memcheck39:                                ; preds = %.lr.ph.i.i.i17.preheader
  %i.am = add i64 %i.d, -8
  %i.an = sub i64 %i.am, %i.m
  %i.ao = and i64 %i.an, -8                       ; 2 uses
  %i.ap = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.ao
  %scevgep40 = getelementptr i8, ptr %i.ap, i64 16
  %i.aq = getelementptr i8, ptr %1, i64 %i.ao
  %scevgep41 = getelementptr i8, ptr %i.aq, i64 8
  %bound042 = icmp ult ptr %i.aj, %scevgep41
  %bound143 = icmp ult ptr %1, %scevgep40
  %found.conflict44 = and i1 %bound042, %bound143
  br i1 %found.conflict44, label %.lr.ph.i.i.i17.preheader60, label %vector.ph47

vector.ph47:                                      ; preds = %vector.memcheck39
  %n.vec48 = and i64 %i.al, 4611686018427387900   ; 3 uses
  %i.ar = shl i64 %n.vec48, 3                     ; 2 uses
  %i.as = getelementptr i8, ptr %i.aj, i64 %i.ar  ; 2 uses
  %i.at = getelementptr i8, ptr %1, i64 %i.ar
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph47
  %index50 = phi i64 [ 0, %vector.ph47 ], [ %index.next55, %vector.body49 ] ; 2 uses
  %i.au = shl i64 %index50, 3                     ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.aj, i64 %i.au ; 2 uses
  %next.gep52 = getelementptr i8, ptr %1, i64 %i.au ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.av = getelementptr i8, ptr %next.gep52, i64 16
  %wide.load53 = load <2 x i64>, ptr %next.gep52, align 8, !alias.scope !191, !noalias !186
  %wide.load54 = load <2 x i64>, ptr %i.av, align 8, !alias.scope !191, !noalias !186
  %i.aw = getelementptr i8, ptr %next.gep51, i64 16
  store <2 x i64> %wide.load53, ptr %next.gep51, align 8, !alias.scope !194, !noalias !191
  store <2 x i64> %wide.load54, ptr %i.aw, align 8, !alias.scope !194, !noalias !191
  %i.ax = getelementptr i8, ptr %next.gep52, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep52, align 8, !alias.scope !191, !noalias !186
  store <2 x ptr> splat (ptr null), ptr %i.ax, align 8, !alias.scope !191, !noalias !186
  %index.next55 = add nuw i64 %index50, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next55, %n.vec48
  br i1 %i.ay, label %middle.block56, label %vector.body49, !llvm.loop !196

middle.block56:                                   ; preds = %vector.body49
  %cmp.n57 = icmp eq i64 %i.al, %n.vec48
  br i1 %cmp.n57, label %_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, label %.lr.ph.i.i.i17.preheader60

.lr.ph.i.i.i17.preheader60:                       ; preds = %vector.memcheck39, %.lr.ph.i.i.i17.preheader, %middle.block56
  %.012.i.i.i18.ph = phi ptr [ %i.aj, %vector.memcheck39 ], [ %i.aj, %.lr.ph.i.i.i17.preheader ], [ %i.as, %middle.block56 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck39 ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.at, %middle.block56 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader60, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bb, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader60 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ba, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader60 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.az = load i64, ptr %.0911.i.i.i19, align 8, !alias.scope !189, !noalias !186
  store i64 %i.az, ptr %.012.i.i.i18, align 8, !alias.scope !186, !noalias !189
  store ptr null, ptr %.0911.i.i.i19, align 8, !alias.scope !189, !noalias !186
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ba, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !197

_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block56, %_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.aj, %_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.as, %middle.block56 ], [ %i.bb, %.lr.ph.i.i.i17 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bf) #25
  br label %_ZNSt12_Vector_baseISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bg, ptr %i.bc, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp11B3DImporter6VertexESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 56                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 56                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 164703072086692426
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 164703072086692425, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN6Assimp11B3DImporter6VertexEmS2_ET_S4_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPN6Assimp11B3DImporter6VertexEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 56                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN6Assimp11B3DImporter6VertexESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #26
  unreachable

_ZNKSt6vectorIN6Assimp11B3DImporter6VertexESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 164703072086692425) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 56
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #27 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 56
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6Assimp11B3DImporter6VertexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN6Assimp11B3DImporter6VertexESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIN6Assimp11B3DImporter6VertexESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN6Assimp11B3DImporter6VertexESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %.012.i.i.i, ptr noundef nonnull align 4 dereferenceable(56) %.0911.i.i.i, i64 56, i1 false), !alias.scope !198
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %.not.i.i.i = icmp eq ptr %i.x, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6Assimp11B3DImporter6VertexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !202

_ZNSt6vectorIN6Assimp11B3DImporter6VertexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN6Assimp11B3DImporter6VertexESaIS2_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN6Assimp11B3DImporter6VertexESaIS2_EE13_M_deallocateEPS2_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6Assimp11B3DImporter6VertexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.z = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.z) #25
  br label %_ZNSt12_Vector_baseIN6Assimp11B3DImporter6VertexESaIS2_EE13_M_deallocateEPS2_m.exit37

_ZNSt12_Vector_baseIN6Assimp11B3DImporter6VertexESaIS2_EE13_M_deallocateEPS2_m.exit37: ; preds = %_ZNSt6vectorIN6Assimp11B3DImporter6VertexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw [56 x i8], ptr %i.v, i64 %1
  store ptr %i.aa, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw [56 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ab, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN6Assimp11B3DImporter6VertexEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN6Assimp11B3DImporter6VertexESaIS2_EE13_M_deallocateEPS2_m.exit37, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6aiMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1320) dereferenceable(1320) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %2 = alloca %"class.std::unordered_set", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq ptr %i.h, null
end_hunk_6
begin_hunk_7_@_ZN11aiAnimationD2Ev:bb.a
  %i.t = phi i32 [ %i.f, %.lr.ph ], [ %.pre, %_ZN10aiNodeAnimD2Ev.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = zext i32 %i.t to i64
  %i.v = icmp samesign ult i64 %indvars.iv.next, %i.u
  br i1 %i.v, label %.lr.ph, label %._crit_edge, !llvm.loop !210

bb.j:                                             ; preds = %._crit_edge
  tail call void @_ZdaPv(ptr noundef nonnull %.pre41) #25
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.j, %bb.b, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8              ; 2 uses
  %.not18 = icmp eq i32 %i.x, 0
  br i1 %.not18, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8
  %.not19 = icmp eq ptr %i.z, null
  br i1 %.not19, label %bb.q, label %.lr.ph26

._crit_edge27:                                    ; preds = %bb.o
  %.pre43 = load ptr, ptr %i.y, align 8           ; 2 uses
  %i.aa = icmp eq ptr %.pre43, null
  br i1 %i.aa, label %bb.q, label %bb.p

.lr.ph26:                                         ; preds = %bb.l, %bb.o
  %i.ab = phi i32 [ %i.aj, %bb.o ], [ %i.x, %bb.l ]
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %bb.o ], [ 0, %bb.l ] ; 2 uses
  %i.ac = load ptr, ptr %i.y, align 8
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv35
  %i.ae = load ptr, ptr %i.ad, align 8            ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.lr.ph26
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 1032
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_ZN10aiMeshAnimD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZdaPv(ptr noundef nonnull %i.ah) #25
  br label %_ZN10aiMeshAnimD2Ev.exit

_ZN10aiMeshAnimD2Ev.exit:                         ; preds = %bb.m, %bb.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 1040) #25
  %.pre42 = load i32, ptr %i.w, align 8
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph26, %_ZN10aiMeshAnimD2Ev.exit
  %i.aj = phi i32 [ %i.ab, %.lr.ph26 ], [ %.pre42, %_ZN10aiMeshAnimD2Ev.exit ] ; 2 uses
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %i.ak = zext i32 %i.aj to i64
  %i.al = icmp samesign ult i64 %indvars.iv.next36, %i.ak
  br i1 %i.al, label %.lr.ph26, label %._crit_edge27, !llvm.loop !211

bb.p:                                             ; preds = %._crit_edge27
  tail call void @_ZdaPv(ptr noundef nonnull %.pre43) #25
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge27, %bb.p, %bb.l, %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8            ; 2 uses
  %.not20 = icmp eq i32 %i.an, 0
  br i1 %.not20, label %bb.aa, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  %.not21 = icmp eq ptr %i.ap, null
  br i1 %.not21, label %bb.aa, label %.lr.ph29

._crit_edge30:                                    ; preds = %bb.y
  %.pre45 = load ptr, ptr %i.ao, align 8          ; 2 uses
  %i.aq = icmp eq ptr %.pre45, null
  br i1 %i.aq, label %bb.aa, label %bb.z

.lr.ph29:                                         ; preds = %bb.r, %bb.y
  %i.ar = phi i32 [ %i.bp, %bb.y ], [ %i.an, %bb.r ]
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %bb.y ], [ 0, %bb.r ] ; 2 uses
  %i.as = load ptr, ptr %i.ao, align 8
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv38
  %i.au = load ptr, ptr %i.at, align 8            ; 3 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.y, label %bb.s

bb.s:                                             ; preds = %.lr.ph29
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 1032
  %i.ax = load ptr, ptr %i.aw, align 8            ; 4 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %_ZN15aiMeshMorphAnimD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 -8 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8            ; 2 uses
  %.idx.i = shl i64 %i.ba, 5                      ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %.loopexit.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.t
  %i.bc = getelementptr inbounds i8, ptr %i.ax, i64 %.idx.i
  br label %.preheader.i

.preheader.i:                                     ; preds = %_ZN14aiMeshMorphKeyD2Ev.exit.i, %.preheader.preheader.i
  %i.bd = phi ptr [ %i.be, %_ZN14aiMeshMorphKeyD2Ev.exit.i ], [ %i.bc, %.preheader.preheader.i ] ; 4 uses
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -32 ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 -8
  %i.bg = load i32, ptr %i.bf, align 8
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %_ZN14aiMeshMorphKeyD2Ev.exit.i, label %bb.u

bb.u:                                             ; preds = %.preheader.i
  %i.bh = getelementptr inbounds i8, ptr %i.bd, i64 -24
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  %.not2.i.i = icmp eq ptr %i.bi, null
  br i1 %.not2.i.i, label %_ZN14aiMeshMorphKeyD2Ev.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bj = getelementptr inbounds i8, ptr %i.bd, i64 -16 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8
  %.not3.i.i = icmp eq ptr %i.bk, null
  br i1 %.not3.i.i, label %_ZN14aiMeshMorphKeyD2Ev.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @_ZdaPv(ptr noundef nonnull %i.bi) #25
  %i.bl = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %_ZN14aiMeshMorphKeyD2Ev.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @_ZdaPv(ptr noundef nonnull %i.bl) #25
  br label %_ZN14aiMeshMorphKeyD2Ev.exit.i

_ZN14aiMeshMorphKeyD2Ev.exit.i:                   ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %.preheader.i
  %i.bn = icmp eq ptr %i.be, %i.ax
  br i1 %i.bn, label %.loopexit.i, label %.preheader.i

.loopexit.i:                                      ; preds = %_ZN14aiMeshMorphKeyD2Ev.exit.i, %bb.t
  %i.bo = or disjoint i64 %.idx.i, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.az, i64 noundef %i.bo) #25
  br label %_ZN15aiMeshMorphAnimD2Ev.exit

_ZN15aiMeshMorphAnimD2Ev.exit:                    ; preds = %bb.s, %.loopexit.i
  tail call void @_ZdlPvm(ptr noundef %i.au, i64 noundef 1040) #25
  %.pre44 = load i32, ptr %i.am, align 8
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph29, %_ZN15aiMeshMorphAnimD2Ev.exit
  %i.bp = phi i32 [ %i.ar, %.lr.ph29 ], [ %.pre44, %_ZN15aiMeshMorphAnimD2Ev.exit ] ; 2 uses
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %i.bq = zext i32 %i.bp to i64
  %i.br = icmp samesign ult i64 %indvars.iv.next39, %i.bq
  br i1 %i.br, label %.lr.ph29, label %._crit_edge30, !llvm.loop !212

bb.z:                                             ; preds = %._crit_edge30
  tail call void @_ZdaPv(ptr noundef nonnull %.pre45) #25
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge30, %bb.z, %bb.r, %bb.q
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #14

; Function Attrs: nounwind
declare void @_ZN6aiNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(1144) dereferenceable(1144)) unnamed_addr #5

declare void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.umax.i128(i128, i128) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.umin.i128(i128, i128) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #14

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn }
attributes #7 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold nofree noreturn }
attributes #19 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nounwind }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4}
!6 = distinct !{!6, !4}
!7 = distinct !{!7, !4}
!8 = distinct !{!8, !4}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!11 = distinct !{!11, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!12 = distinct !{null}
!13 = distinct !{null, null}
!14 = distinct !{!14, !4}
!15 = distinct !{!15, !4}
!16 = distinct !{!16, !4}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZSt19__relocate_object_aI14aiVertexWeightS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!19 = distinct !{!19, !"_ZSt19__relocate_object_aI14aiVertexWeightS0_SaIS0_EEvPT_PT0_RT1_"}
!20 = !{!21}
!21 = distinct !{!21, !19, !"_ZSt19__relocate_object_aI14aiVertexWeightS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!22 = distinct !{!22, !4, !23, !24}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = !{!"llvm.loop.unroll.runtime.disable"}
!25 = distinct !{!25, !4, !23}
!26 = !{!27}
!27 = distinct !{!27, !19, !"_ZSt19__relocate_object_aI14aiVertexWeightS0_SaIS0_EEvPT_PT0_RT1_: argument 0:It1"}
!28 = !{!29}
!29 = distinct !{!29, !19, !"_ZSt19__relocate_object_aI14aiVertexWeightS0_SaIS0_EEvPT_PT0_RT1_: argument 1:It1"}
!30 = distinct !{!30, !4, !23, !24}
!31 = distinct !{!31, !4, !23}
!32 = !{!33}
!33 = distinct !{!33, !19, !"_ZSt19__relocate_object_aI14aiVertexWeightS0_SaIS0_EEvPT_PT0_RT1_: argument 0:It2"}
!34 = !{!35}
!35 = distinct !{!35, !19, !"_ZSt19__relocate_object_aI14aiVertexWeightS0_SaIS0_EEvPT_PT0_RT1_: argument 1:It2"}
!36 = distinct !{!36, !4, !23, !24}
!37 = distinct !{!37, !4, !23}
!38 = !{!39}
!39 = distinct !{!39, !19, !"_ZSt19__relocate_object_aI14aiVertexWeightS0_SaIS0_EEvPT_PT0_RT1_: argument 0:It3"}
!40 = !{!41}
!41 = distinct !{!41, !19, !"_ZSt19__relocate_object_aI14aiVertexWeightS0_SaIS0_EEvPT_PT0_RT1_: argument 1:It3"}
!42 = distinct !{!42, !4, !23, !24}
!43 = distinct !{!43, !4, !23}
!44 = distinct !{!44, !4}
!45 = distinct !{!45, !4}
!46 = distinct !{!46, !4}
!47 = distinct !{!47, !4}
!48 = distinct !{!48, !4}
!49 = distinct !{!49, !4}
!50 = distinct !{!50, !4}
!51 = distinct !{!51, !4}
!52 = distinct !{!52, !4}
!53 = distinct !{!53, !4}
!54 = distinct !{!54, !4}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZSt19__relocate_object_aISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!57 = distinct !{!57, !"_ZSt19__relocate_object_aISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EES4_SaIS4_EEvPT_PT0_RT1_"}
!58 = !{!59}
!59 = distinct !{!59, !57, !"_ZSt19__relocate_object_aISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!60 = !{!59, !61}
!61 = distinct !{!61, !62}
!62 = distinct !{!62, !"LVerDomain"}
!63 = !{!56, !64}
!64 = distinct !{!64, !62}
!65 = distinct !{!65, !4, !23, !24}
!66 = distinct !{!66, !4, !23}
!67 = distinct !{!67, !4, !68}
!68 = !{!"llvm.loop.peeled.count", i32 1}
!69 = distinct !{!69, !4}
!70 = distinct !{!70, !4}
!71 = !{!72}
!72 = distinct !{!72, !73}
!73 = distinct !{!73, !"LVerDomain"}
!74 = !{!75}
!75 = distinct !{!75, !73}
!76 = distinct !{!76, !4, !23, !24}
!77 = distinct !{!77, !4, !23}
!78 = distinct !{!78, !4}
!79 = distinct !{!79, !80}
!80 = !{!"llvm.loop.unroll.disable"}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_ZSt19__relocate_object_aISt10unique_ptrI6aiMeshSt14default_deleteIS1_EES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!83 = distinct !{!83, !"_ZSt19__relocate_object_aISt10unique_ptrI6aiMeshSt14default_deleteIS1_EES4_SaIS4_EEvPT_PT0_RT1_"}
!84 = !{!85}
!85 = distinct !{!85, !83, !"_ZSt19__relocate_object_aISt10unique_ptrI6aiMeshSt14default_deleteIS1_EES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!86 = !{!85, !87}
!87 = distinct !{!87, !88}
!88 = distinct !{!88, !"LVerDomain"}
!89 = !{!82, !90}
!90 = distinct !{!90, !88}
!91 = distinct !{!91, !4, !23, !24}
!92 = distinct !{!92, !4, !23}
!93 = distinct !{!93, !4}
!94 = distinct !{!94, !4}
!95 = distinct !{!95, !4}
!96 = !{!97, !99}
!97 = distinct !{!97, !98, !"_ZSt19__relocate_object_aI11aiVectorKeyS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!98 = distinct !{!98, !"_ZSt19__relocate_object_aI11aiVectorKeyS0_SaIS0_EEvPT_PT0_RT1_"}
!99 = distinct !{!99, !98, !"_ZSt19__relocate_object_aI11aiVectorKeyS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!100 = distinct !{!100, !4}
!101 = !{!102, !104}
!102 = distinct !{!102, !103, !"_ZSt19__relocate_object_aI11aiVectorKeyS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!103 = distinct !{!103, !"_ZSt19__relocate_object_aI11aiVectorKeyS0_SaIS0_EEvPT_PT0_RT1_"}
!104 = distinct !{!104, !103, !"_ZSt19__relocate_object_aI11aiVectorKeyS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!105 = !{!106, !108}
!106 = distinct !{!106, !107, !"_ZSt19__relocate_object_aI9aiQuatKeyS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!107 = distinct !{!107, !"_ZSt19__relocate_object_aI9aiQuatKeyS0_SaIS0_EEvPT_PT0_RT1_"}
!108 = distinct !{!108, !107, !"_ZSt19__relocate_object_aI9aiQuatKeyS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!109 = distinct !{!109, !4}
!110 = distinct !{!110, !4}
!111 = distinct !{!111, !4}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_ZSt19__relocate_object_aISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!114 = distinct !{!114, !"_ZSt19__relocate_object_aISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EES4_SaIS4_EEvPT_PT0_RT1_"}
!115 = !{!116}
!116 = distinct !{!116, !114, !"_ZSt19__relocate_object_aISt10unique_ptrI11aiAnimationSt14default_deleteIS1_EES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!117 = !{!116, !118}
!118 = distinct !{!118, !119}
!119 = distinct !{!119, !"LVerDomain"}
!120 = !{!113, !121}
!121 = distinct !{!121, !119}
!122 = distinct !{!122, !4, !23, !24}
!123 = distinct !{!123, !4, !23}
!124 = distinct !{!124, !4}
!125 = distinct !{!125, !4}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_ZSt19__relocate_object_aISt10unique_ptrI10aiNodeAnimSt14default_deleteIS1_EES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!128 = distinct !{!128, !"_ZSt19__relocate_object_aISt10unique_ptrI10aiNodeAnimSt14default_deleteIS1_EES4_SaIS4_EEvPT_PT0_RT1_"}
!129 = !{!130}
!130 = distinct !{!130, !128, !"_ZSt19__relocate_object_aISt10unique_ptrI10aiNodeAnimSt14default_deleteIS1_EES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!131 = !{!130, !132}
!132 = distinct !{!132, !133}
!133 = distinct !{!133, !"LVerDomain"}
!134 = !{!127, !135}
!135 = distinct !{!135, !133}
!136 = distinct !{!136, !4, !23, !24}
!137 = distinct !{!137, !4, !23}
!138 = !{!139}
!139 = distinct !{!139, !140, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!140 = distinct !{!140, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!143 = distinct !{!143, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!146 = distinct !{!146, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!149 = distinct !{!149, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!150 = !{!148, !145, !142, !139}
!151 = !{!152}
!152 = distinct !{!152, !153, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!153 = distinct !{!153, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!154 = !{!155}
!155 = distinct !{!155, !156, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!156 = distinct !{!156, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!157 = !{!158}
!158 = distinct !{!158, !159, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!159 = distinct !{!159, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!160 = !{!158, !155, !152}
!161 = !{!162}
!162 = distinct !{!162, !163, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!163 = distinct !{!163, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!164 = !{!165}
end_hunk_7
