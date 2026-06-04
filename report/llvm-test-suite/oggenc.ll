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
  %i.cd = sext i32 %1 to i64                      ; 9 uses
  %i.ce = zext nneg i32 %2 to i64                 ; 2 uses
  %min.iters.check1218 = icmp ugt i32 %2, 7
  %ident.check.not = icmp eq i32 %0, 1
  %or.cond1774 = and i1 %min.iters.check1218, %ident.check.not
  %n.vec1221 = and i64 %i.ce, 2147483640          ; 5 uses
  %i.cf = mul nsw i64 %n.vec1221, %i.cd
  %i.cg = trunc nuw nsw i64 %n.vec1221 to i32
  %invariant.gep = getelementptr [4 x i8], ptr %4, i64 %i.cd
  %.idx = shl nsw i64 %i.cd, 3
  %invariant.gep1820 = getelementptr i8, ptr %4, i64 %.idx
  %.idx1765 = mul nsw i64 %i.cd, 12
  %invariant.gep1822 = getelementptr i8, ptr %4, i64 %.idx1765
  %.idx1766.a = shl nsw i64 %i.cd, 4
  %invariant.gep1824 = getelementptr i8, ptr %4, i64 %.idx1766.a
  %.idx1767 = mul nsw i64 %i.cd, 20
  %invariant.gep1826 = getelementptr i8, ptr %4, i64 %.idx1767
  %.idx1768 = mul nsw i64 %i.cd, 24
  %invariant.gep1828.a = getelementptr i8, ptr %4, i64 %.idx1768
  %.idx1769 = mul nsw i64 %i.cd, 28
  %invariant.gep1830.a = getelementptr i8, ptr %4, i64 %.idx1769
  %cmp.n1226 = icmp eq i64 %n.vec1221, %i.ce
  br label %.preheader665.us

.preheader665.us:                                 ; preds = %.preheader665.us.preheader, %._crit_edge.us682
  %indvars.iv883 = phi i64 [ 0, %.preheader665.us.preheader ], [ %indvars.iv.next884, %._crit_edge.us682 ] ; 11 uses
  br i1 %or.cond1774, label %vector.memcheck1209, label %scalar.ph1217.preheader

vector.memcheck1209:                              ; preds = %.preheader665.us
  %i.ch = shl nuw nsw i64 %indvars.iv883, 2
  %scevgep1211 = getelementptr i8, ptr %4, i64 %i.ch ; 4 uses
  %i.ci = add i64 %i.cc, %indvars.iv883
  %i.cj = shl i64 %i.ci, 2
  %scevgep1212 = getelementptr i8, ptr %4, i64 %i.cj ; 4 uses
  %i.ck = icmp ugt ptr %scevgep1211, %scevgep1212
  %umax = select i1 %i.ck, ptr %scevgep1211, ptr %scevgep1212
  %scevgep1213 = getelementptr i8, ptr %umax, i64 4
  %i.cl = icmp ult ptr %scevgep1211, %scevgep1212
  %umin = select i1 %i.cl, ptr %scevgep1211, ptr %scevgep1212
  %bound01214 = icmp ult ptr %7, %scevgep1213
  %bound11215 = icmp ult ptr %umin, %scevgep1210
  %found.conflict1216 = and i1 %bound01214, %bound11215
  br i1 %found.conflict1216, label %scalar.ph1217.preheader, label %vector.ph1219

vector.ph1219:                                    ; preds = %vector.memcheck1209
  %i.cm = add i64 %indvars.iv883, %i.cf
  %i.cn = add nuw i64 %indvars.iv883, %n.vec1221
  %i.co = getelementptr [4 x i8], ptr %7, i64 %indvars.iv883
  br label %vector.body1222

