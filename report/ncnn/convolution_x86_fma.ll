Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_fma?download=true
inline.NumInlined: 397
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 126
loop-unroll.NumRuntimeUnrolled: 142
loop-unroll.NumUnrolled: 268
begin_hunk_0_@_ZN4ncnn19Convolution_x86_fma15create_pipelineERKNS_6OptionE:bb.a
  store float %i.brp, ptr %i.brq, align 4, !tbaa !56
  %i.brr = load float, ptr %i.brl, align 4, !tbaa !56
  %i.brs = getelementptr inbounds nuw i8, ptr %.79301311.us.i, i64 24
  store float %i.brr, ptr %i.brs, align 4, !tbaa !56
  %i.brt = load float, ptr %i.brm, align 4, !tbaa !56
  %i.bru = getelementptr inbounds nuw i8, ptr %.79301311.us.i, i64 28
  store float %i.brt, ptr %i.bru, align 4, !tbaa !56
  %i.brv = getelementptr inbounds nuw i8, ptr %.79301311.us.i, i64 32 ; 2 uses
  %indvars.iv.next1725.i = add nuw nsw i64 %indvars.iv1724.i, 1 ; 2 uses
  %exitcond1728.not.i = icmp eq i64 %indvars.iv.next1725.i, %wide.trip.count1708.i
  br i1 %exitcond1728.not.i, label %._crit_edge1313.us.i, label %scalar.ph904, !llvm.loop !171

._crit_edge1313.us.i:                             ; preds = %scalar.ph904, %middle.block953
  %.lcssa659 = phi ptr [ %i.bqh, %middle.block953 ], [ %i.brv, %scalar.ph904 ] ; 2 uses
  %i.brw = getelementptr inbounds nuw [4 x i8], ptr %.29451315.us.i, i64 %i.akn ; 2 uses
  %i.brx = getelementptr inbounds nuw [4 x i8], ptr %.29421316.us.i, i64 %i.akn ; 2 uses
  %i.bry = getelementptr inbounds nuw [4 x i8], ptr %.29391317.us.i, i64 %i.akn ; 2 uses
  %i.brz = getelementptr inbounds nuw [4 x i8], ptr %.29361318.us.i, i64 %i.akn ; 2 uses
  %i.bsa = add nuw nsw i32 %.29211320.us.i, 2     ; 3 uses
  %i.bsb = or disjoint i32 %i.bsa, 1
  %i.bsc = icmp slt i32 %i.bsb, %i.cj
  br i1 %i.bsc, label %.preheader1099.us.i, label %.preheader1102.i, !llvm.loop !172

.preheader1102.i:                                 ; preds = %._crit_edge1313.us.i, %.preheader1103.i
  %.2945.lcssa.i = phi ptr [ %.1944.lcssa.i, %.preheader1103.i ], [ %i.brw, %._crit_edge1313.us.i ] ; 6 uses
  %.2942.lcssa.i = phi ptr [ %.1941.lcssa.i, %.preheader1103.i ], [ %i.brx, %._crit_edge1313.us.i ] ; 6 uses
  %.2939.lcssa.i = phi ptr [ %.1938.lcssa.i, %.preheader1103.i ], [ %i.bry, %._crit_edge1313.us.i ] ; 6 uses
  %.2936.lcssa.i = phi ptr [ %.1935.lcssa.i, %.preheader1103.i ], [ %i.brz, %._crit_edge1313.us.i ] ; 6 uses
  %.6929.lcssa.i = phi ptr [ %.3926.lcssa.i, %.preheader1103.i ], [ %.lcssa659, %._crit_edge1313.us.i ]
  %.2921.lcssa.i = phi i32 [ %.1920.lcssa.i, %.preheader1103.i ], [ %i.bsa, %._crit_edge1313.us.i ] ; 2 uses
  %i.bsd = icmp sge i32 %.2921.lcssa.i, %i.cj
  %brmerge1469.i = or i1 %i.ako, %i.bsd
  br i1 %brmerge1469.i, label %._crit_edge1339.split.i, label %.preheader1098.i.preheader

.preheader1098.i.preheader:                       ; preds = %.preheader1102.i
  %scevgep794 = getelementptr i8, ptr %.2945.lcssa.i, i64 %i.alj
  %scevgep795 = getelementptr i8, ptr %.2942.lcssa.i, i64 %i.alj
  %scevgep796 = getelementptr i8, ptr %.2939.lcssa.i, i64 %i.alj
  %scevgep797 = getelementptr i8, ptr %.2936.lcssa.i, i64 %i.alj
  br label %.preheader1098.i

.preheader1098.i:                                 ; preds = %.preheader1098.i.preheader, %._crit_edge1335.i
  %.39221338.i = phi i32 [ %i.btb, %._crit_edge1335.i ], [ %.2921.lcssa.i, %.preheader1098.i.preheader ]
  %.99321337.i = phi ptr [ %.lcssa665, %._crit_edge1335.i ], [ %.6929.lcssa.i, %.preheader1098.i.preheader ] ; 9 uses
  br i1 %min.iters.check799, label %scalar.ph798.preheader, label %vector.memcheck800

vector.memcheck800:                               ; preds = %.preheader1098.i
  %i.bse = getelementptr i8, ptr %.99321337.i, i64 %i.alk ; 4 uses
  %bound0801 = icmp ult ptr %.99321337.i, %scevgep797
  %bound1802 = icmp ult ptr %.2936.lcssa.i, %i.bse
  %found.conflict803 = and i1 %bound0801, %bound1802
  %bound0804 = icmp ult ptr %.99321337.i, %scevgep796
  %bound1805 = icmp ult ptr %.2939.lcssa.i, %i.bse
  %found.conflict806 = and i1 %bound0804, %bound1805
  %conflict.rdx807 = or i1 %found.conflict803, %found.conflict806
  %bound0808 = icmp ult ptr %.99321337.i, %scevgep795
  %bound1809 = icmp ult ptr %.2942.lcssa.i, %i.bse
  %found.conflict810 = and i1 %bound0808, %bound1809
  %conflict.rdx811 = or i1 %conflict.rdx807, %found.conflict810
  %bound0812 = icmp ult ptr %.99321337.i, %scevgep794
  %bound1813 = icmp ult ptr %.2945.lcssa.i, %i.bse
  %found.conflict814 = and i1 %bound0812, %bound1813
  %conflict.rdx815 = or i1 %conflict.rdx811, %found.conflict814
  br i1 %conflict.rdx815, label %scalar.ph798.preheader, label %vector.ph816

vector.ph816:                                     ; preds = %vector.memcheck800
  %i.bsf = getelementptr i8, ptr %.99321337.i, i64 %i.alr ; 2 uses
  br label %vector.body818

vector.body818:                                   ; preds = %vector.body818, %vector.ph816
  %index819 = phi i64 [ 0, %vector.ph816 ], [ %index.next826, %vector.body818 ] ; 6 uses
  %i.bsg = shl i64 %index819, 4
  %next.gep820 = getelementptr i8, ptr %.99321337.i, i64 %i.bsg
  %i.bsh = getelementptr inbounds nuw [4 x i8], ptr %.2945.lcssa.i, i64 %index819
  %i.bsi = getelementptr inbounds nuw [4 x i8], ptr %.2942.lcssa.i, i64 %index819
  %i.bsj = getelementptr inbounds nuw [4 x i8], ptr %.2939.lcssa.i, i64 %index819
  %i.bsk = getelementptr inbounds nuw [4 x i8], ptr %.2936.lcssa.i, i64 %index819
  %wide.load821 = load <8 x float>, ptr %i.bsh, align 4, !tbaa !56, !alias.scope !279
  %wide.load822 = load <8 x float>, ptr %i.bsi, align 4, !tbaa !56, !alias.scope !280
  %wide.load823 = load <8 x float>, ptr %i.bsj, align 4, !tbaa !56, !alias.scope !281
  %wide.load824 = load <8 x float>, ptr %i.bsk, align 4, !tbaa !56, !alias.scope !282
  %i.bsl = shufflevector <8 x float> %wide.load821, <8 x float> %wide.load822, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bsm = shufflevector <8 x float> %wide.load823, <8 x float> %wide.load824, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec825 = shufflevector <16 x float> %i.bsl, <16 x float> %i.bsm, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec825, ptr %next.gep820, align 4, !tbaa !56, !alias.scope !283, !noalias !284
  %index.next826 = add nuw i64 %index819, 8       ; 2 uses
  %i.bsn = icmp eq i64 %index.next826, %n.vec817
  br i1 %i.bsn, label %middle.block827, label %vector.body818, !llvm.loop !179

middle.block827:                                  ; preds = %vector.body818
  br i1 %cmp.n828, label %._crit_edge1335.i, label %scalar.ph798.preheader

