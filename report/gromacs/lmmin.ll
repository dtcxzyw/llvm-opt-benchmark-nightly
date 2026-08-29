Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/lmmin?download=true
inline.NumInlined: 23
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_Z6lmmin2iPdS_S_iPKdPKvPFvS1_iS3_S_PiEPK17lm_control_structP16lm_status_struct:bb.a
  %i.akt = fdiv double %.lcssa1772, %i.aks
  %i.aku = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv451.i
  store double %i.akt, ptr %i.aku, align 8, !tbaa !26
  %indvars.iv.next452.i = add nuw nsw i64 %indvars.iv451.i, 1 ; 2 uses
  %indvars.iv.next450.i = add nuw nsw i64 %indvars.iv449.i, 1
  %exitcond457.not.i = icmp eq i64 %indvars.iv.next452.i, %i.bc
  br i1 %exitcond457.not.i, label %.lr.ph.i302.i, label %.preheader365.i, !llvm.loop !109

.lr.ph.i302.i:                                    ; preds = %.epilog-lcssa1843, %bb.ef
  %indvars.iv.i303.i = phi i64 [ %indvars.iv.next.i314.i, %bb.ef ], [ 0, %.epilog-lcssa1843 ] ; 2 uses
  %.076.i304.i = phi double [ %.1.i313.i, %bb.ef ], [ 0.000000e+00, %.epilog-lcssa1843 ] ; 8 uses
  %.06075.i305.i = phi double [ %.161.i312.i, %bb.ef ], [ 0.000000e+00, %.epilog-lcssa1843 ] ; 8 uses
  %.06274.i306.i = phi double [ %.163.i311.i, %bb.ef ], [ 0.000000e+00, %.epilog-lcssa1843 ] ; 6 uses
  %.06473.i307.i = phi double [ %.165.i310.i, %bb.ef ], [ 0.000000e+00, %.epilog-lcssa1843 ] ; 6 uses
  %.06672.i308.i = phi double [ %.167.i309.i, %bb.ef ], [ 0.000000e+00, %.epilog-lcssa1843 ] ; 6 uses
  %i.akv = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.i303.i
  %i.akw = load double, ptr %i.akv, align 8, !tbaa !26 ; 4 uses
  %i.akx = tail call double @llvm.fabs.f64(double %i.akw) ; 10 uses
  %i.aky = fcmp ogt double %i.akx, f0x2000000000000000
  br i1 %i.aky, label %bb.dw, label %bb.eb

bb.dw:                                            ; preds = %.lr.ph.i302.i
  %i.akz = fcmp olt double %i.akx, %i.dp
  br i1 %i.akz, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.ala = tail call double @llvm.fmuladd.f64(double %i.akw, double %i.akw, double %.06473.i307.i)
  br label %bb.ef

bb.dy:                                            ; preds = %bb.dw
  %i.alb = fcmp ogt double %i.akx, %.06075.i305.i
  br i1 %i.alb, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.alc = fdiv double %.06075.i305.i, %i.akx     ; 2 uses
  %i.ald = fmul double %.06672.i308.i, %i.alc
  %i.ale = tail call double @llvm.fmuladd.f64(double %i.ald, double %i.alc, double 1.000000e+00)
  br label %bb.ef

bb.ea:                                            ; preds = %bb.dy
  %i.alf = fdiv double %i.akx, %.06075.i305.i     ; 2 uses
  %i.alg = tail call double @llvm.fmuladd.f64(double %i.alf, double %i.alf, double %.06672.i308.i)
  br label %bb.ef

bb.eb:                                            ; preds = %.lr.ph.i302.i
  %i.alh = fcmp ogt double %i.akx, %.076.i304.i
  br i1 %i.alh, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.ali = fdiv double %.076.i304.i, %i.akx       ; 2 uses
  %i.alj = fmul double %.06274.i306.i, %i.ali
  %i.alk = tail call double @llvm.fmuladd.f64(double %i.alj, double %i.ali, double 1.000000e+00)
  br label %bb.ef

