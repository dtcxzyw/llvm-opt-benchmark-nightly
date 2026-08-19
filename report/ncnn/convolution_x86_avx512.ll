inline.NumInlined: 384
inline.NumDeleted: 86
loop-unroll.NumCompletelyUnrolled: 153
loop-unroll.NumRuntimeUnrolled: 222
loop-unroll.NumUnrolled: 375
begin_hunk_0_@_ZN4ncnn22Convolution_x86_avx51215create_pipelineERKNS_6OptionE:bb.a
  store float %i.cvv, ptr %.71975.us.i, align 4, !tbaa !39
  %i.cvw = getelementptr inbounds nuw [4 x i8], ptr %i.cvu, i64 %i.cdx
  %i.cvx = getelementptr inbounds nuw i8, ptr %.71975.us.i, i64 4
  %i.cvy = load float, ptr %i.cvw, align 4, !tbaa !39
  store float %i.cvy, ptr %i.cvx, align 4, !tbaa !39
  %i.cvz = getelementptr inbounds nuw i8, ptr %.71975.us.i, i64 8
  %i.cwa = getelementptr inbounds nuw [4 x i8], ptr %.311471979.us.i, i64 %indvars.iv2389.i
  %i.cwb = getelementptr inbounds nuw i8, ptr %i.cwa, i64 4 ; 2 uses
  %i.cwc = load float, ptr %i.cwb, align 4, !tbaa !39
  store float %i.cwc, ptr %i.cvz, align 4, !tbaa !39
  %i.cwd = getelementptr inbounds nuw [4 x i8], ptr %i.cwb, i64 %i.cdx
  %i.cwe = getelementptr inbounds nuw i8, ptr %.71975.us.i, i64 12
  %i.cwf = load float, ptr %i.cwd, align 4, !tbaa !39
  store float %i.cwf, ptr %i.cwe, align 4, !tbaa !39
  %i.cwg = getelementptr inbounds nuw i8, ptr %.71975.us.i, i64 16
  %i.cwh = getelementptr inbounds nuw [4 x i8], ptr %.311471979.us.i, i64 %indvars.iv2389.i
  %i.cwi = getelementptr inbounds nuw i8, ptr %i.cwh, i64 8 ; 2 uses
  %i.cwj = load float, ptr %i.cwi, align 4, !tbaa !39
  store float %i.cwj, ptr %i.cwg, align 4, !tbaa !39
  %i.cwk = getelementptr inbounds nuw [4 x i8], ptr %i.cwi, i64 %i.cdx
  %i.cwl = getelementptr inbounds nuw i8, ptr %.71975.us.i, i64 20
  %i.cwm = load float, ptr %i.cwk, align 4, !tbaa !39
  store float %i.cwm, ptr %i.cwl, align 4, !tbaa !39
  %i.cwn = getelementptr inbounds nuw i8, ptr %.71975.us.i, i64 24
  %i.cwo = getelementptr inbounds nuw [4 x i8], ptr %.311471979.us.i, i64 %indvars.iv2389.i
  %i.cwp = getelementptr inbounds nuw i8, ptr %i.cwo, i64 12 ; 2 uses
  %i.cwq = load float, ptr %i.cwp, align 4, !tbaa !39
  store float %i.cwq, ptr %i.cwn, align 4, !tbaa !39
  %i.cwr = getelementptr inbounds nuw [4 x i8], ptr %i.cwp, i64 %i.cdx
  %i.cws = getelementptr inbounds nuw i8, ptr %.71975.us.i, i64 28
  %i.cwt = load float, ptr %i.cwr, align 4, !tbaa !39
  store float %i.cwt, ptr %i.cws, align 4, !tbaa !39
  %i.cwu = getelementptr inbounds nuw i8, ptr %.71975.us.i, i64 32 ; 2 uses
  %indvars.iv.next2390.i.3 = add nuw nsw i64 %indvars.iv2389.i, 4 ; 2 uses
  %exitcond2393.not.i.3 = icmp eq i64 %indvars.iv.next2390.i.3, %wide.trip.count2372.i
  br i1 %exitcond2393.not.i.3, label %._crit_edge1977.us.i, label %vec.epilog.scalar.ph897, !llvm.loop !213

._crit_edge1977.us.i:                             ; preds = %vec.epilog.scalar.ph897.prol.loopexit, %vec.epilog.scalar.ph897, %vec.epilog.middle.block909, %middle.block893
  %.lcssa674 = phi ptr [ %i.cvh, %vec.epilog.middle.block909 ], [ %i.cuz, %middle.block893 ], [ %.lcssa982.unr, %vec.epilog.scalar.ph897.prol.loopexit ], [ %i.cwu, %vec.epilog.scalar.ph897 ] ; 2 uses
  %i.cwv = getelementptr inbounds nuw [4 x i8], ptr %.311471979.us.i, i64 %i.cdz ; 2 uses
  %i.cww = add nuw nsw i32 %.311371981.us.i, 2    ; 3 uses
  %i.cwx = or disjoint i32 %i.cww, 1
  %i.cwy = icmp slt i32 %i.cwx, %i.cj
  br i1 %i.cwy, label %iter.check896, label %.preheader1552.i, !llvm.loop !214

.preheader1552.i:                                 ; preds = %._crit_edge1977.us.i, %.preheader1553.i
  %.31147.lcssa.i = phi ptr [ %.21146.lcssa.i, %.preheader1553.i ], [ %i.cwv, %._crit_edge1977.us.i ] ; 12 uses
  %.6.lcssa.i = phi ptr [ %.41143.lcssa.i, %.preheader1553.i ], [ %.lcssa674, %._crit_edge1977.us.i ]
  %.31137.lcssa.i = phi i32 [ %.21136.lcssa.i, %.preheader1553.i ], [ %i.cww, %._crit_edge1977.us.i ] ; 2 uses
  %i.cwz = icmp sge i32 %.31137.lcssa.i, %i.cj
  %brmerge2009.i = or i1 %i.cea, %i.cwz
  br i1 %brmerge2009.i, label %._crit_edge1994.split.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader1552.i
  %.31147.lcssa.i827 = ptrtoaddr ptr %.31147.lcssa.i to i64
  br label %iter.check845

iter.check845:                                    ; preds = %.preheader.i.preheader, %._crit_edge1990.i
  %.411381993.i = phi i32 [ %i.cxu, %._crit_edge1990.i ], [ %.31137.lcssa.i, %.preheader.i.preheader ]
  %.91992.i = phi ptr [ %.lcssa677, %._crit_edge1990.i ], [ %.6.lcssa.i, %.preheader.i.preheader ] ; 6 uses
  %.91992.i828 = ptrtoaddr ptr %.91992.i to i64
  %i.cxa = sub i64 %.31147.lcssa.i827, %.91992.i828
  %diff.check = icmp ugt i64 %i.cxa, -256
  %or.cond960 = select i1 %min.iters.check829, i1 true, i1 %diff.check
  br i1 %or.cond960, label %vec.epilog.scalar.ph846.preheader, label %vector.main.loop.iter.check830

vector.main.loop.iter.check830:                   ; preds = %iter.check845
  br i1 %min.iters.check831, label %vec.epilog.ph849, label %vector.ph832

vector.ph832:                                     ; preds = %vector.main.loop.iter.check830
  %i.cxb = getelementptr i8, ptr %.91992.i, i64 %i.cez ; 2 uses
  br label %vector.body834

vector.body834:                                   ; preds = %vector.body834, %vector.ph832
  %index835 = phi i64 [ 0, %vector.ph832 ], [ %index.next841, %vector.body834 ] ; 3 uses
  %i.cxc = shl i64 %index835, 2
  %next.gep836 = getelementptr i8, ptr %.91992.i, i64 %i.cxc ; 4 uses
  %i.cxd = getelementptr inbounds nuw [4 x i8], ptr %.31147.lcssa.i, i64 %index835 ; 4 uses
  %i.cxe = getelementptr inbounds nuw i8, ptr %i.cxd, i64 64
  %i.cxf = getelementptr inbounds nuw i8, ptr %i.cxd, i64 128
  %i.cxg = getelementptr inbounds nuw i8, ptr %i.cxd, i64 192
  %wide.load837 = load <16 x float>, ptr %i.cxd, align 4, !tbaa !39
  %wide.load838 = load <16 x float>, ptr %i.cxe, align 4, !tbaa !39
  %wide.load839 = load <16 x float>, ptr %i.cxf, align 4, !tbaa !39
  %wide.load840 = load <16 x float>, ptr %i.cxg, align 4, !tbaa !39
  %i.cxh = getelementptr i8, ptr %next.gep836, i64 64
  %i.cxi = getelementptr i8, ptr %next.gep836, i64 128
  %i.cxj = getelementptr i8, ptr %next.gep836, i64 192
  store <16 x float> %wide.load837, ptr %next.gep836, align 4, !tbaa !39
  store <16 x float> %wide.load838, ptr %i.cxh, align 4, !tbaa !39
  store <16 x float> %wide.load839, ptr %i.cxi, align 4, !tbaa !39
  store <16 x float> %wide.load840, ptr %i.cxj, align 4, !tbaa !39
  %index.next841 = add nuw i64 %index835, 64      ; 2 uses
  %i.cxk = icmp eq i64 %index.next841, %n.vec833
  br i1 %i.cxk, label %middle.block842, label %vector.body834, !llvm.loop !215

middle.block842:                                  ; preds = %vector.body834
  br i1 %cmp.n843, label %._crit_edge1990.i, label %vec.epilog.iter.check847

vec.epilog.iter.check847:                         ; preds = %middle.block842
  br i1 %min.epilog.iters.check848, label %vec.epilog.scalar.ph846.preheader, label %vec.epilog.ph849, !prof !216

vec.epilog.ph849:                                 ; preds = %vector.main.loop.iter.check830, %vec.epilog.iter.check847
  %vec.epilog.resume.val844 = phi i64 [ %n.vec833, %vec.epilog.iter.check847 ], [ 0, %vector.main.loop.iter.check830 ]
  %i.cxl = getelementptr i8, ptr %.91992.i, i64 %i.cfa ; 2 uses
  br label %vec.epilog.vector.body851

vec.epilog.vector.body851:                        ; preds = %vec.epilog.vector.body851, %vec.epilog.ph849
  %index852 = phi i64 [ %vec.epilog.resume.val844, %vec.epilog.ph849 ], [ %index.next855, %vec.epilog.vector.body851 ] ; 3 uses
  %i.cxm = shl i64 %index852, 2
  %next.gep853 = getelementptr i8, ptr %.91992.i, i64 %i.cxm
  %i.cxn = getelementptr inbounds nuw [4 x i8], ptr %.31147.lcssa.i, i64 %index852
  %wide.load854 = load <8 x float>, ptr %i.cxn, align 4, !tbaa !39
  store <8 x float> %wide.load854, ptr %next.gep853, align 4, !tbaa !39
  %index.next855 = add nuw i64 %index852, 8       ; 2 uses
  %i.cxo = icmp eq i64 %index.next855, %n.vec850
  br i1 %i.cxo, label %vec.epilog.middle.block856, label %vec.epilog.vector.body851, !llvm.loop !217

vec.epilog.middle.block856:                       ; preds = %vec.epilog.vector.body851
  br i1 %cmp.n857, label %._crit_edge1990.i, label %vec.epilog.scalar.ph846.preheader

vec.epilog.scalar.ph846.preheader:                ; preds = %iter.check845, %vec.epilog.iter.check847, %vec.epilog.middle.block856
  %indvars.iv2394.i.ph = phi i64 [ 0, %iter.check845 ], [ %n.vec833, %vec.epilog.iter.check847 ], [ %n.vec850, %vec.epilog.middle.block856 ] ; 3 uses
  %.101988.i.ph = phi ptr [ %.91992.i, %iter.check845 ], [ %i.cxb, %vec.epilog.iter.check847 ], [ %i.cxl, %vec.epilog.middle.block856 ] ; 2 uses
  br i1 %lcmp.mod1164.not, label %vec.epilog.scalar.ph846.prol.loopexit, label %vec.epilog.scalar.ph846.prol

vec.epilog.scalar.ph846.prol:                     ; preds = %vec.epilog.scalar.ph846.preheader, %vec.epilog.scalar.ph846.prol
  %indvars.iv2394.i.prol = phi i64 [ %indvars.iv.next2395.i.prol, %vec.epilog.scalar.ph846.prol ], [ %indvars.iv2394.i.ph, %vec.epilog.scalar.ph846.preheader ] ; 2 uses
  %.101988.i.prol = phi ptr [ %i.cxr, %vec.epilog.scalar.ph846.prol ], [ %.101988.i.ph, %vec.epilog.scalar.ph846.preheader ] ; 2 uses
  %prol.iter1165 = phi i64 [ %prol.iter1165.next, %vec.epilog.scalar.ph846.prol ], [ 0, %vec.epilog.scalar.ph846.preheader ]
  %i.cxp = getelementptr inbounds nuw [4 x i8], ptr %.31147.lcssa.i, i64 %indvars.iv2394.i.prol
  %i.cxq = load float, ptr %i.cxp, align 4, !tbaa !39
  store float %i.cxq, ptr %.101988.i.prol, align 4, !tbaa !39
  %i.cxr = getelementptr inbounds nuw i8, ptr %.101988.i.prol, i64 4 ; 3 uses
  %indvars.iv.next2395.i.prol = add nuw nsw i64 %indvars.iv2394.i.prol, 1 ; 2 uses
  %prol.iter1165.next = add i64 %prol.iter1165, 1 ; 2 uses
  %prol.iter1165.cmp.not = icmp eq i64 %prol.iter1165.next, %xtraiter1163
  br i1 %prol.iter1165.cmp.not, label %vec.epilog.scalar.ph846.prol.loopexit, label %vec.epilog.scalar.ph846.prol, !llvm.loop !218

vec.epilog.scalar.ph846.prol.loopexit:            ; preds = %vec.epilog.scalar.ph846.prol, %vec.epilog.scalar.ph846.preheader
  %.lcssa985.unr = phi ptr [ poison, %vec.epilog.scalar.ph846.preheader ], [ %i.cxr, %vec.epilog.scalar.ph846.prol ]
  %indvars.iv2394.i.unr = phi i64 [ %indvars.iv2394.i.ph, %vec.epilog.scalar.ph846.preheader ], [ %indvars.iv.next2395.i.prol, %vec.epilog.scalar.ph846.prol ]
  %.101988.i.unr = phi ptr [ %.101988.i.ph, %vec.epilog.scalar.ph846.preheader ], [ %i.cxr, %vec.epilog.scalar.ph846.prol ]
  %i.cxs = sub nsw i64 %indvars.iv2394.i.ph, %wide.trip.count2372.i
  %i.cxt = icmp ugt i64 %i.cxs, -8
  br i1 %i.cxt, label %._crit_edge1990.i, label %vec.epilog.scalar.ph846

._crit_edge1990.i:                                ; preds = %vec.epilog.scalar.ph846.prol.loopexit, %vec.epilog.scalar.ph846, %vec.epilog.middle.block856, %middle.block842
  %.lcssa677 = phi ptr [ %i.cxl, %vec.epilog.middle.block856 ], [ %i.cxb, %middle.block842 ], [ %.lcssa985.unr, %vec.epilog.scalar.ph846.prol.loopexit ], [ %i.cyz, %vec.epilog.scalar.ph846 ]
  %i.cxu = add nuw nsw i32 %.411381993.i, 1       ; 2 uses
  %exitcond2399.not.i = icmp eq i32 %i.cxu, %i.cj
  br i1 %exitcond2399.not.i, label %._crit_edge1994.split.i, label %iter.check845, !llvm.loop !219

vec.epilog.scalar.ph846:                          ; preds = %vec.epilog.scalar.ph846.prol.loopexit, %vec.epilog.scalar.ph846
  %indvars.iv2394.i = phi i64 [ %indvars.iv.next2395.i.7, %vec.epilog.scalar.ph846 ], [ %indvars.iv2394.i.unr, %vec.epilog.scalar.ph846.prol.loopexit ] ; 9 uses
  %.101988.i = phi ptr [ %i.cyz, %vec.epilog.scalar.ph846 ], [ %.101988.i.unr, %vec.epilog.scalar.ph846.prol.loopexit ] ; 9 uses
  %i.cxv = getelementptr inbounds nuw [4 x i8], ptr %.31147.lcssa.i, i64 %indvars.iv2394.i
  %i.cxw = load float, ptr %i.cxv, align 4, !tbaa !39
  store float %i.cxw, ptr %.101988.i, align 4, !tbaa !39
  %i.cxx = getelementptr inbounds nuw i8, ptr %.101988.i, i64 4
  %i.cxy = getelementptr inbounds nuw [4 x i8], ptr %.31147.lcssa.i, i64 %indvars.iv2394.i
  %i.cxz = getelementptr inbounds nuw i8, ptr %i.cxy, i64 4
  %i.cya = load float, ptr %i.cxz, align 4, !tbaa !39
  store float %i.cya, ptr %i.cxx, align 4, !tbaa !39
  %i.cyb = getelementptr inbounds nuw i8, ptr %.101988.i, i64 8
  %i.cyc = getelementptr inbounds nuw [4 x i8], ptr %.31147.lcssa.i, i64 %indvars.iv2394.i
  %i.cyd = getelementptr inbounds nuw i8, ptr %i.cyc, i64 8
  %i.cye = load float, ptr %i.cyd, align 4, !tbaa !39
  store float %i.cye, ptr %i.cyb, align 4, !tbaa !39
  %i.cyf = getelementptr inbounds nuw i8, ptr %.101988.i, i64 12
  %i.cyg = getelementptr inbounds nuw [4 x i8], ptr %.31147.lcssa.i, i64 %indvars.iv2394.i
  %i.cyh = getelementptr inbounds nuw i8, ptr %i.cyg, i64 12
  %i.cyi = load float, ptr %i.cyh, align 4, !tbaa !39
  store float %i.cyi, ptr %i.cyf, align 4, !tbaa !39
  %i.cyj = getelementptr inbounds nuw i8, ptr %.101988.i, i64 16
  %i.cyk = getelementptr inbounds nuw [4 x i8], ptr %.31147.lcssa.i, i64 %indvars.iv2394.i
  %i.cyl = getelementptr inbounds nuw i8, ptr %i.cyk, i64 16
  %i.cym = load float, ptr %i.cyl, align 4, !tbaa !39
  store float %i.cym, ptr %i.cyj, align 4, !tbaa !39
  %i.cyn = getelementptr inbounds nuw i8, ptr %.101988.i, i64 20
  %i.cyo = getelementptr inbounds nuw [4 x i8], ptr %.31147.lcssa.i, i64 %indvars.iv2394.i
  %i.cyp = getelementptr inbounds nuw i8, ptr %i.cyo, i64 20
  %i.cyq = load float, ptr %i.cyp, align 4, !tbaa !39
  store float %i.cyq, ptr %i.cyn, align 4, !tbaa !39
  %i.cyr = getelementptr inbounds nuw i8, ptr %.101988.i, i64 24
  %i.cys = getelementptr inbounds nuw [4 x i8], ptr %.31147.lcssa.i, i64 %indvars.iv2394.i
  %i.cyt = getelementptr inbounds nuw i8, ptr %i.cys, i64 24
  %i.cyu = load float, ptr %i.cyt, align 4, !tbaa !39
  store float %i.cyu, ptr %i.cyr, align 4, !tbaa !39
  %i.cyv = getelementptr inbounds nuw i8, ptr %.101988.i, i64 28
  %i.cyw = getelementptr inbounds nuw [4 x i8], ptr %.31147.lcssa.i, i64 %indvars.iv2394.i
  %i.cyx = getelementptr inbounds nuw i8, ptr %i.cyw, i64 28
  %i.cyy = load float, ptr %i.cyx, align 4, !tbaa !39
  store float %i.cyy, ptr %i.cyv, align 4, !tbaa !39
  %i.cyz = getelementptr inbounds nuw i8, ptr %.101988.i, i64 32 ; 2 uses
  %indvars.iv.next2395.i.7 = add nuw nsw i64 %indvars.iv2394.i, 8 ; 2 uses
  %exitcond2398.not.i.7 = icmp eq i64 %indvars.iv.next2395.i.7, %wide.trip.count2372.i
  br i1 %exitcond2398.not.i.7, label %._crit_edge1990.i, label %vec.epilog.scalar.ph846, !llvm.loop !220

._crit_edge1994.split.i:                          ; preds = %._crit_edge1990.i, %.preheader1552.i, %.preheader1548.lr.ph.i, %.preheader1549.lr.ph.i
  %indvars.iv.next2401.i = add nsw i64 %indvars.iv2400.i, 1 ; 2 uses
  %indvars.iv.next2367.i = add i32 %indvars.iv2366.i, %i.cdd
  %exitcond2404.not.i = icmp eq i64 %indvars.iv.next2401.i, %wide.trip.count2403.i
  br i1 %exitcond2404.not.i, label %_ZN4ncnnL35convolution_transform_kernel_packedERKNS_3MatERS0_iiii.exit, label %_ZN4ncnn3MatD2Ev.exit.i227, !llvm.loop !221

_ZN4ncnnL35convolution_transform_kernel_packedERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge1994.split.i, %.preheader1556.i, %bb.jc
  %i.cza = load i8, ptr %1, align 8, !tbaa !69, !range !48, !noundef !49
  %i.czb = trunc nuw i8 %i.cza to i1
  br i1 %i.czb, label %bb.ls, label %bb.ly

bb.ls:                                            ; preds = %_ZN4ncnnL35convolution_transform_kernel_packedERKNS_3MatERS0_iiii.exit
  %i.czc = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.czd = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.cze = load ptr, ptr %i.czd, align 8, !tbaa !11 ; 2 uses
  %.not.i180 = icmp eq ptr %i.cze, null
  br i1 %.not.i180, label %_ZN4ncnn3Mat7releaseEv.exit182, label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  %i.czf = atomicrmw add ptr %i.cze, i32 -1 acq_rel, align 4
  %i.czg = icmp eq i32 %i.czf, 1
  br i1 %i.czg, label %bb.lu, label %_ZN4ncnn3Mat7releaseEv.exit182

bb.lu:                                            ; preds = %bb.lt
  %i.czh = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.czi = load ptr, ptr %i.czh, align 8, !tbaa !17 ; 3 uses
  %.not3.i181 = icmp eq ptr %i.czi, null
  %i.czj = load ptr, ptr %i.czc, align 8, !tbaa !18 ; 3 uses
  br i1 %.not3.i181, label %bb.lw, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  %i.czk = load ptr, ptr %i.czi, align 8, !tbaa !9
  %i.czl = getelementptr inbounds nuw i8, ptr %i.czk, i64 24
  %i.czm = load ptr, ptr %i.czl, align 8
  call void %i.czm(ptr noundef nonnull align 8 dereferenceable(8) %i.czi, ptr noundef %i.czj), !inline_history !19
  br label %_ZN4ncnn3Mat7releaseEv.exit182

bb.lw:                                            ; preds = %bb.lu
  %.not.i198 = icmp eq ptr %i.czj, null
  br i1 %.not.i198, label %_ZN4ncnn3Mat7releaseEv.exit182, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  call void @free(ptr noundef nonnull %i.czj) #12
  br label %_ZN4ncnn3Mat7releaseEv.exit182

_ZN4ncnn3Mat7releaseEv.exit182:                   ; preds = %bb.lx, %bb.lw, %bb.ls, %bb.lt, %bb.lv
  %i.czn = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.czo = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i64 0, ptr %i.czo, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.czc, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.czn, i8 0, i64 20, i1 false)
  br label %bb.ly

bb.ly:                                            ; preds = %bb.dx, %_ZN4ncnn3Mat7releaseEv.exit185, %_ZN4ncnnL40convolution_im2col_gemm_transform_kernelERKNS_3MatERS0_iiiiRKNS_6OptionE.exit, %_ZN4ncnn3Mat7releaseEv.exit182, %_ZN4ncnnL35convolution_transform_kernel_packedERKNS_3MatERS0_iiii.exit, %bb.fo, %_ZN4ncnn3Mat7releaseEv.exit188, %bb.a, %bb.ad, %bb.ab
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn22Convolution_x86_avx51216destroy_pipelineERKNS_6OptionE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1168) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(208) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 0 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !41   ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(208) %i.g) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !41
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !61   ; 3 uses
  %.not6 = icmp eq ptr %i.m, null
  br i1 %.not6, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef i32 %i.p(ptr noundef nonnull align 8 dereferenceable(208) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 0 uses
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !61   ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(208) %i.r) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store ptr null, ptr %i.l, align 8, !tbaa !61
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn22Convolution_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(1168) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.ncnn::Mat", align 16        ; 20 uses
  %5 = alloca %"class.ncnn::Mat", align 8         ; 15 uses
  %6 = alloca %"class.ncnn::Mat", align 16        ; 20 uses
  %7 = alloca %"class.ncnn::Mat", align 8         ; 15 uses
  %8 = alloca %"class.ncnn::ParamDict", align 8   ; 24 uses
  %9 = alloca [2 x %"class.ncnn::Mat"], align 16  ; 41 uses
  %10 = alloca %"class.ncnn::ModelBinFromMatArray", align 8 ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !222    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %2, align 8, !tbaa !222
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %i.e = load i32, ptr %i.d, align 4, !tbaa !75
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.g = load i32, ptr %i.f, align 8, !tbaa !76
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.i = load i32, ptr %i.h, align 8, !tbaa !68
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.k = load i32, ptr %i.j, align 8, !tbaa !66
  %i.l = mul nsw i32 %i.k, %i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 4 uses
  store i64 0, ptr %i.t, align 16, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.p, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn7flattenERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %4, align 16, !tbaa !18
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZNK4ncnn3Mat5emptyEv.exit161.thread, label %_ZNK4ncnn3Mat5emptyEv.exit161

_ZNK4ncnn3Mat5emptyEv.exit161:                    ; preds = %bb.b
  %i.w = load i64, ptr %i.t, align 16, !tbaa !20
  %i.x = load i32, ptr %i.s, align 8, !tbaa !68
  %i.y = sext i32 %i.x to i64
  %i.z = mul i64 %i.w, %i.y
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZNK4ncnn3Mat5emptyEv.exit161.thread, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.ep

bb.d:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit161
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !51, !range !48, !noundef !49
  %i.ae = trunc nuw i8 %i.ad to i1
  %.pre162 = load i32, ptr %i.o, align 8, !tbaa !66 ; 4 uses
  br i1 %i.ae, label %bb.e, label %_ZNK4ncnn3Mat8elembitsEv.exit158.thread

bb.e:                                             ; preds = %bb.d
  %.not.i156 = icmp eq i32 %.pre162, 0
  br i1 %.not.i156, label %_ZNK4ncnn3Mat8elembitsEv.exit158.thread, label %_ZNK4ncnn3Mat8elembitsEv.exit158

_ZNK4ncnn3Mat8elembitsEv.exit158:                 ; preds = %bb.e
  %i.af = load i64, ptr %i.n, align 16, !tbaa !65
  %.tr.i157 = trunc i64 %i.af to i32
  %i.ag = shl i32 %.tr.i157, 3
  %i.ah = sdiv i32 %i.ag, %.pre162
  %i.ai = icmp eq i32 %i.ah, 16
  br i1 %i.ai, label %bb.f, label %_ZNK4ncnn3Mat8elembitsEv.exit158.thread

bb.f:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit158
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  store i64 0, ptr %i.ap, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %5, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.am, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn24cast_bfloat16_to_float32ERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(64) %3)
end_hunk_0
begin_hunk_1_@_ZN4ncnn22Convolution_x86_avx51224create_pipeline_int8_x86ERKNS_6OptionE:bb.a
  %i.ckd = getelementptr inbounds nuw i8, ptr %.211051902.us.i, i64 %indvars.iv2316.i ; 2 uses
  %i.cke = load i8, ptr %i.ckd, align 1, !tbaa !100
  store i8 %i.cke, ptr %.51897.us.i, align 1, !tbaa !100
  %i.ckf = getelementptr inbounds nuw i8, ptr %i.ckd, i64 %i.bxn
  %i.ckg = load i8, ptr %i.ckf, align 1, !tbaa !100
  %i.ckh = getelementptr inbounds nuw i8, ptr %.51897.us.i, i64 1
  store i8 %i.ckg, ptr %i.ckh, align 1, !tbaa !100
  %i.cki = getelementptr inbounds nuw i8, ptr %.51897.us.i, i64 2
  %i.ckj = getelementptr inbounds nuw i8, ptr %.211051902.us.i, i64 %indvars.iv2316.i
  %i.ckk = getelementptr inbounds nuw i8, ptr %i.ckj, i64 1 ; 2 uses
  %i.ckl = load i8, ptr %i.ckk, align 1, !tbaa !100
  store i8 %i.ckl, ptr %i.cki, align 1, !tbaa !100
  %i.ckm = getelementptr inbounds nuw i8, ptr %i.ckk, i64 %i.bxn
  %i.ckn = load i8, ptr %i.ckm, align 1, !tbaa !100
  %i.cko = getelementptr inbounds nuw i8, ptr %.51897.us.i, i64 3
  store i8 %i.ckn, ptr %i.cko, align 1, !tbaa !100
  %i.ckp = getelementptr inbounds nuw i8, ptr %.51897.us.i, i64 4
  %i.ckq = getelementptr inbounds nuw i8, ptr %.211051902.us.i, i64 %indvars.iv2316.i
  %i.ckr = getelementptr inbounds nuw i8, ptr %i.ckq, i64 2 ; 2 uses
  %i.cks = load i8, ptr %i.ckr, align 1, !tbaa !100
  store i8 %i.cks, ptr %i.ckp, align 1, !tbaa !100
  %i.ckt = getelementptr inbounds nuw i8, ptr %i.ckr, i64 %i.bxn
  %i.cku = load i8, ptr %i.ckt, align 1, !tbaa !100
  %i.ckv = getelementptr inbounds nuw i8, ptr %.51897.us.i, i64 5
  store i8 %i.cku, ptr %i.ckv, align 1, !tbaa !100
  %i.ckw = getelementptr inbounds nuw i8, ptr %.51897.us.i, i64 6
  %i.ckx = getelementptr inbounds nuw i8, ptr %.211051902.us.i, i64 %indvars.iv2316.i
  %i.cky = getelementptr inbounds nuw i8, ptr %i.ckx, i64 3 ; 2 uses
  %i.ckz = load i8, ptr %i.cky, align 1, !tbaa !100
  store i8 %i.ckz, ptr %i.ckw, align 1, !tbaa !100
  %i.cla = getelementptr inbounds nuw i8, ptr %i.cky, i64 %i.bxn
  %i.clb = load i8, ptr %i.cla, align 1, !tbaa !100
  %i.clc = getelementptr inbounds nuw i8, ptr %.51897.us.i, i64 7
  store i8 %i.clb, ptr %i.clc, align 1, !tbaa !100
  %i.cld = getelementptr inbounds nuw i8, ptr %.51897.us.i, i64 8 ; 2 uses
  %indvars.iv.next2317.i.3 = add nuw nsw i64 %indvars.iv2316.i, 4 ; 2 uses
  %exitcond2320.not.i.3 = icmp eq i64 %indvars.iv.next2317.i.3, %wide.trip.count2306.i
  br i1 %exitcond2320.not.i.3, label %._crit_edge1900.us.i, label %vec.epilog.scalar.ph463, !llvm.loop !521

._crit_edge1900.us.i:                             ; preds = %vec.epilog.scalar.ph463.prol.loopexit, %vec.epilog.scalar.ph463, %vec.epilog.middle.block475, %middle.block459
  %.lcssa312 = phi ptr [ %i.cjq, %vec.epilog.middle.block475 ], [ %i.cjl, %middle.block459 ], [ %.lcssa489.unr, %vec.epilog.scalar.ph463.prol.loopexit ], [ %i.cld, %vec.epilog.scalar.ph463 ] ; 2 uses
  %i.cle = getelementptr inbounds nuw i8, ptr %.211051902.us.i, i64 %i.bxp ; 2 uses
  %i.clf = add nuw nsw i32 %.210961904.us.i, 2    ; 3 uses
  %i.clg = or disjoint i32 %i.clf, 1
  %i.clh = icmp slt i32 %i.clg, %i.p
  br i1 %i.clh, label %iter.check462, label %.preheader1487.i, !llvm.loop !522

.preheader1487.i:                                 ; preds = %._crit_edge1900.us.i, %.preheader1488.i
  %.21105.lcssa.i = phi ptr [ %.11104.lcssa.i, %.preheader1488.i ], [ %i.cle, %._crit_edge1900.us.i ] ; 12 uses
  %.41102.lcssa.i = phi ptr [ %.21100.lcssa.i, %.preheader1488.i ], [ %.lcssa312, %._crit_edge1900.us.i ]
  %.21096.lcssa.i = phi i32 [ %.11095.lcssa.i, %.preheader1488.i ], [ %i.clf, %._crit_edge1900.us.i ] ; 2 uses
  %i.cli = icmp sge i32 %.21096.lcssa.i, %i.p
  %brmerge1933.i = or i1 %i.bxq, %i.cli
  br i1 %brmerge1933.i, label %._crit_edge1918.split.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader1487.i
  %.21105.lcssa.i399 = ptrtoaddr ptr %.21105.lcssa.i to i64
  br label %iter.check417

iter.check417:                                    ; preds = %.preheader.i.preheader, %._crit_edge1914.i
  %.310971917.i = phi i32 [ %i.cmb, %._crit_edge1914.i ], [ %.21096.lcssa.i, %.preheader.i.preheader ]
  %.61916.i = phi ptr [ %.lcssa315, %._crit_edge1914.i ], [ %.41102.lcssa.i, %.preheader.i.preheader ] ; 6 uses
  %.61916.i400 = ptrtoaddr ptr %.61916.i to i64
  %i.clj = sub i64 %.21105.lcssa.i399, %.61916.i400
  %diff.check = icmp ugt i64 %i.clj, -256
  %or.cond479 = select i1 %min.iters.check401, i1 true, i1 %diff.check
  br i1 %or.cond479, label %vec.epilog.scalar.ph418.preheader, label %vector.main.loop.iter.check402

vector.main.loop.iter.check402:                   ; preds = %iter.check417
  br i1 %min.iters.check403, label %vec.epilog.ph421, label %vector.ph404

vector.ph404:                                     ; preds = %vector.main.loop.iter.check402
  %i.clk = getelementptr i8, ptr %.61916.i, i64 %n.vec405 ; 2 uses
  br label %vector.body406

vector.body406:                                   ; preds = %vector.body406, %vector.ph404
  %index407 = phi i64 [ 0, %vector.ph404 ], [ %index.next413, %vector.body406 ] ; 3 uses
  %next.gep408 = getelementptr i8, ptr %.61916.i, i64 %index407 ; 4 uses
  %i.cll = getelementptr inbounds nuw i8, ptr %.21105.lcssa.i, i64 %index407 ; 4 uses
  %i.clm = getelementptr inbounds nuw i8, ptr %i.cll, i64 64
  %i.cln = getelementptr inbounds nuw i8, ptr %i.cll, i64 128
  %i.clo = getelementptr inbounds nuw i8, ptr %i.cll, i64 192
  %wide.load409 = load <64 x i8>, ptr %i.cll, align 1, !tbaa !100
  %wide.load410 = load <64 x i8>, ptr %i.clm, align 1, !tbaa !100
  %wide.load411 = load <64 x i8>, ptr %i.cln, align 1, !tbaa !100
  %wide.load412 = load <64 x i8>, ptr %i.clo, align 1, !tbaa !100
  %i.clp = getelementptr i8, ptr %next.gep408, i64 64
  %i.clq = getelementptr i8, ptr %next.gep408, i64 128
  %i.clr = getelementptr i8, ptr %next.gep408, i64 192
  store <64 x i8> %wide.load409, ptr %next.gep408, align 1, !tbaa !100
  store <64 x i8> %wide.load410, ptr %i.clp, align 1, !tbaa !100
  store <64 x i8> %wide.load411, ptr %i.clq, align 1, !tbaa !100
  store <64 x i8> %wide.load412, ptr %i.clr, align 1, !tbaa !100
  %index.next413 = add nuw i64 %index407, 256     ; 2 uses
  %i.cls = icmp eq i64 %index.next413, %n.vec405
  br i1 %i.cls, label %middle.block414, label %vector.body406, !llvm.loop !523

middle.block414:                                  ; preds = %vector.body406
  br i1 %cmp.n415, label %._crit_edge1914.i, label %vec.epilog.iter.check419

vec.epilog.iter.check419:                         ; preds = %middle.block414
  br i1 %min.epilog.iters.check420, label %vec.epilog.scalar.ph418.preheader, label %vec.epilog.ph421, !prof !524

vec.epilog.ph421:                                 ; preds = %vector.main.loop.iter.check402, %vec.epilog.iter.check419
  %vec.epilog.resume.val416 = phi i64 [ %n.vec405, %vec.epilog.iter.check419 ], [ 0, %vector.main.loop.iter.check402 ]
  %i.clt = getelementptr i8, ptr %.61916.i, i64 %n.vec422 ; 2 uses
  br label %vec.epilog.vector.body423

vec.epilog.vector.body423:                        ; preds = %vec.epilog.vector.body423, %vec.epilog.ph421
  %index424 = phi i64 [ %vec.epilog.resume.val416, %vec.epilog.ph421 ], [ %index.next427, %vec.epilog.vector.body423 ] ; 3 uses
  %next.gep425 = getelementptr i8, ptr %.61916.i, i64 %index424
  %i.clu = getelementptr inbounds nuw i8, ptr %.21105.lcssa.i, i64 %index424
  %wide.load426 = load <16 x i8>, ptr %i.clu, align 1, !tbaa !100
  store <16 x i8> %wide.load426, ptr %next.gep425, align 1, !tbaa !100
  %index.next427 = add nuw i64 %index424, 16      ; 2 uses
  %i.clv = icmp eq i64 %index.next427, %n.vec422
  br i1 %i.clv, label %vec.epilog.middle.block428, label %vec.epilog.vector.body423, !llvm.loop !525

vec.epilog.middle.block428:                       ; preds = %vec.epilog.vector.body423
  br i1 %cmp.n429, label %._crit_edge1914.i, label %vec.epilog.scalar.ph418.preheader

vec.epilog.scalar.ph418.preheader:                ; preds = %iter.check417, %vec.epilog.iter.check419, %vec.epilog.middle.block428
  %indvars.iv2321.i.ph = phi i64 [ 0, %iter.check417 ], [ %n.vec405, %vec.epilog.iter.check419 ], [ %n.vec422, %vec.epilog.middle.block428 ] ; 3 uses
  %.71911.i.ph = phi ptr [ %.61916.i, %iter.check417 ], [ %i.clk, %vec.epilog.iter.check419 ], [ %i.clt, %vec.epilog.middle.block428 ] ; 2 uses
  br i1 %lcmp.mod645.not, label %vec.epilog.scalar.ph418.prol.loopexit, label %vec.epilog.scalar.ph418.prol

vec.epilog.scalar.ph418.prol:                     ; preds = %vec.epilog.scalar.ph418.preheader, %vec.epilog.scalar.ph418.prol
  %indvars.iv2321.i.prol = phi i64 [ %indvars.iv.next2322.i.prol, %vec.epilog.scalar.ph418.prol ], [ %indvars.iv2321.i.ph, %vec.epilog.scalar.ph418.preheader ] ; 2 uses
  %.71911.i.prol = phi ptr [ %i.cly, %vec.epilog.scalar.ph418.prol ], [ %.71911.i.ph, %vec.epilog.scalar.ph418.preheader ] ; 2 uses
  %prol.iter646 = phi i64 [ %prol.iter646.next, %vec.epilog.scalar.ph418.prol ], [ 0, %vec.epilog.scalar.ph418.preheader ]
  %i.clw = getelementptr inbounds nuw i8, ptr %.21105.lcssa.i, i64 %indvars.iv2321.i.prol
  %i.clx = load i8, ptr %i.clw, align 1, !tbaa !100
  store i8 %i.clx, ptr %.71911.i.prol, align 1, !tbaa !100
  %i.cly = getelementptr inbounds nuw i8, ptr %.71911.i.prol, i64 1 ; 3 uses
  %indvars.iv.next2322.i.prol = add nuw nsw i64 %indvars.iv2321.i.prol, 1 ; 2 uses
  %prol.iter646.next = add i64 %prol.iter646, 1   ; 2 uses
  %prol.iter646.cmp.not = icmp eq i64 %prol.iter646.next, %xtraiter644
  br i1 %prol.iter646.cmp.not, label %vec.epilog.scalar.ph418.prol.loopexit, label %vec.epilog.scalar.ph418.prol, !llvm.loop !526

vec.epilog.scalar.ph418.prol.loopexit:            ; preds = %vec.epilog.scalar.ph418.prol, %vec.epilog.scalar.ph418.preheader
  %.lcssa492.unr = phi ptr [ poison, %vec.epilog.scalar.ph418.preheader ], [ %i.cly, %vec.epilog.scalar.ph418.prol ]
  %indvars.iv2321.i.unr = phi i64 [ %indvars.iv2321.i.ph, %vec.epilog.scalar.ph418.preheader ], [ %indvars.iv.next2322.i.prol, %vec.epilog.scalar.ph418.prol ]
  %.71911.i.unr = phi ptr [ %.71911.i.ph, %vec.epilog.scalar.ph418.preheader ], [ %i.cly, %vec.epilog.scalar.ph418.prol ]
  %i.clz = sub nsw i64 %indvars.iv2321.i.ph, %wide.trip.count2306.i
  %i.cma = icmp ugt i64 %i.clz, -8
  br i1 %i.cma, label %._crit_edge1914.i, label %vec.epilog.scalar.ph418

._crit_edge1914.i:                                ; preds = %vec.epilog.scalar.ph418.prol.loopexit, %vec.epilog.scalar.ph418, %vec.epilog.middle.block428, %middle.block414
  %.lcssa315 = phi ptr [ %i.clt, %vec.epilog.middle.block428 ], [ %i.clk, %middle.block414 ], [ %.lcssa492.unr, %vec.epilog.scalar.ph418.prol.loopexit ], [ %i.cng, %vec.epilog.scalar.ph418 ]
  %i.cmb = add nuw nsw i32 %.310971917.i, 1       ; 2 uses
  %exitcond2326.not.i = icmp eq i32 %i.cmb, %i.p
  br i1 %exitcond2326.not.i, label %._crit_edge1918.split.i, label %iter.check417, !llvm.loop !527

vec.epilog.scalar.ph418:                          ; preds = %vec.epilog.scalar.ph418.prol.loopexit, %vec.epilog.scalar.ph418
  %indvars.iv2321.i = phi i64 [ %indvars.iv.next2322.i.7, %vec.epilog.scalar.ph418 ], [ %indvars.iv2321.i.unr, %vec.epilog.scalar.ph418.prol.loopexit ] ; 9 uses
  %.71911.i = phi ptr [ %i.cng, %vec.epilog.scalar.ph418 ], [ %.71911.i.unr, %vec.epilog.scalar.ph418.prol.loopexit ] ; 9 uses
  %i.cmc = getelementptr inbounds nuw i8, ptr %.21105.lcssa.i, i64 %indvars.iv2321.i
  %i.cmd = load i8, ptr %i.cmc, align 1, !tbaa !100
  store i8 %i.cmd, ptr %.71911.i, align 1, !tbaa !100
  %i.cme = getelementptr inbounds nuw i8, ptr %.71911.i, i64 1
  %i.cmf = getelementptr inbounds nuw i8, ptr %.21105.lcssa.i, i64 %indvars.iv2321.i
  %i.cmg = getelementptr inbounds nuw i8, ptr %i.cmf, i64 1
  %i.cmh = load i8, ptr %i.cmg, align 1, !tbaa !100
  store i8 %i.cmh, ptr %i.cme, align 1, !tbaa !100
  %i.cmi = getelementptr inbounds nuw i8, ptr %.71911.i, i64 2
  %i.cmj = getelementptr inbounds nuw i8, ptr %.21105.lcssa.i, i64 %indvars.iv2321.i
  %i.cmk = getelementptr inbounds nuw i8, ptr %i.cmj, i64 2
  %i.cml = load i8, ptr %i.cmk, align 1, !tbaa !100
  store i8 %i.cml, ptr %i.cmi, align 1, !tbaa !100
  %i.cmm = getelementptr inbounds nuw i8, ptr %.71911.i, i64 3
  %i.cmn = getelementptr inbounds nuw i8, ptr %.21105.lcssa.i, i64 %indvars.iv2321.i
  %i.cmo = getelementptr inbounds nuw i8, ptr %i.cmn, i64 3
  %i.cmp = load i8, ptr %i.cmo, align 1, !tbaa !100
  store i8 %i.cmp, ptr %i.cmm, align 1, !tbaa !100
  %i.cmq = getelementptr inbounds nuw i8, ptr %.71911.i, i64 4
  %i.cmr = getelementptr inbounds nuw i8, ptr %.21105.lcssa.i, i64 %indvars.iv2321.i
  %i.cms = getelementptr inbounds nuw i8, ptr %i.cmr, i64 4
  %i.cmt = load i8, ptr %i.cms, align 1, !tbaa !100
  store i8 %i.cmt, ptr %i.cmq, align 1, !tbaa !100
  %i.cmu = getelementptr inbounds nuw i8, ptr %.71911.i, i64 5
  %i.cmv = getelementptr inbounds nuw i8, ptr %.21105.lcssa.i, i64 %indvars.iv2321.i
  %i.cmw = getelementptr inbounds nuw i8, ptr %i.cmv, i64 5
  %i.cmx = load i8, ptr %i.cmw, align 1, !tbaa !100
  store i8 %i.cmx, ptr %i.cmu, align 1, !tbaa !100
  %i.cmy = getelementptr inbounds nuw i8, ptr %.71911.i, i64 6
  %i.cmz = getelementptr inbounds nuw i8, ptr %.21105.lcssa.i, i64 %indvars.iv2321.i
  %i.cna = getelementptr inbounds nuw i8, ptr %i.cmz, i64 6
  %i.cnb = load i8, ptr %i.cna, align 1, !tbaa !100
  store i8 %i.cnb, ptr %i.cmy, align 1, !tbaa !100
  %i.cnc = getelementptr inbounds nuw i8, ptr %.71911.i, i64 7
  %i.cnd = getelementptr inbounds nuw i8, ptr %.21105.lcssa.i, i64 %indvars.iv2321.i
  %i.cne = getelementptr inbounds nuw i8, ptr %i.cnd, i64 7
  %i.cnf = load i8, ptr %i.cne, align 1, !tbaa !100
  store i8 %i.cnf, ptr %i.cnc, align 1, !tbaa !100
  %i.cng = getelementptr inbounds nuw i8, ptr %.71911.i, i64 8 ; 2 uses
  %indvars.iv.next2322.i.7 = add nuw nsw i64 %indvars.iv2321.i, 8 ; 2 uses
  %exitcond2325.not.i.7 = icmp eq i64 %indvars.iv.next2322.i.7, %wide.trip.count2306.i
  br i1 %exitcond2325.not.i.7, label %._crit_edge1914.i, label %vec.epilog.scalar.ph418, !llvm.loop !528

._crit_edge1918.split.i:                          ; preds = %._crit_edge1914.i, %.preheader1487.i, %.preheader1486.lr.ph.i
  %indvars.iv.next2328.i = add nsw i64 %indvars.iv2327.i, 1 ; 2 uses
  %indvars.iv.next2301.i = add i32 %indvars.iv2300.i, %i.bwy
  %exitcond2331.not.i = icmp eq i64 %indvars.iv.next2328.i, %wide.trip.count2330.i
  br i1 %exitcond2331.not.i, label %_ZN4ncnnL40convolution_transform_kernel_packed_int8ERKNS_3MatERS0_iiii.exit, label %_ZN4ncnn3MatD2Ev.exit.i29, !llvm.loop !529

_ZN4ncnnL40convolution_transform_kernel_packed_int8ERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge1918.split.i, %.preheader1490.i, %_ZN4ncnnL45convolution_im2col_gemm_transform_kernel_int8ERKNS_3MatERS0_iiiiRKNS_6OptionE.exit, %bb.h, %bb.i
  %i.cnh = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 2 uses
  %i.cni = load i32, ptr %i.n, align 8, !tbaa !55
  call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.cnh, i32 noundef %i.cni, i64 noundef 4, ptr noundef null)
  %i.cnj = load i32, ptr %i.n, align 8, !tbaa !55 ; 4 uses
  %i.cnk = icmp sgt i32 %i.cnj, 0
  br i1 %i.cnk, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN4ncnnL40convolution_transform_kernel_packed_int8ERKNS_3MatERS0_iiii.exit
  %i.cnl = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.cnm = load ptr, ptr %i.cnl, align 8, !tbaa !18 ; 3 uses
  %i.cnn = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  %i.cno = load ptr, ptr %i.cnh, align 8, !tbaa !18 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.cnj to i64  ; 2 uses
  %xtraiter655 = and i64 %wide.trip.count, 1
  %i.cnp = icmp eq i32 %i.cnj, 1
  br i1 %i.cnp, label %.epil.preheader654, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter659 = and i64 %wide.trip.count, 2147483646
  br label %bb.eg

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.ek
  %lcmp.mod657.not = icmp eq i64 %xtraiter655, 0
  br i1 %lcmp.mod657.not, label %._crit_edge, label %.epil.preheader654

.epil.preheader654:                               ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod658 = trunc i32 %i.cnj to i1
  call void @llvm.assume(i1 %lcmp.mod658)
  %i.cnq = getelementptr inbounds nuw [4 x i8], ptr %i.cnm, i64 %indvars.iv.epil.init
  %i.cnr = load float, ptr %i.cnq, align 4, !tbaa !39 ; 2 uses
  %i.cns = fcmp fast oeq float %i.cnr, 0.000000e+00
  br i1 %i.cns, label %._crit_edge.loopexit.epilog-lcssa, label %bb.ef

bb.ef:                                            ; preds = %.epil.preheader654
  %i.cnt = load ptr, ptr %i.cnn, align 8, !tbaa !18
  %i.cnu = load float, ptr %i.cnt, align 4, !tbaa !39
  %i.cnv = fmul fast float %i.cnu, %i.cnr
  %i.cnw = fdiv fast float 1.000000e+00, %i.cnv
  br label %._crit_edge.loopexit.epilog-lcssa

._crit_edge.loopexit.epilog-lcssa:                ; preds = %bb.ef, %.epil.preheader654
  %.0.epil = phi nsz float [ %i.cnw, %bb.ef ], [ 0.000000e+00, %.epil.preheader654 ]
  %i.cnx = getelementptr inbounds nuw [4 x i8], ptr %i.cno, i64 %indvars.iv.epil.init
  store float %.0.epil, ptr %i.cnx, align 4, !tbaa !39
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.epilog-lcssa, %._crit_edge.loopexit.unr-lcssa, %_ZN4ncnnL40convolution_transform_kernel_packed_int8ERKNS_3MatERS0_iiii.exit
  %i.cny = load i8, ptr %1, align 8, !tbaa !69, !range !48, !noundef !49
  %i.cnz = trunc nuw i8 %i.cny to i1
  br i1 %i.cnz, label %bb.el, label %bb.er

bb.eg:                                            ; preds = %bb.ek, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.ek ] ; 4 uses
  %niter660 = phi i64 [ 0, %.lr.ph.new ], [ %niter660.next.1, %bb.ek ]
  %i.coa = getelementptr inbounds nuw [4 x i8], ptr %i.cnm, i64 %indvars.iv
  %i.cob = load float, ptr %i.coa, align 4, !tbaa !39 ; 2 uses
  %i.coc = fcmp fast oeq float %i.cob, 0.000000e+00
  br i1 %i.coc, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.cod = load ptr, ptr %i.cnn, align 8, !tbaa !18
  %i.coe = load float, ptr %i.cod, align 4, !tbaa !39
  %i.cof = fmul fast float %i.coe, %i.cob
  %i.cog = fdiv fast float 1.000000e+00, %i.cof
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eg, %bb.eh
  %.0 = phi nsz float [ %i.cog, %bb.eh ], [ 0.000000e+00, %bb.eg ]
  %i.coh = getelementptr inbounds nuw [4 x i8], ptr %i.cno, i64 %indvars.iv
  store float %.0, ptr %i.coh, align 4, !tbaa !39
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.coi = getelementptr inbounds nuw [4 x i8], ptr %i.cnm, i64 %indvars.iv.next
  %i.coj = load float, ptr %i.coi, align 4, !tbaa !39 ; 2 uses
  %i.cok = fcmp fast oeq float %i.coj, 0.000000e+00
  br i1 %i.cok, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.col = load ptr, ptr %i.cnn, align 8, !tbaa !18
  %i.com = load float, ptr %i.col, align 4, !tbaa !39
  %i.con = fmul fast float %i.com, %i.coj
  %i.coo = fdiv fast float 1.000000e+00, %i.con
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %.0.1 = phi nsz float [ %i.coo, %bb.ej ], [ 0.000000e+00, %bb.ei ]
  %i.cop = getelementptr inbounds nuw [4 x i8], ptr %i.cno, i64 %indvars.iv.next
  store float %.0.1, ptr %i.cop, align 4, !tbaa !39
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter660.next.1 = add i64 %niter660, 2         ; 2 uses
  %niter660.ncmp.1 = icmp eq i64 %niter660.next.1, %unroll_iter659
  br i1 %niter660.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.eg, !llvm.loop !530

bb.el:                                            ; preds = %._crit_edge
  %i.coq = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.cor = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.cos = load ptr, ptr %i.cor, align 8, !tbaa !11 ; 2 uses
  %.not.i = icmp eq ptr %i.cos, null
  br i1 %.not.i, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.cot = atomicrmw add ptr %i.cos, i32 -1 acq_rel, align 4
  %i.cou = icmp eq i32 %i.cot, 1
  br i1 %i.cou, label %bb.en, label %_ZN4ncnn3Mat7releaseEv.exit

bb.en:                                            ; preds = %bb.em
  %i.cov = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.cow = load ptr, ptr %i.cov, align 8, !tbaa !17 ; 3 uses
  %.not3.i = icmp eq ptr %i.cow, null
  %i.cox = load ptr, ptr %i.coq, align 8, !tbaa !18 ; 3 uses
  br i1 %.not3.i, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.coy = load ptr, ptr %i.cow, align 8, !tbaa !9
  %i.coz = getelementptr inbounds nuw i8, ptr %i.coy, i64 24
  %i.cpa = load ptr, ptr %i.coz, align 8
  call void %i.cpa(ptr noundef nonnull align 8 dereferenceable(8) %i.cow, ptr noundef %i.cox), !inline_history !19
  br label %_ZN4ncnn3Mat7releaseEv.exit

bb.ep:                                            ; preds = %bb.en
  %.not.i27 = icmp eq ptr %i.cox, null
  br i1 %.not.i27, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  call void @free(ptr noundef nonnull %i.cox) #12
  br label %_ZN4ncnn3Mat7releaseEv.exit

_ZN4ncnn3Mat7releaseEv.exit:                      ; preds = %bb.eq, %bb.ep, %bb.el, %bb.em, %bb.eo
  %i.cpb = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.cpc = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i64 0, ptr %i.cpc, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.coq, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.cpb, i8 0, i64 20, i1 false)
  br label %bb.er

bb.er:                                            ; preds = %_ZN4ncnn3Mat7releaseEv.exit, %._crit_edge
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn22Convolution_x86_avx51221create_pipeline_bf16sERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(1168) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"class.ncnn::Mat", align 16        ; 19 uses
  %3 = alloca %"class.ncnn::Mat", align 16        ; 15 uses
  %4 = alloca %"class.ncnn::Mat", align 8         ; 14 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !52   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !53   ; 2 uses
  %i.j = mul nsw i32 %i.i, %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.l = load i32, ptr %i.k, align 4, !tbaa !54
  %i.m = sdiv i32 %i.l, %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !55   ; 11 uses
  %i.p = sdiv i32 %i.m, %i.o                      ; 147 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 55
  %i.r = load i8, ptr %i.q, align 1, !tbaa !70, !range !48, !noundef !49
  %i.s = trunc nuw i8 %i.r to i1                  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.u = load i8, ptr %i.t, align 8, !range !48
  %i.v = trunc nuw i8 %i.u to i1                  ; 3 uses
  %or.cond79 = select i1 %i.s, i1 true, i1 %i.v
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.x = load i8, ptr %i.w, align 1, !range !48
  %i.y = trunc nuw i8 %i.x to i1                  ; 4 uses
  %or.cond82 = select i1 %or.cond79, i1 true, i1 %i.y
  br i1 %or.cond82, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.z = icmp sgt i32 %i.p, 8
  %i.aa = icmp sgt i32 %i.o, 8
  %spec.select = or i1 %i.aa, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !73, !range !48, !noundef !49
  %i.ad = trunc nuw i8 %i.ac to i1
  %or.cond = select i1 %i.ad, i1 %spec.select, i1 false
  %i.ae = icmp eq i32 %i.g, 3
  %or.cond117 = and i1 %i.ae, %or.cond
  %i.af = icmp eq i32 %i.i, 3
  %or.cond118 = and i1 %i.af, %or.cond117
  br i1 %or.cond118, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !57
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
end_hunk_1
begin_hunk_2_@_ZN4ncnn22Convolution_x86_avx51221create_pipeline_bf16sERKNS_6OptionE:bb.a
  br i1 %min.iters.check590, label %vec.epilog.scalar.ph610.preheader, label %vector.main.loop.iter.check591

vector.main.loop.iter.check591:                   ; preds = %iter.check609
  br i1 %min.iters.check592, label %vec.epilog.ph613, label %vector.ph593

vector.ph593:                                     ; preds = %vector.main.loop.iter.check591
  %i.cvi = getelementptr i8, ptr %.61986.us.i, i64 %i.cef ; 2 uses
  br label %vector.body595

vector.body595:                                   ; preds = %vector.body595, %vector.ph593
  %index596 = phi i64 [ 0, %vector.ph593 ], [ %index.next605, %vector.body595 ] ; 3 uses
  %i.cvj = shl i64 %index596, 2                   ; 2 uses
  %next.gep597 = getelementptr i8, ptr %.61986.us.i, i64 %i.cvj
  %i.cvk = getelementptr i8, ptr %.61986.us.i, i64 %i.cvj
  %next.gep598 = getelementptr i8, ptr %i.cvk, i64 64
  %i.cvl = getelementptr inbounds nuw [4 x i8], ptr %.311201985.us.i, i64 %index596 ; 3 uses
  %i.cvm = getelementptr inbounds nuw i8, ptr %i.cvl, i64 64
  %wide.load599 = load <16 x i32>, ptr %i.cvl, align 4, !tbaa !39
  %wide.load600 = load <16 x i32>, ptr %i.cvm, align 4, !tbaa !39
  %i.cvn = getelementptr inbounds nuw [4 x i8], ptr %i.cvl, i64 %i.cdk ; 2 uses
  %i.cvo = getelementptr inbounds nuw i8, ptr %i.cvn, i64 64
  %wide.load601 = load <16 x i32>, ptr %i.cvn, align 4, !tbaa !39
  %wide.load602 = load <16 x i32>, ptr %i.cvo, align 4, !tbaa !39
  %i.cvp = shufflevector <16 x i32> %wide.load599, <16 x i32> %wide.load601, <32 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.cvq = lshr <32 x i32> %i.cvp, splat (i32 16)
  %interleaved.vec603 = trunc nuw <32 x i32> %i.cvq to <32 x i16>
  store <32 x i16> %interleaved.vec603, ptr %next.gep597, align 2, !tbaa !595
  %i.cvr = shufflevector <16 x i32> %wide.load600, <16 x i32> %wide.load602, <32 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.cvs = lshr <32 x i32> %i.cvr, splat (i32 16)
  %interleaved.vec604 = trunc nuw <32 x i32> %i.cvs to <32 x i16>
  store <32 x i16> %interleaved.vec604, ptr %next.gep598, align 2, !tbaa !595
  %index.next605 = add nuw i64 %index596, 32      ; 2 uses
  %i.cvt = icmp eq i64 %index.next605, %n.vec594
  br i1 %i.cvt, label %middle.block606, label %vector.body595, !llvm.loop !617

middle.block606:                                  ; preds = %vector.body595
  br i1 %cmp.n607, label %._crit_edge1983.us.i, label %vec.epilog.iter.check611

vec.epilog.iter.check611:                         ; preds = %middle.block606
  br i1 %min.epilog.iters.check612, label %vec.epilog.scalar.ph610.preheader, label %vec.epilog.ph613, !prof !210

vec.epilog.ph613:                                 ; preds = %vector.main.loop.iter.check591, %vec.epilog.iter.check611
  %vec.epilog.resume.val608 = phi i64 [ %n.vec594, %vec.epilog.iter.check611 ], [ 0, %vector.main.loop.iter.check591 ]
  %i.cvu = getelementptr i8, ptr %.61986.us.i, i64 %i.ceg ; 2 uses
  br label %vec.epilog.vector.body615

vec.epilog.vector.body615:                        ; preds = %vec.epilog.vector.body615, %vec.epilog.ph613
  %index616 = phi i64 [ %vec.epilog.resume.val608, %vec.epilog.ph613 ], [ %index.next621, %vec.epilog.vector.body615 ] ; 3 uses
  %i.cvv = shl i64 %index616, 2
  %next.gep617 = getelementptr i8, ptr %.61986.us.i, i64 %i.cvv
  %i.cvw = getelementptr inbounds nuw [4 x i8], ptr %.311201985.us.i, i64 %index616 ; 2 uses
  %wide.load618 = load <8 x i32>, ptr %i.cvw, align 4, !tbaa !39
  %i.cvx = getelementptr inbounds nuw [4 x i8], ptr %i.cvw, i64 %i.cdk
  %wide.load619 = load <8 x i32>, ptr %i.cvx, align 4, !tbaa !39
  %i.cvy = shufflevector <8 x i32> %wide.load618, <8 x i32> %wide.load619, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.cvz = lshr <16 x i32> %i.cvy, splat (i32 16)
  %interleaved.vec620 = trunc nuw <16 x i32> %i.cvz to <16 x i16>
  store <16 x i16> %interleaved.vec620, ptr %next.gep617, align 2, !tbaa !595
  %index.next621 = add nuw i64 %index616, 8       ; 2 uses
  %i.cwa = icmp eq i64 %index.next621, %n.vec614
  br i1 %i.cwa, label %vec.epilog.middle.block622, label %vec.epilog.vector.body615, !llvm.loop !618

vec.epilog.middle.block622:                       ; preds = %vec.epilog.vector.body615
  br i1 %cmp.n623, label %._crit_edge1983.us.i, label %vec.epilog.scalar.ph610.preheader

vec.epilog.scalar.ph610.preheader:                ; preds = %iter.check609, %vec.epilog.iter.check611, %vec.epilog.middle.block622
  %indvars.iv2395.i.ph = phi i64 [ 0, %iter.check609 ], [ %n.vec594, %vec.epilog.iter.check611 ], [ %n.vec614, %vec.epilog.middle.block622 ]
  %.71981.us.i.ph = phi ptr [ %.61986.us.i, %iter.check609 ], [ %i.cvi, %vec.epilog.iter.check611 ], [ %i.cvu, %vec.epilog.middle.block622 ]
  br label %vec.epilog.scalar.ph610

vec.epilog.scalar.ph610:                          ; preds = %vec.epilog.scalar.ph610.preheader, %vec.epilog.scalar.ph610
  %indvars.iv2395.i = phi i64 [ %indvars.iv.next2396.i, %vec.epilog.scalar.ph610 ], [ %indvars.iv2395.i.ph, %vec.epilog.scalar.ph610.preheader ] ; 2 uses
  %.71981.us.i = phi ptr [ %i.cwk, %vec.epilog.scalar.ph610 ], [ %.71981.us.i.ph, %vec.epilog.scalar.ph610.preheader ] ; 3 uses
  %i.cwb = getelementptr inbounds nuw [4 x i8], ptr %.311201985.us.i, i64 %indvars.iv2395.i ; 2 uses
  %i.cwc = load i32, ptr %i.cwb, align 4, !tbaa !39
  %i.cwd = lshr i32 %i.cwc, 16
  %i.cwe = trunc nuw i32 %i.cwd to i16
  store i16 %i.cwe, ptr %.71981.us.i, align 2, !tbaa !595
  %i.cwf = getelementptr inbounds nuw [4 x i8], ptr %i.cwb, i64 %i.cdk
  %i.cwg = getelementptr inbounds nuw i8, ptr %.71981.us.i, i64 2
  %i.cwh = load i32, ptr %i.cwf, align 4, !tbaa !39
  %i.cwi = lshr i32 %i.cwh, 16
  %i.cwj = trunc nuw i32 %i.cwi to i16
  store i16 %i.cwj, ptr %i.cwg, align 2, !tbaa !595
  %i.cwk = getelementptr inbounds nuw i8, ptr %.71981.us.i, i64 4 ; 2 uses
  %indvars.iv.next2396.i = add nuw nsw i64 %indvars.iv2395.i, 1 ; 2 uses
  %exitcond2399.not.i = icmp eq i64 %indvars.iv.next2396.i, %wide.trip.count2378.i
  br i1 %exitcond2399.not.i, label %._crit_edge1983.us.i, label %vec.epilog.scalar.ph610, !llvm.loop !619

._crit_edge1983.us.i:                             ; preds = %vec.epilog.scalar.ph610, %vec.epilog.middle.block622, %middle.block606
  %.lcssa442 = phi ptr [ %i.cvu, %vec.epilog.middle.block622 ], [ %i.cvi, %middle.block606 ], [ %i.cwk, %vec.epilog.scalar.ph610 ] ; 2 uses
  %i.cwl = getelementptr inbounds nuw [4 x i8], ptr %.311201985.us.i, i64 %i.cdm ; 2 uses
  %i.cwm = add nuw nsw i32 %.311101987.us.i, 2    ; 3 uses
  %i.cwn = or disjoint i32 %i.cwm, 1
  %i.cwo = icmp slt i32 %i.cwn, %i.p
  br i1 %i.cwo, label %iter.check609, label %.preheader1558.i, !llvm.loop !620

.preheader1558.i:                                 ; preds = %._crit_edge1983.us.i, %.preheader1559.i
  %.31120.lcssa.i = phi ptr [ %.21119.lcssa.i, %.preheader1559.i ], [ %i.cwl, %._crit_edge1983.us.i ] ; 3 uses
  %.6.lcssa.i = phi ptr [ %.41116.lcssa.i, %.preheader1559.i ], [ %.lcssa442, %._crit_edge1983.us.i ]
  %.31110.lcssa.i = phi i32 [ %.21109.lcssa.i, %.preheader1559.i ], [ %i.cwm, %._crit_edge1983.us.i ] ; 2 uses
  %i.cwp = icmp sge i32 %.31110.lcssa.i, %i.p
  %brmerge2015.i = or i1 %i.cdn, %i.cwp
  br i1 %brmerge2015.i, label %._crit_edge2000.split.i, label %iter.check575

iter.check575:                                    ; preds = %.preheader1558.i, %._crit_edge1996.i
  %.411111999.i = phi i32 [ %i.cxo, %._crit_edge1996.i ], [ %.31110.lcssa.i, %.preheader1558.i ]
  %.91998.i = phi ptr [ %.lcssa445, %._crit_edge1996.i ], [ %.6.lcssa.i, %.preheader1558.i ] ; 5 uses
  br i1 %min.iters.check559, label %vec.epilog.scalar.ph576.preheader, label %vector.main.loop.iter.check560

vector.main.loop.iter.check560:                   ; preds = %iter.check575
  br i1 %min.iters.check561, label %vec.epilog.ph579, label %vector.ph562

vector.ph562:                                     ; preds = %vector.main.loop.iter.check560
  %i.cwq = getelementptr i8, ptr %.91998.i, i64 %i.cei ; 2 uses
  br label %vector.body564

vector.body564:                                   ; preds = %vector.body564, %vector.ph562
  %index565 = phi i64 [ 0, %vector.ph562 ], [ %index.next571, %vector.body564 ] ; 3 uses
  %i.cwr = shl i64 %index565, 1
  %next.gep566 = getelementptr i8, ptr %.91998.i, i64 %i.cwr ; 4 uses
  %i.cws = getelementptr inbounds nuw [4 x i8], ptr %.31120.lcssa.i, i64 %index565 ; 4 uses
  %i.cwt = getelementptr inbounds nuw i8, ptr %i.cws, i64 64
  %i.cwu = getelementptr inbounds nuw i8, ptr %i.cws, i64 128
  %i.cwv = getelementptr inbounds nuw i8, ptr %i.cws, i64 192
  %wide.load567 = load <16 x i32>, ptr %i.cws, align 4, !tbaa !39
  %wide.load568 = load <16 x i32>, ptr %i.cwt, align 4, !tbaa !39
  %wide.load569 = load <16 x i32>, ptr %i.cwu, align 4, !tbaa !39
  %wide.load570 = load <16 x i32>, ptr %i.cwv, align 4, !tbaa !39
  %i.cww = lshr <16 x i32> %wide.load567, splat (i32 16)
  %i.cwx = lshr <16 x i32> %wide.load568, splat (i32 16)
  %i.cwy = lshr <16 x i32> %wide.load569, splat (i32 16)
  %i.cwz = lshr <16 x i32> %wide.load570, splat (i32 16)
  %i.cxa = trunc nuw <16 x i32> %i.cww to <16 x i16>
  %i.cxb = trunc nuw <16 x i32> %i.cwx to <16 x i16>
  %i.cxc = trunc nuw <16 x i32> %i.cwy to <16 x i16>
  %i.cxd = trunc nuw <16 x i32> %i.cwz to <16 x i16>
  %i.cxe = getelementptr i8, ptr %next.gep566, i64 32
  %i.cxf = getelementptr i8, ptr %next.gep566, i64 64
  %i.cxg = getelementptr i8, ptr %next.gep566, i64 96
  store <16 x i16> %i.cxa, ptr %next.gep566, align 2, !tbaa !595
  store <16 x i16> %i.cxb, ptr %i.cxe, align 2, !tbaa !595
  store <16 x i16> %i.cxc, ptr %i.cxf, align 2, !tbaa !595
  store <16 x i16> %i.cxd, ptr %i.cxg, align 2, !tbaa !595
  %index.next571 = add nuw i64 %index565, 64      ; 2 uses
  %i.cxh = icmp eq i64 %index.next571, %n.vec563
  br i1 %i.cxh, label %middle.block572, label %vector.body564, !llvm.loop !621

middle.block572:                                  ; preds = %vector.body564
  br i1 %cmp.n573, label %._crit_edge1996.i, label %vec.epilog.iter.check577

vec.epilog.iter.check577:                         ; preds = %middle.block572
  br i1 %min.epilog.iters.check578, label %vec.epilog.scalar.ph576.preheader, label %vec.epilog.ph579, !prof !216

vec.epilog.ph579:                                 ; preds = %vector.main.loop.iter.check560, %vec.epilog.iter.check577
  %vec.epilog.resume.val574 = phi i64 [ %n.vec563, %vec.epilog.iter.check577 ], [ 0, %vector.main.loop.iter.check560 ]
  %i.cxi = getelementptr i8, ptr %.91998.i, i64 %i.cej ; 2 uses
  br label %vec.epilog.vector.body581

vec.epilog.vector.body581:                        ; preds = %vec.epilog.vector.body581, %vec.epilog.ph579
  %index582 = phi i64 [ %vec.epilog.resume.val574, %vec.epilog.ph579 ], [ %index.next585, %vec.epilog.vector.body581 ] ; 3 uses
  %i.cxj = shl i64 %index582, 1
  %next.gep583 = getelementptr i8, ptr %.91998.i, i64 %i.cxj
  %i.cxk = getelementptr inbounds nuw [4 x i8], ptr %.31120.lcssa.i, i64 %index582
  %wide.load584 = load <8 x i32>, ptr %i.cxk, align 4, !tbaa !39
  %i.cxl = lshr <8 x i32> %wide.load584, splat (i32 16)
  %i.cxm = trunc nuw <8 x i32> %i.cxl to <8 x i16>
  store <8 x i16> %i.cxm, ptr %next.gep583, align 2, !tbaa !595
  %index.next585 = add nuw i64 %index582, 8       ; 2 uses
  %i.cxn = icmp eq i64 %index.next585, %n.vec580
  br i1 %i.cxn, label %vec.epilog.middle.block586, label %vec.epilog.vector.body581, !llvm.loop !622

vec.epilog.middle.block586:                       ; preds = %vec.epilog.vector.body581
  br i1 %cmp.n587, label %._crit_edge1996.i, label %vec.epilog.scalar.ph576.preheader

vec.epilog.scalar.ph576.preheader:                ; preds = %iter.check575, %vec.epilog.iter.check577, %vec.epilog.middle.block586
  %indvars.iv2400.i.ph = phi i64 [ 0, %iter.check575 ], [ %n.vec563, %vec.epilog.iter.check577 ], [ %n.vec580, %vec.epilog.middle.block586 ]
  %.101994.i.ph = phi ptr [ %.91998.i, %iter.check575 ], [ %i.cwq, %vec.epilog.iter.check577 ], [ %i.cxi, %vec.epilog.middle.block586 ]
  br label %vec.epilog.scalar.ph576

._crit_edge1996.i:                                ; preds = %vec.epilog.scalar.ph576, %vec.epilog.middle.block586, %middle.block572
  %.lcssa445 = phi ptr [ %i.cxi, %vec.epilog.middle.block586 ], [ %i.cwq, %middle.block572 ], [ %i.cxt, %vec.epilog.scalar.ph576 ]
  %i.cxo = add nuw nsw i32 %.411111999.i, 1       ; 2 uses
  %exitcond2405.not.i = icmp eq i32 %i.cxo, %i.p
  br i1 %exitcond2405.not.i, label %._crit_edge2000.split.i, label %iter.check575, !llvm.loop !623

vec.epilog.scalar.ph576:                          ; preds = %vec.epilog.scalar.ph576.preheader, %vec.epilog.scalar.ph576
  %indvars.iv2400.i = phi i64 [ %indvars.iv.next2401.i, %vec.epilog.scalar.ph576 ], [ %indvars.iv2400.i.ph, %vec.epilog.scalar.ph576.preheader ] ; 2 uses
  %.101994.i = phi ptr [ %i.cxt, %vec.epilog.scalar.ph576 ], [ %.101994.i.ph, %vec.epilog.scalar.ph576.preheader ] ; 2 uses
  %i.cxp = getelementptr inbounds nuw [4 x i8], ptr %.31120.lcssa.i, i64 %indvars.iv2400.i
  %i.cxq = load i32, ptr %i.cxp, align 4, !tbaa !39
  %i.cxr = lshr i32 %i.cxq, 16
  %i.cxs = trunc nuw i32 %i.cxr to i16
  store i16 %i.cxs, ptr %.101994.i, align 2, !tbaa !595
  %i.cxt = getelementptr inbounds nuw i8, ptr %.101994.i, i64 2 ; 2 uses
  %indvars.iv.next2401.i = add nuw nsw i64 %indvars.iv2400.i, 1 ; 2 uses
  %exitcond2404.not.i = icmp eq i64 %indvars.iv.next2401.i, %wide.trip.count2378.i
  br i1 %exitcond2404.not.i, label %._crit_edge1996.i, label %vec.epilog.scalar.ph576, !llvm.loop !624

._crit_edge2000.split.i:                          ; preds = %._crit_edge1996.i, %.preheader1558.i, %.preheader1554.lr.ph.i, %.preheader1555.lr.ph.i
  %indvars.iv.next2407.i = add nsw i64 %indvars.iv2406.i, 1 ; 2 uses
  %indvars.iv.next2373.i = add i32 %indvars.iv2372.i, %i.ccq
  %exitcond2410.not.i = icmp eq i64 %indvars.iv.next2407.i, %wide.trip.count2409.i
  br i1 %exitcond2410.not.i, label %_ZN4ncnnL41convolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii.exit, label %_ZN4ncnn3MatD2Ev.exit.i103, !llvm.loop !625

_ZN4ncnnL41convolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge2000.split.i, %bb.dk, %.preheader1562.i
  %i.cxu = load i8, ptr %1, align 8, !tbaa !69, !range !48, !noundef !49
  %i.cxv = trunc nuw i8 %i.cxu to i1
  br i1 %i.cxv, label %bb.fv, label %bb.gb

bb.fv:                                            ; preds = %_ZN4ncnnL41convolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii.exit
  %i.cxw = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.cxx = load ptr, ptr %i.cxw, align 8, !tbaa !11 ; 2 uses
  %.not.i = icmp eq ptr %i.cxx, null
  br i1 %.not.i, label %.sink.split, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.cxy = atomicrmw add ptr %i.cxx, i32 -1 acq_rel, align 4
  %i.cxz = icmp eq i32 %i.cxy, 1
  br i1 %i.cxz, label %bb.fx, label %.sink.split

bb.fx:                                            ; preds = %bb.fw
  %i.cya = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.cyb = load ptr, ptr %i.cya, align 8, !tbaa !17 ; 3 uses
  %.not3.i = icmp eq ptr %i.cyb, null
  %i.cyc = load ptr, ptr %i.pi, align 8, !tbaa !18 ; 3 uses
  br i1 %.not3.i, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.cyd = load ptr, ptr %i.cyb, align 8, !tbaa !9
  %i.cye = getelementptr inbounds nuw i8, ptr %i.cyd, i64 24
  %i.cyf = load ptr, ptr %i.cye, align 8
  tail call void %i.cyf(ptr noundef nonnull align 8 dereferenceable(8) %i.cyb, ptr noundef %i.cyc), !inline_history !19
  br label %.sink.split

bb.fz:                                            ; preds = %bb.fx
  %.not.i99 = icmp eq ptr %i.cyc, null
  br i1 %.not.i99, label %.sink.split, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  tail call void @free(ptr noundef nonnull %i.cyc) #12
  br label %.sink.split

.sink.split:                                      ; preds = %bb.fy, %bb.fw, %bb.fv, %bb.fz, %bb.ga, %bb.dg, %bb.de, %bb.dd, %bb.dh, %bb.di, %bb.al, %bb.aj, %bb.ai, %bb.am, %bb.an
  %.sink432 = phi ptr [ %i.du, %bb.al ], [ %i.ev, %bb.dg ], [ %i.du, %bb.an ], [ %i.du, %bb.am ], [ %i.du, %bb.ai ], [ %i.du, %bb.aj ], [ %i.ev, %bb.di ], [ %i.ev, %bb.dh ], [ %i.ev, %bb.dd ], [ %i.ev, %bb.de ], [ %i.pi, %bb.ga ], [ %i.pi, %bb.fz ], [ %i.pi, %bb.fv ], [ %i.pi, %bb.fw ], [ %i.pi, %bb.fy ]
  %i.cyg = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.cyh = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i64 0, ptr %i.cyh, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sink432, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.cyg, i8 0, i64 20, i1 false)
  br label %bb.gb

bb.gb:                                            ; preds = %.sink.split, %_ZN4ncnnL46convolution_im2col_gemm_transform_kernel_bf16sERKNS_3MatERS0_iiiiRKNS_6OptionE.exit, %_ZN4ncnnL41convolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii.exit, %bb.ah
  ret i32 0
}

declare noundef ptr @_ZN4ncnn16create_layer_cpuEi(i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn9ParamDictC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn20ModelBinFromMatArrayC1EPKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN4ncnn20ModelBinFromMatArrayD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #9

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL37conv3x3s1_winograd63_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %4) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.ncnn::Mat", align 8         ; 11 uses
  %i.h = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %2, ptr %i.a, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %3, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 %2, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !44
  call fastcc void @_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i(i32 noundef %3, i32 noundef 0, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f, i32 noundef %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  %i.k = load i32, ptr %i.d, align 4, !tbaa !67   ; 6 uses
  %i.l = add i32 %3, -1
  %i.m = add i32 %i.l, %i.k
  %i.n = sdiv i32 %i.m, %i.k
  store i32 %i.n, ptr %i.g, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.o = shl nsw i32 %i.k, 6
  %i.p = load i32, ptr %i.f, align 4, !tbaa !67   ; 4 uses
  %i.q = mul nsw i32 %i.o, %i.p
  %i.r = load i32, ptr %i.i, align 4, !tbaa !44
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 0, ptr %i.u, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %5, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.t, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %5, i32 noundef %i.q, i32 noundef 1, i32 noundef %i.r, i64 noundef 4, ptr noundef null)
  %i.v = mul nsw i32 %i.k, %i.p
  %i.w = add i32 %i.p, -1
  %i.x = add i32 %i.w, %2
  %i.y = sdiv i32 %i.x, %i.p
  %i.z = add i32 %i.k, -1
  %i.aa = add i32 %i.z, %3
  %i.ab = sdiv i32 %i.aa, %i.k
  invoke void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.v, i32 noundef 64, i32 noundef %i.y, i32 noundef %i.ab, i64 noundef 4, ptr noundef null)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.ac = load i32, ptr %i.i, align 4, !tbaa !44
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.h, i32 %i.ac)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL37conv3x3s1_winograd63_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %5, ptr nonnull %i.c, ptr nonnull %i.f, ptr nonnull %i.b, ptr nonnull %0, ptr nonnull %i.a, ptr nonnull %1)
  %i.ad = load ptr, ptr %i.s, align 8, !tbaa !11  ; 2 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit8, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = atomicrmw add ptr %i.ad, i32 -1 acq_rel, align 4
  %i.af = icmp eq i32 %i.ae, 1
  br i1 %i.af, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit8

bb.d:                                             ; preds = %bb.c
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !17  ; 3 uses
  %.not3.i = icmp eq ptr %i.ag, null
  %i.ah = load ptr, ptr %5, align 8, !tbaa !18    ; 3 uses
  br i1 %.not3.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !9
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  invoke void %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef %i.ah)
          to label %_ZN4ncnn3MatD2Ev.exit8 unwind label %bb.h, !inline_history !19

bb.f:                                             ; preds = %bb.d
  %.not.i14 = icmp eq ptr %i.ah, null
  br i1 %.not.i14, label %_ZN4ncnn3MatD2Ev.exit8, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef nonnull %i.ah) #12
  br label %_ZN4ncnn3MatD2Ev.exit8

bb.h:                                             ; preds = %bb.e
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #36
  unreachable

_ZN4ncnn3MatD2Ev.exit8:                           ; preds = %bb.c, %bb.b, %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  ret void

bb.i:                                             ; preds = %bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = load ptr, ptr %i.s, align 8, !tbaa !11  ; 2 uses
  %.not.i9 = icmp eq ptr %i.ao, null
  br i1 %.not.i9, label %_ZN4ncnn3MatD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = atomicrmw add ptr %i.ao, i32 -1 acq_rel, align 4
  %i.aq = icmp eq i32 %i.ap, 1
  br i1 %i.aq, label %bb.k, label %_ZN4ncnn3MatD2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.ar = load ptr, ptr %i.t, align 8, !tbaa !17  ; 3 uses
  %.not3.i10 = icmp eq ptr %i.ar, null
  %i.as = load ptr, ptr %5, align 8, !tbaa !18    ; 3 uses
  br i1 %.not3.i10, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !9
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  invoke void %i.av(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef %i.as)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.o, !inline_history !19

bb.m:                                             ; preds = %bb.k
  %.not.i13 = icmp eq ptr %i.as, null
  br i1 %.not.i13, label %_ZN4ncnn3MatD2Ev.exit, label %bb.n

end_hunk_2
begin_hunk_3_@_ZN4ncnnL11pack_A_tileERKNS_3MatERS0_iii:bb.a
  %i.fv = getelementptr inbounds nuw i8, ptr %.529.us.epil.init, i64 8
  store float %i.fu, ptr %i.fv, align 4, !tbaa !39
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.016330.us.epil.init, i64 %i.n
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !39
  %i.fy = getelementptr inbounds nuw i8, ptr %.529.us.epil.init, i64 12
  store float %i.fx, ptr %i.fy, align 4, !tbaa !39
  %i.fz = getelementptr inbounds nuw i8, ptr %.529.us.epil.init, i64 16
  br label %._crit_edge.us40

._crit_edge.us40:                                 ; preds = %._crit_edge.us40.unr-lcssa, %.epil.preheader
  %.lcssa128 = phi ptr [ %i.fo, %._crit_edge.us40.unr-lcssa ], [ %i.fz, %.epil.preheader ] ; 2 uses
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 4 ; 3 uses
  %i.ga = icmp slt i64 %indvars.iv.next89, %invariant.op121
  br i1 %i.ga, label %.lr.ph.us39, label %.preheader1.loopexit, !llvm.loop !659

.preheader1.loopexit:                             ; preds = %._crit_edge.us40
  %i.gb = trunc nsw i64 %indvars.iv.next89 to i32
  br label %.preheader1

.preheader1:                                      ; preds = %.lr.ph34.split.preheader, %.preheader1.loopexit, %.preheader2
  %.4173.lcssa = phi ptr [ %.2171.lcssa, %.preheader2 ], [ %.lcssa128, %.preheader1.loopexit ], [ %.2171.lcssa, %.lr.ph34.split.preheader ] ; 2 uses
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader2 ], [ %i.gb, %.preheader1.loopexit ], [ %i.eo, %.lr.ph34.split.preheader ] ; 3 uses
  %i.gc = or disjoint i32 %.2.lcssa, 1
  %i.gd = icmp slt i32 %i.gc, %2
  br i1 %i.gd, label %.lr.ph49, label %.preheader

.lr.ph49:                                         ; preds = %.preheader1
  %invariant.gep52 = getelementptr [4 x i8], ptr %.0.val, i64 %indvars.iv100
  %i.ge = sext i32 %.2.lcssa to i64
  br label %bb.f

.preheader.loopexit:                              ; preds = %._crit_edge
  %i.gf = trunc nsw i64 %indvars.iv.next93 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader1
  %.6.lcssa = phi ptr [ %.4173.lcssa, %.preheader1 ], [ %.7.lcssa, %.preheader.loopexit ]
  %.3.lcssa = phi i32 [ %.2.lcssa, %.preheader1 ], [ %i.gf, %.preheader.loopexit ] ; 2 uses
  %i.gg = icmp slt i32 %.3.lcssa, %2
  br i1 %i.gg, label %.lr.ph62, label %._crit_edge63.split

.lr.ph62:                                         ; preds = %.preheader
  %invariant.gep64 = getelementptr [4 x i8], ptr %.0.val, i64 %indvars.iv100
  br i1 %i.i, label %.lr.ph57.preheader, label %._crit_edge63.split

.lr.ph57.preheader:                               ; preds = %.lr.ph62
  %i.gh = sext i32 %.3.lcssa to i64
  br label %.lr.ph57

bb.f:                                             ; preds = %.lr.ph49, %._crit_edge
  %indvars.iv92 = phi i64 [ %i.ge, %.lr.ph49 ], [ %indvars.iv.next93, %._crit_edge ] ; 2 uses
  %.647 = phi ptr [ %.4173.lcssa, %.lr.ph49 ], [ %.7.lcssa, %._crit_edge ] ; 3 uses
  br i1 %i.i, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.gi = mul nsw i64 %indvars.iv92, %i.j
  %gep = getelementptr [4 x i8], ptr %invariant.gep52, i64 %i.gi ; 2 uses
  br i1 %i.at, label %.lr.ph.epil.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.016145 = phi ptr [ %i.hf, %.lr.ph ], [ %gep, %.lr.ph.preheader ] ; 3 uses
  %.744 = phi ptr [ %i.hg, %.lr.ph ], [ %.647, %.lr.ph.preheader ] ; 9 uses
  %niter138 = phi i32 [ %niter138.next.3, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.gj = load float, ptr %.016145, align 4, !tbaa !39
  store float %i.gj, ptr %.744, align 4, !tbaa !39
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.016145, i64 %i.j
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !39
  %i.gm = getelementptr inbounds nuw i8, ptr %.744, i64 4
  store float %i.gl, ptr %i.gm, align 4, !tbaa !39
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %.016145, i64 %i.am ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.744, i64 8
  %i.gp = load float, ptr %i.gn, align 4, !tbaa !39
  store float %i.gp, ptr %i.go, align 4, !tbaa !39
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.j
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !39
  %i.gs = getelementptr inbounds nuw i8, ptr %.744, i64 12
  store float %i.gr, ptr %i.gs, align 4, !tbaa !39
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.am ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.744, i64 16
  %i.gv = load float, ptr %i.gt, align 4, !tbaa !39
  store float %i.gv, ptr %i.gu, align 4, !tbaa !39
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.j
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !39
  %i.gy = getelementptr inbounds nuw i8, ptr %.744, i64 20
  store float %i.gx, ptr %i.gy, align 4, !tbaa !39
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.am ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.744, i64 24
  %i.hb = load float, ptr %i.gz, align 4, !tbaa !39
  store float %i.hb, ptr %i.ha, align 4, !tbaa !39
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.j
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !39
  %i.he = getelementptr inbounds nuw i8, ptr %.744, i64 28
  store float %i.hd, ptr %i.he, align 4, !tbaa !39
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.am ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.744, i64 32 ; 3 uses
  %niter138.next.3 = add nuw nsw i32 %niter138, 4 ; 2 uses
  %niter138.ncmp.3 = icmp eq i32 %niter138.next.3, %unroll_iter137
  br i1 %niter138.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !660

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  br i1 %lcmp.mod134.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.016145.epil.init = phi ptr [ %gep, %.lr.ph.preheader ], [ %i.hf, %._crit_edge.loopexit.unr-lcssa ]
  %.744.epil.init = phi ptr [ %.647, %.lr.ph.preheader ], [ %i.hg, %._crit_edge.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod136)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.016145.epil = phi ptr [ %i.hl, %.lr.ph.epil ], [ %.016145.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %.744.epil = phi ptr [ %i.hm, %.lr.ph.epil ], [ %.744.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.hh = load float, ptr %.016145.epil, align 4, !tbaa !39
  store float %i.hh, ptr %.744.epil, align 4, !tbaa !39
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %.016145.epil, i64 %i.j
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !39
  %i.hk = getelementptr inbounds nuw i8, ptr %.744.epil, i64 4
  store float %i.hj, ptr %i.hk, align 4, !tbaa !39
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.016145.epil, i64 %i.am
  %i.hm = getelementptr inbounds nuw i8, ptr %.744.epil, i64 8 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter133
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !661

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.f
  %.7.lcssa = phi ptr [ %.647, %bb.f ], [ %i.hg, %._crit_edge.loopexit.unr-lcssa ], [ %i.hm, %.lr.ph.epil ] ; 2 uses
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 2 ; 3 uses
  %i.hn = icmp slt i64 %indvars.iv.next93, %invariant.op122
  br i1 %i.hn, label %bb.f, label %.preheader.loopexit, !llvm.loop !662

.lr.ph57:                                         ; preds = %.lr.ph57.preheader, %._crit_edge58
  %indvars.iv96 = phi i64 [ %i.gh, %.lr.ph57.preheader ], [ %indvars.iv.next97, %._crit_edge58 ] ; 2 uses
  %.860 = phi ptr [ %.6.lcssa, %.lr.ph57.preheader ], [ %.lcssa130, %._crit_edge58 ] ; 2 uses
  %i.ho = mul nsw i64 %indvars.iv96, %i.j
  %gep65 = getelementptr [4 x i8], ptr %invariant.gep64, i64 %i.ho ; 2 uses
  br i1 %i.au, label %.epil.preheader139, label %.lr.ph57.new

.lr.ph57.new:                                     ; preds = %.lr.ph57, %.lr.ph57.new
  %.015954 = phi ptr [ %i.il, %.lr.ph57.new ], [ %gep65, %.lr.ph57 ] ; 2 uses
  %.953 = phi ptr [ %i.im, %.lr.ph57.new ], [ %.860, %.lr.ph57 ] ; 9 uses
  %niter146 = phi i32 [ %niter146.next.7, %.lr.ph57.new ], [ 0, %.lr.ph57 ]
  %i.hp = load float, ptr %.015954, align 4, !tbaa !39
  store float %i.hp, ptr %.953, align 4, !tbaa !39
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %.015954, i64 %i.am ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.953, i64 4
  %i.hs = load float, ptr %i.hq, align 4, !tbaa !39
  store float %i.hs, ptr %i.hr, align 4, !tbaa !39
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %i.am ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.953, i64 8
  %i.hv = load float, ptr %i.ht, align 4, !tbaa !39
  store float %i.hv, ptr %i.hu, align 4, !tbaa !39
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.am ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.953, i64 12
  %i.hy = load float, ptr %i.hw, align 4, !tbaa !39
  store float %i.hy, ptr %i.hx, align 4, !tbaa !39
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.am ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.953, i64 16
  %i.ib = load float, ptr %i.hz, align 4, !tbaa !39
  store float %i.ib, ptr %i.ia, align 4, !tbaa !39
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.am ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.953, i64 20
  %i.ie = load float, ptr %i.ic, align 4, !tbaa !39
  store float %i.ie, ptr %i.id, align 4, !tbaa !39
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %i.am ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.953, i64 24
  %i.ih = load float, ptr %i.if, align 4, !tbaa !39
  store float %i.ih, ptr %i.ig, align 4, !tbaa !39
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.am ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.953, i64 28
  %i.ik = load float, ptr %i.ii, align 4, !tbaa !39
  store float %i.ik, ptr %i.ij, align 4, !tbaa !39
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.am ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.953, i64 32 ; 3 uses
  %niter146.next.7 = add nuw nsw i32 %niter146, 8 ; 2 uses
  %niter146.ncmp.7 = icmp eq i32 %niter146.next.7, %unroll_iter145
  br i1 %niter146.ncmp.7, label %._crit_edge58.unr-lcssa, label %.lr.ph57.new, !llvm.loop !663

._crit_edge58.unr-lcssa:                          ; preds = %.lr.ph57.new
  br i1 %lcmp.mod142.not, label %._crit_edge58, label %.epil.preheader139

.epil.preheader139:                               ; preds = %._crit_edge58.unr-lcssa, %.lr.ph57
  %.015954.epil.init = phi ptr [ %gep65, %.lr.ph57 ], [ %i.il, %._crit_edge58.unr-lcssa ]
  %.953.epil.init = phi ptr [ %.860, %.lr.ph57 ], [ %i.im, %._crit_edge58.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod144)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader139
  %.015954.epil = phi ptr [ %.015954.epil.init, %.epil.preheader139 ], [ %i.io, %bb.g ] ; 2 uses
  %.953.epil = phi ptr [ %.953.epil.init, %.epil.preheader139 ], [ %i.ip, %bb.g ] ; 2 uses
  %epil.iter141 = phi i32 [ 0, %.epil.preheader139 ], [ %epil.iter141.next, %bb.g ]
  %i.in = load float, ptr %.015954.epil, align 4, !tbaa !39
  store float %i.in, ptr %.953.epil, align 4, !tbaa !39
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %.015954.epil, i64 %i.am
  %i.ip = getelementptr inbounds nuw i8, ptr %.953.epil, i64 4 ; 2 uses
  %epil.iter141.next = add i32 %epil.iter141, 1   ; 2 uses
  %epil.iter141.cmp.not = icmp eq i32 %epil.iter141.next, %xtraiter140
  br i1 %epil.iter141.cmp.not, label %._crit_edge58, label %bb.g, !llvm.loop !664

._crit_edge58:                                    ; preds = %bb.g, %._crit_edge58.unr-lcssa
  %.lcssa130 = phi ptr [ %i.im, %._crit_edge58.unr-lcssa ], [ %i.ip, %bb.g ]
  %indvars.iv.next97 = add nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond99.not = icmp eq i64 %indvars.iv.next97, %i.ap
  br i1 %exitcond99.not, label %._crit_edge63.split, label %.lr.ph57, !llvm.loop !665

._crit_edge63.split:                              ; preds = %._crit_edge58, %.lr.ph62, %.preheader
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %exitcond104.not = icmp eq i64 %indvars.iv.next101, %i.am
  br i1 %exitcond104.not, label %bb.b, label %bb.c, !llvm.loop !666
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare !callback !667 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #12

declare noundef i32 @_ZN4ncnn26get_physical_big_cpu_countEv() local_unnamed_addr #1

declare noundef i32 @_ZN4ncnn22get_physical_cpu_countEv() local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #14

declare void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL37conv3x3s1_winograd43_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.h = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !67
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !67
  %i.k = load i32, ptr %i.a, align 4, !tbaa !67   ; 3 uses
  %.not107 = icmp sgt i32 %i.k, %i.j
  br i1 %.not107, label %._crit_edge, label %.lr.ph109

.lr.ph109:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph109, %_ZN4ncnn3MatD2Ev.exit
  %indvar = phi i32 [ 0, %.lr.ph109 ], [ %indvar.next, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %.033108 = phi i32 [ %i.k, %.lr.ph109 ], [ %i.ap, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.aa = add i32 %i.k, %indvar
  %i.ab = mul i32 %i.aa, 9
  %i.ac = load i32, ptr %3, align 4, !tbaa !67    ; 2 uses
  %i.ad = mul nsw i32 %i.ac, %.033108             ; 3 uses
  %i.ae = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %_ZN4ncnn3Mat7channelEi.exit49 unwind label %bb.e

_ZN4ncnn3Mat7channelEi.exit49:                    ; preds = %bb.c
  %i.af = load ptr, ptr %4, align 8, !tbaa !18, !noalias !669
  %i.ag = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !669
  %i.ah = sext i32 %i.ae to i64
  %i.ai = mul i64 %i.ag, %i.ah
  %i.aj = load i64, ptr %i.m, align 8, !tbaa !65, !noalias !669
  %i.ak = mul i64 %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %5, align 4, !tbaa !67    ; 2 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.lr.ph.preheader, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph.preheader:                                 ; preds = %_ZN4ncnn3Mat7channelEi.exit49
  %.pre = load i32, ptr %6, align 4, !tbaa !67
  %i.ao = mul i32 %i.ac, %i.ab
  br label %.lr.ph

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_tileERKNS_3MatERS0_iiiii.exit, %_ZN4ncnn3Mat7channelEi.exit49
  %i.ap = add nsw i32 %.033108, 1
  %i.aq = load i32, ptr %i.b, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.033108, %i.aq
  %indvar.next = add i32 %indvar, 1
  br i1 %.not.not, label %bb.c, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_tileERKNS_3MatERS0_iiiii.exit
  %i.ar = phi i32 [ %i.sh, %_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_tileERKNS_3MatERS0_iiiii.exit ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %i.as = phi i32 [ %i.sj, %_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_tileERKNS_3MatERS0_iiiii.exit ], [ %i.am, %.lr.ph.preheader ]
  %.0106 = phi i32 [ %i.si, %_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_tileERKNS_3MatERS0_iiiii.exit ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.at = load i32, ptr %7, align 4, !tbaa !67
  %i.au = sub nsw i32 %i.at, %i.ad
  %i.av = load i32, ptr %3, align 4, !tbaa !67    ; 2 uses
  %.sroa.speculated66 = call i32 @llvm.smin.i32(i32 %i.av, i32 %i.au) ; 3 uses
  %i.aw = sub i32 %i.as, %.0106
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ar, i32 %i.aw) ; 5 uses
  %.val50 = load ptr, ptr %8, align 8             ; 3 uses
  %i.ax = icmp sgt i32 %.sroa.speculated66, 0
  br i1 %i.ax, label %.preheader10.lr.ph.i, label %_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_tileERKNS_3MatERS0_iiiii.exit

.preheader10.lr.ph.i:                             ; preds = %.lr.ph
  %i.ay = load i32, ptr %9, align 4, !tbaa !67    ; 3 uses
  %i.az = icmp sgt i32 %.sroa.speculated, 0
  %i.ba = mul i32 %i.ay, 9
  br i1 %i.az, label %.preheader10.preheader.i, label %_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_tileERKNS_3MatERS0_iiiii.exit

.preheader10.preheader.i:                         ; preds = %.preheader10.lr.ph.i
  %i.bb = sext i32 %.0106 to i64                  ; 5 uses
  %wide.trip.count26.i = zext nneg i32 %.sroa.speculated66 to i64
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated to i64 ; 8 uses
  %i.bc = mul nuw nsw i64 %wide.trip.count.i, 144
  %i.bd = mul nsw i64 %i.bb, 36
  %scevgep114 = getelementptr i8, ptr %.val50, i64 %i.bd
  %i.be = mul i32 %i.ao, %i.ay
  %i.bf = mul i32 %i.ay, 9
  %i.bg = add nsw i64 %i.bb, %wide.trip.count.i
  %i.bh = mul nsw i64 %i.bg, 36
  %scevgep116 = getelementptr i8, ptr %.val50, i64 %i.bh
  %min.iters.check = icmp ult i32 %.sroa.speculated, 4
  %min.iters.check118 = icmp ult i32 %.sroa.speculated, 16
  %i.bi = and i64 %wide.trip.count.i, 12
  %n.vec = and i64 %wide.trip.count.i, 2147483632 ; 5 uses
  %i.bj = mul nuw nsw i64 %n.vec, 144
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.bb, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %min.epilog.iters.check = icmp eq i64 %i.bi, 0
  %n.vec170 = and i64 %wide.trip.count.i, 2147483644 ; 4 uses
  %i.bk = mul nuw nsw i64 %n.vec170, 144
  %broadcast.splatinsert171 = insertelement <4 x i64> poison, i64 %i.bb, i64 0
  %broadcast.splat172 = shufflevector <4 x i64> %broadcast.splatinsert171, <4 x i64> poison, <4 x i32> zeroinitializer
  %cmp.n235 = icmp eq i64 %n.vec170, %wide.trip.count.i
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i, %.preheader10.preheader.i
  %indvars.iv23.i = phi i64 [ 0, %.preheader10.preheader.i ], [ %indvars.iv.next24.i, %._crit_edge.i ] ; 3 uses
  %.018.i = phi ptr [ %i.al, %.preheader10.preheader.i ], [ %.lcssa, %._crit_edge.i ] ; 8 uses
  %i.bl = trunc i64 %indvars.iv23.i to i32
  %i.bm = add i32 %i.ad, %i.bl
  %i.bn = mul i32 %i.ba, %i.bm
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %.val50, i64 %i.bo ; 3 uses
  br i1 %min.iters.check, label %.preheader.preheader.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bq = trunc i64 %indvars.iv23.i to i32
  %i.br = mul i32 %i.bf, %i.bq
  %i.bs = add i32 %i.br, %i.be
  %i.bt = sext i32 %i.bs to i64
  %i.bu = shl nsw i64 %i.bt, 2                    ; 2 uses
  %scevgep117 = getelementptr i8, ptr %scevgep116, i64 %i.bu
  %scevgep115 = getelementptr i8, ptr %scevgep114, i64 %i.bu
  %scevgep = getelementptr i8, ptr %.018.i, i64 %i.bc
  %bound0 = icmp ult ptr %.018.i, %scevgep117
  %bound1 = icmp ult ptr %scevgep115, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader.preheader.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check118, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bv = getelementptr i8, ptr %.018.i, i64 %i.bj ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %.018.i, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <16 x i64> <i64 0, i64 144, i64 288, i64 432, i64 576, i64 720, i64 864, i64 1008, i64 1152, i64 1296, i64 1440, i64 1584, i64 1728, i64 1872, i64 2016, i64 2160> ; 36 uses
  %i.bw = add nsw <16 x i64> %vec.ind, %broadcast.splat
  %i.bx = mul nsw <16 x i64> %i.bw, splat (i64 36)
  %wide.gep = getelementptr inbounds i8, ptr %i.bp, <16 x i64> %i.bx ; 9 uses
end_hunk_3
begin_hunk_4_@_ZN4ncnnL40convolution_im2col_gemm_transform_kernelERKNS_3MatERS0_iiiiRKNS_6OptionE.omp_outlined:bb.a
  %.0456275.i = phi ptr [ %i.aet, %.lr.ph278.i ], [ %i.aec, %.lr.ph278.i.preheader ] ; 5 uses
  %.15274.i = phi ptr [ %i.aes, %.lr.ph278.i ], [ %.14296.i, %.lr.ph278.i.preheader ] ; 5 uses
  %niter881 = phi i32 [ %niter881.next.3, %.lr.ph278.i ], [ 0, %.lr.ph278.i.preheader ]
  %i.aei = load <8 x float>, ptr %.0456275.i, align 1, !tbaa !100
  store <8 x float> %i.aei, ptr %.15274.i, align 1, !tbaa !100
  %i.aej = getelementptr inbounds nuw i8, ptr %.15274.i, i64 32
  %i.aek = getelementptr inbounds nuw i8, ptr %.0456275.i, i64 32
  %i.ael = load <8 x float>, ptr %i.aek, align 1, !tbaa !100
  store <8 x float> %i.ael, ptr %i.aej, align 1, !tbaa !100
  %i.aem = getelementptr inbounds nuw i8, ptr %.15274.i, i64 64
  %i.aen = getelementptr inbounds nuw i8, ptr %.0456275.i, i64 64
  %i.aeo = load <8 x float>, ptr %i.aen, align 1, !tbaa !100
  store <8 x float> %i.aeo, ptr %i.aem, align 1, !tbaa !100
  %i.aep = getelementptr inbounds nuw i8, ptr %.15274.i, i64 96
  %i.aeq = getelementptr inbounds nuw i8, ptr %.0456275.i, i64 96
  %i.aer = load <8 x float>, ptr %i.aeq, align 1, !tbaa !100
  store <8 x float> %i.aer, ptr %i.aep, align 1, !tbaa !100
  %i.aes = getelementptr inbounds nuw i8, ptr %.15274.i, i64 128 ; 3 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %.0456275.i, i64 128 ; 3 uses
  %niter881.next.3 = add i32 %niter881, 4         ; 2 uses
  %niter881.ncmp.3.not = icmp eq i32 %niter881.next.3, %unroll_iter880
  br i1 %niter881.ncmp.3.not, label %.preheader90.i.loopexit.unr-lcssa, label %.lr.ph278.i, !llvm.loop !812

.preheader.i:                                     ; preds = %.lr.ph285.i, %.preheader90.i
  %.16.lcssa.i = phi ptr [ %.15.lcssa.i, %.preheader90.i ], [ %i.agd, %.lr.ph285.i ] ; 7 uses
  %.1457.lcssa.i = phi ptr [ %.0456.lcssa.i, %.preheader90.i ], [ %i.age, %.lr.ph285.i ] ; 6 uses
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader90.i ], [ %i.agf, %.lr.ph285.i ] ; 5 uses
  %i.aeu = icmp slt i32 %.1.lcssa.i, %.sroa.speculated
  br i1 %i.aeu, label %iter.check, label %._crit_edge293.i

iter.check:                                       ; preds = %.preheader.i
  %.1457.lcssa.i289 = ptrtoaddr ptr %.1457.lcssa.i to i64
  %.16.lcssa.i288 = ptrtoaddr ptr %.16.lcssa.i to i64
  %i.aev = xor i32 %.1.lcssa.i, -1
  %i.aew = add i32 %.sroa.speculated, %i.aev      ; 3 uses
  %i.aex = zext i32 %i.aew to i64
  %i.aey = add nuw nsw i64 %i.aex, 1              ; 5 uses
  %min.iters.check = icmp ult i32 %i.aew, 7
  %i.aez = sub i64 %.1457.lcssa.i289, %.16.lcssa.i288
  %diff.check = icmp ugt i64 %i.aez, -256
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph292.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check290 = icmp ult i32 %i.aew, 63
  br i1 %min.iters.check290, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.afa = and i64 %i.aey, 56
  %n.vec = and i64 %i.aey, 8589934528             ; 5 uses
  %i.afb = trunc i64 %n.vec to i32
  %i.afc = add i32 %.1.lcssa.i, %i.afb
  %i.afd = shl nuw nsw i64 %n.vec, 2              ; 2 uses
  %i.afe = getelementptr i8, ptr %.1457.lcssa.i, i64 %i.afd
  %i.aff = getelementptr i8, ptr %.16.lcssa.i, i64 %i.afd ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.afg = shl i64 %index, 2                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.1457.lcssa.i, i64 %i.afg ; 4 uses
  %next.gep291 = getelementptr i8, ptr %.16.lcssa.i, i64 %i.afg ; 4 uses
  %i.afh = getelementptr i8, ptr %next.gep, i64 64
  %i.afi = getelementptr i8, ptr %next.gep, i64 128
  %i.afj = getelementptr i8, ptr %next.gep, i64 192
  %wide.load = load <16 x float>, ptr %next.gep, align 4, !tbaa !39
  %wide.load292 = load <16 x float>, ptr %i.afh, align 4, !tbaa !39
  %wide.load293 = load <16 x float>, ptr %i.afi, align 4, !tbaa !39
  %wide.load294 = load <16 x float>, ptr %i.afj, align 4, !tbaa !39
  %i.afk = getelementptr i8, ptr %next.gep291, i64 64
  %i.afl = getelementptr i8, ptr %next.gep291, i64 128
  %i.afm = getelementptr i8, ptr %next.gep291, i64 192
  store <16 x float> %wide.load, ptr %next.gep291, align 4, !tbaa !39
  store <16 x float> %wide.load292, ptr %i.afk, align 4, !tbaa !39
  store <16 x float> %wide.load293, ptr %i.afl, align 4, !tbaa !39
  store <16 x float> %wide.load294, ptr %i.afm, align 4, !tbaa !39
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.afn = icmp eq i64 %index.next, %n.vec
  br i1 %i.afn, label %middle.block, label %vector.body, !llvm.loop !813

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aey, %n.vec
  br i1 %cmp.n, label %._crit_edge293.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.afa, 0
  br i1 %min.epilog.iters.check, label %.lr.ph292.i.preheader, label %vec.epilog.ph, !prof !216

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec297 = and i64 %i.aey, 8589934584          ; 4 uses
  %i.afo = trunc i64 %n.vec297 to i32
  %i.afp = add i32 %.1.lcssa.i, %i.afo
  %i.afq = shl nuw nsw i64 %n.vec297, 2           ; 2 uses
  %i.afr = getelementptr i8, ptr %.1457.lcssa.i, i64 %i.afq
  %i.afs = getelementptr i8, ptr %.16.lcssa.i, i64 %i.afq ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index298 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next302, %vec.epilog.vector.body ] ; 2 uses
  %i.aft = shl i64 %index298, 2                   ; 2 uses
  %next.gep299 = getelementptr i8, ptr %.1457.lcssa.i, i64 %i.aft
  %next.gep300 = getelementptr i8, ptr %.16.lcssa.i, i64 %i.aft
  %wide.load301 = load <8 x float>, ptr %next.gep299, align 4, !tbaa !39
  store <8 x float> %wide.load301, ptr %next.gep300, align 4, !tbaa !39
  %index.next302 = add nuw i64 %index298, 8       ; 2 uses
  %i.afu = icmp eq i64 %index.next302, %n.vec297
  br i1 %i.afu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !814

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n303 = icmp eq i64 %i.aey, %n.vec297
  br i1 %cmp.n303, label %._crit_edge293.i, label %.lr.ph292.i.preheader

.lr.ph292.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2291.i.ph = phi i32 [ %.1.lcssa.i, %iter.check ], [ %i.afc, %vec.epilog.iter.check ], [ %i.afp, %vec.epilog.middle.block ] ; 4 uses
  %.2458290.i.ph = phi ptr [ %.1457.lcssa.i, %iter.check ], [ %i.afe, %vec.epilog.iter.check ], [ %i.afr, %vec.epilog.middle.block ] ; 2 uses
  %.17289.i.ph = phi ptr [ %.16.lcssa.i, %iter.check ], [ %i.aff, %vec.epilog.iter.check ], [ %i.afs, %vec.epilog.middle.block ] ; 2 uses
  %i.afv = sub i32 %.sroa.speculated, %.2291.i.ph
  %xtraiter882 = and i32 %i.afv, 7                ; 2 uses
  %lcmp.mod883.not = icmp eq i32 %xtraiter882, 0
  br i1 %lcmp.mod883.not, label %.lr.ph292.i.prol.loopexit, label %.lr.ph292.i.prol

.lr.ph292.i.prol:                                 ; preds = %.lr.ph292.i.preheader, %.lr.ph292.i.prol
  %.2291.i.prol = phi i32 [ %i.afz, %.lr.ph292.i.prol ], [ %.2291.i.ph, %.lr.ph292.i.preheader ]
  %.2458290.i.prol = phi ptr [ %i.afy, %.lr.ph292.i.prol ], [ %.2458290.i.ph, %.lr.ph292.i.preheader ] ; 2 uses
  %.17289.i.prol = phi ptr [ %i.afx, %.lr.ph292.i.prol ], [ %.17289.i.ph, %.lr.ph292.i.preheader ] ; 2 uses
  %prol.iter884 = phi i32 [ %prol.iter884.next, %.lr.ph292.i.prol ], [ 0, %.lr.ph292.i.preheader ]
  %i.afw = load float, ptr %.2458290.i.prol, align 4, !tbaa !39
  store float %i.afw, ptr %.17289.i.prol, align 4, !tbaa !39
  %i.afx = getelementptr inbounds nuw i8, ptr %.17289.i.prol, i64 4 ; 3 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %.2458290.i.prol, i64 4 ; 2 uses
  %i.afz = add nuw nsw i32 %.2291.i.prol, 1       ; 2 uses
  %prol.iter884.next = add i32 %prol.iter884, 1   ; 2 uses
  %prol.iter884.cmp.not = icmp eq i32 %prol.iter884.next, %xtraiter882
  br i1 %prol.iter884.cmp.not, label %.lr.ph292.i.prol.loopexit, label %.lr.ph292.i.prol, !llvm.loop !815

.lr.ph292.i.prol.loopexit:                        ; preds = %.lr.ph292.i.prol, %.lr.ph292.i.preheader
  %.lcssa865.unr = phi ptr [ poison, %.lr.ph292.i.preheader ], [ %i.afx, %.lr.ph292.i.prol ]
  %.2291.i.unr = phi i32 [ %.2291.i.ph, %.lr.ph292.i.preheader ], [ %i.afz, %.lr.ph292.i.prol ]
  %.2458290.i.unr = phi ptr [ %.2458290.i.ph, %.lr.ph292.i.preheader ], [ %i.afy, %.lr.ph292.i.prol ]
  %.17289.i.unr = phi ptr [ %.17289.i.ph, %.lr.ph292.i.preheader ], [ %i.afx, %.lr.ph292.i.prol ]
  %i.aga = sub i32 %.2291.i.ph, %.sroa.speculated
  %i.agb = icmp ugt i32 %i.aga, -8
  br i1 %i.agb, label %._crit_edge293.i, label %.lr.ph292.i

.lr.ph285.i:                                      ; preds = %.preheader90.i, %.lr.ph285.i
  %.1284.i = phi i32 [ %i.agf, %.lr.ph285.i ], [ %.0.lcssa.i, %.preheader90.i ]
  %.1457283.i = phi ptr [ %i.age, %.lr.ph285.i ], [ %.0456.lcssa.i, %.preheader90.i ] ; 2 uses
  %.16282.i = phi ptr [ %i.agd, %.lr.ph285.i ], [ %.15.lcssa.i, %.preheader90.i ] ; 2 uses
  %i.agc = load <4 x float>, ptr %.1457283.i, align 1, !tbaa !100
  store <4 x float> %i.agc, ptr %.16282.i, align 1, !tbaa !100
  %i.agd = getelementptr inbounds nuw i8, ptr %.16282.i, i64 16 ; 2 uses
  %i.age = getelementptr inbounds nuw i8, ptr %.1457283.i, i64 16 ; 2 uses
  %i.agf = add nuw nsw i32 %.1284.i, 4            ; 3 uses
  %i.agg = or disjoint i32 %i.agf, 3
  %i.agh = icmp slt i32 %i.agg, %.sroa.speculated
  br i1 %i.agh, label %.lr.ph285.i, label %.preheader.i, !llvm.loop !816

.lr.ph292.i:                                      ; preds = %.lr.ph292.i.prol.loopexit, %.lr.ph292.i
  %.2291.i = phi i32 [ %i.ahg, %.lr.ph292.i ], [ %.2291.i.unr, %.lr.ph292.i.prol.loopexit ]
  %.2458290.i = phi ptr [ %i.ahf, %.lr.ph292.i ], [ %.2458290.i.unr, %.lr.ph292.i.prol.loopexit ] ; 9 uses
  %.17289.i = phi ptr [ %i.ahe, %.lr.ph292.i ], [ %.17289.i.unr, %.lr.ph292.i.prol.loopexit ] ; 9 uses
  %i.agi = load float, ptr %.2458290.i, align 4, !tbaa !39
  store float %i.agi, ptr %.17289.i, align 4, !tbaa !39
  %i.agj = getelementptr inbounds nuw i8, ptr %.17289.i, i64 4
  %i.agk = getelementptr inbounds nuw i8, ptr %.2458290.i, i64 4
  %i.agl = load float, ptr %i.agk, align 4, !tbaa !39
  store float %i.agl, ptr %i.agj, align 4, !tbaa !39
  %i.agm = getelementptr inbounds nuw i8, ptr %.17289.i, i64 8
  %i.agn = getelementptr inbounds nuw i8, ptr %.2458290.i, i64 8
  %i.ago = load float, ptr %i.agn, align 4, !tbaa !39
  store float %i.ago, ptr %i.agm, align 4, !tbaa !39
  %i.agp = getelementptr inbounds nuw i8, ptr %.17289.i, i64 12
  %i.agq = getelementptr inbounds nuw i8, ptr %.2458290.i, i64 12
  %i.agr = load float, ptr %i.agq, align 4, !tbaa !39
  store float %i.agr, ptr %i.agp, align 4, !tbaa !39
  %i.ags = getelementptr inbounds nuw i8, ptr %.17289.i, i64 16
  %i.agt = getelementptr inbounds nuw i8, ptr %.2458290.i, i64 16
  %i.agu = load float, ptr %i.agt, align 4, !tbaa !39
  store float %i.agu, ptr %i.ags, align 4, !tbaa !39
  %i.agv = getelementptr inbounds nuw i8, ptr %.17289.i, i64 20
  %i.agw = getelementptr inbounds nuw i8, ptr %.2458290.i, i64 20
  %i.agx = load float, ptr %i.agw, align 4, !tbaa !39
  store float %i.agx, ptr %i.agv, align 4, !tbaa !39
  %i.agy = getelementptr inbounds nuw i8, ptr %.17289.i, i64 24
  %i.agz = getelementptr inbounds nuw i8, ptr %.2458290.i, i64 24
  %i.aha = load float, ptr %i.agz, align 4, !tbaa !39
  store float %i.aha, ptr %i.agy, align 4, !tbaa !39
  %i.ahb = getelementptr inbounds nuw i8, ptr %.17289.i, i64 28
  %i.ahc = getelementptr inbounds nuw i8, ptr %.2458290.i, i64 28
  %i.ahd = load float, ptr %i.ahc, align 4, !tbaa !39
  store float %i.ahd, ptr %i.ahb, align 4, !tbaa !39
  %i.ahe = getelementptr inbounds nuw i8, ptr %.17289.i, i64 32 ; 2 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %.2458290.i, i64 32
  %i.ahg = add nuw nsw i32 %.2291.i, 8            ; 2 uses
  %exitcond374.not.i.7 = icmp eq i32 %i.ahg, %.sroa.speculated
  br i1 %exitcond374.not.i.7, label %._crit_edge293.i, label %.lr.ph292.i, !llvm.loop !817

._crit_edge293.i:                                 ; preds = %.lr.ph292.i.prol.loopexit, %.lr.ph292.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  %.17.lcssa.i = phi ptr [ %.16.lcssa.i, %.preheader.i ], [ %i.afs, %vec.epilog.middle.block ], [ %i.aff, %middle.block ], [ %.lcssa865.unr, %.lr.ph292.i.prol.loopexit ], [ %i.ahe, %.lr.ph292.i ]
  %indvars.iv.next376.i = add nsw i64 %indvars.iv375.i, 1 ; 2 uses
  %exitcond378.not.i = icmp eq i64 %indvars.iv.next376.i, %i.aa
  br i1 %exitcond378.not.i, label %_ZN4ncnn3MatD2Ev.exit, label %bb.g, !llvm.loop !818

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge293.i, %.preheader91.i
  %i.ahh = load i32, ptr %6, align 4, !tbaa !67   ; 2 uses
  %i.ahi = add nsw i32 %i.ahh, %.0113             ; 2 uses
  %i.ahj = load i32, ptr %5, align 4, !tbaa !67   ; 3 uses
  %i.ahk = icmp slt i32 %i.ahi, %i.ahj
  br i1 %i.ahk, label %_ZN4ncnn3MatD2Ev.exit29, label %._crit_edge, !llvm.loop !819

._crit_edge117:                                   ; preds = %._crit_edge, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge117, %bb.a
  ret void
}

declare void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float>, ptr, <16 x i32>, <16 x i1>, i32 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float>, ptr, <8 x i32>, <8 x float>, i8 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float>, ptr, <4 x i32>, <4 x float>, i8 immarg) #16

declare void @_ZN4ncnn24cast_bfloat16_to_float32ERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZNK4ncnn22Convolution_x86_avx51216forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(1168) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %i.j = alloca i32, align 4                      ; 6 uses
  %i.k = alloca i32, align 4                      ; 8 uses
  %i.l = alloca i32, align 4                      ; 7 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.ncnn::Mat", align 8         ; 14 uses
  %i.o = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.ncnn::Mat", align 8         ; 12 uses
  %6 = alloca %"class.ncnn::Mat", align 16        ; 16 uses
  %7 = alloca %"class.ncnn::Option", align 8      ; 7 uses
  %8 = alloca %"class.ncnn::Mat", align 8         ; 19 uses
  %9 = alloca %"class.ncnn::Mat", align 16        ; 33 uses
  %10 = alloca %"class.ncnn::Mat", align 16       ; 15 uses
  %11 = alloca %"class.ncnn::Mat", align 16       ; 15 uses
  %12 = alloca %"class.ncnn::Mat", align 16       ; 15 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !66   ; 3 uses
  %.not.i201 = icmp eq i32 %i.q, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !65 ; 2 uses
  br i1 %.not.i201, label %_ZNK4ncnn3Mat8elembitsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.tr.i = trunc i64 %.pre to i32
  %i.r = shl i32 %.tr.i, 3
  %i.s = sdiv i32 %i.r, %i.q
  %i.t = icmp eq i32 %i.s, 8
  br label %_ZNK4ncnn3Mat8elembitsEv.exit

_ZNK4ncnn3Mat8elembitsEv.exit:                    ; preds = %bb.a, %bb.b
  %.not = phi i1 [ %i.t, %bb.b ], [ false, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !11   ; 2 uses
  %i.x = load <2 x ptr>, ptr %1, align 8, !tbaa !64
  store <2 x ptr> %i.x, ptr %6, align 16, !tbaa !64
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %.pre, ptr %i.y, align 16, !tbaa !65
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %i.q, ptr %i.z, align 8, !tbaa !66
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !17
  store ptr %i.ac, ptr %i.aa, align 16, !tbaa !17
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.af = load <4 x i32>, ptr %i.ae, align 8, !tbaa !67
  store <4 x i32> %i.af, ptr %i.ad, align 8, !tbaa !67
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !68
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !68
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !20
  store i64 %i.al, ptr %i.aj, align 16, !tbaa !20
  %.not.i208 = icmp eq ptr %i.w, null
  br i1 %.not.i208, label %_ZN4ncnn3Mat6addrefEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit
  %i.am = atomicrmw add ptr %i.w, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit, %bb.c
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !820
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !227
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !228
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 568
  invoke void @_ZN4ncnn16quantize_to_int8ERKNS_3MatERS0_S2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %i.aq, ptr noundef nonnull align 8 dereferenceable(64) %7)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ar = load ptr, ptr %6, align 16, !tbaa !18
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %_ZNK4ncnn3Mat5emptyEv.exit207.thread, label %_ZNK4ncnn3Mat5emptyEv.exit207

_ZNK4ncnn3Mat5emptyEv.exit207.thread:             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.gc

bb.f:                                             ; preds = %bb.d
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.gj

_ZNK4ncnn3Mat5emptyEv.exit207:                    ; preds = %bb.e
  %i.au = load i64, ptr %i.aj, align 16, !tbaa !20
  %i.av = load i32, ptr %i.ag, align 8, !tbaa !68
  %i.aw = sext i32 %i.av to i64
  %i.ax = mul i64 %i.au, %i.aw
  %i.ay = icmp eq i64 %i.ax, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br i1 %i.ay, label %bb.gc, label %bb.g

bb.g:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit207, %_ZN4ncnn3Mat6addrefEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  store i64 0, ptr %i.bf, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %8, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bb, i8 0, i64 28, i1 false)
  invoke void @_ZNK4ncnn11Convolution12make_paddingERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bg = load ptr, ptr %8, align 8, !tbaa !18
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_ZNK4ncnn3Mat5emptyEv.exit206.thread, label %_ZNK4ncnn3Mat5emptyEv.exit206

_ZNK4ncnn3Mat5emptyEv.exit206:                    ; preds = %bb.h
  %i.bi = load i64, ptr %i.bf, align 8, !tbaa !20
  %i.bj = load i32, ptr %i.be, align 8, !tbaa !68 ; 2 uses
  %i.bk = sext i32 %i.bj to i64
  %i.bl = mul i64 %i.bi, %i.bk
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %_ZNK4ncnn3Mat5emptyEv.exit206.thread, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.fv

bb.j:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit206
  %i.bo = load i32, ptr %i.bc, align 4, !tbaa !75
  %i.bp = load i32, ptr %i.bd, align 8, !tbaa !76
  %i.bq = load i32, ptr %i.ba, align 8, !tbaa !66
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.bv = load <2 x i32>, ptr %i.br, align 4, !tbaa !67
  %i.bw = load <2 x i32>, ptr %i.bs, align 4, !tbaa !67
  %i.bx = add nsw <2 x i32> %i.bw, splat (i32 -1)
  %i.by = mul nsw <2 x i32> %i.bx, %i.bv
  %i.bz = xor <2 x i32> %i.by, splat (i32 -1)     ; 2 uses
  %i.ca = extractelement <2 x i32> %i.bz, i64 0
  %i.cb = add i32 %i.bo, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 4 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !59
  %i.ce = sdiv i32 %i.cb, %i.cd
end_hunk_4
begin_hunk_5_@_ZN4ncnnL20conv3x3s1_winograd23ERKNS_3MatERS0_S2_S2_iRKNS_6OptionE.omp_outlined.3:bb.a
._crit_edge.i.loopexit.us:                        ; preds = %bb.bu
  %indvars.iv.next255.i.us = add nuw nsw i64 %indvars.iv254.i.us, 2 ; 3 uses
  %i.zy = icmp slt i64 %indvars.iv.next255.i.us, %invariant.op322.i
  br i1 %i.zy, label %bb.bm, label %.preheader.loopexit.i, !llvm.loop !897

.lr.ph166.i.split:                                ; preds = %.lr.ph166.i
  %i.zz = add nsw i64 %i.wd, 2
  %smax171 = call i64 @llvm.smax.i64(i64 %i.bq, i64 %i.zz)
  %i.aaa = xor i64 %i.wd, -1
  %i.aab = add i64 %smax171, %i.aaa
  %i.aac = and i64 %i.aab, -2
  %i.aad = add i64 %i.aac, 2
  %i.aae = add i64 %i.aad, %i.wd
  br label %.preheader.loopexit.i

.preheader.loopexit.i:                            ; preds = %._crit_edge.i.loopexit.us, %.lr.ph166.i.split
  %.us-phi = phi i64 [ %i.aae, %.lr.ph166.i.split ], [ %indvars.iv.next255.i.us, %._crit_edge.i.loopexit.us ]
  %i.aaf = trunc nsw i64 %.us-phi to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.preheader98.i
  %.3.lcssa.i = phi i32 [ %.2.lcssa.i, %.preheader98.i ], [ %i.aaf, %.preheader.loopexit.i ] ; 2 uses
  %i.aag = icmp slt i32 %.3.lcssa.i, %.sroa.speculated121
  br i1 %i.aag, label %.lr.ph185.i, label %_ZN4ncnnL42conv3x3s1_winograd23_transform_output_tileERKNS_3MatERS0_S2_iiii.exit

.lr.ph185.i:                                      ; preds = %.preheader.i
  %.not.i80 = icmp eq ptr %.val78, null
  %i.aah = icmp sgt i32 %.sroa.speculated117, 0
  %i.aai = sext i32 %.sroa.speculated117 to i64
  %i.aaj = shl nsw i32 %.sroa.speculated117, 1
  %i.aak = sext i32 %i.aaj to i64
  %i.aal = mul nsw i32 %.sroa.speculated117, 3
  %i.aam = sext i32 %i.aal to i64
  %i.aan = shl nsw i32 %.sroa.speculated117, 2
  %i.aao = sext i32 %i.aan to i64                 ; 12 uses
  %i.aap = sext i32 %i.by to i64                  ; 2 uses
  %i.aaq = sext i32 %.3.lcssa.i to i64
  %invariant.gep323.i = getelementptr [4 x i8], ptr %.val78, i64 %i.bj
  %wide.trip.count270.i = zext nneg i32 %.sroa.speculated117 to i64
  br label %bb.bv

bb.bv:                                            ; preds = %._crit_edge179.i, %.lr.ph185.i
  %indvars.iv272.i = phi i64 [ %i.aaq, %.lr.ph185.i ], [ %indvars.iv.next273.i, %._crit_edge179.i ] ; 4 uses
  br i1 %.not.i80, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %gep324.i = getelementptr [4 x i8], ptr %invariant.gep323.i, i64 %indvars.iv272.i
  %i.aar = load float, ptr %gep324.i, align 4, !tbaa !39
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.aas = phi fast float [ %i.aar, %bb.bw ], [ 0.000000e+00, %bb.bv ] ; 4 uses
  br i1 %i.aah, label %.lr.ph178.i, label %._crit_edge179.i

.lr.ph178.i:                                      ; preds = %bb.bx
  %i.aat = trunc nsw i64 %indvars.iv272.i to i32
  %factor.op.mul.reass183.i = mul i32 %factor.op.mul109.i, %i.aat
  %i.aau = sext i32 %factor.op.mul.reass183.i to i64
  %i.aav = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.aau
  %i.aaw = add nsw i64 %indvars.iv272.i, %i.bj
  %i.aax = load i32, ptr %i.an, align 4, !tbaa !75, !noalias !898
  %i.aay = load ptr, ptr %12, align 8, !tbaa !18, !noalias !898
  %i.aaz = load i64, ptr %i.aq, align 8, !tbaa !20, !noalias !898
  %i.aba = mul i64 %i.aaz, %i.aaw
  %i.abb = load i64, ptr %i.ar, align 8, !tbaa !65, !noalias !898 ; 2 uses
  %i.abc = mul i64 %i.aba, %i.abb
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aay, i64 %i.abc
  %i.abe = sext i32 %i.aax to i64
  %factor.op.mul180.i = mul i64 %i.abb, %i.abe
  br label %_ZN4ncnn3MatD2Ev.exit.i

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %.split.us175.i, %.lr.ph178.i
  %indvars.iv267.i = phi i64 [ 0, %.lr.ph178.i ], [ %indvars.iv.next268.i, %.split.us175.i ] ; 3 uses
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %i.aav, i64 %indvars.iv267.i ; 5 uses
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %i.abf, i64 %i.aai ; 2 uses
  %i.abh = getelementptr inbounds nuw [4 x i8], ptr %i.abf, i64 %i.aak ; 2 uses
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %i.abf, i64 %i.aam ; 2 uses
  %i.abj = load float, ptr %i.abf, align 4, !tbaa !39
  %i.abk = load float, ptr %i.abg, align 4, !tbaa !39 ; 2 uses
  %i.abl = fadd fast float %i.abk, %i.abj
  %i.abm = load float, ptr %i.abh, align 4, !tbaa !39 ; 2 uses
  %i.abn = fadd fast float %i.abl, %i.abm         ; 2 uses
  %i.abo = fsub fast float %i.abk, %i.abm
  %i.abp = load float, ptr %i.abi, align 4, !tbaa !39
  %i.abq = fadd fast float %i.abo, %i.abp         ; 2 uses
  %i.abr = getelementptr inbounds nuw [4 x i8], ptr %i.abf, i64 %i.aao ; 2 uses
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %i.abg, i64 %i.aao ; 2 uses
  %i.abt = getelementptr inbounds nuw [4 x i8], ptr %i.abh, i64 %i.aao ; 2 uses
  %i.abu = getelementptr inbounds nuw [4 x i8], ptr %i.abi, i64 %i.aao ; 2 uses
  %i.abv = load float, ptr %i.abr, align 4, !tbaa !39
  %i.abw = load float, ptr %i.abs, align 4, !tbaa !39 ; 2 uses
  %i.abx = fadd fast float %i.abw, %i.abv
  %i.aby = load float, ptr %i.abt, align 4, !tbaa !39 ; 2 uses
  %i.abz = fadd fast float %i.abx, %i.aby         ; 2 uses
  %i.aca = fsub fast float %i.abw, %i.aby
  %i.acb = load float, ptr %i.abu, align 4, !tbaa !39
  %i.acc = fadd fast float %i.aca, %i.acb         ; 2 uses
  %i.acd = getelementptr inbounds nuw [4 x i8], ptr %i.abr, i64 %i.aao ; 2 uses
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr %i.abs, i64 %i.aao ; 2 uses
  %i.acf = getelementptr inbounds nuw [4 x i8], ptr %i.abt, i64 %i.aao ; 2 uses
  %i.acg = getelementptr inbounds nuw [4 x i8], ptr %i.abu, i64 %i.aao ; 2 uses
  %i.ach = load float, ptr %i.acd, align 4, !tbaa !39
  %i.aci = load float, ptr %i.ace, align 4, !tbaa !39 ; 2 uses
  %i.acj = fadd fast float %i.aci, %i.ach
  %i.ack = load float, ptr %i.acf, align 4, !tbaa !39 ; 2 uses
  %i.acl = fadd fast float %i.acj, %i.ack         ; 3 uses
  %i.acm = fsub fast float %i.aci, %i.ack
  %i.acn = load float, ptr %i.acg, align 4, !tbaa !39
  %i.aco = fadd fast float %i.acm, %i.acn         ; 3 uses
  %i.acp = getelementptr inbounds nuw [4 x i8], ptr %i.acd, i64 %i.aao
  %i.acq = getelementptr inbounds nuw [4 x i8], ptr %i.ace, i64 %i.aao
  %i.acr = getelementptr inbounds nuw [4 x i8], ptr %i.acf, i64 %i.aao
  %i.acs = getelementptr inbounds nuw [4 x i8], ptr %i.acg, i64 %i.aao
  %i.act = load float, ptr %i.acp, align 4, !tbaa !39
  %i.acu = load float, ptr %i.acq, align 4, !tbaa !39 ; 2 uses
  %i.acv = load float, ptr %i.acr, align 4, !tbaa !39 ; 2 uses
  %i.acw = load float, ptr %i.acs, align 4, !tbaa !39
  %i.acx = trunc i64 %indvars.iv267.i to i32
  %i.acy = add i32 %.044160, %i.acx               ; 2 uses
  %i.acz = sdiv i32 %i.acy, %i.cf
  %i.ada = srem i32 %i.acy, %i.cf
  %i.adb = shl nsw i32 %i.acz, 1                  ; 4 uses
  %i.adc = sext i32 %i.adb to i64
  %.reass181.i = mul i64 %factor.op.mul180.i, %i.adc
  %i.add = getelementptr inbounds nuw i8, ptr %i.abd, i64 %.reass181.i
  %i.ade = shl nsw i32 %i.ada, 1                  ; 2 uses
  %i.adf = sext i32 %i.ade to i64
  %i.adg = getelementptr inbounds [4 x i8], ptr %i.add, i64 %i.adf ; 7 uses
  %i.adh = or disjoint i32 %i.ade, 1
  %i.adi = icmp slt i32 %i.adh, %i.by
  %.fr.i = freeze i1 %i.adi
  %.not725.us.i = icmp slt i32 %i.adb, %i.bz      ; 2 uses
  br i1 %.fr.i, label %_ZN4ncnn3MatD2Ev.exit.split.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit.split.preheader.i

_ZN4ncnn3MatD2Ev.exit.split.preheader.i:          ; preds = %_ZN4ncnn3MatD2Ev.exit.i
  br i1 %.not725.us.i, label %bb.ca, label %_ZN4ncnn3MatD2Ev.exit.split.1.i

_ZN4ncnn3MatD2Ev.exit.split.us.preheader.i:       ; preds = %_ZN4ncnn3MatD2Ev.exit.i
  br i1 %.not725.us.i, label %bb.by, label %_ZN4ncnn3MatD2Ev.exit.split.us.1.i

bb.by:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us.preheader.i
  %i.adj = fadd fast float %i.abz, %i.aas         ; 2 uses
  %i.adk = fadd fast float %i.adj, %i.abn
  %i.adl = fadd fast float %i.adk, %i.acl
  store float %i.adl, ptr %i.adg, align 4, !tbaa !39
  %i.adm = fsub fast float %i.adj, %i.acl
  %i.adn = fadd fast float %i.adm, %i.act
  %i.ado = fadd fast float %i.adn, %i.acu
  %i.adp = fadd fast float %i.ado, %i.acv
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adg, i64 4
  store float %i.adp, ptr %i.adq, align 4, !tbaa !39
  %i.adr = getelementptr inbounds [4 x i8], ptr %i.adg, i64 %i.aap
  br label %_ZN4ncnn3MatD2Ev.exit.split.us.1.i

_ZN4ncnn3MatD2Ev.exit.split.us.1.i:               ; preds = %bb.by, %_ZN4ncnn3MatD2Ev.exit.split.us.preheader.i
  %.1.us.i = phi ptr [ %i.adg, %_ZN4ncnn3MatD2Ev.exit.split.us.preheader.i ], [ %i.adr, %bb.by ] ; 2 uses
  %i.ads = or disjoint i32 %i.adb, 1
  %.not725.us.1.i = icmp slt i32 %i.ads, %i.bz
  br i1 %.not725.us.1.i, label %bb.bz, label %.split.us175.i

bb.bz:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us.1.i
  %i.adt = fadd fast float %i.acc, %i.aas         ; 2 uses
  %i.adu = fadd fast float %i.adt, %i.abq
  %i.adv = fadd fast float %i.adu, %i.aco
  store float %i.adv, ptr %.1.us.i, align 4, !tbaa !39
  %i.adw = fadd fast float %i.adt, %i.acu
  %i.adx = fadd fast float %i.aco, %i.acv
  %i.ady = fsub fast float %i.adw, %i.adx
  %i.adz = fadd fast float %i.ady, %i.acw
  %i.aea = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 4
  store float %i.adz, ptr %i.aea, align 4, !tbaa !39
  br label %.split.us175.i

.split.us175.i:                                   ; preds = %bb.cb, %_ZN4ncnn3MatD2Ev.exit.split.1.i, %bb.bz, %_ZN4ncnn3MatD2Ev.exit.split.us.1.i
  %indvars.iv.next268.i = add nuw nsw i64 %indvars.iv267.i, 1 ; 2 uses
  %exitcond271.not.i = icmp eq i64 %indvars.iv.next268.i, %wide.trip.count270.i
  br i1 %exitcond271.not.i, label %._crit_edge179.i, label %_ZN4ncnn3MatD2Ev.exit.i, !llvm.loop !901

bb.ca:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.preheader.i
  %i.aeb = fadd fast float %i.abz, %i.aas
  %i.aec = fadd fast float %i.aeb, %i.abn
  %i.aed = fadd fast float %i.aec, %i.acl
  store float %i.aed, ptr %i.adg, align 4, !tbaa !39
  %i.aee = getelementptr inbounds [4 x i8], ptr %i.adg, i64 %i.aap
  br label %_ZN4ncnn3MatD2Ev.exit.split.1.i

_ZN4ncnn3MatD2Ev.exit.split.1.i:                  ; preds = %bb.ca, %_ZN4ncnn3MatD2Ev.exit.split.preheader.i
  %.1.i = phi ptr [ %i.adg, %_ZN4ncnn3MatD2Ev.exit.split.preheader.i ], [ %i.aee, %bb.ca ]
  %i.aef = or disjoint i32 %i.adb, 1
  %.not725.1.i = icmp slt i32 %i.aef, %i.bz
  br i1 %.not725.1.i, label %bb.cb, label %.split.us175.i

bb.cb:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.1.i
  %i.aeg = fadd fast float %i.acc, %i.aas
  %i.aeh = fadd fast float %i.aeg, %i.abq
  %i.aei = fadd fast float %i.aeh, %i.aco
  store float %i.aei, ptr %.1.i, align 4, !tbaa !39
  br label %.split.us175.i

._crit_edge179.i:                                 ; preds = %.split.us175.i, %bb.bx
  %indvars.iv.next273.i = add nsw i64 %indvars.iv272.i, 1 ; 2 uses
  %exitcond276.not.i = icmp eq i64 %indvars.iv.next273.i, %i.bm
  br i1 %exitcond276.not.i, label %_ZN4ncnnL42conv3x3s1_winograd23_transform_output_tileERKNS_3MatERS0_S2_iiii.exit, label %bb.bv, !llvm.loop !902

.noexc:                                           ; preds = %.noexc.preheader, %.noexc
  %i.aej = phi i32 [ %i.agg, %.noexc ], [ %.pre172, %.noexc.preheader ] ; 2 uses
  %i.aek = phi i32 [ %i.agi, %.noexc ], [ %i.bw, %.noexc.preheader ]
  %.0154 = phi i32 [ %i.agh, %.noexc ], [ 0, %.noexc.preheader ] ; 4 uses
  %i.ael = sub nsw i32 %i.aek, %.0154
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.aej, i32 %i.ael)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  %i.aem = load i32, ptr %3, align 4, !tbaa !67
  %i.aen = sdiv i32 %i.au, %i.aem
  %i.aeo = load ptr, ptr %10, align 8, !tbaa !18, !noalias !903
  %i.aep = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !903
  %i.aeq = sext i32 %i.aen to i64
  %i.aer = mul i64 %i.aep, %i.aeq
  %i.aes = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !903 ; 3 uses
  %i.aet = mul i64 %i.aer, %i.aes
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aeo, i64 %i.aet
  %i.aev = load i32, ptr %i.r, align 8, !tbaa !66, !noalias !903
  %i.aew = load ptr, ptr %i.s, align 8, !tbaa !17, !noalias !903
  %i.aex = sdiv i32 %.0154, %i.aej
  %i.aey = sext i32 %i.aex to i64                 ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !11, !alias.scope !906
  store i64 %i.aes, ptr %i.u, align 8, !tbaa !65, !alias.scope !906
  store i32 %i.aev, ptr %i.v, align 8, !tbaa !66, !alias.scope !906
  store ptr %i.aew, ptr %i.w, align 8, !tbaa !17, !alias.scope !906
  %i.aez = load <2 x i32>, ptr %i.n, align 4, !tbaa !67, !noalias !903
  %i.afa = load i32, ptr %i.o, align 8, !tbaa !76, !noalias !903
  %i.afb = load i32, ptr %i.n, align 4, !tbaa !75, !noalias !903
  %i.afc = sext i32 %i.afb to i64
  %i.afd = sext i32 %i.afa to i64
  %i.afe = mul nsw i64 %i.afd, %i.afc             ; 2 uses
  %i.aff = mul i64 %i.aes, %i.afe
  %i.afg = mul i64 %i.aff, %i.aey
  %i.afh = getelementptr inbounds nuw i8, ptr %i.aeu, i64 %i.afg
  store ptr %i.afh, ptr %14, align 8, !tbaa !18, !alias.scope !906
  %i.afi = shufflevector <2 x i32> %i.aez, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.afj = shufflevector <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, <4 x i32> %i.afi, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i32> %i.afj, ptr %i.x, align 8, !tbaa !67, !alias.scope !906
  store i32 1, ptr %i.y, align 8, !tbaa !68, !alias.scope !906
  store i64 %i.afe, ptr %i.z, align 8, !tbaa !20, !alias.scope !906
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #12
  %i.afk = load i32, ptr %7, align 4, !tbaa !67
  %i.afl = sdiv i32 %.044160, %i.afk
  %i.afm = load ptr, ptr %11, align 8, !tbaa !18, !noalias !909
  %i.afn = load i64, ptr %i.ac, align 8, !tbaa !20, !noalias !909
  %i.afo = sext i32 %i.afl to i64
  %i.afp = mul i64 %i.afn, %i.afo
  %i.afq = load i64, ptr %i.ad, align 8, !tbaa !65, !noalias !909 ; 3 uses
  %i.afr = mul i64 %i.afp, %i.afq
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afm, i64 %i.afr
  %i.aft = load i32, ptr %i.ae, align 8, !tbaa !66, !noalias !909
  %i.afu = load ptr, ptr %i.af, align 8, !tbaa !17, !noalias !909
  store ptr null, ptr %i.ag, align 8, !tbaa !11
  store i64 %i.afq, ptr %i.ah, align 8, !tbaa !65
  store i32 %i.aft, ptr %i.ai, align 8, !tbaa !66
  store ptr %i.afu, ptr %i.aj, align 8, !tbaa !17
  %i.afv = load <2 x i32>, ptr %i.aa, align 4, !tbaa !67, !noalias !909
  %i.afw = load i32, ptr %i.ab, align 8, !tbaa !76, !noalias !909
  %i.afx = load i32, ptr %i.aa, align 4, !tbaa !75, !noalias !909
  %i.afy = sext i32 %i.afx to i64
  %i.afz = sext i32 %i.afw to i64
  %i.aga = mul nsw i64 %i.afz, %i.afy             ; 2 uses
  %i.agb = mul i64 %i.afq, %i.aga
  %i.agc = mul i64 %i.agb, %i.aey
  %i.agd = getelementptr inbounds nuw i8, ptr %i.afs, i64 %i.agc
  store ptr %i.agd, ptr %15, align 8, !tbaa !18
  %i.age = shufflevector <2 x i32> %i.afv, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.agf = shufflevector <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, <4 x i32> %i.age, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i32> %i.agf, ptr %i.ak, align 8, !tbaa !67
  store i32 1, ptr %i.al, align 8, !tbaa !68
  store i64 %i.aga, ptr %i.am, align 8, !tbaa !20, !alias.scope !912
  call fastcc void @_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %14, ptr noundef nonnull align 8 dereferenceable(72) %15, ptr %i.bc, i32 noundef 16, i32 noundef %.sroa.speculated121, i32 noundef %.sroa.speculated117, i32 noundef %.0154, i32 noundef %.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  %i.agg = load i32, ptr %9, align 4, !tbaa !67   ; 2 uses
  %i.agh = add nsw i32 %i.agg, %.0154             ; 2 uses
  %i.agi = load i32, ptr %8, align 4, !tbaa !67   ; 2 uses
  %i.agj = icmp slt i32 %i.agh, %i.agi
  br i1 %i.agj, label %.noexc, label %._crit_edge, !llvm.loop !915

_ZN4ncnnL42conv3x3s1_winograd23_transform_output_tileERKNS_3MatERS0_S2_iiii.exit: ; preds = %._crit_edge179.i, %.preheader.i
  %i.agk = load i32, ptr %7, align 4, !tbaa !67   ; 2 uses
  %i.agl = add nsw i32 %i.agk, %.044160           ; 2 uses
  %i.agm = load i32, ptr %6, align 4, !tbaa !67   ; 2 uses
  %i.agn = icmp slt i32 %i.agl, %i.agm
  br i1 %i.agn, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !916

._crit_edge166:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.cc

bb.cc:                                            ; preds = %._crit_edge166, %bb.a
  ret void

bb.cd:                                            ; preds = %bb.c
  %i.ago = landingpad { ptr, i32 }
          catch ptr null
  %i.agp = extractvalue { ptr, i32 } %i.ago, 0
  call void @__clang_call_terminate(ptr %i.agp) #36
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr nofree %.0.val, i32 noundef range(i32 16, 65) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #20 {
bb.a:
  %i.a = icmp sgt i32 %3, 15
  br i1 %i.a, label %.preheader523.lr.ph, label %.preheader518

.preheader523.lr.ph:                              ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = icmp sgt i32 %4, 15
  %i.g = icmp eq i32 %5, 0                        ; 6 uses
  %i.h = icmp sgt i32 %6, 0                       ; 5 uses
  %i.i = add i32 %6, -1                           ; 2 uses
  %i.j = zext i32 %i.i to i64                     ; 5 uses
  %i.k = shl nuw nsw i64 %i.j, 6
  %i.l = and i32 %4, -16
  %i.m = shl nuw nsw i64 %i.j, 5
  %i.n = shl nuw nsw i64 %i.j, 4
  %i.o = shl nuw nsw i64 %i.j, 3
  %i.p = add nsw i32 %4, -1                       ; 2 uses
  %i.q = shl nuw nsw i64 %i.j, 2
  %i.r = zext nneg i32 %3 to i64
  %i.s = sext i32 %6 to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  %xtraiter = and i32 %6, 1
  %i.t = icmp eq i32 %6, 1
  %unroll_iter = and i32 %6, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod2310 = trunc i32 %6 to i1
  %xtraiter2311 = and i32 %6, 3                   ; 3 uses
  %i.u = icmp ult i32 %i.i, 3
  %unroll_iter2315 = and i32 %6, 2147483644
  %lcmp.mod2312.not = icmp eq i32 %xtraiter2311, 0
  %lcmp.mod2314 = icmp ne i32 %xtraiter2311, 0
  br label %.preheader523

.preheader523:                                    ; preds = %.preheader523.lr.ph, %bb.b
  %indvars.iv1403 = phi i64 [ 0, %.preheader523.lr.ph ], [ %indvars.iv.next1404, %bb.b ] ; 2 uses
  %.0922660 = phi ptr [ %.0.val, %.preheader523.lr.ph ], [ %.6928.lcssa, %bb.b ]
  %i.v = mul nsw i64 %indvars.iv1403, %i.s
  br label %bb.c

.preheader518.loopexit:                           ; preds = %bb.b
  %i.w = trunc nuw nsw i64 %indvars.iv.next1404 to i32
  br label %.preheader518

.preheader518:                                    ; preds = %.preheader518.loopexit, %bb.a
  %.0932.lcssa = phi i32 [ 0, %bb.a ], [ %i.w, %.preheader518.loopexit ] ; 3 uses
  %.0922.lcssa = phi ptr [ %.0.val, %bb.a ], [ %.6928.lcssa, %.preheader518.loopexit ] ; 2 uses
  %i.x = or disjoint i32 %.0932.lcssa, 7
  %i.y = icmp slt i32 %i.x, %3
  br i1 %i.y, label %.preheader517.lr.ph, label %.preheader512

.preheader517.lr.ph:                              ; preds = %.preheader518
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = icmp sgt i32 %4, 15
  %i.ae = icmp eq i32 %5, 0                       ; 6 uses
  %i.af = icmp sgt i32 %6, 0                      ; 5 uses
  %i.ag = add i32 %6, -1
  %i.ah = zext i32 %i.ag to i64                   ; 5 uses
  %i.ai = shl nuw nsw i64 %i.ah, 6
  %i.aj = and i32 %4, -16
  %i.ak = shl nuw nsw i64 %i.ah, 5
  %i.al = shl nuw nsw i64 %i.ah, 4
  %i.am = shl nuw nsw i64 %i.ah, 3
  %i.an = add nsw i32 %4, -1                      ; 2 uses
  %i.ao = shl nuw nsw i64 %i.ah, 2
  %i.ap = zext nneg i32 %.0932.lcssa to i64
  %i.aq = sext i32 %3 to i64
  %i.ar = sext i32 %6 to i64
  %wide.trip.count1424 = zext nneg i32 %2 to i64
  %invariant.op = add nsw i64 %i.aq, -7
  %i.as = add i32 %6, -1                          ; 2 uses
  %xtraiter2317 = and i32 %6, 1
  %i.at = icmp eq i32 %i.as, 0
  %unroll_iter2323 = and i32 %6, 2147483646
  %lcmp.mod2319.not = icmp eq i32 %xtraiter2317, 0
  %lcmp.mod2322 = trunc i32 %6 to i1
  %xtraiter2325 = and i32 %6, 3                   ; 3 uses
  %i.au = icmp ult i32 %i.as, 3
  %unroll_iter2330 = and i32 %6, 2147483644
  %lcmp.mod2327.not = icmp eq i32 %xtraiter2325, 0
  %lcmp.mod2329 = icmp ne i32 %xtraiter2325, 0
  br label %.preheader517

bb.b:                                             ; preds = %._crit_edge650
  %indvars.iv.next1404 = add nuw nsw i64 %indvars.iv1403, 16 ; 3 uses
end_hunk_5
begin_hunk_6_@_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii:bb.a
  %i.bep = or disjoint i32 %i.beo, 1
  %i.beq = icmp slt i32 %i.bep, %4
  br i1 %i.beq, label %.lr.ph1040, label %.preheader501, !llvm.loop !966

.lr.ph1058:                                       ; preds = %.lr.ph1058.preheader, %._crit_edge1051
  %.271057 = phi ptr [ %i.bgx, %._crit_edge1051 ], [ %.26.lcssa, %.lr.ph1058.preheader ] ; 5 uses
  %.410041056 = phi i32 [ %i.bgy, %._crit_edge1051 ], [ %.31003.lcssa, %.lr.ph1058.preheader ]
  %.810131055 = phi ptr [ %.91014.lcssa, %._crit_edge1051 ], [ %.61011.lcssa, %.lr.ph1058.preheader ] ; 7 uses
  br i1 %i.adl, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.lr.ph1058
  %i.ber = load float, ptr %.271057, align 4, !tbaa !39
  %i.bes = getelementptr inbounds nuw i8, ptr %.271057, i64 4
  %i.bet = load float, ptr %i.bes, align 4, !tbaa !39
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph1058, %bb.as
  %.0909 = phi nsz float [ %i.ber, %bb.as ], [ 0.000000e+00, %.lr.ph1058 ] ; 4 uses
  %.0907 = phi nsz float [ %i.bet, %bb.as ], [ 0.000000e+00, %.lr.ph1058 ] ; 4 uses
  br i1 %i.adm, label %iter.check, label %._crit_edge1051

iter.check:                                       ; preds = %bb.at
  br i1 %min.iters.check, label %.lr.ph1050.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check1859, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.beu = getelementptr i8, ptr %.810131055, i64 %i.aej
  %i.bev = insertelement <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.0907, i64 0
  %i.bew = insertelement <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.0909, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <16 x float> [ %i.bev, %vector.ph ], [ %i.bfr, %vector.body ]
  %vec.phi1860 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.bfs, %vector.body ]
  %vec.phi1861 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.bft, %vector.body ]
  %vec.phi1862 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.bfu, %vector.body ]
  %vec.phi1863 = phi <16 x float> [ %i.bew, %vector.ph ], [ %i.bfj, %vector.body ]
  %vec.phi1864 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.bfk, %vector.body ]
  %vec.phi1865 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.bfl, %vector.body ]
  %vec.phi1866 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.bfm, %vector.body ]
  %i.bex = shl i64 %index, 3                      ; 4 uses
  %next.gep = getelementptr i8, ptr %i.atv, i64 %i.bex
  %i.bey = getelementptr i8, ptr %i.atv, i64 %i.bex
  %next.gep1867 = getelementptr i8, ptr %i.bey, i64 128
  %i.bez = getelementptr i8, ptr %i.atv, i64 %i.bex
  %next.gep1868 = getelementptr i8, ptr %i.bez, i64 256
  %i.bfa = getelementptr i8, ptr %i.atv, i64 %i.bex
  %next.gep1869 = getelementptr i8, ptr %i.bfa, i64 384
  %i.bfb = shl i64 %index, 2
  %next.gep1870 = getelementptr i8, ptr %.810131055, i64 %i.bfb ; 4 uses
  %wide.vec = load <32 x float>, ptr %next.gep, align 4, !tbaa !39 ; 2 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec1871 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %wide.vec1872 = load <32 x float>, ptr %next.gep1867, align 4, !tbaa !39 ; 2 uses
  %strided.vec1873 = shufflevector <32 x float> %wide.vec1872, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec1874 = shufflevector <32 x float> %wide.vec1872, <32 x float> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %wide.vec1875 = load <32 x float>, ptr %next.gep1868, align 4, !tbaa !39 ; 2 uses
  %strided.vec1876 = shufflevector <32 x float> %wide.vec1875, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec1877 = shufflevector <32 x float> %wide.vec1875, <32 x float> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %wide.vec1878 = load <32 x float>, ptr %next.gep1869, align 4, !tbaa !39 ; 2 uses
  %strided.vec1879 = shufflevector <32 x float> %wide.vec1878, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec1880 = shufflevector <32 x float> %wide.vec1878, <32 x float> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.bfc = getelementptr i8, ptr %next.gep1870, i64 64
  %i.bfd = getelementptr i8, ptr %next.gep1870, i64 128
  %i.bfe = getelementptr i8, ptr %next.gep1870, i64 192
  %wide.load = load <16 x float>, ptr %next.gep1870, align 4, !tbaa !39 ; 2 uses
  %wide.load1881 = load <16 x float>, ptr %i.bfc, align 4, !tbaa !39 ; 2 uses
  %wide.load1882 = load <16 x float>, ptr %i.bfd, align 4, !tbaa !39 ; 2 uses
  %wide.load1883 = load <16 x float>, ptr %i.bfe, align 4, !tbaa !39 ; 2 uses
  %i.bff = fmul fast <16 x float> %wide.load, %strided.vec
  %i.bfg = fmul fast <16 x float> %wide.load1881, %strided.vec1873
  %i.bfh = fmul fast <16 x float> %wide.load1882, %strided.vec1876
  %i.bfi = fmul fast <16 x float> %wide.load1883, %strided.vec1879
  %i.bfj = fadd fast <16 x float> %i.bff, %vec.phi1863 ; 2 uses
  %i.bfk = fadd fast <16 x float> %i.bfg, %vec.phi1864 ; 2 uses
  %i.bfl = fadd fast <16 x float> %i.bfh, %vec.phi1865 ; 2 uses
  %i.bfm = fadd fast <16 x float> %i.bfi, %vec.phi1866 ; 2 uses
  %i.bfn = fmul fast <16 x float> %strided.vec1871, %wide.load
  %i.bfo = fmul fast <16 x float> %strided.vec1874, %wide.load1881
  %i.bfp = fmul fast <16 x float> %strided.vec1877, %wide.load1882
  %i.bfq = fmul fast <16 x float> %strided.vec1880, %wide.load1883
  %i.bfr = fadd fast <16 x float> %i.bfn, %vec.phi ; 2 uses
  %i.bfs = fadd fast <16 x float> %i.bfo, %vec.phi1860 ; 2 uses
  %i.bft = fadd fast <16 x float> %i.bfp, %vec.phi1861 ; 2 uses
  %i.bfu = fadd fast <16 x float> %i.bfq, %vec.phi1862 ; 2 uses
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.bfv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bfv, label %middle.block, label %vector.body, !llvm.loop !967

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <16 x float> %i.bfs, %i.bfr
  %bin.rdx1884 = fadd fast <16 x float> %i.bft, %bin.rdx
  %bin.rdx1885 = fadd fast <16 x float> %i.bfu, %bin.rdx1884
  %i.bfw = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1885) ; 3 uses
  %bin.rdx1886 = fadd fast <16 x float> %i.bfk, %i.bfj
  %bin.rdx1887 = fadd fast <16 x float> %i.bfl, %bin.rdx1886
  %bin.rdx1888 = fadd fast <16 x float> %i.bfm, %bin.rdx1887
  %i.bfx = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1888) ; 3 uses
  br i1 %cmp.n, label %._crit_edge1051.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph1050.preheader, label %vec.epilog.ph, !prof !216

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.bfw, %vec.epilog.iter.check ], [ %.0907, %vector.main.loop.iter.check ]
  %bc.merge.rdx1889 = phi float [ %i.bfx, %vec.epilog.iter.check ], [ %.0909, %vector.main.loop.iter.check ]
  %i.bfy = getelementptr i8, ptr %.810131055, i64 %i.aem
  %i.bfz = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  %i.bga = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1889, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1893 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1902, %vec.epilog.vector.body ] ; 3 uses
  %vec.phi1894 = phi <8 x float> [ %i.bfz, %vec.epilog.ph ], [ %i.bgg, %vec.epilog.vector.body ]
  %vec.phi1895 = phi <8 x float> [ %i.bga, %vec.epilog.ph ], [ %i.bge, %vec.epilog.vector.body ]
  %i.bgb = shl i64 %index1893, 3
  %next.gep1896 = getelementptr i8, ptr %i.atv, i64 %i.bgb
  %i.bgc = shl i64 %index1893, 2
  %next.gep1897 = getelementptr i8, ptr %.810131055, i64 %i.bgc
  %wide.vec1898 = load <16 x float>, ptr %next.gep1896, align 4, !tbaa !39 ; 2 uses
  %strided.vec1899 = shufflevector <16 x float> %wide.vec1898, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec1900 = shufflevector <16 x float> %wide.vec1898, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.load1901 = load <8 x float>, ptr %next.gep1897, align 4, !tbaa !39 ; 2 uses
  %i.bgd = fmul fast <8 x float> %wide.load1901, %strided.vec1899
  %i.bge = fadd fast <8 x float> %i.bgd, %vec.phi1895 ; 2 uses
  %i.bgf = fmul fast <8 x float> %strided.vec1900, %wide.load1901
  %i.bgg = fadd fast <8 x float> %i.bgf, %vec.phi1894 ; 2 uses
  %index.next1902 = add nuw i64 %index1893, 8     ; 2 uses
  %i.bgh = icmp eq i64 %index.next1902, %n.vec1892
  br i1 %i.bgh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !968

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bgi = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.bgg) ; 2 uses
  %i.bgj = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.bge) ; 2 uses
  br i1 %cmp.n1903, label %._crit_edge1051.loopexit, label %.lr.ph1050.preheader

.lr.ph1050.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09061048.ph = phi i32 [ 0, %iter.check ], [ %i.aeh, %vec.epilog.iter.check ], [ %i.aek, %vec.epilog.middle.block ]
  %.19081047.ph = phi float [ %.0907, %iter.check ], [ %i.bfw, %vec.epilog.iter.check ], [ %i.bgi, %vec.epilog.middle.block ]
  %.19101046.ph = phi float [ %.0909, %iter.check ], [ %i.bfx, %vec.epilog.iter.check ], [ %i.bgj, %vec.epilog.middle.block ]
  %.09111045.ph = phi ptr [ %i.atv, %iter.check ], [ %i.bbo, %vec.epilog.iter.check ], [ %i.bbp, %vec.epilog.middle.block ]
  %.910141044.ph = phi ptr [ %.810131055, %iter.check ], [ %i.beu, %vec.epilog.iter.check ], [ %i.bfy, %vec.epilog.middle.block ]
  br label %.lr.ph1050

.lr.ph1050:                                       ; preds = %.lr.ph1050.preheader, %.lr.ph1050
  %.09061048 = phi i32 [ %i.bgu, %.lr.ph1050 ], [ %.09061048.ph, %.lr.ph1050.preheader ]
  %.19081047 = phi float [ %i.bgr, %.lr.ph1050 ], [ %.19081047.ph, %.lr.ph1050.preheader ]
  %.19101046 = phi float [ %i.bgn, %.lr.ph1050 ], [ %.19101046.ph, %.lr.ph1050.preheader ]
  %.09111045 = phi ptr [ %i.bgs, %.lr.ph1050 ], [ %.09111045.ph, %.lr.ph1050.preheader ] ; 3 uses
  %.910141044 = phi ptr [ %i.bgt, %.lr.ph1050 ], [ %.910141044.ph, %.lr.ph1050.preheader ] ; 2 uses
  %i.bgk = load float, ptr %.09111045, align 4, !tbaa !39
  %i.bgl = load float, ptr %.910141044, align 4, !tbaa !39 ; 2 uses
  %i.bgm = fmul fast float %i.bgl, %i.bgk
  %i.bgn = fadd fast float %i.bgm, %.19101046     ; 2 uses
  %i.bgo = getelementptr inbounds nuw i8, ptr %.09111045, i64 4
  %i.bgp = load float, ptr %i.bgo, align 4, !tbaa !39
  %i.bgq = fmul fast float %i.bgp, %i.bgl
  %i.bgr = fadd fast float %i.bgq, %.19081047     ; 2 uses
  %i.bgs = getelementptr inbounds nuw i8, ptr %.09111045, i64 8
  %i.bgt = getelementptr inbounds nuw i8, ptr %.910141044, i64 4
  %i.bgu = add nuw nsw i32 %.09061048, 1          ; 2 uses
  %exitcond1461.not = icmp eq i32 %i.bgu, %6
  br i1 %exitcond1461.not, label %._crit_edge1051.loopexit, label %.lr.ph1050, !llvm.loop !969

._crit_edge1051.loopexit:                         ; preds = %.lr.ph1050, %vec.epilog.middle.block, %middle.block
  %.lcssa1740 = phi float [ %i.bgj, %vec.epilog.middle.block ], [ %i.bfx, %middle.block ], [ %i.bgn, %.lr.ph1050 ]
  %.lcssa1739 = phi float [ %i.bgi, %vec.epilog.middle.block ], [ %i.bfw, %middle.block ], [ %i.bgr, %.lr.ph1050 ]
  %i.bgv = getelementptr i8, ptr %.810131055, i64 %i.adu
  %scevgep1460 = getelementptr i8, ptr %i.bgv, i64 4
  br label %._crit_edge1051

._crit_edge1051:                                  ; preds = %._crit_edge1051.loopexit, %bb.at
  %.91014.lcssa = phi ptr [ %.810131055, %bb.at ], [ %scevgep1460, %._crit_edge1051.loopexit ]
  %.1910.lcssa = phi float [ %.0909, %bb.at ], [ %.lcssa1740, %._crit_edge1051.loopexit ]
  %.1908.lcssa = phi float [ %.0907, %bb.at ], [ %.lcssa1739, %._crit_edge1051.loopexit ]
  store float %.1910.lcssa, ptr %.271057, align 4, !tbaa !39
  %i.bgw = getelementptr inbounds nuw i8, ptr %.271057, i64 4
  store float %.1908.lcssa, ptr %i.bgw, align 4, !tbaa !39
  %i.bgx = getelementptr inbounds nuw i8, ptr %.271057, i64 8 ; 2 uses
  %i.bgy = add nuw nsw i32 %.410041056, 1         ; 2 uses
  %exitcond1462.not = icmp eq i32 %i.bgy, %4
  br i1 %exitcond1462.not, label %._crit_edge1059, label %.lr.ph1058, !llvm.loop !970

._crit_edge1059:                                  ; preds = %._crit_edge1051, %.preheader501
  %.27.lcssa = phi ptr [ %.26.lcssa, %.preheader501 ], [ %i.bgx, %._crit_edge1051 ] ; 3 uses
  %indvars.iv.next1464 = add nuw nsw i64 %indvars.iv1463, 1 ; 2 uses
  %exitcond1467.not = icmp eq i64 %indvars.iv.next1464, %wide.trip.count1466
  br i1 %exitcond1467.not, label %bb.ai, label %bb.aj, !llvm.loop !971

.preheader499:                                    ; preds = %.preheader499.lr.ph, %bb.au
  %indvars.iv1493 = phi i64 [ %i.asv, %.preheader499.lr.ph ], [ %indvars.iv.next1494, %bb.au ] ; 2 uses
  %.281172 = phi ptr [ %.21.lcssa, %.preheader499.lr.ph ], [ %.34.lcssa, %bb.au ]
  %i.bgz = mul nsw i64 %indvars.iv1493, %i.asw
  br label %bb.av

bb.au:                                            ; preds = %._crit_edge1167
  %indvars.iv.next1494 = add nsw i64 %indvars.iv1493, 1 ; 2 uses
  %exitcond1497.not = icmp eq i64 %indvars.iv.next1494, %wide.trip.count1496
  br i1 %exitcond1497.not, label %._crit_edge1173, label %.preheader499, !llvm.loop !972

bb.av:                                            ; preds = %.preheader499, %._crit_edge1167
  %indvars.iv1488 = phi i64 [ 0, %.preheader499 ], [ %indvars.iv.next1489, %._crit_edge1167 ] ; 3 uses
  %.291169 = phi ptr [ %.281172, %.preheader499 ], [ %.34.lcssa, %._crit_edge1167 ] ; 2 uses
  %i.bha = load ptr, ptr %0, align 8, !tbaa !18
  %i.bhb = load i32, ptr %i.asg, align 4, !tbaa !75
  %i.bhc = sext i32 %i.bhb to i64
  %i.bhd = mul nsw i64 %indvars.iv1488, %i.bhc
  %i.bhe = load i64, ptr %i.ash, align 8, !tbaa !65
  %i.bhf = mul i64 %i.bhd, %i.bhe
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.bha, i64 %i.bhf
  %i.bhh = getelementptr inbounds [4 x i8], ptr %i.bhg, i64 %i.bgz ; 16 uses
  %i.bhi = load ptr, ptr %1, align 8, !tbaa !18
  %i.bhj = load i32, ptr %i.asi, align 4, !tbaa !75
  %i.bhk = sext i32 %i.bhj to i64
  %i.bhl = mul nsw i64 %indvars.iv1488, %i.bhk
  %i.bhm = load i64, ptr %i.asj, align 8, !tbaa !65
  %i.bhn = mul i64 %i.bhl, %i.bhm
  %i.bho = getelementptr inbounds nuw i8, ptr %i.bhi, i64 %i.bhn ; 2 uses
  br i1 %i.ask, label %.lr.ph1086, label %.preheader498

.preheader498:                                    ; preds = %._crit_edge1076, %bb.av
  %.30.lcssa = phi ptr [ %.291169, %bb.av ], [ %i.bjw, %._crit_edge1076 ] ; 2 uses
  %.0900.lcssa = phi ptr [ %i.bho, %bb.av ], [ %.1901.lcssa, %._crit_edge1076 ] ; 2 uses
  %.0898.lcssa = phi i32 [ 0, %bb.av ], [ %i.asq, %._crit_edge1076 ] ; 3 uses
  %i.bhp = or disjoint i32 %.0898.lcssa, 7
  %i.bhq = icmp slt i32 %i.bhp, %4
  br i1 %i.bhq, label %.lr.ph1104, label %.preheader497

.lr.ph1086:                                       ; preds = %bb.av, %._crit_edge1076
  %.08981084 = phi i32 [ %i.bjx, %._crit_edge1076 ], [ 0, %bb.av ]
  %.09001083 = phi ptr [ %.1901.lcssa, %._crit_edge1076 ], [ %i.bho, %bb.av ] ; 4 uses
  %.301082 = phi ptr [ %i.bjw, %._crit_edge1076 ], [ %.291169, %bb.av ] ; 9 uses
  br i1 %i.asl, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph1086
  %i.bhr = load <4 x float>, ptr %.301082, align 1, !tbaa !100
  %i.bhs = getelementptr inbounds nuw i8, ptr %.301082, i64 16
  %i.bht = load <4 x float>, ptr %i.bhs, align 1, !tbaa !100
  %i.bhu = getelementptr inbounds nuw i8, ptr %.301082, i64 32
  %i.bhv = load <4 x float>, ptr %i.bhu, align 1, !tbaa !100
  %i.bhw = getelementptr inbounds nuw i8, ptr %.301082, i64 48
  %i.bhx = load <4 x float>, ptr %i.bhw, align 1, !tbaa !100
  br label %bb.ax

bb.ax:                                            ; preds = %.lr.ph1086, %bb.aw
  %.0375 = phi nsz <4 x float> [ %i.bhr, %bb.aw ], [ zeroinitializer, %.lr.ph1086 ] ; 3 uses
  %.0373 = phi nsz <4 x float> [ %i.bht, %bb.aw ], [ zeroinitializer, %.lr.ph1086 ] ; 3 uses
  %.0371 = phi nsz <4 x float> [ %i.bhv, %bb.aw ], [ zeroinitializer, %.lr.ph1086 ] ; 3 uses
  %storemerge1100 = phi <4 x float> [ %i.bhx, %bb.aw ], [ zeroinitializer, %.lr.ph1086 ] ; 3 uses
  br i1 %i.asm, label %.lr.ph1075.preheader, label %._crit_edge1076

.lr.ph1075.preheader:                             ; preds = %bb.ax
  br i1 %i.asy, label %.lr.ph1075.epil.preheader, label %.lr.ph1075

.lr.ph1075:                                       ; preds = %.lr.ph1075.preheader, %.lr.ph1075
  %.08971072 = phi ptr [ %i.bjc, %.lr.ph1075 ], [ %i.bhh, %.lr.ph1075.preheader ] ; 3 uses
  %.19011071 = phi ptr [ %i.bjd, %.lr.ph1075 ], [ %.09001083, %.lr.ph1075.preheader ] ; 9 uses
  %.03701070 = phi <4 x float> [ %i.bjb, %.lr.ph1075 ], [ %storemerge1100, %.lr.ph1075.preheader ]
  %.13721069 = phi <4 x float> [ %i.bja, %.lr.ph1075 ], [ %.0371, %.lr.ph1075.preheader ]
  %.13741068 = phi <4 x float> [ %i.biz, %.lr.ph1075 ], [ %.0373, %.lr.ph1075.preheader ]
  %.13761067 = phi <4 x float> [ %i.biy, %.lr.ph1075 ], [ %.0375, %.lr.ph1075.preheader ]
  %niter2374 = phi i32 [ %niter2374.next.1, %.lr.ph1075 ], [ 0, %.lr.ph1075.preheader ]
  %i.bhy = load float, ptr %.08971072, align 4, !tbaa !39
  %i.bhz = insertelement <4 x float> poison, float %i.bhy, i64 0
  %i.bia = shufflevector <4 x float> %i.bhz, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bib = load <4 x float>, ptr %.19011071, align 16, !tbaa !100
  %i.bic = getelementptr inbounds nuw i8, ptr %.19011071, i64 16
  %i.bid = load <4 x float>, ptr %i.bic, align 16, !tbaa !100
  %i.bie = getelementptr inbounds nuw i8, ptr %.19011071, i64 32
  %i.bif = load <4 x float>, ptr %i.bie, align 16, !tbaa !100
  %i.big = getelementptr inbounds nuw i8, ptr %.19011071, i64 48
  %i.bih = load <4 x float>, ptr %i.big, align 16, !tbaa !100
  %i.bii = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bia, <4 x float> nofpclass(nan inf) %i.bib, <4 x float> nofpclass(nan inf) %.13761067)
  %i.bij = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bia, <4 x float> nofpclass(nan inf) %i.bid, <4 x float> nofpclass(nan inf) %.13741068)
  %i.bik = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bia, <4 x float> nofpclass(nan inf) %i.bif, <4 x float> nofpclass(nan inf) %.13721069)
  %i.bil = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bia, <4 x float> nofpclass(nan inf) %i.bih, <4 x float> nofpclass(nan inf) %.03701070)
  %i.bim = getelementptr inbounds nuw i8, ptr %.08971072, i64 4
  %i.bin = getelementptr inbounds nuw i8, ptr %.19011071, i64 64
  %i.bio = load float, ptr %i.bim, align 4, !tbaa !39
  %i.bip = insertelement <4 x float> poison, float %i.bio, i64 0
  %i.biq = shufflevector <4 x float> %i.bip, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bir = load <4 x float>, ptr %i.bin, align 16, !tbaa !100
  %i.bis = getelementptr inbounds nuw i8, ptr %.19011071, i64 80
  %i.bit = load <4 x float>, ptr %i.bis, align 16, !tbaa !100
  %i.biu = getelementptr inbounds nuw i8, ptr %.19011071, i64 96
  %i.biv = load <4 x float>, ptr %i.biu, align 16, !tbaa !100
  %i.biw = getelementptr inbounds nuw i8, ptr %.19011071, i64 112
  %i.bix = load <4 x float>, ptr %i.biw, align 16, !tbaa !100
  %i.biy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.biq, <4 x float> nofpclass(nan inf) %i.bir, <4 x float> nofpclass(nan inf) %i.bii) ; 3 uses
  %i.biz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.biq, <4 x float> nofpclass(nan inf) %i.bit, <4 x float> nofpclass(nan inf) %i.bij) ; 3 uses
  %i.bja = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.biq, <4 x float> nofpclass(nan inf) %i.biv, <4 x float> nofpclass(nan inf) %i.bik) ; 3 uses
  %i.bjb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.biq, <4 x float> nofpclass(nan inf) %i.bix, <4 x float> nofpclass(nan inf) %i.bil) ; 3 uses
  %i.bjc = getelementptr inbounds nuw i8, ptr %.08971072, i64 8 ; 2 uses
  %i.bjd = getelementptr inbounds nuw i8, ptr %.19011071, i64 128 ; 2 uses
  %niter2374.next.1 = add nuw nsw i32 %niter2374, 2 ; 2 uses
  %niter2374.ncmp.1 = icmp eq i32 %niter2374.next.1, %unroll_iter2373
  br i1 %niter2374.ncmp.1, label %._crit_edge1076.loopexit.unr-lcssa, label %.lr.ph1075, !llvm.loop !973

._crit_edge1076.loopexit.unr-lcssa:               ; preds = %.lr.ph1075
  br i1 %lcmp.mod2367.not, label %._crit_edge1076.loopexit, label %.lr.ph1075.epil.preheader

.lr.ph1075.epil.preheader:                        ; preds = %._crit_edge1076.loopexit.unr-lcssa, %.lr.ph1075.preheader
  %.08971072.epil.init = phi ptr [ %i.bhh, %.lr.ph1075.preheader ], [ %i.bjc, %._crit_edge1076.loopexit.unr-lcssa ]
  %.19011071.epil.init = phi ptr [ %.09001083, %.lr.ph1075.preheader ], [ %i.bjd, %._crit_edge1076.loopexit.unr-lcssa ] ; 4 uses
  %.03701070.epil.init = phi <4 x float> [ %storemerge1100, %.lr.ph1075.preheader ], [ %i.bjb, %._crit_edge1076.loopexit.unr-lcssa ]
  %.13721069.epil.init = phi <4 x float> [ %.0371, %.lr.ph1075.preheader ], [ %i.bja, %._crit_edge1076.loopexit.unr-lcssa ]
  %.13741068.epil.init = phi <4 x float> [ %.0373, %.lr.ph1075.preheader ], [ %i.biz, %._crit_edge1076.loopexit.unr-lcssa ]
  %.13761067.epil.init = phi <4 x float> [ %.0375, %.lr.ph1075.preheader ], [ %i.biy, %._crit_edge1076.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2372)
  %i.bje = load float, ptr %.08971072.epil.init, align 4, !tbaa !39
  %i.bjf = insertelement <4 x float> poison, float %i.bje, i64 0
  %i.bjg = shufflevector <4 x float> %i.bjf, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bjh = load <4 x float>, ptr %.19011071.epil.init, align 16, !tbaa !100
  %i.bji = getelementptr inbounds nuw i8, ptr %.19011071.epil.init, i64 16
  %i.bjj = load <4 x float>, ptr %i.bji, align 16, !tbaa !100
  %i.bjk = getelementptr inbounds nuw i8, ptr %.19011071.epil.init, i64 32
  %i.bjl = load <4 x float>, ptr %i.bjk, align 16, !tbaa !100
  %i.bjm = getelementptr inbounds nuw i8, ptr %.19011071.epil.init, i64 48
  %i.bjn = load <4 x float>, ptr %i.bjm, align 16, !tbaa !100
  %i.bjo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bjg, <4 x float> nofpclass(nan inf) %i.bjh, <4 x float> nofpclass(nan inf) %.13761067.epil.init)
  %i.bjp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bjg, <4 x float> nofpclass(nan inf) %i.bjj, <4 x float> nofpclass(nan inf) %.13741068.epil.init)
  %i.bjq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bjg, <4 x float> nofpclass(nan inf) %i.bjl, <4 x float> nofpclass(nan inf) %.13721069.epil.init)
  %i.bjr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bjg, <4 x float> nofpclass(nan inf) %i.bjn, <4 x float> nofpclass(nan inf) %.03701070.epil.init)
  br label %._crit_edge1076.loopexit

._crit_edge1076.loopexit:                         ; preds = %._crit_edge1076.loopexit.unr-lcssa, %.lr.ph1075.epil.preheader
  %.lcssa2111 = phi <4 x float> [ %i.biy, %._crit_edge1076.loopexit.unr-lcssa ], [ %i.bjo, %.lr.ph1075.epil.preheader ]
  %.lcssa2110 = phi <4 x float> [ %i.biz, %._crit_edge1076.loopexit.unr-lcssa ], [ %i.bjp, %.lr.ph1075.epil.preheader ]
  %.lcssa2109 = phi <4 x float> [ %i.bja, %._crit_edge1076.loopexit.unr-lcssa ], [ %i.bjq, %.lr.ph1075.epil.preheader ]
  %.lcssa = phi <4 x float> [ %i.bjb, %._crit_edge1076.loopexit.unr-lcssa ], [ %i.bjr, %.lr.ph1075.epil.preheader ]
  %i.bjs = getelementptr i8, ptr %.09001083, i64 %i.asp
  %scevgep1471 = getelementptr i8, ptr %i.bjs, i64 64
  br label %._crit_edge1076

._crit_edge1076:                                  ; preds = %._crit_edge1076.loopexit, %bb.ax
  %.1376.lcssa = phi <4 x float> [ %.0375, %bb.ax ], [ %.lcssa2111, %._crit_edge1076.loopexit ]
  %.1374.lcssa = phi <4 x float> [ %.0373, %bb.ax ], [ %.lcssa2110, %._crit_edge1076.loopexit ]
  %.1372.lcssa = phi <4 x float> [ %.0371, %bb.ax ], [ %.lcssa2109, %._crit_edge1076.loopexit ]
  %.0370.lcssa = phi <4 x float> [ %storemerge1100, %bb.ax ], [ %.lcssa, %._crit_edge1076.loopexit ]
  %.1901.lcssa = phi ptr [ %.09001083, %bb.ax ], [ %scevgep1471, %._crit_edge1076.loopexit ] ; 2 uses
  store <4 x float> %.1376.lcssa, ptr %.301082, align 1, !tbaa !100
  %i.bjt = getelementptr inbounds nuw i8, ptr %.301082, i64 16
  store <4 x float> %.1374.lcssa, ptr %i.bjt, align 1, !tbaa !100
  %i.bju = getelementptr inbounds nuw i8, ptr %.301082, i64 32
  store <4 x float> %.1372.lcssa, ptr %i.bju, align 1, !tbaa !100
  %i.bjv = getelementptr inbounds nuw i8, ptr %.301082, i64 48
  store <4 x float> %.0370.lcssa, ptr %i.bjv, align 1, !tbaa !100
  %i.bjw = getelementptr inbounds nuw i8, ptr %.301082, i64 64 ; 2 uses
  %i.bjx = add nuw nsw i32 %.08981084, 16         ; 2 uses
  %i.bjy = or disjoint i32 %i.bjx, 15
  %i.bjz = icmp slt i32 %i.bjy, %4
  br i1 %i.bjz, label %.lr.ph1086, label %.preheader498, !llvm.loop !974

.preheader497:                                    ; preds = %._crit_edge1097, %.preheader498
  %.31.lcssa = phi ptr [ %.30.lcssa, %.preheader498 ], [ %i.bnr, %._crit_edge1097 ] ; 5 uses
  %.2902.lcssa = phi ptr [ %.0900.lcssa, %.preheader498 ], [ %.3903.lcssa, %._crit_edge1097 ] ; 4 uses
  %.1899.lcssa = phi i32 [ %.0898.lcssa, %.preheader498 ], [ %i.bns, %._crit_edge1097 ] ; 9 uses
  %i.bka = or disjoint i32 %.1899.lcssa, 3
  %i.bkb = icmp slt i32 %i.bka, %4
  br i1 %i.bkb, label %.lr.ph1120, label %.preheader496

.lr.ph1120:                                       ; preds = %.preheader497
  br i1 %i.asm, label %.lr.ph1120.split.us, label %.lr.ph1120.split

.lr.ph1120.split.us:                              ; preds = %.lr.ph1120, %._crit_edge1114.us
  %.21119.us = phi i32 [ %i.blo, %._crit_edge1114.us ], [ %.1899.lcssa, %.lr.ph1120 ]
  %.49041118.us = phi ptr [ %scevgep1481, %._crit_edge1114.us ], [ %.2902.lcssa, %.lr.ph1120 ] ; 3 uses
  %.321117.us = phi ptr [ %i.bln, %._crit_edge1114.us ], [ %.31.lcssa, %.lr.ph1120 ] ; 3 uses
  br i1 %i.asl, label %.lr.ph1113.us.preheader, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph1120.split.us
  %i.bkc = load <4 x float>, ptr %.321117.us, align 1, !tbaa !100
  br label %.lr.ph1113.us.preheader

.lr.ph1113.us.preheader:                          ; preds = %bb.ay, %.lr.ph1120.split.us
  %.03501108.us.ph = phi <4 x float> [ zeroinitializer, %.lr.ph1120.split.us ], [ %i.bkc, %bb.ay ] ; 2 uses
  br i1 %i.ata, label %.lr.ph1113.us.epil.preheader, label %.lr.ph1113.us

.lr.ph1113.us:                                    ; preds = %.lr.ph1113.us.preheader, %.lr.ph1113.us
  %.08931110.us = phi ptr [ %i.bld, %.lr.ph1113.us ], [ %i.bhh, %.lr.ph1113.us.preheader ] ; 5 uses
  %.51109.us = phi ptr [ %i.ble, %.lr.ph1113.us ], [ %.49041118.us, %.lr.ph1113.us.preheader ] ; 5 uses
  %.03501108.us = phi <4 x float> [ %i.blc, %.lr.ph1113.us ], [ %.03501108.us.ph, %.lr.ph1113.us.preheader ]
  %niter2389 = phi i32 [ %niter2389.next.3, %.lr.ph1113.us ], [ 0, %.lr.ph1113.us.preheader ]
  %i.bkd = load float, ptr %.08931110.us, align 4, !tbaa !39
  %i.bke = insertelement <4 x float> poison, float %i.bkd, i64 0
  %i.bkf = shufflevector <4 x float> %i.bke, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bkg = load <4 x float>, ptr %.51109.us, align 16, !tbaa !100
  %i.bkh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bkf, <4 x float> nofpclass(nan inf) %i.bkg, <4 x float> nofpclass(nan inf) %.03501108.us)
  %i.bki = getelementptr inbounds nuw i8, ptr %.08931110.us, i64 4
  %i.bkj = getelementptr inbounds nuw i8, ptr %.51109.us, i64 16
  %i.bkk = load float, ptr %i.bki, align 4, !tbaa !39
  %i.bkl = insertelement <4 x float> poison, float %i.bkk, i64 0
  %i.bkm = shufflevector <4 x float> %i.bkl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bkn = load <4 x float>, ptr %i.bkj, align 16, !tbaa !100
  %i.bko = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bkm, <4 x float> nofpclass(nan inf) %i.bkn, <4 x float> nofpclass(nan inf) %i.bkh)
  %i.bkp = getelementptr inbounds nuw i8, ptr %.08931110.us, i64 8
  %i.bkq = getelementptr inbounds nuw i8, ptr %.51109.us, i64 32
end_hunk_6
begin_hunk_7_@_ZN4ncnnL20conv3x3s1_winograd43ERKNS_3MatERS0_S2_S2_iRKNS_6OptionE.omp_outlined.4:bb.a
  %i.bnp = fadd fast float %i.bno, %i.bnm
  %i.bnq = getelementptr inbounds nuw i8, ptr %i.bls, i64 4
  store float %i.bnp, ptr %i.bnq, align 4, !tbaa !39
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  br i1 %i.blw, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.bnr = getelementptr inbounds nuw i8, ptr %i.bls, i64 8
  store float %i.bne, ptr %i.bnr, align 4, !tbaa !39
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  br i1 %i.bly, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.bns = getelementptr inbounds nuw i8, ptr %i.bls, i64 12
  store float %i.bnl, ptr %i.bns, align 4, !tbaa !39
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %i.bnt = getelementptr inbounds [4 x i8], ptr %i.bls, i64 %i.bfo
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %_ZN4ncnn3MatD2Ev.exit.i
  %.1.i = phi ptr [ %i.bls, %_ZN4ncnn3MatD2Ev.exit.i ], [ %i.bnt, %bb.fh ] ; 6 uses
  %i.bnu = or disjoint i32 %i.bln, 1
  %.not1165.1.i = icmp slt i32 %i.bnu, %i.dv
  br i1 %.not1165.1.i, label %bb.fj, label %bb.fq

bb.fj:                                            ; preds = %bb.fi
  %i.bnv = fadd fast float %i.bim, %i.bho         ; 2 uses
  %i.bnw = fadd fast float %i.bki, %i.bjk         ; 2 uses
  %i.bnx = fsub fast float %i.bho, %i.bim         ; 2 uses
  %i.bny = fsub fast float %i.bjk, %i.bki         ; 2 uses
  %i.bnz = fadd fast float %i.bgs, %i.bfr
  %i.boa = fadd fast float %i.bnz, %i.bgt
  %i.bob = fadd fast float %i.boa, %i.bnv
  %i.boc = fadd fast float %i.bob, %i.bnw
  %i.bod = fmul fast float %i.bnv, 5.000000e-01
  %i.boe = fadd fast float %i.bod, %i.bfr
  %i.bof = fmul fast float %i.bnw, 2.000000e+00
  %i.bog = fadd fast float %i.boe, %i.bof
  %i.boh = fmul fast float %i.bnx, f0x3EB504F3
  %i.boi = fmul fast float %i.bny, f0x403504F3
  %i.boj = fadd fast float %i.boh, %i.bfr
  %i.bok = fadd fast float %i.boj, %i.ble
  %i.bol = fadd fast float %i.bok, %i.boi
  %i.bom = fadd fast float %i.bol, %i.blf
  store float %i.boc, ptr %.1.i, align 4, !tbaa !39
  br i1 %i.blu, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  %i.bon = fmul fast float %i.bnx, f0x3F3504F3
  %i.boo = fadd fast float %i.bon, %i.bfr
  %i.bop = fmul fast float %i.bny, f0x3FB504F3
  %i.boq = fadd fast float %i.boo, %i.bop
  %i.bor = getelementptr inbounds nuw i8, ptr %.1.i, i64 4
  store float %i.boq, ptr %i.bor, align 4, !tbaa !39
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  br i1 %i.blw, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.bos = getelementptr inbounds nuw i8, ptr %.1.i, i64 8
  store float %i.bog, ptr %i.bos, align 4, !tbaa !39
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fl
  br i1 %i.bly, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.bot = getelementptr inbounds nuw i8, ptr %.1.i, i64 12
  store float %i.bom, ptr %i.bot, align 4, !tbaa !39
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  %i.bou = getelementptr inbounds [4 x i8], ptr %.1.i, i64 %i.bfo
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fi
  %.1.1.i = phi ptr [ %.1.i, %bb.fi ], [ %i.bou, %bb.fp ] ; 6 uses
  %i.bov = or disjoint i32 %i.bln, 2
  %.not1165.2.i = icmp slt i32 %i.bov, %i.dv
  br i1 %.not1165.2.i, label %bb.fr, label %bb.fy

bb.fr:                                            ; preds = %bb.fq
  %i.bow = fadd fast float %i.bip, %i.bhr         ; 2 uses
  %i.box = fadd fast float %i.bkl, %i.bjn         ; 2 uses
  %i.boy = fsub fast float %i.bhr, %i.bip         ; 2 uses
  %i.boz = fsub fast float %i.bjn, %i.bkl         ; 2 uses
  %i.bpa = fadd fast float %i.bgu, %i.bfr
  %i.bpb = fadd fast float %i.bpa, %i.bgv
  %i.bpc = fadd fast float %i.bpb, %i.bow
  %i.bpd = fadd fast float %i.bpc, %i.box
  %i.bpe = fmul fast float %i.bow, 5.000000e-01
  %i.bpf = fadd fast float %i.bpe, %i.bfr
  %i.bpg = fmul fast float %i.box, 2.000000e+00
  %i.bph = fadd fast float %i.bpf, %i.bpg
  %i.bpi = fmul fast float %i.boy, f0x3EB504F3
  %i.bpj = fmul fast float %i.boz, f0x403504F3
  %i.bpk = fadd fast float %i.bpi, %i.bfr
  %i.bpl = fadd fast float %i.bpk, %i.blg
  %i.bpm = fadd fast float %i.bpl, %i.bpj
  %i.bpn = fadd fast float %i.bpm, %i.blh
  store float %i.bpd, ptr %.1.1.i, align 4, !tbaa !39
  br i1 %i.blu, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.bpo = fmul fast float %i.boy, f0x3F3504F3
  %i.bpp = fadd fast float %i.bpo, %i.bfr
  %i.bpq = fmul fast float %i.boz, f0x3FB504F3
  %i.bpr = fadd fast float %i.bpp, %i.bpq
  %i.bps = getelementptr inbounds nuw i8, ptr %.1.1.i, i64 4
  store float %i.bpr, ptr %i.bps, align 4, !tbaa !39
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  br i1 %i.blw, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %i.bpt = getelementptr inbounds nuw i8, ptr %.1.1.i, i64 8
  store float %i.bph, ptr %i.bpt, align 4, !tbaa !39
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  br i1 %i.bly, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %i.bpu = getelementptr inbounds nuw i8, ptr %.1.1.i, i64 12
  store float %i.bpn, ptr %i.bpu, align 4, !tbaa !39
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  %i.bpv = getelementptr inbounds [4 x i8], ptr %.1.1.i, i64 %i.bfo
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fq
  %.1.2.i = phi ptr [ %.1.1.i, %bb.fq ], [ %i.bpv, %bb.fx ] ; 4 uses
  %i.bpw = or disjoint i32 %i.bln, 3
  %.not1165.3.i = icmp slt i32 %i.bpw, %i.dv
  br i1 %.not1165.3.i, label %bb.fz, label %bb.gf

bb.fz:                                            ; preds = %bb.fy
  %i.bpx = fadd fast float %i.biu, %i.bhw         ; 2 uses
  %i.bpy = fadd fast float %i.bkq, %i.bjs         ; 2 uses
  %i.bpz = fsub fast float %i.bhw, %i.biu         ; 2 uses
  %i.bqa = fsub fast float %i.bjs, %i.bkq         ; 2 uses
  %i.bqb = fadd fast float %i.bgx, %i.bfr
  %i.bqc = fadd fast float %i.bqb, %i.bgw
  %i.bqd = fadd fast float %i.bqc, %i.bgy
  %i.bqe = fadd fast float %i.bqd, %i.bpx
  %i.bqf = fadd fast float %i.bqe, %i.bpy
  %i.bqg = fmul fast float %i.bpx, 5.000000e-01
  %i.bqh = fadd fast float %i.bqg, %i.bfr
  %i.bqi = fmul fast float %i.bpy, 2.000000e+00
  %i.bqj = fadd fast float %i.bqh, %i.bqi
  %reass.add = fadd fast float %i.bld, %i.bqa
  %reass.mul = fmul fast float %reass.add, f0x403504F3
  %reass.add130 = fadd fast float %i.blc, %i.bpz
  %reass.mul131 = fmul fast float %reass.add130, f0x3EB504F3
  %i.bqk = fadd fast float %i.bli, %i.bfr
  %i.bql = fadd fast float %i.bqk, %reass.mul131
  %i.bqm = fadd fast float %i.bql, %reass.mul
  store float %i.bqf, ptr %.1.2.i, align 4, !tbaa !39
  br i1 %i.blu, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.bqn = fmul fast float %i.bpz, f0x3F3504F3
  %i.bqo = fadd fast float %i.bqn, %i.bfr
  %i.bqp = fmul fast float %i.bqa, f0x3FB504F3
  %i.bqq = fadd fast float %i.bqo, %i.bqp
  %i.bqr = getelementptr inbounds nuw i8, ptr %.1.2.i, i64 4
  store float %i.bqq, ptr %i.bqr, align 4, !tbaa !39
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  br i1 %i.blw, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.bqs = getelementptr inbounds nuw i8, ptr %.1.2.i, i64 8
  store float %i.bqj, ptr %i.bqs, align 4, !tbaa !39
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  br i1 %i.bly, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.bqt = getelementptr inbounds nuw i8, ptr %.1.2.i, i64 12
  store float %i.bqm, ptr %i.bqt, align 4, !tbaa !39
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gd, %bb.fy
  %indvars.iv.next346.i = add nuw nsw i64 %indvars.iv345.i, 1 ; 2 uses
  %exitcond349.not.i = icmp eq i64 %indvars.iv.next346.i, %wide.trip.count348.i
  br i1 %exitcond349.not.i, label %._crit_edge254.i, label %_ZN4ncnn3MatD2Ev.exit.i, !llvm.loop !1084

._crit_edge254.i:                                 ; preds = %bb.gf, %bb.fa
  %indvars.iv.next351.i = add nsw i64 %indvars.iv350.i, 1 ; 2 uses
  %exitcond354.not.i = icmp eq i64 %indvars.iv.next351.i, %i.di
  br i1 %exitcond354.not.i, label %_ZN4ncnnL42conv3x3s1_winograd43_transform_output_tileERKNS_3MatERS0_S2_iiii.exit, label %bb.ey, !llvm.loop !1085

.noexc:                                           ; preds = %.noexc.preheader, %.noexc
  %i.bqu = phi i32 [ %i.bsr, %.noexc ], [ %.pre150, %.noexc.preheader ] ; 2 uses
  %i.bqv = phi i32 [ %i.bst, %.noexc ], [ %i.ds, %.noexc.preheader ]
  %.0132 = phi i32 [ %i.bss, %.noexc ], [ 0, %.noexc.preheader ] ; 4 uses
  %i.bqw = sub nsw i32 %i.bqv, %.0132
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.bqu, i32 %i.bqw)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  %i.bqx = load i32, ptr %3, align 4, !tbaa !67
  %i.bqy = sdiv i32 %i.cq, %i.bqx
  %i.bqz = load ptr, ptr %10, align 8, !tbaa !18, !noalias !1086
  %i.bra = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !1086
  %i.brb = sext i32 %i.bqy to i64
  %i.brc = mul i64 %i.bra, %i.brb
  %i.brd = load i64, ptr %i.s, align 8, !tbaa !65, !noalias !1086 ; 3 uses
  %i.bre = mul i64 %i.brc, %i.brd
  %i.brf = getelementptr inbounds nuw i8, ptr %i.bqz, i64 %i.bre
  %i.brg = load i32, ptr %i.t, align 8, !tbaa !66, !noalias !1086
  %i.brh = load ptr, ptr %i.u, align 8, !tbaa !17, !noalias !1086
  %i.bri = sdiv i32 %.0132, %i.bqu
  %i.brj = sext i32 %i.bri to i64                 ; 2 uses
  store ptr null, ptr %i.v, align 8, !tbaa !11, !alias.scope !1089
  store i64 %i.brd, ptr %i.w, align 8, !tbaa !65, !alias.scope !1089
  store i32 %i.brg, ptr %i.x, align 8, !tbaa !66, !alias.scope !1089
  store ptr %i.brh, ptr %i.y, align 8, !tbaa !17, !alias.scope !1089
  %i.brk = load <2 x i32>, ptr %i.p, align 4, !tbaa !67, !noalias !1086
  %i.brl = load i32, ptr %i.q, align 8, !tbaa !76, !noalias !1086
  %i.brm = load i32, ptr %i.p, align 4, !tbaa !75, !noalias !1086
  %i.brn = sext i32 %i.brm to i64
  %i.bro = sext i32 %i.brl to i64
  %i.brp = mul nsw i64 %i.bro, %i.brn             ; 2 uses
  %i.brq = mul i64 %i.brd, %i.brp
  %i.brr = mul i64 %i.brq, %i.brj
  %i.brs = getelementptr inbounds nuw i8, ptr %i.brf, i64 %i.brr
  store ptr %i.brs, ptr %14, align 8, !tbaa !18, !alias.scope !1089
  %i.brt = shufflevector <2 x i32> %i.brk, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.bru = shufflevector <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, <4 x i32> %i.brt, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i32> %i.bru, ptr %i.z, align 8, !tbaa !67, !alias.scope !1089
  store i32 1, ptr %i.aa, align 8, !tbaa !68, !alias.scope !1089
  store i64 %i.brp, ptr %i.ab, align 8, !tbaa !20, !alias.scope !1089
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #12
  %i.brv = load i32, ptr %7, align 4, !tbaa !67
  %i.brw = sdiv i32 %.044138, %i.brv
  %i.brx = load ptr, ptr %11, align 8, !tbaa !18, !noalias !1092
  %i.bry = load i64, ptr %i.ae, align 8, !tbaa !20, !noalias !1092
  %i.brz = sext i32 %i.brw to i64
  %i.bsa = mul i64 %i.bry, %i.brz
  %i.bsb = load i64, ptr %i.af, align 8, !tbaa !65, !noalias !1092 ; 3 uses
  %i.bsc = mul i64 %i.bsa, %i.bsb
  %i.bsd = getelementptr inbounds nuw i8, ptr %i.brx, i64 %i.bsc
  %i.bse = load i32, ptr %i.ag, align 8, !tbaa !66, !noalias !1092
  %i.bsf = load ptr, ptr %i.ah, align 8, !tbaa !17, !noalias !1092
  store ptr null, ptr %i.ai, align 8, !tbaa !11
  store i64 %i.bsb, ptr %i.aj, align 8, !tbaa !65
  store i32 %i.bse, ptr %i.ak, align 8, !tbaa !66
  store ptr %i.bsf, ptr %i.al, align 8, !tbaa !17
  %i.bsg = load <2 x i32>, ptr %i.ac, align 4, !tbaa !67, !noalias !1092
  %i.bsh = load i32, ptr %i.ad, align 8, !tbaa !76, !noalias !1092
  %i.bsi = load i32, ptr %i.ac, align 4, !tbaa !75, !noalias !1092
  %i.bsj = sext i32 %i.bsi to i64
  %i.bsk = sext i32 %i.bsh to i64
  %i.bsl = mul nsw i64 %i.bsk, %i.bsj             ; 2 uses
  %i.bsm = mul i64 %i.bsb, %i.bsl
  %i.bsn = mul i64 %i.bsm, %i.brj
  %i.bso = getelementptr inbounds nuw i8, ptr %i.bsd, i64 %i.bsn
  store ptr %i.bso, ptr %15, align 8, !tbaa !18
  %i.bsp = shufflevector <2 x i32> %i.bsg, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.bsq = shufflevector <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, <4 x i32> %i.bsp, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i32> %i.bsq, ptr %i.am, align 8, !tbaa !67
  store i32 1, ptr %i.an, align 8, !tbaa !68
  store i64 %i.bsl, ptr %i.ao, align 8, !tbaa !20, !alias.scope !1095
  call fastcc void @_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %14, ptr noundef nonnull align 8 dereferenceable(72) %15, ptr %i.cy, i32 noundef 36, i32 noundef %.sroa.speculated121, i32 noundef %.sroa.speculated117, i32 noundef %.0132, i32 noundef %.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  %i.bsr = load i32, ptr %9, align 4, !tbaa !67   ; 2 uses
  %i.bss = add nsw i32 %i.bsr, %.0132             ; 2 uses
  %i.bst = load i32, ptr %8, align 4, !tbaa !67   ; 2 uses
  %i.bsu = icmp slt i32 %i.bss, %i.bst
  br i1 %i.bsu, label %.noexc, label %._crit_edge, !llvm.loop !1098

_ZN4ncnnL42conv3x3s1_winograd43_transform_output_tileERKNS_3MatERS0_S2_iiii.exit: ; preds = %._crit_edge254.i, %.preheader.i
  %i.bsv = load i32, ptr %7, align 4, !tbaa !67   ; 2 uses
  %i.bsw = add nsw i32 %i.bsv, %.044138           ; 2 uses
  %i.bsx = load i32, ptr %6, align 4, !tbaa !67   ; 2 uses
  %i.bsy = icmp slt i32 %i.bsw, %i.bsx
  br i1 %i.bsy, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !1099

._crit_edge144:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.gg

bb.gg:                                            ; preds = %._crit_edge144, %bb.a
  ret void

bb.gh:                                            ; preds = %bb.c
  %i.bsz = landingpad { ptr, i32 }
          catch ptr null
  %i.bta = extractvalue { ptr, i32 } %i.bsz, 0
  call void @__clang_call_terminate(ptr %i.bta) #36
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL41conv3x3s1_winograd43_transform_input_tileERKNS_3MatERS0_iiiii.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree nonnull readnone align 4 captures(none) %9, ptr nofree nonnull readnone align 4 captures(none) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %13, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %14) #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.he

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.h = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !67
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !67
  %i.k = load i32, ptr %i.a, align 4, !tbaa !67   ; 2 uses
  %.not535 = icmp sgt i32 %i.k, %i.j
  br i1 %.not535, label %._crit_edge538, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.o = load i32, ptr %3, align 4, !tbaa !67     ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.split, label %._crit_edge538

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge
  %i.q = phi i32 [ %i.bvh, %._crit_edge ], [ %i.o, %.lr.ph ] ; 2 uses
  %.0536 = phi i32 [ %i.bvi, %._crit_edge ], [ %i.k, %.lr.ph ] ; 4 uses
  %i.r = shl nsw i32 %.0536, 4
  %i.s = icmp sgt i32 %i.q, 0
  br i1 %i.s, label %.noexc.lr.ph, label %._crit_edge

.noexc.lr.ph:                                     ; preds = %.lr.ph.split
  %i.t = mul i32 %.0536, 576
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %.thread518.5
  %indvars.iv = phi i64 [ 0, %.noexc.lr.ph ], [ %indvars.iv.next, %.thread518.5 ] ; 3 uses
  %i.u = load i32, ptr %4, align 4, !tbaa !67
  %i.v = load i32, ptr %5, align 4, !tbaa !67     ; 2 uses
  %i.w = load i32, ptr %7, align 4, !tbaa !67
  %i.x = add nsw i32 %i.w, %i.r
  %i.y = load i32, ptr %8, align 4, !tbaa !67     ; 15 uses
  %i.z = sdiv i32 %i.x, %i.y
  %i.aa = load i32, ptr %i.l, align 4, !tbaa !75, !noalias !1100
  %i.ab = load ptr, ptr %6, align 8, !tbaa !18, !noalias !1100
  %i.ac = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !1100
  %i.ad = sext i32 %i.z to i64
  %i.ae = mul i64 %i.ac, %i.ad
  %i.af = load i64, ptr %i.n, align 8, !tbaa !65, !noalias !1100 ; 2 uses
  %i.ag = mul i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ag
  %i.ai = sext i32 %i.aa to i64
  %i.aj = trunc nuw nsw i64 %indvars.iv to i32
  %i.ak = add nsw i32 %i.u, %i.aj                 ; 2 uses
  %i.al = srem i32 %i.ak, %i.v
  %i.am = sdiv i32 %i.ak, %i.v
  %i.an = shl nsw i32 %i.am, 2                    ; 2 uses
  %i.ao = sext i32 %i.an to i64                   ; 6 uses
  %i.ap = mul i64 %i.af, %i.ai
  %i.aq = mul i64 %i.ap, %i.ao
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aq
  %i.as = shl nsw i32 %i.al, 2                    ; 6 uses
  %i.at = mul nsw i32 %i.as, %i.y
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.au ; 41 uses
  %i.aw = load i32, ptr %11, align 4, !tbaa !67   ; 2 uses
  %i.ax = load i32, ptr %12, align 4, !tbaa !67   ; 121 uses
  %i.ay = mul nsw i32 %i.y, %i.ax
  %i.az = sext i32 %i.ay to i64                   ; 5 uses
  %i.ba = or disjoint i32 %i.as, 1                ; 24 uses
  %i.bb = or disjoint i32 %i.as, 2                ; 24 uses
  %i.bc = or disjoint i32 %i.as, 3                ; 24 uses
  %i.bd = add nsw i32 %i.as, 4                    ; 24 uses
  %i.be = add nsw i32 %i.as, 5                    ; 24 uses
  %i.bf = sext i32 %i.aw to i64                   ; 5 uses
  %i.bg = icmp slt i32 %i.an, %i.aw
  %i.bh = call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.y)
  %i.bi = icmp eq i32 %i.bh, 1
end_hunk_7
begin_hunk_8_@_ZN4ncnnL20conv3x3s1_winograd63ERKNS_3MatERS0_S2_S2_iRKNS_6OptionE.omp_outlined.5:bb.a
  %i.bwx = mul nsw i32 %i.bwt, 6                  ; 6 uses
  %i.bwy = sext i32 %i.bwx to i64
  %i.bwz = getelementptr inbounds [4 x i8], ptr %i.bww, i64 %i.bwy
  %i.bxa = or disjoint i32 %i.bwx, 1
  %i.bxb = icmp slt i32 %i.bxa, %i.hy
  %i.bxc = add nsw i32 %i.bwx, 2
  %i.bxd = icmp slt i32 %i.bxc, %i.hy
  %i.bxe = add nsw i32 %i.bwx, 3
  %i.bxf = icmp slt i32 %i.bxe, %i.hy
  %i.bxg = add nsw i32 %i.bwx, 4
  %i.bxh = icmp slt i32 %i.bxg, %i.hy
  %i.bxi = add nsw i32 %i.bwx, 5
  %i.bxj = icmp slt i32 %i.bxi, %i.hy
  %invariant.op445.i = sub nsw i64 %i.bvs, %i.bwv
  br label %bb.ej

bb.eh:                                            ; preds = %bb.eh, %bb.eg
  %indvars.iv411.i = phi i64 [ 0, %bb.eg ], [ %indvars.iv.next412.i, %bb.eh ] ; 7 uses
  %.01568321.i = phi ptr [ %i.bwp, %bb.eg ], [ %i.bzh, %bb.eh ] ; 2 uses
  %.01569320.i = phi ptr [ %i.bwo, %bb.eg ], [ %i.bzg, %bb.eh ] ; 2 uses
  %.01570319.i = phi ptr [ %i.bwn, %bb.eg ], [ %i.bzf, %bb.eh ] ; 2 uses
  %.01571318.i = phi ptr [ %i.bwm, %bb.eg ], [ %i.bze, %bb.eh ] ; 2 uses
  %.01572317.i = phi ptr [ %i.bwl, %bb.eg ], [ %i.bzd, %bb.eh ] ; 2 uses
  %.01573316.i = phi ptr [ %i.bwk, %bb.eg ], [ %i.bzc, %bb.eh ] ; 2 uses
  %.01574315.i = phi ptr [ %i.bwj, %bb.eg ], [ %i.bzb, %bb.eh ] ; 2 uses
  %.01575314.i = phi ptr [ %i.bwi, %bb.eg ], [ %i.bza, %bb.eh ] ; 2 uses
  %i.bxk = load float, ptr %.01574315.i, align 4, !tbaa !39 ; 2 uses
  %i.bxl = load float, ptr %.01573316.i, align 4, !tbaa !39 ; 2 uses
  %i.bxm = fadd fast float %i.bxl, %i.bxk         ; 3 uses
  %i.bxn = fsub fast float %i.bxk, %i.bxl         ; 3 uses
  %i.bxo = load float, ptr %.01572317.i, align 4, !tbaa !39 ; 2 uses
  %i.bxp = load float, ptr %.01571318.i, align 4, !tbaa !39 ; 2 uses
  %i.bxq = fadd fast float %i.bxp, %i.bxo         ; 3 uses
  %i.bxr = fsub fast float %i.bxo, %i.bxp         ; 3 uses
  %i.bxs = load float, ptr %.01570319.i, align 4, !tbaa !39 ; 2 uses
  %i.bxt = load float, ptr %.01569320.i, align 4, !tbaa !39 ; 2 uses
  %i.bxu = fadd fast float %i.bxt, %i.bxs         ; 3 uses
  %i.bxv = fsub fast float %i.bxs, %i.bxt         ; 3 uses
  %i.bxw = load float, ptr %.01575314.i, align 4, !tbaa !39
  %i.bxx = fmul fast float %i.bxu, 3.200000e+01
  %i.bxy = fadd fast float %i.bxq, %i.bxm
  %i.bxz = fadd fast float %i.bxy, %i.bxw
  %i.bya = fadd fast float %i.bxz, %i.bxx
  %i.byb = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv411.i
  store float %i.bya, ptr %i.byb, align 4, !tbaa !39
  %i.byc = fmul fast float %i.bxv, 1.600000e+01
  %factor218.i = fmul fast float %i.bxr, 2.000000e+00
  %i.byd = fadd fast float %factor218.i, %i.bxn
  %i.bye = fadd fast float %i.byd, %i.byc
  %i.byf = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv411.i
  store float %i.bye, ptr %i.byf, align 4, !tbaa !39
  %i.byg = fmul fast float %i.bxq, 4.000000e+00
  %i.byh = fadd fast float %i.byg, %i.bxm
  %i.byi = fmul fast float %i.bxu, 8.000000e+00
  %i.byj = fadd fast float %i.byh, %i.byi
  %i.byk = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %indvars.iv411.i
  store float %i.byj, ptr %i.byk, align 4, !tbaa !39
  %i.byl = fmul fast float %i.bxr, 8.000000e+00
  %i.bym = fadd fast float %i.byl, %i.bxn
  %i.byn = fmul fast float %i.bxv, 4.000000e+00
  %i.byo = fadd fast float %i.bym, %i.byn
  %i.byp = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv411.i
  store float %i.byo, ptr %i.byp, align 4, !tbaa !39
  %i.byq = fmul fast float %i.bxq, 1.600000e+01
  %factor219.i = fmul fast float %i.bxu, 2.000000e+00
  %i.byr = fadd fast float %i.byq, %i.bxm
  %i.bys = fadd fast float %i.byr, %factor219.i
  %i.byt = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv411.i
  store float %i.bys, ptr %i.byt, align 4, !tbaa !39
  %i.byu = load float, ptr %.01568321.i, align 4, !tbaa !39
  %i.byv = fmul fast float %i.bxr, 3.200000e+01
  %i.byw = fadd fast float %i.byv, %i.bxn
  %i.byx = fadd fast float %i.byw, %i.bxv
  %i.byy = fadd fast float %i.byx, %i.byu
  %i.byz = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %indvars.iv411.i
  store float %i.byy, ptr %i.byz, align 4, !tbaa !39
  %i.bza = getelementptr inbounds nuw [4 x i8], ptr %.01575314.i, i64 %i.bvq
  %i.bzb = getelementptr inbounds nuw [4 x i8], ptr %.01574315.i, i64 %i.bvq
  %i.bzc = getelementptr inbounds nuw [4 x i8], ptr %.01573316.i, i64 %i.bvq
  %i.bzd = getelementptr inbounds nuw [4 x i8], ptr %.01572317.i, i64 %i.bvq
  %i.bze = getelementptr inbounds nuw [4 x i8], ptr %.01571318.i, i64 %i.bvq
  %i.bzf = getelementptr inbounds nuw [4 x i8], ptr %.01570319.i, i64 %i.bvq
  %i.bzg = getelementptr inbounds nuw [4 x i8], ptr %.01569320.i, i64 %i.bvq
  %i.bzh = getelementptr inbounds nuw [4 x i8], ptr %.01568321.i, i64 %i.bvq
  %indvars.iv.next412.i = add nuw nsw i64 %indvars.iv411.i, 1 ; 2 uses
  %exitcond414.not.i = icmp eq i64 %indvars.iv.next412.i, 8
  br i1 %exitcond414.not.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.eh, !llvm.loop !1171

bb.ei:                                            ; preds = %bb.ev
  %indvars.iv.next420.i = add nuw nsw i64 %indvars.iv419.i, 1 ; 2 uses
  %exitcond423.not.i = icmp eq i64 %indvars.iv.next420.i, %wide.trip.count422.i
  br i1 %exitcond423.not.i, label %._crit_edge328.i, label %bb.eg, !llvm.loop !1172

bb.ej:                                            ; preds = %bb.ev, %_ZN4ncnn3MatD2Ev.exit.i
  %indvars.iv415.i = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit.i ], [ %indvars.iv.next416.i, %bb.ev ] ; 3 uses
  %.01566323.i = phi ptr [ %i.bwz, %_ZN4ncnn3MatD2Ev.exit.i ], [ %.1.i, %bb.ev ] ; 8 uses
  %.not1641.i = icmp slt i64 %indvars.iv415.i, %invariant.op445.i
  br i1 %.not1641.i, label %bb.ek, label %bb.ev

bb.ek:                                            ; preds = %bb.ej
  %i.bzi = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %indvars.iv415.i ; 8 uses
  %i.bzj = load float, ptr %i.bzi, align 16, !tbaa !39
  %i.bzk = getelementptr inbounds nuw i8, ptr %i.bzi, i64 4
  %i.bzl = load float, ptr %i.bzk, align 4, !tbaa !39 ; 2 uses
  %i.bzm = getelementptr inbounds nuw i8, ptr %i.bzi, i64 8
  %i.bzn = load float, ptr %i.bzm, align 8, !tbaa !39 ; 2 uses
  %i.bzo = getelementptr inbounds nuw i8, ptr %i.bzi, i64 12
  %i.bzp = load float, ptr %i.bzo, align 4, !tbaa !39 ; 2 uses
  %i.bzq = getelementptr inbounds nuw i8, ptr %i.bzi, i64 16
  %i.bzr = load float, ptr %i.bzq, align 16, !tbaa !39 ; 2 uses
  %i.bzs = getelementptr inbounds nuw i8, ptr %i.bzi, i64 20
  %i.bzt = load float, ptr %i.bzs, align 4, !tbaa !39 ; 2 uses
  %i.bzu = getelementptr inbounds nuw i8, ptr %i.bzi, i64 24
  %i.bzv = load float, ptr %i.bzu, align 8, !tbaa !39 ; 2 uses
  %i.bzw = getelementptr inbounds nuw i8, ptr %i.bzi, i64 28
  %i.bzx = load float, ptr %i.bzw, align 4, !tbaa !39
  %i.bzy = fsub fast float %i.bzl, %i.bzn
  %i.bzz = fadd fast float %i.bzr, %i.bzp         ; 3 uses
  %i.caa = fsub fast float %i.bzp, %i.bzr         ; 3 uses
  %i.cab = fadd fast float %i.bzv, %i.bzt         ; 3 uses
  %i.cac = fsub fast float %i.bzt, %i.bzv         ; 3 uses
  %i.cad = fmul fast float %i.cab, 3.200000e+01
  %i.cae = fadd fast float %i.bzl, %i.bvv
  %i.caf = fadd fast float %i.cae, %i.bzn         ; 3 uses
  %i.cag = fadd fast float %i.caf, %i.bzj
  %i.cah = fadd fast float %i.cag, %i.bzz
  %i.cai = fadd fast float %i.cah, %i.cad
  %i.caj = fadd fast float %i.bzy, %i.bvv         ; 3 uses
  %i.cak = fmul fast float %i.bzz, 4.000000e+00
  %i.cal = fadd fast float %i.cak, %i.caf
  %i.cam = fmul fast float %i.cab, 8.000000e+00
  %i.can = fadd fast float %i.cal, %i.cam
  %i.cao = fmul fast float %i.caa, 8.000000e+00
  %i.cap = fadd fast float %i.cao, %i.caj
  %i.caq = fmul fast float %i.cac, 4.000000e+00
  %i.car = fadd fast float %i.cap, %i.caq
  %i.cas = fmul fast float %i.bzz, 1.600000e+01
  %factor.i = fmul fast float %i.cab, 2.000000e+00
  %i.cat = fadd fast float %i.cas, %i.caf
  %i.cau = fadd fast float %i.cat, %factor.i
  %i.cav = fmul fast float %i.caa, 3.200000e+01
  %i.caw = fadd fast float %i.cav, %i.caj
  %i.cax = fadd fast float %i.caw, %i.bzx
  %i.cay = fadd fast float %i.cax, %i.cac
  store float %i.cai, ptr %.01566323.i, align 4, !tbaa !39
  br i1 %i.bxb, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.caz = fmul fast float %i.cac, 1.600000e+01
  %factor217.i = fmul fast float %i.caa, 2.000000e+00
  %i.cba = fadd fast float %factor217.i, %i.caj
  %i.cbb = fadd fast float %i.cba, %i.caz
  %i.cbc = getelementptr inbounds nuw i8, ptr %.01566323.i, i64 4
  store float %i.cbb, ptr %i.cbc, align 4, !tbaa !39
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  br i1 %i.bxd, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.cbd = getelementptr inbounds nuw i8, ptr %.01566323.i, i64 8
  store float %i.can, ptr %i.cbd, align 4, !tbaa !39
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  br i1 %i.bxf, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.cbe = getelementptr inbounds nuw i8, ptr %.01566323.i, i64 12
  store float %i.car, ptr %i.cbe, align 4, !tbaa !39
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  br i1 %i.bxh, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.cbf = getelementptr inbounds nuw i8, ptr %.01566323.i, i64 16
  store float %i.cau, ptr %i.cbf, align 4, !tbaa !39
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  br i1 %i.bxj, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.cbg = getelementptr inbounds nuw i8, ptr %.01566323.i, i64 20
  store float %i.cay, ptr %i.cbg, align 4, !tbaa !39
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  %i.cbh = getelementptr inbounds [4 x i8], ptr %.01566323.i, i64 %i.bvr
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.ej
  %.1.i = phi ptr [ %.01566323.i, %bb.ej ], [ %i.cbh, %bb.eu ]
  %indvars.iv.next416.i = add nuw nsw i64 %indvars.iv415.i, 1 ; 2 uses
  %exitcond418.not.i = icmp eq i64 %indvars.iv.next416.i, 6
  br i1 %exitcond418.not.i, label %bb.ei, label %bb.ej, !llvm.loop !1173

._crit_edge328.i:                                 ; preds = %bb.ei, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  %indvars.iv.next425.i = add nsw i64 %indvars.iv424.i, 1 ; 2 uses
  %exitcond428.not.i = icmp eq i64 %indvars.iv.next425.i, %i.hm
  br i1 %exitcond428.not.i, label %_ZN4ncnnL42conv3x3s1_winograd63_transform_output_tileERKNS_3MatERS0_S2_iiii.exit, label %bb.ed, !llvm.loop !1174

.noexc:                                           ; preds = %.noexc.preheader, %.noexc
  %i.cbi = phi i32 [ %i.cdf, %.noexc ], [ %.pre148, %.noexc.preheader ] ; 2 uses
  %i.cbj = phi i32 [ %i.cdh, %.noexc ], [ %i.hw, %.noexc.preheader ]
  %.0130 = phi i32 [ %i.cdg, %.noexc ], [ 0, %.noexc.preheader ] ; 4 uses
  %i.cbk = sub nsw i32 %i.cbj, %.0130
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.cbi, i32 %i.cbk)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  %i.cbl = load i32, ptr %3, align 4, !tbaa !67
  %i.cbm = sdiv i32 %i.gu, %i.cbl
  %i.cbn = load ptr, ptr %10, align 8, !tbaa !18, !noalias !1175
  %i.cbo = load i64, ptr %i.u, align 8, !tbaa !20, !noalias !1175
  %i.cbp = sext i32 %i.cbm to i64
  %i.cbq = mul i64 %i.cbo, %i.cbp
  %i.cbr = load i64, ptr %i.v, align 8, !tbaa !65, !noalias !1175 ; 3 uses
  %i.cbs = mul i64 %i.cbq, %i.cbr
  %i.cbt = getelementptr inbounds nuw i8, ptr %i.cbn, i64 %i.cbs
  %i.cbu = load i32, ptr %i.w, align 8, !tbaa !66, !noalias !1175
  %i.cbv = load ptr, ptr %i.x, align 8, !tbaa !17, !noalias !1175
  %i.cbw = sdiv i32 %.0130, %i.cbi
  %i.cbx = sext i32 %i.cbw to i64                 ; 2 uses
  store ptr null, ptr %i.y, align 8, !tbaa !11, !alias.scope !1178
  store i64 %i.cbr, ptr %i.z, align 8, !tbaa !65, !alias.scope !1178
  store i32 %i.cbu, ptr %i.aa, align 8, !tbaa !66, !alias.scope !1178
  store ptr %i.cbv, ptr %i.ab, align 8, !tbaa !17, !alias.scope !1178
  %i.cby = load <2 x i32>, ptr %i.s, align 4, !tbaa !67, !noalias !1175
  %i.cbz = load i32, ptr %i.t, align 8, !tbaa !76, !noalias !1175
  %i.cca = load i32, ptr %i.s, align 4, !tbaa !75, !noalias !1175
  %i.ccb = sext i32 %i.cca to i64
  %i.ccc = sext i32 %i.cbz to i64
  %i.ccd = mul nsw i64 %i.ccc, %i.ccb             ; 2 uses
  %i.cce = mul i64 %i.cbr, %i.ccd
  %i.ccf = mul i64 %i.cce, %i.cbx
  %i.ccg = getelementptr inbounds nuw i8, ptr %i.cbt, i64 %i.ccf
  store ptr %i.ccg, ptr %14, align 8, !tbaa !18, !alias.scope !1178
  %i.cch = shufflevector <2 x i32> %i.cby, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.cci = shufflevector <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, <4 x i32> %i.cch, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i32> %i.cci, ptr %i.ac, align 8, !tbaa !67, !alias.scope !1178
  store i32 1, ptr %i.ad, align 8, !tbaa !68, !alias.scope !1178
  store i64 %i.ccd, ptr %i.ae, align 8, !tbaa !20, !alias.scope !1178
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #12
  %i.ccj = load i32, ptr %7, align 4, !tbaa !67
  %i.cck = sdiv i32 %.044136, %i.ccj
  %i.ccl = load ptr, ptr %11, align 8, !tbaa !18, !noalias !1181
  %i.ccm = load i64, ptr %i.ah, align 8, !tbaa !20, !noalias !1181
  %i.ccn = sext i32 %i.cck to i64
  %i.cco = mul i64 %i.ccm, %i.ccn
  %i.ccp = load i64, ptr %i.ai, align 8, !tbaa !65, !noalias !1181 ; 3 uses
  %i.ccq = mul i64 %i.cco, %i.ccp
  %i.ccr = getelementptr inbounds nuw i8, ptr %i.ccl, i64 %i.ccq
  %i.ccs = load i32, ptr %i.aj, align 8, !tbaa !66, !noalias !1181
  %i.cct = load ptr, ptr %i.ak, align 8, !tbaa !17, !noalias !1181
  store ptr null, ptr %i.al, align 8, !tbaa !11
  store i64 %i.ccp, ptr %i.am, align 8, !tbaa !65
  store i32 %i.ccs, ptr %i.an, align 8, !tbaa !66
  store ptr %i.cct, ptr %i.ao, align 8, !tbaa !17
  %i.ccu = load <2 x i32>, ptr %i.af, align 4, !tbaa !67, !noalias !1181
  %i.ccv = load i32, ptr %i.ag, align 8, !tbaa !76, !noalias !1181
  %i.ccw = load i32, ptr %i.af, align 4, !tbaa !75, !noalias !1181
  %i.ccx = sext i32 %i.ccw to i64
  %i.ccy = sext i32 %i.ccv to i64
  %i.ccz = mul nsw i64 %i.ccy, %i.ccx             ; 2 uses
  %i.cda = mul i64 %i.ccp, %i.ccz
  %i.cdb = mul i64 %i.cda, %i.cbx
  %i.cdc = getelementptr inbounds nuw i8, ptr %i.ccr, i64 %i.cdb
  store ptr %i.cdc, ptr %15, align 8, !tbaa !18
  %i.cdd = shufflevector <2 x i32> %i.ccu, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.cde = shufflevector <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, <4 x i32> %i.cdd, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i32> %i.cde, ptr %i.ap, align 8, !tbaa !67
  store i32 1, ptr %i.aq, align 8, !tbaa !68
  store i64 %i.ccz, ptr %i.ar, align 8, !tbaa !20, !alias.scope !1184
  call fastcc void @_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %14, ptr noundef nonnull align 8 dereferenceable(72) %15, ptr %i.hc, i32 noundef 64, i32 noundef %.sroa.speculated121, i32 noundef %.sroa.speculated117, i32 noundef %.0130, i32 noundef %.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  %i.cdf = load i32, ptr %9, align 4, !tbaa !67   ; 2 uses
  %i.cdg = add nsw i32 %i.cdf, %.0130             ; 2 uses
  %i.cdh = load i32, ptr %8, align 4, !tbaa !67   ; 2 uses
  %i.cdi = icmp slt i32 %i.cdg, %i.cdh
  br i1 %i.cdi, label %.noexc, label %._crit_edge, !llvm.loop !1187

_ZN4ncnnL42conv3x3s1_winograd63_transform_output_tileERKNS_3MatERS0_S2_iiii.exit: ; preds = %._crit_edge328.i, %.preheader.i
  %i.cdj = load i32, ptr %7, align 4, !tbaa !67   ; 2 uses
  %i.cdk = add nsw i32 %i.cdj, %.044136           ; 2 uses
  %i.cdl = load i32, ptr %6, align 4, !tbaa !67   ; 2 uses
  %i.cdm = icmp slt i32 %i.cdk, %i.cdl
  br i1 %i.cdm, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !1188

._crit_edge142:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  br label %bb.ew

bb.ew:                                            ; preds = %._crit_edge142, %bb.a
  ret void

bb.ex:                                            ; preds = %bb.c
  %i.cdn = landingpad { ptr, i32 }
          catch ptr null
  %i.cdo = extractvalue { ptr, i32 } %i.cdn, 0
  call void @__clang_call_terminate(ptr %i.cdo) #36
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL41conv3x3s1_winograd63_transform_input_tileERKNS_3MatERS0_iiiii.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12) #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca [8 x [8 x [16 x float]]], align 64 ; 67 uses
  %i.f = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.nq

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.h, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.i = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !67
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 3 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !67
  %i.l = load i32, ptr %i.a, align 4, !tbaa !67   ; 2 uses
  %.not748 = icmp sgt i32 %i.l, %i.k
  br i1 %.not748, label %._crit_edge751, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 512
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 1024
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 1536
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 2048
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 2560
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 3072
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 3584
  %i.w = load i32, ptr %3, align 4, !tbaa !67     ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.split.preheader, label %._crit_edge751

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 576
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 1088
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 1600
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 2112
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 2624
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 3136
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 3648
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 640
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 1152
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 1664
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 2176
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 2688
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 3200
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 3712
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 704
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 1216
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 1728
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 2240
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 2752
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 3264
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 3776
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 768
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 1280
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 1792
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 2304
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 2816
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 3328
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 3840
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 320
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 832
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 1344
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 1856
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 2368
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 2880
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 3392
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 3904
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 384
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 896
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 1408
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 1920
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 2432
end_hunk_8
begin_hunk_9_@_ZN4ncnnL23convolution_im2col_gemmERKNS_3MatERS0_S2_S2_iiiiiiiRKNS_6OptionE.omp_outlined:bb.a
  %i.apk = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx629.i.i.3 = shl i64 %i.apk, 5
  %i.apl = getelementptr inbounds nuw i8, ptr %i.aph, i64 %.idx629.i.i.3 ; 2 uses
  %niter326.next.3 = add i32 %niter326, 4         ; 2 uses
  %niter326.ncmp.3 = icmp eq i32 %niter326.next.3, %unroll_iter325
  br i1 %niter326.ncmp.3, label %.loopexit.i.i.loopexit222.unr-lcssa, label %.lr.ph617.i.i, !llvm.loop !1277

_ZN4ncnn3MatD2Ev.exit662.i.i:                     ; preds = %.split764.i.i
  br i1 %i.ana, label %.lr.ph622.preheader.i.i, label %.loopexit.i.i

.lr.ph622.preheader.i.i:                          ; preds = %_ZN4ncnn3MatD2Ev.exit662.i.i
  %i.apm = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1278
  %i.apn = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1278
  %i.apo = mul i64 %i.apn, %i.amy
  %i.app = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1278
  %i.apq = mul i64 %i.apo, %i.app
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apm, i64 %i.apq
  %i.aps = add nsw i64 %indvars.iv684.i.i, %i.and
  %.idx709.i.i = shl nsw i64 %i.aps, 4
  %i.apt = getelementptr inbounds i8, ptr %i.apr, i64 %.idx709.i.i ; 2 uses
  br i1 %i.ann, label %.lr.ph622.i.i.epil.preheader, label %.lr.ph622.i.i

.lr.ph622.i.i:                                    ; preds = %.lr.ph622.preheader.i.i, %.lr.ph622.i.i
  %.0586620.i.i = phi ptr [ %i.aqj, %.lr.ph622.i.i ], [ %i.apt, %.lr.ph622.preheader.i.i ] ; 2 uses
  %.41619.i.i = phi ptr [ %i.aqh, %.lr.ph622.i.i ], [ %.36630.i.i, %.lr.ph622.preheader.i.i ] ; 5 uses
  %niter319 = phi i32 [ %niter319.next.3, %.lr.ph622.i.i ], [ 0, %.lr.ph622.preheader.i.i ]
  %i.apu = load <4 x float>, ptr %.0586620.i.i, align 16, !tbaa !100
  store <4 x float> %i.apu, ptr %.41619.i.i, align 16, !tbaa !100
  %i.apv = getelementptr inbounds nuw i8, ptr %.41619.i.i, i64 16
  %i.apw = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx.i.i = shl i64 %i.apw, 4
  %i.apx = getelementptr inbounds nuw i8, ptr %.0586620.i.i, i64 %.idx.i.i ; 2 uses
  %i.apy = load <4 x float>, ptr %i.apx, align 16, !tbaa !100
  store <4 x float> %i.apy, ptr %i.apv, align 16, !tbaa !100
  %i.apz = getelementptr inbounds nuw i8, ptr %.41619.i.i, i64 32
  %i.aqa = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx.i.i.1 = shl i64 %i.aqa, 4
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.apx, i64 %.idx.i.i.1 ; 2 uses
  %i.aqc = load <4 x float>, ptr %i.aqb, align 16, !tbaa !100
  store <4 x float> %i.aqc, ptr %i.apz, align 16, !tbaa !100
  %i.aqd = getelementptr inbounds nuw i8, ptr %.41619.i.i, i64 48
  %i.aqe = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx.i.i.2 = shl i64 %i.aqe, 4
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqb, i64 %.idx.i.i.2 ; 2 uses
  %i.aqg = load <4 x float>, ptr %i.aqf, align 16, !tbaa !100
  store <4 x float> %i.aqg, ptr %i.aqd, align 16, !tbaa !100
  %i.aqh = getelementptr inbounds nuw i8, ptr %.41619.i.i, i64 64 ; 3 uses
  %i.aqi = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx.i.i.3 = shl i64 %i.aqi, 4
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %.idx.i.i.3 ; 2 uses
  %niter319.next.3 = add i32 %niter319, 4         ; 2 uses
  %niter319.ncmp.3 = icmp eq i32 %niter319.next.3, %unroll_iter318
  br i1 %niter319.ncmp.3, label %.loopexit.i.i.loopexit223.unr-lcssa, label %.lr.ph622.i.i, !llvm.loop !1281

_ZN4ncnn3MatD2Ev.exit.i.i:                        ; preds = %.split764.i.i
  br i1 %i.anc, label %.lr.ph627.i.i, label %.loopexit.i.i

.lr.ph627.i.i:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit.i.i
  %i.aqk = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1282
  %i.aql = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1282 ; 10 uses
  %i.aqm = mul i64 %i.aql, %i.anb
  %i.aqn = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1282
  %i.aqo = mul i64 %i.aqm, %i.aqn
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aqk, i64 %i.aqo
  %i.aqq = getelementptr [4 x i8], ptr %i.aqp, i64 %indvars.iv684.i.i
  %i.aqr = getelementptr [4 x i8], ptr %i.aqq, i64 %i.and ; 2 uses
  br i1 %i.anm, label %.epil.preheader305, label %.lr.ph627.i.i.new

.lr.ph627.i.i.new:                                ; preds = %.lr.ph627.i.i, %.lr.ph627.i.i.new
  %.0584625.i.i = phi ptr [ %i.arp, %.lr.ph627.i.i.new ], [ %i.aqr, %.lr.ph627.i.i ] ; 2 uses
  %.43624.i.i = phi ptr [ %i.aro, %.lr.ph627.i.i.new ], [ %.36630.i.i, %.lr.ph627.i.i ] ; 9 uses
  %niter312 = phi i32 [ %niter312.next.7, %.lr.ph627.i.i.new ], [ 0, %.lr.ph627.i.i ]
  %i.aqs = load float, ptr %.0584625.i.i, align 4, !tbaa !39
  store float %i.aqs, ptr %.43624.i.i, align 4, !tbaa !39
  %i.aqt = getelementptr inbounds nuw i8, ptr %.43624.i.i, i64 4
  %i.aqu = getelementptr inbounds nuw [4 x i8], ptr %.0584625.i.i, i64 %i.aql ; 2 uses
  %i.aqv = load float, ptr %i.aqu, align 4, !tbaa !39
  store float %i.aqv, ptr %i.aqt, align 4, !tbaa !39
  %i.aqw = getelementptr inbounds nuw i8, ptr %.43624.i.i, i64 8
  %i.aqx = getelementptr inbounds nuw [4 x i8], ptr %i.aqu, i64 %i.aql ; 2 uses
  %i.aqy = load float, ptr %i.aqx, align 4, !tbaa !39
  store float %i.aqy, ptr %i.aqw, align 4, !tbaa !39
  %i.aqz = getelementptr inbounds nuw i8, ptr %.43624.i.i, i64 12
  %i.ara = getelementptr inbounds nuw [4 x i8], ptr %i.aqx, i64 %i.aql ; 2 uses
  %i.arb = load float, ptr %i.ara, align 4, !tbaa !39
  store float %i.arb, ptr %i.aqz, align 4, !tbaa !39
  %i.arc = getelementptr inbounds nuw i8, ptr %.43624.i.i, i64 16
  %i.ard = getelementptr inbounds nuw [4 x i8], ptr %i.ara, i64 %i.aql ; 2 uses
  %i.are = load float, ptr %i.ard, align 4, !tbaa !39
  store float %i.are, ptr %i.arc, align 4, !tbaa !39
  %i.arf = getelementptr inbounds nuw i8, ptr %.43624.i.i, i64 20
  %i.arg = getelementptr inbounds nuw [4 x i8], ptr %i.ard, i64 %i.aql ; 2 uses
  %i.arh = load float, ptr %i.arg, align 4, !tbaa !39
  store float %i.arh, ptr %i.arf, align 4, !tbaa !39
  %i.ari = getelementptr inbounds nuw i8, ptr %.43624.i.i, i64 24
  %i.arj = getelementptr inbounds nuw [4 x i8], ptr %i.arg, i64 %i.aql ; 2 uses
  %i.ark = load float, ptr %i.arj, align 4, !tbaa !39
  store float %i.ark, ptr %i.ari, align 4, !tbaa !39
  %i.arl = getelementptr inbounds nuw i8, ptr %.43624.i.i, i64 28
  %i.arm = getelementptr inbounds nuw [4 x i8], ptr %i.arj, i64 %i.aql ; 2 uses
  %i.arn = load float, ptr %i.arm, align 4, !tbaa !39
  store float %i.arn, ptr %i.arl, align 4, !tbaa !39
  %i.aro = getelementptr inbounds nuw i8, ptr %.43624.i.i, i64 32 ; 3 uses
  %i.arp = getelementptr inbounds nuw [4 x i8], ptr %i.arm, i64 %i.aql ; 2 uses
  %niter312.next.7 = add i32 %niter312, 8         ; 2 uses
  %niter312.ncmp.7 = icmp eq i32 %niter312.next.7, %unroll_iter311
  br i1 %niter312.ncmp.7, label %.loopexit.i.i.loopexit224.unr-lcssa, label %.lr.ph627.i.i.new, !llvm.loop !1285

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph612.i.i
  br i1 %lcmp.mod329.not, label %.loopexit.i.i, label %.lr.ph612.i.i.epil.preheader

.lr.ph612.i.i.epil.preheader:                     ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph612.preheader.i.i
  %.0590610.i.i.epil.init = phi ptr [ %i.anx, %.lr.ph612.preheader.i.i ], [ %i.aon, %.loopexit.i.i.loopexit.unr-lcssa ]
  %.37609.i.i.epil.init = phi ptr [ %.36630.i.i, %.lr.ph612.preheader.i.i ], [ %i.aol, %.loopexit.i.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod331)
  br label %.lr.ph612.i.i.epil

.lr.ph612.i.i.epil:                               ; preds = %.lr.ph612.i.i.epil, %.lr.ph612.i.i.epil.preheader
  %.0590610.i.i.epil = phi ptr [ %i.art, %.lr.ph612.i.i.epil ], [ %.0590610.i.i.epil.init, %.lr.ph612.i.i.epil.preheader ] ; 2 uses
  %.37609.i.i.epil = phi ptr [ %i.arr, %.lr.ph612.i.i.epil ], [ %.37609.i.i.epil.init, %.lr.ph612.i.i.epil.preheader ] ; 2 uses
  %epil.iter328 = phi i32 [ %epil.iter328.next, %.lr.ph612.i.i.epil ], [ 0, %.lr.ph612.i.i.epil.preheader ]
  %i.arq = load <16 x float>, ptr %.0590610.i.i.epil, align 64, !tbaa !100
  store <16 x float> %i.arq, ptr %.37609.i.i.epil, align 64, !tbaa !100
  %i.arr = getelementptr inbounds nuw i8, ptr %.37609.i.i.epil, i64 64 ; 2 uses
  %i.ars = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx630.i.i.epil = shl i64 %i.ars, 6
  %i.art = getelementptr inbounds nuw i8, ptr %.0590610.i.i.epil, i64 %.idx630.i.i.epil
  %epil.iter328.next = add i32 %epil.iter328, 1   ; 2 uses
  %epil.iter328.cmp.not = icmp eq i32 %epil.iter328.next, %xtraiter327
  br i1 %epil.iter328.cmp.not, label %.loopexit.i.i, label %.lr.ph612.i.i.epil, !llvm.loop !1286

.loopexit.i.i.loopexit222.unr-lcssa:              ; preds = %.lr.ph617.i.i
  br i1 %lcmp.mod322.not, label %.loopexit.i.i, label %.lr.ph617.i.i.epil.preheader

.lr.ph617.i.i.epil.preheader:                     ; preds = %.loopexit.i.i.loopexit222.unr-lcssa, %.lr.ph617.preheader.i.i
  %.0588615.i.i.epil.init = phi ptr [ %i.aov, %.lr.ph617.preheader.i.i ], [ %i.apl, %.loopexit.i.i.loopexit222.unr-lcssa ]
  %.39614.i.i.epil.init = phi ptr [ %.36630.i.i, %.lr.ph617.preheader.i.i ], [ %i.apj, %.loopexit.i.i.loopexit222.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod324)
  br label %.lr.ph617.i.i.epil

.lr.ph617.i.i.epil:                               ; preds = %.lr.ph617.i.i.epil, %.lr.ph617.i.i.epil.preheader
  %.0588615.i.i.epil = phi ptr [ %i.arx, %.lr.ph617.i.i.epil ], [ %.0588615.i.i.epil.init, %.lr.ph617.i.i.epil.preheader ] ; 2 uses
  %.39614.i.i.epil = phi ptr [ %i.arv, %.lr.ph617.i.i.epil ], [ %.39614.i.i.epil.init, %.lr.ph617.i.i.epil.preheader ] ; 2 uses
  %epil.iter321 = phi i32 [ %epil.iter321.next, %.lr.ph617.i.i.epil ], [ 0, %.lr.ph617.i.i.epil.preheader ]
  %i.aru = load <8 x float>, ptr %.0588615.i.i.epil, align 32, !tbaa !100
  store <8 x float> %i.aru, ptr %.39614.i.i.epil, align 32, !tbaa !100
  %i.arv = getelementptr inbounds nuw i8, ptr %.39614.i.i.epil, i64 32 ; 2 uses
  %i.arw = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx629.i.i.epil = shl i64 %i.arw, 5
  %i.arx = getelementptr inbounds nuw i8, ptr %.0588615.i.i.epil, i64 %.idx629.i.i.epil
  %epil.iter321.next = add i32 %epil.iter321, 1   ; 2 uses
  %epil.iter321.cmp.not = icmp eq i32 %epil.iter321.next, %xtraiter320
  br i1 %epil.iter321.cmp.not, label %.loopexit.i.i, label %.lr.ph617.i.i.epil, !llvm.loop !1287

.loopexit.i.i.loopexit223.unr-lcssa:              ; preds = %.lr.ph622.i.i
  br i1 %lcmp.mod315.not, label %.loopexit.i.i, label %.lr.ph622.i.i.epil.preheader

.lr.ph622.i.i.epil.preheader:                     ; preds = %.loopexit.i.i.loopexit223.unr-lcssa, %.lr.ph622.preheader.i.i
  %.0586620.i.i.epil.init = phi ptr [ %i.apt, %.lr.ph622.preheader.i.i ], [ %i.aqj, %.loopexit.i.i.loopexit223.unr-lcssa ]
  %.41619.i.i.epil.init = phi ptr [ %.36630.i.i, %.lr.ph622.preheader.i.i ], [ %i.aqh, %.loopexit.i.i.loopexit223.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod317)
  br label %.lr.ph622.i.i.epil

.lr.ph622.i.i.epil:                               ; preds = %.lr.ph622.i.i.epil, %.lr.ph622.i.i.epil.preheader
  %.0586620.i.i.epil = phi ptr [ %i.asb, %.lr.ph622.i.i.epil ], [ %.0586620.i.i.epil.init, %.lr.ph622.i.i.epil.preheader ] ; 2 uses
  %.41619.i.i.epil = phi ptr [ %i.arz, %.lr.ph622.i.i.epil ], [ %.41619.i.i.epil.init, %.lr.ph622.i.i.epil.preheader ] ; 2 uses
  %epil.iter314 = phi i32 [ %epil.iter314.next, %.lr.ph622.i.i.epil ], [ 0, %.lr.ph622.i.i.epil.preheader ]
  %i.ary = load <4 x float>, ptr %.0586620.i.i.epil, align 16, !tbaa !100
  store <4 x float> %i.ary, ptr %.41619.i.i.epil, align 16, !tbaa !100
  %i.arz = getelementptr inbounds nuw i8, ptr %.41619.i.i.epil, i64 16 ; 2 uses
  %i.asa = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx.i.i.epil = shl i64 %i.asa, 4
  %i.asb = getelementptr inbounds nuw i8, ptr %.0586620.i.i.epil, i64 %.idx.i.i.epil
  %epil.iter314.next = add i32 %epil.iter314, 1   ; 2 uses
  %epil.iter314.cmp.not = icmp eq i32 %epil.iter314.next, %xtraiter313
  br i1 %epil.iter314.cmp.not, label %.loopexit.i.i, label %.lr.ph622.i.i.epil, !llvm.loop !1288

.loopexit.i.i.loopexit224.unr-lcssa:              ; preds = %.lr.ph627.i.i.new
  br i1 %lcmp.mod308.not, label %.loopexit.i.i, label %.epil.preheader305

.epil.preheader305:                               ; preds = %.loopexit.i.i.loopexit224.unr-lcssa, %.lr.ph627.i.i
  %.0584625.i.i.epil.init = phi ptr [ %i.aqr, %.lr.ph627.i.i ], [ %i.arp, %.loopexit.i.i.loopexit224.unr-lcssa ]
  %.43624.i.i.epil.init = phi ptr [ %.36630.i.i, %.lr.ph627.i.i ], [ %i.aro, %.loopexit.i.i.loopexit224.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod310)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader305
  %.0584625.i.i.epil = phi ptr [ %.0584625.i.i.epil.init, %.epil.preheader305 ], [ %i.ase, %bb.e ] ; 2 uses
  %.43624.i.i.epil = phi ptr [ %.43624.i.i.epil.init, %.epil.preheader305 ], [ %i.asd, %bb.e ] ; 2 uses
  %epil.iter307 = phi i32 [ 0, %.epil.preheader305 ], [ %epil.iter307.next, %bb.e ]
  %i.asc = load float, ptr %.0584625.i.i.epil, align 4, !tbaa !39
  store float %i.asc, ptr %.43624.i.i.epil, align 4, !tbaa !39
  %i.asd = getelementptr inbounds nuw i8, ptr %.43624.i.i.epil, i64 4 ; 2 uses
  %i.ase = getelementptr inbounds nuw [4 x i8], ptr %.0584625.i.i.epil, i64 %i.aql
  %epil.iter307.next = add i32 %epil.iter307, 1   ; 2 uses
  %epil.iter307.cmp.not = icmp eq i32 %epil.iter307.next, %xtraiter306
  br i1 %epil.iter307.cmp.not, label %.loopexit.i.i, label %bb.e, !llvm.loop !1289

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit224.unr-lcssa, %bb.e, %.loopexit.i.i.loopexit223.unr-lcssa, %.lr.ph622.i.i.epil, %.loopexit.i.i.loopexit222.unr-lcssa, %.lr.ph617.i.i.epil, %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph612.i.i.epil, %_ZN4ncnn3MatD2Ev.exit.i.i, %_ZN4ncnn3MatD2Ev.exit662.i.i, %_ZN4ncnn3MatD2Ev.exit663.i.i, %_ZN4ncnn3MatD2Ev.exit664.i.i, %.split764.i.i
  %.44.i.i = phi ptr [ %.36630.i.i, %.split764.i.i ], [ %.36630.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i ], [ %i.arz, %.lr.ph622.i.i.epil ], [ %i.arr, %.lr.ph612.i.i.epil ], [ %.36630.i.i, %_ZN4ncnn3MatD2Ev.exit662.i.i ], [ %i.arv, %.lr.ph617.i.i.epil ], [ %.36630.i.i, %_ZN4ncnn3MatD2Ev.exit663.i.i ], [ %.36630.i.i, %_ZN4ncnn3MatD2Ev.exit664.i.i ], [ %i.aol, %.loopexit.i.i.loopexit.unr-lcssa ], [ %i.apj, %.loopexit.i.i.loopexit222.unr-lcssa ], [ %i.aqh, %.loopexit.i.i.loopexit223.unr-lcssa ], [ %i.aro, %.loopexit.i.i.loopexit224.unr-lcssa ], [ %i.asd, %bb.e ]
  %indvars.iv.next685.i.i = add nsw i64 %indvars.iv684.i.i, 1 ; 2 uses
  %exitcond687.not.i.i = icmp eq i64 %indvars.iv.next685.i.i, %wide.trip.count.i.i
  br i1 %exitcond687.not.i.i, label %_ZN4ncnn3MatD2Ev.exit, label %.split764.i.i, !llvm.loop !1290

bb.f:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit36
  %i.asf = icmp eq i32 %i.at, 2                   ; 4 uses
  %or.cond13.i = and i1 %or.cond.i, %i.asf
  %i.asg = icmp eq i32 %i.au, 2                   ; 4 uses
  %or.cond15.i = and i1 %or.cond13.i, %i.asg
  br i1 %or.cond15.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call fastcc void @_ZN4ncnnL34convolution_im2col_input_tile_implERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull readonly align 8 dereferenceable(72) %9, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated64, i32 noundef %i.x, i32 noundef %.sroa.speculated, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 2, i32 noundef 2)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ash = icmp eq i32 %i.ap, 3
  %i.asi = icmp eq i32 %i.aq, 3
  %or.cond17.i = and i1 %i.ash, %i.asi
  %or.cond19.i = and i1 %or.cond17.i, %i.ax
  %or.cond21.i = and i1 %or.cond19.i, %i.ay       ; 2 uses
  %or.cond23.i = and i1 %or.cond21.i, %i.az
  %or.cond25.i = and i1 %or.cond23.i, %i.ba
  br i1 %or.cond25.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call fastcc void @_ZN4ncnnL34convolution_im2col_input_tile_implERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull readonly align 8 dereferenceable(72) %9, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated64, i32 noundef %i.x, i32 noundef %.sroa.speculated, i32 noundef 3, i32 noundef 3, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.j:                                             ; preds = %bb.h
  %or.cond33.i = and i1 %or.cond21.i, %i.asf
  %or.cond35.i = and i1 %or.cond33.i, %i.asg
  br i1 %or.cond35.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call fastcc void @_ZN4ncnnL34convolution_im2col_input_tile_implERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull readonly align 8 dereferenceable(72) %9, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated64, i32 noundef %i.x, i32 noundef %.sroa.speculated, i32 noundef 3, i32 noundef 3, i32 noundef 1, i32 noundef 1, i32 noundef 2, i32 noundef 2)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.asj = icmp eq i32 %i.ap, 5
  %i.ask = icmp eq i32 %i.aq, 5
  %or.cond37.i = and i1 %i.asj, %i.ask
  %or.cond39.i = and i1 %or.cond37.i, %i.ax
  %or.cond41.i = and i1 %or.cond39.i, %i.ay       ; 2 uses
  %or.cond43.i = and i1 %or.cond41.i, %i.az
  %or.cond45.i = and i1 %or.cond43.i, %i.ba
  br i1 %or.cond45.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call fastcc void @_ZN4ncnnL34convolution_im2col_input_tile_implERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull readonly align 8 dereferenceable(72) %9, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated64, i32 noundef %i.x, i32 noundef %.sroa.speculated, i32 noundef 5, i32 noundef 5, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.n:                                             ; preds = %bb.l
  %or.cond53.i = and i1 %or.cond41.i, %i.asf
  %or.cond55.i = and i1 %or.cond53.i, %i.asg
  br i1 %or.cond55.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call fastcc void @_ZN4ncnnL34convolution_im2col_input_tile_implERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull readonly align 8 dereferenceable(72) %9, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated64, i32 noundef %i.x, i32 noundef %.sroa.speculated, i32 noundef 5, i32 noundef 5, i32 noundef 1, i32 noundef 1, i32 noundef 2, i32 noundef 2)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.asl = icmp eq i32 %i.ap, 7
  %i.asm = icmp eq i32 %i.aq, 7
  %or.cond57.i = and i1 %i.asl, %i.asm
  %or.cond59.i = and i1 %or.cond57.i, %i.ax
  %or.cond61.i = and i1 %or.cond59.i, %i.ay
  %or.cond63.i = and i1 %or.cond61.i, %i.asf
  %or.cond65.i = and i1 %or.cond63.i, %i.asg
  br i1 %or.cond65.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call fastcc void @_ZN4ncnnL34convolution_im2col_input_tile_implERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull readonly align 8 dereferenceable(72) %9, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated64, i32 noundef %i.x, i32 noundef %.sroa.speculated, i32 noundef 7, i32 noundef 7, i32 noundef 1, i32 noundef 1, i32 noundef 2, i32 noundef 2)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.r:                                             ; preds = %bb.p
  call fastcc void @_ZN4ncnnL34convolution_im2col_input_tile_implERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull readonly align 8 dereferenceable(72) %9, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated64, i32 noundef %i.x, i32 noundef %.sroa.speculated, i32 noundef %i.ap, i32 noundef %i.aq, i32 noundef %i.ar, i32 noundef %i.as, i32 noundef %i.at, i32 noundef %i.au)
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.loopexit.i.i, %bb.r, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %.lr.ph631.i.i, %.preheader.i.i
  %i.asn = add nsw i32 %.0106, 1
  %i.aso = load i32, ptr %i.b, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.0106, %i.aso
  br i1 %.not.not, label %_ZN4ncnn3MatD2Ev.exit36, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL23convolution_im2col_gemmERKNS_3MatERS0_S2_S2_iiiiiiiRKNS_6OptionE.omp_outlined.6(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13) #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ie

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.h = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !67
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !67
  %i.k = load i32, ptr %i.a, align 4, !tbaa !67   ; 2 uses
  %.not319 = icmp sgt i32 %i.k, %i.j
  br i1 %.not319, label %._crit_edge323, label %.lr.ph322

.lr.ph322:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph322, %_ZN4ncnn3MatD2Ev.exit
  %.045320 = phi i32 [ %i.k, %.lr.ph322 ], [ %i.ar, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.v = load i32, ptr %3, align 4, !tbaa !67     ; 2 uses
  %i.w = mul nsw i32 %i.v, %.045320               ; 3 uses
  %i.x = load i32, ptr %4, align 4, !tbaa !67
  %i.y = load i32, ptr %5, align 4, !tbaa !67
  %i.z = icmp sgt i32 %i.x, %i.y
  br i1 %i.z, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit50

bb.d:                                             ; preds = %bb.c
  %i.aa = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %bb.e unwind label %bb.if

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %6, align 8, !tbaa !18, !noalias !1291
  %i.ac = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !1291
  %i.ad = sext i32 %i.aa to i64
  %i.ae = mul i64 %i.ac, %i.ad
  %i.af = load i64, ptr %i.m, align 8, !tbaa !65, !noalias !1291
  %i.ag = mul i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ag
  %.pre = load i32, ptr %3, align 4, !tbaa !67
  br label %_ZN4ncnn3MatD2Ev.exit50

_ZN4ncnn3MatD2Ev.exit50:                          ; preds = %bb.e, %bb.c
  %i.ai = phi i32 [ %i.v, %bb.c ], [ %.pre, %bb.e ]
  %.sroa.0167.0 = phi ptr [ null, %bb.c ], [ %i.ah, %bb.e ] ; 2 uses
  %i.aj = load i32, ptr %7, align 4, !tbaa !67
  %i.ak = sub nsw i32 %i.aj, %i.w
  %.sroa.speculated149 = call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.ak) ; 7 uses
  %i.al = load i32, ptr %8, align 4, !tbaa !67    ; 2 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit50
  %i.an = icmp sgt i32 %.sroa.speculated149, 15
  %i.ao = sext i32 %i.w to i64                    ; 10 uses
  %i.ap = zext nneg i32 %.sroa.speculated149 to i64
  %i.aq = sext i32 %.sroa.speculated149 to i64    ; 4 uses
  %invariant.op.i = add nsw i64 %i.aq, -7
  %invariant.op1890.i = add nsw i64 %i.aq, -3
  %invariant.op1891.i = add nsw i64 %i.aq, -1
  %.pre461 = load i32, ptr %9, align 4, !tbaa !67
  %.pre462 = load i32, ptr %4, align 4, !tbaa !67
  br label %bb.f

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge, %_ZN4ncnn3MatD2Ev.exit50
  %i.ar = add nsw i32 %.045320, 1
  %i.as = load i32, ptr %i.b, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.045320, %i.as
  br i1 %.not.not, label %bb.c, label %._crit_edge323

bb.f:                                             ; preds = %.lr.ph, %._crit_edge
  %i.at = phi i32 [ %i.al, %.lr.ph ], [ %i.bb, %._crit_edge ] ; 2 uses
  %i.au = phi i32 [ %.pre461, %.lr.ph ], [ %i.bc, %._crit_edge ] ; 2 uses
  %i.av = phi i32 [ %.pre462, %.lr.ph ], [ %i.bd, %._crit_edge ] ; 3 uses
  %.044318 = phi i32 [ 0, %.lr.ph ], [ %i.be, %._crit_edge ] ; 7 uses
  %i.aw = sub nsw i32 %i.at, %.044318
  %.sroa.speculated145 = call i32 @llvm.smin.i32(i32 %i.au, i32 %i.aw) ; 47 uses
  %i.ax = icmp sgt i32 %i.av, 0
  br i1 %i.ax, label %.noexc.lr.ph, label %._crit_edge
end_hunk_9
begin_hunk_10_@_ZN4ncnnL23convolution_im2col_gemmERKNS_3MatERS0_S2_S2_iiiiiiiRKNS_6OptionE.omp_outlined.6:bb.a
  %.121271436.i = phi float [ %i.cqo, %.lr.ph1440.i ], [ %.121271436.i.ph, %.lr.ph1440.i.preheader ]
  %.121291435.i = phi float [ %i.cqk, %.lr.ph1440.i ], [ %.121291435.i.ph, %.lr.ph1440.i.preheader ]
  %.71434.i = phi ptr [ %i.cqq, %.lr.ph1440.i ], [ %.71434.i.ph, %.lr.ph1440.i.preheader ] ; 3 uses
  %i.cqh = load float, ptr %.021251437.i, align 4, !tbaa !39 ; 2 uses
  %i.cqi = load float, ptr %.71434.i, align 4, !tbaa !39
  %i.cqj = fmul fast float %i.cqi, %i.cqh
  %i.cqk = fadd fast float %i.cqj, %.121291435.i  ; 2 uses
  %i.cql = getelementptr inbounds nuw i8, ptr %.71434.i, i64 4
  %i.cqm = load float, ptr %i.cql, align 4, !tbaa !39
  %i.cqn = fmul fast float %i.cqm, %i.cqh
  %i.cqo = fadd fast float %i.cqn, %.121271436.i  ; 2 uses
  %i.cqp = getelementptr inbounds nuw i8, ptr %.021251437.i, i64 4
  %i.cqq = getelementptr inbounds nuw i8, ptr %.71434.i, i64 8
  %i.cqr = add nuw nsw i32 %.021241438.i, 1       ; 2 uses
  %exitcond1706.not.i = icmp eq i32 %i.cqr, %.sroa.speculated
  br i1 %exitcond1706.not.i, label %._crit_edge1441.loopexit.i, label %.lr.ph1440.i, !llvm.loop !1362

._crit_edge1441.loopexit.i:                       ; preds = %.lr.ph1440.i, %vec.epilog.middle.block849, %middle.block819
  %.lcssa749 = phi float [ %i.cqg, %vec.epilog.middle.block849 ], [ %i.cpu, %middle.block819 ], [ %i.cqk, %.lr.ph1440.i ]
  %.lcssa748 = phi float [ %i.cqf, %vec.epilog.middle.block849 ], [ %i.cpt, %middle.block819 ], [ %i.cqo, %.lr.ph1440.i ]
  %i.cqs = getelementptr i8, ptr %.61447.i, i64 %i.btv
  %scevgep1705.i = getelementptr i8, ptr %i.cqs, i64 8
  br label %._crit_edge1441.i

._crit_edge1441.i:                                ; preds = %._crit_edge1441.loopexit.i, %bb.hv
  %.7.lcssa.i = phi ptr [ %.61447.i, %bb.hv ], [ %scevgep1705.i, %._crit_edge1441.loopexit.i ] ; 2 uses
  %.12129.lcssa.i = phi float [ %.02128.i, %bb.hv ], [ %.lcssa749, %._crit_edge1441.loopexit.i ] ; 2 uses
  %.12127.lcssa.i = phi float [ %.02126.i, %bb.hv ], [ %.lcssa748, %._crit_edge1441.loopexit.i ] ; 2 uses
  br i1 %.not179, label %bb.hx, label %bb.hw

bb.hw:                                            ; preds = %._crit_edge1441.i
  store float %.12129.lcssa.i, ptr %.621511446.i, align 4, !tbaa !39
  %i.cqt = getelementptr inbounds nuw i8, ptr %.621511446.i, i64 4
  store float %.12127.lcssa.i, ptr %i.cqt, align 4, !tbaa !39
  %i.cqu = getelementptr inbounds nuw i8, ptr %.621511446.i, i64 8
  br label %bb.hy

bb.hx:                                            ; preds = %._crit_edge1441.i
  store float %.12129.lcssa.i, ptr %.281445.i, align 4, !tbaa !39
  %i.cqv = getelementptr inbounds nuw i8, ptr %.281445.i, i64 4
  store float %.12127.lcssa.i, ptr %i.cqv, align 4, !tbaa !39
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hx, %bb.hw
  %.72152.i = phi ptr [ %i.cqu, %bb.hw ], [ %.621511446.i, %bb.hx ] ; 2 uses
  %i.cqw = getelementptr inbounds nuw i8, ptr %.281445.i, i64 8 ; 2 uses
  %i.cqx = add nuw nsw i32 %.31448.i, 2           ; 3 uses
  %i.cqy = or disjoint i32 %i.cqx, 1
  %i.cqz = icmp slt i32 %i.cqy, %.sroa.speculated145
  br i1 %i.cqz, label %bb.hr, label %.preheader.i, !llvm.loop !1363

bb.hz:                                            ; preds = %bb.id, %.lr.ph1467.i
  %.41466.i = phi i32 [ %.3.lcssa.i, %.lr.ph1467.i ], [ %i.csl, %bb.id ]
  %.81465.i = phi ptr [ %.6.lcssa.i, %.lr.ph1467.i ], [ %.9.lcssa.i, %bb.id ] ; 7 uses
  %.821531464.i = phi ptr [ %.62151.lcssa.i, %.lr.ph1467.i ], [ %.92154.i, %bb.id ] ; 3 uses
  %.291463.i = phi ptr [ %.28.lcssa.i, %.lr.ph1467.i ], [ %i.csk, %bb.id ] ; 3 uses
  br i1 %brmerge.i, label %.sink.split.i, label %bb.ia

.sink.split.i:                                    ; preds = %bb.hz
  %.291463.mux.i = select i1 %i.btn, ptr %.291463.i, ptr %.92187.i
  %i.cra = load float, ptr %.291463.mux.i, align 4, !tbaa !39
  br label %bb.ia

bb.ia:                                            ; preds = %.sink.split.i, %bb.hz
  %.02123.i = phi nsz float [ 0.000000e+00, %bb.hz ], [ %i.cra, %.sink.split.i ] ; 4 uses
  br i1 %i.bto, label %iter.check, label %._crit_edge1460.i

iter.check:                                       ; preds = %bb.ia
  br i1 %min.iters.check, label %.lr.ph1459.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check755, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.crb = getelementptr i8, ptr %.81465.i, i64 %i.bun
  %i.crc = insertelement <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.02123.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x float> [ %i.crc, %vector.ph ], [ %i.cro, %vector.body ]
  %vec.phi756 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.crp, %vector.body ]
  %vec.phi757 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.crq, %vector.body ]
  %vec.phi758 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.crr, %vector.body ]
  %i.crd = shl i64 %index, 2                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.421751473.i, i64 %i.crd ; 4 uses
  %next.gep759 = getelementptr i8, ptr %.81465.i, i64 %i.crd ; 4 uses
  %i.cre = getelementptr i8, ptr %next.gep, i64 64
  %i.crf = getelementptr i8, ptr %next.gep, i64 128
  %i.crg = getelementptr i8, ptr %next.gep, i64 192
  %wide.load = load <16 x float>, ptr %next.gep, align 4, !tbaa !39
  %wide.load760 = load <16 x float>, ptr %i.cre, align 4, !tbaa !39
  %wide.load761 = load <16 x float>, ptr %i.crf, align 4, !tbaa !39
  %wide.load762 = load <16 x float>, ptr %i.crg, align 4, !tbaa !39
  %i.crh = getelementptr i8, ptr %next.gep759, i64 64
  %i.cri = getelementptr i8, ptr %next.gep759, i64 128
  %i.crj = getelementptr i8, ptr %next.gep759, i64 192
  %wide.load763 = load <16 x float>, ptr %next.gep759, align 4, !tbaa !39
  %wide.load764 = load <16 x float>, ptr %i.crh, align 4, !tbaa !39
  %wide.load765 = load <16 x float>, ptr %i.cri, align 4, !tbaa !39
  %wide.load766 = load <16 x float>, ptr %i.crj, align 4, !tbaa !39
  %i.crk = fmul fast <16 x float> %wide.load763, %wide.load
  %i.crl = fmul fast <16 x float> %wide.load764, %wide.load760
  %i.crm = fmul fast <16 x float> %wide.load765, %wide.load761
  %i.crn = fmul fast <16 x float> %wide.load766, %wide.load762
  %i.cro = fadd fast <16 x float> %i.crk, %vec.phi ; 2 uses
  %i.crp = fadd fast <16 x float> %i.crl, %vec.phi756 ; 2 uses
  %i.crq = fadd fast <16 x float> %i.crm, %vec.phi757 ; 2 uses
  %i.crr = fadd fast <16 x float> %i.crn, %vec.phi758 ; 2 uses
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.crs = icmp eq i64 %index.next, %n.vec
  br i1 %i.crs, label %middle.block, label %vector.body, !llvm.loop !1364

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <16 x float> %i.crp, %i.cro
  %bin.rdx767 = fadd fast <16 x float> %i.crq, %bin.rdx
  %bin.rdx768 = fadd fast <16 x float> %i.crr, %bin.rdx767
  %i.crt = call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx768) ; 3 uses
  br i1 %cmp.n, label %._crit_edge1460.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph1459.i.preheader, label %vec.epilog.ph, !prof !216

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.crt, %vec.epilog.iter.check ], [ %.02123.i, %vector.main.loop.iter.check ]
  %i.cru = getelementptr i8, ptr %.81465.i, i64 %i.bup
  %i.crv = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index772 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next778, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi773 = phi <8 x float> [ %i.crv, %vec.epilog.ph ], [ %i.cry, %vec.epilog.vector.body ]
  %i.crw = shl i64 %index772, 2                   ; 2 uses
  %next.gep774 = getelementptr i8, ptr %.421751473.i, i64 %i.crw
  %next.gep775 = getelementptr i8, ptr %.81465.i, i64 %i.crw
  %wide.load776 = load <8 x float>, ptr %next.gep774, align 4, !tbaa !39
  %wide.load777 = load <8 x float>, ptr %next.gep775, align 4, !tbaa !39
  %i.crx = fmul fast <8 x float> %wide.load777, %wide.load776
  %i.cry = fadd fast <8 x float> %i.crx, %vec.phi773 ; 2 uses
  %index.next778 = add nuw i64 %index772, 8       ; 2 uses
  %i.crz = icmp eq i64 %index.next778, %n.vec771
  br i1 %i.crz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1365

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.csa = call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.cry) ; 2 uses
  br i1 %cmp.n779, label %._crit_edge1460.loopexit.i, label %.lr.ph1459.i.preheader

.lr.ph1459.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01457.i.ph = phi i32 [ 0, %iter.check ], [ %i.bum, %vec.epilog.iter.check ], [ %i.buo, %vec.epilog.middle.block ]
  %.021221456.i.ph = phi ptr [ %.421751473.i, %iter.check ], [ %i.col, %vec.epilog.iter.check ], [ %i.com, %vec.epilog.middle.block ]
  %.11455.i.ph = phi float [ %.02123.i, %iter.check ], [ %i.crt, %vec.epilog.iter.check ], [ %i.csa, %vec.epilog.middle.block ]
  %.91454.i.ph = phi ptr [ %.81465.i, %iter.check ], [ %i.crb, %vec.epilog.iter.check ], [ %i.cru, %vec.epilog.middle.block ]
  br label %.lr.ph1459.i

.lr.ph1459.i:                                     ; preds = %.lr.ph1459.i.preheader, %.lr.ph1459.i
  %.01457.i = phi i32 [ %i.csh, %.lr.ph1459.i ], [ %.01457.i.ph, %.lr.ph1459.i.preheader ]
  %.021221456.i = phi ptr [ %i.csf, %.lr.ph1459.i ], [ %.021221456.i.ph, %.lr.ph1459.i.preheader ] ; 2 uses
  %.11455.i = phi float [ %i.cse, %.lr.ph1459.i ], [ %.11455.i.ph, %.lr.ph1459.i.preheader ]
  %.91454.i = phi ptr [ %i.csg, %.lr.ph1459.i ], [ %.91454.i.ph, %.lr.ph1459.i.preheader ] ; 2 uses
  %i.csb = load float, ptr %.021221456.i, align 4, !tbaa !39
  %i.csc = load float, ptr %.91454.i, align 4, !tbaa !39
  %i.csd = fmul fast float %i.csc, %i.csb
  %i.cse = fadd fast float %i.csd, %.11455.i      ; 2 uses
  %i.csf = getelementptr inbounds nuw i8, ptr %.021221456.i, i64 4
  %i.csg = getelementptr inbounds nuw i8, ptr %.91454.i, i64 4
  %i.csh = add nuw nsw i32 %.01457.i, 1           ; 2 uses
  %exitcond1708.not.i = icmp eq i32 %i.csh, %.sroa.speculated
  br i1 %exitcond1708.not.i, label %._crit_edge1460.loopexit.i, label %.lr.ph1459.i, !llvm.loop !1366

._crit_edge1460.loopexit.i:                       ; preds = %.lr.ph1459.i, %vec.epilog.middle.block, %middle.block
  %.lcssa752 = phi float [ %i.csa, %vec.epilog.middle.block ], [ %i.crt, %middle.block ], [ %i.cse, %.lr.ph1459.i ]
  %i.csi = getelementptr i8, ptr %.81465.i, i64 %i.btw
  %scevgep1707.i = getelementptr i8, ptr %i.csi, i64 4
  br label %._crit_edge1460.i

._crit_edge1460.i:                                ; preds = %._crit_edge1460.loopexit.i, %bb.ia
  %.9.lcssa.i = phi ptr [ %.81465.i, %bb.ia ], [ %scevgep1707.i, %._crit_edge1460.loopexit.i ]
  %.1.lcssa.i = phi float [ %.02123.i, %bb.ia ], [ %.lcssa752, %._crit_edge1460.loopexit.i ] ; 2 uses
  br i1 %.not179, label %bb.ic, label %bb.ib

bb.ib:                                            ; preds = %._crit_edge1460.i
  store float %.1.lcssa.i, ptr %.821531464.i, align 4, !tbaa !39
  %i.csj = getelementptr inbounds nuw i8, ptr %.821531464.i, i64 4
  br label %bb.id

bb.ic:                                            ; preds = %._crit_edge1460.i
  store float %.1.lcssa.i, ptr %.291463.i, align 4, !tbaa !39
  br label %bb.id

bb.id:                                            ; preds = %bb.ic, %bb.ib
  %.92154.i = phi ptr [ %i.csj, %bb.ib ], [ %.821531464.i, %bb.ic ]
  %i.csk = getelementptr inbounds nuw i8, ptr %.291463.i, i64 4 ; 2 uses
  %i.csl = add nuw nsw i32 %.41466.i, 1           ; 2 uses
  %exitcond1709.not.i = icmp eq i32 %i.csl, %.sroa.speculated145
  br i1 %exitcond1709.not.i, label %._crit_edge1468.i, label %bb.hz, !llvm.loop !1367

._crit_edge1468.i:                                ; preds = %bb.id, %.preheader.i
  %.29.lcssa.i = phi ptr [ %.28.lcssa.i, %.preheader.i ], [ %i.csk, %bb.id ]
  %i.csm = getelementptr inbounds [4 x i8], ptr %.421751473.i, i64 %i.btp
  %indvars.iv.next1711.i = add nsw i64 %indvars.iv1710.i, 1 ; 2 uses
  %exitcond1713.not.i = icmp eq i64 %indvars.iv.next1711.i, %i.aq
  br i1 %exitcond1713.not.i, label %_ZN4ncnn3MatD2Ev.exit46, label %bb.gq, !llvm.loop !1368

_ZN4ncnn3MatD2Ev.exit46:                          ; preds = %._crit_edge1468.i, %.preheader834.i
  %i.csn = load i32, ptr %5, align 4, !tbaa !67   ; 2 uses
  %i.cso = add nsw i32 %i.csn, %.0317             ; 2 uses
  %i.csp = load i32, ptr %4, align 4, !tbaa !67   ; 3 uses
  %i.csq = icmp slt i32 %i.cso, %i.csp
  br i1 %i.csq, label %.noexc, label %._crit_edge.loopexit, !llvm.loop !1369

._crit_edge323:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.ie

bb.ie:                                            ; preds = %._crit_edge323, %bb.a
  ret void

bb.if:                                            ; preds = %bb.d
  %i.csr = landingpad { ptr, i32 }
          catch ptr null
  %i.css = extractvalue { ptr, i32 } %i.csr, 0
  call void @__clang_call_terminate(ptr %i.css) #36
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL26conv3x3s1_pack16to1_avx512ERKNS_3MatERS0_S2_S2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10) #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %3, align 4, !tbaa !67     ; 7 uses
  %i.f = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = xor i32 %i.e, -1
  %i.i = add i32 %i.f, %i.h                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.i, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.j = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %i.j, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.k = load i32, ptr %i.b, align 4, !tbaa !67
  %i.l = call i32 @llvm.umin.i32(i32 %i.k, i32 %i.i) ; 7 uses
  store i32 %i.l, ptr %i.b, align 4, !tbaa !67
  %i.m = load i32, ptr %i.a, align 4, !tbaa !67   ; 10 uses
  %i.n = add i32 %i.l, 1                          ; 3 uses
  %i.o = icmp ult i32 %i.m, %i.n
  br i1 %i.o, label %_ZN4ncnn3Mat7channelEi.exit.lr.ph, label %._crit_edge

_ZN4ncnn3Mat7channelEi.exit.lr.ph:                ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.q = load i32, ptr %i.p, align 4, !tbaa !75, !noalias !1370
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.s = load i32, ptr %i.r, align 8, !tbaa !76, !noalias !1370
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.u = load i32, ptr %i.t, align 4, !tbaa !226, !noalias !1370
  %i.v = load ptr, ptr %4, align 8, !tbaa !18, !noalias !1370 ; 13 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.x = load i64, ptr %i.w, align 8, !tbaa !20, !noalias !1370
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !65, !noalias !1370 ; 3 uses
  %factor.op.mul169 = mul i64 %i.x, %i.z          ; 13 uses
  %i.aa = sext i32 %i.q to i64
  %i.ab = sext i32 %i.s to i64
  %i.ac = mul nsw i64 %i.ab, %i.aa                ; 2 uses
  %i.ad = mul i64 %i.z, %i.ac
  %i.ae = add i64 %i.ad, 15
  %i.af = and i64 %i.ae, -16
  %i.ag = udiv i64 %i.af, %i.z
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !225, !noalias !1370
  %i.aj = icmp eq i32 %i.ai, 4
  %spec.select = select i1 %i.aj, i64 %i.ac, i64 %i.ag
  %i.ak = load ptr, ptr %5, align 8, !tbaa !235   ; 4 uses
  %.not = icmp eq ptr %i.ak, null                 ; 3 uses
  %i.al = trunc i64 %spec.select to i32
  %i.am = mul i32 %i.u, %i.al                     ; 15 uses
  %i.an = icmp sgt i32 %i.am, 0                   ; 3 uses
  %i.ao = load ptr, ptr %6, align 8, !tbaa !18, !noalias !1373
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !20, !noalias !1373
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !65, !noalias !1373
  %factor.op.mul171 = mul i64 %i.aq, %i.as
  %i.at = load i32, ptr %7, align 4, !tbaa !67    ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %_ZN4ncnn3Mat7channelEi.exit.lr.ph.split.us, label %_ZN4ncnn3Mat7channelEi.exit.lr.ph.split

_ZN4ncnn3Mat7channelEi.exit.lr.ph.split.us:       ; preds = %_ZN4ncnn3Mat7channelEi.exit.lr.ph
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !75, !noalias !1376
  %i.az = load ptr, ptr %8, align 8, !tbaa !18, !noalias !1376
  %i.ba = load i64, ptr %i.aw, align 8, !tbaa !20, !noalias !1376
  %i.bb = load i64, ptr %i.av, align 8, !tbaa !65, !noalias !1376 ; 2 uses
  %factor.op.mul.us = mul i64 %i.ba, %i.bb
  %i.bc = sext i32 %i.ay to i64
  %i.bd = load i32, ptr %9, align 4, !tbaa !67    ; 2 uses
  %i.be = icmp sgt i32 %i.bd, 0
  %i.bf = mul i64 %i.bb, %i.bc                    ; 3 uses
  br i1 %i.be, label %_ZN4ncnn3Mat7channelEi.exit.lr.ph.split.us.split.us, label %_ZN4ncnn3Mat7channelEi.exit.lr.ph.split.us.split

_ZN4ncnn3Mat7channelEi.exit.lr.ph.split.us.split.us: ; preds = %_ZN4ncnn3Mat7channelEi.exit.lr.ph.split.us
  %i.bg = load i32, ptr %10, align 4, !tbaa !67   ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, 0
  %wide.trip.count210 = zext nneg i32 %i.at to i64
  %wide.trip.count = zext nneg i32 %i.bd to i64
  %i.bi = zext i32 %i.am to i64                   ; 5 uses
  %min.iters.check276 = icmp ult i32 %i.am, 8
  %min.iters.check278 = icmp ult i32 %i.am, 64
  %i.bj = and i64 %i.bi, 56
  %n.vec280 = and i64 %i.bi, 2147483584           ; 5 uses
  %i.bk = trunc nuw nsw i64 %n.vec280 to i32
  %i.bl = shl nuw nsw i64 %n.vec280, 2
  %cmp.n288 = icmp eq i64 %n.vec280, %i.bi
  %min.epilog.iters.check294 = icmp eq i64 %i.bj, 0
  %n.vec296 = and i64 %i.bi, 2147483640           ; 4 uses
  %i.bm = trunc nuw nsw i64 %n.vec296 to i32
  %i.bn = shl nuw nsw i64 %n.vec296, 2
  %cmp.n304 = icmp eq i64 %n.vec296, %i.bi
  br label %_ZN4ncnn3Mat7channelEi.exit.us.us

_ZN4ncnn3Mat7channelEi.exit.us.us:                ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.split167.us.us, %_ZN4ncnn3Mat7channelEi.exit.lr.ph.split.us.split.us
  %.097168.us.us = phi i32 [ %i.m, %_ZN4ncnn3Mat7channelEi.exit.lr.ph.split.us.split.us ], [ %i.ev, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split167.us.us ] ; 3 uses
  %i.bo = add i32 %.097168.us.us, %i.e
  %i.bp = sext i32 %i.bo to i64                   ; 3 uses
  %.reass170.us.us = mul i64 %factor.op.mul169, %i.bp
  %i.bq = getelementptr inbounds nuw i8, ptr %i.v, i64 %.reass170.us.us ; 6 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit.us.us
  %i.br = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.bp
  %i.bs = load float, ptr %i.br, align 4, !tbaa !39
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4ncnn3Mat7channelEi.exit.us.us
  %i.bt = phi fast float [ %i.bs, %bb.c ], [ 0.000000e+00, %_ZN4ncnn3Mat7channelEi.exit.us.us ] ; 3 uses
  br i1 %i.an, label %iter.check291, label %.noexc100.us.us

iter.check291:                                    ; preds = %bb.d
  br i1 %min.iters.check276, label %.lr.ph.us.us.preheader, label %vector.main.loop.iter.check277

vector.main.loop.iter.check277:                   ; preds = %iter.check291
  br i1 %min.iters.check278, label %vec.epilog.ph295, label %vector.ph279

vector.ph279:                                     ; preds = %vector.main.loop.iter.check277
  %i.bu = getelementptr i8, ptr %i.bq, i64 %i.bl
  %broadcast.splatinsert281 = insertelement <16 x float> poison, float %i.bt, i64 0
  %broadcast.splat282 = shufflevector <16 x float> %broadcast.splatinsert281, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body283

vector.body283:                                   ; preds = %vector.body283, %vector.ph279
  %index284 = phi i64 [ 0, %vector.ph279 ], [ %index.next286, %vector.body283 ] ; 2 uses
  %i.bv = shl i64 %index284, 2
  %next.gep285 = getelementptr i8, ptr %i.bq, i64 %i.bv ; 4 uses
  %i.bw = getelementptr i8, ptr %next.gep285, i64 64
  %i.bx = getelementptr i8, ptr %next.gep285, i64 128
  %i.by = getelementptr i8, ptr %next.gep285, i64 192
  store <16 x float> %broadcast.splat282, ptr %next.gep285, align 4, !tbaa !39
  store <16 x float> %broadcast.splat282, ptr %i.bw, align 4, !tbaa !39
  store <16 x float> %broadcast.splat282, ptr %i.bx, align 4, !tbaa !39
  store <16 x float> %broadcast.splat282, ptr %i.by, align 4, !tbaa !39
  %index.next286 = add nuw i64 %index284, 64      ; 2 uses
  %i.bz = icmp eq i64 %index.next286, %n.vec280
  br i1 %i.bz, label %middle.block287, label %vector.body283, !llvm.loop !1379

middle.block287:                                  ; preds = %vector.body283
  br i1 %cmp.n288, label %.noexc100.us.us, label %vec.epilog.iter.check293

vec.epilog.iter.check293:                         ; preds = %middle.block287
  br i1 %min.epilog.iters.check294, label %.lr.ph.us.us.preheader, label %vec.epilog.ph295, !prof !216

vec.epilog.ph295:                                 ; preds = %vector.main.loop.iter.check277, %vec.epilog.iter.check293
  %vec.epilog.resume.val289 = phi i64 [ %n.vec280, %vec.epilog.iter.check293 ], [ 0, %vector.main.loop.iter.check277 ]
  %i.ca = getelementptr i8, ptr %i.bq, i64 %i.bn
  %broadcast.splatinsert297 = insertelement <8 x float> poison, float %i.bt, i64 0
  %broadcast.splat298 = shufflevector <8 x float> %broadcast.splatinsert297, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body299

vec.epilog.vector.body299:                        ; preds = %vec.epilog.vector.body299, %vec.epilog.ph295
  %index300 = phi i64 [ %vec.epilog.resume.val289, %vec.epilog.ph295 ], [ %index.next302, %vec.epilog.vector.body299 ] ; 2 uses
  %i.cb = shl i64 %index300, 2
  %next.gep301 = getelementptr i8, ptr %i.bq, i64 %i.cb
  store <8 x float> %broadcast.splat298, ptr %next.gep301, align 4, !tbaa !39
  %index.next302 = add nuw i64 %index300, 8       ; 2 uses
  %i.cc = icmp eq i64 %index.next302, %n.vec296
end_hunk_10
begin_hunk_11_@_ZN4ncnnL16pack_A_tile_int8ERKNS_3MatERS0_iii:bb.a
  %i.or = getelementptr inbounds nuw [2 x i8], ptr %.038767.epil.init, i64 %i.bs
  %i.os = getelementptr inbounds nuw i8, ptr %.1066.epil.init, i64 8
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph70.epil.preheader, %.preheader.loopexit.unr-lcssa, %bb.g
  %.10.lcssa = phi ptr [ %.980, %bb.g ], [ %i.qb, %.preheader.loopexit.unr-lcssa ], [ %i.os, %.lr.ph70.epil.preheader ] ; 3 uses
  %.0387.lcssa = phi ptr [ %gep86, %bb.g ], [ %i.qa, %.preheader.loopexit.unr-lcssa ], [ %i.or, %.lr.ph70.epil.preheader ] ; 2 uses
  %.0386.lcssa = phi i32 [ 0, %bb.g ], [ %i.bu, %.preheader.loopexit.unr-lcssa ], [ %i.bu, %.lr.ph70.epil.preheader ] ; 5 uses
  %i.ot = icmp slt i32 %.0386.lcssa, %3
  br i1 %i.ot, label %.lr.ph77.preheader, label %._crit_edge78

.lr.ph77.preheader:                               ; preds = %.preheader
  %i.ou = sub i32 %3, %.0386.lcssa
  %xtraiter188 = and i32 %i.ou, 3                 ; 2 uses
  %lcmp.mod189.not = icmp eq i32 %xtraiter188, 0
  br i1 %lcmp.mod189.not, label %.lr.ph77.prol.loopexit, label %.lr.ph77.prol

.lr.ph77.prol:                                    ; preds = %.lr.ph77.preheader, %.lr.ph77.prol
  %.176.prol = phi i32 [ %i.pb, %.lr.ph77.prol ], [ %.0386.lcssa, %.lr.ph77.preheader ]
  %.138875.prol = phi ptr [ %i.oz, %.lr.ph77.prol ], [ %.0387.lcssa, %.lr.ph77.preheader ] ; 3 uses
  %.1174.prol = phi ptr [ %i.pa, %.lr.ph77.prol ], [ %.10.lcssa, %.lr.ph77.preheader ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph77.prol ], [ 0, %.lr.ph77.preheader ]
  %i.ov = load i16, ptr %.138875.prol, align 2, !tbaa !595
  store i16 %i.ov, ptr %.1174.prol, align 2, !tbaa !595
  %i.ow = getelementptr inbounds [2 x i8], ptr %.138875.prol, i64 %i.k
  %i.ox = load i16, ptr %i.ow, align 2, !tbaa !595
  %i.oy = getelementptr inbounds nuw i8, ptr %.1174.prol, i64 2
  store i16 %i.ox, ptr %i.oy, align 2, !tbaa !595
  %i.oz = getelementptr inbounds nuw [2 x i8], ptr %.138875.prol, i64 %i.j ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %.1174.prol, i64 4 ; 3 uses
  %i.pb = add nuw nsw i32 %.176.prol, 1           ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter188
  br i1 %prol.iter.cmp.not, label %.lr.ph77.prol.loopexit, label %.lr.ph77.prol, !llvm.loop !1642

.lr.ph77.prol.loopexit:                           ; preds = %.lr.ph77.prol, %.lr.ph77.preheader
  %.lcssa181.unr = phi ptr [ poison, %.lr.ph77.preheader ], [ %i.pa, %.lr.ph77.prol ]
  %.176.unr = phi i32 [ %.0386.lcssa, %.lr.ph77.preheader ], [ %i.pb, %.lr.ph77.prol ]
  %.138875.unr = phi ptr [ %.0387.lcssa, %.lr.ph77.preheader ], [ %i.oz, %.lr.ph77.prol ]
  %.1174.unr = phi ptr [ %.10.lcssa, %.lr.ph77.preheader ], [ %i.pa, %.lr.ph77.prol ]
  %i.pc = sub i32 %.0386.lcssa, %3
  %i.pd = icmp ugt i32 %i.pc, -4
  br i1 %i.pd, label %._crit_edge78, label %.lr.ph77

.lr.ph70:                                         ; preds = %.lr.ph70.preheader, %.lr.ph70
  %.038767 = phi ptr [ %i.qa, %.lr.ph70 ], [ %gep86, %.lr.ph70.preheader ] ; 5 uses
  %.1066 = phi ptr [ %i.qb, %.lr.ph70 ], [ %.980, %.lr.ph70.preheader ] ; 9 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph70 ], [ 0, %.lr.ph70.preheader ]
  %i.pe = load i16, ptr %.038767, align 2, !tbaa !595
  store i16 %i.pe, ptr %.1066, align 2, !tbaa !595
  %i.pf = getelementptr inbounds nuw [2 x i8], ptr %.038767, i64 %i.j
  %i.pg = load i16, ptr %i.pf, align 2, !tbaa !595
  %i.ph = getelementptr inbounds nuw i8, ptr %.1066, i64 2
  store i16 %i.pg, ptr %i.ph, align 2, !tbaa !595
  %i.pi = getelementptr inbounds nuw [2 x i8], ptr %.038767, i64 %i.k
  %i.pj = load i16, ptr %i.pi, align 2, !tbaa !595
  %i.pk = getelementptr inbounds nuw i8, ptr %.1066, i64 4
  store i16 %i.pj, ptr %i.pk, align 2, !tbaa !595
  %i.pl = getelementptr inbounds nuw [2 x i8], ptr %.038767, i64 %i.m
  %i.pm = load i16, ptr %i.pl, align 2, !tbaa !595
  %i.pn = getelementptr inbounds nuw i8, ptr %.1066, i64 6
  store i16 %i.pm, ptr %i.pn, align 2, !tbaa !595
  %i.po = getelementptr inbounds nuw [2 x i8], ptr %.038767, i64 %i.bs ; 5 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %.1066, i64 8
  %i.pq = load i16, ptr %i.po, align 2, !tbaa !595
  store i16 %i.pq, ptr %i.pp, align 2, !tbaa !595
  %i.pr = getelementptr inbounds nuw [2 x i8], ptr %i.po, i64 %i.j
  %i.ps = load i16, ptr %i.pr, align 2, !tbaa !595
  %i.pt = getelementptr inbounds nuw i8, ptr %.1066, i64 10
  store i16 %i.ps, ptr %i.pt, align 2, !tbaa !595
  %i.pu = getelementptr inbounds nuw [2 x i8], ptr %i.po, i64 %i.k
  %i.pv = load i16, ptr %i.pu, align 2, !tbaa !595
  %i.pw = getelementptr inbounds nuw i8, ptr %.1066, i64 12
  store i16 %i.pv, ptr %i.pw, align 2, !tbaa !595
  %i.px = getelementptr inbounds nuw [2 x i8], ptr %i.po, i64 %i.m
  %i.py = load i16, ptr %i.px, align 2, !tbaa !595
  %i.pz = getelementptr inbounds nuw i8, ptr %.1066, i64 14
  store i16 %i.py, ptr %i.pz, align 2, !tbaa !595
  %i.qa = getelementptr inbounds nuw [2 x i8], ptr %i.po, i64 %i.bs ; 3 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %.1066, i64 16 ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader.loopexit.unr-lcssa, label %.lr.ph70, !llvm.loop !1643

.lr.ph77:                                         ; preds = %.lr.ph77.prol.loopexit, %.lr.ph77
  %.176 = phi i32 [ %i.ra, %.lr.ph77 ], [ %.176.unr, %.lr.ph77.prol.loopexit ]
  %.138875 = phi ptr [ %i.qy, %.lr.ph77 ], [ %.138875.unr, %.lr.ph77.prol.loopexit ] ; 3 uses
  %.1174 = phi ptr [ %i.qz, %.lr.ph77 ], [ %.1174.unr, %.lr.ph77.prol.loopexit ] ; 9 uses
  %i.qc = load i16, ptr %.138875, align 2, !tbaa !595
  store i16 %i.qc, ptr %.1174, align 2, !tbaa !595
  %i.qd = getelementptr inbounds [2 x i8], ptr %.138875, i64 %i.k
  %i.qe = load i16, ptr %i.qd, align 2, !tbaa !595
  %i.qf = getelementptr inbounds nuw i8, ptr %.1174, i64 2
  store i16 %i.qe, ptr %i.qf, align 2, !tbaa !595
  %i.qg = getelementptr inbounds nuw [2 x i8], ptr %.138875, i64 %i.j ; 3 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %.1174, i64 4
  %i.qi = load i16, ptr %i.qg, align 2, !tbaa !595
  store i16 %i.qi, ptr %i.qh, align 2, !tbaa !595
  %i.qj = getelementptr inbounds [2 x i8], ptr %i.qg, i64 %i.k
  %i.qk = load i16, ptr %i.qj, align 2, !tbaa !595
  %i.ql = getelementptr inbounds nuw i8, ptr %.1174, i64 6
  store i16 %i.qk, ptr %i.ql, align 2, !tbaa !595
  %i.qm = getelementptr inbounds nuw [2 x i8], ptr %i.qg, i64 %i.j ; 3 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %.1174, i64 8
  %i.qo = load i16, ptr %i.qm, align 2, !tbaa !595
  store i16 %i.qo, ptr %i.qn, align 2, !tbaa !595
  %i.qp = getelementptr inbounds [2 x i8], ptr %i.qm, i64 %i.k
  %i.qq = load i16, ptr %i.qp, align 2, !tbaa !595
  %i.qr = getelementptr inbounds nuw i8, ptr %.1174, i64 10
  store i16 %i.qq, ptr %i.qr, align 2, !tbaa !595
  %i.qs = getelementptr inbounds nuw [2 x i8], ptr %i.qm, i64 %i.j ; 3 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %.1174, i64 12
  %i.qu = load i16, ptr %i.qs, align 2, !tbaa !595
  store i16 %i.qu, ptr %i.qt, align 2, !tbaa !595
  %i.qv = getelementptr inbounds [2 x i8], ptr %i.qs, i64 %i.k
  %i.qw = load i16, ptr %i.qv, align 2, !tbaa !595
  %i.qx = getelementptr inbounds nuw i8, ptr %.1174, i64 14
  store i16 %i.qw, ptr %i.qx, align 2, !tbaa !595
  %i.qy = getelementptr inbounds nuw [2 x i8], ptr %i.qs, i64 %i.j
  %i.qz = getelementptr inbounds nuw i8, ptr %.1174, i64 16 ; 2 uses
  %i.ra = add nuw nsw i32 %.176, 4                ; 2 uses
  %exitcond130.not.3 = icmp eq i32 %i.ra, %3
  br i1 %exitcond130.not.3, label %._crit_edge78, label %.lr.ph77, !llvm.loop !1644

._crit_edge78:                                    ; preds = %.lr.ph77.prol.loopexit, %.lr.ph77, %.preheader
  %.11.lcssa = phi ptr [ %.10.lcssa, %.preheader ], [ %.lcssa181.unr, %.lr.ph77.prol.loopexit ], [ %i.qz, %.lr.ph77 ] ; 2 uses
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 2 ; 3 uses
  %i.rb = icmp slt i64 %indvars.iv.next132, %invariant.op158
  br i1 %i.rb, label %bb.g, label %.preheader4.loopexit, !llvm.loop !1645

.lr.ph91:                                         ; preds = %.lr.ph91.preheader, %._crit_edge92
  %indvars.iv135 = phi i64 [ %i.of, %.lr.ph91.preheader ], [ %indvars.iv.next136, %._crit_edge92 ] ; 2 uses
  %.1294 = phi ptr [ %.9.lcssa, %.lr.ph91.preheader ], [ %.lcssa182, %._crit_edge92 ] ; 2 uses
  %i.rc = mul nsw i64 %indvars.iv135, %i.k
  %gep99 = getelementptr [2 x i8], ptr %invariant.gep98, i64 %i.rc ; 2 uses
  br i1 %i.cc, label %.epil.preheader, label %.lr.ph91.new

.lr.ph91.new:                                     ; preds = %.lr.ph91, %.lr.ph91.new
  %.038588 = phi ptr [ %i.rz, %.lr.ph91.new ], [ %gep99, %.lr.ph91 ] ; 2 uses
  %.1387 = phi ptr [ %i.sa, %.lr.ph91.new ], [ %.1294, %.lr.ph91 ] ; 9 uses
  %niter195 = phi i32 [ %niter195.next.7, %.lr.ph91.new ], [ 0, %.lr.ph91 ]
  %i.rd = load i16, ptr %.038588, align 2, !tbaa !595
  store i16 %i.rd, ptr %.1387, align 2, !tbaa !595
  %i.re = getelementptr inbounds nuw [2 x i8], ptr %.038588, i64 %i.j ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %.1387, i64 2
  %i.rg = load i16, ptr %i.re, align 2, !tbaa !595
  store i16 %i.rg, ptr %i.rf, align 2, !tbaa !595
  %i.rh = getelementptr inbounds nuw [2 x i8], ptr %i.re, i64 %i.j ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %.1387, i64 4
  %i.rj = load i16, ptr %i.rh, align 2, !tbaa !595
  store i16 %i.rj, ptr %i.ri, align 2, !tbaa !595
  %i.rk = getelementptr inbounds nuw [2 x i8], ptr %i.rh, i64 %i.j ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %.1387, i64 6
  %i.rm = load i16, ptr %i.rk, align 2, !tbaa !595
  store i16 %i.rm, ptr %i.rl, align 2, !tbaa !595
  %i.rn = getelementptr inbounds nuw [2 x i8], ptr %i.rk, i64 %i.j ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %.1387, i64 8
  %i.rp = load i16, ptr %i.rn, align 2, !tbaa !595
  store i16 %i.rp, ptr %i.ro, align 2, !tbaa !595
  %i.rq = getelementptr inbounds nuw [2 x i8], ptr %i.rn, i64 %i.j ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %.1387, i64 10
  %i.rs = load i16, ptr %i.rq, align 2, !tbaa !595
  store i16 %i.rs, ptr %i.rr, align 2, !tbaa !595
  %i.rt = getelementptr inbounds nuw [2 x i8], ptr %i.rq, i64 %i.j ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %.1387, i64 12
  %i.rv = load i16, ptr %i.rt, align 2, !tbaa !595
  store i16 %i.rv, ptr %i.ru, align 2, !tbaa !595
  %i.rw = getelementptr inbounds nuw [2 x i8], ptr %i.rt, i64 %i.j ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %.1387, i64 14
  %i.ry = load i16, ptr %i.rw, align 2, !tbaa !595
  store i16 %i.ry, ptr %i.rx, align 2, !tbaa !595
  %i.rz = getelementptr inbounds nuw [2 x i8], ptr %i.rw, i64 %i.j ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %.1387, i64 16 ; 3 uses
  %niter195.next.7 = add nuw nsw i32 %niter195, 8 ; 2 uses
  %niter195.ncmp.7 = icmp eq i32 %niter195.next.7, %unroll_iter194
  br i1 %niter195.ncmp.7, label %._crit_edge92.unr-lcssa, label %.lr.ph91.new, !llvm.loop !1646

._crit_edge92.unr-lcssa:                          ; preds = %.lr.ph91.new
  br i1 %lcmp.mod191.not, label %._crit_edge92, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge92.unr-lcssa, %.lr.ph91
  %.038588.epil.init = phi ptr [ %gep99, %.lr.ph91 ], [ %i.rz, %._crit_edge92.unr-lcssa ]
  %.1387.epil.init = phi ptr [ %.1294, %.lr.ph91 ], [ %i.sa, %._crit_edge92.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod193)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %.038588.epil = phi ptr [ %.038588.epil.init, %.epil.preheader ], [ %i.sc, %bb.h ] ; 2 uses
  %.1387.epil = phi ptr [ %.1387.epil.init, %.epil.preheader ], [ %i.sd, %bb.h ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.sb = load i16, ptr %.038588.epil, align 2, !tbaa !595
  store i16 %i.sb, ptr %.1387.epil, align 2, !tbaa !595
  %i.sc = getelementptr inbounds nuw [2 x i8], ptr %.038588.epil, i64 %i.j
  %i.sd = getelementptr inbounds nuw i8, ptr %.1387.epil, i64 2 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter190
  br i1 %epil.iter.cmp.not, label %._crit_edge92, label %bb.h, !llvm.loop !1647

._crit_edge92:                                    ; preds = %bb.h, %._crit_edge92.unr-lcssa
  %.lcssa182 = phi ptr [ %i.sa, %._crit_edge92.unr-lcssa ], [ %i.sd, %bb.h ]
  %indvars.iv.next136 = add nsw i64 %indvars.iv135, 1 ; 2 uses
  %exitcond138.not = icmp eq i64 %indvars.iv.next136, %i.bv
  br i1 %exitcond138.not, label %._crit_edge97.split, label %.lr.ph91, !llvm.loop !1648

._crit_edge97.split:                              ; preds = %._crit_edge92, %.lr.ph96, %.preheader4
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1 ; 2 uses
  %exitcond143.not = icmp eq i64 %indvars.iv.next140, %i.j
  br i1 %exitcond143.not, label %bb.b, label %bb.c, !llvm.loop !1649
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.h = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !67
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !67
  %i.k = load i32, ptr %i.a, align 4, !tbaa !67   ; 2 uses
  %.not82 = icmp sgt i32 %i.k, %i.j
  br i1 %.not82, label %._crit_edge, label %.lr.ph84

.lr.ph84:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph84, %_ZN4ncnn3MatD2Ev.exit
  %.03383 = phi i32 [ %i.k, %.lr.ph84 ], [ %i.am, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.aa = load i32, ptr %3, align 4, !tbaa !67
  %i.ab = mul nsw i32 %i.aa, %.03383              ; 3 uses
  %i.ac = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %_ZN4ncnn3Mat7channelEi.exit49 unwind label %bb.e

_ZN4ncnn3Mat7channelEi.exit49:                    ; preds = %bb.c
  %i.ad = load ptr, ptr %4, align 8, !tbaa !18, !noalias !1650
  %i.ae = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !1650
  %i.af = sext i32 %i.ac to i64
  %i.ag = mul i64 %i.ae, %i.af
  %i.ah = load i64, ptr %i.m, align 8, !tbaa !65, !noalias !1650
  %i.ai = mul i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %5, align 4, !tbaa !67    ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph.preheader, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph.preheader:                                 ; preds = %_ZN4ncnn3Mat7channelEi.exit49
  %.pre = load i32, ptr %6, align 4, !tbaa !67
  br label %.lr.ph

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL47conv3x3s1_winograd23_transform_kernel_tile_int8ERKNS_3MatERS0_iiiii.exit, %_ZN4ncnn3Mat7channelEi.exit49
  %i.am = add nsw i32 %.03383, 1
  %i.an = load i32, ptr %i.b, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.03383, %i.an
  br i1 %.not.not, label %bb.c, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4ncnnL47conv3x3s1_winograd23_transform_kernel_tile_int8ERKNS_3MatERS0_iiiii.exit
  %i.ao = phi i32 [ %i.fd, %_ZN4ncnnL47conv3x3s1_winograd23_transform_kernel_tile_int8ERKNS_3MatERS0_iiiii.exit ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %i.ap = phi i32 [ %i.ff, %_ZN4ncnnL47conv3x3s1_winograd23_transform_kernel_tile_int8ERKNS_3MatERS0_iiiii.exit ], [ %i.ak, %.lr.ph.preheader ]
  %.081 = phi i32 [ %i.fe, %_ZN4ncnnL47conv3x3s1_winograd23_transform_kernel_tile_int8ERKNS_3MatERS0_iiiii.exit ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.aq = load i32, ptr %7, align 4, !tbaa !67
  %i.ar = sub nsw i32 %i.aq, %i.ab
  %i.as = load i32, ptr %3, align 4, !tbaa !67    ; 2 uses
  %.sroa.speculated66 = call i32 @llvm.smin.i32(i32 %i.as, i32 %i.ar) ; 3 uses
  %i.at = sub nsw i32 %i.ap, %.081
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ao, i32 %i.at) ; 3 uses
  %.val50 = load ptr, ptr %8, align 8
  %i.au = icmp sgt i32 %.sroa.speculated66, 0
  br i1 %i.au, label %.preheader4.lr.ph.i, label %_ZN4ncnnL47conv3x3s1_winograd23_transform_kernel_tile_int8ERKNS_3MatERS0_iiiii.exit

.preheader4.lr.ph.i:                              ; preds = %.lr.ph
  %i.av = load i32, ptr %9, align 4, !tbaa !67
  %i.aw = icmp sgt i32 %.sroa.speculated, 0
  %i.ax = mul i32 %i.av, 9
  br i1 %i.aw, label %.preheader4.preheader.i, label %_ZN4ncnnL47conv3x3s1_winograd23_transform_kernel_tile_int8ERKNS_3MatERS0_iiiii.exit

.preheader4.preheader.i:                          ; preds = %.preheader4.lr.ph.i
  %i.ay = sext i32 %.081 to i64
  %wide.trip.count20.i = zext nneg i32 %.sroa.speculated66 to i64
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated to i64
  br label %.preheader4.i

.preheader4.i:                                    ; preds = %._crit_edge.i, %.preheader4.preheader.i
  %indvars.iv17.i = phi i64 [ 0, %.preheader4.preheader.i ], [ %indvars.iv.next18.i, %._crit_edge.i ] ; 2 uses
  %.012.i = phi ptr [ %i.aj, %.preheader4.preheader.i ], [ %i.ef, %._crit_edge.i ]
  %i.az = trunc i64 %indvars.iv17.i to i32
  %i.ba = add i32 %i.ab, %i.az
  %i.bb = mul i32 %i.ax, %i.ba
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds i8, ptr %.val50, i64 %i.bc
  br label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader.preheader.i, %.preheader4.i
  %indvars.iv.i = phi i64 [ 0, %.preheader4.i ], [ %indvars.iv.next.i, %.preheader.preheader.i ] ; 2 uses
  %.110.i = phi ptr [ %.012.i, %.preheader4.i ], [ %i.ef, %.preheader.preheader.i ] ; 2 uses
  %i.be = add nsw i64 %indvars.iv.i, %i.ay
  %i.bf = mul nsw i64 %i.be, 9
  %i.bg = getelementptr inbounds i8, ptr %i.bd, i64 %i.bf ; 9 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !100 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !100
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !100 ; 2 uses
  %i.bm = sext i8 %i.bh to i32                    ; 2 uses
  %.tr.i = sext i8 %i.bh to i16                   ; 2 uses
  %i.bn = shl nsw i16 %.tr.i, 1
  %i.bo = sext i8 %i.bj to i32                    ; 2 uses
  %i.bp = add nsw i32 %i.bo, %i.bm
  %i.bq = sext i8 %i.bl to i32                    ; 2 uses
  %i.br = add nsw i32 %i.bp, %i.bq
  %i.bs = trunc nsw i32 %i.br to i16
  %i.bt = sub nsw i32 %i.bm, %i.bo
  %i.bu = add nsw i32 %i.bt, %i.bq
  %i.bv = trunc nsw i32 %i.bu to i16
  %.tr57.i = sext i8 %i.bl to i16                 ; 2 uses
  %i.bw = shl nsw i16 %.tr57.i, 1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bg, i64 3
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !100 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !100
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 5
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !100 ; 2 uses
  %i.cd = sext i8 %i.by to i32                    ; 2 uses
  %.tr.1.i = sext i8 %i.by to i16
  %i.ce = shl nsw i16 %.tr.1.i, 1
  %i.cf = sext i8 %i.ca to i32                    ; 2 uses
  %i.cg = add nsw i32 %i.cf, %i.cd
  %i.ch = sext i8 %i.cc to i32                    ; 2 uses
  %i.ci = add nsw i32 %i.cg, %i.ch
  %i.cj = trunc nsw i32 %i.ci to i16
  %i.ck = sub nsw i32 %i.cd, %i.cf
  %i.cl = add nsw i32 %i.ck, %i.ch
  %i.cm = trunc nsw i32 %i.cl to i16
  %.tr57.1.i = sext i8 %i.cc to i16
  %i.cn = shl nsw i16 %.tr57.1.i, 1
  %i.co = getelementptr inbounds nuw i8, ptr %i.bg, i64 6
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !100 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bg, i64 7
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !100
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !100 ; 2 uses
  %i.cu = sext i8 %i.cp to i32                    ; 2 uses
  %.tr.2.i = sext i8 %i.cp to i16                 ; 2 uses
  %i.cv = shl nsw i16 %.tr.2.i, 1
  %i.cw = sext i8 %i.cr to i32                    ; 2 uses
  %i.cx = add nsw i32 %i.cw, %i.cu
  %i.cy = sext i8 %i.ct to i32                    ; 2 uses
  %i.cz = add nsw i32 %i.cx, %i.cy
  %i.da = trunc nsw i32 %i.cz to i16
  %i.db = sub nsw i32 %i.cu, %i.cw
  %i.dc = add nsw i32 %i.db, %i.cy
  %i.dd = trunc nsw i32 %i.dc to i16
  %.tr57.2.i = sext i8 %i.ct to i16               ; 2 uses
  %i.de = shl nsw i16 %.tr57.2.i, 1
  %i.df = insertelement <8 x i16> poison, i16 %i.bn, i64 0
  %i.dg = insertelement <8 x i16> %i.df, i16 %i.ce, i64 1
  %i.dh = insertelement <8 x i16> %i.dg, i16 %i.bs, i64 2
  %i.di = insertelement <8 x i16> %i.dh, i16 %i.cj, i64 3
  %i.dj = insertelement <8 x i16> %i.di, i16 %i.bv, i64 4 ; 2 uses
  %i.dk = insertelement <8 x i16> %i.dj, i16 %i.cm, i64 5
  %i.dl = insertelement <8 x i16> %i.dk, i16 %i.bw, i64 6
  %i.dm = insertelement <8 x i16> %i.dl, i16 %i.cn, i64 7 ; 3 uses
  %i.dn = shufflevector <8 x i16> %i.dm, <8 x i16> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6> ; 2 uses
  %i.do = add nsw <8 x i16> %i.dm, %i.dn
  %i.dp = sub nsw <8 x i16> %i.dm, %i.dn
  %i.dq = insertelement <8 x i16> poison, i16 %i.cv, i64 0
  %i.dr = insertelement <8 x i16> %i.dq, i16 %i.da, i64 1
  %i.ds = insertelement <8 x i16> %i.dr, i16 %i.dd, i64 2 ; 2 uses
  %i.dt = insertelement <8 x i16> %i.ds, i16 %i.de, i64 3
end_hunk_11
begin_hunk_12_@_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.12:bb.a
  %i.bst = sdiv i32 %i.bsn, 576
  %i.bsu = sdiv i32 %i.bsp, 576
  %i.bsv = sdiv i32 %i.bss, 576
  store i32 %i.bst, ptr %i.brd, align 4, !tbaa !67
  br i1 %i.brf, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  %i.bsw = shl nsw i32 %i.bsj, 1
  %i.bsx = add nsw i32 %i.bsi, %i.bsw
  %i.bsy = sdiv i32 %i.bsx, 576
  %i.bsz = getelementptr inbounds nuw i8, ptr %i.brd, i64 4
  store i32 %i.bsy, ptr %i.bsz, align 4, !tbaa !67
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.gg
  br i1 %i.brh, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  %i.bta = getelementptr inbounds nuw i8, ptr %i.brd, i64 8
  store i32 %i.bsu, ptr %i.bta, align 4, !tbaa !67
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  br i1 %i.brj, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  %i.btb = getelementptr inbounds nuw i8, ptr %i.brd, i64 12
  store i32 %i.bsv, ptr %i.btb, align 4, !tbaa !67
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gk
  %i.btc = getelementptr inbounds [4 x i8], ptr %i.brd, i64 %i.blk
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %.preheader.us.i
  %.1.us.i = phi ptr [ %i.brd, %.preheader.us.i ], [ %i.btc, %bb.gm ] ; 6 uses
  %i.btd = or disjoint i32 %i.bqw, 1
  %.not.us.1.i = icmp slt i32 %i.btd, %i.en
  br i1 %.not.us.1.i, label %bb.go, label %bb.gv

bb.go:                                            ; preds = %bb.gn
  %i.bte = add nsw i32 %i.bnx, %i.bnb             ; 2 uses
  %i.btf = add nsw i32 %i.bpp, %i.bot             ; 2 uses
  %i.btg = sub nsw i32 %i.bnb, %i.bnx             ; 2 uses
  %i.bth = sub nsw i32 %i.bot, %i.bpp             ; 2 uses
  %i.bti = add i32 %i.bmi, %i.bmg
  %i.btj = add i32 %i.bti, %i.bte
  %i.btk = add i32 %i.btj, %i.btf
  %i.btl = shl nsw i32 %i.btf, 2
  %i.btm = add nsw i32 %i.btl, %i.bte
  %reass.add = add i32 %i.bqn, %i.bth
  %reass.mul = shl i32 %reass.add, 3
  %i.btn = add i32 %i.bqp, %i.btg
  %i.bto = add i32 %i.btn, %reass.mul
  %i.btp = sdiv i32 %i.btk, 576
  %i.btq = sdiv i32 %i.btm, 576
  %i.btr = sdiv i32 %i.bto, 576
  store i32 %i.btp, ptr %.1.us.i, align 4, !tbaa !67
  br i1 %i.brf, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.bts = shl nsw i32 %i.bth, 1
  %i.btt = add nsw i32 %i.bts, %i.btg
  %i.btu = sdiv i32 %i.btt, 576
  %i.btv = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 4
  store i32 %i.btu, ptr %i.btv, align 4, !tbaa !67
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.go
  br i1 %i.brh, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  %i.btw = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 8
  store i32 %i.btq, ptr %i.btw, align 4, !tbaa !67
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  br i1 %i.brj, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %bb.gs
  %i.btx = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 12
  store i32 %i.btr, ptr %i.btx, align 4, !tbaa !67
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.gs
  %i.bty = getelementptr inbounds [4 x i8], ptr %.1.us.i, i64 %i.blk
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gn
  %.1.us.1.i = phi ptr [ %.1.us.i, %bb.gn ], [ %i.bty, %bb.gu ] ; 6 uses
  %i.btz = or disjoint i32 %i.bqw, 2
  %.not.us.2.i = icmp slt i32 %i.btz, %i.en
  br i1 %.not.us.2.i, label %bb.gw, label %bb.hd

bb.gw:                                            ; preds = %bb.gv
  %i.bua = add nsw i32 %i.bnz, %i.bnd             ; 2 uses
  %i.bub = add nsw i32 %i.bpr, %i.bov             ; 2 uses
  %i.buc = sub nsw i32 %i.bnd, %i.bnz             ; 2 uses
  %i.bud = sub nsw i32 %i.bov, %i.bpr             ; 2 uses
  %i.bue = add i32 %i.bmj, %i.bmc
  %i.buf = add i32 %i.bue, %i.bua
  %i.bug = add i32 %i.buf, %i.bub
  %i.buh = shl nsw i32 %i.bub, 2
  %i.bui = add nsw i32 %i.buh, %i.bua
  %i.buj = shl nsw i32 %i.bud, 3
  %i.buk = add i32 %i.buj, %i.buc
  %i.bul = add i32 %i.buk, %i.bqr
  %i.bum = add i32 %i.bul, %i.bqq
  %i.bun = sdiv i32 %i.bug, 576
  %i.buo = sdiv i32 %i.bui, 576
  %i.bup = sdiv i32 %i.bum, 576
  store i32 %i.bun, ptr %.1.us.1.i, align 4, !tbaa !67
  br i1 %i.brf, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  %i.buq = shl nsw i32 %i.bud, 1
  %i.bur = add nsw i32 %i.buq, %i.buc
  %i.bus = sdiv i32 %i.bur, 576
  %i.but = getelementptr inbounds nuw i8, ptr %.1.us.1.i, i64 4
  store i32 %i.bus, ptr %i.but, align 4, !tbaa !67
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gw
  br i1 %i.brh, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  %i.buu = getelementptr inbounds nuw i8, ptr %.1.us.1.i, i64 8
  store i32 %i.buo, ptr %i.buu, align 4, !tbaa !67
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.gy
  br i1 %i.brj, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %bb.ha
  %i.buv = getelementptr inbounds nuw i8, ptr %.1.us.1.i, i64 12
  store i32 %i.bup, ptr %i.buv, align 4, !tbaa !67
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.ha
  %i.buw = getelementptr inbounds [4 x i8], ptr %.1.us.1.i, i64 %i.blk
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %bb.gv
  %.1.us.2.i = phi ptr [ %.1.us.1.i, %bb.gv ], [ %i.buw, %bb.hc ] ; 4 uses
  %i.bux = or disjoint i32 %i.bqw, 3
  %.not.us.3.i = icmp slt i32 %i.bux, %i.en
  br i1 %.not.us.3.i, label %bb.he, label %bb.hk

bb.he:                                            ; preds = %bb.hd
  %i.buy = add nsw i32 %i.boe, %i.bni             ; 2 uses
  %i.buz = add nsw i32 %i.bpw, %i.bpa             ; 2 uses
  %i.bva = sub nsw i32 %i.bni, %i.boe             ; 2 uses
  %i.bvb = sub nsw i32 %i.bpa, %i.bpw             ; 2 uses
  %i.bvc = add i32 %i.bmk, %i.bmg
  %i.bvd = add i32 %i.bvc, %i.bmm
  %i.bve = add i32 %i.bvd, %i.buy
  %i.bvf = add i32 %i.bve, %i.buz
  %i.bvg = shl nsw i32 %i.buz, 2
  %i.bvh = add nsw i32 %i.bvg, %i.buy
  %i.bvi = shl nsw i32 %i.bvb, 3
  %i.bvj = add i32 %i.bvi, %i.bva
  %i.bvk = add i32 %i.bvj, %i.bqp
  %i.bvl = add i32 %i.bvk, %i.bqt
  %i.bvm = add i32 %i.bvl, %i.bqs
  %i.bvn = sdiv i32 %i.bvf, 576
  %i.bvo = sdiv i32 %i.bvh, 576
  %i.bvp = sdiv i32 %i.bvm, 576
  store i32 %i.bvn, ptr %.1.us.2.i, align 4, !tbaa !67
  br i1 %i.brf, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %bb.he
  %i.bvq = shl nsw i32 %i.bvb, 1
  %i.bvr = add nsw i32 %i.bvq, %i.bva
  %i.bvs = sdiv i32 %i.bvr, 576
  %i.bvt = getelementptr inbounds nuw i8, ptr %.1.us.2.i, i64 4
  store i32 %i.bvs, ptr %i.bvt, align 4, !tbaa !67
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %bb.he
  br i1 %i.brh, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %i.bvu = getelementptr inbounds nuw i8, ptr %.1.us.2.i, i64 8
  store i32 %i.bvo, ptr %i.bvu, align 4, !tbaa !67
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.hg
  br i1 %i.brj, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  %i.bvv = getelementptr inbounds nuw i8, ptr %.1.us.2.i, i64 12
  store i32 %i.bvp, ptr %i.bvv, align 4, !tbaa !67
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hi, %bb.hd
  %indvars.iv.next1745.i = add nuw nsw i64 %indvars.iv1744.i, 1 ; 2 uses
  %exitcond1748.not.i = icmp eq i64 %indvars.iv.next1745.i, %wide.trip.count1747.i
  br i1 %exitcond1748.not.i, label %._crit_edge.us1608.i, label %.preheader.us.i, !llvm.loop !2064

._crit_edge.us1608.i:                             ; preds = %bb.hk
  %indvars.iv.next1750.i = add nsw i64 %indvars.iv1749.i, 1 ; 2 uses
  %exitcond1753.not.i = icmp eq i64 %indvars.iv.next1750.i, %i.ed
  br i1 %exitcond1753.not.i, label %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit, label %.lr.ph.us1607.i, !llvm.loop !2065

.noexc:                                           ; preds = %bb.d, %.noexc
  %i.bvw = phi i32 [ %i.bxx, %.noexc ], [ %i.ek, %bb.d ] ; 2 uses
  %.0136 = phi i32 [ %i.bxw, %.noexc ], [ 0, %bb.d ] ; 5 uses
  %i.bvx = sub nsw i32 %i.bvw, %.0136
  %i.bvy = load i32, ptr %9, align 4, !tbaa !67   ; 3 uses
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.bvy, i32 %i.bvx)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  %i.bvz = load i32, ptr %3, align 4, !tbaa !67
  %i.bwa = sdiv i32 %i.dm, %i.bvz
  %i.bwb = load ptr, ptr %10, align 8, !tbaa !18, !noalias !2066
  %i.bwc = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !2066
  %i.bwd = sext i32 %i.bwa to i64
  %i.bwe = mul i64 %i.bwc, %i.bwd
  %i.bwf = load i64, ptr %i.s, align 8, !tbaa !65, !noalias !2066 ; 3 uses
  %i.bwg = mul i64 %i.bwe, %i.bwf
  %i.bwh = getelementptr inbounds nuw i8, ptr %i.bwb, i64 %i.bwg
  %i.bwi = load i32, ptr %i.t, align 8, !tbaa !66, !noalias !2066
  %i.bwj = load ptr, ptr %i.u, align 8, !tbaa !17, !noalias !2066
  %i.bwk = sdiv i32 %.0136, %i.bvy
  %i.bwl = sext i32 %i.bwk to i64                 ; 2 uses
  store ptr null, ptr %i.v, align 8, !tbaa !11, !alias.scope !2069
  store i64 %i.bwf, ptr %i.w, align 8, !tbaa !65, !alias.scope !2069
  store i32 %i.bwi, ptr %i.x, align 8, !tbaa !66, !alias.scope !2069
  store ptr %i.bwj, ptr %i.y, align 8, !tbaa !17, !alias.scope !2069
  %i.bwm = load <2 x i32>, ptr %i.p, align 4, !tbaa !67, !noalias !2066
  %i.bwn = load i32, ptr %i.q, align 8, !tbaa !76, !noalias !2066
  %i.bwo = load i32, ptr %i.p, align 4, !tbaa !75, !noalias !2066
  %i.bwp = sext i32 %i.bwo to i64
  %i.bwq = sext i32 %i.bwn to i64
  %i.bwr = mul nsw i64 %i.bwq, %i.bwp             ; 2 uses
  %i.bws = mul i64 %i.bwf, %i.bwr
  %i.bwt = mul i64 %i.bws, %i.bwl
  %i.bwu = getelementptr inbounds nuw i8, ptr %i.bwh, i64 %i.bwt
  store ptr %i.bwu, ptr %13, align 8, !tbaa !18, !alias.scope !2069
  %i.bwv = shufflevector <2 x i32> %i.bwm, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.bww = shufflevector <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, <4 x i32> %i.bwv, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i32> %i.bww, ptr %i.z, align 8, !tbaa !67, !alias.scope !2069
  store i32 1, ptr %i.aa, align 8, !tbaa !68, !alias.scope !2069
  store i64 %i.bwr, ptr %i.ab, align 8, !tbaa !20, !alias.scope !2069
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  %i.bwx = load i32, ptr %7, align 4, !tbaa !67
  %i.bwy = sdiv i32 %.044137, %i.bwx
  %i.bwz = load ptr, ptr %11, align 8, !tbaa !18, !noalias !2072
  %i.bxa = load i64, ptr %i.ae, align 8, !tbaa !20, !noalias !2072
  %i.bxb = sext i32 %i.bwy to i64
  %i.bxc = mul i64 %i.bxa, %i.bxb
  %i.bxd = load i64, ptr %i.af, align 8, !tbaa !65, !noalias !2072 ; 3 uses
  %i.bxe = mul i64 %i.bxc, %i.bxd
  %i.bxf = getelementptr inbounds nuw i8, ptr %i.bwz, i64 %i.bxe
  %i.bxg = load i32, ptr %i.ag, align 8, !tbaa !66, !noalias !2072
  %i.bxh = load ptr, ptr %i.ah, align 8, !tbaa !17, !noalias !2072
  store ptr null, ptr %i.ai, align 8, !tbaa !11
  store i64 %i.bxd, ptr %i.aj, align 8, !tbaa !65
  store i32 %i.bxg, ptr %i.ak, align 8, !tbaa !66
  store ptr %i.bxh, ptr %i.al, align 8, !tbaa !17
  %i.bxi = load <2 x i32>, ptr %i.ac, align 4, !tbaa !67, !noalias !2072
  %i.bxj = load i32, ptr %i.ad, align 8, !tbaa !76, !noalias !2072
  %i.bxk = load i32, ptr %i.ac, align 4, !tbaa !75, !noalias !2072
  %i.bxl = sext i32 %i.bxk to i64
  %i.bxm = sext i32 %i.bxj to i64
  %i.bxn = mul nsw i64 %i.bxm, %i.bxl             ; 2 uses
  %i.bxo = mul i64 %i.bxd, %i.bxn
  %i.bxp = mul i64 %i.bxo, %i.bwl
  %i.bxq = getelementptr inbounds nuw i8, ptr %i.bxf, i64 %i.bxp
  store ptr %i.bxq, ptr %14, align 8, !tbaa !18
  %i.bxr = shufflevector <2 x i32> %i.bxi, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.bxs = shufflevector <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, <4 x i32> %i.bxr, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i32> %i.bxs, ptr %i.am, align 8, !tbaa !67
  store i32 1, ptr %i.an, align 8, !tbaa !68
  store i64 %i.bxn, ptr %i.ao, align 8, !tbaa !20, !alias.scope !2075
  %i.bxt = add nsw i32 %i.bvy, %.0136
  %i.bxu = icmp sge i32 %i.bxt, %i.bvw
  call fastcc void @_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiib(ptr noundef nonnull align 8 dereferenceable(72) %13, ptr noundef nonnull align 8 dereferenceable(72) %14, ptr %i.du, i32 noundef 36, i32 noundef %.sroa.speculated118, i32 noundef %.sroa.speculated114, i32 noundef %.0136, i32 noundef %.sroa.speculated, i1 noundef zeroext %i.bxu)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  %i.bxv = load i32, ptr %9, align 4, !tbaa !67
  %i.bxw = add nsw i32 %i.bxv, %.0136             ; 2 uses
  %i.bxx = load i32, ptr %8, align 4, !tbaa !67   ; 2 uses
  %i.bxy = icmp slt i32 %i.bxw, %i.bxx
  br i1 %i.bxy, label %.noexc, label %._crit_edge, !llvm.loop !2078

_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge.us1608.i, %.lr.ph1605.i, %.preheader1331.i
  %i.bxz = load i32, ptr %7, align 4, !tbaa !67   ; 2 uses
  %i.bya = add nsw i32 %i.bxz, %.044137           ; 2 uses
  %i.byb = load i32, ptr %6, align 4, !tbaa !67   ; 2 uses
  %i.byc = icmp slt i32 %i.bya, %i.byb
  br i1 %i.byc, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !2079

._crit_edge142:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.hl

bb.hl:                                            ; preds = %._crit_edge142, %bb.a
  ret void

bb.hm:                                            ; preds = %bb.c
  %i.byd = landingpad { ptr, i32 }
          catch ptr null
  %i.bye = extractvalue { ptr, i32 } %i.byd, 0
  call void @__clang_call_terminate(ptr %i.bye) #36
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiib(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr nofree %.0.val, i32 noundef range(i32 16, 37) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7) unnamed_addr #20 {
bb.a:
  %i.a = icmp sgt i32 %3, 15
  br i1 %i.a, label %.preheader1013.lr.ph, label %.preheader1003

.preheader1013.lr.ph:                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = icmp sgt i32 %4, 15
  %i.g = icmp eq i32 %5, 0                        ; 5 uses
  %i.h = icmp sgt i32 %6, 1                       ; 5 uses
  %i.i = add i32 %6, -2                           ; 5 uses
  %i.j = and i32 %i.i, -2
  %i.k = add i32 %i.j, 2                          ; 5 uses
  %i.l = and i32 %4, -16
  %i.m = lshr i32 %i.i, 1                         ; 2 uses
  %i.n = zext nneg i32 %i.m to i64                ; 4 uses
  %i.o = shl nuw nsw i64 %i.n, 5
  %i.p = shl nuw nsw i64 %i.n, 4
  %i.q = shl nuw nsw i64 %i.n, 3
  %i.r = shl nuw nsw i64 %i.n, 2
  %i.s = zext nneg i32 %3 to i64
  %i.t = sext i32 %6 to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  %i.u = lshr i32 %i.i, 1                         ; 2 uses
  %i.v = add nuw i32 %i.u, 1                      ; 4 uses
  %i.w = icmp eq i32 %i.u, 0
  %unroll_iter = and i32 %i.v, -2
  %i.x = and i32 %i.i, 2
  %lcmp.mod.not.not = icmp eq i32 %i.x, 0
  %lcmp.mod3723 = trunc i32 %i.v to i1
  %i.y = icmp eq i32 %i.m, 0
  %unroll_iter3731 = and i32 %i.v, -2
  %i.z = and i32 %i.i, 2
  %lcmp.mod3727.not.not = icmp eq i32 %i.z, 0
  %lcmp.mod3730 = trunc i32 %i.v to i1
  br label %.preheader1013

.preheader1013:                                   ; preds = %.preheader1013.lr.ph, %bb.b
  %indvars.iv2222 = phi i64 [ 0, %.preheader1013.lr.ph ], [ %indvars.iv.next2223, %bb.b ] ; 2 uses
  %.014001253 = phi ptr [ %.0.val, %.preheader1013.lr.ph ], [ %.6.lcssa, %bb.b ]
  %i.aa = mul nsw i64 %indvars.iv2222, %i.t
  br label %bb.c

.preheader1003.loopexit:                          ; preds = %bb.b
  %i.ab = trunc nuw nsw i64 %indvars.iv.next2223 to i32
  br label %.preheader1003

.preheader1003:                                   ; preds = %.preheader1003.loopexit, %bb.a
  %.01403.lcssa = phi i32 [ 0, %bb.a ], [ %i.ab, %.preheader1003.loopexit ] ; 3 uses
  %.01400.lcssa = phi ptr [ %.0.val, %bb.a ], [ %.6.lcssa, %.preheader1003.loopexit ] ; 2 uses
  %i.ac = or disjoint i32 %.01403.lcssa, 7
  %i.ad = icmp slt i32 %i.ac, %3
  br i1 %i.ad, label %.preheader1002.lr.ph, label %.preheader992

.preheader1002.lr.ph:                             ; preds = %.preheader1003
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = icmp sgt i32 %4, 15
  %i.aj = icmp eq i32 %5, 0                       ; 5 uses
  %i.ak = icmp sgt i32 %6, 1                      ; 5 uses
  %i.al = add i32 %6, -2                          ; 5 uses
  %i.am = and i32 %i.al, -2
  %i.an = add i32 %i.am, 2                        ; 5 uses
  %i.ao = and i32 %4, -16
  %i.ap = lshr i32 %i.al, 1                       ; 2 uses
  %i.aq = zext nneg i32 %i.ap to i64              ; 4 uses
  %i.ar = shl nuw nsw i64 %i.aq, 5
  %i.as = shl nuw nsw i64 %i.aq, 4
  %i.at = shl nuw nsw i64 %i.aq, 3
  %i.au = shl nuw nsw i64 %i.aq, 2
  %i.av = zext nneg i32 %.01403.lcssa to i64
  %i.aw = sext i32 %3 to i64
  %i.ax = sext i32 %6 to i64
  %wide.trip.count2238 = zext nneg i32 %2 to i64
  %invariant.op = add nsw i64 %i.aw, -7
  %i.ay = lshr i32 %i.al, 1                       ; 2 uses
  %i.az = add nuw i32 %i.ay, 1                    ; 4 uses
  %i.ba = icmp eq i32 %i.ay, 0
  %unroll_iter3742 = and i32 %i.az, -2
  %i.bb = and i32 %i.al, 2
  %lcmp.mod3737.not.not = icmp eq i32 %i.bb, 0
  %lcmp.mod3741 = trunc i32 %i.az to i1
  %i.bc = icmp eq i32 %i.ap, 0
  %unroll_iter3753 = and i32 %i.az, -2
end_hunk_12
begin_hunk_13_@_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiib:bb.a
  %strided.vec2874 = shufflevector <32 x i16> %wide.vec2873, <32 x i16> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec2875 = shufflevector <32 x i16> %wide.vec2873, <32 x i16> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %wide.vec2876 = load <32 x i16>, ptr %next.gep2869, align 2, !tbaa !595 ; 2 uses
  %strided.vec2877 = shufflevector <32 x i16> %wide.vec2876, <32 x i16> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec2878 = shufflevector <32 x i16> %wide.vec2876, <32 x i16> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %wide.vec2879 = load <32 x i16>, ptr %next.gep2870, align 2, !tbaa !595 ; 2 uses
  %strided.vec2880 = shufflevector <32 x i16> %wide.vec2879, <32 x i16> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec2881 = shufflevector <32 x i16> %wide.vec2879, <32 x i16> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.dbw = sext <16 x i16> %strided.vec to <16 x i32>
  %i.dbx = sext <16 x i16> %strided.vec2874 to <16 x i32>
  %i.dby = sext <16 x i16> %strided.vec2877 to <16 x i32>
  %i.dbz = sext <16 x i16> %strided.vec2880 to <16 x i32>
  %i.dca = getelementptr i8, ptr %next.gep2871, i64 32
  %i.dcb = getelementptr i8, ptr %next.gep2871, i64 64
  %i.dcc = getelementptr i8, ptr %next.gep2871, i64 96
  %wide.load = load <16 x i16>, ptr %next.gep2871, align 2, !tbaa !595
  %wide.load2882 = load <16 x i16>, ptr %i.dca, align 2, !tbaa !595
  %wide.load2883 = load <16 x i16>, ptr %i.dcb, align 2, !tbaa !595
  %wide.load2884 = load <16 x i16>, ptr %i.dcc, align 2, !tbaa !595
  %i.dcd = sext <16 x i16> %wide.load to <16 x i32> ; 2 uses
  %i.dce = sext <16 x i16> %wide.load2882 to <16 x i32> ; 2 uses
  %i.dcf = sext <16 x i16> %wide.load2883 to <16 x i32> ; 2 uses
  %i.dcg = sext <16 x i16> %wide.load2884 to <16 x i32> ; 2 uses
  %i.dch = mul nsw <16 x i32> %i.dcd, %i.dbw
  %i.dci = mul nsw <16 x i32> %i.dce, %i.dbx
  %i.dcj = mul nsw <16 x i32> %i.dcf, %i.dby
  %i.dck = mul nsw <16 x i32> %i.dcg, %i.dbz
  %i.dcl = add <16 x i32> %i.dch, %vec.phi2864    ; 2 uses
  %i.dcm = add <16 x i32> %i.dci, %vec.phi2865    ; 2 uses
  %i.dcn = add <16 x i32> %i.dcj, %vec.phi2866    ; 2 uses
  %i.dco = add <16 x i32> %i.dck, %vec.phi2867    ; 2 uses
  %i.dcp = sext <16 x i16> %strided.vec2872 to <16 x i32>
  %i.dcq = sext <16 x i16> %strided.vec2875 to <16 x i32>
  %i.dcr = sext <16 x i16> %strided.vec2878 to <16 x i32>
  %i.dcs = sext <16 x i16> %strided.vec2881 to <16 x i32>
  %i.dct = mul nsw <16 x i32> %i.dcp, %i.dcd
  %i.dcu = mul nsw <16 x i32> %i.dcq, %i.dce
  %i.dcv = mul nsw <16 x i32> %i.dcr, %i.dcf
  %i.dcw = mul nsw <16 x i32> %i.dcs, %i.dcg
  %i.dcx = add <16 x i32> %i.dct, %vec.phi        ; 2 uses
  %i.dcy = add <16 x i32> %i.dcu, %vec.phi2861    ; 2 uses
  %i.dcz = add <16 x i32> %i.dcv, %vec.phi2862    ; 2 uses
  %i.dda = add <16 x i32> %i.dcw, %vec.phi2863    ; 2 uses
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.ddb = icmp eq i64 %index.next, %n.vec
  br i1 %i.ddb, label %middle.block, label %vector.body, !llvm.loop !2152

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <16 x i32> %i.dcy, %i.dcx
  %bin.rdx2885 = add <16 x i32> %i.dcz, %bin.rdx
  %bin.rdx2886 = add <16 x i32> %i.dda, %bin.rdx2885
  %i.ddc = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %bin.rdx2886) ; 3 uses
  %bin.rdx2887 = add <16 x i32> %i.dcm, %i.dcl
  %bin.rdx2888 = add <16 x i32> %i.dcn, %bin.rdx2887
  %bin.rdx2889 = add <16 x i32> %i.dco, %bin.rdx2888
  %i.ddd = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %bin.rdx2889) ; 3 uses
  %cmp.n = icmp eq i64 %i.dbh, %n.vec
  br i1 %cmp.n, label %._crit_edge1753, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dbi, 0
  br i1 %min.epilog.iters.check, label %.lr.ph1752.preheader, label %vec.epilog.ph, !prof !2004

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.ddc, %vec.epilog.iter.check ], [ %.11509.lcssa, %vector.main.loop.iter.check ]
  %bc.merge.rdx2890 = phi i32 [ %i.ddd, %vec.epilog.iter.check ], [ %.11512.lcssa, %vector.main.loop.iter.check ]
  %n.vec2893 = and i64 %i.dbh, 8589934576         ; 5 uses
  %i.dde = trunc i64 %n.vec2893 to i32
  %i.ddf = add i32 %.01506.lcssa, %i.dde
  %i.ddg = shl nuw nsw i64 %n.vec2893, 2
  %i.ddh = getelementptr i8, ptr %.01514.lcssa, i64 %i.ddg
  %i.ddi = shl nuw nsw i64 %n.vec2893, 1
  %i.ddj = getelementptr i8, ptr %.131639.lcssa, i64 %i.ddi ; 2 uses
  %i.ddk = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  %i.ddl = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2890, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index2894 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next2903, %vec.epilog.vector.body ] ; 3 uses
  %vec.phi2895 = phi <16 x i32> [ %i.ddk, %vec.epilog.ph ], [ %i.ddu, %vec.epilog.vector.body ]
  %vec.phi2896 = phi <16 x i32> [ %i.ddl, %vec.epilog.ph ], [ %i.ddr, %vec.epilog.vector.body ]
  %i.ddm = shl i64 %index2894, 2
  %next.gep2897 = getelementptr i8, ptr %.01514.lcssa, i64 %i.ddm
  %i.ddn = shl i64 %index2894, 1
  %next.gep2898 = getelementptr i8, ptr %.131639.lcssa, i64 %i.ddn
  %wide.vec2899 = load <32 x i16>, ptr %next.gep2897, align 2, !tbaa !595 ; 2 uses
  %strided.vec2900 = shufflevector <32 x i16> %wide.vec2899, <32 x i16> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec2901 = shufflevector <32 x i16> %wide.vec2899, <32 x i16> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.ddo = sext <16 x i16> %strided.vec2900 to <16 x i32>
  %wide.load2902 = load <16 x i16>, ptr %next.gep2898, align 2, !tbaa !595
  %i.ddp = sext <16 x i16> %wide.load2902 to <16 x i32> ; 2 uses
  %i.ddq = mul nsw <16 x i32> %i.ddp, %i.ddo
  %i.ddr = add <16 x i32> %i.ddq, %vec.phi2896    ; 2 uses
  %i.dds = sext <16 x i16> %strided.vec2901 to <16 x i32>
  %i.ddt = mul nsw <16 x i32> %i.dds, %i.ddp
  %i.ddu = add <16 x i32> %i.ddt, %vec.phi2895    ; 2 uses
  %index.next2903 = add nuw i64 %index2894, 16    ; 2 uses
  %i.ddv = icmp eq i64 %index.next2903, %n.vec2893
  br i1 %i.ddv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2153

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ddw = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.ddu) ; 2 uses
  %i.ddx = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.ddr) ; 2 uses
  %cmp.n2904 = icmp eq i64 %i.dbh, %n.vec2893
  br i1 %cmp.n2904, label %._crit_edge1753, label %.lr.ph1752.preheader

.lr.ph1752.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.115071751.ph = phi i32 [ %.01506.lcssa, %iter.check ], [ %i.dbk, %vec.epilog.iter.check ], [ %i.ddf, %vec.epilog.middle.block ]
  %.215101750.ph = phi i32 [ %.11509.lcssa, %iter.check ], [ %i.ddc, %vec.epilog.iter.check ], [ %i.ddw, %vec.epilog.middle.block ]
  %.215131749.ph = phi i32 [ %.11512.lcssa, %iter.check ], [ %i.ddd, %vec.epilog.iter.check ], [ %i.ddx, %vec.epilog.middle.block ]
  %.115151748.ph = phi ptr [ %.01514.lcssa, %iter.check ], [ %i.dbm, %vec.epilog.iter.check ], [ %i.ddh, %vec.epilog.middle.block ]
  %.1416401747.ph = phi ptr [ %.131639.lcssa, %iter.check ], [ %i.dbo, %vec.epilog.iter.check ], [ %i.ddj, %vec.epilog.middle.block ]
  br label %.lr.ph1752

.lr.ph1741:                                       ; preds = %.lr.ph1741.preheader, %.lr.ph1741
  %.015061739 = phi i32 [ %i.dey, %.lr.ph1741 ], [ %.015061739.ph, %.lr.ph1741.preheader ]
  %.115091738 = phi i32 [ %i.dev, %.lr.ph1741 ], [ %.115091738.ph, %.lr.ph1741.preheader ]
  %.115121737 = phi i32 [ %i.del, %.lr.ph1741 ], [ %.115121737.ph, %.lr.ph1741.preheader ]
  %.015141736 = phi ptr [ %i.dew, %.lr.ph1741 ], [ %.015141736.ph, %.lr.ph1741.preheader ] ; 5 uses
  %.1316391735 = phi ptr [ %i.dex, %.lr.ph1741 ], [ %.1316391735.ph, %.lr.ph1741.preheader ] ; 3 uses
  %i.ddy = load i16, ptr %.015141736, align 2, !tbaa !595
  %i.ddz = sext i16 %i.ddy to i32
  %i.dea = load i16, ptr %.1316391735, align 2, !tbaa !595
  %i.deb = sext i16 %i.dea to i32                 ; 2 uses
  %i.dec = mul nsw i32 %i.deb, %i.ddz
  %i.ded = add nsw i32 %i.dec, %.115121737
  %i.dee = getelementptr inbounds nuw i8, ptr %.015141736, i64 2
  %i.def = load i16, ptr %i.dee, align 2, !tbaa !595
  %i.deg = sext i16 %i.def to i32
  %i.deh = getelementptr inbounds nuw i8, ptr %.1316391735, i64 2
  %i.dei = load i16, ptr %i.deh, align 2, !tbaa !595
  %i.dej = sext i16 %i.dei to i32                 ; 2 uses
  %i.dek = mul nsw i32 %i.dej, %i.deg
  %i.del = add nsw i32 %i.ded, %i.dek             ; 2 uses
  %i.dem = getelementptr inbounds nuw i8, ptr %.015141736, i64 4
  %i.den = load i16, ptr %i.dem, align 2, !tbaa !595
  %i.deo = sext i16 %i.den to i32
  %i.dep = mul nsw i32 %i.deo, %i.deb
  %i.deq = add nsw i32 %i.dep, %.115091738
  %i.der = getelementptr inbounds nuw i8, ptr %.015141736, i64 6
  %i.des = load i16, ptr %i.der, align 2, !tbaa !595
  %i.det = sext i16 %i.des to i32
  %i.deu = mul nsw i32 %i.det, %i.dej
  %i.dev = add nsw i32 %i.deq, %i.deu             ; 2 uses
  %i.dew = getelementptr inbounds nuw i8, ptr %.015141736, i64 8 ; 2 uses
  %i.dex = getelementptr inbounds nuw i8, ptr %.1316391735, i64 4
  %i.dey = add nuw nsw i32 %.015061739, 2         ; 2 uses
  %i.dez = or disjoint i32 %i.dey, 1
  %i.dfa = icmp slt i32 %i.dez, %6
  br i1 %i.dfa, label %.lr.ph1741, label %.preheader971.loopexit, !llvm.loop !2154

.lr.ph1752:                                       ; preds = %.lr.ph1752.preheader, %.lr.ph1752
  %.115071751 = phi i32 [ %i.dfo, %.lr.ph1752 ], [ %.115071751.ph, %.lr.ph1752.preheader ]
  %.215101750 = phi i32 [ %i.dfl, %.lr.ph1752 ], [ %.215101750.ph, %.lr.ph1752.preheader ]
  %.215131749 = phi i32 [ %i.dfg, %.lr.ph1752 ], [ %.215131749.ph, %.lr.ph1752.preheader ]
  %.115151748 = phi ptr [ %i.dfm, %.lr.ph1752 ], [ %.115151748.ph, %.lr.ph1752.preheader ] ; 3 uses
  %.1416401747 = phi ptr [ %i.dfn, %.lr.ph1752 ], [ %.1416401747.ph, %.lr.ph1752.preheader ] ; 2 uses
  %i.dfb = load i16, ptr %.115151748, align 2, !tbaa !595
  %i.dfc = sext i16 %i.dfb to i32
  %i.dfd = load i16, ptr %.1416401747, align 2, !tbaa !595
  %i.dfe = sext i16 %i.dfd to i32                 ; 2 uses
  %i.dff = mul nsw i32 %i.dfe, %i.dfc
  %i.dfg = add nsw i32 %i.dff, %.215131749        ; 2 uses
  %i.dfh = getelementptr inbounds nuw i8, ptr %.115151748, i64 2
  %i.dfi = load i16, ptr %i.dfh, align 2, !tbaa !595
  %i.dfj = sext i16 %i.dfi to i32
  %i.dfk = mul nsw i32 %i.dfj, %i.dfe
  %i.dfl = add nsw i32 %i.dfk, %.215101750        ; 2 uses
  %i.dfm = getelementptr inbounds nuw i8, ptr %.115151748, i64 4
  %i.dfn = getelementptr inbounds nuw i8, ptr %.1416401747, i64 2 ; 2 uses
  %i.dfo = add nuw nsw i32 %.115071751, 1         ; 2 uses
  %exitcond2269.not = icmp eq i32 %i.dfo, %6
  br i1 %exitcond2269.not, label %._crit_edge1753, label %.lr.ph1752, !llvm.loop !2155

._crit_edge1753:                                  ; preds = %.lr.ph1752, %middle.block, %vec.epilog.middle.block, %.preheader971
  %.141640.lcssa = phi ptr [ %.131639.lcssa, %.preheader971 ], [ %i.ddj, %vec.epilog.middle.block ], [ %i.dbo, %middle.block ], [ %i.dfn, %.lr.ph1752 ]
  %.21513.lcssa = phi i32 [ %.11512.lcssa, %.preheader971 ], [ %i.ddx, %vec.epilog.middle.block ], [ %i.ddd, %middle.block ], [ %i.dfg, %.lr.ph1752 ]
  %.21510.lcssa = phi i32 [ %.11509.lcssa, %.preheader971 ], [ %i.ddw, %vec.epilog.middle.block ], [ %i.ddc, %middle.block ], [ %i.dfl, %.lr.ph1752 ]
  store i32 %.21513.lcssa, ptr %.271759, align 4, !tbaa !67
  %i.dfp = getelementptr inbounds nuw i8, ptr %.271759, i64 4
  store i32 %.21510.lcssa, ptr %i.dfp, align 4, !tbaa !67
  %i.dfq = getelementptr inbounds nuw i8, ptr %.271759, i64 8 ; 2 uses
  %i.dfr = add nuw nsw i32 %.416451757, 1         ; 2 uses
  %exitcond2270.not = icmp eq i32 %i.dfr, %4
  br i1 %exitcond2270.not, label %._crit_edge1761, label %.lr.ph1760, !llvm.loop !2156

._crit_edge1761:                                  ; preds = %._crit_edge1753, %.preheader976
  %.27.lcssa = phi ptr [ %.26.lcssa, %.preheader976 ], [ %i.dfq, %._crit_edge1753 ] ; 3 uses
  %indvars.iv.next2272 = add nuw nsw i64 %indvars.iv2271, 1 ; 2 uses
  %exitcond2275.not = icmp eq i64 %indvars.iv.next2272, %wide.trip.count2274
  br i1 %exitcond2275.not, label %bb.bd, label %bb.be, !llvm.loop !2157

.preheader969:                                    ; preds = %.preheader969.lr.ph, %bb.bp
  %indvars.iv2298 = phi i64 [ %i.byo, %.preheader969.lr.ph ], [ %indvars.iv.next2299, %bb.bp ] ; 2 uses
  %.281893 = phi ptr [ %.21.lcssa, %.preheader969.lr.ph ], [ %.34.lcssa, %bb.bp ]
  %i.dfs = mul nsw i64 %indvars.iv2298, %i.byp
  br label %bb.bq

bb.bp:                                            ; preds = %._crit_edge1883
  %indvars.iv.next2299 = add nsw i64 %indvars.iv2298, 1 ; 2 uses
  %exitcond2302.not = icmp eq i64 %indvars.iv.next2299, %wide.trip.count2301
  br i1 %exitcond2302.not, label %._crit_edge1894, label %.preheader969, !llvm.loop !2158

bb.bq:                                            ; preds = %.preheader969, %._crit_edge1883
  %indvars.iv2293 = phi i64 [ 0, %.preheader969 ], [ %indvars.iv.next2294, %._crit_edge1883 ] ; 3 uses
  %.291891 = phi ptr [ %.281893, %.preheader969 ], [ %.34.lcssa, %._crit_edge1883 ] ; 2 uses
  %i.dft = load ptr, ptr %0, align 8, !tbaa !18
  %i.dfu = load i32, ptr %i.bxt, align 4, !tbaa !75
  %i.dfv = sext i32 %i.dfu to i64
  %i.dfw = mul nsw i64 %indvars.iv2293, %i.dfv
  %i.dfx = load i64, ptr %i.bxu, align 8, !tbaa !65
  %i.dfy = mul i64 %i.dfw, %i.dfx
  %i.dfz = getelementptr inbounds nuw i8, ptr %i.dft, i64 %i.dfy
  %i.dga = getelementptr inbounds [2 x i8], ptr %i.dfz, i64 %i.dfs ; 23 uses
  %i.dgb = load ptr, ptr %1, align 8, !tbaa !18
  %i.dgc = load i32, ptr %i.bxv, align 4, !tbaa !75
  %i.dgd = sext i32 %i.dgc to i64
  %i.dge = mul nsw i64 %indvars.iv2293, %i.dgd
  %i.dgf = load i64, ptr %i.bxw, align 8, !tbaa !65
  %i.dgg = mul i64 %i.dge, %i.dgf
  %i.dgh = getelementptr inbounds nuw i8, ptr %i.dgb, i64 %i.dgg ; 2 uses
  br i1 %i.bxx, label %.lr.ph1789, label %.preheader968

.preheader968:                                    ; preds = %._crit_edge1782, %bb.bq
  %.01491.lcssa = phi ptr [ %i.dgh, %bb.bq ], [ %.21493.lcssa, %._crit_edge1782 ] ; 2 uses
  %.01486.lcssa = phi i32 [ 0, %bb.bq ], [ %i.bye, %._crit_edge1782 ] ; 3 uses
  %.30.lcssa = phi ptr [ %.291891, %bb.bq ], [ %i.diy, %._crit_edge1782 ] ; 2 uses
  %i.dgi = or disjoint i32 %.01486.lcssa, 7
  %i.dgj = icmp slt i32 %i.dgi, %4
  br i1 %i.dgj, label %.lr.ph1814, label %.preheader967

.lr.ph1789:                                       ; preds = %bb.bq, %._crit_edge1782
  %.301787 = phi ptr [ %i.diy, %._crit_edge1782 ], [ %.291891, %bb.bq ] ; 3 uses
  %.014861786 = phi i32 [ %i.diz, %._crit_edge1782 ], [ 0, %bb.bq ]
  %.014911785 = phi ptr [ %.21493.lcssa, %._crit_edge1782 ], [ %i.dgh, %bb.bq ] ; 3 uses
  br i1 %i.bxy, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %.lr.ph1789
  %i.dgk = load <16 x i32>, ptr %.301787, align 1, !tbaa !100
  br label %bb.bs

bb.bs:                                            ; preds = %.lr.ph1789, %bb.br
  %i.dgl = phi <16 x i32> [ %i.dgk, %bb.br ], [ zeroinitializer, %.lr.ph1789 ] ; 3 uses
  br i1 %i.bxz, label %.lr.ph1773.preheader, label %.preheader964

.lr.ph1773.preheader:                             ; preds = %bb.bs
  br i1 %i.byv, label %.lr.ph1773.epil.preheader, label %.lr.ph1773

.preheader964.loopexit.unr-lcssa:                 ; preds = %.lr.ph1773
  br i1 %lcmp.mod3812.not.not, label %.lr.ph1773.epil.preheader, label %.preheader964

.lr.ph1773.epil.preheader:                        ; preds = %.preheader964.loopexit.unr-lcssa, %.lr.ph1773.preheader
  %.014841770.epil.init = phi ptr [ %i.dga, %.lr.ph1773.preheader ], [ %i.dia, %.preheader964.loopexit.unr-lcssa ] ; 2 uses
  %.114921769.epil.init = phi ptr [ %.014911785, %.lr.ph1773.preheader ], [ %i.dib, %.preheader964.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init3811 = phi <16 x i32> [ %i.dgl, %.lr.ph1773.preheader ], [ %i.dhz, %.preheader964.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod3816)
  %i.dgm = load i32, ptr %.014841770.epil.init, align 4, !tbaa !67
  %i.dgn = insertelement <16 x i32> poison, i32 %i.dgm, i64 0
  %i.dgo = shufflevector <16 x i32> %i.dgn, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.dgp = load <32 x i16>, ptr %.114921769.epil.init, align 1, !tbaa !100
  %i.dgq = bitcast <16 x i32> %i.dgo to <32 x i16>
  %i.dgr = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.dgq, <32 x i16> %i.dgp)
  %i.dgs = add <16 x i32> %i.dgr, %.epil.init3811
  %i.dgt = getelementptr inbounds nuw i8, ptr %.014841770.epil.init, i64 4
  %i.dgu = getelementptr inbounds nuw i8, ptr %.114921769.epil.init, i64 64
  br label %.preheader964

.preheader964:                                    ; preds = %.lr.ph1773.epil.preheader, %.preheader964.loopexit.unr-lcssa, %bb.bs
  %.lcssa = phi <16 x i32> [ %i.dgl, %bb.bs ], [ %i.dhz, %.preheader964.loopexit.unr-lcssa ], [ %i.dgs, %.lr.ph1773.epil.preheader ] ; 3 uses
  %.11492.lcssa = phi ptr [ %.014911785, %bb.bs ], [ %i.dib, %.preheader964.loopexit.unr-lcssa ], [ %i.dgu, %.lr.ph1773.epil.preheader ] ; 4 uses
  %.01484.lcssa = phi ptr [ %i.dga, %bb.bs ], [ %i.dia, %.preheader964.loopexit.unr-lcssa ], [ %i.dgt, %.lr.ph1773.epil.preheader ] ; 3 uses
  %.01482.lcssa = phi i32 [ 0, %bb.bs ], [ %i.byd, %.preheader964.loopexit.unr-lcssa ], [ %i.byd, %.lr.ph1773.epil.preheader ] ; 5 uses
  %i.dgv = icmp slt i32 %.01482.lcssa, %6
  br i1 %i.dgv, label %.lr.ph1781.preheader, label %._crit_edge1782

.lr.ph1781.preheader:                             ; preds = %.preheader964
  %i.dgw = sub i32 %6, %.01482.lcssa
  %.neg3857 = add i32 %.01482.lcssa, 1
  %xtraiter3819 = and i32 %i.dgw, 1
  %lcmp.mod3820.not = icmp eq i32 %xtraiter3819, 0
  br i1 %lcmp.mod3820.not, label %.lr.ph1781.prol.loopexit, label %.lr.ph1781.prol

.lr.ph1781.prol:                                  ; preds = %.lr.ph1781.preheader
  %i.dgx = load i16, ptr %.01484.lcssa, align 2, !tbaa !595
  %i.dgy = sext i16 %i.dgx to i32
  %i.dgz = insertelement <16 x i32> poison, i32 %i.dgy, i64 0
  %i.dha = shufflevector <16 x i32> %i.dgz, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.dhb = load <16 x i16>, ptr %.11492.lcssa, align 1, !tbaa !100
  %i.dhc = sext <16 x i16> %i.dhb to <16 x i32>
  %i.dhd = mul <16 x i32> %i.dha, %i.dhc
  %i.dhe = add <16 x i32> %i.dhd, %.lcssa         ; 2 uses
  %i.dhf = getelementptr inbounds nuw i8, ptr %.01484.lcssa, i64 2
  %i.dhg = getelementptr inbounds nuw i8, ptr %.11492.lcssa, i64 32 ; 2 uses
  %i.dhh = add nuw nsw i32 %.01482.lcssa, 1
  br label %.lr.ph1781.prol.loopexit

.lr.ph1781.prol.loopexit:                         ; preds = %.lr.ph1781.prol, %.lr.ph1781.preheader
  %.lcssa3395.unr = phi <16 x i32> [ poison, %.lr.ph1781.preheader ], [ %i.dhe, %.lr.ph1781.prol ]
  %.lcssa3394.unr = phi ptr [ poison, %.lr.ph1781.preheader ], [ %i.dhg, %.lr.ph1781.prol ]
  %.114831780.unr = phi i32 [ %.01482.lcssa, %.lr.ph1781.preheader ], [ %i.dhh, %.lr.ph1781.prol ]
  %.114851779.unr = phi ptr [ %.01484.lcssa, %.lr.ph1781.preheader ], [ %i.dhf, %.lr.ph1781.prol ]
  %.214931778.unr = phi ptr [ %.11492.lcssa, %.lr.ph1781.preheader ], [ %i.dhg, %.lr.ph1781.prol ]
  %.unr3821 = phi <16 x i32> [ %.lcssa, %.lr.ph1781.preheader ], [ %i.dhe, %.lr.ph1781.prol ]
  %i.dhi = icmp eq i32 %6, %.neg3857
  br i1 %i.dhi, label %._crit_edge1782, label %.lr.ph1781

.lr.ph1773:                                       ; preds = %.lr.ph1773.preheader, %.lr.ph1773
  %.014841770 = phi ptr [ %i.dia, %.lr.ph1773 ], [ %i.dga, %.lr.ph1773.preheader ] ; 3 uses
  %.114921769 = phi ptr [ %i.dib, %.lr.ph1773 ], [ %.014911785, %.lr.ph1773.preheader ] ; 3 uses
  %i.dhj = phi <16 x i32> [ %i.dhz, %.lr.ph1773 ], [ %i.dgl, %.lr.ph1773.preheader ]
  %niter3818 = phi i32 [ %niter3818.next.1, %.lr.ph1773 ], [ 0, %.lr.ph1773.preheader ]
  %i.dhk = load i32, ptr %.014841770, align 4, !tbaa !67
  %i.dhl = insertelement <16 x i32> poison, i32 %i.dhk, i64 0
  %i.dhm = shufflevector <16 x i32> %i.dhl, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.dhn = load <32 x i16>, ptr %.114921769, align 1, !tbaa !100
  %i.dho = bitcast <16 x i32> %i.dhm to <32 x i16>
  %i.dhp = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.dho, <32 x i16> %i.dhn)
  %i.dhq = add <16 x i32> %i.dhp, %i.dhj
  %i.dhr = getelementptr inbounds nuw i8, ptr %.014841770, i64 4
  %i.dhs = getelementptr inbounds nuw i8, ptr %.114921769, i64 64
  %i.dht = load i32, ptr %i.dhr, align 4, !tbaa !67
  %i.dhu = insertelement <16 x i32> poison, i32 %i.dht, i64 0
  %i.dhv = shufflevector <16 x i32> %i.dhu, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.dhw = load <32 x i16>, ptr %i.dhs, align 1, !tbaa !100
  %i.dhx = bitcast <16 x i32> %i.dhv to <32 x i16>
  %i.dhy = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.dhx, <32 x i16> %i.dhw)
  %i.dhz = add <16 x i32> %i.dhy, %i.dhq          ; 3 uses
  %i.dia = getelementptr inbounds nuw i8, ptr %.014841770, i64 8 ; 3 uses
  %i.dib = getelementptr inbounds nuw i8, ptr %.114921769, i64 128 ; 3 uses
  %niter3818.next.1 = add nuw nsw i32 %niter3818, 2 ; 2 uses
  %niter3818.ncmp.1.not = icmp eq i32 %niter3818.next.1, %unroll_iter3817
  br i1 %niter3818.ncmp.1.not, label %.preheader964.loopexit.unr-lcssa, label %.lr.ph1773, !llvm.loop !2159

.lr.ph1781:                                       ; preds = %.lr.ph1781.prol.loopexit, %.lr.ph1781
  %.114831780 = phi i32 [ %i.dix, %.lr.ph1781 ], [ %.114831780.unr, %.lr.ph1781.prol.loopexit ]
  %.114851779 = phi ptr [ %i.div, %.lr.ph1781 ], [ %.114851779.unr, %.lr.ph1781.prol.loopexit ] ; 3 uses
  %.214931778 = phi ptr [ %i.diw, %.lr.ph1781 ], [ %.214931778.unr, %.lr.ph1781.prol.loopexit ] ; 3 uses
  %i.dic = phi <16 x i32> [ %i.diu, %.lr.ph1781 ], [ %.unr3821, %.lr.ph1781.prol.loopexit ]
  %i.did = load i16, ptr %.114851779, align 2, !tbaa !595
  %i.die = sext i16 %i.did to i32
  %i.dif = insertelement <16 x i32> poison, i32 %i.die, i64 0
  %i.dig = shufflevector <16 x i32> %i.dif, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.dih = load <16 x i16>, ptr %.214931778, align 1, !tbaa !100
  %i.dii = sext <16 x i16> %i.dih to <16 x i32>
  %i.dij = mul <16 x i32> %i.dig, %i.dii
  %i.dik = add <16 x i32> %i.dij, %i.dic
  %i.dil = getelementptr inbounds nuw i8, ptr %.114851779, i64 2
  %i.dim = getelementptr inbounds nuw i8, ptr %.214931778, i64 32
  %i.din = load i16, ptr %i.dil, align 2, !tbaa !595
  %i.dio = sext i16 %i.din to i32
  %i.dip = insertelement <16 x i32> poison, i32 %i.dio, i64 0
  %i.diq = shufflevector <16 x i32> %i.dip, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.dir = load <16 x i16>, ptr %i.dim, align 1, !tbaa !100
  %i.dis = sext <16 x i16> %i.dir to <16 x i32>
  %i.dit = mul <16 x i32> %i.diq, %i.dis
  %i.diu = add <16 x i32> %i.dit, %i.dik          ; 2 uses
  %i.div = getelementptr inbounds nuw i8, ptr %.114851779, i64 4
  %i.diw = getelementptr inbounds nuw i8, ptr %.214931778, i64 64 ; 2 uses
  %i.dix = add nuw nsw i32 %.114831780, 2         ; 2 uses
  %exitcond2279.not.1 = icmp eq i32 %i.dix, %6
  br i1 %exitcond2279.not.1, label %._crit_edge1782, label %.lr.ph1781, !llvm.loop !2160

._crit_edge1782:                                  ; preds = %.lr.ph1781.prol.loopexit, %.lr.ph1781, %.preheader964
  %.lcssa1014 = phi <16 x i32> [ %.lcssa, %.preheader964 ], [ %.lcssa3395.unr, %.lr.ph1781.prol.loopexit ], [ %i.diu, %.lr.ph1781 ]
  %.21493.lcssa = phi ptr [ %.11492.lcssa, %.preheader964 ], [ %.lcssa3394.unr, %.lr.ph1781.prol.loopexit ], [ %i.diw, %.lr.ph1781 ] ; 2 uses
  store <16 x i32> %.lcssa1014, ptr %.301787, align 1, !tbaa !100
  %i.diy = getelementptr inbounds nuw i8, ptr %.301787, i64 64 ; 2 uses
  %i.diz = add nuw nsw i32 %.014861786, 16        ; 2 uses
  %i.dja = or disjoint i32 %i.diz, 15
  %i.djb = icmp slt i32 %i.dja, %4
  br i1 %i.djb, label %.lr.ph1789, label %.preheader968, !llvm.loop !2161

.preheader967:                                    ; preds = %._crit_edge1807, %.preheader968
  %.31494.lcssa = phi ptr [ %.01491.lcssa, %.preheader968 ], [ %.51496.lcssa, %._crit_edge1807 ] ; 2 uses
  %.11487.lcssa = phi i32 [ %.01486.lcssa, %.preheader968 ], [ %i.dmx, %._crit_edge1807 ] ; 3 uses
  %.31.lcssa = phi ptr [ %.30.lcssa, %.preheader968 ], [ %i.dmw, %._crit_edge1807 ] ; 2 uses
  %i.djc = or disjoint i32 %.11487.lcssa, 3
  %i.djd = icmp slt i32 %i.djc, %4
  br i1 %i.djd, label %.lr.ph1837, label %.preheader966

.lr.ph1814:                                       ; preds = %.preheader968, %._crit_edge1807
  %.311813 = phi ptr [ %i.dmw, %._crit_edge1807 ], [ %.30.lcssa, %.preheader968 ] ; 5 uses
  %.114871812 = phi i32 [ %i.dmx, %._crit_edge1807 ], [ %.01486.lcssa, %.preheader968 ]
  %.314941811 = phi ptr [ %.51496.lcssa, %._crit_edge1807 ], [ %.01491.lcssa, %.preheader968 ] ; 4 uses
  br i1 %i.bxy, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph1814
  %i.dje = load <4 x i32>, ptr %.311813, align 1, !tbaa !100
  %i.djf = getelementptr inbounds nuw i8, ptr %.311813, i64 16
  %i.djg = load <4 x i32>, ptr %i.djf, align 1, !tbaa !100
  br label %bb.bu

bb.bu:                                            ; preds = %.lr.ph1814, %bb.bt
  %i.djh = phi <4 x i32> [ %i.dje, %bb.bt ], [ zeroinitializer, %.lr.ph1814 ] ; 3 uses
  %i.dji = phi <4 x i32> [ %i.djg, %bb.bt ], [ zeroinitializer, %.lr.ph1814 ] ; 3 uses
  br i1 %i.bxz, label %.lr.ph1797.preheader, label %.preheader963

.lr.ph1797.preheader:                             ; preds = %bb.bu
  br i1 %i.byx, label %.lr.ph1797.epil.preheader, label %.lr.ph1797

end_hunk_13
begin_hunk_14_@_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.13:bb.a
  %i.xy = add i32 %i.vh, %i.vu
  %i.xz = sub i32 %i.xx, %i.xy
  %i.ya = add i32 %i.xz, %i.vx
  %i.yb = ashr i32 %i.ya, 2
  %i.yc = add i32 %i.uf, %i.vn
  %i.yd = add i32 %i.vd, %i.vo
  %i.ye = sub i32 %i.yc, %i.yd
  %i.yf = add i32 %i.ye, %i.vv
  %i.yg = ashr i32 %i.yf, 2
  %i.yh = getelementptr inbounds nuw i8, ptr %.1492.us.i, i64 4
  store i32 %i.yg, ptr %i.yh, align 4, !tbaa !67
  %i.yi = getelementptr inbounds nuw i8, ptr %i.xw, i64 4
  store i32 %i.yb, ptr %i.yi, align 4, !tbaa !67
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn, %bb.bm
  %indvars.iv.next238.i = add nuw nsw i64 %indvars.iv237.i, 1 ; 2 uses
  %exitcond241.not.i = icmp eq i64 %indvars.iv.next238.i, %wide.trip.count240.i
  br i1 %exitcond241.not.i, label %._crit_edge.us152.i, label %_ZN4ncnn3MatD2Ev.exit538.us.i, !llvm.loop !2257

._crit_edge.us152.i:                              ; preds = %bb.bp
  %indvars.iv.next243.i = add nuw nsw i64 %indvars.iv242.i, 2 ; 3 uses
  %i.yj = icmp slt i64 %indvars.iv.next243.i, %invariant.op309.i
  br i1 %i.yj, label %.lr.ph.us151.i, label %.preheader.loopexit.i, !llvm.loop !2258

.preheader.loopexit.i:                            ; preds = %._crit_edge.us152.i
  %i.yk = trunc nsw i64 %indvars.iv.next243.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.lr.ph148.split.preheader.i, %.preheader91.i
  %.3.lcssa.i = phi i32 [ %.2.lcssa.i, %.preheader91.i ], [ %i.yk, %.preheader.loopexit.i ], [ %i.sl, %.lr.ph148.split.preheader.i ] ; 2 uses
  %i.yl = icmp slt i32 %.3.lcssa.i, %.sroa.speculated119
  br i1 %i.yl, label %.lr.ph167.i, label %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph167.i:                                      ; preds = %.preheader.i
  %i.ym = icmp sgt i32 %.sroa.speculated115, 0
  %i.yn = sext i32 %.sroa.speculated115 to i64
  %i.yo = shl nsw i32 %.sroa.speculated115, 1
  %i.yp = sext i32 %i.yo to i64
  %i.yq = mul nsw i32 %.sroa.speculated115, 3
  %i.yr = sext i32 %i.yq to i64
  %i.ys = shl nsw i32 %.sroa.speculated115, 2
  %i.yt = sext i32 %i.ys to i64                   ; 12 uses
  %i.yu = sext i32 %i.bt to i64                   ; 2 uses
  br i1 %i.ym, label %.lr.ph167.split.us.i, label %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph167.split.us.i:                             ; preds = %.lr.ph167.i
  %i.yv = load ptr, ptr %12, align 8, !tbaa !18, !noalias !2259
  %i.yw = load i64, ptr %i.aq, align 8, !tbaa !20, !noalias !2259
  %i.yx = load i64, ptr %i.ar, align 8, !tbaa !65, !noalias !2259 ; 2 uses
  %factor.op.mul177.i = mul i64 %i.yx, %i.yw
  %i.yy = sext i32 %.3.lcssa.i to i64
  %wide.trip.count258.i = zext nneg i32 %.sroa.speculated115 to i64
  br label %.lr.ph.us175.i

.lr.ph.us175.i:                                   ; preds = %._crit_edge.us176.i, %.lr.ph167.split.us.i
  %indvars.iv260.i = phi i64 [ %indvars.iv.next261.i, %._crit_edge.us176.i ], [ %i.yy, %.lr.ph167.split.us.i ] ; 3 uses
  %i.yz = trunc nsw i64 %indvars.iv260.i to i32
  %factor.op.mul162.reass.us.i = mul i32 %factor.op.mul102.i, %i.yz
  %i.za = sext i32 %factor.op.mul162.reass.us.i to i64
  %i.zb = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.za
  %i.zc = add nsw i64 %indvars.iv260.i, %i.bl
  %.reass178.i = mul i64 %factor.op.mul177.i, %i.zc
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yv, i64 %.reass178.i
  br label %_ZN4ncnn3MatD2Ev.exit.us.i

_ZN4ncnn3MatD2Ev.exit.us.i:                       ; preds = %.split.us173.i, %.lr.ph.us175.i
  %indvars.iv255.i = phi i64 [ 0, %.lr.ph.us175.i ], [ %indvars.iv.next256.i, %.split.us173.i ] ; 3 uses
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %i.zb, i64 %indvars.iv255.i ; 5 uses
  %i.zf = getelementptr inbounds nuw [4 x i8], ptr %i.ze, i64 %i.yn ; 2 uses
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %i.ze, i64 %i.yp ; 2 uses
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %i.ze, i64 %i.yr ; 2 uses
  %i.zi = load i32, ptr %i.ze, align 4, !tbaa !67
  %i.zj = load i32, ptr %i.zf, align 4, !tbaa !67 ; 2 uses
  %i.zk = add nsw i32 %i.zj, %i.zi
  %i.zl = load i32, ptr %i.zg, align 4, !tbaa !67 ; 2 uses
  %i.zm = add nsw i32 %i.zk, %i.zl                ; 2 uses
  %i.zn = sub i32 %i.zj, %i.zl
  %i.zo = load i32, ptr %i.zh, align 4, !tbaa !67
  %i.zp = add nsw i32 %i.zn, %i.zo                ; 2 uses
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.ze, i64 %i.yt ; 2 uses
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %i.zf, i64 %i.yt ; 2 uses
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %i.zg, i64 %i.yt ; 2 uses
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %i.zh, i64 %i.yt ; 2 uses
  %i.zu = load i32, ptr %i.zq, align 4, !tbaa !67
  %i.zv = load i32, ptr %i.zr, align 4, !tbaa !67 ; 2 uses
  %i.zw = add nsw i32 %i.zv, %i.zu
  %i.zx = load i32, ptr %i.zs, align 4, !tbaa !67 ; 2 uses
  %i.zy = add nsw i32 %i.zw, %i.zx                ; 3 uses
  %i.zz = sub i32 %i.zv, %i.zx
  %i.aaa = load i32, ptr %i.zt, align 4, !tbaa !67
  %i.aab = add nsw i32 %i.zz, %i.aaa              ; 3 uses
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %i.zq, i64 %i.yt ; 2 uses
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %i.zr, i64 %i.yt ; 2 uses
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %i.zs, i64 %i.yt ; 2 uses
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %i.zt, i64 %i.yt ; 2 uses
  %i.aag = load i32, ptr %i.aac, align 4, !tbaa !67
  %i.aah = load i32, ptr %i.aad, align 4, !tbaa !67 ; 2 uses
  %i.aai = add nsw i32 %i.aah, %i.aag
  %i.aaj = load i32, ptr %i.aae, align 4, !tbaa !67 ; 2 uses
  %i.aak = add nsw i32 %i.aai, %i.aaj             ; 3 uses
  %i.aal = sub i32 %i.aah, %i.aaj
  %i.aam = load i32, ptr %i.aaf, align 4, !tbaa !67
  %i.aan = add nsw i32 %i.aal, %i.aam             ; 3 uses
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %i.aac, i64 %i.yt
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %i.aad, i64 %i.yt
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %i.aae, i64 %i.yt
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %i.aaf, i64 %i.yt
  %i.aas = load i32, ptr %i.aao, align 4, !tbaa !67
  %i.aat = load i32, ptr %i.aap, align 4, !tbaa !67 ; 2 uses
  %i.aau = load i32, ptr %i.aaq, align 4, !tbaa !67 ; 2 uses
  %i.aav = load i32, ptr %i.aar, align 4, !tbaa !67
  %i.aaw = trunc i64 %indvars.iv255.i to i32
  %i.aax = add i32 %.044151, %i.aaw               ; 2 uses
  %i.aay = sdiv i32 %i.aax, %i.ca
  %i.aaz = srem i32 %i.aax, %i.ca
  %i.aba = load i32, ptr %i.an, align 4, !tbaa !75, !noalias !2259
  %i.abb = sext i32 %i.aba to i64
  %i.abc = shl nsw i32 %i.aay, 1                  ; 4 uses
  %i.abd = sext i32 %i.abc to i64
  %i.abe = mul i64 %i.yx, %i.abd
  %i.abf = mul i64 %i.abe, %i.abb
  %i.abg = getelementptr inbounds nuw i8, ptr %i.zd, i64 %i.abf
  %i.abh = shl nsw i32 %i.aaz, 1                  ; 2 uses
  %i.abi = sext i32 %i.abh to i64
  %i.abj = getelementptr inbounds [4 x i8], ptr %i.abg, i64 %i.abi ; 7 uses
  %i.abk = or disjoint i32 %i.abh, 1
  %i.abl = icmp slt i32 %i.abk, %i.bt
  %.fr.us.i = freeze i1 %i.abl
  %.not.us.us.i = icmp slt i32 %i.abc, %i.bu      ; 2 uses
  br i1 %.fr.us.i, label %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit.split.us174.preheader.i

_ZN4ncnn3MatD2Ev.exit.split.us174.preheader.i:    ; preds = %_ZN4ncnn3MatD2Ev.exit.us.i
  br i1 %.not.us.us.i, label %bb.bq, label %_ZN4ncnn3MatD2Ev.exit.split.us174.1.i

_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i:    ; preds = %_ZN4ncnn3MatD2Ev.exit.us.i
  br i1 %.not.us.us.i, label %bb.bs, label %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i

bb.bq:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us174.preheader.i
  %i.abm = add nsw i32 %i.zy, %i.zm
  %i.abn = add nsw i32 %i.abm, %i.aak
  %i.abo = ashr i32 %i.abn, 2
  store i32 %i.abo, ptr %i.abj, align 4, !tbaa !67
  %i.abp = getelementptr inbounds [4 x i8], ptr %i.abj, i64 %i.yu
  br label %_ZN4ncnn3MatD2Ev.exit.split.us174.1.i

_ZN4ncnn3MatD2Ev.exit.split.us174.1.i:            ; preds = %bb.bq, %_ZN4ncnn3MatD2Ev.exit.split.us174.preheader.i
  %.1.us172.i = phi ptr [ %i.abj, %_ZN4ncnn3MatD2Ev.exit.split.us174.preheader.i ], [ %i.abp, %bb.bq ]
  %i.abq = or disjoint i32 %i.abc, 1
  %.not.us171.1.i = icmp slt i32 %i.abq, %i.bu
  br i1 %.not.us171.1.i, label %bb.br, label %.split.us173.i

bb.br:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us174.1.i
  %i.abr = add nsw i32 %i.aab, %i.zp
  %i.abs = add nsw i32 %i.abr, %i.aan
  %i.abt = ashr i32 %i.abs, 2
  store i32 %i.abt, ptr %.1.us172.i, align 4, !tbaa !67
  br label %.split.us173.i

.split.us173.i:                                   ; preds = %bb.bt, %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i, %bb.br, %_ZN4ncnn3MatD2Ev.exit.split.us174.1.i
  %indvars.iv.next256.i = add nuw nsw i64 %indvars.iv255.i, 1 ; 2 uses
  %exitcond259.not.i = icmp eq i64 %indvars.iv.next256.i, %wide.trip.count258.i
  br i1 %exitcond259.not.i, label %._crit_edge.us176.i, label %_ZN4ncnn3MatD2Ev.exit.us.i, !llvm.loop !2262

bb.bs:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i
  %i.abu = add nsw i32 %i.zy, %i.zm
  %i.abv = add nsw i32 %i.abu, %i.aak
  %i.abw = ashr i32 %i.abv, 2
  store i32 %i.abw, ptr %i.abj, align 4, !tbaa !67
  %i.abx = sub i32 %i.zy, %i.aak
  %i.aby = add i32 %i.abx, %i.aas
  %i.abz = add i32 %i.aby, %i.aat
  %i.aca = add i32 %i.abz, %i.aau
  %i.acb = ashr i32 %i.aca, 2
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abj, i64 4
  store i32 %i.acb, ptr %i.acc, align 4, !tbaa !67
  %i.acd = getelementptr inbounds [4 x i8], ptr %i.abj, i64 %i.yu
  br label %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i

_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i:            ; preds = %bb.bs, %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i
  %.1.us.us.i = phi ptr [ %i.abj, %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i ], [ %i.acd, %bb.bs ] ; 2 uses
  %i.ace = or disjoint i32 %i.abc, 1
  %.not.us.us.1.i = icmp slt i32 %i.ace, %i.bu
  br i1 %.not.us.us.1.i, label %bb.bt, label %.split.us173.i

bb.bt:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i
  %i.acf = add nsw i32 %i.aab, %i.zp
  %i.acg = add nsw i32 %i.acf, %i.aan
  %i.ach = ashr i32 %i.acg, 2
  store i32 %i.ach, ptr %.1.us.us.i, align 4, !tbaa !67
  %i.aci = add i32 %i.aab, %i.aat
  %i.acj = add i32 %i.aan, %i.aau
  %i.ack = sub i32 %i.aci, %i.acj
  %i.acl = add i32 %i.ack, %i.aav
  %i.acm = ashr i32 %i.acl, 2
  %i.acn = getelementptr inbounds nuw i8, ptr %.1.us.us.i, i64 4
  store i32 %i.acm, ptr %i.acn, align 4, !tbaa !67
  br label %.split.us173.i

._crit_edge.us176.i:                              ; preds = %.split.us173.i
  %indvars.iv.next261.i = add nsw i64 %indvars.iv260.i, 1 ; 2 uses
  %exitcond264.not.i = icmp eq i64 %indvars.iv.next261.i, %i.bk
  br i1 %exitcond264.not.i, label %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit, label %.lr.ph.us175.i, !llvm.loop !2263

.noexc:                                           ; preds = %.noexc.preheader, %.noexc
  %i.aco = phi i32 [ %i.aen, %.noexc ], [ %.pre159, %.noexc.preheader ] ; 3 uses
  %i.acp = phi i32 [ %i.aep, %.noexc ], [ %i.br, %.noexc.preheader ] ; 2 uses
  %.0150 = phi i32 [ %i.aeo, %.noexc ], [ 0, %.noexc.preheader ] ; 5 uses
  %i.acq = sub nsw i32 %i.acp, %.0150
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.aco, i32 %i.acq)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  %i.acr = load i32, ptr %3, align 4, !tbaa !67
  %i.acs = sdiv i32 %i.at, %i.acr
  %i.act = load ptr, ptr %10, align 8, !tbaa !18, !noalias !2264
  %i.acu = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !2264
  %i.acv = sext i32 %i.acs to i64
  %i.acw = mul i64 %i.acu, %i.acv
  %i.acx = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !2264 ; 3 uses
  %i.acy = mul i64 %i.acw, %i.acx
  %i.acz = getelementptr inbounds nuw i8, ptr %i.act, i64 %i.acy
  %i.ada = load i32, ptr %i.r, align 8, !tbaa !66, !noalias !2264
  %i.adb = load ptr, ptr %i.s, align 8, !tbaa !17, !noalias !2264
  %i.adc = sdiv i32 %.0150, %i.aco
  %i.add = sext i32 %i.adc to i64                 ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !11, !alias.scope !2267
  store i64 %i.acx, ptr %i.u, align 8, !tbaa !65, !alias.scope !2267
  store i32 %i.ada, ptr %i.v, align 8, !tbaa !66, !alias.scope !2267
  store ptr %i.adb, ptr %i.w, align 8, !tbaa !17, !alias.scope !2267
  %i.ade = load <2 x i32>, ptr %i.n, align 4, !tbaa !67, !noalias !2264
  %i.adf = load i32, ptr %i.o, align 8, !tbaa !76, !noalias !2264
  %i.adg = load i32, ptr %i.n, align 4, !tbaa !75, !noalias !2264
  %i.adh = sext i32 %i.adg to i64
  %i.adi = sext i32 %i.adf to i64
  %i.adj = mul nsw i64 %i.adi, %i.adh             ; 2 uses
  %i.adk = mul i64 %i.acx, %i.adj
  %i.adl = mul i64 %i.adk, %i.add
  %i.adm = getelementptr inbounds nuw i8, ptr %i.acz, i64 %i.adl
  store ptr %i.adm, ptr %13, align 8, !tbaa !18, !alias.scope !2267
  %i.adn = shufflevector <2 x i32> %i.ade, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.ado = shufflevector <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, <4 x i32> %i.adn, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i32> %i.ado, ptr %i.x, align 8, !tbaa !67, !alias.scope !2267
  store i32 1, ptr %i.y, align 8, !tbaa !68, !alias.scope !2267
  store i64 %i.adj, ptr %i.z, align 8, !tbaa !20, !alias.scope !2267
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  %i.adp = load i32, ptr %7, align 4, !tbaa !67
  %i.adq = sdiv i32 %.044151, %i.adp
  %i.adr = load ptr, ptr %11, align 8, !tbaa !18, !noalias !2270
  %i.ads = load i64, ptr %i.ac, align 8, !tbaa !20, !noalias !2270
  %i.adt = sext i32 %i.adq to i64
  %i.adu = mul i64 %i.ads, %i.adt
  %i.adv = load i64, ptr %i.ad, align 8, !tbaa !65, !noalias !2270 ; 3 uses
  %i.adw = mul i64 %i.adu, %i.adv
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.adw
  %i.ady = load i32, ptr %i.ae, align 8, !tbaa !66, !noalias !2270
  %i.adz = load ptr, ptr %i.af, align 8, !tbaa !17, !noalias !2270
  store ptr null, ptr %i.ag, align 8, !tbaa !11
  store i64 %i.adv, ptr %i.ah, align 8, !tbaa !65
  store i32 %i.ady, ptr %i.ai, align 8, !tbaa !66
  store ptr %i.adz, ptr %i.aj, align 8, !tbaa !17
  %i.aea = load <2 x i32>, ptr %i.aa, align 4, !tbaa !67, !noalias !2270
  %i.aeb = load i32, ptr %i.ab, align 8, !tbaa !76, !noalias !2270
  %i.aec = load i32, ptr %i.aa, align 4, !tbaa !75, !noalias !2270
  %i.aed = sext i32 %i.aec to i64
  %i.aee = sext i32 %i.aeb to i64
  %i.aef = mul nsw i64 %i.aee, %i.aed             ; 2 uses
  %i.aeg = mul i64 %i.adv, %i.aef
  %i.aeh = mul i64 %i.aeg, %i.add
  %i.aei = getelementptr inbounds nuw i8, ptr %i.adx, i64 %i.aeh
  store ptr %i.aei, ptr %14, align 8, !tbaa !18
  %i.aej = shufflevector <2 x i32> %i.aea, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.aek = shufflevector <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, <4 x i32> %i.aej, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i32> %i.aek, ptr %i.ak, align 8, !tbaa !67
  store i32 1, ptr %i.al, align 8, !tbaa !68
  store i64 %i.aef, ptr %i.am, align 8, !tbaa !20, !alias.scope !2273
  %i.ael = add nsw i32 %i.aco, %.0150
  %i.aem = icmp sge i32 %i.ael, %i.acp
  call fastcc void @_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiib(ptr noundef nonnull align 8 dereferenceable(72) %13, ptr noundef nonnull align 8 dereferenceable(72) %14, ptr %i.bb, i32 noundef 16, i32 noundef %.sroa.speculated119, i32 noundef %.sroa.speculated115, i32 noundef %.0150, i32 noundef %.sroa.speculated, i1 noundef zeroext %i.aem)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  %i.aen = load i32, ptr %9, align 4, !tbaa !67   ; 2 uses
  %i.aeo = add nsw i32 %i.aen, %.0150             ; 2 uses
  %i.aep = load i32, ptr %8, align 4, !tbaa !67   ; 2 uses
  %i.aeq = icmp slt i32 %i.aeo, %i.aep
  br i1 %i.aeq, label %.noexc, label %._crit_edge, !llvm.loop !2276

_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge.us176.i, %.lr.ph167.i, %.preheader.i
  %i.aer = load i32, ptr %7, align 4, !tbaa !67   ; 2 uses
  %i.aes = add nsw i32 %i.aer, %.044151           ; 2 uses
  %i.aet = load i32, ptr %6, align 4, !tbaa !67   ; 2 uses
  %i.aeu = icmp slt i32 %i.aes, %i.aet
  br i1 %i.aeu, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !2277

._crit_edge156:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.bu

bb.bu:                                            ; preds = %._crit_edge156, %bb.a
  ret void

bb.bv:                                            ; preds = %bb.c
  %i.aev = landingpad { ptr, i32 }
          catch ptr null
  %i.aew = extractvalue { ptr, i32 } %i.aev, 0
  call void @__clang_call_terminate(ptr %i.aew) #36
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL46conv3x3s1_winograd23_transform_input_tile_int8ERKNS_3MatERS0_iiiii.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12) #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ca

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.h = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !67
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !67
  %i.k = load i32, ptr %i.a, align 4, !tbaa !67   ; 2 uses
  %.not163 = icmp sgt i32 %i.k, %i.j
  br i1 %.not163, label %._crit_edge166, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.o = load i32, ptr %3, align 4, !tbaa !67     ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.split, label %._crit_edge166

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge
  %i.q = phi i32 [ %i.qx, %._crit_edge ], [ %i.o, %.lr.ph ] ; 3 uses
  %.0164 = phi i32 [ %i.qy, %._crit_edge ], [ %i.k, %.lr.ph ] ; 4 uses
  %i.r = shl nsw i32 %.0164, 4
  %i.s = icmp sgt i32 %i.q, 0
  br i1 %i.s, label %.noexc.lr.ph, label %._crit_edge

.noexc.lr.ph:                                     ; preds = %.lr.ph.split
  %i.t = shl i32 %.0164, 8
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %.thread150.3
  %i.u = phi i32 [ %i.q, %.noexc.lr.ph ], [ %i.qu, %.thread150.3 ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.noexc.lr.ph ], [ %indvars.iv.next, %.thread150.3 ] ; 3 uses
  %i.v = load i32, ptr %4, align 4, !tbaa !67
  %i.w = load i32, ptr %5, align 4, !tbaa !67     ; 2 uses
  %i.x = load i32, ptr %7, align 4, !tbaa !67
  %i.y = add nsw i32 %i.x, %i.r
  %i.z = load i32, ptr %8, align 4, !tbaa !67     ; 7 uses
  %i.aa = sdiv i32 %i.y, %i.z
  %i.ab = load i32, ptr %i.l, align 4, !tbaa !75, !noalias !2278
  %i.ac = load ptr, ptr %6, align 8, !tbaa !18, !noalias !2278
  %i.ad = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !2278
  %i.ae = sext i32 %i.aa to i64
  %i.af = mul i64 %i.ad, %i.ae
  %i.ag = load i64, ptr %i.n, align 8, !tbaa !65, !noalias !2278 ; 2 uses
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ah
  %i.aj = sext i32 %i.ab to i64
  %i.ak = trunc nuw nsw i64 %indvars.iv to i32
  %i.al = add nsw i32 %i.v, %i.ak                 ; 2 uses
  %i.am = srem i32 %i.al, %i.w
  %i.an = sdiv i32 %i.al, %i.w
  %i.ao = shl nsw i32 %i.an, 1                    ; 2 uses
  %i.ap = sext i32 %i.ao to i64                   ; 4 uses
  %i.aq = mul i64 %i.ag, %i.aj
  %i.ar = mul i64 %i.aq, %i.ap
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ar
  %i.at = shl nsw i32 %i.am, 1                    ; 4 uses
  %i.au = mul nsw i32 %i.at, %i.z
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds i8, ptr %i.as, i64 %i.av ; 14 uses
  %i.ax = load i32, ptr %9, align 4, !tbaa !67    ; 2 uses
  %i.ay = load i32, ptr %10, align 4, !tbaa !67   ; 37 uses
  %i.az = mul nsw i32 %i.z, %i.ay
  %i.ba = sext i32 %i.az to i64                   ; 3 uses
  %i.bb = or disjoint i32 %i.at, 1                ; 12 uses
  %i.bc = add nsw i32 %i.at, 2                    ; 12 uses
  %i.bd = add nsw i32 %i.at, 3                    ; 12 uses
  %i.be = sext i32 %i.ax to i64                   ; 3 uses
  %i.bf = icmp slt i32 %i.ao, %i.ax
  br i1 %i.bf, label %bb.c, label %.thread150
end_hunk_14
begin_hunk_15_@_ZN4ncnnL28convolution_im2col_gemm_int8ERKNS_3MatERS0_S2_iiiiiiiRKNS_6OptionE.omp_outlined:bb.a
  store i8 %i.qe, ptr %i.qf, align 1, !tbaa !100
  %i.qg = getelementptr inbounds nuw i8, ptr %.0365213.i.i, i64 2
  %i.qh = load i8, ptr %i.qg, align 1, !tbaa !100
  %i.qi = getelementptr inbounds nuw i8, ptr %.15215.i.i, i64 4
  store i8 %i.qh, ptr %i.qi, align 1, !tbaa !100
  %i.qj = getelementptr i8, ptr %i.px, i64 2
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !100
  %i.ql = getelementptr inbounds nuw i8, ptr %.15215.i.i, i64 5
  store i8 %i.qk, ptr %i.ql, align 1, !tbaa !100
  %i.qm = getelementptr inbounds nuw i8, ptr %.0365213.i.i, i64 3
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !100
  %i.qo = getelementptr inbounds nuw i8, ptr %.15215.i.i, i64 6
  store i8 %i.qn, ptr %i.qo, align 1, !tbaa !100
  %i.qp = getelementptr i8, ptr %i.px, i64 3
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !100
  %i.qr = getelementptr inbounds nuw i8, ptr %.15215.i.i, i64 7
  store i8 %i.qq, ptr %i.qr, align 1, !tbaa !100
  %i.qs = getelementptr inbounds nuw i8, ptr %.15215.i.i, i64 8 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %.0365213.i.i, i64 %i.mx ; 2 uses
  %i.qu = add nuw nsw i32 %.0363214.i.i, 2        ; 2 uses
  %i.qv = or disjoint i32 %i.qu, 1
  %i.qw = icmp slt i32 %i.qv, %.sroa.speculated
  br i1 %i.qw, label %.lr.ph216.i.i, label %.preheader155.i.i, !llvm.loop !2318

.lr.ph223.i.i:                                    ; preds = %.lr.ph223.i.i.prol.loopexit, %.lr.ph223.i.i
  %.16222.i.i = phi ptr [ %i.rt, %.lr.ph223.i.i ], [ %.16222.i.i.unr, %.lr.ph223.i.i.prol.loopexit ] ; 9 uses
  %.1364221.i.i = phi i32 [ %i.rv, %.lr.ph223.i.i ], [ %.1364221.i.i.unr, %.lr.ph223.i.i.prol.loopexit ]
  %.1366220.i.i = phi ptr [ %i.ru, %.lr.ph223.i.i ], [ %.1366220.i.i.unr, %.lr.ph223.i.i.prol.loopexit ] ; 5 uses
  %i.qx = load i8, ptr %.1366220.i.i, align 1, !tbaa !100
  store i8 %i.qx, ptr %.16222.i.i, align 1, !tbaa !100
  %i.qy = getelementptr inbounds nuw i8, ptr %.1366220.i.i, i64 1
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !100
  %i.ra = getelementptr inbounds nuw i8, ptr %.16222.i.i, i64 1
  store i8 %i.qz, ptr %i.ra, align 1, !tbaa !100
  %i.rb = getelementptr inbounds nuw i8, ptr %.1366220.i.i, i64 2
  %i.rc = load i8, ptr %i.rb, align 1, !tbaa !100
  %i.rd = getelementptr inbounds nuw i8, ptr %.16222.i.i, i64 2
  store i8 %i.rc, ptr %i.rd, align 1, !tbaa !100
  %i.re = getelementptr inbounds nuw i8, ptr %.1366220.i.i, i64 3
  %i.rf = load i8, ptr %i.re, align 1, !tbaa !100
  %i.rg = getelementptr inbounds nuw i8, ptr %.16222.i.i, i64 3
  store i8 %i.rf, ptr %i.rg, align 1, !tbaa !100
  %i.rh = getelementptr inbounds nuw i8, ptr %.16222.i.i, i64 4
  %i.ri = getelementptr inbounds nuw i8, ptr %.1366220.i.i, i64 %i.bs ; 5 uses
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !100
  store i8 %i.rj, ptr %i.rh, align 1, !tbaa !100
  %i.rk = getelementptr inbounds nuw i8, ptr %i.ri, i64 1
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !100
  %i.rm = getelementptr inbounds nuw i8, ptr %.16222.i.i, i64 5
  store i8 %i.rl, ptr %i.rm, align 1, !tbaa !100
  %i.rn = getelementptr inbounds nuw i8, ptr %i.ri, i64 2
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !100
  %i.rp = getelementptr inbounds nuw i8, ptr %.16222.i.i, i64 6
  store i8 %i.ro, ptr %i.rp, align 1, !tbaa !100
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ri, i64 3
  %i.rr = load i8, ptr %i.rq, align 1, !tbaa !100
  %i.rs = getelementptr inbounds nuw i8, ptr %.16222.i.i, i64 7
  store i8 %i.rr, ptr %i.rs, align 1, !tbaa !100
  %i.rt = getelementptr inbounds nuw i8, ptr %.16222.i.i, i64 8 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.ri, i64 %i.bs
  %i.rv = add nuw nsw i32 %.1364221.i.i, 2        ; 2 uses
  %exitcond302.not.i.i.1 = icmp eq i32 %i.rv, %.sroa.speculated
  br i1 %exitcond302.not.i.i.1, label %.loopexit156.i.i, label %.lr.ph223.i.i, !llvm.loop !2319

.loopexit156.i.i.loopexit.unr-lcssa:              ; preds = %.lr.ph211.i.i
  br i1 %lcmp.mod487.not, label %.loopexit156.i.i, label %.lr.ph211.i.i.epil.preheader

.lr.ph211.i.i.epil.preheader:                     ; preds = %.loopexit156.i.i.loopexit.unr-lcssa, %.lr.ph211.preheader.i.i
  %.13210.i.i.epil.init = phi ptr [ %.12226.i.i, %.lr.ph211.preheader.i.i ], [ %i.ox, %.loopexit156.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.0376208.i.i.epil.init = phi ptr [ %i.oi, %.lr.ph211.preheader.i.i ], [ %i.oy, %.loopexit156.i.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod489)
  %i.rw = load <8 x i16>, ptr %.0376208.i.i.epil.init, align 1, !tbaa !100 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %.0376208.i.i.epil.init, i64 16
  %i.ry = load <8 x i16>, ptr %i.rx, align 1, !tbaa !100 ; 2 uses
  %i.rz = shufflevector <8 x i16> %i.rw, <8 x i16> %i.ry, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.sa = shufflevector <8 x i16> %i.rw, <8 x i16> %i.ry, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <8 x i16> %i.rz, ptr %.13210.i.i.epil.init, align 16, !tbaa !100
  %i.sb = getelementptr inbounds nuw i8, ptr %.13210.i.i.epil.init, i64 16
  store <8 x i16> %i.sa, ptr %i.sb, align 16, !tbaa !100
  %i.sc = getelementptr inbounds nuw i8, ptr %.13210.i.i.epil.init, i64 32
  br label %.loopexit156.i.i

.loopexit156.i.i:                                 ; preds = %.lr.ph223.i.i.prol.loopexit, %.lr.ph223.i.i, %.lr.ph211.i.i.epil.preheader, %.loopexit156.i.i.loopexit.unr-lcssa, %.preheader155.i.i, %_ZN4ncnn3MatD2Ev.exit394.i.i, %bb.k
  %.17.i.i = phi ptr [ %.12226.i.i, %bb.k ], [ %.15.lcssa.i.i, %.preheader155.i.i ], [ %i.sc, %.lr.ph211.i.i.epil.preheader ], [ %.12226.i.i, %_ZN4ncnn3MatD2Ev.exit394.i.i ], [ %i.ox, %.loopexit156.i.i.loopexit.unr-lcssa ], [ %.lcssa460.unr, %.lr.ph223.i.i.prol.loopexit ], [ %i.rt, %.lr.ph223.i.i ] ; 2 uses
  %indvars.iv.next304.i.i = add nuw nsw i64 %indvars.iv303.i.i, 4 ; 3 uses
  %i.sd = icmp slt i64 %indvars.iv.next304.i.i, %invariant.op358.i.i
  br i1 %i.sd, label %bb.k, label %.preheader154.loopexit.i.i, !llvm.loop !2320

.preheader.loopexit.i.i:                          ; preds = %.loopexit152.i.i
  %i.se = trunc nsw i64 %indvars.iv.next309.i.i to i32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.loopexit.i.i, %.preheader154.i.i
  %.3359.lcssa.i.i = phi i32 [ %.2358.lcssa.i.i, %.preheader154.i.i ], [ %i.se, %.preheader.loopexit.i.i ] ; 3 uses
  %.18.lcssa.i.i = phi ptr [ %.12.lcssa.i.i, %.preheader154.i.i ], [ %.23.i.i, %.preheader.loopexit.i.i ] ; 2 uses
  %i.sf = icmp slt i32 %.3359.lcssa.i.i, %.sroa.speculated63
  br i1 %i.sf, label %.lr.ph264.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit

.lr.ph264.i.i:                                    ; preds = %.preheader.i.i
  %i.sg = icmp eq i32 %i.bt, 8
  %i.sh = sdiv i32 %i.ah, 8
  %i.si = sext i32 %i.sh to i64
  %i.sj = lshr i32 %.sroa.speculated, 3           ; 3 uses
  %i.sk = shl i64 %i.bs, 3                        ; 9 uses
  %i.sl = sext i32 %i.ah to i64
  br i1 %i.sg, label %_ZN4ncnn3MatD2Ev.exit390.us.preheader.i.i, label %.lr.ph264.split.i.i

_ZN4ncnn3MatD2Ev.exit390.us.preheader.i.i:        ; preds = %.lr.ph264.i.i
  %i.sm = icmp sgt i32 %.sroa.speculated, 7
  %i.sn = sext i32 %i.af to i64
  %wide.trip.count321.i.i = sext i32 %.sroa.speculated63 to i64
  br i1 %i.sm, label %_ZN4ncnn3MatD2Ev.exit390.us.i.preheader.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit

_ZN4ncnn3MatD2Ev.exit390.us.i.preheader.i:        ; preds = %_ZN4ncnn3MatD2Ev.exit390.us.preheader.i.i
  %i.so = sext i32 %.3359.lcssa.i.i to i64
  %i.sp = add nsw i32 %i.sj, -1
  %xtraiter515 = and i32 %i.sj, 7                 ; 3 uses
  %i.sq = icmp ult i32 %i.sp, 7
  %unroll_iter520 = and i32 %i.sj, 268435448
  %lcmp.mod517.not = icmp eq i32 %xtraiter515, 0
  %lcmp.mod519 = icmp ne i32 %xtraiter515, 0
  br label %_ZN4ncnn3MatD2Ev.exit390.us.i.i

_ZN4ncnn3MatD2Ev.exit390.us.i.i:                  ; preds = %.loopexit150.us.i.loopexit.i, %_ZN4ncnn3MatD2Ev.exit390.us.i.preheader.i
  %indvars.iv318.i.i = phi i64 [ %indvars.iv.next319.i.i, %.loopexit150.us.i.loopexit.i ], [ %i.so, %_ZN4ncnn3MatD2Ev.exit390.us.i.preheader.i ] ; 2 uses
  %.24263.us.i.i = phi ptr [ %.lcssa467, %.loopexit150.us.i.loopexit.i ], [ %.18.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit390.us.i.preheader.i ] ; 2 uses
  %i.sr = add nsw i64 %indvars.iv318.i.i, %i.sn
  %i.ss = load ptr, ptr %9, align 8, !tbaa !18, !noalias !2321
  %i.st = load i64, ptr %i.x, align 8, !tbaa !20, !noalias !2321
  %i.su = mul i64 %i.st, %i.si
  %i.sv = load i64, ptr %i.aa, align 8, !tbaa !65, !noalias !2321
  %i.sw = mul i64 %i.su, %i.sv
  %i.sx = getelementptr inbounds nuw i8, ptr %i.ss, i64 %i.sw
  %i.sy = shl nsw i64 %i.sr, 3
  %i.sz = getelementptr inbounds i8, ptr %i.sx, i64 %i.sy ; 2 uses
  br i1 %i.sq, label %.lr.ph255.us.i.i.epil.preheader, label %.lr.ph255.us.i.i

.lr.ph255.us.i.i:                                 ; preds = %_ZN4ncnn3MatD2Ev.exit390.us.i.i, %.lr.ph255.us.i.i
  %.0350253.us.i.i = phi ptr [ %i.tx, %.lr.ph255.us.i.i ], [ %i.sz, %_ZN4ncnn3MatD2Ev.exit390.us.i.i ] ; 2 uses
  %.25252.us.i.i = phi ptr [ %i.tw, %.lr.ph255.us.i.i ], [ %.24263.us.i.i, %_ZN4ncnn3MatD2Ev.exit390.us.i.i ] ; 9 uses
  %niter521 = phi i32 [ %niter521.next.7, %.lr.ph255.us.i.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit390.us.i.i ]
  %i.ta = load i64, ptr %.0350253.us.i.i, align 1, !tbaa !100
  store i64 %i.ta, ptr %.25252.us.i.i, align 1, !tbaa !100
  %i.tb = getelementptr inbounds nuw i8, ptr %.25252.us.i.i, i64 8
  %i.tc = getelementptr inbounds nuw i8, ptr %.0350253.us.i.i, i64 %i.sk ; 2 uses
  %i.td = load i64, ptr %i.tc, align 1, !tbaa !100
  store i64 %i.td, ptr %i.tb, align 1, !tbaa !100
  %i.te = getelementptr inbounds nuw i8, ptr %.25252.us.i.i, i64 16
  %i.tf = getelementptr inbounds nuw i8, ptr %i.tc, i64 %i.sk ; 2 uses
  %i.tg = load i64, ptr %i.tf, align 1, !tbaa !100
  store i64 %i.tg, ptr %i.te, align 1, !tbaa !100
  %i.th = getelementptr inbounds nuw i8, ptr %.25252.us.i.i, i64 24
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tf, i64 %i.sk ; 2 uses
  %i.tj = load i64, ptr %i.ti, align 1, !tbaa !100
  store i64 %i.tj, ptr %i.th, align 1, !tbaa !100
  %i.tk = getelementptr inbounds nuw i8, ptr %.25252.us.i.i, i64 32
  %i.tl = getelementptr inbounds nuw i8, ptr %i.ti, i64 %i.sk ; 2 uses
  %i.tm = load i64, ptr %i.tl, align 1, !tbaa !100
  store i64 %i.tm, ptr %i.tk, align 1, !tbaa !100
  %i.tn = getelementptr inbounds nuw i8, ptr %.25252.us.i.i, i64 40
  %i.to = getelementptr inbounds nuw i8, ptr %i.tl, i64 %i.sk ; 2 uses
  %i.tp = load i64, ptr %i.to, align 1, !tbaa !100
  store i64 %i.tp, ptr %i.tn, align 1, !tbaa !100
  %i.tq = getelementptr inbounds nuw i8, ptr %.25252.us.i.i, i64 48
  %i.tr = getelementptr inbounds nuw i8, ptr %i.to, i64 %i.sk ; 2 uses
  %i.ts = load i64, ptr %i.tr, align 1, !tbaa !100
  store i64 %i.ts, ptr %i.tq, align 1, !tbaa !100
  %i.tt = getelementptr inbounds nuw i8, ptr %.25252.us.i.i, i64 56
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tr, i64 %i.sk ; 2 uses
  %i.tv = load i64, ptr %i.tu, align 1, !tbaa !100
  store i64 %i.tv, ptr %i.tt, align 1, !tbaa !100
  %i.tw = getelementptr inbounds nuw i8, ptr %.25252.us.i.i, i64 64 ; 3 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tu, i64 %i.sk ; 2 uses
  %niter521.next.7 = add i32 %niter521, 8         ; 2 uses
  %niter521.ncmp.7 = icmp eq i32 %niter521.next.7, %unroll_iter520
  br i1 %niter521.ncmp.7, label %.loopexit150.us.i.loopexit.i.unr-lcssa, label %.lr.ph255.us.i.i, !llvm.loop !2324

.loopexit150.us.i.loopexit.i.unr-lcssa:           ; preds = %.lr.ph255.us.i.i
  br i1 %lcmp.mod517.not, label %.loopexit150.us.i.loopexit.i, label %.lr.ph255.us.i.i.epil.preheader

.lr.ph255.us.i.i.epil.preheader:                  ; preds = %.loopexit150.us.i.loopexit.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit390.us.i.i
  %.0350253.us.i.i.epil.init = phi ptr [ %i.sz, %_ZN4ncnn3MatD2Ev.exit390.us.i.i ], [ %i.tx, %.loopexit150.us.i.loopexit.i.unr-lcssa ]
  %.25252.us.i.i.epil.init = phi ptr [ %.24263.us.i.i, %_ZN4ncnn3MatD2Ev.exit390.us.i.i ], [ %i.tw, %.loopexit150.us.i.loopexit.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod519)
  br label %.lr.ph255.us.i.i.epil

.lr.ph255.us.i.i.epil:                            ; preds = %.lr.ph255.us.i.i.epil, %.lr.ph255.us.i.i.epil.preheader
  %.0350253.us.i.i.epil = phi ptr [ %i.ua, %.lr.ph255.us.i.i.epil ], [ %.0350253.us.i.i.epil.init, %.lr.ph255.us.i.i.epil.preheader ] ; 2 uses
  %.25252.us.i.i.epil = phi ptr [ %i.tz, %.lr.ph255.us.i.i.epil ], [ %.25252.us.i.i.epil.init, %.lr.ph255.us.i.i.epil.preheader ] ; 2 uses
  %epil.iter516 = phi i32 [ %epil.iter516.next, %.lr.ph255.us.i.i.epil ], [ 0, %.lr.ph255.us.i.i.epil.preheader ]
  %i.ty = load i64, ptr %.0350253.us.i.i.epil, align 1, !tbaa !100
  store i64 %i.ty, ptr %.25252.us.i.i.epil, align 1, !tbaa !100
  %i.tz = getelementptr inbounds nuw i8, ptr %.25252.us.i.i.epil, i64 8 ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %.0350253.us.i.i.epil, i64 %i.sk
  %epil.iter516.next = add i32 %epil.iter516, 1   ; 2 uses
  %epil.iter516.cmp.not = icmp eq i32 %epil.iter516.next, %xtraiter515
  br i1 %epil.iter516.cmp.not, label %.loopexit150.us.i.loopexit.i, label %.lr.ph255.us.i.i.epil, !llvm.loop !2325

.loopexit150.us.i.loopexit.i:                     ; preds = %.lr.ph255.us.i.i.epil, %.loopexit150.us.i.loopexit.i.unr-lcssa
  %.lcssa467 = phi ptr [ %i.tw, %.loopexit150.us.i.loopexit.i.unr-lcssa ], [ %i.tz, %.lr.ph255.us.i.i.epil ]
  %indvars.iv.next319.i.i = add nsw i64 %indvars.iv318.i.i, 1 ; 2 uses
  %exitcond322.not.i.i = icmp eq i64 %indvars.iv.next319.i.i, %wide.trip.count321.i.i
  br i1 %exitcond322.not.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit, label %_ZN4ncnn3MatD2Ev.exit390.us.i.i, !llvm.loop !2326

.lr.ph264.split.i.i:                              ; preds = %.lr.ph264.i.i
  %i.ub = icmp slt i32 %.sroa.speculated, 1
  %i.uc = icmp ne i32 %i.bt, 1
  %brmerge.i.i = or i1 %i.ub, %i.uc
  br i1 %brmerge.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit, label %_ZN4ncnn3MatD2Ev.exit.preheader.i.i

_ZN4ncnn3MatD2Ev.exit.preheader.i.i:              ; preds = %.lr.ph264.split.i.i
  %i.ud = sext i32 %.3359.lcssa.i.i to i64
  %i.ue = sext i32 %i.af to i64
  %wide.trip.count.i.i = sext i32 %.sroa.speculated63 to i64
  %i.uf = add nsw i32 %.sroa.speculated, -1
  %xtraiter508 = and i32 %.sroa.speculated, 7     ; 3 uses
  %i.ug = icmp ult i32 %i.uf, 7
  %unroll_iter513 = and i32 %.sroa.speculated, 2147483640
  %lcmp.mod510.not = icmp eq i32 %xtraiter508, 0
  %lcmp.mod512 = icmp ne i32 %xtraiter508, 0
  br label %_ZN4ncnn3MatD2Ev.exit.i.i

bb.l:                                             ; preds = %.loopexit152.i.i, %.lr.ph249.i.i
  %indvars.iv308.i.i = phi i64 [ %i.nq, %.lr.ph249.i.i ], [ %indvars.iv.next309.i.i, %.loopexit152.i.i ] ; 3 uses
  %.18248.i.i = phi ptr [ %.12.lcssa.i.i, %.lr.ph249.i.i ], [ %.23.i.i, %.loopexit152.i.i ] ; 7 uses
  switch i32 %i.bt, label %.loopexit152.i.i [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit392.i.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit391.i.i
  ]

_ZN4ncnn3MatD2Ev.exit392.i.i:                     ; preds = %bb.l
  br i1 %i.nk, label %.lr.ph233.preheader.i.i, label %.loopexit152.i.i

.lr.ph233.preheader.i.i:                          ; preds = %_ZN4ncnn3MatD2Ev.exit392.i.i
  %i.uh = load ptr, ptr %9, align 8, !tbaa !18, !noalias !2327
  %i.ui = load i64, ptr %i.x, align 8, !tbaa !20, !noalias !2327
  %i.uj = mul i64 %i.ui, %i.ni
  %i.uk = load i64, ptr %i.aa, align 8, !tbaa !65, !noalias !2327
  %i.ul = mul i64 %i.uj, %i.uk
  %i.um = getelementptr inbounds nuw i8, ptr %i.uh, i64 %i.ul
  %i.un = add nsw i64 %indvars.iv308.i.i, %i.ns
  %i.uo = shl nsw i64 %i.un, 3
  %i.up = getelementptr inbounds i8, ptr %i.um, i64 %i.uo ; 2 uses
  br i1 %i.nz, label %.lr.ph233.i.i.epil.preheader, label %.lr.ph233.i.i

.lr.ph233.i.i:                                    ; preds = %.lr.ph233.preheader.i.i, %.lr.ph233.i.i
  %.19232.i.i = phi ptr [ %i.wc, %.lr.ph233.i.i ], [ %.18248.i.i, %.lr.ph233.preheader.i.i ] ; 5 uses
  %.0362230.i.i = phi ptr [ %i.wd, %.lr.ph233.i.i ], [ %i.up, %.lr.ph233.preheader.i.i ] ; 3 uses
  %niter507 = phi i32 [ %niter507.next.3, %.lr.ph233.i.i ], [ 0, %.lr.ph233.preheader.i.i ]
  %i.uq = load i64, ptr %.0362230.i.i, align 1, !tbaa !100
  %i.ur = insertelement <2 x i64> poison, i64 %i.uq, i64 0
  %i.us = getelementptr inbounds nuw i8, ptr %.0362230.i.i, i64 8
  %i.ut = load i64, ptr %i.us, align 1, !tbaa !100
  %i.uu = insertelement <2 x i64> poison, i64 %i.ut, i64 0
  %i.uv = bitcast <2 x i64> %i.ur to <8 x i16>
  %i.uw = bitcast <2 x i64> %i.uu to <8 x i16>
  %i.ux = shufflevector <8 x i16> %i.uv, <8 x i16> %i.uw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.ux, ptr %.19232.i.i, align 1, !tbaa !100
  %i.uy = getelementptr inbounds nuw i8, ptr %.19232.i.i, i64 16
  %i.uz = getelementptr inbounds nuw i8, ptr %.0362230.i.i, i64 %i.nl ; 3 uses
  %i.va = load i64, ptr %i.uz, align 1, !tbaa !100
  %i.vb = insertelement <2 x i64> poison, i64 %i.va, i64 0
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uz, i64 8
  %i.vd = load i64, ptr %i.vc, align 1, !tbaa !100
  %i.ve = insertelement <2 x i64> poison, i64 %i.vd, i64 0
  %i.vf = bitcast <2 x i64> %i.vb to <8 x i16>
  %i.vg = bitcast <2 x i64> %i.ve to <8 x i16>
  %i.vh = shufflevector <8 x i16> %i.vf, <8 x i16> %i.vg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.vh, ptr %i.uy, align 1, !tbaa !100
  %i.vi = getelementptr inbounds nuw i8, ptr %.19232.i.i, i64 32
  %i.vj = getelementptr inbounds nuw i8, ptr %i.uz, i64 %i.nl ; 3 uses
  %i.vk = load i64, ptr %i.vj, align 1, !tbaa !100
  %i.vl = insertelement <2 x i64> poison, i64 %i.vk, i64 0
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vj, i64 8
  %i.vn = load i64, ptr %i.vm, align 1, !tbaa !100
  %i.vo = insertelement <2 x i64> poison, i64 %i.vn, i64 0
  %i.vp = bitcast <2 x i64> %i.vl to <8 x i16>
  %i.vq = bitcast <2 x i64> %i.vo to <8 x i16>
  %i.vr = shufflevector <8 x i16> %i.vp, <8 x i16> %i.vq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.vr, ptr %i.vi, align 1, !tbaa !100
  %i.vs = getelementptr inbounds nuw i8, ptr %.19232.i.i, i64 48
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vj, i64 %i.nl ; 3 uses
  %i.vu = load i64, ptr %i.vt, align 1, !tbaa !100
  %i.vv = insertelement <2 x i64> poison, i64 %i.vu, i64 0
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vt, i64 8
  %i.vx = load i64, ptr %i.vw, align 1, !tbaa !100
  %i.vy = insertelement <2 x i64> poison, i64 %i.vx, i64 0
  %i.vz = bitcast <2 x i64> %i.vv to <8 x i16>
  %i.wa = bitcast <2 x i64> %i.vy to <8 x i16>
  %i.wb = shufflevector <8 x i16> %i.vz, <8 x i16> %i.wa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.wb, ptr %i.vs, align 1, !tbaa !100
  %i.wc = getelementptr inbounds nuw i8, ptr %.19232.i.i, i64 64 ; 3 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vt, i64 %i.nl ; 2 uses
  %niter507.next.3 = add i32 %niter507, 4         ; 2 uses
  %niter507.ncmp.3 = icmp eq i32 %niter507.next.3, %unroll_iter506
  br i1 %niter507.ncmp.3, label %.loopexit152.i.i.loopexit.unr-lcssa, label %.lr.ph233.i.i, !llvm.loop !2330

_ZN4ncnn3MatD2Ev.exit391.i.i:                     ; preds = %bb.l
  %i.we = load ptr, ptr %9, align 8, !tbaa !18, !noalias !2331
  %i.wf = load i64, ptr %i.x, align 8, !tbaa !20, !noalias !2331
  %i.wg = mul i64 %i.wf, %i.nm
  %i.wh = load i64, ptr %i.aa, align 8, !tbaa !65, !noalias !2331
  %i.wi = mul i64 %i.wg, %i.wh
  %i.wj = getelementptr inbounds nuw i8, ptr %i.we, i64 %i.wi
  %i.wk = getelementptr i8, ptr %i.wj, i64 %indvars.iv308.i.i
  %i.wl = getelementptr i8, ptr %i.wk, i64 %i.ns  ; 3 uses
  br i1 %i.nn, label %.lr.ph238.i.i.preheader, label %.preheader151.i.i

.lr.ph238.i.i.preheader:                          ; preds = %_ZN4ncnn3MatD2Ev.exit391.i.i
  br i1 %i.nx, label %.lr.ph238.i.i.epil.preheader, label %.lr.ph238.i.i

.preheader151.i.i.loopexit.unr-lcssa:             ; preds = %.lr.ph238.i.i
  br i1 %lcmp.mod493.not.not, label %.lr.ph238.i.i.epil.preheader, label %.preheader151.i.i

.lr.ph238.i.i.epil.preheader:                     ; preds = %.preheader151.i.i.loopexit.unr-lcssa, %.lr.ph238.i.i.preheader
  %.0352236.i.i.epil.init = phi ptr [ %i.wl, %.lr.ph238.i.i.preheader ], [ %i.yg, %.preheader151.i.i.loopexit.unr-lcssa ] ; 4 uses
  %.21235.i.i.epil.init = phi ptr [ %.18248.i.i, %.lr.ph238.i.i.preheader ], [ %i.yf, %.preheader151.i.i.loopexit.unr-lcssa ] ; 5 uses
  call void @llvm.assume(i1 %lcmp.mod496)
  %i.wm = load i8, ptr %.0352236.i.i.epil.init, align 1, !tbaa !100
  store i8 %i.wm, ptr %.21235.i.i.epil.init, align 1, !tbaa !100
  %i.wn = getelementptr inbounds nuw i8, ptr %.0352236.i.i.epil.init, i64 %i.bs ; 2 uses
  %i.wo = load i8, ptr %i.wn, align 1, !tbaa !100
  %i.wp = getelementptr inbounds nuw i8, ptr %.21235.i.i.epil.init, i64 1
  store i8 %i.wo, ptr %i.wp, align 1, !tbaa !100
  %i.wq = getelementptr inbounds nuw i8, ptr %.0352236.i.i.epil.init, i64 1
  %i.wr = load i8, ptr %i.wq, align 1, !tbaa !100
  %i.ws = getelementptr inbounds nuw i8, ptr %.21235.i.i.epil.init, i64 2
  store i8 %i.wr, ptr %i.ws, align 1, !tbaa !100
  %i.wt = getelementptr i8, ptr %i.wn, i64 1
  %i.wu = load i8, ptr %i.wt, align 1, !tbaa !100
  %i.wv = getelementptr inbounds nuw i8, ptr %.21235.i.i.epil.init, i64 3
  store i8 %i.wu, ptr %i.wv, align 1, !tbaa !100
  %i.ww = getelementptr inbounds nuw i8, ptr %.21235.i.i.epil.init, i64 4
  %i.wx = getelementptr inbounds nuw i8, ptr %.0352236.i.i.epil.init, i64 %i.no
  br label %.preheader151.i.i

.preheader151.i.i:                                ; preds = %.lr.ph238.i.i.epil.preheader, %.preheader151.i.i.loopexit.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit391.i.i
  %.21.lcssa.i.i = phi ptr [ %.18248.i.i, %_ZN4ncnn3MatD2Ev.exit391.i.i ], [ %i.yf, %.preheader151.i.i.loopexit.unr-lcssa ], [ %i.ww, %.lr.ph238.i.i.epil.preheader ] ; 3 uses
  %.0352.lcssa.i.i = phi ptr [ %i.wl, %_ZN4ncnn3MatD2Ev.exit391.i.i ], [ %i.yg, %.preheader151.i.i.loopexit.unr-lcssa ], [ %i.wx, %.lr.ph238.i.i.epil.preheader ] ; 2 uses
  %.0351.lcssa.i.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit391.i.i ], [ %i.np, %.preheader151.i.i.loopexit.unr-lcssa ], [ %i.np, %.lr.ph238.i.i.epil.preheader ] ; 5 uses
  %i.wy = icmp slt i32 %.0351.lcssa.i.i, %.sroa.speculated
  br i1 %i.wy, label %.lr.ph245.i.i.preheader, label %.loopexit152.i.i

.lr.ph245.i.i.preheader:                          ; preds = %.preheader151.i.i
  %i.wz = sub i32 %.sroa.speculated, %.0351.lcssa.i.i
  %xtraiter499 = and i32 %i.wz, 3                 ; 2 uses
  %lcmp.mod500.not = icmp eq i32 %xtraiter499, 0
  br i1 %lcmp.mod500.not, label %.lr.ph245.i.i.prol.loopexit, label %.lr.ph245.i.i.prol

.lr.ph245.i.i.prol:                               ; preds = %.lr.ph245.i.i.preheader, %.lr.ph245.i.i.prol
  %.1244.i.i.prol = phi i32 [ %i.xg, %.lr.ph245.i.i.prol ], [ %.0351.lcssa.i.i, %.lr.ph245.i.i.preheader ]
  %.1353243.i.i.prol = phi ptr [ %i.xf, %.lr.ph245.i.i.prol ], [ %.0352.lcssa.i.i, %.lr.ph245.i.i.preheader ] ; 3 uses
  %.22242.i.i.prol = phi ptr [ %i.xe, %.lr.ph245.i.i.prol ], [ %.21.lcssa.i.i, %.lr.ph245.i.i.preheader ] ; 3 uses
  %prol.iter501 = phi i32 [ %prol.iter501.next, %.lr.ph245.i.i.prol ], [ 0, %.lr.ph245.i.i.preheader ]
  %i.xa = load i8, ptr %.1353243.i.i.prol, align 1, !tbaa !100
  store i8 %i.xa, ptr %.22242.i.i.prol, align 1, !tbaa !100
  %i.xb = getelementptr inbounds nuw i8, ptr %.1353243.i.i.prol, i64 1
  %i.xc = load i8, ptr %i.xb, align 1, !tbaa !100
  %i.xd = getelementptr inbounds nuw i8, ptr %.22242.i.i.prol, i64 1
  store i8 %i.xc, ptr %i.xd, align 1, !tbaa !100
  %i.xe = getelementptr inbounds nuw i8, ptr %.22242.i.i.prol, i64 2 ; 3 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %.1353243.i.i.prol, i64 %i.bs ; 2 uses
  %i.xg = add nuw nsw i32 %.1244.i.i.prol, 1      ; 2 uses
  %prol.iter501.next = add i32 %prol.iter501, 1   ; 2 uses
  %prol.iter501.cmp.not = icmp eq i32 %prol.iter501.next, %xtraiter499
  br i1 %prol.iter501.cmp.not, label %.lr.ph245.i.i.prol.loopexit, label %.lr.ph245.i.i.prol, !llvm.loop !2334

.lr.ph245.i.i.prol.loopexit:                      ; preds = %.lr.ph245.i.i.prol, %.lr.ph245.i.i.preheader
  %.lcssa464.unr = phi ptr [ poison, %.lr.ph245.i.i.preheader ], [ %i.xe, %.lr.ph245.i.i.prol ]
  %.1244.i.i.unr = phi i32 [ %.0351.lcssa.i.i, %.lr.ph245.i.i.preheader ], [ %i.xg, %.lr.ph245.i.i.prol ]
  %.1353243.i.i.unr = phi ptr [ %.0352.lcssa.i.i, %.lr.ph245.i.i.preheader ], [ %i.xf, %.lr.ph245.i.i.prol ]
  %.22242.i.i.unr = phi ptr [ %.21.lcssa.i.i, %.lr.ph245.i.i.preheader ], [ %i.xe, %.lr.ph245.i.i.prol ]
  %i.xh = sub i32 %.0351.lcssa.i.i, %.sroa.speculated
  %i.xi = icmp ugt i32 %i.xh, -4
  br i1 %i.xi, label %.loopexit152.i.i, label %.lr.ph245.i.i

.lr.ph238.i.i:                                    ; preds = %.lr.ph238.i.i.preheader, %.lr.ph238.i.i
  %.0352236.i.i = phi ptr [ %i.yg, %.lr.ph238.i.i ], [ %i.wl, %.lr.ph238.i.i.preheader ] ; 4 uses
  %.21235.i.i = phi ptr [ %i.yf, %.lr.ph238.i.i ], [ %.18248.i.i, %.lr.ph238.i.i.preheader ] ; 9 uses
  %niter498 = phi i32 [ %niter498.next.1, %.lr.ph238.i.i ], [ 0, %.lr.ph238.i.i.preheader ]
  %i.xj = load i8, ptr %.0352236.i.i, align 1, !tbaa !100
  store i8 %i.xj, ptr %.21235.i.i, align 1, !tbaa !100
  %i.xk = getelementptr inbounds nuw i8, ptr %.0352236.i.i, i64 %i.bs ; 2 uses
  %i.xl = load i8, ptr %i.xk, align 1, !tbaa !100
  %i.xm = getelementptr inbounds nuw i8, ptr %.21235.i.i, i64 1
  store i8 %i.xl, ptr %i.xm, align 1, !tbaa !100
  %i.xn = getelementptr inbounds nuw i8, ptr %.0352236.i.i, i64 1
  %i.xo = load i8, ptr %i.xn, align 1, !tbaa !100
  %i.xp = getelementptr inbounds nuw i8, ptr %.21235.i.i, i64 2
  store i8 %i.xo, ptr %i.xp, align 1, !tbaa !100
  %i.xq = getelementptr i8, ptr %i.xk, i64 1
  %i.xr = load i8, ptr %i.xq, align 1, !tbaa !100
  %i.xs = getelementptr inbounds nuw i8, ptr %.21235.i.i, i64 3
  store i8 %i.xr, ptr %i.xs, align 1, !tbaa !100
  %i.xt = getelementptr inbounds nuw i8, ptr %.21235.i.i, i64 4
  %i.xu = getelementptr inbounds nuw i8, ptr %.0352236.i.i, i64 %i.no ; 4 uses
  %i.xv = load i8, ptr %i.xu, align 1, !tbaa !100
  store i8 %i.xv, ptr %i.xt, align 1, !tbaa !100
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xu, i64 %i.bs ; 2 uses
  %i.xx = load i8, ptr %i.xw, align 1, !tbaa !100
  %i.xy = getelementptr inbounds nuw i8, ptr %.21235.i.i, i64 5
  store i8 %i.xx, ptr %i.xy, align 1, !tbaa !100
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xu, i64 1
  %i.ya = load i8, ptr %i.xz, align 1, !tbaa !100
  %i.yb = getelementptr inbounds nuw i8, ptr %.21235.i.i, i64 6
  store i8 %i.ya, ptr %i.yb, align 1, !tbaa !100
  %i.yc = getelementptr i8, ptr %i.xw, i64 1
  %i.yd = load i8, ptr %i.yc, align 1, !tbaa !100
  %i.ye = getelementptr inbounds nuw i8, ptr %.21235.i.i, i64 7
  store i8 %i.yd, ptr %i.ye, align 1, !tbaa !100
  %i.yf = getelementptr inbounds nuw i8, ptr %.21235.i.i, i64 8 ; 3 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xu, i64 %i.no ; 3 uses
  %niter498.next.1 = add nuw nsw i32 %niter498, 2 ; 2 uses
  %niter498.ncmp.1.not = icmp eq i32 %niter498.next.1, %unroll_iter497
  br i1 %niter498.ncmp.1.not, label %.preheader151.i.i.loopexit.unr-lcssa, label %.lr.ph238.i.i, !llvm.loop !2335

.lr.ph245.i.i:                                    ; preds = %.lr.ph245.i.i.prol.loopexit, %.lr.ph245.i.i
  %.1244.i.i = phi i32 [ %i.zf, %.lr.ph245.i.i ], [ %.1244.i.i.unr, %.lr.ph245.i.i.prol.loopexit ]
  %.1353243.i.i = phi ptr [ %i.ze, %.lr.ph245.i.i ], [ %.1353243.i.i.unr, %.lr.ph245.i.i.prol.loopexit ] ; 3 uses
  %.22242.i.i = phi ptr [ %i.zd, %.lr.ph245.i.i ], [ %.22242.i.i.unr, %.lr.ph245.i.i.prol.loopexit ] ; 9 uses
  %i.yh = load i8, ptr %.1353243.i.i, align 1, !tbaa !100
  store i8 %i.yh, ptr %.22242.i.i, align 1, !tbaa !100
  %i.yi = getelementptr inbounds nuw i8, ptr %.1353243.i.i, i64 1
  %i.yj = load i8, ptr %i.yi, align 1, !tbaa !100
  %i.yk = getelementptr inbounds nuw i8, ptr %.22242.i.i, i64 1
  store i8 %i.yj, ptr %i.yk, align 1, !tbaa !100
  %i.yl = getelementptr inbounds nuw i8, ptr %.22242.i.i, i64 2
  %i.ym = getelementptr inbounds nuw i8, ptr %.1353243.i.i, i64 %i.bs ; 3 uses
  %i.yn = load i8, ptr %i.ym, align 1, !tbaa !100
  store i8 %i.yn, ptr %i.yl, align 1, !tbaa !100
  %i.yo = getelementptr inbounds nuw i8, ptr %i.ym, i64 1
  %i.yp = load i8, ptr %i.yo, align 1, !tbaa !100
  %i.yq = getelementptr inbounds nuw i8, ptr %.22242.i.i, i64 3
  store i8 %i.yp, ptr %i.yq, align 1, !tbaa !100
  %i.yr = getelementptr inbounds nuw i8, ptr %.22242.i.i, i64 4
  %i.ys = getelementptr inbounds nuw i8, ptr %i.ym, i64 %i.bs ; 3 uses
  %i.yt = load i8, ptr %i.ys, align 1, !tbaa !100
  store i8 %i.yt, ptr %i.yr, align 1, !tbaa !100
  %i.yu = getelementptr inbounds nuw i8, ptr %i.ys, i64 1
  %i.yv = load i8, ptr %i.yu, align 1, !tbaa !100
  %i.yw = getelementptr inbounds nuw i8, ptr %.22242.i.i, i64 5
  store i8 %i.yv, ptr %i.yw, align 1, !tbaa !100
  %i.yx = getelementptr inbounds nuw i8, ptr %.22242.i.i, i64 6
  %i.yy = getelementptr inbounds nuw i8, ptr %i.ys, i64 %i.bs ; 3 uses
  %i.yz = load i8, ptr %i.yy, align 1, !tbaa !100
  store i8 %i.yz, ptr %i.yx, align 1, !tbaa !100
  %i.za = getelementptr inbounds nuw i8, ptr %i.yy, i64 1
  %i.zb = load i8, ptr %i.za, align 1, !tbaa !100
  %i.zc = getelementptr inbounds nuw i8, ptr %.22242.i.i, i64 7
  store i8 %i.zb, ptr %i.zc, align 1, !tbaa !100
  %i.zd = getelementptr inbounds nuw i8, ptr %.22242.i.i, i64 8 ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yy, i64 %i.bs
  %i.zf = add nuw nsw i32 %.1244.i.i, 4           ; 2 uses
  %exitcond307.not.i.i.3 = icmp eq i32 %i.zf, %.sroa.speculated
  br i1 %exitcond307.not.i.i.3, label %.loopexit152.i.i, label %.lr.ph245.i.i, !llvm.loop !2336

.loopexit152.i.i.loopexit.unr-lcssa:              ; preds = %.lr.ph233.i.i
  br i1 %lcmp.mod503.not, label %.loopexit152.i.i, label %.lr.ph233.i.i.epil.preheader

.lr.ph233.i.i.epil.preheader:                     ; preds = %.loopexit152.i.i.loopexit.unr-lcssa, %.lr.ph233.preheader.i.i
  %.19232.i.i.epil.init = phi ptr [ %.18248.i.i, %.lr.ph233.preheader.i.i ], [ %i.wc, %.loopexit152.i.i.loopexit.unr-lcssa ]
  %.0362230.i.i.epil.init = phi ptr [ %i.up, %.lr.ph233.preheader.i.i ], [ %i.wd, %.loopexit152.i.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod505)
  br label %.lr.ph233.i.i.epil

.lr.ph233.i.i.epil:                               ; preds = %.lr.ph233.i.i.epil, %.lr.ph233.i.i.epil.preheader
  %.19232.i.i.epil = phi ptr [ %i.zo, %.lr.ph233.i.i.epil ], [ %.19232.i.i.epil.init, %.lr.ph233.i.i.epil.preheader ] ; 2 uses
  %.0362230.i.i.epil = phi ptr [ %i.zp, %.lr.ph233.i.i.epil ], [ %.0362230.i.i.epil.init, %.lr.ph233.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph233.i.i.epil ], [ 0, %.lr.ph233.i.i.epil.preheader ]
  %i.zg = load i64, ptr %.0362230.i.i.epil, align 1, !tbaa !100
  %i.zh = insertelement <2 x i64> poison, i64 %i.zg, i64 0
  %i.zi = getelementptr inbounds nuw i8, ptr %.0362230.i.i.epil, i64 8
  %i.zj = load i64, ptr %i.zi, align 1, !tbaa !100
  %i.zk = insertelement <2 x i64> poison, i64 %i.zj, i64 0
  %i.zl = bitcast <2 x i64> %i.zh to <8 x i16>
  %i.zm = bitcast <2 x i64> %i.zk to <8 x i16>
  %i.zn = shufflevector <8 x i16> %i.zl, <8 x i16> %i.zm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.zn, ptr %.19232.i.i.epil, align 1, !tbaa !100
  %i.zo = getelementptr inbounds nuw i8, ptr %.19232.i.i.epil, i64 16 ; 2 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %.0362230.i.i.epil, i64 %i.nl
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter502
  br i1 %epil.iter.cmp.not, label %.loopexit152.i.i, label %.lr.ph233.i.i.epil, !llvm.loop !2337

.loopexit152.i.i:                                 ; preds = %.lr.ph245.i.i.prol.loopexit, %.lr.ph245.i.i, %.loopexit152.i.i.loopexit.unr-lcssa, %.lr.ph233.i.i.epil, %.preheader151.i.i, %_ZN4ncnn3MatD2Ev.exit392.i.i, %bb.l
  %.23.i.i = phi ptr [ %.18248.i.i, %bb.l ], [ %.21.lcssa.i.i, %.preheader151.i.i ], [ %i.zo, %.lr.ph233.i.i.epil ], [ %.18248.i.i, %_ZN4ncnn3MatD2Ev.exit392.i.i ], [ %i.wc, %.loopexit152.i.i.loopexit.unr-lcssa ], [ %.lcssa464.unr, %.lr.ph245.i.i.prol.loopexit ], [ %i.zd, %.lr.ph245.i.i ] ; 2 uses
  %indvars.iv.next309.i.i = add nuw nsw i64 %indvars.iv308.i.i, 2 ; 3 uses
  %i.zq = icmp slt i64 %indvars.iv.next309.i.i, %invariant.op359.i.i
  br i1 %i.zq, label %bb.l, label %.preheader.loopexit.i.i, !llvm.loop !2338

_ZN4ncnn3MatD2Ev.exit.i.i:                        ; preds = %..loopexit_crit_edge.i.i, %_ZN4ncnn3MatD2Ev.exit.preheader.i.i
  %indvars.iv312.i.i = phi i64 [ %i.ud, %_ZN4ncnn3MatD2Ev.exit.preheader.i.i ], [ %indvars.iv.next313.i.i, %..loopexit_crit_edge.i.i ] ; 2 uses
  %.24263.i.i = phi ptr [ %.18.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit.preheader.i.i ], [ %.lcssa466, %..loopexit_crit_edge.i.i ] ; 2 uses
  %i.zr = load ptr, ptr %9, align 8, !tbaa !18, !noalias !2339
  %i.zs = load i64, ptr %i.x, align 8, !tbaa !20, !noalias !2339
  %i.zt = mul i64 %i.zs, %i.sl
  %i.zu = load i64, ptr %i.aa, align 8, !tbaa !65, !noalias !2339
  %i.zv = mul i64 %i.zt, %i.zu
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zr, i64 %i.zv
  %i.zx = getelementptr i8, ptr %i.zw, i64 %indvars.iv312.i.i
  %i.zy = getelementptr i8, ptr %i.zx, i64 %i.ue  ; 2 uses
  br i1 %i.ug, label %.epil.preheader, label %_ZN4ncnn3MatD2Ev.exit.i.i.new

_ZN4ncnn3MatD2Ev.exit.i.i.new:                    ; preds = %_ZN4ncnn3MatD2Ev.exit.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i.new
  %.0348258.i.i = phi ptr [ %i.aaw, %_ZN4ncnn3MatD2Ev.exit.i.i.new ], [ %i.zy, %_ZN4ncnn3MatD2Ev.exit.i.i ] ; 2 uses
  %.27257.i.i = phi ptr [ %i.aav, %_ZN4ncnn3MatD2Ev.exit.i.i.new ], [ %.24263.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i ] ; 9 uses
  %niter514 = phi i32 [ %niter514.next.7, %_ZN4ncnn3MatD2Ev.exit.i.i.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit.i.i ]
  %i.zz = load i8, ptr %.0348258.i.i, align 1, !tbaa !100
  store i8 %i.zz, ptr %.27257.i.i, align 1, !tbaa !100
  %i.aaa = getelementptr inbounds nuw i8, ptr %.27257.i.i, i64 1
  %i.aab = getelementptr inbounds nuw i8, ptr %.0348258.i.i, i64 %i.bs ; 2 uses
  %i.aac = load i8, ptr %i.aab, align 1, !tbaa !100
  store i8 %i.aac, ptr %i.aaa, align 1, !tbaa !100
  %i.aad = getelementptr inbounds nuw i8, ptr %.27257.i.i, i64 2
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aab, i64 %i.bs ; 2 uses
  %i.aaf = load i8, ptr %i.aae, align 1, !tbaa !100
  store i8 %i.aaf, ptr %i.aad, align 1, !tbaa !100
  %i.aag = getelementptr inbounds nuw i8, ptr %.27257.i.i, i64 3
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aae, i64 %i.bs ; 2 uses
  %i.aai = load i8, ptr %i.aah, align 1, !tbaa !100
  store i8 %i.aai, ptr %i.aag, align 1, !tbaa !100
  %i.aaj = getelementptr inbounds nuw i8, ptr %.27257.i.i, i64 4
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aah, i64 %i.bs ; 2 uses
  %i.aal = load i8, ptr %i.aak, align 1, !tbaa !100
  store i8 %i.aal, ptr %i.aaj, align 1, !tbaa !100
  %i.aam = getelementptr inbounds nuw i8, ptr %.27257.i.i, i64 5
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aak, i64 %i.bs ; 2 uses
  %i.aao = load i8, ptr %i.aan, align 1, !tbaa !100
  store i8 %i.aao, ptr %i.aam, align 1, !tbaa !100
  %i.aap = getelementptr inbounds nuw i8, ptr %.27257.i.i, i64 6
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aan, i64 %i.bs ; 2 uses
  %i.aar = load i8, ptr %i.aaq, align 1, !tbaa !100
  store i8 %i.aar, ptr %i.aap, align 1, !tbaa !100
  %i.aas = getelementptr inbounds nuw i8, ptr %.27257.i.i, i64 7
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aaq, i64 %i.bs ; 2 uses
  %i.aau = load i8, ptr %i.aat, align 1, !tbaa !100
  store i8 %i.aau, ptr %i.aas, align 1, !tbaa !100
  %i.aav = getelementptr inbounds nuw i8, ptr %.27257.i.i, i64 8 ; 3 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aat, i64 %i.bs ; 2 uses
  %niter514.next.7 = add i32 %niter514, 8         ; 2 uses
  %niter514.ncmp.7 = icmp eq i32 %niter514.next.7, %unroll_iter513
  br i1 %niter514.ncmp.7, label %..loopexit_crit_edge.i.i.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit.i.i.new, !llvm.loop !2342

..loopexit_crit_edge.i.i.unr-lcssa:               ; preds = %_ZN4ncnn3MatD2Ev.exit.i.i.new
  br i1 %lcmp.mod510.not, label %..loopexit_crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit_crit_edge.i.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit.i.i
  %.0348258.i.i.epil.init = phi ptr [ %i.zy, %_ZN4ncnn3MatD2Ev.exit.i.i ], [ %i.aaw, %..loopexit_crit_edge.i.i.unr-lcssa ]
  %.27257.i.i.epil.init = phi ptr [ %.24263.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i ], [ %i.aav, %..loopexit_crit_edge.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod512)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader
  %.0348258.i.i.epil = phi ptr [ %.0348258.i.i.epil.init, %.epil.preheader ], [ %i.aaz, %bb.m ] ; 2 uses
  %.27257.i.i.epil = phi ptr [ %.27257.i.i.epil.init, %.epil.preheader ], [ %i.aay, %bb.m ] ; 2 uses
  %epil.iter509 = phi i32 [ 0, %.epil.preheader ], [ %epil.iter509.next, %bb.m ]
  %i.aax = load i8, ptr %.0348258.i.i.epil, align 1, !tbaa !100
  store i8 %i.aax, ptr %.27257.i.i.epil, align 1, !tbaa !100
  %i.aay = getelementptr inbounds nuw i8, ptr %.27257.i.i.epil, i64 1 ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %.0348258.i.i.epil, i64 %i.bs
  %epil.iter509.next = add i32 %epil.iter509, 1   ; 2 uses
  %epil.iter509.cmp.not = icmp eq i32 %epil.iter509.next, %xtraiter508
  br i1 %epil.iter509.cmp.not, label %..loopexit_crit_edge.i.i, label %bb.m, !llvm.loop !2343

..loopexit_crit_edge.i.i:                         ; preds = %bb.m, %..loopexit_crit_edge.i.i.unr-lcssa
  %.lcssa466 = phi ptr [ %i.aav, %..loopexit_crit_edge.i.i.unr-lcssa ], [ %i.aay, %bb.m ]
  %indvars.iv.next313.i.i = add nsw i64 %indvars.iv312.i.i, 1 ; 2 uses
  %exitcond315.not.i.i = icmp eq i64 %indvars.iv.next313.i.i, %wide.trip.count.i.i
  br i1 %exitcond315.not.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit, label %_ZN4ncnn3MatD2Ev.exit.i.i, !llvm.loop !2326

bb.n:                                             ; preds = %bb.h
  %i.aba = load i32, ptr %i.y, align 4, !tbaa !75 ; 11 uses
  %i.abb = load i32, ptr %i.z, align 8, !tbaa !66 ; 11 uses
  %i.abc = add nsw i32 %i.bc, -1
  %i.abd = mul nsw i32 %i.be, %i.abc
  %.neg.i.i = xor i32 %i.abd, -1
  %i.abe = add i32 %i.aba, %.neg.i.i
  %i.abf = sdiv i32 %i.abe, %i.bg                 ; 3 uses
  %i.abg = add nsw i32 %i.abf, 1                  ; 11 uses
  %i.abh = mul nsw i32 %i.bd, %i.bc               ; 72 uses
  %i.abi = icmp eq i32 %i.abf, 0
  br i1 %i.abi, label %_ZN17FastDivider_epu32C2Ej.exit1295.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.abj = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.abf, i1 true) ; 3 uses
  %i.abk = sub nuw nsw i32 32, %i.abj
  %i.abl = icmp eq i32 %i.abj, 0
  %i.abm = shl nuw i32 1, %i.abk
  %i.abn = select i1 %i.abl, i32 0, i32 %i.abm
  %i.abo = sub i32 %i.abn, %i.abg
  %i.abp = zext i32 %i.abo to i64
  %i.abq = shl nuw i64 %i.abp, 32
  %i.abr = zext i32 %i.abg to i64
  %i.abs = udiv i64 %i.abq, %i.abr
  %i.abt = trunc i64 %i.abs to i32
  %i.abu = add i32 %i.abt, 1
  %i.abv = xor i32 %i.abj, 31
  br label %_ZN17FastDivider_epu32C2Ej.exit1295.i.i

_ZN17FastDivider_epu32C2Ej.exit1295.i.i:          ; preds = %bb.o, %bb.n
  %.012.i1292.i.i = phi i32 [ %i.abv, %bb.o ], [ 0, %bb.n ]
  %.011.i1293.i.i = phi i32 [ 1, %bb.o ], [ 0, %bb.n ]
  %.0.i1294.i.i = phi i32 [ %i.abu, %bb.o ], [ 1, %bb.n ]
  %i.abw = insertelement <16 x i32> poison, i32 %.0.i1294.i.i, i64 0
  %i.abx = shufflevector <16 x i32> %i.abw, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.aby = bitcast <16 x i32> %i.abx to <8 x i64> ; 2 uses
  %i.abz = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.011.i1293.i.i, i64 0 ; 3 uses
  %i.aca = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.012.i1292.i.i, i64 0 ; 3 uses
  %i.acb = icmp sgt i32 %.sroa.speculated63, 15
  br i1 %i.acb, label %.lr.ph126.i.i, label %.preheader89.i.i

.lr.ph126.i.i:                                    ; preds = %_ZN17FastDivider_epu32C2Ej.exit1295.i.i
  %i.acc = bitcast <16 x i32> %i.abx to <8 x i64>
  %i.acd = and <8 x i64> %i.acc, splat (i64 4294967295) ; 2 uses
  %i.ace = shufflevector <4 x i32> %i.abz, <4 x i32> poison, <16 x i32> zeroinitializer
  %i.acf = insertelement <16 x i32> poison, i32 %i.abg, i64 0
  %i.acg = shufflevector <16 x i32> %i.acf, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.ach = insertelement <16 x i32> poison, i32 %i.bg, i64 0
  %i.aci = shufflevector <16 x i32> %i.ach, <16 x i32> poison, <16 x i32> zeroinitializer
  %.scalar.i.i = mul i32 %i.aba, %i.bh
  %i.acj = insertelement <16 x i32> poison, i32 %.scalar.i.i, i64 0
  %i.ack = shufflevector <16 x i32> %i.acj, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.acl = icmp eq i32 %i.abb, 1                  ; 2 uses
  %i.acm = icmp sgt i32 %.sroa.speculated, 1      ; 2 uses
  %i.acn = mul i32 %i.aba, %i.bf                  ; 8 uses
  %i.aco = trunc i64 %i.bs to i32                 ; 4 uses
  %i.acp = icmp ne i32 %i.abb, 8
  %i.acq = sdiv i32 %.sroa.speculated, 8          ; 2 uses
  %i.acr = icmp slt i32 %.sroa.speculated, 8
  %i.acs = sdiv i32 %i.ah, 8                      ; 2 uses
  %brmerge242.i.i = or i1 %i.acr, %i.acp          ; 2 uses
  br label %bb.p

.preheader89.i.i:                                 ; preds = %.loopexit91.i.i, %_ZN17FastDivider_epu32C2Ej.exit1295.i.i
  %.01253.lcssa.i.i = phi i32 [ 0, %_ZN17FastDivider_epu32C2Ej.exit1295.i.i ], [ %i.akx, %.loopexit91.i.i ] ; 3 uses
  %.0.lcssa.i.i = phi ptr [ %.val.i, %_ZN17FastDivider_epu32C2Ej.exit1295.i.i ], [ %.10.i.i, %.loopexit91.i.i ] ; 2 uses
  %i.act = or disjoint i32 %.01253.lcssa.i.i, 7
  %i.acu = icmp slt i32 %i.act, %.sroa.speculated63
  br i1 %i.acu, label %.lr.ph157.i.i, label %.preheader78.i.i

.lr.ph157.i.i:                                    ; preds = %.preheader89.i.i
  %i.acv = shufflevector <8 x i64> %i.aby, <8 x i64> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.acw = and <4 x i64> %i.acv, splat (i64 4294967295) ; 2 uses
  %i.acx = shufflevector <4 x i32> %i.abz, <4 x i32> poison, <8 x i32> zeroinitializer
  %i.acy = insertelement <8 x i32> poison, i32 %i.abg, i64 0
  %i.acz = shufflevector <8 x i32> %i.acy, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ada = insertelement <8 x i32> poison, i32 %i.bg, i64 0
  %i.adb = shufflevector <8 x i32> %i.ada, <8 x i32> poison, <8 x i32> zeroinitializer
  %.scalar324.i.i = mul i32 %i.aba, %i.bh
  %i.adc = insertelement <8 x i32> poison, i32 %.scalar324.i.i, i64 0
  %i.add = shufflevector <8 x i32> %i.adc, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ade = icmp eq i32 %i.abb, 1                  ; 2 uses
  %i.adf = icmp sgt i32 %.sroa.speculated, 1      ; 2 uses
  %i.adg = mul i32 %i.aba, %i.bf                  ; 8 uses
  %i.adh = trunc i64 %i.bs to i32                 ; 4 uses
  %i.adi = icmp ne i32 %i.abb, 8
  %i.adj = sdiv i32 %.sroa.speculated, 8          ; 2 uses
  %i.adk = icmp slt i32 %.sroa.speculated, 8
  %i.adl = sdiv i32 %i.ah, 8                      ; 2 uses
  %brmerge248.i.i = or i1 %i.adk, %i.adi          ; 2 uses
  br label %bb.v

bb.p:                                             ; preds = %.loopexit91.i.i, %.lr.ph126.i.i
  %.0125.i.i = phi ptr [ %.val.i, %.lr.ph126.i.i ], [ %.10.i.i, %.loopexit91.i.i ] ; 8 uses
  %.01253124.i.i = phi i32 [ 0, %.lr.ph126.i.i ], [ %i.akx, %.loopexit91.i.i ] ; 2 uses
  %i.adm = add nsw i32 %.01253124.i.i, %i.af
  %i.adn = insertelement <16 x i32> poison, i32 %i.adm, i64 0
  %i.ado = shufflevector <16 x i32> %i.adn, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.adp = add <16 x i32> %i.ado, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.adq = bitcast <16 x i32> %i.adp to <8 x i64>
  %i.adr = bitcast <16 x i32> %i.adp to <8 x i64>
  %i.ads = and <8 x i64> %i.adr, splat (i64 4294967295)
  %i.adt = mul nuw <8 x i64> %i.ads, %i.acd
  %i.adu = lshr <8 x i64> %i.adt, splat (i64 32)
  %i.adv = lshr <8 x i64> %i.adq, splat (i64 32)
  %i.adw = mul nuw <8 x i64> %i.adv, %i.acd
  %i.adx = bitcast <8 x i64> %i.adw to <16 x i32>
  %i.ady = bitcast <8 x i64> %i.adu to <16 x i32>
  %i.adz = shufflevector <16 x i32> %i.ady, <16 x i32> %i.adx, <16 x i32> <i32 0, i32 17, i32 2, i32 19, i32 4, i32 21, i32 6, i32 23, i32 8, i32 25, i32 10, i32 27, i32 12, i32 29, i32 14, i32 31> ; 2 uses
  %i.aea = sub <16 x i32> %i.adp, %i.adz
  %i.aeb = lshr <16 x i32> %i.aea, %i.ace
  %i.aec = add <16 x i32> %i.aeb, %i.adz
  %i.aed = call <16 x i32> @llvm.x86.avx512.psrl.d.512(<16 x i32> %i.aec, <4 x i32> %i.aca) ; 2 uses
  %i.aee = mul <16 x i32> %i.aed, %i.acg
  %i.aef = sub <16 x i32> %i.adp, %i.aee
  %i.aeg = mul <16 x i32> %i.aef, %i.aci          ; 2 uses
  %i.aeh = mul <16 x i32> %i.aed, %i.ack          ; 4 uses
  %i.aei = add <16 x i32> %i.aeg, %i.aeh          ; 4 uses
  %shift = shufflevector <16 x i32> %i.aeh, <16 x i32> poison, <16 x i32> <i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aej = icmp eq <16 x i32> %i.aeh, %shift
  %i.aek = extractelement <16 x i1> %i.aej, i64 0
  %or.cond.i.i = and i1 %i.bp, %i.aek
  br i1 %or.cond.i.i, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %foldExtExtBinop = add nsw <16 x i32> %i.aeg, %i.aeh
  %i.ael = extractelement <16 x i32> %foldExtExtBinop, i64 0 ; 3 uses
  br i1 %i.acl, label %.preheader94.i.i, label %.loopexit93.i.i

.preheader94.i.i:                                 ; preds = %bb.q
  br i1 %i.acm, label %.lr.ph113.i.i, label %.preheader92.i.i

.lr.ph113.i.i:                                    ; preds = %.preheader94.i.i
  %i.aem = sext i32 %i.ael to i64                 ; 2 uses
  br label %bb.r

.preheader92.i.i:                                 ; preds = %bb.r, %.preheader94.i.i
  %.01258.lcssa.i.i = phi i32 [ 0, %.preheader94.i.i ], [ %i.afy, %bb.r ] ; 2 uses
  %.1.lcssa.i.i = phi ptr [ %.0125.i.i, %.preheader94.i.i ], [ %i.afx, %bb.r ] ; 2 uses
  %i.aen = icmp slt i32 %.01258.lcssa.i.i, %.sroa.speculated
  br i1 %i.aen, label %.lr.ph118.i.i, label %.loopexit91.i.i

.lr.ph118.i.i:                                    ; preds = %.preheader92.i.i
  %i.aeo = sext i32 %i.ael to i64
  br label %bb.s

bb.r:                                             ; preds = %bb.r, %.lr.ph113.i.i
  %.1112.i.i = phi ptr [ %.0125.i.i, %.lr.ph113.i.i ], [ %i.afx, %bb.r ] ; 3 uses
  %.01258111.i.i = phi i32 [ 0, %.lr.ph113.i.i ], [ %i.afy, %bb.r ] ; 2 uses
  %i.aep = add nsw i32 %.01258111.i.i, %i.ah      ; 3 uses
  %i.aeq = sdiv i32 %i.aep, %i.abh
  %i.aer = add nsw i32 %i.aep, 1                  ; 2 uses
  %i.aes = sdiv i32 %i.aer, %i.abh
  %i.aet = srem i32 %i.aep, %i.abh                ; 2 uses
  %i.aeu = srem i32 %i.aer, %i.abh                ; 2 uses
  %i.aev = sdiv i32 %i.aet, %i.bc
  %i.aew = sdiv i32 %i.aeu, %i.bc
  %i.aex = srem i32 %i.aet, %i.bc
  %i.aey = srem i32 %i.aeu, %i.bc
  %i.aez = sext i32 %i.aeq to i64
  %i.afa = mul i64 %i.bs, %i.aez
  %i.afb = mul i32 %i.aev, %i.acn
  %i.afc = mul nsw i32 %i.aex, %i.be
  %i.afd = add nsw i32 %i.afc, %i.afb
  %i.afe = sext i32 %i.afd to i64
  %i.aff = sext i32 %i.aes to i64
  %i.afg = mul i64 %i.bs, %i.aff
  %i.afh = mul i32 %i.aew, %i.acn
  %i.afi = mul nsw i32 %i.aey, %i.be
  %i.afj = add nsw i32 %i.afi, %i.afh
  %i.afk = sext i32 %i.afj to i64
  %i.afl = load ptr, ptr %9, align 8, !tbaa !18   ; 2 uses
  %i.afm = getelementptr i8, ptr %i.afl, i64 %i.afa
  %i.afn = getelementptr i8, ptr %i.afm, i64 %i.aem
  %i.afo = getelementptr i8, ptr %i.afn, i64 %i.afe
  %i.afp = load <16 x i8>, ptr %i.afo, align 1, !tbaa !100 ; 2 uses
  %i.afq = getelementptr i8, ptr %i.afl, i64 %i.afg
  %i.afr = getelementptr i8, ptr %i.afq, i64 %i.aem
  %i.afs = getelementptr i8, ptr %i.afr, i64 %i.afk
  %i.aft = load <16 x i8>, ptr %i.afs, align 1, !tbaa !100 ; 2 uses
  %i.afu = shufflevector <16 x i8> %i.afp, <16 x i8> %i.aft, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.afv = shufflevector <16 x i8> %i.afp, <16 x i8> %i.aft, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.afu, ptr %.1112.i.i, align 16, !tbaa !100
  %i.afw = getelementptr inbounds nuw i8, ptr %.1112.i.i, i64 16
  store <16 x i8> %i.afv, ptr %i.afw, align 16, !tbaa !100
  %i.afx = getelementptr inbounds nuw i8, ptr %.1112.i.i, i64 32 ; 2 uses
  %i.afy = add nuw nsw i32 %.01258111.i.i, 2      ; 3 uses
  %i.afz = or disjoint i32 %i.afy, 1
  %i.aga = icmp slt i32 %i.afz, %.sroa.speculated
  br i1 %i.aga, label %bb.r, label %.preheader92.i.i, !llvm.loop !2344

bb.s:                                             ; preds = %bb.s, %.lr.ph118.i.i
  %.2117.i.i = phi ptr [ %.1.lcssa.i.i, %.lr.ph118.i.i ], [ %i.agr, %bb.s ] ; 2 uses
  %.11259116.i.i = phi i32 [ %.01258.lcssa.i.i, %.lr.ph118.i.i ], [ %i.ags, %bb.s ] ; 2 uses
  %i.agb = add nsw i32 %.11259116.i.i, %i.ah      ; 2 uses
  %i.agc = sdiv i32 %i.agb, %i.abh
  %i.agd = srem i32 %i.agb, %i.abh                ; 2 uses
end_hunk_15
begin_hunk_16_@_ZN4ncnnL28convolution_im2col_gemm_int8ERKNS_3MatERS0_S2_iiiiiiiRKNS_6OptionE.omp_outlined.14:bb.a
vec.epilog.middle.block397:                       ; preds = %vec.epilog.vector.body388
  %cmp.n398 = icmp eq i64 %n.vec387, %i.bgo
  br i1 %cmp.n398, label %.preheader.i, label %.lr.ph1018.i.preheader

.lr.ph1018.i.preheader:                           ; preds = %vector.memcheck355, %iter.check382, %vec.epilog.iter.check384, %vec.epilog.middle.block397
  %.281017.i.ph = phi ptr [ %.27.lcssa.i, %iter.check382 ], [ %.27.lcssa.i, %vector.memcheck355 ], [ %i.bgx, %vec.epilog.iter.check384 ], [ %i.bhg, %vec.epilog.middle.block397 ]
  %.314961016.i.ph = phi i32 [ %.21495.lcssa.i, %iter.check382 ], [ %.21495.lcssa.i, %vector.memcheck355 ], [ %i.bha, %vec.epilog.iter.check384 ], [ %i.bhj, %vec.epilog.middle.block397 ]
  %.315011015.i.ph = phi ptr [ %.21500.lcssa.i, %iter.check382 ], [ %.21500.lcssa.i, %vector.memcheck355 ], [ %i.bhb, %vec.epilog.iter.check384 ], [ %i.bhk, %vec.epilog.middle.block397 ]
  br label %.lr.ph1018.i

.lr.ph1011.i:                                     ; preds = %.preheader814.i, %.lr.ph1011.i
  %.271010.i = phi ptr [ %i.bhp, %.lr.ph1011.i ], [ %.26.lcssa.i, %.preheader814.i ] ; 2 uses
  %.214951009.i = phi i32 [ %i.bhq, %.lr.ph1011.i ], [ %.11494.lcssa.i, %.preheader814.i ]
  %.215001008.i = phi ptr [ %i.bho, %.lr.ph1011.i ], [ %.11499.lcssa.i, %.preheader814.i ] ; 2 uses
  %i.bhn = load <2 x i64>, ptr %.271010.i, align 1, !tbaa !100
  store <2 x i64> %i.bhn, ptr %.215001008.i, align 1, !tbaa !100
  %i.bho = getelementptr inbounds nuw i8, ptr %.215001008.i, i64 16 ; 2 uses
  %i.bhp = getelementptr inbounds nuw i8, ptr %.271010.i, i64 16 ; 2 uses
  %i.bhq = add nuw nsw i32 %.214951009.i, 4       ; 3 uses
  %i.bhr = or disjoint i32 %i.bhq, 3
  %i.bhs = icmp slt i32 %i.bhr, %.sroa.speculated111
  br i1 %i.bhs, label %.lr.ph1011.i, label %.preheader813.i, !llvm.loop !2428

.preheader.i:                                     ; preds = %.lr.ph1018.i, %middle.block377, %vec.epilog.middle.block397, %.preheader813.i
  %.31501.lcssa.i = phi ptr [ %.21500.lcssa.i, %.preheader813.i ], [ %i.bhk, %vec.epilog.middle.block397 ], [ %i.bhb, %middle.block377 ], [ %i.bjc, %.lr.ph1018.i ] ; 6 uses
  %.31496.lcssa.i = phi i32 [ %.21495.lcssa.i, %.preheader813.i ], [ %i.bhj, %vec.epilog.middle.block397 ], [ %i.bha, %middle.block377 ], [ %i.bje, %.lr.ph1018.i ] ; 5 uses
  %.28.lcssa.i = phi ptr [ %.27.lcssa.i, %.preheader813.i ], [ %i.bhg, %vec.epilog.middle.block397 ], [ %i.bgx, %middle.block377 ], [ %i.bjd, %.lr.ph1018.i ] ; 7 uses
  %i.bht = icmp slt i32 %.31496.lcssa.i, %.sroa.speculated111
  br i1 %i.bht, label %iter.check, label %._crit_edge1026.i

iter.check:                                       ; preds = %.preheader.i
  %.28.lcssa.i337 = ptrtoaddr ptr %.28.lcssa.i to i64
  %.31501.lcssa.i336 = ptrtoaddr ptr %.31501.lcssa.i to i64
  %i.bhu = xor i32 %.31496.lcssa.i, -1
  %i.bhv = add i32 %.sroa.speculated111, %i.bhu   ; 3 uses
  %i.bhw = zext i32 %i.bhv to i64
  %i.bhx = add nuw nsw i64 %i.bhw, 1              ; 5 uses
  %min.iters.check = icmp ult i32 %i.bhv, 7
  %i.bhy = sub i64 %.28.lcssa.i337, %.31501.lcssa.i336
  %diff.check = icmp ugt i64 %i.bhy, -256
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph1025.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check338 = icmp ult i32 %i.bhv, 63
  br i1 %min.iters.check338, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bhz = and i64 %i.bhx, 56
  %n.vec = and i64 %i.bhx, 8589934528             ; 5 uses
  %i.bia = shl nuw nsw i64 %n.vec, 2              ; 2 uses
  %i.bib = getelementptr i8, ptr %.28.lcssa.i, i64 %i.bia ; 2 uses
  %i.bic = trunc i64 %n.vec to i32
  %i.bid = add i32 %.31496.lcssa.i, %i.bic
  %i.bie = getelementptr i8, ptr %.31501.lcssa.i, i64 %i.bia
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bif = shl i64 %index, 2                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.28.lcssa.i, i64 %i.bif ; 4 uses
  %next.gep339 = getelementptr i8, ptr %.31501.lcssa.i, i64 %i.bif ; 4 uses
  %i.big = getelementptr i8, ptr %next.gep, i64 64
  %i.bih = getelementptr i8, ptr %next.gep, i64 128
  %i.bii = getelementptr i8, ptr %next.gep, i64 192
  %wide.load = load <16 x i32>, ptr %next.gep, align 4, !tbaa !67
  %wide.load340 = load <16 x i32>, ptr %i.big, align 4, !tbaa !67
  %wide.load341 = load <16 x i32>, ptr %i.bih, align 4, !tbaa !67
  %wide.load342 = load <16 x i32>, ptr %i.bii, align 4, !tbaa !67
  %i.bij = getelementptr i8, ptr %next.gep339, i64 64
  %i.bik = getelementptr i8, ptr %next.gep339, i64 128
  %i.bil = getelementptr i8, ptr %next.gep339, i64 192
  store <16 x i32> %wide.load, ptr %next.gep339, align 4, !tbaa !67
  store <16 x i32> %wide.load340, ptr %i.bij, align 4, !tbaa !67
  store <16 x i32> %wide.load341, ptr %i.bik, align 4, !tbaa !67
  store <16 x i32> %wide.load342, ptr %i.bil, align 4, !tbaa !67
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.bim = icmp eq i64 %index.next, %n.vec
  br i1 %i.bim, label %middle.block, label %vector.body, !llvm.loop !2429

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bhx, %n.vec
  br i1 %cmp.n, label %._crit_edge1026.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bhz, 0
  br i1 %min.epilog.iters.check, label %.lr.ph1025.i.preheader, label %vec.epilog.ph, !prof !216

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec345 = and i64 %i.bhx, 8589934584          ; 4 uses
  %i.bin = shl nuw nsw i64 %n.vec345, 2           ; 2 uses
  %i.bio = getelementptr i8, ptr %.28.lcssa.i, i64 %i.bin ; 2 uses
  %i.bip = trunc i64 %n.vec345 to i32
  %i.biq = add i32 %.31496.lcssa.i, %i.bip
  %i.bir = getelementptr i8, ptr %.31501.lcssa.i, i64 %i.bin
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index346 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next350, %vec.epilog.vector.body ] ; 2 uses
  %i.bis = shl i64 %index346, 2                   ; 2 uses
  %next.gep347 = getelementptr i8, ptr %.28.lcssa.i, i64 %i.bis
  %next.gep348 = getelementptr i8, ptr %.31501.lcssa.i, i64 %i.bis
  %wide.load349 = load <8 x i32>, ptr %next.gep347, align 4, !tbaa !67
  store <8 x i32> %wide.load349, ptr %next.gep348, align 4, !tbaa !67
  %index.next350 = add nuw i64 %index346, 8       ; 2 uses
  %i.bit = icmp eq i64 %index.next350, %n.vec345
  br i1 %i.bit, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2430

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n351 = icmp eq i64 %i.bhx, %n.vec345
  br i1 %cmp.n351, label %._crit_edge1026.i, label %.lr.ph1025.i.preheader

.lr.ph1025.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.291024.i.ph = phi ptr [ %.28.lcssa.i, %iter.check ], [ %i.bib, %vec.epilog.iter.check ], [ %i.bio, %vec.epilog.middle.block ] ; 2 uses
  %.414971023.i.ph = phi i32 [ %.31496.lcssa.i, %iter.check ], [ %i.bid, %vec.epilog.iter.check ], [ %i.biq, %vec.epilog.middle.block ] ; 4 uses
  %.415021022.i.ph = phi ptr [ %.31501.lcssa.i, %iter.check ], [ %i.bie, %vec.epilog.iter.check ], [ %i.bir, %vec.epilog.middle.block ] ; 2 uses
  %i.biu = sub i32 %.sroa.speculated111, %.414971023.i.ph
  %xtraiter598 = and i32 %i.biu, 7                ; 2 uses
  %lcmp.mod599.not = icmp eq i32 %xtraiter598, 0
  br i1 %lcmp.mod599.not, label %.lr.ph1025.i.prol.loopexit, label %.lr.ph1025.i.prol

.lr.ph1025.i.prol:                                ; preds = %.lr.ph1025.i.preheader, %.lr.ph1025.i.prol
  %.291024.i.prol = phi ptr [ %i.bix, %.lr.ph1025.i.prol ], [ %.291024.i.ph, %.lr.ph1025.i.preheader ] ; 2 uses
  %.414971023.i.prol = phi i32 [ %i.biy, %.lr.ph1025.i.prol ], [ %.414971023.i.ph, %.lr.ph1025.i.preheader ]
  %.415021022.i.prol = phi ptr [ %i.biw, %.lr.ph1025.i.prol ], [ %.415021022.i.ph, %.lr.ph1025.i.preheader ] ; 2 uses
  %prol.iter600 = phi i32 [ %prol.iter600.next, %.lr.ph1025.i.prol ], [ 0, %.lr.ph1025.i.preheader ]
  %i.biv = load i32, ptr %.291024.i.prol, align 4, !tbaa !67
  store i32 %i.biv, ptr %.415021022.i.prol, align 4, !tbaa !67
  %i.biw = getelementptr inbounds nuw i8, ptr %.415021022.i.prol, i64 4 ; 2 uses
  %i.bix = getelementptr inbounds nuw i8, ptr %.291024.i.prol, i64 4 ; 3 uses
  %i.biy = add nuw nsw i32 %.414971023.i.prol, 1  ; 2 uses
  %prol.iter600.next = add i32 %prol.iter600, 1   ; 2 uses
  %prol.iter600.cmp.not = icmp eq i32 %prol.iter600.next, %xtraiter598
  br i1 %prol.iter600.cmp.not, label %.lr.ph1025.i.prol.loopexit, label %.lr.ph1025.i.prol, !llvm.loop !2431

.lr.ph1025.i.prol.loopexit:                       ; preds = %.lr.ph1025.i.prol, %.lr.ph1025.i.preheader
  %.lcssa581.unr = phi ptr [ poison, %.lr.ph1025.i.preheader ], [ %i.bix, %.lr.ph1025.i.prol ]
  %.291024.i.unr = phi ptr [ %.291024.i.ph, %.lr.ph1025.i.preheader ], [ %i.bix, %.lr.ph1025.i.prol ]
  %.414971023.i.unr = phi i32 [ %.414971023.i.ph, %.lr.ph1025.i.preheader ], [ %i.biy, %.lr.ph1025.i.prol ]
  %.415021022.i.unr = phi ptr [ %.415021022.i.ph, %.lr.ph1025.i.preheader ], [ %i.biw, %.lr.ph1025.i.prol ]
  %i.biz = sub i32 %.414971023.i.ph, %.sroa.speculated111
  %i.bja = icmp ugt i32 %i.biz, -8
  br i1 %i.bja, label %._crit_edge1026.i, label %.lr.ph1025.i

.lr.ph1018.i:                                     ; preds = %.lr.ph1018.i.preheader, %.lr.ph1018.i
  %.281017.i = phi ptr [ %i.bjd, %.lr.ph1018.i ], [ %.281017.i.ph, %.lr.ph1018.i.preheader ] ; 2 uses
  %.314961016.i = phi i32 [ %i.bje, %.lr.ph1018.i ], [ %.314961016.i.ph, %.lr.ph1018.i.preheader ]
  %.315011015.i = phi ptr [ %i.bjc, %.lr.ph1018.i ], [ %.315011015.i.ph, %.lr.ph1018.i.preheader ] ; 2 uses
  %i.bjb = load <2 x i32>, ptr %.281017.i, align 4, !tbaa !67
  store <2 x i32> %i.bjb, ptr %.315011015.i, align 4, !tbaa !67
  %i.bjc = getelementptr inbounds nuw i8, ptr %.315011015.i, i64 8 ; 2 uses
  %i.bjd = getelementptr inbounds nuw i8, ptr %.281017.i, i64 8 ; 2 uses
  %i.bje = add nuw nsw i32 %.314961016.i, 2       ; 3 uses
  %i.bjf = or disjoint i32 %i.bje, 1
  %i.bjg = icmp slt i32 %i.bjf, %.sroa.speculated111
  br i1 %i.bjg, label %.lr.ph1018.i, label %.preheader.i, !llvm.loop !2432

.lr.ph1025.i:                                     ; preds = %.lr.ph1025.i.prol.loopexit, %.lr.ph1025.i
  %.291024.i = phi ptr [ %i.bke, %.lr.ph1025.i ], [ %.291024.i.unr, %.lr.ph1025.i.prol.loopexit ] ; 9 uses
  %.414971023.i = phi i32 [ %i.bkf, %.lr.ph1025.i ], [ %.414971023.i.unr, %.lr.ph1025.i.prol.loopexit ]
  %.415021022.i = phi ptr [ %i.bkd, %.lr.ph1025.i ], [ %.415021022.i.unr, %.lr.ph1025.i.prol.loopexit ] ; 9 uses
  %i.bjh = load i32, ptr %.291024.i, align 4, !tbaa !67
  store i32 %i.bjh, ptr %.415021022.i, align 4, !tbaa !67
  %i.bji = getelementptr inbounds nuw i8, ptr %.415021022.i, i64 4
  %i.bjj = getelementptr inbounds nuw i8, ptr %.291024.i, i64 4
  %i.bjk = load i32, ptr %i.bjj, align 4, !tbaa !67
  store i32 %i.bjk, ptr %i.bji, align 4, !tbaa !67
  %i.bjl = getelementptr inbounds nuw i8, ptr %.415021022.i, i64 8
  %i.bjm = getelementptr inbounds nuw i8, ptr %.291024.i, i64 8
  %i.bjn = load i32, ptr %i.bjm, align 4, !tbaa !67
  store i32 %i.bjn, ptr %i.bjl, align 4, !tbaa !67
  %i.bjo = getelementptr inbounds nuw i8, ptr %.415021022.i, i64 12
  %i.bjp = getelementptr inbounds nuw i8, ptr %.291024.i, i64 12
  %i.bjq = load i32, ptr %i.bjp, align 4, !tbaa !67
  store i32 %i.bjq, ptr %i.bjo, align 4, !tbaa !67
  %i.bjr = getelementptr inbounds nuw i8, ptr %.415021022.i, i64 16
  %i.bjs = getelementptr inbounds nuw i8, ptr %.291024.i, i64 16
  %i.bjt = load i32, ptr %i.bjs, align 4, !tbaa !67
  store i32 %i.bjt, ptr %i.bjr, align 4, !tbaa !67
  %i.bju = getelementptr inbounds nuw i8, ptr %.415021022.i, i64 20
  %i.bjv = getelementptr inbounds nuw i8, ptr %.291024.i, i64 20
  %i.bjw = load i32, ptr %i.bjv, align 4, !tbaa !67
  store i32 %i.bjw, ptr %i.bju, align 4, !tbaa !67
  %i.bjx = getelementptr inbounds nuw i8, ptr %.415021022.i, i64 24
  %i.bjy = getelementptr inbounds nuw i8, ptr %.291024.i, i64 24
  %i.bjz = load i32, ptr %i.bjy, align 4, !tbaa !67
  store i32 %i.bjz, ptr %i.bjx, align 4, !tbaa !67
  %i.bka = getelementptr inbounds nuw i8, ptr %.415021022.i, i64 28
  %i.bkb = getelementptr inbounds nuw i8, ptr %.291024.i, i64 28
  %i.bkc = load i32, ptr %i.bkb, align 4, !tbaa !67
  store i32 %i.bkc, ptr %i.bka, align 4, !tbaa !67
  %i.bkd = getelementptr inbounds nuw i8, ptr %.415021022.i, i64 32
  %i.bke = getelementptr inbounds nuw i8, ptr %.291024.i, i64 32 ; 2 uses
  %i.bkf = add nuw nsw i32 %.414971023.i, 8       ; 2 uses
  %exitcond1104.not.i.7 = icmp eq i32 %i.bkf, %.sroa.speculated111
  br i1 %exitcond1104.not.i.7, label %._crit_edge1026.i, label %.lr.ph1025.i, !llvm.loop !2433

._crit_edge1026.i:                                ; preds = %.lr.ph1025.i.prol.loopexit, %.lr.ph1025.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  %.29.lcssa.i = phi ptr [ %.28.lcssa.i, %.preheader.i ], [ %i.bio, %vec.epilog.middle.block ], [ %i.bib, %middle.block ], [ %.lcssa581.unr, %.lr.ph1025.i.prol.loopexit ], [ %i.bke, %.lr.ph1025.i ]
  %indvars.iv.next1106.i = add nsw i64 %indvars.iv1105.i, 1 ; 2 uses
  %exitcond1108.not.i = icmp eq i64 %indvars.iv.next1106.i, %i.cj
  br i1 %exitcond1108.not.i, label %_ZN4ncnnL24unpack_output_tile_int32ERKNS_3MatERS0_iiii.exit, label %bb.bf, !llvm.loop !2434

.noexc:                                           ; preds = %.noexc.preheader, %_ZN4ncnn3MatD2Ev.exit46
  %i.bkg = phi i32 [ %i.bmn, %_ZN4ncnn3MatD2Ev.exit46 ], [ %.pre220, %.noexc.preheader ] ; 2 uses
  %i.bkh = phi i32 [ %i.bmp, %_ZN4ncnn3MatD2Ev.exit46 ], [ %i.cy, %.noexc.preheader ]
  %.0165 = phi i32 [ %i.bmo, %_ZN4ncnn3MatD2Ev.exit46 ], [ 0, %.noexc.preheader ] ; 4 uses
  %i.bki = sub nsw i32 %i.bkh, %.0165
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.bkg, i32 %i.bki)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  %i.bkj = load i32, ptr %3, align 4, !tbaa !67
  %i.bkk = sdiv i32 %i.be, %i.bkj
  %i.bkl = load i32, ptr %i.ad, align 4, !tbaa !75, !noalias !2435 ; 2 uses
  %i.bkm = load ptr, ptr %10, align 8, !tbaa !18, !noalias !2435
  %i.bkn = load i64, ptr %i.ae, align 8, !tbaa !20, !noalias !2435
  %i.bko = sext i32 %i.bkk to i64
  %i.bkp = mul i64 %i.bkn, %i.bko
  %i.bkq = load i64, ptr %i.af, align 8, !tbaa !65, !noalias !2435 ; 3 uses
  %i.bkr = mul i64 %i.bkp, %i.bkq
  %i.bks = getelementptr inbounds nuw i8, ptr %i.bkm, i64 %i.bkr
  %i.bkt = load i32, ptr %i.ag, align 8, !tbaa !66, !noalias !2435
  %i.bku = load ptr, ptr %i.ah, align 8, !tbaa !17, !noalias !2435
  %i.bkv = sext i32 %i.bkl to i64                 ; 2 uses
  %i.bkw = sdiv i32 %.0165, %i.bkg
  %i.bkx = sext i32 %i.bkw to i64                 ; 2 uses
  %i.bky = mul i64 %i.bkq, %i.bkv
  %i.bkz = mul i64 %i.bky, %i.bkx
  %i.bla = getelementptr inbounds nuw i8, ptr %i.bks, i64 %i.bkz
  store ptr %i.bla, ptr %14, align 8, !tbaa !18, !alias.scope !2438
  store ptr null, ptr %i.ai, align 8, !tbaa !11, !alias.scope !2438
  store i64 %i.bkq, ptr %i.aj, align 8, !tbaa !65, !alias.scope !2438
  store i32 %i.bkt, ptr %i.ak, align 8, !tbaa !66, !alias.scope !2438
  store ptr %i.bku, ptr %i.al, align 8, !tbaa !17, !alias.scope !2438
  %i.blb = insertelement <4 x i32> <i32 2, i32 poison, i32 1, i32 1>, i32 %i.bkl, i64 1
  store <4 x i32> %i.blb, ptr %i.am, align 8, !tbaa !67, !alias.scope !2438
  store i32 1, ptr %i.an, align 8, !tbaa !68, !alias.scope !2438
  store i64 %i.bkv, ptr %i.ao, align 8, !tbaa !20, !alias.scope !2438
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #12
  %i.blc = load i32, ptr %7, align 4, !tbaa !67
  %i.bld = sdiv i32 %.044166, %i.blc
  %i.ble = load i32, ptr %i.ap, align 4, !tbaa !75, !noalias !2441 ; 2 uses
  %i.blf = load ptr, ptr %11, align 8, !tbaa !18, !noalias !2441
  %i.blg = load i64, ptr %i.aq, align 8, !tbaa !20, !noalias !2441
  %i.blh = sext i32 %i.bld to i64
  %i.bli = mul i64 %i.blg, %i.blh
  %i.blj = load i64, ptr %i.ar, align 8, !tbaa !65, !noalias !2441 ; 3 uses
  %i.blk = mul i64 %i.bli, %i.blj
  %i.bll = getelementptr inbounds nuw i8, ptr %i.blf, i64 %i.blk
  %i.blm = load i32, ptr %i.as, align 8, !tbaa !66, !noalias !2441
  %i.bln = load ptr, ptr %i.at, align 8, !tbaa !17, !noalias !2441
  %i.blo = sext i32 %i.ble to i64                 ; 2 uses
  %i.blp = mul i64 %i.blj, %i.blo
  %i.blq = mul i64 %i.blp, %i.bkx
  %i.blr = getelementptr inbounds nuw i8, ptr %i.bll, i64 %i.blq
  store ptr %i.blr, ptr %15, align 8, !tbaa !18, !alias.scope !2444
  store ptr null, ptr %i.au, align 8, !tbaa !11, !alias.scope !2444
  store i64 %i.blj, ptr %i.av, align 8, !tbaa !65, !alias.scope !2444
  store i32 %i.blm, ptr %i.aw, align 8, !tbaa !66, !alias.scope !2444
  store ptr %i.bln, ptr %i.ax, align 8, !tbaa !17, !alias.scope !2444
  %i.bls = insertelement <4 x i32> <i32 2, i32 poison, i32 1, i32 1>, i32 %i.ble, i64 1
  store <4 x i32> %i.bls, ptr %i.ay, align 8, !tbaa !67, !alias.scope !2444
  store i32 1, ptr %i.az, align 8, !tbaa !68, !alias.scope !2444
  store i64 %i.blo, ptr %i.ba, align 8, !tbaa !20, !alias.scope !2444
  invoke void @_ZN4ncnn23Gemm_x86_avx512_utility28gemm_transB_packed_tile_int8ERKNS_3MatES3_RS1_iiiiii(ptr noundef nonnull align 8 dereferenceable(72) %14, ptr noundef nonnull align 8 dereferenceable(72) %15, ptr noundef nonnull align 8 dereferenceable(72) %13, i32 noundef %i.be, i32 noundef %.sroa.speculated115, i32 noundef %.044166, i32 noundef %.sroa.speculated111, i32 noundef %.0165, i32 noundef %.sroa.speculated)
          to label %_ZN4ncnnL40convolution_gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii.exit unwind label %.loopexit

_ZN4ncnnL40convolution_gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii.exit: ; preds = %.noexc
  %i.blt = load ptr, ptr %i.au, align 8, !tbaa !11 ; 2 uses
  %.not.i55 = icmp eq ptr %i.blt, null
  br i1 %.not.i55, label %_ZN4ncnn3MatD2Ev.exit47, label %bb.bg

bb.bg:                                            ; preds = %_ZN4ncnnL40convolution_gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii.exit
  %i.blu = atomicrmw add ptr %i.blt, i32 -1 acq_rel, align 4
  %i.blv = icmp eq i32 %i.blu, 1
  br i1 %i.blv, label %bb.bh, label %_ZN4ncnn3MatD2Ev.exit47

bb.bh:                                            ; preds = %bb.bg
  %i.blw = load ptr, ptr %i.ax, align 8, !tbaa !17 ; 3 uses
  %.not3.i56 = icmp eq ptr %i.blw, null
  %i.blx = load ptr, ptr %15, align 8, !tbaa !18  ; 3 uses
  br i1 %.not3.i56, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.bly = load ptr, ptr %i.blw, align 8, !tbaa !9
  %i.blz = getelementptr inbounds nuw i8, ptr %i.bly, i64 24
  %i.bma = load ptr, ptr %i.blz, align 8
  invoke void %i.bma(ptr noundef nonnull align 8 dereferenceable(8) %i.blw, ptr noundef %i.blx)
          to label %_ZN4ncnn3MatD2Ev.exit47 unwind label %bb.bl, !inline_history !19

bb.bj:                                            ; preds = %bb.bh
  %.not.i70 = icmp eq ptr %i.blx, null
  br i1 %.not.i70, label %_ZN4ncnn3MatD2Ev.exit47, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @free(ptr noundef nonnull %i.blx) #12
  br label %_ZN4ncnn3MatD2Ev.exit47

bb.bl:                                            ; preds = %bb.bi
  %i.bmb = landingpad { ptr, i32 }
          catch ptr null
  %i.bmc = extractvalue { ptr, i32 } %i.bmb, 0
  call void @__clang_call_terminate(ptr %i.bmc) #36
  unreachable

_ZN4ncnn3MatD2Ev.exit47:                          ; preds = %bb.bg, %_ZN4ncnnL40convolution_gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii.exit, %bb.bi, %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  %i.bmd = load ptr, ptr %i.ai, align 8, !tbaa !11 ; 2 uses
  %.not.i59 = icmp eq ptr %i.bmd, null
  br i1 %.not.i59, label %_ZN4ncnn3MatD2Ev.exit46, label %bb.bm

bb.bm:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit47
  %i.bme = atomicrmw add ptr %i.bmd, i32 -1 acq_rel, align 4
  %i.bmf = icmp eq i32 %i.bme, 1
  br i1 %i.bmf, label %bb.bn, label %_ZN4ncnn3MatD2Ev.exit46

bb.bn:                                            ; preds = %bb.bm
  %i.bmg = load ptr, ptr %i.al, align 8, !tbaa !17 ; 3 uses
  %.not3.i60 = icmp eq ptr %i.bmg, null
  %i.bmh = load ptr, ptr %14, align 8, !tbaa !18  ; 3 uses
  br i1 %.not3.i60, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.bmi = load ptr, ptr %i.bmg, align 8, !tbaa !9
  %i.bmj = getelementptr inbounds nuw i8, ptr %i.bmi, i64 24
  %i.bmk = load ptr, ptr %i.bmj, align 8
  invoke void %i.bmk(ptr noundef nonnull align 8 dereferenceable(8) %i.bmg, ptr noundef %i.bmh)
          to label %_ZN4ncnn3MatD2Ev.exit46 unwind label %bb.br, !inline_history !19

bb.bp:                                            ; preds = %bb.bn
  %.not.i68 = icmp eq ptr %i.bmh, null
  br i1 %.not.i68, label %_ZN4ncnn3MatD2Ev.exit46, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @free(ptr noundef nonnull %i.bmh) #12
  br label %_ZN4ncnn3MatD2Ev.exit46

bb.br:                                            ; preds = %bb.bo
  %i.bml = landingpad { ptr, i32 }
          catch ptr null
  %i.bmm = extractvalue { ptr, i32 } %i.bml, 0
  call void @__clang_call_terminate(ptr %i.bmm) #36
  unreachable

_ZN4ncnn3MatD2Ev.exit46:                          ; preds = %bb.bm, %_ZN4ncnn3MatD2Ev.exit47, %bb.bo, %bb.bp, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  %i.bmn = load i32, ptr %9, align 4, !tbaa !67   ; 2 uses
  %i.bmo = add nsw i32 %i.bmn, %.0165             ; 2 uses
  %i.bmp = load i32, ptr %8, align 4, !tbaa !67   ; 2 uses
  %i.bmq = icmp slt i32 %i.bmo, %i.bmp
  br i1 %i.bmq, label %.noexc, label %._crit_edge, !llvm.loop !2447

_ZN4ncnnL24unpack_output_tile_int32ERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge1026.i, %.preheader816.i
  %i.bmr = load i32, ptr %7, align 4, !tbaa !67   ; 2 uses
  %i.bms = add nsw i32 %i.bmr, %.044166           ; 2 uses
  %i.bmt = load i32, ptr %6, align 4, !tbaa !67   ; 2 uses
  %i.bmu = icmp slt i32 %i.bms, %i.bmt
  br i1 %i.bmu, label %bb.l, label %._crit_edge167, !llvm.loop !2448

._crit_edge172:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.bs

bb.bs:                                            ; preds = %._crit_edge172, %bb.a
  ret void

.loopexit:                                        ; preds = %.noexc
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bt

.loopexit.split-lp:                               ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bt

bb.bt:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bmv = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.bmv) #36
  unreachable
}

declare void @_ZN4ncnn45convolution_im2col_input_tile_int8_avx512vnniERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn46convolution_im2col_input_tile_int8_avxvnniint8ERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn42convolution_im2col_input_tile_int8_avxvnniERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i64> @llvm.x86.avx512.mask.gather.dpq.512(<8 x i64>, ptr, <8 x i32>, <8 x i1>, i32 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64>, ptr, <4 x i32>, <4 x i64>, i8 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #27
end_hunk_16
begin_hunk_17_@_ZN4ncnnL46convolution_im2col_gemm_transform_kernel_bf16sERKNS_3MatERS0_iiiiRKNS_6OptionE.omp_outlined:bb.a
bb.g:                                             ; preds = %._crit_edge309.i, %.lr.ph313.i
  %indvars.iv391.i = phi i64 [ %i.adq, %.lr.ph313.i ], [ %indvars.iv.next392.i, %._crit_edge309.i ] ; 2 uses
  %.14312.i = phi ptr [ %.10.lcssa.i, %.lr.ph313.i ], [ %.17.lcssa.i, %._crit_edge309.i ] ; 3 uses
  %i.ahi = load ptr, ptr %8, align 8, !tbaa !18
  %i.ahj = add nsw i64 %indvars.iv391.i, %i.z
  %i.ahk = mul nsw i64 %i.ahj, %i.adr
  %i.ahl = getelementptr inbounds [4 x i8], ptr %i.ahi, i64 %i.ahk
  %i.ahm = getelementptr inbounds [4 x i8], ptr %i.ahl, i64 %i.adn ; 3 uses
  br i1 %i.ado, label %.lr.ph294.i.preheader, label %.preheader106.i

.lr.ph294.i.preheader:                            ; preds = %bb.g
  br i1 %i.adv, label %.lr.ph294.i.epil.preheader, label %.lr.ph294.i

.preheader106.i.loopexit.unr-lcssa:               ; preds = %.lr.ph294.i
  br i1 %lcmp.mod.not.not, label %.lr.ph294.i.epil.preheader, label %.preheader106.i

.lr.ph294.i.epil.preheader:                       ; preds = %.preheader106.i.loopexit.unr-lcssa, %.lr.ph294.i.preheader
  %.0442291.i.epil.init = phi ptr [ %i.ahm, %.lr.ph294.i.preheader ], [ %i.aij, %.preheader106.i.loopexit.unr-lcssa ] ; 2 uses
  %.15290.i.epil.init = phi ptr [ %.14312.i, %.lr.ph294.i.preheader ], [ %i.aii, %.preheader106.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod531)
  %i.ahn = load <8 x i32>, ptr %.0442291.i.epil.init, align 1, !tbaa !100
  %i.aho = lshr <8 x i32> %i.ahn, splat (i32 16)  ; 2 uses
  %i.ahp = shufflevector <8 x i32> %i.aho, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ahq = shufflevector <8 x i32> %i.aho, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ahr = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ahp, <4 x i32> %i.ahq)
  store <8 x i16> %i.ahr, ptr %.15290.i.epil.init, align 1, !tbaa !100
  %i.ahs = getelementptr inbounds nuw i8, ptr %.15290.i.epil.init, i64 16
  %i.aht = getelementptr inbounds nuw i8, ptr %.0442291.i.epil.init, i64 32
  br label %.preheader106.i

.preheader106.i:                                  ; preds = %.lr.ph294.i.epil.preheader, %.preheader106.i.loopexit.unr-lcssa, %bb.g
  %.15.lcssa.i = phi ptr [ %.14312.i, %bb.g ], [ %i.aii, %.preheader106.i.loopexit.unr-lcssa ], [ %i.ahs, %.lr.ph294.i.epil.preheader ] ; 2 uses
  %.0442.lcssa.i = phi ptr [ %i.ahm, %bb.g ], [ %i.aij, %.preheader106.i.loopexit.unr-lcssa ], [ %i.aht, %.lr.ph294.i.epil.preheader ] ; 2 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.g ], [ %i.adp, %.preheader106.i.loopexit.unr-lcssa ], [ %i.adp, %.lr.ph294.i.epil.preheader ] ; 3 uses
  %i.ahu = or disjoint i32 %.0.lcssa.i, 3
  %i.ahv = icmp slt i32 %i.ahu, %.sroa.speculated
  br i1 %i.ahv, label %.lr.ph301.i, label %.preheader.i

.lr.ph294.i:                                      ; preds = %.lr.ph294.i.preheader, %.lr.ph294.i
  %.0442291.i = phi ptr [ %i.aij, %.lr.ph294.i ], [ %i.ahm, %.lr.ph294.i.preheader ] ; 3 uses
  %.15290.i = phi ptr [ %i.aii, %.lr.ph294.i ], [ %.14312.i, %.lr.ph294.i.preheader ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph294.i ], [ 0, %.lr.ph294.i.preheader ]
  %i.ahw = load <8 x i32>, ptr %.0442291.i, align 1, !tbaa !100
  %i.ahx = lshr <8 x i32> %i.ahw, splat (i32 16)  ; 2 uses
  %i.ahy = shufflevector <8 x i32> %i.ahx, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ahz = shufflevector <8 x i32> %i.ahx, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.aia = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ahy, <4 x i32> %i.ahz)
  store <8 x i16> %i.aia, ptr %.15290.i, align 1, !tbaa !100
  %i.aib = getelementptr inbounds nuw i8, ptr %.15290.i, i64 16
  %i.aic = getelementptr inbounds nuw i8, ptr %.0442291.i, i64 32
  %i.aid = load <8 x i32>, ptr %i.aic, align 1, !tbaa !100
  %i.aie = lshr <8 x i32> %i.aid, splat (i32 16)  ; 2 uses
  %i.aif = shufflevector <8 x i32> %i.aie, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aig = shufflevector <8 x i32> %i.aie, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.aih = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.aif, <4 x i32> %i.aig)
  store <8 x i16> %i.aih, ptr %i.aib, align 1, !tbaa !100
  %i.aii = getelementptr inbounds nuw i8, ptr %.15290.i, i64 32 ; 3 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %.0442291.i, i64 64 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader106.i.loopexit.unr-lcssa, label %.lr.ph294.i, !llvm.loop !2575

.preheader.i:                                     ; preds = %.lr.ph301.i, %.preheader106.i
  %.16.lcssa.i = phi ptr [ %.15.lcssa.i, %.preheader106.i ], [ %i.akd, %.lr.ph301.i ] ; 6 uses
  %.1443.lcssa.i = phi ptr [ %.0442.lcssa.i, %.preheader106.i ], [ %i.ake, %.lr.ph301.i ] ; 5 uses
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader106.i ], [ %i.akf, %.lr.ph301.i ] ; 5 uses
  %i.aik = icmp slt i32 %.1.lcssa.i, %.sroa.speculated
  br i1 %i.aik, label %iter.check, label %._crit_edge309.i

iter.check:                                       ; preds = %.preheader.i
  %i.ail = xor i32 %.1.lcssa.i, -1
  %i.aim = add i32 %.sroa.speculated, %i.ail      ; 3 uses
  %i.ain = zext i32 %i.aim to i64
  %i.aio = add nuw nsw i64 %i.ain, 1              ; 5 uses
  %min.iters.check = icmp ult i32 %i.aim, 7
  br i1 %min.iters.check, label %.lr.ph308.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check288 = icmp ult i32 %i.aim, 63
  br i1 %min.iters.check288, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aip = and i64 %i.aio, 56
  %n.vec = and i64 %i.aio, 8589934528             ; 6 uses
  %i.aiq = trunc i64 %n.vec to i32
  %i.air = add i32 %.1.lcssa.i, %i.aiq
  %i.ais = shl nuw nsw i64 %n.vec, 2
  %i.ait = getelementptr i8, ptr %.1443.lcssa.i, i64 %i.ais
  %i.aiu = shl nuw nsw i64 %n.vec, 1
  %i.aiv = getelementptr i8, ptr %.16.lcssa.i, i64 %i.aiu ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aiw = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.1443.lcssa.i, i64 %i.aiw ; 4 uses
  %i.aix = shl i64 %index, 1
  %next.gep289 = getelementptr i8, ptr %.16.lcssa.i, i64 %i.aix ; 4 uses
  %i.aiy = getelementptr i8, ptr %next.gep, i64 64
  %i.aiz = getelementptr i8, ptr %next.gep, i64 128
  %i.aja = getelementptr i8, ptr %next.gep, i64 192
  %wide.load = load <16 x i32>, ptr %next.gep, align 4, !tbaa !39
  %wide.load290 = load <16 x i32>, ptr %i.aiy, align 4, !tbaa !39
  %wide.load291 = load <16 x i32>, ptr %i.aiz, align 4, !tbaa !39
  %wide.load292 = load <16 x i32>, ptr %i.aja, align 4, !tbaa !39
  %i.ajb = lshr <16 x i32> %wide.load, splat (i32 16)
  %i.ajc = lshr <16 x i32> %wide.load290, splat (i32 16)
  %i.ajd = lshr <16 x i32> %wide.load291, splat (i32 16)
  %i.aje = lshr <16 x i32> %wide.load292, splat (i32 16)
  %i.ajf = trunc nuw <16 x i32> %i.ajb to <16 x i16>
  %i.ajg = trunc nuw <16 x i32> %i.ajc to <16 x i16>
  %i.ajh = trunc nuw <16 x i32> %i.ajd to <16 x i16>
  %i.aji = trunc nuw <16 x i32> %i.aje to <16 x i16>
  %i.ajj = getelementptr i8, ptr %next.gep289, i64 32
  %i.ajk = getelementptr i8, ptr %next.gep289, i64 64
  %i.ajl = getelementptr i8, ptr %next.gep289, i64 96
  store <16 x i16> %i.ajf, ptr %next.gep289, align 2, !tbaa !595
  store <16 x i16> %i.ajg, ptr %i.ajj, align 2, !tbaa !595
  store <16 x i16> %i.ajh, ptr %i.ajk, align 2, !tbaa !595
  store <16 x i16> %i.aji, ptr %i.ajl, align 2, !tbaa !595
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.ajm = icmp eq i64 %index.next, %n.vec
  br i1 %i.ajm, label %middle.block, label %vector.body, !llvm.loop !2576

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aio, %n.vec
  br i1 %cmp.n, label %._crit_edge309.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aip, 0
  br i1 %min.epilog.iters.check, label %.lr.ph308.i.preheader, label %vec.epilog.ph, !prof !216

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec295 = and i64 %i.aio, 8589934584          ; 5 uses
  %i.ajn = trunc i64 %n.vec295 to i32
  %i.ajo = add i32 %.1.lcssa.i, %i.ajn
  %i.ajp = shl nuw nsw i64 %n.vec295, 2
  %i.ajq = getelementptr i8, ptr %.1443.lcssa.i, i64 %i.ajp
  %i.ajr = shl nuw nsw i64 %n.vec295, 1
  %i.ajs = getelementptr i8, ptr %.16.lcssa.i, i64 %i.ajr ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index296 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next300, %vec.epilog.vector.body ] ; 3 uses
  %i.ajt = shl i64 %index296, 2
  %next.gep297 = getelementptr i8, ptr %.1443.lcssa.i, i64 %i.ajt
  %i.aju = shl i64 %index296, 1
  %next.gep298 = getelementptr i8, ptr %.16.lcssa.i, i64 %i.aju
  %wide.load299 = load <8 x i32>, ptr %next.gep297, align 4, !tbaa !39
  %i.ajv = lshr <8 x i32> %wide.load299, splat (i32 16)
  %i.ajw = trunc nuw <8 x i32> %i.ajv to <8 x i16>
  store <8 x i16> %i.ajw, ptr %next.gep298, align 2, !tbaa !595
  %index.next300 = add nuw i64 %index296, 8       ; 2 uses
  %i.ajx = icmp eq i64 %index.next300, %n.vec295
  br i1 %i.ajx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2577

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n301 = icmp eq i64 %i.aio, %n.vec295
  br i1 %cmp.n301, label %._crit_edge309.i, label %.lr.ph308.i.preheader

.lr.ph308.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2307.i.ph = phi i32 [ %.1.lcssa.i, %iter.check ], [ %i.air, %vec.epilog.iter.check ], [ %i.ajo, %vec.epilog.middle.block ]
  %.2444306.i.ph = phi ptr [ %.1443.lcssa.i, %iter.check ], [ %i.ait, %vec.epilog.iter.check ], [ %i.ajq, %vec.epilog.middle.block ]
  %.17305.i.ph = phi ptr [ %.16.lcssa.i, %iter.check ], [ %i.aiv, %vec.epilog.iter.check ], [ %i.ajs, %vec.epilog.middle.block ]
  br label %.lr.ph308.i

.lr.ph301.i:                                      ; preds = %.preheader106.i, %.lr.ph301.i
  %.1300.i = phi i32 [ %i.akf, %.lr.ph301.i ], [ %.0.lcssa.i, %.preheader106.i ]
  %.1443299.i = phi ptr [ %i.ake, %.lr.ph301.i ], [ %.0442.lcssa.i, %.preheader106.i ] ; 2 uses
  %.16298.i = phi ptr [ %i.akd, %.lr.ph301.i ], [ %.15.lcssa.i, %.preheader106.i ] ; 2 uses
  %i.ajy = load <4 x i32>, ptr %.1443299.i, align 1, !tbaa !100
  %i.ajz = lshr <4 x i32> %i.ajy, splat (i32 16)
  %i.aka = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ajz, <4 x i32> poison)
  %i.akb = bitcast <8 x i16> %i.aka to <2 x i64>
  %i.akc = extractelement <2 x i64> %i.akb, i64 0
  store i64 %i.akc, ptr %.16298.i, align 1, !tbaa !100
  %i.akd = getelementptr inbounds nuw i8, ptr %.16298.i, i64 8 ; 2 uses
  %i.ake = getelementptr inbounds nuw i8, ptr %.1443299.i, i64 16 ; 2 uses
  %i.akf = add nuw nsw i32 %.1300.i, 4            ; 3 uses
  %i.akg = or disjoint i32 %i.akf, 3
  %i.akh = icmp slt i32 %i.akg, %.sroa.speculated
  br i1 %i.akh, label %.lr.ph301.i, label %.preheader.i, !llvm.loop !2578

.lr.ph308.i:                                      ; preds = %.lr.ph308.i.preheader, %.lr.ph308.i
  %.2307.i = phi i32 [ %i.akn, %.lr.ph308.i ], [ %.2307.i.ph, %.lr.ph308.i.preheader ]
  %.2444306.i = phi ptr [ %i.akm, %.lr.ph308.i ], [ %.2444306.i.ph, %.lr.ph308.i.preheader ] ; 2 uses
  %.17305.i = phi ptr [ %i.akl, %.lr.ph308.i ], [ %.17305.i.ph, %.lr.ph308.i.preheader ] ; 2 uses
  %i.aki = load i32, ptr %.2444306.i, align 4, !tbaa !39
  %i.akj = lshr i32 %i.aki, 16
  %i.akk = trunc nuw i32 %i.akj to i16
  store i16 %i.akk, ptr %.17305.i, align 2, !tbaa !595
  %i.akl = getelementptr inbounds nuw i8, ptr %.17305.i, i64 2 ; 2 uses
  %i.akm = getelementptr inbounds nuw i8, ptr %.2444306.i, i64 4
  %i.akn = add nuw nsw i32 %.2307.i, 1            ; 2 uses
  %exitcond390.not.i = icmp eq i32 %i.akn, %.sroa.speculated
  br i1 %exitcond390.not.i, label %._crit_edge309.i, label %.lr.ph308.i, !llvm.loop !2579

._crit_edge309.i:                                 ; preds = %.lr.ph308.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  %.17.lcssa.i = phi ptr [ %.16.lcssa.i, %.preheader.i ], [ %i.ajs, %vec.epilog.middle.block ], [ %i.aiv, %middle.block ], [ %i.akl, %.lr.ph308.i ]
  %indvars.iv.next392.i = add nsw i64 %indvars.iv391.i, 1 ; 2 uses
  %exitcond394.not.i = icmp eq i64 %indvars.iv.next392.i, %i.aa
  br i1 %exitcond394.not.i, label %_ZN4ncnn3MatD2Ev.exit, label %bb.g, !llvm.loop !2580

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge309.i, %.preheader107.i
  %i.ako = load i32, ptr %6, align 4, !tbaa !67   ; 2 uses
  %i.akp = add nsw i32 %i.ako, %.0113             ; 2 uses
  %i.akq = load i32, ptr %5, align 4, !tbaa !67   ; 3 uses
  %i.akr = icmp slt i32 %i.akp, %i.akq
  br i1 %i.akr, label %_ZN4ncnn3MatD2Ev.exit29, label %._crit_edge, !llvm.loop !2581

._crit_edge117:                                   ; preds = %._crit_edge, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge117, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32>, <8 x i32>) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32>, <4 x i32>) #22

declare void @_ZN4ncnn52convolution_transform_kernel_packed_bf16s_avx512bf16ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN4ncnnL26conv3x3s1_winograd23_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(64) %7) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 2 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 8 uses
  %i.g = alloca i32, align 4                      ; 8 uses
  %i.h = alloca i32, align 4                      ; 7 uses
  %i.i = alloca i32, align 4                      ; 12 uses
  %i.j = alloca i32, align 4                      ; 11 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 7 uses
  %8 = alloca %"class.ncnn::Mat", align 8         ; 19 uses
  %i.m = alloca i32, align 4                      ; 7 uses
  %9 = alloca %"class.ncnn::Mat", align 8         ; 16 uses
  %10 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 14 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %i.n = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  store i32 %5, ptr %i.d, align 4, !tbaa !67
  %i.o = tail call noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_bf16Ev()
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noundef i32 @_ZN4ncnn37conv3x3s1_winograd23_bf16s_avx512bf16ERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(64) %7)
  br label %bb.bs

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.r = load <2 x i32>, ptr %i.q, align 4, !tbaa !67
  %i.s = add nsw <2 x i32> %i.r, splat (i32 1)
  %i.t = sdiv <2 x i32> %i.s, splat (i32 2)       ; 2 uses
  %shift = shufflevector <2 x i32> %i.t, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = mul nsw <2 x i32> %shift, %i.t
  %i.u = extractelement <2 x i32> %foldExtExtBinop, i64 0 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.w = load i32, ptr %i.v, align 8, !tbaa !68
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load i32, ptr %i.x, align 8, !tbaa !66
  %i.z = mul nsw i32 %i.y, %i.w                   ; 3 uses
  store i32 %i.z, ptr %i.e, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store i32 %i.u, ptr %i.f, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !68
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !66
  %i.ae = mul nsw i32 %i.ad, %i.ab                ; 2 uses
  store i32 %i.ae, ptr %i.g, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #12
  call fastcc void @_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i(i32 noundef %i.z, i32 noundef %i.u, i32 noundef %i.ae, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.j, i32 noundef %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #12
  %i.af = load i32, ptr %i.h, align 4, !tbaa !67  ; 2 uses
  %i.ag = add i32 %i.z, -1
  %i.ah = add i32 %i.ag, %i.af
  %i.ai = sdiv i32 %i.ah, %i.af
  store i32 %i.ai, ptr %i.k, align 4, !tbaa !67
  %i.aj = load i32, ptr %i.f, align 4, !tbaa !67
  %i.ak = load i32, ptr %i.i, align 4, !tbaa !67  ; 3 uses
  %i.al = add i32 %i.aj, -1
  %i.am = add i32 %i.al, %i.ak
  %i.an = sdiv i32 %i.am, %i.ak                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #12
  %i.ao = load i32, ptr %i.g, align 4, !tbaa !67
  %i.ap = load i32, ptr %i.j, align 4, !tbaa !67  ; 3 uses
  %i.aq = add i32 %i.ao, -1
  %i.ar = add i32 %i.aq, %i.ap
  %i.as = sdiv i32 %i.ar, %i.ap                   ; 2 uses
  store i32 %i.as, ptr %i.l, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.at = mul nsw i32 %i.ap, %i.ak
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !227
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 44 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 3 uses
  store i64 0, ptr %i.bc, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %8, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.az, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %8, i32 noundef %i.at, i32 noundef 16, i32 noundef %i.as, i32 noundef %i.an, i64 noundef 4, ptr noundef %i.av)
  %i.bd = load ptr, ptr %8, align 8, !tbaa !18
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %_ZNK4ncnn3Mat5emptyEv.exit179.thread, label %_ZNK4ncnn3Mat5emptyEv.exit179

_ZNK4ncnn3Mat5emptyEv.exit179:                    ; preds = %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.bg = load i64, ptr %i.bc, align 8, !tbaa !20
  %i.bh = load i32, ptr %i.bf, align 8, !tbaa !68
  %i.bi = sext i32 %i.bh to i64
  %i.bj = mul i64 %i.bg, %i.bi
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %_ZNK4ncnn3Mat5emptyEv.exit179.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit179
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #12
  %i.bl = load i32, ptr %i.l, align 4, !tbaa !67
  %i.bm = mul nsw i32 %i.bl, %i.an                ; 2 uses
  store i32 %i.bm, ptr %i.m, align 4, !tbaa !67
  %i.bn = icmp sgt i32 %4, 1
  %i.bo = icmp slt i32 %i.bm, %4
  %or.cond = select i1 %i.bn, i1 %i.bo, i1 false
  br i1 %or.cond, label %bb.e, label %bb.aa

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %i.bp = load i32, ptr %i.i, align 4, !tbaa !67
  %i.bq = shl nsw i32 %i.bp, 4
  %i.br = load i32, ptr %i.j, align 4, !tbaa !67
  %i.bs = mul nsw i32 %i.bq, %i.br
  %i.bt = load ptr, ptr %i.au, align 8, !tbaa !227
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  store i64 0, ptr %i.bx, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %9, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bv, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %9, i32 noundef %i.bs, i64 noundef 4, ptr noundef %i.bt)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit unwind label %bb.f

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit:            ; preds = %bb.e
  %i.by = load ptr, ptr %9, align 8, !tbaa !18
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit178

_ZNK4ncnn3Mat5emptyEv.exit178:                    ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit
  %i.ca = load i64, ptr %i.bx, align 8, !tbaa !20
  %i.cb = load i32, ptr %i.bw, align 8, !tbaa !68
  %i.cc = sext i32 %i.cb to i64
  %i.cd = mul i64 %i.ca, %i.cc
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %.critedge, label %.preheader

.preheader:                                       ; preds = %_ZNK4ncnn3Mat5emptyEv.exit178
  %i.cf = load i32, ptr %i.m, align 4, !tbaa !67
  %i.cg = icmp sgt i32 %i.cf, 0
  br i1 %i.cg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ch = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ck = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.cm = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.cn = getelementptr inbounds nuw i8, ptr %10, i64 64
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit96

bb.g:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit99
  %.0202 = phi i32 [ 0, %.lr.ph ], [ %i.ej, %_ZN4ncnn3MatD2Ev.exit99 ] ; 3 uses
  %i.cp = load i32, ptr %i.l, align 4, !tbaa !67  ; 2 uses
  %i.cq = sdiv i32 %.0202, %i.cp
  %i.cr = srem i32 %.0202, %i.cp
end_hunk_17
begin_hunk_18_@_ZN4ncnnL26conv3x3s1_winograd23_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined.16:bb.a
  br i1 %i.bxh, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.bxi = fdiv fast float 1.000000e+00, %i.bxc
  %i.bxj = fadd fast float %i.bxg, %i.bxi
  %i.bxk = fcmp fast ogt float %i.bvo, %i.bxj
  br i1 %i.bxk, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.bxl = fmul fast float %i.bxc, %i.bvo
  %i.bxm = fadd fast float %i.bxl, %i.bxe
  %i.bxn = fmul fast float %i.bxm, %i.bvo
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread.i

bb.cl:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread1638.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread.i: ; preds = %bb.ck, %bb.cj, %bb.ci
  %.114771634.i = phi float [ %i.bxn, %bb.ck ], [ 0.000000e+00, %bb.ci ], [ %i.bvo, %bb.cj ] ; 3 uses
  %i.bxo = fcmp fast olt float %i.bvs, %i.bxg
  br i1 %i.bxo, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i, label %bb.cm

bb.cm:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread.i
  %i.bxp = fdiv fast float 1.000000e+00, %i.bxc
  %i.bxq = fadd fast float %i.bxg, %i.bxp
  %i.bxr = fcmp fast ogt float %i.bvs, %i.bxq
  br i1 %i.bxr, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.bxs = fmul fast float %i.bxc, %i.bvs
  %i.bxt = fadd fast float %i.bxs, %i.bxe
  %i.bxu = fmul fast float %i.bxt, %i.bvs
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit.i:         ; preds = %bb.cn, %bb.cm, %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread.i, %bb.cl, %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread1650.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread1647.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread1638.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread1644.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread1641.i, %bb.ch
  %.114771635.i = phi float [ %.114771634.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread.i ], [ %i.bvt, %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread1641.i ], [ %i.bvz, %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread1644.i ], [ %.114771640.i, %bb.cl ], [ %.114771640.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread1638.i ], [ %i.bwm, %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread1647.i ], [ %i.bwv, %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread1650.i ], [ %.114771634.i, %bb.cn ], [ %.114771634.i, %bb.cm ], [ %i.bvo, %bb.ch ]
  %.11479.i = phi nsz float [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread.i ], [ %i.bvu, %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread1641.i ], [ %i.bwc, %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread1644.i ], [ %i.bwg, %bb.cl ], [ %.01478.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread1638.i ], [ %i.bwq, %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread1647.i ], [ %i.bxa, %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread1650.i ], [ %i.bxu, %bb.cn ], [ %i.bvs, %bb.cm ], [ %i.bvs, %bb.ch ]
  %i.bxv = bitcast float %.114771635.i to i32
  %i.bxw = lshr i32 %i.bxv, 16
  %i.bxx = trunc nuw i32 %i.bxw to i16
  store i16 %i.bxx, ptr %i.buw, align 2, !tbaa !595
  br i1 %i.buy, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i
  %i.bxy = bitcast float %.11479.i to i32
  %i.bxz = lshr i32 %i.bxy, 16
  %i.bya = trunc nuw i32 %i.bxz to i16
  %i.byb = getelementptr inbounds nuw i8, ptr %i.buw, i64 2
  store i16 %i.bya, ptr %i.byb, align 2, !tbaa !595
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i
  %i.byc = getelementptr inbounds [2 x i8], ptr %i.buw, i64 %i.bss
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %_ZN4ncnn3MatD2Ev.exit.i
  %.1.i = phi ptr [ %i.buw, %_ZN4ncnn3MatD2Ev.exit.i ], [ %i.byc, %bb.cp ] ; 2 uses
  %i.byd = or disjoint i32 %i.bur, 1
  %.not737.1.i = icmp slt i32 %i.byd, %i.ek
  br i1 %.not737.1.i, label %bb.cr, label %bb.cz

bb.cr:                                            ; preds = %bb.cq
  %i.bye = fadd fast float %i.btv, %i.bsw
  %i.byf = fsub fast float %i.bye, %i.btw
  %i.byg = fadd fast float %i.byf, %i.btx         ; 2 uses
  %i.byh = fadd fast float %i.btr, %i.byg
  %i.byi = fadd fast float %i.byh, %i.buf         ; 13 uses
  %i.byj = fsub fast float %i.byg, %i.buf
  %i.byk = fadd fast float %i.bul, %i.byj
  %i.byl = fadd fast float %i.byk, %i.bum         ; 13 uses
  switch i32 %i.eh, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.1.i [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread1641.1.i
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread1644.1.i
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread1638.1.i
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread1647.1.i
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread1650.1.i
    i32 6, label %bb.cs
  ]

bb.cs:                                            ; preds = %bb.cr
  %i.bym = load ptr, ptr %15, align 8, !tbaa !18  ; 2 uses
  %i.byn = load float, ptr %i.bym, align 4, !tbaa !39 ; 5 uses
  %i.byo = getelementptr inbounds nuw i8, ptr %i.bym, i64 4
  %i.byp = load float, ptr %i.byo, align 4, !tbaa !39 ; 3 uses
  %i.byq = fneg fast float %i.byp
  %i.byr = fdiv fast float %i.byq, %i.byn         ; 4 uses
  %i.bys = fcmp fast olt float %i.byi, %i.byr
  br i1 %i.bys, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread.1.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.byt = fdiv fast float 1.000000e+00, %i.byn
  %i.byu = fadd fast float %i.byr, %i.byt
  %i.byv = fcmp fast ogt float %i.byi, %i.byu
  br i1 %i.byv, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread.1.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.byw = fmul fast float %i.byn, %i.byi
  %i.byx = fadd fast float %i.byw, %i.byp
  %i.byy = fmul fast float %i.byx, %i.byi
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread.1.i: ; preds = %bb.cu, %bb.ct, %bb.cs
  %.114771634.1.i = phi float [ %i.byy, %bb.cu ], [ 0.000000e+00, %bb.cs ], [ %i.byi, %bb.ct ] ; 3 uses
  %i.byz = fcmp fast olt float %i.byl, %i.byr
  br i1 %i.byz, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.1.i, label %bb.cv

bb.cv:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread.1.i
  %i.bza = fdiv fast float 1.000000e+00, %i.byn
  %i.bzb = fadd fast float %i.byr, %i.bza
  %i.bzc = fcmp fast ogt float %i.byl, %i.bzb
  br i1 %i.bzc, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.1.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.bzd = fmul fast float %i.byn, %i.byl
  %i.bze = fadd fast float %i.bzd, %i.byp
  %i.bzf = fmul fast float %i.bze, %i.byl
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread1650.1.i: ; preds = %bb.cr
  %i.bzg = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.byi)
  %i.bzh = fadd fast float %i.bzg, 1.000000e+00
  %i.bzi = call fast float @llvm.log.f32(float %i.bzh)
  %i.bzj = call fast float @llvm.tanh.f32(float %i.bzi)
  %i.bzk = fmul fast float %i.bzj, %i.byi
  %i.bzl = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.byl)
  %i.bzm = fadd fast float %i.bzl, 1.000000e+00
  %i.bzn = call fast float @llvm.log.f32(float %i.bzm)
  %i.bzo = call fast float @llvm.tanh.f32(float %i.bzn)
  %i.bzp = fmul fast float %i.bzo, %i.byl
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread1647.1.i: ; preds = %bb.cr
  %.sroa.speculated960.1.i = call nnan ninf nsz float @llvm.minnum.f32(float %i.byi, float f0x42B0C0A5)
  %.sroa.speculated956.1.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated960.1.i, float f0xC2B0C0A5)
  %i.bzq = fneg fast float %.sroa.speculated956.1.i
  %i.bzr = call fast float @llvm.exp.f32(float %i.bzq)
  %i.bzs = fadd fast float %i.bzr, 1.000000e+00
  %i.bzt = fdiv fast float 1.000000e+00, %i.bzs
  %.sroa.speculated946.1.i = call nnan ninf nsz float @llvm.minnum.f32(float %i.byl, float f0x42B0C0A5)
  %.sroa.speculated.1.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated946.1.i, float f0xC2B0C0A5)
  %i.bzu = fneg fast float %.sroa.speculated.1.i
  %i.bzv = call fast float @llvm.exp.f32(float %i.bzu)
  %i.bzw = fadd fast float %i.bzv, 1.000000e+00
  %i.bzx = fdiv fast float 1.000000e+00, %i.bzw
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread1638.1.i: ; preds = %bb.cr
  %i.bzy = load ptr, ptr %15, align 8, !tbaa !18  ; 2 uses
  %i.bzz = load float, ptr %i.bzy, align 4, !tbaa !39 ; 2 uses
  %i.caa = getelementptr inbounds nuw i8, ptr %i.bzy, i64 4
  %i.cab = load float, ptr %i.caa, align 4, !tbaa !39 ; 4 uses
  %.01476.1.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.byi, float %i.bzz) ; 2 uses
  %i.cac = fcmp fast ogt float %.01476.1.i, %i.cab
  %.114771640.1.i = select i1 %i.cac, float %i.cab, float %.01476.1.i ; 2 uses
  %.01478.1.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.byl, float %i.bzz) ; 2 uses
  %i.cad = fcmp fast ogt float %.01478.1.i, %i.cab
  br i1 %i.cad, label %bb.cx, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.1.i

bb.cx:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread1638.1.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread1644.1.i: ; preds = %bb.cr
  %i.cae = load ptr, ptr %15, align 8, !tbaa !18
  %i.caf = load float, ptr %i.cae, align 4, !tbaa !39 ; 2 uses
  %i.cag = fcmp fast ogt float %i.byi, 0.000000e+00
  %i.cah = select fast i1 %i.cag, float 1.000000e+00, float %i.caf
  %i.cai = fmul fast float %i.cah, %i.byi
  %i.caj = fcmp fast ogt float %i.byl, 0.000000e+00
  %i.cak = select fast i1 %i.caj, float 1.000000e+00, float %i.caf
  %i.cal = fmul fast float %i.cak, %i.byl
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread1641.1.i: ; preds = %bb.cr
  %i.cam = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %i.byi, float 0.000000e+00)
  %i.can = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %i.byl, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit.1.i:       ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread1641.1.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread1644.1.i, %bb.cx, %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread1638.1.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread1647.1.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread1650.1.i, %bb.cw, %bb.cv, %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread.1.i, %bb.cr
  %.114771635.1.i = phi float [ %.114771634.1.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread.1.i ], [ %i.cam, %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread1641.1.i ], [ %i.cai, %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread1644.1.i ], [ %.114771640.1.i, %bb.cx ], [ %.114771640.1.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread1638.1.i ], [ %i.bzt, %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread1647.1.i ], [ %i.bzk, %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread1650.1.i ], [ %.114771634.1.i, %bb.cw ], [ %.114771634.1.i, %bb.cv ], [ %i.byi, %bb.cr ]
  %.11479.1.i = phi nsz float [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread.1.i ], [ %i.can, %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread1641.1.i ], [ %i.cal, %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread1644.1.i ], [ %i.cab, %bb.cx ], [ %.01478.1.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread1638.1.i ], [ %i.bzx, %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread1647.1.i ], [ %i.bzp, %_ZL13activation_ssfiRKN4ncnn3MatE.exit810.thread1650.1.i ], [ %i.bzf, %bb.cw ], [ %i.byl, %bb.cv ], [ %i.byl, %bb.cr ]
  %i.cao = bitcast float %.114771635.1.i to i32
  %i.cap = lshr i32 %i.cao, 16
  %i.caq = trunc nuw i32 %i.cap to i16
  store i16 %i.caq, ptr %.1.i, align 2, !tbaa !595
  br i1 %i.buy, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit.1.i
  %i.car = bitcast float %.11479.1.i to i32
  %i.cas = lshr i32 %i.car, 16
  %i.cat = trunc nuw i32 %i.cas to i16
  %i.cau = getelementptr inbounds nuw i8, ptr %.1.i, i64 2
  store i16 %i.cat, ptr %i.cau, align 2, !tbaa !595
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %_ZL13activation_ssfiRKN4ncnn3MatE.exit.1.i, %bb.cq
  %indvars.iv.next1836.i = add nuw nsw i64 %indvars.iv1835.i, 1 ; 2 uses
  %exitcond1839.not.i = icmp eq i64 %indvars.iv.next1836.i, %wide.trip.count1838.i
  br i1 %exitcond1839.not.i, label %._crit_edge1750.i, label %_ZN4ncnn3MatD2Ev.exit.i, !llvm.loop !2833

._crit_edge1750.i:                                ; preds = %bb.cz, %bb.cg
  %indvars.iv.next1841.i = add nsw i64 %indvars.iv1840.i, 1 ; 2 uses
  %exitcond1844.not.i = icmp eq i64 %indvars.iv.next1841.i, %i.dm
  br i1 %exitcond1844.not.i, label %_ZN4ncnnL48conv3x3s1_winograd23_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit, label %bb.ce, !llvm.loop !2834

.noexc:                                           ; preds = %.noexc.preheader, %.noexc
  %i.cav = phi i32 [ %i.ccs, %.noexc ], [ %.pre173, %.noexc.preheader ] ; 2 uses
  %i.caw = phi i32 [ %i.ccu, %.noexc ], [ %i.ef, %.noexc.preheader ]
  %.0153 = phi i32 [ %i.cct, %.noexc ], [ 0, %.noexc.preheader ] ; 4 uses
  %i.cax = sub nsw i32 %i.caw, %.0153
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.cav, i32 %i.cax)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #12
  %i.cay = load i32, ptr %3, align 4, !tbaa !67
  %i.caz = sdiv i32 %i.cf, %i.cay
  %i.cba = load ptr, ptr %10, align 8, !tbaa !18, !noalias !2835
  %i.cbb = load i64, ptr %i.ai, align 8, !tbaa !20, !noalias !2835
  %i.cbc = sext i32 %i.caz to i64
  %i.cbd = mul i64 %i.cbb, %i.cbc
  %i.cbe = load i64, ptr %i.aj, align 8, !tbaa !65, !noalias !2835 ; 3 uses
  %i.cbf = mul i64 %i.cbd, %i.cbe
  %i.cbg = getelementptr inbounds nuw i8, ptr %i.cba, i64 %i.cbf
  %i.cbh = load i32, ptr %i.ak, align 8, !tbaa !66, !noalias !2835
  %i.cbi = load ptr, ptr %i.al, align 8, !tbaa !17, !noalias !2835
  %i.cbj = sdiv i32 %.0153, %i.cav
  %i.cbk = sext i32 %i.cbj to i64                 ; 2 uses
  store ptr null, ptr %i.am, align 8, !tbaa !11, !alias.scope !2838
  store i64 %i.cbe, ptr %i.an, align 8, !tbaa !65, !alias.scope !2838
  store i32 %i.cbh, ptr %i.ao, align 8, !tbaa !66, !alias.scope !2838
  store ptr %i.cbi, ptr %i.ap, align 8, !tbaa !17, !alias.scope !2838
  %i.cbl = load <2 x i32>, ptr %i.ag, align 4, !tbaa !67, !noalias !2835
  %i.cbm = load i32, ptr %i.ah, align 8, !tbaa !76, !noalias !2835
  %i.cbn = load i32, ptr %i.ag, align 4, !tbaa !75, !noalias !2835
  %i.cbo = sext i32 %i.cbn to i64
  %i.cbp = sext i32 %i.cbm to i64
  %i.cbq = mul nsw i64 %i.cbp, %i.cbo             ; 2 uses
  %i.cbr = mul i64 %i.cbe, %i.cbq
  %i.cbs = mul i64 %i.cbr, %i.cbk
  %i.cbt = getelementptr inbounds nuw i8, ptr %i.cbg, i64 %i.cbs
  store ptr %i.cbt, ptr %17, align 8, !tbaa !18, !alias.scope !2838
  %i.cbu = shufflevector <2 x i32> %i.cbl, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.cbv = shufflevector <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, <4 x i32> %i.cbu, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i32> %i.cbv, ptr %i.aq, align 8, !tbaa !67, !alias.scope !2838
  store i32 1, ptr %i.ar, align 8, !tbaa !68, !alias.scope !2838
  store i64 %i.cbq, ptr %i.as, align 8, !tbaa !20, !alias.scope !2838
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #12
  %i.cbw = load i32, ptr %7, align 4, !tbaa !67
  %i.cbx = sdiv i32 %.047159, %i.cbw
  %i.cby = load ptr, ptr %11, align 8, !tbaa !18, !noalias !2841
  %i.cbz = load i64, ptr %i.av, align 8, !tbaa !20, !noalias !2841
  %i.cca = sext i32 %i.cbx to i64
  %i.ccb = mul i64 %i.cbz, %i.cca
  %i.ccc = load i64, ptr %i.aw, align 8, !tbaa !65, !noalias !2841 ; 3 uses
  %i.ccd = mul i64 %i.ccb, %i.ccc
  %i.cce = getelementptr inbounds nuw i8, ptr %i.cby, i64 %i.ccd
  %i.ccf = load i32, ptr %i.ax, align 8, !tbaa !66, !noalias !2841
  %i.ccg = load ptr, ptr %i.ay, align 8, !tbaa !17, !noalias !2841
  store ptr null, ptr %i.az, align 8, !tbaa !11
  store i64 %i.ccc, ptr %i.ba, align 8, !tbaa !65
  store i32 %i.ccf, ptr %i.bb, align 8, !tbaa !66
  store ptr %i.ccg, ptr %i.bc, align 8, !tbaa !17
  %i.cch = load <2 x i32>, ptr %i.at, align 4, !tbaa !67, !noalias !2841
  %i.cci = load i32, ptr %i.au, align 8, !tbaa !76, !noalias !2841
  %i.ccj = load i32, ptr %i.at, align 4, !tbaa !75, !noalias !2841
  %i.cck = sext i32 %i.ccj to i64
  %i.ccl = sext i32 %i.cci to i64
  %i.ccm = mul nsw i64 %i.ccl, %i.cck             ; 2 uses
  %i.ccn = mul i64 %i.ccc, %i.ccm
  %i.cco = mul i64 %i.ccn, %i.cbk
  %i.ccp = getelementptr inbounds nuw i8, ptr %i.cce, i64 %i.cco
  store ptr %i.ccp, ptr %18, align 8, !tbaa !18
  %i.ccq = shufflevector <2 x i32> %i.cch, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.ccr = shufflevector <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, <4 x i32> %i.ccq, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i32> %i.ccr, ptr %i.bd, align 8, !tbaa !67
  store i32 1, ptr %i.be, align 8, !tbaa !68
  store i64 %i.ccm, ptr %i.bf, align 8, !tbaa !20, !alias.scope !2844
  %.val = load ptr, ptr %16, align 8, !tbaa !18
  call fastcc void @_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %17, ptr noundef nonnull align 8 dereferenceable(72) %18, ptr %.val, i32 noundef 16, i32 noundef %.sroa.speculated124, i32 noundef %.sroa.speculated120, i32 noundef %.0153, i32 noundef %.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #12
  %i.ccs = load i32, ptr %9, align 4, !tbaa !67   ; 2 uses
  %i.cct = add nsw i32 %i.ccs, %.0153             ; 2 uses
  %i.ccu = load i32, ptr %8, align 4, !tbaa !67   ; 2 uses
  %i.ccv = icmp slt i32 %i.cct, %i.ccu
  br i1 %i.ccv, label %.noexc, label %._crit_edge, !llvm.loop !2847

_ZN4ncnnL48conv3x3s1_winograd23_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit: ; preds = %._crit_edge1750.i, %.preheader.i, %bb.m
  %i.ccw = load i32, ptr %7, align 4, !tbaa !67   ; 2 uses
  %i.ccx = add nsw i32 %i.ccw, %.047159           ; 2 uses
  %i.ccy = load i32, ptr %6, align 4, !tbaa !67   ; 2 uses
  %i.ccz = icmp slt i32 %i.ccx, %i.ccy
  br i1 %i.ccz, label %bb.l, label %._crit_edge162, !llvm.loop !2848

._crit_edge167:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %bb.da

bb.da:                                            ; preds = %._crit_edge167, %bb.a
  ret void

.loopexit:                                        ; preds = %._crit_edge, %bb.m
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.db

.loopexit.split-lp:                               ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.db

bb.db:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.cda = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.cda) #36
  unreachable
}

declare void @_ZN4ncnn58conv3x3s1_winograd23_transform_input_tile_bf16s_avx512bf16ERKNS_3MatERS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL47conv3x3s1_winograd23_transform_input_tile_bf16sERKNS_3MatERS0_iiiii.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12) #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ch

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.h = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !67
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !67
  %i.k = load i32, ptr %i.a, align 4, !tbaa !67   ; 2 uses
  %.not434 = icmp sgt i32 %i.k, %i.j
  br i1 %.not434, label %._crit_edge437, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.o = load i32, ptr %3, align 4, !tbaa !67     ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.split, label %._crit_edge437

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge
  %i.q = phi i32 [ %i.bgn, %._crit_edge ], [ %i.o, %.lr.ph ] ; 2 uses
  %.0435 = phi i32 [ %i.bgo, %._crit_edge ], [ %i.k, %.lr.ph ] ; 4 uses
  %i.r = shl nsw i32 %.0435, 4
  %i.s = icmp sgt i32 %i.q, 0
  br i1 %i.s, label %.noexc.lr.ph, label %._crit_edge

.noexc.lr.ph:                                     ; preds = %.lr.ph.split
  %i.t = shl i32 %.0435, 8
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %.thread418.3
  %indvars.iv = phi i64 [ 0, %.noexc.lr.ph ], [ %indvars.iv.next, %.thread418.3 ] ; 3 uses
  %i.u = load i32, ptr %4, align 4, !tbaa !67
  %i.v = load i32, ptr %5, align 4, !tbaa !67     ; 2 uses
  %i.w = load i32, ptr %7, align 4, !tbaa !67
  %i.x = add nsw i32 %i.w, %i.r
  %i.y = load i32, ptr %8, align 4, !tbaa !67     ; 5 uses
  %i.z = sdiv i32 %i.x, %i.y
  %i.aa = load i32, ptr %i.l, align 4, !tbaa !75, !noalias !2849
  %i.ab = load ptr, ptr %6, align 8, !tbaa !18, !noalias !2849
  %i.ac = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !2849
  %i.ad = sext i32 %i.z to i64
  %i.ae = mul i64 %i.ac, %i.ad
  %i.af = load i64, ptr %i.n, align 8, !tbaa !65, !noalias !2849 ; 2 uses
  %i.ag = mul i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ag
  %i.ai = sext i32 %i.aa to i64
  %i.aj = trunc nuw nsw i64 %indvars.iv to i32
  %i.ak = add nsw i32 %i.u, %i.aj                 ; 2 uses
  %i.al = srem i32 %i.ak, %i.v
  %i.am = sdiv i32 %i.ak, %i.v
  %i.an = shl nsw i32 %i.am, 1                    ; 2 uses
  %i.ao = sext i32 %i.an to i64                   ; 4 uses
  %i.ap = mul i64 %i.af, %i.ai
  %i.aq = mul i64 %i.ap, %i.ao
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aq
  %i.as = shl nsw i32 %i.al, 1                    ; 4 uses
  %i.at = mul nsw i32 %i.as, %i.y
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [2 x i8], ptr %i.ar, i64 %i.au ; 33 uses
  %i.aw = load i32, ptr %9, align 4, !tbaa !67    ; 2 uses
end_hunk_18
begin_hunk_19_@_ZN4ncnnL48conv3x3s1_winograd43_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_:bb.a
  %i.eua = load float, ptr %i.etz, align 4, !tbaa !39 ; 5 uses
  %i.eub = fneg fast float %i.eua
  %i.euc = fdiv fast float %i.eub, %i.ety         ; 8 uses
  %i.eud = extractelement <4 x float> %i.etw, i64 2 ; 5 uses
  %i.eue = fcmp fast olt float %i.eud, %i.euc
  br i1 %i.eue, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.thread.3, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.euf = fdiv fast float 1.000000e+00, %i.ety
  %i.eug = fadd fast float %i.euc, %i.euf
  %i.euh = fcmp fast ogt float %i.eud, %i.eug
  br i1 %i.euh, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.thread.3, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.eui = fmul fast float %i.ety, %i.eud
  %i.euj = fadd fast float %i.eui, %i.eua
  %i.euk = fmul fast float %i.euj, %i.eud
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.thread.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.thread.3: ; preds = %bb.fm, %bb.fl, %bb.fk
  %.125993311.3 = phi float [ %i.euk, %bb.fm ], [ 0.000000e+00, %bb.fk ], [ %i.eud, %bb.fl ]
  %i.eul = extractelement <4 x float> %i.etw, i64 1 ; 5 uses
  %i.eum = fcmp fast olt float %i.eul, %i.euc
  br i1 %i.eum, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1265.thread.3, label %bb.fn

bb.fn:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.thread.3
  %i.eun = fdiv fast float 1.000000e+00, %i.ety
  %i.euo = fadd fast float %i.euc, %i.eun
  %i.eup = fcmp fast ogt float %i.eul, %i.euo
  br i1 %i.eup, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1265.thread.3, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.euq = fmul fast float %i.ety, %i.eul
  %i.eur = fadd fast float %i.euq, %i.eua
  %i.eus = fmul fast float %i.eur, %i.eul
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1265.thread.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit1265.thread.3: ; preds = %bb.fo, %bb.fn, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.thread.3
  %.126013334.3 = phi float [ %i.eus, %bb.fo ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.thread.3 ], [ %i.eul, %bb.fn ]
  %i.eut = extractelement <4 x float> %i.etw, i64 0 ; 5 uses
  %i.euu = fcmp fast olt float %i.eut, %i.euc
  br i1 %i.euu, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1264.thread.3, label %bb.fp

bb.fp:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1265.thread.3
  %i.euv = fdiv fast float 1.000000e+00, %i.ety
  %i.euw = fadd fast float %i.euc, %i.euv
  %i.eux = fcmp fast ogt float %i.eut, %i.euw
  br i1 %i.eux, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1264.thread.3, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.euy = fmul fast float %i.ety, %i.eut
  %i.euz = fadd fast float %i.euy, %i.eua
  %i.eva = fmul fast float %i.euz, %i.eut
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1264.thread.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit1264.thread.3: ; preds = %bb.fq, %bb.fp, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1265.thread.3
  %.126033370.3 = phi float [ %i.eva, %bb.fq ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1265.thread.3 ], [ %i.eut, %bb.fp ]
  %i.evb = extractelement <4 x float> %i.etw, i64 3 ; 4 uses
  %i.evc = fcmp fast olt float %i.evb, %i.euc
  %i.evd = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %.126033370.3, i64 0
  %i.eve = insertelement <4 x float> %i.evd, float %.126013334.3, i64 1
  %i.evf = insertelement <4 x float> %i.eve, float %.125993311.3, i64 2 ; 3 uses
  br i1 %i.evc, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.3, label %bb.fr

bb.fr:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1264.thread.3
  %i.evg = fdiv fast float 1.000000e+00, %i.ety
  %i.evh = fadd fast float %i.euc, %i.evg
  %i.evi = fcmp fast ogt float %i.evb, %i.evh
  %i.evj = shufflevector <4 x float> %i.evf, <4 x float> %i.etw, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br i1 %i.evi, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.3, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.evk = fmul fast float %i.ety, %i.evb
  %i.evl = fadd fast float %i.evk, %i.eua
  %i.evm = fmul fast float %i.evl, %i.evb
  %i.evn = insertelement <4 x float> %i.evf, float %i.evm, i64 3
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.thread3327.3: ; preds = %bb.fj
  %i.evo = extractelement <4 x float> %i.etw, i64 2
  %i.evp = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.evo)
  %i.evq = extractelement <4 x float> %i.etw, i64 1
  %i.evr = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.evq)
  %i.evs = extractelement <4 x float> %i.etw, i64 0
  %i.evt = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.evs)
  %i.evu = extractelement <4 x float> %i.etw, i64 3
  %i.evv = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.evu)
  %i.evw = fadd fast float %i.evv, 1.000000e+00
  %i.evx = fadd fast float %i.evp, 1.000000e+00
  %i.evy = fadd fast float %i.evr, 1.000000e+00
  %i.evz = fadd fast float %i.evt, 1.000000e+00
  %i.ewa = tail call fast float @llvm.log.f32(float %i.evw)
  %i.ewb = tail call fast float @llvm.log.f32(float %i.evx)
  %i.ewc = tail call fast float @llvm.log.f32(float %i.evy)
  %i.ewd = tail call fast float @llvm.log.f32(float %i.evz)
  %i.ewe = tail call fast float @llvm.tanh.f32(float %i.ewa)
  %i.ewf = tail call fast float @llvm.tanh.f32(float %i.ewb)
  %i.ewg = tail call fast float @llvm.tanh.f32(float %i.ewc)
  %i.ewh = tail call fast float @llvm.tanh.f32(float %i.ewd)
  %i.ewi = insertelement <4 x float> poison, float %i.ewh, i64 0
  %i.ewj = insertelement <4 x float> %i.ewi, float %i.ewg, i64 1
  %i.ewk = insertelement <4 x float> %i.ewj, float %i.ewf, i64 2
  %i.ewl = insertelement <4 x float> %i.ewk, float %i.ewe, i64 3
  %i.ewm = fmul fast <4 x float> %i.ewl, %i.etw
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.thread3324.3: ; preds = %bb.fj
  %i.ewn = tail call nnan ninf nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.etw, <4 x float> splat (float f0x42B0C0A5))
  %i.ewo = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.ewn, <4 x float> splat (float f0xC2B0C0A5))
  %i.ewp = fneg fast <4 x float> %i.ewo
  %i.ewq = tail call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.ewp)
  %i.ewr = fadd fast <4 x float> %i.ewq, splat (float 1.000000e+00)
  %i.ews = fdiv fast <4 x float> splat (float 1.000000e+00), %i.ewr
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.thread3315.3: ; preds = %bb.fj
  %i.ewt = load ptr, ptr %8, align 8, !tbaa !18   ; 2 uses
  %i.ewu = load float, ptr %i.ewt, align 4, !tbaa !39 ; 4 uses
  %i.ewv = getelementptr inbounds nuw i8, ptr %i.ewt, i64 4
  %i.eww = load float, ptr %i.ewv, align 4, !tbaa !39 ; 8 uses
  %i.ewx = extractelement <4 x float> %i.etw, i64 2
  %.02598.3 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.ewx, float %i.ewu) ; 2 uses
  %i.ewy = fcmp fast ogt float %.02598.3, %i.eww
  %.125993317.3 = select i1 %i.ewy, float %i.eww, float %.02598.3
  %i.ewz = extractelement <4 x float> %i.etw, i64 1
  %.02600.3 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.ewz, float %i.ewu) ; 2 uses
  %i.exa = fcmp fast ogt float %.02600.3, %i.eww
  %.126013342.3 = select i1 %i.exa, float %i.eww, float %.02600.3
  %i.exb = extractelement <4 x float> %i.etw, i64 0
  %.02602.3 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.exb, float %i.ewu) ; 2 uses
  %i.exc = fcmp fast ogt float %.02602.3, %i.eww
  %.126033380.3 = select i1 %i.exc, float %i.eww, float %.02602.3
  %i.exd = extractelement <4 x float> %i.etw, i64 3
  %.02604.3 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.exd, float %i.ewu) ; 2 uses
  %i.exe = fcmp fast ogt float %.02604.3, %i.eww
  %i.exf = insertelement <4 x float> poison, float %.126033380.3, i64 0
  %i.exg = insertelement <4 x float> %i.exf, float %.126013342.3, i64 1
  %i.exh = insertelement <4 x float> %i.exg, float %.125993317.3, i64 2 ; 2 uses
  %i.exi = insertelement <4 x float> %i.exh, float %.02604.3, i64 3
  br i1 %i.exe, label %bb.ft, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.3

bb.ft:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.thread3315.3
  %i.exj = insertelement <4 x float> %i.exh, float %i.eww, i64 3
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.thread3321.3: ; preds = %bb.fj
  %i.exk = load ptr, ptr %8, align 8, !tbaa !18
  %i.exl = load float, ptr %i.exk, align 4, !tbaa !39
  %i.exm = fcmp fast ogt <4 x float> %i.etw, zeroinitializer
  %i.exn = insertelement <4 x float> poison, float %i.exl, i64 0
  %i.exo = shufflevector <4 x float> %i.exn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.exp = select <4 x i1> %i.exm, <4 x float> splat (float 1.000000e+00), <4 x float> %i.exo
  %i.exq = fmul fast <4 x float> %i.exp, %i.etw
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.thread3318.3: ; preds = %bb.fj
  %i.exr = tail call fast <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.etw, <4 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit.3:         ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.thread3318.3, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.thread3321.3, %bb.ft, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.thread3315.3, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.thread3324.3, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.thread3327.3, %bb.fs, %bb.fr, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1264.thread.3, %bb.fj
  %i.exs = phi <4 x float> [ %i.evf, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1264.thread.3 ], [ %i.exr, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.thread3318.3 ], [ %i.exq, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.thread3321.3 ], [ %i.exj, %bb.ft ], [ %i.exi, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.thread3315.3 ], [ %i.ews, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.thread3324.3 ], [ %i.ewm, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.thread3327.3 ], [ %i.evn, %bb.fs ], [ %i.evj, %bb.fr ], [ %i.etw, %bb.fj ] ; 4 uses
  %i.ext = bitcast <4 x float> %i.exs to <8 x i16>
  %i.exu = extractelement <8 x i16> %i.ext, i64 5
  store i16 %i.exu, ptr %.1.2, align 2, !tbaa !595
  br i1 %i.edp, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit.3
  %i.exv = bitcast <4 x float> %i.exs to <8 x i16>
  %i.exw = extractelement <8 x i16> %i.exv, i64 3
  %i.exx = getelementptr inbounds nuw i8, ptr %.1.2, i64 2
  store i16 %i.exw, ptr %i.exx, align 2, !tbaa !595
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %_ZL13activation_ssfiRKN4ncnn3MatE.exit.3
  br i1 %i.edr, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %i.exy = bitcast <4 x float> %i.exs to <8 x i16>
  %i.exz = extractelement <8 x i16> %i.exy, i64 1
  %i.eya = getelementptr inbounds nuw i8, ptr %.1.2, i64 4
  store i16 %i.exz, ptr %i.eya, align 2, !tbaa !595
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  br i1 %i.edt, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  %i.eyb = bitcast <4 x float> %i.exs to <8 x i16>
  %i.eyc = extractelement <8 x i16> %i.eyb, i64 7
  %i.eyd = getelementptr inbounds nuw i8, ptr %.1.2, i64 6
  store i16 %i.eyc, ptr %i.eyd, align 2, !tbaa !595
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fx, %bb.fy, %bb.fi
  %indvars.iv.next3601 = add nuw nsw i64 %indvars.iv3600, 1 ; 2 uses
  %exitcond3604.not = icmp eq i64 %indvars.iv.next3601, %wide.trip.count3603
  br i1 %exitcond3604.not, label %._crit_edge3510, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !2927

._crit_edge3510:                                  ; preds = %bb.fz, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %indvars.iv.next3606 = add nsw i64 %indvars.iv3605, 1 ; 2 uses
  %exitcond3609.not = icmp eq i64 %indvars.iv.next3606, %wide.trip.count3608
  br i1 %exitcond3609.not, label %.loopexit, label %bb.de, !llvm.loop !2928

.loopexit:                                        ; preds = %._crit_edge3510, %.preheader, %bb.b
  ret void
}

declare void @_ZN4ncnn58conv3x3s1_winograd43_transform_input_tile_bf16s_avx512bf16ERKNS_3MatERS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL47conv3x3s1_winograd43_transform_input_tile_bf16sERKNS_3MatERS0_iiiii.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree nonnull readnone align 4 captures(none) %9, ptr nofree nonnull readnone align 4 captures(none) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %13, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %14) #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.hj

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.h = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !67
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !67
  %i.k = load i32, ptr %i.a, align 4, !tbaa !67   ; 2 uses
  %.not616 = icmp sgt i32 %i.k, %i.j
  br i1 %.not616, label %._crit_edge619, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.o = load i32, ptr %3, align 4, !tbaa !67     ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.split, label %._crit_edge619

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge
  %i.q = phi i32 [ %i.ekj, %._crit_edge ], [ %i.o, %.lr.ph ] ; 2 uses
  %.0617 = phi i32 [ %i.ekk, %._crit_edge ], [ %i.k, %.lr.ph ] ; 4 uses
  %i.r = shl nsw i32 %.0617, 4
  %i.s = icmp sgt i32 %i.q, 0
  br i1 %i.s, label %.noexc.lr.ph, label %._crit_edge

.noexc.lr.ph:                                     ; preds = %.lr.ph.split
  %i.t = mul i32 %.0617, 576
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %.thread594.5
  %indvars.iv = phi i64 [ 0, %.noexc.lr.ph ], [ %indvars.iv.next, %.thread594.5 ] ; 3 uses
  %i.u = load i32, ptr %4, align 4, !tbaa !67
  %i.v = load i32, ptr %5, align 4, !tbaa !67     ; 2 uses
  %i.w = load i32, ptr %7, align 4, !tbaa !67
  %i.x = add nsw i32 %i.w, %i.r
  %i.y = load i32, ptr %8, align 4, !tbaa !67     ; 5 uses
  %i.z = sdiv i32 %i.x, %i.y
  %i.aa = load i32, ptr %i.l, align 4, !tbaa !75, !noalias !2929
  %i.ab = load ptr, ptr %6, align 8, !tbaa !18, !noalias !2929
  %i.ac = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !2929
  %i.ad = sext i32 %i.z to i64
  %i.ae = mul i64 %i.ac, %i.ad
  %i.af = load i64, ptr %i.n, align 8, !tbaa !65, !noalias !2929 ; 2 uses
  %i.ag = mul i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ag
  %i.ai = sext i32 %i.aa to i64
  %i.aj = trunc nuw nsw i64 %indvars.iv to i32
  %i.ak = add nsw i32 %i.u, %i.aj                 ; 2 uses
  %i.al = srem i32 %i.ak, %i.v
  %i.am = sdiv i32 %i.ak, %i.v
  %i.an = shl nsw i32 %i.am, 2                    ; 2 uses
  %i.ao = sext i32 %i.an to i64                   ; 6 uses
  %i.ap = mul i64 %i.af, %i.ai
  %i.aq = mul i64 %i.ap, %i.ao
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aq
  %i.as = shl nsw i32 %i.al, 2                    ; 6 uses
  %i.at = mul nsw i32 %i.as, %i.y
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [2 x i8], ptr %i.ar, i64 %i.au ; 41 uses
  %i.aw = load i32, ptr %11, align 4, !tbaa !67   ; 2 uses
  %i.ax = load i32, ptr %12, align 4, !tbaa !67   ; 24 uses
  %i.ay = mul nsw i32 %i.y, %i.ax
  %i.az = sext i32 %i.ay to i64                   ; 5 uses
  %i.ba = or disjoint i32 %i.as, 1                ; 24 uses
  %i.bb = or disjoint i32 %i.as, 2                ; 24 uses
  %i.bc = or disjoint i32 %i.as, 3                ; 24 uses
  %i.bd = add nsw i32 %i.as, 4                    ; 24 uses
  %i.be = add nsw i32 %i.as, 5                    ; 24 uses
  %i.bf = sext i32 %i.aw to i64                   ; 5 uses
  %i.bg = icmp slt i32 %i.an, %i.aw
  %i.bh = call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.y)
  %i.bi = icmp eq i32 %i.bh, 1
  %or.cond = select i1 %i.bg, i1 %i.bi, i1 false
  br i1 %or.cond, label %.split, label %.thread594

.split:                                           ; preds = %.noexc
  %i.bj = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.y, i1 true)
  switch i32 %i.bj, label %.thread594 [
    i32 4, label %bb.c
    i32 3, label %bb.m
    i32 2, label %bb.w
    i32 0, label %bb.ag
  ]

bb.c:                                             ; preds = %.split
  %i.bk = load <16 x i16>, ptr %i.av, align 32, !tbaa !100 ; 2 uses
  %i.bl = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.bk, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.bm = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.bk, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bn = shufflevector <16 x i16> %i.bl, <16 x i16> %i.bm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bo = shufflevector <16 x i16> %i.bl, <16 x i16> %i.bm, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bp = bitcast <16 x i16> %i.bn to <8 x i32>
  %i.bq = bitcast <16 x i16> %i.bo to <8 x i32>
  %i.br = shufflevector <8 x i32> %i.bp, <8 x i32> %i.bq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bs = bitcast <16 x i32> %i.br to <16 x float> ; 2 uses
  %i.bt = icmp slt i32 %i.ba, %i.ax
  br i1 %i.bt, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bu = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.bv = load <16 x i16>, ptr %i.bu, align 32, !tbaa !100 ; 2 uses
  %i.bw = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.bv, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.bx = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.bv, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.by = shufflevector <16 x i16> %i.bw, <16 x i16> %i.bx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bz = shufflevector <16 x i16> %i.bw, <16 x i16> %i.bx, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ca = bitcast <16 x i16> %i.by to <8 x i32>
  %i.cb = bitcast <16 x i16> %i.bz to <8 x i32>
  %i.cc = shufflevector <8 x i32> %i.ca, <8 x i32> %i.cb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cd = bitcast <16 x i32> %i.cc to <16 x float>
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0312 = phi nsz <16 x float> [ %i.cd, %bb.d ], [ zeroinitializer, %bb.c ] ; 2 uses
  %i.ce = icmp slt i32 %i.bb, %i.ax
  br i1 %i.ce, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cf = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  %i.cg = load <16 x i16>, ptr %i.cf, align 32, !tbaa !100 ; 2 uses
  %i.ch = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.cg, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.ci = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.cg, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cj = shufflevector <16 x i16> %i.ch, <16 x i16> %i.ci, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ck = shufflevector <16 x i16> %i.ch, <16 x i16> %i.ci, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.cl = bitcast <16 x i16> %i.cj to <8 x i32>
  %i.cm = bitcast <16 x i16> %i.ck to <8 x i32>
  %i.cn = shufflevector <8 x i32> %i.cl, <8 x i32> %i.cm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.co = bitcast <16 x i32> %i.cn to <16 x float>
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0316 = phi nsz <16 x float> [ %i.co, %bb.f ], [ zeroinitializer, %bb.e ] ; 2 uses
  %i.cp = icmp slt i32 %i.bc, %i.ax
  br i1 %i.cp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cq = getelementptr inbounds nuw i8, ptr %i.av, i64 96
  %i.cr = load <16 x i16>, ptr %i.cq, align 32, !tbaa !100 ; 2 uses
  %i.cs = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.cr, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.ct = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.cr, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cu = shufflevector <16 x i16> %i.cs, <16 x i16> %i.ct, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.cv = shufflevector <16 x i16> %i.cs, <16 x i16> %i.ct, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.cw = bitcast <16 x i16> %i.cu to <8 x i32>
  %i.cx = bitcast <16 x i16> %i.cv to <8 x i32>
  %i.cy = shufflevector <8 x i32> %i.cw, <8 x i32> %i.cx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cz = bitcast <16 x i32> %i.cy to <16 x float>
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0324 = phi nsz <16 x float> [ %i.cz, %bb.h ], [ zeroinitializer, %bb.g ] ; 2 uses
  %i.da = icmp slt i32 %i.bd, %i.ax
  br i1 %i.da, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.av, i64 128
  %i.dc = load <16 x i16>, ptr %i.db, align 32, !tbaa !100 ; 2 uses
  %i.dd = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.dc, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.de = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.dc, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.df = shufflevector <16 x i16> %i.dd, <16 x i16> %i.de, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.dg = shufflevector <16 x i16> %i.dd, <16 x i16> %i.de, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dh = bitcast <16 x i16> %i.df to <8 x i32>
  %i.di = bitcast <16 x i16> %i.dg to <8 x i32>
  %i.dj = shufflevector <8 x i32> %i.dh, <8 x i32> %i.di, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dk = bitcast <16 x i32> %i.dj to <16 x float>
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0332 = phi nsz <16 x float> [ %i.dk, %bb.j ], [ zeroinitializer, %bb.i ] ; 2 uses
  %i.dl = icmp slt i32 %i.be, %i.ax
  br i1 %i.dl, label %bb.l, label %.thread594

bb.l:                                             ; preds = %bb.k
  %i.dm = getelementptr inbounds nuw i8, ptr %i.av, i64 160
end_hunk_19
begin_hunk_20_@_ZN4ncnnL48conv3x3s1_winograd63_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_:bb.a
  %i.glg = insertelement <4 x float> poison, float %i.glc, i64 0
  %i.glh = insertelement <4 x float> %i.glg, float %i.gld, i64 1
  %i.gli = insertelement <4 x float> %i.glh, float %i.gle, i64 2
  %i.glj = insertelement <4 x float> %i.gli, float %i.glf, i64 3
  %i.glk = fmul fast <4 x float> %i.glj, %i.gii
  %i.gll = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.gio)
  %i.glm = fadd fast float %i.gll, 1.000000e+00
  %i.gln = tail call fast float @llvm.log.f32(float %i.glm)
  %i.glo = tail call fast float @llvm.tanh.f32(float %i.gln)
  %i.glp = fmul fast float %i.glo, %i.gio
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.fk:                                            ; preds = %bb.fj
  %i.glq = load ptr, ptr %8, align 8, !tbaa !18   ; 2 uses
  %i.glr = load float, ptr %i.glq, align 4, !tbaa !39 ; 13 uses
  %i.gls = getelementptr inbounds nuw i8, ptr %i.glq, i64 4
  %i.glt = load float, ptr %i.gls, align 4, !tbaa !39 ; 7 uses
  %i.glu = fneg fast float %i.glt
  %i.glv = fdiv fast float %i.glu, %i.glr         ; 12 uses
  %i.glw = fcmp fast olt float %i.gin, %i.glv
  br i1 %i.glw, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1758.thread, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.glx = fdiv fast float 1.000000e+00, %i.glr
  %i.gly = fadd fast float %i.glv, %i.glx
  %i.glz = fcmp fast ogt float %i.gin, %i.gly
  br i1 %i.glz, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1758.thread, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.gma = fmul fast float %i.glr, %i.gin
  %i.gmb = fadd fast float %i.gma, %i.glt
  %i.gmc = fmul fast float %i.gmb, %i.gin
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1758.thread

_ZL13activation_ssfiRKN4ncnn3MatE.exit1758.thread: ; preds = %bb.fm, %bb.fl, %bb.fk
  %.137325363 = phi float [ %i.gmc, %bb.fm ], [ 0.000000e+00, %bb.fk ], [ %i.gin, %bb.fl ] ; 3 uses
  %i.gmd = extractelement <4 x float> %i.gii, i64 0 ; 5 uses
  %i.gme = fcmp fast olt float %i.gmd, %i.glv
  br i1 %i.gme, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1757.thread, label %bb.fn

bb.fn:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1758.thread
  %i.gmf = fdiv fast float 1.000000e+00, %i.glr
  %i.gmg = fadd fast float %i.glv, %i.gmf
  %i.gmh = fcmp fast ogt float %i.gmd, %i.gmg
  br i1 %i.gmh, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1757.thread, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.gmi = fmul fast float %i.glr, %i.gmd
  %i.gmj = fadd fast float %i.gmi, %i.glt
  %i.gmk = fmul fast float %i.gmj, %i.gmd
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1757.thread

_ZL13activation_ssfiRKN4ncnn3MatE.exit1757.thread: ; preds = %bb.fo, %bb.fn, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1758.thread
  %.137345386 = phi float [ %i.gmk, %bb.fo ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1758.thread ], [ %i.gmd, %bb.fn ]
  %i.gml = extractelement <4 x float> %i.gii, i64 1 ; 5 uses
  %i.gmm = fcmp fast olt float %i.gml, %i.glv
  br i1 %i.gmm, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1756.thread, label %bb.fp

bb.fp:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1757.thread
  %i.gmn = fdiv fast float 1.000000e+00, %i.glr
  %i.gmo = fadd fast float %i.glv, %i.gmn
  %i.gmp = fcmp fast ogt float %i.gml, %i.gmo
  br i1 %i.gmp, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1756.thread, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.gmq = fmul fast float %i.glr, %i.gml
  %i.gmr = fadd fast float %i.gmq, %i.glt
  %i.gms = fmul fast float %i.gmr, %i.gml
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1756.thread

_ZL13activation_ssfiRKN4ncnn3MatE.exit1756.thread: ; preds = %bb.fq, %bb.fp, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1757.thread
  %.137365422 = phi float [ %i.gms, %bb.fq ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1757.thread ], [ %i.gml, %bb.fp ]
  %i.gmt = extractelement <4 x float> %i.gii, i64 2 ; 5 uses
  %i.gmu = fcmp fast olt float %i.gmt, %i.glv
  br i1 %i.gmu, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1755.thread, label %bb.fr

bb.fr:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1756.thread
  %i.gmv = fdiv fast float 1.000000e+00, %i.glr
  %i.gmw = fadd fast float %i.glv, %i.gmv
  %i.gmx = fcmp fast ogt float %i.gmt, %i.gmw
  br i1 %i.gmx, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1755.thread, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.gmy = fmul fast float %i.glr, %i.gmt
  %i.gmz = fadd fast float %i.gmy, %i.glt
  %i.gna = fmul fast float %i.gmz, %i.gmt
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1755.thread

_ZL13activation_ssfiRKN4ncnn3MatE.exit1755.thread: ; preds = %bb.fs, %bb.fr, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1756.thread
  %.137385471 = phi float [ %i.gna, %bb.fs ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1756.thread ], [ %i.gmt, %bb.fr ]
  %i.gnb = extractelement <4 x float> %i.gii, i64 3 ; 5 uses
  %i.gnc = fcmp fast olt float %i.gnb, %i.glv
  br i1 %i.gnc, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1754.thread, label %bb.ft

bb.ft:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1755.thread
  %i.gnd = fdiv fast float 1.000000e+00, %i.glr
  %i.gne = fadd fast float %i.glv, %i.gnd
  %i.gnf = fcmp fast ogt float %i.gnb, %i.gne
  br i1 %i.gnf, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1754.thread, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.gng = fmul fast float %i.glr, %i.gnb
  %i.gnh = fadd fast float %i.gng, %i.glt
  %i.gni = fmul fast float %i.gnh, %i.gnb
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1754.thread

bb.fv:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1758.thread5367
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit1754.thread: ; preds = %bb.fu, %bb.ft, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1755.thread
  %.137405533 = phi float [ %i.gni, %bb.fu ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1755.thread ], [ %i.gnb, %bb.ft ]
  %i.gnj = fcmp fast olt float %i.gio, %i.glv
  %i.gnk = insertelement <4 x float> poison, float %.137345386, i64 0
  %i.gnl = insertelement <4 x float> %i.gnk, float %.137365422, i64 1
  %i.gnm = insertelement <4 x float> %i.gnl, float %.137385471, i64 2
  %i.gnn = insertelement <4 x float> %i.gnm, float %.137405533, i64 3 ; 3 uses
  br i1 %i.gnj, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.fw

bb.fw:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1754.thread
  %i.gno = fdiv fast float 1.000000e+00, %i.glr
  %i.gnp = fadd fast float %i.glv, %i.gno
  %i.gnq = fcmp fast ogt float %i.gio, %i.gnp
  br i1 %i.gnq, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.gnr = fmul fast float %i.glr, %i.gio
  %i.gns = fadd fast float %i.gnr, %i.glt
  %i.gnt = fmul fast float %i.gns, %i.gio
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.fj, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1754.thread, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1758.thread5370, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1758.thread5373, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1758.thread5367, %bb.fv, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1758.thread5376, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1758.thread5379, %bb.fw, %bb.fx
  %.1373253645385542154685530 = phi float [ %.137325363, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1754.thread ], [ %i.gip, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1758.thread5370 ], [ %i.gix, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1758.thread5373 ], [ %.137325369, %bb.fv ], [ %.137325369, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1758.thread5367 ], [ %i.gjw, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1758.thread5376 ], [ %i.gkl, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1758.thread5379 ], [ %.137325363, %bb.fx ], [ %.137325363, %bb.fw ], [ %i.gin, %bb.fj ]
  %.13742 = phi nsz float [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1754.thread ], [ %i.gir, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1758.thread5370 ], [ %i.gjf, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1758.thread5373 ], [ %i.gjj, %bb.fv ], [ %.03741, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1758.thread5367 ], [ %i.gkg, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1758.thread5376 ], [ %i.glp, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1758.thread5379 ], [ %i.gnt, %bb.fx ], [ %i.gio, %bb.fw ], [ %i.gio, %bb.fj ]
  %i.gnu = phi <4 x float> [ %i.gnn, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1754.thread ], [ %i.giq, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1758.thread5370 ], [ %i.gjc, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1758.thread5373 ], [ %i.gjr, %bb.fv ], [ %i.gjr, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1758.thread5367 ], [ %i.gkc, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1758.thread5376 ], [ %i.glk, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1758.thread5379 ], [ %i.gnn, %bb.fx ], [ %i.gnn, %bb.fw ], [ %i.gii, %bb.fj ] ; 4 uses
  %i.gnv = bitcast float %.1373253645385542154685530 to i32
  %i.gnw = lshr i32 %i.gnv, 16
  %i.gnx = trunc nuw i32 %i.gnw to i16
  store i16 %i.gnx, ptr %.015815715, align 2, !tbaa !595
  br i1 %i.gfc, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %i.gny = bitcast <4 x float> %i.gnu to <8 x i16>
  %i.gnz = extractelement <8 x i16> %i.gny, i64 1
  %i.goa = getelementptr inbounds nuw i8, ptr %.015815715, i64 2
  store i16 %i.gnz, ptr %i.goa, align 2, !tbaa !595
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  br i1 %i.gfe, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.gob = bitcast <4 x float> %i.gnu to <8 x i16>
  %i.goc = extractelement <8 x i16> %i.gob, i64 3
  %i.god = getelementptr inbounds nuw i8, ptr %.015815715, i64 4
  store i16 %i.goc, ptr %i.god, align 2, !tbaa !595
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  br i1 %i.gfg, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.goe = bitcast <4 x float> %i.gnu to <8 x i16>
  %i.gof = extractelement <8 x i16> %i.goe, i64 5
  %i.gog = getelementptr inbounds nuw i8, ptr %.015815715, i64 6
  store i16 %i.gof, ptr %i.gog, align 2, !tbaa !595
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  br i1 %i.gfi, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.goh = bitcast <4 x float> %i.gnu to <8 x i16>
  %i.goi = extractelement <8 x i16> %i.goh, i64 7
  %i.goj = getelementptr inbounds nuw i8, ptr %.015815715, i64 8
  store i16 %i.goi, ptr %i.goj, align 2, !tbaa !595
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gd
  br i1 %i.gfk, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  %i.gok = bitcast float %.13742 to i32
  %i.gol = lshr i32 %i.gok, 16
  %i.gom = trunc nuw i32 %i.gol to i16
  %i.gon = getelementptr inbounds nuw i8, ptr %.015815715, i64 10
  store i16 %i.gom, ptr %i.gon, align 2, !tbaa !595
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %i.goo = getelementptr inbounds [2 x i8], ptr %.015815715, i64 %i.fld
  br label %bb.gi

bb.gi:                                            ; preds = %bb.fi, %bb.gh
  %.1 = phi ptr [ %.015815715, %bb.fi ], [ %i.goo, %bb.gh ]
  %indvars.iv.next5807 = add nuw nsw i64 %indvars.iv5806, 1 ; 2 uses
  %exitcond5809.not = icmp eq i64 %indvars.iv.next5807, 6
  br i1 %exitcond5809.not, label %bb.fh, label %bb.fi, !llvm.loop !3016

._crit_edge5720:                                  ; preds = %bb.fh, %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  %indvars.iv.next5816 = add nsw i64 %indvars.iv5815, 1 ; 2 uses
  %exitcond5819.not = icmp eq i64 %indvars.iv.next5816, %wide.trip.count5818
  br i1 %exitcond5819.not, label %.loopexit, label %bb.fc, !llvm.loop !3017

.loopexit:                                        ; preds = %._crit_edge5720, %.preheader, %bb.b
  ret void
}

declare void @_ZN4ncnn58conv3x3s1_winograd63_transform_input_tile_bf16s_avx512bf16ERKNS_3MatERS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL47conv3x3s1_winograd63_transform_input_tile_bf16sERKNS_3MatERS0_iiiii.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12) #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca [8 x [8 x [16 x float]]], align 64 ; 67 uses
  %i.f = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.np

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.h, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.i = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !67
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 3 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !67
  %i.l = load i32, ptr %i.a, align 4, !tbaa !67   ; 2 uses
  %.not867 = icmp sgt i32 %i.l, %i.k
  br i1 %.not867, label %._crit_edge870, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 512
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 1024
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 1536
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 2048
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 2560
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 3072
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 3584
  %i.w = load i32, ptr %3, align 4, !tbaa !67     ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.split.preheader, label %._crit_edge870

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 576
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 1088
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 1600
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 2112
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 2624
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 3136
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 3648
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 640
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 1152
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 1664
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 2176
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 2688
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 3200
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 3712
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 704
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 1216
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 1728
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 2240
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 2752
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 3264
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 3776
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 768
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 1280
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 1792
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 2304
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 2816
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 3328
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 3840
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 320
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 832
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 1344
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 1856
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 2368
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 2880
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 3392
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 3904
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 384
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 896
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 1408
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 1920
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 2432
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 2944
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 3456
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 3968
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 448
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 960
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 1472
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 1984
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 2496
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 3008
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 3520
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 4032
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %._crit_edge
  %i.cc = phi i32 [ %i.hze, %._crit_edge ], [ %i.w, %.lr.ph.split.preheader ] ; 2 uses
  %.0868 = phi i32 [ %i.hzf, %._crit_edge ], [ %i.l, %.lr.ph.split.preheader ] ; 4 uses
  %i.cd = shl nsw i32 %.0868, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.ce = icmp sgt i32 %i.cc, 0
  br i1 %i.ce, label %.noexc.lr.ph, label %._crit_edge

.noexc.lr.ph:                                     ; preds = %.lr.ph.split
  %i.cf = shl i32 %.0868, 10
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %bb.nn
  %indvars.iv874 = phi i64 [ 0, %.noexc.lr.ph ], [ %indvars.iv.next875, %bb.nn ] ; 3 uses
  %i.cg = load i32, ptr %4, align 4, !tbaa !67
  %i.ch = load i32, ptr %5, align 4, !tbaa !67    ; 2 uses
  %i.ci = load i32, ptr %7, align 4, !tbaa !67
  %i.cj = add nsw i32 %i.ci, %i.cd
  %i.ck = load i32, ptr %8, align 4, !tbaa !67    ; 5 uses
  %i.cl = sdiv i32 %i.cj, %i.ck
  %i.cm = load i32, ptr %i.m, align 4, !tbaa !75, !noalias !3018
  %i.cn = load ptr, ptr %6, align 8, !tbaa !18, !noalias !3018
  %i.co = load i64, ptr %i.n, align 8, !tbaa !20, !noalias !3018
  %i.cp = sext i32 %i.cl to i64
  %i.cq = mul i64 %i.co, %i.cp
  %i.cr = load i64, ptr %i.o, align 8, !tbaa !65, !noalias !3018 ; 2 uses
  %i.cs = mul i64 %i.cq, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cs
  %i.cu = sext i32 %i.cm to i64
  %i.cv = trunc nuw nsw i64 %indvars.iv874 to i32
  %i.cw = add nsw i32 %i.cg, %i.cv                ; 2 uses
  %i.cx = srem i32 %i.cw, %i.ch
  %i.cy = sdiv i32 %i.cw, %i.ch
  %i.cz = mul nsw i32 %i.cy, 6                    ; 2 uses
  %i.da = sext i32 %i.cz to i64                   ; 8 uses
  %i.db = mul i64 %i.cr, %i.cu
  %i.dc = mul i64 %i.db, %i.da
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.dc
  %i.de = mul nsw i32 %i.cx, 6                    ; 8 uses
  %i.df = mul nsw i32 %i.de, %i.ck
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [2 x i8], ptr %i.dd, i64 %i.dg ; 46 uses
  %i.di = load i32, ptr %9, align 4, !tbaa !67    ; 2 uses
  %i.dj = load i32, ptr %10, align 4, !tbaa !67   ; 22 uses
  %i.dk = mul nsw i32 %i.ck, %i.dj
  %i.dl = sext i32 %i.dk to i64                   ; 7 uses
  %i.dm = or disjoint i32 %i.de, 1                ; 32 uses
  %i.dn = add nsw i32 %i.de, 2                    ; 32 uses
  %i.do = add nsw i32 %i.de, 3                    ; 32 uses
  %i.dp = add nsw i32 %i.de, 4                    ; 32 uses
  %i.dq = add nsw i32 %i.de, 5                    ; 32 uses
  %i.dr = add nsw i32 %i.de, 6                    ; 32 uses
  %i.ds = add nsw i32 %i.de, 7                    ; 32 uses
  %i.dt = sext i32 %i.di to i64                   ; 7 uses
  %i.du = icmp slt i32 %i.cz, %i.di
  %i.dv = call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.ck)
  %i.dw = icmp eq i32 %i.dv, 1
  %or.cond = select i1 %i.du, i1 %i.dw, i1 false
  br i1 %or.cond, label %.split, label %.thread839

.split:                                           ; preds = %.noexc
  %i.dx = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ck, i1 true)
  switch i32 %i.dx, label %.thread839 [
    i32 4, label %bb.c
    i32 3, label %bb.q
    i32 2, label %bb.ae
    i32 0, label %bb.as
  ]

bb.c:                                             ; preds = %.split
  %i.dy = load <16 x i16>, ptr %i.dh, align 32, !tbaa !100 ; 2 uses
  %i.dz = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.dy, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.ea = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.dy, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.eb = shufflevector <16 x i16> %i.dz, <16 x i16> %i.ea, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ec = shufflevector <16 x i16> %i.dz, <16 x i16> %i.ea, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ed = bitcast <16 x i16> %i.eb to <8 x i32>
  %i.ee = bitcast <16 x i16> %i.ec to <8 x i32>
  %i.ef = shufflevector <8 x i32> %i.ed, <8 x i32> %i.ee, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.eg = bitcast <16 x i32> %i.ef to <16 x float> ; 2 uses
  %i.eh = icmp slt i32 %i.dm, %i.dj
  br i1 %i.eh, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.ej = load <16 x i16>, ptr %i.ei, align 32, !tbaa !100 ; 2 uses
  %i.ek = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.ej, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
end_hunk_20
begin_hunk_21_@_ZN4ncnnL29convolution_im2col_gemm_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_iRKNS_6OptionE.omp_outlined:bb.a
  %i.bng = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx465.i.i.3 = shl i64 %i.bng, 4
  %i.bnh = getelementptr inbounds nuw i8, ptr %i.bnd, i64 %.idx465.i.i.3 ; 2 uses
  %niter262.next.3 = add i32 %niter262, 4         ; 2 uses
  %niter262.ncmp.3 = icmp eq i32 %niter262.next.3, %unroll_iter261
  br i1 %niter262.ncmp.3, label %.loopexit.i.i.loopexit194.unr-lcssa, label %.lr.ph735.i.i, !llvm.loop !3088

_ZN4ncnn3MatD2Ev.exit491.i.i:                     ; preds = %.split853.i.i
  br i1 %i.bkw, label %.lr.ph740.preheader.i.i, label %.loopexit.i.i

.lr.ph740.preheader.i.i:                          ; preds = %_ZN4ncnn3MatD2Ev.exit491.i.i
  %i.bni = load ptr, ptr %9, align 8, !tbaa !18, !noalias !3089
  %i.bnj = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !3089
  %i.bnk = mul i64 %i.bnj, %i.bku
  %i.bnl = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !3089
  %i.bnm = mul i64 %i.bnk, %i.bnl
  %i.bnn = getelementptr inbounds nuw i8, ptr %i.bni, i64 %i.bnm
  %i.bno = add nsw i64 %indvars.iv790.i.i, %i.bkz
  %.idx810.i.i = shl nsw i64 %i.bno, 3
  %i.bnp = getelementptr inbounds i8, ptr %i.bnn, i64 %.idx810.i.i ; 2 uses
  br i1 %i.blj, label %.lr.ph740.i.i.epil.preheader, label %.lr.ph740.i.i

.lr.ph740.i.i:                                    ; preds = %.lr.ph740.preheader.i.i, %.lr.ph740.i.i
  %.0431738.i.i = phi ptr [ %i.bof, %.lr.ph740.i.i ], [ %i.bnp, %.lr.ph740.preheader.i.i ] ; 2 uses
  %.32737.i.i = phi ptr [ %i.bod, %.lr.ph740.i.i ], [ %.27748.i.i, %.lr.ph740.preheader.i.i ] ; 5 uses
  %niter255 = phi i32 [ %niter255.next.3, %.lr.ph740.i.i ], [ 0, %.lr.ph740.preheader.i.i ]
  %i.bnq = load i64, ptr %.0431738.i.i, align 1, !tbaa !100
  store i64 %i.bnq, ptr %.32737.i.i, align 1, !tbaa !100
  %i.bnr = getelementptr inbounds nuw i8, ptr %.32737.i.i, i64 8
  %i.bns = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx.i.i = shl i64 %i.bns, 3
  %i.bnt = getelementptr inbounds nuw i8, ptr %.0431738.i.i, i64 %.idx.i.i ; 2 uses
  %i.bnu = load i64, ptr %i.bnt, align 1, !tbaa !100
  store i64 %i.bnu, ptr %i.bnr, align 1, !tbaa !100
  %i.bnv = getelementptr inbounds nuw i8, ptr %.32737.i.i, i64 16
  %i.bnw = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx.i.i.1 = shl i64 %i.bnw, 3
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.bnt, i64 %.idx.i.i.1 ; 2 uses
  %i.bny = load i64, ptr %i.bnx, align 1, !tbaa !100
  store i64 %i.bny, ptr %i.bnv, align 1, !tbaa !100
  %i.bnz = getelementptr inbounds nuw i8, ptr %.32737.i.i, i64 24
  %i.boa = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx.i.i.2 = shl i64 %i.boa, 3
  %i.bob = getelementptr inbounds nuw i8, ptr %i.bnx, i64 %.idx.i.i.2 ; 2 uses
  %i.boc = load i64, ptr %i.bob, align 1, !tbaa !100
  store i64 %i.boc, ptr %i.bnz, align 1, !tbaa !100
  %i.bod = getelementptr inbounds nuw i8, ptr %.32737.i.i, i64 32 ; 3 uses
  %i.boe = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx.i.i.3 = shl i64 %i.boe, 3
  %i.bof = getelementptr inbounds nuw i8, ptr %i.bob, i64 %.idx.i.i.3 ; 2 uses
  %niter255.next.3 = add i32 %niter255, 4         ; 2 uses
  %niter255.ncmp.3 = icmp eq i32 %niter255.next.3, %unroll_iter254
  br i1 %niter255.ncmp.3, label %.loopexit.i.i.loopexit195.unr-lcssa, label %.lr.ph740.i.i, !llvm.loop !3092

_ZN4ncnn3MatD2Ev.exit.i.i:                        ; preds = %.split853.i.i
  br i1 %i.bky, label %.lr.ph745.i.i, label %.loopexit.i.i

.lr.ph745.i.i:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit.i.i
  %i.bog = load ptr, ptr %9, align 8, !tbaa !18, !noalias !3093
  %i.boh = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !3093 ; 10 uses
  %i.boi = mul i64 %i.boh, %i.bkx
  %i.boj = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !3093
  %i.bok = mul i64 %i.boi, %i.boj
  %i.bol = getelementptr inbounds nuw i8, ptr %i.bog, i64 %i.bok
  %i.bom = getelementptr [2 x i8], ptr %i.bol, i64 %indvars.iv790.i.i
  %i.bon = getelementptr [2 x i8], ptr %i.bom, i64 %i.bkz ; 2 uses
  br i1 %i.bli, label %.epil.preheader, label %.lr.ph745.i.i.new

.lr.ph745.i.i.new:                                ; preds = %.lr.ph745.i.i, %.lr.ph745.i.i.new
  %.0429743.i.i = phi ptr [ %i.bpl, %.lr.ph745.i.i.new ], [ %i.bon, %.lr.ph745.i.i ] ; 2 uses
  %.34742.i.i = phi ptr [ %i.bpk, %.lr.ph745.i.i.new ], [ %.27748.i.i, %.lr.ph745.i.i ] ; 9 uses
  %niter248 = phi i32 [ %niter248.next.7, %.lr.ph745.i.i.new ], [ 0, %.lr.ph745.i.i ]
  %i.boo = load i16, ptr %.0429743.i.i, align 2, !tbaa !595
  store i16 %i.boo, ptr %.34742.i.i, align 2, !tbaa !595
  %i.bop = getelementptr inbounds nuw i8, ptr %.34742.i.i, i64 2
  %i.boq = getelementptr inbounds nuw [2 x i8], ptr %.0429743.i.i, i64 %i.boh ; 2 uses
  %i.bor = load i16, ptr %i.boq, align 2, !tbaa !595
  store i16 %i.bor, ptr %i.bop, align 2, !tbaa !595
  %i.bos = getelementptr inbounds nuw i8, ptr %.34742.i.i, i64 4
  %i.bot = getelementptr inbounds nuw [2 x i8], ptr %i.boq, i64 %i.boh ; 2 uses
  %i.bou = load i16, ptr %i.bot, align 2, !tbaa !595
  store i16 %i.bou, ptr %i.bos, align 2, !tbaa !595
  %i.bov = getelementptr inbounds nuw i8, ptr %.34742.i.i, i64 6
  %i.bow = getelementptr inbounds nuw [2 x i8], ptr %i.bot, i64 %i.boh ; 2 uses
  %i.box = load i16, ptr %i.bow, align 2, !tbaa !595
  store i16 %i.box, ptr %i.bov, align 2, !tbaa !595
  %i.boy = getelementptr inbounds nuw i8, ptr %.34742.i.i, i64 8
  %i.boz = getelementptr inbounds nuw [2 x i8], ptr %i.bow, i64 %i.boh ; 2 uses
  %i.bpa = load i16, ptr %i.boz, align 2, !tbaa !595
  store i16 %i.bpa, ptr %i.boy, align 2, !tbaa !595
  %i.bpb = getelementptr inbounds nuw i8, ptr %.34742.i.i, i64 10
  %i.bpc = getelementptr inbounds nuw [2 x i8], ptr %i.boz, i64 %i.boh ; 2 uses
  %i.bpd = load i16, ptr %i.bpc, align 2, !tbaa !595
  store i16 %i.bpd, ptr %i.bpb, align 2, !tbaa !595
  %i.bpe = getelementptr inbounds nuw i8, ptr %.34742.i.i, i64 12
  %i.bpf = getelementptr inbounds nuw [2 x i8], ptr %i.bpc, i64 %i.boh ; 2 uses
  %i.bpg = load i16, ptr %i.bpf, align 2, !tbaa !595
  store i16 %i.bpg, ptr %i.bpe, align 2, !tbaa !595
  %i.bph = getelementptr inbounds nuw i8, ptr %.34742.i.i, i64 14
  %i.bpi = getelementptr inbounds nuw [2 x i8], ptr %i.bpf, i64 %i.boh ; 2 uses
  %i.bpj = load i16, ptr %i.bpi, align 2, !tbaa !595
  store i16 %i.bpj, ptr %i.bph, align 2, !tbaa !595
  %i.bpk = getelementptr inbounds nuw i8, ptr %.34742.i.i, i64 16 ; 3 uses
  %i.bpl = getelementptr inbounds nuw [2 x i8], ptr %i.bpi, i64 %i.boh ; 2 uses
  %niter248.next.7 = add i32 %niter248, 8         ; 2 uses
  %niter248.ncmp.7 = icmp eq i32 %niter248.next.7, %unroll_iter247
  br i1 %niter248.ncmp.7, label %.loopexit.i.i.loopexit196.unr-lcssa, label %.lr.ph745.i.i.new, !llvm.loop !3096

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph730.i.i
  br i1 %lcmp.mod265.not, label %.loopexit.i.i, label %.lr.ph730.i.i.epil.preheader

.lr.ph730.i.i.epil.preheader:                     ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph730.preheader.i.i
  %.0435728.i.i.epil.init = phi ptr [ %i.blt, %.lr.ph730.preheader.i.i ], [ %i.bmj, %.loopexit.i.i.loopexit.unr-lcssa ]
  %.28727.i.i.epil.init = phi ptr [ %.27748.i.i, %.lr.ph730.preheader.i.i ], [ %i.bmh, %.loopexit.i.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod267)
  br label %.lr.ph730.i.i.epil

.lr.ph730.i.i.epil:                               ; preds = %.lr.ph730.i.i.epil, %.lr.ph730.i.i.epil.preheader
  %.0435728.i.i.epil = phi ptr [ %i.bpp, %.lr.ph730.i.i.epil ], [ %.0435728.i.i.epil.init, %.lr.ph730.i.i.epil.preheader ] ; 2 uses
  %.28727.i.i.epil = phi ptr [ %i.bpn, %.lr.ph730.i.i.epil ], [ %.28727.i.i.epil.init, %.lr.ph730.i.i.epil.preheader ] ; 2 uses
  %epil.iter264 = phi i32 [ %epil.iter264.next, %.lr.ph730.i.i.epil ], [ 0, %.lr.ph730.i.i.epil.preheader ]
  %i.bpm = load <4 x i64>, ptr %.0435728.i.i.epil, align 1, !tbaa !100
  store <4 x i64> %i.bpm, ptr %.28727.i.i.epil, align 1, !tbaa !100
  %i.bpn = getelementptr inbounds nuw i8, ptr %.28727.i.i.epil, i64 32 ; 2 uses
  %i.bpo = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx466.i.i.epil = shl i64 %i.bpo, 5
  %i.bpp = getelementptr inbounds nuw i8, ptr %.0435728.i.i.epil, i64 %.idx466.i.i.epil
  %epil.iter264.next = add i32 %epil.iter264, 1   ; 2 uses
  %epil.iter264.cmp.not = icmp eq i32 %epil.iter264.next, %xtraiter263
  br i1 %epil.iter264.cmp.not, label %.loopexit.i.i, label %.lr.ph730.i.i.epil, !llvm.loop !3097

.loopexit.i.i.loopexit194.unr-lcssa:              ; preds = %.lr.ph735.i.i
  br i1 %lcmp.mod258.not, label %.loopexit.i.i, label %.lr.ph735.i.i.epil.preheader

.lr.ph735.i.i.epil.preheader:                     ; preds = %.loopexit.i.i.loopexit194.unr-lcssa, %.lr.ph735.preheader.i.i
  %.0433733.i.i.epil.init = phi ptr [ %i.bmr, %.lr.ph735.preheader.i.i ], [ %i.bnh, %.loopexit.i.i.loopexit194.unr-lcssa ]
  %.30732.i.i.epil.init = phi ptr [ %.27748.i.i, %.lr.ph735.preheader.i.i ], [ %i.bnf, %.loopexit.i.i.loopexit194.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod260)
  br label %.lr.ph735.i.i.epil

.lr.ph735.i.i.epil:                               ; preds = %.lr.ph735.i.i.epil, %.lr.ph735.i.i.epil.preheader
  %.0433733.i.i.epil = phi ptr [ %i.bpt, %.lr.ph735.i.i.epil ], [ %.0433733.i.i.epil.init, %.lr.ph735.i.i.epil.preheader ] ; 2 uses
  %.30732.i.i.epil = phi ptr [ %i.bpr, %.lr.ph735.i.i.epil ], [ %.30732.i.i.epil.init, %.lr.ph735.i.i.epil.preheader ] ; 2 uses
  %epil.iter257 = phi i32 [ %epil.iter257.next, %.lr.ph735.i.i.epil ], [ 0, %.lr.ph735.i.i.epil.preheader ]
  %i.bpq = load <2 x i64>, ptr %.0433733.i.i.epil, align 1, !tbaa !100
  store <2 x i64> %i.bpq, ptr %.30732.i.i.epil, align 1, !tbaa !100
  %i.bpr = getelementptr inbounds nuw i8, ptr %.30732.i.i.epil, i64 16 ; 2 uses
  %i.bps = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx465.i.i.epil = shl i64 %i.bps, 4
  %i.bpt = getelementptr inbounds nuw i8, ptr %.0433733.i.i.epil, i64 %.idx465.i.i.epil
  %epil.iter257.next = add i32 %epil.iter257, 1   ; 2 uses
  %epil.iter257.cmp.not = icmp eq i32 %epil.iter257.next, %xtraiter256
  br i1 %epil.iter257.cmp.not, label %.loopexit.i.i, label %.lr.ph735.i.i.epil, !llvm.loop !3098

.loopexit.i.i.loopexit195.unr-lcssa:              ; preds = %.lr.ph740.i.i
  br i1 %lcmp.mod251.not, label %.loopexit.i.i, label %.lr.ph740.i.i.epil.preheader

.lr.ph740.i.i.epil.preheader:                     ; preds = %.loopexit.i.i.loopexit195.unr-lcssa, %.lr.ph740.preheader.i.i
  %.0431738.i.i.epil.init = phi ptr [ %i.bnp, %.lr.ph740.preheader.i.i ], [ %i.bof, %.loopexit.i.i.loopexit195.unr-lcssa ]
  %.32737.i.i.epil.init = phi ptr [ %.27748.i.i, %.lr.ph740.preheader.i.i ], [ %i.bod, %.loopexit.i.i.loopexit195.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod253)
  br label %.lr.ph740.i.i.epil

.lr.ph740.i.i.epil:                               ; preds = %.lr.ph740.i.i.epil, %.lr.ph740.i.i.epil.preheader
  %.0431738.i.i.epil = phi ptr [ %i.bpx, %.lr.ph740.i.i.epil ], [ %.0431738.i.i.epil.init, %.lr.ph740.i.i.epil.preheader ] ; 2 uses
  %.32737.i.i.epil = phi ptr [ %i.bpv, %.lr.ph740.i.i.epil ], [ %.32737.i.i.epil.init, %.lr.ph740.i.i.epil.preheader ] ; 2 uses
  %epil.iter250 = phi i32 [ %epil.iter250.next, %.lr.ph740.i.i.epil ], [ 0, %.lr.ph740.i.i.epil.preheader ]
  %i.bpu = load i64, ptr %.0431738.i.i.epil, align 1, !tbaa !100
  store i64 %i.bpu, ptr %.32737.i.i.epil, align 1, !tbaa !100
  %i.bpv = getelementptr inbounds nuw i8, ptr %.32737.i.i.epil, i64 8 ; 2 uses
  %i.bpw = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx.i.i.epil = shl i64 %i.bpw, 3
  %i.bpx = getelementptr inbounds nuw i8, ptr %.0431738.i.i.epil, i64 %.idx.i.i.epil
  %epil.iter250.next = add i32 %epil.iter250, 1   ; 2 uses
  %epil.iter250.cmp.not = icmp eq i32 %epil.iter250.next, %xtraiter249
  br i1 %epil.iter250.cmp.not, label %.loopexit.i.i, label %.lr.ph740.i.i.epil, !llvm.loop !3099

.loopexit.i.i.loopexit196.unr-lcssa:              ; preds = %.lr.ph745.i.i.new
  br i1 %lcmp.mod244.not, label %.loopexit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.i.i.loopexit196.unr-lcssa, %.lr.ph745.i.i
  %.0429743.i.i.epil.init = phi ptr [ %i.bon, %.lr.ph745.i.i ], [ %i.bpl, %.loopexit.i.i.loopexit196.unr-lcssa ]
  %.34742.i.i.epil.init = phi ptr [ %.27748.i.i, %.lr.ph745.i.i ], [ %i.bpk, %.loopexit.i.i.loopexit196.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod246)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.0429743.i.i.epil = phi ptr [ %.0429743.i.i.epil.init, %.epil.preheader ], [ %i.bqa, %bb.d ] ; 2 uses
  %.34742.i.i.epil = phi ptr [ %.34742.i.i.epil.init, %.epil.preheader ], [ %i.bpz, %bb.d ] ; 2 uses
  %epil.iter243 = phi i32 [ 0, %.epil.preheader ], [ %epil.iter243.next, %bb.d ]
  %i.bpy = load i16, ptr %.0429743.i.i.epil, align 2, !tbaa !595
  store i16 %i.bpy, ptr %.34742.i.i.epil, align 2, !tbaa !595
  %i.bpz = getelementptr inbounds nuw i8, ptr %.34742.i.i.epil, i64 2 ; 2 uses
  %i.bqa = getelementptr inbounds nuw [2 x i8], ptr %.0429743.i.i.epil, i64 %i.boh
  %epil.iter243.next = add i32 %epil.iter243, 1   ; 2 uses
  %epil.iter243.cmp.not = icmp eq i32 %epil.iter243.next, %xtraiter242
  br i1 %epil.iter243.cmp.not, label %.loopexit.i.i, label %bb.d, !llvm.loop !3100

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit196.unr-lcssa, %bb.d, %.loopexit.i.i.loopexit195.unr-lcssa, %.lr.ph740.i.i.epil, %.loopexit.i.i.loopexit194.unr-lcssa, %.lr.ph735.i.i.epil, %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph730.i.i.epil, %_ZN4ncnn3MatD2Ev.exit.i.i, %_ZN4ncnn3MatD2Ev.exit491.i.i, %_ZN4ncnn3MatD2Ev.exit492.i.i, %_ZN4ncnn3MatD2Ev.exit493.i.i, %.split853.i.i
  %.35.i.i = phi ptr [ %.27748.i.i, %.split853.i.i ], [ %.27748.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i ], [ %i.bpv, %.lr.ph740.i.i.epil ], [ %i.bpn, %.lr.ph730.i.i.epil ], [ %.27748.i.i, %_ZN4ncnn3MatD2Ev.exit491.i.i ], [ %i.bpr, %.lr.ph735.i.i.epil ], [ %.27748.i.i, %_ZN4ncnn3MatD2Ev.exit492.i.i ], [ %.27748.i.i, %_ZN4ncnn3MatD2Ev.exit493.i.i ], [ %i.bmh, %.loopexit.i.i.loopexit.unr-lcssa ], [ %i.bnf, %.loopexit.i.i.loopexit194.unr-lcssa ], [ %i.bod, %.loopexit.i.i.loopexit195.unr-lcssa ], [ %i.bpk, %.loopexit.i.i.loopexit196.unr-lcssa ], [ %i.bpz, %bb.d ]
  %indvars.iv.next791.i.i = add nsw i64 %indvars.iv790.i.i, 1 ; 2 uses
  %exitcond793.not.i.i = icmp eq i64 %indvars.iv.next791.i.i, %wide.trip.count.i.i
  br i1 %exitcond793.not.i.i, label %_ZN4ncnn3MatD2Ev.exit, label %.split853.i.i, !llvm.loop !3101

bb.e:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit36
  %i.bqb = icmp eq i32 %i.at, 2                   ; 4 uses
  %or.cond13.i = and i1 %or.cond.i, %i.bqb
  %i.bqc = icmp eq i32 %i.au, 2                   ; 4 uses
  %or.cond15.i = and i1 %or.cond13.i, %i.bqc
  br i1 %or.cond15.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call fastcc void @_ZN4ncnnL40convolution_im2col_input_tile_impl_bf16sERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull readonly align 8 dereferenceable(72) %9, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated64, i32 noundef %i.x, i32 noundef %.sroa.speculated, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 2, i32 noundef 2)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.bqd = icmp eq i32 %i.ap, 3
  %i.bqe = icmp eq i32 %i.aq, 3
  %or.cond17.i = and i1 %i.bqd, %i.bqe
  %or.cond19.i = and i1 %or.cond17.i, %i.ax
  %or.cond21.i = and i1 %or.cond19.i, %i.ay       ; 2 uses
  %or.cond23.i = and i1 %or.cond21.i, %i.az
  %or.cond25.i = and i1 %or.cond23.i, %i.ba
  br i1 %or.cond25.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call fastcc void @_ZN4ncnnL40convolution_im2col_input_tile_impl_bf16sERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull readonly align 8 dereferenceable(72) %9, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated64, i32 noundef %i.x, i32 noundef %.sroa.speculated, i32 noundef 3, i32 noundef 3, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.i:                                             ; preds = %bb.g
  %or.cond33.i = and i1 %or.cond21.i, %i.bqb
  %or.cond35.i = and i1 %or.cond33.i, %i.bqc
  br i1 %or.cond35.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call fastcc void @_ZN4ncnnL40convolution_im2col_input_tile_impl_bf16sERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull readonly align 8 dereferenceable(72) %9, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated64, i32 noundef %i.x, i32 noundef %.sroa.speculated, i32 noundef 3, i32 noundef 3, i32 noundef 1, i32 noundef 1, i32 noundef 2, i32 noundef 2)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.bqf = icmp eq i32 %i.ap, 5
  %i.bqg = icmp eq i32 %i.aq, 5
  %or.cond37.i = and i1 %i.bqf, %i.bqg
  %or.cond39.i = and i1 %or.cond37.i, %i.ax
  %or.cond41.i = and i1 %or.cond39.i, %i.ay       ; 2 uses
  %or.cond43.i = and i1 %or.cond41.i, %i.az
  %or.cond45.i = and i1 %or.cond43.i, %i.ba
  br i1 %or.cond45.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call fastcc void @_ZN4ncnnL40convolution_im2col_input_tile_impl_bf16sERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull readonly align 8 dereferenceable(72) %9, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated64, i32 noundef %i.x, i32 noundef %.sroa.speculated, i32 noundef 5, i32 noundef 5, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.m:                                             ; preds = %bb.k
  %or.cond53.i = and i1 %or.cond41.i, %i.bqb
  %or.cond55.i = and i1 %or.cond53.i, %i.bqc
  br i1 %or.cond55.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call fastcc void @_ZN4ncnnL40convolution_im2col_input_tile_impl_bf16sERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull readonly align 8 dereferenceable(72) %9, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated64, i32 noundef %i.x, i32 noundef %.sroa.speculated, i32 noundef 5, i32 noundef 5, i32 noundef 1, i32 noundef 1, i32 noundef 2, i32 noundef 2)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.bqh = icmp eq i32 %i.ap, 7
  %i.bqi = icmp eq i32 %i.aq, 7
  %or.cond57.i = and i1 %i.bqh, %i.bqi
  %or.cond59.i = and i1 %or.cond57.i, %i.ax
  %or.cond61.i = and i1 %or.cond59.i, %i.ay
  %or.cond63.i = and i1 %or.cond61.i, %i.bqb
  %or.cond65.i = and i1 %or.cond63.i, %i.bqc
  br i1 %or.cond65.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call fastcc void @_ZN4ncnnL40convolution_im2col_input_tile_impl_bf16sERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull readonly align 8 dereferenceable(72) %9, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated64, i32 noundef %i.x, i32 noundef %.sroa.speculated, i32 noundef 7, i32 noundef 7, i32 noundef 1, i32 noundef 1, i32 noundef 2, i32 noundef 2)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.q:                                             ; preds = %bb.o
  call fastcc void @_ZN4ncnnL40convolution_im2col_input_tile_impl_bf16sERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull readonly align 8 dereferenceable(72) %9, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated64, i32 noundef %i.x, i32 noundef %.sroa.speculated, i32 noundef %i.ap, i32 noundef %i.aq, i32 noundef %i.ar, i32 noundef %i.as, i32 noundef %i.at, i32 noundef %i.au)
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.loopexit.i.i, %bb.q, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %.lr.ph749.i.i, %.preheader.i.i
  %i.bqj = add nsw i32 %.099, 1
  %i.bqk = load i32, ptr %i.b, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.099, %i.bqk
  br i1 %.not.not, label %_ZN4ncnn3MatD2Ev.exit36, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL29convolution_im2col_gemm_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_iRKNS_6OptionE.omp_outlined.19(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %15) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.h = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !67
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !67
  %i.k = load i32, ptr %i.a, align 4, !tbaa !67   ; 2 uses
  %.not183 = icmp sgt i32 %i.k, %i.j
  br i1 %.not183, label %._crit_edge187, label %.lr.ph186

.lr.ph186:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph186, %_ZN4ncnn3MatD2Ev.exit
  %.048184 = phi i32 [ %i.k, %.lr.ph186 ], [ %i.an, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.t = load i32, ptr %3, align 4, !tbaa !67     ; 2 uses
  %i.u = mul nsw i32 %i.t, %.048184               ; 3 uses
  %i.v = load i32, ptr %4, align 4, !tbaa !67
  %i.w = load i32, ptr %5, align 4, !tbaa !67
  %i.x = icmp sgt i32 %i.v, %i.w
  br i1 %i.x, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit53

bb.d:                                             ; preds = %bb.c
  %i.y = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %6, align 8, !tbaa !18, !noalias !3102
  %i.aa = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !3102
  %i.ab = sext i32 %i.y to i64
  %i.ac = mul i64 %i.aa, %i.ab
  %i.ad = load i64, ptr %i.m, align 8, !tbaa !65, !noalias !3102
  %i.ae = mul i64 %i.ac, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %.pre = load i32, ptr %3, align 4, !tbaa !67
  br label %_ZN4ncnn3MatD2Ev.exit53

_ZN4ncnn3MatD2Ev.exit53:                          ; preds = %bb.e, %bb.c
  %i.ag = phi i32 [ %i.t, %bb.c ], [ %.pre, %bb.e ]
  %.sroa.0169.0 = phi ptr [ null, %bb.c ], [ %i.af, %bb.e ]
  %i.ah = load i32, ptr %7, align 4, !tbaa !67
  %i.ai = sub nsw i32 %i.ah, %i.u
  %.sroa.speculated151 = call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.ai)
  %i.aj = load i32, ptr %8, align 4, !tbaa !67    ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit53
  %i.al = load i32, ptr %4, align 4, !tbaa !67    ; 2 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph.split.preheader, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %.pre189 = load i32, ptr %9, align 4, !tbaa !67
  br label %.lr.ph.split

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge, %.lr.ph, %_ZN4ncnn3MatD2Ev.exit53
  %i.an = add nsw i32 %.048184, 1
  %i.ao = load i32, ptr %i.b, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.048184, %i.ao
  br i1 %.not.not, label %bb.c, label %._crit_edge187

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %._crit_edge
  %i.ap = phi i32 [ %i.au, %._crit_edge ], [ %i.aj, %.lr.ph.split.preheader ] ; 2 uses
  %i.aq = phi i32 [ %i.av, %._crit_edge ], [ %.pre189, %.lr.ph.split.preheader ] ; 2 uses
  %i.ar = phi i32 [ %i.aw, %._crit_edge ], [ %i.al, %.lr.ph.split.preheader ] ; 3 uses
  %.047182 = phi i32 [ %i.ax, %._crit_edge ], [ 0, %.lr.ph.split.preheader ] ; 4 uses
  %i.as = sub nsw i32 %i.ap, %.047182
  %.sroa.speculated147 = call i32 @llvm.smin.i32(i32 %i.aq, i32 %i.as)
  %i.at = icmp sgt i32 %i.ar, 0
  br i1 %i.at, label %.noexc.preheader, label %._crit_edge

.noexc.preheader:                                 ; preds = %.lr.ph.split
  %.pre190 = load i32, ptr %5, align 4, !tbaa !67
  br label %.noexc

end_hunk_21
begin_hunk_22_@_ZN4ncnnL41convolution_gemm_transB_packed_tile_bf16sERKNS_3MatES2_S2_RS0_S3_iiiiiibiS2_:bb.a
  %i.snb = getelementptr i8, ptr %next.gep9786, i64 96
  %wide.load9791 = load <16 x i16>, ptr %next.gep9786, align 2, !tbaa !595
  %wide.load9792 = load <16 x i16>, ptr %i.smz, align 2, !tbaa !595
  %wide.load9793 = load <16 x i16>, ptr %i.sna, align 2, !tbaa !595
  %wide.load9794 = load <16 x i16>, ptr %i.snb, align 2, !tbaa !595
  %i.snc = zext <16 x i16> %wide.load9791 to <16 x i32>
  %i.snd = zext <16 x i16> %wide.load9792 to <16 x i32>
  %i.sne = zext <16 x i16> %wide.load9793 to <16 x i32>
  %i.snf = zext <16 x i16> %wide.load9794 to <16 x i32>
  %i.sng = shl nuw <16 x i32> %i.snc, splat (i32 16)
  %i.snh = shl nuw <16 x i32> %i.snd, splat (i32 16)
  %i.sni = shl nuw <16 x i32> %i.sne, splat (i32 16)
  %i.snj = shl nuw <16 x i32> %i.snf, splat (i32 16)
  %i.snk = bitcast <16 x i32> %i.sng to <16 x float>
  %i.snl = bitcast <16 x i32> %i.snh to <16 x float>
  %i.snm = bitcast <16 x i32> %i.sni to <16 x float>
  %i.snn = bitcast <16 x i32> %i.snj to <16 x float>
  %i.sno = fmul fast <16 x float> %i.snk, %i.smv
  %i.snp = fmul fast <16 x float> %i.snl, %i.smw
  %i.snq = fmul fast <16 x float> %i.snm, %i.smx
  %i.snr = fmul fast <16 x float> %i.snn, %i.smy
  %i.sns = fadd fast <16 x float> %i.sno, %vec.phi9781 ; 2 uses
  %i.snt = fadd fast <16 x float> %i.snp, %vec.phi9782 ; 2 uses
  %i.snu = fadd fast <16 x float> %i.snq, %vec.phi9783 ; 2 uses
  %i.snv = fadd fast <16 x float> %i.snr, %vec.phi9784 ; 2 uses
  %index.next9795 = add nuw i64 %index9780, 64    ; 2 uses
  %i.snw = icmp eq i64 %index.next9795, %n.vec9778
  br i1 %i.snw, label %middle.block9796, label %vector.body9779, !llvm.loop !3157

middle.block9796:                                 ; preds = %vector.body9779
  %bin.rdx9797 = fadd fast <16 x float> %i.snt, %i.sns
  %bin.rdx9798 = fadd fast <16 x float> %i.snu, %bin.rdx9797
  %bin.rdx9799 = fadd fast <16 x float> %i.snv, %bin.rdx9798
  %i.snx = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx9799) ; 3 uses
  br i1 %cmp.n9800, label %._crit_edge9255.loopexit, label %vec.epilog.iter.check9807

vec.epilog.iter.check9807:                        ; preds = %middle.block9796
  br i1 %min.epilog.iters.check9808, label %.lr.ph9254.preheader, label %vec.epilog.ph9809, !prof !216

vec.epilog.ph9809:                                ; preds = %vector.main.loop.iter.check9775, %vec.epilog.iter.check9807
  %vec.epilog.resume.val9801 = phi i64 [ %n.vec9778, %vec.epilog.iter.check9807 ], [ 0, %vector.main.loop.iter.check9775 ]
  %bc.merge.rdx9803 = phi float [ %i.snx, %vec.epilog.iter.check9807 ], [ %.01996, %vector.main.loop.iter.check9775 ]
  %i.sny = getelementptr i8, ptr %.69260, i64 %i.pky
  %i.snz = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx9803, i64 0
  br label %vec.epilog.vector.body9811

vec.epilog.vector.body9811:                       ; preds = %vec.epilog.vector.body9811, %vec.epilog.ph9809
  %index9812 = phi i64 [ %vec.epilog.resume.val9801, %vec.epilog.ph9809 ], [ %index.next9818, %vec.epilog.vector.body9811 ] ; 2 uses
  %vec.phi9813 = phi <8 x float> [ %i.snz, %vec.epilog.ph9809 ], [ %i.soi, %vec.epilog.vector.body9811 ]
  %i.soa = shl i64 %index9812, 1                  ; 2 uses
  %next.gep9814 = getelementptr i8, ptr %.420279268, i64 %i.soa
  %next.gep9815 = getelementptr i8, ptr %.69260, i64 %i.soa
  %wide.load9816 = load <8 x i16>, ptr %next.gep9814, align 2, !tbaa !595
  %i.sob = zext <8 x i16> %wide.load9816 to <8 x i32>
  %i.soc = shl nuw <8 x i32> %i.sob, splat (i32 16)
  %i.sod = bitcast <8 x i32> %i.soc to <8 x float>
  %wide.load9817 = load <8 x i16>, ptr %next.gep9815, align 2, !tbaa !595
  %i.soe = zext <8 x i16> %wide.load9817 to <8 x i32>
  %i.sof = shl nuw <8 x i32> %i.soe, splat (i32 16)
  %i.sog = bitcast <8 x i32> %i.sof to <8 x float>
  %i.soh = fmul fast <8 x float> %i.sog, %i.sod
  %i.soi = fadd fast <8 x float> %i.soh, %vec.phi9813 ; 2 uses
  %index.next9818 = add nuw i64 %index9812, 8     ; 2 uses
  %i.soj = icmp eq i64 %index.next9818, %n.vec9810
  br i1 %i.soj, label %vec.epilog.middle.block9819, label %vec.epilog.vector.body9811, !llvm.loop !3158

vec.epilog.middle.block9819:                      ; preds = %vec.epilog.vector.body9811
  %i.sok = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.soi) ; 2 uses
  br i1 %cmp.n9820, label %._crit_edge9255.loopexit, label %.lr.ph9254.preheader

.lr.ph9254.preheader:                             ; preds = %iter.check9805, %vec.epilog.iter.check9807, %vec.epilog.middle.block9819
  %.09252.ph = phi i32 [ 0, %iter.check9805 ], [ %i.pkv, %vec.epilog.iter.check9807 ], [ %i.pkx, %vec.epilog.middle.block9819 ]
  %.019959251.ph = phi ptr [ %.420279268, %iter.check9805 ], [ %i.see, %vec.epilog.iter.check9807 ], [ %i.sef, %vec.epilog.middle.block9819 ]
  %.19250.ph = phi float [ %.01996, %iter.check9805 ], [ %i.snx, %vec.epilog.iter.check9807 ], [ %i.sok, %vec.epilog.middle.block9819 ]
  %.79249.ph = phi ptr [ %.69260, %iter.check9805 ], [ %i.smh, %vec.epilog.iter.check9807 ], [ %i.sny, %vec.epilog.middle.block9819 ]
  br label %.lr.ph9254

.lr.ph9254:                                       ; preds = %.lr.ph9254.preheader, %.lr.ph9254
  %.09252 = phi i32 [ %i.sox, %.lr.ph9254 ], [ %.09252.ph, %.lr.ph9254.preheader ]
  %.019959251 = phi ptr [ %i.sov, %.lr.ph9254 ], [ %.019959251.ph, %.lr.ph9254.preheader ] ; 2 uses
  %.19250 = phi float [ %i.sou, %.lr.ph9254 ], [ %.19250.ph, %.lr.ph9254.preheader ]
  %.79249 = phi ptr [ %i.sow, %.lr.ph9254 ], [ %.79249.ph, %.lr.ph9254.preheader ] ; 2 uses
  %i.sol = load i16, ptr %.019959251, align 2, !tbaa !595
  %i.som = zext i16 %i.sol to i32
  %i.son = shl nuw i32 %i.som, 16
  %i.soo = bitcast i32 %i.son to float
  %i.sop = load i16, ptr %.79249, align 2, !tbaa !595
  %i.soq = zext i16 %i.sop to i32
  %i.sor = shl nuw i32 %i.soq, 16
  %i.sos = bitcast i32 %i.sor to float
  %i.sot = fmul fast float %i.sos, %i.soo
  %i.sou = fadd fast float %i.sot, %.19250        ; 2 uses
  %i.sov = getelementptr inbounds nuw i8, ptr %.019959251, i64 2
  %i.sow = getelementptr inbounds nuw i8, ptr %.79249, i64 2
  %i.sox = add nuw nsw i32 %.09252, 1             ; 2 uses
  %exitcond9459.not = icmp eq i32 %i.sox, %7
  br i1 %exitcond9459.not, label %._crit_edge9255.loopexit, label %.lr.ph9254, !llvm.loop !3159

._crit_edge9255.loopexit:                         ; preds = %.lr.ph9254, %vec.epilog.middle.block9819, %middle.block9796
  %.lcssa9623 = phi float [ %i.sok, %vec.epilog.middle.block9819 ], [ %i.snx, %middle.block9796 ], [ %i.sou, %.lr.ph9254 ]
  %i.soy = getelementptr i8, ptr %.69260, i64 %i.pkn
  %scevgep9458 = getelementptr i8, ptr %i.soy, i64 2
  br label %._crit_edge9255

._crit_edge9255:                                  ; preds = %._crit_edge9255.loopexit, %bb.hj
  %.7.lcssa = phi ptr [ %.69260, %bb.hj ], [ %scevgep9458, %._crit_edge9255.loopexit ]
  %.1.lcssa = phi float [ %.01996, %bb.hj ], [ %.lcssa9623, %._crit_edge9255.loopexit ] ; 14 uses
  br i1 %8, label %bb.hk, label %bb.hu

bb.hk:                                            ; preds = %._crit_edge9255
  switch i32 %9, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.hl
    i32 2, label %bb.hm
    i32 3, label %bb.hn
    i32 4, label %bb.hp
    i32 5, label %bb.hq
    i32 6, label %bb.hr
  ]

bb.hl:                                            ; preds = %bb.hk
  %i.soz = tail call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.1.lcssa, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.hm:                                            ; preds = %bb.hk
  %i.spa = load float, ptr %i.sek, align 4, !tbaa !39
  %i.spb = fcmp fast ogt float %.1.lcssa, 0.000000e+00
  %i.spc = select fast i1 %i.spb, float 1.000000e+00, float %i.spa
  %i.spd = fmul fast float %i.spc, %.1.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.hn:                                            ; preds = %bb.hk
  %i.spe = load float, ptr %i.sei, align 4, !tbaa !39
  %i.spf = load float, ptr %i.sej, align 4, !tbaa !39 ; 2 uses
  %.04890 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.1.lcssa, float %i.spe) ; 2 uses
  %i.spg = fcmp fast ogt float %.04890, %i.spf
  br i1 %i.spg, label %bb.ho, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.ho:                                            ; preds = %bb.hn
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.hp:                                            ; preds = %bb.hk
  %.sroa.speculated1413 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.1.lcssa, float f0x42B0C0A5)
  %.sroa.speculated = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated1413, float f0xC2B0C0A5)
  %i.sph = fneg fast float %.sroa.speculated
  %i.spi = tail call fast float @llvm.exp.f32(float %i.sph)
  %i.spj = fadd fast float %i.spi, 1.000000e+00
  %i.spk = fdiv fast float 1.000000e+00, %i.spj
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.hq:                                            ; preds = %bb.hk
  %i.spl = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %.1.lcssa)
  %i.spm = fadd fast float %i.spl, 1.000000e+00
  %i.spn = tail call fast float @llvm.log.f32(float %i.spm)
  %i.spo = tail call fast float @llvm.tanh.f32(float %i.spn)
  %i.spp = fmul fast float %i.spo, %.1.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.hr:                                            ; preds = %bb.hk
  %i.spq = load float, ptr %i.seg, align 4, !tbaa !39 ; 3 uses
  %i.spr = load float, ptr %i.seh, align 4, !tbaa !39 ; 2 uses
  %i.sps = fneg fast float %i.spr
  %i.spt = fdiv fast float %i.sps, %i.spq         ; 2 uses
  %i.spu = fcmp fast olt float %.1.lcssa, %i.spt
  br i1 %i.spu, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.spv = fdiv fast float 1.000000e+00, %i.spq
  %i.spw = fadd fast float %i.spt, %i.spv
  %i.spx = fcmp fast ogt float %.1.lcssa, %i.spw
  br i1 %i.spx, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.spy = fmul fast float %i.spq, %.1.lcssa
  %i.spz = fadd fast float %i.spy, %i.spr
  %i.sqa = fmul fast float %i.spz, %.1.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.hr, %bb.hk, %bb.hl, %bb.hm, %bb.hn, %bb.ho, %bb.hp, %bb.hq, %bb.hs, %bb.ht
  %.14891 = phi nsz float [ %.1.lcssa, %bb.hk ], [ %i.soz, %bb.hl ], [ %i.spd, %bb.hm ], [ %i.spf, %bb.ho ], [ %.04890, %bb.hn ], [ %i.spk, %bb.hp ], [ %i.spp, %bb.hq ], [ %i.sqa, %bb.ht ], [ %.1.lcssa, %bb.hs ], [ 0.000000e+00, %bb.hr ]
  %i.sqb = bitcast float %.14891 to i32
  %i.sqc = lshr i32 %i.sqb, 16
  %i.sqd = trunc nuw i32 %i.sqc to i16
  store i16 %i.sqd, ptr %.620159259, align 2, !tbaa !595
  %i.sqe = getelementptr inbounds nuw i8, ptr %.620159259, i64 2
  br label %bb.hv

bb.hu:                                            ; preds = %._crit_edge9255
  store float %.1.lcssa, ptr %.249258, align 4, !tbaa !39
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %.72016 = phi ptr [ %i.sqe, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ], [ %.620159259, %bb.hu ]
  %i.sqf = getelementptr inbounds nuw i8, ptr %.249258, i64 4 ; 2 uses
  %i.sqg = add nuw nsw i32 %.39261, 1             ; 2 uses
  %exitcond9460.not = icmp eq i32 %i.sqg, %5
  br i1 %exitcond9460.not, label %._crit_edge9263, label %bb.hi, !llvm.loop !3160

._crit_edge9263:                                  ; preds = %bb.hv, %.preheader
  %.24.lcssa = phi ptr [ %.23.lcssa, %.preheader ], [ %i.sqf, %bb.hv ]
  %i.sqh = getelementptr inbounds [2 x i8], ptr %.420279268, i64 %i.pkg
  %indvars.iv.next9462 = add nsw i64 %indvars.iv9461, 1 ; 2 uses
  %exitcond9464.not = icmp eq i64 %indvars.iv.next9462, %wide.trip.count
  br i1 %exitcond9464.not, label %._crit_edge9270, label %bb.fr, !llvm.loop !3161

._crit_edge9270:                                  ; preds = %._crit_edge9263, %.preheader8751
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL40convolution_im2col_input_tile_impl_bf16sERKNS_3MatERS0_iiiiiiiiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree writeonly %.0.val, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 8 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !75
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !66   ; 52 uses
  %i.e = add nsw i32 %5, -1
  %i.f = mul nsw i32 %7, %i.e
  %.neg = xor i32 %i.f, -1
  %i.g = add i32 %i.b, %.neg
  %i.h = sdiv i32 %i.g, %9
  %i.i = add nsw i32 %i.h, 1                      ; 58 uses
  %i.j = mul nsw i32 %6, %5                       ; 14 uses
  %factor.op.mul1041 = mul i32 %i.d, %9           ; 4 uses
  %i.k = icmp sgt i32 %2, 15
  br i1 %i.k, label %.lr.ph, label %.preheader1029

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.d)
  %i.o = icmp eq i32 %i.n, 1                      ; 2 uses
  %i.p = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.d, i1 true) ; 2 uses
  %factor.op.mul1036 = mul i32 %7, %i.d
  %i.q = sext i32 %9 to i64
  %i.r = shl nsw i32 %9, 1
  %i.s = sext i32 %i.r to i64
  %i.t = mul nsw i32 %9, 3
  %i.u = sext i32 %i.t to i64
  %i.v = shl nsw i32 %9, 2
  %i.w = sext i32 %i.v to i64                     ; 2 uses
  %i.x = mul nsw i32 %9, 5
  %i.y = sext i32 %i.x to i64
  %i.z = mul nsw i32 %9, 6
  %i.aa = sext i32 %i.z to i64
  %i.ab = mul nsw i32 %9, 7
  %i.ac = sext i32 %i.ab to i64
  %i.ad = shl nsw i32 %9, 3
  %i.ae = sext i32 %i.ad to i64                   ; 3 uses
  %i.af = mul nsw i32 %9, 9
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i32 %9, 10
  %i.ai = sext i32 %i.ah to i64
  %i.aj = mul nsw i32 %9, 11
  %i.ak = sext i32 %i.aj to i64
  %i.al = mul nsw i32 %9, 12
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %i.an = mul nsw i32 %9, 13
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul nsw i32 %9, 14
  %i.aq = sext i32 %i.ap to i64
  %i.ar = mul nsw i32 %9, 15
  %i.as = sext i32 %i.ar to i64
  %i.at = shl nsw i32 %9, 4
  %i.au = sext i32 %i.at to i64                   ; 3 uses
  %i.av = mul nsw i32 %9, 20
  %i.aw = sext i32 %i.av to i64
  %i.ax = mul nsw i32 %9, 24
  %i.ay = sext i32 %i.ax to i64                   ; 2 uses
  %i.az = mul nsw i32 %9, 28
  %i.ba = sext i32 %i.az to i64
  %i.bb = shl nsw i32 %9, 5
  %i.bc = sext i32 %i.bb to i64                   ; 3 uses
  %i.bd = mul nsw i32 %9, 36
  %i.be = sext i32 %i.bd to i64
  %i.bf = mul nsw i32 %9, 40
  %i.bg = sext i32 %i.bf to i64                   ; 2 uses
  %i.bh = mul nsw i32 %9, 44
  %i.bi = sext i32 %i.bh to i64
  %i.bj = mul nsw i32 %9, 48
  %i.bk = sext i32 %i.bj to i64                   ; 3 uses
  %i.bl = mul nsw i32 %9, 52
  %i.bm = sext i32 %i.bl to i64
  %i.bn = mul nsw i32 %9, 56
  %i.bo = sext i32 %i.bn to i64                   ; 2 uses
  %i.bp = mul nsw i32 %9, 60
  %i.bq = sext i32 %i.bp to i64
  %i.br = shl nsw i32 %9, 6
  %i.bs = sext i32 %i.br to i64                   ; 2 uses
  %i.bt = mul nsw i32 %9, 72
  %i.bu = sext i32 %i.bt to i64
  %i.bv = mul nsw i32 %9, 80
  %i.bw = sext i32 %i.bv to i64                   ; 2 uses
  %i.bx = mul nsw i32 %9, 88
  %i.by = sext i32 %i.bx to i64
  %i.bz = mul nsw i32 %9, 96
  %i.ca = sext i32 %i.bz to i64                   ; 2 uses
  %i.cb = mul nsw i32 %9, 104
  %i.cc = sext i32 %i.cb to i64
  %i.cd = mul nsw i32 %9, 112
  %i.ce = sext i32 %i.cd to i64                   ; 2 uses
  %i.cf = mul nsw i32 %9, 120
  %i.cg = sext i32 %i.cf to i64
  %i.ch = shl nsw i32 %9, 7
  %i.ci = sext i32 %i.ch to i64
  %i.cj = mul nsw i32 %9, 144
  %i.ck = sext i32 %i.cj to i64
  %i.cl = mul nsw i32 %9, 160
  %i.cm = sext i32 %i.cl to i64
  %i.cn = mul nsw i32 %9, 176
  %i.co = sext i32 %i.cn to i64
  %i.cp = mul nsw i32 %9, 192
  %i.cq = sext i32 %i.cp to i64
  %i.cr = mul nsw i32 %9, 208
  %i.cs = sext i32 %i.cr to i64
  %i.ct = mul nsw i32 %9, 224
  %i.cu = sext i32 %i.ct to i64
  %i.cv = mul nsw i32 %9, 240
  %i.cw = sext i32 %i.cv to i64
  %i.cx = sdiv i32 %4, %i.d                       ; 4 uses
  %i.cy = icmp sgt i32 %i.cx, 0
  %i.cz = icmp sgt i32 %i.cx, 0
  br label %bb.b

.preheader1029:                                   ; preds = %.loopexit1031, %bb.a
  %.01407.lcssa = phi i32 [ 0, %bb.a ], [ %i.bvr, %.loopexit1031 ] ; 3 uses
  %.01406.lcssa = phi ptr [ %.0.val, %bb.a ], [ %.11, %.loopexit1031 ] ; 2 uses
  %i.da = or disjoint i32 %.01407.lcssa, 7
  %i.db = icmp slt i32 %i.da, %2
  br i1 %i.db, label %.lr.ph1058, label %.preheader1024

.lr.ph1058:                                       ; preds = %.preheader1029
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.de = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.d)
  %i.df = icmp eq i32 %i.de, 1                    ; 2 uses
  %i.dg = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.d, i1 true) ; 2 uses
  %factor.op.mul1049 = mul i32 %7, %i.d
  %i.dh = sext i32 %9 to i64
  %i.di = shl nsw i32 %9, 1
  %i.dj = sext i32 %i.di to i64
  %i.dk = mul nsw i32 %9, 3
  %i.dl = sext i32 %i.dk to i64
  %i.dm = shl nsw i32 %9, 2
  %i.dn = sext i32 %i.dm to i64                   ; 2 uses
  %i.do = mul nsw i32 %9, 5
  %i.dp = sext i32 %i.do to i64
  %i.dq = mul nsw i32 %9, 6
  %i.dr = sext i32 %i.dq to i64
  %i.ds = mul nsw i32 %9, 7
  %i.dt = sext i32 %i.ds to i64
  %i.du = shl nsw i32 %9, 3
  %i.dv = sext i32 %i.du to i64                   ; 2 uses
  %i.dw = mul nsw i32 %9, 12
  %i.dx = sext i32 %i.dw to i64
  %i.dy = shl nsw i32 %9, 4
  %i.dz = sext i32 %i.dy to i64                   ; 3 uses
  %i.ea = mul nsw i32 %9, 20
  %i.eb = sext i32 %i.ea to i64
  %i.ec = mul nsw i32 %9, 24
  %i.ed = sext i32 %i.ec to i64                   ; 2 uses
  %i.ee = mul nsw i32 %9, 28
  %i.ef = sext i32 %i.ee to i64
  %i.eg = shl nsw i32 %9, 5
  %i.eh = sext i32 %i.eg to i64                   ; 2 uses
  %i.ei = mul nsw i32 %9, 40
  %i.ej = sext i32 %i.ei to i64
  %i.ek = mul nsw i32 %9, 48
  %i.el = sext i32 %i.ek to i64                   ; 2 uses
  %i.em = mul nsw i32 %9, 56
  %i.en = sext i32 %i.em to i64
  %i.eo = shl nsw i32 %9, 6
  %i.ep = sext i32 %i.eo to i64
  %i.eq = mul nsw i32 %9, 80
  %i.er = sext i32 %i.eq to i64
  %i.es = mul nsw i32 %9, 96
  %i.et = sext i32 %i.es to i64
  %i.eu = mul nsw i32 %9, 112
  %i.ev = sext i32 %i.eu to i64
  %i.ew = sdiv i32 %4, %i.d                       ; 4 uses
  %i.ex = icmp sgt i32 %i.ew, 0
  %i.ey = icmp sgt i32 %i.ew, 0
  br label %bb.i

bb.b:                                             ; preds = %.lr.ph, %.loopexit1031
  %.014061043 = phi ptr [ %.0.val, %.lr.ph ], [ %.11, %.loopexit1031 ] ; 4 uses
  %.014071042 = phi i32 [ 0, %.lr.ph ], [ %i.bvr, %.loopexit1031 ] ; 2 uses
  %i.ez = add nsw i32 %.014071042, %1             ; 17 uses
  %i.fa = sdiv i32 %i.ez, %i.i                    ; 3 uses
  %i.fb = add nsw i32 %i.ez, 1                    ; 2 uses
  %i.fc = sdiv i32 %i.fb, %i.i
  %i.fd = add nsw i32 %i.ez, 2                    ; 2 uses
  %i.fe = sdiv i32 %i.fd, %i.i
  %i.ff = add nsw i32 %i.ez, 3                    ; 2 uses
  %i.fg = sdiv i32 %i.ff, %i.i
  %i.fh = add nsw i32 %i.ez, 4                    ; 2 uses
  %i.fi = sdiv i32 %i.fh, %i.i
  %i.fj = add nsw i32 %i.ez, 5                    ; 2 uses
  %i.fk = sdiv i32 %i.fj, %i.i
  %i.fl = add nsw i32 %i.ez, 6                    ; 2 uses
  %i.fm = sdiv i32 %i.fl, %i.i
  %i.fn = add nsw i32 %i.ez, 7                    ; 2 uses
end_hunk_22