scalar.ph798.preheader:                           ; preds = %vector.memcheck800, %.preheader1098.i, %middle.block827
  %indvars.iv1729.i.ph = phi i64 [ 0, %vector.memcheck800 ], [ 0, %.preheader1098.i ], [ %n.vec817, %middle.block827 ] ; 7 uses
  %.109331333.i.ph = phi ptr [ %.99321337.i, %vector.memcheck800 ], [ %.99321337.i, %.preheader1098.i ], [ %i.bsf, %middle.block827 ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph798.prol.loopexit, label %scalar.ph798.prol

scalar.ph798.prol:                                ; preds = %scalar.ph798.preheader
  %i.bso = getelementptr inbounds nuw [4 x i8], ptr %.2945.lcssa.i, i64 %indvars.iv1729.i.ph
  %i.bsp = getelementptr inbounds nuw [4 x i8], ptr %.2942.lcssa.i, i64 %indvars.iv1729.i.ph
  %i.bsq = getelementptr inbounds nuw [4 x i8], ptr %.2939.lcssa.i, i64 %indvars.iv1729.i.ph
  %i.bsr = getelementptr inbounds nuw [4 x i8], ptr %.2936.lcssa.i, i64 %indvars.iv1729.i.ph
  %i.bss = load float, ptr %i.bso, align 4, !tbaa !56
  store float %i.bss, ptr %.109331333.i.ph, align 4, !tbaa !56
  %i.bst = load float, ptr %i.bsp, align 4, !tbaa !56
  %i.bsu = getelementptr inbounds nuw i8, ptr %.109331333.i.ph, i64 4
  store float %i.bst, ptr %i.bsu, align 4, !tbaa !56
  %i.bsv = load float, ptr %i.bsq, align 4, !tbaa !56
  %i.bsw = getelementptr inbounds nuw i8, ptr %.109331333.i.ph, i64 8
  store float %i.bsv, ptr %i.bsw, align 4, !tbaa !56
  %i.bsx = load float, ptr %i.bsr, align 4, !tbaa !56
  %i.bsy = getelementptr inbounds nuw i8, ptr %.109331333.i.ph, i64 12
  store float %i.bsx, ptr %i.bsy, align 4, !tbaa !56
  %i.bsz = getelementptr inbounds nuw i8, ptr %.109331333.i.ph, i64 16 ; 2 uses
  %indvars.iv.next1730.i.prol = or disjoint i64 %indvars.iv1729.i.ph, 1
  br label %scalar.ph798.prol.loopexit

scalar.ph798.prol.loopexit:                       ; preds = %scalar.ph798.prol, %scalar.ph798.preheader
  %.lcssa1557.unr = phi ptr [ poison, %scalar.ph798.preheader ], [ %i.bsz, %scalar.ph798.prol ]
  %indvars.iv1729.i.unr = phi i64 [ %indvars.iv1729.i.ph, %scalar.ph798.preheader ], [ %indvars.iv.next1730.i.prol, %scalar.ph798.prol ]
  %.109331333.i.unr = phi ptr [ %.109331333.i.ph, %scalar.ph798.preheader ], [ %i.bsz, %scalar.ph798.prol ]
  %i.bta = icmp eq i64 %indvars.iv1729.i.ph, %i.als
  br i1 %i.bta, label %._crit_edge1335.i, label %scalar.ph798

._crit_edge1335.i:                                ; preds = %scalar.ph798.prol.loopexit, %scalar.ph798, %middle.block827
  %.lcssa665 = phi ptr [ %i.bsf, %middle.block827 ], [ %.lcssa1557.unr, %scalar.ph798.prol.loopexit ], [ %i.btz, %scalar.ph798 ]
  %i.btb = add nuw nsw i32 %.39221338.i, 1        ; 2 uses
  %exitcond1734.not.i = icmp eq i32 %i.btb, %i.cj
  br i1 %exitcond1734.not.i, label %._crit_edge1339.split.i, label %.preheader1098.i, !llvm.loop !180

scalar.ph798:                                     ; preds = %scalar.ph798.prol.loopexit, %scalar.ph798
  %indvars.iv1729.i = phi i64 [ %indvars.iv.next1730.i.1, %scalar.ph798 ], [ %indvars.iv1729.i.unr, %scalar.ph798.prol.loopexit ] ; 6 uses
  %.109331333.i = phi ptr [ %i.btz, %scalar.ph798 ], [ %.109331333.i.unr, %scalar.ph798.prol.loopexit ] ; 9 uses
  %i.btc = getelementptr inbounds nuw [4 x i8], ptr %.2945.lcssa.i, i64 %indvars.iv1729.i
  %i.btd = getelementptr inbounds nuw [4 x i8], ptr %.2942.lcssa.i, i64 %indvars.iv1729.i
  %i.bte = getelementptr inbounds nuw [4 x i8], ptr %.2939.lcssa.i, i64 %indvars.iv1729.i
  %i.btf = getelementptr inbounds nuw [4 x i8], ptr %.2936.lcssa.i, i64 %indvars.iv1729.i
  %i.btg = load float, ptr %i.btc, align 4, !tbaa !56
  store float %i.btg, ptr %.109331333.i, align 4, !tbaa !56
  %i.bth = load float, ptr %i.btd, align 4, !tbaa !56
  %i.bti = getelementptr inbounds nuw i8, ptr %.109331333.i, i64 4
  store float %i.bth, ptr %i.bti, align 4, !tbaa !56
  %i.btj = load float, ptr %i.bte, align 4, !tbaa !56
  %i.btk = getelementptr inbounds nuw i8, ptr %.109331333.i, i64 8
  store float %i.btj, ptr %i.btk, align 4, !tbaa !56
  %i.btl = load float, ptr %i.btf, align 4, !tbaa !56
  %i.btm = getelementptr inbounds nuw i8, ptr %.109331333.i, i64 12
  store float %i.btl, ptr %i.btm, align 4, !tbaa !56
  %i.btn = getelementptr inbounds nuw i8, ptr %.109331333.i, i64 16
  %indvars.iv.next1730.i = add nuw nsw i64 %indvars.iv1729.i, 1 ; 4 uses
  %i.bto = getelementptr inbounds nuw [4 x i8], ptr %.2945.lcssa.i, i64 %indvars.iv.next1730.i
  %i.btp = getelementptr inbounds nuw [4 x i8], ptr %.2942.lcssa.i, i64 %indvars.iv.next1730.i
  %i.btq = getelementptr inbounds nuw [4 x i8], ptr %.2939.lcssa.i, i64 %indvars.iv.next1730.i
  %i.btr = getelementptr inbounds nuw [4 x i8], ptr %.2936.lcssa.i, i64 %indvars.iv.next1730.i
  %i.bts = load float, ptr %i.bto, align 4, !tbaa !56
  store float %i.bts, ptr %i.btn, align 4, !tbaa !56
  %i.btt = load float, ptr %i.btp, align 4, !tbaa !56
  %i.btu = getelementptr inbounds nuw i8, ptr %.109331333.i, i64 20
  store float %i.btt, ptr %i.btu, align 4, !tbaa !56
  %i.btv = load float, ptr %i.btq, align 4, !tbaa !56
  %i.btw = getelementptr inbounds nuw i8, ptr %.109331333.i, i64 24
  store float %i.btv, ptr %i.btw, align 4, !tbaa !56
  %i.btx = load float, ptr %i.btr, align 4, !tbaa !56
  %i.bty = getelementptr inbounds nuw i8, ptr %.109331333.i, i64 28
  store float %i.btx, ptr %i.bty, align 4, !tbaa !56
  %i.btz = getelementptr inbounds nuw i8, ptr %.109331333.i, i64 32 ; 2 uses
  %indvars.iv.next1730.i.1 = add nuw nsw i64 %indvars.iv1729.i, 2 ; 2 uses
  %exitcond1733.not.i.1 = icmp eq i64 %indvars.iv.next1730.i.1, %wide.trip.count1708.i
  br i1 %exitcond1733.not.i.1, label %._crit_edge1335.i, label %scalar.ph798, !llvm.loop !181

._crit_edge1339.split.i:                          ; preds = %._crit_edge1335.i, %.preheader1102.i, %.preheader1099.lr.ph.i
  %indvars.iv.next1738.i = add nuw nsw i64 %indvars.iv1737.i, 4 ; 3 uses
  %i.bua = icmp slt i64 %indvars.iv.next1738.i, %invariant.op.i
  %indvars.iv.next1690.i = add i32 %indvars.iv1689.i, %i.akv
  %indvars.iv.next1694.i = add i32 %indvars.iv1693.i, %i.akv
  %indvars.iv.next1698.i = add i32 %indvars.iv1697.i, %i.akv
  %indvars.iv.next1702.i = add i32 %indvars.iv1701.i, %i.akv
  %indvars.iv.next1736.i = add i32 %indvars.iv1735.i, 4
  br i1 %i.bua, label %_ZN4ncnn3MatD2Ev.exit1006.i, label %.preheader1097.loopexit.i, !llvm.loop !182

.preheader1089.loopexit.i:                        ; preds = %._crit_edge1402.split.i
  %i.bub = trunc nuw nsw i64 %indvars.iv.next1776.i to i32
  br label %.preheader1089.i

.preheader1089.i:                                 ; preds = %.preheader1089.loopexit.i, %.preheader1097.i
  %.2837.lcssa.i = phi i32 [ %.1836.lcssa.i, %.preheader1097.i ], [ %i.bub, %.preheader1089.loopexit.i ] ; 4 uses
  %i.buc = icmp slt i32 %.2837.lcssa.i, %i.rh
  br i1 %i.buc, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.i, label %_ZN4ncnnL35convolution_transform_kernel_packedERKNS_3MatERS0_iiii.exit

_ZN4ncnn3MatD2Ev.exit.lr.ph.i:                    ; preds = %.preheader1089.i
  %i.bud = load ptr, ptr %i.acg, align 8, !tbaa !37 ; 17 uses
  %i.bue = mul i32 %i.aci, %i.cj                  ; 3 uses
  %i.buf = load ptr, ptr %i.ach, align 8, !tbaa !37, !noalias !285
  %i.bug = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.buh = load i64, ptr %i.bug, align 8, !tbaa !38, !noalias !285
  %i.bui = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.buj = load i64, ptr %i.bui, align 8, !tbaa !79, !noalias !285
  %factor.op.mul1464.i = mul i64 %i.buj, %i.buh
  %i.buk = icmp sgt i32 %i.cj, 7
  %i.bul = icmp sgt i32 %i.aci, 0                 ; 3 uses
  %i.bum = sext i32 %i.aci to i64                 ; 43 uses
  %i.bun = shl i32 %i.aci, 3                      ; 2 uses
  %i.buo = sext i32 %i.bun to i64                 ; 3 uses
  %i.bup = shl i32 %i.aci, 2                      ; 2 uses
  %i.buq = sext i32 %i.bup to i64                 ; 3 uses
  %i.bur = shl i32 %i.aci, 1                      ; 2 uses
  %i.bus = sext i32 %i.bur to i64                 ; 2 uses
  %i.but = icmp slt i32 %i.aci, 1
  %i.buu = add i32 %i.cj, -8                      ; 3 uses
  %i.buv = lshr i32 %i.buu, 1
  %i.buw = and i32 %i.buv, 2147483644
  %narrow1838.i = add nuw i32 %i.buw, 4
  %i.bux = zext i32 %narrow1838.i to i64
  %i.buy = mul nsw i64 %i.buo, %i.bux
  %scevgep1778.i = getelementptr i8, ptr %i.bud, i64 %i.buy
  %i.buz = mul i32 %i.bue, %.2837.lcssa.i
  %i.bva = and i32 %i.buu, -8
  %i.bvb = add nuw i32 %i.bva, 8                  ; 4 uses
  %i.bvc = add i32 %i.cj, -4
  %i.bvd = sext i32 %.2837.lcssa.i to i64
  %wide.trip.count1810.i = sext i32 %i.rh to i64
  %i.bve = or disjoint i32 %i.bvb, 3
  %i.bvf = icmp slt i32 %i.bve, %i.cj
  %wide.trip.count1786.i = zext i32 %i.aci to i64 ; 27 uses
  %i.bvg = shl nuw nsw i64 %wide.trip.count1786.i, 2 ; 2 uses
  %i.bvh = shl nsw i64 %i.bus, 2
  %i.bvi = add i32 %i.cj, -2
  %i.bvj = shl nsw i64 %i.bum, 2                  ; 2 uses
  %i.bvk = shl nuw nsw i64 %wide.trip.count1786.i, 3
  %i.bvl = shl nuw nsw i64 %wide.trip.count1786.i, 2 ; 4 uses
  %i.bvm = shl nsw i64 %i.buq, 2
  %i.bvn = add i32 %i.cj, -4
  %16 = shl nsw i64 %i.bum, 2                     ; 2 uses
  %i.bvo = shl nsw i64 %i.bum, 3                  ; 2 uses
  %i.bvp = mul nsw i64 %i.bum, 12                 ; 2 uses
  %i.bvq = shl nuw nsw i64 %wide.trip.count1786.i, 4
  %i.bvr = lshr i32 %i.buu, 3
  %i.bvs = zext nneg i32 %i.bvr to i64
  %i.bvt = mul nsw i64 %i.bvs, %i.buo
  %i.bvu = shl nsw i64 %i.bvt, 2                  ; 8 uses
  %i.bvv = shl nuw nsw i64 %wide.trip.count1786.i, 2 ; 8 uses
  %i.bvw = getelementptr i8, ptr %i.bud, i64 %i.bvu
  %scevgep1416 = getelementptr i8, ptr %i.bvw, i64 %i.bvv
  %i.bvx = mul i32 %.2837.lcssa.i, %i.ri
  %i.bvy = mul i32 %i.bvx, %i.rk
  %i.bvz = mul i32 %i.bvy, %i.cj
  %i.bwa = mul i32 %i.ri, %i.rk
  %i.bwb = mul i32 %i.bwa, %i.cj
  %i.bwc = shl nsw i64 %i.bum, 2                  ; 2 uses
  %i.bwd = getelementptr i8, ptr %i.bud, i64 %i.bvu
  %i.bwe = getelementptr i8, ptr %i.bwd, i64 %i.bwc
  %scevgep1418 = getelementptr i8, ptr %i.bwe, i64 %i.bvv
  %scevgep1420 = getelementptr i8, ptr %i.bud, i64 %i.bwc
  %i.bwf = shl nsw i64 %i.bum, 3                  ; 2 uses
  %i.bwg = getelementptr i8, ptr %i.bud, i64 %i.bvu
  %i.bwh = getelementptr i8, ptr %i.bwg, i64 %i.bwf
  %scevgep1422 = getelementptr i8, ptr %i.bwh, i64 %i.bvv
  %scevgep1424 = getelementptr i8, ptr %i.bud, i64 %i.bwf
  %i.bwi = mul nsw i64 %i.bum, 12                 ; 2 uses
  %i.bwj = getelementptr i8, ptr %i.bud, i64 %i.bvu
  %i.bwk = getelementptr i8, ptr %i.bwj, i64 %i.bwi
  %scevgep1426 = getelementptr i8, ptr %i.bwk, i64 %i.bvv
  %scevgep1428 = getelementptr i8, ptr %i.bud, i64 %i.bwi
  %i.bwl = shl nsw i64 %i.bum, 4                  ; 2 uses
  %i.bwm = getelementptr i8, ptr %i.bud, i64 %i.bvu
  %i.bwn = getelementptr i8, ptr %i.bwm, i64 %i.bwl
  %scevgep1430 = getelementptr i8, ptr %i.bwn, i64 %i.bvv
  %scevgep1432 = getelementptr i8, ptr %i.bud, i64 %i.bwl
  %i.bwo = mul nsw i64 %i.bum, 20                 ; 2 uses
  %i.bwp = getelementptr i8, ptr %i.bud, i64 %i.bvu
  %i.bwq = getelementptr i8, ptr %i.bwp, i64 %i.bwo
  %scevgep1434 = getelementptr i8, ptr %i.bwq, i64 %i.bvv
  %scevgep1436 = getelementptr i8, ptr %i.bud, i64 %i.bwo
  %i.bwr = mul nsw i64 %i.bum, 24                 ; 2 uses
  %i.bws = getelementptr i8, ptr %i.bud, i64 %i.bvu
  %i.bwt = getelementptr i8, ptr %i.bws, i64 %i.bwr
  %scevgep1438 = getelementptr i8, ptr %i.bwt, i64 %i.bvv
  %scevgep1440 = getelementptr i8, ptr %i.bud, i64 %i.bwr
  %i.bwu = mul nsw i64 %i.bum, 28                 ; 2 uses
  %i.bwv = getelementptr i8, ptr %i.bud, i64 %i.bvu
  %i.bww = getelementptr i8, ptr %i.bwv, i64 %i.bwu
  %scevgep1442 = getelementptr i8, ptr %i.bww, i64 %i.bvv
  %scevgep1444 = getelementptr i8, ptr %i.bud, i64 %i.bwu
  %i.bwx = shl nuw nsw i64 %wide.trip.count1786.i, 5
  %min.iters.check1447 = icmp ult i32 %i.aci, 16
  %stride.check1452 = icmp slt i32 %i.bun, 0
  %n.vec1482 = and i64 %wide.trip.count1786.i, 2147483640 ; 4 uses
  %i.bwy = shl nuw nsw i64 %n.vec1482, 5
  %cmp.n1497 = icmp eq i64 %n.vec1482, %wide.trip.count1786.i
  %min.iters.check1319 = icmp ult i32 %i.aci, 8
  %stride.check1324 = icmp slt i32 %i.bup, 0
  %n.vec1338 = and i64 %wide.trip.count1786.i, 2147483640 ; 4 uses
  %i.bwz = shl nuw nsw i64 %n.vec1338, 4
  %cmp.n1349 = icmp eq i64 %n.vec1338, %wide.trip.count1786.i
  %xtraiter1592 = and i64 %wide.trip.count1786.i, 1
  %lcmp.mod1593.not = icmp eq i64 %xtraiter1592, 0
  %i.bxa = add nsw i64 %wide.trip.count1786.i, -1
  %min.iters.check1251 = icmp ult i32 %i.aci, 8
  %stride.check1256 = icmp slt i32 %i.bur, 0
  %n.vec1262 = and i64 %wide.trip.count1786.i, 2147483644 ; 4 uses
  %i.bxb = shl nuw nsw i64 %n.vec1262, 3
  %cmp.n1275 = icmp eq i64 %n.vec1262, %wide.trip.count1786.i
  %xtraiter1595 = and i64 %wide.trip.count1786.i, 3 ; 2 uses
  %lcmp.mod1596.not = icmp eq i64 %xtraiter1595, 0
  %min.iters.check1207 = icmp ult i32 %i.aci, 8
  %min.iters.check1209 = icmp ult i32 %i.aci, 32
  %i.bxc = and i64 %wide.trip.count1786.i, 24
  %n.vec1211 = and i64 %wide.trip.count1786.i, 2147483616 ; 5 uses
  %i.bxd = shl nuw nsw i64 %n.vec1211, 2
  %cmp.n1221 = icmp eq i64 %n.vec1211, %wide.trip.count1786.i
  %min.epilog.iters.check = icmp eq i64 %i.bxc, 0
  %n.vec1222 = and i64 %wide.trip.count1786.i, 2147483640 ; 4 uses
  %i.bxe = shl nuw nsw i64 %n.vec1222, 2
  %cmp.n1227 = icmp eq i64 %n.vec1222, %wide.trip.count1786.i
  %xtraiter1598 = and i64 %wide.trip.count1786.i, 7 ; 2 uses
  %lcmp.mod1599.not = icmp eq i64 %xtraiter1598, 0
  br label %_ZN4ncnn3MatD2Ev.exit.i226

_ZN4ncnn3MatD2Ev.exit1005.i:                      ; preds = %._crit_edge1402.split.i, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i
  %indvars.iv1775.i = phi i64 [ %i.bgo, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %indvars.iv.next1776.i, %._crit_edge1402.split.i ] ; 2 uses
  %indvars.iv1747.i = phi i32 [ %i.bgk, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %indvars.iv.next1748.i, %._crit_edge1402.split.i ] ; 2 uses
  %indvars.iv1743.i = phi i32 [ %i.bgi, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %indvars.iv.next1744.i, %._crit_edge1402.split.i ] ; 2 uses
  %i.bxf = phi i32 [ %i.bfa, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %i.chi, %._crit_edge1402.split.i ]
  %i.bxg = sext i32 %indvars.iv1743.i to i64
  %i.bxh = shl nsw i64 %i.bxg, 2
  %scevgep1745.i = getelementptr i8, ptr %scevgep1742.i, i64 %i.bxh ; 2 uses
  %i.bxi = sext i32 %indvars.iv1747.i to i64
  %i.bxj = shl nsw i64 %i.bxi, 2
  %scevgep1749.i = getelementptr i8, ptr %scevgep1742.i, i64 %i.bxj ; 2 uses
  %i.bxk = trunc i64 %indvars.iv1775.i to i32     ; 4 uses
  %i.bxl = mul i32 %i.bfd, %i.bxk
  %i.bxm = sext i32 %i.bxl to i64
  %i.bxn = getelementptr inbounds [4 x i8], ptr %i.bfc, i64 %i.bxm ; 2 uses
  %i.bxo = mul i32 %i.bxf, %i.bfd
  %i.bxp = sext i32 %i.bxo to i64
  %i.bxq = getelementptr inbounds [4 x i8], ptr %i.bfc, i64 %i.bxp ; 2 uses
  %i.bxr = lshr i32 %i.bxk, 3
  %i.bxs = lshr i32 %i.bxk, 2
  %i.bxt = and i32 %i.bxs, 1
  %i.bxu = add nuw nsw i32 %i.bxt, %i.bxr
  %i.bxv = lshr i32 %i.bxk, 1
  %i.bxw = and i32 %i.bxv, 1
  %i.bxx = add nuw nsw i32 %i.bxu, %i.bxw
  %i.bxy = zext nneg i32 %i.bxx to i64
  %.reass1406.i = mul i64 %factor.op.mul1405.i, %i.bxy
  %i.bxz = getelementptr inbounds nuw i8, ptr %i.bfe, i64 %.reass1406.i ; 4 uses
  br i1 %i.bfj, label %.preheader1093.lr.ph.i, label %.preheader1096.i

.preheader1093.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1005.i
  br i1 %i.bfk, label %.preheader1093.us.i, label %.preheader1096.thread.i

.preheader1093.us.i:                              ; preds = %.preheader1093.lr.ph.i, %._crit_edge1346.us.i
  %.08611351.us.i = phi i32 [ %i.bzy, %._crit_edge1346.us.i ], [ 0, %.preheader1093.lr.ph.i ]
  %.08651350.us.i = phi ptr [ %i.bzv, %._crit_edge1346.us.i ], [ %i.bxz, %.preheader1093.lr.ph.i ]
  %.08741349.us.i = phi ptr [ %i.bzx, %._crit_edge1346.us.i ], [ %i.bxq, %.preheader1093.lr.ph.i ] ; 2 uses
  %.08771348.us.i = phi ptr [ %i.bzw, %._crit_edge1346.us.i ], [ %i.bxn, %.preheader1093.lr.ph.i ] ; 2 uses
  br label %bb.kd

bb.kd:                                            ; preds = %bb.kd, %.preheader1093.us.i
  %indvars.iv1750.i = phi i64 [ 0, %.preheader1093.us.i ], [ %indvars.iv.next1751.i, %bb.kd ] ; 3 uses
  %.18661344.us.i = phi ptr [ %.08651350.us.i, %.preheader1093.us.i ], [ %i.bzv, %bb.kd ] ; 17 uses
  %i.bya = getelementptr inbounds nuw [4 x i8], ptr %.08771348.us.i, i64 %indvars.iv1750.i ; 8 uses
  %i.byb = getelementptr inbounds nuw [4 x i8], ptr %.08741349.us.i, i64 %indvars.iv1750.i ; 8 uses
  %i.byc = load float, ptr %i.bya, align 4, !tbaa !56
  store float %i.byc, ptr %.18661344.us.i, align 4, !tbaa !56
  %i.byd = getelementptr inbounds nuw [4 x i8], ptr %i.bya, i64 %i.bfl
  %i.bye = load float, ptr %i.byd, align 4, !tbaa !56
  %i.byf = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 4
  store float %i.bye, ptr %i.byf, align 4, !tbaa !56
  %i.byg = getelementptr inbounds nuw [4 x i8], ptr %i.bya, i64 %i.bfn
  %i.byh = load float, ptr %i.byg, align 4, !tbaa !56
  %i.byi = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 8
  store float %i.byh, ptr %i.byi, align 4, !tbaa !56
  %i.byj = getelementptr inbounds nuw [4 x i8], ptr %i.bya, i64 %i.bfp
  %i.byk = load float, ptr %i.byj, align 4, !tbaa !56
  %i.byl = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 12
  store float %i.byk, ptr %i.byl, align 4, !tbaa !56
  %i.bym = getelementptr inbounds nuw [4 x i8], ptr %i.bya, i64 %i.bfr
  %i.byn = load float, ptr %i.bym, align 4, !tbaa !56
  %i.byo = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 16
  store float %i.byn, ptr %i.byo, align 4, !tbaa !56
  %i.byp = getelementptr inbounds nuw [4 x i8], ptr %i.bya, i64 %i.bft
  %i.byq = load float, ptr %i.byp, align 4, !tbaa !56
  %i.byr = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 20
  store float %i.byq, ptr %i.byr, align 4, !tbaa !56
  %i.bys = getelementptr inbounds nuw [4 x i8], ptr %i.bya, i64 %i.bfv
  %i.byt = load float, ptr %i.bys, align 4, !tbaa !56
  %i.byu = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 24
  store float %i.byt, ptr %i.byu, align 4, !tbaa !56
  %i.byv = getelementptr inbounds nuw [4 x i8], ptr %i.bya, i64 %i.bfx
  %i.byw = load float, ptr %i.byv, align 4, !tbaa !56
  %i.byx = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 28
  store float %i.byw, ptr %i.byx, align 4, !tbaa !56
  %i.byy = load float, ptr %i.byb, align 4, !tbaa !56
  %i.byz = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 32
  store float %i.byy, ptr %i.byz, align 4, !tbaa !56
  %i.bza = getelementptr inbounds nuw [4 x i8], ptr %i.byb, i64 %i.bfl
  %i.bzb = load float, ptr %i.bza, align 4, !tbaa !56
  %i.bzc = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 36
  store float %i.bzb, ptr %i.bzc, align 4, !tbaa !56
  %i.bzd = getelementptr inbounds nuw [4 x i8], ptr %i.byb, i64 %i.bfn
  %i.bze = load float, ptr %i.bzd, align 4, !tbaa !56
  %i.bzf = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 40
  store float %i.bze, ptr %i.bzf, align 4, !tbaa !56
  %i.bzg = getelementptr inbounds nuw [4 x i8], ptr %i.byb, i64 %i.bfp
  %i.bzh = load float, ptr %i.bzg, align 4, !tbaa !56
  %i.bzi = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 44
  store float %i.bzh, ptr %i.bzi, align 4, !tbaa !56
  %i.bzj = getelementptr inbounds nuw [4 x i8], ptr %i.byb, i64 %i.bfr
  %i.bzk = load float, ptr %i.bzj, align 4, !tbaa !56
  %i.bzl = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 48
  store float %i.bzk, ptr %i.bzl, align 4, !tbaa !56
  %i.bzm = getelementptr inbounds nuw [4 x i8], ptr %i.byb, i64 %i.bft
  %i.bzn = load float, ptr %i.bzm, align 4, !tbaa !56
  %i.bzo = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 52
  store float %i.bzn, ptr %i.bzo, align 4, !tbaa !56
  %i.bzp = getelementptr inbounds nuw [4 x i8], ptr %i.byb, i64 %i.bfv
  %i.bzq = load float, ptr %i.bzp, align 4, !tbaa !56
  %i.bzr = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 56
  store float %i.bzq, ptr %i.bzr, align 4, !tbaa !56
  %i.bzs = getelementptr inbounds nuw [4 x i8], ptr %i.byb, i64 %i.bfx
  %i.bzt = load float, ptr %i.bzs, align 4, !tbaa !56
  %i.bzu = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 60
  store float %i.bzt, ptr %i.bzu, align 4, !tbaa !56
  %i.bzv = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 64 ; 3 uses
  %indvars.iv.next1751.i = add nuw nsw i64 %indvars.iv1750.i, 1 ; 2 uses
  %exitcond1754.not.i = icmp eq i64 %indvars.iv.next1751.i, %wide.trip.count1753.i
  br i1 %exitcond1754.not.i, label %._crit_edge1346.us.i, label %bb.kd, !llvm.loop !185

._crit_edge1346.us.i:                             ; preds = %bb.kd
  %i.bzw = getelementptr inbounds nuw [4 x i8], ptr %.08771348.us.i, i64 %i.bfz ; 2 uses
  %i.bzx = getelementptr inbounds nuw [4 x i8], ptr %.08741349.us.i, i64 %i.bfz ; 2 uses
  %i.bzy = add nuw nsw i32 %.08611351.us.i, 8     ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnn19Convolution_x86_fma15create_pipelineERKNS_6OptionE:bb.a
  br i1 %i.chh, label %_ZN4ncnn3MatD2Ev.exit1005.i, label %.preheader1089.loopexit.i, !llvm.loop !217

_ZN4ncnn3MatD2Ev.exit.i226:                       ; preds = %._crit_edge1461.split.i, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i
  %indvar = phi i32 [ %indvar.next, %._crit_edge1461.split.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i ] ; 2 uses
  %indvars.iv1807.i = phi i64 [ %indvars.iv.next1808.i, %._crit_edge1461.split.i ], [ %i.bvd, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i ] ; 2 uses
  %indvars.iv1779.i = phi i32 [ %indvars.iv.next1780.i, %._crit_edge1461.split.i ], [ %i.buz, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i ] ; 2 uses
  %i.chj = mul i32 %i.bwb, %indvar
  %i.chk = add i32 %i.bvz, %i.chj
  %i.chl = sext i32 %i.chk to i64
  %i.chm = shl nsw i64 %i.chl, 2                  ; 15 uses
  %scevgep1417 = getelementptr i8, ptr %scevgep1416, i64 %i.chm
  %scevgep1419 = getelementptr i8, ptr %scevgep1418, i64 %i.chm
  %scevgep1421 = getelementptr i8, ptr %scevgep1420, i64 %i.chm
  %scevgep1423 = getelementptr i8, ptr %scevgep1422, i64 %i.chm
  %scevgep1425 = getelementptr i8, ptr %scevgep1424, i64 %i.chm
  %scevgep1427 = getelementptr i8, ptr %scevgep1426, i64 %i.chm
  %scevgep1429 = getelementptr i8, ptr %scevgep1428, i64 %i.chm
  %scevgep1431 = getelementptr i8, ptr %scevgep1430, i64 %i.chm
  %scevgep1433 = getelementptr i8, ptr %scevgep1432, i64 %i.chm
  %scevgep1435 = getelementptr i8, ptr %scevgep1434, i64 %i.chm
  %scevgep1437 = getelementptr i8, ptr %scevgep1436, i64 %i.chm
  %scevgep1439 = getelementptr i8, ptr %scevgep1438, i64 %i.chm
  %scevgep1441 = getelementptr i8, ptr %scevgep1440, i64 %i.chm
  %scevgep1443 = getelementptr i8, ptr %scevgep1442, i64 %i.chm
  %scevgep1445 = getelementptr i8, ptr %scevgep1444, i64 %i.chm
  %i.chn = sext i32 %indvars.iv1779.i to i64
  %i.cho = shl nsw i64 %i.chn, 2
  %scevgep1781.i = getelementptr i8, ptr %scevgep1778.i, i64 %i.cho ; 2 uses
  %i.chp = trunc i64 %indvars.iv1807.i to i32     ; 5 uses
  %i.chq = mul i32 %i.bue, %i.chp
  %i.chr = sext i32 %i.chq to i64
  %i.chs = getelementptr [4 x i8], ptr %i.bud, i64 %i.chr ; 3 uses
  %i.cht = lshr i32 %i.chp, 3
  %i.chu = lshr i32 %i.chp, 2
  %i.chv = and i32 %i.chu, 1
  %i.chw = lshr i32 %i.chp, 1
  %i.chx = and i32 %i.chw, 1
  %i.chy = and i32 %i.chp, 1
  %i.chz = add nuw nsw i32 %i.chy, %i.cht
  %i.cia = add nuw nsw i32 %i.chz, %i.chv
  %i.cib = add nuw nsw i32 %i.cia, %i.chx
  %i.cic = zext nneg i32 %i.cib to i64
  %.reass1465.i = mul i64 %factor.op.mul1464.i, %i.cic
  %i.cid = getelementptr inbounds nuw i8, ptr %i.buf, i64 %.reass1465.i ; 4 uses
  br i1 %i.buk, label %.preheader1085.lr.ph.i, label %.preheader1088.i

.preheader1085.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit.i226
  br i1 %i.bul, label %.preheader1085.us.i.preheader, label %.preheader1088.thread.i

.preheader1085.us.i.preheader:                    ; preds = %.preheader1085.lr.ph.i
  %i.cie = insertelement <8 x ptr> poison, ptr %scevgep1443, i64 0
  %i.cif = insertelement <8 x ptr> %i.cie, ptr %scevgep1439, i64 1
  %i.cig = insertelement <8 x ptr> %i.cif, ptr %scevgep1435, i64 2
  %i.cih = insertelement <8 x ptr> %i.cig, ptr %scevgep1431, i64 3
  %i.cii = insertelement <8 x ptr> %i.cih, ptr %scevgep1427, i64 4
  %i.cij = insertelement <8 x ptr> %i.cii, ptr %scevgep1423, i64 5
  %i.cik = insertelement <8 x ptr> %i.cij, ptr %scevgep1419, i64 6
  %i.cil = insertelement <8 x ptr> %i.cik, ptr %scevgep1417, i64 7
  %i.cim = insertelement <8 x ptr> poison, ptr %scevgep1445, i64 0
  %i.cin = insertelement <8 x ptr> %i.cim, ptr %scevgep1441, i64 1
  %i.cio = insertelement <8 x ptr> %i.cin, ptr %scevgep1437, i64 2
  %i.cip = insertelement <8 x ptr> %i.cio, ptr %scevgep1433, i64 3
  %i.ciq = insertelement <8 x ptr> %i.cip, ptr %scevgep1429, i64 4
  %i.cir = insertelement <8 x ptr> %i.ciq, ptr %scevgep1425, i64 5
  %i.cis = insertelement <8 x ptr> %i.cir, ptr %scevgep1421, i64 6
  %i.cit = insertelement <8 x ptr> %i.cis, ptr %i.chs, i64 7
  br label %.preheader1085.us.i

.preheader1085.us.i:                              ; preds = %.preheader1085.us.i.preheader, %._crit_edge1412.us.i
  %.08271416.us.i = phi i32 [ %i.cku, %._crit_edge1412.us.i ], [ 0, %.preheader1085.us.i.preheader ]
  %.08281415.us.i = phi ptr [ %.lcssa627, %._crit_edge1412.us.i ], [ %i.cid, %.preheader1085.us.i.preheader ] ; 6 uses
  %.08321414.us.i = phi ptr [ %i.ckt, %._crit_edge1412.us.i ], [ %i.chs, %.preheader1085.us.i.preheader ] ; 3 uses
  br i1 %min.iters.check1447, label %scalar.ph1446.preheader, label %vector.memcheck1448

vector.memcheck1448:                              ; preds = %.preheader1085.us.i
  %i.ciu = getelementptr i8, ptr %.08281415.us.i, i64 %i.bwx
  %i.civ = insertelement <8 x ptr> poison, ptr %.08281415.us.i, i64 0
  %i.ciw = shufflevector <8 x ptr> %i.civ, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.cix = icmp ult <8 x ptr> %i.ciw, %i.cil
  %i.ciy = insertelement <8 x ptr> poison, ptr %i.ciu, i64 0
  %i.ciz = shufflevector <8 x ptr> %i.ciy, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.cja = icmp ult <8 x ptr> %i.cit, %i.ciz
  %i.cjb = and <8 x i1> %i.cix, %i.cja
  %i.cjc = bitcast <8 x i1> %i.cjb to i8
  %i.cjd = icmp ne i8 %i.cjc, 0
  %op.rdx = or i1 %i.cjd, %stride.check1452
  br i1 %op.rdx, label %scalar.ph1446.preheader, label %vector.ph1481

vector.ph1481:                                    ; preds = %vector.memcheck1448
  %i.cje = getelementptr i8, ptr %.08281415.us.i, i64 %i.bwy ; 2 uses
  br label %vector.body1483

vector.body1483:                                  ; preds = %vector.body1483, %vector.ph1481
  %index1484 = phi i64 [ 0, %vector.ph1481 ], [ %index.next1495, %vector.body1483 ] ; 3 uses
  %i.cjf = shl i64 %index1484, 5
  %next.gep1485 = getelementptr i8, ptr %.08281415.us.i, i64 %i.cjf
  %i.cjg = getelementptr inbounds nuw [4 x i8], ptr %.08321414.us.i, i64 %index1484 ; 2 uses
  %wide.load1486 = load <8 x float>, ptr %i.cjg, align 4, !tbaa !56, !alias.scope !306
  %i.cjh = getelementptr inbounds nuw [4 x i8], ptr %i.cjg, i64 %i.bum ; 2 uses
  %wide.load1487 = load <8 x float>, ptr %i.cjh, align 4, !tbaa !56, !alias.scope !307
  %i.cji = getelementptr inbounds nuw [4 x i8], ptr %i.cjh, i64 %i.bum ; 2 uses
  %wide.load1488 = load <8 x float>, ptr %i.cji, align 4, !tbaa !56, !alias.scope !308
  %i.cjj = getelementptr inbounds nuw [4 x i8], ptr %i.cji, i64 %i.bum ; 2 uses
  %wide.load1489 = load <8 x float>, ptr %i.cjj, align 4, !tbaa !56, !alias.scope !309
  %i.cjk = getelementptr inbounds nuw [4 x i8], ptr %i.cjj, i64 %i.bum ; 2 uses
  %wide.load1490 = load <8 x float>, ptr %i.cjk, align 4, !tbaa !56, !alias.scope !310
  %i.cjl = getelementptr inbounds nuw [4 x i8], ptr %i.cjk, i64 %i.bum ; 2 uses
  %wide.load1491 = load <8 x float>, ptr %i.cjl, align 4, !tbaa !56, !alias.scope !311
  %i.cjm = getelementptr inbounds nuw [4 x i8], ptr %i.cjl, i64 %i.bum ; 2 uses
  %wide.load1492 = load <8 x float>, ptr %i.cjm, align 4, !tbaa !56, !alias.scope !312
  %i.cjn = getelementptr inbounds nuw [4 x i8], ptr %i.cjm, i64 %i.bum
  %wide.load1493 = load <8 x float>, ptr %i.cjn, align 4, !tbaa !56, !alias.scope !313
  %i.cjo = shufflevector <8 x float> %wide.load1486, <8 x float> %wide.load1487, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cjp = shufflevector <8 x float> %wide.load1488, <8 x float> %wide.load1489, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cjq = shufflevector <8 x float> %wide.load1490, <8 x float> %wide.load1491, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cjr = shufflevector <8 x float> %wide.load1492, <8 x float> %wide.load1493, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cjs = shufflevector <16 x float> %i.cjo, <16 x float> %i.cjp, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.cjt = shufflevector <16 x float> %i.cjq, <16 x float> %i.cjr, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec1494 = shufflevector <32 x float> %i.cjs, <32 x float> %i.cjt, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x float> %interleaved.vec1494, ptr %next.gep1485, align 4, !tbaa !56, !alias.scope !314, !noalias !315
  %index.next1495 = add nuw i64 %index1484, 8     ; 2 uses
  %i.cju = icmp eq i64 %index.next1495, %n.vec1482
  br i1 %i.cju, label %middle.block1496, label %vector.body1483, !llvm.loop !228

middle.block1496:                                 ; preds = %vector.body1483
  br i1 %cmp.n1497, label %._crit_edge1412.us.i, label %scalar.ph1446.preheader

scalar.ph1446.preheader:                          ; preds = %vector.memcheck1448, %.preheader1085.us.i, %middle.block1496
  %indvars.iv1783.i.ph = phi i64 [ 0, %vector.memcheck1448 ], [ 0, %.preheader1085.us.i ], [ %n.vec1482, %middle.block1496 ]
  %.18291410.us.i.ph = phi ptr [ %.08281415.us.i, %vector.memcheck1448 ], [ %.08281415.us.i, %.preheader1085.us.i ], [ %i.cje, %middle.block1496 ]
  br label %scalar.ph1446

scalar.ph1446:                                    ; preds = %scalar.ph1446.preheader, %scalar.ph1446
  %indvars.iv1783.i = phi i64 [ %indvars.iv.next1784.i, %scalar.ph1446 ], [ %indvars.iv1783.i.ph, %scalar.ph1446.preheader ] ; 2 uses
  %.18291410.us.i = phi ptr [ %i.cks, %scalar.ph1446 ], [ %.18291410.us.i.ph, %scalar.ph1446.preheader ] ; 9 uses
  %i.cjv = getelementptr inbounds nuw [4 x i8], ptr %.08321414.us.i, i64 %indvars.iv1783.i ; 2 uses
  %i.cjw = load float, ptr %i.cjv, align 4, !tbaa !56
  store float %i.cjw, ptr %.18291410.us.i, align 4, !tbaa !56
  %i.cjx = getelementptr inbounds nuw [4 x i8], ptr %i.cjv, i64 %i.bum ; 2 uses
  %i.cjy = getelementptr inbounds nuw i8, ptr %.18291410.us.i, i64 4
  %i.cjz = load float, ptr %i.cjx, align 4, !tbaa !56
  store float %i.cjz, ptr %i.cjy, align 4, !tbaa !56
  %i.cka = getelementptr inbounds nuw [4 x i8], ptr %i.cjx, i64 %i.bum ; 2 uses
  %i.ckb = getelementptr inbounds nuw i8, ptr %.18291410.us.i, i64 8
  %i.ckc = load float, ptr %i.cka, align 4, !tbaa !56
  store float %i.ckc, ptr %i.ckb, align 4, !tbaa !56
  %i.ckd = getelementptr inbounds nuw [4 x i8], ptr %i.cka, i64 %i.bum ; 2 uses
  %i.cke = getelementptr inbounds nuw i8, ptr %.18291410.us.i, i64 12
  %i.ckf = load float, ptr %i.ckd, align 4, !tbaa !56
  store float %i.ckf, ptr %i.cke, align 4, !tbaa !56
  %i.ckg = getelementptr inbounds nuw [4 x i8], ptr %i.ckd, i64 %i.bum ; 2 uses
  %i.ckh = getelementptr inbounds nuw i8, ptr %.18291410.us.i, i64 16
  %i.cki = load float, ptr %i.ckg, align 4, !tbaa !56
  store float %i.cki, ptr %i.ckh, align 4, !tbaa !56
  %i.ckj = getelementptr inbounds nuw [4 x i8], ptr %i.ckg, i64 %i.bum ; 2 uses
  %i.ckk = getelementptr inbounds nuw i8, ptr %.18291410.us.i, i64 20
  %i.ckl = load float, ptr %i.ckj, align 4, !tbaa !56
  store float %i.ckl, ptr %i.ckk, align 4, !tbaa !56
  %i.ckm = getelementptr inbounds nuw [4 x i8], ptr %i.ckj, i64 %i.bum ; 2 uses
  %i.ckn = getelementptr inbounds nuw i8, ptr %.18291410.us.i, i64 24
  %i.cko = load float, ptr %i.ckm, align 4, !tbaa !56
  store float %i.cko, ptr %i.ckn, align 4, !tbaa !56
  %i.ckp = getelementptr inbounds nuw [4 x i8], ptr %i.ckm, i64 %i.bum
  %i.ckq = getelementptr inbounds nuw i8, ptr %.18291410.us.i, i64 28
  %i.ckr = load float, ptr %i.ckp, align 4, !tbaa !56
  store float %i.ckr, ptr %i.ckq, align 4, !tbaa !56
  %i.cks = getelementptr inbounds nuw i8, ptr %.18291410.us.i, i64 32 ; 2 uses
  %indvars.iv.next1784.i = add nuw nsw i64 %indvars.iv1783.i, 1 ; 2 uses
  %exitcond1787.not.i = icmp eq i64 %indvars.iv.next1784.i, %wide.trip.count1786.i
  br i1 %exitcond1787.not.i, label %._crit_edge1412.us.i, label %scalar.ph1446, !llvm.loop !229

._crit_edge1412.us.i:                             ; preds = %scalar.ph1446, %middle.block1496
  %.lcssa627 = phi ptr [ %i.cje, %middle.block1496 ], [ %i.cks, %scalar.ph1446 ] ; 2 uses
  %i.ckt = getelementptr inbounds nuw [4 x i8], ptr %.08321414.us.i, i64 %i.buo ; 2 uses
  %i.cku = add nuw nsw i32 %.08271416.us.i, 8     ; 2 uses
  %i.ckv = or disjoint i32 %i.cku, 7
  %i.ckw = icmp slt i32 %i.ckv, %i.cj
  br i1 %i.ckw, label %.preheader1085.us.i, label %.preheader1088.i, !llvm.loop !230

.preheader1088.i:                                 ; preds = %._crit_edge1412.us.i, %_ZN4ncnn3MatD2Ev.exit.i226
  %.0832.lcssa.i = phi ptr [ %i.chs, %_ZN4ncnn3MatD2Ev.exit.i226 ], [ %i.ckt, %._crit_edge1412.us.i ] ; 11 uses
  %.0828.lcssa.i = phi ptr [ %i.cid, %_ZN4ncnn3MatD2Ev.exit.i226 ], [ %.lcssa627, %._crit_edge1412.us.i ] ; 3 uses
  %.0827.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit.i226 ], [ %i.bvb, %._crit_edge1412.us.i ] ; 5 uses
  %i.ckx = or disjoint i32 %.0827.lcssa.i, 3
  %i.cky = icmp slt i32 %i.ckx, %i.cj
  br i1 %i.cky, label %.preheader1084.lr.ph.i, label %.preheader1087.i

.preheader1088.thread.i:                          ; preds = %.preheader1085.lr.ph.i
  br i1 %i.bvf, label %.preheader1084.preheader.i, label %.preheader1087.i

.preheader1084.lr.ph.i:                           ; preds = %.preheader1088.i
  br i1 %i.bul, label %.preheader1084.us.i.preheader, label %.preheader1084.preheader.i

.preheader1084.us.i.preheader:                    ; preds = %.preheader1084.lr.ph.i
  %scevgep1307 = getelementptr i8, ptr %.0832.lcssa.i, i64 %i.bvl
  %i.ckz = sub i32 %i.bvn, %.0827.lcssa.i
  %i.cla = lshr i32 %i.ckz, 2
  %i.clb = zext nneg i32 %i.cla to i64
  %i.clc = mul nsw i64 %i.bvm, %i.clb             ; 4 uses
  %scevgep1308 = getelementptr i8, ptr %scevgep1307, i64 %i.clc
  %i.cld = getelementptr i8, ptr %.0832.lcssa.i, i64 %16
  %scevgep1309 = getelementptr i8, ptr %i.cld, i64 %i.bvl
  %scevgep1310 = getelementptr i8, ptr %scevgep1309, i64 %i.clc
  %scevgep1311 = getelementptr i8, ptr %.0832.lcssa.i, i64 %16
  %i.cle = getelementptr i8, ptr %.0832.lcssa.i, i64 %i.bvo
  %scevgep1312 = getelementptr i8, ptr %i.cle, i64 %i.bvl
  %scevgep1313 = getelementptr i8, ptr %scevgep1312, i64 %i.clc
  %scevgep1314 = getelementptr i8, ptr %.0832.lcssa.i, i64 %i.bvo
  %i.clf = getelementptr i8, ptr %.0832.lcssa.i, i64 %i.bvp
  %scevgep1315 = getelementptr i8, ptr %i.clf, i64 %i.bvl
  %scevgep1316 = getelementptr i8, ptr %scevgep1315, i64 %i.clc
  %scevgep1317 = getelementptr i8, ptr %.0832.lcssa.i, i64 %i.bvp
  br label %.preheader1084.us.i

.preheader1084.preheader.i:                       ; preds = %.preheader1084.lr.ph.i, %.preheader1088.thread.i
  %.0832.lcssa19451953.i = phi ptr [ %.0832.lcssa.i, %.preheader1084.lr.ph.i ], [ %scevgep1781.i, %.preheader1088.thread.i ]
  %.0828.lcssa19461952.i = phi ptr [ %.0828.lcssa.i, %.preheader1084.lr.ph.i ], [ %i.cid, %.preheader1088.thread.i ]
  %.0827.lcssa19471951.i = phi i32 [ %.0827.lcssa.i, %.preheader1084.lr.ph.i ], [ %i.bvb, %.preheader1088.thread.i ] ; 2 uses
  %i.clg = sub i32 %i.bvc, %.0827.lcssa19471951.i
  %i.clh = and i32 %i.clg, -4                     ; 2 uses
  %i.cli = zext i32 %i.clh to i64
  %i.clj = add nuw nsw i64 %i.cli, 4
  %i.clk = mul nsw i64 %i.clj, %i.buq
  %scevgep1788.i = getelementptr i8, ptr %.0832.lcssa19451953.i, i64 %i.clk
  %i.cll = add i32 %.0827.lcssa19471951.i, 4
  %i.clm = add i32 %i.cll, %i.clh
  br label %.preheader1087.i