bb.ed:                                            ; preds = %bb.eb
  %i.all = fcmp une double %i.akw, 0.000000e+00
  br i1 %i.all, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.alm = fdiv double %i.akx, %.076.i304.i       ; 2 uses
  %i.aln = tail call double @llvm.fmuladd.f64(double %i.alm, double %i.alm, double %.06274.i306.i)
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed, %bb.ec, %bb.ea, %bb.dz, %bb.dx
  %.167.i309.i = phi double [ %.06672.i308.i, %bb.dx ], [ %i.ale, %bb.dz ], [ %i.alg, %bb.ea ], [ %.06672.i308.i, %bb.ec ], [ %.06672.i308.i, %bb.ee ], [ %.06672.i308.i, %bb.ed ] ; 3 uses
  %.165.i310.i = phi double [ %i.ala, %bb.dx ], [ %.06473.i307.i, %bb.dz ], [ %.06473.i307.i, %bb.ea ], [ %.06473.i307.i, %bb.ec ], [ %.06473.i307.i, %bb.ee ], [ %.06473.i307.i, %bb.ed ] ; 7 uses
  %.163.i311.i = phi double [ %.06274.i306.i, %bb.dx ], [ %.06274.i306.i, %bb.dz ], [ %.06274.i306.i, %bb.ea ], [ %i.alk, %bb.ec ], [ %i.aln, %bb.ee ], [ %.06274.i306.i, %bb.ed ] ; 4 uses
  %.161.i312.i = phi double [ %.06075.i305.i, %bb.dx ], [ %i.akx, %bb.dz ], [ %.06075.i305.i, %bb.ea ], [ %.06075.i305.i, %bb.ec ], [ %.06075.i305.i, %bb.ee ], [ %.06075.i305.i, %bb.ed ] ; 4 uses
  %.1.i313.i = phi double [ %.076.i304.i, %bb.dx ], [ %.076.i304.i, %bb.dz ], [ %.076.i304.i, %bb.ea ], [ %i.akx, %bb.ec ], [ %.076.i304.i, %bb.ee ], [ %.076.i304.i, %bb.ed ] ; 8 uses
  %indvars.iv.next.i314.i = add nuw nsw i64 %indvars.iv.i303.i, 1 ; 2 uses
  %exitcond.not.i315.i = icmp eq i64 %indvars.iv.next.i314.i, %i.bc
  br i1 %exitcond.not.i315.i, label %._crit_edge.i316.i, label %.lr.ph.i302.i, !llvm.loop !41

._crit_edge.i316.i:                               ; preds = %bb.ef
  %i.alo = fcmp une double %.167.i309.i, 0.000000e+00
  br i1 %i.alo, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %._crit_edge.i316.i
  %i.alp = fdiv double %.165.i310.i, %.161.i312.i
  %i.alq = fdiv double %i.alp, %.161.i312.i
  %i.alr = fadd double %.167.i309.i, %i.alq
  %i.als = tail call double @sqrt(double noundef %i.alr) #11
  %i.alt = fmul double %.161.i312.i, %i.als
  br label %_Z8lm_enormiPKd.exit317.i

bb.eh:                                            ; preds = %._crit_edge.i316.i
  %i.alu = fcmp une double %.165.i310.i, 0.000000e+00
  br i1 %i.alu, label %bb.ei, label %.thread.i299.i

bb.ei:                                            ; preds = %bb.eh
  %i.alv = fcmp ult double %.165.i310.i, %.1.i313.i
  br i1 %i.alv, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.alw = fdiv double %.1.i313.i, %.165.i310.i
  %i.alx = fmul double %.163.i311.i, %.1.i313.i
  %i.aly = tail call double @llvm.fmuladd.f64(double %i.alw, double %i.alx, double 1.000000e+00)
  %i.alz = fmul double %.165.i310.i, %i.aly
  %i.ama = tail call double @sqrt(double noundef %i.alz) #11
  br label %_Z8lm_enormiPKd.exit317.i

bb.ek:                                            ; preds = %bb.ei
  %i.amb = fdiv double %.165.i310.i, %.1.i313.i
  %i.amc = tail call double @llvm.fmuladd.f64(double %.1.i313.i, double %.163.i311.i, double %i.amb)
  %i.amd = fmul double %.1.i313.i, %i.amc
  %i.ame = tail call double @sqrt(double noundef %i.amd) #11
  br label %_Z8lm_enormiPKd.exit317.i

.thread.i299.i:                                   ; preds = %bb.eh
  %i.amf = tail call double @sqrt(double noundef %.163.i311.i) #11
  %i.amg = fmul double %.1.i313.i, %i.amf
  br label %_Z8lm_enormiPKd.exit317.i

_Z8lm_enormiPKd.exit317.i:                        ; preds = %.thread.i299.i, %bb.ek, %bb.ej, %bb.eg
  %.069.i300.i = phi double [ %i.alt, %bb.eg ], [ %i.ama, %bb.ej ], [ %i.ame, %bb.ek ], [ %i.amg, %.thread.i299.i ] ; 2 uses
  %i.amh = fdiv double %.069.i300.i, %.3598       ; 2 uses
  %i.ami = fcmp oeq double %i.amh, 0.000000e+00
  br i1 %i.ami, label %bb.el, label %bb.em

