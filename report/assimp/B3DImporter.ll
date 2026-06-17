inline.NumInlined: 1740
inline.NumDeleted: 961
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
  %min.iters.check817 = icmp ult i64 %15, 24
  %i.kd = sub i64 %i.ka, %i.jo
  %diff.check815 = icmp ult i64 %i.kd, 32
  %or.cond = or i1 %min.iters.check817, %diff.check815
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader838, label %vector.ph818

vector.ph818:                                     ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec820 = and i64 %i.kc, 4611686018427387900  ; 3 uses
  %i.ke = shl i64 %n.vec820, 3                    ; 2 uses
  %i.kf = getelementptr i8, ptr %i.jx, i64 %i.ke  ; 2 uses
  %i.kg = getelementptr i8, ptr %i.jm, i64 %i.ke
  br label %vector.body821

vector.body821:                                   ; preds = %vector.body821, %vector.ph818
  %index822 = phi i64 [ 0, %vector.ph818 ], [ %index.next827, %vector.body821 ] ; 2 uses
  %i.kh = shl i64 %index822, 3                    ; 2 uses
  %next.gep823 = getelementptr i8, ptr %i.jx, i64 %i.kh ; 2 uses
  %next.gep824 = getelementptr i8, ptr %i.jm, i64 %i.kh ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17)
  call void @llvm.experimental.noalias.scope.decl(metadata !20)
  %i.ki = getelementptr i8, ptr %next.gep824, i64 16
  %wide.load825 = load <2 x i64>, ptr %next.gep824, align 4, !alias.scope !20, !noalias !17
  %wide.load826 = load <2 x i64>, ptr %i.ki, align 4, !alias.scope !20, !noalias !17
  %i.kj = getelementptr i8, ptr %next.gep823, i64 16
  store <2 x i64> %wide.load825, ptr %next.gep823, align 4, !alias.scope !17, !noalias !20
  store <2 x i64> %wide.load826, ptr %i.kj, align 4, !alias.scope !17, !noalias !20
  %index.next827 = add nuw i64 %index822, 4       ; 2 uses
  %i.kk = icmp eq i64 %index.next827, %n.vec820
  br i1 %i.kk, label %middle.block828, label %vector.body821, !llvm.loop !22

middle.block828:                                  ; preds = %vector.body821
  %cmp.n829 = icmp eq i64 %i.kc, %n.vec820
  br i1 %cmp.n829, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i, label %.lr.ph.i.i.i.i.i.preheader838

.lr.ph.i.i.i.i.i.preheader838:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block828
  %.012.i.i.i.i.i.ph = phi ptr [ %i.jx, %.lr.ph.i.i.i.i.i.preheader ], [ %i.kf, %middle.block828 ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.jm, %.lr.ph.i.i.i.i.i.preheader ], [ %i.kg, %middle.block828 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader838, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.kn, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader838 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.km, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader838 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17)
  call void @llvm.experimental.noalias.scope.decl(metadata !20)
  %i.kl = load i64, ptr %.0911.i.i.i.i.i, align 4, !alias.scope !20, !noalias !17
  store i64 %i.kl, ptr %.012.i.i.i.i.i, align 4, !alias.scope !17, !noalias !20
  %i.km = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.km, %i.jg
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !25

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block828, %.noexc190
  %.0.lcssa.i.i.i.i.i188 = phi ptr [ %i.jx, %.noexc190 ], [ %i.kf, %middle.block828 ], [ %i.kn, %.lr.ph.i.i.i.i.i ]
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
  %min.iters.check799 = icmp ult i64 %17, 24
  %i.lv = sub i64 %i.ls, %i.lg
  %diff.check797 = icmp ult i64 %i.lv, 32
  %or.cond832 = or i1 %min.iters.check799, %diff.check797
  br i1 %or.cond832, label %.lr.ph.i.i.i.i.i.1.preheader837, label %vector.ph800

vector.ph800:                                     ; preds = %.lr.ph.i.i.i.i.i.1.preheader
  %n.vec802 = and i64 %i.lu, 4611686018427387900  ; 3 uses
  %i.lw = shl i64 %n.vec802, 3                    ; 2 uses
  %i.lx = getelementptr i8, ptr %i.lp, i64 %i.lw  ; 2 uses
  %i.ly = getelementptr i8, ptr %i.le, i64 %i.lw
  br label %vector.body803

vector.body803:                                   ; preds = %vector.body803, %vector.ph800
  %index804 = phi i64 [ 0, %vector.ph800 ], [ %index.next809, %vector.body803 ] ; 2 uses
  %i.lz = shl i64 %index804, 3                    ; 2 uses
  %next.gep805 = getelementptr i8, ptr %i.lp, i64 %i.lz ; 2 uses
  %next.gep806 = getelementptr i8, ptr %i.le, i64 %i.lz ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26)
  call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %i.ma = getelementptr i8, ptr %next.gep806, i64 16
  %wide.load807 = load <2 x i64>, ptr %next.gep806, align 4, !alias.scope !28, !noalias !26
  %wide.load808 = load <2 x i64>, ptr %i.ma, align 4, !alias.scope !28, !noalias !26
  %i.mb = getelementptr i8, ptr %next.gep805, i64 16
  store <2 x i64> %wide.load807, ptr %next.gep805, align 4, !alias.scope !26, !noalias !28
  store <2 x i64> %wide.load808, ptr %i.mb, align 4, !alias.scope !26, !noalias !28
  %index.next809 = add nuw i64 %index804, 4       ; 2 uses
  %i.mc = icmp eq i64 %index.next809, %n.vec802
  br i1 %i.mc, label %middle.block810, label %vector.body803, !llvm.loop !30

middle.block810:                                  ; preds = %vector.body803
  %cmp.n811 = icmp eq i64 %i.lu, %n.vec802
  br i1 %cmp.n811, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i.1, label %.lr.ph.i.i.i.i.i.1.preheader837

.lr.ph.i.i.i.i.i.1.preheader837:                  ; preds = %.lr.ph.i.i.i.i.i.1.preheader, %middle.block810
  %.012.i.i.i.i.i.1.ph = phi ptr [ %i.lp, %.lr.ph.i.i.i.i.i.1.preheader ], [ %i.lx, %middle.block810 ]
  %.0911.i.i.i.i.i.1.ph = phi ptr [ %i.le, %.lr.ph.i.i.i.i.i.1.preheader ], [ %i.ly, %middle.block810 ]
  br label %.lr.ph.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.1:                               ; preds = %.lr.ph.i.i.i.i.i.1.preheader837, %.lr.ph.i.i.i.i.i.1
  %.012.i.i.i.i.i.1 = phi ptr [ %i.mf, %.lr.ph.i.i.i.i.i.1 ], [ %.012.i.i.i.i.i.1.ph, %.lr.ph.i.i.i.i.i.1.preheader837 ] ; 2 uses
  %.0911.i.i.i.i.i.1 = phi ptr [ %i.me, %.lr.ph.i.i.i.i.i.1 ], [ %.0911.i.i.i.i.i.1.ph, %.lr.ph.i.i.i.i.i.1.preheader837 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26)
  call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %i.md = load i64, ptr %.0911.i.i.i.i.i.1, align 4, !alias.scope !28, !noalias !26
  store i64 %i.md, ptr %.012.i.i.i.i.i.1, align 4, !alias.scope !26, !noalias !28
  %i.me = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.1, i64 8 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.1, i64 8 ; 2 uses
  %.not.i.i.i.i.i.1 = icmp eq ptr %i.me, %i.ky
  br i1 %.not.i.i.i.i.i.1, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i.1, label %.lr.ph.i.i.i.i.i.1, !llvm.loop !31

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i.1: ; preds = %.lr.ph.i.i.i.i.i.1, %middle.block810, %.noexc190.1
  %.0.lcssa.i.i.i.i.i188.1 = phi ptr [ %i.lp, %.noexc190.1 ], [ %i.lx, %middle.block810 ], [ %i.mf, %.lr.ph.i.i.i.i.i.1 ]
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
  %i.nn = sub i64 %i.nk, %i.my
  %diff.check779 = icmp ult i64 %i.nn, 32
  %or.cond833 = or i1 %min.iters.check781, %diff.check779
  br i1 %or.cond833, label %.lr.ph.i.i.i.i.i.2.preheader836, label %vector.ph782