.preheader1084.us.i:                              ; preds = %.preheader1084.us.i.preheader, %._crit_edge1428.us.i
  %.11432.us.i = phi i32 [ %i.cnl, %._crit_edge1428.us.i ], [ %.0827.lcssa.i, %.preheader1084.us.i.preheader ]
  %.38311431.us.i = phi ptr [ %.lcssa629, %._crit_edge1428.us.i ], [ %.0828.lcssa.i, %.preheader1084.us.i.preheader ] ; 9 uses
  %.18331430.us.i = phi ptr [ %i.cnk, %._crit_edge1428.us.i ], [ %.0832.lcssa.i, %.preheader1084.us.i.preheader ] ; 5 uses
  br i1 %min.iters.check1319, label %scalar.ph1318.preheader, label %vector.memcheck1320

vector.memcheck1320:                              ; preds = %.preheader1084.us.i
  %i.cln = getelementptr i8, ptr %.38311431.us.i, i64 %i.bvq ; 4 uses
  %bound01321 = icmp ult ptr %.38311431.us.i, %scevgep1316
  %bound11322 = icmp ult ptr %scevgep1317, %i.cln
  %found.conflict1323 = and i1 %bound01321, %bound11322
  %i.clo = or i1 %found.conflict1323, %stride.check1324
  %bound01325 = icmp ult ptr %.38311431.us.i, %scevgep1313
  %bound11326 = icmp ult ptr %scevgep1314, %i.cln
  %found.conflict1327 = and i1 %bound01325, %bound11326
  %conflict.rdx1328 = or i1 %i.clo, %found.conflict1327
  %bound01329 = icmp ult ptr %.38311431.us.i, %scevgep1310
  %bound11330 = icmp ult ptr %scevgep1311, %i.cln
  %found.conflict1331 = and i1 %bound01329, %bound11330
  %conflict.rdx1332 = or i1 %conflict.rdx1328, %found.conflict1331
  %bound01333 = icmp ult ptr %.38311431.us.i, %scevgep1308
  %bound11334 = icmp ult ptr %.0832.lcssa.i, %i.cln
  %found.conflict1335 = and i1 %bound01333, %bound11334
  %conflict.rdx1336 = or i1 %conflict.rdx1332, %found.conflict1335
  br i1 %conflict.rdx1336, label %scalar.ph1318.preheader, label %vector.ph1337

vector.ph1337:                                    ; preds = %vector.memcheck1320
  %i.clp = getelementptr i8, ptr %.38311431.us.i, i64 %i.bwz ; 2 uses
  br label %vector.body1339

vector.body1339:                                  ; preds = %vector.body1339, %vector.ph1337
  %index1340 = phi i64 [ 0, %vector.ph1337 ], [ %index.next1347, %vector.body1339 ] ; 3 uses
  %i.clq = shl i64 %index1340, 4
  %next.gep1341 = getelementptr i8, ptr %.38311431.us.i, i64 %i.clq
  %i.clr = getelementptr inbounds nuw [4 x i8], ptr %.18331430.us.i, i64 %index1340 ; 2 uses
  %wide.load1342 = load <8 x float>, ptr %i.clr, align 4, !tbaa !56, !alias.scope !316
  %i.cls = getelementptr inbounds nuw [4 x i8], ptr %i.clr, i64 %i.bum ; 2 uses
  %wide.load1343 = load <8 x float>, ptr %i.cls, align 4, !tbaa !56, !alias.scope !317
  %i.clt = getelementptr inbounds nuw [4 x i8], ptr %i.cls, i64 %i.bum ; 2 uses
  %wide.load1344 = load <8 x float>, ptr %i.clt, align 4, !tbaa !56, !alias.scope !318
  %i.clu = getelementptr inbounds nuw [4 x i8], ptr %i.clt, i64 %i.bum
  %wide.load1345 = load <8 x float>, ptr %i.clu, align 4, !tbaa !56, !alias.scope !319
  %i.clv = shufflevector <8 x float> %wide.load1342, <8 x float> %wide.load1343, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.clw = shufflevector <8 x float> %wide.load1344, <8 x float> %wide.load1345, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec1346 = shufflevector <16 x float> %i.clv, <16 x float> %i.clw, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec1346, ptr %next.gep1341, align 4, !tbaa !56, !alias.scope !320, !noalias !321
  %index.next1347 = add nuw i64 %index1340, 8     ; 2 uses
  %i.clx = icmp eq i64 %index.next1347, %n.vec1338
  br i1 %i.clx, label %middle.block1348, label %vector.body1339, !llvm.loop !237

middle.block1348:                                 ; preds = %vector.body1339
  br i1 %cmp.n1349, label %._crit_edge1428.us.i, label %scalar.ph1318.preheader

scalar.ph1318.preheader:                          ; preds = %vector.memcheck1320, %.preheader1084.us.i, %middle.block1348
  %indvars.iv1790.i.ph = phi i64 [ 0, %vector.memcheck1320 ], [ 0, %.preheader1084.us.i ], [ %n.vec1338, %middle.block1348 ] ; 4 uses
  %.41426.us.i.ph = phi ptr [ %.38311431.us.i, %vector.memcheck1320 ], [ %.38311431.us.i, %.preheader1084.us.i ], [ %i.clp, %middle.block1348 ] ; 6 uses
  br i1 %lcmp.mod1593.not, label %scalar.ph1318.prol.loopexit, label %scalar.ph1318.prol

scalar.ph1318.prol:                               ; preds = %scalar.ph1318.preheader
  %i.cly = getelementptr inbounds nuw [4 x i8], ptr %.18331430.us.i, i64 %indvars.iv1790.i.ph ; 2 uses
  %i.clz = load float, ptr %i.cly, align 4, !tbaa !56
  store float %i.clz, ptr %.41426.us.i.ph, align 4, !tbaa !56
  %i.cma = getelementptr inbounds nuw [4 x i8], ptr %i.cly, i64 %i.bum ; 2 uses
  %i.cmb = getelementptr inbounds nuw i8, ptr %.41426.us.i.ph, i64 4
  %i.cmc = load float, ptr %i.cma, align 4, !tbaa !56
  store float %i.cmc, ptr %i.cmb, align 4, !tbaa !56
  %i.cmd = getelementptr inbounds nuw [4 x i8], ptr %i.cma, i64 %i.bum ; 2 uses
  %i.cme = getelementptr inbounds nuw i8, ptr %.41426.us.i.ph, i64 8
  %i.cmf = load float, ptr %i.cmd, align 4, !tbaa !56
  store float %i.cmf, ptr %i.cme, align 4, !tbaa !56
  %i.cmg = getelementptr inbounds nuw [4 x i8], ptr %i.cmd, i64 %i.bum
  %i.cmh = getelementptr inbounds nuw i8, ptr %.41426.us.i.ph, i64 12
  %i.cmi = load float, ptr %i.cmg, align 4, !tbaa !56
  store float %i.cmi, ptr %i.cmh, align 4, !tbaa !56
  %i.cmj = getelementptr inbounds nuw i8, ptr %.41426.us.i.ph, i64 16 ; 2 uses
  %indvars.iv.next1791.i.prol = or disjoint i64 %indvars.iv1790.i.ph, 1
  br label %scalar.ph1318.prol.loopexit

scalar.ph1318.prol.loopexit:                      ; preds = %scalar.ph1318.prol, %scalar.ph1318.preheader
  %.lcssa1521.unr = phi ptr [ poison, %scalar.ph1318.preheader ], [ %i.cmj, %scalar.ph1318.prol ]
  %indvars.iv1790.i.unr = phi i64 [ %indvars.iv1790.i.ph, %scalar.ph1318.preheader ], [ %indvars.iv.next1791.i.prol, %scalar.ph1318.prol ]
  %.41426.us.i.unr = phi ptr [ %.41426.us.i.ph, %scalar.ph1318.preheader ], [ %i.cmj, %scalar.ph1318.prol ]
  %i.cmk = icmp eq i64 %indvars.iv1790.i.ph, %i.bxa
  br i1 %i.cmk, label %._crit_edge1428.us.i, label %scalar.ph1318

scalar.ph1318:                                    ; preds = %scalar.ph1318.prol.loopexit, %scalar.ph1318
  %indvars.iv1790.i = phi i64 [ %indvars.iv.next1791.i.1, %scalar.ph1318 ], [ %indvars.iv1790.i.unr, %scalar.ph1318.prol.loopexit ] ; 3 uses
  %.41426.us.i = phi ptr [ %i.cnj, %scalar.ph1318 ], [ %.41426.us.i.unr, %scalar.ph1318.prol.loopexit ] ; 9 uses
  %i.cml = getelementptr inbounds nuw [4 x i8], ptr %.18331430.us.i, i64 %indvars.iv1790.i ; 2 uses
  %i.cmm = load float, ptr %i.cml, align 4, !tbaa !56
  store float %i.cmm, ptr %.41426.us.i, align 4, !tbaa !56
  %i.cmn = getelementptr inbounds nuw [4 x i8], ptr %i.cml, i64 %i.bum ; 2 uses
  %i.cmo = getelementptr inbounds nuw i8, ptr %.41426.us.i, i64 4
  %i.cmp = load float, ptr %i.cmn, align 4, !tbaa !56
  store float %i.cmp, ptr %i.cmo, align 4, !tbaa !56
  %i.cmq = getelementptr inbounds nuw [4 x i8], ptr %i.cmn, i64 %i.bum ; 2 uses
  %i.cmr = getelementptr inbounds nuw i8, ptr %.41426.us.i, i64 8
  %i.cms = load float, ptr %i.cmq, align 4, !tbaa !56
  store float %i.cms, ptr %i.cmr, align 4, !tbaa !56
  %i.cmt = getelementptr inbounds nuw [4 x i8], ptr %i.cmq, i64 %i.bum
  %i.cmu = getelementptr inbounds nuw i8, ptr %.41426.us.i, i64 12
  %i.cmv = load float, ptr %i.cmt, align 4, !tbaa !56
  store float %i.cmv, ptr %i.cmu, align 4, !tbaa !56
  %i.cmw = getelementptr inbounds nuw i8, ptr %.41426.us.i, i64 16
  %i.cmx = getelementptr inbounds nuw [4 x i8], ptr %.18331430.us.i, i64 %indvars.iv1790.i
  %i.cmy = getelementptr inbounds nuw i8, ptr %i.cmx, i64 4 ; 2 uses
  %i.cmz = load float, ptr %i.cmy, align 4, !tbaa !56
  store float %i.cmz, ptr %i.cmw, align 4, !tbaa !56
  %i.cna = getelementptr inbounds nuw [4 x i8], ptr %i.cmy, i64 %i.bum ; 2 uses
  %i.cnb = getelementptr inbounds nuw i8, ptr %.41426.us.i, i64 20
  %i.cnc = load float, ptr %i.cna, align 4, !tbaa !56
  store float %i.cnc, ptr %i.cnb, align 4, !tbaa !56
  %i.cnd = getelementptr inbounds nuw [4 x i8], ptr %i.cna, i64 %i.bum ; 2 uses
  %i.cne = getelementptr inbounds nuw i8, ptr %.41426.us.i, i64 24
  %i.cnf = load float, ptr %i.cnd, align 4, !tbaa !56
  store float %i.cnf, ptr %i.cne, align 4, !tbaa !56
  %i.cng = getelementptr inbounds nuw [4 x i8], ptr %i.cnd, i64 %i.bum
  %i.cnh = getelementptr inbounds nuw i8, ptr %.41426.us.i, i64 28
  %i.cni = load float, ptr %i.cng, align 4, !tbaa !56
  store float %i.cni, ptr %i.cnh, align 4, !tbaa !56
  %i.cnj = getelementptr inbounds nuw i8, ptr %.41426.us.i, i64 32 ; 2 uses
  %indvars.iv.next1791.i.1 = add nuw nsw i64 %indvars.iv1790.i, 2 ; 2 uses
  %exitcond1794.not.i.1 = icmp eq i64 %indvars.iv.next1791.i.1, %wide.trip.count1786.i
  br i1 %exitcond1794.not.i.1, label %._crit_edge1428.us.i, label %scalar.ph1318, !llvm.loop !238

._crit_edge1428.us.i:                             ; preds = %scalar.ph1318.prol.loopexit, %scalar.ph1318, %middle.block1348
  %.lcssa629 = phi ptr [ %i.clp, %middle.block1348 ], [ %.lcssa1521.unr, %scalar.ph1318.prol.loopexit ], [ %i.cnj, %scalar.ph1318 ] ; 2 uses
  %i.cnk = getelementptr inbounds nuw [4 x i8], ptr %.18331430.us.i, i64 %i.buq ; 2 uses
  %i.cnl = add nuw nsw i32 %.11432.us.i, 4        ; 3 uses
  %i.cnm = or disjoint i32 %i.cnl, 3
  %i.cnn = icmp slt i32 %i.cnm, %i.cj
  br i1 %i.cnn, label %.preheader1084.us.i, label %.preheader1087.i, !llvm.loop !239

.preheader1087.i:                                 ; preds = %._crit_edge1428.us.i, %.preheader1084.preheader.i, %.preheader1088.thread.i, %.preheader1088.i
  %.1833.lcssa.i = phi ptr [ %.0832.lcssa.i, %.preheader1088.i ], [ %scevgep1781.i, %.preheader1088.thread.i ], [ %scevgep1788.i, %.preheader1084.preheader.i ], [ %i.cnk, %._crit_edge1428.us.i ] ; 6 uses
  %.3831.lcssa.i = phi ptr [ %.0828.lcssa.i, %.preheader1088.i ], [ %i.cid, %.preheader1088.thread.i ], [ %.0828.lcssa19461952.i, %.preheader1084.preheader.i ], [ %.lcssa629, %._crit_edge1428.us.i ] ; 2 uses
  %.1.lcssa.i = phi i32 [ %.0827.lcssa.i, %.preheader1088.i ], [ %i.bvb, %.preheader1088.thread.i ], [ %i.clm, %.preheader1084.preheader.i ], [ %i.cnl, %._crit_edge1428.us.i ] ; 4 uses
  %i.cno = or disjoint i32 %.1.lcssa.i, 1
  %i.cnp = icmp slt i32 %i.cno, %i.cj
  br i1 %i.cnp, label %.preheader1083.lr.ph.i, label %.preheader1086.i

.preheader1083.lr.ph.i:                           ; preds = %.preheader1087.i
  br i1 %i.bul, label %.preheader1083.us.i.preheader, label %._crit_edge1461.split.i

.preheader1083.us.i.preheader:                    ; preds = %.preheader1083.lr.ph.i
  %scevgep1245 = getelementptr i8, ptr %.1833.lcssa.i, i64 %i.bvg
  %i.cnq = sub i32 %i.bvi, %.1.lcssa.i
  %i.cnr = lshr i32 %i.cnq, 1
  %i.cns = zext nneg i32 %i.cnr to i64
  %i.cnt = mul i64 %i.bvh, %i.cns                 ; 2 uses
  %scevgep1246 = getelementptr i8, ptr %scevgep1245, i64 %i.cnt
  %i.cnu = getelementptr i8, ptr %.1833.lcssa.i, i64 %i.bvj
  %scevgep1247 = getelementptr i8, ptr %i.cnu, i64 %i.bvg
  %scevgep1248 = getelementptr i8, ptr %scevgep1247, i64 %i.cnt
  %scevgep1249 = getelementptr i8, ptr %.1833.lcssa.i, i64 %i.bvj
  br label %.preheader1083.us.i

.preheader1083.us.i:                              ; preds = %.preheader1083.us.i.preheader, %._crit_edge1444.us.i
  %.21448.us.i = phi i32 [ %i.cpp, %._crit_edge1444.us.i ], [ %.1.lcssa.i, %.preheader1083.us.i.preheader ]
  %.61447.us.i = phi ptr [ %.lcssa632, %._crit_edge1444.us.i ], [ %.3831.lcssa.i, %.preheader1083.us.i.preheader ] ; 8 uses
  %.28341446.us.i = phi ptr [ %i.cpo, %._crit_edge1444.us.i ], [ %.1833.lcssa.i, %.preheader1083.us.i.preheader ] ; 7 uses
  br i1 %min.iters.check1251, label %scalar.ph1250.preheader, label %vector.memcheck1252

vector.memcheck1252:                              ; preds = %.preheader1083.us.i
  %i.cnv = getelementptr i8, ptr %.61447.us.i, i64 %i.bvk ; 2 uses
  %bound01253 = icmp ult ptr %.61447.us.i, %scevgep1248
  %bound11254 = icmp ult ptr %scevgep1249, %i.cnv
  %found.conflict1255 = and i1 %bound01253, %bound11254
  %i.cnw = or i1 %found.conflict1255, %stride.check1256
  %bound01257 = icmp ult ptr %.61447.us.i, %scevgep1246
  %bound11258 = icmp ult ptr %.1833.lcssa.i, %i.cnv
  %found.conflict1259 = and i1 %bound01257, %bound11258
  %conflict.rdx1260 = or i1 %i.cnw, %found.conflict1259
  br i1 %conflict.rdx1260, label %scalar.ph1250.preheader, label %vector.ph1261

vector.ph1261:                                    ; preds = %vector.memcheck1252
end_hunk_1
begin_hunk_2_@_ZN4ncnnL44convolution_im2col_gemm_get_optimal_tile_mnkEiiiRiS0_S0_i:bb.a
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated65, i32 12)
  store i32 %.sroa.speculated, ptr %4, align 4, !tbaa !81
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