bb.el:                                            ; preds = %_Z8lm_enormiPKd.exit317.i
  %i.amj = fcmp ole double %.3598, 1.000000e-01
  %i.amk = select i1 %i.amj, double %.3598, double 1.000000e-01
  %i.aml = fdiv double f0x0010000000000000, %i.amk
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %_Z8lm_enormiPKd.exit317.i
  %.0251.i = phi double [ %i.aml, %bb.el ], [ %i.amh, %_Z8lm_enormiPKd.exit317.i ] ; 3 uses
  %.inv.i = fcmp oge double %.1825, %.0253.i
  %.0253..i = select i1 %.inv.i, double %.1825, double %.0253.i ; 2 uses
  %.inv360.i = fcmp ole double %.0253..i, %.0251.i
  %i.amm = select i1 %.inv360.i, double %.0253..i, double %.0251.i ; 2 uses
  %i.amn = fcmp oeq double %i.amm, 0.000000e+00
  %i.amo = fdiv double %.069.i300.i, %.069.i.i728
  %storemerge.i = select i1 %i.amn, double %i.amo, double %i.amm
  br label %bb.en

bb.en:                                            ; preds = %bb.gj, %bb.em
  %.4828 = phi double [ %storemerge.i, %bb.em ], [ %..2255.i, %bb.gj ] ; 2 uses
  %.0262.i = phi i32 [ 0, %bb.em ], [ %i.bbf, %bb.gj ] ; 3 uses
  %.0256.i = phi double [ %i.afq, %bb.em ], [ %i.awk, %bb.gj ] ; 2 uses
  %.1254.i = phi double [ %.0253.i, %bb.em ], [ %.2255.i, %bb.gj ] ; 5 uses
  %.1252.i = phi double [ %.0251.i, %bb.em ], [ %.2.i, %bb.gj ] ; 5 uses
  %i.amp = fcmp oeq double %.4828, 0.000000e+00
  br i1 %i.amp, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.amq = fmul double %.1252.i, 1.000000e-03     ; 2 uses
  %i.amr = fcmp ole double %i.amq, f0x0010000000000000
  %i.ams = select i1 %i.amr, double f0x0010000000000000, double %i.amq
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %i.amt = phi double [ %i.ams, %bb.eo ], [ %.4828, %bb.en ] ; 9 uses
  %i.amu = tail call double @sqrt(double noundef %i.amt) #11 ; 2 uses
  br i1 %min.iters.check1530, label %scalar.ph1529.preheader, label %vector.ph1531

vector.ph1531:                                    ; preds = %bb.ep
  %broadcast.splatinsert1533 = insertelement <2 x double> poison, double %i.amu, i64 0
  %broadcast.splat1534 = shufflevector <2 x double> %broadcast.splatinsert1533, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1535

vector.body1535:                                  ; preds = %vector.body1535, %vector.ph1531
  %index1536 = phi i64 [ 0, %vector.ph1531 ], [ %index.next1539, %vector.body1535 ] ; 3 uses
  %i.amv = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %index1536 ; 2 uses
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amv, i64 16
  %wide.load1537 = load <2 x double>, ptr %i.amv, align 8, !tbaa !26
  %wide.load1538 = load <2 x double>, ptr %i.amw, align 8, !tbaa !26
  %i.amx = fmul <2 x double> %broadcast.splat1534, %wide.load1537
  %i.amy = fmul <2 x double> %broadcast.splat1534, %wide.load1538
  %i.amz = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %index1536 ; 2 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amz, i64 16
  store <2 x double> %i.amx, ptr %i.amz, align 8, !tbaa !26
  store <2 x double> %i.amy, ptr %i.ana, align 8, !tbaa !26
  %index.next1539 = add nuw i64 %index1536, 4     ; 2 uses
  %i.anb = icmp eq i64 %index.next1539, %n.vec1532
  br i1 %i.anb, label %middle.block1540, label %vector.body1535, !llvm.loop !110

middle.block1540:                                 ; preds = %vector.body1535
  br i1 %cmp.n1541, label %.preheader196.i.i.preheader, label %scalar.ph1529.preheader

scalar.ph1529.preheader:                          ; preds = %bb.ep, %middle.block1540
  %indvars.iv458.i.ph = phi i64 [ 0, %bb.ep ], [ %n.vec1532, %middle.block1540 ]
  br label %scalar.ph1529

scalar.ph1529:                                    ; preds = %scalar.ph1529.preheader, %scalar.ph1529
  %indvars.iv458.i = phi i64 [ %indvars.iv.next459.i, %scalar.ph1529 ], [ %indvars.iv458.i.ph, %scalar.ph1529.preheader ] ; 3 uses
  %i.anc = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv458.i
  %i.and = load double, ptr %i.anc, align 8, !tbaa !26
  %i.ane = fmul double %i.amu, %i.and
  %i.anf = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv458.i
  store double %i.ane, ptr %i.anf, align 8, !tbaa !26
  %indvars.iv.next459.i = add nuw nsw i64 %indvars.iv458.i, 1 ; 2 uses
  %exitcond462.not.i = icmp eq i64 %indvars.iv.next459.i, %i.bc
  br i1 %exitcond462.not.i, label %.preheader196.i.i.preheader, label %scalar.ph1529, !llvm.loop !111