vector.ph782:                                     ; preds = %.lr.ph.i.i.i.i.i.2.preheader
  %n.vec784 = and i64 %i.nm, 4611686018427387900  ; 3 uses
  %i.no = shl i64 %n.vec784, 3                    ; 2 uses
  %i.np = getelementptr i8, ptr %i.nh, i64 %i.no  ; 2 uses
  %i.nq = getelementptr i8, ptr %i.mw, i64 %i.no
  br label %vector.body785

vector.body785:                                   ; preds = %vector.body785, %vector.ph782
  %index786 = phi i64 [ 0, %vector.ph782 ], [ %index.next791, %vector.body785 ] ; 2 uses
  %i.nr = shl i64 %index786, 3                    ; 2 uses
  %next.gep787 = getelementptr i8, ptr %i.nh, i64 %i.nr ; 2 uses
  %next.gep788 = getelementptr i8, ptr %i.mw, i64 %i.nr ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32)
  call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %i.ns = getelementptr i8, ptr %next.gep788, i64 16
  %wide.load789 = load <2 x i64>, ptr %next.gep788, align 4, !alias.scope !34, !noalias !32
  %wide.load790 = load <2 x i64>, ptr %i.ns, align 4, !alias.scope !34, !noalias !32
  %i.nt = getelementptr i8, ptr %next.gep787, i64 16
  store <2 x i64> %wide.load789, ptr %next.gep787, align 4, !alias.scope !32, !noalias !34
  store <2 x i64> %wide.load790, ptr %i.nt, align 4, !alias.scope !32, !noalias !34
  %index.next791 = add nuw i64 %index786, 4       ; 2 uses
  %i.nu = icmp eq i64 %index.next791, %n.vec784
  br i1 %i.nu, label %middle.block792, label %vector.body785, !llvm.loop !36

middle.block792:                                  ; preds = %vector.body785
  %cmp.n793 = icmp eq i64 %i.nm, %n.vec784
  br i1 %cmp.n793, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i.2, label %.lr.ph.i.i.i.i.i.2.preheader836

.lr.ph.i.i.i.i.i.2.preheader836:                  ; preds = %.lr.ph.i.i.i.i.i.2.preheader, %middle.block792
  %.012.i.i.i.i.i.2.ph = phi ptr [ %i.nh, %.lr.ph.i.i.i.i.i.2.preheader ], [ %i.np, %middle.block792 ]
  %.0911.i.i.i.i.i.2.ph = phi ptr [ %i.mw, %.lr.ph.i.i.i.i.i.2.preheader ], [ %i.nq, %middle.block792 ]
  br label %.lr.ph.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.2:                               ; preds = %.lr.ph.i.i.i.i.i.2.preheader836, %.lr.ph.i.i.i.i.i.2
  %.012.i.i.i.i.i.2 = phi ptr [ %i.nx, %.lr.ph.i.i.i.i.i.2 ], [ %.012.i.i.i.i.i.2.ph, %.lr.ph.i.i.i.i.i.2.preheader836 ] ; 2 uses
  %.0911.i.i.i.i.i.2 = phi ptr [ %i.nw, %.lr.ph.i.i.i.i.i.2 ], [ %.0911.i.i.i.i.i.2.ph, %.lr.ph.i.i.i.i.i.2.preheader836 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32)
  call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %i.nv = load i64, ptr %.0911.i.i.i.i.i.2, align 4, !alias.scope !34, !noalias !32
  store i64 %i.nv, ptr %.012.i.i.i.i.i.2, align 4, !alias.scope !32, !noalias !34
  %i.nw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.2, i64 8 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.2, i64 8 ; 2 uses
  %.not.i.i.i.i.i.2 = icmp eq ptr %i.nw, %i.mq
  br i1 %.not.i.i.i.i.i.2, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i.2, label %.lr.ph.i.i.i.i.i.2, !llvm.loop !37

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i.2: ; preds = %.lr.ph.i.i.i.i.i.2, %middle.block792, %.noexc190.2
  %.0.lcssa.i.i.i.i.i188.2 = phi ptr [ %i.nh, %.noexc190.2 ], [ %i.np, %middle.block792 ], [ %i.nx, %.lr.ph.i.i.i.i.i.2 ]
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
  %i.pf = sub i64 %i.pc, %i.oq
  %diff.check = icmp ult i64 %i.pf, 32
  %or.cond834 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond834, label %.lr.ph.i.i.i.i.i.3.preheader835, label %vector.ph

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
  br i1 %cmp.n, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i.3, label %.lr.ph.i.i.i.i.i.3.preheader835

.lr.ph.i.i.i.i.i.3.preheader835:                  ; preds = %.lr.ph.i.i.i.i.i.3.preheader, %middle.block
  %.012.i.i.i.i.i.3.ph = phi ptr [ %i.oz, %.lr.ph.i.i.i.i.i.3.preheader ], [ %i.ph, %middle.block ]
  %.0911.i.i.i.i.i.3.ph = phi ptr [ %i.oo, %.lr.ph.i.i.i.i.i.3.preheader ], [ %i.pi, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.3

.lr.ph.i.i.i.i.i.3:                               ; preds = %.lr.ph.i.i.i.i.i.3.preheader835, %.lr.ph.i.i.i.i.i.3
  %.012.i.i.i.i.i.3 = phi ptr [ %i.pp, %.lr.ph.i.i.i.i.i.3 ], [ %.012.i.i.i.i.i.3.ph, %.lr.ph.i.i.i.i.i.3.preheader835 ] ; 2 uses
  %.0911.i.i.i.i.i.3 = phi ptr [ %i.po, %.lr.ph.i.i.i.i.i.3 ], [ %.0911.i.i.i.i.i.3.ph, %.lr.ph.i.i.i.i.i.3.preheader835 ] ; 2 uses
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
  br label %bb.bk

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
  br label %bb.bj

bb.ak:                                            ; preds = %bb.ab
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef 16) #25
  br label %bb.bj

bb.al:                                            ; preds = %_ZN10aiMaterial11AddPropertyEPK10aiVector3tIfEjPKcjj.exit, %bb.ad, %bb.ac
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.am:                                            ; preds = %_ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

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
          to label %bb.at unwind label %bb.bg     ; 0 uses

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
  %i.el = load ptr, ptr %i.ae, align 8
  %i.em = load ptr, ptr %i.ad, align 8
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = lshr exact i64 %i.ep, 5
  %i.er = trunc i64 %i.eq to i32
  br label %.lr.ph

._crit_edge:                                      ; preds = %.thread, %.thread.peel, %bb.ao
  %i.es = load ptr, ptr %i.ah, align 8            ; 5 uses
  %i.et = load ptr, ptr %i.ai, align 8
  %.not.i84 = icmp eq ptr %i.es, %i.et
  br i1 %.not.i84, label %bb.au, label %_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit.thread

_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit.thread: ; preds = %._crit_edge
  store i64 %i.co, ptr %i.es, align 8
  %i.eu = load ptr, ptr %i.ah, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store ptr %i.ev, ptr %i.ah, align 8
  br label %_ZNSt10unique_ptrI10aiMaterialSt14default_deleteIS0_EED2Ev.exit