declare void @_ZNK4ncnn3Mat7reshapeEiiPNS_9AllocatorE(ptr dead_on_unwind writable sret(%"class.ncnn::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZNK4ncnn3Mat7reshapeEiiiPNS_9AllocatorE(ptr dead_on_unwind writable sret(%"class.ncnn::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL40convolution_im2col_gemm_transform_kernelERKNS_3MatERS0_iiiiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !81     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !81
  %i.h = load i32, ptr %0, align 4, !tbaa !81     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !81
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !81
  %i.k = load i32, ptr %i.a, align 4, !tbaa !81   ; 2 uses
  %.not96 = icmp sgt i32 %i.k, %i.j
  br i1 %.not96, label %._crit_edge99, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.p = load i32, ptr %5, align 4, !tbaa !81     ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph.split, label %._crit_edge99

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge
  %i.r = phi i32 [ %i.ab, %._crit_edge ], [ %i.p, %.lr.ph ] ; 3 uses
  %.02897 = phi i32 [ %i.ac, %._crit_edge ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.s = load i32, ptr %3, align 4, !tbaa !81     ; 2 uses
  %i.t = mul nsw i32 %i.s, %.02897                ; 3 uses
  %i.u = load i32, ptr %4, align 4, !tbaa !81
  %i.v = sub nsw i32 %i.u, %i.t
  %.sroa.speculated57 = call i32 @llvm.smin.i32(i32 %i.s, i32 %i.v) ; 6 uses
  %i.w = icmp sgt i32 %i.r, 0
  br i1 %i.w, label %_ZN4ncnn3MatD2Ev.exit29.lr.ph, label %._crit_edge

_ZN4ncnn3MatD2Ev.exit29.lr.ph:                    ; preds = %.lr.ph.split
  %i.x = icmp sgt i32 %.sroa.speculated57, 7
  %i.y = zext nneg i32 %.sroa.speculated57 to i64
  %i.z = sext i32 %i.t to i64                     ; 4 uses
  %i.aa = sext i32 %.sroa.speculated57 to i64     ; 3 uses
  %invariant.op.i = add nsw i64 %i.aa, -3
  %invariant.op280.i = add nsw i64 %i.aa, -1
  %.pre = load i32, ptr %6, align 4, !tbaa !81
  br label %_ZN4ncnn3MatD2Ev.exit29

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %.lr.ph.split
  %i.ab = phi i32 [ %i.r, %.lr.ph.split ], [ %i.ub, %_ZN4ncnn3MatD2Ev.exit ]
  %i.ac = add i32 %.02897, 1
  %exitcond.not = icmp eq i32 %.02897, %i.j
  br i1 %exitcond.not, label %._crit_edge99, label %.lr.ph.split, !llvm.loop !723

_ZN4ncnn3MatD2Ev.exit29:                          ; preds = %_ZN4ncnn3MatD2Ev.exit29.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %i.ad = phi i32 [ %.pre, %_ZN4ncnn3MatD2Ev.exit29.lr.ph ], [ %i.tz, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.ae = phi i32 [ %i.r, %_ZN4ncnn3MatD2Ev.exit29.lr.ph ], [ %i.ub, %_ZN4ncnn3MatD2Ev.exit ]
  %.095 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit29.lr.ph ], [ %i.ua, %_ZN4ncnn3MatD2Ev.exit ] ; 7 uses
  %i.af = sub i32 %i.ae, %.095
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.af) ; 39 uses
  %i.ag = load i32, ptr %3, align 4, !tbaa !81
  %i.ah = sdiv i32 %i.t, %i.ag
  %i.ai = load i32, ptr %i.l, align 4, !tbaa !89, !noalias !770
  %i.aj = load ptr, ptr %7, align 8, !tbaa !37, !noalias !770
  %i.ak = load i64, ptr %i.m, align 8, !tbaa !38, !noalias !770
  %i.al = sext i32 %i.ah to i64
  %i.am = mul i64 %i.ak, %i.al
  %i.an = load i64, ptr %i.n, align 8, !tbaa !79, !noalias !770 ; 2 uses
  %i.ao = mul i64 %i.am, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ao
  %i.aq = sext i32 %i.ai to i64
  %i.ar = sdiv i32 %.095, %i.ad
  %i.as = sext i32 %i.ar to i64
  %i.at = mul i64 %i.an, %i.aq
  %i.au = mul i64 %i.at, %i.as
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.au ; 2 uses
  %i.aw = load i32, ptr %i.o, align 4, !tbaa !89  ; 4 uses
  br i1 %i.x, label %.lr.ph85.i, label %.preheader49.i

.lr.ph85.i:                                       ; preds = %_ZN4ncnn3MatD2Ev.exit29
  %i.ax = sext i32 %.095 to i64                   ; 8 uses
  %i.ay = icmp sgt i32 %.sroa.speculated, 7
  %i.az = and i32 %.sroa.speculated, -8
  %i.ba = sext i32 %i.aw to i64                   ; 8 uses
  br label %bb.c

.preheader49.loopexit.i:                          ; preds = %._crit_edge.i
  %i.bb = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %.preheader49.i

.preheader49.i:                                   ; preds = %.preheader49.loopexit.i, %_ZN4ncnn3MatD2Ev.exit29
  %.0275.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit29 ], [ %i.bb, %.preheader49.loopexit.i ] ; 3 uses
  %.0272.lcssa.i = phi ptr [ %i.av, %_ZN4ncnn3MatD2Ev.exit29 ], [ %.2274.lcssa.i, %.preheader49.loopexit.i ] ; 2 uses
  %i.bc = or disjoint i32 %.0275.lcssa.i, 3
  %i.bd = icmp slt i32 %i.bc, %.sroa.speculated57
  br i1 %i.bd, label %.lr.ph126.i, label %.preheader46.i

.lr.ph126.i:                                      ; preds = %.preheader49.i
  %i.be = sext i32 %.095 to i64                   ; 4 uses
  %i.bf = icmp sgt i32 %.sroa.speculated, 7
  %i.bg = and i32 %.sroa.speculated, -8
  %i.bh = zext nneg i32 %.0275.lcssa.i to i64
  %i.bi = sext i32 %i.aw to i64                   ; 4 uses
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i, %.lr.ph85.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph85.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %.027283.i = phi ptr [ %i.av, %.lr.ph85.i ], [ %.2274.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.bj = load ptr, ptr %8, align 8, !tbaa !37    ; 8 uses
  %i.bk = add nsw i64 %indvars.iv.i, %i.z         ; 8 uses
  %i.bl = mul nsw i64 %i.bk, %i.ba
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.ax ; 2 uses
  %i.bo = add nsw i64 %i.bk, 1
  %i.bp = mul nsw i64 %i.bo, %i.ba
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.bp
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.ax ; 2 uses
  %i.bs = add nsw i64 %i.bk, 2
  %i.bt = mul nsw i64 %i.bs, %i.ba
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.bt
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.ax ; 2 uses
  %i.bw = add nsw i64 %i.bk, 3
  %i.bx = mul nsw i64 %i.bw, %i.ba
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.bx
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.ax ; 2 uses
  %i.ca = add nsw i64 %i.bk, 4
  %i.cb = mul nsw i64 %i.ca, %i.ba
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.cb
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.ax ; 2 uses
  %i.ce = add nsw i64 %i.bk, 5
  %i.cf = mul nsw i64 %i.ce, %i.ba
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.cf
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.ax ; 2 uses
  %i.ci = add nsw i64 %i.bk, 6
  %i.cj = mul nsw i64 %i.ci, %i.ba
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.cj
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.ax ; 2 uses
  %i.cm = add nsw i64 %i.bk, 7
  %i.cn = mul nsw i64 %i.cm, %i.ba
  %i.co = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.cn
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.ax ; 2 uses
  br i1 %i.ay, label %.lr.ph.i, label %.preheader50.i

.preheader50.i:                                   ; preds = %.lr.ph.i, %bb.c
  %.0304.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.az, %.lr.ph.i ] ; 6 uses
  %.0302.lcssa.i = phi ptr [ %i.cp, %bb.c ], [ %i.fw, %.lr.ph.i ] ; 6 uses
  %.0300.lcssa.i = phi ptr [ %i.cl, %bb.c ], [ %i.fv, %.lr.ph.i ] ; 6 uses
  %.0298.lcssa.i = phi ptr [ %i.ch, %bb.c ], [ %i.fu, %.lr.ph.i ] ; 6 uses
  %.0296.lcssa.i = phi ptr [ %i.cd, %bb.c ], [ %i.ft, %.lr.ph.i ] ; 6 uses
  %.0294.lcssa.i = phi ptr [ %i.bz, %bb.c ], [ %i.fs, %.lr.ph.i ] ; 6 uses
  %.0292.lcssa.i = phi ptr [ %i.bv, %bb.c ], [ %i.fr, %.lr.ph.i ] ; 6 uses
  %.0290.lcssa.i = phi ptr [ %i.br, %bb.c ], [ %i.fq, %.lr.ph.i ] ; 6 uses
  %.0279.lcssa.i = phi ptr [ %i.bn, %bb.c ], [ %i.fp, %.lr.ph.i ] ; 6 uses
  %.1273.lcssa.i = phi ptr [ %.027283.i, %bb.c ], [ %i.fo, %.lr.ph.i ] ; 14 uses
  %i.cq = icmp slt i32 %.0304.lcssa.i, %.sroa.speculated
  br i1 %i.cq, label %.lr.ph80.i.preheader, label %._crit_edge.i

.lr.ph80.i.preheader:                             ; preds = %.preheader50.i
  %i.cr = xor i32 %.0304.lcssa.i, -1
  %i.cs = add i32 %.sroa.speculated, %i.cr        ; 2 uses
  %i.ct = zext i32 %i.cs to i64
  %i.cu = add nuw nsw i64 %i.ct, 1                ; 2 uses
  %min.iters.check384 = icmp ult i32 %i.cs, 15
  br i1 %min.iters.check384, label %.lr.ph80.i.preheader454, label %vector.memcheck385

vector.memcheck385:                               ; preds = %.lr.ph80.i.preheader
  %i.cv = xor i32 %.0304.lcssa.i, -1
  %i.cw = add i32 %.sroa.speculated, %i.cv
  %i.cx = zext i32 %i.cw to i64                   ; 2 uses
  %i.cy = shl nuw nsw i64 %i.cx, 5
  %i.cz = getelementptr i8, ptr %.1273.lcssa.i, i64 %i.cy
  %i.da = getelementptr i8, ptr %i.cz, i64 32     ; 8 uses
  %i.db = shl nuw nsw i64 %i.cx, 2
  %i.dc = add nuw nsw i64 %i.db, 4                ; 8 uses
  %9 = getelementptr i8, ptr %.0302.lcssa.i, i64 %i.dc
  %10 = getelementptr i8, ptr %.0300.lcssa.i, i64 %i.dc
  %11 = getelementptr i8, ptr %.0298.lcssa.i, i64 %i.dc
  %i.dd = getelementptr i8, ptr %.0296.lcssa.i, i64 %i.dc
  %12 = getelementptr i8, ptr %.0294.lcssa.i, i64 %i.dc
  %13 = getelementptr i8, ptr %.0292.lcssa.i, i64 %i.dc
  %14 = getelementptr i8, ptr %.0290.lcssa.i, i64 %i.dc
  %i.de = getelementptr i8, ptr %.0279.lcssa.i, i64 %i.dc
  %bound0386.a = icmp ult ptr %.1273.lcssa.i, %9
  %bound1387.a = icmp ult ptr %.0302.lcssa.i, %i.da
  %found.conflict388.a = and i1 %bound0386.a, %bound1387.a
  %bound0389 = icmp ult ptr %.1273.lcssa.i, %10
  %bound1390 = icmp ult ptr %.0300.lcssa.i, %i.da
  %found.conflict391 = and i1 %bound0389, %bound1390
  %conflict.rdx392 = or i1 %found.conflict388.a, %found.conflict391
  %bound0393 = icmp ult ptr %.1273.lcssa.i, %11
  %bound1394 = icmp ult ptr %.0298.lcssa.i, %i.da
  %found.conflict395 = and i1 %bound0393, %bound1394
  %conflict.rdx396 = or i1 %conflict.rdx392, %found.conflict395
  %bound0397 = icmp ult ptr %.1273.lcssa.i, %i.dd
  %bound1398 = icmp ult ptr %.0296.lcssa.i, %i.da
  %found.conflict399 = and i1 %bound0397, %bound1398
  %conflict.rdx400 = or i1 %conflict.rdx396, %found.conflict399
  %bound0401 = icmp ult ptr %.1273.lcssa.i, %12
  %bound1402 = icmp ult ptr %.0294.lcssa.i, %i.da
  %found.conflict403 = and i1 %bound0401, %bound1402
  %conflict.rdx404 = or i1 %conflict.rdx400, %found.conflict403
  %bound0405 = icmp ult ptr %.1273.lcssa.i, %13
  %bound1406 = icmp ult ptr %.0292.lcssa.i, %i.da
  %found.conflict407 = and i1 %bound0405, %bound1406
  %conflict.rdx408 = or i1 %conflict.rdx404, %found.conflict407
  %bound0409 = icmp ult ptr %.1273.lcssa.i, %14
  %bound1410 = icmp ult ptr %.0290.lcssa.i, %i.da
  %found.conflict411 = and i1 %bound0409, %bound1410
  %conflict.rdx412 = or i1 %conflict.rdx408, %found.conflict411
  %bound0413 = icmp ult ptr %.1273.lcssa.i, %i.de
  %bound1414 = icmp ult ptr %.0279.lcssa.i, %i.da
  %found.conflict415 = and i1 %bound0413, %bound1414
  %conflict.rdx416 = or i1 %conflict.rdx412, %found.conflict415
  br i1 %conflict.rdx416, label %.lr.ph80.i.preheader454, label %vector.ph417

vector.ph417:                                     ; preds = %vector.memcheck385
  %n.vec418 = and i64 %i.cu, 8589934584           ; 5 uses
  %i.df = shl nuw nsw i64 %n.vec418, 5
  %i.dg = getelementptr i8, ptr %.1273.lcssa.i, i64 %i.df ; 2 uses
  %i.dh = shl nuw nsw i64 %n.vec418, 2            ; 8 uses
  %i.di = getelementptr i8, ptr %.0279.lcssa.i, i64 %i.dh
  %i.dj = getelementptr i8, ptr %.0290.lcssa.i, i64 %i.dh
  %i.dk = getelementptr i8, ptr %.0292.lcssa.i, i64 %i.dh
  %i.dl = getelementptr i8, ptr %.0294.lcssa.i, i64 %i.dh
  %i.dm = getelementptr i8, ptr %.0296.lcssa.i, i64 %i.dh
  %i.dn = getelementptr i8, ptr %.0298.lcssa.i, i64 %i.dh
  %i.do = getelementptr i8, ptr %.0300.lcssa.i, i64 %i.dh
  %i.dp = getelementptr i8, ptr %.0302.lcssa.i, i64 %i.dh
  %i.dq = trunc i64 %n.vec418 to i32
  %i.dr = add i32 %.0304.lcssa.i, %i.dq
  br label %vector.body419

vector.body419:                                   ; preds = %vector.body419, %vector.ph417
  %index420 = phi i64 [ 0, %vector.ph417 ], [ %index.next439, %vector.body419 ] ; 3 uses
  %i.ds = shl i64 %index420, 5
  %next.gep421 = getelementptr i8, ptr %.1273.lcssa.i, i64 %i.ds
  %i.dt = shl i64 %index420, 2                    ; 8 uses
  %next.gep422 = getelementptr i8, ptr %.0279.lcssa.i, i64 %i.dt
  %next.gep423 = getelementptr i8, ptr %.0290.lcssa.i, i64 %i.dt
  %next.gep424 = getelementptr i8, ptr %.0292.lcssa.i, i64 %i.dt
  %next.gep425 = getelementptr i8, ptr %.0294.lcssa.i, i64 %i.dt
  %next.gep426 = getelementptr i8, ptr %.0296.lcssa.i, i64 %i.dt
  %next.gep427 = getelementptr i8, ptr %.0298.lcssa.i, i64 %i.dt
  %next.gep428 = getelementptr i8, ptr %.0300.lcssa.i, i64 %i.dt
  %next.gep429 = getelementptr i8, ptr %.0302.lcssa.i, i64 %i.dt
  %wide.load430 = load <8 x float>, ptr %next.gep422, align 4, !tbaa !56, !alias.scope !771
  %wide.load431 = load <8 x float>, ptr %next.gep423, align 4, !tbaa !56, !alias.scope !772
  %wide.load432 = load <8 x float>, ptr %next.gep424, align 4, !tbaa !56, !alias.scope !773
  %wide.load433 = load <8 x float>, ptr %next.gep425, align 4, !tbaa !56, !alias.scope !774
  %wide.load434 = load <8 x float>, ptr %next.gep426, align 4, !tbaa !56, !alias.scope !775
  %wide.load435 = load <8 x float>, ptr %next.gep427, align 4, !tbaa !56, !alias.scope !776
  %wide.load436 = load <8 x float>, ptr %next.gep428, align 4, !tbaa !56, !alias.scope !777
  %wide.load437 = load <8 x float>, ptr %next.gep429, align 4, !tbaa !56, !alias.scope !778
  %i.du = shufflevector <8 x float> %wide.load430, <8 x float> %wide.load431, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dv = shufflevector <8 x float> %wide.load432, <8 x float> %wide.load433, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dw = shufflevector <8 x float> %wide.load434, <8 x float> %wide.load435, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dx = shufflevector <8 x float> %wide.load436, <8 x float> %wide.load437, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dy = shufflevector <16 x float> %i.du, <16 x float> %i.dv, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dz = shufflevector <16 x float> %i.dw, <16 x float> %i.dx, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec438 = shufflevector <32 x float> %i.dy, <32 x float> %i.dz, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x float> %interleaved.vec438, ptr %next.gep421, align 4, !tbaa !56, !alias.scope !779, !noalias !780
  %index.next439 = add nuw i64 %index420, 8       ; 2 uses
  %i.ea = icmp eq i64 %index.next439, %n.vec418
  br i1 %i.ea, label %middle.block440, label %vector.body419, !llvm.loop !736

middle.block440:                                  ; preds = %vector.body419
  %cmp.n441 = icmp eq i64 %i.cu, %n.vec418
  br i1 %cmp.n441, label %._crit_edge.i, label %.lr.ph80.i.preheader454

.lr.ph80.i.preheader454:                          ; preds = %vector.memcheck385, %.lr.ph80.i.preheader, %middle.block440
  %.227479.i.ph = phi ptr [ %.1273.lcssa.i, %vector.memcheck385 ], [ %.1273.lcssa.i, %.lr.ph80.i.preheader ], [ %i.dg, %middle.block440 ]
  %.128078.i.ph = phi ptr [ %.0279.lcssa.i, %vector.memcheck385 ], [ %.0279.lcssa.i, %.lr.ph80.i.preheader ], [ %i.di, %middle.block440 ]
  %.129177.i.ph = phi ptr [ %.0290.lcssa.i, %vector.memcheck385 ], [ %.0290.lcssa.i, %.lr.ph80.i.preheader ], [ %i.dj, %middle.block440 ]
  %.129376.i.ph = phi ptr [ %.0292.lcssa.i, %vector.memcheck385 ], [ %.0292.lcssa.i, %.lr.ph80.i.preheader ], [ %i.dk, %middle.block440 ]
  %.129575.i.ph = phi ptr [ %.0294.lcssa.i, %vector.memcheck385 ], [ %.0294.lcssa.i, %.lr.ph80.i.preheader ], [ %i.dl, %middle.block440 ]
  %.129774.i.ph = phi ptr [ %.0296.lcssa.i, %vector.memcheck385 ], [ %.0296.lcssa.i, %.lr.ph80.i.preheader ], [ %i.dm, %middle.block440 ]
  %.129973.i.ph = phi ptr [ %.0298.lcssa.i, %vector.memcheck385 ], [ %.0298.lcssa.i, %.lr.ph80.i.preheader ], [ %i.dn, %middle.block440 ]
  %.130172.i.ph = phi ptr [ %.0300.lcssa.i, %vector.memcheck385 ], [ %.0300.lcssa.i, %.lr.ph80.i.preheader ], [ %i.do, %middle.block440 ]
  %.130371.i.ph = phi ptr [ %.0302.lcssa.i, %vector.memcheck385 ], [ %.0302.lcssa.i, %.lr.ph80.i.preheader ], [ %i.dp, %middle.block440 ]
  %.130570.i.ph = phi i32 [ %.0304.lcssa.i, %vector.memcheck385 ], [ %.0304.lcssa.i, %.lr.ph80.i.preheader ], [ %i.dr, %middle.block440 ]
  br label %.lr.ph80.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.127360.i = phi ptr [ %i.fo, %.lr.ph.i ], [ %.027283.i, %bb.c ] ; 9 uses
  %.027959.i = phi ptr [ %i.fp, %.lr.ph.i ], [ %i.bn, %bb.c ] ; 2 uses
  %.029058.i = phi ptr [ %i.fq, %.lr.ph.i ], [ %i.br, %bb.c ] ; 2 uses
  %.029257.i = phi ptr [ %i.fr, %.lr.ph.i ], [ %i.bv, %bb.c ] ; 2 uses
  %.029456.i = phi ptr [ %i.fs, %.lr.ph.i ], [ %i.bz, %bb.c ] ; 2 uses
  %.029655.i = phi ptr [ %i.ft, %.lr.ph.i ], [ %i.cd, %bb.c ] ; 2 uses
  %.029854.i = phi ptr [ %i.fu, %.lr.ph.i ], [ %i.ch, %bb.c ] ; 2 uses
  %.030053.i = phi ptr [ %i.fv, %.lr.ph.i ], [ %i.cl, %bb.c ] ; 2 uses
  %.030252.i = phi ptr [ %i.fw, %.lr.ph.i ], [ %i.cp, %bb.c ] ; 2 uses
  %.030451.i = phi i32 [ %i.fx, %.lr.ph.i ], [ 0, %bb.c ]
  %i.eb = load <8 x float>, ptr %.027959.i, align 1, !tbaa !114 ; 2 uses
  %i.ec = load <8 x float>, ptr %.029058.i, align 1, !tbaa !114 ; 2 uses
  %i.ed = load <8 x float>, ptr %.029257.i, align 1, !tbaa !114 ; 2 uses
  %i.ee = load <8 x float>, ptr %.029456.i, align 1, !tbaa !114 ; 2 uses
  %i.ef = load <8 x float>, ptr %.029655.i, align 1, !tbaa !114 ; 2 uses
  %i.eg = load <8 x float>, ptr %.029854.i, align 1, !tbaa !114 ; 2 uses
  %i.eh = load <8 x float>, ptr %.030053.i, align 1, !tbaa !114 ; 2 uses
  %i.ei = load <8 x float>, ptr %.030252.i, align 1, !tbaa !114 ; 2 uses
  %i.ej = shufflevector <8 x float> %i.eb, <8 x float> %i.ec, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ek = shufflevector <8 x float> %i.eb, <8 x float> %i.ec, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.el = shufflevector <8 x float> %i.ed, <8 x float> %i.ee, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.em = shufflevector <8 x float> %i.ed, <8 x float> %i.ee, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.en = shufflevector <8 x float> %i.ef, <8 x float> %i.eg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.eo = shufflevector <8 x float> %i.ef, <8 x float> %i.eg, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ep = shufflevector <8 x float> %i.eh, <8 x float> %i.ei, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.eq = shufflevector <8 x float> %i.eh, <8 x float> %i.ei, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.er = shufflevector <8 x float> %i.ej, <8 x float> %i.el, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.es = shufflevector <8 x float> %i.ej, <8 x float> %i.el, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.et = shufflevector <8 x float> %i.ek, <8 x float> %i.em, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.eu = shufflevector <8 x float> %i.ek, <8 x float> %i.em, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ev = shufflevector <8 x float> %i.en, <8 x float> %i.ep, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ew = shufflevector <8 x float> %i.en, <8 x float> %i.ep, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ex = shufflevector <8 x float> %i.eo, <8 x float> %i.eq, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ey = shufflevector <8 x float> %i.eo, <8 x float> %i.eq, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ez = shufflevector <8 x float> %i.er, <8 x float> %i.ev, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.fa = shufflevector <8 x float> %i.es, <8 x float> %i.ew, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.fb = shufflevector <8 x float> %i.et, <8 x float> %i.ex, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.fc = shufflevector <8 x float> %i.eu, <8 x float> %i.ey, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.fd = shufflevector <8 x float> %i.er, <8 x float> %i.ev, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.fe = shufflevector <8 x float> %i.es, <8 x float> %i.ew, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ff = shufflevector <8 x float> %i.et, <8 x float> %i.ex, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.fg = shufflevector <8 x float> %i.eu, <8 x float> %i.ey, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.ez, ptr %.127360.i, align 32, !tbaa !114
  %i.fh = getelementptr inbounds nuw i8, ptr %.127360.i, i64 32
  store <8 x float> %i.fa, ptr %i.fh, align 32, !tbaa !114
  %i.fi = getelementptr inbounds nuw i8, ptr %.127360.i, i64 64
  store <8 x float> %i.fb, ptr %i.fi, align 32, !tbaa !114
  %i.fj = getelementptr inbounds nuw i8, ptr %.127360.i, i64 96
  store <8 x float> %i.fc, ptr %i.fj, align 32, !tbaa !114
  %i.fk = getelementptr inbounds nuw i8, ptr %.127360.i, i64 128
  store <8 x float> %i.fd, ptr %i.fk, align 32, !tbaa !114
  %i.fl = getelementptr inbounds nuw i8, ptr %.127360.i, i64 160
  store <8 x float> %i.fe, ptr %i.fl, align 32, !tbaa !114
  %i.fm = getelementptr inbounds nuw i8, ptr %.127360.i, i64 192
  store <8 x float> %i.ff, ptr %i.fm, align 32, !tbaa !114
  %i.fn = getelementptr inbounds nuw i8, ptr %.127360.i, i64 224
  store <8 x float> %i.fg, ptr %i.fn, align 32, !tbaa !114
  %i.fo = getelementptr inbounds nuw i8, ptr %.127360.i, i64 256 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.027959.i, i64 32 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.029058.i, i64 32 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.029257.i, i64 32 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.029456.i, i64 32 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.029655.i, i64 32 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.029854.i, i64 32 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.030053.i, i64 32 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.030252.i, i64 32 ; 2 uses
  %i.fx = add nuw nsw i32 %.030451.i, 8           ; 2 uses
  %i.fy = or disjoint i32 %i.fx, 7
  %i.fz = icmp slt i32 %i.fy, %.sroa.speculated
  br i1 %i.fz, label %.lr.ph.i, label %.preheader50.i, !llvm.loop !737

.lr.ph80.i:                                       ; preds = %.lr.ph80.i.preheader454, %.lr.ph80.i
  %.227479.i = phi ptr [ %i.gp, %.lr.ph80.i ], [ %.227479.i.ph, %.lr.ph80.i.preheader454 ] ; 9 uses
  %.128078.i = phi ptr [ %i.gq, %.lr.ph80.i ], [ %.128078.i.ph, %.lr.ph80.i.preheader454 ] ; 2 uses
  %.129177.i = phi ptr [ %i.gr, %.lr.ph80.i ], [ %.129177.i.ph, %.lr.ph80.i.preheader454 ] ; 2 uses
  %.129376.i = phi ptr [ %i.gs, %.lr.ph80.i ], [ %.129376.i.ph, %.lr.ph80.i.preheader454 ] ; 2 uses
  %.129575.i = phi ptr [ %i.gt, %.lr.ph80.i ], [ %.129575.i.ph, %.lr.ph80.i.preheader454 ] ; 2 uses
  %.129774.i = phi ptr [ %i.gu, %.lr.ph80.i ], [ %.129774.i.ph, %.lr.ph80.i.preheader454 ] ; 2 uses
  %.129973.i = phi ptr [ %i.gv, %.lr.ph80.i ], [ %.129973.i.ph, %.lr.ph80.i.preheader454 ] ; 2 uses
  %.130172.i = phi ptr [ %i.gw, %.lr.ph80.i ], [ %.130172.i.ph, %.lr.ph80.i.preheader454 ] ; 2 uses
  %.130371.i = phi ptr [ %i.gx, %.lr.ph80.i ], [ %.130371.i.ph, %.lr.ph80.i.preheader454 ] ; 2 uses
  %.130570.i = phi i32 [ %i.gy, %.lr.ph80.i ], [ %.130570.i.ph, %.lr.ph80.i.preheader454 ]
  %i.ga = load float, ptr %.128078.i, align 4, !tbaa !56
  store float %i.ga, ptr %.227479.i, align 4, !tbaa !56
  %i.gb = load float, ptr %.129177.i, align 4, !tbaa !56
  %i.gc = getelementptr inbounds nuw i8, ptr %.227479.i, i64 4
  store float %i.gb, ptr %i.gc, align 4, !tbaa !56
  %i.gd = load float, ptr %.129376.i, align 4, !tbaa !56
  %i.ge = getelementptr inbounds nuw i8, ptr %.227479.i, i64 8
  store float %i.gd, ptr %i.ge, align 4, !tbaa !56
  %i.gf = load float, ptr %.129575.i, align 4, !tbaa !56
  %i.gg = getelementptr inbounds nuw i8, ptr %.227479.i, i64 12
  store float %i.gf, ptr %i.gg, align 4, !tbaa !56
  %i.gh = load float, ptr %.129774.i, align 4, !tbaa !56
  %i.gi = getelementptr inbounds nuw i8, ptr %.227479.i, i64 16
  store float %i.gh, ptr %i.gi, align 4, !tbaa !56
  %i.gj = load float, ptr %.129973.i, align 4, !tbaa !56
  %i.gk = getelementptr inbounds nuw i8, ptr %.227479.i, i64 20
  store float %i.gj, ptr %i.gk, align 4, !tbaa !56
  %i.gl = load float, ptr %.130172.i, align 4, !tbaa !56
  %i.gm = getelementptr inbounds nuw i8, ptr %.227479.i, i64 24
  store float %i.gl, ptr %i.gm, align 4, !tbaa !56
  %i.gn = load float, ptr %.130371.i, align 4, !tbaa !56
  %i.go = getelementptr inbounds nuw i8, ptr %.227479.i, i64 28
  store float %i.gn, ptr %i.go, align 4, !tbaa !56
  %i.gp = getelementptr inbounds nuw i8, ptr %.227479.i, i64 32 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.128078.i, i64 4
  %i.gr = getelementptr inbounds nuw i8, ptr %.129177.i, i64 4
  %i.gs = getelementptr inbounds nuw i8, ptr %.129376.i, i64 4
  %i.gt = getelementptr inbounds nuw i8, ptr %.129575.i, i64 4
  %i.gu = getelementptr inbounds nuw i8, ptr %.129774.i, i64 4
  %i.gv = getelementptr inbounds nuw i8, ptr %.129973.i, i64 4
  %i.gw = getelementptr inbounds nuw i8, ptr %.130172.i, i64 4
  %i.gx = getelementptr inbounds nuw i8, ptr %.130371.i, i64 4
  %i.gy = add nuw nsw i32 %.130570.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.gy, %.sroa.speculated
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph80.i, !llvm.loop !738

._crit_edge.i:                                    ; preds = %.lr.ph80.i, %middle.block440, %.preheader50.i
  %.2274.lcssa.i = phi ptr [ %.1273.lcssa.i, %.preheader50.i ], [ %i.dg, %middle.block440 ], [ %i.gp, %.lr.ph80.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %i.gz = or disjoint i64 %indvars.iv.next.i, 7
  %i.ha = icmp samesign ult i64 %i.gz, %i.y
  br i1 %i.ha, label %bb.c, label %.preheader49.loopexit.i, !llvm.loop !739

.preheader46.loopexit.i:                          ; preds = %._crit_edge122.i
  %i.hb = trunc nuw nsw i64 %indvars.iv.next230.i to i32
  br label %.preheader46.i

.preheader46.i:                                   ; preds = %.preheader46.loopexit.i, %.preheader49.i
  %.1276.lcssa.i = phi i32 [ %.0275.lcssa.i, %.preheader49.i ], [ %i.hb, %.preheader46.loopexit.i ] ; 3 uses
  %.3.lcssa.i = phi ptr [ %.0272.lcssa.i, %.preheader49.i ], [ %.6.lcssa.i, %.preheader46.loopexit.i ] ; 2 uses
  %i.hc = or disjoint i32 %.1276.lcssa.i, 1
  %i.hd = icmp slt i32 %i.hc, %.sroa.speculated57
  br i1 %i.hd, label %.lr.ph157.i, label %.preheader43.i

.lr.ph157.i:                                      ; preds = %.preheader46.i
  %i.he = sext i32 %.095 to i64                   ; 2 uses
  %i.hf = icmp sgt i32 %.sroa.speculated, 7
  %i.hg = and i32 %.sroa.speculated, -8
  %i.hh = zext nneg i32 %.1276.lcssa.i to i64
  %i.hi = sext i32 %i.aw to i64                   ; 2 uses
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge122.i, %.lr.ph126.i
  %indvars.iv229.i = phi i64 [ %i.bh, %.lr.ph126.i ], [ %indvars.iv.next230.i, %._crit_edge122.i ] ; 2 uses
  %.3125.i = phi ptr [ %.0272.lcssa.i, %.lr.ph126.i ], [ %.6.lcssa.i, %._crit_edge122.i ] ; 2 uses
  %i.hj = load ptr, ptr %8, align 8, !tbaa !37    ; 4 uses
  %i.hk = add nsw i64 %indvars.iv229.i, %i.z      ; 4 uses
  %i.hl = mul nsw i64 %i.hk, %i.bi
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.hj, i64 %i.hl
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.hm, i64 %i.be ; 2 uses
  %i.ho = add nsw i64 %i.hk, 1
  %i.hp = mul nsw i64 %i.ho, %i.bi
  %i.hq = getelementptr inbounds [4 x i8], ptr %i.hj, i64 %i.hp
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.hq, i64 %i.be ; 2 uses
  %i.hs = add nsw i64 %i.hk, 2
  %i.ht = mul nsw i64 %i.hs, %i.bi
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.hj, i64 %i.ht
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.hu, i64 %i.be ; 2 uses
  %i.hw = add nsw i64 %i.hk, 3
  %i.hx = mul nsw i64 %i.hw, %i.bi
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.hj, i64 %i.hx
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %i.be ; 2 uses
  br i1 %i.bf, label %.lr.ph95.i, label %.preheader48.i

.preheader48.i:                                   ; preds = %.lr.ph95.i, %bb.d
  %.0318.lcssa.i = phi ptr [ %i.hn, %bb.d ], [ %i.is, %.lr.ph95.i ] ; 2 uses
  %.0315.lcssa.i = phi ptr [ %i.hr, %bb.d ], [ %i.it, %.lr.ph95.i ] ; 2 uses
  %.0312.lcssa.i = phi ptr [ %i.hv, %bb.d ], [ %i.iu, %.lr.ph95.i ] ; 2 uses
  %.0309.lcssa.i = phi ptr [ %i.hz, %bb.d ], [ %i.iv, %.lr.ph95.i ] ; 2 uses
  %.0306.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.bg, %.lr.ph95.i ] ; 3 uses
  %.4.lcssa.i = phi ptr [ %.3125.i, %bb.d ], [ %i.ir, %.lr.ph95.i ] ; 2 uses
  %i.ia = or disjoint i32 %.0306.lcssa.i, 3
  %i.ib = icmp slt i32 %i.ia, %.sroa.speculated
  br i1 %i.ib, label %.lr.ph108.i, label %.preheader47.i

.lr.ph95.i:                                       ; preds = %bb.d, %.lr.ph95.i
  %.493.i = phi ptr [ %i.ir, %.lr.ph95.i ], [ %.3125.i, %bb.d ] ; 5 uses
  %.030692.i = phi i32 [ %i.iw, %.lr.ph95.i ], [ 0, %bb.d ]
  %.030991.i = phi ptr [ %i.iv, %.lr.ph95.i ], [ %i.hz, %bb.d ] ; 2 uses
  %.031290.i = phi ptr [ %i.iu, %.lr.ph95.i ], [ %i.hv, %bb.d ] ; 2 uses
  %.031589.i = phi ptr [ %i.it, %.lr.ph95.i ], [ %i.hr, %bb.d ] ; 2 uses
  %.031888.i = phi ptr [ %i.is, %.lr.ph95.i ], [ %i.hn, %bb.d ] ; 2 uses
  %i.ic = load <8 x float>, ptr %.031888.i, align 1, !tbaa !114 ; 2 uses
  %i.id = load <8 x float>, ptr %.031589.i, align 1, !tbaa !114 ; 2 uses
  %i.ie = load <8 x float>, ptr %.031290.i, align 1, !tbaa !114 ; 2 uses
  %i.if = load <8 x float>, ptr %.030991.i, align 1, !tbaa !114 ; 2 uses
  %i.ig = shufflevector <8 x float> %i.ic, <8 x float> %i.id, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ih = shufflevector <8 x float> %i.ic, <8 x float> %i.id, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ii = shufflevector <8 x float> %i.ie, <8 x float> %i.if, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ij = shufflevector <8 x float> %i.ie, <8 x float> %i.if, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ik = shufflevector <8 x float> %i.ig, <8 x float> %i.ii, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.il = shufflevector <8 x float> %i.ih, <8 x float> %i.ij, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.im = shufflevector <8 x float> %i.ig, <8 x float> %i.ii, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  %i.in = shufflevector <8 x float> %i.ih, <8 x float> %i.ij, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  store <8 x float> %i.ik, ptr %.493.i, align 32, !tbaa !114
  %i.io = getelementptr inbounds nuw i8, ptr %.493.i, i64 32
  store <8 x float> %i.il, ptr %i.io, align 32, !tbaa !114
  %i.ip = getelementptr inbounds nuw i8, ptr %.493.i, i64 64
  store <8 x float> %i.im, ptr %i.ip, align 32, !tbaa !114
  %i.iq = getelementptr inbounds nuw i8, ptr %.493.i, i64 96
  store <8 x float> %i.in, ptr %i.iq, align 32, !tbaa !114
  %i.ir = getelementptr inbounds nuw i8, ptr %.493.i, i64 128 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.031888.i, i64 32 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.031589.i, i64 32 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.031290.i, i64 32 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.030991.i, i64 32 ; 2 uses
  %i.iw = add nuw nsw i32 %.030692.i, 8           ; 2 uses
  %i.ix = or disjoint i32 %i.iw, 7
  %i.iy = icmp slt i32 %i.ix, %.sroa.speculated
  br i1 %i.iy, label %.lr.ph95.i, label %.preheader48.i, !llvm.loop !740

.preheader47.i:                                   ; preds = %.lr.ph108.i, %.preheader48.i
  %.1319.lcssa.i = phi ptr [ %.0318.lcssa.i, %.preheader48.i ], [ %i.lg, %.lr.ph108.i ] ; 6 uses
  %.1316.lcssa.i = phi ptr [ %.0315.lcssa.i, %.preheader48.i ], [ %i.lh, %.lr.ph108.i ] ; 6 uses
  %.1313.lcssa.i = phi ptr [ %.0312.lcssa.i, %.preheader48.i ], [ %i.li, %.lr.ph108.i ] ; 6 uses
  %.1310.lcssa.i = phi ptr [ %.0309.lcssa.i, %.preheader48.i ], [ %i.lj, %.lr.ph108.i ] ; 6 uses
  %.1307.lcssa.i = phi i32 [ %.0306.lcssa.i, %.preheader48.i ], [ %i.lk, %.lr.ph108.i ] ; 6 uses
  %.5.lcssa.i = phi ptr [ %.4.lcssa.i, %.preheader48.i ], [ %i.lf, %.lr.ph108.i ] ; 10 uses
  %i.iz = icmp slt i32 %.1307.lcssa.i, %.sroa.speculated
  br i1 %i.iz, label %.lr.ph121.i.preheader, label %._crit_edge122.i

.lr.ph121.i.preheader:                            ; preds = %.preheader47.i
  %i.ja = xor i32 %.1307.lcssa.i, -1
  %i.jb = add i32 %.sroa.speculated, %i.ja        ; 2 uses
  %i.jc = zext i32 %i.jb to i64
  %i.jd = add nuw nsw i64 %i.jc, 1                ; 2 uses
  %min.iters.check294 = icmp ult i32 %i.jb, 15
  br i1 %min.iters.check294, label %.lr.ph121.i.preheader453, label %vector.memcheck295

vector.memcheck295:                               ; preds = %.lr.ph121.i.preheader
  %i.je = xor i32 %.1307.lcssa.i, -1
  %i.jf = add i32 %.sroa.speculated, %i.je
  %i.jg = zext i32 %i.jf to i64                   ; 2 uses
  %i.jh = shl nuw nsw i64 %i.jg, 4
  %i.ji = getelementptr i8, ptr %.5.lcssa.i, i64 %i.jh
  %i.jj = getelementptr i8, ptr %i.ji, i64 16     ; 4 uses
  %i.jk = shl nuw nsw i64 %i.jg, 2
  %i.jl = add nuw nsw i64 %i.jk, 4                ; 4 uses
  %15 = getelementptr i8, ptr %.1310.lcssa.i, i64 %i.jl
  %16 = getelementptr i8, ptr %.1313.lcssa.i, i64 %i.jl
  %i.jm = getelementptr i8, ptr %.1316.lcssa.i, i64 %i.jl
  %17 = getelementptr i8, ptr %.1319.lcssa.i, i64 %i.jl
  %bound0296.a = icmp ult ptr %.5.lcssa.i, %15
  %bound1297 = icmp ult ptr %.1310.lcssa.i, %i.jj
  %found.conflict298 = and i1 %bound0296.a, %bound1297
  %bound0299 = icmp ult ptr %.5.lcssa.i, %16
  %bound1300 = icmp ult ptr %.1313.lcssa.i, %i.jj
  %found.conflict301 = and i1 %bound0299, %bound1300
  %conflict.rdx302 = or i1 %found.conflict298, %found.conflict301
  %bound0303 = icmp ult ptr %.5.lcssa.i, %i.jm
  %bound1304 = icmp ult ptr %.1316.lcssa.i, %i.jj
  %found.conflict305 = and i1 %bound0303, %bound1304
  %conflict.rdx306 = or i1 %conflict.rdx302, %found.conflict305
  %bound0307 = icmp ult ptr %.5.lcssa.i, %17
  %bound1308 = icmp ult ptr %.1319.lcssa.i, %i.jj
  %found.conflict309 = and i1 %bound0307, %bound1308
  %conflict.rdx310 = or i1 %conflict.rdx306, %found.conflict309
  br i1 %conflict.rdx310, label %.lr.ph121.i.preheader453, label %vector.ph311

vector.ph311:                                     ; preds = %vector.memcheck295
  %n.vec312 = and i64 %i.jd, 8589934584           ; 5 uses
  %i.jn = shl nuw nsw i64 %n.vec312, 4
  %i.jo = getelementptr i8, ptr %.5.lcssa.i, i64 %i.jn ; 2 uses
  %i.jp = trunc i64 %n.vec312 to i32
  %i.jq = add i32 %.1307.lcssa.i, %i.jp
  %i.jr = shl nuw nsw i64 %n.vec312, 2            ; 4 uses
  %i.js = getelementptr i8, ptr %.1310.lcssa.i, i64 %i.jr
  %i.jt = getelementptr i8, ptr %.1313.lcssa.i, i64 %i.jr
  %i.ju = getelementptr i8, ptr %.1316.lcssa.i, i64 %i.jr
  %i.jv = getelementptr i8, ptr %.1319.lcssa.i, i64 %i.jr
  br label %vector.body313

vector.body313:                                   ; preds = %vector.body313, %vector.ph311
  %index314 = phi i64 [ 0, %vector.ph311 ], [ %index.next325, %vector.body313 ] ; 3 uses
  %i.jw = shl i64 %index314, 4
  %next.gep315 = getelementptr i8, ptr %.5.lcssa.i, i64 %i.jw
  %i.jx = shl i64 %index314, 2                    ; 4 uses
  %next.gep316 = getelementptr i8, ptr %.1310.lcssa.i, i64 %i.jx
  %next.gep317 = getelementptr i8, ptr %.1313.lcssa.i, i64 %i.jx
  %next.gep318 = getelementptr i8, ptr %.1316.lcssa.i, i64 %i.jx
  %next.gep319 = getelementptr i8, ptr %.1319.lcssa.i, i64 %i.jx
  %wide.load320 = load <8 x float>, ptr %next.gep319, align 4, !tbaa !56, !alias.scope !781
  %wide.load321 = load <8 x float>, ptr %next.gep318, align 4, !tbaa !56, !alias.scope !782
  %wide.load322 = load <8 x float>, ptr %next.gep317, align 4, !tbaa !56, !alias.scope !783
  %wide.load323 = load <8 x float>, ptr %next.gep316, align 4, !tbaa !56, !alias.scope !784
  %i.jy = shufflevector <8 x float> %wide.load320, <8 x float> %wide.load321, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.jz = shufflevector <8 x float> %wide.load322, <8 x float> %wide.load323, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec324 = shufflevector <16 x float> %i.jy, <16 x float> %i.jz, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec324, ptr %next.gep315, align 4, !tbaa !56, !alias.scope !785, !noalias !786
  %index.next325 = add nuw i64 %index314, 8       ; 2 uses
  %i.ka = icmp eq i64 %index.next325, %n.vec312
  br i1 %i.ka, label %middle.block326, label %vector.body313, !llvm.loop !747

middle.block326:                                  ; preds = %vector.body313
  %cmp.n327 = icmp eq i64 %i.jd, %n.vec312
  br i1 %cmp.n327, label %._crit_edge122.i, label %.lr.ph121.i.preheader453

.lr.ph121.i.preheader453:                         ; preds = %vector.memcheck295, %.lr.ph121.i.preheader, %middle.block326
  %.6120.i.ph = phi ptr [ %.5.lcssa.i, %vector.memcheck295 ], [ %.5.lcssa.i, %.lr.ph121.i.preheader ], [ %i.jo, %middle.block326 ] ; 6 uses
  %.2308119.i.ph = phi i32 [ %.1307.lcssa.i, %vector.memcheck295 ], [ %.1307.lcssa.i, %.lr.ph121.i.preheader ], [ %i.jq, %middle.block326 ] ; 4 uses
  %.2311118.i.ph = phi ptr [ %.1310.lcssa.i, %vector.memcheck295 ], [ %.1310.lcssa.i, %.lr.ph121.i.preheader ], [ %i.js, %middle.block326 ] ; 3 uses
  %.2314117.i.ph = phi ptr [ %.1313.lcssa.i, %vector.memcheck295 ], [ %.1313.lcssa.i, %.lr.ph121.i.preheader ], [ %i.jt, %middle.block326 ] ; 3 uses
  %.2317116.i.ph = phi ptr [ %.1316.lcssa.i, %vector.memcheck295 ], [ %.1316.lcssa.i, %.lr.ph121.i.preheader ], [ %i.ju, %middle.block326 ] ; 3 uses
  %.2320115.i.ph = phi ptr [ %.1319.lcssa.i, %vector.memcheck295 ], [ %.1319.lcssa.i, %.lr.ph121.i.preheader ], [ %i.jv, %middle.block326 ] ; 3 uses
  %i.kb = sub i32 %.sroa.speculated, %.2308119.i.ph
  %.neg = add i32 %.2308119.i.ph, 1
  %xtraiter = and i32 %i.kb, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph121.i.prol.loopexit, label %.lr.ph121.i.prol

.lr.ph121.i.prol:                                 ; preds = %.lr.ph121.i.preheader453
  %i.kc = load float, ptr %.2320115.i.ph, align 4, !tbaa !56
  store float %i.kc, ptr %.6120.i.ph, align 4, !tbaa !56
  %i.kd = load float, ptr %.2317116.i.ph, align 4, !tbaa !56
  %i.ke = getelementptr inbounds nuw i8, ptr %.6120.i.ph, i64 4
  store float %i.kd, ptr %i.ke, align 4, !tbaa !56
  %i.kf = load float, ptr %.2314117.i.ph, align 4, !tbaa !56
  %i.kg = getelementptr inbounds nuw i8, ptr %.6120.i.ph, i64 8
  store float %i.kf, ptr %i.kg, align 4, !tbaa !56
  %i.kh = load float, ptr %.2311118.i.ph, align 4, !tbaa !56
  %i.ki = getelementptr inbounds nuw i8, ptr %.6120.i.ph, i64 12
  store float %i.kh, ptr %i.ki, align 4, !tbaa !56
  %i.kj = getelementptr inbounds nuw i8, ptr %.6120.i.ph, i64 16 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.2320115.i.ph, i64 4
  %i.kl = getelementptr inbounds nuw i8, ptr %.2317116.i.ph, i64 4
  %i.km = getelementptr inbounds nuw i8, ptr %.2314117.i.ph, i64 4
  %i.kn = getelementptr inbounds nuw i8, ptr %.2311118.i.ph, i64 4
  %i.ko = add nuw nsw i32 %.2308119.i.ph, 1
  br label %.lr.ph121.i.prol.loopexit

.lr.ph121.i.prol.loopexit:                        ; preds = %.lr.ph121.i.prol, %.lr.ph121.i.preheader453
  %.lcssa475.unr = phi ptr [ poison, %.lr.ph121.i.preheader453 ], [ %i.kj, %.lr.ph121.i.prol ]
  %.6120.i.unr = phi ptr [ %.6120.i.ph, %.lr.ph121.i.preheader453 ], [ %i.kj, %.lr.ph121.i.prol ]
  %.2308119.i.unr = phi i32 [ %.2308119.i.ph, %.lr.ph121.i.preheader453 ], [ %i.ko, %.lr.ph121.i.prol ]
  %.2311118.i.unr = phi ptr [ %.2311118.i.ph, %.lr.ph121.i.preheader453 ], [ %i.kn, %.lr.ph121.i.prol ]
  %.2314117.i.unr = phi ptr [ %.2314117.i.ph, %.lr.ph121.i.preheader453 ], [ %i.km, %.lr.ph121.i.prol ]
  %.2317116.i.unr = phi ptr [ %.2317116.i.ph, %.lr.ph121.i.preheader453 ], [ %i.kl, %.lr.ph121.i.prol ]
  %.2320115.i.unr = phi ptr [ %.2320115.i.ph, %.lr.ph121.i.preheader453 ], [ %i.kk, %.lr.ph121.i.prol ]
  %i.kp = icmp eq i32 %.sroa.speculated, %.neg
  br i1 %i.kp, label %._crit_edge122.i, label %.lr.ph121.i

.lr.ph108.i:                                      ; preds = %.preheader48.i, %.lr.ph108.i
  %.5107.i = phi ptr [ %i.lf, %.lr.ph108.i ], [ %.4.lcssa.i, %.preheader48.i ] ; 5 uses
  %.1307106.i = phi i32 [ %i.lk, %.lr.ph108.i ], [ %.0306.lcssa.i, %.preheader48.i ]
  %.1310105.i = phi ptr [ %i.lj, %.lr.ph108.i ], [ %.0309.lcssa.i, %.preheader48.i ] ; 2 uses
  %.1313104.i = phi ptr [ %i.li, %.lr.ph108.i ], [ %.0312.lcssa.i, %.preheader48.i ] ; 2 uses
  %.1316103.i = phi ptr [ %i.lh, %.lr.ph108.i ], [ %.0315.lcssa.i, %.preheader48.i ] ; 2 uses
  %.1319102.i = phi ptr [ %i.lg, %.lr.ph108.i ], [ %.0318.lcssa.i, %.preheader48.i ] ; 2 uses
  %i.kq = load <4 x float>, ptr %.1319102.i, align 1, !tbaa !114 ; 2 uses
  %i.kr = load <4 x float>, ptr %.1316103.i, align 1, !tbaa !114 ; 2 uses
  %i.ks = load <4 x float>, ptr %.1313104.i, align 1, !tbaa !114 ; 2 uses
  %i.kt = load <4 x float>, ptr %.1310105.i, align 1, !tbaa !114 ; 2 uses
  %i.ku = shufflevector <4 x float> %i.kq, <4 x float> %i.kr, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.kv = shufflevector <4 x float> %i.ks, <4 x float> %i.kt, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.kw = shufflevector <4 x float> %i.kq, <4 x float> %i.kr, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.kx = shufflevector <4 x float> %i.ks, <4 x float> %i.kt, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ky = shufflevector <4 x float> %i.ku, <4 x float> %i.kv, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.kz = shufflevector <4 x float> %i.kv, <4 x float> %i.ku, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.la = shufflevector <4 x float> %i.kw, <4 x float> %i.kx, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.lb = shufflevector <4 x float> %i.kx, <4 x float> %i.kw, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.ky, ptr %.5107.i, align 16, !tbaa !114
  %i.lc = getelementptr inbounds nuw i8, ptr %.5107.i, i64 16
  store <4 x float> %i.kz, ptr %i.lc, align 16, !tbaa !114
  %i.ld = getelementptr inbounds nuw i8, ptr %.5107.i, i64 32
  store <4 x float> %i.la, ptr %i.ld, align 16, !tbaa !114
  %i.le = getelementptr inbounds nuw i8, ptr %.5107.i, i64 48
  store <4 x float> %i.lb, ptr %i.le, align 16, !tbaa !114
  %i.lf = getelementptr inbounds nuw i8, ptr %.5107.i, i64 64 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.1319102.i, i64 16 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.1316103.i, i64 16 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.1313104.i, i64 16 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.1310105.i, i64 16 ; 2 uses
  %i.lk = add nuw nsw i32 %.1307106.i, 4          ; 3 uses
  %i.ll = or disjoint i32 %i.lk, 3
  %i.lm = icmp slt i32 %i.ll, %.sroa.speculated
  br i1 %i.lm, label %.lr.ph108.i, label %.preheader47.i, !llvm.loop !748

.lr.ph121.i:                                      ; preds = %.lr.ph121.i.prol.loopexit, %.lr.ph121.i
  %.6120.i = phi ptr [ %i.mg, %.lr.ph121.i ], [ %.6120.i.unr, %.lr.ph121.i.prol.loopexit ] ; 9 uses
  %.2308119.i = phi i32 [ %i.ml, %.lr.ph121.i ], [ %.2308119.i.unr, %.lr.ph121.i.prol.loopexit ]
  %.2311118.i = phi ptr [ %i.mk, %.lr.ph121.i ], [ %.2311118.i.unr, %.lr.ph121.i.prol.loopexit ] ; 3 uses
  %.2314117.i = phi ptr [ %i.mj, %.lr.ph121.i ], [ %.2314117.i.unr, %.lr.ph121.i.prol.loopexit ] ; 3 uses
  %.2317116.i = phi ptr [ %i.mi, %.lr.ph121.i ], [ %.2317116.i.unr, %.lr.ph121.i.prol.loopexit ] ; 3 uses
  %.2320115.i = phi ptr [ %i.mh, %.lr.ph121.i ], [ %.2320115.i.unr, %.lr.ph121.i.prol.loopexit ] ; 3 uses
  %i.ln = load float, ptr %.2320115.i, align 4, !tbaa !56
  store float %i.ln, ptr %.6120.i, align 4, !tbaa !56
  %i.lo = load float, ptr %.2317116.i, align 4, !tbaa !56
  %i.lp = getelementptr inbounds nuw i8, ptr %.6120.i, i64 4
  store float %i.lo, ptr %i.lp, align 4, !tbaa !56
  %i.lq = load float, ptr %.2314117.i, align 4, !tbaa !56
  %i.lr = getelementptr inbounds nuw i8, ptr %.6120.i, i64 8
  store float %i.lq, ptr %i.lr, align 4, !tbaa !56
  %i.ls = load float, ptr %.2311118.i, align 4, !tbaa !56
  %i.lt = getelementptr inbounds nuw i8, ptr %.6120.i, i64 12
  store float %i.ls, ptr %i.lt, align 4, !tbaa !56
  %i.lu = getelementptr inbounds nuw i8, ptr %.6120.i, i64 16
  %i.lv = getelementptr inbounds nuw i8, ptr %.2320115.i, i64 4
  %i.lw = getelementptr inbounds nuw i8, ptr %.2317116.i, i64 4
  %i.lx = getelementptr inbounds nuw i8, ptr %.2314117.i, i64 4
  %i.ly = getelementptr inbounds nuw i8, ptr %.2311118.i, i64 4
  %i.lz = load float, ptr %i.lv, align 4, !tbaa !56
  store float %i.lz, ptr %i.lu, align 4, !tbaa !56
  %i.ma = load float, ptr %i.lw, align 4, !tbaa !56
  %i.mb = getelementptr inbounds nuw i8, ptr %.6120.i, i64 20
  store float %i.ma, ptr %i.mb, align 4, !tbaa !56
  %i.mc = load float, ptr %i.lx, align 4, !tbaa !56
  %i.md = getelementptr inbounds nuw i8, ptr %.6120.i, i64 24
  store float %i.mc, ptr %i.md, align 4, !tbaa !56
  %i.me = load float, ptr %i.ly, align 4, !tbaa !56
  %i.mf = getelementptr inbounds nuw i8, ptr %.6120.i, i64 28
  store float %i.me, ptr %i.mf, align 4, !tbaa !56
  %i.mg = getelementptr inbounds nuw i8, ptr %.6120.i, i64 32 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.2320115.i, i64 8
  %i.mi = getelementptr inbounds nuw i8, ptr %.2317116.i, i64 8
  %i.mj = getelementptr inbounds nuw i8, ptr %.2314117.i, i64 8
  %i.mk = getelementptr inbounds nuw i8, ptr %.2311118.i, i64 8
  %i.ml = add nuw nsw i32 %.2308119.i, 2          ; 2 uses
  %exitcond228.not.i.1 = icmp eq i32 %i.ml, %.sroa.speculated
  br i1 %exitcond228.not.i.1, label %._crit_edge122.i, label %.lr.ph121.i, !llvm.loop !749

._crit_edge122.i:                                 ; preds = %.lr.ph121.i.prol.loopexit, %.lr.ph121.i, %middle.block326, %.preheader47.i
  %.6.lcssa.i = phi ptr [ %.5.lcssa.i, %.preheader47.i ], [ %i.jo, %middle.block326 ], [ %.lcssa475.unr, %.lr.ph121.i.prol.loopexit ], [ %i.mg, %.lr.ph121.i ] ; 2 uses
  %indvars.iv.next230.i = add nuw nsw i64 %indvars.iv229.i, 4 ; 3 uses
  %i.mm = icmp slt i64 %indvars.iv.next230.i, %invariant.op.i
  br i1 %i.mm, label %bb.d, label %.preheader46.loopexit.i, !llvm.loop !750

.preheader43.loopexit.i:                          ; preds = %._crit_edge153.i
  %i.mn = trunc nuw nsw i64 %indvars.iv.next234.i to i32
  br label %.preheader43.i

.preheader43.i:                                   ; preds = %.preheader43.loopexit.i, %.preheader46.i
  %.2277.lcssa.i = phi i32 [ %.1276.lcssa.i, %.preheader46.i ], [ %i.mn, %.preheader43.loopexit.i ] ; 2 uses
  %.7.lcssa.i = phi ptr [ %.3.lcssa.i, %.preheader46.i ], [ %.10.lcssa.i, %.preheader43.loopexit.i ]
  %i.mo = icmp slt i32 %.2277.lcssa.i, %.sroa.speculated57
  br i1 %i.mo, label %.lr.ph183.i, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph183.i:                                      ; preds = %.preheader43.i
  %i.mp = sext i32 %.095 to i64
  %i.mq = icmp sgt i32 %.sroa.speculated, 7
  %i.mr = and i32 %.sroa.speculated, -8           ; 2 uses
  %i.ms = sext i32 %.2277.lcssa.i to i64
  %i.mt = sext i32 %i.aw to i64
  %i.mu = add i32 %.sroa.speculated, -8           ; 2 uses
  %i.mv = lshr i32 %i.mu, 3
  %i.mw = add nuw nsw i32 %i.mv, 1                ; 2 uses
  %xtraiter493 = and i32 %i.mw, 3                 ; 3 uses
  %i.mx = icmp ult i32 %i.mu, 24
  %unroll_iter = and i32 %i.mw, 1073741820
  %lcmp.mod494.not = icmp eq i32 %xtraiter493, 0
  %lcmp.mod497 = icmp ne i32 %xtraiter493, 0
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge153.i, %.lr.ph157.i
  %indvars.iv233.i = phi i64 [ %i.hh, %.lr.ph157.i ], [ %indvars.iv.next234.i, %._crit_edge153.i ] ; 2 uses
  %.7156.i = phi ptr [ %.3.lcssa.i, %.lr.ph157.i ], [ %.10.lcssa.i, %._crit_edge153.i ] ; 2 uses
  %i.my = load ptr, ptr %8, align 8, !tbaa !37    ; 2 uses
  %i.mz = add nsw i64 %indvars.iv233.i, %i.z      ; 2 uses
  %i.na = mul nsw i64 %i.mz, %i.hi
  %i.nb = getelementptr inbounds [4 x i8], ptr %i.my, i64 %i.na
  %i.nc = getelementptr inbounds [4 x i8], ptr %i.nb, i64 %i.he ; 2 uses
  %i.nd = add nsw i64 %i.mz, 1
  %i.ne = mul nsw i64 %i.nd, %i.hi
  %i.nf = getelementptr inbounds [4 x i8], ptr %i.my, i64 %i.ne
  %i.ng = getelementptr inbounds [4 x i8], ptr %i.nf, i64 %i.he ; 2 uses
  br i1 %i.hf, label %.lr.ph134.i, label %.preheader45.i

.preheader45.i:                                   ; preds = %.lr.ph134.i, %bb.e
  %.0287.lcssa.i = phi ptr [ %i.nc, %bb.e ], [ %i.np, %.lr.ph134.i ] ; 2 uses
  %.0284.lcssa.i = phi ptr [ %i.ng, %bb.e ], [ %i.nq, %.lr.ph134.i ] ; 2 uses
  %.0281.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.hg, %.lr.ph134.i ] ; 3 uses
  %.8.lcssa.i = phi ptr [ %.7156.i, %bb.e ], [ %i.no, %.lr.ph134.i ] ; 2 uses
  %i.nh = or disjoint i32 %.0281.lcssa.i, 3
  %i.ni = icmp slt i32 %i.nh, %.sroa.speculated
  br i1 %i.ni, label %.lr.ph143.i, label %.preheader44.i