vector.body1222:                                  ; preds = %vector.body1222, %vector.ph1219
  %index1223 = phi i64 [ 0, %vector.ph1219 ], [ %index.next1224, %vector.body1222 ] ; 3 uses
  %i.cp = mul i64 %index1223, %i.cd
  %i.cq = add i64 %indvars.iv883, %i.cp           ; 8 uses
  %10 = getelementptr inbounds [4 x i8], ptr %4, i64 %i.cq
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.cq
  %gep1821 = getelementptr [4 x i8], ptr %invariant.gep1820, i64 %i.cq
  %gep1823 = getelementptr [4 x i8], ptr %invariant.gep1822, i64 %i.cq
  %gep1825.a = getelementptr [4 x i8], ptr %invariant.gep1824, i64 %i.cq
  %gep1827.a = getelementptr [4 x i8], ptr %invariant.gep1826, i64 %i.cq
  %gep1829.a = getelementptr [4 x i8], ptr %invariant.gep1828.a, i64 %i.cq
  %gep1831.a = getelementptr [4 x i8], ptr %invariant.gep1830.a, i64 %i.cq
  %11 = load float, ptr %10, align 4, !alias.scope !1157
  %12 = load float, ptr %gep, align 4, !alias.scope !1157
  %13 = load float, ptr %gep1821, align 4, !alias.scope !1157
  %14 = load float, ptr %gep1823, align 4, !alias.scope !1157
  %15 = insertelement <4 x float> poison, float %11, i64 0
  %16 = insertelement <4 x float> %15, float %12, i64 1
  %17 = insertelement <4 x float> %16, float %13, i64 2
  %18 = insertelement <4 x float> %17, float %14, i64 3
  %i.cr = load float, ptr %gep1825.a, align 4, !alias.scope !1157
  %i.cs = load float, ptr %gep1827.a, align 4, !alias.scope !1157
  %i.ct = load float, ptr %gep1829.a, align 4, !alias.scope !1157
  %i.cu = load float, ptr %gep1831.a, align 4, !alias.scope !1157
  %i.cv = insertelement <4 x float> poison, float %i.cr, i64 0
  %i.cw = insertelement <4 x float> %i.cv, float %i.cs, i64 1
  %i.cx = insertelement <4 x float> %i.cw, float %i.ct, i64 2
  %i.cy = insertelement <4 x float> %i.cx, float %i.cu, i64 3
  %i.cz = getelementptr [4 x i8], ptr %i.co, i64 %index1223 ; 2 uses
  %19 = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store <4 x float> %18, ptr %i.cz, align 4, !alias.scope !1160, !noalias !1157
  store <4 x float> %i.cy, ptr %19, align 4, !alias.scope !1160, !noalias !1157
  %index.next1224 = add nuw i64 %index1223, 8     ; 2 uses
  %i.da = icmp eq i64 %index.next1224, %n.vec1221
  br i1 %i.da, label %middle.block1225, label %vector.body1222, !llvm.loop !1162

middle.block1225:                                 ; preds = %vector.body1222
  br i1 %cmp.n1226, label %._crit_edge.us682, label %scalar.ph1217.preheader

scalar.ph1217.preheader:                          ; preds = %vector.memcheck1209, %.preheader665.us, %middle.block1225
  %indvars.iv887.ph = phi i64 [ %indvars.iv883, %vector.memcheck1209 ], [ %indvars.iv883, %.preheader665.us ], [ %i.cm, %middle.block1225 ] ; 2 uses
  %indvars.iv885.ph = phi i64 [ %indvars.iv883, %vector.memcheck1209 ], [ %indvars.iv883, %.preheader665.us ], [ %i.cn, %middle.block1225 ] ; 2 uses
  %.1544679.us.ph = phi i32 [ 0, %vector.memcheck1209 ], [ 0, %.preheader665.us ], [ %i.cg, %middle.block1225 ] ; 4 uses
  %i.db = sub i32 %2, %.1544679.us.ph
  %xtraiter1802 = and i32 %i.db, 3                ; 2 uses
  %lcmp.mod1803.not = icmp eq i32 %xtraiter1802, 0
  br i1 %lcmp.mod1803.not, label %scalar.ph1217.prol.loopexit, label %scalar.ph1217.prol

scalar.ph1217.prol:                               ; preds = %scalar.ph1217.preheader, %scalar.ph1217.prol
  %indvars.iv887.prol = phi i64 [ %indvars.iv.next888.prol, %scalar.ph1217.prol ], [ %indvars.iv887.ph, %scalar.ph1217.preheader ] ; 2 uses
  %indvars.iv885.prol = phi i64 [ %indvars.iv.next886.prol, %scalar.ph1217.prol ], [ %indvars.iv885.ph, %scalar.ph1217.preheader ] ; 2 uses
  %.1544679.us.prol = phi i32 [ %i.df, %scalar.ph1217.prol ], [ %.1544679.us.ph, %scalar.ph1217.preheader ]
  %prol.iter1804 = phi i32 [ %prol.iter1804.next, %scalar.ph1217.prol ], [ 0, %scalar.ph1217.preheader ]
  %i.dc = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv887.prol
  %i.dd = load float, ptr %i.dc, align 4
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv885.prol
  store float %i.dd, ptr %i.de, align 4
  %indvars.iv.next886.prol = add nuw nsw i64 %indvars.iv885.prol, %i.bv ; 2 uses
  %indvars.iv.next888.prol = add nsw i64 %indvars.iv887.prol, %i.bw ; 2 uses
  %i.df = add nuw nsw i32 %.1544679.us.prol, 1    ; 2 uses
  %prol.iter1804.next = add i32 %prol.iter1804, 1 ; 2 uses
  %prol.iter1804.cmp.not = icmp eq i32 %prol.iter1804.next, %xtraiter1802
  br i1 %prol.iter1804.cmp.not, label %scalar.ph1217.prol.loopexit, label %scalar.ph1217.prol, !llvm.loop !1163

