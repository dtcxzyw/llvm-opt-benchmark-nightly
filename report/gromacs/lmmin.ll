Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/lmmin?download=true
inline.NumInlined: 23
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_Z6lmmin2iPdS_S_iPKdPKvPFvS1_iS3_S_PiEPK17lm_control_structP16lm_status_struct:bb.a

bb.bk:                                            ; preds = %bb.bi
  %i.rn = fcmp ogt double %i.rj, %.06075.i209.i
  br i1 %i.rn, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.ro = fdiv double %.06075.i209.i, %i.rj       ; 2 uses
  %i.rp = fmul double %.06672.i212.i, %i.ro
  %i.rq = tail call double @llvm.fmuladd.f64(double %i.rp, double %i.ro, double 1.000000e+00)
  br label %bb.br

bb.bm:                                            ; preds = %bb.bk
  %i.rr = fdiv double %i.rj, %.06075.i209.i       ; 2 uses
  %i.rs = tail call double @llvm.fmuladd.f64(double %i.rr, double %i.rr, double %.06672.i212.i)
  br label %bb.br

bb.bn:                                            ; preds = %.lr.ph.i206.i
  %i.rt = fcmp ogt double %i.rj, %.076.i208.i
  br i1 %i.rt, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.ru = fdiv double %.076.i208.i, %i.rj         ; 2 uses
  %i.rv = fmul double %.06274.i210.i, %i.ru
  %i.rw = tail call double @llvm.fmuladd.f64(double %i.rv, double %i.ru, double 1.000000e+00)
  br label %bb.br

bb.bp:                                            ; preds = %bb.bn
  %i.rx = fcmp une double %i.ri, 0.000000e+00
  br i1 %i.rx, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ry = fdiv double %i.rj, %.076.i208.i         ; 2 uses
  %i.rz = tail call double @llvm.fmuladd.f64(double %i.ry, double %i.ry, double %.06274.i210.i)
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bo, %bb.bm, %bb.bl, %bb.bj
  %.167.i213.i = phi double [ %.06672.i212.i, %bb.bj ], [ %i.rq, %bb.bl ], [ %i.rs, %bb.bm ], [ %.06672.i212.i, %bb.bo ], [ %.06672.i212.i, %bb.bq ], [ %.06672.i212.i, %bb.bp ] ; 3 uses
  %.165.i214.i = phi double [ %i.rm, %bb.bj ], [ %.06473.i211.i, %bb.bl ], [ %.06473.i211.i, %bb.bm ], [ %.06473.i211.i, %bb.bo ], [ %.06473.i211.i, %bb.bq ], [ %.06473.i211.i, %bb.bp ] ; 7 uses
  %.163.i215.i = phi double [ %.06274.i210.i, %bb.bj ], [ %.06274.i210.i, %bb.bl ], [ %.06274.i210.i, %bb.bm ], [ %i.rw, %bb.bo ], [ %i.rz, %bb.bq ], [ %.06274.i210.i, %bb.bp ] ; 4 uses
  %.161.i216.i = phi double [ %.06075.i209.i, %bb.bj ], [ %i.rj, %bb.bl ], [ %.06075.i209.i, %bb.bm ], [ %.06075.i209.i, %bb.bo ], [ %.06075.i209.i, %bb.bq ], [ %.06075.i209.i, %bb.bp ] ; 4 uses
  %.1.i217.i = phi double [ %.076.i208.i, %bb.bj ], [ %.076.i208.i, %bb.bl ], [ %.076.i208.i, %bb.bm ], [ %i.rj, %bb.bo ], [ %.076.i208.i, %bb.bq ], [ %.076.i208.i, %bb.bp ] ; 8 uses
  %indvars.iv.next.i218.i = add nuw nsw i64 %indvars.iv.i207.i, 1 ; 2 uses
  %exitcond.not.i219.i = icmp eq i64 %indvars.iv.next.i218.i, %i.ow
  br i1 %exitcond.not.i219.i, label %._crit_edge.i220.i, label %.lr.ph.i206.i, !llvm.loop !0

._crit_edge.i220.i:                               ; preds = %bb.br
  %i.sa = fcmp une double %.167.i213.i, 0.000000e+00
  br i1 %i.sa, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %._crit_edge.i220.i
  %i.sb = fdiv double %.165.i214.i, %.161.i216.i
  %i.sc = fdiv double %i.sb, %.161.i216.i
  %i.sd = fadd double %.167.i213.i, %i.sc
  %i.se = tail call double @sqrt(double noundef %i.sd) #11
  %i.sf = fmul double %.161.i216.i, %i.se
  br label %_Z8lm_enormiPKd.exit221.i

bb.bt:                                            ; preds = %._crit_edge.i220.i
  %i.sg = fcmp une double %.165.i214.i, 0.000000e+00
  br i1 %i.sg, label %bb.bu, label %.thread.i200.i

bb.bu:                                            ; preds = %bb.bt
  %i.sh = fcmp ult double %.165.i214.i, %.1.i217.i
  br i1 %i.sh, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.si = fdiv double %.1.i217.i, %.165.i214.i
  %i.sj = fmul double %.163.i215.i, %.1.i217.i
  %i.sk = tail call double @llvm.fmuladd.f64(double %i.si, double %i.sj, double 1.000000e+00)
  %i.sl = fmul double %.165.i214.i, %i.sk
  %i.sm = tail call double @sqrt(double noundef %i.sl) #11
  br label %_Z8lm_enormiPKd.exit221.i

bb.bw:                                            ; preds = %bb.bu
  %i.sn = fdiv double %.165.i214.i, %.1.i217.i
  %i.so = tail call double @llvm.fmuladd.f64(double %.1.i217.i, double %.163.i215.i, double %i.sn)
  %i.sp = fmul double %.1.i217.i, %i.so
  %i.sq = tail call double @sqrt(double noundef %i.sp) #11
  br label %_Z8lm_enormiPKd.exit221.i

.thread.i200.i:                                   ; preds = %bb.bt
  %i.sr = tail call double @sqrt(double noundef %.163.i215.i) #11
  %i.ss = fmul double %.1.i217.i, %i.sr
  br label %_Z8lm_enormiPKd.exit221.i

_Z8lm_enormiPKd.exit221.i:                        ; preds = %.thread.i200.i, %bb.bw, %bb.bv, %bb.bs
  %.069.i203.i = phi double [ %i.sf, %bb.bs ], [ %i.sm, %bb.bv ], [ %i.sq, %bb.bw ], [ %i.ss, %.thread.i200.i ] ; 2 uses
  store double %.069.i203.i, ptr %i.qo, align 8, !tbaa !10
  %i.st = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv285.i
  store double %.069.i203.i, ptr %i.st, align 8, !tbaa !10
  br label %bb.bx

bb.bx:                                            ; preds = %_Z8lm_enormiPKd.exit221.i, %bb.bh, %._crit_edge244.i.loopexit
  %indvars.iv.next286.i = add nuw nsw i64 %indvars.iv285.i, 1 ; 2 uses
  %exitcond289.not.i = icmp eq i64 %indvars.iv.next286.i, %i.bc
  br i1 %exitcond289.not.i, label %._crit_edge246.i, label %.preheader.i, !llvm.loop !38

._crit_edge246.i:                                 ; preds = %bb.bx, %._crit_edge235.loopexit.i
  %i.su = fneg double %.0165.i
  br label %bb.by

bb.by:                                            ; preds = %._crit_edge246.i, %_Z8lm_enormiPKd.exit199.i
  %.sink.i = phi double [ %i.su, %._crit_edge246.i ], [ 0.000000e+00, %_Z8lm_enormiPKd.exit199.i ]
  %i.sv = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv268.i
  store double %.sink.i, ptr %i.sv, align 8, !tbaa !10
  %indvars.iv.next257.i = add nuw nsw i64 %indvars.iv256.i, 1
  %exitcond292.not.i = icmp eq i64 %indvars.iv.next269.i, %i.bc
  br i1 %exitcond292.not.i, label %_ZL8lm_qrfaciiPdPiS_S_S_.exit, label %.preheader224.i, !llvm.loop !39

_ZL8lm_qrfaciiPdPiS_S_S_.exit:                    ; preds = %bb.by
  br i1 %.not674, label %.preheader870, label %.preheader872

.preheader872:                                    ; preds = %_ZL8lm_qrfaciiPdPiS_S_S_.exit
  br i1 %.not1369, label %.lr.ph957.preheader, label %.lr.ph944.preheader

.lr.ph944.preheader:                              ; preds = %.preheader872
  br i1 %min.iters.check1669, label %.lr.ph944.preheader1776, label %vector.body1672

vector.body1672:                                  ; preds = %.lr.ph944.preheader, %vector.body1672
  %index1673 = phi i64 [ %index.next1678, %vector.body1672 ], [ 0, %.lr.ph944.preheader ] ; 4 uses
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %index1673 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 16
  %wide.load1674 = load <2 x double>, ptr %i.sw, align 8, !tbaa !10
  %wide.load1675 = load <2 x double>, ptr %i.sx, align 8, !tbaa !10
  %i.sy = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index1673 ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 16
  %wide.load1676 = load <2 x double>, ptr %i.sy, align 8, !tbaa !10
  %wide.load1677 = load <2 x double>, ptr %i.sz, align 8, !tbaa !10
  %i.ta = fsub <2 x double> %wide.load1674, %wide.load1676
  %i.tb = fsub <2 x double> %wide.load1675, %wide.load1677
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %index1673 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 16
  store <2 x double> %i.ta, ptr %i.tc, align 8, !tbaa !10
  store <2 x double> %i.tb, ptr %i.td, align 8, !tbaa !10
  %index.next1678 = add nuw i64 %index1673, 4     ; 2 uses
  %i.te = icmp eq i64 %index.next1678, %n.vec1671
  br i1 %i.te, label %middle.block1679, label %vector.body1672, !llvm.loop !40

middle.block1679:                                 ; preds = %vector.body1672
  br i1 %cmp.n1680, label %.lr.ph957.preheader, label %.lr.ph944.preheader1776

.lr.ph944.preheader1776:                          ; preds = %.lr.ph944.preheader, %middle.block1679
  %indvars.iv1099.ph = phi i64 [ 0, %.lr.ph944.preheader ], [ %n.vec1671, %middle.block1679 ]
  br label %.lr.ph944

.preheader870:                                    ; preds = %_ZL8lm_qrfaciiPdPiS_S_S_.exit
  br i1 %.not1369, label %.lr.ph957.preheader, label %.lr.ph946.preheader

.lr.ph946.preheader:                              ; preds = %.preheader870
  br i1 %min.iters.check1657, label %.lr.ph946.preheader1775, label %vector.body1660

vector.body1660:                                  ; preds = %.lr.ph946.preheader, %vector.body1660
  %index1661 = phi i64 [ %index.next1664, %vector.body1660 ], [ 0, %.lr.ph946.preheader ] ; 3 uses
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %index1661 ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 16
  %wide.load1662 = load <2 x double>, ptr %i.tf, align 8, !tbaa !10
  %wide.load1663 = load <2 x double>, ptr %i.tg, align 8, !tbaa !10
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %index1661 ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 16
  store <2 x double> %wide.load1662, ptr %i.th, align 8, !tbaa !10
  store <2 x double> %wide.load1663, ptr %i.ti, align 8, !tbaa !10
  %index.next1664 = add nuw i64 %index1661, 4     ; 2 uses
  %i.tj = icmp eq i64 %index.next1664, %n.vec1659
  br i1 %i.tj, label %middle.block1665, label %vector.body1660, !llvm.loop !41

middle.block1665:                                 ; preds = %vector.body1660
  br i1 %cmp.n1666, label %.lr.ph957.preheader, label %.lr.ph946.preheader1775

.lr.ph946.preheader1775:                          ; preds = %.lr.ph946.preheader, %middle.block1665
  %indvars.iv1104.ph = phi i64 [ 0, %.lr.ph946.preheader ], [ %n.vec1659, %middle.block1665 ]
  br label %.lr.ph946

.lr.ph944:                                        ; preds = %.lr.ph944.preheader1776, %.lr.ph944
  %indvars.iv1099 = phi i64 [ %indvars.iv.next1100, %.lr.ph944 ], [ %indvars.iv1099.ph, %.lr.ph944.preheader1776 ] ; 4 uses
  %i.tk = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv1099
  %i.tl = load double, ptr %i.tk, align 8, !tbaa !10
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv1099
  %i.tn = load double, ptr %i.tm, align 8, !tbaa !10
  %i.to = fsub double %i.tl, %i.tn
  %i.tp = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv1099
  store double %i.to, ptr %i.tp, align 8, !tbaa !10
  %indvars.iv.next1100 = add nuw nsw i64 %indvars.iv1099, 1 ; 2 uses
  %exitcond1103.not = icmp eq i64 %indvars.iv.next1100, %i.bh
  br i1 %exitcond1103.not, label %.lr.ph957.preheader, label %.lr.ph944, !llvm.loop !42

.lr.ph946:                                        ; preds = %.lr.ph946.preheader1775, %.lr.ph946
  %indvars.iv1104 = phi i64 [ %indvars.iv.next1105, %.lr.ph946 ], [ %indvars.iv1104.ph, %.lr.ph946.preheader1775 ] ; 3 uses
  %i.tq = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv1104
  %i.tr = load double, ptr %i.tq, align 8, !tbaa !10
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv1104
  store double %i.tr, ptr %i.ts, align 8, !tbaa !10
  %indvars.iv.next1105 = add nuw nsw i64 %indvars.iv1104, 1 ; 2 uses
  %exitcond1108.not = icmp eq i64 %indvars.iv.next1105, %i.bh
  br i1 %exitcond1108.not, label %.lr.ph957.preheader, label %.lr.ph946, !llvm.loop !43