.lr.ph134.i:                                      ; preds = %bb.e, %.lr.ph134.i
  %.8132.i = phi ptr [ %i.no, %.lr.ph134.i ], [ %.7156.i, %bb.e ] ; 3 uses
  %.0281131.i = phi i32 [ %i.nr, %.lr.ph134.i ], [ 0, %bb.e ]
  %.0284130.i = phi ptr [ %i.nq, %.lr.ph134.i ], [ %i.ng, %bb.e ] ; 2 uses
  %.0287129.i = phi ptr [ %i.np, %.lr.ph134.i ], [ %i.nc, %bb.e ] ; 2 uses
  %i.nj = load <8 x float>, ptr %.0287129.i, align 1, !tbaa !114 ; 2 uses
  %i.nk = load <8 x float>, ptr %.0284130.i, align 1, !tbaa !114 ; 2 uses
  %i.nl = shufflevector <8 x float> %i.nj, <8 x float> %i.nk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.nm = shufflevector <8 x float> %i.nj, <8 x float> %i.nk, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x float> %i.nl, ptr %.8132.i, align 1, !tbaa !114
  %i.nn = getelementptr inbounds nuw i8, ptr %.8132.i, i64 32
  store <8 x float> %i.nm, ptr %i.nn, align 1, !tbaa !114
  %i.no = getelementptr inbounds nuw i8, ptr %.8132.i, i64 64 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %.0287129.i, i64 32 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.0284130.i, i64 32 ; 2 uses
  %i.nr = add nuw nsw i32 %.0281131.i, 8          ; 2 uses
  %i.ns = or disjoint i32 %i.nr, 7
  %i.nt = icmp slt i32 %i.ns, %.sroa.speculated
  br i1 %i.nt, label %.lr.ph134.i, label %.preheader45.i, !llvm.loop !751

.preheader44.i:                                   ; preds = %.lr.ph143.i, %.preheader45.i
  %.1288.lcssa.i = phi ptr [ %.0287.lcssa.i, %.preheader45.i ], [ %i.pl, %.lr.ph143.i ] ; 6 uses
  %.1285.lcssa.i = phi ptr [ %.0284.lcssa.i, %.preheader45.i ], [ %i.pm, %.lr.ph143.i ] ; 6 uses
  %.1282.lcssa.i = phi i32 [ %.0281.lcssa.i, %.preheader45.i ], [ %i.pn, %.lr.ph143.i ] ; 6 uses
  %.9.lcssa.i = phi ptr [ %.8.lcssa.i, %.preheader45.i ], [ %i.pk, %.lr.ph143.i ] ; 9 uses
  %i.nu = icmp slt i32 %.1282.lcssa.i, %.sroa.speculated
  br i1 %i.nu, label %.lr.ph152.i.preheader, label %._crit_edge153.i

.lr.ph152.i.preheader:                            ; preds = %.preheader44.i
  %i.nv = xor i32 %.1282.lcssa.i, -1
  %i.nw = add i32 %.sroa.speculated, %i.nv        ; 2 uses
  %i.nx = zext i32 %i.nw to i64
  %i.ny = add nuw nsw i64 %i.nx, 1                ; 2 uses
  %min.iters.check243 = icmp ult i32 %i.nw, 9
  br i1 %min.iters.check243, label %.lr.ph152.i.preheader452, label %vector.memcheck244

vector.memcheck244:                               ; preds = %.lr.ph152.i.preheader
  %i.nz = xor i32 %.1282.lcssa.i, -1
  %i.oa = add i32 %.sroa.speculated, %i.nz
  %i.ob = zext i32 %i.oa to i64                   ; 2 uses
  %i.oc = shl nuw nsw i64 %i.ob, 3
  %i.od = getelementptr i8, ptr %.9.lcssa.i, i64 %i.oc
  %i.oe = getelementptr i8, ptr %i.od, i64 8      ; 2 uses
  %i.of = shl nuw nsw i64 %i.ob, 2
  %i.og = add nuw nsw i64 %i.of, 4                ; 2 uses
  %i.oh = getelementptr i8, ptr %.1285.lcssa.i, i64 %i.og
  %18 = getelementptr i8, ptr %.1288.lcssa.i, i64 %i.og
  %bound0.a = icmp ult ptr %.9.lcssa.i, %i.oh
  %bound1 = icmp ult ptr %.1285.lcssa.i, %i.oe
  %found.conflict = and i1 %bound0.a, %bound1
  %bound0245 = icmp ult ptr %.9.lcssa.i, %18
  %bound1246 = icmp ult ptr %.1288.lcssa.i, %i.oe
  %found.conflict247 = and i1 %bound0245, %bound1246
  %conflict.rdx = or i1 %found.conflict, %found.conflict247
  br i1 %conflict.rdx, label %.lr.ph152.i.preheader452, label %vector.ph248

vector.ph248:                                     ; preds = %vector.memcheck244
  %n.vec249 = and i64 %i.ny, 8589934588           ; 5 uses
  %i.oi = shl nuw nsw i64 %n.vec249, 3
  %i.oj = getelementptr i8, ptr %.9.lcssa.i, i64 %i.oi ; 2 uses
  %i.ok = trunc i64 %n.vec249 to i32
  %i.ol = add i32 %.1282.lcssa.i, %i.ok
  %i.om = shl nuw nsw i64 %n.vec249, 2            ; 2 uses
  %i.on = getelementptr i8, ptr %.1285.lcssa.i, i64 %i.om
  %i.oo = getelementptr i8, ptr %.1288.lcssa.i, i64 %i.om
  br label %vector.body250

vector.body250:                                   ; preds = %vector.body250, %vector.ph248
  %index251 = phi i64 [ 0, %vector.ph248 ], [ %index.next261, %vector.body250 ] ; 3 uses
  %i.op = shl i64 %index251, 3                    ; 2 uses
  %next.gep252 = getelementptr i8, ptr %.9.lcssa.i, i64 %i.op
  %i.oq = getelementptr i8, ptr %.9.lcssa.i, i64 %i.op
  %next.gep253 = getelementptr i8, ptr %i.oq, i64 16
  %i.or = shl i64 %index251, 2                    ; 2 uses
  %next.gep254 = getelementptr i8, ptr %.1285.lcssa.i, i64 %i.or ; 2 uses
  %next.gep255 = getelementptr i8, ptr %.1288.lcssa.i, i64 %i.or ; 2 uses
  %i.os = getelementptr i8, ptr %next.gep255, i64 8
  %wide.load256 = load <2 x float>, ptr %next.gep255, align 4, !tbaa !56, !alias.scope !787
  %wide.load257 = load <2 x float>, ptr %i.os, align 4, !tbaa !56, !alias.scope !787
  %i.ot = getelementptr i8, ptr %next.gep254, i64 8
  %wide.load258 = load <2 x float>, ptr %next.gep254, align 4, !tbaa !56, !alias.scope !788
  %wide.load259 = load <2 x float>, ptr %i.ot, align 4, !tbaa !56, !alias.scope !788
  %interleaved.vec = shufflevector <2 x float> %wide.load256, <2 x float> %wide.load258, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec, ptr %next.gep252, align 4, !tbaa !56, !alias.scope !789, !noalias !790
  %interleaved.vec260 = shufflevector <2 x float> %wide.load257, <2 x float> %wide.load259, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec260, ptr %next.gep253, align 4, !tbaa !56, !alias.scope !789, !noalias !790
  %index.next261 = add nuw i64 %index251, 4       ; 2 uses
  %i.ou = icmp eq i64 %index.next261, %n.vec249
  br i1 %i.ou, label %middle.block262, label %vector.body250, !llvm.loop !756

middle.block262:                                  ; preds = %vector.body250
  %cmp.n263 = icmp eq i64 %i.ny, %n.vec249
  br i1 %cmp.n263, label %._crit_edge153.i, label %.lr.ph152.i.preheader452