scalar.ph1217.prol.loopexit:                      ; preds = %scalar.ph1217.prol, %scalar.ph1217.preheader
  %indvars.iv887.unr = phi i64 [ %indvars.iv887.ph, %scalar.ph1217.preheader ], [ %indvars.iv.next888.prol, %scalar.ph1217.prol ]
  %indvars.iv885.unr = phi i64 [ %indvars.iv885.ph, %scalar.ph1217.preheader ], [ %indvars.iv.next886.prol, %scalar.ph1217.prol ]
  %.1544679.us.unr = phi i32 [ %.1544679.us.ph, %scalar.ph1217.preheader ], [ %i.df, %scalar.ph1217.prol ]
  %i.dg = sub i32 %.1544679.us.ph, %2
  %i.dh = icmp ugt i32 %i.dg, -4
  br i1 %i.dh, label %._crit_edge.us682, label %scalar.ph1217

scalar.ph1217:                                    ; preds = %scalar.ph1217.prol.loopexit, %scalar.ph1217
  %indvars.iv887 = phi i64 [ %indvars.iv.next888.3, %scalar.ph1217 ], [ %indvars.iv887.unr, %scalar.ph1217.prol.loopexit ] ; 2 uses
  %indvars.iv885 = phi i64 [ %indvars.iv.next886.3, %scalar.ph1217 ], [ %indvars.iv885.unr, %scalar.ph1217.prol.loopexit ] ; 2 uses
  %.1544679.us = phi i32 [ %i.du, %scalar.ph1217 ], [ %.1544679.us.unr, %scalar.ph1217.prol.loopexit ]
  %i.di = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv887
  %i.dj = load float, ptr %i.di, align 4
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv885
  store float %i.dj, ptr %i.dk, align 4
  %indvars.iv.next886 = add nuw nsw i64 %indvars.iv885, %i.bv ; 2 uses
  %indvars.iv.next888 = add nsw i64 %indvars.iv887, %i.bw ; 2 uses
  %i.dl = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next888
  %i.dm = load float, ptr %i.dl, align 4
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next886
  store float %i.dm, ptr %i.dn, align 4
  %indvars.iv.next886.1 = add nuw nsw i64 %indvars.iv.next886, %i.bv ; 2 uses
  %indvars.iv.next888.1 = add nsw i64 %indvars.iv.next888, %i.bw ; 2 uses
  %i.do = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next888.1
  %i.dp = load float, ptr %i.do, align 4
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next886.1
  store float %i.dp, ptr %i.dq, align 4
  %indvars.iv.next886.2 = add nuw nsw i64 %indvars.iv.next886.1, %i.bv ; 2 uses
  %indvars.iv.next888.2 = add nsw i64 %indvars.iv.next888.1, %i.bw ; 2 uses
  %i.dr = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next888.2
  %i.ds = load float, ptr %i.dr, align 4
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next886.2
  store float %i.ds, ptr %i.dt, align 4
  %indvars.iv.next886.3 = add nuw nsw i64 %indvars.iv.next886.2, %i.bv
  %indvars.iv.next888.3 = add nsw i64 %indvars.iv.next888.2, %i.bw
  %i.du = add nuw nsw i32 %.1544679.us, 4         ; 2 uses
  %exitcond892.not.3 = icmp eq i32 %i.du, %2
  br i1 %exitcond892.not.3, label %._crit_edge.us682, label %scalar.ph1217, !llvm.loop !1164

._crit_edge.us682:                                ; preds = %scalar.ph1217.prol.loopexit, %scalar.ph1217, %middle.block1225
  %indvars.iv.next884 = add nuw nsw i64 %indvars.iv883, 1 ; 2 uses
  %exitcond896.not = icmp eq i64 %indvars.iv.next884, %i.bv
  br i1 %exitcond896.not, label %.loopexit667, label %.preheader665.us, !llvm.loop !1165