.lr.ph957.preheader:                              ; preds = %.lr.ph944, %.lr.ph946, %middle.block1679, %middle.block1665, %.preheader870, %.preheader872
  br label %.lr.ph957

.lr.ph957:                                        ; preds = %.lr.ph957.preheader, %.loopexit862
  %indvars.iv1109 = phi i64 [ %indvars.iv.next1110, %.loopexit862 ], [ 0, %.lr.ph957.preheader ] ; 20 uses
  %10 = sub i64 %i.ft, %indvars.iv1109
  %i.tt = sub nsw i64 %i.bh, %indvars.iv1109      ; 3 uses
  %i.tu = add nuw i64 %i.ey, %indvars.iv1109
  %i.tv = shl i64 %i.tu, 3
  %gep1924 = getelementptr i8, ptr %invariant.gep1923, i64 %i.tv
  %i.tw = mul i64 %i.fa, %indvars.iv1109
  %scevgep1635 = getelementptr i8, ptr %i.gd, i64 %i.tw
  %i.tx = mul i64 %i.fd, %indvars.iv1109
  %scevgep1636 = getelementptr i8, ptr %i.ge, i64 %i.tx
  %indvars1121 = trunc i64 %indvars.iv1109 to i32
  %i.ty = mul nuw nsw i64 %indvars.iv1109, %i.dq  ; 2 uses
  %i.tz = mul nuw nsw i32 %4, %indvars1121
  %i.ua = sext i32 %i.tz to i64
  %i.ub = getelementptr [8 x i8], ptr %i.bm, i64 %indvars.iv1109
  %i.uc = getelementptr [8 x i8], ptr %i.ub, i64 %i.ua ; 2 uses
  %i.ud = load double, ptr %i.uc, align 8, !tbaa !10 ; 2 uses
  %i.ue = fcmp une double %i.ud, 0.000000e+00
  %i.uf = icmp samesign ult i64 %indvars.iv1109, %i.dq
  %or.cond1365 = select i1 %i.ue, i1 %i.uf, i1 false
  br i1 %or.cond1365, label %.lr.ph949.preheader, label %.loopexit862

.lr.ph949.preheader:                              ; preds = %.lr.ph957
  %i.ug = sub nsw i64 %i.bh, %indvars.iv1109
  %invariant.gep1356 = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.ty ; 5 uses
  %xtraiter1817 = and i64 %i.ug, 3                ; 2 uses
  %lcmp.mod1818.not = icmp eq i64 %xtraiter1817, 0
  br i1 %lcmp.mod1818.not, label %.lr.ph949.prol.loopexit, label %.lr.ph949.prol

.lr.ph949.prol:                                   ; preds = %.lr.ph949.preheader, %.lr.ph949.prol
  %indvars.iv1111.prol = phi i64 [ %indvars.iv.next1112.prol, %.lr.ph949.prol ], [ %indvars.iv1109, %.lr.ph949.preheader ] ; 3 uses
  %.0604948.prol = phi double [ %i.uk, %.lr.ph949.prol ], [ 0.000000e+00, %.lr.ph949.preheader ]
  %prol.iter1819 = phi i64 [ %prol.iter1819.next, %.lr.ph949.prol ], [ 0, %.lr.ph949.preheader ]
  %gep1357.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1356, i64 %indvars.iv1111.prol
  %i.uh = load double, ptr %gep1357.prol, align 8, !tbaa !10
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv1111.prol
  %i.uj = load double, ptr %i.ui, align 8, !tbaa !10
  %i.uk = tail call double @llvm.fmuladd.f64(double %i.uh, double %i.uj, double %.0604948.prol) ; 3 uses
  %indvars.iv.next1112.prol = add nuw nsw i64 %indvars.iv1111.prol, 1 ; 2 uses
  %prol.iter1819.next = add i64 %prol.iter1819, 1 ; 2 uses
  %prol.iter1819.cmp.not = icmp eq i64 %prol.iter1819.next, %xtraiter1817
  br i1 %prol.iter1819.cmp.not, label %.lr.ph949.prol.loopexit, label %.lr.ph949.prol, !llvm.loop !44

.lr.ph949.prol.loopexit:                          ; preds = %.lr.ph949.prol, %.lr.ph949.preheader
  %.lcssa1780.unr = phi double [ poison, %.lr.ph949.preheader ], [ %i.uk, %.lr.ph949.prol ]
  %indvars.iv1111.unr = phi i64 [ %indvars.iv1109, %.lr.ph949.preheader ], [ %indvars.iv.next1112.prol, %.lr.ph949.prol ]
  %.0604948.unr = phi double [ 0.000000e+00, %.lr.ph949.preheader ], [ %i.uk, %.lr.ph949.prol ]
  %i.ul = icmp ult i64 %10, 3
  br i1 %i.ul, label %.lr.ph953.preheader, label %.lr.ph949

.lr.ph949:                                        ; preds = %.lr.ph949.prol.loopexit, %.lr.ph949
  %indvars.iv1111 = phi i64 [ %indvars.iv.next1112.3, %.lr.ph949 ], [ %indvars.iv1111.unr, %.lr.ph949.prol.loopexit ] ; 6 uses
  %.0604948 = phi double [ %i.vb, %.lr.ph949 ], [ %.0604948.unr, %.lr.ph949.prol.loopexit ]
  %gep1357 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1356, i64 %indvars.iv1111
  %i.um = load double, ptr %gep1357, align 8, !tbaa !10
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv1111
  %i.uo = load double, ptr %i.un, align 8, !tbaa !10
  %i.up = tail call double @llvm.fmuladd.f64(double %i.um, double %i.uo, double %.0604948)
  %indvars.iv.next1112 = add nuw nsw i64 %indvars.iv1111, 1 ; 2 uses
  %gep1357.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1356, i64 %indvars.iv.next1112
  %i.uq = load double, ptr %gep1357.1, align 8, !tbaa !10
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next1112
  %i.us = load double, ptr %i.ur, align 8, !tbaa !10
  %i.ut = tail call double @llvm.fmuladd.f64(double %i.uq, double %i.us, double %i.up)
  %indvars.iv.next1112.1 = add nuw nsw i64 %indvars.iv1111, 2 ; 2 uses
  %gep1357.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1356, i64 %indvars.iv.next1112.1
  %i.uu = load double, ptr %gep1357.2, align 8, !tbaa !10
  %i.uv = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next1112.1
  %i.uw = load double, ptr %i.uv, align 8, !tbaa !10
  %i.ux = tail call double @llvm.fmuladd.f64(double %i.uu, double %i.uw, double %i.ut)
  %indvars.iv.next1112.2 = add nuw nsw i64 %indvars.iv1111, 3 ; 2 uses
  %gep1357.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1356, i64 %indvars.iv.next1112.2
  %i.uy = load double, ptr %gep1357.3, align 8, !tbaa !10
  %i.uz = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next1112.2
  %i.va = load double, ptr %i.uz, align 8, !tbaa !10
  %i.vb = tail call double @llvm.fmuladd.f64(double %i.uy, double %i.va, double %i.ux) ; 2 uses
  %indvars.iv.next1112.3 = add nuw nsw i64 %indvars.iv1111, 4 ; 2 uses
  %exitcond1115.not.3 = icmp eq i64 %indvars.iv.next1112.3, %i.bh
  br i1 %exitcond1115.not.3, label %.lr.ph953.preheader, label %.lr.ph949, !llvm.loop !45

.lr.ph953.preheader:                              ; preds = %.lr.ph949, %.lr.ph949.prol.loopexit
  %.lcssa1780 = phi double [ %.lcssa1780.unr, %.lr.ph949.prol.loopexit ], [ %i.vb, %.lr.ph949 ]
  %i.vc = fneg double %.lcssa1780
  %i.vd = fdiv double %i.vc, %i.ud                ; 4 uses
  %invariant.gep1358 = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.ty ; 4 uses
  %min.iters.check1641 = icmp ult i64 %i.tt, 4
  br i1 %min.iters.check1641, label %.lr.ph953.preheader1770, label %vector.memcheck1633

vector.memcheck1633:                              ; preds = %.lr.ph953.preheader
  %bound01637 = icmp ult ptr %gep1924, %scevgep1636
  %bound11638 = icmp ult ptr %scevgep1635, %i.bt
  %found.conflict1639 = and i1 %bound01637, %bound11638
  br i1 %found.conflict1639, label %.lr.ph953.preheader1770, label %vector.ph1642

vector.ph1642:                                    ; preds = %vector.memcheck1633
  %n.vec1643 = and i64 %i.tt, -4                  ; 3 uses
  %i.ve = add i64 %indvars.iv1109, %n.vec1643
  %broadcast.splatinsert1644 = insertelement <2 x double> poison, double %i.vd, i64 0
  %broadcast.splat1645 = shufflevector <2 x double> %broadcast.splatinsert1644, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1646

vector.body1646:                                  ; preds = %vector.body1646, %vector.ph1642
  %index1647 = phi i64 [ 0, %vector.ph1642 ], [ %index.next1652, %vector.body1646 ] ; 2 uses
  %i.vf = add nuw i64 %indvars.iv1109, %index1647 ; 2 uses
  %i.vg = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1358, i64 %i.vf ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 16
  %wide.load1648 = load <2 x double>, ptr %i.vg, align 8, !tbaa !10, !alias.scope !155
  %wide.load1649 = load <2 x double>, ptr %i.vh, align 8, !tbaa !10, !alias.scope !155
  %i.vi = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.vf ; 3 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 16 ; 2 uses
  %wide.load1650 = load <2 x double>, ptr %i.vi, align 8, !tbaa !10, !alias.scope !156, !noalias !155
  %wide.load1651 = load <2 x double>, ptr %i.vj, align 8, !tbaa !10, !alias.scope !156, !noalias !155
  %i.vk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load1648, <2 x double> %broadcast.splat1645, <2 x double> %wide.load1650)
  %i.vl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load1649, <2 x double> %broadcast.splat1645, <2 x double> %wide.load1651)
  store <2 x double> %i.vk, ptr %i.vi, align 8, !tbaa !10, !alias.scope !156, !noalias !155
  store <2 x double> %i.vl, ptr %i.vj, align 8, !tbaa !10, !alias.scope !156, !noalias !155
  %index.next1652 = add nuw i64 %index1647, 4     ; 2 uses
  %i.vm = icmp eq i64 %index.next1652, %n.vec1643
  br i1 %i.vm, label %middle.block1653, label %vector.body1646, !llvm.loop !49

middle.block1653:                                 ; preds = %vector.body1646
  %cmp.n1654 = icmp eq i64 %i.tt, %n.vec1643
  br i1 %cmp.n1654, label %.loopexit862, label %.lr.ph953.preheader1770

.lr.ph953.preheader1770:                          ; preds = %vector.memcheck1633, %.lr.ph953.preheader, %middle.block1653
  %indvars.iv1116.ph = phi i64 [ %indvars.iv1109, %vector.memcheck1633 ], [ %indvars.iv1109, %.lr.ph953.preheader ], [ %i.ve, %middle.block1653 ] ; 6 uses
  %i.vn = sub i64 %i.bh, %indvars.iv1116.ph
  %xtraiter1820 = and i64 %i.vn, 1
  %lcmp.mod1821.not = icmp eq i64 %xtraiter1820, 0
  br i1 %lcmp.mod1821.not, label %.lr.ph953.prol.loopexit, label %.lr.ph953.prol

.lr.ph953.prol:                                   ; preds = %.lr.ph953.preheader1770
  %gep1359.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1358, i64 %indvars.iv1116.ph
  %i.vo = load double, ptr %gep1359.prol, align 8, !tbaa !10
  %i.vp = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv1116.ph ; 2 uses
  %i.vq = load double, ptr %i.vp, align 8, !tbaa !10
  %i.vr = tail call double @llvm.fmuladd.f64(double %i.vo, double %i.vd, double %i.vq)
  store double %i.vr, ptr %i.vp, align 8, !tbaa !10
  %indvars.iv.next1117.prol = add nuw nsw i64 %indvars.iv1116.ph, 1
  br label %.lr.ph953.prol.loopexit

.lr.ph953.prol.loopexit:                          ; preds = %.lr.ph953.prol, %.lr.ph953.preheader1770
  %indvars.iv1116.unr = phi i64 [ %indvars.iv1116.ph, %.lr.ph953.preheader1770 ], [ %indvars.iv.next1117.prol, %.lr.ph953.prol ]
  %i.vs = icmp eq i64 %indvars.iv1116.ph, %i.gf
  br i1 %i.vs, label %.loopexit862, label %.lr.ph953

.lr.ph953:                                        ; preds = %.lr.ph953.prol.loopexit, %.lr.ph953
  %indvars.iv1116 = phi i64 [ %indvars.iv.next1117.1, %.lr.ph953 ], [ %indvars.iv1116.unr, %.lr.ph953.prol.loopexit ] ; 4 uses
  %gep1359 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1358, i64 %indvars.iv1116
  %i.vt = load double, ptr %gep1359, align 8, !tbaa !10
  %i.vu = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv1116 ; 2 uses
  %i.vv = load double, ptr %i.vu, align 8, !tbaa !10
  %i.vw = tail call double @llvm.fmuladd.f64(double %i.vt, double %i.vd, double %i.vv)
  store double %i.vw, ptr %i.vu, align 8, !tbaa !10
  %indvars.iv.next1117 = add nuw nsw i64 %indvars.iv1116, 1 ; 2 uses
  %gep1359.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1358, i64 %indvars.iv.next1117
  %i.vx = load double, ptr %gep1359.1, align 8, !tbaa !10
  %i.vy = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next1117 ; 2 uses
  %i.vz = load double, ptr %i.vy, align 8, !tbaa !10
  %i.wa = tail call double @llvm.fmuladd.f64(double %i.vx, double %i.vd, double %i.vz)
  store double %i.wa, ptr %i.vy, align 8, !tbaa !10
  %indvars.iv.next1117.1 = add nuw nsw i64 %indvars.iv1116, 2 ; 2 uses
  %exitcond1120.not.1 = icmp eq i64 %indvars.iv.next1117.1, %i.bh
  br i1 %exitcond1120.not.1, label %.loopexit862, label %.lr.ph953, !llvm.loop !50