bb.au:                                            ; preds = %._crit_edge
  %i.ew = load ptr, ptr %i.ag, align 8            ; 10 uses
  %i.ex = ptrtoint ptr %i.es to i64               ; 3 uses
  %i.ey = ptrtoint ptr %i.ew to i64               ; 4 uses
  %i.ez = sub i64 %i.ex, %i.ey                    ; 3 uses
  %i.fa = icmp eq i64 %i.ez, 9223372036854775800
  br i1 %i.fa, label %bb.av, label %_ZNKSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.av:                                            ; preds = %bb.au
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #26
          to label %.noexc106 unwind label %.loopexit.split-lp

.noexc106:                                        ; preds = %bb.av
  unreachable

_ZNKSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.au
  %i.fb = ashr exact i64 %i.ez, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.fb, i64 1)
  %i.fc = add nsw i64 %.sroa.speculated.i.i, %i.fb ; 2 uses
  %i.fd = icmp ult i64 %i.fc, %i.fb
  %i.fe = call i64 @llvm.umin.i64(i64 %i.fc, i64 1152921504606846975)
  %i.ff = select i1 %i.fd, i64 1152921504606846975, i64 %i.fe ; 3 uses
  %.not.i.i = icmp ne i64 %i.ff, 0
  call void @llvm.assume(i1 %.not.i.i)
  %i.fg = shl nuw nsw i64 %i.ff, 3
  %i.fh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fg) #27
          to label %.noexc107 unwind label %.loopexit ; 10 uses

.noexc107:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.ez
  store i64 %i.co, ptr %i.fi, align 8
  store ptr null, ptr %17, align 8
  %.not10.i.i.i.i = icmp eq ptr %i.ew, %i.es
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc107
  %23 = add i64 %i.ex, -8
  %24 = sub i64 %23, %i.ey                        ; 2 uses
  %i.fj = lshr i64 %24, 3
  %i.fk = add nuw nsw i64 %i.fj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %24, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader211, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.fh, i64 8
  %i.fl = add i64 %i.ex, -8
  %i.fm = sub i64 %i.fl, %i.ey
  %i.fn = and i64 %i.fm, -8                       ; 2 uses
  %scevgep205 = getelementptr i8, ptr %scevgep, i64 %i.fn
  %scevgep206 = getelementptr i8, ptr %i.ew, i64 8
  %scevgep207 = getelementptr i8, ptr %scevgep206, i64 %i.fn
  %bound0 = icmp ult ptr %i.fh, %scevgep207
  %bound1 = icmp ult ptr %i.ew, %scevgep205
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader211, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fk, 4611686018427387900     ; 3 uses
  %i.fo = shl i64 %n.vec, 3                       ; 2 uses
  %i.fp = getelementptr i8, ptr %i.fh, i64 %i.fo  ; 2 uses
  %i.fq = getelementptr i8, ptr %i.ew, i64 %i.fo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fr = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fh, i64 %i.fr ; 2 uses
  %next.gep208 = getelementptr i8, ptr %i.ew, i64 %i.fr ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !55)
  call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %i.fs = getelementptr i8, ptr %next.gep208, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep208, align 8, !alias.scope !60, !noalias !55
  %wide.load209 = load <2 x i64>, ptr %i.fs, align 8, !alias.scope !60, !noalias !55
  %i.ft = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !63, !noalias !60
  store <2 x i64> %wide.load209, ptr %i.ft, align 8, !alias.scope !63, !noalias !60
  %i.fu = getelementptr i8, ptr %next.gep208, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep208, align 8, !alias.scope !60, !noalias !55
  store <2 x ptr> splat (ptr null), ptr %i.fu, align 8, !alias.scope !60, !noalias !55
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fv = icmp eq i64 %index.next, %n.vec
  br i1 %i.fv, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fk, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i.preheader211

.lr.ph.i.i.i.i.preheader211:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.fh, %vector.memcheck ], [ %i.fh, %.lr.ph.i.i.i.i.preheader ], [ %i.fp, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ew, %vector.memcheck ], [ %i.ew, %.lr.ph.i.i.i.i.preheader ], [ %i.fq, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader211, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.fy, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader211 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.fx, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader211 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !55)
  call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %i.fw = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !58, !noalias !55
  store i64 %i.fw, ptr %.012.i.i.i.i, align 8, !alias.scope !55, !noalias !58
  store ptr null, ptr %.0911.i.i.i.i, align 8, !alias.scope !58, !noalias !55
  %i.fx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fx, %i.es
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !66

_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc107
  %.0.lcssa.i.i.i.i = phi ptr [ %i.fh, %.noexc107 ], [ %i.fp, %middle.block ], [ %i.fy, %.lr.ph.i.i.i.i ]
  %i.fz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.ew, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i
  %i.ga = load ptr, ptr %i.ai, align 8
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = sub i64 %i.gb, %i.ey
  call void @_ZdlPvm(ptr noundef nonnull %i.ew, i64 noundef %i.gc) #25
  br label %_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit

.lr.ph:                                           ; preds = %.lr.ph.peel.next, %.thread
  %i.gd = phi i64 [ %i.ge, %.thread ], [ %.pre, %.lr.ph.peel.next ] ; 2 uses
  %.021119 = phi i32 [ %i.gx, %.thread ], [ 1, %.lr.ph.peel.next ]
  %i.ge = add i64 %i.gd, 4                        ; 3 uses
  %i.gf = icmp ugt i64 %i.ge, %i.ek
  br i1 %i.gf, label %.loopexit135, label %bb.az

.loopexit135:                                     ; preds = %.lr.ph.preheader, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %.noexc90 unwind label %bb.bd

.noexc90:                                         ; preds = %.loopexit135
  invoke void @_ZN6Assimp11B3DImporter4FailERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %1) #26
          to label %bb.ax unwind label %bb.ay

bb.ax:                                            ; preds = %.noexc90
  unreachable

bb.ay:                                            ; preds = %.noexc90
  %i.gg = landingpad { ptr, i32 }
          cleanup
  %i.gh = load ptr, ptr %1, align 8               ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.gj = icmp eq ptr %i.gh, %i.gi
  br i1 %i.gj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i87: ; preds = %bb.ay
  %i.gk = load i64, ptr %i.gi, align 8
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gl) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i88: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %.body91

bb.az:                                            ; preds = %.lr.ph
  %i.gm = getelementptr inbounds nuw i8, ptr %.pre144, i64 %i.gd
  %.0.copyload.i86 = load i32, ptr %i.gm, align 1 ; 3 uses
  store i64 %i.ge, ptr %i.d, align 8
  %i.gn = icmp slt i32 %.0.copyload.i86, -1
  br i1 %i.gn, label %.loopexit136, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.go = icmp eq i32 %.0.copyload.i86, -1
  %.not36 = icmp slt i32 %.0.copyload.i86, %i.er
  %or.cond190 = select i1 %i.go, i1 true, i1 %.not36
  br i1 %or.cond190, label %.thread, label %.loopexit136

.loopexit136:                                     ; preds = %bb.ar, %bb.ap, %bb.az, %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %bb.bb unwind label %bb.be

bb.bb:                                            ; preds = %.loopexit136
  invoke void @_ZN6Assimp11B3DImporter4FailERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %20) #26
          to label %bb.bc unwind label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  unreachable

bb.bd:                                            ; preds = %.loopexit135
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %.body91

bb.be:                                            ; preds = %.loopexit136
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