.loopexit667:                                     ; preds = %._crit_edge.us, %._crit_edge.us682, %.preheader669, %.preheader666
  %i.dv = shl i32 %0, 1                           ; 7 uses
  %i.dw = icmp sgt i32 %i.q, 1                    ; 6 uses
  br i1 %i.dw, label %.lr.ph692, label %._crit_edge693

.lr.ph692:                                        ; preds = %.loopexit667
  %i.dx = icmp sgt i32 %2, 0
  %i.dy = sext i32 %0 to i64                      ; 6 uses
  %i.dz = sext i32 %i.dv to i64                   ; 2 uses
  %i.ea = sext i32 %i.e to i64                    ; 3 uses
  %i.eb = add i32 %1, -1                          ; 2 uses
  %i.ec = mul i32 %i.f, %i.eb
  %i.ed = add i32 %2, -1                          ; 3 uses
  %i.ee = sext i32 %1 to i64                      ; 2 uses
  %i.ef = shl nsw i64 %i.ee, 2                    ; 2 uses
  %i.eg = mul nsw i64 %i.ee, -4                   ; 2 uses
  %i.eh = zext i32 %i.ed to i64                   ; 2 uses
  %i.ei = shl nuw nsw i64 %i.eh, 2
  %i.ej = add nuw nsw i64 %i.ei, 4                ; 2 uses
  %scevgep1239 = getelementptr i8, ptr %7, i64 %i.ej
  %scevgep1242 = getelementptr i8, ptr %7, i64 %i.ej
  %i.ek = sext i32 %1 to i64
  %i.el = mul nsw i64 %i.ek, %i.eh
  %i.em = shl i64 %i.el, 2                        ; 2 uses
  %i.en = sext i32 %1 to i64                      ; 5 uses
  %i.eo = zext i32 %2 to i64                      ; 2 uses
  %i.ep = getelementptr i8, ptr %4, i64 %i.em
  %i.eq = getelementptr i8, ptr %i.ep, i64 8
  %i.er = getelementptr i8, ptr %4, i64 %i.em
  %i.es = getelementptr i8, ptr %i.er, i64 4
  %min.iters.check1273 = icmp ult i32 %2, 36
  %ident.check1231 = icmp ne i32 %0, 1
  %i.et = icmp slt i32 %1, 0                      ; 2 uses
  %i.eu = select i1 %i.et, i64 %i.eg, i64 %i.ef
  %i.ev = zext i32 %i.ed to i64
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.eu, i64 %i.ev) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.ew = sub i64 0, %mul.result
  %i.ex = icmp slt i32 %1, 0                      ; 2 uses
  %i.ey = select i1 %i.ex, i64 %i.eg, i64 %i.ef
  %i.ez = zext i32 %i.ed to i64
  %mul1234 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ey, i64 %i.ez) ; 2 uses
  %mul.result1235 = extractvalue { i64, i1 } %mul1234, 0 ; 2 uses
  %mul.overflow1236 = extractvalue { i64, i1 } %mul1234, 1
  %i.fa = sub i64 0, %mul.result1235
  %invariant.op = or i1 %mul.overflow, %ident.check1231
  %n.vec1276 = and i64 %i.eo, 2147483644          ; 6 uses
  %i.fb = mul nsw i64 %n.vec1276, %i.en
  %i.fc = trunc nuw nsw i64 %n.vec1276 to i32
  %invariant.gep1832.a = getelementptr [4 x i8], ptr %4, i64 %i.en
  %.idx1770 = shl nsw i64 %i.en, 3
  %invariant.gep1834.a = getelementptr i8, ptr %4, i64 %.idx1770
  %.idx1771 = mul nsw i64 %i.en, 12
  %invariant.gep1836.a = getelementptr i8, ptr %4, i64 %.idx1771
  %cmp.n1281 = icmp eq i64 %n.vec1276, %i.eo
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph692, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph692 ], [ %indvar.next, %._crit_edge ] ; 5 uses
  %indvars.iv905 = phi i32 [ %i.ec, %.lr.ph692 ], [ %indvars.iv.next906, %._crit_edge ] ; 2 uses
  %indvars.iv901 = phi i64 [ %i.dz, %.lr.ph692 ], [ %indvars.iv.next902, %._crit_edge ] ; 6 uses
  %indvars.iv897 = phi i32 [ %i.f, %.lr.ph692 ], [ %indvars.iv.next898, %._crit_edge ] ; 2 uses
  %.0535690 = phi i32 [ 1, %.lr.ph692 ], [ %i.iq, %._crit_edge ]
  %i.fd = trunc i64 %indvar to i32
  %i.fe = add i32 %i.fd, 1
  %i.ff = mul i32 %i.fe, %2
  %i.fg = sext i32 %i.ff to i64
  %i.fh = shl nsw i64 %i.fg, 2                    ; 2 uses
  %scevgep1238 = getelementptr i8, ptr %7, i64 %i.fh ; 3 uses
  %scevgep1240 = getelementptr i8, ptr %scevgep1239, i64 %i.fh ; 3 uses
  %i.fi = trunc i64 %indvar to i32
  %i.fj = sub i32 %i.eb, %i.fi
  %i.fk = mul i32 %2, %i.fj
  %i.fl = sext i32 %i.fk to i64
  %i.fm = shl nsw i64 %i.fl, 2                    ; 2 uses
  %scevgep1241 = getelementptr i8, ptr %7, i64 %i.fm ; 3 uses
  %scevgep1243 = getelementptr i8, ptr %scevgep1242, i64 %i.fm ; 3 uses
  %i.fn = shl nuw nsw i64 %indvar, 3              ; 4 uses
  %scevgep1244 = getelementptr i8, ptr %i.eq, i64 %i.fn ; 4 uses
  %i.fo = getelementptr i8, ptr %4, i64 %i.fn
  %scevgep1245 = getelementptr i8, ptr %i.fo, i64 8 ; 4 uses
  %i.fp = icmp ult ptr %scevgep1244, %scevgep1245
  %umin1246 = select i1 %i.fp, ptr %scevgep1244, ptr %scevgep1245 ; 2 uses
  %i.fq = icmp ugt ptr %scevgep1244, %scevgep1245
  %umax1247 = select i1 %i.fq, ptr %scevgep1244, ptr %scevgep1245
  %scevgep1248 = getelementptr i8, ptr %umax1247, i64 4 ; 2 uses
  %scevgep1249 = getelementptr i8, ptr %i.es, i64 %i.fn ; 4 uses
  %i.fr = getelementptr i8, ptr %4, i64 %i.fn
  %scevgep1250 = getelementptr i8, ptr %i.fr, i64 4 ; 4 uses
  %i.fs = icmp ult ptr %scevgep1249, %scevgep1250
  %umin1251 = select i1 %i.fs, ptr %scevgep1249, ptr %scevgep1250 ; 2 uses
  %i.ft = icmp ugt ptr %scevgep1249, %scevgep1250
  %umax1252 = select i1 %i.ft, ptr %scevgep1249, ptr %scevgep1250
  %scevgep1253 = getelementptr i8, ptr %umax1252, i64 4 ; 2 uses
  %i.fu = shl nuw nsw i64 %indvar, 3              ; 2 uses
  %i.fv = getelementptr i8, ptr %4, i64 %i.fu
  %scevgep1232 = getelementptr i8, ptr %i.fv, i64 4 ; 4 uses
  %i.fw = getelementptr i8, ptr %4, i64 %i.fu
  %scevgep1233 = getelementptr i8, ptr %i.fw, i64 8 ; 4 uses
  br i1 %i.dx, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.fx = sext i32 %indvars.iv905 to i64          ; 5 uses
  %i.fy = sext i32 %indvars.iv897 to i64          ; 5 uses
  br i1 %min.iters.check1273, label %.lr.ph.preheader1800, label %vector.scevcheck1230

vector.scevcheck1230:                             ; preds = %.lr.ph.preheader
  %i.fz = getelementptr i8, ptr %scevgep1232, i64 %mul.result
  %i.ga = getelementptr i8, ptr %scevgep1232, i64 %i.ew
  %i.gb = icmp ult ptr %i.fz, %scevgep1232
  %i.gc = icmp ugt ptr %i.ga, %scevgep1232
  %i.gd = select i1 %i.et, i1 %i.gc, i1 %i.gb
  %i.ge = getelementptr i8, ptr %scevgep1233, i64 %mul.result1235
  %i.gf = getelementptr i8, ptr %scevgep1233, i64 %i.fa
  %i.gg = icmp ult ptr %i.ge, %scevgep1233
  %i.gh = icmp ugt ptr %i.gf, %scevgep1233
  %i.gi = select i1 %i.ex, i1 %i.gh, i1 %i.gg
  %i.gj = or i1 %i.gi, %mul.overflow1236
  %.reass = or i1 %i.gd, %invariant.op
  %i.gk = or i1 %.reass, %i.gj
  br i1 %i.gk, label %.lr.ph.preheader1800, label %vector.memcheck1237

vector.memcheck1237:                              ; preds = %vector.scevcheck1230
end_hunk_0
