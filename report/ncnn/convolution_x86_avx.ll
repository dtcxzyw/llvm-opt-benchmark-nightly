inline.NumInlined: 392
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 121
loop-unroll.NumRuntimeUnrolled: 138
loop-unroll.NumUnrolled: 259
begin_hunk_0_@_ZN4ncnn19Convolution_x86_avx15create_pipelineERKNS_6OptionE:bb.a
  store float %i.coe, ptr %.71442.us.i, align 4, !tbaa !39
  %i.cof = getelementptr inbounds nuw [4 x i8], ptr %i.cod, i64 %i.buh
  %i.cog = getelementptr inbounds nuw i8, ptr %.71442.us.i, i64 4
  %i.coh = load float, ptr %i.cof, align 4, !tbaa !39
  store float %i.coh, ptr %i.cog, align 4, !tbaa !39
  %i.coi = getelementptr inbounds nuw i8, ptr %.71442.us.i, i64 8
  %i.coj = getelementptr inbounds nuw [4 x i8], ptr %.28341446.us.i, i64 %indvars.iv1799.i
  %i.cok = getelementptr inbounds nuw i8, ptr %i.coj, i64 4 ; 2 uses
  %i.col = load float, ptr %i.cok, align 4, !tbaa !39
  store float %i.col, ptr %i.coi, align 4, !tbaa !39
  %i.com = getelementptr inbounds nuw [4 x i8], ptr %i.cok, i64 %i.buh
  %i.con = getelementptr inbounds nuw i8, ptr %.71442.us.i, i64 12
  %i.coo = load float, ptr %i.com, align 4, !tbaa !39
  store float %i.coo, ptr %i.con, align 4, !tbaa !39
  %i.cop = getelementptr inbounds nuw i8, ptr %.71442.us.i, i64 16
  %i.coq = getelementptr inbounds nuw [4 x i8], ptr %.28341446.us.i, i64 %indvars.iv1799.i
  %i.cor = getelementptr inbounds nuw i8, ptr %i.coq, i64 8 ; 2 uses
  %i.cos = load float, ptr %i.cor, align 4, !tbaa !39
  store float %i.cos, ptr %i.cop, align 4, !tbaa !39
  %i.cot = getelementptr inbounds nuw [4 x i8], ptr %i.cor, i64 %i.buh
  %i.cou = getelementptr inbounds nuw i8, ptr %.71442.us.i, i64 20
  %i.cov = load float, ptr %i.cot, align 4, !tbaa !39
  store float %i.cov, ptr %i.cou, align 4, !tbaa !39
  %i.cow = getelementptr inbounds nuw i8, ptr %.71442.us.i, i64 24
  %i.cox = getelementptr inbounds nuw [4 x i8], ptr %.28341446.us.i, i64 %indvars.iv1799.i
  %i.coy = getelementptr inbounds nuw i8, ptr %i.cox, i64 12 ; 2 uses
  %i.coz = load float, ptr %i.coy, align 4, !tbaa !39
  store float %i.coz, ptr %i.cow, align 4, !tbaa !39
  %i.cpa = getelementptr inbounds nuw [4 x i8], ptr %i.coy, i64 %i.buh
  %i.cpb = getelementptr inbounds nuw i8, ptr %.71442.us.i, i64 28
  %i.cpc = load float, ptr %i.cpa, align 4, !tbaa !39
  store float %i.cpc, ptr %i.cpb, align 4, !tbaa !39
  %i.cpd = getelementptr inbounds nuw i8, ptr %.71442.us.i, i64 32 ; 2 uses
  %indvars.iv.next1800.i.3 = add nuw nsw i64 %indvars.iv1799.i, 4 ; 2 uses
  %exitcond1803.not.i.3 = icmp eq i64 %indvars.iv.next1800.i.3, %wide.trip.count1788.i
  br i1 %exitcond1803.not.i.3, label %._crit_edge1444.us.i, label %scalar.ph1063, !llvm.loop !277

._crit_edge1444.us.i:                             ; preds = %scalar.ph1063.prol.loopexit, %scalar.ph1063, %middle.block1078
  %.lcssa632 = phi ptr [ %i.cnn, %middle.block1078 ], [ %.lcssa1246.unr, %scalar.ph1063.prol.loopexit ], [ %i.cpd, %scalar.ph1063 ] ; 2 uses
  %i.cpe = getelementptr inbounds nuw [4 x i8], ptr %.28341446.us.i, i64 %i.bun ; 2 uses
  %i.cpf = add nuw nsw i32 %.21448.us.i, 2        ; 3 uses
  %i.cpg = or disjoint i32 %i.cpf, 1
  %i.cph = icmp slt i32 %i.cpg, %i.cj
  br i1 %i.cph, label %.preheader1083.us.i, label %.preheader1086.i, !llvm.loop !278

.preheader1086.i:                                 ; preds = %._crit_edge1444.us.i, %.preheader1087.i
  %.2834.lcssa.i = phi ptr [ %.1833.lcssa.i, %.preheader1087.i ], [ %i.cpe, %._crit_edge1444.us.i ] ; 12 uses
  %.6.lcssa.i = phi ptr [ %.3831.lcssa.i, %.preheader1087.i ], [ %.lcssa632, %._crit_edge1444.us.i ]
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %.preheader1087.i ], [ %i.cpf, %._crit_edge1444.us.i ] ; 2 uses
  %i.cpi = icmp sge i32 %.2.lcssa.i, %i.cj
  %brmerge1475.i = or i1 %i.buo, %i.cpi
  br i1 %brmerge1475.i, label %._crit_edge1461.split.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader1086.i
  %.2834.lcssa.i1022 = ptrtoaddr ptr %.2834.lcssa.i to i64
  br label %iter.check

iter.check:                                       ; preds = %.preheader.i.preheader, %._crit_edge1457.i
  %.31460.i = phi i32 [ %i.cqd, %._crit_edge1457.i ], [ %.2.lcssa.i, %.preheader.i.preheader ]
  %.91459.i = phi ptr [ %.lcssa635, %._crit_edge1457.i ], [ %.6.lcssa.i, %.preheader.i.preheader ] ; 6 uses
  %.91459.i1023 = ptrtoaddr ptr %.91459.i to i64
  %i.cpj = sub i64 %.2834.lcssa.i1022, %.91459.i1023
  %diff.check = icmp ugt i64 %i.cpj, -128
  %or.cond1233 = select i1 %min.iters.check1025, i1 true, i1 %diff.check
  br i1 %or.cond1233, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check1026, label %vec.epilog.ph, label %vector.ph1027

vector.ph1027:                                    ; preds = %vector.main.loop.iter.check
  %i.cpk = getelementptr i8, ptr %.91459.i, i64 %i.bwx ; 2 uses
  br label %vector.body1029

vector.body1029:                                  ; preds = %vector.body1029, %vector.ph1027
  %index1030 = phi i64 [ 0, %vector.ph1027 ], [ %index.next1036, %vector.body1029 ] ; 3 uses
  %i.cpl = shl i64 %index1030, 2
  %next.gep1031 = getelementptr i8, ptr %.91459.i, i64 %i.cpl ; 4 uses
  %i.cpm = getelementptr inbounds nuw [4 x i8], ptr %.2834.lcssa.i, i64 %index1030 ; 4 uses
  %i.cpn = getelementptr inbounds nuw i8, ptr %i.cpm, i64 32
  %i.cpo = getelementptr inbounds nuw i8, ptr %i.cpm, i64 64
  %i.cpp = getelementptr inbounds nuw i8, ptr %i.cpm, i64 96
  %wide.load1032 = load <8 x float>, ptr %i.cpm, align 4, !tbaa !39
  %wide.load1033 = load <8 x float>, ptr %i.cpn, align 4, !tbaa !39
  %wide.load1034 = load <8 x float>, ptr %i.cpo, align 4, !tbaa !39
  %wide.load1035 = load <8 x float>, ptr %i.cpp, align 4, !tbaa !39
  %i.cpq = getelementptr i8, ptr %next.gep1031, i64 32
  %i.cpr = getelementptr i8, ptr %next.gep1031, i64 64
  %i.cps = getelementptr i8, ptr %next.gep1031, i64 96
  store <8 x float> %wide.load1032, ptr %next.gep1031, align 4, !tbaa !39
  store <8 x float> %wide.load1033, ptr %i.cpq, align 4, !tbaa !39
  store <8 x float> %wide.load1034, ptr %i.cpr, align 4, !tbaa !39
  store <8 x float> %wide.load1035, ptr %i.cps, align 4, !tbaa !39
  %index.next1036 = add nuw i64 %index1030, 32    ; 2 uses
  %i.cpt = icmp eq i64 %index.next1036, %n.vec1028
  br i1 %i.cpt, label %middle.block1037, label %vector.body1029, !llvm.loop !279

middle.block1037:                                 ; preds = %vector.body1029
  br i1 %cmp.n1038, label %._crit_edge1457.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block1037
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !280

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec1028, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.cpu = getelementptr i8, ptr %.91459.i, i64 %i.bwy ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1041 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1044, %vec.epilog.vector.body ] ; 3 uses
  %i.cpv = shl i64 %index1041, 2
  %next.gep1042 = getelementptr i8, ptr %.91459.i, i64 %i.cpv
  %i.cpw = getelementptr inbounds nuw [4 x i8], ptr %.2834.lcssa.i, i64 %index1041
  %wide.load1043 = load <8 x float>, ptr %i.cpw, align 4, !tbaa !39
  store <8 x float> %wide.load1043, ptr %next.gep1042, align 4, !tbaa !39
  %index.next1044 = add nuw i64 %index1041, 8     ; 2 uses
  %i.cpx = icmp eq i64 %index.next1044, %n.vec1040
  br i1 %i.cpx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !281

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n1045, label %._crit_edge1457.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv1804.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec1028, %vec.epilog.iter.check ], [ %n.vec1040, %vec.epilog.middle.block ] ; 3 uses
  %.101455.i.ph = phi ptr [ %.91459.i, %iter.check ], [ %i.cpk, %vec.epilog.iter.check ], [ %i.cpu, %vec.epilog.middle.block ] ; 2 uses
  br i1 %lcmp.mod1321.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv1804.i.prol = phi i64 [ %indvars.iv.next1805.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv1804.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.101455.i.prol = phi ptr [ %i.cqa, %vec.epilog.scalar.ph.prol ], [ %.101455.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter1322 = phi i64 [ %prol.iter1322.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.cpy = getelementptr inbounds nuw [4 x i8], ptr %.2834.lcssa.i, i64 %indvars.iv1804.i.prol
  %i.cpz = load float, ptr %i.cpy, align 4, !tbaa !39
  store float %i.cpz, ptr %.101455.i.prol, align 4, !tbaa !39
  %i.cqa = getelementptr inbounds nuw i8, ptr %.101455.i.prol, i64 4 ; 3 uses
  %indvars.iv.next1805.i.prol = add nuw nsw i64 %indvars.iv1804.i.prol, 1 ; 2 uses
  %prol.iter1322.next = add i64 %prol.iter1322, 1 ; 2 uses
  %prol.iter1322.cmp.not = icmp eq i64 %prol.iter1322.next, %xtraiter1320
  br i1 %prol.iter1322.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !282

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa1249.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.cqa, %vec.epilog.scalar.ph.prol ]
  %indvars.iv1804.i.unr = phi i64 [ %indvars.iv1804.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next1805.i.prol, %vec.epilog.scalar.ph.prol ]
  %.101455.i.unr = phi ptr [ %.101455.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.cqa, %vec.epilog.scalar.ph.prol ]
  %i.cqb = sub nsw i64 %indvars.iv1804.i.ph, %wide.trip.count1788.i
  %i.cqc = icmp ugt i64 %i.cqb, -8
  br i1 %i.cqc, label %._crit_edge1457.i, label %vec.epilog.scalar.ph

._crit_edge1457.i:                                ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block1037
  %.lcssa635 = phi ptr [ %i.cpu, %vec.epilog.middle.block ], [ %i.cpk, %middle.block1037 ], [ %.lcssa1249.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.cri, %vec.epilog.scalar.ph ]
  %i.cqd = add nuw nsw i32 %.31460.i, 1           ; 2 uses
  %exitcond1809.not.i = icmp eq i32 %i.cqd, %i.cj
  br i1 %exitcond1809.not.i, label %._crit_edge1461.split.i, label %iter.check, !llvm.loop !283

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv1804.i = phi i64 [ %indvars.iv.next1805.i.7, %vec.epilog.scalar.ph ], [ %indvars.iv1804.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %.101455.i = phi ptr [ %i.cri, %vec.epilog.scalar.ph ], [ %.101455.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.cqe = getelementptr inbounds nuw [4 x i8], ptr %.2834.lcssa.i, i64 %indvars.iv1804.i
  %i.cqf = load float, ptr %i.cqe, align 4, !tbaa !39
  store float %i.cqf, ptr %.101455.i, align 4, !tbaa !39
  %i.cqg = getelementptr inbounds nuw i8, ptr %.101455.i, i64 4
  %i.cqh = getelementptr inbounds nuw [4 x i8], ptr %.2834.lcssa.i, i64 %indvars.iv1804.i
  %i.cqi = getelementptr inbounds nuw i8, ptr %i.cqh, i64 4
  %i.cqj = load float, ptr %i.cqi, align 4, !tbaa !39
  store float %i.cqj, ptr %i.cqg, align 4, !tbaa !39
  %i.cqk = getelementptr inbounds nuw i8, ptr %.101455.i, i64 8
  %i.cql = getelementptr inbounds nuw [4 x i8], ptr %.2834.lcssa.i, i64 %indvars.iv1804.i
  %i.cqm = getelementptr inbounds nuw i8, ptr %i.cql, i64 8
  %i.cqn = load float, ptr %i.cqm, align 4, !tbaa !39
  store float %i.cqn, ptr %i.cqk, align 4, !tbaa !39
  %i.cqo = getelementptr inbounds nuw i8, ptr %.101455.i, i64 12
  %i.cqp = getelementptr inbounds nuw [4 x i8], ptr %.2834.lcssa.i, i64 %indvars.iv1804.i
  %i.cqq = getelementptr inbounds nuw i8, ptr %i.cqp, i64 12
  %i.cqr = load float, ptr %i.cqq, align 4, !tbaa !39
  store float %i.cqr, ptr %i.cqo, align 4, !tbaa !39
  %i.cqs = getelementptr inbounds nuw i8, ptr %.101455.i, i64 16
  %i.cqt = getelementptr inbounds nuw [4 x i8], ptr %.2834.lcssa.i, i64 %indvars.iv1804.i
  %i.cqu = getelementptr inbounds nuw i8, ptr %i.cqt, i64 16
  %i.cqv = load float, ptr %i.cqu, align 4, !tbaa !39
  store float %i.cqv, ptr %i.cqs, align 4, !tbaa !39
  %i.cqw = getelementptr inbounds nuw i8, ptr %.101455.i, i64 20
  %i.cqx = getelementptr inbounds nuw [4 x i8], ptr %.2834.lcssa.i, i64 %indvars.iv1804.i
  %i.cqy = getelementptr inbounds nuw i8, ptr %i.cqx, i64 20
  %i.cqz = load float, ptr %i.cqy, align 4, !tbaa !39
  store float %i.cqz, ptr %i.cqw, align 4, !tbaa !39
  %i.cra = getelementptr inbounds nuw i8, ptr %.101455.i, i64 24
  %i.crb = getelementptr inbounds nuw [4 x i8], ptr %.2834.lcssa.i, i64 %indvars.iv1804.i
  %i.crc = getelementptr inbounds nuw i8, ptr %i.crb, i64 24
  %i.crd = load float, ptr %i.crc, align 4, !tbaa !39
  store float %i.crd, ptr %i.cra, align 4, !tbaa !39
  %i.cre = getelementptr inbounds nuw i8, ptr %.101455.i, i64 28
  %i.crf = getelementptr inbounds nuw [4 x i8], ptr %.2834.lcssa.i, i64 %indvars.iv1804.i
  %i.crg = getelementptr inbounds nuw i8, ptr %i.crf, i64 28
  %i.crh = load float, ptr %i.crg, align 4, !tbaa !39
  store float %i.crh, ptr %i.cre, align 4, !tbaa !39
  %i.cri = getelementptr inbounds nuw i8, ptr %.101455.i, i64 32 ; 2 uses
  %indvars.iv.next1805.i.7 = add nuw nsw i64 %indvars.iv1804.i, 8 ; 2 uses
  %exitcond1808.not.i.7 = icmp eq i64 %indvars.iv.next1805.i.7, %wide.trip.count1788.i
  br i1 %exitcond1808.not.i.7, label %._crit_edge1457.i, label %vec.epilog.scalar.ph, !llvm.loop !284

._crit_edge1461.split.i:                          ; preds = %._crit_edge1457.i, %.preheader1086.i, %.preheader1083.lr.ph.i
  %indvars.iv.next1811.i = add nsw i64 %indvars.iv1810.i, 1 ; 2 uses
  %indvars.iv.next1782.i = add i32 %indvars.iv1781.i, %i.btz
  %exitcond1814.not.i = icmp eq i64 %indvars.iv.next1811.i, %wide.trip.count1813.i
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond1814.not.i, label %_ZN4ncnnL35convolution_transform_kernel_packedERKNS_3MatERS0_iiii.exit, label %_ZN4ncnn3MatD2Ev.exit.i226, !llvm.loop !285

_ZN4ncnnL35convolution_transform_kernel_packedERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge1461.split.i, %.preheader1089.i, %bb.it
  %i.crj = load i8, ptr %1, align 8, !tbaa !69, !range !48, !noundef !49
  %i.crk = trunc nuw i8 %i.crj to i1
  br i1 %i.crk, label %bb.ke, label %bb.kk

bb.ke:                                            ; preds = %_ZN4ncnnL35convolution_transform_kernel_packedERKNS_3MatERS0_iiii.exit
  %i.crl = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.crm = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.crn = load ptr, ptr %i.crm, align 8, !tbaa !11 ; 2 uses
  %.not.i179 = icmp eq ptr %i.crn, null
  br i1 %.not.i179, label %_ZN4ncnn3Mat7releaseEv.exit181, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.cro = atomicrmw add ptr %i.crn, i32 -1 acq_rel, align 4
  %i.crp = icmp eq i32 %i.cro, 1
  br i1 %i.crp, label %bb.kg, label %_ZN4ncnn3Mat7releaseEv.exit181

bb.kg:                                            ; preds = %bb.kf
  %i.crq = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.crr = load ptr, ptr %i.crq, align 8, !tbaa !17 ; 3 uses
  %.not3.i180 = icmp eq ptr %i.crr, null
  %i.crs = load ptr, ptr %i.crl, align 8, !tbaa !18 ; 3 uses
  br i1 %.not3.i180, label %bb.ki, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %i.crt = load ptr, ptr %i.crr, align 8, !tbaa !9
  %i.cru = getelementptr inbounds nuw i8, ptr %i.crt, i64 24
  %i.crv = load ptr, ptr %i.cru, align 8
  call void %i.crv(ptr noundef nonnull align 8 dereferenceable(8) %i.crr, ptr noundef %i.crs), !inline_history !19
  br label %_ZN4ncnn3Mat7releaseEv.exit181

bb.ki:                                            ; preds = %bb.kg
  %.not.i197 = icmp eq ptr %i.crs, null
  br i1 %.not.i197, label %_ZN4ncnn3Mat7releaseEv.exit181, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  call void @free(ptr noundef nonnull %i.crs) #12
  br label %_ZN4ncnn3Mat7releaseEv.exit181

_ZN4ncnn3Mat7releaseEv.exit181:                   ; preds = %bb.kj, %bb.ki, %bb.ke, %bb.kf, %bb.kh
  %i.crw = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.crx = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i64 0, ptr %i.crx, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.crl, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.crw, i8 0, i64 20, i1 false)
  br label %bb.kk

bb.kk:                                            ; preds = %bb.dx, %_ZN4ncnn3Mat7releaseEv.exit184, %_ZN4ncnnL40convolution_im2col_gemm_transform_kernelERKNS_3MatERS0_iiiiRKNS_6OptionE.exit, %_ZN4ncnn3Mat7releaseEv.exit181, %_ZN4ncnnL35convolution_transform_kernel_packedERKNS_3MatERS0_iiii.exit, %bb.fj, %_ZN4ncnn3Mat7releaseEv.exit187, %bb.a, %bb.ad, %bb.ab
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn19Convolution_x86_avx16destroy_pipelineERKNS_6OptionE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1168) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #2 align 2 {
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
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn19Convolution_x86_avx7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(1168) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.ncnn::Mat", align 16        ; 20 uses
  %5 = alloca %"class.ncnn::Mat", align 8         ; 15 uses
  %6 = alloca %"class.ncnn::Mat", align 16        ; 20 uses
  %7 = alloca %"class.ncnn::Mat", align 8         ; 15 uses
  %8 = alloca %"class.ncnn::ParamDict", align 8   ; 24 uses
  %9 = alloca [2 x %"class.ncnn::Mat"], align 16  ; 41 uses
  %10 = alloca %"class.ncnn::ModelBinFromMatArray", align 8 ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !286    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %2, align 8, !tbaa !286
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
end_hunk_0
begin_hunk_1_@_ZN4ncnn19Convolution_x86_avx21create_pipeline_bf16sERKNS_6OptionE:bb.a
  %i.bxj = getelementptr inbounds nuw i8, ptr %.41426.us.i, i64 8 ; 2 uses
  %indvars.iv.next1793.i = add nuw nsw i64 %indvars.iv1792.i, 1 ; 2 uses
  %exitcond1796.not.i = icmp eq i64 %indvars.iv.next1793.i, %wide.trip.count1788.i
  br i1 %exitcond1796.not.i, label %._crit_edge1428.us.i, label %scalar.ph618, !llvm.loop !618

._crit_edge1428.us.i:                             ; preds = %scalar.ph618, %middle.block631
  %.lcssa409 = phi ptr [ %i.bwc, %middle.block631 ], [ %i.bxj, %scalar.ph618 ] ; 2 uses
  %i.bxk = getelementptr inbounds nuw [4 x i8], ptr %.18331430.us.i, i64 %i.biz ; 2 uses
  %i.bxl = add nuw nsw i32 %.11432.us.i, 4        ; 3 uses
  %i.bxm = or disjoint i32 %i.bxl, 3
  %i.bxn = icmp slt i32 %i.bxm, %i.p
  br i1 %i.bxn, label %.preheader1084.us.i, label %.preheader1087.i, !llvm.loop !619

.preheader1087.i:                                 ; preds = %._crit_edge1428.us.i, %.preheader1084.preheader.i, %.preheader1088.thread.i, %.preheader1088.i
  %.1833.lcssa.i = phi ptr [ %.0832.lcssa.i, %.preheader1088.i ], [ %scevgep1783.i, %.preheader1088.thread.i ], [ %scevgep1790.i, %.preheader1084.preheader.i ], [ %i.bxk, %._crit_edge1428.us.i ] ; 2 uses
  %.3831.lcssa.i = phi ptr [ %.0828.lcssa.i, %.preheader1088.i ], [ %i.bsz, %.preheader1088.thread.i ], [ %.0828.lcssa19491955.i, %.preheader1084.preheader.i ], [ %.lcssa409, %._crit_edge1428.us.i ] ; 2 uses
  %.1.lcssa.i = phi i32 [ %.0827.lcssa.i, %.preheader1088.i ], [ %i.bjk, %.preheader1088.thread.i ], [ %i.bwb, %.preheader1084.preheader.i ], [ %i.bxl, %._crit_edge1428.us.i ] ; 3 uses
  %i.bxo = or disjoint i32 %.1.lcssa.i, 1
  %i.bxp = icmp slt i32 %i.bxo, %i.p
  br i1 %i.bxp, label %.preheader1083.lr.ph.i, label %.preheader1086.i

.preheader1083.lr.ph.i:                           ; preds = %.preheader1087.i
  br i1 %i.biu, label %.preheader1083.us.i, label %._crit_edge1461.split.i

.preheader1083.us.i:                              ; preds = %.preheader1083.lr.ph.i, %._crit_edge1444.us.i
  %.21448.us.i = phi i32 [ %i.byp, %._crit_edge1444.us.i ], [ %.1.lcssa.i, %.preheader1083.lr.ph.i ]
  %.61447.us.i = phi ptr [ %.lcssa412, %._crit_edge1444.us.i ], [ %.3831.lcssa.i, %.preheader1083.lr.ph.i ] ; 4 uses
  %.28341446.us.i = phi ptr [ %i.byo, %._crit_edge1444.us.i ], [ %.1833.lcssa.i, %.preheader1083.lr.ph.i ] ; 3 uses
  br i1 %min.iters.check600, label %scalar.ph599.preheader, label %vector.ph601

vector.ph601:                                     ; preds = %.preheader1083.us.i
  %i.bxq = getelementptr i8, ptr %.61447.us.i, i64 %i.bjr ; 2 uses
  br label %vector.body603

vector.body603:                                   ; preds = %vector.body603, %vector.ph601
  %index604 = phi i64 [ 0, %vector.ph601 ], [ %index.next613, %vector.body603 ] ; 3 uses
  %i.bxr = shl i64 %index604, 2                   ; 2 uses
  %next.gep605 = getelementptr i8, ptr %.61447.us.i, i64 %i.bxr
  %i.bxs = getelementptr i8, ptr %.61447.us.i, i64 %i.bxr
  %next.gep606 = getelementptr i8, ptr %i.bxs, i64 16
  %i.bxt = getelementptr inbounds nuw [4 x i8], ptr %.28341446.us.i, i64 %index604 ; 3 uses
  %i.bxu = getelementptr inbounds nuw i8, ptr %i.bxt, i64 16
  %wide.load607 = load <4 x i32>, ptr %i.bxt, align 4, !tbaa !39
  %wide.load608 = load <4 x i32>, ptr %i.bxu, align 4, !tbaa !39
  %i.bxv = lshr <4 x i32> %wide.load607, splat (i32 16)
  %i.bxw = lshr <4 x i32> %wide.load608, splat (i32 16)
  %i.bxx = getelementptr inbounds nuw [4 x i8], ptr %i.bxt, i64 %i.biv ; 2 uses
  %i.bxy = getelementptr inbounds nuw i8, ptr %i.bxx, i64 16
  %wide.load609 = load <4 x i32>, ptr %i.bxx, align 4, !tbaa !39
  %wide.load610 = load <4 x i32>, ptr %i.bxy, align 4, !tbaa !39
  %i.bxz = lshr <4 x i32> %wide.load609, splat (i32 16)
  %i.bya = lshr <4 x i32> %wide.load610, splat (i32 16)
  %i.byb = shufflevector <4 x i32> %i.bxv, <4 x i32> %i.bxz, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec611 = trunc nuw <8 x i32> %i.byb to <8 x i16>
  store <8 x i16> %interleaved.vec611, ptr %next.gep605, align 2, !tbaa !573
  %i.byc = shufflevector <4 x i32> %i.bxw, <4 x i32> %i.bya, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec612 = trunc nuw <8 x i32> %i.byc to <8 x i16>
  store <8 x i16> %interleaved.vec612, ptr %next.gep606, align 2, !tbaa !573
  %index.next613 = add nuw i64 %index604, 8       ; 2 uses
  %i.byd = icmp eq i64 %index.next613, %n.vec602
  br i1 %i.byd, label %middle.block614, label %vector.body603, !llvm.loop !620

middle.block614:                                  ; preds = %vector.body603
  br i1 %cmp.n615, label %._crit_edge1444.us.i, label %scalar.ph599.preheader

scalar.ph599.preheader:                           ; preds = %.preheader1083.us.i, %middle.block614
  %indvars.iv1799.i.ph = phi i64 [ 0, %.preheader1083.us.i ], [ %n.vec602, %middle.block614 ]
  %.71442.us.i.ph = phi ptr [ %.61447.us.i, %.preheader1083.us.i ], [ %i.bxq, %middle.block614 ]
  br label %scalar.ph599

scalar.ph599:                                     ; preds = %scalar.ph599.preheader, %scalar.ph599
  %indvars.iv1799.i = phi i64 [ %indvars.iv.next1800.i, %scalar.ph599 ], [ %indvars.iv1799.i.ph, %scalar.ph599.preheader ] ; 2 uses
  %.71442.us.i = phi ptr [ %i.byn, %scalar.ph599 ], [ %.71442.us.i.ph, %scalar.ph599.preheader ] ; 3 uses
  %i.bye = getelementptr inbounds nuw [4 x i8], ptr %.28341446.us.i, i64 %indvars.iv1799.i ; 2 uses
  %i.byf = load i32, ptr %i.bye, align 4, !tbaa !39
  %i.byg = lshr i32 %i.byf, 16
  %i.byh = trunc nuw i32 %i.byg to i16
  store i16 %i.byh, ptr %.71442.us.i, align 2, !tbaa !573
  %i.byi = getelementptr inbounds nuw [4 x i8], ptr %i.bye, i64 %i.biv
  %i.byj = getelementptr inbounds nuw i8, ptr %.71442.us.i, i64 2
  %i.byk = load i32, ptr %i.byi, align 4, !tbaa !39
  %i.byl = lshr i32 %i.byk, 16
  %i.bym = trunc nuw i32 %i.byl to i16
  store i16 %i.bym, ptr %i.byj, align 2, !tbaa !573
  %i.byn = getelementptr inbounds nuw i8, ptr %.71442.us.i, i64 4 ; 2 uses
  %indvars.iv.next1800.i = add nuw nsw i64 %indvars.iv1799.i, 1 ; 2 uses
  %exitcond1803.not.i = icmp eq i64 %indvars.iv.next1800.i, %wide.trip.count1788.i
  br i1 %exitcond1803.not.i, label %._crit_edge1444.us.i, label %scalar.ph599, !llvm.loop !621

._crit_edge1444.us.i:                             ; preds = %scalar.ph599, %middle.block614
  %.lcssa412 = phi ptr [ %i.bxq, %middle.block614 ], [ %i.byn, %scalar.ph599 ] ; 2 uses
  %i.byo = getelementptr inbounds nuw [4 x i8], ptr %.28341446.us.i, i64 %i.bjb ; 2 uses
  %i.byp = add nuw nsw i32 %.21448.us.i, 2        ; 3 uses
  %i.byq = or disjoint i32 %i.byp, 1
  %i.byr = icmp slt i32 %i.byq, %i.p
  br i1 %i.byr, label %.preheader1083.us.i, label %.preheader1086.i, !llvm.loop !622

.preheader1086.i:                                 ; preds = %._crit_edge1444.us.i, %.preheader1087.i
  %.2834.lcssa.i = phi ptr [ %.1833.lcssa.i, %.preheader1087.i ], [ %i.byo, %._crit_edge1444.us.i ] ; 3 uses
  %.6.lcssa.i = phi ptr [ %.3831.lcssa.i, %.preheader1087.i ], [ %.lcssa412, %._crit_edge1444.us.i ]
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %.preheader1087.i ], [ %i.byp, %._crit_edge1444.us.i ] ; 2 uses
  %i.bys = icmp sge i32 %.2.lcssa.i, %i.p
  %brmerge1475.i = or i1 %i.bjc, %i.bys
  br i1 %brmerge1475.i, label %._crit_edge1461.split.i, label %iter.check

iter.check:                                       ; preds = %.preheader1086.i, %._crit_edge1457.i
  %.31460.i = phi i32 [ %i.bzr, %._crit_edge1457.i ], [ %.2.lcssa.i, %.preheader1086.i ]
  %.91459.i = phi ptr [ %.lcssa415, %._crit_edge1457.i ], [ %.6.lcssa.i, %.preheader1086.i ] ; 5 uses
  br i1 %min.iters.check576, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check577, label %vec.epilog.ph, label %vector.ph578

vector.ph578:                                     ; preds = %vector.main.loop.iter.check
  %i.byt = getelementptr i8, ptr %.91459.i, i64 %i.bjt ; 2 uses
  br label %vector.body580

vector.body580:                                   ; preds = %vector.body580, %vector.ph578
  %index581 = phi i64 [ 0, %vector.ph578 ], [ %index.next587, %vector.body580 ] ; 3 uses
  %i.byu = shl i64 %index581, 1
  %next.gep582 = getelementptr i8, ptr %.91459.i, i64 %i.byu ; 4 uses
  %i.byv = getelementptr inbounds nuw [4 x i8], ptr %.2834.lcssa.i, i64 %index581 ; 4 uses
  %i.byw = getelementptr inbounds nuw i8, ptr %i.byv, i64 32
  %i.byx = getelementptr inbounds nuw i8, ptr %i.byv, i64 64
  %i.byy = getelementptr inbounds nuw i8, ptr %i.byv, i64 96
  %wide.load583 = load <8 x i32>, ptr %i.byv, align 4, !tbaa !39
  %wide.load584 = load <8 x i32>, ptr %i.byw, align 4, !tbaa !39
  %wide.load585 = load <8 x i32>, ptr %i.byx, align 4, !tbaa !39
  %wide.load586 = load <8 x i32>, ptr %i.byy, align 4, !tbaa !39
  %i.byz = lshr <8 x i32> %wide.load583, splat (i32 16)
  %i.bza = lshr <8 x i32> %wide.load584, splat (i32 16)
  %i.bzb = lshr <8 x i32> %wide.load585, splat (i32 16)
  %i.bzc = lshr <8 x i32> %wide.load586, splat (i32 16)
  %i.bzd = trunc nuw <8 x i32> %i.byz to <8 x i16>
  %i.bze = trunc nuw <8 x i32> %i.bza to <8 x i16>
  %i.bzf = trunc nuw <8 x i32> %i.bzb to <8 x i16>
  %i.bzg = trunc nuw <8 x i32> %i.bzc to <8 x i16>
  %i.bzh = getelementptr i8, ptr %next.gep582, i64 16
  %i.bzi = getelementptr i8, ptr %next.gep582, i64 32
  %i.bzj = getelementptr i8, ptr %next.gep582, i64 48
  store <8 x i16> %i.bzd, ptr %next.gep582, align 2, !tbaa !573
  store <8 x i16> %i.bze, ptr %i.bzh, align 2, !tbaa !573
  store <8 x i16> %i.bzf, ptr %i.bzi, align 2, !tbaa !573
  store <8 x i16> %i.bzg, ptr %i.bzj, align 2, !tbaa !573
  %index.next587 = add nuw i64 %index581, 32      ; 2 uses
  %i.bzk = icmp eq i64 %index.next587, %n.vec579
  br i1 %i.bzk, label %middle.block588, label %vector.body580, !llvm.loop !623

middle.block588:                                  ; preds = %vector.body580
  br i1 %cmp.n589, label %._crit_edge1457.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block588
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !298

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec579, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.bzl = getelementptr i8, ptr %.91459.i, i64 %i.bju ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index592 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next595, %vec.epilog.vector.body ] ; 3 uses
  %i.bzm = shl i64 %index592, 1
  %next.gep593 = getelementptr i8, ptr %.91459.i, i64 %i.bzm
  %i.bzn = getelementptr inbounds nuw [4 x i8], ptr %.2834.lcssa.i, i64 %index592
  %wide.load594 = load <4 x i32>, ptr %i.bzn, align 4, !tbaa !39
  %i.bzo = lshr <4 x i32> %wide.load594, splat (i32 16)
  %i.bzp = trunc nuw <4 x i32> %i.bzo to <4 x i16>
  store <4 x i16> %i.bzp, ptr %next.gep593, align 2, !tbaa !573
  %index.next595 = add nuw i64 %index592, 4       ; 2 uses
  %i.bzq = icmp eq i64 %index.next595, %n.vec591
  br i1 %i.bzq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !624

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n596, label %._crit_edge1457.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv1804.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec579, %vec.epilog.iter.check ], [ %n.vec591, %vec.epilog.middle.block ]
  %.101455.i.ph = phi ptr [ %.91459.i, %iter.check ], [ %i.byt, %vec.epilog.iter.check ], [ %i.bzl, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge1457.i:                                ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block588
  %.lcssa415 = phi ptr [ %i.bzl, %vec.epilog.middle.block ], [ %i.byt, %middle.block588 ], [ %i.bzw, %vec.epilog.scalar.ph ]
  %i.bzr = add nuw nsw i32 %.31460.i, 1           ; 2 uses
  %exitcond1809.not.i = icmp eq i32 %i.bzr, %i.p
  br i1 %exitcond1809.not.i, label %._crit_edge1461.split.i, label %iter.check, !llvm.loop !625

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv1804.i = phi i64 [ %indvars.iv.next1805.i, %vec.epilog.scalar.ph ], [ %indvars.iv1804.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.101455.i = phi ptr [ %i.bzw, %vec.epilog.scalar.ph ], [ %.101455.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.bzs = getelementptr inbounds nuw [4 x i8], ptr %.2834.lcssa.i, i64 %indvars.iv1804.i
  %i.bzt = load i32, ptr %i.bzs, align 4, !tbaa !39
  %i.bzu = lshr i32 %i.bzt, 16
  %i.bzv = trunc nuw i32 %i.bzu to i16
  store i16 %i.bzv, ptr %.101455.i, align 2, !tbaa !573
  %i.bzw = getelementptr inbounds nuw i8, ptr %.101455.i, i64 2 ; 2 uses
  %indvars.iv.next1805.i = add nuw nsw i64 %indvars.iv1804.i, 1 ; 2 uses
  %exitcond1808.not.i = icmp eq i64 %indvars.iv.next1805.i, %wide.trip.count1788.i
  br i1 %exitcond1808.not.i, label %._crit_edge1457.i, label %vec.epilog.scalar.ph, !llvm.loop !626

._crit_edge1461.split.i:                          ; preds = %._crit_edge1457.i, %.preheader1086.i, %.preheader1083.lr.ph.i
  %indvars.iv.next1811.i = add nsw i64 %indvars.iv1810.i, 1 ; 2 uses
  %indvars.iv.next1782.i = add i32 %indvars.iv1781.i, %i.bin
  %exitcond1814.not.i = icmp eq i64 %indvars.iv.next1811.i, %wide.trip.count1813.i
  br i1 %exitcond1814.not.i, label %_ZN4ncnnL41convolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii.exit, label %_ZN4ncnn3MatD2Ev.exit.i102, !llvm.loop !627

_ZN4ncnnL41convolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge1461.split.i, %.preheader1089.i
  %i.bzx = load i8, ptr %1, align 8, !tbaa !69, !range !48, !noundef !49
  %i.bzy = trunc nuw i8 %i.bzx to i1
  br i1 %i.bzy, label %bb.eq, label %bb.ew

bb.eq:                                            ; preds = %_ZN4ncnnL41convolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii.exit
  %i.bzz = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.caa = load ptr, ptr %i.bzz, align 8, !tbaa !11 ; 2 uses
  %.not.i = icmp eq ptr %i.caa, null
  br i1 %.not.i, label %.sink.split, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.cab = atomicrmw add ptr %i.caa, i32 -1 acq_rel, align 4
  %i.cac = icmp eq i32 %i.cab, 1
  br i1 %i.cac, label %bb.es, label %.sink.split

bb.es:                                            ; preds = %bb.er
  %i.cad = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.cae = load ptr, ptr %i.cad, align 8, !tbaa !17 ; 3 uses
  %.not3.i = icmp eq ptr %i.cae, null
  %i.caf = load ptr, ptr %i.nw, align 8, !tbaa !18 ; 3 uses
  br i1 %.not3.i, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.cag = load ptr, ptr %i.cae, align 8, !tbaa !9
  %i.cah = getelementptr inbounds nuw i8, ptr %i.cag, i64 24
  %i.cai = load ptr, ptr %i.cah, align 8
  tail call void %i.cai(ptr noundef nonnull align 8 dereferenceable(8) %i.cae, ptr noundef %i.caf), !inline_history !19
  br label %.sink.split

bb.eu:                                            ; preds = %bb.es
  %.not.i99 = icmp eq ptr %i.caf, null
  br i1 %.not.i99, label %.sink.split, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  tail call void @free(ptr noundef nonnull %i.caf) #12
  br label %.sink.split

.sink.split:                                      ; preds = %bb.et, %bb.er, %bb.eq, %bb.eu, %bb.ev, %bb.dc, %bb.da, %bb.cz, %bb.dd, %bb.de, %bb.al, %bb.aj, %bb.ai, %bb.am, %bb.an
  %.sink405 = phi ptr [ %i.du, %bb.al ], [ %i.fh, %bb.dc ], [ %i.du, %bb.an ], [ %i.du, %bb.am ], [ %i.du, %bb.ai ], [ %i.du, %bb.aj ], [ %i.fh, %bb.de ], [ %i.fh, %bb.dd ], [ %i.fh, %bb.cz ], [ %i.fh, %bb.da ], [ %i.nw, %bb.ev ], [ %i.nw, %bb.eu ], [ %i.nw, %bb.eq ], [ %i.nw, %bb.er ], [ %i.nw, %bb.et ]
  %i.caj = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.cak = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i64 0, ptr %i.cak, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sink405, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.caj, i8 0, i64 20, i1 false)
  br label %bb.ew

bb.ew:                                            ; preds = %.sink.split, %_ZN4ncnnL46convolution_im2col_gemm_transform_kernel_bf16sERKNS_3MatERS0_iiiiRKNS_6OptionE.exit, %_ZN4ncnnL41convolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii.exit, %bb.ah
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
define internal fastcc void @_ZN4ncnnL37conv3x3s1_winograd63_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %4) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
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
  call void @__clang_call_terminate(ptr %i.am) #32
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

end_hunk_1
begin_hunk_2_@_ZN4ncnnL37conv3x3s1_winograd63_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined:bb.a
  %i.art = getelementptr inbounds nuw [4 x i8], ptr %i.arq, i64 %i.and
  %i.aru = load float, ptr %i.art, align 4, !tbaa !39
  %i.arv = getelementptr inbounds nuw i8, ptr %.528.us.i, i64 28
  store float %i.aru, ptr %i.arv, align 4, !tbaa !39
  %i.arw = getelementptr inbounds nuw i8, ptr %.010129.us.i, i64 1024 ; 2 uses
  %i.arx = getelementptr inbounds nuw i8, ptr %.528.us.i, i64 32 ; 3 uses
  %niter214.next.3 = add i32 %niter214, 4         ; 2 uses
  %niter214.ncmp.3 = icmp eq i32 %niter214.next.3, %unroll_iter213
  br i1 %niter214.ncmp.3, label %._crit_edge.us39.i.unr-lcssa, label %.lr.ph.us38.i.new, !llvm.loop !652

._crit_edge.us39.i.unr-lcssa:                     ; preds = %.lr.ph.us38.i.new
  br i1 %lcmp.mod210.not, label %._crit_edge.us39.i, label %.epil.preheader208

.epil.preheader208:                               ; preds = %._crit_edge.us39.i.unr-lcssa, %.lr.ph.us38.i
  %.010129.us.i.epil.init = phi ptr [ %gep.us37.i, %.lr.ph.us38.i ], [ %i.arw, %._crit_edge.us39.i.unr-lcssa ]
  %.528.us.i.epil.init = phi ptr [ %.431.us.i, %.lr.ph.us38.i ], [ %i.arx, %._crit_edge.us39.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod212)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader208
  %.010129.us.i.epil = phi ptr [ %.010129.us.i.epil.init, %.epil.preheader208 ], [ %i.asc, %bb.g ] ; 3 uses
  %.528.us.i.epil = phi ptr [ %.528.us.i.epil.init, %.epil.preheader208 ], [ %i.asd, %bb.g ] ; 3 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader208 ], [ %epil.iter.next, %bb.g ]
  %i.ary = load float, ptr %.010129.us.i.epil, align 4, !tbaa !39
  store float %i.ary, ptr %.528.us.i.epil, align 4, !tbaa !39
  %i.arz = getelementptr inbounds nuw [4 x i8], ptr %.010129.us.i.epil, i64 %i.and
  %i.asa = load float, ptr %i.arz, align 4, !tbaa !39
  %i.asb = getelementptr inbounds nuw i8, ptr %.528.us.i.epil, i64 4
  store float %i.asa, ptr %i.asb, align 4, !tbaa !39
  %i.asc = getelementptr inbounds nuw i8, ptr %.010129.us.i.epil, i64 256
  %i.asd = getelementptr inbounds nuw i8, ptr %.528.us.i.epil, i64 8 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter209
  br i1 %epil.iter.cmp.not, label %._crit_edge.us39.i, label %bb.g, !llvm.loop !653

._crit_edge.us39.i:                               ; preds = %bb.g, %._crit_edge.us39.i.unr-lcssa
  %.lcssa203 = phi ptr [ %i.arx, %._crit_edge.us39.i.unr-lcssa ], [ %i.asd, %bb.g ] ; 2 uses
  %indvars.iv.next72.i = add nuw nsw i64 %indvars.iv71.i, 2 ; 3 uses
  %i.ase = icmp slt i64 %indvars.iv.next72.i, %invariant.op106.i
  br i1 %i.ase, label %.lr.ph.us38.i, label %.preheader.loopexit.i, !llvm.loop !654

.preheader.loopexit.i:                            ; preds = %._crit_edge.us39.i
  %i.asf = trunc nsw i64 %indvars.iv.next72.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.preheader1.i
  %.4.lcssa.i = phi ptr [ %.2109.lcssa.i, %.preheader1.i ], [ %.lcssa203, %.preheader.loopexit.i ]
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %.preheader1.i ], [ %i.asf, %.preheader.loopexit.i ] ; 2 uses
  %i.asg = icmp slt i32 %.2.lcssa.i, %.sroa.speculated82
  br i1 %i.asg, label %.lr.ph48.i, label %._crit_edge49.split.i

.lr.ph48.i:                                       ; preds = %.preheader.i
  %invariant.gep50.i = getelementptr [4 x i8], ptr %i.ac, i64 %indvars.iv79.i ; 2 uses
  br i1 %i.anc, label %.lr.ph.preheader.i, label %._crit_edge49.split.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph48.i
  %i.ash = sext i32 %.2.lcssa.i to i64            ; 2 uses
  %i.asi = mul i64 %i.anr, %i.ash
  %scevgep144 = getelementptr i8, ptr %invariant.gep50.i, i64 %i.asi
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i53, %.lr.ph.preheader.i
  %indvars.iv75.i = phi i64 [ %i.ash, %.lr.ph.preheader.i ], [ %indvars.iv.next76.i, %._crit_edge.i53 ] ; 2 uses
  %.646.i = phi ptr [ %.4.lcssa.i, %.lr.ph.preheader.i ], [ %.lcssa142, %._crit_edge.i53 ] ; 6 uses
  %i.asj = mul nsw i64 %indvars.iv75.i, %i.and
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep50.i, i64 %i.asj ; 11 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %scevgep = getelementptr i8, ptr %.646.i, i64 4
  %scevgep143 = getelementptr i8, ptr %scevgep, i64 %i.cb
  %bound0 = icmp ult ptr %.646.i, %scevgep145
  %bound1 = icmp ult ptr %scevgep144, %scevgep143
  %found.conflict = and i1 %bound0, %bound1
  %i.ask = or i1 %found.conflict, %stride.check
  br i1 %i.ask, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.asl = getelementptr i8, ptr %gep.i, i64 %i.any
  %i.asm = getelementptr i8, ptr %.646.i, i64 %i.anz ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.asn = shl i64 %index, 8                      ; 8 uses
  %next.gep = getelementptr i8, ptr %gep.i, i64 %i.asn
  %i.aso = getelementptr i8, ptr %gep.i, i64 %i.asn
  %next.gep146 = getelementptr i8, ptr %i.aso, i64 256
  %i.asp = getelementptr i8, ptr %gep.i, i64 %i.asn
  %next.gep147 = getelementptr i8, ptr %i.asp, i64 512
  %i.asq = getelementptr i8, ptr %gep.i, i64 %i.asn
  %next.gep148 = getelementptr i8, ptr %i.asq, i64 768
  %i.asr = getelementptr i8, ptr %gep.i, i64 %i.asn
  %next.gep149 = getelementptr i8, ptr %i.asr, i64 1024
  %i.ass = getelementptr i8, ptr %gep.i, i64 %i.asn
  %next.gep150 = getelementptr i8, ptr %i.ass, i64 1280
  %i.ast = getelementptr i8, ptr %gep.i, i64 %i.asn
  %next.gep151 = getelementptr i8, ptr %i.ast, i64 1536
  %i.asu = getelementptr i8, ptr %gep.i, i64 %i.asn
  %next.gep152 = getelementptr i8, ptr %i.asu, i64 1792
  %i.asv = shl i64 %index, 2
  %next.gep153 = getelementptr i8, ptr %.646.i, i64 %i.asv
  %i.asw = load float, ptr %next.gep, align 4, !tbaa !39, !alias.scope !655
  %i.asx = load float, ptr %next.gep146, align 4, !tbaa !39, !alias.scope !655
  %i.asy = load float, ptr %next.gep147, align 4, !tbaa !39, !alias.scope !655
  %i.asz = load float, ptr %next.gep148, align 4, !tbaa !39, !alias.scope !655
  %i.ata = load float, ptr %next.gep149, align 4, !tbaa !39, !alias.scope !655
  %i.atb = load float, ptr %next.gep150, align 4, !tbaa !39, !alias.scope !655
  %i.atc = load float, ptr %next.gep151, align 4, !tbaa !39, !alias.scope !655
  %i.atd = load float, ptr %next.gep152, align 4, !tbaa !39, !alias.scope !655
  %i.ate = insertelement <8 x float> poison, float %i.asw, i64 0
  %i.atf = insertelement <8 x float> %i.ate, float %i.asx, i64 1
  %i.atg = insertelement <8 x float> %i.atf, float %i.asy, i64 2
  %i.ath = insertelement <8 x float> %i.atg, float %i.asz, i64 3
  %i.ati = insertelement <8 x float> %i.ath, float %i.ata, i64 4
  %i.atj = insertelement <8 x float> %i.ati, float %i.atb, i64 5
  %i.atk = insertelement <8 x float> %i.atj, float %i.atc, i64 6
  %i.atl = insertelement <8 x float> %i.atk, float %i.atd, i64 7
  store <8 x float> %i.atl, ptr %next.gep153, align 4, !tbaa !39, !alias.scope !658, !noalias !655
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.atm = icmp eq i64 %index.next, %n.vec
  br i1 %i.atm, label %middle.block, label %vector.body, !llvm.loop !660

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i53, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.045.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %i.anx, %middle.block ] ; 4 uses
  %.09944.i.ph = phi ptr [ %gep.i, %vector.memcheck ], [ %gep.i, %.lr.ph.i ], [ %i.asl, %middle.block ] ; 2 uses
  %.743.i.ph = phi ptr [ %.646.i, %vector.memcheck ], [ %.646.i, %.lr.ph.i ], [ %i.asm, %middle.block ] ; 2 uses
  %i.atn = sub i32 %.sroa.speculated, %.045.i.ph
  %xtraiter215 = and i32 %i.atn, 7                ; 2 uses
  %lcmp.mod216.not = icmp eq i32 %xtraiter215, 0
  br i1 %lcmp.mod216.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.045.i.prol = phi i32 [ %i.atr, %scalar.ph.prol ], [ %.045.i.ph, %scalar.ph.preheader ]
  %.09944.i.prol = phi ptr [ %i.atp, %scalar.ph.prol ], [ %.09944.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.743.i.prol = phi ptr [ %i.atq, %scalar.ph.prol ], [ %.743.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ato = load float, ptr %.09944.i.prol, align 4, !tbaa !39
  store float %i.ato, ptr %.743.i.prol, align 4, !tbaa !39
  %i.atp = getelementptr inbounds nuw i8, ptr %.09944.i.prol, i64 256 ; 2 uses
  %i.atq = getelementptr inbounds nuw i8, ptr %.743.i.prol, i64 4 ; 3 uses
  %i.atr = add nuw nsw i32 %.045.i.prol, 1        ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter215
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !661

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa204.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.atq, %scalar.ph.prol ]
  %.045.i.unr = phi i32 [ %.045.i.ph, %scalar.ph.preheader ], [ %i.atr, %scalar.ph.prol ]
  %.09944.i.unr = phi ptr [ %.09944.i.ph, %scalar.ph.preheader ], [ %i.atp, %scalar.ph.prol ]
  %.743.i.unr = phi ptr [ %.743.i.ph, %scalar.ph.preheader ], [ %i.atq, %scalar.ph.prol ]
  %i.ats = sub i32 %.045.i.ph, %.sroa.speculated
  %i.att = icmp ugt i32 %i.ats, -8
  br i1 %i.att, label %._crit_edge.i53, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.045.i = phi i32 [ %i.aus, %scalar.ph ], [ %.045.i.unr, %scalar.ph.prol.loopexit ]
  %.09944.i = phi ptr [ %i.auq, %scalar.ph ], [ %.09944.i.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.743.i = phi ptr [ %i.aur, %scalar.ph ], [ %.743.i.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.atu = load float, ptr %.09944.i, align 4, !tbaa !39
  store float %i.atu, ptr %.743.i, align 4, !tbaa !39
  %i.atv = getelementptr inbounds nuw i8, ptr %.09944.i, i64 256
  %i.atw = getelementptr inbounds nuw i8, ptr %.743.i, i64 4
  %i.atx = load float, ptr %i.atv, align 4, !tbaa !39
  store float %i.atx, ptr %i.atw, align 4, !tbaa !39
  %i.aty = getelementptr inbounds nuw i8, ptr %.09944.i, i64 512
  %i.atz = getelementptr inbounds nuw i8, ptr %.743.i, i64 8
  %i.aua = load float, ptr %i.aty, align 4, !tbaa !39
  store float %i.aua, ptr %i.atz, align 4, !tbaa !39
  %i.aub = getelementptr inbounds nuw i8, ptr %.09944.i, i64 768
  %i.auc = getelementptr inbounds nuw i8, ptr %.743.i, i64 12
  %i.aud = load float, ptr %i.aub, align 4, !tbaa !39
  store float %i.aud, ptr %i.auc, align 4, !tbaa !39
  %i.aue = getelementptr inbounds nuw i8, ptr %.09944.i, i64 1024
  %i.auf = getelementptr inbounds nuw i8, ptr %.743.i, i64 16
  %i.aug = load float, ptr %i.aue, align 4, !tbaa !39
  store float %i.aug, ptr %i.auf, align 4, !tbaa !39
  %i.auh = getelementptr inbounds nuw i8, ptr %.09944.i, i64 1280
  %i.aui = getelementptr inbounds nuw i8, ptr %.743.i, i64 20
  %i.auj = load float, ptr %i.auh, align 4, !tbaa !39
  store float %i.auj, ptr %i.aui, align 4, !tbaa !39
  %i.auk = getelementptr inbounds nuw i8, ptr %.09944.i, i64 1536
  %i.aul = getelementptr inbounds nuw i8, ptr %.743.i, i64 24
  %i.aum = load float, ptr %i.auk, align 4, !tbaa !39
  store float %i.aum, ptr %i.aul, align 4, !tbaa !39
  %i.aun = getelementptr inbounds nuw i8, ptr %.09944.i, i64 1792
  %i.auo = getelementptr inbounds nuw i8, ptr %.743.i, i64 28
  %i.aup = load float, ptr %i.aun, align 4, !tbaa !39
  store float %i.aup, ptr %i.auo, align 4, !tbaa !39
  %i.auq = getelementptr inbounds nuw i8, ptr %.09944.i, i64 2048
  %i.aur = getelementptr inbounds nuw i8, ptr %.743.i, i64 32 ; 2 uses
  %i.aus = add nuw nsw i32 %.045.i, 8             ; 2 uses
  %exitcond74.not.i.7 = icmp eq i32 %i.aus, %.sroa.speculated
  br i1 %exitcond74.not.i.7, label %._crit_edge.i53, label %scalar.ph, !llvm.loop !662

._crit_edge.i53:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa142 = phi ptr [ %i.asm, %middle.block ], [ %.lcssa204.unr, %scalar.ph.prol.loopexit ], [ %i.aur, %scalar.ph ]
  %indvars.iv.next76.i = add nsw i64 %indvars.iv75.i, 1 ; 2 uses
  %exitcond78.not.i = icmp eq i64 %indvars.iv.next76.i, %i.ba
  br i1 %exitcond78.not.i, label %._crit_edge49.split.i, label %.lr.ph.i, !llvm.loop !663

._crit_edge49.split.i:                            ; preds = %._crit_edge.i53, %.lr.ph48.i, %.preheader.i, %.lr.ph33.i
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %exitcond83.not.i = icmp eq i64 %indvars.iv.next80.i, 64
  br i1 %exitcond83.not.i, label %_ZN4ncnn3MatD2Ev.exit34, label %bb.e, !llvm.loop !664

_ZN4ncnn3MatD2Ev.exit34:                          ; preds = %._crit_edge49.split.i
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.bd ; 2 uses
  %i.aut = icmp slt i64 %indvars.iv.next, %i.be
  %indvar.next = add i32 %indvar, 1
  %indvar.next160 = add i64 %indvar159, 1
  br i1 %i.aut, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !665

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.i:                                             ; preds = %bb.c
  %i.auu = landingpad { ptr, i32 }
          catch ptr null
  %i.auv = extractvalue { ptr, i32 } %i.auu, 0
  call void @__clang_call_terminate(ptr %i.auv) #32
  unreachable
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #12

declare noundef i32 @_ZN4ncnn18get_omp_thread_numEv() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare !callback !666 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #12

declare noundef i32 @_ZN4ncnn26get_physical_big_cpu_countEv() local_unnamed_addr #1

declare noundef i32 @_ZN4ncnn22get_physical_cpu_countEv() local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #13

declare void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL37conv3x3s1_winograd43_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.h

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
  %.not133 = icmp sgt i32 %i.k, %i.j
  br i1 %.not133, label %._crit_edge, label %.lr.ph135

.lr.ph135:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph135, %_ZN4ncnn3MatD2Ev.exit
  %indvar170 = phi i32 [ 0, %.lr.ph135 ], [ %indvar.next171, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %.033134 = phi i32 [ %i.k, %.lr.ph135 ], [ %i.bl, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.r = add i32 %i.k, %indvar170
  %i.s = mul i32 %i.r, 9
  %i.t = load i32, ptr %3, align 4, !tbaa !67     ; 2 uses
  %i.u = mul i32 %i.t, %.033134                   ; 3 uses
  %i.v = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %_ZN4ncnn3Mat7channelEi.exit49 unwind label %bb.i

_ZN4ncnn3Mat7channelEi.exit49:                    ; preds = %bb.c
  %i.w = load ptr, ptr %4, align 8, !tbaa !18, !noalias !668 ; 2 uses
  %i.x = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !668
  %i.y = sext i32 %i.v to i64
  %i.z = mul i64 %i.x, %i.y
  %i.aa = load i64, ptr %i.m, align 8, !tbaa !65, !noalias !668
  %i.ab = mul i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = getelementptr i8, ptr %i.w, i64 %i.ab   ; 5 uses
  %i.ad = load i32, ptr %5, align 4, !tbaa !67    ; 6 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %_ZN4ncnn3Mat7channelEi.exit49
  %i.af = load i32, ptr %7, align 4, !tbaa !67
  %i.ag = sub i32 %i.af, %i.u
  %i.ah = load i32, ptr %3, align 4, !tbaa !67    ; 2 uses
  %.sroa.speculated82 = call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.ag) ; 10 uses
  %i.ai = load i32, ptr %6, align 4, !tbaa !67    ; 9 uses
  %i.aj = icmp sgt i32 %.sroa.speculated82, 0
  %wide.trip.count26.i = zext nneg i32 %.sroa.speculated82 to i64
  %i.ak = sdiv i32 %i.u, %i.ah
  %i.al = load i32, ptr %i.n, align 4, !tbaa !75, !noalias !671
  %i.am = load i32, ptr %i.o, align 8, !tbaa !76, !noalias !671
  %i.an = load ptr, ptr %10, align 8, !tbaa !18, !noalias !671
  %i.ao = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !671
  %i.ap = sext i32 %i.ak to i64
  %i.aq = mul i64 %i.ao, %i.ap
  %i.ar = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !671 ; 2 uses
  %i.as = mul i64 %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.as
  %i.au = sext i32 %i.al to i64
  %i.av = sext i32 %i.am to i64
  %i.aw = mul i64 %i.ar, %i.au                    ; 2 uses
  %i.ax = mul i64 %i.aw, %i.av
  %i.ay = icmp sgt i32 %.sroa.speculated82, 7
  %i.az = and i32 %.sroa.speculated82, -8         ; 3 uses
  %i.ba = sext i32 %.sroa.speculated82 to i64     ; 5 uses
  %i.bb = or disjoint i32 %i.az, 3
  %i.bc = icmp slt i32 %i.bb, %.sroa.speculated82
  %invariant.op.i = add nsw i64 %i.ba, -7
  %invariant.op105.i = add nsw i64 %i.ba, -3
  %invariant.op106.i = add nsw i64 %i.ba, -1
  %i.bd = sext i32 %i.ai to i64                   ; 2 uses
  %i.be = zext nneg i32 %i.ad to i64
  %i.bf = shl nsw i64 %i.ba, 2
  %i.bg = add nsw i64 %i.bf, -4
  %i.bh = mul nsw i64 %i.bd, 36
  %i.bi = mul i32 %i.t, %i.s
  %i.bj = getelementptr i8, ptr %i.w, i64 %i.ab
  %i.bk = getelementptr i8, ptr %i.bj, i64 4
  br label %bb.d

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnn3MatD2Ev.exit34, %_ZN4ncnn3Mat7channelEi.exit49
  %i.bl = add i32 %.033134, 1
  %i.bm = load i32, ptr %i.b, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.033134, %i.bm
  %indvar.next171 = add i32 %indvar170, 1
  br i1 %.not.not, label %bb.c, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit34
  %indvar167 = phi i64 [ 0, %.lr.ph ], [ %indvar.next168, %_ZN4ncnn3MatD2Ev.exit34 ] ; 3 uses
  %indvar = phi i32 [ 0, %.lr.ph ], [ %indvar.next, %_ZN4ncnn3MatD2Ev.exit34 ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit34 ] ; 8 uses
  %i.bn = trunc i64 %indvar167 to i32
  %i.bo = mul i32 %i.ai, %i.bn
  %i.bp = sub i32 %i.ad, %i.bo
  %smin198 = call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.bp)
  %i.bq = add i32 %smin198, -1                    ; 2 uses
  %i.br = mul i32 %i.ai, %indvar
  %i.bs = sub i32 %i.ad, %i.br
  %smin165 = call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.bs)
  %i.bt = zext i32 %smin165 to i64                ; 2 uses
  %i.bu = mul nuw nsw i64 %i.bt, 144
  %i.bv = mul i64 %i.bh, %indvar167               ; 2 uses
  %i.bw = mul nuw nsw i64 %i.bt, 36
  %i.bx = mul i32 %i.ai, %indvar
  %i.by = sub i32 %i.ad, %i.bx
  %smin = call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.by) ; 2 uses
  %i.bz = add i32 %smin, -1
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  %i.cb = shl nuw nsw i64 %i.ca, 2
  %i.cc = mul i32 %smin, 36                       ; 2 uses
  %i.cd = sext i32 %i.cc to i64
  %i.ce = mul i64 %i.bg, %i.cd
  %i.cf = mul nuw nsw i64 %i.ca, 144
  %i.cg = trunc i64 %indvars.iv to i32
  %i.ch = sub i32 %i.ad, %i.cg
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.ch) ; 22 uses
  %.val50 = load ptr, ptr %8, align 8             ; 3 uses
  br i1 %i.aj, label %.preheader10.lr.ph.i, label %_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_tileERKNS_3MatERS0_iiiii.exit

end_hunk_2
begin_hunk_3_@_ZN4ncnnL37conv3x3s1_winograd43_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined:bb.a
  %i.aec = getelementptr inbounds nuw [4 x i8], ptr %i.adz, i64 %i.zm
  %i.aed = load float, ptr %i.aec, align 4, !tbaa !39
  %i.aee = getelementptr inbounds nuw i8, ptr %.528.us.i, i64 28
  store float %i.aed, ptr %i.aee, align 4, !tbaa !39
  %i.aef = getelementptr inbounds nuw i8, ptr %.010129.us.i, i64 576 ; 2 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %.528.us.i, i64 32 ; 3 uses
  %niter207.next.3 = add i32 %niter207, 4         ; 2 uses
  %niter207.ncmp.3 = icmp eq i32 %niter207.next.3, %unroll_iter206
  br i1 %niter207.ncmp.3, label %._crit_edge.us39.i.unr-lcssa, label %.lr.ph.us38.i.new, !llvm.loop !652

._crit_edge.us39.i.unr-lcssa:                     ; preds = %.lr.ph.us38.i.new
  br i1 %lcmp.mod203.not, label %._crit_edge.us39.i, label %.epil.preheader201

.epil.preheader201:                               ; preds = %._crit_edge.us39.i.unr-lcssa, %.lr.ph.us38.i
  %.010129.us.i.epil.init = phi ptr [ %gep.us37.i, %.lr.ph.us38.i ], [ %i.aef, %._crit_edge.us39.i.unr-lcssa ]
  %.528.us.i.epil.init = phi ptr [ %.431.us.i, %.lr.ph.us38.i ], [ %i.aeg, %._crit_edge.us39.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod205)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader201
  %.010129.us.i.epil = phi ptr [ %.010129.us.i.epil.init, %.epil.preheader201 ], [ %i.ael, %bb.g ] ; 3 uses
  %.528.us.i.epil = phi ptr [ %.528.us.i.epil.init, %.epil.preheader201 ], [ %i.aem, %bb.g ] ; 3 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader201 ], [ %epil.iter.next, %bb.g ]
  %i.aeh = load float, ptr %.010129.us.i.epil, align 4, !tbaa !39
  store float %i.aeh, ptr %.528.us.i.epil, align 4, !tbaa !39
  %i.aei = getelementptr inbounds nuw [4 x i8], ptr %.010129.us.i.epil, i64 %i.zm
  %i.aej = load float, ptr %i.aei, align 4, !tbaa !39
  %i.aek = getelementptr inbounds nuw i8, ptr %.528.us.i.epil, i64 4
  store float %i.aej, ptr %i.aek, align 4, !tbaa !39
  %i.ael = getelementptr inbounds nuw i8, ptr %.010129.us.i.epil, i64 144
  %i.aem = getelementptr inbounds nuw i8, ptr %.528.us.i.epil, i64 8 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter202
  br i1 %epil.iter.cmp.not, label %._crit_edge.us39.i, label %bb.g, !llvm.loop !682

._crit_edge.us39.i:                               ; preds = %bb.g, %._crit_edge.us39.i.unr-lcssa
  %.lcssa196 = phi ptr [ %i.aeg, %._crit_edge.us39.i.unr-lcssa ], [ %i.aem, %bb.g ] ; 2 uses
  %indvars.iv.next72.i = add nuw nsw i64 %indvars.iv71.i, 2 ; 3 uses
  %i.aen = icmp slt i64 %indvars.iv.next72.i, %invariant.op106.i
  br i1 %i.aen, label %.lr.ph.us38.i, label %.preheader.loopexit.i, !llvm.loop !654

.preheader.loopexit.i:                            ; preds = %._crit_edge.us39.i
  %i.aeo = trunc nsw i64 %indvars.iv.next72.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.preheader1.i
  %.4.lcssa.i = phi ptr [ %.2109.lcssa.i, %.preheader1.i ], [ %.lcssa196, %.preheader.loopexit.i ]
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %.preheader1.i ], [ %i.aeo, %.preheader.loopexit.i ] ; 2 uses
  %i.aep = icmp slt i32 %.2.lcssa.i, %.sroa.speculated82
  br i1 %i.aep, label %.lr.ph48.i, label %._crit_edge49.split.i

.lr.ph48.i:                                       ; preds = %.preheader.i
  %invariant.gep50.i = getelementptr [4 x i8], ptr %i.ac, i64 %indvars.iv79.i ; 2 uses
  br i1 %i.zl, label %.lr.ph.preheader.i, label %._crit_edge49.split.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph48.i
  %i.aeq = sext i32 %.2.lcssa.i to i64            ; 2 uses
  %i.aer = mul i64 %i.aaa, %i.aeq
  %scevgep152 = getelementptr i8, ptr %invariant.gep50.i, i64 %i.aer
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i53, %.lr.ph.preheader.i
  %indvars.iv75.i = phi i64 [ %i.aeq, %.lr.ph.preheader.i ], [ %indvars.iv.next76.i, %._crit_edge.i53 ] ; 2 uses
  %.646.i = phi ptr [ %.4.lcssa.i, %.lr.ph.preheader.i ], [ %.lcssa150, %._crit_edge.i53 ] ; 6 uses
  %i.aes = mul nsw i64 %indvars.iv75.i, %i.zm
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep50.i, i64 %i.aes ; 11 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %scevgep = getelementptr i8, ptr %.646.i, i64 4
  %scevgep151 = getelementptr i8, ptr %scevgep, i64 %i.cb
  %bound0 = icmp ult ptr %.646.i, %scevgep153
  %bound1 = icmp ult ptr %scevgep152, %scevgep151
  %found.conflict = and i1 %bound0, %bound1
  %i.aet = or i1 %found.conflict, %stride.check
  br i1 %i.aet, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.aeu = getelementptr i8, ptr %gep.i, i64 %i.aah
  %i.aev = getelementptr i8, ptr %.646.i, i64 %i.aai ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aew = mul i64 %index, 144                    ; 8 uses
  %next.gep = getelementptr i8, ptr %gep.i, i64 %i.aew
  %i.aex = getelementptr i8, ptr %gep.i, i64 %i.aew
  %next.gep154 = getelementptr i8, ptr %i.aex, i64 144
  %i.aey = getelementptr i8, ptr %gep.i, i64 %i.aew
  %next.gep155 = getelementptr i8, ptr %i.aey, i64 288
  %i.aez = getelementptr i8, ptr %gep.i, i64 %i.aew
  %next.gep156 = getelementptr i8, ptr %i.aez, i64 432
  %i.afa = getelementptr i8, ptr %gep.i, i64 %i.aew
  %next.gep157 = getelementptr i8, ptr %i.afa, i64 576
  %i.afb = getelementptr i8, ptr %gep.i, i64 %i.aew
  %next.gep158 = getelementptr i8, ptr %i.afb, i64 720
  %i.afc = getelementptr i8, ptr %gep.i, i64 %i.aew
  %next.gep159 = getelementptr i8, ptr %i.afc, i64 864
  %i.afd = getelementptr i8, ptr %gep.i, i64 %i.aew
  %next.gep160 = getelementptr i8, ptr %i.afd, i64 1008
  %i.afe = shl i64 %index, 2
  %next.gep161 = getelementptr i8, ptr %.646.i, i64 %i.afe
  %i.aff = load float, ptr %next.gep, align 4, !tbaa !39, !alias.scope !683
  %i.afg = load float, ptr %next.gep154, align 4, !tbaa !39, !alias.scope !683
  %i.afh = load float, ptr %next.gep155, align 4, !tbaa !39, !alias.scope !683
  %i.afi = load float, ptr %next.gep156, align 4, !tbaa !39, !alias.scope !683
  %i.afj = load float, ptr %next.gep157, align 4, !tbaa !39, !alias.scope !683
  %i.afk = load float, ptr %next.gep158, align 4, !tbaa !39, !alias.scope !683
  %i.afl = load float, ptr %next.gep159, align 4, !tbaa !39, !alias.scope !683
  %i.afm = load float, ptr %next.gep160, align 4, !tbaa !39, !alias.scope !683
  %i.afn = insertelement <8 x float> poison, float %i.aff, i64 0
  %i.afo = insertelement <8 x float> %i.afn, float %i.afg, i64 1
  %i.afp = insertelement <8 x float> %i.afo, float %i.afh, i64 2
  %i.afq = insertelement <8 x float> %i.afp, float %i.afi, i64 3
  %i.afr = insertelement <8 x float> %i.afq, float %i.afj, i64 4
  %i.afs = insertelement <8 x float> %i.afr, float %i.afk, i64 5
  %i.aft = insertelement <8 x float> %i.afs, float %i.afl, i64 6
  %i.afu = insertelement <8 x float> %i.aft, float %i.afm, i64 7
  store <8 x float> %i.afu, ptr %next.gep161, align 4, !tbaa !39, !alias.scope !686, !noalias !683
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.afv = icmp eq i64 %index.next, %n.vec
  br i1 %i.afv, label %middle.block, label %vector.body, !llvm.loop !688

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i53, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.045.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %i.aag, %middle.block ] ; 4 uses
  %.09944.i.ph = phi ptr [ %gep.i, %vector.memcheck ], [ %gep.i, %.lr.ph.i ], [ %i.aeu, %middle.block ] ; 2 uses
  %.743.i.ph = phi ptr [ %.646.i, %vector.memcheck ], [ %.646.i, %.lr.ph.i ], [ %i.aev, %middle.block ] ; 2 uses
  %i.afw = sub i32 %.sroa.speculated, %.045.i.ph
  %xtraiter208 = and i32 %i.afw, 7                ; 2 uses
  %lcmp.mod209.not = icmp eq i32 %xtraiter208, 0
  br i1 %lcmp.mod209.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.045.i.prol = phi i32 [ %i.aga, %scalar.ph.prol ], [ %.045.i.ph, %scalar.ph.preheader ]
  %.09944.i.prol = phi ptr [ %i.afy, %scalar.ph.prol ], [ %.09944.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.743.i.prol = phi ptr [ %i.afz, %scalar.ph.prol ], [ %.743.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.afx = load float, ptr %.09944.i.prol, align 4, !tbaa !39
  store float %i.afx, ptr %.743.i.prol, align 4, !tbaa !39
  %i.afy = getelementptr inbounds nuw i8, ptr %.09944.i.prol, i64 144 ; 2 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %.743.i.prol, i64 4 ; 3 uses
  %i.aga = add nuw nsw i32 %.045.i.prol, 1        ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter208
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !689

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa197.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.afz, %scalar.ph.prol ]
  %.045.i.unr = phi i32 [ %.045.i.ph, %scalar.ph.preheader ], [ %i.aga, %scalar.ph.prol ]
  %.09944.i.unr = phi ptr [ %.09944.i.ph, %scalar.ph.preheader ], [ %i.afy, %scalar.ph.prol ]
  %.743.i.unr = phi ptr [ %.743.i.ph, %scalar.ph.preheader ], [ %i.afz, %scalar.ph.prol ]
  %i.agb = sub i32 %.045.i.ph, %.sroa.speculated
  %i.agc = icmp ugt i32 %i.agb, -8
  br i1 %i.agc, label %._crit_edge.i53, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.045.i = phi i32 [ %i.ahb, %scalar.ph ], [ %.045.i.unr, %scalar.ph.prol.loopexit ]
  %.09944.i = phi ptr [ %i.agz, %scalar.ph ], [ %.09944.i.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.743.i = phi ptr [ %i.aha, %scalar.ph ], [ %.743.i.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.agd = load float, ptr %.09944.i, align 4, !tbaa !39
  store float %i.agd, ptr %.743.i, align 4, !tbaa !39
  %i.age = getelementptr inbounds nuw i8, ptr %.09944.i, i64 144
  %i.agf = getelementptr inbounds nuw i8, ptr %.743.i, i64 4
  %i.agg = load float, ptr %i.age, align 4, !tbaa !39
  store float %i.agg, ptr %i.agf, align 4, !tbaa !39
  %i.agh = getelementptr inbounds nuw i8, ptr %.09944.i, i64 288
  %i.agi = getelementptr inbounds nuw i8, ptr %.743.i, i64 8
  %i.agj = load float, ptr %i.agh, align 4, !tbaa !39
  store float %i.agj, ptr %i.agi, align 4, !tbaa !39
  %i.agk = getelementptr inbounds nuw i8, ptr %.09944.i, i64 432
  %i.agl = getelementptr inbounds nuw i8, ptr %.743.i, i64 12
  %i.agm = load float, ptr %i.agk, align 4, !tbaa !39
  store float %i.agm, ptr %i.agl, align 4, !tbaa !39
  %i.agn = getelementptr inbounds nuw i8, ptr %.09944.i, i64 576
  %i.ago = getelementptr inbounds nuw i8, ptr %.743.i, i64 16
  %i.agp = load float, ptr %i.agn, align 4, !tbaa !39
  store float %i.agp, ptr %i.ago, align 4, !tbaa !39
  %i.agq = getelementptr inbounds nuw i8, ptr %.09944.i, i64 720
  %i.agr = getelementptr inbounds nuw i8, ptr %.743.i, i64 20
  %i.ags = load float, ptr %i.agq, align 4, !tbaa !39
  store float %i.ags, ptr %i.agr, align 4, !tbaa !39
  %i.agt = getelementptr inbounds nuw i8, ptr %.09944.i, i64 864
  %i.agu = getelementptr inbounds nuw i8, ptr %.743.i, i64 24
  %i.agv = load float, ptr %i.agt, align 4, !tbaa !39
  store float %i.agv, ptr %i.agu, align 4, !tbaa !39
  %i.agw = getelementptr inbounds nuw i8, ptr %.09944.i, i64 1008
  %i.agx = getelementptr inbounds nuw i8, ptr %.743.i, i64 28
  %i.agy = load float, ptr %i.agw, align 4, !tbaa !39
  store float %i.agy, ptr %i.agx, align 4, !tbaa !39
  %i.agz = getelementptr inbounds nuw i8, ptr %.09944.i, i64 1152
  %i.aha = getelementptr inbounds nuw i8, ptr %.743.i, i64 32 ; 2 uses
  %i.ahb = add nuw nsw i32 %.045.i, 8             ; 2 uses
  %exitcond74.not.i.7 = icmp eq i32 %i.ahb, %.sroa.speculated
  br i1 %exitcond74.not.i.7, label %._crit_edge.i53, label %scalar.ph, !llvm.loop !690

._crit_edge.i53:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa150 = phi ptr [ %i.aev, %middle.block ], [ %.lcssa197.unr, %scalar.ph.prol.loopexit ], [ %i.aha, %scalar.ph ]
  %indvars.iv.next76.i = add nsw i64 %indvars.iv75.i, 1 ; 2 uses
  %exitcond78.not.i = icmp eq i64 %indvars.iv.next76.i, %i.ba
  br i1 %exitcond78.not.i, label %._crit_edge49.split.i, label %.lr.ph.i, !llvm.loop !663

._crit_edge49.split.i:                            ; preds = %._crit_edge.i53, %.lr.ph48.i, %.preheader.i, %.lr.ph33.i
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %exitcond83.not.i = icmp eq i64 %indvars.iv.next80.i, 36
  br i1 %exitcond83.not.i, label %_ZN4ncnn3MatD2Ev.exit34, label %bb.e, !llvm.loop !664

_ZN4ncnn3MatD2Ev.exit34:                          ; preds = %._crit_edge49.split.i
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.bd ; 2 uses
  %i.ahc = icmp slt i64 %indvars.iv.next, %i.be
  %indvar.next = add i32 %indvar, 1
  %indvar.next168 = add i64 %indvar167, 1
  br i1 %i.ahc, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !691

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.i:                                             ; preds = %bb.c
  %i.ahd = landingpad { ptr, i32 }
          catch ptr null
  %i.ahe = extractvalue { ptr, i32 } %i.ahd, 0
  call void @__clang_call_terminate(ptr %i.ahe) #32
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL37conv3x3s1_winograd23_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.h

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
  %.not106 = icmp sgt i32 %i.k, %i.j
  br i1 %.not106, label %._crit_edge, label %.lr.ph108

.lr.ph108:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph108, %_ZN4ncnn3MatD2Ev.exit
  %.033107 = phi i32 [ %i.k, %.lr.ph108 ], [ %i.bh, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.r = load i32, ptr %3, align 4, !tbaa !67
  %i.s = mul i32 %i.r, %.033107                   ; 3 uses
  %i.t = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %_ZN4ncnn3Mat7channelEi.exit49 unwind label %bb.i

_ZN4ncnn3Mat7channelEi.exit49:                    ; preds = %bb.c
  %i.u = load ptr, ptr %4, align 8, !tbaa !18, !noalias !692 ; 2 uses
  %i.v = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !692
  %i.w = sext i32 %i.t to i64
  %i.x = mul i64 %i.v, %i.w
  %i.y = load i64, ptr %i.m, align 8, !tbaa !65, !noalias !692
  %i.z = mul i64 %i.x, %i.y                       ; 2 uses
  %i.aa = getelementptr i8, ptr %i.u, i64 %i.z    ; 5 uses
  %i.ab = load i32, ptr %5, align 4, !tbaa !67    ; 5 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %_ZN4ncnn3Mat7channelEi.exit49
  %i.ad = load i32, ptr %7, align 4, !tbaa !67
  %i.ae = sub i32 %i.ad, %i.s
  %i.af = load i32, ptr %3, align 4, !tbaa !67    ; 2 uses
  %.sroa.speculated82 = call i32 @llvm.smin.i32(i32 %i.af, i32 %i.ae) ; 10 uses
  %i.ag = load i32, ptr %6, align 4, !tbaa !67    ; 7 uses
  %i.ah = icmp sgt i32 %.sroa.speculated82, 0
  %wide.trip.count20.i = zext nneg i32 %.sroa.speculated82 to i64
  %i.ai = sdiv i32 %i.s, %i.af
  %i.aj = load i32, ptr %i.n, align 4, !tbaa !75, !noalias !695
  %i.ak = load i32, ptr %i.o, align 8, !tbaa !76, !noalias !695
  %i.al = load ptr, ptr %10, align 8, !tbaa !18, !noalias !695
  %i.am = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !695
  %i.an = sext i32 %i.ai to i64
  %i.ao = mul i64 %i.am, %i.an
  %i.ap = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !695 ; 2 uses
  %i.aq = mul i64 %i.ao, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aq
  %i.as = sext i32 %i.aj to i64
  %i.at = sext i32 %i.ak to i64
  %i.au = mul i64 %i.ap, %i.as                    ; 2 uses
  %i.av = mul i64 %i.au, %i.at
  %i.aw = icmp sgt i32 %.sroa.speculated82, 7
  %i.ax = and i32 %.sroa.speculated82, -8         ; 3 uses
  %i.ay = sext i32 %.sroa.speculated82 to i64     ; 5 uses
  %i.az = or disjoint i32 %i.ax, 3
  %i.ba = icmp slt i32 %i.az, %.sroa.speculated82
  %invariant.op.i = add nsw i64 %i.ay, -7
  %invariant.op105.i = add nsw i64 %i.ay, -3
  %invariant.op106.i = add nsw i64 %i.ay, -1
  %i.bb = sext i32 %i.ag to i64
  %i.bc = zext nneg i32 %i.ab to i64
  %i.bd = shl nsw i64 %i.ay, 2
  %i.be = add nsw i64 %i.bd, -4
  %i.bf = getelementptr i8, ptr %i.u, i64 %i.z
  %i.bg = getelementptr i8, ptr %i.bf, i64 4
  br label %bb.d

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnn3MatD2Ev.exit34, %_ZN4ncnn3Mat7channelEi.exit49
  %i.bh = add i32 %.033107, 1
  %i.bi = load i32, ptr %i.b, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.033107, %i.bi
  br i1 %.not.not, label %bb.c, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit34
  %indvar = phi i32 [ 0, %.lr.ph ], [ %indvar.next, %_ZN4ncnn3MatD2Ev.exit34 ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit34 ] ; 4 uses
  %i.bj = mul i32 %i.ag, %indvar
  %i.bk = sub i32 %i.ab, %i.bj
  %smin141 = call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.bk)
  %i.bl = add i32 %smin141, -1                    ; 2 uses
  %i.bm = mul i32 %i.ag, %indvar
  %i.bn = sub i32 %i.ab, %i.bm
  %smin = call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.bn) ; 2 uses
  %i.bo = add i32 %smin, -1
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = shl nuw nsw i64 %i.bp, 2
  %i.br = shl i32 %smin, 4                        ; 2 uses
  %i.bs = sext i32 %i.br to i64
  %i.bt = mul i64 %i.be, %i.bs
  %i.bu = shl nuw nsw i64 %i.bp, 6
  %i.bv = trunc i64 %indvars.iv to i32
  %i.bw = sub i32 %i.ab, %i.bv
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.bw) ; 21 uses
  %.val50 = load ptr, ptr %8, align 8
  br i1 %i.ah, label %.preheader4.lr.ph.i, label %_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_tileERKNS_3MatERS0_iiiii.exit

.preheader4.lr.ph.i:                              ; preds = %bb.d
  %i.bx = load i32, ptr %9, align 4, !tbaa !67
  %i.by = icmp sgt i32 %.sroa.speculated, 0
  %i.bz = mul i32 %i.bx, 9
  br i1 %i.by, label %.preheader4.preheader.i, label %_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_tileERKNS_3MatERS0_iiiii.exit

.preheader4.preheader.i:                          ; preds = %.preheader4.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated to i64
  br label %.preheader4.i

.preheader4.i:                                    ; preds = %._crit_edge.i, %.preheader4.preheader.i
  %indvars.iv17.i = phi i64 [ 0, %.preheader4.preheader.i ], [ %indvars.iv.next18.i, %._crit_edge.i ] ; 2 uses
  %.012.i = phi ptr [ %i.aa, %.preheader4.preheader.i ], [ %i.fe, %._crit_edge.i ]
  %i.ca = trunc i64 %indvars.iv17.i to i32
  %i.cb = add i32 %i.s, %i.ca
  %i.cc = mul i32 %i.bz, %i.cb
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %.val50, i64 %i.cd
  br label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader.preheader.i, %.preheader4.i
  %indvars.iv.i = phi i64 [ 0, %.preheader4.i ], [ %indvars.iv.next.i, %.preheader.preheader.i ] ; 2 uses
  %.110.i = phi ptr [ %.012.i, %.preheader4.i ], [ %i.fe, %.preheader.preheader.i ] ; 17 uses
  %i.cf = add nsw i64 %indvars.iv.i, %indvars.iv
  %.idx.i = mul nsw i64 %i.cf, 36
  %i.cg = getelementptr inbounds i8, ptr %i.ce, i64 %.idx.i ; 9 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !39 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !39
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !39 ; 2 uses
  %i.cm = fmul fast float %i.ch, 5.000000e-01     ; 4 uses
  %i.cn = fmul fast float %i.cj, 5.000000e-01     ; 2 uses
  %i.co = fadd fast float %i.cn, %i.cm
  %i.cp = fmul fast float %i.cl, 5.000000e-01     ; 4 uses
  %i.cq = fadd fast float %i.co, %i.cp            ; 2 uses
  %i.cr = fsub fast float %i.cm, %i.cn
  %i.cs = fadd fast float %i.cr, %i.cp            ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !39
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
end_hunk_3
begin_hunk_4_@_ZN4ncnnL37conv3x3s1_winograd23_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined:bb.a
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %i.fm
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !39
  %i.ke = getelementptr inbounds nuw i8, ptr %.528.us.i, i64 28
  store float %i.kd, ptr %i.ke, align 4, !tbaa !39
  %i.kf = getelementptr inbounds nuw i8, ptr %.010129.us.i, i64 256 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.528.us.i, i64 32 ; 3 uses
  %niter150.next.3 = add i32 %niter150, 4         ; 2 uses
  %niter150.ncmp.3 = icmp eq i32 %niter150.next.3, %unroll_iter149
  br i1 %niter150.ncmp.3, label %._crit_edge.us39.i.unr-lcssa, label %.lr.ph.us38.i.new, !llvm.loop !652

._crit_edge.us39.i.unr-lcssa:                     ; preds = %.lr.ph.us38.i.new
  br i1 %lcmp.mod146.not, label %._crit_edge.us39.i, label %.epil.preheader144

.epil.preheader144:                               ; preds = %._crit_edge.us39.i.unr-lcssa, %.lr.ph.us38.i
  %.010129.us.i.epil.init = phi ptr [ %gep.us37.i, %.lr.ph.us38.i ], [ %i.kf, %._crit_edge.us39.i.unr-lcssa ]
  %.528.us.i.epil.init = phi ptr [ %.431.us.i, %.lr.ph.us38.i ], [ %i.kg, %._crit_edge.us39.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod148)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader144
  %.010129.us.i.epil = phi ptr [ %.010129.us.i.epil.init, %.epil.preheader144 ], [ %i.kl, %bb.g ] ; 3 uses
  %.528.us.i.epil = phi ptr [ %.528.us.i.epil.init, %.epil.preheader144 ], [ %i.km, %bb.g ] ; 3 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader144 ], [ %epil.iter.next, %bb.g ]
  %i.kh = load float, ptr %.010129.us.i.epil, align 4, !tbaa !39
  store float %i.kh, ptr %.528.us.i.epil, align 4, !tbaa !39
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %.010129.us.i.epil, i64 %i.fm
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !39
  %i.kk = getelementptr inbounds nuw i8, ptr %.528.us.i.epil, i64 4
  store float %i.kj, ptr %i.kk, align 4, !tbaa !39
  %i.kl = getelementptr inbounds nuw i8, ptr %.010129.us.i.epil, i64 64
  %i.km = getelementptr inbounds nuw i8, ptr %.528.us.i.epil, i64 8 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter145
  br i1 %epil.iter.cmp.not, label %._crit_edge.us39.i, label %bb.g, !llvm.loop !700

._crit_edge.us39.i:                               ; preds = %bb.g, %._crit_edge.us39.i.unr-lcssa
  %.lcssa139 = phi ptr [ %i.kg, %._crit_edge.us39.i.unr-lcssa ], [ %i.km, %bb.g ] ; 2 uses
  %indvars.iv.next72.i = add nuw nsw i64 %indvars.iv71.i, 2 ; 3 uses
  %i.kn = icmp slt i64 %indvars.iv.next72.i, %invariant.op106.i
  br i1 %i.kn, label %.lr.ph.us38.i, label %.preheader.loopexit.i, !llvm.loop !654

.preheader.loopexit.i:                            ; preds = %._crit_edge.us39.i
  %i.ko = trunc nsw i64 %indvars.iv.next72.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.preheader1.i
  %.4.lcssa.i = phi ptr [ %.2109.lcssa.i, %.preheader1.i ], [ %.lcssa139, %.preheader.loopexit.i ]
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %.preheader1.i ], [ %i.ko, %.preheader.loopexit.i ] ; 2 uses
  %i.kp = icmp slt i32 %.2.lcssa.i, %.sroa.speculated82
  br i1 %i.kp, label %.lr.ph48.i, label %._crit_edge49.split.i

.lr.ph48.i:                                       ; preds = %.preheader.i
  %invariant.gep50.i = getelementptr [4 x i8], ptr %i.aa, i64 %indvars.iv79.i ; 2 uses
  br i1 %i.fl, label %.lr.ph.preheader.i, label %._crit_edge49.split.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph48.i
  %i.kq = sext i32 %.2.lcssa.i to i64             ; 2 uses
  %i.kr = mul i64 %i.ga, %i.kq
  %scevgep125 = getelementptr i8, ptr %invariant.gep50.i, i64 %i.kr
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i53, %.lr.ph.preheader.i
  %indvars.iv75.i = phi i64 [ %i.kq, %.lr.ph.preheader.i ], [ %indvars.iv.next76.i, %._crit_edge.i53 ] ; 2 uses
  %.646.i = phi ptr [ %.4.lcssa.i, %.lr.ph.preheader.i ], [ %.lcssa123, %._crit_edge.i53 ] ; 6 uses
  %i.ks = mul nsw i64 %indvars.iv75.i, %i.fm
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep50.i, i64 %i.ks ; 11 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %scevgep = getelementptr i8, ptr %.646.i, i64 4
  %scevgep124 = getelementptr i8, ptr %scevgep, i64 %i.bq
  %bound0 = icmp ult ptr %.646.i, %scevgep126
  %bound1 = icmp ult ptr %scevgep125, %scevgep124
  %found.conflict = and i1 %bound0, %bound1
  %i.kt = or i1 %found.conflict, %stride.check
  br i1 %i.kt, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ku = getelementptr i8, ptr %gep.i, i64 %i.gh
  %i.kv = getelementptr i8, ptr %.646.i, i64 %i.gi ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.kw = shl i64 %index, 6                       ; 8 uses
  %next.gep = getelementptr i8, ptr %gep.i, i64 %i.kw
  %i.kx = getelementptr i8, ptr %gep.i, i64 %i.kw
  %next.gep127 = getelementptr i8, ptr %i.kx, i64 64
  %i.ky = getelementptr i8, ptr %gep.i, i64 %i.kw
  %next.gep128 = getelementptr i8, ptr %i.ky, i64 128
  %i.kz = getelementptr i8, ptr %gep.i, i64 %i.kw
  %next.gep129 = getelementptr i8, ptr %i.kz, i64 192
  %i.la = getelementptr i8, ptr %gep.i, i64 %i.kw
  %next.gep130 = getelementptr i8, ptr %i.la, i64 256
  %i.lb = getelementptr i8, ptr %gep.i, i64 %i.kw
  %next.gep131 = getelementptr i8, ptr %i.lb, i64 320
  %i.lc = getelementptr i8, ptr %gep.i, i64 %i.kw
  %next.gep132 = getelementptr i8, ptr %i.lc, i64 384
  %i.ld = getelementptr i8, ptr %gep.i, i64 %i.kw
  %next.gep133 = getelementptr i8, ptr %i.ld, i64 448
  %i.le = shl i64 %index, 2
  %next.gep134 = getelementptr i8, ptr %.646.i, i64 %i.le
  %i.lf = load float, ptr %next.gep, align 4, !tbaa !39, !alias.scope !701
  %i.lg = load float, ptr %next.gep127, align 4, !tbaa !39, !alias.scope !701
  %i.lh = load float, ptr %next.gep128, align 4, !tbaa !39, !alias.scope !701
  %i.li = load float, ptr %next.gep129, align 4, !tbaa !39, !alias.scope !701
  %i.lj = load float, ptr %next.gep130, align 4, !tbaa !39, !alias.scope !701
  %i.lk = load float, ptr %next.gep131, align 4, !tbaa !39, !alias.scope !701
  %i.ll = load float, ptr %next.gep132, align 4, !tbaa !39, !alias.scope !701
  %i.lm = load float, ptr %next.gep133, align 4, !tbaa !39, !alias.scope !701
  %i.ln = insertelement <8 x float> poison, float %i.lf, i64 0
  %i.lo = insertelement <8 x float> %i.ln, float %i.lg, i64 1
  %i.lp = insertelement <8 x float> %i.lo, float %i.lh, i64 2
  %i.lq = insertelement <8 x float> %i.lp, float %i.li, i64 3
  %i.lr = insertelement <8 x float> %i.lq, float %i.lj, i64 4
  %i.ls = insertelement <8 x float> %i.lr, float %i.lk, i64 5
  %i.lt = insertelement <8 x float> %i.ls, float %i.ll, i64 6
  %i.lu = insertelement <8 x float> %i.lt, float %i.lm, i64 7
  store <8 x float> %i.lu, ptr %next.gep134, align 4, !tbaa !39, !alias.scope !704, !noalias !701
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.lv = icmp eq i64 %index.next, %n.vec
  br i1 %i.lv, label %middle.block, label %vector.body, !llvm.loop !706

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i53, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.045.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %i.gg, %middle.block ] ; 4 uses
  %.09944.i.ph = phi ptr [ %gep.i, %vector.memcheck ], [ %gep.i, %.lr.ph.i ], [ %i.ku, %middle.block ] ; 2 uses
  %.743.i.ph = phi ptr [ %.646.i, %vector.memcheck ], [ %.646.i, %.lr.ph.i ], [ %i.kv, %middle.block ] ; 2 uses
  %i.lw = sub i32 %.sroa.speculated, %.045.i.ph
  %xtraiter151 = and i32 %i.lw, 7                 ; 2 uses
  %lcmp.mod152.not = icmp eq i32 %xtraiter151, 0
  br i1 %lcmp.mod152.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.045.i.prol = phi i32 [ %i.ma, %scalar.ph.prol ], [ %.045.i.ph, %scalar.ph.preheader ]
  %.09944.i.prol = phi ptr [ %i.ly, %scalar.ph.prol ], [ %.09944.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.743.i.prol = phi ptr [ %i.lz, %scalar.ph.prol ], [ %.743.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.lx = load float, ptr %.09944.i.prol, align 4, !tbaa !39
  store float %i.lx, ptr %.743.i.prol, align 4, !tbaa !39
  %i.ly = getelementptr inbounds nuw i8, ptr %.09944.i.prol, i64 64 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.743.i.prol, i64 4 ; 3 uses
  %i.ma = add nuw nsw i32 %.045.i.prol, 1         ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter151
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !707

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa140.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.lz, %scalar.ph.prol ]
  %.045.i.unr = phi i32 [ %.045.i.ph, %scalar.ph.preheader ], [ %i.ma, %scalar.ph.prol ]
  %.09944.i.unr = phi ptr [ %.09944.i.ph, %scalar.ph.preheader ], [ %i.ly, %scalar.ph.prol ]
  %.743.i.unr = phi ptr [ %.743.i.ph, %scalar.ph.preheader ], [ %i.lz, %scalar.ph.prol ]
  %i.mb = sub i32 %.045.i.ph, %.sroa.speculated
  %i.mc = icmp ugt i32 %i.mb, -8
  br i1 %i.mc, label %._crit_edge.i53, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.045.i = phi i32 [ %i.nb, %scalar.ph ], [ %.045.i.unr, %scalar.ph.prol.loopexit ]
  %.09944.i = phi ptr [ %i.mz, %scalar.ph ], [ %.09944.i.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.743.i = phi ptr [ %i.na, %scalar.ph ], [ %.743.i.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.md = load float, ptr %.09944.i, align 4, !tbaa !39
  store float %i.md, ptr %.743.i, align 4, !tbaa !39
  %i.me = getelementptr inbounds nuw i8, ptr %.09944.i, i64 64
  %i.mf = getelementptr inbounds nuw i8, ptr %.743.i, i64 4
  %i.mg = load float, ptr %i.me, align 4, !tbaa !39
  store float %i.mg, ptr %i.mf, align 4, !tbaa !39
  %i.mh = getelementptr inbounds nuw i8, ptr %.09944.i, i64 128
  %i.mi = getelementptr inbounds nuw i8, ptr %.743.i, i64 8
  %i.mj = load float, ptr %i.mh, align 4, !tbaa !39
  store float %i.mj, ptr %i.mi, align 4, !tbaa !39
  %i.mk = getelementptr inbounds nuw i8, ptr %.09944.i, i64 192
  %i.ml = getelementptr inbounds nuw i8, ptr %.743.i, i64 12
  %i.mm = load float, ptr %i.mk, align 4, !tbaa !39
  store float %i.mm, ptr %i.ml, align 4, !tbaa !39
  %i.mn = getelementptr inbounds nuw i8, ptr %.09944.i, i64 256
  %i.mo = getelementptr inbounds nuw i8, ptr %.743.i, i64 16
  %i.mp = load float, ptr %i.mn, align 4, !tbaa !39
  store float %i.mp, ptr %i.mo, align 4, !tbaa !39
  %i.mq = getelementptr inbounds nuw i8, ptr %.09944.i, i64 320
  %i.mr = getelementptr inbounds nuw i8, ptr %.743.i, i64 20
  %i.ms = load float, ptr %i.mq, align 4, !tbaa !39
  store float %i.ms, ptr %i.mr, align 4, !tbaa !39
  %i.mt = getelementptr inbounds nuw i8, ptr %.09944.i, i64 384
  %i.mu = getelementptr inbounds nuw i8, ptr %.743.i, i64 24
  %i.mv = load float, ptr %i.mt, align 4, !tbaa !39
  store float %i.mv, ptr %i.mu, align 4, !tbaa !39
  %i.mw = getelementptr inbounds nuw i8, ptr %.09944.i, i64 448
  %i.mx = getelementptr inbounds nuw i8, ptr %.743.i, i64 28
  %i.my = load float, ptr %i.mw, align 4, !tbaa !39
  store float %i.my, ptr %i.mx, align 4, !tbaa !39
  %i.mz = getelementptr inbounds nuw i8, ptr %.09944.i, i64 512
  %i.na = getelementptr inbounds nuw i8, ptr %.743.i, i64 32 ; 2 uses
  %i.nb = add nuw nsw i32 %.045.i, 8              ; 2 uses
  %exitcond74.not.i.7 = icmp eq i32 %i.nb, %.sroa.speculated
  br i1 %exitcond74.not.i.7, label %._crit_edge.i53, label %scalar.ph, !llvm.loop !708

._crit_edge.i53:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa123 = phi ptr [ %i.kv, %middle.block ], [ %.lcssa140.unr, %scalar.ph.prol.loopexit ], [ %i.na, %scalar.ph ]
  %indvars.iv.next76.i = add nsw i64 %indvars.iv75.i, 1 ; 2 uses
  %exitcond78.not.i = icmp eq i64 %indvars.iv.next76.i, %i.ay
  br i1 %exitcond78.not.i, label %._crit_edge49.split.i, label %.lr.ph.i, !llvm.loop !663

._crit_edge49.split.i:                            ; preds = %._crit_edge.i53, %.lr.ph48.i, %.preheader.i, %.lr.ph33.i
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %exitcond83.not.i = icmp eq i64 %indvars.iv.next80.i, 16
  br i1 %exitcond83.not.i, label %_ZN4ncnn3MatD2Ev.exit34, label %bb.e, !llvm.loop !664

_ZN4ncnn3MatD2Ev.exit34:                          ; preds = %._crit_edge49.split.i
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.bb ; 2 uses
  %i.nc = icmp slt i64 %indvars.iv.next, %i.bc
  %indvar.next = add i32 %indvar, 1
  br i1 %i.nc, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !709

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.i:                                             ; preds = %bb.c
  %i.nd = landingpad { ptr, i32 }
          catch ptr null
  %i.ne = extractvalue { ptr, i32 } %i.nd, 0
  call void @__clang_call_terminate(ptr %i.ne) #32
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL44convolution_im2col_gemm_get_optimal_tile_mnkEiiiRiS0_S0_i(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %5, i32 noundef %6) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn25get_cpu_level2_cache_sizeEv()
  %i.b = ashr i32 %i.a, 2                         ; 2 uses
  %i.c = icmp eq i32 %6, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZN4ncnn26get_physical_big_cpu_countEv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0121 = phi i32 [ %i.d, %bb.b ], [ %6, %bb.a ] ; 3 uses
  %i.e = add nsw i32 %i.b, -32
  %i.f = sdiv i32 %i.e, 64
  %i.g = shl nsw i32 %i.f, 3
  %.sroa.speculated111 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 8) ; 3 uses
  %i.h = add i32 %2, -1                           ; 2 uses
  %i.i = add i32 %i.h, %.sroa.speculated111
  %i.j = sdiv i32 %i.i, %.sroa.speculated111      ; 2 uses
  %i.k = add i32 %i.h, %i.j
  %i.l = sdiv i32 %i.k, %i.j
  %i.m = add nsw i32 %i.l, 7
  %i.n = sdiv i32 %i.m, 8
  %i.o = shl nsw i32 %i.n, 3
  %.sroa.speculated106 = tail call i32 @llvm.smin.i32(i32 %i.o, i32 %.sroa.speculated111)
  store i32 %.sroa.speculated106, ptr %5, align 4, !tbaa !67
  %i.p = add nsw i32 %0, 31
  %i.q = sdiv i32 %i.p, 32                        ; 2 uses
  %i.r = add i32 %0, -1                           ; 3 uses
  %i.s = add i32 %i.r, %i.q
  %i.t = sdiv i32 %i.s, %i.q
  %i.u = add nsw i32 %i.t, 7
  %i.v = sdiv i32 %i.u, 8
  %i.w = shl nsw i32 %i.v, 3
  %.sroa.speculated99 = tail call i32 @llvm.smax.i32(i32 %i.w, i32 8)
  store i32 %.sroa.speculated99, ptr %3, align 4, !tbaa !67
  %i.x = tail call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated94 = tail call i32 @llvm.smin.i32(i32 %i.x, i32 %.0121)
  %i.y = load i32, ptr %3, align 4, !tbaa !67
  %i.z = mul nsw i32 %i.y, %.sroa.speculated94    ; 3 uses
  %i.aa = add i32 %i.r, %i.z
  %i.ab = sdiv i32 %i.aa, %i.z                    ; 2 uses
  %i.ac = add i32 %i.r, %i.ab
  %i.ad = sdiv i32 %i.ac, %i.ab
  %i.ae = add nsw i32 %i.ad, 7
  %i.af = sdiv i32 %i.ae, 8
  %i.ag = shl nsw i32 %i.af, 3
  %.sroa.speculated89 = tail call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.z) ; 3 uses
  %i.ah = icmp sgt i32 %.0121, 1
  br i1 %i.ah, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ai = sdiv i32 %.sroa.speculated89, %.0121
  %.sroa.speculated77 = tail call i32 @llvm.smax.i32(i32 %i.ai, i32 1)
  %i.aj = add nuw nsw i32 %.sroa.speculated77, 7
  %i.ak = and i32 %i.aj, 2147483640
  %.sroa.speculated84 = tail call i32 @llvm.smin.i32(i32 %i.ak, i32 %.sroa.speculated89)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.al = phi i32 [ %.sroa.speculated84, %bb.d ], [ %.sroa.speculated89, %bb.c ] ; 3 uses
  store i32 %i.al, ptr %3, align 4, !tbaa !67
  %i.am = icmp sgt i32 %1, 0
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = load i32, ptr %5, align 4, !tbaa !67    ; 3 uses
  %.not = icmp slt i32 %i.an, %2
  %i.ao = mul nsw i32 %i.al, %i.an
  %i.ap = sub nsw i32 %i.b, %i.ao
  %i.aq = select i1 %.not, i32 %i.al, i32 0
  %.sink = add nsw i32 %i.an, %i.aq
  %i.ar = sdiv i32 %i.ap, %.sink
  %.0.fr = freeze i32 %i.ar                       ; 2 uses
  %i.as = srem i32 %.0.fr, 12
  %i.at = sub nsw i32 %.0.fr, %i.as
  %.sroa.speculated70 = tail call i32 @llvm.smax.i32(i32 %i.at, i32 12) ; 3 uses
  %i.au = add nsw i32 %1, -1                      ; 2 uses
  %i.av = add nuw i32 %i.au, %.sroa.speculated70
  %i.aw = udiv i32 %i.av, %.sroa.speculated70     ; 2 uses
  %i.ax = add nuw i32 %i.au, %i.aw
  %i.ay = udiv i32 %i.ax, %i.aw
  %.fr53 = freeze i32 %i.ay
  %i.az = add i32 %.fr53, 11                      ; 2 uses
  %i.ba = srem i32 %i.az, 12
  %i.bb = sub nsw i32 %i.az, %i.ba
  %.sroa.speculated65 = tail call i32 @llvm.smin.i32(i32 %i.bb, i32 %.sroa.speculated70)
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated65, i32 12)
  store i32 %.sroa.speculated, ptr %4, align 4, !tbaa !67
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
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.g

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
  %.not96 = icmp sgt i32 %i.k, %i.j
  br i1 %.not96, label %._crit_edge99, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.p = load i32, ptr %5, align 4, !tbaa !67     ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph.split, label %._crit_edge99

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge
  %i.r = phi i32 [ %i.ab, %._crit_edge ], [ %i.p, %.lr.ph ] ; 3 uses
  %.02897 = phi i32 [ %i.ac, %._crit_edge ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.s = load i32, ptr %3, align 4, !tbaa !67     ; 2 uses
  %i.t = mul nsw i32 %i.s, %.02897                ; 3 uses
  %i.u = load i32, ptr %4, align 4, !tbaa !67
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
  %.pre = load i32, ptr %6, align 4, !tbaa !67
  br label %_ZN4ncnn3MatD2Ev.exit29

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %.lr.ph.split
  %i.ab = phi i32 [ %i.r, %.lr.ph.split ], [ %i.to, %_ZN4ncnn3MatD2Ev.exit ]
  %i.ac = add i32 %.02897, 1
  %exitcond.not = icmp eq i32 %.02897, %i.j
end_hunk_4
begin_hunk_5_@_ZN4ncnnL40convolution_im2col_gemm_transform_kernelERKNS_3MatERS0_iiiiRKNS_6OptionE.omp_outlined:bb.a
  %.0269161.i = phi ptr [ %i.qy, %.lr.ph164.i ], [ %i.qh, %.lr.ph164.i.preheader ] ; 5 uses
  %.12160.i = phi ptr [ %i.qx, %.lr.ph164.i ], [ %.11182.i, %.lr.ph164.i.preheader ] ; 5 uses
  %niter = phi i32 [ %niter.next.3, %.lr.ph164.i ], [ 0, %.lr.ph164.i.preheader ]
  %i.qn = load <8 x float>, ptr %.0269161.i, align 1, !tbaa !316
  store <8 x float> %i.qn, ptr %.12160.i, align 1, !tbaa !316
  %i.qo = getelementptr inbounds nuw i8, ptr %.12160.i, i64 32
  %i.qp = getelementptr inbounds nuw i8, ptr %.0269161.i, i64 32
  %i.qq = load <8 x float>, ptr %i.qp, align 1, !tbaa !316
  store <8 x float> %i.qq, ptr %i.qo, align 1, !tbaa !316
  %i.qr = getelementptr inbounds nuw i8, ptr %.12160.i, i64 64
  %i.qs = getelementptr inbounds nuw i8, ptr %.0269161.i, i64 64
  %i.qt = load <8 x float>, ptr %i.qs, align 1, !tbaa !316
  store <8 x float> %i.qt, ptr %i.qr, align 1, !tbaa !316
  %i.qu = getelementptr inbounds nuw i8, ptr %.12160.i, i64 96
  %i.qv = getelementptr inbounds nuw i8, ptr %.0269161.i, i64 96
  %i.qw = load <8 x float>, ptr %i.qv, align 1, !tbaa !316
  store <8 x float> %i.qw, ptr %i.qu, align 1, !tbaa !316
  %i.qx = getelementptr inbounds nuw i8, ptr %.12160.i, i64 128 ; 3 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %.0269161.i, i64 128 ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.preheader42.i.loopexit.unr-lcssa, label %.lr.ph164.i, !llvm.loop !770

.preheader.i:                                     ; preds = %.lr.ph171.i, %.preheader42.i
  %.13.lcssa.i = phi ptr [ %.12.lcssa.i, %.preheader42.i ], [ %i.si, %.lr.ph171.i ] ; 7 uses
  %.1270.lcssa.i = phi ptr [ %.0269.lcssa.i, %.preheader42.i ], [ %i.sj, %.lr.ph171.i ] ; 6 uses
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader42.i ], [ %i.sk, %.lr.ph171.i ] ; 5 uses
  %i.qz = icmp slt i32 %.1.lcssa.i, %.sroa.speculated
  br i1 %i.qz, label %iter.check, label %._crit_edge179.i

iter.check:                                       ; preds = %.preheader.i
  %.1270.lcssa.i217 = ptrtoaddr ptr %.1270.lcssa.i to i64
  %.13.lcssa.i216 = ptrtoaddr ptr %.13.lcssa.i to i64
  %i.ra = xor i32 %.1.lcssa.i, -1
  %i.rb = add i32 %.sroa.speculated, %i.ra        ; 3 uses
  %i.rc = zext i32 %i.rb to i64
  %i.rd = add nuw nsw i64 %i.rc, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.rb, 7
  %i.re = sub i64 %.1270.lcssa.i217, %.13.lcssa.i216
  %diff.check = icmp ugt i64 %i.re, -128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph178.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check218 = icmp ult i32 %i.rb, 31
  br i1 %min.iters.check218, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.rf = and i64 %i.rd, 24
  %n.vec = and i64 %i.rd, 8589934560              ; 5 uses
  %i.rg = trunc i64 %n.vec to i32
  %i.rh = add i32 %.1.lcssa.i, %i.rg
  %i.ri = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.rj = getelementptr i8, ptr %.1270.lcssa.i, i64 %i.ri
  %i.rk = getelementptr i8, ptr %.13.lcssa.i, i64 %i.ri ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.rl = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.1270.lcssa.i, i64 %i.rl ; 4 uses
  %next.gep219 = getelementptr i8, ptr %.13.lcssa.i, i64 %i.rl ; 4 uses
  %i.rm = getelementptr i8, ptr %next.gep, i64 32
  %i.rn = getelementptr i8, ptr %next.gep, i64 64
  %i.ro = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <8 x float>, ptr %next.gep, align 4, !tbaa !39
  %wide.load220 = load <8 x float>, ptr %i.rm, align 4, !tbaa !39
  %wide.load221 = load <8 x float>, ptr %i.rn, align 4, !tbaa !39
  %wide.load222 = load <8 x float>, ptr %i.ro, align 4, !tbaa !39
  %i.rp = getelementptr i8, ptr %next.gep219, i64 32
  %i.rq = getelementptr i8, ptr %next.gep219, i64 64
  %i.rr = getelementptr i8, ptr %next.gep219, i64 96
  store <8 x float> %wide.load, ptr %next.gep219, align 4, !tbaa !39
  store <8 x float> %wide.load220, ptr %i.rp, align 4, !tbaa !39
  store <8 x float> %wide.load221, ptr %i.rq, align 4, !tbaa !39
  store <8 x float> %wide.load222, ptr %i.rr, align 4, !tbaa !39
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.rs = icmp eq i64 %index.next, %n.vec
  br i1 %i.rs, label %middle.block, label %vector.body, !llvm.loop !771

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.rd, %n.vec
  br i1 %cmp.n, label %._crit_edge179.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.rf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph178.i.preheader, label %vec.epilog.ph, !prof !280

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec225 = and i64 %i.rd, 8589934584           ; 4 uses
  %i.rt = trunc i64 %n.vec225 to i32
  %i.ru = add i32 %.1.lcssa.i, %i.rt
  %i.rv = shl nuw nsw i64 %n.vec225, 2            ; 2 uses
  %i.rw = getelementptr i8, ptr %.1270.lcssa.i, i64 %i.rv
  %i.rx = getelementptr i8, ptr %.13.lcssa.i, i64 %i.rv ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index226 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next230, %vec.epilog.vector.body ] ; 2 uses
  %i.ry = shl i64 %index226, 2                    ; 2 uses
  %next.gep227 = getelementptr i8, ptr %.1270.lcssa.i, i64 %i.ry
  %next.gep228 = getelementptr i8, ptr %.13.lcssa.i, i64 %i.ry
  %wide.load229 = load <8 x float>, ptr %next.gep227, align 4, !tbaa !39
  store <8 x float> %wide.load229, ptr %next.gep228, align 4, !tbaa !39
  %index.next230 = add nuw i64 %index226, 8       ; 2 uses
  %i.rz = icmp eq i64 %index.next230, %n.vec225
  br i1 %i.rz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !772

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n231 = icmp eq i64 %i.rd, %n.vec225
  br i1 %cmp.n231, label %._crit_edge179.i, label %.lr.ph178.i.preheader

.lr.ph178.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2177.i.ph = phi i32 [ %.1.lcssa.i, %iter.check ], [ %i.rh, %vec.epilog.iter.check ], [ %i.ru, %vec.epilog.middle.block ] ; 4 uses
  %.2271176.i.ph = phi ptr [ %.1270.lcssa.i, %iter.check ], [ %i.rj, %vec.epilog.iter.check ], [ %i.rw, %vec.epilog.middle.block ] ; 2 uses
  %.14175.i.ph = phi ptr [ %.13.lcssa.i, %iter.check ], [ %i.rk, %vec.epilog.iter.check ], [ %i.rx, %vec.epilog.middle.block ] ; 2 uses
  %i.sa = sub i32 %.sroa.speculated, %.2177.i.ph
  %xtraiter448 = and i32 %i.sa, 7                 ; 2 uses
  %lcmp.mod449.not = icmp eq i32 %xtraiter448, 0
  br i1 %lcmp.mod449.not, label %.lr.ph178.i.prol.loopexit, label %.lr.ph178.i.prol

.lr.ph178.i.prol:                                 ; preds = %.lr.ph178.i.preheader, %.lr.ph178.i.prol
  %.2177.i.prol = phi i32 [ %i.se, %.lr.ph178.i.prol ], [ %.2177.i.ph, %.lr.ph178.i.preheader ]
  %.2271176.i.prol = phi ptr [ %i.sd, %.lr.ph178.i.prol ], [ %.2271176.i.ph, %.lr.ph178.i.preheader ] ; 2 uses
  %.14175.i.prol = phi ptr [ %i.sc, %.lr.ph178.i.prol ], [ %.14175.i.ph, %.lr.ph178.i.preheader ] ; 2 uses
  %prol.iter450 = phi i32 [ %prol.iter450.next, %.lr.ph178.i.prol ], [ 0, %.lr.ph178.i.preheader ]
  %i.sb = load float, ptr %.2271176.i.prol, align 4, !tbaa !39
  store float %i.sb, ptr %.14175.i.prol, align 4, !tbaa !39
  %i.sc = getelementptr inbounds nuw i8, ptr %.14175.i.prol, i64 4 ; 3 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %.2271176.i.prol, i64 4 ; 2 uses
  %i.se = add nuw nsw i32 %.2177.i.prol, 1        ; 2 uses
  %prol.iter450.next = add i32 %prol.iter450, 1   ; 2 uses
  %prol.iter450.cmp.not = icmp eq i32 %prol.iter450.next, %xtraiter448
  br i1 %prol.iter450.cmp.not, label %.lr.ph178.i.prol.loopexit, label %.lr.ph178.i.prol, !llvm.loop !773

.lr.ph178.i.prol.loopexit:                        ; preds = %.lr.ph178.i.prol, %.lr.ph178.i.preheader
  %.lcssa439.unr = phi ptr [ poison, %.lr.ph178.i.preheader ], [ %i.sc, %.lr.ph178.i.prol ]
  %.2177.i.unr = phi i32 [ %.2177.i.ph, %.lr.ph178.i.preheader ], [ %i.se, %.lr.ph178.i.prol ]
  %.2271176.i.unr = phi ptr [ %.2271176.i.ph, %.lr.ph178.i.preheader ], [ %i.sd, %.lr.ph178.i.prol ]
  %.14175.i.unr = phi ptr [ %.14175.i.ph, %.lr.ph178.i.preheader ], [ %i.sc, %.lr.ph178.i.prol ]
  %i.sf = sub i32 %.2177.i.ph, %.sroa.speculated
  %i.sg = icmp ugt i32 %i.sf, -8
  br i1 %i.sg, label %._crit_edge179.i, label %.lr.ph178.i

.lr.ph171.i:                                      ; preds = %.preheader42.i, %.lr.ph171.i
  %.1170.i = phi i32 [ %i.sk, %.lr.ph171.i ], [ %.0.lcssa.i, %.preheader42.i ]
  %.1270169.i = phi ptr [ %i.sj, %.lr.ph171.i ], [ %.0269.lcssa.i, %.preheader42.i ] ; 2 uses
  %.13168.i = phi ptr [ %i.si, %.lr.ph171.i ], [ %.12.lcssa.i, %.preheader42.i ] ; 2 uses
  %i.sh = load <4 x float>, ptr %.1270169.i, align 1, !tbaa !316
  store <4 x float> %i.sh, ptr %.13168.i, align 1, !tbaa !316
  %i.si = getelementptr inbounds nuw i8, ptr %.13168.i, i64 16 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %.1270169.i, i64 16 ; 2 uses
  %i.sk = add nuw nsw i32 %.1170.i, 4             ; 3 uses
  %i.sl = or disjoint i32 %i.sk, 3
  %i.sm = icmp slt i32 %i.sl, %.sroa.speculated
  br i1 %i.sm, label %.lr.ph171.i, label %.preheader.i, !llvm.loop !774

.lr.ph178.i:                                      ; preds = %.lr.ph178.i.prol.loopexit, %.lr.ph178.i
  %.2177.i = phi i32 [ %i.tl, %.lr.ph178.i ], [ %.2177.i.unr, %.lr.ph178.i.prol.loopexit ]
  %.2271176.i = phi ptr [ %i.tk, %.lr.ph178.i ], [ %.2271176.i.unr, %.lr.ph178.i.prol.loopexit ] ; 9 uses
  %.14175.i = phi ptr [ %i.tj, %.lr.ph178.i ], [ %.14175.i.unr, %.lr.ph178.i.prol.loopexit ] ; 9 uses
  %i.sn = load float, ptr %.2271176.i, align 4, !tbaa !39
  store float %i.sn, ptr %.14175.i, align 4, !tbaa !39
  %i.so = getelementptr inbounds nuw i8, ptr %.14175.i, i64 4
  %i.sp = getelementptr inbounds nuw i8, ptr %.2271176.i, i64 4
  %i.sq = load float, ptr %i.sp, align 4, !tbaa !39
  store float %i.sq, ptr %i.so, align 4, !tbaa !39
  %i.sr = getelementptr inbounds nuw i8, ptr %.14175.i, i64 8
  %i.ss = getelementptr inbounds nuw i8, ptr %.2271176.i, i64 8
  %i.st = load float, ptr %i.ss, align 4, !tbaa !39
  store float %i.st, ptr %i.sr, align 4, !tbaa !39
  %i.su = getelementptr inbounds nuw i8, ptr %.14175.i, i64 12
  %i.sv = getelementptr inbounds nuw i8, ptr %.2271176.i, i64 12
  %i.sw = load float, ptr %i.sv, align 4, !tbaa !39
  store float %i.sw, ptr %i.su, align 4, !tbaa !39
  %i.sx = getelementptr inbounds nuw i8, ptr %.14175.i, i64 16
  %i.sy = getelementptr inbounds nuw i8, ptr %.2271176.i, i64 16
  %i.sz = load float, ptr %i.sy, align 4, !tbaa !39
  store float %i.sz, ptr %i.sx, align 4, !tbaa !39
  %i.ta = getelementptr inbounds nuw i8, ptr %.14175.i, i64 20
  %i.tb = getelementptr inbounds nuw i8, ptr %.2271176.i, i64 20
  %i.tc = load float, ptr %i.tb, align 4, !tbaa !39
  store float %i.tc, ptr %i.ta, align 4, !tbaa !39
  %i.td = getelementptr inbounds nuw i8, ptr %.14175.i, i64 24
  %i.te = getelementptr inbounds nuw i8, ptr %.2271176.i, i64 24
  %i.tf = load float, ptr %i.te, align 4, !tbaa !39
  store float %i.tf, ptr %i.td, align 4, !tbaa !39
  %i.tg = getelementptr inbounds nuw i8, ptr %.14175.i, i64 28
  %i.th = getelementptr inbounds nuw i8, ptr %.2271176.i, i64 28
  %i.ti = load float, ptr %i.th, align 4, !tbaa !39
  store float %i.ti, ptr %i.tg, align 4, !tbaa !39
  %i.tj = getelementptr inbounds nuw i8, ptr %.14175.i, i64 32 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %.2271176.i, i64 32
  %i.tl = add nuw nsw i32 %.2177.i, 8             ; 2 uses
  %exitcond236.not.i.7 = icmp eq i32 %i.tl, %.sroa.speculated
  br i1 %exitcond236.not.i.7, label %._crit_edge179.i, label %.lr.ph178.i, !llvm.loop !775

._crit_edge179.i:                                 ; preds = %.lr.ph178.i.prol.loopexit, %.lr.ph178.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  %.14.lcssa.i = phi ptr [ %.13.lcssa.i, %.preheader.i ], [ %i.rx, %vec.epilog.middle.block ], [ %i.rk, %middle.block ], [ %.lcssa439.unr, %.lr.ph178.i.prol.loopexit ], [ %i.tj, %.lr.ph178.i ]
  %indvars.iv.next238.i = add nsw i64 %indvars.iv237.i, 1 ; 2 uses
  %exitcond240.not.i = icmp eq i64 %indvars.iv.next238.i, %i.aa
  br i1 %exitcond240.not.i, label %_ZN4ncnn3MatD2Ev.exit, label %bb.f, !llvm.loop !776

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge179.i, %.preheader43.i
  %i.tm = load i32, ptr %6, align 4, !tbaa !67    ; 2 uses
  %i.tn = add nsw i32 %i.tm, %.095                ; 2 uses
  %i.to = load i32, ptr %5, align 4, !tbaa !67    ; 3 uses
  %i.tp = icmp slt i32 %i.tn, %i.to
  br i1 %i.tp, label %_ZN4ncnn3MatD2Ev.exit29, label %._crit_edge, !llvm.loop !777

._crit_edge99:                                    ; preds = %._crit_edge, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge99, %bb.a
  ret void
}

declare void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN4ncnn24cast_bfloat16_to_float32ERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZNK4ncnn19Convolution_x86_avx16forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(1168) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) local_unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 18 uses
  %i.b = alloca i32, align 4                      ; 18 uses
  %i.c = alloca i32, align 4                      ; 10 uses
  %i.d = alloca i32, align 4                      ; 10 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 18 uses
  %i.g = alloca ptr, align 8                      ; 18 uses
  %i.h = alloca i32, align 4                      ; 7 uses
  %i.i = alloca i32, align 4                      ; 9 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  %i.o = alloca i32, align 4                      ; 4 uses
  %i.p = alloca i32, align 4                      ; 5 uses
  %i.q = alloca i32, align 4                      ; 6 uses
  %i.r = alloca i32, align 4                      ; 6 uses
  %i.s = alloca i32, align 4                      ; 6 uses
  %i.t = alloca i32, align 4                      ; 8 uses
  %i.u = alloca i32, align 4                      ; 7 uses
  %i.v = alloca i32, align 4                      ; 5 uses
  %i.w = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.ncnn::Mat", align 8         ; 14 uses
  %i.x = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.ncnn::Mat", align 8         ; 12 uses
  %6 = alloca %"class.ncnn::Mat", align 16        ; 16 uses
  %7 = alloca %"class.ncnn::Option", align 8      ; 7 uses
  %8 = alloca %"class.ncnn::Mat", align 8         ; 32 uses
  %9 = alloca %"class.ncnn::Mat", align 16        ; 37 uses
  %10 = alloca %"class.ncnn::Mat", align 16       ; 15 uses
  %11 = alloca %"class.ncnn::Mat", align 16       ; 15 uses
  %12 = alloca %"class.ncnn::Mat", align 16       ; 15 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !66   ; 3 uses
  %.not.i201 = icmp eq i32 %i.z, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !65 ; 2 uses
  br i1 %.not.i201, label %_ZNK4ncnn3Mat8elembitsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.tr.i = trunc i64 %.pre to i32
  %i.aa = shl i32 %.tr.i, 3
  %i.ab = sdiv i32 %i.aa, %i.z
  %i.ac = icmp eq i32 %i.ab, 8
  br label %_ZNK4ncnn3Mat8elembitsEv.exit

_ZNK4ncnn3Mat8elembitsEv.exit:                    ; preds = %bb.a, %bb.b
  %.not = phi i1 [ %i.ac, %bb.b ], [ false, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !11 ; 2 uses
  %i.ag = load <2 x ptr>, ptr %1, align 8, !tbaa !64
  store <2 x ptr> %i.ag, ptr %6, align 16, !tbaa !64
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %.pre, ptr %i.ah, align 16, !tbaa !65
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %i.z, ptr %i.ai, align 8, !tbaa !66
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !17
  store ptr %i.al, ptr %i.aj, align 16, !tbaa !17
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ao = load <4 x i32>, ptr %i.an, align 8, !tbaa !67
  store <4 x i32> %i.ao, ptr %i.am, align 8, !tbaa !67
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !68
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !68
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.au = load i64, ptr %i.at, align 8, !tbaa !20
  store i64 %i.au, ptr %i.as, align 16, !tbaa !20
  %.not.i208 = icmp eq ptr %i.af, null
  br i1 %.not.i208, label %_ZN4ncnn3Mat6addrefEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit
  %i.av = atomicrmw add ptr %i.af, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit, %bb.c
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !778
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !291
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !292
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 568
  invoke void @_ZN4ncnn16quantize_to_int8ERKNS_3MatERS0_S2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %i.az, ptr noundef nonnull align 8 dereferenceable(64) %7)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ba = load ptr, ptr %6, align 16, !tbaa !18
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %_ZNK4ncnn3Mat5emptyEv.exit207.thread, label %_ZNK4ncnn3Mat5emptyEv.exit207

_ZNK4ncnn3Mat5emptyEv.exit207.thread:             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.gq

bb.f:                                             ; preds = %bb.d
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.gx

_ZNK4ncnn3Mat5emptyEv.exit207:                    ; preds = %bb.e
  %i.bd = load i64, ptr %i.as, align 16, !tbaa !20
  %i.be = load i32, ptr %i.ap, align 8, !tbaa !68
  %i.bf = sext i32 %i.be to i64
  %i.bg = mul i64 %i.bd, %i.bf
  %i.bh = icmp eq i64 %i.bg, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br i1 %i.bh, label %bb.gq, label %bb.g

bb.g:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit207, %_ZN4ncnn3Mat6addrefEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 10 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 44 ; 20 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 14 uses
  store i64 0, ptr %i.bp, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %8, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bl, i8 0, i64 28, i1 false)
  invoke void @_ZNK4ncnn11Convolution12make_paddingERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bq = load ptr, ptr %8, align 8, !tbaa !18
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %_ZNK4ncnn3Mat5emptyEv.exit206.thread, label %_ZNK4ncnn3Mat5emptyEv.exit206

_ZNK4ncnn3Mat5emptyEv.exit206:                    ; preds = %bb.h
  %i.bs = load i64, ptr %i.bp, align 8, !tbaa !20
  %i.bt = load i32, ptr %i.bo, align 8, !tbaa !68 ; 2 uses
  %i.bu = sext i32 %i.bt to i64
  %i.bv = mul i64 %i.bs, %i.bu
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %_ZNK4ncnn3Mat5emptyEv.exit206.thread, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.gj

bb.j:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit206
  %i.by = load i32, ptr %i.bm, align 4, !tbaa !75
  %i.bz = load i32, ptr %i.bn, align 8, !tbaa !76
  %i.ca = load i32, ptr %i.bk, align 8, !tbaa !66
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.cf = load <2 x i32>, ptr %i.cb, align 4, !tbaa !67
  %i.cg = load <2 x i32>, ptr %i.cc, align 4, !tbaa !67
  %i.ch = add nsw <2 x i32> %i.cg, splat (i32 -1)
  %i.ci = mul nsw <2 x i32> %i.ch, %i.cf
  %i.cj = xor <2 x i32> %i.ci, splat (i32 -1)     ; 2 uses
  %i.ck = extractelement <2 x i32> %i.cj, i64 0
  %i.cl = add i32 %i.by, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 4 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !59
end_hunk_5
begin_hunk_6_@_ZN4ncnnL20conv3x3s1_winograd23ERKNS_3MatERS0_S2_S2_iRKNS_6OptionE.omp_outlined.3:bb.a

._crit_edge.i.loopexit.us:                        ; preds = %bb.as
  %indvars.iv.next199.i.us = add nuw nsw i64 %indvars.iv198.i.us, 2 ; 3 uses
  %i.ri = icmp slt i64 %indvars.iv.next199.i.us, %invariant.op254.i
  br i1 %i.ri, label %bb.ak, label %.preheader.loopexit.i, !llvm.loop !1048

.lr.ph124.i.split:                                ; preds = %.lr.ph124.i
  %i.rj = add nsw i64 %i.nn, 2
  %smax166 = call i64 @llvm.smax.i64(i64 %i.bq, i64 %i.rj)
  %i.rk = xor i64 %i.nn, -1
  %i.rl = add i64 %smax166, %i.rk
  %i.rm = and i64 %i.rl, -2
  %i.rn = add i64 %i.rm, 2
  %i.ro = add i64 %i.rn, %i.nn
  br label %.preheader.loopexit.i

.preheader.loopexit.i:                            ; preds = %._crit_edge.i.loopexit.us, %.lr.ph124.i.split
  %.us-phi = phi i64 [ %i.ro, %.lr.ph124.i.split ], [ %indvars.iv.next199.i.us, %._crit_edge.i.loopexit.us ]
  %i.rp = trunc nsw i64 %.us-phi to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.preheader76.i
  %.2.lcssa.i = phi i32 [ %.1476.lcssa.i, %.preheader76.i ], [ %i.rp, %.preheader.loopexit.i ] ; 2 uses
  %i.rq = icmp slt i32 %.2.lcssa.i, %.sroa.speculated121
  br i1 %i.rq, label %.lr.ph142.i, label %_ZN4ncnnL42conv3x3s1_winograd23_transform_output_tileERKNS_3MatERS0_S2_iiii.exit

.lr.ph142.i:                                      ; preds = %.preheader.i
  %.not.i80 = icmp eq ptr %.val78, null
  %i.rr = icmp sgt i32 %.sroa.speculated117, 0
  %i.rs = sext i32 %.sroa.speculated117 to i64
  %i.rt = shl nsw i32 %.sroa.speculated117, 1
  %i.ru = sext i32 %i.rt to i64
  %i.rv = mul nsw i32 %.sroa.speculated117, 3
  %i.rw = sext i32 %i.rv to i64
  %i.rx = shl nsw i32 %.sroa.speculated117, 2
  %i.ry = sext i32 %i.rx to i64                   ; 12 uses
  %i.rz = sext i32 %i.by to i64                   ; 2 uses
  br i1 %i.rr, label %.lr.ph142.split.us.i, label %_ZN4ncnnL42conv3x3s1_winograd23_transform_output_tileERKNS_3MatERS0_S2_iiii.exit

.lr.ph142.split.us.i:                             ; preds = %.lr.ph142.i
  %i.sa = load i32, ptr %i.an, align 4, !tbaa !75, !noalias !1049
  %i.sb = load ptr, ptr %12, align 8, !tbaa !18, !noalias !1049
  %i.sc = load i64, ptr %i.aq, align 8, !tbaa !20, !noalias !1049
  %i.sd = load i64, ptr %i.ar, align 8, !tbaa !65, !noalias !1049 ; 2 uses
  %factor.op.mul.i = mul i64 %i.sd, %i.sc
  %i.se = sext i32 %i.sa to i64
  %factor.op.mul137.us.i = mul i64 %i.sd, %i.se
  %i.sf = sext i32 %.2.lcssa.i to i64
  %wide.trip.count214.i = zext nneg i32 %.sroa.speculated117 to i64
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge136.us.i, %.lr.ph142.split.us.i
  %indvars.iv216.i = phi i64 [ %indvars.iv.next217.i, %._crit_edge136.us.i ], [ %i.sf, %.lr.ph142.split.us.i ] ; 3 uses
  %.pre.i = add nsw i64 %indvars.iv216.i, %i.bj   ; 2 uses
  br i1 %.not.i80, label %.lr.ph135.us.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.sg = getelementptr inbounds [4 x i8], ptr %.val78, i64 %.pre.i
  %i.sh = load float, ptr %i.sg, align 4, !tbaa !39
  br label %.lr.ph135.us.i

.lr.ph135.us.i:                                   ; preds = %bb.au, %bb.at
  %i.si = phi fast float [ %i.sh, %bb.au ], [ 0.000000e+00, %bb.at ] ; 4 uses
  %i.sj = trunc nsw i64 %indvars.iv216.i to i32
  %factor.op.mul.reass140.us.i = mul i32 %factor.op.mul86.i, %i.sj
  %i.sk = sext i32 %factor.op.mul.reass140.us.i to i64
  %i.sl = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.sk
  %.reass.i = mul i64 %factor.op.mul.i, %.pre.i
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sb, i64 %.reass.i
  br label %_ZN4ncnn3MatD2Ev.exit.us.i

_ZN4ncnn3MatD2Ev.exit.us.i:                       ; preds = %.split.us148.i, %.lr.ph135.us.i
  %indvars.iv211.i = phi i64 [ 0, %.lr.ph135.us.i ], [ %indvars.iv.next212.i, %.split.us148.i ] ; 3 uses
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %indvars.iv211.i ; 5 uses
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %i.rs ; 2 uses
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %i.ru ; 2 uses
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %i.rw ; 2 uses
  %i.sr = load float, ptr %i.sn, align 4, !tbaa !39
  %i.ss = load float, ptr %i.so, align 4, !tbaa !39 ; 2 uses
  %i.st = fadd fast float %i.ss, %i.sr
  %i.su = load float, ptr %i.sp, align 4, !tbaa !39 ; 2 uses
  %i.sv = fadd fast float %i.st, %i.su            ; 2 uses
  %i.sw = fsub fast float %i.ss, %i.su
  %i.sx = load float, ptr %i.sq, align 4, !tbaa !39
  %i.sy = fadd fast float %i.sw, %i.sx            ; 2 uses
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %i.ry ; 2 uses
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.so, i64 %i.ry ; 2 uses
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.sp, i64 %i.ry ; 2 uses
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.sq, i64 %i.ry ; 2 uses
  %i.td = load float, ptr %i.sz, align 4, !tbaa !39
  %i.te = load float, ptr %i.ta, align 4, !tbaa !39 ; 2 uses
  %i.tf = fadd fast float %i.te, %i.td
  %i.tg = load float, ptr %i.tb, align 4, !tbaa !39 ; 2 uses
  %i.th = fadd fast float %i.tf, %i.tg            ; 2 uses
  %i.ti = fsub fast float %i.te, %i.tg
  %i.tj = load float, ptr %i.tc, align 4, !tbaa !39
  %i.tk = fadd fast float %i.ti, %i.tj            ; 2 uses
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.sz, i64 %i.ry ; 2 uses
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %i.ta, i64 %i.ry ; 2 uses
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.tb, i64 %i.ry ; 2 uses
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %i.ry ; 2 uses
  %i.tp = load float, ptr %i.tl, align 4, !tbaa !39
  %i.tq = load float, ptr %i.tm, align 4, !tbaa !39 ; 2 uses
  %i.tr = fadd fast float %i.tq, %i.tp
  %i.ts = load float, ptr %i.tn, align 4, !tbaa !39 ; 2 uses
  %i.tt = fadd fast float %i.tr, %i.ts            ; 3 uses
  %i.tu = fsub fast float %i.tq, %i.ts
  %i.tv = load float, ptr %i.to, align 4, !tbaa !39
  %i.tw = fadd fast float %i.tu, %i.tv            ; 3 uses
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.tl, i64 %i.ry
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.tm, i64 %i.ry
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.tn, i64 %i.ry
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.to, i64 %i.ry
  %i.ub = load float, ptr %i.tx, align 4, !tbaa !39
  %i.uc = load float, ptr %i.ty, align 4, !tbaa !39 ; 2 uses
  %i.ud = load float, ptr %i.tz, align 4, !tbaa !39 ; 2 uses
  %i.ue = load float, ptr %i.ua, align 4, !tbaa !39
  %i.uf = trunc i64 %indvars.iv211.i to i32
  %i.ug = add i32 %.044156, %i.uf                 ; 2 uses
  %i.uh = sdiv i32 %i.ug, %i.cf
  %i.ui = srem i32 %i.ug, %i.cf
  %i.uj = shl nsw i32 %i.uh, 1                    ; 4 uses
  %i.uk = sext i32 %i.uj to i64
  %.reass138.us.i = mul i64 %factor.op.mul137.us.i, %i.uk
  %i.ul = getelementptr inbounds nuw i8, ptr %i.sm, i64 %.reass138.us.i
  %i.um = shl nsw i32 %i.ui, 1                    ; 2 uses
  %i.un = sext i32 %i.um to i64
  %i.uo = getelementptr inbounds [4 x i8], ptr %i.ul, i64 %i.un ; 7 uses
  %i.up = or disjoint i32 %i.um, 1
  %i.uq = icmp slt i32 %i.up, %i.by
  %.fr.us.i = freeze i1 %i.uq
  %.not491.us.us.i = icmp slt i32 %i.uj, %i.bz    ; 2 uses
  br i1 %.fr.us.i, label %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit.split.us149.preheader.i

_ZN4ncnn3MatD2Ev.exit.split.us149.preheader.i:    ; preds = %_ZN4ncnn3MatD2Ev.exit.us.i
  br i1 %.not491.us.us.i, label %bb.av, label %_ZN4ncnn3MatD2Ev.exit.split.us149.1.i

_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i:    ; preds = %_ZN4ncnn3MatD2Ev.exit.us.i
  br i1 %.not491.us.us.i, label %bb.ax, label %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i

bb.av:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us149.preheader.i
  %i.ur = fadd fast float %i.th, %i.si
  %i.us = fadd fast float %i.ur, %i.sv
  %i.ut = fadd fast float %i.us, %i.tt
  store float %i.ut, ptr %i.uo, align 4, !tbaa !39
  %i.uu = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %i.rz
  br label %_ZN4ncnn3MatD2Ev.exit.split.us149.1.i

_ZN4ncnn3MatD2Ev.exit.split.us149.1.i:            ; preds = %bb.av, %_ZN4ncnn3MatD2Ev.exit.split.us149.preheader.i
  %.1.us147.i = phi ptr [ %i.uo, %_ZN4ncnn3MatD2Ev.exit.split.us149.preheader.i ], [ %i.uu, %bb.av ]
  %i.uv = or disjoint i32 %i.uj, 1
  %.not491.us146.1.i = icmp slt i32 %i.uv, %i.bz
  br i1 %.not491.us146.1.i, label %bb.aw, label %.split.us148.i

bb.aw:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us149.1.i
  %i.uw = fadd fast float %i.tk, %i.si
  %i.ux = fadd fast float %i.uw, %i.sy
  %i.uy = fadd fast float %i.ux, %i.tw
  store float %i.uy, ptr %.1.us147.i, align 4, !tbaa !39
  br label %.split.us148.i

.split.us148.i:                                   ; preds = %bb.ay, %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i, %bb.aw, %_ZN4ncnn3MatD2Ev.exit.split.us149.1.i
  %indvars.iv.next212.i = add nuw nsw i64 %indvars.iv211.i, 1 ; 2 uses
  %exitcond215.not.i = icmp eq i64 %indvars.iv.next212.i, %wide.trip.count214.i
  br i1 %exitcond215.not.i, label %._crit_edge136.us.i, label %_ZN4ncnn3MatD2Ev.exit.us.i, !llvm.loop !1052

bb.ax:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i
  %i.uz = fadd fast float %i.th, %i.si            ; 2 uses
  %i.va = fadd fast float %i.uz, %i.sv
  %i.vb = fadd fast float %i.va, %i.tt
  store float %i.vb, ptr %i.uo, align 4, !tbaa !39
  %i.vc = fsub fast float %i.uz, %i.tt
  %i.vd = fadd fast float %i.vc, %i.ub
  %i.ve = fadd fast float %i.vd, %i.uc
  %i.vf = fadd fast float %i.ve, %i.ud
  %i.vg = getelementptr inbounds nuw i8, ptr %i.uo, i64 4
  store float %i.vf, ptr %i.vg, align 4, !tbaa !39
  %i.vh = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %i.rz
  br label %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i

_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i:            ; preds = %bb.ax, %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i
  %.1.us.us.i = phi ptr [ %i.uo, %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i ], [ %i.vh, %bb.ax ] ; 2 uses
  %i.vi = or disjoint i32 %i.uj, 1
  %.not491.us.us.1.i = icmp slt i32 %i.vi, %i.bz
  br i1 %.not491.us.us.1.i, label %bb.ay, label %.split.us148.i

bb.ay:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i
  %i.vj = fadd fast float %i.tk, %i.si            ; 2 uses
  %i.vk = fadd fast float %i.vj, %i.sy
  %i.vl = fadd fast float %i.vk, %i.tw
  store float %i.vl, ptr %.1.us.us.i, align 4, !tbaa !39
  %i.vm = fadd fast float %i.vj, %i.uc
  %i.vn = fadd fast float %i.tw, %i.ud
  %i.vo = fsub fast float %i.vm, %i.vn
  %i.vp = fadd fast float %i.vo, %i.ue
  %i.vq = getelementptr inbounds nuw i8, ptr %.1.us.us.i, i64 4
  store float %i.vp, ptr %i.vq, align 4, !tbaa !39
  br label %.split.us148.i

._crit_edge136.us.i:                              ; preds = %.split.us148.i
  %indvars.iv.next217.i = add nsw i64 %indvars.iv216.i, 1 ; 2 uses
  %exitcond220.not.i = icmp eq i64 %indvars.iv.next217.i, %i.bm
  br i1 %exitcond220.not.i, label %_ZN4ncnnL42conv3x3s1_winograd23_transform_output_tileERKNS_3MatERS0_S2_iiii.exit, label %bb.at, !llvm.loop !1053

.noexc:                                           ; preds = %.noexc.preheader, %.noexc
  %i.vr = phi i32 [ %i.xo, %.noexc ], [ %.pre167, %.noexc.preheader ] ; 2 uses
  %i.vs = phi i32 [ %i.xq, %.noexc ], [ %i.bw, %.noexc.preheader ]
  %.0150 = phi i32 [ %i.xp, %.noexc ], [ 0, %.noexc.preheader ] ; 4 uses
  %i.vt = sub nsw i32 %i.vs, %.0150
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.vr, i32 %i.vt)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  %i.vu = load i32, ptr %3, align 4, !tbaa !67
  %i.vv = sdiv i32 %i.au, %i.vu
  %i.vw = load ptr, ptr %10, align 8, !tbaa !18, !noalias !1054
  %i.vx = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1054
  %i.vy = sext i32 %i.vv to i64
  %i.vz = mul i64 %i.vx, %i.vy
  %i.wa = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1054 ; 3 uses
  %i.wb = mul i64 %i.vz, %i.wa
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vw, i64 %i.wb
  %i.wd = load i32, ptr %i.r, align 8, !tbaa !66, !noalias !1054
  %i.we = load ptr, ptr %i.s, align 8, !tbaa !17, !noalias !1054
  %i.wf = sdiv i32 %.0150, %i.vr
  %i.wg = sext i32 %i.wf to i64                   ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !11, !alias.scope !1057
  store i64 %i.wa, ptr %i.u, align 8, !tbaa !65, !alias.scope !1057
  store i32 %i.wd, ptr %i.v, align 8, !tbaa !66, !alias.scope !1057
  store ptr %i.we, ptr %i.w, align 8, !tbaa !17, !alias.scope !1057
  store i32 2, ptr %i.x, align 8, !tbaa !289, !alias.scope !1057
  %i.wh = load <2 x i32>, ptr %i.n, align 4, !tbaa !67, !noalias !1054
  %i.wi = load i32, ptr %i.o, align 8, !tbaa !76, !noalias !1054
  %i.wj = load i32, ptr %i.n, align 4, !tbaa !75, !noalias !1054
  %i.wk = sext i32 %i.wj to i64
  %i.wl = sext i32 %i.wi to i64
  %i.wm = mul nsw i64 %i.wl, %i.wk                ; 2 uses
  %i.wn = mul i64 %i.wa, %i.wm
  %i.wo = mul i64 %i.wn, %i.wg
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wc, i64 %i.wo
  store ptr %i.wp, ptr %14, align 8, !tbaa !18, !alias.scope !1057
  %i.wq = shufflevector <2 x i32> %i.wh, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.wr = shufflevector <4 x i32> %i.wq, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.wr, ptr %i.y, align 4, !tbaa !67, !alias.scope !1057
  store i64 %i.wm, ptr %i.z, align 8, !tbaa !20, !alias.scope !1057
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #12
  %i.ws = load i32, ptr %7, align 4, !tbaa !67
  %i.wt = sdiv i32 %.044156, %i.ws
  %i.wu = load ptr, ptr %11, align 8, !tbaa !18, !noalias !1060
  %i.wv = load i64, ptr %i.ac, align 8, !tbaa !20, !noalias !1060
  %i.ww = sext i32 %i.wt to i64
  %i.wx = mul i64 %i.wv, %i.ww
  %i.wy = load i64, ptr %i.ad, align 8, !tbaa !65, !noalias !1060 ; 3 uses
  %i.wz = mul i64 %i.wx, %i.wy
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wu, i64 %i.wz
  %i.xb = load i32, ptr %i.ae, align 8, !tbaa !66, !noalias !1060
  %i.xc = load ptr, ptr %i.af, align 8, !tbaa !17, !noalias !1060
  store ptr null, ptr %i.ag, align 8, !tbaa !11
  store i64 %i.wy, ptr %i.ah, align 8, !tbaa !65
  store i32 %i.xb, ptr %i.ai, align 8, !tbaa !66
  store ptr %i.xc, ptr %i.aj, align 8, !tbaa !17
  store i32 2, ptr %i.ak, align 8, !tbaa !289
  %i.xd = load <2 x i32>, ptr %i.aa, align 4, !tbaa !67, !noalias !1060
  %i.xe = load i32, ptr %i.ab, align 8, !tbaa !76, !noalias !1060
  %i.xf = load i32, ptr %i.aa, align 4, !tbaa !75, !noalias !1060
  %i.xg = sext i32 %i.xf to i64
  %i.xh = sext i32 %i.xe to i64
  %i.xi = mul nsw i64 %i.xh, %i.xg                ; 2 uses
  %i.xj = mul i64 %i.wy, %i.xi
  %i.xk = mul i64 %i.xj, %i.wg
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xa, i64 %i.xk
  store ptr %i.xl, ptr %15, align 8, !tbaa !18
  %i.xm = shufflevector <2 x i32> %i.xd, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.xn = shufflevector <4 x i32> %i.xm, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.xn, ptr %i.al, align 4, !tbaa !67
  store i64 %i.xi, ptr %i.am, align 8, !tbaa !20, !alias.scope !1063
  call fastcc void @_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %14, ptr noundef nonnull align 8 dereferenceable(72) %15, ptr %i.bc, i32 noundef 16, i32 noundef %.sroa.speculated121, i32 noundef %.sroa.speculated117, i32 noundef %.0150, i32 noundef %.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  %i.xo = load i32, ptr %9, align 4, !tbaa !67    ; 2 uses
  %i.xp = add nsw i32 %i.xo, %.0150               ; 2 uses
  %i.xq = load i32, ptr %8, align 4, !tbaa !67    ; 2 uses
  %i.xr = icmp slt i32 %i.xp, %i.xq
  br i1 %i.xr, label %.noexc, label %._crit_edge, !llvm.loop !1066

_ZN4ncnnL42conv3x3s1_winograd23_transform_output_tileERKNS_3MatERS0_S2_iiii.exit: ; preds = %._crit_edge136.us.i, %.lr.ph142.i, %.preheader.i
  %i.xs = load i32, ptr %7, align 4, !tbaa !67    ; 2 uses
  %i.xt = add nsw i32 %i.xs, %.044156             ; 2 uses
  %i.xu = load i32, ptr %6, align 4, !tbaa !67    ; 2 uses
  %i.xv = icmp slt i32 %i.xt, %i.xu
  br i1 %i.xv, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !1067

._crit_edge162:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.az

bb.az:                                            ; preds = %._crit_edge162, %bb.a
  ret void

bb.ba:                                            ; preds = %bb.c
  %i.xw = landingpad { ptr, i32 }
          catch ptr null
  %i.xx = extractvalue { ptr, i32 } %i.xw, 0
  call void @__clang_call_terminate(ptr %i.xx) #32
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr nofree %.0.val, i32 noundef range(i32 16, 65) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #19 {
bb.a:
  %i.a = icmp sgt i32 %3, 7
  br i1 %i.a, label %.preheader449.lr.ph, label %.preheader444

.preheader449.lr.ph:                              ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = icmp sgt i32 %4, 11
  %i.g = icmp eq i32 %5, 0                        ; 6 uses
  %i.h = icmp sgt i32 %6, 0                       ; 5 uses
  %i.i = add i32 %4, -12                          ; 2 uses
  %i.j = urem i32 %i.i, 12
  %i.k = sub nuw i32 %i.i, %i.j
  %i.l = add i32 %i.k, 12
  %i.m = add i32 %6, -1                           ; 2 uses
  %i.n = zext i32 %i.m to i64                     ; 4 uses
  %i.o = shl nuw nsw i64 %i.n, 5
  %i.p = shl nuw nsw i64 %i.n, 4
  %i.q = shl nuw nsw i64 %i.n, 3
  %i.r = add nsw i32 %4, -1                       ; 2 uses
  %i.s = shl nuw nsw i64 %i.n, 2
  %i.t = zext nneg i32 %3 to i64
  %i.u = sext i32 %6 to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  %xtraiter = and i32 %6, 1
  %i.v = icmp eq i32 %6, 1
  %unroll_iter = and i32 %6, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod1683 = trunc i32 %6 to i1
  %xtraiter1684 = and i32 %6, 1
  %i.w = icmp eq i32 %i.m, 0
  %unroll_iter1688 = and i32 %6, 2147483646
  %lcmp.mod1685.not = icmp eq i32 %xtraiter1684, 0
  %lcmp.mod1687 = trunc i32 %6 to i1
  br label %.preheader449

.preheader449:                                    ; preds = %.preheader449.lr.ph, %bb.b
  %indvars.iv1101 = phi i64 [ 0, %.preheader449.lr.ph ], [ %indvars.iv.next1102, %bb.b ] ; 2 uses
  %.0625578 = phi ptr [ %.0.val, %.preheader449.lr.ph ], [ %.6631.lcssa, %bb.b ]
  %i.x = mul nsw i64 %indvars.iv1101, %i.u
  br label %bb.c

.preheader444.loopexit:                           ; preds = %bb.b
  %i.y = trunc nuw nsw i64 %indvars.iv.next1102 to i32
  br label %.preheader444

.preheader444:                                    ; preds = %.preheader444.loopexit, %bb.a
  %.0635.lcssa = phi i32 [ 0, %bb.a ], [ %i.y, %.preheader444.loopexit ] ; 3 uses
  %.0625.lcssa = phi ptr [ %.0.val, %bb.a ], [ %.6631.lcssa, %.preheader444.loopexit ] ; 2 uses
  %i.z = or disjoint i32 %.0635.lcssa, 3
  %i.aa = icmp slt i32 %i.z, %3
  br i1 %i.aa, label %.preheader443.lr.ph, label %.preheader438

.preheader443.lr.ph:                              ; preds = %.preheader444
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = icmp sgt i32 %4, 11
  %i.ag = icmp eq i32 %5, 0                       ; 6 uses
  %i.ah = icmp sgt i32 %6, 0                      ; 5 uses
  %i.ai = add i32 %4, -12                         ; 2 uses
  %i.aj = urem i32 %i.ai, 12
  %i.ak = sub nuw i32 %i.ai, %i.aj
  %i.al = add i32 %i.ak, 12
  %i.am = add i32 %6, -1                          ; 2 uses
  %i.an = zext i32 %i.am to i64                   ; 4 uses
  %i.ao = shl nuw nsw i64 %i.an, 5
  %i.ap = shl nuw nsw i64 %i.an, 4
  %i.aq = shl nuw nsw i64 %i.an, 3
  %i.ar = add nsw i32 %4, -1                      ; 2 uses
  %i.as = shl nuw nsw i64 %i.an, 2
  %i.at = zext nneg i32 %.0635.lcssa to i64
  %i.au = sext i32 %3 to i64
  %i.av = sext i32 %6 to i64
  %wide.trip.count1121 = zext nneg i32 %2 to i64
  %invariant.op = add nsw i64 %i.au, -3
  %xtraiter1690 = and i32 %6, 1
  %i.aw = icmp eq i32 %6, 1
  %unroll_iter1695 = and i32 %6, 2147483646
  %lcmp.mod1691.not = icmp eq i32 %xtraiter1690, 0
  %lcmp.mod1694 = trunc i32 %6 to i1
  %xtraiter1697 = and i32 %6, 3                   ; 3 uses
  %i.ax = icmp ult i32 %i.am, 3
  %unroll_iter1701 = and i32 %6, 2147483644
  %lcmp.mod1698.not = icmp eq i32 %xtraiter1697, 0
  %lcmp.mod1700 = icmp ne i32 %xtraiter1697, 0
  br label %.preheader443
end_hunk_6
begin_hunk_7_@_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii:bb.a
  %i.alk = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.alg, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.all = shufflevector <4 x float> %i.alg, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body1449

vector.body1449:                                  ; preds = %vector.body1449, %vector.ph1447
  %index1450 = phi i64 [ 0, %vector.ph1447 ], [ %index.next1463, %vector.body1449 ] ; 2 uses
  %vec.phi1451 = phi <4 x float> [ %i.ali, %vector.ph1447 ], [ %i.alu, %vector.body1449 ]
  %vec.phi1452 = phi <4 x float> [ %i.alj, %vector.ph1447 ], [ %i.als, %vector.body1449 ]
  %vec.phi1453 = phi <4 x float> [ %i.alk, %vector.ph1447 ], [ %i.alq, %vector.body1449 ]
  %vec.phi1454 = phi <4 x float> [ %i.all, %vector.ph1447 ], [ %i.alo, %vector.body1449 ]
  %i.alm = shl i64 %index1450, 3                  ; 2 uses
  %next.gep1455 = getelementptr i8, ptr %i.aeo, i64 %i.alm
  %next.gep1456 = getelementptr i8, ptr %.6702799, i64 %i.alm
  %wide.vec1457 = load <8 x float>, ptr %next.gep1455, align 4, !tbaa !39 ; 2 uses
  %strided.vec1458 = shufflevector <8 x float> %wide.vec1457, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec1459 = shufflevector <8 x float> %wide.vec1457, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %wide.vec1460 = load <8 x float>, ptr %next.gep1456, align 4, !tbaa !39 ; 2 uses
  %strided.vec1461 = shufflevector <8 x float> %wide.vec1460, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec1462 = shufflevector <8 x float> %wide.vec1460, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.aln = fmul fast <4 x float> %strided.vec1461, %strided.vec1458
  %i.alo = fadd fast <4 x float> %i.aln, %vec.phi1454 ; 2 uses
  %i.alp = fmul fast <4 x float> %strided.vec1459, %strided.vec1461
  %i.alq = fadd fast <4 x float> %i.alp, %vec.phi1453 ; 2 uses
  %i.alr = fmul fast <4 x float> %strided.vec1462, %strided.vec1458
  %i.als = fadd fast <4 x float> %i.alr, %vec.phi1452 ; 2 uses
  %i.alt = fmul fast <4 x float> %strided.vec1462, %strided.vec1459
  %i.alu = fadd fast <4 x float> %i.alt, %vec.phi1451 ; 2 uses
  %index.next1463 = add nuw i64 %index1450, 4     ; 2 uses
  %i.alv = icmp eq i64 %index.next1463, %n.vec1448
  br i1 %i.alv, label %middle.block1464, label %vector.body1449, !llvm.loop !1100

middle.block1464:                                 ; preds = %vector.body1449
  %i.alw = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.alu)
  %i.alx = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.als)
  %i.aly = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.alq)
  %i.alz = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.alo)
  %i.ama = insertelement <4 x float> poison, float %i.alz, i64 0
  %i.amb = insertelement <4 x float> %i.ama, float %i.aly, i64 1
  %i.amc = insertelement <4 x float> %i.amb, float %i.alx, i64 2
  %i.amd = insertelement <4 x float> %i.amc, float %i.alw, i64 3 ; 2 uses
  br i1 %cmp.n1465, label %._crit_edge793.loopexit, label %.lr.ph792.preheader1576

.lr.ph792.preheader1576:                          ; preds = %.lr.ph792.preheader, %middle.block1464
  %.0615790.ph = phi i32 [ 0, %.lr.ph792.preheader ], [ %i.oz, %middle.block1464 ]
  %.0624785.ph = phi ptr [ %i.aeo, %.lr.ph792.preheader ], [ %i.ajb, %middle.block1464 ]
  %.7703784.ph = phi ptr [ %.6702799, %.lr.ph792.preheader ], [ %i.alh, %middle.block1464 ]
  %.ph1577 = phi <4 x float> [ %i.alg, %.lr.ph792.preheader ], [ %i.amd, %middle.block1464 ]
  br label %.lr.ph792

.lr.ph792:                                        ; preds = %.lr.ph792.preheader1576, %.lr.ph792
  %.0615790 = phi i32 [ %i.amn, %.lr.ph792 ], [ %.0615790.ph, %.lr.ph792.preheader1576 ]
  %.0624785 = phi ptr [ %i.aml, %.lr.ph792 ], [ %.0624785.ph, %.lr.ph792.preheader1576 ] ; 2 uses
  %.7703784 = phi ptr [ %i.amm, %.lr.ph792 ], [ %.7703784.ph, %.lr.ph792.preheader1576 ] ; 2 uses
  %i.ame = phi <4 x float> [ %i.amk, %.lr.ph792 ], [ %.ph1577, %.lr.ph792.preheader1576 ]
  %i.amf = load <2 x float>, ptr %.0624785, align 4, !tbaa !39
  %i.amg = shufflevector <2 x float> %i.amf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.amh = load <2 x float>, ptr %.7703784, align 4, !tbaa !39
  %i.ami = shufflevector <2 x float> %i.amh, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.amj = fmul fast <4 x float> %i.ami, %i.amg
  %i.amk = fadd fast <4 x float> %i.amj, %i.ame   ; 2 uses
  %i.aml = getelementptr inbounds nuw i8, ptr %.0624785, i64 8
  %i.amm = getelementptr inbounds nuw i8, ptr %.7703784, i64 8
  %i.amn = add nuw nsw i32 %.0615790, 1           ; 2 uses
  %exitcond1132.not = icmp eq i32 %i.amn, %6
  br i1 %exitcond1132.not, label %._crit_edge793.loopexit, label %.lr.ph792, !llvm.loop !1101

._crit_edge793.loopexit:                          ; preds = %.lr.ph792, %middle.block1464
  %i.amo = phi <4 x float> [ %i.amd, %middle.block1464 ], [ %i.amk, %.lr.ph792 ]
  %i.amp = getelementptr i8, ptr %.6702799, i64 %i.os
  %scevgep1131 = getelementptr i8, ptr %i.amp, i64 8
  br label %._crit_edge793

._crit_edge793:                                   ; preds = %._crit_edge793.loopexit, %bb.ag
  %.7703.lcssa = phi ptr [ %.6702799, %bb.ag ], [ %scevgep1131, %._crit_edge793.loopexit ] ; 2 uses
  %i.amq = phi <4 x float> [ %i.alg, %bb.ag ], [ %i.amo, %._crit_edge793.loopexit ]
  store <4 x float> %i.amq, ptr %.19801, align 4, !tbaa !39
  %i.amr = getelementptr inbounds nuw i8, ptr %.19801, i64 16 ; 2 uses
  %i.ams = add nuw nsw i32 %.3694800, 2           ; 3 uses
  %i.amt = or disjoint i32 %i.ams, 1
  %i.amu = icmp slt i32 %i.amt, %4
  br i1 %i.amu, label %.lr.ph802, label %.preheader433, !llvm.loop !1102

.lr.ph820:                                        ; preds = %.lr.ph820.preheader, %._crit_edge813
  %.20819 = phi ptr [ %i.aof, %._crit_edge813 ], [ %.19.lcssa, %.lr.ph820.preheader ] ; 3 uses
  %.4695818 = phi i32 [ %i.aog, %._crit_edge813 ], [ %.3694.lcssa, %.lr.ph820.preheader ]
  %.8704817 = phi ptr [ %.9705.lcssa, %._crit_edge813 ], [ %.6702.lcssa, %.lr.ph820.preheader ] ; 5 uses
  br i1 %i.oi, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph820
  %i.amv = load <2 x float>, ptr %.20819, align 4, !tbaa !39
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph820, %bb.ah
  %i.amw = phi <2 x float> [ %i.amv, %bb.ah ], [ zeroinitializer, %.lr.ph820 ] ; 3 uses
  br i1 %i.oj, label %.lr.ph812.preheader, label %._crit_edge813

.lr.ph812.preheader:                              ; preds = %bb.ai
  br i1 %min.iters.check, label %.lr.ph812.preheader1574, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph812.preheader
  %i.amx = getelementptr i8, ptr %.8704817, i64 %i.pe
  %i.amy = shufflevector <2 x float> %i.amw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.amz = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.amy, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.ana = shufflevector <4 x float> %i.amy, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x float> [ %i.amz, %vector.ph ], [ %i.anl, %vector.body ]
  %vec.phi1431 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.anm, %vector.body ]
  %vec.phi1432 = phi <4 x float> [ %i.ana, %vector.ph ], [ %i.anh, %vector.body ]
  %vec.phi1433 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.ani, %vector.body ]
  %i.anb = shl i64 %index, 3                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aeo, i64 %i.anb
  %i.anc = getelementptr i8, ptr %i.aeo, i64 %i.anb
  %next.gep1434 = getelementptr i8, ptr %i.anc, i64 32
  %i.and = shl i64 %index, 2
  %next.gep1435 = getelementptr i8, ptr %.8704817, i64 %i.and ; 2 uses
  %wide.vec = load <8 x float>, ptr %next.gep, align 4, !tbaa !39 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1436 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec1437 = load <8 x float>, ptr %next.gep1434, align 4, !tbaa !39 ; 2 uses
  %strided.vec1438 = shufflevector <8 x float> %wide.vec1437, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1439 = shufflevector <8 x float> %wide.vec1437, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ane = getelementptr i8, ptr %next.gep1435, i64 16
  %wide.load = load <4 x float>, ptr %next.gep1435, align 4, !tbaa !39 ; 2 uses
  %wide.load1440 = load <4 x float>, ptr %i.ane, align 4, !tbaa !39 ; 2 uses
  %i.anf = fmul fast <4 x float> %wide.load, %strided.vec
  %i.ang = fmul fast <4 x float> %wide.load1440, %strided.vec1438
  %i.anh = fadd fast <4 x float> %i.anf, %vec.phi1432 ; 2 uses
  %i.ani = fadd fast <4 x float> %i.ang, %vec.phi1433 ; 2 uses
  %i.anj = fmul fast <4 x float> %strided.vec1436, %wide.load
  %i.ank = fmul fast <4 x float> %strided.vec1439, %wide.load1440
  %i.anl = fadd fast <4 x float> %i.anj, %vec.phi ; 2 uses
  %i.anm = fadd fast <4 x float> %i.ank, %vec.phi1431 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ann = icmp eq i64 %index.next, %n.vec
  br i1 %i.ann, label %middle.block, label %vector.body, !llvm.loop !1103

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <4 x float> %i.anm, %i.anl
  %i.ano = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx)
  %bin.rdx1441 = fadd fast <4 x float> %i.ani, %i.anh
  %i.anp = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx1441)
  %i.anq = insertelement <2 x float> poison, float %i.anp, i64 0
  %i.anr = insertelement <2 x float> %i.anq, float %i.ano, i64 1 ; 2 uses
  br i1 %cmp.n, label %._crit_edge813.loopexit, label %.lr.ph812.preheader1574

.lr.ph812.preheader1574:                          ; preds = %.lr.ph812.preheader, %middle.block
  %.0609810.ph = phi i32 [ 0, %.lr.ph812.preheader ], [ %i.pc, %middle.block ]
  %.0614807.ph = phi ptr [ %i.aeo, %.lr.ph812.preheader ], [ %i.ale, %middle.block ]
  %.9705806.ph = phi ptr [ %.8704817, %.lr.ph812.preheader ], [ %i.amx, %middle.block ]
  %.ph1575 = phi <2 x float> [ %i.amw, %.lr.ph812.preheader ], [ %i.anr, %middle.block ]
  br label %.lr.ph812

.lr.ph812:                                        ; preds = %.lr.ph812.preheader1574, %.lr.ph812
  %.0609810 = phi i32 [ %i.aob, %.lr.ph812 ], [ %.0609810.ph, %.lr.ph812.preheader1574 ]
  %.0614807 = phi ptr [ %i.anz, %.lr.ph812 ], [ %.0614807.ph, %.lr.ph812.preheader1574 ] ; 2 uses
  %.9705806 = phi ptr [ %i.aoa, %.lr.ph812 ], [ %.9705806.ph, %.lr.ph812.preheader1574 ] ; 2 uses
  %i.ans = phi <2 x float> [ %i.any, %.lr.ph812 ], [ %.ph1575, %.lr.ph812.preheader1574 ]
  %i.ant = load float, ptr %.9705806, align 4, !tbaa !39
  %i.anu = load <2 x float>, ptr %.0614807, align 4, !tbaa !39
  %i.anv = insertelement <2 x float> poison, float %i.ant, i64 0
  %i.anw = shufflevector <2 x float> %i.anv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.anx = fmul fast <2 x float> %i.anu, %i.anw
  %i.any = fadd fast <2 x float> %i.anx, %i.ans   ; 2 uses
  %i.anz = getelementptr inbounds nuw i8, ptr %.0614807, i64 8
  %i.aoa = getelementptr inbounds nuw i8, ptr %.9705806, i64 4
  %i.aob = add nuw nsw i32 %.0609810, 1           ; 2 uses
  %exitcond1134.not = icmp eq i32 %i.aob, %6
  br i1 %exitcond1134.not, label %._crit_edge813.loopexit, label %.lr.ph812, !llvm.loop !1104

._crit_edge813.loopexit:                          ; preds = %.lr.ph812, %middle.block
  %i.aoc = phi <2 x float> [ %i.anr, %middle.block ], [ %i.any, %.lr.ph812 ]
  %i.aod = getelementptr i8, ptr %.8704817, i64 %i.ot
  %scevgep1133 = getelementptr i8, ptr %i.aod, i64 4
  br label %._crit_edge813

._crit_edge813:                                   ; preds = %._crit_edge813.loopexit, %bb.ai
  %.9705.lcssa = phi ptr [ %.8704817, %bb.ai ], [ %scevgep1133, %._crit_edge813.loopexit ]
  %i.aoe = phi <2 x float> [ %i.amw, %bb.ai ], [ %i.aoc, %._crit_edge813.loopexit ]
  store <2 x float> %i.aoe, ptr %.20819, align 4, !tbaa !39
  %i.aof = getelementptr inbounds nuw i8, ptr %.20819, i64 8 ; 2 uses
  %i.aog = add nuw nsw i32 %.4695818, 1           ; 2 uses
  %exitcond1135.not = icmp eq i32 %i.aog, %4
  br i1 %exitcond1135.not, label %._crit_edge821, label %.lr.ph820, !llvm.loop !1105

._crit_edge821:                                   ; preds = %._crit_edge813, %.preheader433
  %.20.lcssa = phi ptr [ %.19.lcssa, %.preheader433 ], [ %i.aof, %._crit_edge813 ] ; 3 uses
  %indvars.iv.next1137 = add nuw nsw i64 %indvars.iv1136, 1 ; 2 uses
  %exitcond1140.not = icmp eq i64 %indvars.iv.next1137, %wide.trip.count1139
  br i1 %exitcond1140.not, label %bb.x, label %bb.y, !llvm.loop !1106

.preheader431:                                    ; preds = %.preheader431.lr.ph, %bb.aj
  %indvars.iv1165 = phi i64 [ %i.adr, %.preheader431.lr.ph ], [ %indvars.iv.next1166, %bb.aj ] ; 2 uses
  %.21932 = phi ptr [ %.14.lcssa, %.preheader431.lr.ph ], [ %.27.lcssa, %bb.aj ]
  %i.aoh = mul nsw i64 %indvars.iv1165, %i.ads
  br label %bb.ak

bb.aj:                                            ; preds = %._crit_edge927
  %indvars.iv.next1166 = add nsw i64 %indvars.iv1165, 1 ; 2 uses
  %exitcond1169.not = icmp eq i64 %indvars.iv.next1166, %wide.trip.count1168
  br i1 %exitcond1169.not, label %._crit_edge933, label %.preheader431, !llvm.loop !1107

bb.ak:                                            ; preds = %.preheader431, %._crit_edge927
  %indvars.iv1160 = phi i64 [ 0, %.preheader431 ], [ %indvars.iv.next1161, %._crit_edge927 ] ; 3 uses
  %.22929 = phi ptr [ %.21932, %.preheader431 ], [ %.27.lcssa, %._crit_edge927 ] ; 2 uses
  %i.aoi = load ptr, ptr %0, align 8, !tbaa !18
  %i.aoj = load i32, ptr %i.ada, align 4, !tbaa !75
  %i.aok = sext i32 %i.aoj to i64
  %i.aol = mul nsw i64 %indvars.iv1160, %i.aok
  %i.aom = load i64, ptr %i.adb, align 8, !tbaa !65
  %i.aon = mul i64 %i.aol, %i.aom
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aoi, i64 %i.aon
  %i.aop = getelementptr inbounds [4 x i8], ptr %i.aoo, i64 %i.aoh ; 14 uses
  %i.aoq = load ptr, ptr %1, align 8, !tbaa !18
  %i.aor = load i32, ptr %i.adc, align 4, !tbaa !75
  %i.aos = sext i32 %i.aor to i64
  %i.aot = mul nsw i64 %indvars.iv1160, %i.aos
  %i.aou = load i64, ptr %i.add, align 8, !tbaa !65
  %i.aov = mul i64 %i.aot, %i.aou
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aoq, i64 %i.aov ; 2 uses
  br i1 %i.ade, label %.lr.ph846, label %.preheader430

.preheader430:                                    ; preds = %._crit_edge837, %bb.ak
  %.23.lcssa = phi ptr [ %.22929, %bb.ak ], [ %i.arb, %._crit_edge837 ] ; 2 uses
  %.0603.lcssa = phi ptr [ %i.aow, %bb.ak ], [ %.1604.lcssa, %._crit_edge837 ] ; 2 uses
  %.0601.lcssa = phi i32 [ 0, %bb.ak ], [ %i.adk, %._crit_edge837 ] ; 3 uses
  %i.aox = add nuw nsw i32 %.0601.lcssa, 7
  %i.aoy = icmp slt i32 %i.aox, %4
  br i1 %i.aoy, label %.lr.ph864, label %.preheader429

.lr.ph846:                                        ; preds = %bb.ak, %._crit_edge837
  %.0601844 = phi i32 [ %i.arc, %._crit_edge837 ], [ 0, %bb.ak ] ; 2 uses
  %.0603843 = phi ptr [ %.1604.lcssa, %._crit_edge837 ], [ %i.aow, %bb.ak ] ; 3 uses
  %.23842 = phi ptr [ %i.arb, %._crit_edge837 ], [ %.22929, %bb.ak ] ; 7 uses
  br i1 %i.adf, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph846
  %i.aoz = load <4 x float>, ptr %.23842, align 1, !tbaa !316
  %i.apa = getelementptr inbounds nuw i8, ptr %.23842, i64 16
  %i.apb = load <4 x float>, ptr %i.apa, align 1, !tbaa !316
  %i.apc = getelementptr inbounds nuw i8, ptr %.23842, i64 32
  %i.apd = load <4 x float>, ptr %i.apc, align 1, !tbaa !316
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph846, %bb.al
  %.0325 = phi nsz <4 x float> [ %i.aoz, %bb.al ], [ zeroinitializer, %.lr.ph846 ] ; 3 uses
  %.0323 = phi nsz <4 x float> [ %i.apb, %bb.al ], [ zeroinitializer, %.lr.ph846 ] ; 3 uses
  %storemerge714 = phi <4 x float> [ %i.apd, %bb.al ], [ zeroinitializer, %.lr.ph846 ] ; 3 uses
  br i1 %i.adg, label %.lr.ph836.preheader, label %._crit_edge837

.lr.ph836.preheader:                              ; preds = %bb.am
  br i1 %i.adv, label %.lr.ph836.epil.preheader, label %.lr.ph836

.lr.ph836:                                        ; preds = %.lr.ph836.preheader, %.lr.ph836
  %.0600833 = phi ptr [ %i.aqi, %.lr.ph836 ], [ %i.aop, %.lr.ph836.preheader ] ; 3 uses
  %.1604832 = phi ptr [ %i.aqj, %.lr.ph836 ], [ %.0603843, %.lr.ph836.preheader ] ; 7 uses
  %.0322831 = phi <4 x float> [ %i.aqh, %.lr.ph836 ], [ %storemerge714, %.lr.ph836.preheader ]
  %.1324830 = phi <4 x float> [ %i.aqf, %.lr.ph836 ], [ %.0323, %.lr.ph836.preheader ]
  %.1326829 = phi <4 x float> [ %i.aqd, %.lr.ph836 ], [ %.0325, %.lr.ph836.preheader ]
  %niter1720 = phi i32 [ %niter1720.next.1, %.lr.ph836 ], [ 0, %.lr.ph836.preheader ]
  %i.ape = load float, ptr %.0600833, align 4, !tbaa !39
  %i.apf = insertelement <4 x float> poison, float %i.ape, i64 0
  %i.apg = shufflevector <4 x float> %i.apf, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.aph = load <4 x float>, ptr %.1604832, align 16, !tbaa !316
  %i.api = getelementptr inbounds nuw i8, ptr %.1604832, i64 16
  %i.apj = load <4 x float>, ptr %i.api, align 16, !tbaa !316
  %i.apk = getelementptr inbounds nuw i8, ptr %.1604832, i64 32
  %i.apl = load <4 x float>, ptr %i.apk, align 16, !tbaa !316
  %i.apm = fmul fast <4 x float> %i.apg, %i.aph
  %i.apn = fadd fast <4 x float> %i.apm, %.1326829
  %i.apo = fmul fast <4 x float> %i.apg, %i.apj
  %i.app = fadd fast <4 x float> %i.apo, %.1324830
  %i.apq = fmul fast <4 x float> %i.apl, %i.apg
  %i.apr = fadd fast <4 x float> %i.apq, %.0322831
  %i.aps = getelementptr inbounds nuw i8, ptr %.0600833, i64 4
  %i.apt = getelementptr inbounds nuw i8, ptr %.1604832, i64 48
  %i.apu = load float, ptr %i.aps, align 4, !tbaa !39
  %i.apv = insertelement <4 x float> poison, float %i.apu, i64 0
  %i.apw = shufflevector <4 x float> %i.apv, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.apx = load <4 x float>, ptr %i.apt, align 16, !tbaa !316
  %i.apy = getelementptr inbounds nuw i8, ptr %.1604832, i64 64
  %i.apz = load <4 x float>, ptr %i.apy, align 16, !tbaa !316
  %i.aqa = getelementptr inbounds nuw i8, ptr %.1604832, i64 80
  %i.aqb = load <4 x float>, ptr %i.aqa, align 16, !tbaa !316
  %i.aqc = fmul fast <4 x float> %i.apw, %i.apx
  %i.aqd = fadd fast <4 x float> %i.aqc, %i.apn   ; 3 uses
  %i.aqe = fmul fast <4 x float> %i.apw, %i.apz
  %i.aqf = fadd fast <4 x float> %i.aqe, %i.app   ; 3 uses
  %i.aqg = fmul fast <4 x float> %i.aqb, %i.apw
  %i.aqh = fadd fast <4 x float> %i.aqg, %i.apr   ; 3 uses
  %i.aqi = getelementptr inbounds nuw i8, ptr %.0600833, i64 8 ; 2 uses
  %i.aqj = getelementptr inbounds nuw i8, ptr %.1604832, i64 96 ; 3 uses
  %niter1720.next.1 = add nuw nsw i32 %niter1720, 2 ; 2 uses
  %niter1720.ncmp.1 = icmp eq i32 %niter1720.next.1, %unroll_iter1719
  br i1 %niter1720.ncmp.1, label %._crit_edge837.loopexit.unr-lcssa, label %.lr.ph836, !llvm.loop !1108

._crit_edge837.loopexit.unr-lcssa:                ; preds = %.lr.ph836
  br i1 %lcmp.mod1713.not, label %._crit_edge837, label %.lr.ph836.epil.preheader

.lr.ph836.epil.preheader:                         ; preds = %._crit_edge837.loopexit.unr-lcssa, %.lr.ph836.preheader
  %.0600833.epil.init = phi ptr [ %i.aop, %.lr.ph836.preheader ], [ %i.aqi, %._crit_edge837.loopexit.unr-lcssa ]
  %.1604832.epil.init = phi ptr [ %.0603843, %.lr.ph836.preheader ], [ %i.aqj, %._crit_edge837.loopexit.unr-lcssa ] ; 4 uses
  %.0322831.epil.init = phi <4 x float> [ %storemerge714, %.lr.ph836.preheader ], [ %i.aqh, %._crit_edge837.loopexit.unr-lcssa ]
  %.1324830.epil.init = phi <4 x float> [ %.0323, %.lr.ph836.preheader ], [ %i.aqf, %._crit_edge837.loopexit.unr-lcssa ]
  %.1326829.epil.init = phi <4 x float> [ %.0325, %.lr.ph836.preheader ], [ %i.aqd, %._crit_edge837.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1718)
  %i.aqk = load float, ptr %.0600833.epil.init, align 4, !tbaa !39
  %i.aql = insertelement <4 x float> poison, float %i.aqk, i64 0
  %i.aqm = shufflevector <4 x float> %i.aql, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.aqn = load <4 x float>, ptr %.1604832.epil.init, align 16, !tbaa !316
  %i.aqo = getelementptr inbounds nuw i8, ptr %.1604832.epil.init, i64 16
  %i.aqp = load <4 x float>, ptr %i.aqo, align 16, !tbaa !316
  %i.aqq = getelementptr inbounds nuw i8, ptr %.1604832.epil.init, i64 32
  %i.aqr = load <4 x float>, ptr %i.aqq, align 16, !tbaa !316
  %i.aqs = fmul fast <4 x float> %i.aqm, %i.aqn
  %i.aqt = fadd fast <4 x float> %i.aqs, %.1326829.epil.init
  %i.aqu = fmul fast <4 x float> %i.aqm, %i.aqp
  %i.aqv = fadd fast <4 x float> %i.aqu, %.1324830.epil.init
  %i.aqw = fmul fast <4 x float> %i.aqr, %i.aqm
  %i.aqx = fadd fast <4 x float> %i.aqw, %.0322831.epil.init
  %i.aqy = getelementptr inbounds nuw i8, ptr %.1604832.epil.init, i64 48
  br label %._crit_edge837

._crit_edge837:                                   ; preds = %.lr.ph836.epil.preheader, %._crit_edge837.loopexit.unr-lcssa, %bb.am
  %.1326.lcssa = phi <4 x float> [ %.0325, %bb.am ], [ %i.aqd, %._crit_edge837.loopexit.unr-lcssa ], [ %i.aqt, %.lr.ph836.epil.preheader ]
  %.1324.lcssa = phi <4 x float> [ %.0323, %bb.am ], [ %i.aqf, %._crit_edge837.loopexit.unr-lcssa ], [ %i.aqv, %.lr.ph836.epil.preheader ]
  %.0322.lcssa = phi <4 x float> [ %storemerge714, %bb.am ], [ %i.aqh, %._crit_edge837.loopexit.unr-lcssa ], [ %i.aqx, %.lr.ph836.epil.preheader ]
  %.1604.lcssa = phi ptr [ %.0603843, %bb.am ], [ %i.aqj, %._crit_edge837.loopexit.unr-lcssa ], [ %i.aqy, %.lr.ph836.epil.preheader ] ; 2 uses
  store <4 x float> %.1326.lcssa, ptr %.23842, align 1, !tbaa !316
  %i.aqz = getelementptr inbounds nuw i8, ptr %.23842, i64 16
  store <4 x float> %.1324.lcssa, ptr %i.aqz, align 1, !tbaa !316
  %i.ara = getelementptr inbounds nuw i8, ptr %.23842, i64 32
  store <4 x float> %.0322.lcssa, ptr %i.ara, align 1, !tbaa !316
  %i.arb = getelementptr inbounds nuw i8, ptr %.23842, i64 48 ; 2 uses
  %i.arc = add nuw nsw i32 %.0601844, 12
  %i.ard = add nuw nsw i32 %.0601844, 23
  %i.are = icmp slt i32 %i.ard, %4
  br i1 %i.are, label %.lr.ph846, label %.preheader430, !llvm.loop !1109

.preheader429:                                    ; preds = %._crit_edge857, %.preheader430
  %.24.lcssa = phi ptr [ %.23.lcssa, %.preheader430 ], [ %i.avh, %._crit_edge857 ] ; 5 uses
  %.2605.lcssa = phi ptr [ %.0603.lcssa, %.preheader430 ], [ %.3606.lcssa, %._crit_edge857 ] ; 4 uses
  %.1602.lcssa = phi i32 [ %.0601.lcssa, %.preheader430 ], [ %i.avi, %._crit_edge857 ] ; 9 uses
  %i.arf = or disjoint i32 %.1602.lcssa, 3
  %i.arg = icmp slt i32 %i.arf, %4
  br i1 %i.arg, label %.lr.ph880, label %.preheader428

.lr.ph880:                                        ; preds = %.preheader429
  br i1 %i.adg, label %.lr.ph880.split.us, label %.lr.ph880.split

.lr.ph880.split.us:                               ; preds = %.lr.ph880, %._crit_edge874.us
  %.2879.us = phi i32 [ %i.asy, %._crit_edge874.us ], [ %.1602.lcssa, %.lr.ph880 ]
  %.4607878.us = phi ptr [ %scevgep1153, %._crit_edge874.us ], [ %.2605.lcssa, %.lr.ph880 ] ; 3 uses
  %.25877.us = phi ptr [ %i.asx, %._crit_edge874.us ], [ %.24.lcssa, %.lr.ph880 ] ; 3 uses
  br i1 %i.adf, label %.lr.ph873.us.preheader, label %bb.an

bb.an:                                            ; preds = %.lr.ph880.split.us
  %i.arh = load <4 x float>, ptr %.25877.us, align 1, !tbaa !316
  br label %.lr.ph873.us.preheader

.lr.ph873.us.preheader:                           ; preds = %bb.an, %.lr.ph880.split.us
  %.0304868.us.ph = phi <4 x float> [ zeroinitializer, %.lr.ph880.split.us ], [ %i.arh, %bb.an ] ; 2 uses
  br i1 %i.adx, label %.lr.ph873.us.epil.preheader, label %.lr.ph873.us

.lr.ph873.us:                                     ; preds = %.lr.ph873.us.preheader, %.lr.ph873.us
  %.0596870.us = phi ptr [ %i.asm, %.lr.ph873.us ], [ %i.aop, %.lr.ph873.us.preheader ] ; 5 uses
  %.5869.us = phi ptr [ %i.asn, %.lr.ph873.us ], [ %.4607878.us, %.lr.ph873.us.preheader ] ; 5 uses
  %.0304868.us = phi <4 x float> [ %i.asl, %.lr.ph873.us ], [ %.0304868.us.ph, %.lr.ph873.us.preheader ]
  %niter1735 = phi i32 [ %niter1735.next.3, %.lr.ph873.us ], [ 0, %.lr.ph873.us.preheader ]
  %i.ari = load float, ptr %.0596870.us, align 4, !tbaa !39
  %i.arj = insertelement <4 x float> poison, float %i.ari, i64 0
  %i.ark = shufflevector <4 x float> %i.arj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.arl = load <4 x float>, ptr %.5869.us, align 16, !tbaa !316
  %i.arm = fmul fast <4 x float> %i.ark, %i.arl
  %i.arn = fadd fast <4 x float> %i.arm, %.0304868.us
  %i.aro = getelementptr inbounds nuw i8, ptr %.0596870.us, i64 4
  %i.arp = getelementptr inbounds nuw i8, ptr %.5869.us, i64 16
  %i.arq = load float, ptr %i.aro, align 4, !tbaa !39
  %i.arr = insertelement <4 x float> poison, float %i.arq, i64 0
  %i.ars = shufflevector <4 x float> %i.arr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.art = load <4 x float>, ptr %i.arp, align 16, !tbaa !316
  %i.aru = fmul fast <4 x float> %i.ars, %i.art
  %i.arv = fadd fast <4 x float> %i.aru, %i.arn
  %i.arw = getelementptr inbounds nuw i8, ptr %.0596870.us, i64 8
  %i.arx = getelementptr inbounds nuw i8, ptr %.5869.us, i64 32
  %i.ary = load float, ptr %i.arw, align 4, !tbaa !39
  %i.arz = insertelement <4 x float> poison, float %i.ary, i64 0
  %i.asa = shufflevector <4 x float> %i.arz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.asb = load <4 x float>, ptr %i.arx, align 16, !tbaa !316
  %i.asc = fmul fast <4 x float> %i.asa, %i.asb
  %i.asd = fadd fast <4 x float> %i.asc, %i.arv
  %i.ase = getelementptr inbounds nuw i8, ptr %.0596870.us, i64 12
  %i.asf = getelementptr inbounds nuw i8, ptr %.5869.us, i64 48
  %i.asg = load float, ptr %i.ase, align 4, !tbaa !39
  %i.ash = insertelement <4 x float> poison, float %i.asg, i64 0
  %i.asi = shufflevector <4 x float> %i.ash, <4 x float> poison, <4 x i32> zeroinitializer
  %i.asj = load <4 x float>, ptr %i.asf, align 16, !tbaa !316
  %i.ask = fmul fast <4 x float> %i.asi, %i.asj
  %i.asl = fadd fast <4 x float> %i.ask, %i.asd   ; 3 uses
end_hunk_7
begin_hunk_8_@_ZN4ncnnL20conv3x3s1_winograd43ERKNS_3MatERS0_S2_S2_iRKNS_6OptionE.omp_outlined.4:bb.a
  %i.bbq = fadd fast float %i.bbp, %i.bbn
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.azt, i64 4
  store float %i.bbq, ptr %i.bbr, align 4, !tbaa !39
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  br i1 %i.azx, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.azt, i64 8
  store float %i.bbf, ptr %i.bbs, align 4, !tbaa !39
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  br i1 %i.azz, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.azt, i64 12
  store float %i.bbm, ptr %i.bbt, align 4, !tbaa !39
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %i.bbu = getelementptr inbounds [4 x i8], ptr %i.azt, i64 %i.atr
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %_ZN4ncnn3MatD2Ev.exit.us.i
  %.1.us.i = phi ptr [ %i.azt, %_ZN4ncnn3MatD2Ev.exit.us.i ], [ %i.bbu, %bb.dz ] ; 6 uses
  %i.bbv = or disjoint i32 %i.azo, 1
  %.not763.us.1.i = icmp slt i32 %i.bbv, %i.cx
  br i1 %.not763.us.1.i, label %bb.eb, label %bb.ei

bb.eb:                                            ; preds = %bb.ea
  %i.bbw = fadd fast float %i.awn, %i.avp         ; 2 uses
  %i.bbx = fadd fast float %i.ayj, %i.axl         ; 2 uses
  %i.bby = fsub fast float %i.avp, %i.awn         ; 2 uses
  %i.bbz = fsub fast float %i.axl, %i.ayj         ; 2 uses
  %i.bca = fadd fast float %i.aut, %i.aua
  %i.bcb = fadd fast float %i.bca, %i.auu
  %i.bcc = fadd fast float %i.bcb, %i.bbw
  %i.bcd = fadd fast float %i.bcc, %i.bbx
  %i.bce = fmul fast float %i.bbw, 5.000000e-01
  %i.bcf = fadd fast float %i.bce, %i.aua
  %i.bcg = fmul fast float %i.bbx, 2.000000e+00
  %i.bch = fadd fast float %i.bcf, %i.bcg
  %i.bci = fmul fast float %i.bby, f0x3EB504F3
  %i.bcj = fmul fast float %i.bbz, f0x403504F3
  %i.bck = fadd fast float %i.bci, %i.aua
  %i.bcl = fadd fast float %i.bck, %i.azf
  %i.bcm = fadd fast float %i.bcl, %i.bcj
  %i.bcn = fadd fast float %i.bcm, %i.azg
  store float %i.bcd, ptr %.1.us.i, align 4, !tbaa !39
  br i1 %i.azv, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.bco = fmul fast float %i.bby, f0x3F3504F3
  %i.bcp = fadd fast float %i.bco, %i.aua
  %i.bcq = fmul fast float %i.bbz, f0x3FB504F3
  %i.bcr = fadd fast float %i.bcp, %i.bcq
  %i.bcs = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 4
  store float %i.bcr, ptr %i.bcs, align 4, !tbaa !39
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  br i1 %i.azx, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.bct = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 8
  store float %i.bch, ptr %i.bct, align 4, !tbaa !39
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  br i1 %i.azz, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.bcu = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 12
  store float %i.bcn, ptr %i.bcu, align 4, !tbaa !39
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %i.bcv = getelementptr inbounds [4 x i8], ptr %.1.us.i, i64 %i.atr
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.ea
  %.1.us.1.i = phi ptr [ %.1.us.i, %bb.ea ], [ %i.bcv, %bb.eh ] ; 6 uses
  %i.bcw = or disjoint i32 %i.azo, 2
  %.not763.us.2.i = icmp slt i32 %i.bcw, %i.cx
  br i1 %.not763.us.2.i, label %bb.ej, label %bb.eq

bb.ej:                                            ; preds = %bb.ei
  %i.bcx = fadd fast float %i.awq, %i.avs         ; 2 uses
  %i.bcy = fadd fast float %i.aym, %i.axo         ; 2 uses
  %i.bcz = fsub fast float %i.avs, %i.awq         ; 2 uses
  %i.bda = fsub fast float %i.axo, %i.aym         ; 2 uses
  %i.bdb = fadd fast float %i.auv, %i.aua
  %i.bdc = fadd fast float %i.bdb, %i.auw
  %i.bdd = fadd fast float %i.bdc, %i.bcx
  %i.bde = fadd fast float %i.bdd, %i.bcy
  %i.bdf = fmul fast float %i.bcx, 5.000000e-01
  %i.bdg = fadd fast float %i.bdf, %i.aua
  %i.bdh = fmul fast float %i.bcy, 2.000000e+00
  %i.bdi = fadd fast float %i.bdg, %i.bdh
  %i.bdj = fmul fast float %i.bcz, f0x3EB504F3
  %i.bdk = fmul fast float %i.bda, f0x403504F3
  %i.bdl = fadd fast float %i.bdj, %i.aua
  %i.bdm = fadd fast float %i.bdl, %i.azh
  %i.bdn = fadd fast float %i.bdm, %i.bdk
  %i.bdo = fadd fast float %i.bdn, %i.azi
  store float %i.bde, ptr %.1.us.1.i, align 4, !tbaa !39
  br i1 %i.azv, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.bdp = fmul fast float %i.bcz, f0x3F3504F3
  %i.bdq = fadd fast float %i.bdp, %i.aua
  %i.bdr = fmul fast float %i.bda, f0x3FB504F3
  %i.bds = fadd fast float %i.bdq, %i.bdr
  %i.bdt = getelementptr inbounds nuw i8, ptr %.1.us.1.i, i64 4
  store float %i.bds, ptr %i.bdt, align 4, !tbaa !39
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  br i1 %i.azx, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.bdu = getelementptr inbounds nuw i8, ptr %.1.us.1.i, i64 8
  store float %i.bdi, ptr %i.bdu, align 4, !tbaa !39
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  br i1 %i.azz, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.bdv = getelementptr inbounds nuw i8, ptr %.1.us.1.i, i64 12
  store float %i.bdo, ptr %i.bdv, align 4, !tbaa !39
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %i.bdw = getelementptr inbounds [4 x i8], ptr %.1.us.1.i, i64 %i.atr
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.ei
  %.1.us.2.i = phi ptr [ %.1.us.1.i, %bb.ei ], [ %i.bdw, %bb.ep ] ; 4 uses
  %i.bdx = or disjoint i32 %i.azo, 3
  %.not763.us.3.i = icmp slt i32 %i.bdx, %i.cx
  br i1 %.not763.us.3.i, label %bb.er, label %bb.ex

bb.er:                                            ; preds = %bb.eq
  %i.bdy = fadd fast float %i.awv, %i.avx         ; 2 uses
  %i.bdz = fadd fast float %i.ayr, %i.axt         ; 2 uses
  %i.bea = fsub fast float %i.avx, %i.awv         ; 2 uses
  %i.beb = fsub fast float %i.axt, %i.ayr         ; 2 uses
  %i.bec = fadd fast float %i.auy, %i.aua
  %i.bed = fadd fast float %i.bec, %i.aux
  %i.bee = fadd fast float %i.bed, %i.auz
  %i.bef = fadd fast float %i.bee, %i.bdy
  %i.beg = fadd fast float %i.bef, %i.bdz
  %i.beh = fmul fast float %i.bdy, 5.000000e-01
  %i.bei = fadd fast float %i.beh, %i.aua
  %i.bej = fmul fast float %i.bdz, 2.000000e+00
  %i.bek = fadd fast float %i.bei, %i.bej
  %reass.add132 = fadd fast float %i.aze, %i.beb
  %reass.mul133 = fmul fast float %reass.add132, f0x403504F3
  %reass.add134 = fadd fast float %i.azd, %i.bea
  %reass.mul135 = fmul fast float %reass.add134, f0x3EB504F3
  %i.bel = fadd fast float %i.azj, %i.aua
  %i.bem = fadd fast float %i.bel, %reass.mul135
  %i.ben = fadd fast float %i.bem, %reass.mul133
  store float %i.beg, ptr %.1.us.2.i, align 4, !tbaa !39
  br i1 %i.azv, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.beo = fmul fast float %i.bea, f0x3F3504F3
  %i.bep = fadd fast float %i.beo, %i.aua
  %i.beq = fmul fast float %i.beb, f0x3FB504F3
  %i.ber = fadd fast float %i.bep, %i.beq
  %i.bes = getelementptr inbounds nuw i8, ptr %.1.us.2.i, i64 4
  store float %i.ber, ptr %i.bes, align 4, !tbaa !39
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  br i1 %i.azx, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.bet = getelementptr inbounds nuw i8, ptr %.1.us.2.i, i64 8
  store float %i.bek, ptr %i.bet, align 4, !tbaa !39
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  br i1 %i.azz, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.beu = getelementptr inbounds nuw i8, ptr %.1.us.2.i, i64 12
  store float %i.ben, ptr %i.beu, align 4, !tbaa !39
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev, %bb.eq
  %indvars.iv.next284.i = add nuw nsw i64 %indvars.iv283.i, 1 ; 2 uses
  %exitcond287.not.i = icmp eq i64 %indvars.iv.next284.i, %wide.trip.count286.i
  br i1 %exitcond287.not.i, label %._crit_edge212.us.i, label %_ZN4ncnn3MatD2Ev.exit.us.i, !llvm.loop !1202

._crit_edge212.us.i:                              ; preds = %bb.ex
  %indvars.iv.next289.i = add nsw i64 %indvars.iv288.i, 1 ; 2 uses
  %exitcond292.not.i = icmp eq i64 %indvars.iv.next289.i, %i.ck
  br i1 %exitcond292.not.i, label %_ZN4ncnnL42conv3x3s1_winograd43_transform_output_tileERKNS_3MatERS0_S2_iiii.exit, label %bb.dr, !llvm.loop !1203

.noexc:                                           ; preds = %.noexc.preheader, %.noexc
  %i.bev = phi i32 [ %i.bgs, %.noexc ], [ %.pre153, %.noexc.preheader ] ; 2 uses
  %i.bew = phi i32 [ %i.bgu, %.noexc ], [ %i.cu, %.noexc.preheader ]
  %.0136 = phi i32 [ %i.bgt, %.noexc ], [ 0, %.noexc.preheader ] ; 4 uses
  %i.bex = sub nsw i32 %i.bew, %.0136
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.bev, i32 %i.bex)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  %i.bey = load i32, ptr %3, align 4, !tbaa !67
  %i.bez = sdiv i32 %i.bs, %i.bey
  %i.bfa = load ptr, ptr %10, align 8, !tbaa !18, !noalias !1204
  %i.bfb = load i64, ptr %i.q, align 8, !tbaa !20, !noalias !1204
  %i.bfc = sext i32 %i.bez to i64
  %i.bfd = mul i64 %i.bfb, %i.bfc
  %i.bfe = load i64, ptr %i.r, align 8, !tbaa !65, !noalias !1204 ; 3 uses
  %i.bff = mul i64 %i.bfd, %i.bfe
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.bfa, i64 %i.bff
  %i.bfh = load i32, ptr %i.s, align 8, !tbaa !66, !noalias !1204
  %i.bfi = load ptr, ptr %i.t, align 8, !tbaa !17, !noalias !1204
  %i.bfj = sdiv i32 %.0136, %i.bev
  %i.bfk = sext i32 %i.bfj to i64                 ; 2 uses
  store ptr null, ptr %i.u, align 8, !tbaa !11, !alias.scope !1207
  store i64 %i.bfe, ptr %i.v, align 8, !tbaa !65, !alias.scope !1207
  store i32 %i.bfh, ptr %i.w, align 8, !tbaa !66, !alias.scope !1207
  store ptr %i.bfi, ptr %i.x, align 8, !tbaa !17, !alias.scope !1207
  store i32 2, ptr %i.y, align 8, !tbaa !289, !alias.scope !1207
  %i.bfl = load <2 x i32>, ptr %i.o, align 4, !tbaa !67, !noalias !1204
  %i.bfm = load i32, ptr %i.p, align 8, !tbaa !76, !noalias !1204
  %i.bfn = load i32, ptr %i.o, align 4, !tbaa !75, !noalias !1204
  %i.bfo = sext i32 %i.bfn to i64
  %i.bfp = sext i32 %i.bfm to i64
  %i.bfq = mul nsw i64 %i.bfp, %i.bfo             ; 2 uses
  %i.bfr = mul i64 %i.bfe, %i.bfq
  %i.bfs = mul i64 %i.bfr, %i.bfk
  %i.bft = getelementptr inbounds nuw i8, ptr %i.bfg, i64 %i.bfs
  store ptr %i.bft, ptr %14, align 8, !tbaa !18, !alias.scope !1207
  %i.bfu = shufflevector <2 x i32> %i.bfl, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bfv = shufflevector <4 x i32> %i.bfu, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.bfv, ptr %i.z, align 4, !tbaa !67, !alias.scope !1207
  store i64 %i.bfq, ptr %i.aa, align 8, !tbaa !20, !alias.scope !1207
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #12
  %i.bfw = load i32, ptr %7, align 4, !tbaa !67
  %i.bfx = sdiv i32 %.044142, %i.bfw
  %i.bfy = load ptr, ptr %11, align 8, !tbaa !18, !noalias !1210
  %i.bfz = load i64, ptr %i.ad, align 8, !tbaa !20, !noalias !1210
  %i.bga = sext i32 %i.bfx to i64
  %i.bgb = mul i64 %i.bfz, %i.bga
  %i.bgc = load i64, ptr %i.ae, align 8, !tbaa !65, !noalias !1210 ; 3 uses
  %i.bgd = mul i64 %i.bgb, %i.bgc
  %i.bge = getelementptr inbounds nuw i8, ptr %i.bfy, i64 %i.bgd
  %i.bgf = load i32, ptr %i.af, align 8, !tbaa !66, !noalias !1210
  %i.bgg = load ptr, ptr %i.ag, align 8, !tbaa !17, !noalias !1210
  store ptr null, ptr %i.ah, align 8, !tbaa !11
  store i64 %i.bgc, ptr %i.ai, align 8, !tbaa !65
  store i32 %i.bgf, ptr %i.aj, align 8, !tbaa !66
  store ptr %i.bgg, ptr %i.ak, align 8, !tbaa !17
  store i32 2, ptr %i.al, align 8, !tbaa !289
  %i.bgh = load <2 x i32>, ptr %i.ab, align 4, !tbaa !67, !noalias !1210
  %i.bgi = load i32, ptr %i.ac, align 8, !tbaa !76, !noalias !1210
  %i.bgj = load i32, ptr %i.ab, align 4, !tbaa !75, !noalias !1210
  %i.bgk = sext i32 %i.bgj to i64
  %i.bgl = sext i32 %i.bgi to i64
  %i.bgm = mul nsw i64 %i.bgl, %i.bgk             ; 2 uses
  %i.bgn = mul i64 %i.bgc, %i.bgm
  %i.bgo = mul i64 %i.bgn, %i.bfk
  %i.bgp = getelementptr inbounds nuw i8, ptr %i.bge, i64 %i.bgo
  store ptr %i.bgp, ptr %15, align 8, !tbaa !18
  %i.bgq = shufflevector <2 x i32> %i.bgh, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bgr = shufflevector <4 x i32> %i.bgq, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.bgr, ptr %i.am, align 4, !tbaa !67
  store i64 %i.bgm, ptr %i.an, align 8, !tbaa !20, !alias.scope !1213
  call fastcc void @_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %14, ptr noundef nonnull align 8 dereferenceable(72) %15, ptr %i.ca, i32 noundef 36, i32 noundef %.sroa.speculated121, i32 noundef %.sroa.speculated117, i32 noundef %.0136, i32 noundef %.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  %i.bgs = load i32, ptr %9, align 4, !tbaa !67   ; 2 uses
  %i.bgt = add nsw i32 %i.bgs, %.0136             ; 2 uses
  %i.bgu = load i32, ptr %8, align 4, !tbaa !67   ; 2 uses
  %i.bgv = icmp slt i32 %i.bgt, %i.bgu
  br i1 %i.bgv, label %.noexc, label %._crit_edge, !llvm.loop !1216

_ZN4ncnnL42conv3x3s1_winograd43_transform_output_tileERKNS_3MatERS0_S2_iiii.exit: ; preds = %._crit_edge212.us.i, %.lr.ph218.i, %.preheader.i
  %i.bgw = load i32, ptr %7, align 4, !tbaa !67   ; 2 uses
  %i.bgx = add nsw i32 %i.bgw, %.044142           ; 2 uses
  %i.bgy = load i32, ptr %6, align 4, !tbaa !67   ; 2 uses
  %i.bgz = icmp slt i32 %i.bgx, %i.bgy
  br i1 %i.bgz, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !1217

._crit_edge148:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.ey

bb.ey:                                            ; preds = %._crit_edge148, %bb.a
  ret void

bb.ez:                                            ; preds = %bb.c
  %i.bha = landingpad { ptr, i32 }
          catch ptr null
  %i.bhb = extractvalue { ptr, i32 } %i.bha, 0
  call void @__clang_call_terminate(ptr %i.bhb) #32
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL41conv3x3s1_winograd43_transform_input_tileERKNS_3MatERS0_iiiii.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree nonnull readnone align 4 captures(none) %10, ptr nofree nonnull readnone align 4 captures(none) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %14, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %15) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ew

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
  %.not339 = icmp sgt i32 %i.k, %i.j
  br i1 %.not339, label %._crit_edge342, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.o = load i32, ptr %4, align 4, !tbaa !67     ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.split, label %._crit_edge342

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge
  %i.q = phi i32 [ %i.aud, %._crit_edge ], [ %i.o, %.lr.ph ] ; 3 uses
  %.0192340 = phi i32 [ %i.aue, %._crit_edge ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.r = load i32, ptr %3, align 4, !tbaa !67
  %i.s = shl nsw i32 %.0192340, 3
  %i.t = add nsw i32 %i.r, %i.s                   ; 2 uses
  %i.u = icmp sgt i32 %i.q, 0
  br i1 %i.u, label %.noexc.lr.ph, label %._crit_edge

.noexc.lr.ph:                                     ; preds = %.lr.ph.split
  %i.v = mul i32 %i.t, 36
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %.thread322.5
  %i.w = phi i32 [ %i.q, %.noexc.lr.ph ], [ %i.aua, %.thread322.5 ] ; 6 uses
  %indvars.iv = phi i64 [ 0, %.noexc.lr.ph ], [ %indvars.iv.next, %.thread322.5 ] ; 3 uses
  %i.x = load i32, ptr %5, align 4, !tbaa !67
  %i.y = load i32, ptr %6, align 4, !tbaa !67     ; 2 uses
  %i.z = load i32, ptr %8, align 4, !tbaa !67
  %i.aa = add nsw i32 %i.z, %i.t
  %i.ab = load i32, ptr %9, align 4, !tbaa !67    ; 9 uses
  %i.ac = sdiv i32 %i.aa, %i.ab
  %i.ad = load i32, ptr %i.l, align 4, !tbaa !75, !noalias !1218
  %i.ae = load ptr, ptr %7, align 8, !tbaa !18, !noalias !1218
  %i.af = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !1218
  %i.ag = sext i32 %i.ac to i64
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = load i64, ptr %i.n, align 8, !tbaa !65, !noalias !1218 ; 2 uses
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  %i.al = sext i32 %i.ad to i64
  %i.am = trunc nuw nsw i64 %indvars.iv to i32
  %i.an = add nsw i32 %i.x, %i.am                 ; 2 uses
  %i.ao = srem i32 %i.an, %i.y
  %i.ap = sdiv i32 %i.an, %i.y
  %i.aq = shl nsw i32 %i.ap, 2                    ; 2 uses
  %i.ar = sext i32 %i.aq to i64                   ; 6 uses
  %i.as = mul i64 %i.ai, %i.al
  %i.at = mul i64 %i.as, %i.ar
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.at
  %i.av = shl nsw i32 %i.ao, 2                    ; 6 uses
  %i.aw = mul nsw i32 %i.av, %i.ab
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ax ; 24 uses
  %i.az = load i32, ptr %12, align 4, !tbaa !67   ; 2 uses
  %i.ba = load i32, ptr %13, align 4, !tbaa !67   ; 91 uses
  %i.bb = mul nsw i32 %i.ab, %i.ba
  %i.bc = sext i32 %i.bb to i64                   ; 5 uses
  %i.bd = or disjoint i32 %i.av, 1                ; 18 uses
  %i.be = or disjoint i32 %i.av, 2                ; 18 uses
  %i.bf = or disjoint i32 %i.av, 3                ; 18 uses
  %i.bg = add nsw i32 %i.av, 4                    ; 18 uses
  %i.bh = add nsw i32 %i.av, 5                    ; 18 uses
  %i.bi = sext i32 %i.az to i64                   ; 5 uses
end_hunk_8
begin_hunk_9_@_ZN4ncnnL20conv3x3s1_winograd63ERKNS_3MatERS0_S2_S2_iRKNS_6OptionE.omp_outlined.5:bb.a
  %i.aeo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv350.i
  %i.aep = insertelement <2 x float> poison, float %i.aee, i64 0
  %i.aeq = shufflevector <2 x float> %i.aep, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aer = insertelement <2 x float> poison, float %i.aef, i64 0
  %i.aes = shufflevector <2 x float> %i.aer, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aet = fsub fast <2 x float> %i.aeq, %i.aes   ; 2 uses
  %i.aeu = fadd fast <2 x float> %i.aeq, %i.aes
  %i.aev = shufflevector <2 x float> %i.aet, <2 x float> %i.aeu, <4 x i32> <i32 0, i32 3, i32 0, i32 3> ; 2 uses
  %i.aew = insertelement <2 x float> poison, float %i.aeg, i64 0
  %i.aex = shufflevector <2 x float> %i.aew, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aey = insertelement <2 x float> poison, float %i.aeh, i64 0
  %i.aez = shufflevector <2 x float> %i.aey, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.afa = fsub fast <2 x float> %i.aex, %i.aez   ; 2 uses
  %i.afb = fadd fast <2 x float> %i.aex, %i.aez
  %i.afc = shufflevector <2 x float> %i.afa, <2 x float> %i.afb, <4 x i32> <i32 0, i32 3, i32 0, i32 3> ; 2 uses
  %i.afd = insertelement <2 x float> poison, float %i.aei, i64 0
  %i.afe = shufflevector <2 x float> %i.afd, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aff = insertelement <2 x float> poison, float %i.aej, i64 0
  %i.afg = shufflevector <2 x float> %i.aff, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.afh = fsub fast <2 x float> %i.afe, %i.afg   ; 2 uses
  %i.afi = fadd fast <2 x float> %i.afe, %i.afg   ; 2 uses
  %i.afj = shufflevector <2 x float> %i.afh, <2 x float> %i.afi, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  %i.afk = extractelement <2 x float> %i.afi, i64 1
  %i.afl = fmul fast float %i.afk, 3.200000e+01
  %foldExtExtBinop = fadd fast <4 x float> %i.afc, %i.aev
  %i.afm = extractelement <4 x float> %foldExtExtBinop, i64 1
  %i.afn = fadd fast float %i.afm, %i.aek
  %i.afo = fadd fast float %i.afn, %i.afl
  store float %i.afo, ptr %i.ael, align 4, !tbaa !39
  %i.afp = fmul fast <4 x float> %i.afc, <float 2.000000e+00, float 4.000000e+00, float 8.000000e+00, float 1.600000e+01>
  %i.afq = fmul fast <4 x float> %i.afj, <float 1.600000e+01, float 8.000000e+00, float 4.000000e+00, float 2.000000e+00>
  %i.afr = fadd fast <4 x float> %i.afp, %i.aev
  %i.afs = fadd fast <4 x float> %i.afr, %i.afq   ; 4 uses
  %i.aft = extractelement <4 x float> %i.afs, i64 0
  store float %i.aft, ptr %i.aem, align 4, !tbaa !39
  %i.afu = extractelement <4 x float> %i.afs, i64 1
  store float %i.afu, ptr %i.aen, align 4, !tbaa !39
  %i.afv = extractelement <4 x float> %i.afs, i64 2
  store float %i.afv, ptr %i.aeo, align 4, !tbaa !39
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv350.i
  %i.afx = extractelement <4 x float> %i.afs, i64 3
  store float %i.afx, ptr %i.afw, align 4, !tbaa !39
  %i.afy = load float, ptr %.01013277.us.i, align 4, !tbaa !39
  %i.afz = extractelement <2 x float> %i.afa, i64 0
  %i.aga = fmul fast float %i.afz, 3.200000e+01
  %i.agb = extractelement <2 x float> %i.aet, i64 0
  %i.agc = fadd fast float %i.aga, %i.agb
  %i.agd = extractelement <2 x float> %i.afh, i64 0
  %i.age = fadd fast float %i.agc, %i.agd
  %i.agf = fadd fast float %i.age, %i.afy
  %i.agg = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv350.i
  store float %i.agf, ptr %i.agg, align 4, !tbaa !39
  %i.agh = getelementptr inbounds nuw [4 x i8], ptr %.01020270.us.i, i64 %i.adg
  %i.agi = getelementptr inbounds nuw [4 x i8], ptr %.01019271.us.i, i64 %i.adg
  %i.agj = getelementptr inbounds nuw [4 x i8], ptr %.01018272.us.i, i64 %i.adg
  %i.agk = getelementptr inbounds nuw [4 x i8], ptr %.01017273.us.i, i64 %i.adg
  %i.agl = getelementptr inbounds nuw [4 x i8], ptr %.01016274.us.i, i64 %i.adg
  %i.agm = getelementptr inbounds nuw [4 x i8], ptr %.01015275.us.i, i64 %i.adg
  %i.agn = getelementptr inbounds nuw [4 x i8], ptr %.01014276.us.i, i64 %i.adg
  %i.ago = getelementptr inbounds nuw [4 x i8], ptr %.01013277.us.i, i64 %i.adg
  %indvars.iv.next351.i = add nuw nsw i64 %indvars.iv350.i, 1 ; 2 uses
  %exitcond353.not.i = icmp eq i64 %indvars.iv.next351.i, 8
  br i1 %exitcond353.not.i, label %_ZN4ncnn3MatD2Ev.exit.us.i, label %bb.cn, !llvm.loop !1280

_ZN4ncnn3MatD2Ev.exit.us.i:                       ; preds = %bb.cn
  %i.agp = trunc i64 %indvars.iv358.i to i32
  %i.agq = add i32 %.044136, %i.agp               ; 2 uses
  %i.agr = sdiv i32 %i.agq, %i.dd
  %i.ags = srem i32 %i.agq, %i.dd
  %i.agt = mul nsw i32 %i.agr, 6
  %i.agu = sext i32 %i.agt to i64                 ; 2 uses
  %.reass286.us.i = mul i64 %factor.op.mul285.us.i, %i.agu
  %i.agv = getelementptr inbounds nuw i8, ptr %i.adv, i64 %.reass286.us.i
  %i.agw = mul nsw i32 %i.ags, 6                  ; 6 uses
  %i.agx = sext i32 %i.agw to i64
  %i.agy = getelementptr inbounds [4 x i8], ptr %i.agv, i64 %i.agx
  %i.agz = or disjoint i32 %i.agw, 1
  %i.aha = icmp slt i32 %i.agz, %i.cw
  %i.ahb = add nsw i32 %i.agw, 2
  %i.ahc = icmp slt i32 %i.ahb, %i.cw
  %i.ahd = add nsw i32 %i.agw, 3
  %i.ahe = icmp slt i32 %i.ahd, %i.cw
  %i.ahf = add nsw i32 %i.agw, 4
  %i.ahg = icmp slt i32 %i.ahf, %i.cw
  %i.ahh = add nsw i32 %i.agw, 5
  %i.ahi = icmp slt i32 %i.ahh, %i.cw
  %invariant.op379.i = sub nsw i64 %i.adn, %i.agu
  br label %bb.co

bb.co:                                            ; preds = %bb.da, %_ZN4ncnn3MatD2Ev.exit.us.i
  %indvars.iv354.i = phi i64 [ %indvars.iv.next355.i, %bb.da ], [ 0, %_ZN4ncnn3MatD2Ev.exit.us.i ] ; 3 uses
  %.01011279.us.i = phi ptr [ %.1.us.i, %bb.da ], [ %i.agy, %_ZN4ncnn3MatD2Ev.exit.us.i ] ; 8 uses
  %.not1071.us.i = icmp slt i64 %indvars.iv354.i, %invariant.op379.i
  br i1 %.not1071.us.i, label %bb.cp, label %bb.da

bb.cp:                                            ; preds = %bb.co
  %i.ahj = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %indvars.iv354.i ; 5 uses
  %i.ahk = load float, ptr %i.ahj, align 16, !tbaa !39
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahj, i64 4
  %i.ahm = load float, ptr %i.ahl, align 4, !tbaa !39 ; 2 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahj, i64 8
  %i.aho = load float, ptr %i.ahn, align 8, !tbaa !39 ; 2 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ahj, i64 12
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahj, i64 28
  %i.ahr = load float, ptr %i.ahq, align 4, !tbaa !39
  %i.ahs = fsub fast float %i.ahm, %i.aho
  %i.aht = fadd fast float %i.ahm, %i.adr
  %i.ahu = fadd fast float %i.aht, %i.aho         ; 3 uses
  %i.ahv = fadd fast float %i.ahu, %i.ahk
  %i.ahw = fadd fast float %i.ahs, %i.adr         ; 3 uses
  %i.ahx = load <4 x float>, ptr %i.ahp, align 4, !tbaa !39 ; 3 uses
  %i.ahy = shufflevector <4 x float> %i.ahx, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.ahz = fadd fast <4 x float> %i.ahx, %i.ahy   ; 3 uses
  %i.aia = fsub fast <4 x float> %i.ahx, %i.ahy   ; 3 uses
  %i.aib = shufflevector <4 x float> %i.aia, <4 x float> %i.ahz, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.aic = extractelement <4 x float> %i.ahz, i64 3 ; 2 uses
  %i.aid = fmul fast float %i.aic, 3.200000e+01
  %i.aie = extractelement <4 x float> %i.ahz, i64 1 ; 2 uses
  %i.aif = fadd fast float %i.ahv, %i.aie
  %i.aig = fadd fast float %i.aif, %i.aid
  %i.aih = fmul fast <4 x float> %i.aib, <float 8.000000e+00, float 4.000000e+00, float 4.000000e+00, float 8.000000e+00> ; 4 uses
  %i.aii = extractelement <4 x float> %i.aih, i64 1
  %i.aij = fadd fast float %i.aii, %i.ahu
  %i.aik = extractelement <4 x float> %i.aih, i64 3
  %i.ail = fadd fast float %i.aij, %i.aik
  %i.aim = extractelement <4 x float> %i.aih, i64 0
  %i.ain = fadd fast float %i.aim, %i.ahw
  %i.aio = extractelement <4 x float> %i.aih, i64 2
  %i.aip = fadd fast float %i.ain, %i.aio
  %i.aiq = fmul fast float %i.aie, 1.600000e+01
  %factor.us.i = fmul fast float %i.aic, 2.000000e+00
  %i.air = fadd fast float %i.aiq, %i.ahu
  %i.ais = fadd fast float %i.air, %factor.us.i
  %i.ait = extractelement <4 x float> %i.aia, i64 0 ; 2 uses
  %i.aiu = fmul fast float %i.ait, 3.200000e+01
  %i.aiv = fadd fast float %i.aiu, %i.ahw
  %i.aiw = fadd fast float %i.aiv, %i.ahr
  %i.aix = extractelement <4 x float> %i.aia, i64 2 ; 2 uses
  %i.aiy = fadd fast float %i.aiw, %i.aix
  store float %i.aig, ptr %.01011279.us.i, align 4, !tbaa !39
  br i1 %i.aha, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.aiz = fmul fast float %i.aix, 1.600000e+01
  %factor197.us.i = fmul fast float %i.ait, 2.000000e+00
  %i.aja = fadd fast float %factor197.us.i, %i.ahw
  %i.ajb = fadd fast float %i.aja, %i.aiz
  %i.ajc = getelementptr inbounds nuw i8, ptr %.01011279.us.i, i64 4
  store float %i.ajb, ptr %i.ajc, align 4, !tbaa !39
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  br i1 %i.ahc, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.ajd = getelementptr inbounds nuw i8, ptr %.01011279.us.i, i64 8
  store float %i.ail, ptr %i.ajd, align 4, !tbaa !39
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  br i1 %i.ahe, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.aje = getelementptr inbounds nuw i8, ptr %.01011279.us.i, i64 12
  store float %i.aip, ptr %i.aje, align 4, !tbaa !39
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  br i1 %i.ahg, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.ajf = getelementptr inbounds nuw i8, ptr %.01011279.us.i, i64 16
  store float %i.ais, ptr %i.ajf, align 4, !tbaa !39
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  br i1 %i.ahi, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.ajg = getelementptr inbounds nuw i8, ptr %.01011279.us.i, i64 20
  store float %i.aiy, ptr %i.ajg, align 4, !tbaa !39
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.ajh = getelementptr inbounds [4 x i8], ptr %.01011279.us.i, i64 %i.adh
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.co
  %.1.us.i = phi ptr [ %.01011279.us.i, %bb.co ], [ %i.ajh, %bb.cz ]
  %indvars.iv.next355.i = add nuw nsw i64 %indvars.iv354.i, 1 ; 2 uses
  %exitcond357.not.i = icmp eq i64 %indvars.iv.next355.i, 6
  br i1 %exitcond357.not.i, label %bb.db, label %bb.co, !llvm.loop !1281

bb.db:                                            ; preds = %bb.da
  %indvars.iv.next359.i = add nuw nsw i64 %indvars.iv358.i, 1 ; 2 uses
  %exitcond362.not.i = icmp eq i64 %indvars.iv.next359.i, %wide.trip.count361.i
  br i1 %exitcond362.not.i, label %._crit_edge284.us.i, label %bb.cm, !llvm.loop !1282

._crit_edge284.us.i:                              ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  %indvars.iv.next364.i = add nsw i64 %indvars.iv363.i, 1 ; 2 uses
  %exitcond367.not.i = icmp eq i64 %indvars.iv.next364.i, %i.ck
  br i1 %exitcond367.not.i, label %_ZN4ncnnL42conv3x3s1_winograd63_transform_output_tileERKNS_3MatERS0_S2_iiii.exit, label %bb.ck, !llvm.loop !1283

.noexc:                                           ; preds = %.noexc.preheader, %.noexc
  %i.aji = phi i32 [ %i.alf, %.noexc ], [ %.pre147, %.noexc.preheader ] ; 2 uses
  %i.ajj = phi i32 [ %i.alh, %.noexc ], [ %i.cu, %.noexc.preheader ]
  %.0130 = phi i32 [ %i.alg, %.noexc ], [ 0, %.noexc.preheader ] ; 4 uses
  %i.ajk = sub nsw i32 %i.ajj, %.0130
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.aji, i32 %i.ajk)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  %i.ajl = load i32, ptr %3, align 4, !tbaa !67
  %i.ajm = sdiv i32 %i.bs, %i.ajl
  %i.ajn = load ptr, ptr %10, align 8, !tbaa !18, !noalias !1284
  %i.ajo = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !1284
  %i.ajp = sext i32 %i.ajm to i64
  %i.ajq = mul i64 %i.ajo, %i.ajp
  %i.ajr = load i64, ptr %i.u, align 8, !tbaa !65, !noalias !1284 ; 3 uses
  %i.ajs = mul i64 %i.ajq, %i.ajr
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajn, i64 %i.ajs
  %i.aju = load i32, ptr %i.v, align 8, !tbaa !66, !noalias !1284
  %i.ajv = load ptr, ptr %i.w, align 8, !tbaa !17, !noalias !1284
  %i.ajw = sdiv i32 %.0130, %i.aji
  %i.ajx = sext i32 %i.ajw to i64                 ; 2 uses
  store ptr null, ptr %i.x, align 8, !tbaa !11, !alias.scope !1287
  store i64 %i.ajr, ptr %i.y, align 8, !tbaa !65, !alias.scope !1287
  store i32 %i.aju, ptr %i.z, align 8, !tbaa !66, !alias.scope !1287
  store ptr %i.ajv, ptr %i.aa, align 8, !tbaa !17, !alias.scope !1287
  store i32 2, ptr %i.ab, align 8, !tbaa !289, !alias.scope !1287
  %i.ajy = load <2 x i32>, ptr %i.r, align 4, !tbaa !67, !noalias !1284
  %i.ajz = load i32, ptr %i.s, align 8, !tbaa !76, !noalias !1284
  %i.aka = load i32, ptr %i.r, align 4, !tbaa !75, !noalias !1284
  %i.akb = sext i32 %i.aka to i64
  %i.akc = sext i32 %i.ajz to i64
  %i.akd = mul nsw i64 %i.akc, %i.akb             ; 2 uses
  %i.ake = mul i64 %i.ajr, %i.akd
  %i.akf = mul i64 %i.ake, %i.ajx
  %i.akg = getelementptr inbounds nuw i8, ptr %i.ajt, i64 %i.akf
  store ptr %i.akg, ptr %14, align 8, !tbaa !18, !alias.scope !1287
  %i.akh = shufflevector <2 x i32> %i.ajy, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aki = shufflevector <4 x i32> %i.akh, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.aki, ptr %i.ac, align 4, !tbaa !67, !alias.scope !1287
  store i64 %i.akd, ptr %i.ad, align 8, !tbaa !20, !alias.scope !1287
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #12
  %i.akj = load i32, ptr %7, align 4, !tbaa !67
  %i.akk = sdiv i32 %.044136, %i.akj
  %i.akl = load ptr, ptr %11, align 8, !tbaa !18, !noalias !1290
  %i.akm = load i64, ptr %i.ag, align 8, !tbaa !20, !noalias !1290
  %i.akn = sext i32 %i.akk to i64
  %i.ako = mul i64 %i.akm, %i.akn
  %i.akp = load i64, ptr %i.ah, align 8, !tbaa !65, !noalias !1290 ; 3 uses
  %i.akq = mul i64 %i.ako, %i.akp
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akl, i64 %i.akq
  %i.aks = load i32, ptr %i.ai, align 8, !tbaa !66, !noalias !1290
  %i.akt = load ptr, ptr %i.aj, align 8, !tbaa !17, !noalias !1290
  store ptr null, ptr %i.ak, align 8, !tbaa !11
  store i64 %i.akp, ptr %i.al, align 8, !tbaa !65
  store i32 %i.aks, ptr %i.am, align 8, !tbaa !66
  store ptr %i.akt, ptr %i.an, align 8, !tbaa !17
  store i32 2, ptr %i.ao, align 8, !tbaa !289
  %i.aku = load <2 x i32>, ptr %i.ae, align 4, !tbaa !67, !noalias !1290
  %i.akv = load i32, ptr %i.af, align 8, !tbaa !76, !noalias !1290
  %i.akw = load i32, ptr %i.ae, align 4, !tbaa !75, !noalias !1290
  %i.akx = sext i32 %i.akw to i64
  %i.aky = sext i32 %i.akv to i64
  %i.akz = mul nsw i64 %i.aky, %i.akx             ; 2 uses
  %i.ala = mul i64 %i.akp, %i.akz
  %i.alb = mul i64 %i.ala, %i.ajx
  %i.alc = getelementptr inbounds nuw i8, ptr %i.akr, i64 %i.alb
  store ptr %i.alc, ptr %15, align 8, !tbaa !18
  %i.ald = shufflevector <2 x i32> %i.aku, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ale = shufflevector <4 x i32> %i.ald, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.ale, ptr %i.ap, align 4, !tbaa !67
  store i64 %i.akz, ptr %i.aq, align 8, !tbaa !20, !alias.scope !1293
  call fastcc void @_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %14, ptr noundef nonnull align 8 dereferenceable(72) %15, ptr %i.ca, i32 noundef 64, i32 noundef %.sroa.speculated121, i32 noundef %.sroa.speculated117, i32 noundef %.0130, i32 noundef %.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  %i.alf = load i32, ptr %9, align 4, !tbaa !67   ; 2 uses
  %i.alg = add nsw i32 %i.alf, %.0130             ; 2 uses
  %i.alh = load i32, ptr %8, align 4, !tbaa !67   ; 2 uses
  %i.ali = icmp slt i32 %i.alg, %i.alh
  br i1 %i.ali, label %.noexc, label %._crit_edge, !llvm.loop !1296

_ZN4ncnnL42conv3x3s1_winograd63_transform_output_tileERKNS_3MatERS0_S2_iiii.exit: ; preds = %._crit_edge284.us.i, %.lr.ph290.i, %.preheader.i
  %i.alj = load i32, ptr %7, align 4, !tbaa !67   ; 2 uses
  %i.alk = add nsw i32 %i.alj, %.044136           ; 2 uses
  %i.all = load i32, ptr %6, align 4, !tbaa !67   ; 2 uses
  %i.alm = icmp slt i32 %i.alk, %i.all
  br i1 %i.alm, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !1297

._crit_edge142:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  br label %bb.dc

bb.dc:                                            ; preds = %._crit_edge142, %bb.a
  ret void

bb.dd:                                            ; preds = %bb.c
  %i.aln = landingpad { ptr, i32 }
          catch ptr null
  %i.alo = extractvalue { ptr, i32 } %i.aln, 0
  call void @__clang_call_terminate(ptr %i.alo) #32
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL41conv3x3s1_winograd63_transform_input_tileERKNS_3MatERS0_iiiii.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca [8 x [8 x [8 x float]]], align 32 ; 11 uses
  %i.f = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.am

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
  %.not484 = icmp sgt i32 %i.l, %i.k
  br i1 %.not484, label %._crit_edge487, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 512
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 768
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 1024
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 1280
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 1536
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 1792
  %i.w = load i32, ptr %4, align 4, !tbaa !67     ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.split, label %._crit_edge487

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge
  %i.y = phi i32 [ %i.ms, %._crit_edge ], [ %i.w, %.lr.ph ] ; 3 uses
  %.0240485 = phi i32 [ %i.mt, %._crit_edge ], [ %i.l, %.lr.ph ] ; 3 uses
  %i.z = load i32, ptr %3, align 4, !tbaa !67
  %i.aa = shl nsw i32 %.0240485, 3
  %i.ab = add nsw i32 %i.z, %i.aa                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.ac = icmp sgt i32 %i.y, 0
  br i1 %i.ac, label %.noexc.lr.ph, label %._crit_edge

.noexc.lr.ph:                                     ; preds = %.lr.ph.split
  %i.ad = shl i32 %i.ab, 6
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %bb.ak
  %i.ae = phi i32 [ %i.y, %.noexc.lr.ph ], [ %i.mh, %bb.ak ] ; 8 uses
  %indvars.iv494 = phi i64 [ 0, %.noexc.lr.ph ], [ %indvars.iv.next495, %bb.ak ] ; 3 uses
  %i.af = load i32, ptr %5, align 4, !tbaa !67
  %i.ag = load i32, ptr %6, align 4, !tbaa !67    ; 2 uses
  %i.ah = load i32, ptr %8, align 4, !tbaa !67
  %i.ai = add nsw i32 %i.ah, %i.ab
  %i.aj = load i32, ptr %9, align 4, !tbaa !67    ; 4 uses
  %i.ak = sdiv i32 %i.ai, %i.aj
  %i.al = load i32, ptr %i.m, align 4, !tbaa !75, !noalias !1298
  %i.am = load ptr, ptr %7, align 8, !tbaa !18, !noalias !1298
  %i.an = load i64, ptr %i.n, align 8, !tbaa !20, !noalias !1298
  %i.ao = sext i32 %i.ak to i64
  %i.ap = mul i64 %i.an, %i.ao
  %i.aq = load i64, ptr %i.o, align 8, !tbaa !65, !noalias !1298 ; 2 uses
  %i.ar = mul i64 %i.ap, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ar
  %i.at = sext i32 %i.al to i64
  %i.au = trunc nuw nsw i64 %indvars.iv494 to i32
  %i.av = add nsw i32 %i.af, %i.au                ; 2 uses
  %i.aw = srem i32 %i.av, %i.ag
  %i.ax = sdiv i32 %i.av, %i.ag
  %i.ay = mul nsw i32 %i.ax, 6
  %i.az = sext i32 %i.ay to i64                   ; 2 uses
  %i.ba = mul i64 %i.aq, %i.at
  %i.bb = mul i64 %i.ba, %i.az
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bb
  %i.bd = mul nsw i32 %i.aw, 6                    ; 8 uses
  %i.be = mul nsw i32 %i.bd, %i.aj
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bf
  %i.bh = load i32, ptr %10, align 4, !tbaa !67
end_hunk_9
begin_hunk_10_@_ZN4ncnnL23convolution_im2col_gemmERKNS_3MatERS0_S2_S2_iiiiiiiRKNS_6OptionE.omp_outlined:bb.a
  %.29402.i.i = phi ptr [ %i.aar, %.lr.ph405.i.i ], [ %.28418.i.i, %.lr.ph405.preheader.i.i ] ; 5 uses
  %niter256 = phi i32 [ %niter256.next.3, %.lr.ph405.i.i ], [ 0, %.lr.ph405.preheader.i.i ]
  %i.aae = load <8 x float>, ptr %.0442403.i.i, align 32, !tbaa !316
  store <8 x float> %i.aae, ptr %.29402.i.i, align 32, !tbaa !316
  %i.aaf = getelementptr inbounds nuw i8, ptr %.29402.i.i, i64 32
  %i.aag = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx473.i.i = shl i64 %i.aag, 5
  %i.aah = getelementptr inbounds nuw i8, ptr %.0442403.i.i, i64 %.idx473.i.i ; 2 uses
  %i.aai = load <8 x float>, ptr %i.aah, align 32, !tbaa !316
  store <8 x float> %i.aai, ptr %i.aaf, align 32, !tbaa !316
  %i.aaj = getelementptr inbounds nuw i8, ptr %.29402.i.i, i64 64
  %i.aak = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx473.i.i.1 = shl i64 %i.aak, 5
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aah, i64 %.idx473.i.i.1 ; 2 uses
  %i.aam = load <8 x float>, ptr %i.aal, align 32, !tbaa !316
  store <8 x float> %i.aam, ptr %i.aaj, align 32, !tbaa !316
  %i.aan = getelementptr inbounds nuw i8, ptr %.29402.i.i, i64 96
  %i.aao = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx473.i.i.2 = shl i64 %i.aao, 5
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aal, i64 %.idx473.i.i.2 ; 2 uses
  %i.aaq = load <8 x float>, ptr %i.aap, align 32, !tbaa !316
  store <8 x float> %i.aaq, ptr %i.aan, align 32, !tbaa !316
  %i.aar = getelementptr inbounds nuw i8, ptr %.29402.i.i, i64 128 ; 3 uses
  %i.aas = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx473.i.i.3 = shl i64 %i.aas, 5
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aap, i64 %.idx473.i.i.3 ; 2 uses
  %niter256.next.3 = add i32 %niter256, 4         ; 2 uses
  %niter256.ncmp.3 = icmp eq i32 %niter256.next.3, %unroll_iter255
  br i1 %niter256.ncmp.3, label %.loopexit.i.i.loopexit.unr-lcssa, label %.lr.ph405.i.i, !llvm.loop !1366

_ZN4ncnn3MatD2Ev.exit496.i.i:                     ; preds = %bb.h
  br i1 %i.vz, label %.lr.ph410.preheader.i.i, label %.loopexit.i.i

.lr.ph410.preheader.i.i:                          ; preds = %_ZN4ncnn3MatD2Ev.exit496.i.i
  %i.aau = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1367
  %i.aav = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1367
  %i.aaw = mul i64 %i.aav, %i.vx
  %i.aax = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1367
  %i.aay = mul i64 %i.aaw, %i.aax
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aau, i64 %i.aay
  %i.aba = add nsw i64 %indvars.iv462.i.i, %i.wd
  %.idx491.i.i = shl nsw i64 %i.aba, 4
  %i.abb = getelementptr inbounds i8, ptr %i.aaz, i64 %.idx491.i.i ; 2 uses
  br i1 %i.wi, label %.lr.ph410.i.i.epil.preheader, label %.lr.ph410.i.i

.lr.ph410.i.i:                                    ; preds = %.lr.ph410.preheader.i.i, %.lr.ph410.i.i
  %.0440408.i.i = phi ptr [ %i.abr, %.lr.ph410.i.i ], [ %i.abb, %.lr.ph410.preheader.i.i ] ; 2 uses
  %.31407.i.i = phi ptr [ %i.abp, %.lr.ph410.i.i ], [ %.28418.i.i, %.lr.ph410.preheader.i.i ] ; 5 uses
  %niter249 = phi i32 [ %niter249.next.3, %.lr.ph410.i.i ], [ 0, %.lr.ph410.preheader.i.i ]
  %i.abc = load <4 x float>, ptr %.0440408.i.i, align 16, !tbaa !316
  store <4 x float> %i.abc, ptr %.31407.i.i, align 16, !tbaa !316
  %i.abd = getelementptr inbounds nuw i8, ptr %.31407.i.i, i64 16
  %i.abe = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx.i.i = shl i64 %i.abe, 4
  %i.abf = getelementptr inbounds nuw i8, ptr %.0440408.i.i, i64 %.idx.i.i ; 2 uses
  %i.abg = load <4 x float>, ptr %i.abf, align 16, !tbaa !316
  store <4 x float> %i.abg, ptr %i.abd, align 16, !tbaa !316
  %i.abh = getelementptr inbounds nuw i8, ptr %.31407.i.i, i64 32
  %i.abi = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx.i.i.1 = shl i64 %i.abi, 4
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abf, i64 %.idx.i.i.1 ; 2 uses
  %i.abk = load <4 x float>, ptr %i.abj, align 16, !tbaa !316
  store <4 x float> %i.abk, ptr %i.abh, align 16, !tbaa !316
  %i.abl = getelementptr inbounds nuw i8, ptr %.31407.i.i, i64 48
  %i.abm = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx.i.i.2 = shl i64 %i.abm, 4
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abj, i64 %.idx.i.i.2 ; 2 uses
  %i.abo = load <4 x float>, ptr %i.abn, align 16, !tbaa !316
  store <4 x float> %i.abo, ptr %i.abl, align 16, !tbaa !316
  %i.abp = getelementptr inbounds nuw i8, ptr %.31407.i.i, i64 64 ; 3 uses
  %i.abq = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx.i.i.3 = shl i64 %i.abq, 4
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abn, i64 %.idx.i.i.3 ; 2 uses
  %niter249.next.3 = add i32 %niter249, 4         ; 2 uses
  %niter249.ncmp.3 = icmp eq i32 %niter249.next.3, %unroll_iter248
  br i1 %niter249.ncmp.3, label %.loopexit.i.i.loopexit178.unr-lcssa, label %.lr.ph410.i.i, !llvm.loop !1370

_ZN4ncnn3MatD2Ev.exit.i.i:                        ; preds = %bb.h
  br i1 %i.wb, label %.lr.ph415.i.i, label %.loopexit.i.i

.lr.ph415.i.i:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit.i.i
  %i.abs = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1371
  %i.abt = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1371 ; 10 uses
  %i.abu = mul i64 %i.abt, %i.wa
  %i.abv = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1371
  %i.abw = mul i64 %i.abu, %i.abv
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abs, i64 %i.abw
  %i.aby = getelementptr [4 x i8], ptr %i.abx, i64 %indvars.iv462.i.i
  %i.abz = getelementptr [4 x i8], ptr %i.aby, i64 %i.wd ; 2 uses
  br i1 %i.wh, label %.epil.preheader235, label %.lr.ph415.i.i.new

.lr.ph415.i.i.new:                                ; preds = %.lr.ph415.i.i, %.lr.ph415.i.i.new
  %.0438413.i.i = phi ptr [ %i.acx, %.lr.ph415.i.i.new ], [ %i.abz, %.lr.ph415.i.i ] ; 2 uses
  %.33412.i.i = phi ptr [ %i.acw, %.lr.ph415.i.i.new ], [ %.28418.i.i, %.lr.ph415.i.i ] ; 9 uses
  %niter242 = phi i32 [ %niter242.next.7, %.lr.ph415.i.i.new ], [ 0, %.lr.ph415.i.i ]
  %i.aca = load float, ptr %.0438413.i.i, align 4, !tbaa !39
  store float %i.aca, ptr %.33412.i.i, align 4, !tbaa !39
  %i.acb = getelementptr inbounds nuw i8, ptr %.33412.i.i, i64 4
  %i.acc = getelementptr inbounds nuw [4 x i8], ptr %.0438413.i.i, i64 %i.abt ; 2 uses
  %i.acd = load float, ptr %i.acc, align 4, !tbaa !39
  store float %i.acd, ptr %i.acb, align 4, !tbaa !39
  %i.ace = getelementptr inbounds nuw i8, ptr %.33412.i.i, i64 8
  %i.acf = getelementptr inbounds nuw [4 x i8], ptr %i.acc, i64 %i.abt ; 2 uses
  %i.acg = load float, ptr %i.acf, align 4, !tbaa !39
  store float %i.acg, ptr %i.ace, align 4, !tbaa !39
  %i.ach = getelementptr inbounds nuw i8, ptr %.33412.i.i, i64 12
  %i.aci = getelementptr inbounds nuw [4 x i8], ptr %i.acf, i64 %i.abt ; 2 uses
  %i.acj = load float, ptr %i.aci, align 4, !tbaa !39
  store float %i.acj, ptr %i.ach, align 4, !tbaa !39
  %i.ack = getelementptr inbounds nuw i8, ptr %.33412.i.i, i64 16
  %i.acl = getelementptr inbounds nuw [4 x i8], ptr %i.aci, i64 %i.abt ; 2 uses
  %i.acm = load float, ptr %i.acl, align 4, !tbaa !39
  store float %i.acm, ptr %i.ack, align 4, !tbaa !39
  %i.acn = getelementptr inbounds nuw i8, ptr %.33412.i.i, i64 20
  %i.aco = getelementptr inbounds nuw [4 x i8], ptr %i.acl, i64 %i.abt ; 2 uses
  %i.acp = load float, ptr %i.aco, align 4, !tbaa !39
  store float %i.acp, ptr %i.acn, align 4, !tbaa !39
  %i.acq = getelementptr inbounds nuw i8, ptr %.33412.i.i, i64 24
  %i.acr = getelementptr inbounds nuw [4 x i8], ptr %i.aco, i64 %i.abt ; 2 uses
  %i.acs = load float, ptr %i.acr, align 4, !tbaa !39
  store float %i.acs, ptr %i.acq, align 4, !tbaa !39
  %i.act = getelementptr inbounds nuw i8, ptr %.33412.i.i, i64 28
  %i.acu = getelementptr inbounds nuw [4 x i8], ptr %i.acr, i64 %i.abt ; 2 uses
  %i.acv = load float, ptr %i.acu, align 4, !tbaa !39
  store float %i.acv, ptr %i.act, align 4, !tbaa !39
  %i.acw = getelementptr inbounds nuw i8, ptr %.33412.i.i, i64 32 ; 3 uses
  %i.acx = getelementptr inbounds nuw [4 x i8], ptr %i.acu, i64 %i.abt ; 2 uses
  %niter242.next.7 = add i32 %niter242, 8         ; 2 uses
  %niter242.ncmp.7 = icmp eq i32 %niter242.next.7, %unroll_iter241
  br i1 %niter242.ncmp.7, label %.loopexit.i.i.loopexit179.unr-lcssa, label %.lr.ph415.i.i.new, !llvm.loop !1374

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph405.i.i
  br i1 %lcmp.mod252.not, label %.loopexit.i.i, label %.lr.ph405.i.i.epil.preheader

.lr.ph405.i.i.epil.preheader:                     ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph405.preheader.i.i
  %.0442403.i.i.epil.init = phi ptr [ %i.aad, %.lr.ph405.preheader.i.i ], [ %i.aat, %.loopexit.i.i.loopexit.unr-lcssa ]
  %.29402.i.i.epil.init = phi ptr [ %.28418.i.i, %.lr.ph405.preheader.i.i ], [ %i.aar, %.loopexit.i.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod254)
  br label %.lr.ph405.i.i.epil

.lr.ph405.i.i.epil:                               ; preds = %.lr.ph405.i.i.epil, %.lr.ph405.i.i.epil.preheader
  %.0442403.i.i.epil = phi ptr [ %i.adb, %.lr.ph405.i.i.epil ], [ %.0442403.i.i.epil.init, %.lr.ph405.i.i.epil.preheader ] ; 2 uses
  %.29402.i.i.epil = phi ptr [ %i.acz, %.lr.ph405.i.i.epil ], [ %.29402.i.i.epil.init, %.lr.ph405.i.i.epil.preheader ] ; 2 uses
  %epil.iter251 = phi i32 [ %epil.iter251.next, %.lr.ph405.i.i.epil ], [ 0, %.lr.ph405.i.i.epil.preheader ]
  %i.acy = load <8 x float>, ptr %.0442403.i.i.epil, align 32, !tbaa !316
  store <8 x float> %i.acy, ptr %.29402.i.i.epil, align 32, !tbaa !316
  %i.acz = getelementptr inbounds nuw i8, ptr %.29402.i.i.epil, i64 32 ; 2 uses
  %i.ada = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx473.i.i.epil = shl i64 %i.ada, 5
  %i.adb = getelementptr inbounds nuw i8, ptr %.0442403.i.i.epil, i64 %.idx473.i.i.epil
  %epil.iter251.next = add i32 %epil.iter251, 1   ; 2 uses
  %epil.iter251.cmp.not = icmp eq i32 %epil.iter251.next, %xtraiter250
  br i1 %epil.iter251.cmp.not, label %.loopexit.i.i, label %.lr.ph405.i.i.epil, !llvm.loop !1375

.loopexit.i.i.loopexit178.unr-lcssa:              ; preds = %.lr.ph410.i.i
  br i1 %lcmp.mod245.not, label %.loopexit.i.i, label %.lr.ph410.i.i.epil.preheader

.lr.ph410.i.i.epil.preheader:                     ; preds = %.loopexit.i.i.loopexit178.unr-lcssa, %.lr.ph410.preheader.i.i
  %.0440408.i.i.epil.init = phi ptr [ %i.abb, %.lr.ph410.preheader.i.i ], [ %i.abr, %.loopexit.i.i.loopexit178.unr-lcssa ]
  %.31407.i.i.epil.init = phi ptr [ %.28418.i.i, %.lr.ph410.preheader.i.i ], [ %i.abp, %.loopexit.i.i.loopexit178.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod247)
  br label %.lr.ph410.i.i.epil

.lr.ph410.i.i.epil:                               ; preds = %.lr.ph410.i.i.epil, %.lr.ph410.i.i.epil.preheader
  %.0440408.i.i.epil = phi ptr [ %i.adf, %.lr.ph410.i.i.epil ], [ %.0440408.i.i.epil.init, %.lr.ph410.i.i.epil.preheader ] ; 2 uses
  %.31407.i.i.epil = phi ptr [ %i.add, %.lr.ph410.i.i.epil ], [ %.31407.i.i.epil.init, %.lr.ph410.i.i.epil.preheader ] ; 2 uses
  %epil.iter244 = phi i32 [ %epil.iter244.next, %.lr.ph410.i.i.epil ], [ 0, %.lr.ph410.i.i.epil.preheader ]
  %i.adc = load <4 x float>, ptr %.0440408.i.i.epil, align 16, !tbaa !316
  store <4 x float> %i.adc, ptr %.31407.i.i.epil, align 16, !tbaa !316
  %i.add = getelementptr inbounds nuw i8, ptr %.31407.i.i.epil, i64 16 ; 2 uses
  %i.ade = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx.i.i.epil = shl i64 %i.ade, 4
  %i.adf = getelementptr inbounds nuw i8, ptr %.0440408.i.i.epil, i64 %.idx.i.i.epil
  %epil.iter244.next = add i32 %epil.iter244, 1   ; 2 uses
  %epil.iter244.cmp.not = icmp eq i32 %epil.iter244.next, %xtraiter243
  br i1 %epil.iter244.cmp.not, label %.loopexit.i.i, label %.lr.ph410.i.i.epil, !llvm.loop !1376

.loopexit.i.i.loopexit179.unr-lcssa:              ; preds = %.lr.ph415.i.i.new
  br i1 %lcmp.mod238.not, label %.loopexit.i.i, label %.epil.preheader235

.epil.preheader235:                               ; preds = %.loopexit.i.i.loopexit179.unr-lcssa, %.lr.ph415.i.i
  %.0438413.i.i.epil.init = phi ptr [ %i.abz, %.lr.ph415.i.i ], [ %i.acx, %.loopexit.i.i.loopexit179.unr-lcssa ]
  %.33412.i.i.epil.init = phi ptr [ %.28418.i.i, %.lr.ph415.i.i ], [ %i.acw, %.loopexit.i.i.loopexit179.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod240)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader235
  %.0438413.i.i.epil = phi ptr [ %.0438413.i.i.epil.init, %.epil.preheader235 ], [ %i.adi, %bb.i ] ; 2 uses
  %.33412.i.i.epil = phi ptr [ %.33412.i.i.epil.init, %.epil.preheader235 ], [ %i.adh, %bb.i ] ; 2 uses
  %epil.iter237 = phi i32 [ 0, %.epil.preheader235 ], [ %epil.iter237.next, %bb.i ]
  %i.adg = load float, ptr %.0438413.i.i.epil, align 4, !tbaa !39
  store float %i.adg, ptr %.33412.i.i.epil, align 4, !tbaa !39
  %i.adh = getelementptr inbounds nuw i8, ptr %.33412.i.i.epil, i64 4 ; 2 uses
  %i.adi = getelementptr inbounds nuw [4 x i8], ptr %.0438413.i.i.epil, i64 %i.abt
  %epil.iter237.next = add i32 %epil.iter237, 1   ; 2 uses
  %epil.iter237.cmp.not = icmp eq i32 %epil.iter237.next, %xtraiter236
  br i1 %epil.iter237.cmp.not, label %.loopexit.i.i, label %bb.i, !llvm.loop !1377

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit179.unr-lcssa, %bb.i, %.loopexit.i.i.loopexit178.unr-lcssa, %.lr.ph410.i.i.epil, %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph405.i.i.epil, %_ZN4ncnn3MatD2Ev.exit.i.i, %_ZN4ncnn3MatD2Ev.exit496.i.i, %_ZN4ncnn3MatD2Ev.exit497.i.i, %bb.h
  %.34.i.i = phi ptr [ %.28418.i.i, %bb.h ], [ %.28418.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i ], [ %i.acz, %.lr.ph405.i.i.epil ], [ %i.add, %.lr.ph410.i.i.epil ], [ %.28418.i.i, %_ZN4ncnn3MatD2Ev.exit496.i.i ], [ %.28418.i.i, %_ZN4ncnn3MatD2Ev.exit497.i.i ], [ %i.aar, %.loopexit.i.i.loopexit.unr-lcssa ], [ %i.abp, %.loopexit.i.i.loopexit178.unr-lcssa ], [ %i.acw, %.loopexit.i.i.loopexit179.unr-lcssa ], [ %i.adh, %bb.i ]
  %indvars.iv.next463.i.i = add nsw i64 %indvars.iv462.i.i, 1 ; 2 uses
  %exitcond465.not.i.i = icmp eq i64 %indvars.iv.next463.i.i, %wide.trip.count.i.i
  br i1 %exitcond465.not.i.i, label %_ZN4ncnn3MatD2Ev.exit, label %bb.h, !llvm.loop !1378

bb.j:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit36
  %i.adj = icmp eq i32 %i.at, 2                   ; 4 uses
  %or.cond13.i = and i1 %or.cond.i, %i.adj
  %i.adk = icmp eq i32 %i.au, 2                   ; 4 uses
  %or.cond15.i = and i1 %or.cond13.i, %i.adk
  br i1 %or.cond15.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call fastcc void @_ZN4ncnnL34convolution_im2col_input_tile_implERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull readonly align 8 dereferenceable(72) %9, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated64, i32 noundef %i.x, i32 noundef %.sroa.speculated, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 2, i32 noundef 2)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.adl = icmp eq i32 %i.ap, 3
  %i.adm = icmp eq i32 %i.aq, 3
  %or.cond17.i = and i1 %i.adl, %i.adm
  %or.cond19.i = and i1 %or.cond17.i, %i.ax
  %or.cond21.i = and i1 %or.cond19.i, %i.ay       ; 2 uses
  %or.cond23.i = and i1 %or.cond21.i, %i.az
  %or.cond25.i = and i1 %or.cond23.i, %i.ba
  br i1 %or.cond25.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call fastcc void @_ZN4ncnnL34convolution_im2col_input_tile_implERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull readonly align 8 dereferenceable(72) %9, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated64, i32 noundef %i.x, i32 noundef %.sroa.speculated, i32 noundef 3, i32 noundef 3, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.n:                                             ; preds = %bb.l
  %or.cond33.i = and i1 %or.cond21.i, %i.adj
  %or.cond35.i = and i1 %or.cond33.i, %i.adk
  br i1 %or.cond35.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call fastcc void @_ZN4ncnnL34convolution_im2col_input_tile_implERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull readonly align 8 dereferenceable(72) %9, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated64, i32 noundef %i.x, i32 noundef %.sroa.speculated, i32 noundef 3, i32 noundef 3, i32 noundef 1, i32 noundef 1, i32 noundef 2, i32 noundef 2)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.adn = icmp eq i32 %i.ap, 5
  %i.ado = icmp eq i32 %i.aq, 5
  %or.cond37.i = and i1 %i.adn, %i.ado
  %or.cond39.i = and i1 %or.cond37.i, %i.ax
  %or.cond41.i = and i1 %or.cond39.i, %i.ay       ; 2 uses
  %or.cond43.i = and i1 %or.cond41.i, %i.az
  %or.cond45.i = and i1 %or.cond43.i, %i.ba
  br i1 %or.cond45.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call fastcc void @_ZN4ncnnL34convolution_im2col_input_tile_implERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull readonly align 8 dereferenceable(72) %9, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated64, i32 noundef %i.x, i32 noundef %.sroa.speculated, i32 noundef 5, i32 noundef 5, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.r:                                             ; preds = %bb.p
  %or.cond53.i = and i1 %or.cond41.i, %i.adj
  %or.cond55.i = and i1 %or.cond53.i, %i.adk
  br i1 %or.cond55.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call fastcc void @_ZN4ncnnL34convolution_im2col_input_tile_implERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull readonly align 8 dereferenceable(72) %9, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated64, i32 noundef %i.x, i32 noundef %.sroa.speculated, i32 noundef 5, i32 noundef 5, i32 noundef 1, i32 noundef 1, i32 noundef 2, i32 noundef 2)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.t:                                             ; preds = %bb.r
  %i.adp = icmp eq i32 %i.ap, 7
  %i.adq = icmp eq i32 %i.aq, 7
  %or.cond57.i = and i1 %i.adp, %i.adq
  %or.cond59.i = and i1 %or.cond57.i, %i.ax
  %or.cond61.i = and i1 %or.cond59.i, %i.ay
  %or.cond63.i = and i1 %or.cond61.i, %i.adj
  %or.cond65.i = and i1 %or.cond63.i, %i.adk
  br i1 %or.cond65.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call fastcc void @_ZN4ncnnL34convolution_im2col_input_tile_implERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull readonly align 8 dereferenceable(72) %9, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated64, i32 noundef %i.x, i32 noundef %.sroa.speculated, i32 noundef 7, i32 noundef 7, i32 noundef 1, i32 noundef 1, i32 noundef 2, i32 noundef 2)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.v:                                             ; preds = %bb.t
  call fastcc void @_ZN4ncnnL34convolution_im2col_input_tile_implERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull readonly align 8 dereferenceable(72) %9, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated64, i32 noundef %i.x, i32 noundef %.sroa.speculated, i32 noundef %i.ap, i32 noundef %i.aq, i32 noundef %i.ar, i32 noundef %i.as, i32 noundef %i.at, i32 noundef %i.au)
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.loopexit.i.i, %bb.v, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %.preheader.i.i
  %i.adr = add nsw i32 %.095, 1
  %i.ads = load i32, ptr %i.b, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.095, %i.ads
  br i1 %.not.not, label %_ZN4ncnn3MatD2Ev.exit36, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL23convolution_im2col_gemmERKNS_3MatERS0_S2_S2_iiiiiiiRKNS_6OptionE.omp_outlined.6(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.gc

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
  %.not304 = icmp sgt i32 %i.k, %i.j
  br i1 %.not304, label %._crit_edge308, label %.lr.ph307

.lr.ph307:                                        ; preds = %bb.b
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

bb.c:                                             ; preds = %.lr.ph307, %_ZN4ncnn3MatD2Ev.exit
  %.045305 = phi i32 [ %i.k, %.lr.ph307 ], [ %i.at, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.v = load i32, ptr %3, align 4, !tbaa !67     ; 2 uses
  %i.w = mul nsw i32 %i.v, %.045305               ; 3 uses
  %i.x = load i32, ptr %4, align 4, !tbaa !67
  %i.y = load i32, ptr %5, align 4, !tbaa !67
  %i.z = icmp sgt i32 %i.x, %i.y
  br i1 %i.z, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit50

bb.d:                                             ; preds = %bb.c
  %i.aa = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %bb.e unwind label %bb.gd

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %6, align 8, !tbaa !18, !noalias !1379
  %i.ac = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !1379
  %i.ad = sext i32 %i.aa to i64
  %i.ae = mul i64 %i.ac, %i.ad
  %i.af = load i64, ptr %i.m, align 8, !tbaa !65, !noalias !1379
  %i.ag = mul i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ag
  %.pre = load i32, ptr %3, align 4, !tbaa !67
  br label %_ZN4ncnn3MatD2Ev.exit50

_ZN4ncnn3MatD2Ev.exit50:                          ; preds = %bb.e, %bb.c
  %i.ai = phi i32 [ %i.v, %bb.c ], [ %.pre, %bb.e ]
  %.sroa.0167.0 = phi ptr [ null, %bb.c ], [ %i.ah, %bb.e ] ; 2 uses
  %i.aj = load i32, ptr %7, align 4, !tbaa !67
  %i.ak = sub nsw i32 %i.aj, %i.w
  %.sroa.speculated149 = call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.ak) ; 6 uses
  %i.al = load i32, ptr %8, align 4, !tbaa !67    ; 2 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit50
  %i.an = icmp sgt i32 %.sroa.speculated149, 7
  %i.ao = sext i32 %i.w to i64                    ; 8 uses
  %i.ap = zext nneg i32 %.sroa.speculated149 to i64
  %i.aq = sext i32 %.sroa.speculated149 to i64    ; 3 uses
  %invariant.op.i = add nsw i64 %i.aq, -3
  %invariant.op1596.i = add nsw i64 %i.aq, -1
  %i.ar = load i32, ptr %4, align 4, !tbaa !67    ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph.split.preheader, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %.pre429 = load i32, ptr %9, align 4, !tbaa !67
  br label %.lr.ph.split

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge, %.lr.ph, %_ZN4ncnn3MatD2Ev.exit50
  %i.at = add nsw i32 %.045305, 1
  %i.au = load i32, ptr %i.b, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.045305, %i.au
  br i1 %.not.not, label %bb.c, label %._crit_edge308

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %._crit_edge
  %i.av = phi i32 [ %i.bf, %._crit_edge ], [ %i.al, %.lr.ph.split.preheader ] ; 2 uses
  %i.aw = phi i32 [ %i.bg, %._crit_edge ], [ %.pre429, %.lr.ph.split.preheader ] ; 2 uses
  %i.ax = phi i32 [ %i.bh, %._crit_edge ], [ %i.ar, %.lr.ph.split.preheader ] ; 3 uses
  %.044303 = phi i32 [ %i.bi, %._crit_edge ], [ 0, %.lr.ph.split.preheader ] ; 6 uses
  %i.ay = sub nsw i32 %i.av, %.044303
end_hunk_10
begin_hunk_11_@_ZN4ncnnL23convolution_im2col_gemmERKNS_3MatERS0_S2_S2_iiiiiiiRKNS_6OptionE.omp_outlined.6:bb.a
  %.012361215.i.ph = phi i32 [ 0, %.lr.ph1217.i.preheader ], [ %i.atv, %middle.block734 ]
  %.012371214.i.ph = phi ptr [ %.312861252.i, %.lr.ph1217.i.preheader ], [ %i.bko, %middle.block734 ]
  %.71211.i.ph = phi ptr [ %.61224.i, %.lr.ph1217.i.preheader ], [ %i.bmv, %middle.block734 ]
  %.ph = phi <2 x float> [ %i.bmu, %.lr.ph1217.i.preheader ], [ %i.bnp, %middle.block734 ]
  br label %.lr.ph1217.i

.lr.ph1217.i:                                     ; preds = %.lr.ph1217.i.preheader801, %.lr.ph1217.i
  %.012361215.i = phi i32 [ %i.bnz, %.lr.ph1217.i ], [ %.012361215.i.ph, %.lr.ph1217.i.preheader801 ]
  %.012371214.i = phi ptr [ %i.bnx, %.lr.ph1217.i ], [ %.012371214.i.ph, %.lr.ph1217.i.preheader801 ] ; 2 uses
  %.71211.i = phi ptr [ %i.bny, %.lr.ph1217.i ], [ %.71211.i.ph, %.lr.ph1217.i.preheader801 ] ; 2 uses
  %i.bnq = phi <2 x float> [ %i.bnw, %.lr.ph1217.i ], [ %.ph, %.lr.ph1217.i.preheader801 ]
  %i.bnr = load float, ptr %.012371214.i, align 4, !tbaa !39
  %i.bns = load <2 x float>, ptr %.71211.i, align 4, !tbaa !39
  %i.bnt = insertelement <2 x float> poison, float %i.bnr, i64 0
  %i.bnu = shufflevector <2 x float> %i.bnt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bnv = fmul fast <2 x float> %i.bns, %i.bnu
  %i.bnw = fadd fast <2 x float> %i.bnv, %i.bnq   ; 2 uses
  %i.bnx = getelementptr inbounds nuw i8, ptr %.012371214.i, i64 4
  %i.bny = getelementptr inbounds nuw i8, ptr %.71211.i, i64 8
  %i.bnz = add nuw nsw i32 %.012361215.i, 1       ; 2 uses
  %exitcond1438.not.i = icmp eq i32 %i.bnz, %.sroa.speculated
  br i1 %exitcond1438.not.i, label %._crit_edge1218.loopexit.i, label %.lr.ph1217.i, !llvm.loop !1433

._crit_edge1218.loopexit.i:                       ; preds = %.lr.ph1217.i, %middle.block734
  %i.boa = phi <2 x float> [ %i.bnp, %middle.block734 ], [ %i.bnw, %.lr.ph1217.i ]
  %i.bob = getelementptr i8, ptr %.61224.i, i64 %i.atm
  %scevgep1437.i = getelementptr i8, ptr %i.bob, i64 8
  br label %._crit_edge1218.i

._crit_edge1218.i:                                ; preds = %._crit_edge1218.loopexit.i, %bb.ft
  %.7.lcssa.i = phi ptr [ %.61224.i, %bb.ft ], [ %scevgep1437.i, %._crit_edge1218.loopexit.i ] ; 2 uses
  %i.boc = phi <2 x float> [ %i.bmu, %bb.ft ], [ %i.boa, %._crit_edge1218.loopexit.i ] ; 2 uses
  br i1 %.not179, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %._crit_edge1218.i
  store <2 x float> %i.boc, ptr %.612611223.i, align 4, !tbaa !39
  %i.bod = getelementptr inbounds nuw i8, ptr %.612611223.i, i64 8
  br label %bb.fw

bb.fv:                                            ; preds = %._crit_edge1218.i
  store <2 x float> %i.boc, ptr %.221222.i, align 4, !tbaa !39
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %.71262.i = phi ptr [ %i.bod, %bb.fu ], [ %.612611223.i, %bb.fv ] ; 2 uses
  %i.boe = getelementptr inbounds nuw i8, ptr %.221222.i, i64 8 ; 2 uses
  %i.bof = add nuw nsw i32 %.31225.i, 2           ; 3 uses
  %i.bog = or disjoint i32 %i.bof, 1
  %i.boh = icmp slt i32 %i.bog, %.sroa.speculated145
  br i1 %i.boh, label %bb.fp, label %.preheader.i, !llvm.loop !1434

bb.fx:                                            ; preds = %bb.gb, %.lr.ph1246.i
  %.41245.i = phi i32 [ %.3.lcssa.i, %.lr.ph1246.i ], [ %i.bpt, %bb.gb ]
  %.81244.i = phi ptr [ %.6.lcssa.i, %.lr.ph1246.i ], [ %.9.lcssa.i, %bb.gb ] ; 7 uses
  %.812631243.i = phi ptr [ %.61261.lcssa.i, %.lr.ph1246.i ], [ %.91264.i, %bb.gb ] ; 3 uses
  %.231242.i = phi ptr [ %.22.lcssa.i, %.lr.ph1246.i ], [ %i.bps, %bb.gb ] ; 3 uses
  br i1 %brmerge.i, label %.sink.split.i, label %bb.fy

.sink.split.i:                                    ; preds = %bb.fx
  %.231242.mux.i = select i1 %i.atf, ptr %.231242.i, ptr %.71294.i
  %i.boi = load float, ptr %.231242.mux.i, align 4, !tbaa !39
  br label %bb.fy

bb.fy:                                            ; preds = %.sink.split.i, %bb.fx
  %.01235.i = phi nsz float [ 0.000000e+00, %bb.fx ], [ %i.boi, %.sink.split.i ] ; 4 uses
  br i1 %i.atg, label %iter.check, label %._crit_edge1239.i

iter.check:                                       ; preds = %bb.fy
  br i1 %min.iters.check, label %.lr.ph1238.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check686, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.boj = getelementptr i8, ptr %.81244.i, i64 %i.aua
  %i.bok = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.01235.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x float> [ %i.bok, %vector.ph ], [ %i.bow, %vector.body ]
  %vec.phi687 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.box, %vector.body ]
  %vec.phi688 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.boy, %vector.body ]
  %vec.phi689 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.boz, %vector.body ]
  %i.bol = shl i64 %index, 2                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.312861252.i, i64 %i.bol ; 4 uses
  %next.gep690 = getelementptr i8, ptr %.81244.i, i64 %i.bol ; 4 uses
  %i.bom = getelementptr i8, ptr %next.gep, i64 32
  %i.bon = getelementptr i8, ptr %next.gep, i64 64
  %i.boo = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <8 x float>, ptr %next.gep, align 4, !tbaa !39
  %wide.load691 = load <8 x float>, ptr %i.bom, align 4, !tbaa !39
  %wide.load692 = load <8 x float>, ptr %i.bon, align 4, !tbaa !39
  %wide.load693 = load <8 x float>, ptr %i.boo, align 4, !tbaa !39
  %i.bop = getelementptr i8, ptr %next.gep690, i64 32
  %i.boq = getelementptr i8, ptr %next.gep690, i64 64
  %i.bor = getelementptr i8, ptr %next.gep690, i64 96
  %wide.load694 = load <8 x float>, ptr %next.gep690, align 4, !tbaa !39
  %wide.load695 = load <8 x float>, ptr %i.bop, align 4, !tbaa !39
  %wide.load696 = load <8 x float>, ptr %i.boq, align 4, !tbaa !39
  %wide.load697 = load <8 x float>, ptr %i.bor, align 4, !tbaa !39
  %i.bos = fmul fast <8 x float> %wide.load694, %wide.load
  %i.bot = fmul fast <8 x float> %wide.load695, %wide.load691
  %i.bou = fmul fast <8 x float> %wide.load696, %wide.load692
  %i.bov = fmul fast <8 x float> %wide.load697, %wide.load693
  %i.bow = fadd fast <8 x float> %i.bos, %vec.phi ; 2 uses
  %i.box = fadd fast <8 x float> %i.bot, %vec.phi687 ; 2 uses
  %i.boy = fadd fast <8 x float> %i.bou, %vec.phi688 ; 2 uses
  %i.boz = fadd fast <8 x float> %i.bov, %vec.phi689 ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bpa = icmp eq i64 %index.next, %n.vec
  br i1 %i.bpa, label %middle.block, label %vector.body, !llvm.loop !1435

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <8 x float> %i.box, %i.bow
  %bin.rdx698 = fadd fast <8 x float> %i.boy, %bin.rdx
  %bin.rdx699 = fadd fast <8 x float> %i.boz, %bin.rdx698
  %i.bpb = call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx699) ; 3 uses
  br i1 %cmp.n, label %._crit_edge1239.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph1238.i.preheader, label %vec.epilog.ph, !prof !280

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.bpb, %vec.epilog.iter.check ], [ %.01235.i, %vector.main.loop.iter.check ]
  %i.bpc = getelementptr i8, ptr %.81244.i, i64 %i.auc
  %i.bpd = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index703 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next709, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi704 = phi <8 x float> [ %i.bpd, %vec.epilog.ph ], [ %i.bpg, %vec.epilog.vector.body ]
  %i.bpe = shl i64 %index703, 2                   ; 2 uses
  %next.gep705 = getelementptr i8, ptr %.312861252.i, i64 %i.bpe
  %next.gep706 = getelementptr i8, ptr %.81244.i, i64 %i.bpe
  %wide.load707 = load <8 x float>, ptr %next.gep705, align 4, !tbaa !39
  %wide.load708 = load <8 x float>, ptr %next.gep706, align 4, !tbaa !39
  %i.bpf = fmul fast <8 x float> %wide.load708, %wide.load707
  %i.bpg = fadd fast <8 x float> %i.bpf, %vec.phi704 ; 2 uses
  %index.next709 = add nuw i64 %index703, 8       ; 2 uses
  %i.bph = icmp eq i64 %index.next709, %n.vec702
  br i1 %i.bph, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1436

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bpi = call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.bpg) ; 2 uses
  br i1 %cmp.n710, label %._crit_edge1239.loopexit.i, label %.lr.ph1238.i.preheader

.lr.ph1238.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01236.i.ph = phi i32 [ 0, %iter.check ], [ %i.atz, %vec.epilog.iter.check ], [ %i.aub, %vec.epilog.middle.block ]
  %.012341233.i.ph = phi ptr [ %.312861252.i, %iter.check ], [ %i.bmo, %vec.epilog.iter.check ], [ %i.bmp, %vec.epilog.middle.block ]
  %.11232.i.ph = phi float [ %.01235.i, %iter.check ], [ %i.bpb, %vec.epilog.iter.check ], [ %i.bpi, %vec.epilog.middle.block ]
  %.91231.i.ph = phi ptr [ %.81244.i, %iter.check ], [ %i.boj, %vec.epilog.iter.check ], [ %i.bpc, %vec.epilog.middle.block ]
  br label %.lr.ph1238.i

.lr.ph1238.i:                                     ; preds = %.lr.ph1238.i.preheader, %.lr.ph1238.i
  %.01236.i = phi i32 [ %i.bpp, %.lr.ph1238.i ], [ %.01236.i.ph, %.lr.ph1238.i.preheader ]
  %.012341233.i = phi ptr [ %i.bpn, %.lr.ph1238.i ], [ %.012341233.i.ph, %.lr.ph1238.i.preheader ] ; 2 uses
  %.11232.i = phi float [ %i.bpm, %.lr.ph1238.i ], [ %.11232.i.ph, %.lr.ph1238.i.preheader ]
  %.91231.i = phi ptr [ %i.bpo, %.lr.ph1238.i ], [ %.91231.i.ph, %.lr.ph1238.i.preheader ] ; 2 uses
  %i.bpj = load float, ptr %.012341233.i, align 4, !tbaa !39
  %i.bpk = load float, ptr %.91231.i, align 4, !tbaa !39
  %i.bpl = fmul fast float %i.bpk, %i.bpj
  %i.bpm = fadd fast float %i.bpl, %.11232.i      ; 2 uses
  %i.bpn = getelementptr inbounds nuw i8, ptr %.012341233.i, i64 4
  %i.bpo = getelementptr inbounds nuw i8, ptr %.91231.i, i64 4
  %i.bpp = add nuw nsw i32 %.01236.i, 1           ; 2 uses
  %exitcond1440.not.i = icmp eq i32 %i.bpp, %.sroa.speculated
  br i1 %exitcond1440.not.i, label %._crit_edge1239.loopexit.i, label %.lr.ph1238.i, !llvm.loop !1437

._crit_edge1239.loopexit.i:                       ; preds = %.lr.ph1238.i, %vec.epilog.middle.block, %middle.block
  %.lcssa683 = phi float [ %i.bpi, %vec.epilog.middle.block ], [ %i.bpb, %middle.block ], [ %i.bpm, %.lr.ph1238.i ]
  %i.bpq = getelementptr i8, ptr %.81244.i, i64 %i.atn
  %scevgep1439.i = getelementptr i8, ptr %i.bpq, i64 4
  br label %._crit_edge1239.i

._crit_edge1239.i:                                ; preds = %._crit_edge1239.loopexit.i, %bb.fy
  %.9.lcssa.i = phi ptr [ %.81244.i, %bb.fy ], [ %scevgep1439.i, %._crit_edge1239.loopexit.i ]
  %.1.lcssa.i = phi float [ %.01235.i, %bb.fy ], [ %.lcssa683, %._crit_edge1239.loopexit.i ] ; 2 uses
  br i1 %.not179, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %._crit_edge1239.i
  store float %.1.lcssa.i, ptr %.812631243.i, align 4, !tbaa !39
  %i.bpr = getelementptr inbounds nuw i8, ptr %.812631243.i, i64 4
  br label %bb.gb

bb.ga:                                            ; preds = %._crit_edge1239.i
  store float %.1.lcssa.i, ptr %.231242.i, align 4, !tbaa !39
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %.91264.i = phi ptr [ %i.bpr, %bb.fz ], [ %.812631243.i, %bb.ga ]
  %i.bps = getelementptr inbounds nuw i8, ptr %.231242.i, i64 4 ; 2 uses
  %i.bpt = add nuw nsw i32 %.41245.i, 1           ; 2 uses
  %exitcond1441.not.i = icmp eq i32 %i.bpt, %.sroa.speculated145
  br i1 %exitcond1441.not.i, label %._crit_edge1247.i, label %bb.fx, !llvm.loop !1438

._crit_edge1247.i:                                ; preds = %bb.gb, %.preheader.i
  %.23.lcssa.i = phi ptr [ %.22.lcssa.i, %.preheader.i ], [ %i.bps, %bb.gb ]
  %i.bpu = getelementptr inbounds [4 x i8], ptr %.312861252.i, i64 %i.ath
  %indvars.iv.next1443.i = add nsw i64 %indvars.iv1442.i, 1 ; 2 uses
  %exitcond1445.not.i = icmp eq i64 %indvars.iv.next1443.i, %i.aq
  br i1 %exitcond1445.not.i, label %_ZN4ncnn3MatD2Ev.exit46, label %bb.eo, !llvm.loop !1439

_ZN4ncnn3MatD2Ev.exit46:                          ; preds = %._crit_edge1247.i, %.preheader730.i
  %i.bpv = load i32, ptr %5, align 4, !tbaa !67   ; 2 uses
  %i.bpw = add nsw i32 %i.bpv, %.0302             ; 2 uses
  %i.bpx = load i32, ptr %4, align 4, !tbaa !67   ; 3 uses
  %i.bpy = icmp slt i32 %i.bpw, %i.bpx
  br i1 %i.bpy, label %.noexc, label %._crit_edge.loopexit, !llvm.loop !1440

._crit_edge308:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.gc

bb.gc:                                            ; preds = %._crit_edge308, %bb.a
  ret void

bb.gd:                                            ; preds = %bb.d
  %i.bpz = landingpad { ptr, i32 }
          catch ptr null
  %i.bqa = extractvalue { ptr, i32 } %i.bpz, 0
  call void @__clang_call_terminate(ptr %i.bqa) #32
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL19conv3x3s1_pack8_avxERKNS_3MatERS0_S2_S2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

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
  %.not1136 = icmp sgt i32 %i.k, %i.j
  br i1 %.not1136, label %._crit_edge1138, label %_ZN4ncnn3Mat7channelEi.exit.lr.ph

_ZN4ncnn3Mat7channelEi.exit.lr.ph:                ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.x = sext i32 %i.k to i64
  %i.y = add nsw i32 %i.j, 1
  br label %_ZN4ncnn3Mat7channelEi.exit

_ZN4ncnn3Mat7channelEi.exit:                      ; preds = %_ZN4ncnn3Mat7channelEi.exit.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvars.iv1148 = phi i64 [ %i.x, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %indvars.iv.next1149, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.z = load i32, ptr %i.l, align 4, !tbaa !75, !noalias !1441
  %i.aa = load i32, ptr %i.m, align 8, !tbaa !76, !noalias !1441
  %i.ab = load i32, ptr %i.n, align 4, !tbaa !290, !noalias !1441
  %i.ac = load ptr, ptr %3, align 8, !tbaa !18, !noalias !1441
  %i.ad = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !1441
  %i.ae = mul i64 %i.ad, %indvars.iv1148
  %i.af = load i64, ptr %i.p, align 8, !tbaa !65, !noalias !1441 ; 3 uses
  %i.ag = mul i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ag ; 3 uses
  %i.ai = sext i32 %i.z to i64
  %i.aj = sext i32 %i.aa to i64
  %i.ak = mul nsw i64 %i.aj, %i.ai                ; 2 uses
  %i.al = mul i64 %i.af, %i.ak
  %i.am = add i64 %i.al, 15
  %i.an = and i64 %i.am, -16
  %i.ao = udiv i64 %i.an, %i.af
  %i.ap = load i32, ptr %i.q, align 8, !tbaa !289, !noalias !1441
  %i.aq = icmp eq i32 %i.ap, 4
  %spec.select = select i1 %i.aq, i64 %i.ak, i64 %i.ao
  %i.ar = load ptr, ptr %4, align 8, !tbaa !300   ; 2 uses
  %.not398 = icmp eq ptr %i.ar, null
  br i1 %.not398, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit
  %.idx = shl nsw i64 %indvars.iv1148, 5
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %.idx
  %i.at = load <8 x float>, ptr %i.as, align 1, !tbaa !316
  br label %bb.d

bb.d:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit, %bb.c
  %i.au = phi fast <8 x float> [ %i.at, %bb.c ], [ zeroinitializer, %_ZN4ncnn3Mat7channelEi.exit ] ; 9 uses
  %i.av = trunc i64 %spec.select to i32
  %i.aw = mul i32 %i.ab, %i.av                    ; 4 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.preheader, label %_ZN4ncnn3Mat4fillERKDv8_fi.exit.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %xtraiter = and i32 %i.aw, 7                    ; 3 uses
  %i.ay = icmp ult i32 %i.aw, 8
  br i1 %i.ay, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.aw, 2147483640
  br label %.lr.ph

_ZN4ncnn3Mat4fillERKDv8_fi.exit.preheader.loopexit.unr-lcssa: ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4ncnn3Mat4fillERKDv8_fi.exit.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %_ZN4ncnn3Mat4fillERKDv8_fi.exit.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %.06.i1108.epil.init = phi ptr [ %i.ah, %.lr.ph.preheader ], [ %i.bj, %_ZN4ncnn3Mat4fillERKDv8_fi.exit.preheader.loopexit.unr-lcssa ]
  %lcmp.mod1199 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1199)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.06.i1108.epil = phi ptr [ %i.az, %.lr.ph.epil ], [ %.06.i1108.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  store <8 x float> %i.au, ptr %.06.i1108.epil, align 1, !tbaa !316
  %i.az = getelementptr inbounds nuw i8, ptr %.06.i1108.epil, i64 32
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4ncnn3Mat4fillERKDv8_fi.exit.preheader, label %.lr.ph.epil, !llvm.loop !1444

_ZN4ncnn3Mat4fillERKDv8_fi.exit.preheader:        ; preds = %_ZN4ncnn3Mat4fillERKDv8_fi.exit.preheader.loopexit.unr-lcssa, %.lr.ph.epil, %bb.d
  %i.ba = load i32, ptr %5, align 4, !tbaa !67    ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.noexc399.preheader, label %_ZN4ncnn3MatD2Ev.exit

.noexc399.preheader:                              ; preds = %_ZN4ncnn3Mat4fillERKDv8_fi.exit.preheader
  %.pre = load i32, ptr %8, align 4, !tbaa !67
  br label %.noexc399

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.06.i1108 = phi ptr [ %i.ah, %.lr.ph.preheader.new ], [ %i.bj, %.lr.ph ] ; 9 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  store <8 x float> %i.au, ptr %.06.i1108, align 1, !tbaa !316
  %i.bc = getelementptr inbounds nuw i8, ptr %.06.i1108, i64 32
  store <8 x float> %i.au, ptr %i.bc, align 1, !tbaa !316
  %i.bd = getelementptr inbounds nuw i8, ptr %.06.i1108, i64 64
  store <8 x float> %i.au, ptr %i.bd, align 1, !tbaa !316
  %i.be = getelementptr inbounds nuw i8, ptr %.06.i1108, i64 96
  store <8 x float> %i.au, ptr %i.be, align 1, !tbaa !316
  %i.bf = getelementptr inbounds nuw i8, ptr %.06.i1108, i64 128
  store <8 x float> %i.au, ptr %i.bf, align 1, !tbaa !316
  %i.bg = getelementptr inbounds nuw i8, ptr %.06.i1108, i64 160
  store <8 x float> %i.au, ptr %i.bg, align 1, !tbaa !316
  %i.bh = getelementptr inbounds nuw i8, ptr %.06.i1108, i64 192
  store <8 x float> %i.au, ptr %i.bh, align 1, !tbaa !316
  %i.bi = getelementptr inbounds nuw i8, ptr %.06.i1108, i64 224
  store <8 x float> %i.au, ptr %i.bi, align 1, !tbaa !316
  %i.bj = getelementptr inbounds nuw i8, ptr %.06.i1108, i64 256 ; 2 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN4ncnn3Mat4fillERKDv8_fi.exit.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !1445

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnn3MatD2Ev.exit401, %_ZN4ncnn3Mat4fillERKDv8_fi.exit.preheader
  %indvars.iv.next1149 = add nsw i64 %indvars.iv1148, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next1149 to i32
  %exitcond1151.not = icmp eq i32 %i.y, %lftr.wideiv
  br i1 %exitcond1151.not, label %._crit_edge1138, label %_ZN4ncnn3Mat7channelEi.exit

.noexc399:                                        ; preds = %.noexc399.preheader, %_ZN4ncnn3MatD2Ev.exit401
  %i.bk = phi i32 [ %i.ba, %.noexc399.preheader ], [ %i.bbw, %_ZN4ncnn3MatD2Ev.exit401 ]
  %i.bl = phi i32 [ %.pre, %.noexc399.preheader ], [ %i.bbx, %_ZN4ncnn3MatD2Ev.exit401 ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.noexc399.preheader ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit401 ] ; 3 uses
  %i.bm = load i32, ptr %i.u, align 4, !tbaa !75, !noalias !1446
  %i.bn = load ptr, ptr %7, align 8, !tbaa !18, !noalias !1446
  %i.bo = load i64, ptr %i.v, align 8, !tbaa !20, !noalias !1446
  %i.bp = mul i64 %i.bo, %indvars.iv1148
  %i.bq = load i64, ptr %i.w, align 8, !tbaa !65, !noalias !1446 ; 2 uses
  %i.br = mul i64 %i.bp, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.br
  %i.bt = sext i32 %i.bm to i64
  %i.bu = mul nsw i64 %indvars.iv, %i.bt
  %i.bv = mul i64 %i.bu, %i.bq
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bv ; 73 uses
  %i.bx = icmp sgt i32 %i.bl, 0
  br i1 %i.bx, label %.preheader1107.lr.ph, label %_ZN4ncnn3MatD2Ev.exit401

.preheader1107.lr.ph:                             ; preds = %.noexc399
  %i.by = load ptr, ptr %6, align 8, !tbaa !18, !noalias !1449
end_hunk_11
begin_hunk_12_@_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.12:bb.a
  %i.anf = sdiv i32 %i.amz, 576
  %i.ang = sdiv i32 %i.anb, 576
  %i.anh = sdiv i32 %i.ane, 576
  store i32 %i.anf, ptr %i.alp, align 4, !tbaa !67
  br i1 %i.alr, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ani = shl nsw i32 %i.amv, 1
  %i.anj = add nsw i32 %i.amu, %i.ani
  %i.ank = sdiv i32 %i.anj, 576
  %i.anl = getelementptr inbounds nuw i8, ptr %i.alp, i64 4
  store i32 %i.ank, ptr %i.anl, align 4, !tbaa !67
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  br i1 %i.alt, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.anm = getelementptr inbounds nuw i8, ptr %i.alp, i64 8
  store i32 %i.ang, ptr %i.anm, align 4, !tbaa !67
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  br i1 %i.alv, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ann = getelementptr inbounds nuw i8, ptr %i.alp, i64 12
  store i32 %i.anh, ptr %i.ann, align 4, !tbaa !67
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ano = getelementptr inbounds [4 x i8], ptr %i.alp, i64 %i.afw
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.preheader.us.i
  %.1.us.i = phi ptr [ %i.alp, %.preheader.us.i ], [ %i.ano, %bb.al ] ; 6 uses
  %i.anp = or disjoint i32 %i.ali, 1
  %.not.us.1.i = icmp slt i32 %i.anp, %i.en
  br i1 %.not.us.1.i, label %bb.an, label %bb.au

bb.an:                                            ; preds = %bb.am
  %i.anq = add nsw i32 %i.aij, %i.ahn             ; 2 uses
  %i.anr = add nsw i32 %i.akb, %i.ajf             ; 2 uses
  %i.ans = sub nsw i32 %i.ahn, %i.aij             ; 2 uses
  %i.ant = sub nsw i32 %i.ajf, %i.akb             ; 2 uses
  %i.anu = add i32 %i.agu, %i.ags
  %i.anv = add i32 %i.anu, %i.anq
  %i.anw = add i32 %i.anv, %i.anr
  %i.anx = shl nsw i32 %i.anr, 2
  %i.any = add nsw i32 %i.anx, %i.anq
  %reass.add = add i32 %i.akz, %i.ant
  %reass.mul = shl i32 %reass.add, 3
  %i.anz = add i32 %i.alb, %i.ans
  %i.aoa = add i32 %i.anz, %reass.mul
  %i.aob = sdiv i32 %i.anw, 576
  %i.aoc = sdiv i32 %i.any, 576
  %i.aod = sdiv i32 %i.aoa, 576
  store i32 %i.aob, ptr %.1.us.i, align 4, !tbaa !67
  br i1 %i.alr, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.aoe = shl nsw i32 %i.ant, 1
  %i.aof = add nsw i32 %i.aoe, %i.ans
  %i.aog = sdiv i32 %i.aof, 576
  %i.aoh = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 4
  store i32 %i.aog, ptr %i.aoh, align 4, !tbaa !67
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  br i1 %i.alt, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.aoi = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 8
  store i32 %i.aoc, ptr %i.aoi, align 4, !tbaa !67
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  br i1 %i.alv, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.aoj = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 12
  store i32 %i.aod, ptr %i.aoj, align 4, !tbaa !67
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.aok = getelementptr inbounds [4 x i8], ptr %.1.us.i, i64 %i.afw
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.am
  %.1.us.1.i = phi ptr [ %.1.us.i, %bb.am ], [ %i.aok, %bb.at ] ; 6 uses
  %i.aol = or disjoint i32 %i.ali, 2
  %.not.us.2.i = icmp slt i32 %i.aol, %i.en
  br i1 %.not.us.2.i, label %bb.av, label %bb.bc

bb.av:                                            ; preds = %bb.au
  %i.aom = add nsw i32 %i.ail, %i.ahp             ; 2 uses
  %i.aon = add nsw i32 %i.akd, %i.ajh             ; 2 uses
  %i.aoo = sub nsw i32 %i.ahp, %i.ail             ; 2 uses
  %i.aop = sub nsw i32 %i.ajh, %i.akd             ; 2 uses
  %i.aoq = add i32 %i.agv, %i.ago
  %i.aor = add i32 %i.aoq, %i.aom
  %i.aos = add i32 %i.aor, %i.aon
  %i.aot = shl nsw i32 %i.aon, 2
  %i.aou = add nsw i32 %i.aot, %i.aom
  %i.aov = shl nsw i32 %i.aop, 3
  %i.aow = add i32 %i.aov, %i.aoo
  %i.aox = add i32 %i.aow, %i.ald
  %i.aoy = add i32 %i.aox, %i.alc
  %i.aoz = sdiv i32 %i.aos, 576
  %i.apa = sdiv i32 %i.aou, 576
  %i.apb = sdiv i32 %i.aoy, 576
  store i32 %i.aoz, ptr %.1.us.1.i, align 4, !tbaa !67
  br i1 %i.alr, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.apc = shl nsw i32 %i.aop, 1
  %i.apd = add nsw i32 %i.apc, %i.aoo
  %i.ape = sdiv i32 %i.apd, 576
  %i.apf = getelementptr inbounds nuw i8, ptr %.1.us.1.i, i64 4
  store i32 %i.ape, ptr %i.apf, align 4, !tbaa !67
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  br i1 %i.alt, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.apg = getelementptr inbounds nuw i8, ptr %.1.us.1.i, i64 8
  store i32 %i.apa, ptr %i.apg, align 4, !tbaa !67
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  br i1 %i.alv, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.aph = getelementptr inbounds nuw i8, ptr %.1.us.1.i, i64 12
  store i32 %i.apb, ptr %i.aph, align 4, !tbaa !67
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.api = getelementptr inbounds [4 x i8], ptr %.1.us.1.i, i64 %i.afw
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.au
  %.1.us.2.i = phi ptr [ %.1.us.1.i, %bb.au ], [ %i.api, %bb.bb ] ; 4 uses
  %i.apj = or disjoint i32 %i.ali, 3
  %.not.us.3.i = icmp slt i32 %i.apj, %i.en
  br i1 %.not.us.3.i, label %bb.bd, label %bb.bj

bb.bd:                                            ; preds = %bb.bc
  %i.apk = add nsw i32 %i.aiq, %i.ahu             ; 2 uses
  %i.apl = add nsw i32 %i.aki, %i.ajm             ; 2 uses
  %i.apm = sub nsw i32 %i.ahu, %i.aiq             ; 2 uses
  %i.apn = sub nsw i32 %i.ajm, %i.aki             ; 2 uses
  %i.apo = add i32 %i.agw, %i.ags
  %i.app = add i32 %i.apo, %i.agy
  %i.apq = add i32 %i.app, %i.apk
  %i.apr = add i32 %i.apq, %i.apl
  %i.aps = shl nsw i32 %i.apl, 2
  %i.apt = add nsw i32 %i.aps, %i.apk
  %i.apu = shl nsw i32 %i.apn, 3
  %i.apv = add i32 %i.apu, %i.apm
  %i.apw = add i32 %i.apv, %i.alb
  %i.apx = add i32 %i.apw, %i.alf
  %i.apy = add i32 %i.apx, %i.ale
  %i.apz = sdiv i32 %i.apr, 576
  %i.aqa = sdiv i32 %i.apt, 576
  %i.aqb = sdiv i32 %i.apy, 576
  store i32 %i.apz, ptr %.1.us.2.i, align 4, !tbaa !67
  br i1 %i.alr, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.aqc = shl nsw i32 %i.apn, 1
  %i.aqd = add nsw i32 %i.aqc, %i.apm
  %i.aqe = sdiv i32 %i.aqd, 576
  %i.aqf = getelementptr inbounds nuw i8, ptr %.1.us.2.i, i64 4
  store i32 %i.aqe, ptr %i.aqf, align 4, !tbaa !67
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  br i1 %i.alt, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.aqg = getelementptr inbounds nuw i8, ptr %.1.us.2.i, i64 8
  store i32 %i.aqa, ptr %i.aqg, align 4, !tbaa !67
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  br i1 %i.alv, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.aqh = getelementptr inbounds nuw i8, ptr %.1.us.2.i, i64 12
  store i32 %i.aqb, ptr %i.aqh, align 4, !tbaa !67
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bc
  %indvars.iv.next1027.i = add nuw nsw i64 %indvars.iv1026.i, 1 ; 2 uses
  %exitcond1030.not.i = icmp eq i64 %indvars.iv.next1027.i, %wide.trip.count1029.i
  br i1 %exitcond1030.not.i, label %._crit_edge.us942.i, label %.preheader.us.i, !llvm.loop !1777

._crit_edge.us942.i:                              ; preds = %bb.bj
  %indvars.iv.next1032.i = add nsw i64 %indvars.iv1031.i, 1 ; 2 uses
  %exitcond1035.not.i = icmp eq i64 %indvars.iv.next1032.i, %i.ed
  br i1 %exitcond1035.not.i, label %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit, label %.lr.ph.us941.i, !llvm.loop !1778

.noexc:                                           ; preds = %.noexc.preheader, %.noexc
  %i.aqi = phi i32 [ %i.ash, %.noexc ], [ %.pre140, %.noexc.preheader ] ; 3 uses
  %i.aqj = phi i32 [ %i.asj, %.noexc ], [ %i.ek, %.noexc.preheader ] ; 2 uses
  %.0133 = phi i32 [ %i.asi, %.noexc ], [ 0, %.noexc.preheader ] ; 5 uses
  %i.aqk = sub nsw i32 %i.aqj, %.0133
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.aqi, i32 %i.aqk)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  %i.aql = load i32, ptr %3, align 4, !tbaa !67
  %i.aqm = sdiv i32 %i.dm, %i.aql
  %i.aqn = load ptr, ptr %10, align 8, !tbaa !18, !noalias !1779
  %i.aqo = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !1779
  %i.aqp = sext i32 %i.aqm to i64
  %i.aqq = mul i64 %i.aqo, %i.aqp
  %i.aqr = load i64, ptr %i.s, align 8, !tbaa !65, !noalias !1779 ; 3 uses
  %i.aqs = mul i64 %i.aqq, %i.aqr
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqn, i64 %i.aqs
  %i.aqu = load i32, ptr %i.t, align 8, !tbaa !66, !noalias !1779
  %i.aqv = load ptr, ptr %i.u, align 8, !tbaa !17, !noalias !1779
  %i.aqw = sdiv i32 %.0133, %i.aqi
  %i.aqx = sext i32 %i.aqw to i64                 ; 2 uses
  store ptr null, ptr %i.v, align 8, !tbaa !11, !alias.scope !1782
  store i64 %i.aqr, ptr %i.w, align 8, !tbaa !65, !alias.scope !1782
  store i32 %i.aqu, ptr %i.x, align 8, !tbaa !66, !alias.scope !1782
  store ptr %i.aqv, ptr %i.y, align 8, !tbaa !17, !alias.scope !1782
  store i32 2, ptr %i.z, align 8, !tbaa !289, !alias.scope !1782
  %i.aqy = load <2 x i32>, ptr %i.p, align 4, !tbaa !67, !noalias !1779
  %i.aqz = load i32, ptr %i.q, align 8, !tbaa !76, !noalias !1779
  %i.ara = load i32, ptr %i.p, align 4, !tbaa !75, !noalias !1779
  %i.arb = sext i32 %i.ara to i64
  %i.arc = sext i32 %i.aqz to i64
  %i.ard = mul nsw i64 %i.arc, %i.arb             ; 2 uses
  %i.are = mul i64 %i.aqr, %i.ard
  %i.arf = mul i64 %i.are, %i.aqx
  %i.arg = getelementptr inbounds nuw i8, ptr %i.aqt, i64 %i.arf
  store ptr %i.arg, ptr %13, align 8, !tbaa !18, !alias.scope !1782
  %i.arh = shufflevector <2 x i32> %i.aqy, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ari = shufflevector <4 x i32> %i.arh, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.ari, ptr %i.aa, align 4, !tbaa !67, !alias.scope !1782
  store i64 %i.ard, ptr %i.ab, align 8, !tbaa !20, !alias.scope !1782
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  %i.arj = load i32, ptr %7, align 4, !tbaa !67
  %i.ark = sdiv i32 %.044134, %i.arj
  %i.arl = load ptr, ptr %11, align 8, !tbaa !18, !noalias !1785
  %i.arm = load i64, ptr %i.ae, align 8, !tbaa !20, !noalias !1785
  %i.arn = sext i32 %i.ark to i64
  %i.aro = mul i64 %i.arm, %i.arn
  %i.arp = load i64, ptr %i.af, align 8, !tbaa !65, !noalias !1785 ; 3 uses
  %i.arq = mul i64 %i.aro, %i.arp
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arl, i64 %i.arq
  %i.ars = load i32, ptr %i.ag, align 8, !tbaa !66, !noalias !1785
  %i.art = load ptr, ptr %i.ah, align 8, !tbaa !17, !noalias !1785
  store ptr null, ptr %i.ai, align 8, !tbaa !11
  store i64 %i.arp, ptr %i.aj, align 8, !tbaa !65
  store i32 %i.ars, ptr %i.ak, align 8, !tbaa !66
  store ptr %i.art, ptr %i.al, align 8, !tbaa !17
  store i32 2, ptr %i.am, align 8, !tbaa !289
  %i.aru = load <2 x i32>, ptr %i.ac, align 4, !tbaa !67, !noalias !1785
  %i.arv = load i32, ptr %i.ad, align 8, !tbaa !76, !noalias !1785
  %i.arw = load i32, ptr %i.ac, align 4, !tbaa !75, !noalias !1785
  %i.arx = sext i32 %i.arw to i64
  %i.ary = sext i32 %i.arv to i64
  %i.arz = mul nsw i64 %i.ary, %i.arx             ; 2 uses
  %i.asa = mul i64 %i.arp, %i.arz
  %i.asb = mul i64 %i.asa, %i.aqx
  %i.asc = getelementptr inbounds nuw i8, ptr %i.arr, i64 %i.asb
  store ptr %i.asc, ptr %14, align 8, !tbaa !18
  %i.asd = shufflevector <2 x i32> %i.aru, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ase = shufflevector <4 x i32> %i.asd, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.ase, ptr %i.an, align 4, !tbaa !67
  store i64 %i.arz, ptr %i.ao, align 8, !tbaa !20, !alias.scope !1788
  %i.asf = add nsw i32 %i.aqi, %.0133
  %i.asg = icmp sge i32 %i.asf, %i.aqj
  call fastcc void @_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiib(ptr noundef nonnull align 8 dereferenceable(72) %13, ptr noundef nonnull align 8 dereferenceable(72) %14, ptr %i.du, i32 noundef 36, i32 noundef %.sroa.speculated118, i32 noundef %.sroa.speculated114, i32 noundef %.0133, i32 noundef %.sroa.speculated, i1 noundef zeroext %i.asg)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  %i.ash = load i32, ptr %9, align 4, !tbaa !67   ; 2 uses
  %i.asi = add nsw i32 %i.ash, %.0133             ; 2 uses
  %i.asj = load i32, ptr %8, align 4, !tbaa !67   ; 2 uses
  %i.ask = icmp slt i32 %i.asi, %i.asj
  br i1 %i.ask, label %.noexc, label %._crit_edge, !llvm.loop !1791

_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge.us942.i, %.lr.ph939.i, %.preheader773.i
  %i.asl = load i32, ptr %7, align 4, !tbaa !67   ; 2 uses
  %i.asm = add nsw i32 %i.asl, %.044134           ; 2 uses
  %i.asn = load i32, ptr %6, align 4, !tbaa !67   ; 2 uses
  %i.aso = icmp slt i32 %i.asm, %i.asn
  br i1 %i.aso, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !1792

._crit_edge139:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.bk

bb.bk:                                            ; preds = %._crit_edge139, %bb.a
  ret void

bb.bl:                                            ; preds = %bb.c
  %i.asp = landingpad { ptr, i32 }
          catch ptr null
  %i.asq = extractvalue { ptr, i32 } %i.asp, 0
  call void @__clang_call_terminate(ptr %i.asq) #32
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiib(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr nofree %.0.val, i32 noundef range(i32 16, 37) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7) unnamed_addr #26 {
bb.a:
  %i.a = icmp sgt i32 %3, 3
  br i1 %i.a, label %.preheader211.lr.ph, label %.preheader203

.preheader211.lr.ph:                              ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = icmp sgt i32 %4, 7
  %i.g = icmp eq i32 %5, 0                        ; 4 uses
  %i.h = icmp sgt i32 %6, 1                       ; 4 uses
  %i.i = add i32 %6, -2                           ; 5 uses
  %i.j = and i32 %i.i, -2
  %i.k = add i32 %i.j, 2                          ; 4 uses
  %i.l = and i32 %4, -8
  %i.m = lshr i32 %i.i, 1                         ; 2 uses
  %i.n = zext nneg i32 %i.m to i64                ; 3 uses
  %i.o = shl nuw nsw i64 %i.n, 4
  %i.p = shl nuw nsw i64 %i.n, 3
  %i.q = shl nuw nsw i64 %i.n, 2
  %i.r = zext nneg i32 %3 to i64
  %i.s = sext i32 %6 to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  %i.t = lshr i32 %i.i, 1                         ; 2 uses
  %i.u = add nuw i32 %i.t, 1                      ; 4 uses
  %i.v = icmp eq i32 %i.t, 0
  %unroll_iter = and i32 %i.u, -2
  %i.w = and i32 %i.i, 2
  %lcmp.mod.not.not = icmp eq i32 %i.w, 0
  %lcmp.mod1387 = trunc i32 %i.u to i1
  %i.x = icmp eq i32 %i.m, 0
  %unroll_iter1393 = and i32 %i.u, -2
  %i.y = and i32 %i.i, 2
  %lcmp.mod1389.not.not = icmp eq i32 %i.y, 0
  %lcmp.mod1392 = trunc i32 %i.u to i1
  br label %.preheader211

.preheader211:                                    ; preds = %.preheader211.lr.ph, %bb.b
  %indvars.iv749 = phi i64 [ 0, %.preheader211.lr.ph ], [ %indvars.iv.next750, %bb.b ] ; 2 uses
  %.0655360 = phi ptr [ %.0.val, %.preheader211.lr.ph ], [ %.5.lcssa, %bb.b ]
  %i.z = mul nsw i64 %indvars.iv749, %i.s
  br label %bb.c

.preheader203.loopexit:                           ; preds = %bb.b
  %i.aa = trunc nuw nsw i64 %indvars.iv.next750 to i32
  br label %.preheader203

.preheader203:                                    ; preds = %.preheader203.loopexit, %bb.a
  %.0658.lcssa = phi i32 [ 0, %bb.a ], [ %i.aa, %.preheader203.loopexit ] ; 3 uses
  %.0655.lcssa = phi ptr [ %.0.val, %bb.a ], [ %.5.lcssa, %.preheader203.loopexit ] ; 2 uses
  %i.ab = or disjoint i32 %.0658.lcssa, 1
  %i.ac = icmp slt i32 %i.ab, %3
  br i1 %i.ac, label %.preheader202.lr.ph, label %.preheader194

.preheader202.lr.ph:                              ; preds = %.preheader203
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = icmp sgt i32 %4, 7
  %i.ai = icmp eq i32 %5, 0                       ; 4 uses
  %i.aj = icmp sgt i32 %6, 1                      ; 4 uses
  %i.ak = add i32 %6, -2                          ; 6 uses
  %i.al = and i32 %i.ak, -2
  %i.am = add i32 %i.al, 2                        ; 4 uses
  %i.an = and i32 %4, -8
  %i.ao = lshr i32 %i.ak, 1
  %i.ap = zext nneg i32 %i.ao to i64              ; 5 uses
  %i.aq = shl nuw nsw i64 %i.ap, 4
  %i.ar = shl nuw nsw i64 %i.ap, 3
  %i.as = shl nuw nsw i64 %i.ap, 2
  %i.at = zext nneg i32 %.0658.lcssa to i64
  %i.au = sext i32 %3 to i64
  %i.av = sext i32 %6 to i64
  %wide.trip.count763 = zext nneg i32 %2 to i64
  %invariant.op = add nsw i64 %i.au, -1
  %i.aw = lshr i32 %i.ak, 1                       ; 2 uses
  %i.ax = add nuw i32 %i.aw, 1                    ; 2 uses
  %i.ay = icmp eq i32 %i.aw, 0
  %unroll_iter1404 = and i32 %i.ax, -2
  %i.az = and i32 %i.ak, 2
  %lcmp.mod1399.not.not = icmp eq i32 %i.az, 0
  %lcmp.mod1403 = trunc i32 %i.ax to i1
  %i.ba = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check1103 = icmp ult i32 %i.ak, 6
  %n.vec1105 = and i64 %i.ba, 4294967292          ; 4 uses
  %i.bb = trunc nuw i64 %n.vec1105 to i32
end_hunk_12
begin_hunk_13_@_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.13:bb.a
  %i.ms = add i32 %i.kb, %i.ko
  %i.mt = sub i32 %i.mr, %i.ms
  %i.mu = add i32 %i.mt, %i.kr
  %i.mv = ashr i32 %i.mu, 2
  %i.mw = add i32 %i.iz, %i.kh
  %i.mx = add i32 %i.jx, %i.ki
  %i.my = sub i32 %i.mw, %i.mx
  %i.mz = add i32 %i.my, %i.kp
  %i.na = ashr i32 %i.mz, 2
  %i.nb = getelementptr inbounds nuw i8, ptr %.1277.us.i, i64 4
  store i32 %i.na, ptr %i.nb, align 4, !tbaa !67
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mq, i64 4
  store i32 %i.mv, ptr %i.nc, align 4, !tbaa !67
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %indvars.iv.next129.i = add nuw nsw i64 %indvars.iv128.i, 1 ; 2 uses
  %exitcond132.not.i = icmp eq i64 %indvars.iv.next129.i, %wide.trip.count131.i
  br i1 %exitcond132.not.i, label %._crit_edge.us82.i, label %_ZN4ncnn3MatD2Ev.exit301.us.i, !llvm.loop !1895

._crit_edge.us82.i:                               ; preds = %bb.x
  %indvars.iv.next134.i = add nuw nsw i64 %indvars.iv133.i, 2 ; 3 uses
  %i.nd = icmp slt i64 %indvars.iv.next134.i, %invariant.op.i
  br i1 %i.nd, label %.lr.ph.us81.i, label %.preheader.loopexit.i, !llvm.loop !1896

.preheader.loopexit.i:                            ; preds = %._crit_edge.us82.i
  %i.ne = trunc nsw i64 %indvars.iv.next134.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.lr.ph78.split.preheader.i, %.preheader55.i
  %.1288.lcssa.i = phi i32 [ %.0287.lcssa.i, %.preheader55.i ], [ %i.ne, %.preheader.loopexit.i ], [ %i.hf, %.lr.ph78.split.preheader.i ] ; 2 uses
  %i.nf = icmp slt i32 %.1288.lcssa.i, %.sroa.speculated119
  br i1 %i.nf, label %.lr.ph96.i, label %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph96.i:                                       ; preds = %.preheader.i
  %i.ng = icmp sgt i32 %.sroa.speculated115, 0
  %i.nh = sext i32 %.sroa.speculated115 to i64
  %i.ni = shl nsw i32 %.sroa.speculated115, 1
  %i.nj = sext i32 %i.ni to i64
  %i.nk = mul nsw i32 %.sroa.speculated115, 3
  %i.nl = sext i32 %i.nk to i64
  %i.nm = shl nsw i32 %.sroa.speculated115, 2
  %i.nn = sext i32 %i.nm to i64                   ; 12 uses
  %i.no = sext i32 %i.bt to i64                   ; 2 uses
  br i1 %i.ng, label %.lr.ph96.split.us.i, label %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph96.split.us.i:                              ; preds = %.lr.ph96.i
  %i.np = load ptr, ptr %12, align 8, !tbaa !18, !noalias !1897
  %i.nq = load i64, ptr %i.aq, align 8, !tbaa !20, !noalias !1897
  %i.nr = load i64, ptr %i.ar, align 8, !tbaa !65, !noalias !1897 ; 2 uses
  %factor.op.mul106.i = mul i64 %i.nr, %i.nq
  %i.ns = sext i32 %.1288.lcssa.i to i64
  %wide.trip.count149.i = zext nneg i32 %.sroa.speculated115 to i64
  br label %.lr.ph.us104.i

.lr.ph.us104.i:                                   ; preds = %._crit_edge.us105.i, %.lr.ph96.split.us.i
  %indvars.iv151.i = phi i64 [ %indvars.iv.next152.i, %._crit_edge.us105.i ], [ %i.ns, %.lr.ph96.split.us.i ] ; 3 uses
  %i.nt = trunc nsw i64 %indvars.iv151.i to i32
  %factor.op.mul91.reass.us.i = mul i32 %factor.op.mul64.i, %i.nt
  %i.nu = sext i32 %factor.op.mul91.reass.us.i to i64
  %i.nv = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.nu
  %i.nw = add nsw i64 %indvars.iv151.i, %i.bl
  %.reass107.i = mul i64 %factor.op.mul106.i, %i.nw
  %i.nx = getelementptr inbounds nuw i8, ptr %i.np, i64 %.reass107.i
  br label %_ZN4ncnn3MatD2Ev.exit.us.i

_ZN4ncnn3MatD2Ev.exit.us.i:                       ; preds = %.split.us102.i, %.lr.ph.us104.i
  %indvars.iv146.i = phi i64 [ 0, %.lr.ph.us104.i ], [ %indvars.iv.next147.i, %.split.us102.i ] ; 3 uses
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %indvars.iv146.i ; 5 uses
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %i.nh ; 2 uses
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %i.nj ; 2 uses
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %i.nl ; 2 uses
  %i.oc = load i32, ptr %i.ny, align 4, !tbaa !67
  %i.od = load i32, ptr %i.nz, align 4, !tbaa !67 ; 2 uses
  %i.oe = add nsw i32 %i.od, %i.oc
  %i.of = load i32, ptr %i.oa, align 4, !tbaa !67 ; 2 uses
  %i.og = add nsw i32 %i.oe, %i.of                ; 2 uses
  %i.oh = sub i32 %i.od, %i.of
  %i.oi = load i32, ptr %i.ob, align 4, !tbaa !67
  %i.oj = add nsw i32 %i.oh, %i.oi                ; 2 uses
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %i.nn ; 2 uses
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %i.nn ; 2 uses
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %i.nn ; 2 uses
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %i.nn ; 2 uses
  %i.oo = load i32, ptr %i.ok, align 4, !tbaa !67
  %i.op = load i32, ptr %i.ol, align 4, !tbaa !67 ; 2 uses
  %i.oq = add nsw i32 %i.op, %i.oo
  %i.or = load i32, ptr %i.om, align 4, !tbaa !67 ; 2 uses
  %i.os = add nsw i32 %i.oq, %i.or                ; 3 uses
  %i.ot = sub i32 %i.op, %i.or
  %i.ou = load i32, ptr %i.on, align 4, !tbaa !67
  %i.ov = add nsw i32 %i.ot, %i.ou                ; 3 uses
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %i.nn ; 2 uses
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %i.nn ; 2 uses
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.om, i64 %i.nn ; 2 uses
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %i.nn ; 2 uses
  %i.pa = load i32, ptr %i.ow, align 4, !tbaa !67
  %i.pb = load i32, ptr %i.ox, align 4, !tbaa !67 ; 2 uses
  %i.pc = add nsw i32 %i.pb, %i.pa
  %i.pd = load i32, ptr %i.oy, align 4, !tbaa !67 ; 2 uses
  %i.pe = add nsw i32 %i.pc, %i.pd                ; 3 uses
  %i.pf = sub i32 %i.pb, %i.pd
  %i.pg = load i32, ptr %i.oz, align 4, !tbaa !67
  %i.ph = add nsw i32 %i.pf, %i.pg                ; 3 uses
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.ow, i64 %i.nn
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %i.nn
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %i.nn
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %i.nn
  %i.pm = load i32, ptr %i.pi, align 4, !tbaa !67
  %i.pn = load i32, ptr %i.pj, align 4, !tbaa !67 ; 2 uses
  %i.po = load i32, ptr %i.pk, align 4, !tbaa !67 ; 2 uses
  %i.pp = load i32, ptr %i.pl, align 4, !tbaa !67
  %i.pq = trunc i64 %indvars.iv146.i to i32
  %i.pr = add i32 %.044143, %i.pq                 ; 2 uses
  %i.ps = sdiv i32 %i.pr, %i.ca
  %i.pt = srem i32 %i.pr, %i.ca
  %i.pu = load i32, ptr %i.an, align 4, !tbaa !75, !noalias !1897
  %i.pv = sext i32 %i.pu to i64
  %i.pw = shl nsw i32 %i.ps, 1                    ; 4 uses
  %i.px = sext i32 %i.pw to i64
  %i.py = mul i64 %i.nr, %i.px
  %i.pz = mul i64 %i.py, %i.pv
  %i.qa = getelementptr inbounds nuw i8, ptr %i.nx, i64 %i.pz
  %i.qb = shl nsw i32 %i.pt, 1                    ; 2 uses
  %i.qc = sext i32 %i.qb to i64
  %i.qd = getelementptr inbounds [4 x i8], ptr %i.qa, i64 %i.qc ; 7 uses
  %i.qe = or disjoint i32 %i.qb, 1
  %i.qf = icmp slt i32 %i.qe, %i.bt
  %.fr.us.i = freeze i1 %i.qf
  %.not.us.us.i = icmp slt i32 %i.pw, %i.bu       ; 2 uses
  br i1 %.fr.us.i, label %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit.split.us103.preheader.i

_ZN4ncnn3MatD2Ev.exit.split.us103.preheader.i:    ; preds = %_ZN4ncnn3MatD2Ev.exit.us.i
  br i1 %.not.us.us.i, label %bb.y, label %_ZN4ncnn3MatD2Ev.exit.split.us103.1.i

_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i:    ; preds = %_ZN4ncnn3MatD2Ev.exit.us.i
  br i1 %.not.us.us.i, label %bb.aa, label %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i

bb.y:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us103.preheader.i
  %i.qg = add nsw i32 %i.os, %i.og
  %i.qh = add nsw i32 %i.qg, %i.pe
  %i.qi = ashr i32 %i.qh, 2
  store i32 %i.qi, ptr %i.qd, align 4, !tbaa !67
  %i.qj = getelementptr inbounds [4 x i8], ptr %i.qd, i64 %i.no
  br label %_ZN4ncnn3MatD2Ev.exit.split.us103.1.i

_ZN4ncnn3MatD2Ev.exit.split.us103.1.i:            ; preds = %bb.y, %_ZN4ncnn3MatD2Ev.exit.split.us103.preheader.i
  %.1.us101.i = phi ptr [ %i.qd, %_ZN4ncnn3MatD2Ev.exit.split.us103.preheader.i ], [ %i.qj, %bb.y ]
  %i.qk = or disjoint i32 %i.pw, 1
  %.not.us100.1.i = icmp slt i32 %i.qk, %i.bu
  br i1 %.not.us100.1.i, label %bb.z, label %.split.us102.i

bb.z:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us103.1.i
  %i.ql = add nsw i32 %i.ov, %i.oj
  %i.qm = add nsw i32 %i.ql, %i.ph
  %i.qn = ashr i32 %i.qm, 2
  store i32 %i.qn, ptr %.1.us101.i, align 4, !tbaa !67
  br label %.split.us102.i

.split.us102.i:                                   ; preds = %bb.ab, %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i, %bb.z, %_ZN4ncnn3MatD2Ev.exit.split.us103.1.i
  %indvars.iv.next147.i = add nuw nsw i64 %indvars.iv146.i, 1 ; 2 uses
  %exitcond150.not.i = icmp eq i64 %indvars.iv.next147.i, %wide.trip.count149.i
  br i1 %exitcond150.not.i, label %._crit_edge.us105.i, label %_ZN4ncnn3MatD2Ev.exit.us.i, !llvm.loop !1900

bb.aa:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i
  %i.qo = add nsw i32 %i.os, %i.og
  %i.qp = add nsw i32 %i.qo, %i.pe
  %i.qq = ashr i32 %i.qp, 2
  store i32 %i.qq, ptr %i.qd, align 4, !tbaa !67
  %i.qr = sub i32 %i.os, %i.pe
  %i.qs = add i32 %i.qr, %i.pm
  %i.qt = add i32 %i.qs, %i.pn
  %i.qu = add i32 %i.qt, %i.po
  %i.qv = ashr i32 %i.qu, 2
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qd, i64 4
  store i32 %i.qv, ptr %i.qw, align 4, !tbaa !67
  %i.qx = getelementptr inbounds [4 x i8], ptr %i.qd, i64 %i.no
  br label %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i

_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i:            ; preds = %bb.aa, %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i
  %.1.us.us.i = phi ptr [ %i.qd, %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i ], [ %i.qx, %bb.aa ] ; 2 uses
  %i.qy = or disjoint i32 %i.pw, 1
  %.not.us.us.1.i = icmp slt i32 %i.qy, %i.bu
  br i1 %.not.us.us.1.i, label %bb.ab, label %.split.us102.i

bb.ab:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i
  %i.qz = add nsw i32 %i.ov, %i.oj
  %i.ra = add nsw i32 %i.qz, %i.ph
  %i.rb = ashr i32 %i.ra, 2
  store i32 %i.rb, ptr %.1.us.us.i, align 4, !tbaa !67
  %i.rc = add i32 %i.ov, %i.pn
  %i.rd = add i32 %i.ph, %i.po
  %i.re = sub i32 %i.rc, %i.rd
  %i.rf = add i32 %i.re, %i.pp
  %i.rg = ashr i32 %i.rf, 2
  %i.rh = getelementptr inbounds nuw i8, ptr %.1.us.us.i, i64 4
  store i32 %i.rg, ptr %i.rh, align 4, !tbaa !67
  br label %.split.us102.i

._crit_edge.us105.i:                              ; preds = %.split.us102.i
  %indvars.iv.next152.i = add nsw i64 %indvars.iv151.i, 1 ; 2 uses
  %exitcond155.not.i = icmp eq i64 %indvars.iv.next152.i, %i.bk
  br i1 %exitcond155.not.i, label %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit, label %.lr.ph.us104.i, !llvm.loop !1901

.noexc:                                           ; preds = %.noexc.preheader, %.noexc
  %i.ri = phi i32 [ %i.th, %.noexc ], [ %.pre149, %.noexc.preheader ] ; 3 uses
  %i.rj = phi i32 [ %i.tj, %.noexc ], [ %i.br, %.noexc.preheader ] ; 2 uses
  %.0142 = phi i32 [ %i.ti, %.noexc ], [ 0, %.noexc.preheader ] ; 5 uses
  %i.rk = sub nsw i32 %i.rj, %.0142
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ri, i32 %i.rk)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  %i.rl = load i32, ptr %3, align 4, !tbaa !67
  %i.rm = sdiv i32 %i.at, %i.rl
  %i.rn = load ptr, ptr %10, align 8, !tbaa !18, !noalias !1902
  %i.ro = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1902
  %i.rp = sext i32 %i.rm to i64
  %i.rq = mul i64 %i.ro, %i.rp
  %i.rr = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1902 ; 3 uses
  %i.rs = mul i64 %i.rq, %i.rr
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rn, i64 %i.rs
  %i.ru = load i32, ptr %i.r, align 8, !tbaa !66, !noalias !1902
  %i.rv = load ptr, ptr %i.s, align 8, !tbaa !17, !noalias !1902
  %i.rw = sdiv i32 %.0142, %i.ri
  %i.rx = sext i32 %i.rw to i64                   ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !11, !alias.scope !1905
  store i64 %i.rr, ptr %i.u, align 8, !tbaa !65, !alias.scope !1905
  store i32 %i.ru, ptr %i.v, align 8, !tbaa !66, !alias.scope !1905
  store ptr %i.rv, ptr %i.w, align 8, !tbaa !17, !alias.scope !1905
  store i32 2, ptr %i.x, align 8, !tbaa !289, !alias.scope !1905
  %i.ry = load <2 x i32>, ptr %i.n, align 4, !tbaa !67, !noalias !1902
  %i.rz = load i32, ptr %i.o, align 8, !tbaa !76, !noalias !1902
  %i.sa = load i32, ptr %i.n, align 4, !tbaa !75, !noalias !1902
  %i.sb = sext i32 %i.sa to i64
  %i.sc = sext i32 %i.rz to i64
  %i.sd = mul nsw i64 %i.sc, %i.sb                ; 2 uses
  %i.se = mul i64 %i.rr, %i.sd
  %i.sf = mul i64 %i.se, %i.rx
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rt, i64 %i.sf
  store ptr %i.sg, ptr %13, align 8, !tbaa !18, !alias.scope !1905
  %i.sh = shufflevector <2 x i32> %i.ry, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.si = shufflevector <4 x i32> %i.sh, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.si, ptr %i.y, align 4, !tbaa !67, !alias.scope !1905
  store i64 %i.sd, ptr %i.z, align 8, !tbaa !20, !alias.scope !1905
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  %i.sj = load i32, ptr %7, align 4, !tbaa !67
  %i.sk = sdiv i32 %.044143, %i.sj
  %i.sl = load ptr, ptr %11, align 8, !tbaa !18, !noalias !1908
  %i.sm = load i64, ptr %i.ac, align 8, !tbaa !20, !noalias !1908
  %i.sn = sext i32 %i.sk to i64
  %i.so = mul i64 %i.sm, %i.sn
  %i.sp = load i64, ptr %i.ad, align 8, !tbaa !65, !noalias !1908 ; 3 uses
  %i.sq = mul i64 %i.so, %i.sp
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sl, i64 %i.sq
  %i.ss = load i32, ptr %i.ae, align 8, !tbaa !66, !noalias !1908
  %i.st = load ptr, ptr %i.af, align 8, !tbaa !17, !noalias !1908
  store ptr null, ptr %i.ag, align 8, !tbaa !11
  store i64 %i.sp, ptr %i.ah, align 8, !tbaa !65
  store i32 %i.ss, ptr %i.ai, align 8, !tbaa !66
  store ptr %i.st, ptr %i.aj, align 8, !tbaa !17
  store i32 2, ptr %i.ak, align 8, !tbaa !289
  %i.su = load <2 x i32>, ptr %i.aa, align 4, !tbaa !67, !noalias !1908
  %i.sv = load i32, ptr %i.ab, align 8, !tbaa !76, !noalias !1908
  %i.sw = load i32, ptr %i.aa, align 4, !tbaa !75, !noalias !1908
  %i.sx = sext i32 %i.sw to i64
  %i.sy = sext i32 %i.sv to i64
  %i.sz = mul nsw i64 %i.sy, %i.sx                ; 2 uses
  %i.ta = mul i64 %i.sp, %i.sz
  %i.tb = mul i64 %i.ta, %i.rx
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sr, i64 %i.tb
  store ptr %i.tc, ptr %14, align 8, !tbaa !18
  %i.td = shufflevector <2 x i32> %i.su, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.te = shufflevector <4 x i32> %i.td, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.te, ptr %i.al, align 4, !tbaa !67
  store i64 %i.sz, ptr %i.am, align 8, !tbaa !20, !alias.scope !1911
  %i.tf = add nsw i32 %i.ri, %.0142
  %i.tg = icmp sge i32 %i.tf, %i.rj
  call fastcc void @_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiib(ptr noundef nonnull align 8 dereferenceable(72) %13, ptr noundef nonnull align 8 dereferenceable(72) %14, ptr %i.bb, i32 noundef 16, i32 noundef %.sroa.speculated119, i32 noundef %.sroa.speculated115, i32 noundef %.0142, i32 noundef %.sroa.speculated, i1 noundef zeroext %i.tg)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  %i.th = load i32, ptr %9, align 4, !tbaa !67    ; 2 uses
  %i.ti = add nsw i32 %i.th, %.0142               ; 2 uses
  %i.tj = load i32, ptr %8, align 4, !tbaa !67    ; 2 uses
  %i.tk = icmp slt i32 %i.ti, %i.tj
  br i1 %i.tk, label %.noexc, label %._crit_edge, !llvm.loop !1914

_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge.us105.i, %.lr.ph96.i, %.preheader.i
  %i.tl = load i32, ptr %7, align 4, !tbaa !67    ; 2 uses
  %i.tm = add nsw i32 %i.tl, %.044143             ; 2 uses
  %i.tn = load i32, ptr %6, align 4, !tbaa !67    ; 2 uses
  %i.to = icmp slt i32 %i.tm, %i.tn
  br i1 %i.to, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !1915

._crit_edge148:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge148, %bb.a
  ret void

bb.ad:                                            ; preds = %bb.c
  %i.tp = landingpad { ptr, i32 }
          catch ptr null
  %i.tq = extractvalue { ptr, i32 } %i.tp, 0
  call void @__clang_call_terminate(ptr %i.tq) #32
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL46conv3x3s1_winograd23_transform_input_tile_int8ERKNS_3MatERS0_iiiii.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13) #21 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.am

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
  %.not186 = icmp sgt i32 %i.k, %i.j
  br i1 %.not186, label %._crit_edge189, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.o = load i32, ptr %4, align 4, !tbaa !67     ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.split, label %._crit_edge189

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge
  %i.q = phi i32 [ %i.sj, %._crit_edge ], [ %i.o, %.lr.ph ] ; 3 uses
  %.0187 = phi i32 [ %i.sk, %._crit_edge ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.r = load i32, ptr %3, align 4, !tbaa !67
  %i.s = shl nsw i32 %.0187, 3
  %i.t = add nsw i32 %i.r, %i.s                   ; 2 uses
  %i.u = icmp sgt i32 %i.q, 0
  br i1 %i.u, label %.noexc.lr.ph, label %._crit_edge

.noexc.lr.ph:                                     ; preds = %.lr.ph.split
  %i.v = shl i32 %i.t, 4
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %.thread.3
  %i.w = phi i32 [ %i.q, %.noexc.lr.ph ], [ %i.sg, %.thread.3 ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.noexc.lr.ph ], [ %indvars.iv.next, %.thread.3 ] ; 3 uses
  %i.x = load i32, ptr %5, align 4, !tbaa !67
  %i.y = load i32, ptr %6, align 4, !tbaa !67     ; 2 uses
  %i.z = load i32, ptr %8, align 4, !tbaa !67
  %i.aa = add nsw i32 %i.z, %i.t
  %i.ab = load i32, ptr %9, align 4, !tbaa !67    ; 7 uses
  %i.ac = sdiv i32 %i.aa, %i.ab
  %i.ad = load i32, ptr %i.l, align 4, !tbaa !75, !noalias !1916
  %i.ae = load ptr, ptr %7, align 8, !tbaa !18, !noalias !1916
  %i.af = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !1916
  %i.ag = sext i32 %i.ac to i64
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = load i64, ptr %i.n, align 8, !tbaa !65, !noalias !1916 ; 2 uses
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  %i.al = sext i32 %i.ad to i64
  %i.am = trunc nuw nsw i64 %indvars.iv to i32
  %i.an = add nsw i32 %i.x, %i.am                 ; 2 uses
  %i.ao = srem i32 %i.an, %i.y
  %i.ap = sdiv i32 %i.an, %i.y
  %i.aq = shl nsw i32 %i.ap, 1                    ; 2 uses
  %i.ar = sext i32 %i.aq to i64                   ; 4 uses
  %i.as = mul i64 %i.ai, %i.al
  %i.at = mul i64 %i.as, %i.ar
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.at
  %i.av = shl nsw i32 %i.ao, 1                    ; 4 uses
  %i.aw = mul nsw i32 %i.av, %i.ab
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 %i.ax ; 13 uses
  %i.az = load i32, ptr %10, align 4, !tbaa !67   ; 2 uses
  %i.ba = load i32, ptr %11, align 4, !tbaa !67   ; 25 uses
  %i.bb = mul nsw i32 %i.ab, %i.ba
  %i.bc = sext i32 %i.bb to i64                   ; 3 uses
  %i.bd = or disjoint i32 %i.av, 1                ; 8 uses
  %i.be = add nsw i32 %i.av, 2                    ; 8 uses
  %i.bf = add nsw i32 %i.av, 3                    ; 8 uses
  %i.bg = sext i32 %i.az to i64                   ; 3 uses
end_hunk_13
begin_hunk_14_@_ZN4ncnnL28convolution_im2col_gemm_int8ERKNS_3MatERS0_S2_iiiiiiiRKNS_6OptionE.omp_outlined:bb.a
  %.1247163.i.us.i = phi i32 [ %i.lw, %.lr.ph165.i.us.i ], [ %.1247163.i.us.i.unr, %.lr.ph165.i.us.i.prol.loopexit ]
  %.1249162.i.us.i = phi ptr [ %i.lv, %.lr.ph165.i.us.i ], [ %.1249162.i.us.i.unr, %.lr.ph165.i.us.i.prol.loopexit ] ; 5 uses
  %i.ky = load i8, ptr %.1249162.i.us.i, align 1, !tbaa !316
  store i8 %i.ky, ptr %.10164.i.us.i, align 1, !tbaa !316
  %i.kz = getelementptr inbounds nuw i8, ptr %.1249162.i.us.i, i64 1
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !316
  %i.lb = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 1
  store i8 %i.la, ptr %i.lb, align 1, !tbaa !316
  %i.lc = getelementptr inbounds nuw i8, ptr %.1249162.i.us.i, i64 2
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !316
  %i.le = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 2
  store i8 %i.ld, ptr %i.le, align 1, !tbaa !316
  %i.lf = getelementptr inbounds nuw i8, ptr %.1249162.i.us.i, i64 3
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !316
  %i.lh = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 3
  store i8 %i.lg, ptr %i.lh, align 1, !tbaa !316
  %i.li = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 4
  %i.lj = getelementptr inbounds nuw i8, ptr %.1249162.i.us.i, i64 %i.bs ; 5 uses
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !316
  store i8 %i.lk, ptr %i.li, align 1, !tbaa !316
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 1
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !316
  %i.ln = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 5
  store i8 %i.lm, ptr %i.ln, align 1, !tbaa !316
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lj, i64 2
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !316
  %i.lq = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 6
  store i8 %i.lp, ptr %i.lq, align 1, !tbaa !316
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lj, i64 3
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !316
  %i.lt = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 7
  store i8 %i.ls, ptr %i.lt, align 1, !tbaa !316
  %i.lu = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 8 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.bs
  %i.lw = add nuw nsw i32 %.1247163.i.us.i, 2     ; 2 uses
  %exitcond231.not.i.us.i.1 = icmp eq i32 %i.lw, %.sroa.speculated
  br i1 %exitcond231.not.i.us.i.1, label %.loopexit124.i.us161.i, label %.lr.ph165.i.us.i, !llvm.loop !1947

.loopexit124.i.us161.i:                           ; preds = %.lr.ph165.i.us.i.prol.loopexit, %.lr.ph165.i.us.i, %.preheader123.i.us.i
  %.11.i.us162.i = phi ptr [ %.9.lcssa.i.us.i, %.preheader123.i.us.i ], [ %.lcssa371.unr, %.lr.ph165.i.us.i.prol.loopexit ], [ %i.lu, %.lr.ph165.i.us.i ] ; 2 uses
  %indvars.iv.next233.i.us163.i = add nuw nsw i64 %indvars.iv232.i.us159.i, 4 ; 3 uses
  %i.lx = icmp slt i64 %indvars.iv.next233.i.us163.i, %invariant.op.i.i
  br i1 %i.lx, label %_ZN4ncnn3MatD2Ev.exit268.i.us.i, label %.preheader122.loopexit.i.i, !llvm.loop !1942

.preheader122.loopexit.i.i:                       ; preds = %.loopexit124.i.us161.i, %.loopexit124.i.loopexit.us.us.i, %_ZN4ncnn3MatD2Ev.exit269.i.us.preheader.i, %.loopexit124.i.preheader.i
  %.us-phi156.i = phi ptr [ %.lcssa372, %.loopexit124.i.loopexit.us.us.i ], [ %.0238.lcssa.i.i, %.loopexit124.i.preheader.i ], [ %.0238.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit269.i.us.preheader.i ], [ %.11.i.us162.i, %.loopexit124.i.us161.i ]
  %.us-phi157.i = phi i64 [ %indvars.iv.next233.i.us.us.i, %.loopexit124.i.loopexit.us.us.i ], [ %i.hk, %.loopexit124.i.preheader.i ], [ %i.hs, %_ZN4ncnn3MatD2Ev.exit269.i.us.preheader.i ], [ %indvars.iv.next233.i.us163.i, %.loopexit124.i.us161.i ]
  %i.ly = trunc nuw nsw i64 %.us-phi157.i to i32
  br label %.preheader122.i.i

.preheader122.i.i:                                ; preds = %.preheader122.loopexit.i.i, %.preheader126.i.i
  %.1241.lcssa.i.i = phi i32 [ %.0240.lcssa.i.i, %.preheader126.i.i ], [ %i.ly, %.preheader122.loopexit.i.i ] ; 3 uses
  %.6.lcssa.i.i = phi ptr [ %.0238.lcssa.i.i, %.preheader126.i.i ], [ %.us-phi156.i, %.preheader122.loopexit.i.i ] ; 2 uses
  %i.lz = or disjoint i32 %.1241.lcssa.i.i, 1
  %i.ma = icmp slt i32 %i.lz, %.sroa.speculated63
  br i1 %i.ma, label %.lr.ph191.i.i, label %.preheader.i.i

.lr.ph191.i.i:                                    ; preds = %.preheader122.i.i
  %i.mb = sdiv i32 %i.ah, 8
  %i.mc = sext i32 %i.mb to i64
  %i.md = lshr i32 %.sroa.speculated, 3           ; 3 uses
  %i.me = icmp sgt i32 %.sroa.speculated, 7
  %i.mf = shl i64 %i.bs, 3                        ; 2 uses
  %i.mg = sext i32 %i.ah to i64
  %i.mh = icmp sgt i32 %.sroa.speculated, 1
  %i.mi = shl i64 %i.bs, 1                        ; 3 uses
  %i.mj = and i32 %.sroa.speculated, -2           ; 2 uses
  %i.mk = zext nneg i32 %.1241.lcssa.i.i to i64
  %i.ml = sext i32 %.sroa.speculated63 to i64
  %i.mm = sext i32 %i.af to i64                   ; 2 uses
  %invariant.op277.i.i = add nsw i64 %i.ml, -1
  %i.mn = add i32 %.sroa.speculated, -2           ; 2 uses
  %i.mo = lshr i32 %i.mn, 1                       ; 2 uses
  %i.mp = add nuw i32 %i.mo, 1                    ; 2 uses
  %i.mq = icmp eq i32 %i.mo, 0
  %unroll_iter398 = and i32 %i.mp, -2
  %i.mr = and i32 %i.mn, 2
  %lcmp.mod394.not.not = icmp eq i32 %i.mr, 0
  %lcmp.mod397 = trunc i32 %i.mp to i1
  %i.ms = icmp eq i32 %i.md, 1
  %unroll_iter407 = and i32 %i.md, 268435454
  %i.mt = and i32 %.sroa.speculated, 8
  %lcmp.mod404.not = icmp eq i32 %i.mt, 0
  %lcmp.mod406 = trunc i32 %i.md to i1
  br label %bb.k

.preheader.loopexit.i.i:                          ; preds = %.loopexit120.i.i
  %i.mu = trunc nsw i64 %indvars.iv.next238.i.i to i32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.loopexit.i.i, %.preheader122.i.i
  %.2242.lcssa.i.i = phi i32 [ %.1241.lcssa.i.i, %.preheader122.i.i ], [ %i.mu, %.preheader.loopexit.i.i ] ; 3 uses
  %.12.lcssa.i.i = phi ptr [ %.6.lcssa.i.i, %.preheader122.i.i ], [ %.17.i.i, %.preheader.loopexit.i.i ] ; 2 uses
  %i.mv = icmp slt i32 %.2242.lcssa.i.i, %.sroa.speculated63
  br i1 %i.mv, label %.lr.ph206.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit

.lr.ph206.i.i:                                    ; preds = %.preheader.i.i
  %i.mw = sdiv i32 %i.ah, 8
  %i.mx = sext i32 %i.mw to i64
  %i.my = sdiv i32 %.sroa.speculated, 8           ; 3 uses
  %i.mz = shl i64 %i.bs, 3                        ; 9 uses
  %i.na = sext i32 %i.ah to i64
  switch i32 %i.bt, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit [
    i32 8, label %.lr.ph206.split.us.split.i.i
    i32 1, label %.lr.ph206.split.split.i.i
  ]

.lr.ph206.split.us.split.i.i:                     ; preds = %.lr.ph206.i.i
  %i.nb = icmp sgt i32 %.sroa.speculated, 7
  br i1 %i.nb, label %_ZN4ncnn3MatD2Ev.exit265.us.preheader.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit

_ZN4ncnn3MatD2Ev.exit265.us.preheader.i.i:        ; preds = %.lr.ph206.split.us.split.i.i
  %i.nc = sext i32 %.2242.lcssa.i.i to i64
  %i.nd = sext i32 %i.af to i64
  %wide.trip.count249.i.i = sext i32 %.sroa.speculated63 to i64
  %i.ne = add nsw i32 %i.my, -1
  %xtraiter416 = and i32 %i.my, 7                 ; 3 uses
  %i.nf = icmp ult i32 %i.ne, 7
  %unroll_iter421 = and i32 %i.my, 268435448
  %lcmp.mod418.not = icmp eq i32 %xtraiter416, 0
  %lcmp.mod420 = icmp ne i32 %xtraiter416, 0
  br label %_ZN4ncnn3MatD2Ev.exit265.us.i.i

_ZN4ncnn3MatD2Ev.exit265.us.i.i:                  ; preds = %..loopexit118_crit_edge.us.i.i, %_ZN4ncnn3MatD2Ev.exit265.us.preheader.i.i
  %indvars.iv246.i.i = phi i64 [ %i.nc, %_ZN4ncnn3MatD2Ev.exit265.us.preheader.i.i ], [ %indvars.iv.next247.i.i, %..loopexit118_crit_edge.us.i.i ] ; 2 uses
  %.18205.us.i.i = phi ptr [ %.12.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit265.us.preheader.i.i ], [ %.lcssa378, %..loopexit118_crit_edge.us.i.i ] ; 2 uses
  %i.ng = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1948
  %i.nh = load i64, ptr %i.x, align 8, !tbaa !20, !noalias !1948
  %i.ni = mul i64 %i.nh, %i.mx
  %i.nj = load i64, ptr %i.aa, align 8, !tbaa !65, !noalias !1948
  %i.nk = mul i64 %i.ni, %i.nj
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ng, i64 %i.nk
  %i.nm = add nsw i64 %indvars.iv246.i.i, %i.nd
  %i.nn = shl nsw i64 %i.nm, 3
  %i.no = getelementptr inbounds i8, ptr %i.nl, i64 %i.nn ; 2 uses
  br i1 %i.nf, label %.epil.preheader415, label %_ZN4ncnn3MatD2Ev.exit265.us.i.i.new

_ZN4ncnn3MatD2Ev.exit265.us.i.i.new:              ; preds = %_ZN4ncnn3MatD2Ev.exit265.us.i.i, %_ZN4ncnn3MatD2Ev.exit265.us.i.i.new
  %.0234195.us.i.i = phi ptr [ %i.om, %_ZN4ncnn3MatD2Ev.exit265.us.i.i.new ], [ %i.no, %_ZN4ncnn3MatD2Ev.exit265.us.i.i ] ; 2 uses
  %.19194.us.i.i = phi ptr [ %i.ol, %_ZN4ncnn3MatD2Ev.exit265.us.i.i.new ], [ %.18205.us.i.i, %_ZN4ncnn3MatD2Ev.exit265.us.i.i ] ; 9 uses
  %niter422 = phi i32 [ %niter422.next.7, %_ZN4ncnn3MatD2Ev.exit265.us.i.i.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit265.us.i.i ]
  %i.np = load i64, ptr %.0234195.us.i.i, align 1, !tbaa !316
  store i64 %i.np, ptr %.19194.us.i.i, align 1, !tbaa !316
  %i.nq = getelementptr inbounds nuw i8, ptr %.19194.us.i.i, i64 8
  %i.nr = getelementptr inbounds nuw i8, ptr %.0234195.us.i.i, i64 %i.mz ; 2 uses
  %i.ns = load i64, ptr %i.nr, align 1, !tbaa !316
  store i64 %i.ns, ptr %i.nq, align 1, !tbaa !316
  %i.nt = getelementptr inbounds nuw i8, ptr %.19194.us.i.i, i64 16
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.mz ; 2 uses
  %i.nv = load i64, ptr %i.nu, align 1, !tbaa !316
  store i64 %i.nv, ptr %i.nt, align 1, !tbaa !316
  %i.nw = getelementptr inbounds nuw i8, ptr %.19194.us.i.i, i64 24
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nu, i64 %i.mz ; 2 uses
  %i.ny = load i64, ptr %i.nx, align 1, !tbaa !316
  store i64 %i.ny, ptr %i.nw, align 1, !tbaa !316
  %i.nz = getelementptr inbounds nuw i8, ptr %.19194.us.i.i, i64 32
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nx, i64 %i.mz ; 2 uses
  %i.ob = load i64, ptr %i.oa, align 1, !tbaa !316
  store i64 %i.ob, ptr %i.nz, align 1, !tbaa !316
  %i.oc = getelementptr inbounds nuw i8, ptr %.19194.us.i.i, i64 40
  %i.od = getelementptr inbounds nuw i8, ptr %i.oa, i64 %i.mz ; 2 uses
  %i.oe = load i64, ptr %i.od, align 1, !tbaa !316
  store i64 %i.oe, ptr %i.oc, align 1, !tbaa !316
  %i.of = getelementptr inbounds nuw i8, ptr %.19194.us.i.i, i64 48
  %i.og = getelementptr inbounds nuw i8, ptr %i.od, i64 %i.mz ; 2 uses
  %i.oh = load i64, ptr %i.og, align 1, !tbaa !316
  store i64 %i.oh, ptr %i.of, align 1, !tbaa !316
  %i.oi = getelementptr inbounds nuw i8, ptr %.19194.us.i.i, i64 56
  %i.oj = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.mz ; 2 uses
  %i.ok = load i64, ptr %i.oj, align 1, !tbaa !316
  store i64 %i.ok, ptr %i.oi, align 1, !tbaa !316
  %i.ol = getelementptr inbounds nuw i8, ptr %.19194.us.i.i, i64 64 ; 3 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.mz ; 2 uses
  %niter422.next.7 = add i32 %niter422, 8         ; 2 uses
  %niter422.ncmp.7 = icmp eq i32 %niter422.next.7, %unroll_iter421
  br i1 %niter422.ncmp.7, label %..loopexit118_crit_edge.us.i.i.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit265.us.i.i.new, !llvm.loop !1951

..loopexit118_crit_edge.us.i.i.unr-lcssa:         ; preds = %_ZN4ncnn3MatD2Ev.exit265.us.i.i.new
  br i1 %lcmp.mod418.not, label %..loopexit118_crit_edge.us.i.i, label %.epil.preheader415

.epil.preheader415:                               ; preds = %..loopexit118_crit_edge.us.i.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit265.us.i.i
  %.0234195.us.i.i.epil.init = phi ptr [ %i.no, %_ZN4ncnn3MatD2Ev.exit265.us.i.i ], [ %i.om, %..loopexit118_crit_edge.us.i.i.unr-lcssa ]
  %.19194.us.i.i.epil.init = phi ptr [ %.18205.us.i.i, %_ZN4ncnn3MatD2Ev.exit265.us.i.i ], [ %i.ol, %..loopexit118_crit_edge.us.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod420)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader415
  %.0234195.us.i.i.epil = phi ptr [ %.0234195.us.i.i.epil.init, %.epil.preheader415 ], [ %i.op, %bb.j ] ; 2 uses
  %.19194.us.i.i.epil = phi ptr [ %.19194.us.i.i.epil.init, %.epil.preheader415 ], [ %i.oo, %bb.j ] ; 2 uses
  %epil.iter417 = phi i32 [ 0, %.epil.preheader415 ], [ %epil.iter417.next, %bb.j ]
  %i.on = load i64, ptr %.0234195.us.i.i.epil, align 1, !tbaa !316
  store i64 %i.on, ptr %.19194.us.i.i.epil, align 1, !tbaa !316
  %i.oo = getelementptr inbounds nuw i8, ptr %.19194.us.i.i.epil, i64 8 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %.0234195.us.i.i.epil, i64 %i.mz
  %epil.iter417.next = add i32 %epil.iter417, 1   ; 2 uses
  %epil.iter417.cmp.not = icmp eq i32 %epil.iter417.next, %xtraiter416
  br i1 %epil.iter417.cmp.not, label %..loopexit118_crit_edge.us.i.i, label %bb.j, !llvm.loop !1952

..loopexit118_crit_edge.us.i.i:                   ; preds = %bb.j, %..loopexit118_crit_edge.us.i.i.unr-lcssa
  %.lcssa378 = phi ptr [ %i.ol, %..loopexit118_crit_edge.us.i.i.unr-lcssa ], [ %i.oo, %bb.j ]
  %indvars.iv.next247.i.i = add nsw i64 %indvars.iv246.i.i, 1 ; 2 uses
  %exitcond250.not.i.i = icmp eq i64 %indvars.iv.next247.i.i, %wide.trip.count249.i.i
  br i1 %exitcond250.not.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit, label %_ZN4ncnn3MatD2Ev.exit265.us.i.i, !llvm.loop !1953

.lr.ph206.split.split.i.i:                        ; preds = %.lr.ph206.i.i
  %i.oq = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.oq, label %_ZN4ncnn3MatD2Ev.exit.preheader.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit

_ZN4ncnn3MatD2Ev.exit.preheader.i.i:              ; preds = %.lr.ph206.split.split.i.i
  %i.or = sext i32 %.2242.lcssa.i.i to i64
  %i.os = sext i32 %i.af to i64
  %wide.trip.count.i.i = sext i32 %.sroa.speculated63 to i64
  %i.ot = add nsw i32 %.sroa.speculated, -1
  %xtraiter409 = and i32 %.sroa.speculated, 7     ; 3 uses
  %i.ou = icmp ult i32 %i.ot, 7
  %unroll_iter413 = and i32 %.sroa.speculated, 2147483640
  %lcmp.mod410.not = icmp eq i32 %xtraiter409, 0
  %lcmp.mod412 = icmp ne i32 %xtraiter409, 0
  br label %_ZN4ncnn3MatD2Ev.exit.i.i

bb.k:                                             ; preds = %.loopexit120.i.i, %.lr.ph191.i.i
  %indvars.iv237.i.i = phi i64 [ %i.mk, %.lr.ph191.i.i ], [ %indvars.iv.next238.i.i, %.loopexit120.i.i ] ; 3 uses
  %.12190.i.i = phi ptr [ %.6.lcssa.i.i, %.lr.ph191.i.i ], [ %.17.i.i, %.loopexit120.i.i ] ; 7 uses
  switch i32 %i.bt, label %.loopexit120.i.i [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit267.i.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit266.i.i
  ]

_ZN4ncnn3MatD2Ev.exit267.i.i:                     ; preds = %bb.k
  br i1 %i.me, label %.lr.ph175.preheader.i.i, label %.loopexit120.i.i

.lr.ph175.preheader.i.i:                          ; preds = %_ZN4ncnn3MatD2Ev.exit267.i.i
  %i.ov = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1954
  %i.ow = load i64, ptr %i.x, align 8, !tbaa !20, !noalias !1954
  %i.ox = mul i64 %i.ow, %i.mc
  %i.oy = load i64, ptr %i.aa, align 8, !tbaa !65, !noalias !1954
  %i.oz = mul i64 %i.ox, %i.oy
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ov, i64 %i.oz
  %i.pb = add nsw i64 %indvars.iv237.i.i, %i.mm
  %i.pc = shl nsw i64 %i.pb, 3
  %i.pd = getelementptr inbounds i8, ptr %i.pa, i64 %i.pc ; 2 uses
  br i1 %i.ms, label %.lr.ph175.i.i.epil.preheader, label %.lr.ph175.i.i

.lr.ph175.i.i:                                    ; preds = %.lr.ph175.preheader.i.i, %.lr.ph175.i.i
  %.13174.i.i = phi ptr [ %i.pw, %.lr.ph175.i.i ], [ %.12190.i.i, %.lr.ph175.preheader.i.i ] ; 3 uses
  %.0245172.i.i = phi ptr [ %i.px, %.lr.ph175.i.i ], [ %i.pd, %.lr.ph175.preheader.i.i ] ; 3 uses
  %niter408 = phi i32 [ %niter408.next.1, %.lr.ph175.i.i ], [ 0, %.lr.ph175.preheader.i.i ]
  %i.pe = load i64, ptr %.0245172.i.i, align 1, !tbaa !316
  %i.pf = insertelement <2 x i64> poison, i64 %i.pe, i64 0
  %i.pg = getelementptr inbounds nuw i8, ptr %.0245172.i.i, i64 8
  %i.ph = load i64, ptr %i.pg, align 1, !tbaa !316
  %i.pi = insertelement <2 x i64> poison, i64 %i.ph, i64 0
  %i.pj = bitcast <2 x i64> %i.pf to <8 x i16>
  %i.pk = bitcast <2 x i64> %i.pi to <8 x i16>
  %i.pl = shufflevector <8 x i16> %i.pj, <8 x i16> %i.pk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.pl, ptr %.13174.i.i, align 1, !tbaa !316
  %i.pm = getelementptr inbounds nuw i8, ptr %.13174.i.i, i64 16
  %i.pn = getelementptr inbounds nuw i8, ptr %.0245172.i.i, i64 %i.mf ; 3 uses
  %i.po = load i64, ptr %i.pn, align 1, !tbaa !316
  %i.pp = insertelement <2 x i64> poison, i64 %i.po, i64 0
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pn, i64 8
  %i.pr = load i64, ptr %i.pq, align 1, !tbaa !316
  %i.ps = insertelement <2 x i64> poison, i64 %i.pr, i64 0
  %i.pt = bitcast <2 x i64> %i.pp to <8 x i16>
  %i.pu = bitcast <2 x i64> %i.ps to <8 x i16>
  %i.pv = shufflevector <8 x i16> %i.pt, <8 x i16> %i.pu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.pv, ptr %i.pm, align 1, !tbaa !316
  %i.pw = getelementptr inbounds nuw i8, ptr %.13174.i.i, i64 32 ; 3 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.mf ; 2 uses
  %niter408.next.1 = add i32 %niter408, 2         ; 2 uses
  %niter408.ncmp.1 = icmp eq i32 %niter408.next.1, %unroll_iter407
  br i1 %niter408.ncmp.1, label %.loopexit120.i.i.loopexit.unr-lcssa, label %.lr.ph175.i.i, !llvm.loop !1957

_ZN4ncnn3MatD2Ev.exit266.i.i:                     ; preds = %bb.k
  %i.py = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1958
  %i.pz = load i64, ptr %i.x, align 8, !tbaa !20, !noalias !1958
  %i.qa = mul i64 %i.pz, %i.mg
  %i.qb = load i64, ptr %i.aa, align 8, !tbaa !65, !noalias !1958
  %i.qc = mul i64 %i.qa, %i.qb
  %i.qd = getelementptr inbounds nuw i8, ptr %i.py, i64 %i.qc
  %i.qe = getelementptr i8, ptr %i.qd, i64 %indvars.iv237.i.i
  %i.qf = getelementptr i8, ptr %i.qe, i64 %i.mm  ; 3 uses
  br i1 %i.mh, label %.lr.ph180.i.i.preheader, label %.preheader119.i.i

.lr.ph180.i.i.preheader:                          ; preds = %_ZN4ncnn3MatD2Ev.exit266.i.i
  br i1 %i.mq, label %.lr.ph180.i.i.epil.preheader, label %.lr.ph180.i.i

.preheader119.i.i.loopexit.unr-lcssa:             ; preds = %.lr.ph180.i.i
  br i1 %lcmp.mod394.not.not, label %.lr.ph180.i.i.epil.preheader, label %.preheader119.i.i

.lr.ph180.i.i.epil.preheader:                     ; preds = %.preheader119.i.i.loopexit.unr-lcssa, %.lr.ph180.i.i.preheader
  %.0236178.i.i.epil.init = phi ptr [ %i.qf, %.lr.ph180.i.i.preheader ], [ %i.sa, %.preheader119.i.i.loopexit.unr-lcssa ] ; 4 uses
  %.15177.i.i.epil.init = phi ptr [ %.12190.i.i, %.lr.ph180.i.i.preheader ], [ %i.rz, %.preheader119.i.i.loopexit.unr-lcssa ] ; 5 uses
  call void @llvm.assume(i1 %lcmp.mod397)
  %i.qg = load i8, ptr %.0236178.i.i.epil.init, align 1, !tbaa !316
  store i8 %i.qg, ptr %.15177.i.i.epil.init, align 1, !tbaa !316
  %i.qh = getelementptr inbounds nuw i8, ptr %.0236178.i.i.epil.init, i64 %i.bs ; 2 uses
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !316
  %i.qj = getelementptr inbounds nuw i8, ptr %.15177.i.i.epil.init, i64 1
  store i8 %i.qi, ptr %i.qj, align 1, !tbaa !316
  %i.qk = getelementptr inbounds nuw i8, ptr %.0236178.i.i.epil.init, i64 1
  %i.ql = load i8, ptr %i.qk, align 1, !tbaa !316
  %i.qm = getelementptr inbounds nuw i8, ptr %.15177.i.i.epil.init, i64 2
  store i8 %i.ql, ptr %i.qm, align 1, !tbaa !316
  %i.qn = getelementptr i8, ptr %i.qh, i64 1
  %i.qo = load i8, ptr %i.qn, align 1, !tbaa !316
  %i.qp = getelementptr inbounds nuw i8, ptr %.15177.i.i.epil.init, i64 3
  store i8 %i.qo, ptr %i.qp, align 1, !tbaa !316
  %i.qq = getelementptr inbounds nuw i8, ptr %.15177.i.i.epil.init, i64 4
  %i.qr = getelementptr inbounds nuw i8, ptr %.0236178.i.i.epil.init, i64 %i.mi
  br label %.preheader119.i.i

.preheader119.i.i:                                ; preds = %.lr.ph180.i.i.epil.preheader, %.preheader119.i.i.loopexit.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit266.i.i
  %.15.lcssa.i.i = phi ptr [ %.12190.i.i, %_ZN4ncnn3MatD2Ev.exit266.i.i ], [ %i.rz, %.preheader119.i.i.loopexit.unr-lcssa ], [ %i.qq, %.lr.ph180.i.i.epil.preheader ] ; 3 uses
  %.0236.lcssa.i.i = phi ptr [ %i.qf, %_ZN4ncnn3MatD2Ev.exit266.i.i ], [ %i.sa, %.preheader119.i.i.loopexit.unr-lcssa ], [ %i.qr, %.lr.ph180.i.i.epil.preheader ] ; 2 uses
  %.0235.lcssa.i.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit266.i.i ], [ %i.mj, %.preheader119.i.i.loopexit.unr-lcssa ], [ %i.mj, %.lr.ph180.i.i.epil.preheader ] ; 5 uses
  %i.qs = icmp slt i32 %.0235.lcssa.i.i, %.sroa.speculated
  br i1 %i.qs, label %.lr.ph187.i.i.preheader, label %.loopexit120.i.i

.lr.ph187.i.i.preheader:                          ; preds = %.preheader119.i.i
  %i.qt = sub i32 %.sroa.speculated, %.0235.lcssa.i.i
  %xtraiter400 = and i32 %i.qt, 3                 ; 2 uses
  %lcmp.mod401.not = icmp eq i32 %xtraiter400, 0
  br i1 %lcmp.mod401.not, label %.lr.ph187.i.i.prol.loopexit, label %.lr.ph187.i.i.prol

.lr.ph187.i.i.prol:                               ; preds = %.lr.ph187.i.i.preheader, %.lr.ph187.i.i.prol
  %.1186.i.i.prol = phi i32 [ %i.ra, %.lr.ph187.i.i.prol ], [ %.0235.lcssa.i.i, %.lr.ph187.i.i.preheader ]
  %.1237185.i.i.prol = phi ptr [ %i.qz, %.lr.ph187.i.i.prol ], [ %.0236.lcssa.i.i, %.lr.ph187.i.i.preheader ] ; 3 uses
  %.16184.i.i.prol = phi ptr [ %i.qy, %.lr.ph187.i.i.prol ], [ %.15.lcssa.i.i, %.lr.ph187.i.i.preheader ] ; 3 uses
  %prol.iter402 = phi i32 [ %prol.iter402.next, %.lr.ph187.i.i.prol ], [ 0, %.lr.ph187.i.i.preheader ]
  %i.qu = load i8, ptr %.1237185.i.i.prol, align 1, !tbaa !316
  store i8 %i.qu, ptr %.16184.i.i.prol, align 1, !tbaa !316
  %i.qv = getelementptr inbounds nuw i8, ptr %.1237185.i.i.prol, i64 1
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !316
  %i.qx = getelementptr inbounds nuw i8, ptr %.16184.i.i.prol, i64 1
  store i8 %i.qw, ptr %i.qx, align 1, !tbaa !316
  %i.qy = getelementptr inbounds nuw i8, ptr %.16184.i.i.prol, i64 2 ; 3 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %.1237185.i.i.prol, i64 %i.bs ; 2 uses
  %i.ra = add nuw nsw i32 %.1186.i.i.prol, 1      ; 2 uses
  %prol.iter402.next = add i32 %prol.iter402, 1   ; 2 uses
  %prol.iter402.cmp.not = icmp eq i32 %prol.iter402.next, %xtraiter400
  br i1 %prol.iter402.cmp.not, label %.lr.ph187.i.i.prol.loopexit, label %.lr.ph187.i.i.prol, !llvm.loop !1961

.lr.ph187.i.i.prol.loopexit:                      ; preds = %.lr.ph187.i.i.prol, %.lr.ph187.i.i.preheader
  %.lcssa375.unr = phi ptr [ poison, %.lr.ph187.i.i.preheader ], [ %i.qy, %.lr.ph187.i.i.prol ]
  %.1186.i.i.unr = phi i32 [ %.0235.lcssa.i.i, %.lr.ph187.i.i.preheader ], [ %i.ra, %.lr.ph187.i.i.prol ]
  %.1237185.i.i.unr = phi ptr [ %.0236.lcssa.i.i, %.lr.ph187.i.i.preheader ], [ %i.qz, %.lr.ph187.i.i.prol ]
  %.16184.i.i.unr = phi ptr [ %.15.lcssa.i.i, %.lr.ph187.i.i.preheader ], [ %i.qy, %.lr.ph187.i.i.prol ]
  %i.rb = sub i32 %.0235.lcssa.i.i, %.sroa.speculated
  %i.rc = icmp ugt i32 %i.rb, -4
  br i1 %i.rc, label %.loopexit120.i.i, label %.lr.ph187.i.i

.lr.ph180.i.i:                                    ; preds = %.lr.ph180.i.i.preheader, %.lr.ph180.i.i
  %.0236178.i.i = phi ptr [ %i.sa, %.lr.ph180.i.i ], [ %i.qf, %.lr.ph180.i.i.preheader ] ; 4 uses
  %.15177.i.i = phi ptr [ %i.rz, %.lr.ph180.i.i ], [ %.12190.i.i, %.lr.ph180.i.i.preheader ] ; 9 uses
  %niter399 = phi i32 [ %niter399.next.1, %.lr.ph180.i.i ], [ 0, %.lr.ph180.i.i.preheader ]
  %i.rd = load i8, ptr %.0236178.i.i, align 1, !tbaa !316
  store i8 %i.rd, ptr %.15177.i.i, align 1, !tbaa !316
  %i.re = getelementptr inbounds nuw i8, ptr %.0236178.i.i, i64 %i.bs ; 2 uses
  %i.rf = load i8, ptr %i.re, align 1, !tbaa !316
  %i.rg = getelementptr inbounds nuw i8, ptr %.15177.i.i, i64 1
  store i8 %i.rf, ptr %i.rg, align 1, !tbaa !316
  %i.rh = getelementptr inbounds nuw i8, ptr %.0236178.i.i, i64 1
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !316
  %i.rj = getelementptr inbounds nuw i8, ptr %.15177.i.i, i64 2
  store i8 %i.ri, ptr %i.rj, align 1, !tbaa !316
  %i.rk = getelementptr i8, ptr %i.re, i64 1
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !316
  %i.rm = getelementptr inbounds nuw i8, ptr %.15177.i.i, i64 3
  store i8 %i.rl, ptr %i.rm, align 1, !tbaa !316
  %i.rn = getelementptr inbounds nuw i8, ptr %.15177.i.i, i64 4
  %i.ro = getelementptr inbounds nuw i8, ptr %.0236178.i.i, i64 %i.mi ; 4 uses
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !316
  store i8 %i.rp, ptr %i.rn, align 1, !tbaa !316
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.bs ; 2 uses
  %i.rr = load i8, ptr %i.rq, align 1, !tbaa !316
  %i.rs = getelementptr inbounds nuw i8, ptr %.15177.i.i, i64 5
  store i8 %i.rr, ptr %i.rs, align 1, !tbaa !316
  %i.rt = getelementptr inbounds nuw i8, ptr %i.ro, i64 1
  %i.ru = load i8, ptr %i.rt, align 1, !tbaa !316
  %i.rv = getelementptr inbounds nuw i8, ptr %.15177.i.i, i64 6
  store i8 %i.ru, ptr %i.rv, align 1, !tbaa !316
  %i.rw = getelementptr i8, ptr %i.rq, i64 1
  %i.rx = load i8, ptr %i.rw, align 1, !tbaa !316
  %i.ry = getelementptr inbounds nuw i8, ptr %.15177.i.i, i64 7
  store i8 %i.rx, ptr %i.ry, align 1, !tbaa !316
  %i.rz = getelementptr inbounds nuw i8, ptr %.15177.i.i, i64 8 ; 3 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.mi ; 3 uses
  %niter399.next.1 = add nuw nsw i32 %niter399, 2 ; 2 uses
  %niter399.ncmp.1.not = icmp eq i32 %niter399.next.1, %unroll_iter398
  br i1 %niter399.ncmp.1.not, label %.preheader119.i.i.loopexit.unr-lcssa, label %.lr.ph180.i.i, !llvm.loop !1962

.lr.ph187.i.i:                                    ; preds = %.lr.ph187.i.i.prol.loopexit, %.lr.ph187.i.i
  %.1186.i.i = phi i32 [ %i.sz, %.lr.ph187.i.i ], [ %.1186.i.i.unr, %.lr.ph187.i.i.prol.loopexit ]
  %.1237185.i.i = phi ptr [ %i.sy, %.lr.ph187.i.i ], [ %.1237185.i.i.unr, %.lr.ph187.i.i.prol.loopexit ] ; 3 uses
  %.16184.i.i = phi ptr [ %i.sx, %.lr.ph187.i.i ], [ %.16184.i.i.unr, %.lr.ph187.i.i.prol.loopexit ] ; 9 uses
  %i.sb = load i8, ptr %.1237185.i.i, align 1, !tbaa !316
  store i8 %i.sb, ptr %.16184.i.i, align 1, !tbaa !316
  %i.sc = getelementptr inbounds nuw i8, ptr %.1237185.i.i, i64 1
  %i.sd = load i8, ptr %i.sc, align 1, !tbaa !316
  %i.se = getelementptr inbounds nuw i8, ptr %.16184.i.i, i64 1
  store i8 %i.sd, ptr %i.se, align 1, !tbaa !316
  %i.sf = getelementptr inbounds nuw i8, ptr %.16184.i.i, i64 2
  %i.sg = getelementptr inbounds nuw i8, ptr %.1237185.i.i, i64 %i.bs ; 3 uses
  %i.sh = load i8, ptr %i.sg, align 1, !tbaa !316
  store i8 %i.sh, ptr %i.sf, align 1, !tbaa !316
  %i.si = getelementptr inbounds nuw i8, ptr %i.sg, i64 1
  %i.sj = load i8, ptr %i.si, align 1, !tbaa !316
  %i.sk = getelementptr inbounds nuw i8, ptr %.16184.i.i, i64 3
  store i8 %i.sj, ptr %i.sk, align 1, !tbaa !316
  %i.sl = getelementptr inbounds nuw i8, ptr %.16184.i.i, i64 4
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sg, i64 %i.bs ; 3 uses
  %i.sn = load i8, ptr %i.sm, align 1, !tbaa !316
  store i8 %i.sn, ptr %i.sl, align 1, !tbaa !316
  %i.so = getelementptr inbounds nuw i8, ptr %i.sm, i64 1
  %i.sp = load i8, ptr %i.so, align 1, !tbaa !316
  %i.sq = getelementptr inbounds nuw i8, ptr %.16184.i.i, i64 5
  store i8 %i.sp, ptr %i.sq, align 1, !tbaa !316
  %i.sr = getelementptr inbounds nuw i8, ptr %.16184.i.i, i64 6
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sm, i64 %i.bs ; 3 uses
  %i.st = load i8, ptr %i.ss, align 1, !tbaa !316
  store i8 %i.st, ptr %i.sr, align 1, !tbaa !316
  %i.su = getelementptr inbounds nuw i8, ptr %i.ss, i64 1
  %i.sv = load i8, ptr %i.su, align 1, !tbaa !316
  %i.sw = getelementptr inbounds nuw i8, ptr %.16184.i.i, i64 7
  store i8 %i.sv, ptr %i.sw, align 1, !tbaa !316
  %i.sx = getelementptr inbounds nuw i8, ptr %.16184.i.i, i64 8 ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.ss, i64 %i.bs
  %i.sz = add nuw nsw i32 %.1186.i.i, 4           ; 2 uses
  %exitcond236.not.i.i.3 = icmp eq i32 %i.sz, %.sroa.speculated
  br i1 %exitcond236.not.i.i.3, label %.loopexit120.i.i, label %.lr.ph187.i.i, !llvm.loop !1963

.loopexit120.i.i.loopexit.unr-lcssa:              ; preds = %.lr.ph175.i.i
  br i1 %lcmp.mod404.not, label %.loopexit120.i.i, label %.lr.ph175.i.i.epil.preheader

.lr.ph175.i.i.epil.preheader:                     ; preds = %.loopexit120.i.i.loopexit.unr-lcssa, %.lr.ph175.preheader.i.i
  %.13174.i.i.epil.init = phi ptr [ %.12190.i.i, %.lr.ph175.preheader.i.i ], [ %i.pw, %.loopexit120.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.0245172.i.i.epil.init = phi ptr [ %i.pd, %.lr.ph175.preheader.i.i ], [ %i.px, %.loopexit120.i.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod406)
  %i.ta = load i64, ptr %.0245172.i.i.epil.init, align 1, !tbaa !316
  %i.tb = insertelement <2 x i64> poison, i64 %i.ta, i64 0
  %i.tc = getelementptr inbounds nuw i8, ptr %.0245172.i.i.epil.init, i64 8
  %i.td = load i64, ptr %i.tc, align 1, !tbaa !316
  %i.te = insertelement <2 x i64> poison, i64 %i.td, i64 0
  %i.tf = bitcast <2 x i64> %i.tb to <8 x i16>
  %i.tg = bitcast <2 x i64> %i.te to <8 x i16>
  %i.th = shufflevector <8 x i16> %i.tf, <8 x i16> %i.tg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.th, ptr %.13174.i.i.epil.init, align 1, !tbaa !316
  %i.ti = getelementptr inbounds nuw i8, ptr %.13174.i.i.epil.init, i64 16
  br label %.loopexit120.i.i

.loopexit120.i.i:                                 ; preds = %.lr.ph187.i.i.prol.loopexit, %.lr.ph187.i.i, %.lr.ph175.i.i.epil.preheader, %.loopexit120.i.i.loopexit.unr-lcssa, %.preheader119.i.i, %_ZN4ncnn3MatD2Ev.exit267.i.i, %bb.k
  %.17.i.i = phi ptr [ %.12190.i.i, %bb.k ], [ %.15.lcssa.i.i, %.preheader119.i.i ], [ %i.ti, %.lr.ph175.i.i.epil.preheader ], [ %.12190.i.i, %_ZN4ncnn3MatD2Ev.exit267.i.i ], [ %i.pw, %.loopexit120.i.i.loopexit.unr-lcssa ], [ %.lcssa375.unr, %.lr.ph187.i.i.prol.loopexit ], [ %i.sx, %.lr.ph187.i.i ] ; 2 uses
  %indvars.iv.next238.i.i = add nuw nsw i64 %indvars.iv237.i.i, 2 ; 3 uses
  %i.tj = icmp slt i64 %indvars.iv.next238.i.i, %invariant.op277.i.i
  br i1 %i.tj, label %bb.k, label %.preheader.loopexit.i.i, !llvm.loop !1964

_ZN4ncnn3MatD2Ev.exit.i.i:                        ; preds = %..loopexit_crit_edge.i.i, %_ZN4ncnn3MatD2Ev.exit.preheader.i.i
  %indvars.iv241.i.i = phi i64 [ %i.or, %_ZN4ncnn3MatD2Ev.exit.preheader.i.i ], [ %indvars.iv.next242.i.i, %..loopexit_crit_edge.i.i ] ; 2 uses
  %.18205.i.i = phi ptr [ %.12.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit.preheader.i.i ], [ %.lcssa377, %..loopexit_crit_edge.i.i ] ; 2 uses
  %i.tk = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1965
  %i.tl = load i64, ptr %i.x, align 8, !tbaa !20, !noalias !1965
  %i.tm = mul i64 %i.tl, %i.na
  %i.tn = load i64, ptr %i.aa, align 8, !tbaa !65, !noalias !1965
  %i.to = mul i64 %i.tm, %i.tn
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tk, i64 %i.to
  %i.tq = getelementptr i8, ptr %i.tp, i64 %indvars.iv241.i.i
  %i.tr = getelementptr i8, ptr %i.tq, i64 %i.os  ; 2 uses
  br i1 %i.ou, label %.epil.preheader, label %_ZN4ncnn3MatD2Ev.exit.i.i.new

_ZN4ncnn3MatD2Ev.exit.i.i.new:                    ; preds = %_ZN4ncnn3MatD2Ev.exit.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i.new
  %.0232200.i.i = phi ptr [ %i.up, %_ZN4ncnn3MatD2Ev.exit.i.i.new ], [ %i.tr, %_ZN4ncnn3MatD2Ev.exit.i.i ] ; 2 uses
  %.21199.i.i = phi ptr [ %i.uo, %_ZN4ncnn3MatD2Ev.exit.i.i.new ], [ %.18205.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i ] ; 9 uses
  %niter414 = phi i32 [ %niter414.next.7, %_ZN4ncnn3MatD2Ev.exit.i.i.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit.i.i ]
  %i.ts = load i8, ptr %.0232200.i.i, align 1, !tbaa !316
  store i8 %i.ts, ptr %.21199.i.i, align 1, !tbaa !316
  %i.tt = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 1
  %i.tu = getelementptr inbounds nuw i8, ptr %.0232200.i.i, i64 %i.bs ; 2 uses
  %i.tv = load i8, ptr %i.tu, align 1, !tbaa !316
  store i8 %i.tv, ptr %i.tt, align 1, !tbaa !316
  %i.tw = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 2
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tu, i64 %i.bs ; 2 uses
  %i.ty = load i8, ptr %i.tx, align 1, !tbaa !316
  store i8 %i.ty, ptr %i.tw, align 1, !tbaa !316
  %i.tz = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 3
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tx, i64 %i.bs ; 2 uses
  %i.ub = load i8, ptr %i.ua, align 1, !tbaa !316
  store i8 %i.ub, ptr %i.tz, align 1, !tbaa !316
  %i.uc = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 4
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ua, i64 %i.bs ; 2 uses
  %i.ue = load i8, ptr %i.ud, align 1, !tbaa !316
  store i8 %i.ue, ptr %i.uc, align 1, !tbaa !316
  %i.uf = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 5
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ud, i64 %i.bs ; 2 uses
  %i.uh = load i8, ptr %i.ug, align 1, !tbaa !316
  store i8 %i.uh, ptr %i.uf, align 1, !tbaa !316
  %i.ui = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 6
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ug, i64 %i.bs ; 2 uses
  %i.uk = load i8, ptr %i.uj, align 1, !tbaa !316
  store i8 %i.uk, ptr %i.ui, align 1, !tbaa !316
  %i.ul = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 7
  %i.um = getelementptr inbounds nuw i8, ptr %i.uj, i64 %i.bs ; 2 uses
  %i.un = load i8, ptr %i.um, align 1, !tbaa !316
  store i8 %i.un, ptr %i.ul, align 1, !tbaa !316
  %i.uo = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 8 ; 3 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.um, i64 %i.bs ; 2 uses
  %niter414.next.7 = add i32 %niter414, 8         ; 2 uses
  %niter414.ncmp.7 = icmp eq i32 %niter414.next.7, %unroll_iter413
  br i1 %niter414.ncmp.7, label %..loopexit_crit_edge.i.i.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit.i.i.new, !llvm.loop !1968

..loopexit_crit_edge.i.i.unr-lcssa:               ; preds = %_ZN4ncnn3MatD2Ev.exit.i.i.new
  br i1 %lcmp.mod410.not, label %..loopexit_crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit_crit_edge.i.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit.i.i
  %.0232200.i.i.epil.init = phi ptr [ %i.tr, %_ZN4ncnn3MatD2Ev.exit.i.i ], [ %i.up, %..loopexit_crit_edge.i.i.unr-lcssa ]
  %.21199.i.i.epil.init = phi ptr [ %.18205.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i ], [ %i.uo, %..loopexit_crit_edge.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod412)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader
  %.0232200.i.i.epil = phi ptr [ %.0232200.i.i.epil.init, %.epil.preheader ], [ %i.us, %bb.l ] ; 2 uses
  %.21199.i.i.epil = phi ptr [ %.21199.i.i.epil.init, %.epil.preheader ], [ %i.ur, %bb.l ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.l ]
  %i.uq = load i8, ptr %.0232200.i.i.epil, align 1, !tbaa !316
  store i8 %i.uq, ptr %.21199.i.i.epil, align 1, !tbaa !316
  %i.ur = getelementptr inbounds nuw i8, ptr %.21199.i.i.epil, i64 1 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %.0232200.i.i.epil, i64 %i.bs
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter409
  br i1 %epil.iter.cmp.not, label %..loopexit_crit_edge.i.i, label %bb.l, !llvm.loop !1969

..loopexit_crit_edge.i.i:                         ; preds = %bb.l, %..loopexit_crit_edge.i.i.unr-lcssa
  %.lcssa377 = phi ptr [ %i.uo, %..loopexit_crit_edge.i.i.unr-lcssa ], [ %i.ur, %bb.l ]
  %indvars.iv.next242.i.i = add nsw i64 %indvars.iv241.i.i, 1 ; 2 uses
  %exitcond244.not.i.i = icmp eq i64 %indvars.iv.next242.i.i, %wide.trip.count.i.i
  br i1 %exitcond244.not.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit, label %_ZN4ncnn3MatD2Ev.exit.i.i, !llvm.loop !1953

bb.m:                                             ; preds = %bb.h
  %i.ut = load i32, ptr %i.y, align 4, !tbaa !75  ; 9 uses
  %i.uu = load i32, ptr %i.z, align 8, !tbaa !66  ; 9 uses
  %i.uv = add nsw i32 %i.bc, -1
  %i.uw = mul nsw i32 %i.be, %i.uv
  %.neg.i.i = xor i32 %i.uw, -1
  %i.ux = add i32 %i.ut, %.neg.i.i
  %i.uy = sdiv i32 %i.ux, %i.bg                   ; 3 uses
  %i.uz = add nsw i32 %i.uy, 1                    ; 10 uses
  %i.va = mul nsw i32 %i.bd, %i.bc                ; 56 uses
  %i.vb = icmp eq i32 %i.uy, 0
  br i1 %i.vb, label %_ZN17FastDivider_epu32C2Ej.exit1130.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.vc = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.uy, i1 true) ; 3 uses
  %i.vd = sub nuw nsw i32 32, %i.vc
  %i.ve = icmp eq i32 %i.vc, 0
  %i.vf = shl nuw i32 1, %i.vd
  %i.vg = select i1 %i.ve, i32 0, i32 %i.vf
  %i.vh = sub i32 %i.vg, %i.uz
  %i.vi = zext i32 %i.vh to i64
  %i.vj = shl nuw i64 %i.vi, 32
  %i.vk = zext i32 %i.uz to i64
  %i.vl = udiv i64 %i.vj, %i.vk
  %i.vm = trunc i64 %i.vl to i32
  %i.vn = add i32 %i.vm, 1
  %i.vo = xor i32 %i.vc, 31
  br label %_ZN17FastDivider_epu32C2Ej.exit1130.i.i

_ZN17FastDivider_epu32C2Ej.exit1130.i.i:          ; preds = %bb.n, %bb.m
  %.012.i1127.i.i = phi i32 [ %i.vo, %bb.n ], [ 0, %bb.m ]
  %.011.i1128.i.i = phi i32 [ 1, %bb.n ], [ 0, %bb.m ]
  %.0.i1129.i.i = phi i32 [ %i.vn, %bb.n ], [ 1, %bb.m ]
  %i.vp = insertelement <4 x i32> poison, i32 %.0.i1129.i.i, i64 0
  %i.vq = shufflevector <4 x i32> %i.vp, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.vr = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.011.i1128.i.i, i64 0 ; 2 uses
  %i.vs = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.012.i1127.i.i, i64 0 ; 3 uses
  %i.vt = icmp sgt i32 %.sroa.speculated63, 7
  br i1 %i.vt, label %.lr.ph151.i.i, label %.preheader114.i.i

.lr.ph151.i.i:                                    ; preds = %_ZN17FastDivider_epu32C2Ej.exit1130.i.i
  %i.vu = bitcast <4 x i32> %i.vq to <2 x i64>
  %i.vv = and <2 x i64> %i.vu, splat (i64 4294967295) ; 4 uses
  %i.vw = shufflevector <4 x i32> %i.vr, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.vx = insertelement <4 x i32> poison, i32 %i.uz, i64 0
  %i.vy = shufflevector <4 x i32> %i.vx, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.vz = insertelement <4 x i32> poison, i32 %i.bg, i64 0
  %i.wa = shufflevector <4 x i32> %i.vz, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %.scalar.i = mul i32 %i.ut, %i.bh
  %i.wb = insertelement <4 x i32> poison, i32 %.scalar.i, i64 0
  %i.wc = shufflevector <4 x i32> %i.wb, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.wd = icmp eq i32 %i.uu, 1                    ; 2 uses
  %i.we = icmp sgt i32 %.sroa.speculated, 1       ; 2 uses
  %i.wf = mul i32 %i.ut, %i.bf                    ; 8 uses
  %i.wg = trunc i64 %i.bs to i32                  ; 4 uses
  %i.wh = icmp ne i32 %i.uu, 8
  %i.wi = sdiv i32 %.sroa.speculated, 8           ; 2 uses
  %i.wj = icmp slt i32 %.sroa.speculated, 8
  %i.wk = sdiv i32 %i.ah, 8                       ; 2 uses
  %brmerge236.i.i = or i1 %i.wj, %i.wh            ; 2 uses
  br label %bb.o

.preheader114.i.i:                                ; preds = %.loopexit116.i.i, %_ZN17FastDivider_epu32C2Ej.exit1130.i.i
  %.01096.lcssa.i.i = phi i32 [ 0, %_ZN17FastDivider_epu32C2Ej.exit1130.i.i ], [ %i.amn, %.loopexit116.i.i ] ; 3 uses
  %.0.lcssa.i.i = phi ptr [ %.val.i, %_ZN17FastDivider_epu32C2Ej.exit1130.i.i ], [ %.10.i.i, %.loopexit116.i.i ] ; 2 uses
  %i.wl = or disjoint i32 %.01096.lcssa.i.i, 3
  %i.wm = icmp slt i32 %i.wl, %.sroa.speculated63
  br i1 %i.wm, label %.lr.ph182.i.i, label %.preheader103.i.i

.lr.ph182.i.i:                                    ; preds = %.preheader114.i.i
  %i.wn = bitcast <4 x i32> %i.vq to <2 x i64>
  %i.wo = and <2 x i64> %i.wn, splat (i64 4294967295) ; 2 uses
  %i.wp = shufflevector <4 x i32> %i.vr, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.wq = insertelement <4 x i32> poison, i32 %i.uz, i64 0
  %i.wr = shufflevector <4 x i32> %i.wq, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ws = insertelement <4 x i32> poison, i32 %i.bg, i64 0
  %i.wt = shufflevector <4 x i32> %i.ws, <4 x i32> poison, <4 x i32> zeroinitializer
  %.scalar.i.i = mul i32 %i.ut, %i.bh
  %i.wu = insertelement <4 x i32> poison, i32 %.scalar.i.i, i64 0
  %i.wv = shufflevector <4 x i32> %i.wu, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ww = icmp eq i32 %i.uu, 1                    ; 2 uses
  %i.wx = icmp sgt i32 %.sroa.speculated, 1       ; 2 uses
  %i.wy = mul i32 %i.ut, %i.bf                    ; 8 uses
  %i.wz = trunc i64 %i.bs to i32                  ; 4 uses
  %i.xa = icmp ne i32 %i.uu, 8
  %i.xb = sdiv i32 %.sroa.speculated, 8           ; 2 uses
  %i.xc = icmp slt i32 %.sroa.speculated, 8
  %i.xd = sdiv i32 %i.ah, 8                       ; 2 uses
  %brmerge242.i.i = or i1 %i.xc, %i.xa            ; 2 uses
  br label %bb.u

bb.o:                                             ; preds = %.loopexit116.i.i, %.lr.ph151.i.i
  %.0150.i.i = phi ptr [ %.val.i, %.lr.ph151.i.i ], [ %.10.i.i, %.loopexit116.i.i ] ; 8 uses
  %.01096149.i.i = phi i32 [ 0, %.lr.ph151.i.i ], [ %i.amn, %.loopexit116.i.i ] ; 2 uses
  %i.xe = add nsw i32 %.01096149.i.i, %i.af
  %i.xf = insertelement <4 x i32> poison, i32 %i.xe, i64 0
  %i.xg = shufflevector <4 x i32> %i.xf, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.xh = add <4 x i32> %i.xg, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.xi = bitcast <4 x i32> %i.xh to <2 x i64>
  %i.xj = add <4 x i32> %i.xg, <i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.xk = bitcast <4 x i32> %i.xj to <2 x i64>
  %i.xl = bitcast <4 x i32> %i.xh to <2 x i64>
  %i.xm = and <2 x i64> %i.xl, splat (i64 4294967295)
  %i.xn = mul nuw <2 x i64> %i.xm, %i.vv
  %i.xo = lshr <2 x i64> %i.xn, splat (i64 32)
  %i.xp = lshr <2 x i64> %i.xi, splat (i64 32)
  %i.xq = mul nuw <2 x i64> %i.xp, %i.vv
  %i.xr = bitcast <2 x i64> %i.xo to <8 x i16>
  %i.xs = bitcast <2 x i64> %i.xq to <8 x i16>
  %i.xt = shufflevector <8 x i16> %i.xr, <8 x i16> %i.xs, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.xu = bitcast <8 x i16> %i.xt to <4 x i32>    ; 2 uses
  %i.xv = sub <4 x i32> %i.xh, %i.xu
  %i.xw = lshr <4 x i32> %i.xv, %i.vw
  %i.xx = add <4 x i32> %i.xw, %i.xu
  %i.xy = call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.xx, <4 x i32> %i.vs) ; 2 uses
  %i.xz = bitcast <4 x i32> %i.xj to <2 x i64>
  %i.ya = and <2 x i64> %i.xz, splat (i64 4294967295)
  %i.yb = mul nuw <2 x i64> %i.ya, %i.vv
  %i.yc = lshr <2 x i64> %i.yb, splat (i64 32)
  %i.yd = lshr <2 x i64> %i.xk, splat (i64 32)
  %i.ye = mul nuw <2 x i64> %i.yd, %i.vv
  %i.yf = bitcast <2 x i64> %i.yc to <8 x i16>
  %i.yg = bitcast <2 x i64> %i.ye to <8 x i16>
  %i.yh = shufflevector <8 x i16> %i.yf, <8 x i16> %i.yg, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.yi = bitcast <8 x i16> %i.yh to <4 x i32>    ; 2 uses
  %i.yj = sub <4 x i32> %i.xj, %i.yi
  %i.yk = lshr <4 x i32> %i.yj, %i.vw
  %i.yl = add <4 x i32> %i.yk, %i.yi
  %i.ym = call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.yl, <4 x i32> %i.vs) ; 2 uses
  %i.yn = mul <4 x i32> %i.xy, %i.vy
  %i.yo = sub <4 x i32> %i.xh, %i.yn
  %i.yp = mul <4 x i32> %i.ym, %i.vy
  %i.yq = sub <4 x i32> %i.xj, %i.yp
  %i.yr = mul <4 x i32> %i.yo, %i.wa              ; 2 uses
  %i.ys = mul <4 x i32> %i.yq, %i.wa
  %i.yt = mul <4 x i32> %i.xy, %i.wc              ; 3 uses
  %i.yu = mul <4 x i32> %i.ym, %i.wc              ; 2 uses
  %i.yv = add <4 x i32> %i.yr, %i.yt              ; 4 uses
  %i.yw = add <4 x i32> %i.ys, %i.yu              ; 4 uses
  %shift319 = shufflevector <4 x i32> %i.yu, <4 x i32> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.yx = icmp eq <4 x i32> %i.yt, %shift319
  %i.yy = extractelement <4 x i1> %i.yx, i64 0
  %or.cond.i.i = and i1 %i.bp, %i.yy
  br i1 %or.cond.i.i, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %foldExtExtBinop = add nsw <4 x i32> %i.yr, %i.yt
  %i.yz = extractelement <4 x i32> %foldExtExtBinop, i64 0 ; 3 uses
  br i1 %i.wd, label %.preheader119.i82.i, label %.loopexit118.i.i

.preheader119.i82.i:                              ; preds = %bb.p
  br i1 %i.we, label %.lr.ph138.i.i, label %.preheader117.i.i

.lr.ph138.i.i:                                    ; preds = %.preheader119.i82.i
  %i.za = sext i32 %i.yz to i64                   ; 2 uses
  br label %bb.q

.preheader117.i.i:                                ; preds = %bb.q, %.preheader119.i82.i
  %.01100.lcssa.i.i = phi i32 [ 0, %.preheader119.i82.i ], [ %i.aao, %bb.q ] ; 2 uses
  %.1.lcssa.i.i = phi ptr [ %.0150.i.i, %.preheader119.i82.i ], [ %i.aan, %bb.q ] ; 2 uses
  %i.zb = icmp slt i32 %.01100.lcssa.i.i, %.sroa.speculated
  br i1 %i.zb, label %.lr.ph143.i83.i, label %.loopexit116.i.i

.lr.ph143.i83.i:                                  ; preds = %.preheader117.i.i
  %i.zc = sext i32 %i.yz to i64
  br label %bb.r

bb.q:                                             ; preds = %bb.q, %.lr.ph138.i.i
  %.1137.i.i = phi ptr [ %.0150.i.i, %.lr.ph138.i.i ], [ %i.aan, %bb.q ] ; 2 uses
  %.01100136.i.i = phi i32 [ 0, %.lr.ph138.i.i ], [ %i.aao, %bb.q ] ; 2 uses
  %i.zd = add nsw i32 %.01100136.i.i, %i.ah       ; 3 uses
  %i.ze = sdiv i32 %i.zd, %i.va
  %i.zf = add nsw i32 %i.zd, 1                    ; 2 uses
  %i.zg = sdiv i32 %i.zf, %i.va
  %i.zh = srem i32 %i.zd, %i.va                   ; 2 uses
  %i.zi = srem i32 %i.zf, %i.va                   ; 2 uses
  %i.zj = sdiv i32 %i.zh, %i.bc
  %i.zk = sdiv i32 %i.zi, %i.bc
  %i.zl = srem i32 %i.zh, %i.bc
  %i.zm = srem i32 %i.zi, %i.bc
  %i.zn = sext i32 %i.ze to i64
  %i.zo = mul i64 %i.bs, %i.zn
  %i.zp = mul i32 %i.zj, %i.wf
  %i.zq = mul nsw i32 %i.zl, %i.be
  %i.zr = add nsw i32 %i.zq, %i.zp
  %i.zs = sext i32 %i.zr to i64
  %i.zt = sext i32 %i.zg to i64
  %i.zu = mul i64 %i.bs, %i.zt
  %i.zv = mul i32 %i.zk, %i.wf
  %i.zw = mul nsw i32 %i.zm, %i.be
  %i.zx = add nsw i32 %i.zw, %i.zv
  %i.zy = sext i32 %i.zx to i64
  %i.zz = load ptr, ptr %9, align 8, !tbaa !18    ; 2 uses
  %i.aaa = getelementptr i8, ptr %i.zz, i64 %i.zo
  %i.aab = getelementptr i8, ptr %i.aaa, i64 %i.za
  %i.aac = getelementptr i8, ptr %i.aab, i64 %i.zs
  %i.aad = load i64, ptr %i.aac, align 1, !tbaa !316
end_hunk_14
begin_hunk_15_@_ZN4ncnnL28convolution_im2col_gemm_int8ERKNS_3MatERS0_S2_iiiiiiiRKNS_6OptionE.omp_outlined.14:bb.a
middle.block326:                                  ; preds = %vector.body314
  %cmp.n327 = icmp eq i64 %n.vec313, %i.aej
  br i1 %cmp.n327, label %.preheader.i, label %.lr.ph1115.i.preheader369

.lr.ph1115.i.preheader369:                        ; preds = %vector.memcheck307, %.lr.ph1115.i.preheader, %middle.block326
  %.181114.i.ph = phi ptr [ %.17.lcssa.i, %vector.memcheck307 ], [ %.17.lcssa.i, %.lr.ph1115.i.preheader ], [ %i.aep, %middle.block326 ]
  %.26341113.i.ph = phi i32 [ %.1633.lcssa.i, %vector.memcheck307 ], [ %.1633.lcssa.i, %.lr.ph1115.i.preheader ], [ %i.aes, %middle.block326 ]
  %.26381112.i.ph = phi ptr [ %.1637.lcssa.i, %vector.memcheck307 ], [ %.1637.lcssa.i, %.lr.ph1115.i.preheader ], [ %i.aet, %middle.block326 ]
  br label %.lr.ph1115.i

.lr.ph1108.i:                                     ; preds = %.preheader974.i, %.lr.ph1108.i
  %.171107.i = phi ptr [ %i.aez, %.lr.ph1108.i ], [ %.16.lcssa.i, %.preheader974.i ] ; 2 uses
  %.16331106.i = phi i32 [ %i.afa, %.lr.ph1108.i ], [ %.0632.lcssa.i, %.preheader974.i ]
  %.16371105.i = phi ptr [ %i.aey, %.lr.ph1108.i ], [ %.0636.lcssa.i, %.preheader974.i ] ; 2 uses
  %i.aex = load <2 x i64>, ptr %.171107.i, align 1, !tbaa !316
  store <2 x i64> %i.aex, ptr %.16371105.i, align 1, !tbaa !316
  %i.aey = getelementptr inbounds nuw i8, ptr %.16371105.i, i64 16 ; 2 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %.171107.i, i64 16 ; 2 uses
  %i.afa = add nuw nsw i32 %.16331106.i, 4        ; 3 uses
  %i.afb = or disjoint i32 %i.afa, 3
  %i.afc = icmp slt i32 %i.afb, %.sroa.speculated114
  br i1 %i.afc, label %.lr.ph1108.i, label %.preheader973.i, !llvm.loop !2032

.preheader.i:                                     ; preds = %.lr.ph1115.i, %middle.block326, %.preheader973.i
  %.2638.lcssa.i = phi ptr [ %.1637.lcssa.i, %.preheader973.i ], [ %i.aet, %middle.block326 ], [ %i.agm, %.lr.ph1115.i ] ; 6 uses
  %.2634.lcssa.i = phi i32 [ %.1633.lcssa.i, %.preheader973.i ], [ %i.aes, %middle.block326 ], [ %i.ago, %.lr.ph1115.i ] ; 5 uses
  %.18.lcssa.i = phi ptr [ %.17.lcssa.i, %.preheader973.i ], [ %i.aep, %middle.block326 ], [ %i.agn, %.lr.ph1115.i ] ; 7 uses
  %i.afd = icmp slt i32 %.2634.lcssa.i, %.sroa.speculated114
  br i1 %i.afd, label %iter.check, label %._crit_edge1123.i

iter.check:                                       ; preds = %.preheader.i
  %.18.lcssa.i289 = ptrtoaddr ptr %.18.lcssa.i to i64
  %.2638.lcssa.i288 = ptrtoaddr ptr %.2638.lcssa.i to i64
  %i.afe = xor i32 %.2634.lcssa.i, -1
  %i.aff = add i32 %.sroa.speculated114, %i.afe   ; 3 uses
  %i.afg = zext i32 %i.aff to i64
  %i.afh = add nuw nsw i64 %i.afg, 1              ; 5 uses
  %min.iters.check = icmp ult i32 %i.aff, 7
  %i.afi = sub i64 %.18.lcssa.i289, %.2638.lcssa.i288
  %diff.check = icmp ugt i64 %i.afi, -128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph1122.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check290 = icmp ult i32 %i.aff, 31
  br i1 %min.iters.check290, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.afj = and i64 %i.afh, 24
  %n.vec = and i64 %i.afh, 8589934560             ; 5 uses
  %i.afk = shl nuw nsw i64 %n.vec, 2              ; 2 uses
  %i.afl = getelementptr i8, ptr %.18.lcssa.i, i64 %i.afk ; 2 uses
  %i.afm = trunc i64 %n.vec to i32
  %i.afn = add i32 %.2634.lcssa.i, %i.afm
  %i.afo = getelementptr i8, ptr %.2638.lcssa.i, i64 %i.afk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.afp = shl i64 %index, 2                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.18.lcssa.i, i64 %i.afp ; 4 uses
  %next.gep291 = getelementptr i8, ptr %.2638.lcssa.i, i64 %i.afp ; 4 uses
  %i.afq = getelementptr i8, ptr %next.gep, i64 32
  %i.afr = getelementptr i8, ptr %next.gep, i64 64
  %i.afs = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <8 x i32>, ptr %next.gep, align 4, !tbaa !67
  %wide.load292 = load <8 x i32>, ptr %i.afq, align 4, !tbaa !67
  %wide.load293 = load <8 x i32>, ptr %i.afr, align 4, !tbaa !67
  %wide.load294 = load <8 x i32>, ptr %i.afs, align 4, !tbaa !67
  %i.aft = getelementptr i8, ptr %next.gep291, i64 32
  %i.afu = getelementptr i8, ptr %next.gep291, i64 64
  %i.afv = getelementptr i8, ptr %next.gep291, i64 96
  store <8 x i32> %wide.load, ptr %next.gep291, align 4, !tbaa !67
  store <8 x i32> %wide.load292, ptr %i.aft, align 4, !tbaa !67
  store <8 x i32> %wide.load293, ptr %i.afu, align 4, !tbaa !67
  store <8 x i32> %wide.load294, ptr %i.afv, align 4, !tbaa !67
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.afw = icmp eq i64 %index.next, %n.vec
  br i1 %i.afw, label %middle.block, label %vector.body, !llvm.loop !2033

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.afh, %n.vec
  br i1 %cmp.n, label %._crit_edge1123.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.afj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph1122.i.preheader, label %vec.epilog.ph, !prof !280

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec297 = and i64 %i.afh, 8589934584          ; 4 uses
  %i.afx = shl nuw nsw i64 %n.vec297, 2           ; 2 uses
  %i.afy = getelementptr i8, ptr %.18.lcssa.i, i64 %i.afx ; 2 uses
  %i.afz = trunc i64 %n.vec297 to i32
  %i.aga = add i32 %.2634.lcssa.i, %i.afz
  %i.agb = getelementptr i8, ptr %.2638.lcssa.i, i64 %i.afx
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index298 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next302, %vec.epilog.vector.body ] ; 2 uses
  %i.agc = shl i64 %index298, 2                   ; 2 uses
  %next.gep299 = getelementptr i8, ptr %.18.lcssa.i, i64 %i.agc
  %next.gep300 = getelementptr i8, ptr %.2638.lcssa.i, i64 %i.agc
  %wide.load301 = load <8 x i32>, ptr %next.gep299, align 4, !tbaa !67
  store <8 x i32> %wide.load301, ptr %next.gep300, align 4, !tbaa !67
  %index.next302 = add nuw i64 %index298, 8       ; 2 uses
  %i.agd = icmp eq i64 %index.next302, %n.vec297
  br i1 %i.agd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2034

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n303 = icmp eq i64 %i.afh, %n.vec297
  br i1 %cmp.n303, label %._crit_edge1123.i, label %.lr.ph1122.i.preheader

.lr.ph1122.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.191121.i.ph = phi ptr [ %.18.lcssa.i, %iter.check ], [ %i.afl, %vec.epilog.iter.check ], [ %i.afy, %vec.epilog.middle.block ] ; 2 uses
  %.36351120.i.ph = phi i32 [ %.2634.lcssa.i, %iter.check ], [ %i.afn, %vec.epilog.iter.check ], [ %i.aga, %vec.epilog.middle.block ] ; 4 uses
  %.36391119.i.ph = phi ptr [ %.2638.lcssa.i, %iter.check ], [ %i.afo, %vec.epilog.iter.check ], [ %i.agb, %vec.epilog.middle.block ] ; 2 uses
  %i.age = sub i32 %.sroa.speculated114, %.36351120.i.ph
  %xtraiter415 = and i32 %i.age, 7                ; 2 uses
  %lcmp.mod416.not = icmp eq i32 %xtraiter415, 0
  br i1 %lcmp.mod416.not, label %.lr.ph1122.i.prol.loopexit, label %.lr.ph1122.i.prol

.lr.ph1122.i.prol:                                ; preds = %.lr.ph1122.i.preheader, %.lr.ph1122.i.prol
  %.191121.i.prol = phi ptr [ %i.agh, %.lr.ph1122.i.prol ], [ %.191121.i.ph, %.lr.ph1122.i.preheader ] ; 2 uses
  %.36351120.i.prol = phi i32 [ %i.agi, %.lr.ph1122.i.prol ], [ %.36351120.i.ph, %.lr.ph1122.i.preheader ]
  %.36391119.i.prol = phi ptr [ %i.agg, %.lr.ph1122.i.prol ], [ %.36391119.i.ph, %.lr.ph1122.i.preheader ] ; 2 uses
  %prol.iter417 = phi i32 [ %prol.iter417.next, %.lr.ph1122.i.prol ], [ 0, %.lr.ph1122.i.preheader ]
  %i.agf = load i32, ptr %.191121.i.prol, align 4, !tbaa !67
  store i32 %i.agf, ptr %.36391119.i.prol, align 4, !tbaa !67
  %i.agg = getelementptr inbounds nuw i8, ptr %.36391119.i.prol, i64 4 ; 2 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %.191121.i.prol, i64 4 ; 3 uses
  %i.agi = add nuw nsw i32 %.36351120.i.prol, 1   ; 2 uses
  %prol.iter417.next = add i32 %prol.iter417, 1   ; 2 uses
  %prol.iter417.cmp.not = icmp eq i32 %prol.iter417.next, %xtraiter415
  br i1 %prol.iter417.cmp.not, label %.lr.ph1122.i.prol.loopexit, label %.lr.ph1122.i.prol, !llvm.loop !2035

.lr.ph1122.i.prol.loopexit:                       ; preds = %.lr.ph1122.i.prol, %.lr.ph1122.i.preheader
  %.lcssa404.unr = phi ptr [ poison, %.lr.ph1122.i.preheader ], [ %i.agh, %.lr.ph1122.i.prol ]
  %.191121.i.unr = phi ptr [ %.191121.i.ph, %.lr.ph1122.i.preheader ], [ %i.agh, %.lr.ph1122.i.prol ]
  %.36351120.i.unr = phi i32 [ %.36351120.i.ph, %.lr.ph1122.i.preheader ], [ %i.agi, %.lr.ph1122.i.prol ]
  %.36391119.i.unr = phi ptr [ %.36391119.i.ph, %.lr.ph1122.i.preheader ], [ %i.agg, %.lr.ph1122.i.prol ]
  %i.agj = sub i32 %.36351120.i.ph, %.sroa.speculated114
  %i.agk = icmp ugt i32 %i.agj, -8
  br i1 %i.agk, label %._crit_edge1123.i, label %.lr.ph1122.i

.lr.ph1115.i:                                     ; preds = %.lr.ph1115.i.preheader369, %.lr.ph1115.i
  %.181114.i = phi ptr [ %i.agn, %.lr.ph1115.i ], [ %.181114.i.ph, %.lr.ph1115.i.preheader369 ] ; 2 uses
  %.26341113.i = phi i32 [ %i.ago, %.lr.ph1115.i ], [ %.26341113.i.ph, %.lr.ph1115.i.preheader369 ]
  %.26381112.i = phi ptr [ %i.agm, %.lr.ph1115.i ], [ %.26381112.i.ph, %.lr.ph1115.i.preheader369 ] ; 2 uses
  %i.agl = load <2 x i32>, ptr %.181114.i, align 4, !tbaa !67
  store <2 x i32> %i.agl, ptr %.26381112.i, align 4, !tbaa !67
  %i.agm = getelementptr inbounds nuw i8, ptr %.26381112.i, i64 8 ; 2 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %.181114.i, i64 8 ; 2 uses
  %i.ago = add nuw nsw i32 %.26341113.i, 2        ; 3 uses
  %i.agp = or disjoint i32 %i.ago, 1
  %i.agq = icmp slt i32 %i.agp, %.sroa.speculated114
  br i1 %i.agq, label %.lr.ph1115.i, label %.preheader.i, !llvm.loop !2036

.lr.ph1122.i:                                     ; preds = %.lr.ph1122.i.prol.loopexit, %.lr.ph1122.i
  %.191121.i = phi ptr [ %i.aho, %.lr.ph1122.i ], [ %.191121.i.unr, %.lr.ph1122.i.prol.loopexit ] ; 9 uses
  %.36351120.i = phi i32 [ %i.ahp, %.lr.ph1122.i ], [ %.36351120.i.unr, %.lr.ph1122.i.prol.loopexit ]
  %.36391119.i = phi ptr [ %i.ahn, %.lr.ph1122.i ], [ %.36391119.i.unr, %.lr.ph1122.i.prol.loopexit ] ; 9 uses
  %i.agr = load i32, ptr %.191121.i, align 4, !tbaa !67
  store i32 %i.agr, ptr %.36391119.i, align 4, !tbaa !67
  %i.ags = getelementptr inbounds nuw i8, ptr %.36391119.i, i64 4
  %i.agt = getelementptr inbounds nuw i8, ptr %.191121.i, i64 4
  %i.agu = load i32, ptr %i.agt, align 4, !tbaa !67
  store i32 %i.agu, ptr %i.ags, align 4, !tbaa !67
  %i.agv = getelementptr inbounds nuw i8, ptr %.36391119.i, i64 8
  %i.agw = getelementptr inbounds nuw i8, ptr %.191121.i, i64 8
  %i.agx = load i32, ptr %i.agw, align 4, !tbaa !67
  store i32 %i.agx, ptr %i.agv, align 4, !tbaa !67
  %i.agy = getelementptr inbounds nuw i8, ptr %.36391119.i, i64 12
  %i.agz = getelementptr inbounds nuw i8, ptr %.191121.i, i64 12
  %i.aha = load i32, ptr %i.agz, align 4, !tbaa !67
  store i32 %i.aha, ptr %i.agy, align 4, !tbaa !67
  %i.ahb = getelementptr inbounds nuw i8, ptr %.36391119.i, i64 16
  %i.ahc = getelementptr inbounds nuw i8, ptr %.191121.i, i64 16
  %i.ahd = load i32, ptr %i.ahc, align 4, !tbaa !67
  store i32 %i.ahd, ptr %i.ahb, align 4, !tbaa !67
  %i.ahe = getelementptr inbounds nuw i8, ptr %.36391119.i, i64 20
  %i.ahf = getelementptr inbounds nuw i8, ptr %.191121.i, i64 20
  %i.ahg = load i32, ptr %i.ahf, align 4, !tbaa !67
  store i32 %i.ahg, ptr %i.ahe, align 4, !tbaa !67
  %i.ahh = getelementptr inbounds nuw i8, ptr %.36391119.i, i64 24
  %i.ahi = getelementptr inbounds nuw i8, ptr %.191121.i, i64 24
  %i.ahj = load i32, ptr %i.ahi, align 4, !tbaa !67
  store i32 %i.ahj, ptr %i.ahh, align 4, !tbaa !67
  %i.ahk = getelementptr inbounds nuw i8, ptr %.36391119.i, i64 28
  %i.ahl = getelementptr inbounds nuw i8, ptr %.191121.i, i64 28
  %i.ahm = load i32, ptr %i.ahl, align 4, !tbaa !67
  store i32 %i.ahm, ptr %i.ahk, align 4, !tbaa !67
  %i.ahn = getelementptr inbounds nuw i8, ptr %.36391119.i, i64 32
  %i.aho = getelementptr inbounds nuw i8, ptr %.191121.i, i64 32 ; 2 uses
  %i.ahp = add nuw nsw i32 %.36351120.i, 8        ; 2 uses
  %exitcond1182.not.i.7 = icmp eq i32 %i.ahp, %.sroa.speculated114
  br i1 %exitcond1182.not.i.7, label %._crit_edge1123.i, label %.lr.ph1122.i, !llvm.loop !2037

._crit_edge1123.i:                                ; preds = %.lr.ph1122.i.prol.loopexit, %.lr.ph1122.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  %.19.lcssa.i = phi ptr [ %.18.lcssa.i, %.preheader.i ], [ %i.afy, %vec.epilog.middle.block ], [ %i.afl, %middle.block ], [ %.lcssa404.unr, %.lr.ph1122.i.prol.loopexit ], [ %i.aho, %.lr.ph1122.i ]
  %indvars.iv.next1184.i = add nsw i64 %indvars.iv1183.i, 1 ; 2 uses
  %exitcond1186.not.i = icmp eq i64 %indvars.iv.next1184.i, %i.cj
  br i1 %exitcond1186.not.i, label %_ZN4ncnnL24unpack_output_tile_int32ERKNS_3MatERS0_iiii.exit, label %bb.af, !llvm.loop !2038

.noexc:                                           ; preds = %.noexc.preheader, %_ZN4ncnn3MatD2Ev.exit46
  %i.ahq = phi i32 [ %i.ajx, %_ZN4ncnn3MatD2Ev.exit46 ], [ %.pre200, %.noexc.preheader ] ; 2 uses
  %i.ahr = phi i32 [ %i.ajz, %_ZN4ncnn3MatD2Ev.exit46 ], [ %i.cy, %.noexc.preheader ]
  %.0158 = phi i32 [ %i.ajy, %_ZN4ncnn3MatD2Ev.exit46 ], [ 0, %.noexc.preheader ] ; 4 uses
  %i.ahs = sub nsw i32 %i.ahr, %.0158
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ahq, i32 %i.ahs)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  %i.aht = load i32, ptr %3, align 4, !tbaa !67
  %i.ahu = sdiv i32 %i.be, %i.aht
  %i.ahv = load i32, ptr %i.ad, align 4, !tbaa !75, !noalias !2039 ; 2 uses
  %i.ahw = load ptr, ptr %10, align 8, !tbaa !18, !noalias !2039
  %i.ahx = load i64, ptr %i.ae, align 8, !tbaa !20, !noalias !2039
  %i.ahy = sext i32 %i.ahu to i64
  %i.ahz = mul i64 %i.ahx, %i.ahy
  %i.aia = load i64, ptr %i.af, align 8, !tbaa !65, !noalias !2039 ; 3 uses
  %i.aib = mul i64 %i.ahz, %i.aia
  %i.aic = getelementptr inbounds nuw i8, ptr %i.ahw, i64 %i.aib
  %i.aid = load i32, ptr %i.ag, align 8, !tbaa !66, !noalias !2039
  %i.aie = load ptr, ptr %i.ah, align 8, !tbaa !17, !noalias !2039
  %i.aif = sext i32 %i.ahv to i64                 ; 2 uses
  %i.aig = sdiv i32 %.0158, %i.ahq
  %i.aih = sext i32 %i.aig to i64                 ; 2 uses
  %i.aii = mul i64 %i.aia, %i.aif
  %i.aij = mul i64 %i.aii, %i.aih
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aic, i64 %i.aij
  store ptr %i.aik, ptr %14, align 8, !tbaa !18, !alias.scope !2042
  store ptr null, ptr %i.ai, align 8, !tbaa !11, !alias.scope !2042
  store i64 %i.aia, ptr %i.aj, align 8, !tbaa !65, !alias.scope !2042
  store i32 %i.aid, ptr %i.ak, align 8, !tbaa !66, !alias.scope !2042
  store ptr %i.aie, ptr %i.al, align 8, !tbaa !17, !alias.scope !2042
  %i.ail = insertelement <4 x i32> <i32 2, i32 poison, i32 1, i32 1>, i32 %i.ahv, i64 1
  store <4 x i32> %i.ail, ptr %i.am, align 8, !tbaa !67, !alias.scope !2042
  store i32 1, ptr %i.an, align 8, !tbaa !68, !alias.scope !2042
  store i64 %i.aif, ptr %i.ao, align 8, !tbaa !20, !alias.scope !2042
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #12
  %i.aim = load i32, ptr %7, align 4, !tbaa !67
  %i.ain = sdiv i32 %.044159, %i.aim
  %i.aio = load i32, ptr %i.ap, align 4, !tbaa !75, !noalias !2045 ; 2 uses
  %i.aip = load ptr, ptr %11, align 8, !tbaa !18, !noalias !2045
  %i.aiq = load i64, ptr %i.aq, align 8, !tbaa !20, !noalias !2045
  %i.air = sext i32 %i.ain to i64
  %i.ais = mul i64 %i.aiq, %i.air
  %i.ait = load i64, ptr %i.ar, align 8, !tbaa !65, !noalias !2045 ; 3 uses
  %i.aiu = mul i64 %i.ais, %i.ait
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aip, i64 %i.aiu
  %i.aiw = load i32, ptr %i.as, align 8, !tbaa !66, !noalias !2045
  %i.aix = load ptr, ptr %i.at, align 8, !tbaa !17, !noalias !2045
  %i.aiy = sext i32 %i.aio to i64                 ; 2 uses
  %i.aiz = mul i64 %i.ait, %i.aiy
  %i.aja = mul i64 %i.aiz, %i.aih
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aiv, i64 %i.aja
  store ptr %i.ajb, ptr %15, align 8, !tbaa !18, !alias.scope !2048
  store ptr null, ptr %i.au, align 8, !tbaa !11, !alias.scope !2048
  store i64 %i.ait, ptr %i.av, align 8, !tbaa !65, !alias.scope !2048
  store i32 %i.aiw, ptr %i.aw, align 8, !tbaa !66, !alias.scope !2048
  store ptr %i.aix, ptr %i.ax, align 8, !tbaa !17, !alias.scope !2048
  %i.ajc = insertelement <4 x i32> <i32 2, i32 poison, i32 1, i32 1>, i32 %i.aio, i64 1
  store <4 x i32> %i.ajc, ptr %i.ay, align 8, !tbaa !67, !alias.scope !2048
  store i32 1, ptr %i.az, align 8, !tbaa !68, !alias.scope !2048
  store i64 %i.aiy, ptr %i.ba, align 8, !tbaa !20, !alias.scope !2048
  invoke void @_ZN4ncnn20Gemm_x86_avx_utility28gemm_transB_packed_tile_int8ERKNS_3MatES3_RS1_iiiiii(ptr noundef nonnull align 8 dereferenceable(72) %14, ptr noundef nonnull align 8 dereferenceable(72) %15, ptr noundef nonnull align 8 dereferenceable(72) %13, i32 noundef %i.be, i32 noundef %.sroa.speculated118, i32 noundef %.044159, i32 noundef %.sroa.speculated114, i32 noundef %.0158, i32 noundef %.sroa.speculated)
          to label %_ZN4ncnnL40convolution_gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii.exit unwind label %.loopexit

_ZN4ncnnL40convolution_gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii.exit: ; preds = %.noexc
  %i.ajd = load ptr, ptr %i.au, align 8, !tbaa !11 ; 2 uses
  %.not.i55 = icmp eq ptr %i.ajd, null
  br i1 %.not.i55, label %_ZN4ncnn3MatD2Ev.exit47, label %bb.ag

bb.ag:                                            ; preds = %_ZN4ncnnL40convolution_gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii.exit
  %i.aje = atomicrmw add ptr %i.ajd, i32 -1 acq_rel, align 4
  %i.ajf = icmp eq i32 %i.aje, 1
  br i1 %i.ajf, label %bb.ah, label %_ZN4ncnn3MatD2Ev.exit47

bb.ah:                                            ; preds = %bb.ag
  %i.ajg = load ptr, ptr %i.ax, align 8, !tbaa !17 ; 3 uses
  %.not3.i56 = icmp eq ptr %i.ajg, null
  %i.ajh = load ptr, ptr %15, align 8, !tbaa !18  ; 3 uses
  br i1 %.not3.i56, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.aji = load ptr, ptr %i.ajg, align 8, !tbaa !9
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aji, i64 24
  %i.ajk = load ptr, ptr %i.ajj, align 8
  invoke void %i.ajk(ptr noundef nonnull align 8 dereferenceable(8) %i.ajg, ptr noundef %i.ajh)
          to label %_ZN4ncnn3MatD2Ev.exit47 unwind label %bb.al, !inline_history !19

bb.aj:                                            ; preds = %bb.ah
  %.not.i70 = icmp eq ptr %i.ajh, null
  br i1 %.not.i70, label %_ZN4ncnn3MatD2Ev.exit47, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @free(ptr noundef nonnull %i.ajh) #12
  br label %_ZN4ncnn3MatD2Ev.exit47

bb.al:                                            ; preds = %bb.ai
  %i.ajl = landingpad { ptr, i32 }
          catch ptr null
  %i.ajm = extractvalue { ptr, i32 } %i.ajl, 0
  call void @__clang_call_terminate(ptr %i.ajm) #32
  unreachable

_ZN4ncnn3MatD2Ev.exit47:                          ; preds = %bb.ag, %_ZN4ncnnL40convolution_gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii.exit, %bb.ai, %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  %i.ajn = load ptr, ptr %i.ai, align 8, !tbaa !11 ; 2 uses
  %.not.i59 = icmp eq ptr %i.ajn, null
  br i1 %.not.i59, label %_ZN4ncnn3MatD2Ev.exit46, label %bb.am

bb.am:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit47
  %i.ajo = atomicrmw add ptr %i.ajn, i32 -1 acq_rel, align 4
  %i.ajp = icmp eq i32 %i.ajo, 1
  br i1 %i.ajp, label %bb.an, label %_ZN4ncnn3MatD2Ev.exit46

bb.an:                                            ; preds = %bb.am
  %i.ajq = load ptr, ptr %i.al, align 8, !tbaa !17 ; 3 uses
  %.not3.i60 = icmp eq ptr %i.ajq, null
  %i.ajr = load ptr, ptr %14, align 8, !tbaa !18  ; 3 uses
  br i1 %.not3.i60, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ajs = load ptr, ptr %i.ajq, align 8, !tbaa !9
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajs, i64 24
  %i.aju = load ptr, ptr %i.ajt, align 8
  invoke void %i.aju(ptr noundef nonnull align 8 dereferenceable(8) %i.ajq, ptr noundef %i.ajr)
          to label %_ZN4ncnn3MatD2Ev.exit46 unwind label %bb.ar, !inline_history !19

bb.ap:                                            ; preds = %bb.an
  %.not.i68 = icmp eq ptr %i.ajr, null
  br i1 %.not.i68, label %_ZN4ncnn3MatD2Ev.exit46, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @free(ptr noundef nonnull %i.ajr) #12
  br label %_ZN4ncnn3MatD2Ev.exit46

bb.ar:                                            ; preds = %bb.ao
  %i.ajv = landingpad { ptr, i32 }
          catch ptr null
  %i.ajw = extractvalue { ptr, i32 } %i.ajv, 0
  call void @__clang_call_terminate(ptr %i.ajw) #32
  unreachable

_ZN4ncnn3MatD2Ev.exit46:                          ; preds = %bb.am, %_ZN4ncnn3MatD2Ev.exit47, %bb.ao, %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  %i.ajx = load i32, ptr %9, align 4, !tbaa !67   ; 2 uses
  %i.ajy = add nsw i32 %i.ajx, %.0158             ; 2 uses
  %i.ajz = load i32, ptr %8, align 4, !tbaa !67   ; 2 uses
  %i.aka = icmp slt i32 %i.ajy, %i.ajz
  br i1 %i.aka, label %.noexc, label %._crit_edge, !llvm.loop !2051

_ZN4ncnnL24unpack_output_tile_int32ERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge1123.i, %.preheader975.i, %bb.m
  %i.akb = load i32, ptr %7, align 4, !tbaa !67   ; 2 uses
  %i.akc = add nsw i32 %i.akb, %.044159           ; 2 uses
  %i.akd = load i32, ptr %6, align 4, !tbaa !67   ; 2 uses
  %i.ake = icmp slt i32 %i.akc, %i.akd
  br i1 %i.ake, label %bb.l, label %._crit_edge160, !llvm.loop !2052

._crit_edge165:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.as

bb.as:                                            ; preds = %._crit_edge165, %bb.a
  ret void

.loopexit:                                        ; preds = %.noexc
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.m, %._crit_edge
  %lpad.loopexit122 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.c
  %lpad.loopexit.split-lp123 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit122, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp123, %.loopexit.split-lp.loopexit.split-lp ]
  %i.akf = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.akf) #32
  unreachable
}

declare void @_ZN4ncnn46convolution_im2col_input_tile_int8_avxvnniint8ERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn42convolution_im2col_input_tile_int8_avxvnniERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn39convolution_im2col_input_tile_int8_avx2ERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #25

end_hunk_15
begin_hunk_16_@_ZN4ncnnL46convolution_im2col_gemm_transform_kernel_bf16sERKNS_3MatERS0_iiiiRKNS_6OptionE.omp_outlined:bb.a
  %i.ru = load ptr, ptr %8, align 8, !tbaa !18
  %i.rv = add nsw i64 %indvars.iv253.i, %i.z
  %i.rw = mul nsw i64 %i.rv, %i.ol
  %i.rx = getelementptr inbounds [4 x i8], ptr %i.ru, i64 %i.rw
  %i.ry = getelementptr inbounds [4 x i8], ptr %i.rx, i64 %i.oh ; 3 uses
  br i1 %i.oi, label %.lr.ph180.i.preheader, label %.preheader58.i

.lr.ph180.i.preheader:                            ; preds = %bb.f
  br i1 %i.op, label %.lr.ph180.i.epil.preheader, label %.lr.ph180.i

.preheader58.i.loopexit.unr-lcssa:                ; preds = %.lr.ph180.i
  br i1 %lcmp.mod.not.not, label %.lr.ph180.i.epil.preheader, label %.preheader58.i

.lr.ph180.i.epil.preheader:                       ; preds = %.preheader58.i.loopexit.unr-lcssa, %.lr.ph180.i.preheader
  %.0255177.i.epil.init = phi ptr [ %i.ry, %.lr.ph180.i.preheader ], [ %i.sy, %.preheader58.i.loopexit.unr-lcssa ] ; 2 uses
  %.12176.i.epil.init = phi ptr [ %.11198.i, %.lr.ph180.i.preheader ], [ %i.sx, %.preheader58.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod314)
  %i.rz = load <8 x i32>, ptr %.0255177.i.epil.init, align 1, !tbaa !316 ; 2 uses
  %i.sa = shufflevector <8 x i32> %i.rz, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.sb = shufflevector <8 x i32> %i.rz, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.sc = lshr <4 x i32> %i.sa, splat (i32 16)
  %i.sd = lshr <4 x i32> %i.sb, splat (i32 16)
  %i.se = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.sc, <4 x i32> %i.sd)
  store <8 x i16> %i.se, ptr %.12176.i.epil.init, align 1, !tbaa !316
  %i.sf = getelementptr inbounds nuw i8, ptr %.12176.i.epil.init, i64 16
  %i.sg = getelementptr inbounds nuw i8, ptr %.0255177.i.epil.init, i64 32
  br label %.preheader58.i

.preheader58.i:                                   ; preds = %.lr.ph180.i.epil.preheader, %.preheader58.i.loopexit.unr-lcssa, %bb.f
  %.12.lcssa.i = phi ptr [ %.11198.i, %bb.f ], [ %i.sx, %.preheader58.i.loopexit.unr-lcssa ], [ %i.sf, %.lr.ph180.i.epil.preheader ] ; 2 uses
  %.0255.lcssa.i = phi ptr [ %i.ry, %bb.f ], [ %i.sy, %.preheader58.i.loopexit.unr-lcssa ], [ %i.sg, %.lr.ph180.i.epil.preheader ] ; 2 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.f ], [ %i.oj, %.preheader58.i.loopexit.unr-lcssa ], [ %i.oj, %.lr.ph180.i.epil.preheader ] ; 3 uses
  %i.sh = or disjoint i32 %.0.lcssa.i, 3
  %i.si = icmp slt i32 %i.sh, %.sroa.speculated
  br i1 %i.si, label %.lr.ph187.i, label %.preheader.i

.lr.ph180.i:                                      ; preds = %.lr.ph180.i.preheader, %.lr.ph180.i
  %.0255177.i = phi ptr [ %i.sy, %.lr.ph180.i ], [ %i.ry, %.lr.ph180.i.preheader ] ; 3 uses
  %.12176.i = phi ptr [ %i.sx, %.lr.ph180.i ], [ %.11198.i, %.lr.ph180.i.preheader ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph180.i ], [ 0, %.lr.ph180.i.preheader ]
  %i.sj = load <8 x i32>, ptr %.0255177.i, align 1, !tbaa !316 ; 2 uses
  %i.sk = shufflevector <8 x i32> %i.sj, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.sl = shufflevector <8 x i32> %i.sj, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.sm = lshr <4 x i32> %i.sk, splat (i32 16)
  %i.sn = lshr <4 x i32> %i.sl, splat (i32 16)
  %i.so = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.sm, <4 x i32> %i.sn)
  store <8 x i16> %i.so, ptr %.12176.i, align 1, !tbaa !316
  %i.sp = getelementptr inbounds nuw i8, ptr %.12176.i, i64 16
  %i.sq = getelementptr inbounds nuw i8, ptr %.0255177.i, i64 32
  %i.sr = load <8 x i32>, ptr %i.sq, align 1, !tbaa !316 ; 2 uses
  %i.ss = shufflevector <8 x i32> %i.sr, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.st = shufflevector <8 x i32> %i.sr, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.su = lshr <4 x i32> %i.ss, splat (i32 16)
  %i.sv = lshr <4 x i32> %i.st, splat (i32 16)
  %i.sw = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.su, <4 x i32> %i.sv)
  store <8 x i16> %i.sw, ptr %i.sp, align 1, !tbaa !316
  %i.sx = getelementptr inbounds nuw i8, ptr %.12176.i, i64 32 ; 3 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %.0255177.i, i64 64 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader58.i.loopexit.unr-lcssa, label %.lr.ph180.i, !llvm.loop !2157

.preheader.i:                                     ; preds = %.lr.ph187.i, %.preheader58.i
  %.13.lcssa.i = phi ptr [ %.12.lcssa.i, %.preheader58.i ], [ %i.us, %.lr.ph187.i ] ; 6 uses
  %.1256.lcssa.i = phi ptr [ %.0255.lcssa.i, %.preheader58.i ], [ %i.ut, %.lr.ph187.i ] ; 5 uses
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader58.i ], [ %i.uu, %.lr.ph187.i ] ; 5 uses
  %i.sz = icmp slt i32 %.1.lcssa.i, %.sroa.speculated
  br i1 %i.sz, label %iter.check, label %._crit_edge195.i

iter.check:                                       ; preds = %.preheader.i
  %i.ta = xor i32 %.1.lcssa.i, -1
  %i.tb = add i32 %.sroa.speculated, %i.ta        ; 3 uses
  %i.tc = zext i32 %i.tb to i64
  %i.td = add nuw nsw i64 %i.tc, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.tb, 7
  br i1 %min.iters.check, label %.lr.ph194.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check216 = icmp ult i32 %i.tb, 31
  br i1 %min.iters.check216, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.te = and i64 %i.td, 24
  %n.vec = and i64 %i.td, 8589934560              ; 6 uses
  %i.tf = trunc i64 %n.vec to i32
  %i.tg = add i32 %.1.lcssa.i, %i.tf
  %i.th = shl nuw nsw i64 %n.vec, 2
  %i.ti = getelementptr i8, ptr %.1256.lcssa.i, i64 %i.th
  %i.tj = shl nuw nsw i64 %n.vec, 1
  %i.tk = getelementptr i8, ptr %.13.lcssa.i, i64 %i.tj ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.tl = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.1256.lcssa.i, i64 %i.tl ; 4 uses
  %i.tm = shl i64 %index, 1
  %next.gep217 = getelementptr i8, ptr %.13.lcssa.i, i64 %i.tm ; 4 uses
  %i.tn = getelementptr i8, ptr %next.gep, i64 32
  %i.to = getelementptr i8, ptr %next.gep, i64 64
  %i.tp = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <8 x i32>, ptr %next.gep, align 4, !tbaa !39
  %wide.load218 = load <8 x i32>, ptr %i.tn, align 4, !tbaa !39
  %wide.load219 = load <8 x i32>, ptr %i.to, align 4, !tbaa !39
  %wide.load220 = load <8 x i32>, ptr %i.tp, align 4, !tbaa !39
  %i.tq = lshr <8 x i32> %wide.load, splat (i32 16)
  %i.tr = lshr <8 x i32> %wide.load218, splat (i32 16)
  %i.ts = lshr <8 x i32> %wide.load219, splat (i32 16)
  %i.tt = lshr <8 x i32> %wide.load220, splat (i32 16)
  %i.tu = trunc nuw <8 x i32> %i.tq to <8 x i16>
  %i.tv = trunc nuw <8 x i32> %i.tr to <8 x i16>
  %i.tw = trunc nuw <8 x i32> %i.ts to <8 x i16>
  %i.tx = trunc nuw <8 x i32> %i.tt to <8 x i16>
  %i.ty = getelementptr i8, ptr %next.gep217, i64 16
  %i.tz = getelementptr i8, ptr %next.gep217, i64 32
  %i.ua = getelementptr i8, ptr %next.gep217, i64 48
  store <8 x i16> %i.tu, ptr %next.gep217, align 2, !tbaa !573
  store <8 x i16> %i.tv, ptr %i.ty, align 2, !tbaa !573
  store <8 x i16> %i.tw, ptr %i.tz, align 2, !tbaa !573
  store <8 x i16> %i.tx, ptr %i.ua, align 2, !tbaa !573
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ub = icmp eq i64 %index.next, %n.vec
  br i1 %i.ub, label %middle.block, label %vector.body, !llvm.loop !2158

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.td, %n.vec
  br i1 %cmp.n, label %._crit_edge195.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.te, 0
  br i1 %min.epilog.iters.check, label %.lr.ph194.i.preheader, label %vec.epilog.ph, !prof !280

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec223 = and i64 %i.td, 8589934584           ; 5 uses
  %i.uc = trunc i64 %n.vec223 to i32
  %i.ud = add i32 %.1.lcssa.i, %i.uc
  %i.ue = shl nuw nsw i64 %n.vec223, 2
  %i.uf = getelementptr i8, ptr %.1256.lcssa.i, i64 %i.ue
  %i.ug = shl nuw nsw i64 %n.vec223, 1
  %i.uh = getelementptr i8, ptr %.13.lcssa.i, i64 %i.ug ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index224 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next228, %vec.epilog.vector.body ] ; 3 uses
  %i.ui = shl i64 %index224, 2
  %next.gep225 = getelementptr i8, ptr %.1256.lcssa.i, i64 %i.ui
  %i.uj = shl i64 %index224, 1
  %next.gep226 = getelementptr i8, ptr %.13.lcssa.i, i64 %i.uj
  %wide.load227 = load <8 x i32>, ptr %next.gep225, align 4, !tbaa !39
  %i.uk = lshr <8 x i32> %wide.load227, splat (i32 16)
  %i.ul = trunc nuw <8 x i32> %i.uk to <8 x i16>
  store <8 x i16> %i.ul, ptr %next.gep226, align 2, !tbaa !573
  %index.next228 = add nuw i64 %index224, 8       ; 2 uses
  %i.um = icmp eq i64 %index.next228, %n.vec223
  br i1 %i.um, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2159

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n229 = icmp eq i64 %i.td, %n.vec223
  br i1 %cmp.n229, label %._crit_edge195.i, label %.lr.ph194.i.preheader

.lr.ph194.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2193.i.ph = phi i32 [ %.1.lcssa.i, %iter.check ], [ %i.tg, %vec.epilog.iter.check ], [ %i.ud, %vec.epilog.middle.block ]
  %.2257192.i.ph = phi ptr [ %.1256.lcssa.i, %iter.check ], [ %i.ti, %vec.epilog.iter.check ], [ %i.uf, %vec.epilog.middle.block ]
  %.14191.i.ph = phi ptr [ %.13.lcssa.i, %iter.check ], [ %i.tk, %vec.epilog.iter.check ], [ %i.uh, %vec.epilog.middle.block ]
  br label %.lr.ph194.i

.lr.ph187.i:                                      ; preds = %.preheader58.i, %.lr.ph187.i
  %.1186.i = phi i32 [ %i.uu, %.lr.ph187.i ], [ %.0.lcssa.i, %.preheader58.i ]
  %.1256185.i = phi ptr [ %i.ut, %.lr.ph187.i ], [ %.0255.lcssa.i, %.preheader58.i ] ; 2 uses
  %.13184.i = phi ptr [ %i.us, %.lr.ph187.i ], [ %.12.lcssa.i, %.preheader58.i ] ; 2 uses
  %i.un = load <4 x i32>, ptr %.1256185.i, align 1, !tbaa !316
  %i.uo = lshr <4 x i32> %i.un, splat (i32 16)
  %i.up = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.uo, <4 x i32> poison)
  %i.uq = bitcast <8 x i16> %i.up to <2 x i64>
  %i.ur = extractelement <2 x i64> %i.uq, i64 0
  store i64 %i.ur, ptr %.13184.i, align 1, !tbaa !316
  %i.us = getelementptr inbounds nuw i8, ptr %.13184.i, i64 8 ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %.1256185.i, i64 16 ; 2 uses
  %i.uu = add nuw nsw i32 %.1186.i, 4             ; 3 uses
  %i.uv = or disjoint i32 %i.uu, 3
  %i.uw = icmp slt i32 %i.uv, %.sroa.speculated
  br i1 %i.uw, label %.lr.ph187.i, label %.preheader.i, !llvm.loop !2160

.lr.ph194.i:                                      ; preds = %.lr.ph194.i.preheader, %.lr.ph194.i
  %.2193.i = phi i32 [ %i.vc, %.lr.ph194.i ], [ %.2193.i.ph, %.lr.ph194.i.preheader ]
  %.2257192.i = phi ptr [ %i.vb, %.lr.ph194.i ], [ %.2257192.i.ph, %.lr.ph194.i.preheader ] ; 2 uses
  %.14191.i = phi ptr [ %i.va, %.lr.ph194.i ], [ %.14191.i.ph, %.lr.ph194.i.preheader ] ; 2 uses
  %i.ux = load i32, ptr %.2257192.i, align 4, !tbaa !39
  %i.uy = lshr i32 %i.ux, 16
  %i.uz = trunc nuw i32 %i.uy to i16
  store i16 %i.uz, ptr %.14191.i, align 2, !tbaa !573
  %i.va = getelementptr inbounds nuw i8, ptr %.14191.i, i64 2 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %.2257192.i, i64 4
  %i.vc = add nuw nsw i32 %.2193.i, 1             ; 2 uses
  %exitcond252.not.i = icmp eq i32 %i.vc, %.sroa.speculated
  br i1 %exitcond252.not.i, label %._crit_edge195.i, label %.lr.ph194.i, !llvm.loop !2161

._crit_edge195.i:                                 ; preds = %.lr.ph194.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  %.14.lcssa.i = phi ptr [ %.13.lcssa.i, %.preheader.i ], [ %i.uh, %vec.epilog.middle.block ], [ %i.tk, %middle.block ], [ %i.va, %.lr.ph194.i ]
  %indvars.iv.next254.i = add nsw i64 %indvars.iv253.i, 1 ; 2 uses
  %exitcond256.not.i = icmp eq i64 %indvars.iv.next254.i, %i.aa
  br i1 %exitcond256.not.i, label %_ZN4ncnn3MatD2Ev.exit, label %bb.f, !llvm.loop !2162

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge195.i, %.preheader59.i
  %i.vd = load i32, ptr %6, align 4, !tbaa !67    ; 2 uses
  %i.ve = add nsw i32 %i.vd, %.095                ; 2 uses
  %i.vf = load i32, ptr %5, align 4, !tbaa !67    ; 3 uses
  %i.vg = icmp slt i32 %i.ve, %i.vf
  br i1 %i.vg, label %_ZN4ncnn3MatD2Ev.exit29, label %._crit_edge, !llvm.loop !2163

._crit_edge99:                                    ; preds = %._crit_edge, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge99, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32>, <4 x i32>) #20

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 -100, 1) i32 @_ZN4ncnnL26conv3x3s1_winograd23_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %7) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 2 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %i.g = alloca i32, align 4                      ; 7 uses
  %i.h = alloca i32, align 4                      ; 7 uses
  %i.i = alloca i32, align 4                      ; 10 uses
  %i.j = alloca i32, align 4                      ; 9 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 6 uses
  %8 = alloca %"class.ncnn::Mat", align 8         ; 19 uses
  %i.m = alloca i32, align 4                      ; 7 uses
  %9 = alloca %"class.ncnn::Mat", align 8         ; 15 uses
  %10 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 14 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %i.n = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  store i32 %5, ptr %i.d, align 4, !tbaa !67
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.p = load <2 x i32>, ptr %i.o, align 4, !tbaa !67
  %i.q = add nsw <2 x i32> %i.p, splat (i32 1)
  %i.r = sdiv <2 x i32> %i.q, splat (i32 2)       ; 2 uses
  %i.s = extractelement <2 x i32> %i.r, i64 0
  %i.t = extractelement <2 x i32> %i.r, i64 1
  %i.u = mul nsw i32 %i.t, %i.s                   ; 3 uses
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
  %i.ae = mul nsw i32 %i.ad, %i.ab                ; 3 uses
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
  %i.aj = load i32, ptr %i.i, align 4, !tbaa !67  ; 4 uses
  %i.ak = add i32 %i.u, -1
  %i.al = add i32 %i.ak, %i.aj
  %i.am = sdiv i32 %i.al, %i.aj                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #12
  %i.an = load i32, ptr %i.j, align 4, !tbaa !67  ; 4 uses
  %i.ao = add i32 %i.ae, -1
  %i.ap = add i32 %i.ao, %i.an
  %i.aq = sdiv i32 %i.ap, %i.an                   ; 3 uses
  store i32 %i.aq, ptr %i.l, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.ar = mul nsw i32 %i.an, %i.aj
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !291
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 44 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 3 uses
  store i64 0, ptr %i.ba, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %8, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ax, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %8, i32 noundef %i.ar, i32 noundef 16, i32 noundef %i.aq, i32 noundef %i.am, i64 noundef 4, ptr noundef %i.at)
  %i.bb = load ptr, ptr %8, align 8, !tbaa !18
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %_ZNK4ncnn3Mat5emptyEv.exit171.thread, label %_ZNK4ncnn3Mat5emptyEv.exit171

_ZNK4ncnn3Mat5emptyEv.exit171:                    ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.be = load i64, ptr %i.ba, align 8, !tbaa !20
  %i.bf = load i32, ptr %i.bd, align 8, !tbaa !68
  %i.bg = sext i32 %i.bf to i64
  %i.bh = mul i64 %i.be, %i.bg
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %_ZNK4ncnn3Mat5emptyEv.exit171.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #12
  %i.bj = mul nsw i32 %i.aq, %i.am                ; 2 uses
  store i32 %i.bj, ptr %i.m, align 4, !tbaa !67
  %i.bk = icmp sgt i32 %4, 1
  %i.bl = icmp slt i32 %i.bj, %4
  %or.cond = select i1 %i.bk, i1 %i.bl, i1 false
  %i.bm = shl nsw i32 %i.aj, 4
  %i.bn = mul nsw i32 %i.bm, %i.an                ; 2 uses
  br i1 %or.cond, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %i.bo = load ptr, ptr %i.as, align 8, !tbaa !291
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  store i64 0, ptr %i.bs, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %9, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bq, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %9, i32 noundef %i.bn, i64 noundef 4, ptr noundef %i.bo)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit unwind label %bb.d

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit:            ; preds = %bb.c
  %i.bt = load ptr, ptr %9, align 8, !tbaa !18
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit170

_ZNK4ncnn3Mat5emptyEv.exit170:                    ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit
  %i.bv = load i64, ptr %i.bs, align 8, !tbaa !20
  %i.bw = load i32, ptr %i.br, align 8, !tbaa !68
  %i.bx = sext i32 %i.bw to i64
  %i.by = mul i64 %i.bv, %i.bx
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %.critedge, label %.preheader

.preheader:                                       ; preds = %_ZNK4ncnn3Mat5emptyEv.exit170
  %i.ca = load i32, ptr %i.m, align 4, !tbaa !67
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %_ZN4ncnn3MatD2Ev.exit92.lr.ph, label %._crit_edge

_ZN4ncnn3MatD2Ev.exit92.lr.ph:                    ; preds = %.preheader
  %i.cc = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.ch = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 64
  br label %_ZN4ncnn3MatD2Ev.exit92

bb.d:                                             ; preds = %bb.c
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %bb.av

_ZN4ncnn3MatD2Ev.exit92:                          ; preds = %_ZN4ncnn3MatD2Ev.exit92.lr.ph, %_ZN4ncnn3MatD2Ev.exit91
  %.0194 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit92.lr.ph ], [ %i.ed, %_ZN4ncnn3MatD2Ev.exit91 ] ; 3 uses
  %i.ck = load i32, ptr %i.l, align 4, !tbaa !67  ; 2 uses
  %i.cl = sdiv i32 %.0194, %i.ck
  %i.cm = srem i32 %.0194, %i.ck
  %i.cn = load i32, ptr %i.i, align 4, !tbaa !67  ; 2 uses
  %i.co = mul nsw i32 %i.cn, %i.cl                ; 3 uses
  %i.cp = load i32, ptr %i.j, align 4, !tbaa !67  ; 2 uses
  %i.cq = mul nsw i32 %i.cp, %i.cm                ; 3 uses
  %i.cr = load i32, ptr %i.f, align 4, !tbaa !67
  %i.cs = sub nsw i32 %i.cr, %i.co
  %.sroa.speculated191 = call i32 @llvm.smin.i32(i32 %i.cn, i32 %i.cs) ; 2 uses
  %i.ct = load i32, ptr %i.g, align 4, !tbaa !67
  %i.cu = sub nsw i32 %i.ct, %i.cq
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.cp, i32 %i.cu) ; 2 uses
  call fastcc void @_ZN4ncnnL47conv3x3s1_winograd23_transform_input_tile_bf16sERKNS_3MatERS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %9, i32 noundef %i.co, i32 noundef %.sroa.speculated191, i32 noundef %i.cq, i32 noundef %.sroa.speculated, i32 noundef %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %i.cv = load i32, ptr %i.i, align 4, !tbaa !67
  %i.cw = sdiv i32 %i.co, %i.cv
  %i.cx = load ptr, ptr %8, align 8, !tbaa !18, !noalias !2164
  %i.cy = load i64, ptr %i.ba, align 8, !tbaa !20, !noalias !2164
  %i.cz = sext i32 %i.cw to i64
  %i.da = mul i64 %i.cy, %i.cz
end_hunk_16
begin_hunk_17_@_ZN4ncnnL26conv3x3s1_winograd23_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined.16:bb.a
  %i.bfk = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bfj, <2 x float> splat (float f0xC2B0C0A5))
  %i.bfl = fneg fast <2 x float> %i.bfk
  %i.bfm = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.bfl)
  %i.bfn = fadd fast <2 x float> %i.bfm, splat (float 1.000000e+00)
  %i.bfo = fdiv fast <2 x float> splat (float 1.000000e+00), %i.bfn
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread749.us.i: ; preds = %bb.bf
  %i.bfp = load ptr, ptr %15, align 8, !tbaa !18  ; 2 uses
  %i.bfq = load float, ptr %i.bfp, align 4, !tbaa !39 ; 2 uses
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.bfp, i64 4
  %i.bfs = load float, ptr %i.bfr, align 4, !tbaa !39 ; 4 uses
  %.0605.us.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.bdx, float %i.bfq) ; 2 uses
  %i.bft = fcmp fast ogt float %.0605.us.i, %i.bfs
  %.1606751.us.i = select i1 %i.bft, float %i.bfs, float %.0605.us.i
  %.0607.us.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.bdy, float %i.bfq) ; 2 uses
  %i.bfu = fcmp fast ogt float %.0607.us.i, %i.bfs
  %i.bfv = insertelement <2 x float> poison, float %.1606751.us.i, i64 0
  %i.bfw = insertelement <2 x float> %i.bfv, float %.0607.us.i, i64 1 ; 2 uses
  br i1 %i.bfu, label %bb.bl, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i

bb.bl:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread749.us.i
  %i.bfx = insertelement <2 x float> %i.bfw, float %i.bfs, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread755.us.i: ; preds = %bb.bf
  %i.bfy = load ptr, ptr %15, align 8, !tbaa !18
  %i.bfz = load float, ptr %i.bfy, align 4, !tbaa !39
  %i.bga = fcmp fast ogt <2 x float> %i.bea, zeroinitializer
  %i.bgb = insertelement <2 x float> poison, float %i.bfz, i64 0
  %i.bgc = shufflevector <2 x float> %i.bgb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bgd = select <2 x i1> %i.bga, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bgc
  %i.bge = fmul fast <2 x float> %i.bgd, %i.bea
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread752.us.i: ; preds = %bb.bf
  %i.bgf = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bea, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i:      ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread752.us.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread755.us.i, %bb.bl, %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread749.us.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread758.us.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread761.us.i, %bb.bk, %bb.bj, %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread.us.i, %bb.bf
  %i.bgg = phi <2 x float> [ %i.bep, %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread.us.i ], [ %i.bgf, %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread752.us.i ], [ %i.bge, %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread755.us.i ], [ %i.bfx, %bb.bl ], [ %i.bfw, %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread749.us.i ], [ %i.bfo, %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread758.us.i ], [ %i.bfi, %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread761.us.i ], [ %i.bex, %bb.bk ], [ %i.bet, %bb.bj ], [ %i.bea, %bb.bf ] ; 2 uses
  %i.bgh = bitcast <2 x float> %i.bgg to <4 x i16>
  %i.bgi = extractelement <4 x i16> %i.bgh, i64 1
  store i16 %i.bgi, ptr %i.bdc, align 2, !tbaa !573
  br i1 %i.bde, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i
  %i.bgj = bitcast <2 x float> %i.bgg to <4 x i16>
  %i.bgk = extractelement <4 x i16> %i.bgj, i64 3
  %i.bgl = getelementptr inbounds nuw i8, ptr %i.bdc, i64 2
  store i16 %i.bgk, ptr %i.bgl, align 2, !tbaa !573
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i
  %i.bgm = getelementptr inbounds [2 x i8], ptr %i.bdc, i64 %i.bbb
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %_ZN4ncnn3MatD2Ev.exit.us.i
  %.1.us.i = phi ptr [ %i.bdc, %_ZN4ncnn3MatD2Ev.exit.us.i ], [ %i.bgm, %bb.bn ] ; 2 uses
  %i.bgn = or disjoint i32 %i.bcx, 1
  %.not505.us.1.i = icmp slt i32 %i.bgn, %i.co
  br i1 %.not505.us.1.i, label %bb.bp, label %bb.bx

bb.bp:                                            ; preds = %bb.bo
  %i.bgo = fadd fast float %i.bcb, %i.bbk
  %i.bgp = fsub fast float %i.bgo, %i.bcc
  %i.bgq = fadd fast float %i.bgp, %i.bcd         ; 2 uses
  %i.bgr = fsub fast float %i.bgq, %i.bcl
  %i.bgs = fadd fast float %i.bcr, %i.bgr
  %i.bgt = fadd fast float %i.bbx, %i.bgq
  %i.bgu = fadd fast float %i.bgt, %i.bcl         ; 8 uses
  %i.bgv = fadd fast float %i.bgs, %i.bcs         ; 7 uses
  %i.bgw = insertelement <2 x float> poison, float %i.bgu, i64 0
  %i.bgx = insertelement <2 x float> %i.bgw, float %i.bgv, i64 1 ; 7 uses
  switch i32 %i.cm, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.1.i [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread752.us.1.i
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread755.us.1.i
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread749.us.1.i
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread758.us.1.i
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread761.us.1.i
    i32 6, label %bb.bq
  ]

bb.bq:                                            ; preds = %bb.bp
  %i.bgy = load ptr, ptr %15, align 8, !tbaa !18  ; 2 uses
  %i.bgz = load float, ptr %i.bgy, align 4, !tbaa !39 ; 5 uses
  %i.bha = getelementptr inbounds nuw i8, ptr %i.bgy, i64 4
  %i.bhb = load float, ptr %i.bha, align 4, !tbaa !39 ; 3 uses
  %i.bhc = fneg fast float %i.bhb
  %i.bhd = fdiv fast float %i.bhc, %i.bgz         ; 4 uses
  %i.bhe = fcmp fast olt float %i.bgu, %i.bhd
  br i1 %i.bhe, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread.us.1.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.bhf = fdiv fast float 1.000000e+00, %i.bgz
  %i.bhg = fadd fast float %i.bhd, %i.bhf
  %i.bhh = fcmp fast ogt float %i.bgu, %i.bhg
  br i1 %i.bhh, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread.us.1.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.bhi = fmul fast float %i.bgz, %i.bgu
  %i.bhj = fadd fast float %i.bhi, %i.bhb
  %i.bhk = fmul fast float %i.bhj, %i.bgu
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread.us.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread.us.1.i: ; preds = %bb.bs, %bb.br, %bb.bq
  %.1606745.us.1.i = phi float [ %i.bhk, %bb.bs ], [ 0.000000e+00, %bb.bq ], [ %i.bgu, %bb.br ] ; 2 uses
  %i.bhl = fcmp fast olt float %i.bgv, %i.bhd
  %i.bhm = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.1606745.us.1.i, i64 0 ; 2 uses
  br i1 %i.bhl, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.1.i, label %bb.bt

bb.bt:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread.us.1.i
  %i.bhn = fdiv fast float 1.000000e+00, %i.bgz
  %i.bho = fadd fast float %i.bhd, %i.bhn
  %i.bhp = fcmp fast ogt float %i.bgv, %i.bho
  %i.bhq = insertelement <2 x float> %i.bgx, float %.1606745.us.1.i, i64 0
  br i1 %i.bhp, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.1.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.bhr = fmul fast float %i.bgz, %i.bgv
  %i.bhs = fadd fast float %i.bhr, %i.bhb
  %i.bht = fmul fast float %i.bhs, %i.bgv
  %i.bhu = insertelement <2 x float> %i.bhm, float %i.bht, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread761.us.1.i: ; preds = %bb.bp
  %i.bhv = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.bgu)
  %i.bhw = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.bgv)
  %i.bhx = fadd fast float %i.bhw, 1.000000e+00
  %i.bhy = fadd fast float %i.bhv, 1.000000e+00
  %i.bhz = call fast float @llvm.log.f32(float %i.bhx)
  %i.bia = call fast float @llvm.log.f32(float %i.bhy)
  %i.bib = call fast float @llvm.tanh.f32(float %i.bhz)
  %i.bic = call fast float @llvm.tanh.f32(float %i.bia)
  %i.bid = insertelement <2 x float> poison, float %i.bic, i64 0
  %i.bie = insertelement <2 x float> %i.bid, float %i.bib, i64 1
  %i.bif = fmul fast <2 x float> %i.bie, %i.bgx
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread758.us.1.i: ; preds = %bb.bp
  %i.big = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bgx, <2 x float> splat (float f0x42B0C0A5))
  %i.bih = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.big, <2 x float> splat (float f0xC2B0C0A5))
  %i.bii = fneg fast <2 x float> %i.bih
  %i.bij = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.bii)
  %i.bik = fadd fast <2 x float> %i.bij, splat (float 1.000000e+00)
  %i.bil = fdiv fast <2 x float> splat (float 1.000000e+00), %i.bik
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread749.us.1.i: ; preds = %bb.bp
  %i.bim = load ptr, ptr %15, align 8, !tbaa !18  ; 2 uses
  %i.bin = load float, ptr %i.bim, align 4, !tbaa !39 ; 2 uses
  %i.bio = getelementptr inbounds nuw i8, ptr %i.bim, i64 4
  %i.bip = load float, ptr %i.bio, align 4, !tbaa !39 ; 4 uses
  %.0605.us.1.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.bgu, float %i.bin) ; 2 uses
  %i.biq = fcmp fast ogt float %.0605.us.1.i, %i.bip
  %.1606751.us.1.i = select i1 %i.biq, float %i.bip, float %.0605.us.1.i
  %.0607.us.1.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.bgv, float %i.bin) ; 2 uses
  %i.bir = fcmp fast ogt float %.0607.us.1.i, %i.bip
  %i.bis = insertelement <2 x float> poison, float %.1606751.us.1.i, i64 0
  %i.bit = insertelement <2 x float> %i.bis, float %.0607.us.1.i, i64 1 ; 2 uses
  br i1 %i.bir, label %bb.bv, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.1.i

bb.bv:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread749.us.1.i
  %i.biu = insertelement <2 x float> %i.bit, float %i.bip, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread755.us.1.i: ; preds = %bb.bp
  %i.biv = load ptr, ptr %15, align 8, !tbaa !18
  %i.biw = load float, ptr %i.biv, align 4, !tbaa !39
  %i.bix = fcmp fast ogt <2 x float> %i.bgx, zeroinitializer
  %i.biy = insertelement <2 x float> poison, float %i.biw, i64 0
  %i.biz = shufflevector <2 x float> %i.biy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bja = select <2 x i1> %i.bix, <2 x float> splat (float 1.000000e+00), <2 x float> %i.biz
  %i.bjb = fmul fast <2 x float> %i.bja, %i.bgx
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread752.us.1.i: ; preds = %bb.bp
  %i.bjc = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bgx, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.1.i:    ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread752.us.1.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread755.us.1.i, %bb.bv, %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread749.us.1.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread758.us.1.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread761.us.1.i, %bb.bu, %bb.bt, %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread.us.1.i, %bb.bp
  %i.bjd = phi <2 x float> [ %i.bhm, %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread.us.1.i ], [ %i.bjc, %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread752.us.1.i ], [ %i.bjb, %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread755.us.1.i ], [ %i.biu, %bb.bv ], [ %i.bit, %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread749.us.1.i ], [ %i.bil, %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread758.us.1.i ], [ %i.bif, %_ZL13activation_ssfiRKN4ncnn3MatE.exit549.thread761.us.1.i ], [ %i.bhu, %bb.bu ], [ %i.bhq, %bb.bt ], [ %i.bgx, %bb.bp ] ; 2 uses
  %i.bje = bitcast <2 x float> %i.bjd to <4 x i16>
  %i.bjf = extractelement <4 x i16> %i.bje, i64 1
  store i16 %i.bjf, ptr %.1.us.i, align 2, !tbaa !573
  br i1 %i.bde, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.1.i
  %i.bjg = bitcast <2 x float> %i.bjd to <4 x i16>
  %i.bjh = extractelement <4 x i16> %i.bjg, i64 3
  %i.bji = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 2
  store i16 %i.bjh, ptr %i.bji, align 2, !tbaa !573
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.1.i, %bb.bo
  %indvars.iv.next922.i = add nuw nsw i64 %indvars.iv921.i, 1 ; 2 uses
  %exitcond925.not.i = icmp eq i64 %indvars.iv.next922.i, %wide.trip.count924.i
  br i1 %exitcond925.not.i, label %._crit_edge854.us.i, label %_ZN4ncnn3MatD2Ev.exit.us.i, !llvm.loop !2232

._crit_edge854.us.i:                              ; preds = %bb.bx
  %indvars.iv.next927.i = add nsw i64 %indvars.iv926.i, 1 ; 2 uses
  %exitcond930.not.i = icmp eq i64 %indvars.iv.next927.i, %i.ca
  br i1 %exitcond930.not.i, label %_ZN4ncnnL48conv3x3s1_winograd23_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit, label %bb.bd, !llvm.loop !2233

.noexc:                                           ; preds = %.noexc.preheader, %.noexc
  %i.bjj = phi i32 [ %i.blg, %.noexc ], [ %.pre173, %.noexc.preheader ] ; 2 uses
  %i.bjk = phi i32 [ %i.bli, %.noexc ], [ %i.ck, %.noexc.preheader ]
  %.0156 = phi i32 [ %i.blh, %.noexc ], [ 0, %.noexc.preheader ] ; 4 uses
  %i.bjl = sub nsw i32 %i.bjk, %.0156
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.bjj, i32 %i.bjl)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #12
  %i.bjm = load i32, ptr %3, align 4, !tbaa !67
  %i.bjn = sdiv i32 %i.bi, %i.bjm
  %i.bjo = load ptr, ptr %10, align 8, !tbaa !18, !noalias !2234
  %i.bjp = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !2234
  %i.bjq = sext i32 %i.bjn to i64
  %i.bjr = mul i64 %i.bjp, %i.bjq
  %i.bjs = load i64, ptr %i.s, align 8, !tbaa !65, !noalias !2234 ; 3 uses
  %i.bjt = mul i64 %i.bjr, %i.bjs
  %i.bju = getelementptr inbounds nuw i8, ptr %i.bjo, i64 %i.bjt
  %i.bjv = load i32, ptr %i.t, align 8, !tbaa !66, !noalias !2234
  %i.bjw = load ptr, ptr %i.u, align 8, !tbaa !17, !noalias !2234
  %i.bjx = sdiv i32 %.0156, %i.bjj
  %i.bjy = sext i32 %i.bjx to i64                 ; 2 uses
  store ptr null, ptr %i.v, align 8, !tbaa !11, !alias.scope !2237
  store i64 %i.bjs, ptr %i.w, align 8, !tbaa !65, !alias.scope !2237
  store i32 %i.bjv, ptr %i.x, align 8, !tbaa !66, !alias.scope !2237
  store ptr %i.bjw, ptr %i.y, align 8, !tbaa !17, !alias.scope !2237
  store i32 2, ptr %i.z, align 8, !tbaa !289, !alias.scope !2237
  %i.bjz = load <2 x i32>, ptr %i.p, align 4, !tbaa !67, !noalias !2234
  %i.bka = load i32, ptr %i.q, align 8, !tbaa !76, !noalias !2234
  %i.bkb = load i32, ptr %i.p, align 4, !tbaa !75, !noalias !2234
  %i.bkc = sext i32 %i.bkb to i64
  %i.bkd = sext i32 %i.bka to i64
  %i.bke = mul nsw i64 %i.bkd, %i.bkc             ; 2 uses
  %i.bkf = mul i64 %i.bjs, %i.bke
  %i.bkg = mul i64 %i.bkf, %i.bjy
  %i.bkh = getelementptr inbounds nuw i8, ptr %i.bju, i64 %i.bkg
  store ptr %i.bkh, ptr %16, align 8, !tbaa !18, !alias.scope !2237
  %i.bki = shufflevector <2 x i32> %i.bjz, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bkj = shufflevector <4 x i32> %i.bki, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.bkj, ptr %i.aa, align 4, !tbaa !67, !alias.scope !2237
  store i64 %i.bke, ptr %i.ab, align 8, !tbaa !20, !alias.scope !2237
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #12
  %i.bkk = load i32, ptr %7, align 4, !tbaa !67
  %i.bkl = sdiv i32 %.047162, %i.bkk
  %i.bkm = load ptr, ptr %11, align 8, !tbaa !18, !noalias !2240
  %i.bkn = load i64, ptr %i.ae, align 8, !tbaa !20, !noalias !2240
  %i.bko = sext i32 %i.bkl to i64
  %i.bkp = mul i64 %i.bkn, %i.bko
  %i.bkq = load i64, ptr %i.af, align 8, !tbaa !65, !noalias !2240 ; 3 uses
  %i.bkr = mul i64 %i.bkp, %i.bkq
  %i.bks = getelementptr inbounds nuw i8, ptr %i.bkm, i64 %i.bkr
  %i.bkt = load i32, ptr %i.ag, align 8, !tbaa !66, !noalias !2240
  %i.bku = load ptr, ptr %i.ah, align 8, !tbaa !17, !noalias !2240
  store ptr null, ptr %i.ai, align 8, !tbaa !11
  store i64 %i.bkq, ptr %i.aj, align 8, !tbaa !65
  store i32 %i.bkt, ptr %i.ak, align 8, !tbaa !66
  store ptr %i.bku, ptr %i.al, align 8, !tbaa !17
  store i32 2, ptr %i.am, align 8, !tbaa !289
  %i.bkv = load <2 x i32>, ptr %i.ac, align 4, !tbaa !67, !noalias !2240
  %i.bkw = load i32, ptr %i.ad, align 8, !tbaa !76, !noalias !2240
  %i.bkx = load i32, ptr %i.ac, align 4, !tbaa !75, !noalias !2240
  %i.bky = sext i32 %i.bkx to i64
  %i.bkz = sext i32 %i.bkw to i64
  %i.bla = mul nsw i64 %i.bkz, %i.bky             ; 2 uses
  %i.blb = mul i64 %i.bkq, %i.bla
  %i.blc = mul i64 %i.blb, %i.bjy
  %i.bld = getelementptr inbounds nuw i8, ptr %i.bks, i64 %i.blc
  store ptr %i.bld, ptr %17, align 8, !tbaa !18
  %i.ble = shufflevector <2 x i32> %i.bkv, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.blf = shufflevector <4 x i32> %i.ble, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.blf, ptr %i.an, align 4, !tbaa !67
  store i64 %i.bla, ptr %i.ao, align 8, !tbaa !20, !alias.scope !2243
  call fastcc void @_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %16, ptr noundef nonnull align 8 dereferenceable(72) %17, ptr %i.bq, i32 noundef 16, i32 noundef %.sroa.speculated123, i32 noundef %.sroa.speculated119, i32 noundef %.0156, i32 noundef %.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #12
  %i.blg = load i32, ptr %9, align 4, !tbaa !67   ; 2 uses
  %i.blh = add nsw i32 %i.blg, %.0156             ; 2 uses
  %i.bli = load i32, ptr %8, align 4, !tbaa !67   ; 2 uses
  %i.blj = icmp slt i32 %i.blh, %i.bli
  br i1 %i.blj, label %.noexc, label %._crit_edge, !llvm.loop !2246

_ZN4ncnnL48conv3x3s1_winograd23_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit: ; preds = %._crit_edge854.us.i, %.lr.ph860.i, %.preheader.i
  %i.blk = load i32, ptr %7, align 4, !tbaa !67   ; 2 uses
  %i.bll = add nsw i32 %i.blk, %.047162           ; 2 uses
  %i.blm = load i32, ptr %6, align 4, !tbaa !67   ; 2 uses
  %i.bln = icmp slt i32 %i.bll, %i.blm
  br i1 %i.bln, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !2247

._crit_edge168:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.by

bb.by:                                            ; preds = %._crit_edge168, %bb.a
  ret void

bb.bz:                                            ; preds = %bb.c
  %i.blo = landingpad { ptr, i32 }
          catch ptr null
  %i.blp = extractvalue { ptr, i32 } %i.blo, 0
  call void @__clang_call_terminate(ptr %i.blp) #32
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL47conv3x3s1_winograd23_transform_input_tile_bf16sERKNS_3MatERS0_iiiii.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.bk

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
  %.not246 = icmp sgt i32 %i.k, %i.j
  br i1 %.not246, label %._crit_edge249, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.o = load i32, ptr %4, align 4, !tbaa !67     ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.split, label %._crit_edge249

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge
  %i.q = phi i32 [ %i.abd, %._crit_edge ], [ %i.o, %.lr.ph ] ; 3 uses
  %.0247 = phi i32 [ %i.abe, %._crit_edge ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.r = load i32, ptr %3, align 4, !tbaa !67
  %i.s = shl nsw i32 %.0247, 3
  %i.t = add nsw i32 %i.r, %i.s                   ; 2 uses
  %i.u = icmp sgt i32 %i.q, 0
  br i1 %i.u, label %.noexc.lr.ph, label %._crit_edge

.noexc.lr.ph:                                     ; preds = %.lr.ph.split
  %i.v = shl i32 %i.t, 4
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %.thread233.3
  %i.w = phi i32 [ %i.q, %.noexc.lr.ph ], [ %i.aba, %.thread233.3 ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.noexc.lr.ph ], [ %indvars.iv.next, %.thread233.3 ] ; 3 uses
  %i.x = load i32, ptr %5, align 4, !tbaa !67
  %i.y = load i32, ptr %6, align 4, !tbaa !67     ; 2 uses
  %i.z = load i32, ptr %8, align 4, !tbaa !67
  %i.aa = add nsw i32 %i.z, %i.t
  %i.ab = load i32, ptr %9, align 4, !tbaa !67    ; 7 uses
  %i.ac = sdiv i32 %i.aa, %i.ab
  %i.ad = load i32, ptr %i.l, align 4, !tbaa !75, !noalias !2248
  %i.ae = load ptr, ptr %7, align 8, !tbaa !18, !noalias !2248
  %i.af = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !2248
  %i.ag = sext i32 %i.ac to i64
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = load i64, ptr %i.n, align 8, !tbaa !65, !noalias !2248 ; 2 uses
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  %i.al = sext i32 %i.ad to i64
  %i.am = trunc nuw nsw i64 %indvars.iv to i32
  %i.an = add nsw i32 %i.x, %i.am                 ; 2 uses
  %i.ao = srem i32 %i.an, %i.y
  %i.ap = sdiv i32 %i.an, %i.y
  %i.aq = shl nsw i32 %i.ap, 1                    ; 2 uses
  %i.ar = sext i32 %i.aq to i64                   ; 4 uses
  %i.as = mul i64 %i.ai, %i.al
  %i.at = mul i64 %i.as, %i.ar
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.at
  %i.av = shl nsw i32 %i.ao, 1                    ; 4 uses
  %i.aw = mul nsw i32 %i.av, %i.ab
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [2 x i8], ptr %i.au, i64 %i.ax ; 18 uses
  %i.az = load i32, ptr %10, align 4, !tbaa !67   ; 2 uses
  %i.ba = load i32, ptr %11, align 4, !tbaa !67   ; 37 uses
  %i.bb = mul nsw i32 %i.ab, %i.ba
  %i.bc = sext i32 %i.bb to i64                   ; 3 uses
  %i.bd = or disjoint i32 %i.av, 1                ; 12 uses
  %i.be = add nsw i32 %i.av, 2                    ; 12 uses
  %i.bf = add nsw i32 %i.av, 3                    ; 12 uses
  %i.bg = sext i32 %i.az to i64                   ; 3 uses
  %i.bh = icmp slt i32 %i.aq, %i.az
  br i1 %i.bh, label %bb.c, label %.thread233
end_hunk_17
begin_hunk_18_@_ZN4ncnnL26conv3x3s1_winograd43_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined.17:bb.a
  %i.dst = getelementptr inbounds nuw i8, ptr %i.dsr, i64 4
  %i.dsu = load float, ptr %i.dst, align 4, !tbaa !39 ; 5 uses
  %i.dsv = fneg fast float %i.dsu
  %i.dsw = fdiv fast float %i.dsv, %i.dss         ; 8 uses
  %i.dsx = extractelement <2 x float> %i.dsp, i64 0 ; 5 uses
  %i.dsy = fcmp fast olt float %i.dsx, %i.dsw
  br i1 %i.dsy, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread.us.i.3, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.dsz = fdiv fast float 1.000000e+00, %i.dss
  %i.dta = fadd fast float %i.dsw, %i.dsz
  %i.dtb = fcmp fast ogt float %i.dsx, %i.dta
  br i1 %i.dtb, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread.us.i.3, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.dtc = fmul fast float %i.dss, %i.dsx
  %i.dtd = fadd fast float %i.dtc, %i.dsu
  %i.dte = fmul fast float %i.dtd, %i.dsx
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread.us.i.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread.us.i.3: ; preds = %bb.ef, %bb.ee, %bb.ed
  %.112321845.us.i.3 = phi float [ %i.dte, %bb.ef ], [ 0.000000e+00, %bb.ed ], [ %i.dsx, %bb.ee ]
  %i.dtf = extractelement <2 x float> %i.dsi, i64 1 ; 5 uses
  %i.dtg = fcmp fast olt float %i.dtf, %i.dsw
  br i1 %i.dtg, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit844.thread.us.i.3, label %bb.eg

bb.eg:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread.us.i.3
  %i.dth = fdiv fast float 1.000000e+00, %i.dss
  %i.dti = fadd fast float %i.dsw, %i.dth
  %i.dtj = fcmp fast ogt float %i.dtf, %i.dti
  br i1 %i.dtj, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit844.thread.us.i.3, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.dtk = fmul fast float %i.dss, %i.dtf
  %i.dtl = fadd fast float %i.dtk, %i.dsu
  %i.dtm = fmul fast float %i.dtl, %i.dtf
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit844.thread.us.i.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit844.thread.us.i.3: ; preds = %bb.eh, %bb.eg, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread.us.i.3
  %.112341868.us.i.3 = phi float [ %i.dtm, %bb.eh ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread.us.i.3 ], [ %i.dtf, %bb.eg ]
  %i.dtn = extractelement <2 x float> %i.dsi, i64 0 ; 5 uses
  %i.dto = fcmp fast olt float %i.dtn, %i.dsw
  br i1 %i.dto, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit843.thread.us.i.3, label %bb.ei

bb.ei:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit844.thread.us.i.3
  %i.dtp = fdiv fast float 1.000000e+00, %i.dss
  %i.dtq = fadd fast float %i.dsw, %i.dtp
  %i.dtr = fcmp fast ogt float %i.dtn, %i.dtq
  br i1 %i.dtr, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit843.thread.us.i.3, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.dts = fmul fast float %i.dss, %i.dtn
  %i.dtt = fadd fast float %i.dts, %i.dsu
  %i.dtu = fmul fast float %i.dtt, %i.dtn
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit843.thread.us.i.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit843.thread.us.i.3: ; preds = %bb.ej, %bb.ei, %_ZL13activation_ssfiRKN4ncnn3MatE.exit844.thread.us.i.3
  %.112361904.us.i.3 = phi float [ %i.dtu, %bb.ej ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit844.thread.us.i.3 ], [ %i.dtn, %bb.ei ]
  %i.dtv = extractelement <2 x float> %i.dsp, i64 1 ; 4 uses
  %i.dtw = fcmp fast olt float %i.dtv, %i.dsw
  %i.dtx = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %.112361904.us.i.3, i64 0
  %i.dty = insertelement <4 x float> %i.dtx, float %.112341868.us.i.3, i64 1
  %i.dtz = insertelement <4 x float> %i.dty, float %.112321845.us.i.3, i64 2 ; 3 uses
  br i1 %i.dtw, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3, label %bb.ek

bb.ek:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit843.thread.us.i.3
  %i.dua = fdiv fast float 1.000000e+00, %i.dss
  %i.dub = fadd fast float %i.dsw, %i.dua
  %i.duc = fcmp fast ogt float %i.dtv, %i.dub
  %i.dud = shufflevector <4 x float> %i.dtz, <4 x float> %i.dsq, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br i1 %i.duc, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.due = fmul fast float %i.dss, %i.dtv
  %i.duf = fadd fast float %i.due, %i.dsu
  %i.dug = fmul fast float %i.duf, %i.dtv
  %i.duh = insertelement <4 x float> %i.dtz, float %i.dug, i64 3
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1861.us.i.3: ; preds = %bb.ec
  %i.dui = extractelement <2 x float> %i.dsp, i64 0
  %i.duj = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.dui)
  %i.duk = extractelement <2 x float> %i.dsi, i64 1
  %i.dul = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.duk)
  %i.dum = extractelement <2 x float> %i.dsi, i64 0
  %i.dun = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.dum)
  %i.duo = extractelement <2 x float> %i.dsp, i64 1
  %i.dup = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.duo)
  %i.duq = fadd fast float %i.dup, 1.000000e+00
  %i.dur = fadd fast float %i.duj, 1.000000e+00
  %i.dus = fadd fast float %i.dul, 1.000000e+00
  %i.dut = fadd fast float %i.dun, 1.000000e+00
  %i.duu = call fast float @llvm.log.f32(float %i.duq)
  %i.duv = call fast float @llvm.log.f32(float %i.dur)
  %i.duw = call fast float @llvm.log.f32(float %i.dus)
  %i.dux = call fast float @llvm.log.f32(float %i.dut)
  %i.duy = call fast float @llvm.tanh.f32(float %i.duu)
  %i.duz = call fast float @llvm.tanh.f32(float %i.duv)
  %i.dva = call fast float @llvm.tanh.f32(float %i.duw)
  %i.dvb = call fast float @llvm.tanh.f32(float %i.dux)
  %i.dvc = insertelement <4 x float> poison, float %i.dvb, i64 0
  %i.dvd = insertelement <4 x float> %i.dvc, float %i.dva, i64 1
  %i.dve = insertelement <4 x float> %i.dvd, float %i.duz, i64 2
  %i.dvf = insertelement <4 x float> %i.dve, float %i.duy, i64 3
  %i.dvg = fmul fast <4 x float> %i.dvf, %i.dsq
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1858.us.i.3: ; preds = %bb.ec
  %i.dvh = call nnan ninf nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.dsq, <4 x float> splat (float f0x42B0C0A5))
  %i.dvi = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.dvh, <4 x float> splat (float f0xC2B0C0A5))
  %i.dvj = fneg fast <4 x float> %i.dvi
  %i.dvk = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.dvj)
  %i.dvl = fadd fast <4 x float> %i.dvk, splat (float 1.000000e+00)
  %i.dvm = fdiv fast <4 x float> splat (float 1.000000e+00), %i.dvl
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1849.us.i.3: ; preds = %bb.ec
  %i.dvn = load ptr, ptr %15, align 8, !tbaa !18  ; 2 uses
  %i.dvo = load float, ptr %i.dvn, align 4, !tbaa !39 ; 3 uses
  %i.dvp = getelementptr inbounds nuw i8, ptr %i.dvn, i64 4
  %i.dvq = load float, ptr %i.dvp, align 4, !tbaa !39 ; 5 uses
  %i.dvr = extractelement <2 x float> %i.dsp, i64 0
  %.01231.us.i.3 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.dvr, float %i.dvo) ; 2 uses
  %i.dvs = fcmp fast ogt float %.01231.us.i.3, %i.dvq
  %.112321851.us.i.3 = select i1 %i.dvs, float %i.dvq, float %.01231.us.i.3
  %i.dvt = insertelement <2 x float> poison, float %i.dvo, i64 0
  %i.dvu = shufflevector <2 x float> %i.dvt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dvv = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.dsi, <2 x float> %i.dvu) ; 2 uses
  %i.dvw = insertelement <2 x float> poison, float %i.dvq, i64 0
  %i.dvx = shufflevector <2 x float> %i.dvw, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dvy = fcmp fast ogt <2 x float> %i.dvv, %i.dvx
  %i.dvz = select <2 x i1> %i.dvy, <2 x float> %i.dvx, <2 x float> %i.dvv
  %i.dwa = extractelement <2 x float> %i.dsp, i64 1
  %.01237.us.i.3 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.dwa, float %i.dvo) ; 2 uses
  %i.dwb = fcmp fast ogt float %.01237.us.i.3, %i.dvq
  %i.dwc = shufflevector <2 x float> %i.dvz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dwd = insertelement <4 x float> %i.dwc, float %.112321851.us.i.3, i64 2 ; 2 uses
  %i.dwe = insertelement <4 x float> %i.dwd, float %.01237.us.i.3, i64 3
  br i1 %i.dwb, label %bb.em, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3

bb.em:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1849.us.i.3
  %i.dwf = insertelement <4 x float> %i.dwd, float %i.dvq, i64 3
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1855.us.i.3: ; preds = %bb.ec
  %i.dwg = load ptr, ptr %15, align 8, !tbaa !18
  %i.dwh = load float, ptr %i.dwg, align 4, !tbaa !39
  %i.dwi = fcmp fast ogt <4 x float> %i.dsq, zeroinitializer
  %i.dwj = insertelement <4 x float> poison, float %i.dwh, i64 0
  %i.dwk = shufflevector <4 x float> %i.dwj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dwl = select <4 x i1> %i.dwi, <4 x float> splat (float 1.000000e+00), <4 x float> %i.dwk
  %i.dwm = fmul fast <4 x float> %i.dwl, %i.dsq
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1852.us.i.3: ; preds = %bb.ec
  %i.dwn = call fast <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.dsq, <4 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3:    ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1852.us.i.3, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1855.us.i.3, %bb.em, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1849.us.i.3, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1858.us.i.3, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1861.us.i.3, %bb.el, %bb.ek, %_ZL13activation_ssfiRKN4ncnn3MatE.exit843.thread.us.i.3, %bb.ec
  %i.dwo = phi <4 x float> [ %i.dtz, %_ZL13activation_ssfiRKN4ncnn3MatE.exit843.thread.us.i.3 ], [ %i.dwn, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1852.us.i.3 ], [ %i.dwm, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1855.us.i.3 ], [ %i.dwf, %bb.em ], [ %i.dwe, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1849.us.i.3 ], [ %i.dvm, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1858.us.i.3 ], [ %i.dvg, %_ZL13activation_ssfiRKN4ncnn3MatE.exit845.thread1861.us.i.3 ], [ %i.duh, %bb.el ], [ %i.dud, %bb.ek ], [ %i.dsq, %bb.ec ] ; 4 uses
  %i.dwp = bitcast <4 x float> %i.dwo to <8 x i16>
  %i.dwq = extractelement <8 x i16> %i.dwp, i64 5
  store i16 %i.dwq, ptr %.1.us.i.2, align 2, !tbaa !573
  br i1 %i.dbv, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3
  %i.dwr = bitcast <4 x float> %i.dwo to <8 x i16>
  %i.dws = extractelement <8 x i16> %i.dwr, i64 3
  %i.dwt = getelementptr inbounds nuw i8, ptr %.1.us.i.2, i64 2
  store i16 %i.dws, ptr %i.dwt, align 2, !tbaa !573
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i.3
  br i1 %i.dbx, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.dwu = bitcast <4 x float> %i.dwo to <8 x i16>
  %i.dwv = extractelement <8 x i16> %i.dwu, i64 1
  %i.dww = getelementptr inbounds nuw i8, ptr %.1.us.i.2, i64 4
  store i16 %i.dwv, ptr %i.dww, align 2, !tbaa !573
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  br i1 %i.dbz, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.dwx = bitcast <4 x float> %i.dwo to <8 x i16>
  %i.dwy = extractelement <8 x i16> %i.dwx, i64 7
  %i.dwz = getelementptr inbounds nuw i8, ptr %.1.us.i.2, i64 6
  store i16 %i.dwy, ptr %i.dwz, align 2, !tbaa !573
  br label %bb.es

bb.es:                                            ; preds = %bb.eq, %bb.er, %bb.eb
  %indvars.iv.next2127.i = add nuw nsw i64 %indvars.iv2126.i, 1 ; 2 uses
  %exitcond2130.not.i = icmp eq i64 %indvars.iv.next2127.i, %wide.trip.count2129.i
  br i1 %exitcond2130.not.i, label %._crit_edge2055.us.i, label %_ZN4ncnn3MatD2Ev.exit.us.i, !llvm.loop !2301

._crit_edge2055.us.i:                             ; preds = %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25)
  %indvars.iv.next2132.i = add nsw i64 %indvars.iv2131.i, 1 ; 2 uses
  %exitcond2135.not.i = icmp eq i64 %indvars.iv.next2132.i, %i.eg
  br i1 %exitcond2135.not.i, label %_ZN4ncnnL48conv3x3s1_winograd43_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit, label %bb.by, !llvm.loop !2302

.noexc:                                           ; preds = %.noexc.preheader, %.noexc
  %i.dxa = phi i32 [ %i.dyx, %.noexc ], [ %.pre150, %.noexc.preheader ] ; 2 uses
  %i.dxb = phi i32 [ %i.dyz, %.noexc ], [ %i.eq, %.noexc.preheader ]
  %.0133 = phi i32 [ %i.dyy, %.noexc ], [ 0, %.noexc.preheader ] ; 4 uses
  %i.dxc = sub nsw i32 %i.dxb, %.0133
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.dxa, i32 %i.dxc)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #12
  %i.dxd = load i32, ptr %3, align 4, !tbaa !67
  %i.dxe = sdiv i32 %i.do, %i.dxd
  %i.dxf = load ptr, ptr %10, align 8, !tbaa !18, !noalias !2303
  %i.dxg = load i64, ptr %i.s, align 8, !tbaa !20, !noalias !2303
  %i.dxh = sext i32 %i.dxe to i64
  %i.dxi = mul i64 %i.dxg, %i.dxh
  %i.dxj = load i64, ptr %i.t, align 8, !tbaa !65, !noalias !2303 ; 3 uses
  %i.dxk = mul i64 %i.dxi, %i.dxj
  %i.dxl = getelementptr inbounds nuw i8, ptr %i.dxf, i64 %i.dxk
  %i.dxm = load i32, ptr %i.u, align 8, !tbaa !66, !noalias !2303
  %i.dxn = load ptr, ptr %i.v, align 8, !tbaa !17, !noalias !2303
  %i.dxo = sdiv i32 %.0133, %i.dxa
  %i.dxp = sext i32 %i.dxo to i64                 ; 2 uses
  store ptr null, ptr %i.w, align 8, !tbaa !11, !alias.scope !2306
  store i64 %i.dxj, ptr %i.x, align 8, !tbaa !65, !alias.scope !2306
  store i32 %i.dxm, ptr %i.y, align 8, !tbaa !66, !alias.scope !2306
  store ptr %i.dxn, ptr %i.z, align 8, !tbaa !17, !alias.scope !2306
  store i32 2, ptr %i.aa, align 8, !tbaa !289, !alias.scope !2306
  %i.dxq = load <2 x i32>, ptr %i.q, align 4, !tbaa !67, !noalias !2303
  %i.dxr = load i32, ptr %i.r, align 8, !tbaa !76, !noalias !2303
  %i.dxs = load i32, ptr %i.q, align 4, !tbaa !75, !noalias !2303
  %i.dxt = sext i32 %i.dxs to i64
  %i.dxu = sext i32 %i.dxr to i64
  %i.dxv = mul nsw i64 %i.dxu, %i.dxt             ; 2 uses
  %i.dxw = mul i64 %i.dxj, %i.dxv
  %i.dxx = mul i64 %i.dxw, %i.dxp
  %i.dxy = getelementptr inbounds nuw i8, ptr %i.dxl, i64 %i.dxx
  store ptr %i.dxy, ptr %16, align 8, !tbaa !18, !alias.scope !2306
  %i.dxz = shufflevector <2 x i32> %i.dxq, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dya = shufflevector <4 x i32> %i.dxz, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.dya, ptr %i.ab, align 4, !tbaa !67, !alias.scope !2306
  store i64 %i.dxv, ptr %i.ac, align 8, !tbaa !20, !alias.scope !2306
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #12
  %i.dyb = load i32, ptr %7, align 4, !tbaa !67
  %i.dyc = sdiv i32 %.047139, %i.dyb
  %i.dyd = load ptr, ptr %11, align 8, !tbaa !18, !noalias !2309
  %i.dye = load i64, ptr %i.af, align 8, !tbaa !20, !noalias !2309
  %i.dyf = sext i32 %i.dyc to i64
  %i.dyg = mul i64 %i.dye, %i.dyf
  %i.dyh = load i64, ptr %i.ag, align 8, !tbaa !65, !noalias !2309 ; 3 uses
  %i.dyi = mul i64 %i.dyg, %i.dyh
  %i.dyj = getelementptr inbounds nuw i8, ptr %i.dyd, i64 %i.dyi
  %i.dyk = load i32, ptr %i.ah, align 8, !tbaa !66, !noalias !2309
  %i.dyl = load ptr, ptr %i.ai, align 8, !tbaa !17, !noalias !2309
  store ptr null, ptr %i.aj, align 8, !tbaa !11
  store i64 %i.dyh, ptr %i.ak, align 8, !tbaa !65
  store i32 %i.dyk, ptr %i.al, align 8, !tbaa !66
  store ptr %i.dyl, ptr %i.am, align 8, !tbaa !17
  store i32 2, ptr %i.an, align 8, !tbaa !289
  %i.dym = load <2 x i32>, ptr %i.ad, align 4, !tbaa !67, !noalias !2309
  %i.dyn = load i32, ptr %i.ae, align 8, !tbaa !76, !noalias !2309
  %i.dyo = load i32, ptr %i.ad, align 4, !tbaa !75, !noalias !2309
  %i.dyp = sext i32 %i.dyo to i64
  %i.dyq = sext i32 %i.dyn to i64
  %i.dyr = mul nsw i64 %i.dyq, %i.dyp             ; 2 uses
  %i.dys = mul i64 %i.dyh, %i.dyr
  %i.dyt = mul i64 %i.dys, %i.dxp
  %i.dyu = getelementptr inbounds nuw i8, ptr %i.dyj, i64 %i.dyt
  store ptr %i.dyu, ptr %17, align 8, !tbaa !18
  %i.dyv = shufflevector <2 x i32> %i.dym, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dyw = shufflevector <4 x i32> %i.dyv, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.dyw, ptr %i.ao, align 4, !tbaa !67
  store i64 %i.dyr, ptr %i.ap, align 8, !tbaa !20, !alias.scope !2312
  call fastcc void @_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %16, ptr noundef nonnull align 8 dereferenceable(72) %17, ptr %i.dw, i32 noundef 36, i32 noundef %.sroa.speculated124, i32 noundef %.sroa.speculated120, i32 noundef %.0133, i32 noundef %.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #12
  %i.dyx = load i32, ptr %9, align 4, !tbaa !67   ; 2 uses
  %i.dyy = add nsw i32 %i.dyx, %.0133             ; 2 uses
  %i.dyz = load i32, ptr %8, align 4, !tbaa !67   ; 2 uses
  %i.dza = icmp slt i32 %i.dyy, %i.dyz
  br i1 %i.dza, label %.noexc, label %._crit_edge, !llvm.loop !2315

_ZN4ncnnL48conv3x3s1_winograd43_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit: ; preds = %._crit_edge2055.us.i, %.lr.ph2061.i, %.preheader.i
  %i.dzb = load i32, ptr %7, align 4, !tbaa !67   ; 2 uses
  %i.dzc = add nsw i32 %i.dzb, %.047139           ; 2 uses
  %i.dzd = load i32, ptr %6, align 4, !tbaa !67   ; 2 uses
  %i.dze = icmp slt i32 %i.dzc, %i.dzd
  br i1 %i.dze, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !2316

._crit_edge145:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %bb.et

bb.et:                                            ; preds = %._crit_edge145, %bb.a
  ret void

bb.eu:                                            ; preds = %bb.c
  %i.dzf = landingpad { ptr, i32 }
          catch ptr null
  %i.dzg = extractvalue { ptr, i32 } %i.dzf, 0
  call void @__clang_call_terminate(ptr %i.dzg) #32
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL47conv3x3s1_winograd43_transform_input_tile_bf16sERKNS_3MatERS0_iiiii.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree nonnull readnone align 4 captures(none) %10, ptr nofree nonnull readnone align 4 captures(none) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %14, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %15) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ew

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
  %.not371 = icmp sgt i32 %i.k, %i.j
  br i1 %.not371, label %._crit_edge374, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.o = load i32, ptr %4, align 4, !tbaa !67     ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.split, label %._crit_edge374

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge
  %i.q = phi i32 [ %i.bux, %._crit_edge ], [ %i.o, %.lr.ph ] ; 3 uses
  %.0192372 = phi i32 [ %i.buy, %._crit_edge ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.r = load i32, ptr %3, align 4, !tbaa !67
  %i.s = shl nsw i32 %.0192372, 3
  %i.t = add nsw i32 %i.r, %i.s                   ; 2 uses
  %i.u = icmp sgt i32 %i.q, 0
  br i1 %i.u, label %.noexc.lr.ph, label %._crit_edge

.noexc.lr.ph:                                     ; preds = %.lr.ph.split
  %i.v = mul i32 %i.t, 36
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %.thread354.5
  %i.w = phi i32 [ %i.q, %.noexc.lr.ph ], [ %i.buu, %.thread354.5 ] ; 6 uses
  %indvars.iv = phi i64 [ 0, %.noexc.lr.ph ], [ %indvars.iv.next, %.thread354.5 ] ; 3 uses
  %i.x = load i32, ptr %5, align 4, !tbaa !67
  %i.y = load i32, ptr %6, align 4, !tbaa !67     ; 2 uses
  %i.z = load i32, ptr %8, align 4, !tbaa !67
  %i.aa = add nsw i32 %i.z, %i.t
  %i.ab = load i32, ptr %9, align 4, !tbaa !67    ; 9 uses
  %i.ac = sdiv i32 %i.aa, %i.ab
  %i.ad = load i32, ptr %i.l, align 4, !tbaa !75, !noalias !2317
  %i.ae = load ptr, ptr %7, align 8, !tbaa !18, !noalias !2317
  %i.af = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !2317
  %i.ag = sext i32 %i.ac to i64
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = load i64, ptr %i.n, align 8, !tbaa !65, !noalias !2317 ; 2 uses
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  %i.al = sext i32 %i.ad to i64
  %i.am = trunc nuw nsw i64 %indvars.iv to i32
  %i.an = add nsw i32 %i.x, %i.am                 ; 2 uses
  %i.ao = srem i32 %i.an, %i.y
  %i.ap = sdiv i32 %i.an, %i.y
  %i.aq = shl nsw i32 %i.ap, 2                    ; 2 uses
  %i.ar = sext i32 %i.aq to i64                   ; 6 uses
  %i.as = mul i64 %i.ai, %i.al
  %i.at = mul i64 %i.as, %i.ar
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.at
  %i.av = shl nsw i32 %i.ao, 2                    ; 6 uses
  %i.aw = mul nsw i32 %i.av, %i.ab
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [2 x i8], ptr %i.au, i64 %i.ax ; 24 uses
  %i.az = load i32, ptr %12, align 4, !tbaa !67   ; 2 uses
  %i.ba = load i32, ptr %13, align 4, !tbaa !67   ; 91 uses
  %i.bb = mul nsw i32 %i.ab, %i.ba
  %i.bc = sext i32 %i.bb to i64                   ; 5 uses
  %i.bd = or disjoint i32 %i.av, 1                ; 18 uses
  %i.be = or disjoint i32 %i.av, 2                ; 18 uses
  %i.bf = or disjoint i32 %i.av, 3                ; 18 uses
  %i.bg = add nsw i32 %i.av, 4                    ; 18 uses
  %i.bh = add nsw i32 %i.av, 5                    ; 18 uses
  %i.bi = sext i32 %i.az to i64                   ; 5 uses
end_hunk_18
begin_hunk_19_@_ZN4ncnnL48conv3x3s1_winograd63_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_:bb.a
  br i1 %i.czx, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1173.thread.us, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.czy = fmul fast float %i.cyk, %i.czt
  %i.czz = fadd fast float %i.czy, %i.cyl
  %i.daa = fmul fast float %i.czz, %i.czt
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1173.thread.us

_ZL13activation_ssfiRKN4ncnn3MatE.exit1173.thread.us: ; preds = %bb.cf, %bb.ce, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1174.thread.us
  %.118393400.us = phi float [ %i.daa, %bb.cf ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1174.thread.us ], [ %i.czt, %bb.ce ]
  %i.dab = fcmp fast olt float %i.cyh, %i.cyn
  %i.dac = insertelement <4 x float> poison, float %.118333253.us, i64 0
  %i.dad = insertelement <4 x float> %i.dac, float %.118353289.us, i64 1
  %i.dae = insertelement <4 x float> %i.dad, float %.118373338.us, i64 2
  %i.daf = insertelement <4 x float> %i.dae, float %.118393400.us, i64 3 ; 3 uses
  %i.dag = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.118313230.us, i64 0 ; 2 uses
  br i1 %i.dab, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us, label %bb.cg

bb.cg:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1173.thread.us
  %i.dah = fdiv fast float 1.000000e+00, %i.cyk
  %i.dai = fadd fast float %i.cyn, %i.dah
  %i.daj = fcmp fast ogt float %i.cyh, %i.dai
  %i.dak = insertelement <2 x float> %i.cyj, float %.118313230.us, i64 0
  br i1 %i.daj, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.dal = fmul fast float %i.cyk, %i.cyh
  %i.dam = fadd fast float %i.dal, %i.cyl
  %i.dan = fmul fast float %i.dam, %i.cyh
  %i.dao = insertelement <2 x float> %i.dag, float %i.dan, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us

_ZL13activation_ssfiRKN4ncnn3MatE.exit1177.thread3246.us: ; preds = %bb.bu
  %i.dap = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.cxx)
  %i.daq = extractelement <4 x float> %i.cyg, i64 0
  %i.dar = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.daq)
  %i.das = extractelement <4 x float> %i.cyg, i64 1
  %i.dat = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.das)
  %i.dau = extractelement <4 x float> %i.cyg, i64 2
  %i.dav = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.dau)
  %i.daw = extractelement <4 x float> %i.cyg, i64 3
  %i.dax = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.daw)
  %i.day = fadd fast float %i.dar, 1.000000e+00
  %i.daz = fadd fast float %i.dat, 1.000000e+00
  %i.dba = fadd fast float %i.dav, 1.000000e+00
  %i.dbb = fadd fast float %i.dax, 1.000000e+00
  %i.dbc = tail call fast float @llvm.log.f32(float %i.day)
  %i.dbd = tail call fast float @llvm.log.f32(float %i.daz)
  %i.dbe = tail call fast float @llvm.log.f32(float %i.dba)
  %i.dbf = tail call fast float @llvm.log.f32(float %i.dbb)
  %i.dbg = tail call fast float @llvm.tanh.f32(float %i.dbc)
  %i.dbh = tail call fast float @llvm.tanh.f32(float %i.dbd)
  %i.dbi = tail call fast float @llvm.tanh.f32(float %i.dbe)
  %i.dbj = tail call fast float @llvm.tanh.f32(float %i.dbf)
  %i.dbk = insertelement <4 x float> poison, float %i.dbg, i64 0
  %i.dbl = insertelement <4 x float> %i.dbk, float %i.dbh, i64 1
  %i.dbm = insertelement <4 x float> %i.dbl, float %i.dbi, i64 2
  %i.dbn = insertelement <4 x float> %i.dbm, float %i.dbj, i64 3
  %i.dbo = fmul fast <4 x float> %i.dbn, %i.cyg
  %i.dbp = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.cyh)
  %i.dbq = fadd fast float %i.dbp, 1.000000e+00
  %i.dbr = fadd fast float %i.dap, 1.000000e+00
  %i.dbs = tail call fast float @llvm.log.f32(float %i.dbq)
  %i.dbt = tail call fast float @llvm.log.f32(float %i.dbr)
  %i.dbu = tail call fast float @llvm.tanh.f32(float %i.dbs)
  %i.dbv = tail call fast float @llvm.tanh.f32(float %i.dbt)
  %i.dbw = insertelement <2 x float> poison, float %i.dbv, i64 0
  %i.dbx = insertelement <2 x float> %i.dbw, float %i.dbu, i64 1
  %i.dby = fmul fast <2 x float> %i.dbx, %i.cyj
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us

_ZL13activation_ssfiRKN4ncnn3MatE.exit1177.thread3243.us: ; preds = %bb.bu
  %i.dbz = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.cyj, <2 x float> splat (float f0x42B0C0A5))
  %i.dca = tail call nnan ninf nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.cyg, <4 x float> splat (float f0x42B0C0A5))
  %i.dcb = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.dca, <4 x float> splat (float f0xC2B0C0A5))
  %i.dcc = fneg fast <4 x float> %i.dcb
  %i.dcd = tail call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.dcc)
  %i.dce = fadd fast <4 x float> %i.dcd, splat (float 1.000000e+00)
  %i.dcf = fdiv fast <4 x float> splat (float 1.000000e+00), %i.dce
  %i.dcg = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.dbz, <2 x float> splat (float f0xC2B0C0A5))
  %i.dch = fneg fast <2 x float> %i.dcg
  %i.dci = tail call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.dch)
  %i.dcj = fadd fast <2 x float> %i.dci, splat (float 1.000000e+00)
  %i.dck = fdiv fast <2 x float> splat (float 1.000000e+00), %i.dcj
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us

_ZL13activation_ssfiRKN4ncnn3MatE.exit1177.thread3234.us: ; preds = %bb.bu
  %i.dcl = load float, ptr %i.cwm, align 4, !tbaa !39 ; 3 uses
  %i.dcm = load float, ptr %i.cwn, align 4, !tbaa !39 ; 5 uses
  %.01830.us = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.cxx, float %i.dcl) ; 2 uses
  %i.dcn = fcmp fast ogt float %.01830.us, %i.dcm
  %.118313236.us = select i1 %i.dcn, float %i.dcm, float %.01830.us
  %i.dco = insertelement <4 x float> poison, float %i.dcl, i64 0
  %i.dcp = shufflevector <4 x float> %i.dco, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dcq = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.cyg, <4 x float> %i.dcp) ; 2 uses
  %i.dcr = insertelement <4 x float> poison, float %i.dcm, i64 0
  %i.dcs = shufflevector <4 x float> %i.dcr, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dct = fcmp fast ogt <4 x float> %i.dcq, %i.dcs
  %i.dcu = select <4 x i1> %i.dct, <4 x float> %i.dcs, <4 x float> %i.dcq ; 2 uses
  %.01840.us = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.cyh, float %i.dcl) ; 2 uses
  %i.dcv = fcmp fast ogt float %.01840.us, %i.dcm
  %i.dcw = insertelement <2 x float> poison, float %.118313236.us, i64 0
  %i.dcx = insertelement <2 x float> %i.dcw, float %.01840.us, i64 1 ; 2 uses
  br i1 %i.dcv, label %bb.ci, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us

bb.ci:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1177.thread3234.us
  %i.dcy = insertelement <2 x float> %i.dcx, float %i.dcm, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us

_ZL13activation_ssfiRKN4ncnn3MatE.exit1177.thread3240.us: ; preds = %bb.bu
  %i.dcz = load float, ptr %i.cwo, align 4, !tbaa !39 ; 2 uses
  %i.dda = fcmp fast ogt <2 x float> %i.cyj, zeroinitializer
  %i.ddb = fcmp fast ogt <4 x float> %i.cyg, zeroinitializer
  %i.ddc = insertelement <4 x float> poison, float %i.dcz, i64 0
  %i.ddd = shufflevector <4 x float> %i.ddc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dde = select <4 x i1> %i.ddb, <4 x float> splat (float 1.000000e+00), <4 x float> %i.ddd
  %i.ddf = fmul fast <4 x float> %i.dde, %i.cyg
  %i.ddg = insertelement <2 x float> poison, float %i.dcz, i64 0
  %i.ddh = shufflevector <2 x float> %i.ddg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ddi = select <2 x i1> %i.dda, <2 x float> splat (float 1.000000e+00), <2 x float> %i.ddh
  %i.ddj = fmul fast <2 x float> %i.ddi, %i.cyj
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us

_ZL13activation_ssfiRKN4ncnn3MatE.exit1177.thread3237.us: ; preds = %bb.bu
  %i.ddk = tail call fast <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.cyg, <4 x float> zeroinitializer)
  %i.ddl = tail call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.cyj, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us

_ZL13activation_ssfiRKN4ncnn3MatE.exit.us:        ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1177.thread3237.us, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1177.thread3240.us, %bb.ci, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1177.thread3234.us, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1177.thread3243.us, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1177.thread3246.us, %bb.ch, %bb.cg, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1173.thread.us, %bb.bu
  %i.ddm = phi <4 x float> [ %i.daf, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1173.thread.us ], [ %i.ddk, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1177.thread3237.us ], [ %i.ddf, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1177.thread3240.us ], [ %i.dcu, %bb.ci ], [ %i.dcu, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1177.thread3234.us ], [ %i.dcf, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1177.thread3243.us ], [ %i.dbo, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1177.thread3246.us ], [ %i.daf, %bb.ch ], [ %i.daf, %bb.cg ], [ %i.cyg, %bb.bu ] ; 4 uses
  %i.ddn = phi <2 x float> [ %i.dag, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1173.thread.us ], [ %i.ddl, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1177.thread3237.us ], [ %i.ddj, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1177.thread3240.us ], [ %i.dcy, %bb.ci ], [ %i.dcx, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1177.thread3234.us ], [ %i.dck, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1177.thread3243.us ], [ %i.dby, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1177.thread3246.us ], [ %i.dao, %bb.ch ], [ %i.dak, %bb.cg ], [ %i.cyj, %bb.bu ] ; 2 uses
  %i.ddo = bitcast <2 x float> %i.ddn to <4 x i16>
  %i.ddp = extractelement <4 x i16> %i.ddo, i64 1
  store i16 %i.ddp, ptr %.010533609.us, align 2, !tbaa !573
  br i1 %i.cwb, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us
  %i.ddq = bitcast <4 x float> %i.ddm to <8 x i16>
  %i.ddr = extractelement <8 x i16> %i.ddq, i64 1
  %i.dds = getelementptr inbounds nuw i8, ptr %.010533609.us, i64 2
  store i16 %i.ddr, ptr %i.dds, align 2, !tbaa !573
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us
  br i1 %i.cwd, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.ddt = bitcast <4 x float> %i.ddm to <8 x i16>
  %i.ddu = extractelement <8 x i16> %i.ddt, i64 3
  %i.ddv = getelementptr inbounds nuw i8, ptr %.010533609.us, i64 4
  store i16 %i.ddu, ptr %i.ddv, align 2, !tbaa !573
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  br i1 %i.cwf, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.ddw = bitcast <4 x float> %i.ddm to <8 x i16>
  %i.ddx = extractelement <8 x i16> %i.ddw, i64 5
  %i.ddy = getelementptr inbounds nuw i8, ptr %.010533609.us, i64 6
  store i16 %i.ddx, ptr %i.ddy, align 2, !tbaa !573
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  br i1 %i.cwh, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.ddz = bitcast <4 x float> %i.ddm to <8 x i16>
  %i.dea = extractelement <8 x i16> %i.ddz, i64 7
  %i.deb = getelementptr inbounds nuw i8, ptr %.010533609.us, i64 8
  store i16 %i.dea, ptr %i.deb, align 2, !tbaa !573
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  br i1 %i.cwj, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.dec = bitcast <2 x float> %i.ddn to <4 x i16>
  %i.ded = extractelement <4 x i16> %i.dec, i64 3
  %i.dee = getelementptr inbounds nuw i8, ptr %.010533609.us, i64 10
  store i16 %i.ded, ptr %i.dee, align 2, !tbaa !573
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.def = getelementptr inbounds [2 x i8], ptr %.010533609.us, i64 %i.csg
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.bt
  %.1.us = phi ptr [ %.010533609.us, %bb.bt ], [ %i.def, %bb.cs ]
  %indvars.iv.next3685 = add nuw nsw i64 %indvars.iv3684, 1 ; 2 uses
  %exitcond3687.not = icmp eq i64 %indvars.iv.next3685, 6
  br i1 %exitcond3687.not, label %bb.cu, label %bb.bt, !llvm.loop !2386

bb.cu:                                            ; preds = %bb.ct
  %indvars.iv.next3689 = add nuw nsw i64 %indvars.iv3688, 1 ; 2 uses
  %exitcond3692.not = icmp eq i64 %indvars.iv.next3689, %wide.trip.count3691
  br i1 %exitcond3692.not, label %._crit_edge3614.us, label %bb.br, !llvm.loop !2387

._crit_edge3614.us:                               ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  %indvars.iv.next3694 = add nsw i64 %indvars.iv3693, 1 ; 2 uses
  %exitcond3697.not = icmp eq i64 %indvars.iv.next3694, %wide.trip.count3696
  br i1 %exitcond3697.not, label %._crit_edge3621, label %bb.bp, !llvm.loop !2388

bb.cv:                                            ; preds = %.lr.ph3598, %._crit_edge
  %indvars.iv3677 = phi i64 [ %i.crb, %.lr.ph3598 ], [ %indvars.iv.next3678, %._crit_edge ] ; 4 uses
  br i1 %.not1114, label %.thread, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv3677
  %i.deg = load <2 x float>, ptr %gep, align 4, !tbaa !39
  br label %.thread

.thread:                                          ; preds = %bb.cv, %bb.cw
  %i.deh = phi <2 x float> [ %i.deg, %bb.cw ], [ zeroinitializer, %bb.cv ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  br i1 %i.cqc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.thread
  %i.dei = trunc nsw i64 %indvars.iv3677 to i32
  %factor.op.mul.reass = mul i32 %factor.op.mul3552, %i.dei
  %i.dej = sext i32 %factor.op.mul.reass to i64
  %i.dek = getelementptr inbounds [4 x i8], ptr %.0.val, i64 %i.dej
  %i.del = add nsw i64 %indvars.iv3677, %i.crd
  %.reass3742 = mul i64 %factor.op.mul3741, %i.del
  %i.dem = getelementptr inbounds nuw i8, ptr %i.crf, i64 %.reass3742
  br label %bb.cx

bb.cx:                                            ; preds = %.lr.ph, %bb.cz
  %indvars.iv3672 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next3673, %bb.cz ] ; 3 uses
  %.idx3734 = shl nuw nsw i64 %indvars.iv3672, 3
  %i.den = getelementptr inbounds nuw i8, ptr %i.dek, i64 %.idx3734 ; 8 uses
  %i.deo = getelementptr inbounds nuw [4 x i8], ptr %i.den, i64 %i.cqe
  %i.dep = getelementptr inbounds nuw [4 x i8], ptr %i.den, i64 %i.cqg
  %i.deq = getelementptr inbounds nuw [4 x i8], ptr %i.den, i64 %i.cqi
  %i.der = getelementptr inbounds nuw [4 x i8], ptr %i.den, i64 %i.cqk
  %i.des = getelementptr inbounds nuw [4 x i8], ptr %i.den, i64 %i.cqm
  %i.det = getelementptr inbounds nuw [4 x i8], ptr %i.den, i64 %i.cqo
  %i.deu = getelementptr inbounds nuw [4 x i8], ptr %i.den, i64 %i.cqq
  br label %bb.cy

_ZN4ncnn3MatD2Ev.exit1127:                        ; preds = %bb.cy
  %i.dev = trunc i64 %indvars.iv3672 to i32
  %i.dew = add i32 %3, %i.dev                     ; 2 uses
  %i.dex = sdiv i32 %i.dew, %i.p
  %i.dey = srem i32 %i.dew, %i.p
  %i.dez = mul nsw i32 %i.dex, 6
  %i.dfa = sext i32 %i.dez to i64                 ; 2 uses
  %.reass3595 = mul i64 %factor.op.mul3594, %i.dfa
  %i.dfb = getelementptr inbounds nuw i8, ptr %i.dem, i64 %.reass3595
  %i.dfc = mul nsw i32 %i.dey, 6                  ; 6 uses
  %i.dfd = sext i32 %i.dfc to i64
  %i.dfe = getelementptr inbounds [2 x i8], ptr %i.dfb, i64 %i.dfd
  %i.dff = or disjoint i32 %i.dfc, 1
  %i.dfg = icmp slt i32 %i.dff, %i.f
  %i.dfh = add nsw i32 %i.dfc, 2
  %i.dfi = icmp slt i32 %i.dfh, %i.f
  %i.dfj = add nsw i32 %i.dfc, 3
  %i.dfk = icmp slt i32 %i.dfj, %i.f
  %i.dfl = add nsw i32 %i.dfc, 4
  %i.dfm = icmp slt i32 %i.dfl, %i.f
  %i.dfn = add nsw i32 %i.dfc, 5
  %i.dfo = icmp slt i32 %i.dfn, %i.f
  %invariant.op3737 = sub nsw i64 %i.cra, %i.dfa
  %i.dfp = load ptr, ptr %6, align 8              ; 2 uses
  %i.dfq = getelementptr inbounds nuw i8, ptr %i.dfp, i64 4
  %i.dfr = load ptr, ptr %6, align 8              ; 2 uses
  %i.dfs = getelementptr inbounds nuw i8, ptr %i.dfr, i64 4
  %i.dft = load ptr, ptr %6, align 8
  br label %bb.da

bb.cy:                                            ; preds = %bb.cx, %bb.cy
  %indvars.iv3664 = phi i64 [ 0, %bb.cx ], [ %indvars.iv.next3665, %bb.cy ] ; 7 uses
  %.010783589 = phi ptr [ %i.deu, %bb.cx ], [ %i.dht, %bb.cy ] ; 2 uses
  %.010793588 = phi ptr [ %i.det, %bb.cx ], [ %i.dhs, %bb.cy ] ; 2 uses
  %.010803587 = phi ptr [ %i.des, %bb.cx ], [ %i.dhr, %bb.cy ] ; 2 uses
  %.010813586 = phi ptr [ %i.der, %bb.cx ], [ %i.dhq, %bb.cy ] ; 2 uses
  %.010823585 = phi ptr [ %i.deq, %bb.cx ], [ %i.dhp, %bb.cy ] ; 2 uses
  %.010833584 = phi ptr [ %i.dep, %bb.cx ], [ %i.dho, %bb.cy ] ; 2 uses
  %.010843583 = phi ptr [ %i.deo, %bb.cx ], [ %i.dhn, %bb.cy ] ; 2 uses
  %.010853582 = phi ptr [ %i.den, %bb.cx ], [ %i.dhm, %bb.cy ] ; 2 uses
  %i.dfu = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv3664
  %i.dfv = load <2 x float>, ptr %.010843583, align 4, !tbaa !39 ; 2 uses
  %i.dfw = load <2 x float>, ptr %.010833584, align 4, !tbaa !39 ; 2 uses
  %i.dfx = fadd fast <2 x float> %i.dfw, %i.dfv   ; 3 uses
  %i.dfy = load <2 x float>, ptr %.010823585, align 4, !tbaa !39 ; 2 uses
  %i.dfz = load <2 x float>, ptr %.010813586, align 4, !tbaa !39 ; 2 uses
  %i.dga = fadd fast <2 x float> %i.dfz, %i.dfy   ; 3 uses
  %i.dgb = load <2 x float>, ptr %.010803587, align 4, !tbaa !39 ; 2 uses
  %i.dgc = load <2 x float>, ptr %.010793588, align 4, !tbaa !39 ; 2 uses
  %i.dgd = fadd fast <2 x float> %i.dgc, %i.dgb   ; 3 uses
  %i.dge = load <2 x float>, ptr %.010853582, align 4, !tbaa !39
  %i.dgf = fmul fast <2 x float> %i.dgd, splat (float 3.200000e+01)
  %i.dgg = fadd fast <2 x float> %i.dga, %i.dfx
  %i.dgh = fadd fast <2 x float> %i.dgg, %i.dgf
  %i.dgi = fadd fast <2 x float> %i.dgh, %i.dge
  store <2 x float> %i.dgi, ptr %i.dfu, align 8, !tbaa !39
  %i.dgj = getelementptr inbounds nuw [8 x i8], ptr %i.cqr, i64 %indvars.iv3664
  %i.dgk = fsub fast <2 x float> %i.dfv, %i.dfw   ; 3 uses
  %i.dgl = fsub fast <2 x float> %i.dfy, %i.dfz   ; 3 uses
  %i.dgm = fsub fast <2 x float> %i.dgb, %i.dgc   ; 3 uses
  %i.dgn = fmul fast <2 x float> %i.dgm, splat (float 1.600000e+01)
  %i.dgo = fmul fast <2 x float> %i.dgl, splat (float 2.000000e+00)
  %i.dgp = fadd fast <2 x float> %i.dgo, %i.dgk
  %i.dgq = fadd fast <2 x float> %i.dgp, %i.dgn
  store <2 x float> %i.dgq, ptr %i.dgj, align 8, !tbaa !39
  %i.dgr = getelementptr inbounds nuw [8 x i8], ptr %i.cqs, i64 %indvars.iv3664
  %i.dgs = fmul fast <2 x float> %i.dga, splat (float 4.000000e+00)
  %i.dgt = fadd fast <2 x float> %i.dgs, %i.dfx
  %i.dgu = fmul fast <2 x float> %i.dgd, splat (float 8.000000e+00)
  %i.dgv = fadd fast <2 x float> %i.dgt, %i.dgu
  store <2 x float> %i.dgv, ptr %i.dgr, align 8, !tbaa !39
  %i.dgw = getelementptr inbounds nuw [8 x i8], ptr %i.cqt, i64 %indvars.iv3664
  %i.dgx = fmul fast <2 x float> %i.dgl, splat (float 8.000000e+00)
  %i.dgy = fadd fast <2 x float> %i.dgx, %i.dgk
  %i.dgz = fmul fast <2 x float> %i.dgm, splat (float 4.000000e+00)
  %i.dha = fadd fast <2 x float> %i.dgy, %i.dgz
  store <2 x float> %i.dha, ptr %i.dgw, align 8, !tbaa !39
  %i.dhb = getelementptr inbounds nuw [8 x i8], ptr %i.cqu, i64 %indvars.iv3664
  %i.dhc = fmul fast <2 x float> %i.dga, splat (float 1.600000e+01)
  %i.dhd = fmul fast <2 x float> %i.dgd, splat (float 2.000000e+00)
  %i.dhe = fadd fast <2 x float> %i.dhc, %i.dfx
  %i.dhf = fadd fast <2 x float> %i.dhe, %i.dhd
  store <2 x float> %i.dhf, ptr %i.dhb, align 8, !tbaa !39
  %i.dhg = getelementptr inbounds nuw [8 x i8], ptr %i.cqv, i64 %indvars.iv3664
  %i.dhh = load <2 x float>, ptr %.010783589, align 4, !tbaa !39
  %i.dhi = fmul fast <2 x float> %i.dgl, splat (float 3.200000e+01)
  %i.dhj = fadd fast <2 x float> %i.dhi, %i.dgk
  %i.dhk = fadd fast <2 x float> %i.dhj, %i.dgm
  %i.dhl = fadd fast <2 x float> %i.dhk, %i.dhh
  store <2 x float> %i.dhl, ptr %i.dhg, align 8, !tbaa !39
  %i.dhm = getelementptr inbounds nuw [4 x i8], ptr %.010853582, i64 %i.cqx
  %i.dhn = getelementptr inbounds nuw [4 x i8], ptr %.010843583, i64 %i.cqx
  %i.dho = getelementptr inbounds nuw [4 x i8], ptr %.010833584, i64 %i.cqx
  %i.dhp = getelementptr inbounds nuw [4 x i8], ptr %.010823585, i64 %i.cqx
  %i.dhq = getelementptr inbounds nuw [4 x i8], ptr %.010813586, i64 %i.cqx
  %i.dhr = getelementptr inbounds nuw [4 x i8], ptr %.010803587, i64 %i.cqx
  %i.dhs = getelementptr inbounds nuw [4 x i8], ptr %.010793588, i64 %i.cqx
  %i.dht = getelementptr inbounds nuw [4 x i8], ptr %.010783589, i64 %i.cqx
  %indvars.iv.next3665 = add nuw nsw i64 %indvars.iv3664, 1 ; 2 uses
  %exitcond3667.not = icmp eq i64 %indvars.iv.next3665, 8
  br i1 %exitcond3667.not, label %_ZN4ncnn3MatD2Ev.exit1127, label %bb.cy, !llvm.loop !2389

bb.cz:                                            ; preds = %bb.em
  %indvars.iv.next3673 = add nuw nsw i64 %indvars.iv3672, 1 ; 2 uses
  %exitcond3676.not = icmp eq i64 %indvars.iv.next3673, %wide.trip.count3675
  br i1 %exitcond3676.not, label %._crit_edge, label %bb.cx, !llvm.loop !2390

bb.da:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit1127, %bb.em
  %indvars.iv3668 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit1127 ], [ %indvars.iv.next3669, %bb.em ] ; 3 uses
  %.010653591 = phi ptr [ %i.dfe, %_ZN4ncnn3MatD2Ev.exit1127 ], [ %.11066, %bb.em ] ; 9 uses
  %.not1115 = icmp slt i64 %indvars.iv3668, %invariant.op3737
  br i1 %.not1115, label %bb.db, label %bb.em

bb.db:                                            ; preds = %bb.da
  %i.dhu = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %indvars.iv3668 ; 8 uses
  %i.dhv = getelementptr inbounds nuw i8, ptr %i.dhu, i64 8
  %i.dhw = getelementptr inbounds nuw i8, ptr %i.dhu, i64 16
  %i.dhx = getelementptr inbounds nuw i8, ptr %i.dhu, i64 24
  %i.dhy = getelementptr inbounds nuw i8, ptr %i.dhu, i64 32
  %i.dhz = getelementptr inbounds nuw i8, ptr %i.dhu, i64 40
  %i.dia = getelementptr inbounds nuw i8, ptr %i.dhu, i64 48
  %i.dib = getelementptr inbounds nuw i8, ptr %i.dhu, i64 56
  %i.dic = load <2 x float>, ptr %i.dhv, align 8, !tbaa !39 ; 2 uses
  %i.did = load <2 x float>, ptr %i.dhw, align 16, !tbaa !39 ; 2 uses
  %i.die = load <2 x float>, ptr %i.dhx, align 8, !tbaa !39 ; 2 uses
  %i.dif = load <2 x float>, ptr %i.dhy, align 16, !tbaa !39 ; 2 uses
  %i.dig = load <2 x float>, ptr %i.dhz, align 8, !tbaa !39 ; 2 uses
  %i.dih = load <2 x float>, ptr %i.dia, align 16, !tbaa !39 ; 2 uses
  %i.dii = load <2 x float>, ptr %i.dib, align 8, !tbaa !39
  %i.dij = fsub fast <2 x float> %i.dic, %i.did
  %i.dik = fsub fast <2 x float> %i.die, %i.dif   ; 3 uses
  %i.dil = fsub fast <2 x float> %i.dig, %i.dih   ; 3 uses
  %i.dim = fadd fast <2 x float> %i.dij, %i.deh   ; 3 uses
  %i.din = fmul fast <2 x float> %i.dil, splat (float 1.600000e+01)
  %i.dio = fmul fast <2 x float> %i.dik, splat (float 2.000000e+00)
  %i.dip = fadd fast <2 x float> %i.dio, %i.dim
  %i.diq = fadd fast <2 x float> %i.dip, %i.din   ; 11 uses
  %i.dir = fmul fast <2 x float> %i.dik, splat (float 8.000000e+00)
  %i.dis = fadd fast <2 x float> %i.dir, %i.dim
  %i.dit = fmul fast <2 x float> %i.dil, splat (float 4.000000e+00)
  %i.diu = fadd fast <2 x float> %i.dis, %i.dit   ; 11 uses
  %i.div = fadd fast <2 x float> %i.did, %i.dic
  %i.diw = fadd fast <2 x float> %i.dif, %i.die   ; 3 uses
  %i.dix = fadd fast <2 x float> %i.dih, %i.dig   ; 3 uses
  %i.diy = fadd fast <2 x float> %i.div, %i.deh   ; 3 uses
  %i.diz = load <2 x float>, ptr %i.dhu, align 16, !tbaa !39
  %i.dja = fmul fast <2 x float> %i.dix, splat (float 3.200000e+01)
  %i.djb = fadd fast <2 x float> %i.diy, %i.diz
  %i.djc = fadd fast <2 x float> %i.djb, %i.diw
  %i.djd = fadd fast <2 x float> %i.djc, %i.dja   ; 11 uses
  %i.dje = fmul fast <2 x float> %i.diw, splat (float 4.000000e+00)
  %i.djf = fadd fast <2 x float> %i.dje, %i.diy
  %i.djg = fmul fast <2 x float> %i.dix, splat (float 8.000000e+00)
  %i.djh = fadd fast <2 x float> %i.djf, %i.djg   ; 11 uses
  %i.dji = fmul fast <2 x float> %i.diw, splat (float 1.600000e+01)
  %i.djj = fmul fast <2 x float> %i.dix, splat (float 2.000000e+00)
  %i.djk = fadd fast <2 x float> %i.dji, %i.diy
  %i.djl = fadd fast <2 x float> %i.djk, %i.djj   ; 11 uses
  %i.djm = fmul fast <2 x float> %i.dik, splat (float 3.200000e+01)
  %i.djn = fadd fast <2 x float> %i.dim, %i.djm
end_hunk_19
begin_hunk_20_@_ZN4ncnnL41convolution_gemm_transB_packed_tile_bf16sERKNS_3MatES2_S2_RS0_S3_iiiiiibiS2_:bb.a
  %i.hvl = getelementptr i8, ptr %next.gep5431, i64 48
  %wide.load5436 = load <8 x i16>, ptr %next.gep5431, align 2, !tbaa !573
  %wide.load5437 = load <8 x i16>, ptr %i.hvj, align 2, !tbaa !573
  %wide.load5438 = load <8 x i16>, ptr %i.hvk, align 2, !tbaa !573
  %wide.load5439 = load <8 x i16>, ptr %i.hvl, align 2, !tbaa !573
  %i.hvm = zext <8 x i16> %wide.load5436 to <8 x i32>
  %i.hvn = zext <8 x i16> %wide.load5437 to <8 x i32>
  %i.hvo = zext <8 x i16> %wide.load5438 to <8 x i32>
  %i.hvp = zext <8 x i16> %wide.load5439 to <8 x i32>
  %i.hvq = shl nuw <8 x i32> %i.hvm, splat (i32 16)
  %i.hvr = shl nuw <8 x i32> %i.hvn, splat (i32 16)
  %i.hvs = shl nuw <8 x i32> %i.hvo, splat (i32 16)
  %i.hvt = shl nuw <8 x i32> %i.hvp, splat (i32 16)
  %i.hvu = bitcast <8 x i32> %i.hvq to <8 x float>
  %i.hvv = bitcast <8 x i32> %i.hvr to <8 x float>
  %i.hvw = bitcast <8 x i32> %i.hvs to <8 x float>
  %i.hvx = bitcast <8 x i32> %i.hvt to <8 x float>
  %i.hvy = fmul fast <8 x float> %i.hvu, %i.hvf
  %i.hvz = fmul fast <8 x float> %i.hvv, %i.hvg
  %i.hwa = fmul fast <8 x float> %i.hvw, %i.hvh
  %i.hwb = fmul fast <8 x float> %i.hvx, %i.hvi
  %i.hwc = fadd fast <8 x float> %i.hvy, %vec.phi5426 ; 2 uses
  %i.hwd = fadd fast <8 x float> %i.hvz, %vec.phi5427 ; 2 uses
  %i.hwe = fadd fast <8 x float> %i.hwa, %vec.phi5428 ; 2 uses
  %i.hwf = fadd fast <8 x float> %i.hwb, %vec.phi5429 ; 2 uses
  %index.next5440 = add nuw i64 %index5425, 32    ; 2 uses
  %i.hwg = icmp eq i64 %index.next5440, %n.vec5423
  br i1 %i.hwg, label %middle.block5441, label %vector.body5424, !llvm.loop !2483

middle.block5441:                                 ; preds = %vector.body5424
  %bin.rdx5442 = fadd fast <8 x float> %i.hwd, %i.hwc
  %bin.rdx5443 = fadd fast <8 x float> %i.hwe, %bin.rdx5442
  %bin.rdx5444 = fadd fast <8 x float> %i.hwf, %bin.rdx5443
  %i.hwh = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx5444) ; 3 uses
  br i1 %cmp.n5445, label %._crit_edge5155.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block5441
  br i1 %min.epilog.iters.check, label %.lr.ph5154.preheader, label %vec.epilog.ph, !prof !298

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec5423, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx5448 = phi float [ %i.hwh, %vec.epilog.iter.check ], [ %.0745, %vector.main.loop.iter.check ]
  %i.hwi = getelementptr i8, ptr %.45160, i64 %i.fjw
  %i.hwj = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx5448, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index5451 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next5457, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi5452 = phi <4 x float> [ %i.hwj, %vec.epilog.ph ], [ %i.hws, %vec.epilog.vector.body ]
  %i.hwk = shl i64 %index5451, 1                  ; 2 uses
  %next.gep5453 = getelementptr i8, ptr %.37725168, i64 %i.hwk
  %next.gep5454 = getelementptr i8, ptr %.45160, i64 %i.hwk
  %wide.load5455 = load <4 x i16>, ptr %next.gep5453, align 2, !tbaa !573
  %i.hwl = zext <4 x i16> %wide.load5455 to <4 x i32>
  %i.hwm = shl nuw <4 x i32> %i.hwl, splat (i32 16)
  %i.hwn = bitcast <4 x i32> %i.hwm to <4 x float>
  %wide.load5456 = load <4 x i16>, ptr %next.gep5454, align 2, !tbaa !573
  %i.hwo = zext <4 x i16> %wide.load5456 to <4 x i32>
  %i.hwp = shl nuw <4 x i32> %i.hwo, splat (i32 16)
  %i.hwq = bitcast <4 x i32> %i.hwp to <4 x float>
  %i.hwr = fmul fast <4 x float> %i.hwq, %i.hwn
  %i.hws = fadd fast <4 x float> %i.hwr, %vec.phi5452 ; 2 uses
  %index.next5457 = add nuw i64 %index5451, 4     ; 2 uses
  %i.hwt = icmp eq i64 %index.next5457, %n.vec5450
  br i1 %i.hwt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2484

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.hwu = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.hws) ; 2 uses
  br i1 %cmp.n5458, label %._crit_edge5155.loopexit, label %.lr.ph5154.preheader

.lr.ph5154.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.05152.ph = phi i32 [ 0, %iter.check ], [ %i.fjt, %vec.epilog.iter.check ], [ %i.fjv, %vec.epilog.middle.block ]
  %.07445151.ph = phi ptr [ %.37725168, %iter.check ], [ %i.hls, %vec.epilog.iter.check ], [ %i.hlt, %vec.epilog.middle.block ]
  %.15150.ph = phi float [ %.0745, %iter.check ], [ %i.hwh, %vec.epilog.iter.check ], [ %i.hwu, %vec.epilog.middle.block ]
  %.55149.ph = phi ptr [ %.45160, %iter.check ], [ %i.hur, %vec.epilog.iter.check ], [ %i.hwi, %vec.epilog.middle.block ]
  br label %.lr.ph5154

.lr.ph5154:                                       ; preds = %.lr.ph5154.preheader, %.lr.ph5154
  %.05152 = phi i32 [ %i.hxh, %.lr.ph5154 ], [ %.05152.ph, %.lr.ph5154.preheader ]
  %.07445151 = phi ptr [ %i.hxf, %.lr.ph5154 ], [ %.07445151.ph, %.lr.ph5154.preheader ] ; 2 uses
  %.15150 = phi float [ %i.hxe, %.lr.ph5154 ], [ %.15150.ph, %.lr.ph5154.preheader ]
  %.55149 = phi ptr [ %i.hxg, %.lr.ph5154 ], [ %.55149.ph, %.lr.ph5154.preheader ] ; 2 uses
  %i.hwv = load i16, ptr %.07445151, align 2, !tbaa !573
  %i.hww = zext i16 %i.hwv to i32
  %i.hwx = shl nuw i32 %i.hww, 16
  %i.hwy = bitcast i32 %i.hwx to float
  %i.hwz = load i16, ptr %.55149, align 2, !tbaa !573
  %i.hxa = zext i16 %i.hwz to i32
  %i.hxb = shl nuw i32 %i.hxa, 16
  %i.hxc = bitcast i32 %i.hxb to float
  %i.hxd = fmul fast float %i.hxc, %i.hwy
  %i.hxe = fadd fast float %i.hxd, %.15150        ; 2 uses
  %i.hxf = getelementptr inbounds nuw i8, ptr %.07445151, i64 2
  %i.hxg = getelementptr inbounds nuw i8, ptr %.55149, i64 2
  %i.hxh = add nuw nsw i32 %.05152, 1             ; 2 uses
  %exitcond5270.not = icmp eq i32 %i.hxh, %7
  br i1 %exitcond5270.not, label %._crit_edge5155.loopexit, label %.lr.ph5154, !llvm.loop !2485

._crit_edge5155.loopexit:                         ; preds = %.lr.ph5154, %vec.epilog.middle.block, %middle.block5441
  %.lcssa5360 = phi float [ %i.hwu, %vec.epilog.middle.block ], [ %i.hwh, %middle.block5441 ], [ %i.hxe, %.lr.ph5154 ]
  %i.hxi = getelementptr i8, ptr %.45160, i64 %i.fjn
  %scevgep5269 = getelementptr i8, ptr %i.hxi, i64 2
  br label %._crit_edge5155

._crit_edge5155:                                  ; preds = %._crit_edge5155.loopexit, %bb.ea
  %.5.lcssa = phi ptr [ %.45160, %bb.ea ], [ %scevgep5269, %._crit_edge5155.loopexit ]
  %.1.lcssa = phi float [ %.0745, %bb.ea ], [ %.lcssa5360, %._crit_edge5155.loopexit ] ; 14 uses
  br i1 %8, label %bb.eb, label %bb.el

bb.eb:                                            ; preds = %._crit_edge5155
  switch i32 %9, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.ec
    i32 2, label %bb.ed
    i32 3, label %bb.ee
    i32 4, label %bb.eg
    i32 5, label %bb.eh
    i32 6, label %bb.ei
  ]

bb.ec:                                            ; preds = %bb.eb
  %i.hxj = tail call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.1.lcssa, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.ed:                                            ; preds = %bb.eb
  %i.hxk = load float, ptr %i.hly, align 4, !tbaa !39
  %i.hxl = fcmp fast ogt float %.1.lcssa, 0.000000e+00
  %i.hxm = select fast i1 %i.hxl, float 1.000000e+00, float %i.hxk
  %i.hxn = fmul fast float %i.hxm, %.1.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.ee:                                            ; preds = %bb.eb
  %i.hxo = load float, ptr %i.hlw, align 4, !tbaa !39
  %i.hxp = load float, ptr %i.hlx, align 4, !tbaa !39 ; 2 uses
  %.03806 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.1.lcssa, float %i.hxo) ; 2 uses
  %i.hxq = fcmp fast ogt float %.03806, %i.hxp
  br i1 %i.hxq, label %bb.ef, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.ef:                                            ; preds = %bb.ee
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.eg:                                            ; preds = %bb.eb
  %.sroa.speculated505 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.1.lcssa, float f0x42B0C0A5)
  %.sroa.speculated = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated505, float f0xC2B0C0A5)
  %i.hxr = fneg fast float %.sroa.speculated
  %i.hxs = tail call fast float @llvm.exp.f32(float %i.hxr)
  %i.hxt = fadd fast float %i.hxs, 1.000000e+00
  %i.hxu = fdiv fast float 1.000000e+00, %i.hxt
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.eh:                                            ; preds = %bb.eb
  %i.hxv = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %.1.lcssa)
  %i.hxw = fadd fast float %i.hxv, 1.000000e+00
  %i.hxx = tail call fast float @llvm.log.f32(float %i.hxw)
  %i.hxy = tail call fast float @llvm.tanh.f32(float %i.hxx)
  %i.hxz = fmul fast float %i.hxy, %.1.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.ei:                                            ; preds = %bb.eb
  %i.hya = load float, ptr %i.hlu, align 4, !tbaa !39 ; 3 uses
  %i.hyb = load float, ptr %i.hlv, align 4, !tbaa !39 ; 2 uses
  %i.hyc = fneg fast float %i.hyb
  %i.hyd = fdiv fast float %i.hyc, %i.hya         ; 2 uses
  %i.hye = fcmp fast olt float %.1.lcssa, %i.hyd
  br i1 %i.hye, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.hyf = fdiv fast float 1.000000e+00, %i.hya
  %i.hyg = fadd fast float %i.hyd, %i.hyf
  %i.hyh = fcmp fast ogt float %.1.lcssa, %i.hyg
  br i1 %i.hyh, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.hyi = fmul fast float %i.hya, %.1.lcssa
  %i.hyj = fadd fast float %i.hyi, %i.hyb
  %i.hyk = fmul fast float %i.hyj, %.1.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.ei, %bb.eb, %bb.ec, %bb.ed, %bb.ee, %bb.ef, %bb.eg, %bb.eh, %bb.ej, %bb.ek
  %.13807 = phi nsz float [ %.1.lcssa, %bb.eb ], [ %i.hxj, %bb.ec ], [ %i.hxn, %bb.ed ], [ %i.hxp, %bb.ef ], [ %.03806, %bb.ee ], [ %i.hxu, %bb.eg ], [ %i.hxz, %bb.eh ], [ %i.hyk, %bb.ek ], [ %.1.lcssa, %bb.ej ], [ 0.000000e+00, %bb.ei ]
  %i.hyl = bitcast float %.13807 to i32
  %i.hym = lshr i32 %i.hyl, 16
  %i.hyn = trunc nuw i32 %i.hym to i16
  store i16 %i.hyn, ptr %.47595159, align 2, !tbaa !573
  %i.hyo = getelementptr inbounds nuw i8, ptr %.47595159, i64 2
  br label %bb.em

bb.el:                                            ; preds = %._crit_edge5155
  store float %.1.lcssa, ptr %.155158, align 4, !tbaa !39
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %.5760 = phi ptr [ %i.hyo, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ], [ %.47595159, %bb.el ]
  %i.hyp = getelementptr inbounds nuw i8, ptr %.155158, i64 4 ; 2 uses
  %i.hyq = add nuw nsw i32 %.25161, 1             ; 2 uses
  %exitcond5271.not = icmp eq i32 %i.hyq, %5
  br i1 %exitcond5271.not, label %._crit_edge5163, label %bb.dz, !llvm.loop !2486

._crit_edge5163:                                  ; preds = %bb.em, %.preheader
  %.15.lcssa = phi ptr [ %.14.lcssa, %.preheader ], [ %i.hyp, %bb.em ]
  %i.hyr = getelementptr inbounds [2 x i8], ptr %.37725168, i64 %i.fjh
  %indvars.iv.next5273 = add nsw i64 %indvars.iv5272, 1 ; 2 uses
  %exitcond5275.not = icmp eq i64 %indvars.iv.next5273, %wide.trip.count
  br i1 %exitcond5275.not, label %._crit_edge5170, label %bb.cw, !llvm.loop !2487

._crit_edge5170:                                  ; preds = %._crit_edge5163, %.preheader4882
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL40convolution_im2col_input_tile_impl_bf16sERKNS_3MatERS0_iiiiiiiiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree writeonly %.0.val, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 6 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !75
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !66   ; 29 uses
  %i.e = add nsw i32 %5, -1
  %i.f = mul nsw i32 %7, %i.e
  %.neg = xor i32 %i.f, -1
  %i.g = add i32 %i.b, %.neg
  %i.h = sdiv i32 %i.g, %9
  %i.i = add nsw i32 %i.h, 1                      ; 26 uses
  %i.j = mul nsw i32 %6, %5                       ; 10 uses
  %factor.op.mul354 = mul i32 %i.d, %9            ; 3 uses
  %i.k = icmp sgt i32 %2, 7
  br i1 %i.k, label %.lr.ph, label %.preheader342

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %factor.op.mul349 = mul i32 %7, %i.d
  %i.n = sext i32 %9 to i64
  %i.o = shl nsw i32 %9, 1
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i32 %9, 3
  %i.r = sext i32 %i.q to i64
  %i.s = shl nsw i32 %9, 2
  %i.t = sext i32 %i.s to i64                     ; 2 uses
  %i.u = mul nsw i32 %9, 5
  %i.v = sext i32 %i.u to i64
  %i.w = mul nsw i32 %9, 6
  %i.x = sext i32 %i.w to i64
  %i.y = mul nsw i32 %9, 7
  %i.z = sext i32 %i.y to i64
  %i.aa = shl nsw i32 %9, 3
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = mul nsw i32 %9, 12
  %i.ad = sext i32 %i.ac to i64
  %i.ae = shl nsw i32 %9, 4
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  %i.ag = mul nsw i32 %9, 20
  %i.ah = sext i32 %i.ag to i64
  %i.ai = mul nsw i32 %9, 24
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = mul nsw i32 %9, 28
  %i.al = sext i32 %i.ak to i64
  %i.am = shl nsw i32 %9, 5
  %i.an = sext i32 %i.am to i64
  %i.ao = mul nsw i32 %9, 40
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul nsw i32 %9, 48
  %i.ar = sext i32 %i.aq to i64
  %i.as = mul nsw i32 %9, 56
  %i.at = sext i32 %i.as to i64
  %i.au = sdiv i32 %4, %i.d                       ; 4 uses
  %i.av = icmp sgt i32 %i.au, 0
  %i.aw = icmp sgt i32 %i.au, 0
  br label %bb.b

.preheader342:                                    ; preds = %.loopexit344, %bb.a
  %.0617.lcssa = phi i32 [ 0, %bb.a ], [ %i.zo, %.loopexit344 ] ; 3 uses
  %.0616.lcssa = phi ptr [ %.0.val, %bb.a ], [ %.9, %.loopexit344 ] ; 2 uses
  %i.ax = or disjoint i32 %.0617.lcssa, 3
  %i.ay = icmp slt i32 %i.ax, %2
  br i1 %i.ay, label %.lr.ph371, label %.preheader

.lr.ph371:                                        ; preds = %.preheader342
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %factor.op.mul362 = mul i32 %7, %i.d
  %i.bb = sext i32 %9 to i64
  %i.bc = shl nsw i32 %9, 1
  %i.bd = sext i32 %i.bc to i64
  %i.be = mul nsw i32 %9, 3
  %i.bf = sext i32 %i.be to i64
  %i.bg = shl nsw i32 %9, 2
  %i.bh = sext i32 %i.bg to i64
  %i.bi = shl nsw i32 %9, 3
  %i.bj = sext i32 %i.bi to i64                   ; 2 uses
  %i.bk = mul nsw i32 %9, 12
  %i.bl = sext i32 %i.bk to i64
  %i.bm = shl nsw i32 %9, 4
  %i.bn = sext i32 %i.bm to i64
  %i.bo = mul nsw i32 %9, 24
  %i.bp = sext i32 %i.bo to i64
  %i.bq = sdiv i32 %4, %i.d                       ; 4 uses
  %i.br = icmp sgt i32 %i.bq, 0
  %i.bs = icmp sgt i32 %i.bq, 0
  br label %bb.g

bb.b:                                             ; preds = %.lr.ph, %.loopexit344
  %.0616356 = phi ptr [ %.0.val, %.lr.ph ], [ %.9, %.loopexit344 ] ; 4 uses
  %.0617355 = phi i32 [ 0, %.lr.ph ], [ %i.zo, %.loopexit344 ] ; 2 uses
  %i.bt = add nsw i32 %.0617355, %1               ; 9 uses
  %i.bu = sdiv i32 %i.bt, %i.i                    ; 3 uses
  %i.bv = add nsw i32 %i.bt, 1                    ; 2 uses
  %i.bw = sdiv i32 %i.bv, %i.i
  %i.bx = add nsw i32 %i.bt, 2                    ; 2 uses
  %i.by = sdiv i32 %i.bx, %i.i
  %i.bz = add nsw i32 %i.bt, 3                    ; 2 uses
  %i.ca = sdiv i32 %i.bz, %i.i
  %i.cb = add nsw i32 %i.bt, 4                    ; 2 uses
  %i.cc = sdiv i32 %i.cb, %i.i
  %i.cd = add nsw i32 %i.bt, 5                    ; 2 uses
  %i.ce = sdiv i32 %i.cd, %i.i
  %i.cf = add nsw i32 %i.bt, 6                    ; 2 uses
  %i.cg = sdiv i32 %i.cf, %i.i
  %i.ch = add nsw i32 %i.bt, 7                    ; 2 uses
  %i.ci = sdiv i32 %i.ch, %i.i                    ; 2 uses
  %i.cj = srem i32 %i.bt, %i.i                    ; 2 uses
  %i.ck = srem i32 %i.bv, %i.i
  %i.cl = srem i32 %i.bx, %i.i
  %i.cm = srem i32 %i.bz, %i.i
  %i.cn = srem i32 %i.cb, %i.i
  %i.co = srem i32 %i.cd, %i.i
  %i.cp = srem i32 %i.cf, %i.i
  %i.cq = srem i32 %i.ch, %i.i
  %i.cr = icmp eq i32 %i.bu, %i.ci
  br i1 %i.cr, label %.preheader343, label %.preheader345

.preheader345:                                    ; preds = %bb.b
  br i1 %i.av, label %_ZNK4ncnn3Mat7channelEi.exit641.lr.ph, label %.loopexit344

_ZNK4ncnn3Mat7channelEi.exit641.lr.ph:            ; preds = %.preheader345
  %i.cs = sdiv i32 %3, %i.d
  %i.ct = mul nsw i32 %i.cj, %9
  %i.cu = mul nsw i32 %i.ck, %9
  %i.cv = mul nsw i32 %i.cl, %9
  %i.cw = mul nsw i32 %i.cm, %9
  %i.cx = mul nsw i32 %i.cn, %9
  %i.cy = mul nsw i32 %i.co, %9
  %i.cz = mul nsw i32 %i.cp, %9
  %i.da = mul nsw i32 %i.cq, %9
  %i.db = mul nsw i32 %i.bu, %10
  %i.dc = mul nsw i32 %i.bw, %10
  %i.dd = mul nsw i32 %i.by, %10
  %i.de = mul nsw i32 %i.ca, %10
  %i.df = mul nsw i32 %i.cc, %10
  %i.dg = mul nsw i32 %i.ce, %10
  %i.dh = mul nsw i32 %i.cg, %10
  %i.di = mul nsw i32 %i.ci, %10
  br label %_ZNK4ncnn3Mat7channelEi.exit641

.preheader343:                                    ; preds = %bb.b
  %factor.op.mul.reass = mul i32 %i.cj, %factor.op.mul354
  br i1 %i.aw, label %_ZNK4ncnn3Mat7channelEi.exit642.lr.ph, label %.loopexit344

_ZNK4ncnn3Mat7channelEi.exit642.lr.ph:            ; preds = %.preheader343
  %i.dj = sdiv i32 %3, %i.d
  %i.dk = mul nsw i32 %i.bu, %10
  br label %_ZNK4ncnn3Mat7channelEi.exit642

_ZNK4ncnn3Mat7channelEi.exit642:                  ; preds = %_ZNK4ncnn3Mat7channelEi.exit642.lr.ph, %_ZN4ncnn3MatD2Ev.exit649
  %.1352 = phi ptr [ %.0616356, %_ZNK4ncnn3Mat7channelEi.exit642.lr.ph ], [ %.4, %_ZN4ncnn3MatD2Ev.exit649 ] ; 24 uses
  %.0622351 = phi i32 [ 0, %_ZNK4ncnn3Mat7channelEi.exit642.lr.ph ], [ %i.nt, %_ZN4ncnn3MatD2Ev.exit649 ] ; 2 uses
  %i.dl = add nsw i32 %i.dj, %.0622351            ; 2 uses
  %i.dm = sdiv i32 %i.dl, %i.j
  %i.dn = srem i32 %i.dl, %i.j                    ; 2 uses
  %i.do = sdiv i32 %i.dn, %5
  %i.dp = srem i32 %i.dn, %5
  %i.dq = load i32, ptr %i.a, align 4, !tbaa !75, !noalias !2488
  %i.dr = load ptr, ptr %0, align 8, !tbaa !18, !noalias !2488
  %i.ds = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !2488
  %i.dt = sext i32 %i.dm to i64
  %i.du = mul i64 %i.ds, %i.dt
  %i.dv = load i64, ptr %i.m, align 8, !tbaa !65, !noalias !2488 ; 2 uses
  %i.dw = mul i64 %i.du, %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dw
  %i.dy = sext i32 %i.dq to i64
  %.reass350 = mul i32 %i.dp, %factor.op.mul349
  %i.dz = add i32 %.reass350, %factor.op.mul.reass
  %i.ea = mul nsw i32 %i.do, %8
  %i.eb = add nsw i32 %i.ea, %i.dk
  %i.ec = sext i32 %i.eb to i64
  %i.ed = mul nsw i64 %i.dy, %i.ec
  %i.ee = mul i64 %i.ed, %i.dv
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.ee
  %i.eg = sext i32 %i.dz to i64
  %i.eh = getelementptr inbounds [2 x i8], ptr %i.ef, i64 %i.eg ; 24 uses
  switch i32 %i.d, label %_ZN4ncnn3MatD2Ev.exit649 [
    i32 8, label %.thread
    i32 4, label %bb.c
    i32 1, label %bb.d
  ]

.thread:                                          ; preds = %_ZNK4ncnn3Mat7channelEi.exit642
  %i.ei = load <8 x i16>, ptr %i.eh, align 1, !tbaa !316 ; 2 uses
  %i.ej = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ei, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ek = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ei, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.el = shufflevector <8 x i16> %i.ej, <8 x i16> %i.ek, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.em = bitcast <16 x i16> %i.el to <8 x i32>   ; 2 uses
  %i.en = getelementptr inbounds [2 x i8], ptr %i.eh, i64 %i.ab
end_hunk_20