bb.bf:                                            ; preds = %bb.bb
  %i.gr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gs = load ptr, ptr %20, align 8              ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.gu = icmp eq ptr %i.gs, %i.gt
  br i1 %i.gu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %bb.bf
  %i.gv = load i64, ptr %i.gt, align 8
  %i.gw = add i64 %i.gv, 1
  call void @_ZdlPvm(ptr noundef %i.gs, i64 noundef %i.gw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94, %bb.be
  %.pn = phi { ptr, i32 } [ %i.gq, %bb.be ], [ %i.gr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ], [ %i.gr, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  br label %.body91

bb.bg:                                            ; preds = %bb.as
  %lpad.loopexit.split-lp140 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  br label %.body91

.thread:                                          ; preds = %bb.ba
  %i.gx = add nuw nsw i32 %.021119, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.gx, %.0.copyload.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !67

_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, %bb.aw
  store ptr %i.fh, ptr %i.ag, align 8
  store ptr %i.fz, ptr %i.ah, align 8
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.ff
  store ptr %i.gy, ptr %i.ai, align 8
  br label %_ZNSt10unique_ptrI10aiMaterialSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI10aiMaterialSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit, %_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
end_hunk_1
begin_hunk_2_@_ZN6Assimp11B3DImporter8ReadTRISEi:bb.a

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
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = load ptr, ptr %i.ch, align 8
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = sdiv exact i64 %i.cn, 56
  %i.cp = trunc i64 %i.co to i32                  ; 3 uses
  br label %bb.s

._crit_edge:                                      ; preds = %bb.ap, %.loopexit88.thread
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.cs = load ptr, ptr %i.cr, align 8            ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.cu = load ptr, ptr %i.ct, align 8
  %.not.i = icmp eq ptr %i.cs, %i.cu
  br i1 %.not.i, label %bb.o, label %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit.thread

_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit.thread: ; preds = %._crit_edge
  store i64 %i.bc, ptr %i.cs, align 8
  %i.cv = load ptr, ptr %i.cr, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store ptr %i.cw, ptr %i.cr, align 8
  br label %_ZNSt10unique_ptrI6aiMeshSt14default_deleteIS0_EED2Ev.exit

bb.o:                                             ; preds = %._crit_edge
  %i.cx = load ptr, ptr %i.cq, align 8            ; 10 uses
  %i.cy = ptrtoint ptr %i.cs to i64               ; 3 uses
  %i.cz = ptrtoint ptr %i.cx to i64               ; 4 uses
  %i.da = sub i64 %i.cy, %i.cz                    ; 3 uses
  %i.db = icmp eq i64 %i.da, 9223372036854775800
  br i1 %i.db, label %bb.p, label %_ZNKSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #26
          to label %.noexc81 unwind label %bb.r

.noexc81:                                         ; preds = %bb.p
  unreachable

_ZNKSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.o
  %i.dc = ashr exact i64 %i.da, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.dc, i64 1)
  %i.dd = add nsw i64 %.sroa.speculated.i.i, %i.dc ; 2 uses
  %i.de = icmp ult i64 %i.dd, %i.dc
  %i.df = tail call i64 @llvm.umin.i64(i64 %i.dd, i64 1152921504606846975)
  %i.dg = select i1 %i.de, i64 1152921504606846975, i64 %i.df ; 3 uses
  %.not.i.i = icmp ne i64 %i.dg, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.dh = shl nuw nsw i64 %i.dg, 3
  %i.di = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dh) #27
          to label %.noexc82 unwind label %bb.r   ; 10 uses

.noexc82:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.da
  store i64 %i.bc, ptr %i.dj, align 8
  %.not10.i.i.i.i = icmp eq ptr %i.cx, %i.cs
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc82
  %15 = add i64 %i.cy, -8
  %16 = sub i64 %15, %i.cz                        ; 2 uses
  %i.dk = lshr i64 %16, 3
  %i.dl = add nuw nsw i64 %i.dk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %16, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader120, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.dm = add i64 %i.cy, -8
  %i.dn = sub i64 %i.dm, %i.cz
  %i.do = and i64 %i.dn, -8
  %i.dp = add i64 %i.do, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.di, i64 %i.dp
  %scevgep116 = getelementptr i8, ptr %i.cx, i64 %i.dp
  %bound0 = icmp ult ptr %i.di, %scevgep116
  %bound1 = icmp ult ptr %i.cx, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader120, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dl, 4611686018427387900     ; 3 uses
  %i.dq = shl i64 %n.vec, 3                       ; 2 uses
  %i.dr = getelementptr i8, ptr %i.di, i64 %i.dq  ; 2 uses
  %i.ds = getelementptr i8, ptr %i.cx, i64 %i.dq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dt = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.di, i64 %i.dt ; 2 uses
  %next.gep117 = getelementptr i8, ptr %i.cx, i64 %i.dt ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.du = getelementptr i8, ptr %next.gep117, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep117, align 8, !alias.scope !86, !noalias !81
  %wide.load118 = load <2 x i64>, ptr %i.du, align 8, !alias.scope !86, !noalias !81
  %i.dv = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !89, !noalias !86
  store <2 x i64> %wide.load118, ptr %i.dv, align 8, !alias.scope !89, !noalias !86
  %i.dw = getelementptr i8, ptr %next.gep117, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep117, align 8, !alias.scope !86, !noalias !81
  store <2 x ptr> splat (ptr null), ptr %i.dw, align 8, !alias.scope !86, !noalias !81
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dx = icmp eq i64 %index.next, %n.vec
  br i1 %i.dx, label %middle.block, label %vector.body, !llvm.loop !91

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dl, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i.preheader120

.lr.ph.i.i.i.i.preheader120:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.di, %vector.memcheck ], [ %i.di, %.lr.ph.i.i.i.i.preheader ], [ %i.dr, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.cx, %vector.memcheck ], [ %i.cx, %.lr.ph.i.i.i.i.preheader ], [ %i.ds, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader120, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ea, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader120 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.dz, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader120 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.dy = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !84, !noalias !81
  store i64 %i.dy, ptr %.012.i.i.i.i, align 8, !alias.scope !81, !noalias !84
  store ptr null, ptr %.0911.i.i.i.i, align 8, !alias.scope !84, !noalias !81
  %i.dz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dz, %i.cs
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !92

_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc82
  %.0.lcssa.i.i.i.i = phi ptr [ %i.di, %.noexc82 ], [ %i.dr, %middle.block ], [ %i.ea, %.lr.ph.i.i.i.i ]
  %i.eb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.cx, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i
  %i.ec = load ptr, ptr %i.ct, align 8
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = sub i64 %i.ed, %i.cz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.ee) #25
  br label %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit

bb.r:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i, %bb.p, %bb.l
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.s:                                             ; preds = %.lr.ph, %bb.ap
  %i.eg = phi i32 [ 0, %.lr.ph ], [ %i.ge, %bb.ap ]
  %.03990 = phi i32 [ 0, %.lr.ph ], [ %i.gg, %bb.ap ]
  %.04089 = phi ptr [ %i.be, %.lr.ph ], [ %i.gf, %bb.ap ] ; 3 uses
  %i.eh = phi i64 [ %i.c, %.lr.ph ], [ %i.fc, %bb.ap ] ; 4 uses
  %i.ei = add i64 %i.eh, 4                        ; 3 uses
  %i.ej = icmp ugt i64 %i.ei, %i.j
  br i1 %i.ej, label %bb.t, label %bb.w

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
  %i.ek = landingpad { ptr, i32 }
          cleanup
  %i.el = load ptr, ptr %6, align 8               ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56: ; preds = %bb.v
  %i.eo = load i64, ptr %i.em, align 8
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.ep) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i57: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %.body

bb.w:                                             ; preds = %bb.s
  %i.eq = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.eh
  %.0.copyload.i55 = load i32, ptr %i.eq, align 1
  store i64 %i.ei, ptr %i.a, align 8
  %i.er = add nsw i32 %.0.copyload.i55, %1        ; 3 uses
  %i.es = add i64 %i.eh, 8                        ; 3 uses
  %i.et = icmp ugt i64 %i.es, %i.j
  br i1 %i.et, label %bb.x, label %bb.aa

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
  %i.eu = landingpad { ptr, i32 }
          cleanup
  %i.ev = load ptr, ptr %4, align 8               ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ex = icmp eq ptr %i.ev, %i.ew
  br i1 %i.ex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62: ; preds = %bb.z
  %i.ey = load i64, ptr %i.ew, align 8
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ez) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i63: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.body