.loopexit862:                                     ; preds = %.lr.ph953.prol.loopexit, %.lr.ph953, %middle.block1653, %.lr.ph957
  %i.wb = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv1109
  %i.wc = load double, ptr %i.wb, align 8, !tbaa !10
  store double %i.wc, ptr %i.uc, align 8, !tbaa !10
  %i.wd = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv1109
  %i.we = load double, ptr %i.wd, align 8, !tbaa !10
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv1109
  store double %i.we, ptr %i.wf, align 8, !tbaa !10
  %indvars.iv.next1110 = add nuw nsw i64 %indvars.iv1109, 1 ; 2 uses
  %exitcond1124.not = icmp eq i64 %indvars.iv.next1110, %i.dr
  br i1 %exitcond1124.not, label %.lr.ph962, label %.lr.ph957, !llvm.loop !51

.lr.ph962:                                        ; preds = %.loopexit862, %bb.cb
  %indvars.iv1134 = phi i64 [ %indvars.iv.next1135, %bb.cb ], [ 0, %.loopexit862 ] ; 4 uses
  %indvars.iv1132 = phi i64 [ %indvars.iv.next1133, %bb.cb ], [ 1, %.loopexit862 ] ; 3 uses
  %.0606961 = phi double [ %.1607, %bb.cb ], [ 0.000000e+00, %.loopexit862 ] ; 3 uses
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv1134
  %i.wh = load i32, ptr %i.wg, align 4, !tbaa !149
  %i.wi = sext i32 %i.wh to i64
  %i.wj = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.wi
  %i.wk = load double, ptr %i.wj, align 8, !tbaa !10 ; 2 uses
  %i.wl = fcmp oeq double %i.wk, 0.000000e+00
  br i1 %i.wl, label %bb.cb, label %.preheader861

.preheader861:                                    ; preds = %.lr.ph962
  %i.wm = mul nuw nsw i64 %indvars.iv1134, %i.dq
  %invariant.gep1360 = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.wm ; 5 uses
  %xtraiter1823 = and i64 %indvars.iv1132, 3      ; 3 uses
  %i.wn = icmp samesign ult i64 %indvars.iv1134, 3
  br i1 %i.wn, label %.epil.preheader, label %.preheader861.new

.preheader861.new:                                ; preds = %.preheader861
  %unroll_iter = and i64 %indvars.iv1132, -4
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bz, %.preheader861.new
  %indvars.iv1125 = phi i64 [ 0, %.preheader861.new ], [ %indvars.iv.next1126.3, %bb.bz ] ; 6 uses
  %.1605959 = phi double [ 0.000000e+00, %.preheader861.new ], [ %i.xd, %bb.bz ]
  %niter = phi i64 [ 0, %.preheader861.new ], [ %niter.next.3, %bb.bz ]
  %gep1361 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1360, i64 %indvars.iv1125
  %i.wo = load double, ptr %gep1361, align 8, !tbaa !10
  %i.wp = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv1125
  %i.wq = load double, ptr %i.wp, align 8, !tbaa !10
  %i.wr = tail call double @llvm.fmuladd.f64(double %i.wo, double %i.wq, double %.1605959)
  %indvars.iv.next1126 = or disjoint i64 %indvars.iv1125, 1 ; 2 uses
  %gep1361.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1360, i64 %indvars.iv.next1126
  %i.ws = load double, ptr %gep1361.1, align 8, !tbaa !10
  %i.wt = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.next1126
  %i.wu = load double, ptr %i.wt, align 8, !tbaa !10
  %i.wv = tail call double @llvm.fmuladd.f64(double %i.ws, double %i.wu, double %i.wr)
  %indvars.iv.next1126.1 = or disjoint i64 %indvars.iv1125, 2 ; 2 uses
  %gep1361.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1360, i64 %indvars.iv.next1126.1
  %i.ww = load double, ptr %gep1361.2, align 8, !tbaa !10
  %i.wx = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.next1126.1
  %i.wy = load double, ptr %i.wx, align 8, !tbaa !10
  %i.wz = tail call double @llvm.fmuladd.f64(double %i.ww, double %i.wy, double %i.wv)
  %indvars.iv.next1126.2 = or disjoint i64 %indvars.iv1125, 3 ; 2 uses
  %gep1361.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1360, i64 %indvars.iv.next1126.2
  %i.xa = load double, ptr %gep1361.3, align 8, !tbaa !10
  %i.xb = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.next1126.2
  %i.xc = load double, ptr %i.xb, align 8, !tbaa !10
  %i.xd = tail call double @llvm.fmuladd.f64(double %i.xa, double %i.xc, double %i.wz) ; 3 uses
  %indvars.iv.next1126.3 = add nuw nsw i64 %indvars.iv1125, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.bz, !llvm.loop !52

.unr-lcssa:                                       ; preds = %bb.bz
  %lcmp.mod1824.not = icmp eq i64 %xtraiter1823, 0
  br i1 %lcmp.mod1824.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader861
  %indvars.iv1125.epil.init = phi i64 [ 0, %.preheader861 ], [ %indvars.iv.next1126.3, %.unr-lcssa ]
  %.1605959.epil.init = phi double [ 0.000000e+00, %.preheader861 ], [ %i.xd, %.unr-lcssa ]
  %lcmp.mod1826 = icmp ne i64 %xtraiter1823, 0
  tail call void @llvm.assume(i1 %lcmp.mod1826)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.ca, %.epil.preheader
  %indvars.iv1125.epil = phi i64 [ %indvars.iv1125.epil.init, %.epil.preheader ], [ %indvars.iv.next1126.epil, %bb.ca ] ; 3 uses
  %.1605959.epil = phi double [ %.1605959.epil.init, %.epil.preheader ], [ %i.xh, %bb.ca ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ca ]
  %gep1361.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1360, i64 %indvars.iv1125.epil
  %i.xe = load double, ptr %gep1361.epil, align 8, !tbaa !10
  %i.xf = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv1125.epil
  %i.xg = load double, ptr %i.xf, align 8, !tbaa !10
  %i.xh = tail call double @llvm.fmuladd.f64(double %i.xe, double %i.xg, double %.1605959.epil) ; 2 uses
  %indvars.iv.next1126.epil = add nuw nsw i64 %indvars.iv1125.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1823
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.ca, !llvm.loop !53

.epilog-lcssa:                                    ; preds = %bb.ca, %.unr-lcssa
  %.lcssa1781 = phi double [ %i.xd, %.unr-lcssa ], [ %i.xh, %bb.ca ]
  %i.xi = fdiv double %.lcssa1781, %i.wk
  %i.xj = fdiv double %i.xi, %.0608
  %i.xk = tail call double @llvm.fabs.f64(double %i.xj) ; 2 uses
  %.inv849 = fcmp oge double %.0606961, %i.xk
  %..0606 = select i1 %.inv849, double %.0606961, double %i.xk
  br label %bb.cb

bb.cb:                                            ; preds = %.lr.ph962, %.epilog-lcssa
  %.1607 = phi double [ %.0606961, %.lr.ph962 ], [ %..0606, %.epilog-lcssa ] ; 3 uses
  %indvars.iv.next1135 = add nuw nsw i64 %indvars.iv1134, 1 ; 2 uses
  %indvars.iv.next1133 = add nuw i64 %indvars.iv1132, 1
  %exitcond1141.not = icmp eq i64 %indvars.iv.next1135, %i.dr
  br i1 %exitcond1141.not, label %._crit_edge963, label %.lr.ph962, !llvm.loop !54

._crit_edge963:                                   ; preds = %bb.cb
  %i.xl = load double, ptr %i.ac, align 8, !tbaa !143
  %i.xm = fcmp ugt double %.1607, %i.xl
  br i1 %i.xm, label %bb.cc, label %.thread.sink.split

bb.cc:                                            ; preds = %._crit_edge963
  %i.xn = icmp eq i32 %.0592, 0                   ; 2 uses
  %i.xo = load i32, ptr %i.ar, align 4, !tbaa !145
  %.not675 = icmp eq i32 %i.xo, 0                 ; 2 uses
  br i1 %i.xn, label %bb.cd, label %bb.ch

bb.cd:                                            ; preds = %bb.cc
  br i1 %.not675, label %._crit_edge971, label %.lr.ph968.preheader

.lr.ph968.preheader:                              ; preds = %bb.cd
  br i1 %min.iters.check1608, label %.lr.ph968.preheader1773, label %vector.body1611

vector.body1611:                                  ; preds = %.lr.ph968.preheader, %vector.body1611
  %index1612 = phi i64 [ %index.next1615, %vector.body1611 ], [ 0, %.lr.ph968.preheader ] ; 3 uses
  %i.xp = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %index1612 ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 16
  %wide.load1613 = load <2 x double>, ptr %i.xp, align 8, !tbaa !10 ; 2 uses
  %wide.load1614 = load <2 x double>, ptr %i.xq, align 8, !tbaa !10 ; 2 uses
  %i.xr = fcmp une <2 x double> %wide.load1613, zeroinitializer
  %i.xs = fcmp une <2 x double> %wide.load1614, zeroinitializer
  %i.xt = select <2 x i1> %i.xr, <2 x double> %wide.load1613, <2 x double> splat (double 1.000000e+00)
  %i.xu = select <2 x i1> %i.xs, <2 x double> %wide.load1614, <2 x double> splat (double 1.000000e+00)
  %i.xv = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %index1612 ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 16
  store <2 x double> %i.xt, ptr %i.xv, align 8, !tbaa !10
  store <2 x double> %i.xu, ptr %i.xw, align 8, !tbaa !10
  %index.next1615 = add nuw i64 %index1612, 4     ; 2 uses
  %i.xx = icmp eq i64 %index.next1615, %n.vec1610
  br i1 %i.xx, label %middle.block1616, label %vector.body1611, !llvm.loop !55

middle.block1616:                                 ; preds = %vector.body1611
  br i1 %cmp.n1617, label %.lr.ph970.preheader, label %.lr.ph968.preheader1773

.lr.ph968.preheader1773:                          ; preds = %.lr.ph968.preheader, %middle.block1616
  %indvars.iv1148.ph = phi i64 [ 0, %.lr.ph968.preheader ], [ %n.vec1610, %middle.block1616 ]
  br label %.lr.ph968

.lr.ph968:                                        ; preds = %.lr.ph968.preheader1773, %.lr.ph968
  %indvars.iv1148 = phi i64 [ %indvars.iv.next1149, %.lr.ph968 ], [ %indvars.iv1148.ph, %.lr.ph968.preheader1773 ] ; 3 uses
  %i.xy = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv1148
  %i.xz = load double, ptr %i.xy, align 8, !tbaa !10 ; 2 uses
  %i.ya = fcmp une double %i.xz, 0.000000e+00
  %i.yb = select i1 %i.ya, double %i.xz, double 1.000000e+00
  %i.yc = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv1148
end_hunk_0
begin_hunk_1_@_Z6lmmin2iPdS_S_iPKdPKvPFvS1_iS3_S_PiEPK17lm_control_structP16lm_status_struct:bb.a
  br label %_Z8lm_enormiPKd.exit317.i

.thread.i299.i:                                   ; preds = %bb.eh
  %i.alz = tail call double @sqrt(double noundef %.163.i311.i) #11
  %i.ama = fmul double %.1.i313.i, %i.alz
  br label %_Z8lm_enormiPKd.exit317.i

_Z8lm_enormiPKd.exit317.i:                        ; preds = %.thread.i299.i, %bb.ek, %bb.ej, %bb.eg
  %.069.i300.i = phi double [ %i.aln, %bb.eg ], [ %i.alu, %bb.ej ], [ %i.aly, %bb.ek ], [ %i.ama, %.thread.i299.i ] ; 2 uses
  %i.amb = fdiv double %.069.i300.i, %.3598       ; 2 uses
  %i.amc = fcmp oeq double %i.amb, 0.000000e+00
  br i1 %i.amc, label %bb.el, label %bb.em

bb.el:                                            ; preds = %_Z8lm_enormiPKd.exit317.i
  %i.amd = fcmp ole double %.3598, 1.000000e-01
  %i.ame = select i1 %i.amd, double %.3598, double 1.000000e-01
  %i.amf = fdiv double f0x0010000000000000, %i.ame
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %_Z8lm_enormiPKd.exit317.i
  %.0251.i = phi double [ %i.amf, %bb.el ], [ %i.amb, %_Z8lm_enormiPKd.exit317.i ] ; 3 uses
  %.inv.i = fcmp oge double %.1836, %.0253.i
  %.0253..i = select i1 %.inv.i, double %.1836, double %.0253.i ; 2 uses
  %.inv360.i = fcmp ole double %.0253..i, %.0251.i
  %i.amg = select i1 %.inv360.i, double %.0253..i, double %.0251.i ; 2 uses
  %i.amh = fcmp oeq double %i.amg, 0.000000e+00
  %i.ami = fdiv double %.069.i300.i, %.069.i.i738
  %storemerge.i = select i1 %i.amh, double %i.ami, double %i.amg
  br label %bb.en

