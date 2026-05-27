inline.NumInlined: 678
inline.NumDeleted: 90
begin_hunk_0_@dradb3:bb.a
  %i.kj = fmul float %i.jh, %i.ki
  %i.kk = load float, ptr %i.kc, align 4
  %i.kl = fmul float %i.jf, %i.kk
  %i.km = fadd float %i.kj, %i.kl
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next191
  store float %i.km, ptr %i.kn, align 4
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 2 ; 2 uses
  %i.ko = icmp samesign ult i64 %indvars.iv.next177, %i.dh
  br i1 %i.ko, label %scalar.ph474, label %._crit_edge162.us, !llvm.loop !1146

._crit_edge162.us:                                ; preds = %scalar.ph474, %middle.block512
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, %i.di
  %i.kp = add nuw nsw i32 %.1164.us, 1            ; 2 uses
  %indvars.iv.next179 = add i32 %indvars.iv178, %i.d
  %indvars.iv.next185 = add i32 %indvars.iv184, %i.d
  %indvars.iv.next189 = add i32 %indvars.iv188, %0
  %indvars.iv.next193 = add i32 %indvars.iv192, %0
  %exitcond214.not = icmp eq i32 %i.kp, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond214.not, label %.loopexit, label %.lr.ph161.us, !llvm.loop !1147

.loopexit:                                        ; preds = %._crit_edge162.us, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define internal fastcc void @dradbg(i32 noundef %0, i32 noundef range(i32 5, 3) %1, i32 noundef %2, i32 noundef %3, ptr noundef readonly captures(none) %4, ptr noundef captures(none) %5, ptr noundef captures(none) %6, ptr noundef captures(none) %7, ptr noundef captures(none) %8, ptr noundef readonly captures(none) %9) unnamed_addr #56 {
bb.a:
  %i.a = ptrtoaddr ptr %7 to i64
  %i.b = ptrtoaddr ptr %5 to i64
  %i.c = ptrtoaddr ptr %6 to i64                  ; 7 uses
  %i.d = ptrtoaddr ptr %8 to i64                  ; 7 uses
  %i.e = mul i32 %1, %0                           ; 7 uses
  %i.f = mul i32 %2, %0                           ; 30 uses
  %i.g = sitofp i32 %1 to float
  %i.h = fdiv float f0x40C90FDB, %i.g
  %i.i = fpext float %i.h to double               ; 2 uses
  %i.j = tail call double @cos(double noundef %i.i) #62
  %i.k = fptrunc double %i.j to float             ; 2 uses
  %i.l = tail call double @sin(double noundef %i.i) #62
  %i.m = fptrunc double %i.l to float             ; 2 uses
  %i.n = add i32 %0, -1                           ; 2 uses
  %i.o = ashr i32 %i.n, 1                         ; 4 uses
  %i.p = add nsw i32 %1, 1
  %i.q = ashr i32 %i.p, 1                         ; 11 uses
  %i.r = icmp slt i32 %0, %2
  br i1 %i.r, label %.preheader666, label %.preheader669

.preheader669:                                    ; preds = %bb.a
  %i.s = icmp sgt i32 %2, 0
  %i.t = icmp sgt i32 %0, 0
  %or.cond = and i1 %i.s, %i.t
  br i1 %or.cond, label %.preheader668.us.preheader, label %.loopexit667

.preheader668.us.preheader:                       ; preds = %.preheader669
  %i.u = zext nneg i32 %0 to i64                  ; 4 uses
  %i.v = sext i32 %i.e to i64                     ; 2 uses
  %i.w = add nsw i32 %2, -1
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = mul nuw nsw i64 %i.u, %i.x
  %i.z = zext i32 %i.n to i64                     ; 2 uses
  %i.aa = add nuw i64 %i.y, %i.z
  %i.ab = shl i64 %i.aa, 2
  %i.ac = getelementptr i8, ptr %7, i64 %i.ab
  %scevgep = getelementptr i8, ptr %i.ac, i64 4
  %i.ad = mul nsw i64 %i.v, %i.x
  %i.ae = add i64 %i.ad, %i.z
  %i.af = shl i64 %i.ae, 2
  %i.ag = getelementptr i8, ptr %4, i64 %i.af
  %scevgep1205 = getelementptr i8, ptr %i.ag, i64 4
  %min.iters.check = icmp ult i32 %0, 8
  %bound0 = icmp ult ptr %7, %scevgep1205
  %bound1 = icmp ult ptr %4, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.e, 0
  %i.ah = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.u, 2147483640               ; 5 uses
  %i.ai = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.u
  br label %.preheader668.us