bb.aa:                                            ; preds = %bb.w
  %i.fa = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ei
  %.0.copyload.i61 = load i32, ptr %i.fa, align 1
  store i64 %i.es, ptr %i.a, align 8
  %i.fb = add nsw i32 %.0.copyload.i61, %1        ; 3 uses
  %i.fc = add i64 %i.eh, 12                       ; 3 uses
  %i.fd = icmp ugt i64 %i.fc, %i.j
  br i1 %i.fd, label %bb.ab, label %bb.ae

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
  %i.fe = landingpad { ptr, i32 }
          cleanup
  %i.ff = load ptr, ptr %2, align 8               ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.fh = icmp eq ptr %i.ff, %i.fg
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70: ; preds = %bb.ad
  %i.fi = load i64, ptr %i.fg, align 8
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fj) #25
end_hunk_2
begin_hunk_3_@_ZN6Assimp11B3DImporter8ReadANIMEv:bb.a
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
  %min.iters.check = icmp ult i64 %9, 152
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
  %.fca.0.extract2 = extractvalue { <2 x float>, float } %i.a, 0 ; 2 uses
  %.fca.1.extract3 = extractvalue { <2 x float>, float } %i.a, 1 ; 2 uses
  %i.b = invoke { <2 x float>, float } @_ZN6Assimp11B3DImporter8ReadVec3Ev(ptr noundef nonnull align 8 dereferenceable(312) %0)
          to label %bb.c unwind label %bb.p       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.c = invoke { <2 x float>, <2 x float> } @_ZN6Assimp11B3DImporter8ReadQuatEv(ptr noundef nonnull align 8 dereferenceable(312) %0)
          to label %bb.d unwind label %bb.q       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.b, 1 ; 4 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.b, 0 ; 4 uses
  %i.d = extractvalue { <2 x float>, <2 x float> } %i.c, 0 ; 3 uses
  %i.e = extractvalue { <2 x float>, <2 x float> } %i.c, 1 ; 5 uses
  %.sroa.0220.0.vec.extract = extractelement <2 x float> %.fca.0.extract2, i64 0 ; 4 uses
  %.sroa.0220.4.vec.extract = extractelement <2 x float> %.fca.0.extract2, i64 1 ; 4 uses
  %.sroa.0218.0.vec.extract = extractelement <2 x float> %.fca.0.extract, i64 0 ; 2 uses
  %.sroa.0218.4.vec.extract = extractelement <2 x float> %.fca.0.extract, i64 1 ; 3 uses
  %.sroa.6217.8.vec.extract = extractelement <2 x float> %i.e, i64 0 ; 7 uses
  %.sroa.6217.12.vec.extract = extractelement <2 x float> %i.e, i64 1 ; 8 uses
  %i.f = fmul float %.sroa.6217.12.vec.extract, %.sroa.6217.12.vec.extract ; 2 uses
  %i.g = call float @llvm.fmuladd.f32(float %.sroa.6217.8.vec.extract, float %.sroa.6217.8.vec.extract, float %i.f)
  %i.h = call float @llvm.fmuladd.f32(float %i.g, float -2.000000e+00, float 1.000000e+00) ; 3 uses
  %.sroa.0216.4.vec.extract = extractelement <2 x float> %i.d, i64 1 ; 10 uses
  %.sroa.0216.0.vec.extract = extractelement <2 x float> %i.d, i64 0 ; 3 uses
  %i.i = fneg float %.sroa.0216.0.vec.extract     ; 3 uses
  %i.j = fmul float %.sroa.6217.12.vec.extract, %i.i
  %i.k = call float @llvm.fmuladd.f32(float %.sroa.0216.4.vec.extract, float %.sroa.6217.8.vec.extract, float %i.j)
  %i.l = fmul float %i.k, 2.000000e+00            ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.e, %i.d
  %i.m = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.n = call float @llvm.fmuladd.f32(float %.sroa.0216.4.vec.extract, float %.sroa.6217.12.vec.extract, float %i.m)
  %i.o = fmul float %i.n, 2.000000e+00            ; 3 uses
  %i.p = fmul float %.sroa.6217.12.vec.extract, %.sroa.0216.0.vec.extract
  %i.q = call float @llvm.fmuladd.f32(float %.sroa.0216.4.vec.extract, float %.sroa.6217.8.vec.extract, float %i.p)
  %i.r = fmul float %i.q, 2.000000e+00            ; 2 uses
  %i.s = call float @llvm.fmuladd.f32(float %.sroa.0216.4.vec.extract, float %.sroa.0216.4.vec.extract, float %i.f)
  %i.t = call float @llvm.fmuladd.f32(float %i.s, float -2.000000e+00, float 1.000000e+00) ; 2 uses
  %i.u = fmul float %.sroa.0216.4.vec.extract, %i.i
  %i.v = call float @llvm.fmuladd.f32(float %.sroa.6217.8.vec.extract, float %.sroa.6217.12.vec.extract, float %i.u)
  %i.w = fmul float %i.v, 2.000000e+00            ; 2 uses
  %i.x = fmul float %.sroa.6217.8.vec.extract, %i.i
  %i.y = call float @llvm.fmuladd.f32(float %.sroa.0216.4.vec.extract, float %.sroa.6217.12.vec.extract, float %i.x)
  %i.z = fmul float %i.y, 2.000000e+00            ; 4 uses
  %i.aa = fmul float %.sroa.0216.4.vec.extract, %.sroa.0216.0.vec.extract
  %i.ab = call float @llvm.fmuladd.f32(float %.sroa.6217.8.vec.extract, float %.sroa.6217.12.vec.extract, float %i.aa)
  %i.ac = fmul float %i.ab, 2.000000e+00          ; 4 uses
  %foldExtExtBinop515 = fmul <2 x float> %i.e, %i.e
  %i.ad = extractelement <2 x float> %foldExtExtBinop515, i64 0
  %i.ae = call float @llvm.fmuladd.f32(float %.sroa.0216.4.vec.extract, float %.sroa.0216.4.vec.extract, float %i.ad)
  %i.af = call float @llvm.fmuladd.f32(float %i.ae, float -2.000000e+00, float 1.000000e+00) ; 4 uses
  %i.ag = fmul float %i.r, 0.000000e+00           ; 2 uses
  %i.ah = fadd float %i.h, %i.ag
  %i.ai = call float @llvm.fmuladd.f32(float %i.z, float 0.000000e+00, float %i.ah)
  %i.aj = call float @llvm.fmuladd.f32(float %.sroa.0220.0.vec.extract, float 0.000000e+00, float %i.ai) ; 3 uses
  %i.ak = fmul float %i.t, 0.000000e+00           ; 2 uses
  %i.al = fadd float %i.l, %i.ak
  %i.am = call float @llvm.fmuladd.f32(float %i.ac, float 0.000000e+00, float %i.al)
  %i.an = call float @llvm.fmuladd.f32(float %.sroa.0220.0.vec.extract, float 0.000000e+00, float %i.am) ; 2 uses
  %i.ao = fmul float %i.w, 0.000000e+00           ; 2 uses
  %i.ap = fadd float %i.o, %i.ao
  %i.aq = call float @llvm.fmuladd.f32(float %i.af, float 0.000000e+00, float %i.ap)
  %i.ar = call float @llvm.fmuladd.f32(float %.sroa.0220.0.vec.extract, float 0.000000e+00, float %i.aq) ; 4 uses
  %i.as = fadd float %.sroa.0220.0.vec.extract, 0.000000e+00 ; 4 uses
  %i.at = call float @llvm.fmuladd.f32(float %i.h, float 0.000000e+00, float %i.r)
  %i.au = call float @llvm.fmuladd.f32(float %i.z, float 0.000000e+00, float %i.at)
  %i.av = call float @llvm.fmuladd.f32(float %.sroa.0220.4.vec.extract, float 0.000000e+00, float %i.au) ; 3 uses
  %i.aw = call float @llvm.fmuladd.f32(float %i.l, float 0.000000e+00, float %i.t)
  %i.ax = call float @llvm.fmuladd.f32(float %i.ac, float 0.000000e+00, float %i.aw)
  %i.ay = call float @llvm.fmuladd.f32(float %.sroa.0220.4.vec.extract, float 0.000000e+00, float %i.ax) ; 2 uses
  %i.az = call float @llvm.fmuladd.f32(float %i.o, float 0.000000e+00, float %i.w)
  %i.ba = call float @llvm.fmuladd.f32(float %i.af, float 0.000000e+00, float %i.az)
  %i.bb = call float @llvm.fmuladd.f32(float %.sroa.0220.4.vec.extract, float 0.000000e+00, float %i.ba) ; 4 uses
  %i.bc = fadd float %.sroa.0220.4.vec.extract, 0.000000e+00 ; 4 uses