bb.en:                                            ; preds = %bb.gj, %bb.em
  %.4839 = phi double [ %storemerge.i, %bb.em ], [ %..2255.i, %bb.gj ] ; 2 uses
  %.0262.i = phi i32 [ 0, %bb.em ], [ %i.baw, %bb.gj ] ; 3 uses
  %.0256.i = phi double [ %i.afk, %bb.em ], [ %i.awd, %bb.gj ] ; 2 uses
  %.1254.i = phi double [ %.0253.i, %bb.em ], [ %.2255.i, %bb.gj ] ; 5 uses
  %.1252.i = phi double [ %.0251.i, %bb.em ], [ %.2.i, %bb.gj ] ; 5 uses
  %i.amj = fcmp oeq double %.4839, 0.000000e+00
  br i1 %i.amj, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.amk = fmul double %.1252.i, 1.000000e-03     ; 2 uses
  %i.aml = fcmp ole double %i.amk, f0x0010000000000000
  %i.amm = select i1 %i.aml, double f0x0010000000000000, double %i.amk
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %i.amn = phi double [ %i.amm, %bb.eo ], [ %.4839, %bb.en ] ; 9 uses
  %i.amo = tail call double @sqrt(double noundef %i.amn) #11 ; 2 uses
  br i1 %min.iters.check1542, label %scalar.ph1541.preheader, label %vector.ph1543

vector.ph1543:                                    ; preds = %bb.ep
  %broadcast.splatinsert1545 = insertelement <2 x double> poison, double %i.amo, i64 0
  %broadcast.splat1546 = shufflevector <2 x double> %broadcast.splatinsert1545, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1547

vector.body1547:                                  ; preds = %vector.body1547, %vector.ph1543
  %index1548 = phi i64 [ 0, %vector.ph1543 ], [ %index.next1551, %vector.body1547 ] ; 3 uses
  %i.amp = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %index1548 ; 2 uses
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amp, i64 16
  %wide.load1549 = load <2 x double>, ptr %i.amp, align 8, !tbaa !10
  %wide.load1550 = load <2 x double>, ptr %i.amq, align 8, !tbaa !10
  %i.amr = fmul <2 x double> %broadcast.splat1546, %wide.load1549
  %i.ams = fmul <2 x double> %broadcast.splat1546, %wide.load1550
  %i.amt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %index1548 ; 2 uses
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amt, i64 16
  store <2 x double> %i.amr, ptr %i.amt, align 8, !tbaa !10
  store <2 x double> %i.ams, ptr %i.amu, align 8, !tbaa !10
  %index.next1551 = add nuw i64 %index1548, 4     ; 2 uses
  %i.amv = icmp eq i64 %index.next1551, %n.vec1544
  br i1 %i.amv, label %middle.block1552, label %vector.body1547, !llvm.loop !80

middle.block1552:                                 ; preds = %vector.body1547
  br i1 %cmp.n1553, label %.preheader196.i.i.preheader, label %scalar.ph1541.preheader

scalar.ph1541.preheader:                          ; preds = %bb.ep, %middle.block1552
  %indvars.iv458.i.ph = phi i64 [ 0, %bb.ep ], [ %n.vec1544, %middle.block1552 ]
  br label %scalar.ph1541

scalar.ph1541:                                    ; preds = %scalar.ph1541.preheader, %scalar.ph1541
  %indvars.iv458.i = phi i64 [ %indvars.iv.next459.i, %scalar.ph1541 ], [ %indvars.iv458.i.ph, %scalar.ph1541.preheader ] ; 3 uses
  %i.amw = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv458.i
  %i.amx = load double, ptr %i.amw, align 8, !tbaa !10
  %i.amy = fmul double %i.amo, %i.amx
  %i.amz = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv458.i
  store double %i.amy, ptr %i.amz, align 8, !tbaa !10
  %indvars.iv.next459.i = add nuw nsw i64 %indvars.iv458.i, 1 ; 2 uses
  %exitcond462.not.i = icmp eq i64 %indvars.iv.next459.i, %i.bc
  br i1 %exitcond462.not.i, label %.preheader196.i.i.preheader, label %scalar.ph1541, !llvm.loop !81

.preheader196.i.i.preheader:                      ; preds = %scalar.ph1541, %middle.block1552
  br label %.preheader196.i.i

.preheader196.i.i:                                ; preds = %.preheader196.i.i.preheader, %.loopexit1759
  %indvars.iv.i318.i = phi i64 [ %indvars.iv.next.i320.i, %.loopexit1759 ], [ 0, %.preheader196.i.i.preheader ] ; 11 uses
  %i.ana = mul nuw nsw i64 %indvars.iv.i318.i, %i.bh
  %invariant.gep.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.i318.i ; 6 uses
  %invariant.gep269.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.ana ; 6 uses
  %i.anb = sub nsw i64 %i.bc, %indvars.iv.i318.i  ; 3 uses
  %min.iters.check1530 = icmp ugt i64 %i.anb, 3
  %or.cond1761 = and i1 %min.iters.check1530, %ident.check.not
  br i1 %or.cond1761, label %vector.ph1531, label %scalar.ph1529.preheader

vector.ph1531:                                    ; preds = %.preheader196.i.i
  %n.vec1532 = and i64 %i.anb, -4                 ; 3 uses
  %i.anc = add i64 %indvars.iv.i318.i, %n.vec1532
  br label %vector.body1533

vector.body1533:                                  ; preds = %vector.body1533, %vector.ph1531
  %index1534 = phi i64 [ 0, %vector.ph1531 ], [ %index.next1537, %vector.body1533 ] ; 2 uses
  %i.and = add nuw i64 %indvars.iv.i318.i, %index1534 ; 2 uses
  %i.ane = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %i.and ; 2 uses
  %i.anf = getelementptr inbounds nuw i8, ptr %i.ane, i64 16
  %wide.load1535 = load <2 x double>, ptr %i.ane, align 8, !tbaa !10
  %wide.load1536 = load <2 x double>, ptr %i.anf, align 8, !tbaa !10
  %i.ang = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep269.i.i, i64 %i.and ; 2 uses
  %i.anh = getelementptr inbounds nuw i8, ptr %i.ang, i64 16
  store <2 x double> %wide.load1535, ptr %i.ang, align 8, !tbaa !10
  store <2 x double> %wide.load1536, ptr %i.anh, align 8, !tbaa !10
  %index.next1537 = add nuw i64 %index1534, 4     ; 2 uses
  %i.ani = icmp eq i64 %index.next1537, %n.vec1532
  br i1 %i.ani, label %middle.block1538, label %vector.body1533, !llvm.loop !82

middle.block1538:                                 ; preds = %vector.body1533
  %cmp.n1539 = icmp eq i64 %i.anb, %n.vec1532
  br i1 %cmp.n1539, label %.loopexit1759, label %scalar.ph1529.preheader

scalar.ph1529.preheader:                          ; preds = %.preheader196.i.i, %middle.block1538
  %indvars.iv220.i.i.ph = phi i64 [ %indvars.iv.i318.i, %.preheader196.i.i ], [ %i.anc, %middle.block1538 ] ; 4 uses
  %i.anj = sub i64 %i.bc, %indvars.iv220.i.i.ph
  %xtraiter1860 = and i64 %i.anj, 3               ; 2 uses
  %lcmp.mod1861.not = icmp eq i64 %xtraiter1860, 0
  br i1 %lcmp.mod1861.not, label %scalar.ph1529.prol.loopexit, label %scalar.ph1529.prol

scalar.ph1529.prol:                               ; preds = %scalar.ph1529.preheader, %scalar.ph1529.prol
  %indvars.iv220.i.i.prol = phi i64 [ %indvars.iv.next221.i.i.prol, %scalar.ph1529.prol ], [ %indvars.iv220.i.i.ph, %scalar.ph1529.preheader ] ; 3 uses
  %prol.iter1862 = phi i64 [ %prol.iter1862.next, %scalar.ph1529.prol ], [ 0, %scalar.ph1529.preheader ]
  %i.ank = mul nuw nsw i64 %indvars.iv220.i.i.prol, %i.bh
  %gep.i.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %i.ank
  %i.anl = load double, ptr %gep.i.i.prol, align 8, !tbaa !10
  %gep270.i.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep269.i.i, i64 %indvars.iv220.i.i.prol
  store double %i.anl, ptr %gep270.i.i.prol, align 8, !tbaa !10
  %indvars.iv.next221.i.i.prol = add nuw nsw i64 %indvars.iv220.i.i.prol, 1 ; 2 uses
  %prol.iter1862.next = add i64 %prol.iter1862, 1 ; 2 uses
  %prol.iter1862.cmp.not = icmp eq i64 %prol.iter1862.next, %xtraiter1860
  br i1 %prol.iter1862.cmp.not, label %scalar.ph1529.prol.loopexit, label %scalar.ph1529.prol, !llvm.loop !83

scalar.ph1529.prol.loopexit:                      ; preds = %scalar.ph1529.prol, %scalar.ph1529.preheader
  %indvars.iv220.i.i.unr = phi i64 [ %indvars.iv220.i.i.ph, %scalar.ph1529.preheader ], [ %indvars.iv.next221.i.i.prol, %scalar.ph1529.prol ]
  %i.anm = sub i64 %indvars.iv220.i.i.ph, %i.bc
  %i.ann = icmp ugt i64 %i.anm, -4
  br i1 %i.ann, label %.loopexit1759, label %scalar.ph1529

scalar.ph1529:                                    ; preds = %scalar.ph1529.prol.loopexit, %scalar.ph1529
  %indvars.iv220.i.i = phi i64 [ %indvars.iv.next221.i.i.3, %scalar.ph1529 ], [ %indvars.iv220.i.i.unr, %scalar.ph1529.prol.loopexit ] ; 6 uses
  %i.ano = mul nuw nsw i64 %indvars.iv220.i.i, %i.bh
  %gep.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %i.ano
  %i.anp = load double, ptr %gep.i.i, align 8, !tbaa !10
  %gep270.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep269.i.i, i64 %indvars.iv220.i.i
  store double %i.anp, ptr %gep270.i.i, align 8, !tbaa !10
  %indvars.iv.next221.i.i = add nuw nsw i64 %indvars.iv220.i.i, 1 ; 2 uses
  %i.anq = mul nuw nsw i64 %indvars.iv.next221.i.i, %i.bh
  %gep.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %i.anq
  %i.anr = load double, ptr %gep.i.i.1, align 8, !tbaa !10
  %gep270.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep269.i.i, i64 %indvars.iv.next221.i.i
  store double %i.anr, ptr %gep270.i.i.1, align 8, !tbaa !10
  %indvars.iv.next221.i.i.1 = add nuw nsw i64 %indvars.iv220.i.i, 2 ; 2 uses
  %i.ans = mul nuw nsw i64 %indvars.iv.next221.i.i.1, %i.bh
  %gep.i.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %i.ans
  %i.ant = load double, ptr %gep.i.i.2, align 8, !tbaa !10
  %gep270.i.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep269.i.i, i64 %indvars.iv.next221.i.i.1
  store double %i.ant, ptr %gep270.i.i.2, align 8, !tbaa !10
  %indvars.iv.next221.i.i.2 = add nuw nsw i64 %indvars.iv220.i.i, 3 ; 2 uses
  %i.anu = mul nuw nsw i64 %indvars.iv.next221.i.i.2, %i.bh
  %gep.i.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %i.anu
  %i.anv = load double, ptr %gep.i.i.3, align 8, !tbaa !10
  %gep270.i.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep269.i.i, i64 %indvars.iv.next221.i.i.2
  store double %i.anv, ptr %gep270.i.i.3, align 8, !tbaa !10
  %indvars.iv.next221.i.i.3 = add nuw nsw i64 %indvars.iv220.i.i, 4 ; 2 uses
  %exitcond.not.i319.i.3 = icmp eq i64 %indvars.iv.next221.i.i.3, %i.bc
  br i1 %exitcond.not.i319.i.3, label %.loopexit1759, label %scalar.ph1529, !llvm.loop !84

.loopexit1759:                                    ; preds = %scalar.ph1529.prol.loopexit, %scalar.ph1529, %middle.block1538
  %i.anw = trunc nuw nsw i64 %indvars.iv.i318.i to i32
  %i.anx = mul i32 %i.dh, %i.anw
  %i.any = sext i32 %i.anx to i64
  %i.anz = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.any
  %i.aoa = load double, ptr %i.anz, align 8, !tbaa !10
  %i.aob = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.i318.i
  store double %i.aoa, ptr %i.aob, align 8, !tbaa !10
  %i.aoc = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.i318.i
  %i.aod = load double, ptr %i.aoc, align 8, !tbaa !10
  %i.aoe = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.i318.i
  store double %i.aod, ptr %i.aoe, align 8, !tbaa !10
  %indvars.iv.next.i320.i = add nuw nsw i64 %indvars.iv.i318.i, 1 ; 2 uses
  %exitcond225.not.i.i = icmp eq i64 %indvars.iv.next.i320.i, %i.bc
  br i1 %exitcond225.not.i.i, label %.preheader195.i.i, label %.preheader196.i.i, !llvm.loop !85

.preheader195.i.i:                                ; preds = %.loopexit1759, %.loopexit193.i.i
  %indvars.iv229.i.i = phi i64 [ %indvars.iv.next230.i.i, %.loopexit193.i.i ], [ 1, %.loopexit1759 ] ; 2 uses
  %indvar.i.i = phi i64 [ %indvar.next.i.i, %.loopexit193.i.i ], [ 0, %.loopexit1759 ] ; 12 uses
  %11 = xor i64 %indvar.i.i, -1
  %12 = add nsw i64 %11, %i.bc
  %i.aof = mul i64 %i.en, %indvar.i.i
  %i.aog = mul i64 %i.eo, %indvar.i.i
  %i.aoh = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvar.i.i
  %i.aoi = load i32, ptr %i.aoh, align 4, !tbaa !149
  %i.aoj = sext i32 %i.aoi to i64
  %i.aok = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.aoj ; 2 uses
  %i.aol = load double, ptr %i.aok, align 8, !tbaa !10
  %i.aom = fcmp oeq double %i.aol, 0.000000e+00
  %.pre486.i = trunc i64 %indvar.i.i to i32       ; 2 uses
  br i1 %i.aom, label %.loopexit193.i.i, label %.lr.ph207.preheader.i.i