.lr.ph152.i.preheader452:                         ; preds = %vector.memcheck244, %.lr.ph152.i.preheader, %middle.block262
  %.10151.i.ph = phi ptr [ %.9.lcssa.i, %vector.memcheck244 ], [ %.9.lcssa.i, %.lr.ph152.i.preheader ], [ %i.oj, %middle.block262 ] ; 2 uses
  %.2283150.i.ph = phi i32 [ %.1282.lcssa.i, %vector.memcheck244 ], [ %.1282.lcssa.i, %.lr.ph152.i.preheader ], [ %i.ol, %middle.block262 ] ; 4 uses
  %.2286149.i.ph = phi ptr [ %.1285.lcssa.i, %vector.memcheck244 ], [ %.1285.lcssa.i, %.lr.ph152.i.preheader ], [ %i.on, %middle.block262 ] ; 2 uses
  %.2289148.i.ph = phi ptr [ %.1288.lcssa.i, %vector.memcheck244 ], [ %.1288.lcssa.i, %.lr.ph152.i.preheader ], [ %i.oo, %middle.block262 ] ; 2 uses
  %i.ov = sub i32 %.sroa.speculated, %.2283150.i.ph
  %xtraiter491 = and i32 %i.ov, 3                 ; 2 uses
  %lcmp.mod492.not = icmp eq i32 %xtraiter491, 0
  br i1 %lcmp.mod492.not, label %.lr.ph152.i.prol.loopexit, label %.lr.ph152.i.prol

.lr.ph152.i.prol:                                 ; preds = %.lr.ph152.i.preheader452, %.lr.ph152.i.prol
  %.10151.i.prol = phi ptr [ %i.oz, %.lr.ph152.i.prol ], [ %.10151.i.ph, %.lr.ph152.i.preheader452 ] ; 3 uses
  %.2283150.i.prol = phi i32 [ %i.pc, %.lr.ph152.i.prol ], [ %.2283150.i.ph, %.lr.ph152.i.preheader452 ]
  %.2286149.i.prol = phi ptr [ %i.pb, %.lr.ph152.i.prol ], [ %.2286149.i.ph, %.lr.ph152.i.preheader452 ] ; 2 uses
  %.2289148.i.prol = phi ptr [ %i.pa, %.lr.ph152.i.prol ], [ %.2289148.i.ph, %.lr.ph152.i.preheader452 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph152.i.prol ], [ 0, %.lr.ph152.i.preheader452 ]
  %i.ow = load float, ptr %.2289148.i.prol, align 4, !tbaa !56
  store float %i.ow, ptr %.10151.i.prol, align 4, !tbaa !56
  %i.ox = load float, ptr %.2286149.i.prol, align 4, !tbaa !56
  %i.oy = getelementptr inbounds nuw i8, ptr %.10151.i.prol, i64 4
  store float %i.ox, ptr %i.oy, align 4, !tbaa !56
  %i.oz = getelementptr inbounds nuw i8, ptr %.10151.i.prol, i64 8 ; 3 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %.2289148.i.prol, i64 4 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %.2286149.i.prol, i64 4 ; 2 uses
  %i.pc = add nuw nsw i32 %.2283150.i.prol, 1     ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter491
  br i1 %prol.iter.cmp.not, label %.lr.ph152.i.prol.loopexit, label %.lr.ph152.i.prol, !llvm.loop !757

.lr.ph152.i.prol.loopexit:                        ; preds = %.lr.ph152.i.prol, %.lr.ph152.i.preheader452
  %.lcssa483.unr = phi ptr [ poison, %.lr.ph152.i.preheader452 ], [ %i.oz, %.lr.ph152.i.prol ]
  %.10151.i.unr = phi ptr [ %.10151.i.ph, %.lr.ph152.i.preheader452 ], [ %i.oz, %.lr.ph152.i.prol ]
  %.2283150.i.unr = phi i32 [ %.2283150.i.ph, %.lr.ph152.i.preheader452 ], [ %i.pc, %.lr.ph152.i.prol ]
  %.2286149.i.unr = phi ptr [ %.2286149.i.ph, %.lr.ph152.i.preheader452 ], [ %i.pb, %.lr.ph152.i.prol ]
  %.2289148.i.unr = phi ptr [ %.2289148.i.ph, %.lr.ph152.i.preheader452 ], [ %i.pa, %.lr.ph152.i.prol ]
  %i.pd = sub i32 %.2283150.i.ph, %.sroa.speculated
  %i.pe = icmp ugt i32 %i.pd, -4
  br i1 %i.pe, label %._crit_edge153.i, label %.lr.ph152.i

.lr.ph143.i:                                      ; preds = %.preheader45.i, %.lr.ph143.i
  %.9142.i = phi ptr [ %i.pk, %.lr.ph143.i ], [ %.8.lcssa.i, %.preheader45.i ] ; 3 uses
  %.1282141.i = phi i32 [ %i.pn, %.lr.ph143.i ], [ %.0281.lcssa.i, %.preheader45.i ]
  %.1285140.i = phi ptr [ %i.pm, %.lr.ph143.i ], [ %.0284.lcssa.i, %.preheader45.i ] ; 2 uses
  %.1288139.i = phi ptr [ %i.pl, %.lr.ph143.i ], [ %.0287.lcssa.i, %.preheader45.i ] ; 2 uses
  %i.pf = load <4 x float>, ptr %.1288139.i, align 1, !tbaa !114 ; 2 uses
  %i.pg = load <4 x float>, ptr %.1285140.i, align 1, !tbaa !114 ; 2 uses
  %i.ph = shufflevector <4 x float> %i.pf, <4 x float> %i.pg, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.pi = shufflevector <4 x float> %i.pf, <4 x float> %i.pg, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.ph, ptr %.9142.i, align 16, !tbaa !114
  %i.pj = getelementptr inbounds nuw i8, ptr %.9142.i, i64 16
  store <4 x float> %i.pi, ptr %i.pj, align 16, !tbaa !114
  %i.pk = getelementptr inbounds nuw i8, ptr %.9142.i, i64 32 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %.1288139.i, i64 16 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %.1285140.i, i64 16 ; 2 uses
  %i.pn = add nuw nsw i32 %.1282141.i, 4          ; 3 uses
  %i.po = or disjoint i32 %i.pn, 3
  %i.pp = icmp slt i32 %i.po, %.sroa.speculated
  br i1 %i.pp, label %.lr.ph143.i, label %.preheader44.i, !llvm.loop !758

.lr.ph152.i:                                      ; preds = %.lr.ph152.i.prol.loopexit, %.lr.ph152.i
  %.10151.i = phi ptr [ %i.ql, %.lr.ph152.i ], [ %.10151.i.unr, %.lr.ph152.i.prol.loopexit ] ; 9 uses
  %.2283150.i = phi i32 [ %i.qo, %.lr.ph152.i ], [ %.2283150.i.unr, %.lr.ph152.i.prol.loopexit ]
  %.2286149.i = phi ptr [ %i.qn, %.lr.ph152.i ], [ %.2286149.i.unr, %.lr.ph152.i.prol.loopexit ] ; 5 uses
  %.2289148.i = phi ptr [ %i.qm, %.lr.ph152.i ], [ %.2289148.i.unr, %.lr.ph152.i.prol.loopexit ] ; 5 uses
  %i.pq = load float, ptr %.2289148.i, align 4, !tbaa !56
  store float %i.pq, ptr %.10151.i, align 4, !tbaa !56
  %i.pr = load float, ptr %.2286149.i, align 4, !tbaa !56
  %i.ps = getelementptr inbounds nuw i8, ptr %.10151.i, i64 4
  store float %i.pr, ptr %i.ps, align 4, !tbaa !56
  %i.pt = getelementptr inbounds nuw i8, ptr %.10151.i, i64 8
  %i.pu = getelementptr inbounds nuw i8, ptr %.2289148.i, i64 4
  %i.pv = getelementptr inbounds nuw i8, ptr %.2286149.i, i64 4
  %i.pw = load float, ptr %i.pu, align 4, !tbaa !56
  store float %i.pw, ptr %i.pt, align 4, !tbaa !56
  %i.px = load float, ptr %i.pv, align 4, !tbaa !56
  %i.py = getelementptr inbounds nuw i8, ptr %.10151.i, i64 12
  store float %i.px, ptr %i.py, align 4, !tbaa !56
  %i.pz = getelementptr inbounds nuw i8, ptr %.10151.i, i64 16
  %i.qa = getelementptr inbounds nuw i8, ptr %.2289148.i, i64 8
  %i.qb = getelementptr inbounds nuw i8, ptr %.2286149.i, i64 8
  %i.qc = load float, ptr %i.qa, align 4, !tbaa !56
  store float %i.qc, ptr %i.pz, align 4, !tbaa !56
  %i.qd = load float, ptr %i.qb, align 4, !tbaa !56
  %i.qe = getelementptr inbounds nuw i8, ptr %.10151.i, i64 20
  store float %i.qd, ptr %i.qe, align 4, !tbaa !56
  %i.qf = getelementptr inbounds nuw i8, ptr %.10151.i, i64 24
  %i.qg = getelementptr inbounds nuw i8, ptr %.2289148.i, i64 12
  %i.qh = getelementptr inbounds nuw i8, ptr %.2286149.i, i64 12
  %i.qi = load float, ptr %i.qg, align 4, !tbaa !56
  store float %i.qi, ptr %i.qf, align 4, !tbaa !56
  %i.qj = load float, ptr %i.qh, align 4, !tbaa !56
  %i.qk = getelementptr inbounds nuw i8, ptr %.10151.i, i64 28
  store float %i.qj, ptr %i.qk, align 4, !tbaa !56
  %i.ql = getelementptr inbounds nuw i8, ptr %.10151.i, i64 32 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %.2289148.i, i64 16
  %i.qn = getelementptr inbounds nuw i8, ptr %.2286149.i, i64 16
  %i.qo = add nuw nsw i32 %.2283150.i, 4          ; 2 uses
  %exitcond232.not.i.3 = icmp eq i32 %i.qo, %.sroa.speculated
  br i1 %exitcond232.not.i.3, label %._crit_edge153.i, label %.lr.ph152.i, !llvm.loop !759

._crit_edge153.i:                                 ; preds = %.lr.ph152.i.prol.loopexit, %.lr.ph152.i, %middle.block262, %.preheader44.i
  %.10.lcssa.i = phi ptr [ %.9.lcssa.i, %.preheader44.i ], [ %i.oj, %middle.block262 ], [ %.lcssa483.unr, %.lr.ph152.i.prol.loopexit ], [ %i.ql, %.lr.ph152.i ] ; 2 uses
  %indvars.iv.next234.i = add nuw nsw i64 %indvars.iv233.i, 2 ; 3 uses
  %i.qp = icmp slt i64 %indvars.iv.next234.i, %invariant.op280.i
  br i1 %i.qp, label %bb.e, label %.preheader43.loopexit.i, !llvm.loop !760

bb.f:                                             ; preds = %._crit_edge179.i, %.lr.ph183.i
  %indvars.iv237.i = phi i64 [ %i.ms, %.lr.ph183.i ], [ %indvars.iv.next238.i, %._crit_edge179.i ] ; 2 uses
  %.11182.i = phi ptr [ %.7.lcssa.i, %.lr.ph183.i ], [ %.14.lcssa.i, %._crit_edge179.i ] ; 3 uses
  %i.qq = load ptr, ptr %8, align 8, !tbaa !37
  %i.qr = add nsw i64 %indvars.iv237.i, %i.z
  %i.qs = mul nsw i64 %i.qr, %i.mt
  %i.qt = getelementptr inbounds [4 x i8], ptr %i.qq, i64 %i.qs
  %i.qu = getelementptr inbounds [4 x i8], ptr %i.qt, i64 %i.mp ; 3 uses
  br i1 %i.mq, label %.lr.ph164.i.preheader, label %.preheader42.i

.lr.ph164.i.preheader:                            ; preds = %bb.f
  br i1 %i.mx, label %.lr.ph164.i.epil.preheader, label %.lr.ph164.i

.preheader42.i.loopexit.unr-lcssa:                ; preds = %.lr.ph164.i
  br i1 %lcmp.mod494.not, label %.preheader42.i, label %.lr.ph164.i.epil.preheader

.lr.ph164.i.epil.preheader:                       ; preds = %.preheader42.i.loopexit.unr-lcssa, %.lr.ph164.i.preheader
  %.0269161.i.epil.init = phi ptr [ %i.qu, %.lr.ph164.i.preheader ], [ %i.rl, %.preheader42.i.loopexit.unr-lcssa ]
  %.12160.i.epil.init = phi ptr [ %.11182.i, %.lr.ph164.i.preheader ], [ %i.rk, %.preheader42.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod497)
  br label %.lr.ph164.i.epil

.lr.ph164.i.epil:                                 ; preds = %.lr.ph164.i.epil, %.lr.ph164.i.epil.preheader
  %.0269161.i.epil = phi ptr [ %i.qx, %.lr.ph164.i.epil ], [ %.0269161.i.epil.init, %.lr.ph164.i.epil.preheader ] ; 2 uses
  %.12160.i.epil = phi ptr [ %i.qw, %.lr.ph164.i.epil ], [ %.12160.i.epil.init, %.lr.ph164.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph164.i.epil ], [ 0, %.lr.ph164.i.epil.preheader ]
  %i.qv = load <8 x float>, ptr %.0269161.i.epil, align 1, !tbaa !114
  store <8 x float> %i.qv, ptr %.12160.i.epil, align 1, !tbaa !114
  %i.qw = getelementptr inbounds nuw i8, ptr %.12160.i.epil, i64 32 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %.0269161.i.epil, i64 32 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter493
  br i1 %epil.iter.cmp.not, label %.preheader42.i, label %.lr.ph164.i.epil, !llvm.loop !761

.preheader42.i:                                   ; preds = %.preheader42.i.loopexit.unr-lcssa, %.lr.ph164.i.epil, %bb.f
  %.12.lcssa.i = phi ptr [ %.11182.i, %bb.f ], [ %i.rk, %.preheader42.i.loopexit.unr-lcssa ], [ %i.qw, %.lr.ph164.i.epil ] ; 2 uses
  %.0269.lcssa.i = phi ptr [ %i.qu, %bb.f ], [ %i.rl, %.preheader42.i.loopexit.unr-lcssa ], [ %i.qx, %.lr.ph164.i.epil ] ; 2 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.f ], [ %i.mr, %.lr.ph164.i.epil ], [ %i.mr, %.preheader42.i.loopexit.unr-lcssa ] ; 3 uses
  %i.qy = or disjoint i32 %.0.lcssa.i, 3
  %i.qz = icmp slt i32 %i.qy, %.sroa.speculated
  br i1 %i.qz, label %.lr.ph171.i, label %.preheader.i

.lr.ph164.i:                                      ; preds = %.lr.ph164.i.preheader, %.lr.ph164.i
  %.0269161.i = phi ptr [ %i.rl, %.lr.ph164.i ], [ %i.qu, %.lr.ph164.i.preheader ] ; 5 uses
  %.12160.i = phi ptr [ %i.rk, %.lr.ph164.i ], [ %.11182.i, %.lr.ph164.i.preheader ] ; 5 uses
  %niter = phi i32 [ %niter.next.3, %.lr.ph164.i ], [ 0, %.lr.ph164.i.preheader ]
  %i.ra = load <8 x float>, ptr %.0269161.i, align 1, !tbaa !114
  store <8 x float> %i.ra, ptr %.12160.i, align 1, !tbaa !114
  %i.rb = getelementptr inbounds nuw i8, ptr %.12160.i, i64 32
  %i.rc = getelementptr inbounds nuw i8, ptr %.0269161.i, i64 32
end_hunk_2
begin_hunk_3_@_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined:bb.a

.lr.ph12.i.prol:                                  ; preds = %.lr.ph12.i.preheader
  %i.gy = load i16, ptr %.0119.lcssa.i, align 2, !tbaa !117
  store i16 %i.gy, ptr %.1124.lcssa.i, align 2, !tbaa !117
  %i.gz = getelementptr inbounds [2 x i8], ptr %.0119.lcssa.i, i64 %i.ft
  %i.ha = load i16, ptr %i.gz, align 2, !tbaa !117
  %i.hb = getelementptr inbounds nuw i8, ptr %.1124.lcssa.i, i64 2
  store i16 %i.ha, ptr %i.hb, align 2, !tbaa !117
  %i.hc = getelementptr inbounds [2 x i8], ptr %.0119.lcssa.i, i64 %i.fx
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !117
  %i.he = getelementptr inbounds nuw i8, ptr %.1124.lcssa.i, i64 4
  store i16 %i.hd, ptr %i.he, align 2, !tbaa !117
  %i.hf = getelementptr inbounds [2 x i8], ptr %.0119.lcssa.i, i64 %i.fz
  %i.hg = load i16, ptr %i.hf, align 2, !tbaa !117
  %i.hh = getelementptr inbounds nuw i8, ptr %.1124.lcssa.i, i64 6
  store i16 %i.hg, ptr %i.hh, align 2, !tbaa !117
  %i.hi = getelementptr inbounds nuw i8, ptr %.0119.lcssa.i, i64 32
  %i.hj = getelementptr inbounds nuw i8, ptr %.1124.lcssa.i, i64 8 ; 2 uses
  %i.hk = or disjoint i32 %.0117.lcssa.i, 1
  br label %.lr.ph12.i.prol.loopexit

.lr.ph12.i.prol.loopexit:                         ; preds = %.lr.ph12.i.prol, %.lr.ph12.i.preheader
  %.lcssa217.unr = phi ptr [ poison, %.lr.ph12.i.preheader ], [ %i.hj, %.lr.ph12.i.prol ]
  %.111811.i.unr = phi i32 [ %.0117.lcssa.i, %.lr.ph12.i.preheader ], [ %i.hk, %.lr.ph12.i.prol ]
  %.112010.i.unr = phi ptr [ %.0119.lcssa.i, %.lr.ph12.i.preheader ], [ %i.hi, %.lr.ph12.i.prol ]
  %.21259.i.unr = phi ptr [ %.1124.lcssa.i, %.lr.ph12.i.preheader ], [ %i.hj, %.lr.ph12.i.prol ]
  %i.hl = icmp eq i32 %.sroa.speculated, %.neg
  br i1 %i.hl, label %._crit_edge.i55, label %.lr.ph12.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.01176.i = phi i32 [ %i.im, %.lr.ph.i ], [ 0, %bb.f ]
  %.01195.i = phi ptr [ %i.ik, %.lr.ph.i ], [ %gep.i, %bb.f ] ; 9 uses
  %.11244.i = phi ptr [ %i.il, %.lr.ph.i ], [ %.012314.i, %bb.f ] ; 9 uses
  %i.hm = load i16, ptr %.01195.i, align 2, !tbaa !117
  store i16 %i.hm, ptr %.11244.i, align 2, !tbaa !117
  %i.hn = getelementptr inbounds nuw i8, ptr %.01195.i, i64 32
  %i.ho = load i16, ptr %i.hn, align 2, !tbaa !117
  %i.hp = getelementptr inbounds nuw i8, ptr %.11244.i, i64 2
  store i16 %i.ho, ptr %i.hp, align 2, !tbaa !117
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %.01195.i, i64 %i.ft
  %i.hr = load i16, ptr %i.hq, align 2, !tbaa !117
  %i.hs = getelementptr inbounds nuw i8, ptr %.11244.i, i64 4
  store i16 %i.hr, ptr %i.hs, align 2, !tbaa !117
  %i.ht = getelementptr inbounds nuw [2 x i8], ptr %.01195.i, i64 %i.fv
  %i.hu = load i16, ptr %i.ht, align 2, !tbaa !117
  %i.hv = getelementptr inbounds nuw i8, ptr %.11244.i, i64 6
  store i16 %i.hu, ptr %i.hv, align 2, !tbaa !117
  %i.hw = getelementptr inbounds nuw [2 x i8], ptr %.01195.i, i64 %i.fx
  %i.hx = load i16, ptr %i.hw, align 2, !tbaa !117
  %i.hy = getelementptr inbounds nuw i8, ptr %.11244.i, i64 8
  store i16 %i.hx, ptr %i.hy, align 2, !tbaa !117
  %i.hz = getelementptr [2 x i8], ptr %.01195.i, i64 %i.gc
  %i.ia = getelementptr i8, ptr %i.hz, i64 32
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !117
  %i.ic = getelementptr inbounds nuw i8, ptr %.11244.i, i64 10
  store i16 %i.ib, ptr %i.ic, align 2, !tbaa !117
  %i.id = getelementptr inbounds nuw [2 x i8], ptr %.01195.i, i64 %i.fz
  %i.ie = load i16, ptr %i.id, align 2, !tbaa !117
  %i.if = getelementptr inbounds nuw i8, ptr %.11244.i, i64 12
  store i16 %i.ie, ptr %i.if, align 2, !tbaa !117
  %i.ig = getelementptr [2 x i8], ptr %.01195.i, i64 %i.gd
  %i.ih = getelementptr i8, ptr %i.ig, i64 32
  %i.ii = load i16, ptr %i.ih, align 2, !tbaa !117
  %i.ij = getelementptr inbounds nuw i8, ptr %.11244.i, i64 14
  store i16 %i.ii, ptr %i.ij, align 2, !tbaa !117
  %i.ik = getelementptr inbounds nuw i8, ptr %.01195.i, i64 64 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.11244.i, i64 16 ; 2 uses
  %i.im = add nuw nsw i32 %.01176.i, 2            ; 2 uses
  %i.in = or disjoint i32 %i.im, 1
  %i.io = icmp slt i32 %i.in, %.sroa.speculated
  br i1 %i.io, label %.lr.ph.i, label %.preheader1.i, !llvm.loop !12

.lr.ph12.i:                                       ; preds = %.lr.ph12.i.prol.loopexit, %.lr.ph12.i
  %.111811.i = phi i32 [ %i.jn, %.lr.ph12.i ], [ %.111811.i.unr, %.lr.ph12.i.prol.loopexit ]
  %.112010.i = phi ptr [ %i.jl, %.lr.ph12.i ], [ %.112010.i.unr, %.lr.ph12.i.prol.loopexit ] ; 6 uses
  %.21259.i = phi ptr [ %i.jm, %.lr.ph12.i ], [ %.21259.i.unr, %.lr.ph12.i.prol.loopexit ] ; 9 uses
  %i.ip = load i16, ptr %.112010.i, align 2, !tbaa !117
  store i16 %i.ip, ptr %.21259.i, align 2, !tbaa !117
  %i.iq = getelementptr inbounds [2 x i8], ptr %.112010.i, i64 %i.ft
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !117
  %i.is = getelementptr inbounds nuw i8, ptr %.21259.i, i64 2
  store i16 %i.ir, ptr %i.is, align 2, !tbaa !117
  %i.it = getelementptr inbounds [2 x i8], ptr %.112010.i, i64 %i.fx
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !117
  %i.iv = getelementptr inbounds nuw i8, ptr %.21259.i, i64 4
  store i16 %i.iu, ptr %i.iv, align 2, !tbaa !117
  %i.iw = getelementptr inbounds [2 x i8], ptr %.112010.i, i64 %i.fz
  %i.ix = load i16, ptr %i.iw, align 2, !tbaa !117
  %i.iy = getelementptr inbounds nuw i8, ptr %.21259.i, i64 6
  store i16 %i.ix, ptr %i.iy, align 2, !tbaa !117
  %i.iz = getelementptr inbounds nuw i8, ptr %.112010.i, i64 32 ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.21259.i, i64 8
  %i.jb = load i16, ptr %i.iz, align 2, !tbaa !117
  store i16 %i.jb, ptr %i.ja, align 2, !tbaa !117
  %i.jc = getelementptr inbounds [2 x i8], ptr %i.iz, i64 %i.ft
  %i.jd = load i16, ptr %i.jc, align 2, !tbaa !117
  %i.je = getelementptr inbounds nuw i8, ptr %.21259.i, i64 10
  store i16 %i.jd, ptr %i.je, align 2, !tbaa !117
  %i.jf = getelementptr inbounds [2 x i8], ptr %i.iz, i64 %i.fx
  %i.jg = load i16, ptr %i.jf, align 2, !tbaa !117
  %i.jh = getelementptr inbounds nuw i8, ptr %.21259.i, i64 12
  store i16 %i.jg, ptr %i.jh, align 2, !tbaa !117
  %i.ji = getelementptr inbounds [2 x i8], ptr %i.iz, i64 %i.fz
  %i.jj = load i16, ptr %i.ji, align 2, !tbaa !117
  %i.jk = getelementptr inbounds nuw i8, ptr %.21259.i, i64 14
  store i16 %i.jj, ptr %i.jk, align 2, !tbaa !117
  %i.jl = getelementptr inbounds nuw i8, ptr %.112010.i, i64 64
  %i.jm = getelementptr inbounds nuw i8, ptr %.21259.i, i64 16 ; 2 uses
  %i.jn = add nuw nsw i32 %.111811.i, 2           ; 2 uses
  %exitcond.not.i57.1 = icmp eq i32 %i.jn, %.sroa.speculated
  br i1 %exitcond.not.i57.1, label %._crit_edge.i55, label %.lr.ph12.i, !llvm.loop !13

._crit_edge.i55:                                  ; preds = %.lr.ph12.i.prol.loopexit, %.lr.ph12.i, %.preheader1.i
  %.2125.lcssa.i = phi ptr [ %.1124.lcssa.i, %.preheader1.i ], [ %.lcssa217.unr, %.lr.ph12.i.prol.loopexit ], [ %i.jm, %.lr.ph12.i ] ; 2 uses
  %indvars.iv.next.i56 = add nuw nsw i64 %indvars.iv.i54, 4 ; 3 uses
  %i.jo = icmp slt i64 %indvars.iv.next.i56, %invariant.op.i
  br i1 %i.jo, label %bb.f, label %.preheader3.loopexit.i, !llvm.loop !14

.preheader2.loopexit.i:                           ; preds = %._crit_edge32.i
  %i.jp = trunc nuw nsw i64 %indvars.iv.next68.i to i32
  br label %.preheader2.i

.preheader2.i:                                    ; preds = %.preheader2.loopexit.i, %.preheader3.i
  %.3.lcssa.i = phi ptr [ %.0123.lcssa.i, %.preheader3.i ], [ %.5.lcssa.i, %.preheader2.loopexit.i ]
  %.1122.lcssa.i = phi i32 [ %.0121.lcssa.i, %.preheader3.i ], [ %i.jp, %.preheader2.loopexit.i ] ; 2 uses
  %i.jq = icmp slt i32 %.1122.lcssa.i, %.sroa.speculated83
  br i1 %i.jq, label %.lr.ph50.i, label %._crit_edge51.split.i

.lr.ph50.i:                                       ; preds = %.preheader2.i
  %invariant.gep52.i = getelementptr [2 x i8], ptr %i.aa, i64 %indvars.iv75.i ; 2 uses
  br i1 %i.ga, label %.lr.ph45.preheader.i, label %._crit_edge51.split.i

.lr.ph45.preheader.i:                             ; preds = %.lr.ph50.i
  %i.jr = zext i32 %.1122.lcssa.i to i64          ; 2 uses
  %i.js = mul i64 %i.ge, %i.jr
  %scevgep142 = getelementptr i8, ptr %invariant.gep52.i, i64 %i.js
  br label %iter.check

bb.g:                                             ; preds = %._crit_edge32.i, %.lr.ph36.i
  %indvars.iv67.i = phi i64 [ %i.gv, %.lr.ph36.i ], [ %indvars.iv.next68.i, %._crit_edge32.i ] ; 2 uses
  %.334.i = phi ptr [ %.0123.lcssa.i, %.lr.ph36.i ], [ %.5.lcssa.i, %._crit_edge32.i ] ; 3 uses
  %i.jt = mul nsw i64 %indvars.iv67.i, %i.ft
  %gep40.i = getelementptr [2 x i8], ptr %invariant.gep39.i, i64 %i.jt ; 3 uses
  br i1 %i.fs, label %.lr.ph24.i.preheader, label %.preheader.i

.lr.ph24.i.preheader:                             ; preds = %bb.g
  br i1 %i.gh, label %.lr.ph24.i.epil.preheader, label %.lr.ph24.i

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph24.i
  br i1 %lcmp.mod224.not.not, label %.lr.ph24.i.epil.preheader, label %.preheader.i