end_hunk_3
begin_hunk_4_@_ZN6Assimp11B3DImporter8ReadNODEEP6aiNode:bb.a
  br label %_ZN8aiStringaSERKS_.exit

_ZN8aiStringaSERKS_.exit:                         ; preds = %bb.ac, %_ZNSt10unique_ptrI10aiNodeAnimSt14default_deleteIS0_EE5resetEPS0_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit46.thread
  %i.iy = phi ptr [ %i.ip, %bb.ac ], [ %i.ip, %_ZNSt10unique_ptrI10aiNodeAnimSt14default_deleteIS0_EE5resetEPS0_.exit ], [ %i.io, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit46.thread ]
  invoke void @_ZN6Assimp11B3DImporter8ReadKEYSEP10aiNodeAnim(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull %i.iy)
          to label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit58 unwind label %bb.u

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit46.thread225: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread224
  %i.iz = load i32, ptr %i.gd, align 1
  %i.ja = icmp ne i32 %i.iz, 1162104654
  %i.jb = zext i1 %i.ja to i32
  %i.jc = icmp eq i32 %i.jb, 0
  br i1 %i.jc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread, label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit58

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit46.thread225
  %i.jd = invoke noundef ptr @_ZN6Assimp11B3DImporter8ReadNODEEP6aiNode(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull %i.ep)
          to label %bb.ad unwind label %.loopexit232 ; 2 uses

bb.ad:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread
  %.not.i49 = icmp eq ptr %.sroa.10.0316, %.sroa.16.0317
  br i1 %.not.i49, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store ptr %i.jd, ptr %.sroa.10.0316, align 8
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.10.0316, i64 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit58

bb.af:                                            ; preds = %bb.ad
  %i.jf = ptrtoint ptr %.sroa.16.0317 to i64
  %i.jg = ptrtoint ptr %.sroa.0.0315 to i64
  %i.jh = sub i64 %i.jf, %i.jg                    ; 6 uses
  %i.ji = icmp eq i64 %i.jh, 9223372036854775800
  br i1 %i.ji, label %bb.ag, label %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i50

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #26
          to label %.noexc56 unwind label %.loopexit.split-lp233

.noexc56:                                         ; preds = %bb.ag
  unreachable

_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i50: ; preds = %bb.af
  %i.jj = ashr exact i64 %i.jh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i51 = call i64 @llvm.umax.i64(i64 %i.jj, i64 1)
  %i.jk = add nsw i64 %.sroa.speculated.i.i.i51, %i.jj ; 2 uses
  %i.jl = icmp ult i64 %i.jk, %i.jj
  %i.jm = call i64 @llvm.umin.i64(i64 %i.jk, i64 1152921504606846975)
  %i.jn = select i1 %i.jl, i64 1152921504606846975, i64 %i.jm ; 3 uses
  %.not.i.i.i52 = icmp ne i64 %i.jn, 0
  call void @llvm.assume(i1 %.not.i.i.i52)
  %i.jo = shl nuw nsw i64 %i.jn, 3
  %i.jp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jo) #27
          to label %.noexc57 unwind label %.loopexit232 ; 4 uses

.noexc57:                                         ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i50
  %i.jq = getelementptr inbounds i8, ptr %i.jp, i64 %i.jh ; 2 uses
  store ptr %i.jd, ptr %i.jq, align 8
  %i.jr = icmp sgt i64 %i.jh, 0
  br i1 %i.jr, label %bb.ah, label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i53

bb.ah:                                            ; preds = %.noexc57
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jp, ptr align 8 %.sroa.0.0315, i64 %i.jh, i1 false)
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i53

_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i53: ; preds = %bb.ah, %.noexc57
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %.not.i17.i.i54 = icmp eq ptr %.sroa.0.0315, null
  br i1 %.not.i17.i.i54, label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i55, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i53
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0315, i64 noundef %i.jh) #25
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i55