.lr.ph207.preheader.i.i:                          ; preds = %.preheader195.i.i
  %i.aon = xor i32 %.pre486.i, -1
  %i.aoo = add i32 %0, %i.aon
  %i.aop = zext i32 %i.aoo to i64
  %i.aoq = shl nuw nsw i64 %i.aop, 3
  %i.aor = add nuw nsw i64 %i.aoq, 8
  %i.aos = shl nuw nsw i64 %indvar.i.i, 3
  %scevgep.i.i = getelementptr i8, ptr %i.bq, i64 %i.aos
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i, i8 0, i64 %i.aor, i1 false), !tbaa !10
  %.pre.i.i = load double, ptr %i.aok, align 8, !tbaa !10
  %i.aot = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvar.i.i
  store double %.pre.i.i, ptr %i.aot, align 8, !tbaa !10
  %i.aou = getelementptr i8, ptr %i.gl, i64 %i.aof
  %i.aov = getelementptr i8, ptr %i.gn, i64 %i.aog
  br label %.lr.ph207.i.i

.lr.ph207.i.i:                                    ; preds = %.loopexit.i.i, %.lr.ph207.preheader.i.i
  %indvar = phi i64 [ %indvar.next, %.loopexit.i.i ], [ 0, %.lr.ph207.preheader.i.i ] ; 5 uses
  %indvars.iv238.i.i = phi i64 [ %indvars.iv.next239.pre-phi.i.i, %.loopexit.i.i ], [ %indvar.i.i, %.lr.ph207.preheader.i.i ] ; 7 uses
  %indvars.iv231.i.i = phi i64 [ %indvars.iv.next232.i.i, %.loopexit.i.i ], [ %indvars.iv229.i.i, %.lr.ph207.preheader.i.i ] ; 6 uses
  %.0174205.i.i = phi double [ %.1.i321.i, %.loopexit.i.i ], [ 0.000000e+00, %.lr.ph207.preheader.i.i ] ; 3 uses
  %13 = sub i64 %12, %indvar                      ; 3 uses
  %i.aow = add i64 %indvar.i.i, %indvar
  %i.aox = shl i64 %i.aow, 3
  %gep1928 = getelementptr i8, ptr %invariant.gep1927, i64 %i.aox
  %scevgep1505 = getelementptr i8, ptr %gep1928, i64 8
  %i.aoy = mul i64 %i.en, %indvar
  %scevgep1506 = getelementptr i8, ptr %i.aou, i64 %i.aoy
  %i.aoz = mul i64 %i.ep, %indvar
  %scevgep1507 = getelementptr i8, ptr %i.aov, i64 %i.aoz
  %i.apa = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv238.i.i
  %i.apb = load double, ptr %i.apa, align 8, !tbaa !10 ; 5 uses
  %i.apc = fcmp oeq double %i.apb, 0.000000e+00
  br i1 %i.apc, label %.lr.ph207..loopexit_crit_edge.i.i, label %bb.eq

.lr.ph207..loopexit_crit_edge.i.i:                ; preds = %.lr.ph207.i.i
  %.pre264.i.i = add nuw nsw i64 %indvars.iv238.i.i, 1
  br label %.loopexit.i.i

bb.eq:                                            ; preds = %.lr.ph207.i.i
  %indvars241.i.i = trunc i64 %indvars.iv238.i.i to i32
  %i.apd = mul nuw nsw i64 %indvars.iv238.i.i, %i.bh
  %i.ape = mul nuw nsw i32 %4, %indvars241.i.i
  %i.apf = zext i32 %i.ape to i64
  %i.apg = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv238.i.i
  %i.aph = getelementptr inbounds nuw [8 x i8], ptr %i.apg, i64 %i.apf ; 2 uses
  %i.api = load double, ptr %i.aph, align 8, !tbaa !10 ; 4 uses
  %i.apj = tail call double @llvm.fabs.f64(double %i.api)
  %i.apk = tail call double @llvm.fabs.f64(double %i.apb)
  %i.apl = fcmp olt double %i.apj, %i.apk
  br i1 %i.apl, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.apm = fdiv double %i.api, %i.apb             ; 3 uses
  %i.apn = tail call double @llvm.fmuladd.f64(double %i.apm, double %i.apm, double 1.000000e+00)
  %sqrt.i.i = tail call double @llvm.sqrt.f64(double %i.apn)
  %i.apo = fdiv double 1.000000e+00, %sqrt.i.i    ; 2 uses
  %i.app = fmul double %i.apm, %i.apo
  br label %bb.et

bb.es:                                            ; preds = %bb.eq
  %i.apq = fdiv double %i.apb, %i.api             ; 3 uses
  %i.apr = tail call double @llvm.fmuladd.f64(double %i.apq, double %i.apq, double 1.000000e+00)
  %sqrt189.i.i = tail call double @llvm.sqrt.f64(double %i.apr)
  %i.aps = fdiv double 1.000000e+00, %sqrt189.i.i ; 2 uses
  %i.apt = fmul double %i.apq, %i.aps
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %.0172.i.i = phi double [ %i.apo, %bb.er ], [ %i.apt, %bb.es ] ; 5 uses
  %.0.i.i = phi double [ %i.app, %bb.er ], [ %i.aps, %bb.es ] ; 6 uses
  %i.apu = fmul double %i.apb, %.0172.i.i
  %i.apv = tail call double @llvm.fmuladd.f64(double %.0.i.i, double %i.api, double %i.apu)
  store double %i.apv, ptr %i.aph, align 8, !tbaa !10
  %i.apw = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv238.i.i ; 2 uses
  %i.apx = load double, ptr %i.apw, align 8, !tbaa !10 ; 2 uses
  %i.apy = fmul double %.0174205.i.i, %.0172.i.i
  %i.apz = tail call double @llvm.fmuladd.f64(double %.0.i.i, double %i.apx, double %i.apy)
  %i.aqa = fneg double %.0172.i.i                 ; 3 uses
  %i.aqb = fmul double %.0174205.i.i, %.0.i.i
  %i.aqc = tail call double @llvm.fmuladd.f64(double %i.aqa, double %i.apx, double %i.aqb) ; 3 uses
  store double %i.apz, ptr %i.apw, align 8, !tbaa !10
  %i.aqd = add nuw nsw i64 %indvars.iv238.i.i, 1  ; 4 uses
  %i.aqe = icmp samesign ult i64 %i.aqd, %i.bc
  br i1 %i.aqe, label %.lr.ph203.preheader.i.i, label %.loopexit.i.i

.lr.ph203.preheader.i.i:                          ; preds = %bb.et
  %invariant.gep271.i.i = getelementptr [8 x i8], ptr %i.bm, i64 %i.apd ; 2 uses
  %min.iters.check1512 = icmp ult i64 %13, 2
  br i1 %min.iters.check1512, label %.lr.ph203.i.i.preheader, label %vector.memcheck1504

vector.memcheck1504:                              ; preds = %.lr.ph203.preheader.i.i
  %bound01508 = icmp ult ptr %scevgep1505, %scevgep1507
  %bound11509 = icmp ult ptr %scevgep1506, %i.br
  %found.conflict1510 = and i1 %bound01508, %bound11509
  br i1 %found.conflict1510, label %.lr.ph203.i.i.preheader, label %vector.ph1513

vector.ph1513:                                    ; preds = %vector.memcheck1504
  %n.vec1514 = and i64 %13, -2                    ; 3 uses
  %i.aqf = add i64 %indvars.iv231.i.i, %n.vec1514
  %broadcast.splatinsert1515 = insertelement <2 x double> poison, double %.0172.i.i, i64 0
  %broadcast.splat1516 = shufflevector <2 x double> %broadcast.splatinsert1515, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert1517 = insertelement <2 x double> poison, double %.0.i.i, i64 0
  %broadcast.splat1518 = shufflevector <2 x double> %broadcast.splatinsert1517, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1519 = insertelement <2 x double> poison, double %i.aqa, i64 0
  %broadcast.splat1520 = shufflevector <2 x double> %broadcast.splatinsert1519, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body1521

vector.body1521:                                  ; preds = %vector.body1521, %vector.ph1513
  %index1522 = phi i64 [ 0, %vector.ph1513 ], [ %index.next1525, %vector.body1521 ] ; 2 uses
  %i.aqg = add nuw i64 %indvars.iv231.i.i, %index1522 ; 2 uses
  %i.aqh = getelementptr [8 x i8], ptr %invariant.gep271.i.i, i64 %i.aqg ; 2 uses
  %wide.load1523 = load <2 x double>, ptr %i.aqh, align 8, !tbaa !10, !alias.scope !159 ; 2 uses
  %i.aqi = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.aqg ; 2 uses
  %wide.load1524 = load <2 x double>, ptr %i.aqi, align 8, !tbaa !10, !alias.scope !160, !noalias !159 ; 2 uses
  %i.aqj = fmul <2 x double> %broadcast.splat1516, %wide.load1524
  %i.aqk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1518, <2 x double> %wide.load1523, <2 x double> %i.aqj)
  %i.aql = fmul <2 x double> %broadcast.splat1518, %wide.load1524
  %i.aqm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1520, <2 x double> %wide.load1523, <2 x double> %i.aql)
  store <2 x double> %i.aqm, ptr %i.aqi, align 8, !tbaa !10, !alias.scope !160, !noalias !159
  store <2 x double> %i.aqk, ptr %i.aqh, align 8, !tbaa !10, !alias.scope !159
  %index.next1525 = add nuw i64 %index1522, 2     ; 2 uses
  %i.aqn = icmp eq i64 %index.next1525, %n.vec1514
  br i1 %i.aqn, label %middle.block1526, label %vector.body1521, !llvm.loop !89

middle.block1526:                                 ; preds = %vector.body1521
  %cmp.n1527 = icmp eq i64 %13, %n.vec1514
  br i1 %cmp.n1527, label %.loopexit.i.i, label %.lr.ph203.i.i.preheader

.lr.ph203.i.i.preheader:                          ; preds = %vector.memcheck1504, %.lr.ph203.preheader.i.i, %middle.block1526
  %indvars.iv233.i.i.ph = phi i64 [ %indvars.iv231.i.i, %vector.memcheck1504 ], [ %indvars.iv231.i.i, %.lr.ph203.preheader.i.i ], [ %i.aqf, %middle.block1526 ]
  %i.aqo = insertelement <2 x double> poison, double %.0172.i.i, i64 0
  %i.aqp = insertelement <2 x double> %i.aqo, double %.0.i.i, i64 1
  %i.aqq = insertelement <2 x double> poison, double %.0.i.i, i64 0
  %i.aqr = insertelement <2 x double> %i.aqq, double %i.aqa, i64 1
  br label %.lr.ph203.i.i

.lr.ph203.i.i:                                    ; preds = %.lr.ph203.i.i.preheader, %.lr.ph203.i.i
  %indvars.iv233.i.i = phi i64 [ %indvars.iv.next234.i.i, %.lr.ph203.i.i ], [ %indvars.iv233.i.i.ph, %.lr.ph203.i.i.preheader ] ; 3 uses
  %gep272.i.i = getelementptr [8 x i8], ptr %invariant.gep271.i.i, i64 %indvars.iv233.i.i ; 2 uses
  %i.aqs = load double, ptr %gep272.i.i, align 8, !tbaa !10
  %i.aqt = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv233.i.i ; 2 uses
  %i.aqu = load double, ptr %i.aqt, align 8, !tbaa !10
  %i.aqv = insertelement <2 x double> poison, double %i.aqu, i64 0
  %i.aqw = shufflevector <2 x double> %i.aqv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aqx = fmul <2 x double> %i.aqp, %i.aqw
  %i.aqy = insertelement <2 x double> poison, double %i.aqs, i64 0
  %i.aqz = shufflevector <2 x double> %i.aqy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ara = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aqr, <2 x double> %i.aqz, <2 x double> %i.aqx) ; 2 uses
  %i.arb = extractelement <2 x double> %i.ara, i64 1
  store double %i.arb, ptr %i.aqt, align 8, !tbaa !10
  %i.arc = extractelement <2 x double> %i.ara, i64 0
  store double %i.arc, ptr %gep272.i.i, align 8, !tbaa !10
  %indvars.iv.next234.i.i = add nuw nsw i64 %indvars.iv233.i.i, 1 ; 2 uses
  %exitcond237.not.i.i = icmp eq i64 %indvars.iv.next234.i.i, %i.bc
  br i1 %exitcond237.not.i.i, label %.loopexit.i.i, label %.lr.ph203.i.i, !llvm.loop !90

.loopexit.i.i:                                    ; preds = %.lr.ph203.i.i, %middle.block1526, %bb.et, %.lr.ph207..loopexit_crit_edge.i.i
  %indvars.iv.next239.pre-phi.i.i = phi i64 [ %.pre264.i.i, %.lr.ph207..loopexit_crit_edge.i.i ], [ %i.aqd, %bb.et ], [ %i.aqd, %middle.block1526 ], [ %i.aqd, %.lr.ph203.i.i ]
  %.1.i321.i = phi double [ %.0174205.i.i, %.lr.ph207..loopexit_crit_edge.i.i ], [ %i.aqc, %bb.et ], [ %i.aqc, %middle.block1526 ], [ %i.aqc, %.lr.ph203.i.i ]
  %indvars.iv.next232.i.i = add nuw i64 %indvars.iv231.i.i, 1
  %exitcond463.i = icmp eq i64 %indvars.iv231.i.i, %i.bc
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond463.i, label %.loopexit193.i.i, label %.lr.ph207.i.i, !llvm.loop !91