.preheader196.i.i.preheader:                      ; preds = %scalar.ph1529, %middle.block1540
  br label %.preheader196.i.i

.preheader196.i.i:                                ; preds = %.preheader196.i.i.preheader, %.loopexit1747
  %indvars.iv.i318.i = phi i64 [ %indvars.iv.next.i320.i, %.loopexit1747 ], [ 0, %.preheader196.i.i.preheader ] ; 11 uses
  %10 = sub nsw i64 %i.bc, %indvars.iv.i318.i     ; 3 uses
  %11 = mul nuw nsw i64 %indvars.iv.i318.i, %i.bh
  %invariant.gep.i.i.a = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.i318.i ; 6 uses
  %invariant.gep269.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %11 ; 6 uses
  %min.iters.check1518 = icmp ugt i64 %10, 3
  %or.cond1749 = and i1 %min.iters.check1518, %ident.check.not
  br i1 %or.cond1749, label %vector.ph1519, label %scalar.ph1517.preheader

vector.ph1519:                                    ; preds = %.preheader196.i.i
  %n.vec1520 = and i64 %10, -4                    ; 3 uses
  %i.ang = add i64 %indvars.iv.i318.i, %n.vec1520
  br label %vector.body1521

vector.body1521:                                  ; preds = %vector.body1521, %vector.ph1519
  %index1522 = phi i64 [ 0, %vector.ph1519 ], [ %index.next1525, %vector.body1521 ] ; 2 uses
  %i.anh = add nuw i64 %indvars.iv.i318.i, %index1522 ; 2 uses
  %i.ani = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i.a, i64 %i.anh ; 2 uses
  %i.anj = getelementptr inbounds nuw i8, ptr %i.ani, i64 16
  %wide.load1523 = load <2 x double>, ptr %i.ani, align 8, !tbaa !26
  %wide.load1524 = load <2 x double>, ptr %i.anj, align 8, !tbaa !26
  %i.ank = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep269.i.i, i64 %i.anh ; 2 uses
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ank, i64 16
  store <2 x double> %wide.load1523, ptr %i.ank, align 8, !tbaa !26
  store <2 x double> %wide.load1524, ptr %i.anl, align 8, !tbaa !26
  %index.next1525 = add nuw i64 %index1522, 4     ; 2 uses
  %i.anm = icmp eq i64 %index.next1525, %n.vec1520
  br i1 %i.anm, label %middle.block1526, label %vector.body1521, !llvm.loop !112

middle.block1526:                                 ; preds = %vector.body1521
  %cmp.n1527 = icmp eq i64 %10, %n.vec1520
  br i1 %cmp.n1527, label %.loopexit1747, label %scalar.ph1517.preheader

scalar.ph1517.preheader:                          ; preds = %.preheader196.i.i, %middle.block1526
  %indvars.iv220.i.i.ph = phi i64 [ %indvars.iv.i318.i, %.preheader196.i.i ], [ %i.ang, %middle.block1526 ] ; 4 uses
  %i.ann = sub i64 %i.bc, %indvars.iv220.i.i.ph
  %xtraiter1848 = and i64 %i.ann, 3               ; 2 uses
  %lcmp.mod1849.not = icmp eq i64 %xtraiter1848, 0
  br i1 %lcmp.mod1849.not, label %scalar.ph1517.prol.loopexit, label %scalar.ph1517.prol

scalar.ph1517.prol:                               ; preds = %scalar.ph1517.preheader, %scalar.ph1517.prol
  %indvars.iv220.i.i.prol = phi i64 [ %indvars.iv.next221.i.i.prol, %scalar.ph1517.prol ], [ %indvars.iv220.i.i.ph, %scalar.ph1517.preheader ] ; 3 uses
  %prol.iter1850 = phi i64 [ %prol.iter1850.next, %scalar.ph1517.prol ], [ 0, %scalar.ph1517.preheader ]
  %i.ano = mul nuw nsw i64 %indvars.iv220.i.i.prol, %i.bh
  %gep.i.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i.a, i64 %i.ano
  %i.anp = load double, ptr %gep.i.i.prol, align 8, !tbaa !26
  %gep270.i.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep269.i.i, i64 %indvars.iv220.i.i.prol
  store double %i.anp, ptr %gep270.i.i.prol, align 8, !tbaa !26
  %indvars.iv.next221.i.i.prol = add nuw nsw i64 %indvars.iv220.i.i.prol, 1 ; 2 uses
  %prol.iter1850.next = add i64 %prol.iter1850, 1 ; 2 uses
  %prol.iter1850.cmp.not = icmp eq i64 %prol.iter1850.next, %xtraiter1848
  br i1 %prol.iter1850.cmp.not, label %scalar.ph1517.prol.loopexit, label %scalar.ph1517.prol, !llvm.loop !113