_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i55: ; preds = %bb.ai, %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i53
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.jn
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
  %.sroa.0.1 = phi ptr [ %.sroa.0.0315, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit46.thread225 ], [ %.sroa.0.0315, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit42.thread ], [ %.sroa.0.0315, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread ], [ %.sroa.0.0315, %_ZN8aiStringaSERKS_.exit ], [ %.sroa.0.0315, %bb.ae ], [ %.sroa.0.0315, %bb.m ], [ %i.jp, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i55 ], [ %.sroa.0.0315, %bb.n ], [ %.sroa.0.0315, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 7 uses
  %.sroa.10.1 = phi ptr [ %.sroa.10.0316, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit46.thread225 ], [ %.sroa.10.0316, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit42.thread ], [ %.sroa.10.0316, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread ], [ %.sroa.10.0316, %_ZN8aiStringaSERKS_.exit ], [ %i.je, %bb.ae ], [ %.sroa.10.0316, %bb.m ], [ %i.js, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i55 ], [ %.sroa.10.0316, %bb.n ], [ %.sroa.10.0316, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 3 uses
  %.sroa.16.1 = phi ptr [ %.sroa.16.0317, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit46.thread225 ], [ %.sroa.16.0317, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit42.thread ], [ %.sroa.16.0317, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread ], [ %.sroa.16.0317, %_ZN8aiStringaSERKS_.exit ], [ %.sroa.16.0317, %bb.ae ], [ %.sroa.16.0317, %bb.m ], [ %i.jt, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i55 ], [ %.sroa.16.0317, %bb.n ], [ %.sroa.16.0317, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 3 uses
  %i.ju = load ptr, ptr %i.fn, align 8
  %i.jv = getelementptr inbounds i8, ptr %i.ju, i64 -8 ; 3 uses
  %i.jw = load i64, ptr %i.jv, align 8            ; 2 uses
  store i64 %i.jw, ptr %i.fo, align 8
  store ptr %i.jv, ptr %i.fn, align 8
  %i.jx = load ptr, ptr %4, align 8               ; 2 uses
  %i.jy = icmp eq ptr %i.jx, %i.gb
  br i1 %i.jy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit58
  %i.jz = load i64, ptr %i.gb, align 8
  %i.ka = add i64 %i.jz, 1
  call void @_ZdlPvm(ptr noundef %i.jx, i64 noundef %i.ka) #25
  %.pre = load ptr, ptr %i.fn, align 8
  %.pre361 = load i64, ptr %i.fo, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.kb = phi i64 [ %.pre361, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.jw, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit58 ]
  %i.kc = phi ptr [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.jv, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit58 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.kd = getelementptr inbounds i8, ptr %i.kc, i64 -8
  %i.ke = load i64, ptr %i.kd, align 8
  %.not = icmp eq i64 %i.ke, %i.kb
  br i1 %.not, label %._crit_edge, label %bb.l, !llvm.loop !125

bb.aj:                                            ; preds = %.loopexit232, %.loopexit.split-lp233, %.loopexit, %.loopexit.split-lp, %bb.v, %bb.u
  %.sroa.096.3 = phi ptr [ %.sroa.096.1305, %.loopexit.split-lp ], [ %.sroa.096.0312, %bb.v ], [ %.sroa.096.0312, %bb.u ], [ %.sroa.096.1305, %.loopexit ], [ %.sroa.096.0312, %.loopexit232 ], [ %.sroa.096.0312, %.loopexit.split-lp233 ] ; 2 uses
  %.sroa.16105.3 = phi ptr [ %.sroa.16105.1307, %.loopexit.split-lp ], [ %.sroa.16105.0314, %bb.v ], [ %.sroa.16105.0314, %bb.u ], [ %.sroa.16105.1307, %.loopexit ], [ %.sroa.16105.0314, %.loopexit232 ], [ %.sroa.16105.0314, %.loopexit.split-lp233 ] ; 2 uses
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.he, %bb.v ], [ %i.hd, %bb.u ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit234, %.loopexit232 ], [ %lpad.loopexit.split-lp235, %.loopexit.split-lp233 ] ; 2 uses
  %i.kf = load ptr, ptr %4, align 8               ; 2 uses
  %i.kg = icmp eq ptr %i.kf, %i.gb
  br i1 %i.kg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.aj
  %i.kh = load i64, ptr %i.gb, align 8
  %i.ki = add i64 %i.kh, 1
  call void @_ZdlPvm(ptr noundef %i.kf, i64 noundef %i.ki) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59, %bb.t
  %.sroa.096.4 = phi ptr [ %.sroa.096.0312, %bb.t ], [ %.sroa.096.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59 ], [ %.sroa.096.3, %bb.aj ]
  %.sroa.16105.4 = phi ptr [ %.sroa.16105.0314, %bb.t ], [ %.sroa.16105.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59 ], [ %.sroa.16105.3, %bb.aj ]
  %.pn.pn.pn = phi { ptr, i32 } [ %i.hc, %bb.t ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59 ], [ %.pn.pn, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.ay

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pre362 = load ptr, ptr %3, align 8            ; 2 uses
  %i.kj = ptrtoint ptr %.pre362 to i64            ; 2 uses
  %i.kk = icmp eq ptr %.pre362, null
  br i1 %i.kk, label %_ZNSt6vectorISt10unique_ptrI10aiNodeAnimSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 4 uses
  %i.kn = load ptr, ptr %i.km, align 8            ; 5 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.kp = load ptr, ptr %i.ko, align 8
  %.not.i62 = icmp eq ptr %i.kn, %i.kp
  br i1 %.not.i62, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i64 %i.kj, ptr %i.kn, align 8
  store ptr null, ptr %3, align 8
  %i.kq = load ptr, ptr %i.km, align 8
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  store ptr %i.kr, ptr %i.km, align 8
  br label %_ZNSt6vectorISt10unique_ptrI10aiNodeAnimSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit

bb.am:                                            ; preds = %bb.ak
  %i.ks = load ptr, ptr %i.kl, align 8            ; 10 uses
  %i.kt = ptrtoint ptr %i.kn to i64               ; 3 uses
  %i.ku = ptrtoint ptr %i.ks to i64               ; 4 uses
  %i.kv = sub i64 %i.kt, %i.ku                    ; 3 uses
  %i.kw = icmp eq i64 %i.kv, 9223372036854775800
  br i1 %i.kw, label %bb.an, label %_ZNKSt6vectorISt10unique_ptrI10aiNodeAnimSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.an:                                            ; preds = %bb.am
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #26
          to label %.noexc82 unwind label %bb.ap

.noexc82:                                         ; preds = %bb.an
  unreachable

_ZNKSt6vectorISt10unique_ptrI10aiNodeAnimSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.am
  %i.kx = ashr exact i64 %i.kv, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.kx, i64 1)
  %i.ky = add nsw i64 %.sroa.speculated.i.i, %i.kx ; 2 uses
  %i.kz = icmp ult i64 %i.ky, %i.kx
  %i.la = call i64 @llvm.umin.i64(i64 %i.ky, i64 1152921504606846975)
  %i.lb = select i1 %i.kz, i64 1152921504606846975, i64 %i.la ; 3 uses
  %.not.i.i81 = icmp ne i64 %i.lb, 0
  call void @llvm.assume(i1 %.not.i.i81)
  %i.lc = shl nuw nsw i64 %i.lb, 3
  %i.ld = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lc) #27
          to label %.noexc83 unwind label %bb.ap  ; 10 uses

.noexc83:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrI10aiNodeAnimSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.kv
  store i64 %i.kj, ptr %i.le, align 8
  store ptr null, ptr %3, align 8
  %.not10.i.i.i.i = icmp eq ptr %i.ks, %i.kn
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI10aiNodeAnimSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc83
  %5 = add i64 %i.kt, -8
  %6 = sub i64 %5, %i.ku                          ; 2 uses
  %i.lf = lshr i64 %6, 3
  %i.lg = add nuw nsw i64 %i.lf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader517, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.lh = add i64 %i.kt, -8
  %i.li = sub i64 %i.lh, %i.ku
  %i.lj = and i64 %i.li, -8
  %i.lk = add i64 %i.lj, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ld, i64 %i.lk
  %scevgep510 = getelementptr i8, ptr %i.ks, i64 %i.lk
  %bound0 = icmp ult ptr %i.ld, %scevgep510
  %bound1 = icmp ult ptr %i.ks, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader517, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.lg, 4611686018427387900     ; 3 uses
  %i.ll = shl i64 %n.vec, 3                       ; 2 uses
  %i.lm = getelementptr i8, ptr %i.ld, i64 %i.ll  ; 2 uses
  %i.ln = getelementptr i8, ptr %i.ks, i64 %i.ll
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.lo = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ld, i64 %i.lo ; 2 uses
  %next.gep511 = getelementptr i8, ptr %i.ks, i64 %i.lo ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.lp = getelementptr i8, ptr %next.gep511, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep511, align 8, !alias.scope !131, !noalias !126
  %wide.load512 = load <2 x i64>, ptr %i.lp, align 8, !alias.scope !131, !noalias !126
  %i.lq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !134, !noalias !131
  store <2 x i64> %wide.load512, ptr %i.lq, align 8, !alias.scope !134, !noalias !131
  %i.lr = getelementptr i8, ptr %next.gep511, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep511, align 8, !alias.scope !131, !noalias !126
  store <2 x ptr> splat (ptr null), ptr %i.lr, align 8, !alias.scope !131, !noalias !126
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ls = icmp eq i64 %index.next, %n.vec
  br i1 %i.ls, label %middle.block, label %vector.body, !llvm.loop !136

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.lg, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrI10aiNodeAnimSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i.preheader517

.lr.ph.i.i.i.i.preheader517:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ld, %vector.memcheck ], [ %i.ld, %.lr.ph.i.i.i.i.preheader ], [ %i.lm, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ks, %vector.memcheck ], [ %i.ks, %.lr.ph.i.i.i.i.preheader ], [ %i.ln, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader517, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.lv, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader517 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.lu, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader517 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.lt = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !129, !noalias !126
  store i64 %i.lt, ptr %.012.i.i.i.i, align 8, !alias.scope !126, !noalias !129
  store ptr null, ptr %.0911.i.i.i.i, align 8, !alias.scope !129, !noalias !126
  %i.lu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.lu, %i.kn
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI10aiNodeAnimSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !137

_ZNSt6vectorISt10unique_ptrI10aiNodeAnimSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc83
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ld, %.noexc83 ], [ %i.lm, %middle.block ], [ %i.lv, %.lr.ph.i.i.i.i ]
  %i.lw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.ks, null
  br i1 %.not.i23.i, label %.noexc63, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorISt10unique_ptrI10aiNodeAnimSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i
  %i.lx = load ptr, ptr %i.ko, align 8
  %i.ly = ptrtoint ptr %i.lx to i64
  %i.lz = sub i64 %i.ly, %i.ku
  call void @_ZdlPvm(ptr noundef nonnull %i.ks, i64 noundef %i.lz) #25
  br label %.noexc63

.noexc63:                                         ; preds = %bb.ao, %_ZNSt6vectorISt10unique_ptrI10aiNodeAnimSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i
  store ptr %i.ld, ptr %i.kl, align 8
  store ptr %i.lw, ptr %i.km, align 8
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %i.lb
  store ptr %i.ma, ptr %i.ko, align 8
  br label %_ZNSt6vectorISt10unique_ptrI10aiNodeAnimSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit

bb.ap:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrI10aiNodeAnimSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i, %bb.an, %.lr.ph.preheader.i65, %.lr.ph.preheader.i
  %i.mb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

_ZNSt6vectorISt10unique_ptrI10aiNodeAnimSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit: ; preds = %.noexc63, %bb.al, %._crit_edge
  %i.mc = ptrtoint ptr %.sroa.10101.2 to i64
  %i.md = ptrtoint ptr %.sroa.096.2 to i64        ; 2 uses
  %i.me = sub i64 %i.mc, %i.md                    ; 3 uses
  %i.mf = lshr exact i64 %i.me, 2
  %i.mg = trunc i64 %i.mf to i32
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ep, i64 1120
  store i32 %i.mg, ptr %i.mh, align 8
  %i.mi = icmp eq ptr %.sroa.096.2, %.sroa.10101.2
  br i1 %i.mi, label %_ZN6Assimp11B3DImporter8to_arrayIjEEPT_RKSt6vectorIS2_SaIS2_EE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNSt6vectorISt10unique_ptrI10aiNodeAnimSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit
  %i.mj = call i64 @llvm.smax.i64(i64 %i.me, i64 -1)
  %i.mk = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.mj) #27
          to label %.noexc64 unwind label %bb.ap  ; 2 uses