.loopexit193.i.i:                                 ; preds = %.loopexit.i.i, %.preheader195.i.i
  %i.ard = mul i32 %i.dh, %.pre486.i
  %i.are = sext i32 %i.ard to i64
  %i.arf = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.are ; 2 uses
  %i.arg = load double, ptr %i.arf, align 8, !tbaa !10
  %i.arh = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvar.i.i
  store double %i.arg, ptr %i.arh, align 8, !tbaa !10
  %i.ari = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvar.i.i
  %i.arj = load double, ptr %i.ari, align 8, !tbaa !10
  store double %i.arj, ptr %i.arf, align 8, !tbaa !10
  %indvar.next.i.i = add nuw nsw i64 %indvar.i.i, 1 ; 2 uses
  %indvars.iv.next230.i.i = add nuw nsw i64 %indvars.iv229.i.i, 1
  %exitcond246.not.i.i = icmp eq i64 %indvar.next.i.i, %i.bc
  br i1 %exitcond246.not.i.i, label %.preheader192.i.i.preheader, label %.preheader195.i.i, !llvm.loop !92

.preheader192.i.i.preheader:                      ; preds = %.loopexit193.i.i
  br i1 %i.go, label %.preheader192.i.i.epil.preheader, label %.preheader192.i.i

.preheader191.i.i.unr-lcssa:                      ; preds = %bb.ex
  br i1 %lcmp.mod1865.not, label %.preheader191.i.i, label %.preheader192.i.i.epil.preheader

.preheader192.i.i.epil.preheader:                 ; preds = %.preheader191.i.i.unr-lcssa, %.preheader192.i.i.preheader
  %indvars.iv247.i.i.epil.init = phi i64 [ 0, %.preheader192.i.i.preheader ], [ %indvars.iv.next248.i.i.1, %.preheader191.i.i.unr-lcssa ] ; 3 uses
  %.0175211.i.i.epil.init = phi i32 [ %0, %.preheader192.i.i.preheader ], [ %.1176.i.i.1, %.preheader191.i.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod1867)
  %i.ark = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv247.i.i.epil.init
  %i.arl = load double, ptr %i.ark, align 8, !tbaa !10
  %i.arm = fcmp oeq double %i.arl, 0.000000e+00
  %i.arn = icmp eq i32 %.0175211.i.i.epil.init, %0
  %or.cond.i.i.epil = and i1 %i.arn, %i.arm
  %i.aro = trunc nuw nsw i64 %indvars.iv247.i.i.epil.init to i32
  %.1176.i.i.epil = select i1 %or.cond.i.i.epil, i32 %i.aro, i32 %.0175211.i.i.epil.init ; 3 uses
  %i.arp = icmp samesign ult i32 %.1176.i.i.epil, %0
  br i1 %i.arp, label %bb.eu, label %.preheader191.i.i

bb.eu:                                            ; preds = %.preheader192.i.i.epil.preheader
  %i.arq = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv247.i.i.epil.init
  store double 0.000000e+00, ptr %i.arq, align 8, !tbaa !10
  br label %.preheader191.i.i

.preheader191.i.i:                                ; preds = %.preheader192.i.i.epil.preheader, %bb.eu, %.preheader191.i.i.unr-lcssa
  %.1176.i.i.lcssa = phi i32 [ %.1176.i.i.1, %.preheader191.i.i.unr-lcssa ], [ %.1176.i.i.epil, %bb.eu ], [ %.1176.i.i.epil, %.preheader192.i.i.epil.preheader ] ; 4 uses
  %.not.i.i = icmp eq i32 %.1176.i.i.lcssa, 0
  br i1 %.not.i.i, label %.preheader.i.i.preheader, label %.preheader190.preheader.i.i

.preheader190.preheader.i.i:                      ; preds = %.preheader191.i.i
  %i.arr = zext nneg i32 %.1176.i.i.lcssa to i64
  %i.ars = sext i32 %.1176.i.i.lcssa to i64
  br label %.preheader190.i.i

.preheader192.i.i:                                ; preds = %.preheader192.i.i.preheader, %bb.ex
  %indvars.iv247.i.i = phi i64 [ %indvars.iv.next248.i.i.1, %bb.ex ], [ 0, %.preheader192.i.i.preheader ] ; 5 uses
  %.0175211.i.i = phi i32 [ %.1176.i.i.1, %bb.ex ], [ %0, %.preheader192.i.i.preheader ] ; 2 uses
  %niter1869 = phi i64 [ %niter1869.next.1, %bb.ex ], [ 0, %.preheader192.i.i.preheader ]
  %i.art = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv247.i.i
  %i.aru = load double, ptr %i.art, align 8, !tbaa !10
  %i.arv = fcmp oeq double %i.aru, 0.000000e+00
  %i.arw = icmp eq i32 %.0175211.i.i, %0
  %or.cond.i.i = and i1 %i.arw, %i.arv
  %i.arx = trunc nuw nsw i64 %indvars.iv247.i.i to i32
  %.1176.i.i = select i1 %or.cond.i.i, i32 %i.arx, i32 %.0175211.i.i ; 3 uses
  %i.ary = icmp samesign ult i32 %.1176.i.i, %0
  br i1 %i.ary, label %bb.ev, label %.preheader192.i.i.1

bb.ev:                                            ; preds = %.preheader192.i.i
  %i.arz = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv247.i.i
  store double 0.000000e+00, ptr %i.arz, align 8, !tbaa !10
  br label %.preheader192.i.i.1

.preheader192.i.i.1:                              ; preds = %bb.ev, %.preheader192.i.i
  %indvars.iv.next248.i.i = or disjoint i64 %indvars.iv247.i.i, 1 ; 3 uses
  %i.asa = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.next248.i.i
  %i.asb = load double, ptr %i.asa, align 8, !tbaa !10
  %i.asc = fcmp oeq double %i.asb, 0.000000e+00
  %i.asd = icmp eq i32 %.1176.i.i, %0
  %or.cond.i.i.1 = and i1 %i.asd, %i.asc
  %i.ase = trunc nuw nsw i64 %indvars.iv.next248.i.i to i32
  %.1176.i.i.1 = select i1 %or.cond.i.i.1, i32 %i.ase, i32 %.1176.i.i ; 4 uses
  %i.asf = icmp samesign ult i32 %.1176.i.i.1, %0
  br i1 %i.asf, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %.preheader192.i.i.1
  %i.asg = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next248.i.i
  store double 0.000000e+00, ptr %i.asg, align 8, !tbaa !10
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %.preheader192.i.i.1
  %indvars.iv.next248.i.i.1 = add nuw nsw i64 %indvars.iv247.i.i, 2 ; 2 uses
  %niter1869.next.1 = add i64 %niter1869, 2       ; 2 uses
  %niter1869.ncmp.1 = icmp eq i64 %niter1869.next.1, %unroll_iter1868
  br i1 %niter1869.ncmp.1, label %.preheader191.i.i.unr-lcssa, label %.preheader192.i.i, !llvm.loop !93

.preheader190.i.i:                                ; preds = %._crit_edge215.i.i, %.preheader190.preheader.i.i
  %indvars.iv253.i.i = phi i64 [ %i.arr, %.preheader190.preheader.i.i ], [ %indvars.iv.next254.i.i, %._crit_edge215.i.i ] ; 4 uses
  %indvars.iv.next254.i.i = add nsw i64 %indvars.iv253.i.i, -1 ; 4 uses
  %i.ash = icmp slt i64 %indvars.iv253.i.i, %i.ars
  br i1 %i.ash, label %.lr.ph214.i.i, label %._crit_edge215.i.i

.lr.ph214.i.i:                                    ; preds = %.preheader190.i.i
  %i.asi = trunc i64 %indvars.iv.next254.i.i to i32
  %i.asj = mul i32 %4, %i.asi
  %i.ask = zext i32 %i.asj to i64
  %invariant.gep273.i.i = getelementptr [8 x i8], ptr %i.bm, i64 %i.ask
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ey, %.lr.ph214.i.i
  %indvars.iv255.i.i = phi i64 [ %indvars.iv253.i.i, %.lr.ph214.i.i ], [ %indvars.iv.next256.i.i, %bb.ey ] ; 3 uses
  %.0173213.i.i = phi double [ 0.000000e+00, %.lr.ph214.i.i ], [ %i.aso, %bb.ey ]
  %gep274.i.i = getelementptr [8 x i8], ptr %invariant.gep273.i.i, i64 %indvars.iv255.i.i
  %i.asl = load double, ptr %gep274.i.i, align 8, !tbaa !10
  %i.asm = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv255.i.i
  %i.asn = load double, ptr %i.asm, align 8, !tbaa !10
  %i.aso = tail call double @llvm.fmuladd.f64(double %i.asl, double %i.asn, double %.0173213.i.i) ; 2 uses
  %indvars.iv.next256.i.i = add nuw nsw i64 %indvars.iv255.i.i, 1 ; 2 uses
  %i.asp = trunc nuw i64 %indvars.iv.next256.i.i to i32
  %i.asq = icmp sgt i32 %.1176.i.i.lcssa, %i.asp
  br i1 %i.asq, label %bb.ey, label %._crit_edge215.i.i, !llvm.loop !94

._crit_edge215.i.i:                               ; preds = %bb.ey, %.preheader190.i.i
  %.0173.lcssa.i.i = phi double [ 0.000000e+00, %.preheader190.i.i ], [ %i.aso, %bb.ey ]
  %i.asr = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next254.i.i ; 2 uses
  %i.ass = load double, ptr %i.asr, align 8, !tbaa !10
  %i.ast = fsub double %i.ass, %.0173.lcssa.i.i
end_hunk_1
begin_hunk_2_@_Z6lmmin2iPdS_S_iPKdPKvPFvS1_iS3_S_PiEPK17lm_control_structP16lm_status_struct:bb.a
  store double %i.aup, ptr %i.auq, align 8, !tbaa !10
  %indvars.iv.next465.i = add nuw nsw i64 %indvars.iv464.i, 1 ; 2 uses
  %exitcond468.not.i = icmp eq i64 %indvars.iv.next465.i, %i.bc
  br i1 %exitcond468.not.i, label %.lr.ph.i325.i.preheader, label %_ZL9lm_qrsolviPdiPiS_S_S_S_S_.exit.i, !llvm.loop !99

.lr.ph.i325.i.preheader:                          ; preds = %_ZL9lm_qrsolviPdiPiS_S_S_S_S_.exit.i, %middle.block1501
  br label %.lr.ph.i325.i

.lr.ph.i325.i:                                    ; preds = %.lr.ph.i325.i.preheader, %bb.fi
  %indvars.iv.i326.i = phi i64 [ %indvars.iv.next.i337.i, %bb.fi ], [ 0, %.lr.ph.i325.i.preheader ] ; 2 uses
  %.076.i327.i = phi double [ %.1.i336.i, %bb.fi ], [ 0.000000e+00, %.lr.ph.i325.i.preheader ] ; 8 uses
  %.06075.i328.i = phi double [ %.161.i335.i, %bb.fi ], [ 0.000000e+00, %.lr.ph.i325.i.preheader ] ; 8 uses
  %.06274.i329.i = phi double [ %.163.i334.i, %bb.fi ], [ 0.000000e+00, %.lr.ph.i325.i.preheader ] ; 6 uses
  %.06473.i330.i = phi double [ %.165.i333.i, %bb.fi ], [ 0.000000e+00, %.lr.ph.i325.i.preheader ] ; 6 uses
  %.06672.i331.i = phi double [ %.167.i332.i, %bb.fi ], [ 0.000000e+00, %.lr.ph.i325.i.preheader ] ; 6 uses
  %i.aur = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.i326.i
  %i.aus = load double, ptr %i.aur, align 8, !tbaa !10 ; 4 uses
  %i.aut = tail call double @llvm.fabs.f64(double %i.aus) ; 10 uses
  %i.auu = fcmp ogt double %i.aut, f0x2000000000000000
  br i1 %i.auu, label %bb.ez, label %bb.fe

bb.ez:                                            ; preds = %.lr.ph.i325.i
  %i.auv = fcmp olt double %i.aut, %i.dn
  br i1 %i.auv, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.auw = tail call double @llvm.fmuladd.f64(double %i.aus, double %i.aus, double %.06473.i330.i)
  br label %bb.fi

bb.fb:                                            ; preds = %bb.ez
  %i.aux = fcmp ogt double %i.aut, %.06075.i328.i
  br i1 %i.aux, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.auy = fdiv double %.06075.i328.i, %i.aut     ; 2 uses
  %i.auz = fmul double %.06672.i331.i, %i.auy
  %i.ava = tail call double @llvm.fmuladd.f64(double %i.auz, double %i.auy, double 1.000000e+00)
  br label %bb.fi

bb.fd:                                            ; preds = %bb.fb
  %i.avb = fdiv double %i.aut, %.06075.i328.i     ; 2 uses
  %i.avc = tail call double @llvm.fmuladd.f64(double %i.avb, double %i.avb, double %.06672.i331.i)
  br label %bb.fi

bb.fe:                                            ; preds = %.lr.ph.i325.i
  %i.avd = fcmp ogt double %i.aut, %.076.i327.i
  br i1 %i.avd, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.ave = fdiv double %.076.i327.i, %i.aut       ; 2 uses
  %i.avf = fmul double %.06274.i329.i, %i.ave
  %i.avg = tail call double @llvm.fmuladd.f64(double %i.avf, double %i.ave, double 1.000000e+00)
  br label %bb.fi