scalar.ph1517.prol.loopexit:                      ; preds = %scalar.ph1517.prol, %scalar.ph1517.preheader
  %indvars.iv220.i.i.unr = phi i64 [ %indvars.iv220.i.i.ph, %scalar.ph1517.preheader ], [ %indvars.iv.next221.i.i.prol, %scalar.ph1517.prol ]
  %i.anq = sub i64 %indvars.iv220.i.i.ph, %i.bc
  %i.anr = icmp ugt i64 %i.anq, -4
  br i1 %i.anr, label %.loopexit1747, label %scalar.ph1517

scalar.ph1517:                                    ; preds = %scalar.ph1517.prol.loopexit, %scalar.ph1517
  %indvars.iv220.i.i = phi i64 [ %indvars.iv.next221.i.i.3, %scalar.ph1517 ], [ %indvars.iv220.i.i.unr, %scalar.ph1517.prol.loopexit ] ; 6 uses
  %i.ans = mul nuw nsw i64 %indvars.iv220.i.i, %i.bh
  %gep.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i.a, i64 %i.ans
  %i.ant = load double, ptr %gep.i.i, align 8, !tbaa !26
  %gep270.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep269.i.i, i64 %indvars.iv220.i.i
  store double %i.ant, ptr %gep270.i.i, align 8, !tbaa !26
  %indvars.iv.next221.i.i = add nuw nsw i64 %indvars.iv220.i.i, 1 ; 2 uses
  %i.anu = mul nuw nsw i64 %indvars.iv.next221.i.i, %i.bh
  %gep.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i.a, i64 %i.anu
  %i.anv = load double, ptr %gep.i.i.1, align 8, !tbaa !26
  %gep270.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep269.i.i, i64 %indvars.iv.next221.i.i
  store double %i.anv, ptr %gep270.i.i.1, align 8, !tbaa !26
  %indvars.iv.next221.i.i.1 = add nuw nsw i64 %indvars.iv220.i.i, 2 ; 2 uses
  %i.anw = mul nuw nsw i64 %indvars.iv.next221.i.i.1, %i.bh
  %gep.i.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i.a, i64 %i.anw
  %i.anx = load double, ptr %gep.i.i.2, align 8, !tbaa !26
  %gep270.i.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep269.i.i, i64 %indvars.iv.next221.i.i.1
  store double %i.anx, ptr %gep270.i.i.2, align 8, !tbaa !26
  %indvars.iv.next221.i.i.2 = add nuw nsw i64 %indvars.iv220.i.i, 3 ; 2 uses
  %i.any = mul nuw nsw i64 %indvars.iv.next221.i.i.2, %i.bh
  %gep.i.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i.a, i64 %i.any
  %i.anz = load double, ptr %gep.i.i.3, align 8, !tbaa !26
  %gep270.i.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep269.i.i, i64 %indvars.iv.next221.i.i.2
  store double %i.anz, ptr %gep270.i.i.3, align 8, !tbaa !26
  %indvars.iv.next221.i.i.3 = add nuw nsw i64 %indvars.iv220.i.i, 4 ; 2 uses
  %exitcond.not.i319.i.3 = icmp eq i64 %indvars.iv.next221.i.i.3, %i.bc
  br i1 %exitcond.not.i319.i.3, label %.loopexit1747, label %scalar.ph1517, !llvm.loop !114

.loopexit1747:                                    ; preds = %scalar.ph1517.prol.loopexit, %scalar.ph1517, %middle.block1526
  %i.aoa = trunc nuw nsw i64 %indvars.iv.i318.i to i32
  %i.aob = mul i32 %i.dj, %i.aoa
  %i.aoc = sext i32 %i.aob to i64
  %i.aod = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.aoc
  %i.aoe = load double, ptr %i.aod, align 8, !tbaa !26
  %i.aof = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.i318.i
  store double %i.aoe, ptr %i.aof, align 8, !tbaa !26
  %i.aog = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.i318.i
  %i.aoh = load double, ptr %i.aog, align 8, !tbaa !26
  %i.aoi = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.i318.i
  store double %i.aoh, ptr %i.aoi, align 8, !tbaa !26
  %indvars.iv.next.i320.i = add nuw nsw i64 %indvars.iv.i318.i, 1 ; 2 uses
  %exitcond225.not.i.i = icmp eq i64 %indvars.iv.next.i320.i, %i.bc
  br i1 %exitcond225.not.i.i, label %.preheader195.i.i, label %.preheader196.i.i, !llvm.loop !115