.noexc64:                                         ; preds = %.lr.ph.preheader.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.mk, ptr align 4 %.sroa.096.2, i64 %i.me, i1 false)
  br label %_ZN6Assimp11B3DImporter8to_arrayIjEEPT_RKSt6vectorIS2_SaIS2_EE.exit

_ZN6Assimp11B3DImporter8to_arrayIjEEPT_RKSt6vectorIS2_SaIS2_EE.exit: ; preds = %.noexc64, %_ZNSt6vectorISt10unique_ptrI10aiNodeAnimSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit
  %.010.i = phi ptr [ null, %_ZNSt6vectorISt10unique_ptrI10aiNodeAnimSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit ], [ %i.mk, %.noexc64 ]
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ep, i64 1128
  store ptr %.010.i, ptr %i.ml, align 8
  %i.mm = ptrtoint ptr %.sroa.10.1 to i64
  %i.mn = ptrtoint ptr %.sroa.0.1 to i64          ; 2 uses
  %i.mo = sub i64 %i.mm, %i.mn                    ; 3 uses
  %i.mp = lshr exact i64 %i.mo, 3
  %i.mq = trunc i64 %i.mp to i32
  %i.mr = getelementptr inbounds nuw i8, ptr %i.ep, i64 1104
  store i32 %i.mq, ptr %i.mr, align 8
  %i.ms = icmp eq ptr %.sroa.0.1, %.sroa.10.1
  br i1 %i.ms, label %_ZN6Assimp11B3DImporter8to_arrayIP6aiNodeEEPT_RKSt6vectorIS4_SaIS4_EE.exit, label %.lr.ph.preheader.i65

.lr.ph.preheader.i65:                             ; preds = %_ZN6Assimp11B3DImporter8to_arrayIjEEPT_RKSt6vectorIS2_SaIS2_EE.exit
  %i.mt = call i64 @llvm.smax.i64(i64 %i.mo, i64 -1)
  %i.mu = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.mt) #27
          to label %.noexc67 unwind label %bb.ap  ; 2 uses

.noexc67:                                         ; preds = %.lr.ph.preheader.i65
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.mu, ptr align 8 %.sroa.0.1, i64 %i.mo, i1 false)
  br label %_ZN6Assimp11B3DImporter8to_arrayIP6aiNodeEEPT_RKSt6vectorIS4_SaIS4_EE.exit

_ZN6Assimp11B3DImporter8to_arrayIP6aiNodeEEPT_RKSt6vectorIS4_SaIS4_EE.exit: ; preds = %.noexc67, %_ZN6Assimp11B3DImporter8to_arrayIjEEPT_RKSt6vectorIS2_SaIS2_EE.exit
  %.010.i66 = phi ptr [ null, %_ZN6Assimp11B3DImporter8to_arrayIjEEPT_RKSt6vectorIS2_SaIS2_EE.exit ], [ %i.mu, %.noexc67 ]
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ep, i64 1112
  store ptr %.010.i66, ptr %i.mv, align 8
  %.not.i.i.i68 = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i.i.i68, label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZN6Assimp11B3DImporter8to_arrayIP6aiNodeEEPT_RKSt6vectorIS4_SaIS4_EE.exit
  %i.mw = ptrtoint ptr %.sroa.16.1 to i64
  %i.mx = sub i64 %i.mw, %i.mn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1, i64 noundef %i.mx) #25
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit

_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit:           ; preds = %_ZN6Assimp11B3DImporter8to_arrayIP6aiNodeEEPT_RKSt6vectorIS4_SaIS4_EE.exit, %bb.aq
  %.not.i.i.i69 = icmp eq ptr %.sroa.096.2, null
  br i1 %.not.i.i.i69, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit
  %i.my = ptrtoint ptr %.sroa.16105.2 to i64
  %i.mz = sub i64 %i.my, %i.md
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.096.2, i64 noundef %i.mz) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit.thread, %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit, %bb.ar
  %i.na = load ptr, ptr %3, align 8               ; 5 uses
  %.not.i70 = icmp eq ptr %i.na, null
  br i1 %.not.i70, label %_ZNSt10unique_ptrI10aiNodeAnimSt14default_deleteIS0_EED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 1032
  %i.nc = load ptr, ptr %i.nb, align 8            ; 2 uses
  %i.nd = icmp eq ptr %i.nc, null
  br i1 %i.nd, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @_ZdaPv(ptr noundef nonnull %i.nc) #25
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.ne = getelementptr inbounds nuw i8, ptr %i.na, i64 1048
  %i.nf = load ptr, ptr %i.ne, align 8            ; 2 uses
  %i.ng = icmp eq ptr %i.nf, null
  br i1 %i.ng, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @_ZdaPv(ptr noundef nonnull %i.nf) #25
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.nh = getelementptr inbounds nuw i8, ptr %i.na, i64 1064
  %i.ni = load ptr, ptr %i.nh, align 8            ; 2 uses
  %i.nj = icmp eq ptr %i.ni, null
  br i1 %i.nj, label %_ZNKSt14default_deleteI10aiNodeAnimEclEPS0_.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @_ZdaPv(ptr noundef nonnull %i.ni) #25
  br label %_ZNKSt14default_deleteI10aiNodeAnimEclEPS0_.exit.i

_ZNKSt14default_deleteI10aiNodeAnimEclEPS0_.exit.i: ; preds = %bb.ax, %bb.aw
  call void @_ZdlPvm(ptr noundef nonnull %i.na, i64 noundef 1080) #25
  br label %_ZNSt10unique_ptrI10aiNodeAnimSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI10aiNodeAnimSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %_ZNKSt14default_deleteI10aiNodeAnimEclEPS0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.nk = load ptr, ptr %2, align 8               ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
end_hunk_4