.lr.ph24.i.epil.preheader:                        ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph24.i.preheader
  %.011521.i.epil.init = phi ptr [ %gep40.i, %.lr.ph24.i.preheader ], [ %i.ni, %.preheader.i.loopexit.unr-lcssa ] ; 5 uses
  %.420.i.epil.init = phi ptr [ %.334.i, %.lr.ph24.i.preheader ], [ %i.nj, %.preheader.i.loopexit.unr-lcssa ] ; 5 uses
  call void @llvm.assume(i1 %lcmp.mod227)
  %i.ju = load i16, ptr %.011521.i.epil.init, align 2, !tbaa !117
  store i16 %i.ju, ptr %.420.i.epil.init, align 2, !tbaa !117
  %i.jv = getelementptr inbounds nuw i8, ptr %.011521.i.epil.init, i64 32
  %i.jw = load i16, ptr %i.jv, align 2, !tbaa !117
  %i.jx = getelementptr inbounds nuw i8, ptr %.420.i.epil.init, i64 2
  store i16 %i.jw, ptr %i.jx, align 2, !tbaa !117
  %i.jy = getelementptr inbounds nuw [2 x i8], ptr %.011521.i.epil.init, i64 %i.ft
  %i.jz = load i16, ptr %i.jy, align 2, !tbaa !117
  %i.ka = getelementptr inbounds nuw i8, ptr %.420.i.epil.init, i64 4
  store i16 %i.jz, ptr %i.ka, align 2, !tbaa !117
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %.011521.i.epil.init, i64 %i.fv
  %i.kc = load i16, ptr %i.kb, align 2, !tbaa !117
  %i.kd = getelementptr inbounds nuw i8, ptr %.420.i.epil.init, i64 6
  store i16 %i.kc, ptr %i.kd, align 2, !tbaa !117
  %i.ke = getelementptr inbounds nuw i8, ptr %.011521.i.epil.init, i64 64
  %i.kf = getelementptr inbounds nuw i8, ptr %.420.i.epil.init, i64 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph24.i.epil.preheader, %.preheader.i.loopexit.unr-lcssa, %bb.g
  %.4.lcssa.i = phi ptr [ %.334.i, %bb.g ], [ %i.nj, %.preheader.i.loopexit.unr-lcssa ], [ %i.kf, %.lr.ph24.i.epil.preheader ] ; 8 uses
  %.0115.lcssa.i = phi ptr [ %gep40.i, %bb.g ], [ %i.ni, %.preheader.i.loopexit.unr-lcssa ], [ %i.ke, %.lr.ph24.i.epil.preheader ] ; 11 uses
  %.0114.lcssa.i = phi i32 [ 0, %bb.g ], [ %i.gb, %.preheader.i.loopexit.unr-lcssa ], [ %i.gb, %.lr.ph24.i.epil.preheader ] ; 6 uses
  %i.kg = icmp slt i32 %.0114.lcssa.i, %.sroa.speculated
  br i1 %i.kg, label %.lr.ph31.i.preheader, label %._crit_edge32.i

.lr.ph31.i.preheader:                             ; preds = %.preheader.i
  %i.kh = xor i32 %.0114.lcssa.i, -1
  %i.ki = add i32 %.sroa.speculated, %i.kh        ; 2 uses
  %i.kj = zext i32 %i.ki to i64
  %i.kk = add nuw nsw i64 %i.kj, 1                ; 2 uses
  %min.iters.check191 = icmp ult i32 %i.ki, 23
  br i1 %min.iters.check191, label %.lr.ph31.i.preheader214, label %vector.memcheck192

vector.memcheck192:                               ; preds = %.lr.ph31.i.preheader
  %i.kl = xor i32 %.0114.lcssa.i, -1
  %i.km = add i32 %smin190, %i.kl
  %i.kn = zext i32 %i.km to i64                   ; 2 uses
  %i.ko = shl nuw nsw i64 %i.kn, 2
  %i.kp = getelementptr i8, ptr %.4.lcssa.i, i64 %i.ko
  %i.kq = getelementptr i8, ptr %i.kp, i64 4      ; 2 uses
  %i.kr = getelementptr i8, ptr %.0115.lcssa.i, i64 %i.bp
  %i.ks = shl nuw nsw i64 %i.kn, 5                ; 2 uses
  %i.kt = getelementptr i8, ptr %.0115.lcssa.i, i64 %i.bp
  %i.ku = getelementptr i8, ptr %i.kt, i64 2
  %i.kv = getelementptr i8, ptr %i.ku, i64 %i.ks
  %11 = getelementptr i8, ptr %.0115.lcssa.i, i64 %i.ks
  %12 = getelementptr i8, ptr %11, i64 2
  %bound0193 = icmp ult ptr %.4.lcssa.i, %i.kv
  %bound1194 = icmp ult ptr %i.kr, %i.kq
  %found.conflict195 = and i1 %bound0193, %bound1194
  %bound0196 = icmp ult ptr %.4.lcssa.i, %12
  %bound1197 = icmp ult ptr %.0115.lcssa.i, %i.kq
  %found.conflict198 = and i1 %bound0196, %bound1197
  %conflict.rdx = or i1 %found.conflict195, %found.conflict198
  br i1 %conflict.rdx, label %.lr.ph31.i.preheader214, label %vector.ph199

vector.ph199:                                     ; preds = %vector.memcheck192
  %n.vec200 = and i64 %i.kk, 8589934588           ; 5 uses
  %i.kw = trunc i64 %n.vec200 to i32
  %i.kx = add i32 %.0114.lcssa.i, %i.kw
  %i.ky = shl nuw nsw i64 %n.vec200, 5
  %i.kz = getelementptr i8, ptr %.0115.lcssa.i, i64 %i.ky
  %i.la = shl nuw nsw i64 %n.vec200, 2
  %i.lb = getelementptr i8, ptr %.4.lcssa.i, i64 %i.la ; 2 uses
  br label %vector.body201

vector.body201:                                   ; preds = %vector.body201, %vector.ph199
  %index202 = phi i64 [ 0, %vector.ph199 ], [ %index.next208, %vector.body201 ] ; 3 uses
  %i.lc = shl i64 %index202, 5                    ; 4 uses
  %next.gep203 = getelementptr i8, ptr %.0115.lcssa.i, i64 %i.lc ; 2 uses
  %i.ld = getelementptr i8, ptr %.0115.lcssa.i, i64 %i.lc
  %next.gep204 = getelementptr i8, ptr %i.ld, i64 32 ; 2 uses
  %i.le = getelementptr i8, ptr %.0115.lcssa.i, i64 %i.lc
  %next.gep205 = getelementptr i8, ptr %i.le, i64 64 ; 2 uses
  %i.lf = getelementptr i8, ptr %.0115.lcssa.i, i64 %i.lc
  %next.gep206 = getelementptr i8, ptr %i.lf, i64 96 ; 2 uses
  %i.lg = shl i64 %index202, 2
  %next.gep207 = getelementptr i8, ptr %.4.lcssa.i, i64 %i.lg
  %i.lh = load i16, ptr %next.gep203, align 2, !tbaa !117, !alias.scope !1710
  %i.li = load i16, ptr %next.gep204, align 2, !tbaa !117, !alias.scope !1710
  %i.lj = load i16, ptr %next.gep205, align 2, !tbaa !117, !alias.scope !1710
  %i.lk = load i16, ptr %next.gep206, align 2, !tbaa !117, !alias.scope !1710
  %i.ll = insertelement <4 x i16> poison, i16 %i.lh, i64 0
  %i.lm = insertelement <4 x i16> %i.ll, i16 %i.li, i64 1
  %i.ln = insertelement <4 x i16> %i.lm, i16 %i.lj, i64 2
  %i.lo = insertelement <4 x i16> %i.ln, i16 %i.lk, i64 3
  %i.lp = getelementptr inbounds [2 x i8], ptr %next.gep203, i64 %i.ft
  %i.lq = getelementptr inbounds [2 x i8], ptr %next.gep204, i64 %i.ft
  %i.lr = getelementptr inbounds [2 x i8], ptr %next.gep205, i64 %i.ft
  %i.ls = getelementptr inbounds [2 x i8], ptr %next.gep206, i64 %i.ft
  %i.lt = load i16, ptr %i.lp, align 2, !tbaa !117, !alias.scope !1711
  %i.lu = load i16, ptr %i.lq, align 2, !tbaa !117, !alias.scope !1711
  %i.lv = load i16, ptr %i.lr, align 2, !tbaa !117, !alias.scope !1711
  %i.lw = load i16, ptr %i.ls, align 2, !tbaa !117, !alias.scope !1711
  %i.lx = insertelement <4 x i16> poison, i16 %i.lt, i64 0
  %i.ly = insertelement <4 x i16> %i.lx, i16 %i.lu, i64 1
  %i.lz = insertelement <4 x i16> %i.ly, i16 %i.lv, i64 2
  %i.ma = insertelement <4 x i16> %i.lz, i16 %i.lw, i64 3
  %interleaved.vec = shufflevector <4 x i16> %i.lo, <4 x i16> %i.ma, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec, ptr %next.gep207, align 2, !tbaa !117, !alias.scope !1712, !noalias !1713
  %index.next208 = add nuw i64 %index202, 4       ; 2 uses
  %i.mb = icmp eq i64 %index.next208, %n.vec200
  br i1 %i.mb, label %middle.block209, label %vector.body201, !llvm.loop !1697

middle.block209:                                  ; preds = %vector.body201
  %cmp.n210 = icmp eq i64 %i.kk, %n.vec200
  br i1 %cmp.n210, label %._crit_edge32.i, label %.lr.ph31.i.preheader214

.lr.ph31.i.preheader214:                          ; preds = %vector.memcheck192, %.lr.ph31.i.preheader, %middle.block209
  %.130.i.ph = phi i32 [ %.0114.lcssa.i, %vector.memcheck192 ], [ %.0114.lcssa.i, %.lr.ph31.i.preheader ], [ %i.kx, %middle.block209 ] ; 4 uses
  %.111629.i.ph = phi ptr [ %.0115.lcssa.i, %vector.memcheck192 ], [ %.0115.lcssa.i, %.lr.ph31.i.preheader ], [ %i.kz, %middle.block209 ] ; 2 uses
  %.528.i.ph = phi ptr [ %.4.lcssa.i, %vector.memcheck192 ], [ %.4.lcssa.i, %.lr.ph31.i.preheader ], [ %i.lb, %middle.block209 ] ; 2 uses
  %i.mc = sub i32 %smin222, %.130.i.ph
  %xtraiter228 = and i32 %i.mc, 3                 ; 2 uses
  %lcmp.mod229.not = icmp eq i32 %xtraiter228, 0
  br i1 %lcmp.mod229.not, label %.lr.ph31.i.prol.loopexit, label %.lr.ph31.i.prol

.lr.ph31.i.prol:                                  ; preds = %.lr.ph31.i.preheader214, %.lr.ph31.i.prol
  %.130.i.prol = phi i32 [ %i.mj, %.lr.ph31.i.prol ], [ %.130.i.ph, %.lr.ph31.i.preheader214 ]
  %.111629.i.prol = phi ptr [ %i.mh, %.lr.ph31.i.prol ], [ %.111629.i.ph, %.lr.ph31.i.preheader214 ] ; 3 uses
  %.528.i.prol = phi ptr [ %i.mi, %.lr.ph31.i.prol ], [ %.528.i.ph, %.lr.ph31.i.preheader214 ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph31.i.prol ], [ 0, %.lr.ph31.i.preheader214 ]
  %i.md = load i16, ptr %.111629.i.prol, align 2, !tbaa !117
  store i16 %i.md, ptr %.528.i.prol, align 2, !tbaa !117
  %i.me = getelementptr inbounds [2 x i8], ptr %.111629.i.prol, i64 %i.ft
  %i.mf = load i16, ptr %i.me, align 2, !tbaa !117
  %i.mg = getelementptr inbounds nuw i8, ptr %.528.i.prol, i64 2
  store i16 %i.mf, ptr %i.mg, align 2, !tbaa !117
  %i.mh = getelementptr inbounds nuw i8, ptr %.111629.i.prol, i64 32 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %.528.i.prol, i64 4 ; 3 uses
  %i.mj = add nuw nsw i32 %.130.i.prol, 1         ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter228
  br i1 %prol.iter.cmp.not, label %.lr.ph31.i.prol.loopexit, label %.lr.ph31.i.prol, !llvm.loop !1698

.lr.ph31.i.prol.loopexit:                         ; preds = %.lr.ph31.i.prol, %.lr.ph31.i.preheader214
  %.lcssa220.unr = phi ptr [ poison, %.lr.ph31.i.preheader214 ], [ %i.mi, %.lr.ph31.i.prol ]
  %.130.i.unr = phi i32 [ %.130.i.ph, %.lr.ph31.i.preheader214 ], [ %i.mj, %.lr.ph31.i.prol ]
  %.111629.i.unr = phi ptr [ %.111629.i.ph, %.lr.ph31.i.preheader214 ], [ %i.mh, %.lr.ph31.i.prol ]
  %.528.i.unr = phi ptr [ %.528.i.ph, %.lr.ph31.i.preheader214 ], [ %i.mi, %.lr.ph31.i.prol ]
  %i.mk = sub i32 %.130.i.ph, %smin222
  %i.ml = icmp ugt i32 %i.mk, -4
  br i1 %i.ml, label %._crit_edge32.i, label %.lr.ph31.i

.lr.ph24.i:                                       ; preds = %.lr.ph24.i.preheader, %.lr.ph24.i
  %.011521.i = phi ptr [ %i.ni, %.lr.ph24.i ], [ %gep40.i, %.lr.ph24.i.preheader ] ; 7 uses
  %.420.i = phi ptr [ %i.nj, %.lr.ph24.i ], [ %.334.i, %.lr.ph24.i.preheader ] ; 9 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph24.i ], [ 0, %.lr.ph24.i.preheader ]
  %i.mm = load i16, ptr %.011521.i, align 2, !tbaa !117
  store i16 %i.mm, ptr %.420.i, align 2, !tbaa !117
  %i.mn = getelementptr inbounds nuw i8, ptr %.011521.i, i64 32
  %i.mo = load i16, ptr %i.mn, align 2, !tbaa !117
  %i.mp = getelementptr inbounds nuw i8, ptr %.420.i, i64 2
  store i16 %i.mo, ptr %i.mp, align 2, !tbaa !117
  %i.mq = getelementptr inbounds nuw [2 x i8], ptr %.011521.i, i64 %i.ft
  %i.mr = load i16, ptr %i.mq, align 2, !tbaa !117
  %i.ms = getelementptr inbounds nuw i8, ptr %.420.i, i64 4
  store i16 %i.mr, ptr %i.ms, align 2, !tbaa !117
  %i.mt = getelementptr inbounds nuw [2 x i8], ptr %.011521.i, i64 %i.fv
  %i.mu = load i16, ptr %i.mt, align 2, !tbaa !117
  %i.mv = getelementptr inbounds nuw i8, ptr %.420.i, i64 6
  store i16 %i.mu, ptr %i.mv, align 2, !tbaa !117
  %i.mw = getelementptr inbounds nuw i8, ptr %.011521.i, i64 64 ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.420.i, i64 8
  %i.my = load i16, ptr %i.mw, align 2, !tbaa !117
  store i16 %i.my, ptr %i.mx, align 2, !tbaa !117
  %i.mz = getelementptr inbounds nuw i8, ptr %.011521.i, i64 96
  %i.na = load i16, ptr %i.mz, align 2, !tbaa !117
  %i.nb = getelementptr inbounds nuw i8, ptr %.420.i, i64 10
  store i16 %i.na, ptr %i.nb, align 2, !tbaa !117
  %i.nc = getelementptr inbounds nuw [2 x i8], ptr %i.mw, i64 %i.ft
  %i.nd = load i16, ptr %i.nc, align 2, !tbaa !117
  %i.ne = getelementptr inbounds nuw i8, ptr %.420.i, i64 12
  store i16 %i.nd, ptr %i.ne, align 2, !tbaa !117
  %i.nf = getelementptr inbounds nuw [2 x i8], ptr %i.mw, i64 %i.fv
  %i.ng = load i16, ptr %i.nf, align 2, !tbaa !117
  %i.nh = getelementptr inbounds nuw i8, ptr %.420.i, i64 14
  store i16 %i.ng, ptr %i.nh, align 2, !tbaa !117
  %i.ni = getelementptr inbounds nuw i8, ptr %.011521.i, i64 128 ; 3 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %.420.i, i64 16 ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph24.i, !llvm.loop !15

.lr.ph31.i:                                       ; preds = %.lr.ph31.i.prol.loopexit, %.lr.ph31.i
  %.130.i = phi i32 [ %i.oi, %.lr.ph31.i ], [ %.130.i.unr, %.lr.ph31.i.prol.loopexit ]
  %.111629.i = phi ptr [ %i.og, %.lr.ph31.i ], [ %.111629.i.unr, %.lr.ph31.i.prol.loopexit ] ; 6 uses
  %.528.i = phi ptr [ %i.oh, %.lr.ph31.i ], [ %.528.i.unr, %.lr.ph31.i.prol.loopexit ] ; 9 uses
  %i.nk = load i16, ptr %.111629.i, align 2, !tbaa !117
  store i16 %i.nk, ptr %.528.i, align 2, !tbaa !117
  %i.nl = getelementptr inbounds [2 x i8], ptr %.111629.i, i64 %i.ft
  %i.nm = load i16, ptr %i.nl, align 2, !tbaa !117
  %i.nn = getelementptr inbounds nuw i8, ptr %.528.i, i64 2
  store i16 %i.nm, ptr %i.nn, align 2, !tbaa !117
  %i.no = getelementptr inbounds nuw i8, ptr %.111629.i, i64 32 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %.528.i, i64 4
  %i.nq = load i16, ptr %i.no, align 2, !tbaa !117
  store i16 %i.nq, ptr %i.np, align 2, !tbaa !117
  %i.nr = getelementptr inbounds [2 x i8], ptr %i.no, i64 %i.ft
  %i.ns = load i16, ptr %i.nr, align 2, !tbaa !117
  %i.nt = getelementptr inbounds nuw i8, ptr %.528.i, i64 6
  store i16 %i.ns, ptr %i.nt, align 2, !tbaa !117
  %i.nu = getelementptr inbounds nuw i8, ptr %.111629.i, i64 64 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %.528.i, i64 8
  %i.nw = load i16, ptr %i.nu, align 2, !tbaa !117
  store i16 %i.nw, ptr %i.nv, align 2, !tbaa !117
  %i.nx = getelementptr inbounds [2 x i8], ptr %i.nu, i64 %i.ft
  %i.ny = load i16, ptr %i.nx, align 2, !tbaa !117
  %i.nz = getelementptr inbounds nuw i8, ptr %.528.i, i64 10
  store i16 %i.ny, ptr %i.nz, align 2, !tbaa !117
  %i.oa = getelementptr inbounds nuw i8, ptr %.111629.i, i64 96 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.528.i, i64 12
  %i.oc = load i16, ptr %i.oa, align 2, !tbaa !117
  store i16 %i.oc, ptr %i.ob, align 2, !tbaa !117
  %i.od = getelementptr inbounds [2 x i8], ptr %i.oa, i64 %i.ft
  %i.oe = load i16, ptr %i.od, align 2, !tbaa !117
  %i.of = getelementptr inbounds nuw i8, ptr %.528.i, i64 14
  store i16 %i.oe, ptr %i.of, align 2, !tbaa !117
  %i.og = getelementptr inbounds nuw i8, ptr %.111629.i, i64 128
  %i.oh = getelementptr inbounds nuw i8, ptr %.528.i, i64 16 ; 2 uses
  %i.oi = add nuw nsw i32 %.130.i, 4              ; 2 uses
  %exitcond66.not.i.3 = icmp eq i32 %i.oi, %.sroa.speculated
  br i1 %exitcond66.not.i.3, label %._crit_edge32.i, label %.lr.ph31.i, !llvm.loop !1699

._crit_edge32.i:                                  ; preds = %.lr.ph31.i.prol.loopexit, %.lr.ph31.i, %middle.block209, %.preheader.i
  %.5.lcssa.i = phi ptr [ %.4.lcssa.i, %.preheader.i ], [ %i.lb, %middle.block209 ], [ %.lcssa220.unr, %.lr.ph31.i.prol.loopexit ], [ %i.oh, %.lr.ph31.i ] ; 2 uses
  %indvars.iv.next68.i = add nuw nsw i64 %indvars.iv67.i, 2 ; 3 uses
  %i.oj = icmp slt i64 %indvars.iv.next68.i, %invariant.op87.i
  br i1 %i.oj, label %bb.g, label %.preheader2.loopexit.i, !llvm.loop !16

iter.check:                                       ; preds = %._crit_edge46.i, %.lr.ph45.preheader.i
  %indvars.iv71.i = phi i64 [ %i.jr, %.lr.ph45.preheader.i ], [ %indvars.iv.next72.i, %._crit_edge46.i ] ; 2 uses
  %.648.i = phi ptr [ %.3.lcssa.i, %.lr.ph45.preheader.i ], [ %.lcssa138, %._crit_edge46.i ] ; 8 uses
  %i.ok = mul nuw nsw i64 %indvars.iv71.i, %i.ft
  %gep53.i = getelementptr [2 x i8], ptr %invariant.gep52.i, i64 %i.ok ; 28 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ol = getelementptr i8, ptr %.648.i, i64 %i.by
  %i.om = getelementptr i8, ptr %i.ol, i64 2
  %bound0 = icmp ult ptr %.648.i, %scevgep
  %bound1 = icmp ult ptr %scevgep142, %i.om
  %found.conflict = and i1 %bound0, %bound1
  %i.on = or i1 %found.conflict, %stride.check
  br i1 %i.on, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check143, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
end_hunk_3
begin_hunk_4_@_ZN4ncnnL28convolution_im2col_gemm_int8ERKNS_3MatERS0_S2_iiiiiiiRKNS_6OptionE.omp_outlined.14:bb.a
  %i.wr = getelementptr inbounds nuw i8, ptr %.91048.us1053.i, i64 32 ; 2 uses
  %i.ws = add nuw nsw i32 %.36591046.us1055.i, 2  ; 2 uses
  %exitcond1172.not.i.1 = icmp eq i32 %i.ws, %.sroa.speculated114
  br i1 %exitcond1172.not.i.1, label %._crit_edge1050.i, label %.lr.ph1049.split.us1052.i, !llvm.loop !2005

.lr.ph1042.i:                                     ; preds = %.preheader981.i, %bb.ad
  %.81041.i = phi ptr [ %i.xi, %bb.ad ], [ %.7.lcssa.i, %.preheader981.i ] ; 3 uses
  %.66501040.i = phi ptr [ %.8652.i, %bb.ad ], [ %.3647.lcssa.i, %.preheader981.i ] ; 9 uses
  %.26581039.i = phi i32 [ %i.xj, %bb.ad ], [ %.1657.lcssa.i, %.preheader981.i ]
  %i.wt = load <4 x i32>, ptr %.81041.i, align 16, !tbaa !114 ; 6 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %.81041.i, i64 16
  %i.wv = load <4 x i32>, ptr %i.wu, align 16, !tbaa !114 ; 6 uses
  switch i32 %i.db, label %bb.ad [
    i32 4, label %.thread961.i
    i32 1, label %bb.ac
  ]

.thread961.i:                                     ; preds = %.lr.ph1042.i
  %i.ww = shufflevector <4 x i32> %i.wv, <4 x i32> %i.wt, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.wx = shufflevector <4 x i32> %i.wt, <4 x i32> %i.wv, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i32> %i.wx, ptr %.66501040.i, align 16, !tbaa !114
  %i.wy = getelementptr inbounds nuw i8, ptr %.66501040.i, i64 16
  store <4 x i32> %i.ww, ptr %i.wy, align 16, !tbaa !114
  %i.wz = getelementptr inbounds nuw i8, ptr %.66501040.i, i64 32
  br label %bb.ad

bb.ac:                                            ; preds = %.lr.ph1042.i
  %i.xa = shufflevector <4 x i32> %i.wt, <4 x i32> %i.wv, <2 x i32> <i32 0, i32 4>
  store <2 x i32> %i.xa, ptr %.66501040.i, align 4, !tbaa !81
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %.66501040.i, i64 %i.dc
  %i.xc = shufflevector <4 x i32> %i.wv, <4 x i32> %i.wt, <2 x i32> <i32 1, i32 5>
  store <2 x i32> %i.xc, ptr %i.xb, align 4, !tbaa !81
  %i.xd = getelementptr inbounds nuw i8, ptr %.66501040.i, i64 %.idx673.i
  %i.xe = shufflevector <4 x i32> %i.wt, <4 x i32> %i.wv, <2 x i32> <i32 2, i32 6>
  store <2 x i32> %i.xe, ptr %i.xd, align 4, !tbaa !81
  %i.xf = getelementptr inbounds nuw i8, ptr %.66501040.i, i64 %.idx674.i
  %i.xg = shufflevector <4 x i32> %i.wv, <4 x i32> %i.wt, <2 x i32> <i32 3, i32 7>
  store <2 x i32> %i.xg, ptr %i.xf, align 4, !tbaa !81
  %i.xh = getelementptr inbounds nuw i8, ptr %.66501040.i, i64 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.thread961.i, %.lr.ph1042.i
  %.8652.i = phi ptr [ %i.xh, %bb.ac ], [ %.66501040.i, %.lr.ph1042.i ], [ %i.wz, %.thread961.i ] ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %.81041.i, i64 32 ; 2 uses
  %i.xj = add nuw nsw i32 %.26581039.i, 2         ; 3 uses
  %i.xk = or disjoint i32 %i.xj, 1
  %i.xl = icmp slt i32 %i.xk, %.sroa.speculated114
  br i1 %i.xl, label %.lr.ph1042.i, label %.preheader980.i, !llvm.loop !2006

._crit_edge1050.i:                                ; preds = %.lr.ph1049.split.us1052.i.prol.loopexit, %.lr.ph1049.split.us1052.i, %.thread963.us.i.prol.loopexit, %.thread963.us.i, %.lr.ph1049.split.preheader.i, %.preheader980.i
  %.9.lcssa.i = phi ptr [ %.8.lcssa.i, %.preheader980.i ], [ %scevgep1174.i, %.lr.ph1049.split.preheader.i ], [ %i.we, %.thread963.us.i ], [ %.lcssa406.unr, %.thread963.us.i.prol.loopexit ], [ %.lcssa405.unr, %.lr.ph1049.split.us1052.i.prol.loopexit ], [ %i.wr, %.lr.ph1049.split.us1052.i ] ; 2 uses
  %indvars.iv.next1176.i = add nuw nsw i64 %indvars.iv1175.i, 4 ; 3 uses
  %i.xm = icmp slt i64 %indvars.iv.next1176.i, %invariant.op.i
  br i1 %i.xm, label %bb.x, label %.preheader979.loopexit.i, !llvm.loop !2007

.preheader975.loopexit.i:                         ; preds = %._crit_edge1090.i
  %i.xn = trunc nuw nsw i64 %indvars.iv.next1180.i to i32
  br label %.preheader975.i

.preheader975.i:                                  ; preds = %.preheader975.loopexit.i, %.preheader979.i
  %.2609.lcssa.i = phi i32 [ %.1608.lcssa.i, %.preheader979.i ], [ %i.xn, %.preheader975.loopexit.i ] ; 2 uses
  %.10.lcssa.i = phi ptr [ %.5.lcssa.i, %.preheader979.i ], [ %.14.lcssa.i, %.preheader975.loopexit.i ]
  %i.xo = icmp slt i32 %.2609.lcssa.i, %.sroa.speculated118
  br i1 %i.xo, label %.lr.ph1127.i, label %_ZN4ncnnL24unpack_output_tile_int32ERKNS_3MatERS0_iiii.exit

.lr.ph1127.i:                                     ; preds = %.preheader975.i
  %i.xp = sext i32 %.044159 to i64
  %i.xq = icmp sgt i32 %.sroa.speculated114, 7
  %i.xr = and i32 %.sroa.speculated114, -8        ; 2 uses
  %i.xs = sext i32 %.2609.lcssa.i to i64
  %i.xt = add i32 %.sroa.speculated114, -2
  %i.xu = add i32 %.sroa.speculated114, -8        ; 2 uses
  %i.xv = lshr i32 %i.xu, 3
  %i.xw = add nuw nsw i32 %i.xv, 1                ; 2 uses
  %xtraiter430 = and i32 %i.xw, 3                 ; 3 uses
  %i.xx = icmp ult i32 %i.xu, 24
  %unroll_iter = and i32 %i.xw, 1073741820
  %lcmp.mod431.not = icmp eq i32 %xtraiter430, 0
  %lcmp.mod434 = icmp ne i32 %xtraiter430, 0
  %i.xy = add i32 %.sroa.speculated114, -2
  br label %bb.af

bb.ae:                                            ; preds = %._crit_edge1090.i, %.lr.ph1094.i
  %indvars.iv1179.i = phi i64 [ %i.oo, %.lr.ph1094.i ], [ %indvars.iv.next1180.i, %._crit_edge1090.i ] ; 2 uses
  %.101093.i = phi ptr [ %.5.lcssa.i, %.lr.ph1094.i ], [ %.14.lcssa.i, %._crit_edge1090.i ] ; 2 uses
  %i.xz = load ptr, ptr %12, align 8, !tbaa !37
  %i.ya = add nsw i64 %indvars.iv1179.i, %i.ci
  %i.yb = mul i64 %i.ya, %i.dc
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %i.xz, i64 %i.yb
  %i.yd = getelementptr inbounds [4 x i8], ptr %i.yc, i64 %i.ol ; 2 uses
  br i1 %i.om, label %.lr.ph1068.i, label %.preheader978.i

.preheader978.i:                                  ; preds = %.lr.ph1068.i, %bb.ae
  %.0664.lcssa.i = phi i32 [ 0, %bb.ae ], [ %i.on, %.lr.ph1068.i ] ; 3 uses
  %.0660.lcssa.i = phi ptr [ %i.yd, %bb.ae ], [ %i.zg, %.lr.ph1068.i ] ; 2 uses
  %.11.lcssa.i = phi ptr [ %.101093.i, %bb.ae ], [ %i.zh, %.lr.ph1068.i ] ; 2 uses
  %i.ye = or disjoint i32 %.0664.lcssa.i, 3
  %i.yf = icmp slt i32 %i.ye, %.sroa.speculated114
  br i1 %i.yf, label %.lr.ph1075.i, label %.preheader977.i