.preheader195.i.i:                                ; preds = %.loopexit1747, %.loopexit193.i.i
  %indvars.iv229.i.i = phi i64 [ %indvars.iv.next230.i.i, %.loopexit193.i.i ], [ 1, %.loopexit1747 ] ; 2 uses
  %indvar.i.i = phi i64 [ %indvar.next.i.i, %.loopexit193.i.i ], [ 0, %.loopexit1747 ] ; 12 uses
  %i.aoj = xor i64 %indvar.i.i, -1
  %i.aok = add nsw i64 %i.aoj, %i.bc
  %i.aol = mul i64 %i.ep, %indvar.i.i
  %i.aom = mul i64 %i.eq, %indvar.i.i
  %i.aon = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvar.i.i
  %i.aoo = load i32, ptr %i.aon, align 4, !tbaa !42
  %i.aop = sext i32 %i.aoo to i64
  %i.aoq = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.aop ; 2 uses
  %i.aor = load double, ptr %i.aoq, align 8, !tbaa !26
  %i.aos = fcmp oeq double %i.aor, 0.000000e+00
  %.pre486.i = trunc i64 %indvar.i.i to i32       ; 2 uses
  br i1 %i.aos, label %.loopexit193.i.i, label %.lr.ph207.preheader.i.i

.lr.ph207.preheader.i.i:                          ; preds = %.preheader195.i.i
  %i.aot = xor i32 %.pre486.i, -1
  %i.aou = add i32 %0, %i.aot
  %i.aov = zext i32 %i.aou to i64
  %i.aow = shl nuw nsw i64 %i.aov, 3
  %i.aox = add nuw nsw i64 %i.aow, 8
  %i.aoy = shl nuw nsw i64 %indvar.i.i, 3
  %scevgep.i.i = getelementptr i8, ptr %i.bq, i64 %i.aoy
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i, i8 0, i64 %i.aox, i1 false), !tbaa !26
  %.pre.i.i = load double, ptr %i.aoq, align 8, !tbaa !26
  %i.aoz = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvar.i.i
  store double %.pre.i.i, ptr %i.aoz, align 8, !tbaa !26
  %i.apa = getelementptr i8, ptr %i.gn, i64 %i.aol
  %i.apb = getelementptr i8, ptr %i.gp, i64 %i.aom
  br label %.lr.ph207.i.i

.lr.ph207.i.i:                                    ; preds = %.loopexit.i.i, %.lr.ph207.preheader.i.i
  %indvar = phi i64 [ %indvar.next, %.loopexit.i.i ], [ 0, %.lr.ph207.preheader.i.i ] ; 5 uses
  %indvars.iv238.i.i = phi i64 [ %indvars.iv.next239.pre-phi.i.i, %.loopexit.i.i ], [ %indvar.i.i, %.lr.ph207.preheader.i.i ] ; 7 uses
  %indvars.iv231.i.i = phi i64 [ %indvars.iv.next232.i.i, %.loopexit.i.i ], [ %indvars.iv229.i.i, %.lr.ph207.preheader.i.i ] ; 6 uses
  %.0174205.i.i = phi double [ %.1.i321.i, %.loopexit.i.i ], [ 0.000000e+00, %.lr.ph207.preheader.i.i ] ; 3 uses
  %i.apc = sub i64 %i.aok, %indvar                ; 3 uses
  %i.apd = add i64 %indvar.i.i, %indvar
  %i.ape = shl i64 %i.apd, 3
  %gep1916 = getelementptr i8, ptr %invariant.gep1915, i64 %i.ape
  %scevgep1493 = getelementptr i8, ptr %gep1916, i64 8
  %i.apf = mul i64 %i.ep, %indvar
  %scevgep1494 = getelementptr i8, ptr %i.apa, i64 %i.apf
  %i.apg = mul i64 %i.er, %indvar
  %scevgep1495 = getelementptr i8, ptr %i.apb, i64 %i.apg
  %i.aph = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv238.i.i
  %i.api = load double, ptr %i.aph, align 8, !tbaa !26 ; 5 uses
  %i.apj = fcmp oeq double %i.api, 0.000000e+00
  br i1 %i.apj, label %.lr.ph207..loopexit_crit_edge.i.i, label %bb.eq

.lr.ph207..loopexit_crit_edge.i.i:                ; preds = %.lr.ph207.i.i
  %.pre264.i.i = add nuw nsw i64 %indvars.iv238.i.i, 1
  br label %.loopexit.i.i

bb.eq:                                            ; preds = %.lr.ph207.i.i
  %indvars241.i.i = trunc i64 %indvars.iv238.i.i to i32
  %i.apk = mul nuw nsw i64 %indvars.iv238.i.i, %i.bh
  %i.apl = mul nuw nsw i32 %4, %indvars241.i.i
  %i.apm = zext i32 %i.apl to i64
  %i.apn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv238.i.i
  %i.apo = getelementptr inbounds nuw [8 x i8], ptr %i.apn, i64 %i.apm ; 2 uses
  %i.app = load double, ptr %i.apo, align 8, !tbaa !26 ; 4 uses
  %i.apq = tail call double @llvm.fabs.f64(double %i.app)
  %i.apr = tail call double @llvm.fabs.f64(double %i.api)
  %i.aps = fcmp olt double %i.apq, %i.apr
  br i1 %i.aps, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.apt = fdiv double %i.app, %i.api             ; 3 uses
  %i.apu = tail call double @llvm.fmuladd.f64(double %i.apt, double %i.apt, double 1.000000e+00)
  %sqrt.i.i = tail call double @llvm.sqrt.f64(double %i.apu)
  %i.apv = fdiv double 1.000000e+00, %sqrt.i.i    ; 2 uses
  %i.apw = fmul double %i.apt, %i.apv
  br label %bb.et