bb.fg:                                            ; preds = %bb.fe
  %i.avh = fcmp une double %i.aus, 0.000000e+00
  br i1 %i.avh, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  %i.avi = fdiv double %i.aut, %.076.i327.i       ; 2 uses
  %i.avj = tail call double @llvm.fmuladd.f64(double %i.avi, double %i.avi, double %.06274.i329.i)
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg, %bb.ff, %bb.fd, %bb.fc, %bb.fa
  %.167.i332.i = phi double [ %.06672.i331.i, %bb.fa ], [ %i.ava, %bb.fc ], [ %i.avc, %bb.fd ], [ %.06672.i331.i, %bb.ff ], [ %.06672.i331.i, %bb.fh ], [ %.06672.i331.i, %bb.fg ] ; 3 uses
  %.165.i333.i = phi double [ %i.auw, %bb.fa ], [ %.06473.i330.i, %bb.fc ], [ %.06473.i330.i, %bb.fd ], [ %.06473.i330.i, %bb.ff ], [ %.06473.i330.i, %bb.fh ], [ %.06473.i330.i, %bb.fg ] ; 7 uses
  %.163.i334.i = phi double [ %.06274.i329.i, %bb.fa ], [ %.06274.i329.i, %bb.fc ], [ %.06274.i329.i, %bb.fd ], [ %i.avg, %bb.ff ], [ %i.avj, %bb.fh ], [ %.06274.i329.i, %bb.fg ] ; 4 uses
  %.161.i335.i = phi double [ %.06075.i328.i, %bb.fa ], [ %i.aut, %bb.fc ], [ %.06075.i328.i, %bb.fd ], [ %.06075.i328.i, %bb.ff ], [ %.06075.i328.i, %bb.fh ], [ %.06075.i328.i, %bb.fg ] ; 4 uses
  %.1.i336.i = phi double [ %.076.i327.i, %bb.fa ], [ %.076.i327.i, %bb.fc ], [ %.076.i327.i, %bb.fd ], [ %i.aut, %bb.ff ], [ %.076.i327.i, %bb.fh ], [ %.076.i327.i, %bb.fg ] ; 8 uses
  %indvars.iv.next.i337.i = add nuw nsw i64 %indvars.iv.i326.i, 1 ; 2 uses
  %exitcond.not.i338.i = icmp eq i64 %indvars.iv.next.i337.i, %i.bc
  br i1 %exitcond.not.i338.i, label %._crit_edge.i339.i, label %.lr.ph.i325.i, !llvm.loop !0

._crit_edge.i339.i:                               ; preds = %bb.fi
  %i.avk = fcmp une double %.167.i332.i, 0.000000e+00
  br i1 %i.avk, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %._crit_edge.i339.i
  %i.avl = fdiv double %.165.i333.i, %.161.i335.i
  %i.avm = fdiv double %i.avl, %.161.i335.i
  %i.avn = fadd double %.167.i332.i, %i.avm
  %i.avo = tail call double @sqrt(double noundef %i.avn) #11
  %i.avp = fmul double %.161.i335.i, %i.avo
  br label %_Z8lm_enormiPKd.exit340.i

bb.fk:                                            ; preds = %._crit_edge.i339.i
  %i.avq = fcmp une double %.165.i333.i, 0.000000e+00
  br i1 %i.avq, label %bb.fl, label %.thread.i322.i

bb.fl:                                            ; preds = %bb.fk
  %i.avr = fcmp ult double %.165.i333.i, %.1.i336.i
  br i1 %i.avr, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.avs = fdiv double %.1.i336.i, %.165.i333.i
  %i.avt = fmul double %.163.i334.i, %.1.i336.i
  %i.avu = tail call double @llvm.fmuladd.f64(double %i.avs, double %i.avt, double 1.000000e+00)
  %i.avv = fmul double %.165.i333.i, %i.avu
  %i.avw = tail call double @sqrt(double noundef %i.avv) #11
  br label %_Z8lm_enormiPKd.exit340.i

bb.fn:                                            ; preds = %bb.fl
  %i.avx = fdiv double %.165.i333.i, %.1.i336.i
  %i.avy = tail call double @llvm.fmuladd.f64(double %.1.i336.i, double %.163.i334.i, double %i.avx)
  %i.avz = fmul double %.1.i336.i, %i.avy
  %i.awa = tail call double @sqrt(double noundef %i.avz) #11
  br label %_Z8lm_enormiPKd.exit340.i

.thread.i322.i:                                   ; preds = %bb.fk
  %i.awb = tail call double @sqrt(double noundef %.163.i334.i) #11
  %i.awc = fmul double %.1.i336.i, %i.awb
  br label %_Z8lm_enormiPKd.exit340.i

_Z8lm_enormiPKd.exit340.i:                        ; preds = %.thread.i322.i, %bb.fn, %bb.fm, %bb.fj
  %.069.i323.i = phi double [ %i.avp, %bb.fj ], [ %i.avw, %bb.fm ], [ %i.awa, %bb.fn ], [ %i.awc, %.thread.i322.i ] ; 4 uses
  %i.awd = fsub double %.069.i323.i, %.3598       ; 6 uses
  %i.awe = tail call double @llvm.fabs.f64(double %i.awd)
  %i.awf = fcmp ugt double %i.awe, %i.afl
  br i1 %i.awf, label %bb.fo, label %_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit

bb.fo:                                            ; preds = %_Z8lm_enormiPKd.exit340.i
  %i.awg = fcmp oeq double %.1254.i, 0.000000e+00
  br i1 %i.awg, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %i.awh = fcmp ole double %i.awd, %.0256.i
  %i.awi = fcmp olt double %.0256.i, 0.000000e+00
  %or.cond.i = and i1 %i.awi, %i.awh
  %i.awj = icmp eq i32 %.0262.i, 10
  %or.cond3.i = select i1 %or.cond.i, i1 true, i1 %i.awj
  br i1 %or.cond3.i, label %_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit, label %.preheader1763

bb.fq:                                            ; preds = %bb.fo
  %.old2.i = icmp eq i32 %.0262.i, 10
  br i1 %.old2.i, label %_ZL8lm_lmpariPdiPiS_S_dS_S_S_S_S_.exit, label %.preheader1763

.preheader1763:                                   ; preds = %bb.fq, %bb.fp
  br i1 %i.gq, label %.epil.preheader1876, label %.preheader1763.new

.preheader1763.new:                               ; preds = %.preheader1763, %.preheader1763.new
  %indvars.iv469.i = phi i64 [ %indvars.iv.next470.i.1, %.preheader1763.new ], [ 0, %.preheader1763 ] ; 4 uses
  %niter1882 = phi i64 [ %niter1882.next.1, %.preheader1763.new ], [ 0, %.preheader1763 ]
  %i.awk = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv469.i
  %i.awl = load i32, ptr %i.awk, align 4, !tbaa !149
  %i.awm = sext i32 %i.awl to i64                 ; 2 uses
  %i.awn = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.awm
  %i.awo = load double, ptr %i.awn, align 8, !tbaa !10
  %i.awp = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.awm
  %i.awq = load double, ptr %i.awp, align 8, !tbaa !10
  %i.awr = fmul double %i.awo, %i.awq
  %i.aws = fdiv double %i.awr, %.069.i323.i
  %i.awt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv469.i
  store double %i.aws, ptr %i.awt, align 8, !tbaa !10
  %indvars.iv.next470.i = or disjoint i64 %indvars.iv469.i, 1 ; 2 uses
  %i.awu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.next470.i
  %i.awv = load i32, ptr %i.awu, align 4, !tbaa !149
  %i.aww = sext i32 %i.awv to i64                 ; 2 uses
  %i.awx = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.aww
  %i.awy = load double, ptr %i.awx, align 8, !tbaa !10
  %i.awz = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.aww
  %i.axa = load double, ptr %i.awz, align 8, !tbaa !10
  %i.axb = fmul double %i.awy, %i.axa
  %i.axc = fdiv double %i.axb, %.069.i323.i
  %i.axd = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next470.i
  store double %i.axc, ptr %i.axd, align 8, !tbaa !10
  %indvars.iv.next470.i.1 = add nuw nsw i64 %indvars.iv469.i, 2 ; 2 uses
  %niter1882.next.1 = add i64 %niter1882, 2       ; 2 uses
  %niter1882.ncmp.1 = icmp eq i64 %niter1882.next.1, %unroll_iter1881
  br i1 %niter1882.ncmp.1, label %.preheader.i740.preheader.unr-lcssa, label %.preheader1763.new, !llvm.loop !100

.preheader.i740.preheader.unr-lcssa:              ; preds = %.preheader1763.new
  br i1 %lcmp.mod1879.not, label %.preheader.i740.preheader, label %.epil.preheader1876

.epil.preheader1876:                              ; preds = %.preheader.i740.preheader.unr-lcssa, %.preheader1763
  %indvars.iv469.i.epil.init = phi i64 [ 0, %.preheader1763 ], [ %indvars.iv.next470.i.1, %.preheader.i740.preheader.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod1880)
  %i.axe = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv469.i.epil.init
  %i.axf = load i32, ptr %i.axe, align 4, !tbaa !149
  %i.axg = sext i32 %i.axf to i64                 ; 2 uses
  %i.axh = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.axg
  %i.axi = load double, ptr %i.axh, align 8, !tbaa !10
  %i.axj = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.axg
  %i.axk = load double, ptr %i.axj, align 8, !tbaa !10
  %i.axl = fmul double %i.axi, %i.axk
  %i.axm = fdiv double %i.axl, %.069.i323.i
  %i.axn = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv469.i.epil.init
  store double %i.axm, ptr %i.axn, align 8, !tbaa !10
  br label %.preheader.i740.preheader

.preheader.i740.preheader:                        ; preds = %.preheader.i740.preheader.unr-lcssa, %.epil.preheader1876
  br label %.preheader.i740

.loopexit.i:                                      ; preds = %scalar.ph1474.prol.loopexit, %scalar.ph1474, %middle.block1487, %.preheader.i740
  %indvars.iv.next475.i = add nuw nsw i64 %indvars.iv474.i, 1
  %exitcond485.not.i = icmp eq i64 %indvars.iv.next482.i, %i.bc
  br i1 %exitcond485.not.i, label %.lr.ph.i344.i, label %.preheader.i740, !llvm.loop !101

.preheader.i740:                                  ; preds = %.preheader.i740.preheader, %.loopexit.i
  %indvars.iv481.i = phi i64 [ %indvars.iv.next482.i, %.loopexit.i ], [ 0, %.preheader.i740.preheader ] ; 8 uses
  %indvars.iv474.i = phi i64 [ %indvars.iv.next475.i, %.loopexit.i ], [ 1, %.preheader.i740.preheader ] ; 5 uses
  %14 = xor i64 %indvars.iv481.i, -1
  %15 = add nsw i64 %14, %i.bc                    ; 3 uses
  %i.axo = shl i64 %indvars.iv481.i, 3
  %scevgep1463 = getelementptr i8, ptr %i.gt, i64 %i.axo ; 2 uses
  %i.axp = mul i64 %i.eh, %indvars.iv481.i
  %scevgep1465 = getelementptr i8, ptr %i.gw, i64 %i.axp
  %i.axq = mul i64 %i.ej, %indvars.iv481.i
  %scevgep1466 = getelementptr i8, ptr %i.gy, i64 %i.axq
  %i.axr = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv481.i ; 6 uses
  %i.axs = load double, ptr %i.axr, align 8, !tbaa !10
  %i.axt = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv481.i
  %i.axu = load double, ptr %i.axt, align 8, !tbaa !10
  %i.axv = fdiv double %i.axs, %i.axu
  store double %i.axv, ptr %i.axr, align 8, !tbaa !10
  %indvars.iv.next482.i = add nuw nsw i64 %indvars.iv481.i, 1 ; 3 uses
  %i.axw = icmp samesign ult i64 %indvars.iv.next482.i, %i.bc
  br i1 %i.axw, label %.lr.ph394.i, label %.loopexit.i

.lr.ph394.i:                                      ; preds = %.preheader.i740
  %i.axx = mul nuw nsw i64 %indvars.iv481.i, %i.bh
  %invariant.gep510.i = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.axx ; 4 uses
  %min.iters.check1475 = icmp ult i64 %15, 4
  br i1 %min.iters.check1475, label %scalar.ph1474.preheader, label %vector.memcheck1462

vector.memcheck1462:                              ; preds = %.lr.ph394.i
  %bound01467 = icmp ult ptr %scevgep1463, %scevgep1466
  %bound11468 = icmp ult ptr %scevgep1465, %scevgep1464
  %found.conflict1469 = and i1 %bound01467, %bound11468
  %bound01470 = icmp ult ptr %scevgep1463, %scevgep1464
  %found.conflict1472 = and i1 %bound01470, %bound11471
  %conflict.rdx1473 = or i1 %found.conflict1469, %found.conflict1472
  br i1 %conflict.rdx1473, label %scalar.ph1474.preheader, label %vector.ph1476

vector.ph1476:                                    ; preds = %vector.memcheck1462
  %n.vec1477 = and i64 %15, -4                    ; 3 uses
  %i.axy = add i64 %indvars.iv474.i, %n.vec1477
  %i.axz = load double, ptr %i.axr, align 8, !tbaa !10, !alias.scope !161
  %broadcast.splatinsert1484 = insertelement <2 x double> poison, double %i.axz, i64 0
  %broadcast.splat1485 = shufflevector <2 x double> %broadcast.splatinsert1484, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1478