.lr.ph1068.i:                                     ; preds = %bb.ae, %.lr.ph1068.i
  %.111066.i = phi ptr [ %i.zh, %.lr.ph1068.i ], [ %.101093.i, %bb.ae ] ; 5 uses
  %.06601065.i = phi ptr [ %i.zg, %.lr.ph1068.i ], [ %i.yd, %bb.ae ] ; 4 uses
  %.06641064.i = phi i32 [ %i.zi, %.lr.ph1068.i ], [ 0, %bb.ae ]
  %i.yg = load <4 x i32>, ptr %.111066.i, align 16, !tbaa !114 ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %.111066.i, i64 16
  %i.yi = load <4 x i32>, ptr %i.yh, align 16, !tbaa !114 ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %.111066.i, i64 32
  %i.yk = load <4 x i32>, ptr %i.yj, align 16, !tbaa !114 ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %.111066.i, i64 48
  %i.ym = load <4 x i32>, ptr %i.yl, align 16, !tbaa !114 ; 2 uses
  %i.yn = shufflevector <4 x i32> %i.yg, <4 x i32> %i.yk, <4 x i32> <i32 0, i32 5, i32 1, i32 4>
  %i.yo = bitcast <4 x i32> %i.yn to <2 x i64>    ; 2 uses
  %i.yp = shufflevector <4 x i32> %i.yg, <4 x i32> %i.yk, <4 x i32> <i32 2, i32 7, i32 3, i32 6>
  %i.yq = bitcast <4 x i32> %i.yp to <2 x i64>    ; 2 uses
  %i.yr = shufflevector <4 x i32> %i.yi, <4 x i32> %i.ym, <4 x i32> <i32 0, i32 5, i32 1, i32 4>
  %i.ys = bitcast <4 x i32> %i.yr to <2 x i64>    ; 2 uses
  %i.yt = shufflevector <4 x i32> %i.yi, <4 x i32> %i.ym, <4 x i32> <i32 2, i32 7, i32 3, i32 6>
  %i.yu = bitcast <4 x i32> %i.yt to <2 x i64>    ; 2 uses
  %i.yv = shufflevector <2 x i64> %i.yo, <2 x i64> %i.yq, <2 x i32> <i32 0, i32 2>
  %i.yw = shufflevector <2 x i64> %i.ys, <2 x i64> %i.yu, <2 x i32> <i32 0, i32 2>
  %i.yx = shufflevector <2 x i64> %i.yo, <2 x i64> %i.yq, <2 x i32> <i32 1, i32 3>
  %i.yy = shufflevector <2 x i64> %i.ys, <2 x i64> %i.yu, <2 x i32> <i32 1, i32 3>
  %i.yz = bitcast <2 x i64> %i.yx to <4 x i32>
  %i.za = shufflevector <4 x i32> %i.yz, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.zb = bitcast <2 x i64> %i.yy to <4 x i32>
  %i.zc = shufflevector <4 x i32> %i.zb, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <2 x i64> %i.yv, ptr %.06601065.i, align 1, !tbaa !114
  %i.zd = getelementptr inbounds nuw i8, ptr %.06601065.i, i64 16
  store <2 x i64> %i.yw, ptr %i.zd, align 1, !tbaa !114
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %.06601065.i, i64 %i.dc ; 2 uses
  store <4 x i32> %i.za, ptr %i.ze, align 1, !tbaa !114
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 16
  store <4 x i32> %i.zc, ptr %i.zf, align 1, !tbaa !114
  %i.zg = getelementptr inbounds nuw i8, ptr %.06601065.i, i64 32 ; 2 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %.111066.i, i64 64 ; 2 uses
  %i.zi = add nuw nsw i32 %.06641064.i, 8         ; 2 uses
  %i.zj = or disjoint i32 %i.zi, 7
  %i.zk = icmp slt i32 %i.zj, %.sroa.speculated114
  br i1 %i.zk, label %.lr.ph1068.i, label %.preheader978.i, !llvm.loop !2008

.preheader977.i:                                  ; preds = %.lr.ph1075.i, %.preheader978.i
  %.1665.lcssa.i = phi i32 [ %.0664.lcssa.i, %.preheader978.i ], [ %i.aab, %.lr.ph1075.i ] ; 3 uses
  %.1661.lcssa.i = phi ptr [ %.0660.lcssa.i, %.preheader978.i ], [ %i.zz, %.lr.ph1075.i ] ; 2 uses
  %.12.lcssa.i = phi ptr [ %.11.lcssa.i, %.preheader978.i ], [ %i.aaa, %.lr.ph1075.i ] ; 2 uses
  %i.zl = or disjoint i32 %.1665.lcssa.i, 1
  %i.zm = icmp slt i32 %i.zl, %.sroa.speculated114
  br i1 %i.zm, label %.lr.ph1082.i, label %.preheader976.i

.lr.ph1075.i:                                     ; preds = %.preheader978.i, %.lr.ph1075.i
  %.121074.i = phi ptr [ %i.aaa, %.lr.ph1075.i ], [ %.11.lcssa.i, %.preheader978.i ] ; 3 uses
  %.16611073.i = phi ptr [ %i.zz, %.lr.ph1075.i ], [ %.0660.lcssa.i, %.preheader978.i ] ; 3 uses
  %.16651072.i = phi i32 [ %i.aab, %.lr.ph1075.i ], [ %.0664.lcssa.i, %.preheader978.i ]
  %i.zn = load <4 x i32>, ptr %.121074.i, align 16, !tbaa !114 ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %.121074.i, i64 16
  %i.zp = load <4 x i32>, ptr %i.zo, align 16, !tbaa !114 ; 2 uses
  %i.zq = shufflevector <4 x i32> %i.zn, <4 x i32> %i.zp, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.zr = bitcast <4 x i32> %i.zq to <2 x i64>    ; 2 uses
  %i.zs = shufflevector <4 x i32> %i.zn, <4 x i32> %i.zp, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.zt = bitcast <4 x i32> %i.zs to <2 x i64>    ; 2 uses
  %i.zu = shufflevector <2 x i64> %i.zr, <2 x i64> %i.zt, <2 x i32> <i32 0, i32 2>
  %i.zv = shufflevector <2 x i64> %i.zt, <2 x i64> %i.zr, <2 x i32> <i32 1, i32 3>
  %i.zw = bitcast <2 x i64> %i.zv to <4 x i32>
  %i.zx = shufflevector <4 x i32> %i.zw, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <2 x i64> %i.zu, ptr %.16611073.i, align 1, !tbaa !114
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %.16611073.i, i64 %i.dc
  store <4 x i32> %i.zx, ptr %i.zy, align 1, !tbaa !114
  %i.zz = getelementptr inbounds nuw i8, ptr %.16611073.i, i64 16 ; 2 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %.121074.i, i64 32 ; 2 uses
  %i.aab = add nuw nsw i32 %.16651072.i, 4        ; 3 uses
  %i.aac = or disjoint i32 %i.aab, 3
  %i.aad = icmp slt i32 %i.aac, %.sroa.speculated114
  br i1 %i.aad, label %.lr.ph1075.i, label %.preheader977.i, !llvm.loop !2009

.preheader976.i:                                  ; preds = %.lr.ph1082.i, %.preheader977.i
  %.2666.lcssa.i = phi i32 [ %.1665.lcssa.i, %.preheader977.i ], [ %i.abw, %.lr.ph1082.i ] ; 6 uses
  %.2662.lcssa.i = phi ptr [ %.1661.lcssa.i, %.preheader977.i ], [ %i.abu, %.lr.ph1082.i ] ; 9 uses
  %.13.lcssa.i = phi ptr [ %.12.lcssa.i, %.preheader977.i ], [ %i.abv, %.lr.ph1082.i ] ; 9 uses
  %i.aae = icmp slt i32 %.2666.lcssa.i, %.sroa.speculated114
  br i1 %i.aae, label %.lr.ph1089.i.preheader, label %._crit_edge1090.i

.lr.ph1089.i.preheader:                           ; preds = %.preheader976.i
  %i.aaf = xor i32 %.2666.lcssa.i, -1
  %i.aag = add i32 %.sroa.speculated114, %i.aaf   ; 2 uses
  %i.aah = zext i32 %i.aag to i64
  %i.aai = add nuw nsw i64 %i.aah, 1              ; 2 uses
  %min.iters.check355 = icmp ult i32 %i.aag, 11
  br i1 %min.iters.check355, label %.lr.ph1089.i.preheader387, label %vector.memcheck356

vector.memcheck356:                               ; preds = %.lr.ph1089.i.preheader
  %i.aaj = xor i32 %.2666.lcssa.i, -1
  %i.aak = add i32 %.sroa.speculated114, %i.aaj
  %i.aal = zext i32 %i.aak to i64                 ; 2 uses
  %i.aam = shl nuw nsw i64 %i.aal, 2              ; 2 uses
  %i.aan = getelementptr i8, ptr %.2662.lcssa.i, i64 %i.aam
  %i.aao = getelementptr i8, ptr %i.aan, i64 4    ; 2 uses
  %i.aap = getelementptr i8, ptr %.2662.lcssa.i, i64 %i.op ; 2 uses
  %i.aaq = getelementptr i8, ptr %.2662.lcssa.i, i64 %i.op
  %i.aar = getelementptr i8, ptr %i.aaq, i64 4
  %i.aas = getelementptr i8, ptr %i.aar, i64 %i.aam ; 2 uses
  %16 = shl nuw nsw i64 %i.aal, 3
  %17 = getelementptr i8, ptr %.13.lcssa.i, i64 %16
  %18 = getelementptr i8, ptr %17, i64 8          ; 2 uses
  %bound0357 = icmp ult ptr %.2662.lcssa.i, %i.aas
  %bound1358 = icmp ult ptr %i.aap, %i.aao
  %found.conflict359 = and i1 %bound0357, %bound1358
  %bound0360 = icmp ult ptr %.2662.lcssa.i, %18
  %bound1361 = icmp ult ptr %.13.lcssa.i, %i.aao
  %found.conflict362 = and i1 %bound0360, %bound1361
  %conflict.rdx = or i1 %found.conflict359, %found.conflict362
  %bound0363 = icmp ult ptr %i.aap, %18
  %bound1364 = icmp ult ptr %.13.lcssa.i, %i.aas
  %found.conflict365 = and i1 %bound0363, %bound1364
  %conflict.rdx366 = or i1 %conflict.rdx, %found.conflict365
  br i1 %conflict.rdx366, label %.lr.ph1089.i.preheader387, label %vector.ph367

vector.ph367:                                     ; preds = %vector.memcheck356
  %n.vec368 = and i64 %i.aai, 8589934584          ; 5 uses
  %i.aat = shl nuw nsw i64 %n.vec368, 3
  %i.aau = getelementptr i8, ptr %.13.lcssa.i, i64 %i.aat ; 2 uses
  %i.aav = shl nuw nsw i64 %n.vec368, 2
  %i.aaw = getelementptr i8, ptr %.2662.lcssa.i, i64 %i.aav
  %i.aax = trunc i64 %n.vec368 to i32
  %i.aay = add i32 %.2666.lcssa.i, %i.aax
  br label %vector.body369

vector.body369:                                   ; preds = %vector.body369, %vector.ph367
  %index370 = phi i64 [ 0, %vector.ph367 ], [ %index.next380, %vector.body369 ] ; 3 uses
  %i.aaz = shl i64 %index370, 3                   ; 2 uses
  %next.gep371 = getelementptr i8, ptr %.13.lcssa.i, i64 %i.aaz
  %i.aba = getelementptr i8, ptr %.13.lcssa.i, i64 %i.aaz
  %next.gep372 = getelementptr i8, ptr %i.aba, i64 32
  %i.abb = shl i64 %index370, 2
  %next.gep373 = getelementptr i8, ptr %.2662.lcssa.i, i64 %i.abb ; 3 uses
  %wide.vec374 = load <8 x i32>, ptr %next.gep371, align 4, !tbaa !81, !alias.scope !2043 ; 2 uses
  %strided.vec375 = shufflevector <8 x i32> %wide.vec374, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec376 = shufflevector <8 x i32> %wide.vec374, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec377 = load <8 x i32>, ptr %next.gep372, align 4, !tbaa !81, !alias.scope !2043 ; 2 uses
  %strided.vec378 = shufflevector <8 x i32> %wide.vec377, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec379 = shufflevector <8 x i32> %wide.vec377, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.abc = getelementptr i8, ptr %next.gep373, i64 16
  store <4 x i32> %strided.vec375, ptr %next.gep373, align 4, !tbaa !81, !alias.scope !2044, !noalias !2045
  store <4 x i32> %strided.vec378, ptr %i.abc, align 4, !tbaa !81, !alias.scope !2044, !noalias !2045
  %i.abd = getelementptr inbounds nuw [4 x i8], ptr %next.gep373, i64 %i.dc ; 2 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 16
  store <4 x i32> %strided.vec376, ptr %i.abd, align 4, !tbaa !81, !alias.scope !2046, !noalias !2043
  store <4 x i32> %strided.vec379, ptr %i.abe, align 4, !tbaa !81, !alias.scope !2046, !noalias !2043
  %index.next380 = add nuw i64 %index370, 8       ; 2 uses
  %i.abf = icmp eq i64 %index.next380, %n.vec368
  br i1 %i.abf, label %middle.block381, label %vector.body369, !llvm.loop !2014

middle.block381:                                  ; preds = %vector.body369
  %cmp.n382 = icmp eq i64 %i.aai, %n.vec368
  br i1 %cmp.n382, label %._crit_edge1090.i, label %.lr.ph1089.i.preheader387

.lr.ph1089.i.preheader387:                        ; preds = %vector.memcheck356, %.lr.ph1089.i.preheader, %middle.block381
  %.141088.i.ph = phi ptr [ %.13.lcssa.i, %vector.memcheck356 ], [ %.13.lcssa.i, %.lr.ph1089.i.preheader ], [ %i.aau, %middle.block381 ] ; 2 uses
  %.36631087.i.ph = phi ptr [ %.2662.lcssa.i, %vector.memcheck356 ], [ %.2662.lcssa.i, %.lr.ph1089.i.preheader ], [ %i.aaw, %middle.block381 ] ; 2 uses
  %.36671086.i.ph = phi i32 [ %.2666.lcssa.i, %vector.memcheck356 ], [ %.2666.lcssa.i, %.lr.ph1089.i.preheader ], [ %i.aay, %middle.block381 ] ; 4 uses
  %i.abg = sub i32 %.sroa.speculated114, %.36671086.i.ph
  %xtraiter427 = and i32 %i.abg, 3                ; 2 uses
  %lcmp.mod428.not = icmp eq i32 %xtraiter427, 0
  br i1 %lcmp.mod428.not, label %.lr.ph1089.i.prol.loopexit, label %.lr.ph1089.i.prol

.lr.ph1089.i.prol:                                ; preds = %.lr.ph1089.i.preheader387, %.lr.ph1089.i.prol
  %.141088.i.prol = phi ptr [ %i.abm, %.lr.ph1089.i.prol ], [ %.141088.i.ph, %.lr.ph1089.i.preheader387 ] ; 3 uses
  %.36631087.i.prol = phi ptr [ %i.abl, %.lr.ph1089.i.prol ], [ %.36631087.i.ph, %.lr.ph1089.i.preheader387 ] ; 3 uses
  %.36671086.i.prol = phi i32 [ %i.abn, %.lr.ph1089.i.prol ], [ %.36671086.i.ph, %.lr.ph1089.i.preheader387 ]
  %prol.iter429 = phi i32 [ %prol.iter429.next, %.lr.ph1089.i.prol ], [ 0, %.lr.ph1089.i.preheader387 ]
  %i.abh = load i32, ptr %.141088.i.prol, align 4, !tbaa !81
  %i.abi = getelementptr inbounds nuw i8, ptr %.141088.i.prol, i64 4
  %i.abj = load i32, ptr %i.abi, align 4, !tbaa !81
  store i32 %i.abh, ptr %.36631087.i.prol, align 4, !tbaa !81
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %.36631087.i.prol, i64 %i.dc
  store i32 %i.abj, ptr %i.abk, align 4, !tbaa !81
  %i.abl = getelementptr inbounds nuw i8, ptr %.36631087.i.prol, i64 4 ; 2 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %.141088.i.prol, i64 8 ; 3 uses
  %i.abn = add nuw nsw i32 %.36671086.i.prol, 1   ; 2 uses
  %prol.iter429.next = add i32 %prol.iter429, 1   ; 2 uses
  %prol.iter429.cmp.not = icmp eq i32 %prol.iter429.next, %xtraiter427
  br i1 %prol.iter429.cmp.not, label %.lr.ph1089.i.prol.loopexit, label %.lr.ph1089.i.prol, !llvm.loop !2015

.lr.ph1089.i.prol.loopexit:                       ; preds = %.lr.ph1089.i.prol, %.lr.ph1089.i.preheader387
  %.lcssa415.unr = phi ptr [ poison, %.lr.ph1089.i.preheader387 ], [ %i.abm, %.lr.ph1089.i.prol ]
  %.141088.i.unr = phi ptr [ %.141088.i.ph, %.lr.ph1089.i.preheader387 ], [ %i.abm, %.lr.ph1089.i.prol ]
  %.36631087.i.unr = phi ptr [ %.36631087.i.ph, %.lr.ph1089.i.preheader387 ], [ %i.abl, %.lr.ph1089.i.prol ]
  %.36671086.i.unr = phi i32 [ %.36671086.i.ph, %.lr.ph1089.i.preheader387 ], [ %i.abn, %.lr.ph1089.i.prol ]
  %i.abo = sub i32 %.36671086.i.ph, %.sroa.speculated114
  %i.abp = icmp ugt i32 %i.abo, -4
  br i1 %i.abp, label %._crit_edge1090.i, label %.lr.ph1089.i

.lr.ph1082.i:                                     ; preds = %.preheader977.i, %.lr.ph1082.i
  %.131081.i = phi ptr [ %i.abv, %.lr.ph1082.i ], [ %.12.lcssa.i, %.preheader977.i ] ; 3 uses
  %.26621080.i = phi ptr [ %i.abu, %.lr.ph1082.i ], [ %.1661.lcssa.i, %.preheader977.i ] ; 3 uses
  %.26661079.i = phi i32 [ %i.abw, %.lr.ph1082.i ], [ %.1665.lcssa.i, %.preheader977.i ]
  %i.abq = getelementptr inbounds nuw i8, ptr %.131081.i, i64 8
  %i.abr = getelementptr inbounds nuw [4 x i8], ptr %.26621080.i, i64 %i.dc
  %i.abs = load <2 x i32>, ptr %i.abq, align 4, !tbaa !81
  %i.abt = load <2 x i32>, ptr %.131081.i, align 4, !tbaa !81
  store <2 x i32> %i.abt, ptr %.26621080.i, align 4, !tbaa !81
  store <2 x i32> %i.abs, ptr %i.abr, align 4, !tbaa !81
  %i.abu = getelementptr inbounds nuw i8, ptr %.26621080.i, i64 8 ; 2 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %.131081.i, i64 16 ; 2 uses
  %i.abw = add nuw nsw i32 %.26661079.i, 2        ; 3 uses
  %i.abx = or disjoint i32 %i.abw, 1
  %i.aby = icmp slt i32 %i.abx, %.sroa.speculated114
  br i1 %i.aby, label %.lr.ph1082.i, label %.preheader976.i, !llvm.loop !2016

.lr.ph1089.i:                                     ; preds = %.lr.ph1089.i.prol.loopexit, %.lr.ph1089.i
  %.141088.i = phi ptr [ %i.acw, %.lr.ph1089.i ], [ %.141088.i.unr, %.lr.ph1089.i.prol.loopexit ] ; 9 uses
  %.36631087.i = phi ptr [ %i.acv, %.lr.ph1089.i ], [ %.36631087.i.unr, %.lr.ph1089.i.prol.loopexit ] ; 6 uses
  %.36671086.i = phi i32 [ %i.acx, %.lr.ph1089.i ], [ %.36671086.i.unr, %.lr.ph1089.i.prol.loopexit ]
  %i.abz = load i32, ptr %.141088.i, align 4, !tbaa !81
  %i.aca = getelementptr inbounds nuw i8, ptr %.141088.i, i64 4
  %i.acb = load i32, ptr %i.aca, align 4, !tbaa !81
  store i32 %i.abz, ptr %.36631087.i, align 4, !tbaa !81
  %i.acc = getelementptr inbounds nuw [4 x i8], ptr %.36631087.i, i64 %i.dc
  store i32 %i.acb, ptr %i.acc, align 4, !tbaa !81
  %i.acd = getelementptr inbounds nuw i8, ptr %.36631087.i, i64 4 ; 2 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %.141088.i, i64 8
  %i.acf = load i32, ptr %i.ace, align 4, !tbaa !81
  %i.acg = getelementptr inbounds nuw i8, ptr %.141088.i, i64 12
  %i.ach = load i32, ptr %i.acg, align 4, !tbaa !81
  store i32 %i.acf, ptr %i.acd, align 4, !tbaa !81
  %i.aci = getelementptr inbounds nuw [4 x i8], ptr %i.acd, i64 %i.dc
  store i32 %i.ach, ptr %i.aci, align 4, !tbaa !81
  %i.acj = getelementptr inbounds nuw i8, ptr %.36631087.i, i64 8 ; 2 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %.141088.i, i64 16
  %i.acl = load i32, ptr %i.ack, align 4, !tbaa !81
  %i.acm = getelementptr inbounds nuw i8, ptr %.141088.i, i64 20
  %i.acn = load i32, ptr %i.acm, align 4, !tbaa !81
  store i32 %i.acl, ptr %i.acj, align 4, !tbaa !81
  %i.aco = getelementptr inbounds nuw [4 x i8], ptr %i.acj, i64 %i.dc
  store i32 %i.acn, ptr %i.aco, align 4, !tbaa !81
  %i.acp = getelementptr inbounds nuw i8, ptr %.36631087.i, i64 12 ; 2 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %.141088.i, i64 24
  %i.acr = load i32, ptr %i.acq, align 4, !tbaa !81
  %i.acs = getelementptr inbounds nuw i8, ptr %.141088.i, i64 28
  %i.act = load i32, ptr %i.acs, align 4, !tbaa !81
  store i32 %i.acr, ptr %i.acp, align 4, !tbaa !81
  %i.acu = getelementptr inbounds nuw [4 x i8], ptr %i.acp, i64 %i.dc
  store i32 %i.act, ptr %i.acu, align 4, !tbaa !81
  %i.acv = getelementptr inbounds nuw i8, ptr %.36631087.i, i64 16
  %i.acw = getelementptr inbounds nuw i8, ptr %.141088.i, i64 32 ; 2 uses
  %i.acx = add nuw nsw i32 %.36671086.i, 4        ; 2 uses
  %exitcond1178.not.i.3 = icmp eq i32 %i.acx, %.sroa.speculated114
  br i1 %exitcond1178.not.i.3, label %._crit_edge1090.i, label %.lr.ph1089.i, !llvm.loop !2017

._crit_edge1090.i:                                ; preds = %.lr.ph1089.i.prol.loopexit, %.lr.ph1089.i, %middle.block381, %.preheader976.i
  %.14.lcssa.i = phi ptr [ %.13.lcssa.i, %.preheader976.i ], [ %i.aau, %middle.block381 ], [ %.lcssa415.unr, %.lr.ph1089.i.prol.loopexit ], [ %i.acw, %.lr.ph1089.i ] ; 2 uses
  %indvars.iv.next1180.i = add nuw nsw i64 %indvars.iv1179.i, 2 ; 3 uses
  %i.acy = icmp slt i64 %indvars.iv.next1180.i, %invariant.op1226.i
  br i1 %i.acy, label %bb.ae, label %.preheader975.loopexit.i, !llvm.loop !2018

bb.af:                                            ; preds = %._crit_edge1123.i, %.lr.ph1127.i
  %indvars.iv1183.i = phi i64 [ %i.xs, %.lr.ph1127.i ], [ %indvars.iv.next1184.i, %._crit_edge1123.i ] ; 2 uses
  %.151126.i = phi ptr [ %.10.lcssa.i, %.lr.ph1127.i ], [ %.19.lcssa.i, %._crit_edge1123.i ] ; 3 uses
  %i.acz = load ptr, ptr %12, align 8, !tbaa !37
  %i.ada = add nsw i64 %indvars.iv1183.i, %i.ci
  %i.adb = mul i64 %i.ada, %i.dc
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %i.acz, i64 %i.adb
  %i.add = getelementptr inbounds [4 x i8], ptr %i.adc, i64 %i.xp ; 3 uses
  br i1 %i.xq, label %.lr.ph1101.i.preheader, label %.preheader974.i

.lr.ph1101.i.preheader:                           ; preds = %bb.af
  br i1 %i.xx, label %.lr.ph1101.i.epil.preheader, label %.lr.ph1101.i

.preheader974.i.loopexit.unr-lcssa:               ; preds = %.lr.ph1101.i
  br i1 %lcmp.mod431.not, label %.preheader974.i, label %.lr.ph1101.i.epil.preheader

.lr.ph1101.i.epil.preheader:                      ; preds = %.preheader974.i.loopexit.unr-lcssa, %.lr.ph1101.i.preheader
  %.161099.i.epil.init = phi ptr [ %.151126.i, %.lr.ph1101.i.preheader ], [ %i.aej, %.preheader974.i.loopexit.unr-lcssa ]
  %.06361097.i.epil.init = phi ptr [ %i.add, %.lr.ph1101.i.preheader ], [ %i.aei, %.preheader974.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod434)
  br label %.lr.ph1101.i.epil

.lr.ph1101.i.epil:                                ; preds = %.lr.ph1101.i.epil, %.lr.ph1101.i.epil.preheader
  %.161099.i.epil = phi ptr [ %i.adj, %.lr.ph1101.i.epil ], [ %.161099.i.epil.init, %.lr.ph1101.i.epil.preheader ] ; 3 uses
  %.06361097.i.epil = phi ptr [ %i.adi, %.lr.ph1101.i.epil ], [ %.06361097.i.epil.init, %.lr.ph1101.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph1101.i.epil ], [ 0, %.lr.ph1101.i.epil.preheader ]
  %i.ade = load <2 x i64>, ptr %.161099.i.epil, align 1, !tbaa !114
  %i.adf = getelementptr inbounds nuw i8, ptr %.161099.i.epil, i64 16
  %i.adg = load <2 x i64>, ptr %i.adf, align 1, !tbaa !114
  store <2 x i64> %i.ade, ptr %.06361097.i.epil, align 1, !tbaa !114
  %i.adh = getelementptr inbounds nuw i8, ptr %.06361097.i.epil, i64 16
  store <2 x i64> %i.adg, ptr %i.adh, align 1, !tbaa !114
  %i.adi = getelementptr inbounds nuw i8, ptr %.06361097.i.epil, i64 32 ; 2 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %.161099.i.epil, i64 32 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter430
  br i1 %epil.iter.cmp.not, label %.preheader974.i, label %.lr.ph1101.i.epil, !llvm.loop !2019

.preheader974.i:                                  ; preds = %.preheader974.i.loopexit.unr-lcssa, %.lr.ph1101.i.epil, %bb.af
  %.0636.lcssa.i = phi ptr [ %i.add, %bb.af ], [ %i.aei, %.preheader974.i.loopexit.unr-lcssa ], [ %i.adi, %.lr.ph1101.i.epil ] ; 2 uses
  %.0632.lcssa.i = phi i32 [ 0, %bb.af ], [ %i.xr, %.lr.ph1101.i.epil ], [ %i.xr, %.preheader974.i.loopexit.unr-lcssa ] ; 3 uses
  %.16.lcssa.i = phi ptr [ %.151126.i, %bb.af ], [ %i.aej, %.preheader974.i.loopexit.unr-lcssa ], [ %i.adj, %.lr.ph1101.i.epil ] ; 2 uses
  %i.adk = or disjoint i32 %.0632.lcssa.i, 3
  %i.adl = icmp slt i32 %i.adk, %.sroa.speculated114
  br i1 %i.adl, label %.lr.ph1108.i, label %.preheader973.i

.lr.ph1101.i:                                     ; preds = %.lr.ph1101.i.preheader, %.lr.ph1101.i
  %.161099.i = phi ptr [ %i.aej, %.lr.ph1101.i ], [ %.151126.i, %.lr.ph1101.i.preheader ] ; 9 uses
  %.06361097.i = phi ptr [ %i.aei, %.lr.ph1101.i ], [ %i.add, %.lr.ph1101.i.preheader ] ; 9 uses
  %niter = phi i32 [ %niter.next.3, %.lr.ph1101.i ], [ 0, %.lr.ph1101.i.preheader ]
  %i.adm = load <2 x i64>, ptr %.161099.i, align 1, !tbaa !114
  %i.adn = getelementptr inbounds nuw i8, ptr %.161099.i, i64 16
end_hunk_4