bb.es:                                            ; preds = %bb.eq
  %i.apx = fdiv double %i.api, %i.app             ; 3 uses
  %i.apy = tail call double @llvm.fmuladd.f64(double %i.apx, double %i.apx, double 1.000000e+00)
  %sqrt189.i.i = tail call double @llvm.sqrt.f64(double %i.apy)
  %i.apz = fdiv double 1.000000e+00, %sqrt189.i.i ; 2 uses
  %i.aqa = fmul double %i.apx, %i.apz
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %.0172.i.i = phi double [ %i.apv, %bb.er ], [ %i.aqa, %bb.es ] ; 5 uses
  %.0.i.i = phi double [ %i.apw, %bb.er ], [ %i.apz, %bb.es ] ; 6 uses
  %i.aqb = fmul double %i.api, %.0172.i.i
  %i.aqc = tail call double @llvm.fmuladd.f64(double %.0.i.i, double %i.app, double %i.aqb)
  store double %i.aqc, ptr %i.apo, align 8, !tbaa !26
  %i.aqd = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv238.i.i ; 2 uses
  %i.aqe = load double, ptr %i.aqd, align 8, !tbaa !26 ; 2 uses
  %i.aqf = fmul double %.0174205.i.i, %.0172.i.i
  %i.aqg = tail call double @llvm.fmuladd.f64(double %.0.i.i, double %i.aqe, double %i.aqf)
  %i.aqh = fneg double %.0172.i.i                 ; 3 uses
  %i.aqi = fmul double %.0174205.i.i, %.0.i.i
  %i.aqj = tail call double @llvm.fmuladd.f64(double %i.aqh, double %i.aqe, double %i.aqi) ; 3 uses
  store double %i.aqg, ptr %i.aqd, align 8, !tbaa !26
  %i.aqk = add nuw nsw i64 %indvars.iv238.i.i, 1  ; 4 uses
  %i.aql = icmp samesign ult i64 %i.aqk, %i.bc
  br i1 %i.aql, label %.lr.ph203.preheader.i.i, label %.loopexit.i.i

.lr.ph203.preheader.i.i:                          ; preds = %bb.et
  %invariant.gep271.i.i = getelementptr [8 x i8], ptr %i.bm, i64 %i.apk ; 2 uses
  %min.iters.check1500 = icmp ult i64 %i.apc, 2
  br i1 %min.iters.check1500, label %.lr.ph203.i.i.preheader, label %vector.memcheck1492

vector.memcheck1492:                              ; preds = %.lr.ph203.preheader.i.i
  %bound01496 = icmp ult ptr %scevgep1493, %scevgep1495
  %bound11497 = icmp ult ptr %scevgep1494, %i.br
  %found.conflict1498 = and i1 %bound01496, %bound11497
  br i1 %found.conflict1498, label %.lr.ph203.i.i.preheader, label %vector.ph1501

vector.ph1501:                                    ; preds = %vector.memcheck1492
  %n.vec1502 = and i64 %i.apc, -2                 ; 3 uses
  %i.aqm = add i64 %indvars.iv231.i.i, %n.vec1502
  %broadcast.splatinsert1503 = insertelement <2 x double> poison, double %.0172.i.i, i64 0
  %broadcast.splat1504 = shufflevector <2 x double> %broadcast.splatinsert1503, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert1505 = insertelement <2 x double> poison, double %.0.i.i, i64 0
  %broadcast.splat1506 = shufflevector <2 x double> %broadcast.splatinsert1505, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1507 = insertelement <2 x double> poison, double %i.aqh, i64 0
  %broadcast.splat1508 = shufflevector <2 x double> %broadcast.splatinsert1507, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body1509