vector.body1478:                                  ; preds = %vector.body1478, %vector.ph1476
  %index1479 = phi i64 [ 0, %vector.ph1476 ], [ %index.next1486, %vector.body1478 ] ; 2 uses
  %i.aya = add nuw i64 %indvars.iv474.i, %index1479 ; 2 uses
  %i.ayb = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep510.i, i64 %i.aya ; 2 uses
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.ayb, i64 16
  %wide.load1480 = load <2 x double>, ptr %i.ayb, align 8, !tbaa !10, !alias.scope !162
  %wide.load1481 = load <2 x double>, ptr %i.ayc, align 8, !tbaa !10, !alias.scope !162
  %i.ayd = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.aya ; 3 uses
  %i.aye = getelementptr inbounds nuw i8, ptr %i.ayd, i64 16 ; 2 uses
  %wide.load1482 = load <2 x double>, ptr %i.ayd, align 8, !tbaa !10, !alias.scope !163, !noalias !164
  %wide.load1483 = load <2 x double>, ptr %i.aye, align 8, !tbaa !10, !alias.scope !163, !noalias !164
  %i.ayf = fneg <2 x double> %wide.load1480
  %i.ayg = fneg <2 x double> %wide.load1481
  %i.ayh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ayf, <2 x double> %broadcast.splat1485, <2 x double> %wide.load1482)
  %i.ayi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ayg, <2 x double> %broadcast.splat1485, <2 x double> %wide.load1483)
  store <2 x double> %i.ayh, ptr %i.ayd, align 8, !tbaa !10, !alias.scope !163, !noalias !164
  store <2 x double> %i.ayi, ptr %i.aye, align 8, !tbaa !10, !alias.scope !163, !noalias !164
  %index.next1486 = add nuw i64 %index1479, 4     ; 2 uses
  %i.ayj = icmp eq i64 %index.next1486, %n.vec1477
  br i1 %i.ayj, label %middle.block1487, label %vector.body1478, !llvm.loop !106

middle.block1487:                                 ; preds = %vector.body1478
  %cmp.n1488 = icmp eq i64 %15, %n.vec1477
  br i1 %cmp.n1488, label %.loopexit.i, label %scalar.ph1474.preheader

scalar.ph1474.preheader:                          ; preds = %vector.memcheck1462, %.lr.ph394.i, %middle.block1487
  %indvars.iv476.i.ph = phi i64 [ %indvars.iv474.i, %vector.memcheck1462 ], [ %indvars.iv474.i, %.lr.ph394.i ], [ %i.axy, %middle.block1487 ] ; 6 uses
  %i.ayk = sub i64 %i.bc, %indvars.iv476.i.ph
  %xtraiter1883 = and i64 %i.ayk, 1
  %lcmp.mod1884.not = icmp eq i64 %xtraiter1883, 0
  br i1 %lcmp.mod1884.not, label %scalar.ph1474.prol.loopexit, label %scalar.ph1474.prol

scalar.ph1474.prol:                               ; preds = %scalar.ph1474.preheader
  %gep511.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep510.i, i64 %indvars.iv476.i.ph
  %i.ayl = load double, ptr %gep511.i.prol, align 8, !tbaa !10
  %i.aym = load double, ptr %i.axr, align 8, !tbaa !10
  %i.ayn = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv476.i.ph ; 2 uses
  %i.ayo = load double, ptr %i.ayn, align 8, !tbaa !10
  %i.ayp = fneg double %i.ayl
  %i.ayq = tail call double @llvm.fmuladd.f64(double %i.ayp, double %i.aym, double %i.ayo)
  store double %i.ayq, ptr %i.ayn, align 8, !tbaa !10
  %indvars.iv.next477.i.prol = add nuw nsw i64 %indvars.iv476.i.ph, 1
  br label %scalar.ph1474.prol.loopexit

scalar.ph1474.prol.loopexit:                      ; preds = %scalar.ph1474.prol, %scalar.ph1474.preheader
  %indvars.iv476.i.unr = phi i64 [ %indvars.iv476.i.ph, %scalar.ph1474.preheader ], [ %indvars.iv.next477.i.prol, %scalar.ph1474.prol ]
  %i.ayr = icmp eq i64 %indvars.iv476.i.ph, %i.gz
  br i1 %i.ayr, label %.loopexit.i, label %scalar.ph1474

scalar.ph1474:                                    ; preds = %scalar.ph1474.prol.loopexit, %scalar.ph1474
  %indvars.iv476.i = phi i64 [ %indvars.iv.next477.i.1, %scalar.ph1474 ], [ %indvars.iv476.i.unr, %scalar.ph1474.prol.loopexit ] ; 4 uses
  %gep511.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep510.i, i64 %indvars.iv476.i
  %i.ays = load double, ptr %gep511.i, align 8, !tbaa !10
  %i.ayt = load double, ptr %i.axr, align 8, !tbaa !10
  %i.ayu = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv476.i ; 2 uses
  %i.ayv = load double, ptr %i.ayu, align 8, !tbaa !10
  %i.ayw = fneg double %i.ays
  %i.ayx = tail call double @llvm.fmuladd.f64(double %i.ayw, double %i.ayt, double %i.ayv)
  store double %i.ayx, ptr %i.ayu, align 8, !tbaa !10
  %indvars.iv.next477.i = add nuw nsw i64 %indvars.iv476.i, 1 ; 2 uses
  %gep511.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep510.i, i64 %indvars.iv.next477.i
  %i.ayy = load double, ptr %gep511.i.1, align 8, !tbaa !10
  %i.ayz = load double, ptr %i.axr, align 8, !tbaa !10
  %i.aza = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next477.i ; 2 uses
  %i.azb = load double, ptr %i.aza, align 8, !tbaa !10
  %i.azc = fneg double %i.ayy
  %i.azd = tail call double @llvm.fmuladd.f64(double %i.azc, double %i.ayz, double %i.azb)
  store double %i.azd, ptr %i.aza, align 8, !tbaa !10
  %indvars.iv.next477.i.1 = add nuw nsw i64 %indvars.iv476.i, 2 ; 2 uses
  %exitcond480.not.i.1 = icmp eq i64 %indvars.iv.next477.i.1, %i.bc
  br i1 %exitcond480.not.i.1, label %.loopexit.i, label %scalar.ph1474, !llvm.loop !107

.lr.ph.i344.i:                                    ; preds = %.loopexit.i, %bb.ga
  %indvars.iv.i345.i = phi i64 [ %indvars.iv.next.i356.i, %bb.ga ], [ 0, %.loopexit.i ] ; 2 uses
  %.076.i346.i = phi double [ %.1.i355.i, %bb.ga ], [ 0.000000e+00, %.loopexit.i ] ; 8 uses
  %.06075.i347.i = phi double [ %.161.i354.i, %bb.ga ], [ 0.000000e+00, %.loopexit.i ] ; 8 uses
  %.06274.i348.i = phi double [ %.163.i353.i, %bb.ga ], [ 0.000000e+00, %.loopexit.i ] ; 6 uses
  %.06473.i349.i = phi double [ %.165.i352.i, %bb.ga ], [ 0.000000e+00, %.loopexit.i ] ; 6 uses
  %.06672.i350.i = phi double [ %.167.i351.i, %bb.ga ], [ 0.000000e+00, %.loopexit.i ] ; 6 uses
  %i.aze = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.i345.i
  %i.azf = load double, ptr %i.aze, align 8, !tbaa !10 ; 4 uses
  %i.azg = tail call double @llvm.fabs.f64(double %i.azf) ; 10 uses
  %i.azh = fcmp ogt double %i.azg, f0x2000000000000000
  br i1 %i.azh, label %bb.fr, label %bb.fw

bb.fr:                                            ; preds = %.lr.ph.i344.i
  %i.azi = fcmp olt double %i.azg, %i.dn
  br i1 %i.azi, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.azj = tail call double @llvm.fmuladd.f64(double %i.azf, double %i.azf, double %.06473.i349.i)
  br label %bb.ga

bb.ft:                                            ; preds = %bb.fr
  %i.azk = fcmp ogt double %i.azg, %.06075.i347.i
  br i1 %i.azk, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %i.azl = fdiv double %.06075.i347.i, %i.azg     ; 2 uses
  %i.azm = fmul double %.06672.i350.i, %i.azl
  %i.azn = tail call double @llvm.fmuladd.f64(double %i.azm, double %i.azl, double 1.000000e+00)
  br label %bb.ga

bb.fv:                                            ; preds = %bb.ft
  %i.azo = fdiv double %i.azg, %.06075.i347.i     ; 2 uses
  %i.azp = tail call double @llvm.fmuladd.f64(double %i.azo, double %i.azo, double %.06672.i350.i)
  br label %bb.ga

bb.fw:                                            ; preds = %.lr.ph.i344.i
  %i.azq = fcmp ogt double %i.azg, %.076.i346.i
  br i1 %i.azq, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.azr = fdiv double %.076.i346.i, %i.azg       ; 2 uses
  %i.azs = fmul double %.06274.i348.i, %i.azr
  %i.azt = tail call double @llvm.fmuladd.f64(double %i.azs, double %i.azr, double 1.000000e+00)
  br label %bb.ga

bb.fy:                                            ; preds = %bb.fw
  %i.azu = fcmp une double %i.azf, 0.000000e+00
  br i1 %i.azu, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.azv = fdiv double %i.azg, %.076.i346.i       ; 2 uses
  %i.azw = tail call double @llvm.fmuladd.f64(double %i.azv, double %i.azv, double %.06274.i348.i)
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy, %bb.fx, %bb.fv, %bb.fu, %bb.fs
  %.167.i351.i = phi double [ %.06672.i350.i, %bb.fs ], [ %i.azn, %bb.fu ], [ %i.azp, %bb.fv ], [ %.06672.i350.i, %bb.fx ], [ %.06672.i350.i, %bb.fz ], [ %.06672.i350.i, %bb.fy ] ; 3 uses
  %.165.i352.i = phi double [ %i.azj, %bb.fs ], [ %.06473.i349.i, %bb.fu ], [ %.06473.i349.i, %bb.fv ], [ %.06473.i349.i, %bb.fx ], [ %.06473.i349.i, %bb.fz ], [ %.06473.i349.i, %bb.fy ] ; 7 uses
  %.163.i353.i = phi double [ %.06274.i348.i, %bb.fs ], [ %.06274.i348.i, %bb.fu ], [ %.06274.i348.i, %bb.fv ], [ %i.azt, %bb.fx ], [ %i.azw, %bb.fz ], [ %.06274.i348.i, %bb.fy ] ; 4 uses
  %.161.i354.i = phi double [ %.06075.i347.i, %bb.fs ], [ %i.azg, %bb.fu ], [ %.06075.i347.i, %bb.fv ], [ %.06075.i347.i, %bb.fx ], [ %.06075.i347.i, %bb.fz ], [ %.06075.i347.i, %bb.fy ] ; 4 uses
  %.1.i355.i = phi double [ %.076.i346.i, %bb.fs ], [ %.076.i346.i, %bb.fu ], [ %.076.i346.i, %bb.fv ], [ %i.azg, %bb.fx ], [ %.076.i346.i, %bb.fz ], [ %.076.i346.i, %bb.fy ] ; 8 uses
  %indvars.iv.next.i356.i = add nuw nsw i64 %indvars.iv.i345.i, 1 ; 2 uses
  %exitcond.not.i357.i = icmp eq i64 %indvars.iv.next.i356.i, %i.bc
  br i1 %exitcond.not.i357.i, label %._crit_edge.i358.i, label %.lr.ph.i344.i, !llvm.loop !0

._crit_edge.i358.i:                               ; preds = %bb.ga
  %i.azx = fcmp une double %.167.i351.i, 0.000000e+00
  br i1 %i.azx, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %._crit_edge.i358.i
  %i.azy = fdiv double %.165.i352.i, %.161.i354.i
  %i.azz = fdiv double %i.azy, %.161.i354.i
  %i.baa = fadd double %.167.i351.i, %i.azz
  %i.bab = tail call double @sqrt(double noundef %i.baa) #11
  %i.bac = fmul double %.161.i354.i, %i.bab
  br label %_Z8lm_enormiPKd.exit359.i

bb.gc:                                            ; preds = %._crit_edge.i358.i
  %i.bad = fcmp une double %.165.i352.i, 0.000000e+00
  br i1 %i.bad, label %bb.gd, label %.thread.i341.i

bb.gd:                                            ; preds = %bb.gc
  %i.bae = fcmp ult double %.165.i352.i, %.1.i355.i
  br i1 %i.bae, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.baf = fdiv double %.1.i355.i, %.165.i352.i
  %i.bag = fmul double %.163.i353.i, %.1.i355.i
  %i.bah = tail call double @llvm.fmuladd.f64(double %i.baf, double %i.bag, double 1.000000e+00)
  %i.bai = fmul double %.165.i352.i, %i.bah
  %i.baj = tail call double @sqrt(double noundef %i.bai) #11
  br label %_Z8lm_enormiPKd.exit359.i

bb.gf:                                            ; preds = %bb.gd
  %i.bak = fdiv double %.165.i352.i, %.1.i355.i
  %i.bal = tail call double @llvm.fmuladd.f64(double %.1.i355.i, double %.163.i353.i, double %i.bak)
  %i.bam = fmul double %.1.i355.i, %i.bal
  %i.ban = tail call double @sqrt(double noundef %i.bam) #11
  br label %_Z8lm_enormiPKd.exit359.i

.thread.i341.i:                                   ; preds = %bb.gc
  %i.bao = tail call double @sqrt(double noundef %.163.i353.i) #11
  %i.bap = fmul double %.1.i355.i, %i.bao
  br label %_Z8lm_enormiPKd.exit359.i

_Z8lm_enormiPKd.exit359.i:                        ; preds = %.thread.i341.i, %bb.gf, %bb.ge, %bb.gb
  %.069.i342.i = phi double [ %i.bac, %bb.gb ], [ %i.baj, %bb.ge ], [ %i.ban, %bb.gf ], [ %i.bap, %.thread.i341.i ] ; 2 uses
  %i.baq = fdiv double %i.awd, %.3598
end_hunk_2