.preheader668.us:                                 ; preds = %.preheader668.us.preheader, %._crit_edge.us
  %indvars.iv872 = phi i64 [ 0, %.preheader668.us.preheader ], [ %indvars.iv.next873, %._crit_edge.us ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.preheader668.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 4 uses
  %.0543676.us = phi i32 [ 0, %.preheader668.us.preheader ], [ %i.bs, %._crit_edge.us ]
  %brmerge1866 = select i1 %min.iters.check, i1 true, i1 %i.ah
  br i1 %brmerge1866, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader668.us
  %i.aj = add i64 %indvars.iv872, %n.vec
  %i.ak = add nuw i64 %indvars.iv, %n.vec
  %i.al = getelementptr [4 x i8], ptr %4, i64 %indvars.iv872
  %i.am = getelementptr [4 x i8], ptr %7, i64 %indvars.iv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.an = getelementptr [4 x i8], ptr %i.al, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %wide.load = load <4 x float>, ptr %i.an, align 4, !alias.scope !1148
  %wide.load1206 = load <4 x float>, ptr %i.ao, align 4, !alias.scope !1148
  %i.ap = getelementptr [4 x i8], ptr %i.am, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <4 x float> %wide.load, ptr %i.ap, align 4, !alias.scope !1151, !noalias !1148
  store <4 x float> %wide.load1206, ptr %i.aq, align 4, !alias.scope !1151, !noalias !1148
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !1153

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader668.us, %middle.block
  %indvars.iv874.ph = phi i64 [ %i.aj, %middle.block ], [ %indvars.iv872, %.preheader668.us ] ; 2 uses
  %indvars.iv870.ph = phi i64 [ %i.ak, %middle.block ], [ %indvars.iv, %.preheader668.us ] ; 2 uses
  %.0533673.us.ph = phi i32 [ %i.ai, %middle.block ], [ 0, %.preheader668.us ] ; 4 uses
  %i.as = sub i32 %0, %.0533673.us.ph
  %xtraiter = and i32 %i.as, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv874.prol = phi i64 [ %indvars.iv.next875.prol, %scalar.ph.prol ], [ %indvars.iv874.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv870.prol = phi i64 [ %indvars.iv.next871.prol, %scalar.ph.prol ], [ %indvars.iv870.ph, %scalar.ph.preheader ] ; 2 uses
  %.0533673.us.prol = phi i32 [ %i.aw, %scalar.ph.prol ], [ %.0533673.us.ph, %scalar.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.at = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv874.prol
  %i.au = load float, ptr %i.at, align 4
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv870.prol
  store float %i.au, ptr %i.av, align 4
  %indvars.iv.next871.prol = add nuw nsw i64 %indvars.iv870.prol, 1 ; 2 uses
  %indvars.iv.next875.prol = add nsw i64 %indvars.iv874.prol, 1 ; 2 uses
  %i.aw = add nuw nsw i32 %.0533673.us.prol, 1    ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1154

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv874.unr = phi i64 [ %indvars.iv874.ph, %scalar.ph.preheader ], [ %indvars.iv.next875.prol, %scalar.ph.prol ]
  %indvars.iv870.unr = phi i64 [ %indvars.iv870.ph, %scalar.ph.preheader ], [ %indvars.iv.next871.prol, %scalar.ph.prol ]
  %.0533673.us.unr = phi i32 [ %.0533673.us.ph, %scalar.ph.preheader ], [ %i.aw, %scalar.ph.prol ]
  %i.ax = sub i32 %.0533673.us.ph, %0
  %i.ay = icmp ugt i32 %i.ax, -4
  br i1 %i.ay, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv874 = phi i64 [ %indvars.iv.next875.3, %scalar.ph ], [ %indvars.iv874.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv870 = phi i64 [ %indvars.iv.next871.3, %scalar.ph ], [ %indvars.iv870.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.0533673.us = phi i32 [ %i.br, %scalar.ph ], [ %.0533673.us.unr, %scalar.ph.prol.loopexit ]
  %i.az = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv874
  %i.ba = load float, ptr %i.az, align 4
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv870
  store float %i.ba, ptr %i.bb, align 4
  %i.bc = getelementptr [4 x i8], ptr %4, i64 %indvars.iv874
  %i.bd = getelementptr i8, ptr %i.bc, i64 4
  %i.be = load float, ptr %i.bd, align 4
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv870
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  store float %i.be, ptr %i.bg, align 4
  %i.bh = getelementptr [4 x i8], ptr %4, i64 %indvars.iv874
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  %i.bj = load float, ptr %i.bi, align 4
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv870
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store float %i.bj, ptr %i.bl, align 4
  %i.bm = getelementptr [4 x i8], ptr %4, i64 %indvars.iv874
  %i.bn = getelementptr i8, ptr %i.bm, i64 12
  %i.bo = load float, ptr %i.bn, align 4
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv870
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  store float %i.bo, ptr %i.bq, align 4
  %indvars.iv.next871.3 = add nuw nsw i64 %indvars.iv870, 4
  %indvars.iv.next875.3 = add nsw i64 %indvars.iv874, 4
  %i.br = add nuw nsw i32 %.0533673.us, 4         ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.br, %0
  br i1 %exitcond.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !1155

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.u
  %indvars.iv.next873 = add i64 %indvars.iv872, %i.v
  %i.bs = add nuw nsw i32 %.0543676.us, 1         ; 2 uses
  %exitcond882.not = icmp eq i32 %i.bs, %2
  br i1 %exitcond882.not, label %.loopexit667, label %.preheader668.us, !llvm.loop !1156

.preheader666:                                    ; preds = %bb.a
  %i.bt = icmp sgt i32 %0, 0
  %i.bu = icmp sgt i32 %2, 0
  %or.cond1182 = and i1 %i.bt, %i.bu
  br i1 %or.cond1182, label %.preheader665.us.preheader, label %.loopexit667

.preheader665.us.preheader:                       ; preds = %.preheader666
  %i.bv = zext nneg i32 %0 to i64                 ; 7 uses
  %i.bw = sext i32 %i.e to i64                    ; 5 uses
  %i.bx = add nsw i32 %2, -1
  %i.by = zext i32 %i.bx to i64                   ; 2 uses
  %i.bz = add nuw nsw i64 %i.bv, %i.by
  %i.ca = shl nuw nsw i64 %i.bz, 2
  %scevgep1210 = getelementptr i8, ptr %7, i64 %i.ca
  %i.cb = sext i32 %1 to i64
  %i.cc = mul nsw i64 %i.cb, %i.by
  %10 = zext nneg i32 %2 to i64                   ; 2 uses
  %11 = sext i32 %1 to i64                        ; 9 uses
  %min.iters.check1218 = icmp ugt i32 %2, 7
  %ident.check.not = icmp eq i32 %0, 1
  %or.cond1774 = and i1 %min.iters.check1218, %ident.check.not
  %n.vec1221 = and i64 %10, 2147483640            ; 5 uses
  %i.cd = mul nsw i64 %n.vec1221, %11
  %i.ce = trunc nuw nsw i64 %n.vec1221 to i32
  %invariant.gep = getelementptr [4 x i8], ptr %4, i64 %11
  %.idx = shl nsw i64 %11, 3
  %invariant.gep1820 = getelementptr i8, ptr %4, i64 %.idx
  %.idx1765 = mul nsw i64 %11, 12
  %invariant.gep1822 = getelementptr i8, ptr %4, i64 %.idx1765
  %.idx1766 = shl nsw i64 %11, 4
  %invariant.gep1824 = getelementptr i8, ptr %4, i64 %.idx1766
  %.idx1767 = mul nsw i64 %11, 20
  %invariant.gep1826 = getelementptr i8, ptr %4, i64 %.idx1767
  %.idx1768 = mul nsw i64 %11, 24
  %invariant.gep1828 = getelementptr i8, ptr %4, i64 %.idx1768
  %.idx1769 = mul nsw i64 %11, 28
  %invariant.gep1830 = getelementptr i8, ptr %4, i64 %.idx1769
  %cmp.n1226 = icmp eq i64 %n.vec1221, %10
  br label %.preheader665.us

.preheader665.us:                                 ; preds = %.preheader665.us.preheader, %._crit_edge.us682
  %indvars.iv883 = phi i64 [ 0, %.preheader665.us.preheader ], [ %indvars.iv.next884, %._crit_edge.us682 ] ; 11 uses
  br i1 %or.cond1774, label %vector.memcheck1209, label %scalar.ph1217.preheader

vector.memcheck1209:                              ; preds = %.preheader665.us
  %i.cf = shl nuw nsw i64 %indvars.iv883, 2
  %scevgep1211 = getelementptr i8, ptr %4, i64 %i.cf ; 4 uses
  %i.cg = add i64 %i.cc, %indvars.iv883
  %i.ch = shl i64 %i.cg, 2
  %scevgep1212 = getelementptr i8, ptr %4, i64 %i.ch ; 4 uses
  %i.ci = icmp ugt ptr %scevgep1211, %scevgep1212
  %umax = select i1 %i.ci, ptr %scevgep1211, ptr %scevgep1212
  %scevgep1213 = getelementptr i8, ptr %umax, i64 4
  %i.cj = icmp ult ptr %scevgep1211, %scevgep1212
  %umin = select i1 %i.cj, ptr %scevgep1211, ptr %scevgep1212
  %bound01214 = icmp ult ptr %7, %scevgep1213
  %bound11215 = icmp ult ptr %umin, %scevgep1210
  %found.conflict1216 = and i1 %bound01214, %bound11215
  br i1 %found.conflict1216, label %scalar.ph1217.preheader, label %vector.ph1219

vector.ph1219:                                    ; preds = %vector.memcheck1209
  %i.ck = add i64 %indvars.iv883, %i.cd
  %i.cl = add nuw i64 %indvars.iv883, %n.vec1221
  %i.cm = getelementptr [4 x i8], ptr %7, i64 %indvars.iv883
  br label %vector.body1222

vector.body1222:                                  ; preds = %vector.body1222, %vector.ph1219
  %index1223 = phi i64 [ 0, %vector.ph1219 ], [ %index.next1224, %vector.body1222 ] ; 3 uses
  %i.cn = mul i64 %index1223, %11
  %i.co = add i64 %indvars.iv883, %i.cn           ; 8 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr %4, i64 %i.co
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.co
  %gep1821 = getelementptr [4 x i8], ptr %invariant.gep1820, i64 %i.co
  %gep1823 = getelementptr [4 x i8], ptr %invariant.gep1822, i64 %i.co
  %gep1825 = getelementptr [4 x i8], ptr %invariant.gep1824, i64 %i.co
  %gep1827 = getelementptr [4 x i8], ptr %invariant.gep1826, i64 %i.co
  %gep1829 = getelementptr [4 x i8], ptr %invariant.gep1828, i64 %i.co
  %gep1831 = getelementptr [4 x i8], ptr %invariant.gep1830, i64 %i.co
  %i.cq = load float, ptr %i.cp, align 4, !alias.scope !1157
  %i.cr = load float, ptr %gep, align 4, !alias.scope !1157
  %i.cs = load float, ptr %gep1821, align 4, !alias.scope !1157
  %i.ct = load float, ptr %gep1823, align 4, !alias.scope !1157
  %i.cu = insertelement <4 x float> poison, float %i.cq, i64 0
  %i.cv = insertelement <4 x float> %i.cu, float %i.cr, i64 1
  %i.cw = insertelement <4 x float> %i.cv, float %i.cs, i64 2
  %i.cx = insertelement <4 x float> %i.cw, float %i.ct, i64 3
  %i.cy = load float, ptr %gep1825, align 4, !alias.scope !1157
  %i.cz = load float, ptr %gep1827, align 4, !alias.scope !1157
  %i.da = load float, ptr %gep1829, align 4, !alias.scope !1157
  %i.db = load float, ptr %gep1831, align 4, !alias.scope !1157
  %i.dc = insertelement <4 x float> poison, float %i.cy, i64 0
  %i.dd = insertelement <4 x float> %i.dc, float %i.cz, i64 1
  %i.de = insertelement <4 x float> %i.dd, float %i.da, i64 2
  %i.df = insertelement <4 x float> %i.de, float %i.db, i64 3
  %i.dg = getelementptr [4 x i8], ptr %i.cm, i64 %index1223 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store <4 x float> %i.cx, ptr %i.dg, align 4, !alias.scope !1160, !noalias !1157
  store <4 x float> %i.df, ptr %i.dh, align 4, !alias.scope !1160, !noalias !1157
  %index.next1224 = add nuw i64 %index1223, 8     ; 2 uses
  %i.di = icmp eq i64 %index.next1224, %n.vec1221
  br i1 %i.di, label %middle.block1225, label %vector.body1222, !llvm.loop !1162

middle.block1225:                                 ; preds = %vector.body1222
  br i1 %cmp.n1226, label %._crit_edge.us682, label %scalar.ph1217.preheader

scalar.ph1217.preheader:                          ; preds = %vector.memcheck1209, %.preheader665.us, %middle.block1225
  %indvars.iv887.ph = phi i64 [ %indvars.iv883, %vector.memcheck1209 ], [ %indvars.iv883, %.preheader665.us ], [ %i.ck, %middle.block1225 ] ; 2 uses
  %indvars.iv885.ph = phi i64 [ %indvars.iv883, %vector.memcheck1209 ], [ %indvars.iv883, %.preheader665.us ], [ %i.cl, %middle.block1225 ] ; 2 uses
  %.1544679.us.ph = phi i32 [ 0, %vector.memcheck1209 ], [ 0, %.preheader665.us ], [ %i.ce, %middle.block1225 ] ; 4 uses
  %i.dj = sub i32 %2, %.1544679.us.ph
  %xtraiter1802 = and i32 %i.dj, 3                ; 2 uses
  %lcmp.mod1803.not = icmp eq i32 %xtraiter1802, 0
  br i1 %lcmp.mod1803.not, label %scalar.ph1217.prol.loopexit, label %scalar.ph1217.prol

scalar.ph1217.prol:                               ; preds = %scalar.ph1217.preheader, %scalar.ph1217.prol
  %indvars.iv887.prol = phi i64 [ %indvars.iv.next888.prol, %scalar.ph1217.prol ], [ %indvars.iv887.ph, %scalar.ph1217.preheader ] ; 2 uses
  %indvars.iv885.prol = phi i64 [ %indvars.iv.next886.prol, %scalar.ph1217.prol ], [ %indvars.iv885.ph, %scalar.ph1217.preheader ] ; 2 uses
  %.1544679.us.prol = phi i32 [ %i.dn, %scalar.ph1217.prol ], [ %.1544679.us.ph, %scalar.ph1217.preheader ]
  %prol.iter1804 = phi i32 [ %prol.iter1804.next, %scalar.ph1217.prol ], [ 0, %scalar.ph1217.preheader ]
  %i.dk = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv887.prol
  %i.dl = load float, ptr %i.dk, align 4
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv885.prol
  store float %i.dl, ptr %i.dm, align 4
  %indvars.iv.next886.prol = add nuw nsw i64 %indvars.iv885.prol, %i.bv ; 2 uses
  %indvars.iv.next888.prol = add nsw i64 %indvars.iv887.prol, %i.bw ; 2 uses
  %i.dn = add nuw nsw i32 %.1544679.us.prol, 1    ; 2 uses
  %prol.iter1804.next = add i32 %prol.iter1804, 1 ; 2 uses
  %prol.iter1804.cmp.not = icmp eq i32 %prol.iter1804.next, %xtraiter1802
  br i1 %prol.iter1804.cmp.not, label %scalar.ph1217.prol.loopexit, label %scalar.ph1217.prol, !llvm.loop !1163

scalar.ph1217.prol.loopexit:                      ; preds = %scalar.ph1217.prol, %scalar.ph1217.preheader
  %indvars.iv887.unr = phi i64 [ %indvars.iv887.ph, %scalar.ph1217.preheader ], [ %indvars.iv.next888.prol, %scalar.ph1217.prol ]
  %indvars.iv885.unr = phi i64 [ %indvars.iv885.ph, %scalar.ph1217.preheader ], [ %indvars.iv.next886.prol, %scalar.ph1217.prol ]
  %.1544679.us.unr = phi i32 [ %.1544679.us.ph, %scalar.ph1217.preheader ], [ %i.dn, %scalar.ph1217.prol ]
  %i.do = sub i32 %.1544679.us.ph, %2
  %i.dp = icmp ugt i32 %i.do, -4
  br i1 %i.dp, label %._crit_edge.us682, label %scalar.ph1217

scalar.ph1217:                                    ; preds = %scalar.ph1217.prol.loopexit, %scalar.ph1217
  %indvars.iv887 = phi i64 [ %indvars.iv.next888.3, %scalar.ph1217 ], [ %indvars.iv887.unr, %scalar.ph1217.prol.loopexit ] ; 2 uses
  %indvars.iv885 = phi i64 [ %indvars.iv.next886.3, %scalar.ph1217 ], [ %indvars.iv885.unr, %scalar.ph1217.prol.loopexit ] ; 2 uses
  %.1544679.us = phi i32 [ %i.ec, %scalar.ph1217 ], [ %.1544679.us.unr, %scalar.ph1217.prol.loopexit ]
  %i.dq = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv887
  %i.dr = load float, ptr %i.dq, align 4
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv885
  store float %i.dr, ptr %i.ds, align 4
  %indvars.iv.next886 = add nuw nsw i64 %indvars.iv885, %i.bv ; 2 uses
  %indvars.iv.next888 = add nsw i64 %indvars.iv887, %i.bw ; 2 uses
  %i.dt = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next888
  %i.du = load float, ptr %i.dt, align 4
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next886
  store float %i.du, ptr %i.dv, align 4
  %indvars.iv.next886.1 = add nuw nsw i64 %indvars.iv.next886, %i.bv ; 2 uses
  %indvars.iv.next888.1 = add nsw i64 %indvars.iv.next888, %i.bw ; 2 uses
  %i.dw = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next888.1
  %i.dx = load float, ptr %i.dw, align 4
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next886.1
  store float %i.dx, ptr %i.dy, align 4
  %indvars.iv.next886.2 = add nuw nsw i64 %indvars.iv.next886.1, %i.bv ; 2 uses
  %indvars.iv.next888.2 = add nsw i64 %indvars.iv.next888.1, %i.bw ; 2 uses
  %i.dz = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next888.2
  %i.ea = load float, ptr %i.dz, align 4
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next886.2
  store float %i.ea, ptr %i.eb, align 4
  %indvars.iv.next886.3 = add nuw nsw i64 %indvars.iv.next886.2, %i.bv
  %indvars.iv.next888.3 = add nsw i64 %indvars.iv.next888.2, %i.bw
  %i.ec = add nuw nsw i32 %.1544679.us, 4         ; 2 uses
  %exitcond892.not.3 = icmp eq i32 %i.ec, %2
  br i1 %exitcond892.not.3, label %._crit_edge.us682, label %scalar.ph1217, !llvm.loop !1164

._crit_edge.us682:                                ; preds = %scalar.ph1217.prol.loopexit, %scalar.ph1217, %middle.block1225
  %indvars.iv.next884 = add nuw nsw i64 %indvars.iv883, 1 ; 2 uses
  %exitcond896.not = icmp eq i64 %indvars.iv.next884, %i.bv
  br i1 %exitcond896.not, label %.loopexit667, label %.preheader665.us, !llvm.loop !1165

.loopexit667:                                     ; preds = %._crit_edge.us, %._crit_edge.us682, %.preheader669, %.preheader666
  %i.ed = shl i32 %0, 1                           ; 7 uses
  %i.ee = icmp sgt i32 %i.q, 1                    ; 6 uses
  br i1 %i.ee, label %.lr.ph692, label %._crit_edge693

.lr.ph692:                                        ; preds = %.loopexit667
  %i.ef = icmp sgt i32 %2, 0
  %i.eg = sext i32 %0 to i64                      ; 6 uses
  %i.eh = sext i32 %i.ed to i64                   ; 2 uses
  %i.ei = sext i32 %i.e to i64                    ; 3 uses
  %i.ej = add i32 %1, -1                          ; 2 uses
  %i.ek = mul i32 %i.f, %i.ej
  %i.el = add i32 %2, -1                          ; 3 uses
  %i.em = sext i32 %1 to i64                      ; 2 uses
  %i.en = shl nsw i64 %i.em, 2                    ; 2 uses
  %i.eo = mul nsw i64 %i.em, -4                   ; 2 uses
  %i.ep = zext i32 %i.el to i64                   ; 2 uses
  %i.eq = shl nuw nsw i64 %i.ep, 2
  %i.er = add nuw nsw i64 %i.eq, 4                ; 2 uses
  %scevgep1239 = getelementptr i8, ptr %7, i64 %i.er
  %scevgep1242 = getelementptr i8, ptr %7, i64 %i.er
  %i.es = sext i32 %1 to i64
  %i.et = mul nsw i64 %i.es, %i.ep
  %i.eu = shl i64 %i.et, 2                        ; 2 uses
  %12 = zext i32 %2 to i64                        ; 2 uses
  %13 = sext i32 %1 to i64                        ; 5 uses
  %i.ev = getelementptr i8, ptr %4, i64 %i.eu
  %i.ew = getelementptr i8, ptr %i.ev, i64 8
  %i.ex = getelementptr i8, ptr %4, i64 %i.eu
  %i.ey = getelementptr i8, ptr %i.ex, i64 4
  %min.iters.check1273 = icmp ult i32 %2, 36
  %ident.check1231 = icmp ne i32 %0, 1
  %i.ez = icmp slt i32 %1, 0                      ; 2 uses
  %i.fa = select i1 %i.ez, i64 %i.eo, i64 %i.en
  %i.fb = zext i32 %i.el to i64
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.fa, i64 %i.fb) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.fc = sub i64 0, %mul.result
  %i.fd = icmp slt i32 %1, 0                      ; 2 uses
  %i.fe = select i1 %i.fd, i64 %i.eo, i64 %i.en
  %i.ff = zext i32 %i.el to i64
  %mul1234 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.fe, i64 %i.ff) ; 2 uses
  %mul.result1235 = extractvalue { i64, i1 } %mul1234, 0 ; 2 uses
  %mul.overflow1236 = extractvalue { i64, i1 } %mul1234, 1
  %i.fg = sub i64 0, %mul.result1235
  %invariant.op = or i1 %mul.overflow, %ident.check1231
  %n.vec1276 = and i64 %12, 2147483644            ; 6 uses
  %i.fh = mul nsw i64 %n.vec1276, %13
  %i.fi = trunc nuw nsw i64 %n.vec1276 to i32
  %invariant.gep1832 = getelementptr [4 x i8], ptr %4, i64 %13
  %.idx1770 = shl nsw i64 %13, 3
  %invariant.gep1834 = getelementptr i8, ptr %4, i64 %.idx1770
  %.idx1771 = mul nsw i64 %13, 12
  %invariant.gep1836 = getelementptr i8, ptr %4, i64 %.idx1771
  %cmp.n1281 = icmp eq i64 %n.vec1276, %12
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph692, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph692 ], [ %indvar.next, %._crit_edge ] ; 5 uses
  %indvars.iv905 = phi i32 [ %i.ek, %.lr.ph692 ], [ %indvars.iv.next906, %._crit_edge ] ; 2 uses
  %indvars.iv901 = phi i64 [ %i.eh, %.lr.ph692 ], [ %indvars.iv.next902, %._crit_edge ] ; 6 uses
  %indvars.iv897 = phi i32 [ %i.f, %.lr.ph692 ], [ %indvars.iv.next898, %._crit_edge ] ; 2 uses
  %.0535690 = phi i32 [ 1, %.lr.ph692 ], [ %i.iw, %._crit_edge ]
  %i.fj = trunc i64 %indvar to i32
  %i.fk = add i32 %i.fj, 1
  %i.fl = mul i32 %i.fk, %2
  %i.fm = sext i32 %i.fl to i64
  %i.fn = shl nsw i64 %i.fm, 2                    ; 2 uses
  %scevgep1238 = getelementptr i8, ptr %7, i64 %i.fn ; 3 uses
  %scevgep1240 = getelementptr i8, ptr %scevgep1239, i64 %i.fn ; 3 uses
  %i.fo = trunc i64 %indvar to i32
  %i.fp = sub i32 %i.ej, %i.fo
  %i.fq = mul i32 %2, %i.fp
  %i.fr = sext i32 %i.fq to i64
  %i.fs = shl nsw i64 %i.fr, 2                    ; 2 uses
  %scevgep1241 = getelementptr i8, ptr %7, i64 %i.fs ; 3 uses
  %scevgep1243 = getelementptr i8, ptr %scevgep1242, i64 %i.fs ; 3 uses
  %i.ft = shl nuw nsw i64 %indvar, 3              ; 4 uses
  %scevgep1244 = getelementptr i8, ptr %i.ew, i64 %i.ft ; 4 uses
  %i.fu = getelementptr i8, ptr %4, i64 %i.ft
  %scevgep1245 = getelementptr i8, ptr %i.fu, i64 8 ; 4 uses
  %i.fv = icmp ult ptr %scevgep1244, %scevgep1245
  %umin1246 = select i1 %i.fv, ptr %scevgep1244, ptr %scevgep1245 ; 2 uses
  %i.fw = icmp ugt ptr %scevgep1244, %scevgep1245
  %umax1247 = select i1 %i.fw, ptr %scevgep1244, ptr %scevgep1245
  %scevgep1248 = getelementptr i8, ptr %umax1247, i64 4 ; 2 uses
  %scevgep1249 = getelementptr i8, ptr %i.ey, i64 %i.ft ; 4 uses
  %i.fx = getelementptr i8, ptr %4, i64 %i.ft
  %scevgep1250 = getelementptr i8, ptr %i.fx, i64 4 ; 4 uses
  %i.fy = icmp ult ptr %scevgep1249, %scevgep1250
  %umin1251 = select i1 %i.fy, ptr %scevgep1249, ptr %scevgep1250 ; 2 uses
  %i.fz = icmp ugt ptr %scevgep1249, %scevgep1250
  %umax1252 = select i1 %i.fz, ptr %scevgep1249, ptr %scevgep1250
  %scevgep1253 = getelementptr i8, ptr %umax1252, i64 4 ; 2 uses
  %i.ga = shl nuw nsw i64 %indvar, 3              ; 2 uses
  %i.gb = getelementptr i8, ptr %4, i64 %i.ga
  %scevgep1232 = getelementptr i8, ptr %i.gb, i64 4 ; 4 uses
  %i.gc = getelementptr i8, ptr %4, i64 %i.ga
  %scevgep1233 = getelementptr i8, ptr %i.gc, i64 8 ; 4 uses
  br i1 %i.ef, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.gd = sext i32 %indvars.iv905 to i64          ; 5 uses
  %i.ge = sext i32 %indvars.iv897 to i64          ; 5 uses
  br i1 %min.iters.check1273, label %.lr.ph.preheader1800, label %vector.scevcheck1230

vector.scevcheck1230:                             ; preds = %.lr.ph.preheader
  %i.gf = getelementptr i8, ptr %scevgep1232, i64 %mul.result
  %i.gg = getelementptr i8, ptr %scevgep1232, i64 %i.fc
  %i.gh = icmp ult ptr %i.gf, %scevgep1232
  %i.gi = icmp ugt ptr %i.gg, %scevgep1232
  %i.gj = select i1 %i.ez, i1 %i.gi, i1 %i.gh
  %i.gk = getelementptr i8, ptr %scevgep1233, i64 %mul.result1235
  %i.gl = getelementptr i8, ptr %scevgep1233, i64 %i.fg
  %i.gm = icmp ult ptr %i.gk, %scevgep1233
  %i.gn = icmp ugt ptr %i.gl, %scevgep1233
  %i.go = select i1 %i.fd, i1 %i.gn, i1 %i.gm
  %i.gp = or i1 %i.go, %mul.overflow1236
  %.reass = or i1 %i.gj, %invariant.op
  %i.gq = or i1 %.reass, %i.gp
  br i1 %i.gq, label %.lr.ph.preheader1800, label %vector.memcheck1237

vector.memcheck1237:                              ; preds = %vector.scevcheck1230
  %bound01254 = icmp ult ptr %scevgep1238, %scevgep1243
  %bound11255 = icmp ult ptr %scevgep1241, %scevgep1240
  %found.conflict1256 = and i1 %bound01254, %bound11255
  %bound01257 = icmp ult ptr %scevgep1238, %scevgep1248
  %bound11258 = icmp ult ptr %umin1246, %scevgep1240
  %found.conflict1259 = and i1 %bound01257, %bound11258
  %conflict.rdx = or i1 %found.conflict1256, %found.conflict1259
  %bound01260 = icmp ult ptr %scevgep1238, %scevgep1253
  %bound11261 = icmp ult ptr %umin1251, %scevgep1240
  %found.conflict1262 = and i1 %bound01260, %bound11261
  %conflict.rdx1263 = or i1 %conflict.rdx, %found.conflict1262
  %bound01264 = icmp ult ptr %scevgep1241, %scevgep1248
  %bound11265 = icmp ult ptr %umin1246, %scevgep1243
  %found.conflict1266 = and i1 %bound01264, %bound11265
  %conflict.rdx1267 = or i1 %conflict.rdx1263, %found.conflict1266
  %bound01268 = icmp ult ptr %scevgep1241, %scevgep1253
  %bound11269 = icmp ult ptr %umin1251, %scevgep1243
  %found.conflict1270 = and i1 %bound01268, %bound11269
  %conflict.rdx1271 = or i1 %conflict.rdx1267, %found.conflict1270
  br i1 %conflict.rdx1271, label %.lr.ph.preheader1800, label %vector.ph1274

vector.ph1274:                                    ; preds = %vector.memcheck1237
  %i.gr = add nsw i64 %n.vec1276, %i.gd
  %i.gs = add i64 %indvars.iv901, %i.fh
  %i.gt = add nsw i64 %n.vec1276, %i.ge
  %invariant.gep1838 = getelementptr [4 x i8], ptr %7, i64 %i.ge
  %invariant.gep1840 = getelementptr [4 x i8], ptr %7, i64 %i.gd
  br label %vector.body1277

vector.body1277:                                  ; preds = %vector.body1277, %vector.ph1274
  %index1278 = phi i64 [ 0, %vector.ph1274 ], [ %index.next1279, %vector.body1277 ] ; 4 uses
  %i.gu = mul i64 %index1278, %13
  %i.gv = add i64 %indvars.iv901, %i.gu           ; 4 uses
  %i.gw = getelementptr [4 x i8], ptr %4, i64 %i.gv ; 2 uses
  %gep1833 = getelementptr [4 x i8], ptr %invariant.gep1832, i64 %i.gv ; 2 uses
  %gep1835 = getelementptr [4 x i8], ptr %invariant.gep1834, i64 %i.gv ; 2 uses
  %gep1837 = getelementptr [4 x i8], ptr %invariant.gep1836, i64 %i.gv ; 2 uses
  %i.gx = getelementptr i8, ptr %i.gw, i64 -4
  %i.gy = getelementptr i8, ptr %gep1833, i64 -4
  %i.gz = getelementptr i8, ptr %gep1835, i64 -4
  %i.ha = getelementptr i8, ptr %gep1837, i64 -4
  %i.hb = load float, ptr %i.gx, align 4, !alias.scope !1166
  %i.hc = load float, ptr %i.gy, align 4, !alias.scope !1166
  %i.hd = load float, ptr %i.gz, align 4, !alias.scope !1166
  %i.he = load float, ptr %i.ha, align 4, !alias.scope !1166
  %i.hf = insertelement <4 x float> poison, float %i.hb, i64 0
  %i.hg = insertelement <4 x float> %i.hf, float %i.hc, i64 1
  %i.hh = insertelement <4 x float> %i.hg, float %i.hd, i64 2
  %i.hi = insertelement <4 x float> %i.hh, float %i.he, i64 3 ; 2 uses
  %i.hj = fadd <4 x float> %i.hi, %i.hi
  %gep1839 = getelementptr [4 x i8], ptr %invariant.gep1838, i64 %index1278
  store <4 x float> %i.hj, ptr %gep1839, align 4, !alias.scope !1169, !noalias !1171
  %i.hk = load float, ptr %i.gw, align 4, !alias.scope !1174
  %i.hl = load float, ptr %gep1833, align 4, !alias.scope !1174
  %i.hm = load float, ptr %gep1835, align 4, !alias.scope !1174
  %i.hn = load float, ptr %gep1837, align 4, !alias.scope !1174
  %i.ho = insertelement <4 x float> poison, float %i.hk, i64 0
  %i.hp = insertelement <4 x float> %i.ho, float %i.hl, i64 1
  %i.hq = insertelement <4 x float> %i.hp, float %i.hm, i64 2
  %i.hr = insertelement <4 x float> %i.hq, float %i.hn, i64 3 ; 2 uses
  %i.hs = fadd <4 x float> %i.hr, %i.hr
  %gep1841 = getelementptr [4 x i8], ptr %invariant.gep1840, i64 %index1278
  store <4 x float> %i.hs, ptr %gep1841, align 4, !alias.scope !1175, !noalias !1176
  %index.next1279 = add nuw i64 %index1278, 4     ; 2 uses
  %i.ht = icmp eq i64 %index.next1279, %n.vec1276
  br i1 %i.ht, label %middle.block1280, label %vector.body1277, !llvm.loop !1177

middle.block1280:                                 ; preds = %vector.body1277
  br i1 %cmp.n1281, label %._crit_edge, label %.lr.ph.preheader1800

.lr.ph.preheader1800:                             ; preds = %vector.memcheck1237, %vector.scevcheck1230, %.lr.ph.preheader, %middle.block1280
  %indvars.iv907.ph = phi i64 [ %i.gd, %vector.memcheck1237 ], [ %i.gd, %vector.scevcheck1230 ], [ %i.gd, %.lr.ph.preheader ], [ %i.gr, %middle.block1280 ] ; 3 uses
  %indvars.iv903.ph = phi i64 [ %indvars.iv901, %vector.memcheck1237 ], [ %indvars.iv901, %vector.scevcheck1230 ], [ %indvars.iv901, %.lr.ph.preheader ], [ %i.gs, %middle.block1280 ] ; 3 uses
  %indvars.iv899.ph = phi i64 [ %i.ge, %vector.memcheck1237 ], [ %i.ge, %vector.scevcheck1230 ], [ %i.ge, %.lr.ph.preheader ], [ %i.gt, %middle.block1280 ] ; 3 uses
  %.2545686.ph = phi i32 [ 0, %vector.memcheck1237 ], [ 0, %vector.scevcheck1230 ], [ 0, %.lr.ph.preheader ], [ %i.fi, %middle.block1280 ] ; 4 uses
  %i.hu = sub i32 %2, %.2545686.ph
  %.neg = add i32 %.2545686.ph, 1
  %xtraiter1805 = and i32 %i.hu, 1
  %lcmp.mod1806.not = icmp eq i32 %xtraiter1805, 0
  br i1 %lcmp.mod1806.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader1800
  %i.hv = getelementptr [4 x i8], ptr %4, i64 %indvars.iv903.ph ; 2 uses
  %i.hw = getelementptr i8, ptr %i.hv, i64 -4
  %i.hx = load float, ptr %i.hw, align 4          ; 2 uses
  %i.hy = fadd float %i.hx, %i.hx
  %i.hz = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv899.ph
  store float %i.hy, ptr %i.hz, align 4
  %i.ia = load float, ptr %i.hv, align 4          ; 2 uses
  %i.ib = fadd float %i.ia, %i.ia
  %i.ic = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv907.ph
  store float %i.ib, ptr %i.ic, align 4
  %indvars.iv.next900.prol = add nsw i64 %indvars.iv899.ph, %i.eg
  %indvars.iv.next908.prol = add nsw i64 %indvars.iv907.ph, %i.eg
  %indvars.iv.next904.prol = add nsw i64 %indvars.iv903.ph, %i.ei
  %i.id = add nuw nsw i32 %.2545686.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader1800
  %indvars.iv907.unr = phi i64 [ %indvars.iv907.ph, %.lr.ph.preheader1800 ], [ %indvars.iv.next908.prol, %.lr.ph.prol ]
  %indvars.iv903.unr = phi i64 [ %indvars.iv903.ph, %.lr.ph.preheader1800 ], [ %indvars.iv.next904.prol, %.lr.ph.prol ]
  %indvars.iv899.unr = phi i64 [ %indvars.iv899.ph, %.lr.ph.preheader1800 ], [ %indvars.iv.next900.prol, %.lr.ph.prol ]
  %.2545686.unr = phi i32 [ %.2545686.ph, %.lr.ph.preheader1800 ], [ %i.id, %.lr.ph.prol ]
  %i.ie = icmp eq i32 %2, %.neg
  br i1 %i.ie, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv907 = phi i64 [ %indvars.iv.next908.1, %.lr.ph ], [ %indvars.iv907.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %indvars.iv903 = phi i64 [ %indvars.iv.next904.1, %.lr.ph ], [ %indvars.iv903.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %indvars.iv899 = phi i64 [ %indvars.iv.next900.1, %.lr.ph ], [ %indvars.iv899.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.2545686 = phi i32 [ %i.iv, %.lr.ph ], [ %.2545686.unr, %.lr.ph.prol.loopexit ]
  %i.if = getelementptr [4 x i8], ptr %4, i64 %indvars.iv903 ; 2 uses
  %i.ig = getelementptr i8, ptr %i.if, i64 -4
  %i.ih = load float, ptr %i.ig, align 4          ; 2 uses
  %i.ii = fadd float %i.ih, %i.ih
  %i.ij = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv899
  store float %i.ii, ptr %i.ij, align 4
  %i.ik = load float, ptr %i.if, align 4          ; 2 uses
  %i.il = fadd float %i.ik, %i.ik
  %i.im = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv907
  store float %i.il, ptr %i.im, align 4
  %indvars.iv.next900 = add nsw i64 %indvars.iv899, %i.eg ; 2 uses
  %indvars.iv.next908 = add nsw i64 %indvars.iv907, %i.eg ; 2 uses
  %indvars.iv.next904 = add nsw i64 %indvars.iv903, %i.ei ; 2 uses
  %i.in = getelementptr [4 x i8], ptr %4, i64 %indvars.iv.next904 ; 2 uses
  %i.io = getelementptr i8, ptr %i.in, i64 -4
  %i.ip = load float, ptr %i.io, align 4          ; 2 uses
  %i.iq = fadd float %i.ip, %i.ip
  %i.ir = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next900
  store float %i.iq, ptr %i.ir, align 4
  %i.is = load float, ptr %i.in, align 4          ; 2 uses
  %i.it = fadd float %i.is, %i.is
  %i.iu = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next908
  store float %i.it, ptr %i.iu, align 4
  %indvars.iv.next900.1 = add nsw i64 %indvars.iv.next900, %i.eg
  %indvars.iv.next908.1 = add nsw i64 %indvars.iv.next908, %i.eg
  %indvars.iv.next904.1 = add nsw i64 %indvars.iv.next904, %i.ei
  %i.iv = add nuw nsw i32 %.2545686, 2            ; 2 uses
  %exitcond914.not.1 = icmp eq i32 %i.iv, %2
  br i1 %exitcond914.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !1178

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block1280, %bb.b
  %indvars.iv.next902 = add i64 %indvars.iv901, %i.eh
  %i.iw = add nuw nsw i32 %.0535690, 1            ; 2 uses
  %indvars.iv.next898 = add i32 %indvars.iv897, %i.f
  %indvars.iv.next906 = sub i32 %indvars.iv905, %i.f
  %exitcond916.not = icmp eq i32 %i.iw, %i.q
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond916.not, label %._crit_edge693, label %bb.b, !llvm.loop !1179

._crit_edge693:                                   ; preds = %._crit_edge, %.loopexit667
  %i.ix = icmp eq i32 %0, 1                       ; 2 uses
  br i1 %i.ix, label %.loopexit661, label %bb.c

bb.c:                                             ; preds = %._crit_edge693
  %i.iy = icmp slt i32 %i.o, %2
  br i1 %i.iy, label %.preheader660, label %.preheader663

.preheader663:                                    ; preds = %bb.c
  br i1 %i.ee, label %.lr.ph710, label %.loopexit

.lr.ph710:                                        ; preds = %.preheader663
  %i.iz = icmp slt i32 %2, 1
  %i.ja = icmp slt i32 %0, 3
  %i.jb = sext i32 %i.e to i64                    ; 3 uses
  %i.jc = add i32 %1, -1
  %i.jd = mul i32 %i.f, %i.jc
  %i.je = sext i32 %0 to i64                      ; 4 uses
  %i.jf = add i32 %0, -3
  %i.jg = lshr i32 %i.jf, 1                       ; 4 uses
  %i.jh = shl nsw i64 %i.je, 2
  %i.ji = shl nsw i64 %i.jb, 2
  %scevgep1306 = getelementptr i8, ptr %7, i64 4
  %i.jj = add i32 %2, -1
  %i.jk = zext i32 %i.jj to i64                   ; 2 uses
  %i.jl = mul nsw i64 %i.je, %i.jk
  %i.jm = shl i64 %i.jl, 2
  %i.jn = add i32 %0, -3
  %i.jo = lshr i32 %i.jn, 1
  %i.jp = zext nneg i32 %i.jo to i64
  %i.jq = shl nuw nsw i64 %i.jp, 3                ; 3 uses
  %i.jr = add i64 %i.jm, %i.jq                    ; 2 uses
  %i.js = add i64 %i.jr, 8                        ; 2 uses
  %scevgep1308 = getelementptr i8, ptr %7, i64 %i.js
  %scevgep1310 = getelementptr i8, ptr %7, i64 4
  %scevgep1312 = getelementptr i8, ptr %7, i64 %i.js
  %scevgep1314 = getelementptr i8, ptr %7, i64 8
  %i.jt = add i64 %i.jr, 12                       ; 2 uses
  %scevgep1316 = getelementptr i8, ptr %7, i64 %i.jt
  %scevgep1318 = getelementptr i8, ptr %7, i64 8
  %scevgep1320 = getelementptr i8, ptr %7, i64 %i.jt
  %i.ju = sub nuw nsw i64 -12, %i.jq
  %scevgep1322 = getelementptr i8, ptr %4, i64 %i.ju
  %i.jv = mul nsw i64 %i.jb, %i.jk
  %i.jw = shl i64 %i.jv, 2                        ; 2 uses
  %i.jx = getelementptr i8, ptr %4, i64 %i.jw
  %scevgep1324 = getelementptr i8, ptr %i.jx, i64 -4
  %scevgep1326 = getelementptr i8, ptr %4, i64 4
  %i.jy = getelementptr i8, ptr %4, i64 %i.jw
  %i.jz = getelementptr i8, ptr %i.jy, i64 %i.jq
  %scevgep1328 = getelementptr i8, ptr %i.jz, i64 12
  %i.ka = add i32 %0, -3                          ; 2 uses
  %i.kb = lshr i32 %i.ka, 1
  %narrow = add nuw i32 %i.kb, 1
  %i.kc = zext i32 %narrow to i64                 ; 2 uses
  %brmerge = or i1 %i.iz, %i.ja
  %min.iters.check1394 = icmp ult i32 %i.ka, 62
  %i.kd = zext nneg i32 %i.jg to i64
  %mul1290 = shl nuw nsw i64 %i.kd, 3
  %i.ke = zext nneg i32 %i.jg to i64
  %mul1294 = shl nuw nsw i64 %i.ke, 3
  %i.kf = zext nneg i32 %i.jg to i64
  %mul1298 = shl nuw nsw i64 %i.kf, 3
  %i.kg = zext nneg i32 %i.jg to i64
  %mul1302.neg = mul nsw i64 %i.kg, -8
  %stride.check1344 = icmp slt i32 %i.e, 0
  %n.vec1397 = and i64 %i.kc, 4294967292          ; 5 uses
  %i.kh = shl nuw nsw i64 %n.vec1397, 1           ; 3 uses
  %i.ki = shl nuw nsw i64 %n.vec1397, 1
  %i.kj = trunc nuw i64 %n.vec1397 to i32
  %i.kk = shl i32 %i.kj, 1
  %i.kl = or disjoint i32 %i.kk, 2
  %cmp.n1416 = icmp eq i64 %n.vec1397, %i.kc
  br label %bb.d

.preheader660:                                    ; preds = %bb.c
  br i1 %i.ee, label %.lr.ph731, label %.loopexit

.lr.ph731:                                        ; preds = %.preheader660
  %i.km = icmp slt i32 %0, 3
  %i.kn = icmp slt i32 %2, 1
  %i.ko = add i32 %i.ed, -2
end_hunk_0