vector.body1509:                                  ; preds = %vector.body1509, %vector.ph1501
  %index1510 = phi i64 [ 0, %vector.ph1501 ], [ %index.next1513, %vector.body1509 ] ; 2 uses
  %i.aqn = add nuw i64 %indvars.iv231.i.i, %index1510 ; 2 uses
  %i.aqo = getelementptr [8 x i8], ptr %invariant.gep271.i.i, i64 %i.aqn ; 2 uses
  %wide.load1511 = load <2 x double>, ptr %i.aqo, align 8, !tbaa !26, !alias.scope !116 ; 2 uses
  %i.aqp = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.aqn ; 2 uses
  %wide.load1512 = load <2 x double>, ptr %i.aqp, align 8, !tbaa !26, !alias.scope !119, !noalias !116 ; 2 uses
  %i.aqq = fmul <2 x double> %broadcast.splat1504, %wide.load1512
  %i.aqr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1506, <2 x double> %wide.load1511, <2 x double> %i.aqq)
  %i.aqs = fmul <2 x double> %broadcast.splat1506, %wide.load1512
  %i.aqt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1508, <2 x double> %wide.load1511, <2 x double> %i.aqs)
  store <2 x double> %i.aqt, ptr %i.aqp, align 8, !tbaa !26, !alias.scope !119, !noalias !116
  store <2 x double> %i.aqr, ptr %i.aqo, align 8, !tbaa !26, !alias.scope !116
  %index.next1513 = add nuw i64 %index1510, 2     ; 2 uses
  %i.aqu = icmp eq i64 %index.next1513, %n.vec1502
  br i1 %i.aqu, label %middle.block1514, label %vector.body1509, !llvm.loop !121

middle.block1514:                                 ; preds = %vector.body1509
  %cmp.n1515 = icmp eq i64 %i.apc, %n.vec1502
  br i1 %cmp.n1515, label %.loopexit.i.i, label %.lr.ph203.i.i.preheader

.lr.ph203.i.i.preheader:                          ; preds = %vector.memcheck1492, %.lr.ph203.preheader.i.i, %middle.block1514
  %indvars.iv233.i.i.ph = phi i64 [ %indvars.iv231.i.i, %vector.memcheck1492 ], [ %indvars.iv231.i.i, %.lr.ph203.preheader.i.i ], [ %i.aqm, %middle.block1514 ]
  %i.aqv = insertelement <2 x double> poison, double %.0172.i.i, i64 0
  %i.aqw = insertelement <2 x double> %i.aqv, double %.0.i.i, i64 1
  %i.aqx = insertelement <2 x double> poison, double %.0.i.i, i64 0
  %i.aqy = insertelement <2 x double> %i.aqx, double %i.aqh, i64 1
  br label %.lr.ph203.i.i

.lr.ph203.i.i:                                    ; preds = %.lr.ph203.i.i.preheader, %.lr.ph203.i.i
  %indvars.iv233.i.i = phi i64 [ %indvars.iv.next234.i.i, %.lr.ph203.i.i ], [ %indvars.iv233.i.i.ph, %.lr.ph203.i.i.preheader ] ; 3 uses
  %gep272.i.i = getelementptr [8 x i8], ptr %invariant.gep271.i.i, i64 %indvars.iv233.i.i ; 2 uses
  %i.aqz = load double, ptr %gep272.i.i, align 8, !tbaa !26
  %i.ara = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv233.i.i ; 2 uses
  %i.arb = load double, ptr %i.ara, align 8, !tbaa !26
  %i.arc = insertelement <2 x double> poison, double %i.arb, i64 0
  %i.ard = shufflevector <2 x double> %i.arc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.are = fmul <2 x double> %i.aqw, %i.ard
  %i.arf = insertelement <2 x double> poison, double %i.aqz, i64 0
  %i.arg = shufflevector <2 x double> %i.arf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.arh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aqy, <2 x double> %i.arg, <2 x double> %i.are) ; 2 uses
  %i.ari = extractelement <2 x double> %i.arh, i64 1
  store double %i.ari, ptr %i.ara, align 8, !tbaa !26
  %i.arj = extractelement <2 x double> %i.arh, i64 0
  store double %i.arj, ptr %gep272.i.i, align 8, !tbaa !26
  %indvars.iv.next234.i.i = add nuw nsw i64 %indvars.iv233.i.i, 1 ; 2 uses
  %exitcond237.not.i.i = icmp eq i64 %indvars.iv.next234.i.i, %i.bc
  br i1 %exitcond237.not.i.i, label %.loopexit.i.i, label %.lr.ph203.i.i, !llvm.loop !122

.loopexit.i.i:                                    ; preds = %.lr.ph203.i.i, %middle.block1514, %bb.et, %.lr.ph207..loopexit_crit_edge.i.i
  %indvars.iv.next239.pre-phi.i.i = phi i64 [ %.pre264.i.i, %.lr.ph207..loopexit_crit_edge.i.i ], [ %i.aqk, %bb.et ], [ %i.aqk, %middle.block1514 ], [ %i.aqk, %.lr.ph203.i.i ]
  %.1.i321.i = phi double [ %.0174205.i.i, %.lr.ph207..loopexit_crit_edge.i.i ], [ %i.aqj, %bb.et ], [ %i.aqj, %middle.block1514 ], [ %i.aqj, %.lr.ph203.i.i ]
  %indvars.iv.next232.i.i = add nuw i64 %indvars.iv231.i.i, 1
  %exitcond463.i = icmp eq i64 %indvars.iv231.i.i, %i.bc
  %indvar.next = add i64 %indvar, 1
end_hunk_0
