inline.NumInlined: 678
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 79
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 207
begin_hunk_0_@dradbg:bb.a
  %indvars.iv.next891.prol = add nuw nsw i64 %indvars.iv890.prol, 1 ; 2 uses
  %indvars.iv.next895.prol = add nsw i64 %indvars.iv894.prol, 1 ; 2 uses
  %i.bi = add nuw nsw i32 %.0533673.prol, 1       ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1163

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv894.unr = phi i64 [ %indvars.iv894.ph, %scalar.ph.preheader ], [ %indvars.iv.next895.prol, %scalar.ph.prol ]
  %indvars.iv890.unr = phi i64 [ %indvars.iv890.ph, %scalar.ph.preheader ], [ %indvars.iv.next891.prol, %scalar.ph.prol ]
  %.0533673.unr = phi i32 [ %.0533673.ph, %scalar.ph.preheader ], [ %i.bi, %scalar.ph.prol ]
  %i.bj = sub i32 %.0533673.ph, %0
  %i.bk = icmp ugt i32 %i.bj, -4
  br i1 %i.bk, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv894 = phi i64 [ %indvars.iv.next895.3, %scalar.ph ], [ %indvars.iv894.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv890 = phi i64 [ %indvars.iv.next891.3, %scalar.ph ], [ %indvars.iv890.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.0533673 = phi i32 [ %i.cd, %scalar.ph ], [ %.0533673.unr, %scalar.ph.prol.loopexit ]
  %i.bl = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv894
  %i.bm = load float, ptr %i.bl, align 4
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv890
  store float %i.bm, ptr %i.bn, align 4
  %i.bo = getelementptr [4 x i8], ptr %4, i64 %indvars.iv894
  %i.bp = getelementptr i8, ptr %i.bo, i64 4
  %i.bq = load float, ptr %i.bp, align 4
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv890
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store float %i.bq, ptr %i.bs, align 4
  %i.bt = getelementptr [4 x i8], ptr %4, i64 %indvars.iv894
  %i.bu = getelementptr i8, ptr %i.bt, i64 8
  %i.bv = load float, ptr %i.bu, align 4
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv890
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store float %i.bv, ptr %i.bx, align 4
  %i.by = getelementptr [4 x i8], ptr %4, i64 %indvars.iv894
  %i.bz = getelementptr i8, ptr %i.by, i64 12
  %i.ca = load float, ptr %i.bz, align 4
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv890
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  store float %i.ca, ptr %i.cc, align 4
  %indvars.iv.next891.3 = add nuw nsw i64 %indvars.iv890, 4
  %indvars.iv.next895.3 = add nsw i64 %indvars.iv894, 4
  %i.cd = add nuw nsw i32 %.0533673, 4            ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.cd, %0
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !1164

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.s
  %indvars.iv.next893 = add i64 %indvars.iv892, %i.t
  %i.ce = add nuw nsw i32 %.0543676, 1            ; 2 uses
  %exitcond902.not = icmp eq i32 %i.ce, %2
  br i1 %exitcond902.not, label %.loopexit667, label %.preheader668, !llvm.loop !1165

.preheader665:                                    ; preds = %.preheader665.preheader, %._crit_edge680
  %indvars.iv903 = phi i64 [ 0, %.preheader665.preheader ], [ %indvars.iv.next904, %._crit_edge680 ] ; 11 uses
  br i1 %or.cond1768, label %vector.memcheck1207, label %scalar.ph1215.preheader

vector.memcheck1207:                              ; preds = %.preheader665
  %i.cf = shl nuw nsw i64 %indvars.iv903, 2
  %scevgep1209 = getelementptr i8, ptr %4, i64 %i.cf ; 4 uses
  %i.cg = add i64 %i.aq, %indvars.iv903
  %i.ch = shl i64 %i.cg, 2
  %scevgep1210 = getelementptr i8, ptr %4, i64 %i.ch ; 4 uses
  %i.ci = icmp ugt ptr %scevgep1209, %scevgep1210
  %umax = select i1 %i.ci, ptr %scevgep1209, ptr %scevgep1210
  %scevgep1211 = getelementptr i8, ptr %umax, i64 4
  %i.cj = icmp ult ptr %scevgep1209, %scevgep1210
  %umin = select i1 %i.cj, ptr %scevgep1209, ptr %scevgep1210
  %bound01212 = icmp ult ptr %7, %scevgep1211
  %bound11213 = icmp ult ptr %umin, %scevgep1208
  %found.conflict1214 = and i1 %bound01212, %bound11213
  br i1 %found.conflict1214, label %scalar.ph1215.preheader, label %vector.ph1217

vector.ph1217:                                    ; preds = %vector.memcheck1207
  %i.ck = add i64 %indvars.iv903, %i.at
  %i.cl = add nuw i64 %indvars.iv903, %n.vec1219
  %i.cm = getelementptr [4 x i8], ptr %7, i64 %indvars.iv903
  br label %vector.body1220

vector.body1220:                                  ; preds = %vector.body1220, %vector.ph1217
  %index1221 = phi i64 [ 0, %vector.ph1217 ], [ %index.next1222, %vector.body1220 ] ; 3 uses
  %i.cn = mul i64 %index1221, %i.ar
  %i.co = add i64 %indvars.iv903, %i.cn           ; 4 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr %4, i64 %i.co
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.co
  %gep1821 = getelementptr [4 x i8], ptr %invariant.gep1820, i64 %i.co
  %gep1823 = getelementptr [4 x i8], ptr %invariant.gep1822, i64 %i.co
  %i.cq = load float, ptr %i.cp, align 4, !alias.scope !1166
  %i.cr = load float, ptr %gep, align 4, !alias.scope !1166
  %i.cs = load float, ptr %gep1821, align 4, !alias.scope !1166
  %i.ct = load float, ptr %gep1823, align 4, !alias.scope !1166
  %i.cu = insertelement <4 x float> poison, float %i.cq, i64 0
  %i.cv = insertelement <4 x float> %i.cu, float %i.cr, i64 1
  %i.cw = insertelement <4 x float> %i.cv, float %i.cs, i64 2
  %i.cx = insertelement <4 x float> %i.cw, float %i.ct, i64 3
  %i.cy = getelementptr [4 x i8], ptr %i.cm, i64 %index1221
  store <4 x float> %i.cx, ptr %i.cy, align 4, !alias.scope !1169, !noalias !1166
  %index.next1222 = add nuw i64 %index1221, 4     ; 2 uses
  %i.cz = icmp eq i64 %index.next1222, %n.vec1219
  br i1 %i.cz, label %middle.block1223, label %vector.body1220, !llvm.loop !1171

middle.block1223:                                 ; preds = %vector.body1220
  br i1 %cmp.n1224, label %._crit_edge680, label %scalar.ph1215.preheader

scalar.ph1215.preheader:                          ; preds = %vector.memcheck1207, %.preheader665, %middle.block1223
  %indvars.iv907.ph = phi i64 [ %indvars.iv903, %vector.memcheck1207 ], [ %indvars.iv903, %.preheader665 ], [ %i.ck, %middle.block1223 ] ; 2 uses
  %indvars.iv905.ph = phi i64 [ %indvars.iv903, %vector.memcheck1207 ], [ %indvars.iv903, %.preheader665 ], [ %i.cl, %middle.block1223 ] ; 2 uses
  %.1544679.ph = phi i32 [ 0, %vector.memcheck1207 ], [ 0, %.preheader665 ], [ %i.au, %middle.block1223 ] ; 4 uses
  %i.da = sub i32 %2, %.1544679.ph
  %xtraiter1803 = and i32 %i.da, 3                ; 2 uses
  %lcmp.mod1804.not = icmp eq i32 %xtraiter1803, 0
  br i1 %lcmp.mod1804.not, label %scalar.ph1215.prol.loopexit, label %scalar.ph1215.prol

scalar.ph1215.prol:                               ; preds = %scalar.ph1215.preheader, %scalar.ph1215.prol
  %indvars.iv907.prol = phi i64 [ %indvars.iv.next908.prol, %scalar.ph1215.prol ], [ %indvars.iv907.ph, %scalar.ph1215.preheader ] ; 2 uses
  %indvars.iv905.prol = phi i64 [ %indvars.iv.next906.prol, %scalar.ph1215.prol ], [ %indvars.iv905.ph, %scalar.ph1215.preheader ] ; 2 uses
  %.1544679.prol = phi i32 [ %i.de, %scalar.ph1215.prol ], [ %.1544679.ph, %scalar.ph1215.preheader ]
  %prol.iter1805 = phi i32 [ %prol.iter1805.next, %scalar.ph1215.prol ], [ 0, %scalar.ph1215.preheader ]
  %i.db = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv907.prol
  %i.dc = load float, ptr %i.db, align 4
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv905.prol
  store float %i.dc, ptr %i.dd, align 4
  %indvars.iv.next906.prol = add nuw nsw i64 %indvars.iv905.prol, %i.aj ; 2 uses
  %indvars.iv.next908.prol = add nsw i64 %indvars.iv907.prol, %i.ak ; 2 uses
  %i.de = add nuw nsw i32 %.1544679.prol, 1       ; 2 uses
  %prol.iter1805.next = add i32 %prol.iter1805, 1 ; 2 uses
  %prol.iter1805.cmp.not = icmp eq i32 %prol.iter1805.next, %xtraiter1803
  br i1 %prol.iter1805.cmp.not, label %scalar.ph1215.prol.loopexit, label %scalar.ph1215.prol, !llvm.loop !1172

scalar.ph1215.prol.loopexit:                      ; preds = %scalar.ph1215.prol, %scalar.ph1215.preheader
  %indvars.iv907.unr = phi i64 [ %indvars.iv907.ph, %scalar.ph1215.preheader ], [ %indvars.iv.next908.prol, %scalar.ph1215.prol ]
  %indvars.iv905.unr = phi i64 [ %indvars.iv905.ph, %scalar.ph1215.preheader ], [ %indvars.iv.next906.prol, %scalar.ph1215.prol ]
  %.1544679.unr = phi i32 [ %.1544679.ph, %scalar.ph1215.preheader ], [ %i.de, %scalar.ph1215.prol ]
  %i.df = sub i32 %.1544679.ph, %2
  %i.dg = icmp ugt i32 %i.df, -4
  br i1 %i.dg, label %._crit_edge680, label %scalar.ph1215

scalar.ph1215:                                    ; preds = %scalar.ph1215.prol.loopexit, %scalar.ph1215
  %indvars.iv907 = phi i64 [ %indvars.iv.next908.3, %scalar.ph1215 ], [ %indvars.iv907.unr, %scalar.ph1215.prol.loopexit ] ; 2 uses
  %indvars.iv905 = phi i64 [ %indvars.iv.next906.3, %scalar.ph1215 ], [ %indvars.iv905.unr, %scalar.ph1215.prol.loopexit ] ; 2 uses
  %.1544679 = phi i32 [ %i.dt, %scalar.ph1215 ], [ %.1544679.unr, %scalar.ph1215.prol.loopexit ]
  %i.dh = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv907
  %i.di = load float, ptr %i.dh, align 4
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv905
  store float %i.di, ptr %i.dj, align 4
  %indvars.iv.next906 = add nuw nsw i64 %indvars.iv905, %i.aj ; 2 uses
  %indvars.iv.next908 = add nsw i64 %indvars.iv907, %i.ak ; 2 uses
  %i.dk = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next908
  %i.dl = load float, ptr %i.dk, align 4
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next906
  store float %i.dl, ptr %i.dm, align 4
  %indvars.iv.next906.1 = add nuw nsw i64 %indvars.iv.next906, %i.aj ; 2 uses
  %indvars.iv.next908.1 = add nsw i64 %indvars.iv.next908, %i.ak ; 2 uses
  %i.dn = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next908.1
  %i.do = load float, ptr %i.dn, align 4
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next906.1
  store float %i.do, ptr %i.dp, align 4
  %indvars.iv.next906.2 = add nuw nsw i64 %indvars.iv.next906.1, %i.aj ; 2 uses
  %indvars.iv.next908.2 = add nsw i64 %indvars.iv.next908.1, %i.ak ; 2 uses
  %i.dq = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next908.2
  %i.dr = load float, ptr %i.dq, align 4
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.next906.2
  store float %i.dr, ptr %i.ds, align 4
  %indvars.iv.next906.3 = add nuw nsw i64 %indvars.iv.next906.2, %i.aj
  %indvars.iv.next908.3 = add nsw i64 %indvars.iv.next908.2, %i.ak
  %i.dt = add nuw nsw i32 %.1544679, 4            ; 2 uses
  %exitcond912.not.3 = icmp eq i32 %i.dt, %2
  br i1 %exitcond912.not.3, label %._crit_edge680, label %scalar.ph1215, !llvm.loop !1173

._crit_edge680:                                   ; preds = %scalar.ph1215.prol.loopexit, %scalar.ph1215, %middle.block1223
  %indvars.iv.next904 = add nuw nsw i64 %indvars.iv903, 1 ; 2 uses
  %exitcond916.not = icmp eq i64 %indvars.iv.next904, %i.aj
  br i1 %exitcond916.not, label %.loopexit667, label %.preheader665, !llvm.loop !1174

.loopexit667:                                     ; preds = %._crit_edge, %._crit_edge680, %.preheader669, %.preheader666
  %i.du = shl i32 %0, 1                           ; 7 uses
  %i.dv = icmp sgt i32 %i.o, 1                    ; 7 uses
  %i.dw = icmp sgt i32 %2, 0                      ; 2 uses
  %or.cond862 = and i1 %i.dv, %i.dw               ; 2 uses
  br i1 %or.cond862, label %.lr.ph.preheader, label %._crit_edge695.split

.lr.ph.preheader:                                 ; preds = %.loopexit667
  %i.dx = sext i32 %0 to i64                      ; 6 uses
  %i.dy = sext i32 %i.du to i64                   ; 2 uses
  %i.dz = sext i32 %i.c to i64                    ; 3 uses
  %i.ea = add i32 %1, -1                          ; 2 uses
  %i.eb = mul i32 %i.d, %i.ea
  %i.ec = add nsw i32 %2, -1                      ; 3 uses
  %i.ed = sext i32 %1 to i64                      ; 2 uses
  %i.ee = shl nsw i64 %i.ed, 2                    ; 2 uses
  %i.ef = mul nsw i64 %i.ed, -4                   ; 2 uses
  %i.eg = zext i32 %i.ec to i64                   ; 2 uses
  %i.eh = shl nuw nsw i64 %i.eg, 2
  %i.ei = add nuw nsw i64 %i.eh, 4                ; 2 uses
  %scevgep1237 = getelementptr i8, ptr %7, i64 %i.ei
  %scevgep1240 = getelementptr i8, ptr %7, i64 %i.ei
  %i.ej = sext i32 %1 to i64
  %i.ek = mul nsw i64 %i.ej, %i.eg
  %i.el = shl i64 %i.ek, 2                        ; 2 uses
  %10 = getelementptr i8, ptr %4, i64 %i.el
  %11 = getelementptr i8, ptr %10, i64 8
  %i.em = getelementptr i8, ptr %4, i64 %i.el
  %i.en = getelementptr i8, ptr %i.em, i64 4
  %12 = sext i32 %1 to i64                        ; 5 uses
  %13 = zext nneg i32 %2 to i64                   ; 2 uses
  %min.iters.check1271 = icmp ult i32 %2, 36
  %ident.check1229 = icmp ne i32 %0, 1
  %i.eo = icmp slt i32 %1, 0                      ; 2 uses
  %i.ep = select i1 %i.eo, i64 %i.ef, i64 %i.ee
  %i.eq = zext i32 %i.ec to i64
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ep, i64 %i.eq) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.er = sub i64 0, %mul.result
  %i.es = icmp slt i32 %1, 0                      ; 2 uses
  %i.et = select i1 %i.es, i64 %i.ef, i64 %i.ee
  %i.eu = zext i32 %i.ec to i64
  %mul1232 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.et, i64 %i.eu) ; 2 uses
  %mul.result1233 = extractvalue { i64, i1 } %mul1232, 0 ; 2 uses
  %mul.overflow1234 = extractvalue { i64, i1 } %mul1232, 1
  %i.ev = sub i64 0, %mul.result1233
  %invariant.op = or i1 %mul.overflow, %ident.check1229
  %n.vec1274 = and i64 %13, 2147483644            ; 6 uses
  %i.ew = mul nsw i64 %n.vec1274, %12
  %i.ex = trunc nuw nsw i64 %n.vec1274 to i32
  %invariant.gep1824 = getelementptr [4 x i8], ptr %4, i64 %12
  %.idx1764 = shl nsw i64 %12, 3
  %invariant.gep1826 = getelementptr i8, ptr %4, i64 %.idx1764
  %.idx1765 = mul nsw i64 %12, 12
  %invariant.gep1828 = getelementptr i8, ptr %4, i64 %.idx1765
  %cmp.n1279 = icmp eq i64 %n.vec1274, %13
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge688
  %indvar = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next, %._crit_edge688 ] ; 5 uses
  %indvars.iv925 = phi i32 [ %i.eb, %.lr.ph.preheader ], [ %indvars.iv.next926, %._crit_edge688 ] ; 2 uses
  %indvars.iv921 = phi i64 [ %i.dy, %.lr.ph.preheader ], [ %indvars.iv.next922, %._crit_edge688 ] ; 6 uses
  %indvars.iv917 = phi i32 [ %i.d, %.lr.ph.preheader ], [ %indvars.iv.next918, %._crit_edge688 ] ; 2 uses
  %.0535692 = phi i32 [ 1, %.lr.ph.preheader ], [ %i.il, %._crit_edge688 ]
  %i.ey = trunc i64 %indvar to i32
  %i.ez = add i32 %i.ey, 1
  %i.fa = mul i32 %i.ez, %2
  %i.fb = sext i32 %i.fa to i64
  %i.fc = shl nsw i64 %i.fb, 2                    ; 2 uses
  %scevgep1236 = getelementptr i8, ptr %7, i64 %i.fc ; 3 uses
  %scevgep1238 = getelementptr i8, ptr %scevgep1237, i64 %i.fc ; 3 uses
  %i.fd = trunc i64 %indvar to i32
  %i.fe = sub i32 %i.ea, %i.fd
  %i.ff = mul i32 %2, %i.fe
  %i.fg = sext i32 %i.ff to i64
  %i.fh = shl nsw i64 %i.fg, 2                    ; 2 uses
  %scevgep1239 = getelementptr i8, ptr %7, i64 %i.fh ; 3 uses
  %scevgep1241 = getelementptr i8, ptr %scevgep1240, i64 %i.fh ; 3 uses
  %i.fi = shl nuw nsw i64 %indvar, 3              ; 4 uses
  %scevgep1242 = getelementptr i8, ptr %11, i64 %i.fi ; 4 uses
  %i.fj = getelementptr i8, ptr %4, i64 %i.fi
  %scevgep1243 = getelementptr i8, ptr %i.fj, i64 8 ; 4 uses
  %i.fk = icmp ult ptr %scevgep1242, %scevgep1243
  %umin1244 = select i1 %i.fk, ptr %scevgep1242, ptr %scevgep1243 ; 2 uses
  %i.fl = icmp ugt ptr %scevgep1242, %scevgep1243
  %umax1245 = select i1 %i.fl, ptr %scevgep1242, ptr %scevgep1243
  %scevgep1246 = getelementptr i8, ptr %umax1245, i64 4 ; 2 uses
  %scevgep1247 = getelementptr i8, ptr %i.en, i64 %i.fi ; 4 uses
  %i.fm = getelementptr i8, ptr %4, i64 %i.fi
  %scevgep1248 = getelementptr i8, ptr %i.fm, i64 4 ; 4 uses
  %i.fn = icmp ult ptr %scevgep1247, %scevgep1248
  %umin1249 = select i1 %i.fn, ptr %scevgep1247, ptr %scevgep1248 ; 2 uses
  %i.fo = icmp ugt ptr %scevgep1247, %scevgep1248
  %umax1250 = select i1 %i.fo, ptr %scevgep1247, ptr %scevgep1248
  %scevgep1251 = getelementptr i8, ptr %umax1250, i64 4 ; 2 uses
  %i.fp = sext i32 %indvars.iv917 to i64          ; 5 uses
  %i.fq = sext i32 %indvars.iv925 to i64          ; 5 uses
  br i1 %min.iters.check1271, label %scalar.ph1270.preheader, label %vector.scevcheck1228

vector.scevcheck1228:                             ; preds = %.lr.ph
  %i.fr = shl nuw nsw i64 %indvar, 3              ; 2 uses
  %i.fs = getelementptr i8, ptr %4, i64 %i.fr
  %scevgep1231 = getelementptr i8, ptr %i.fs, i64 8 ; 4 uses
  %i.ft = getelementptr i8, ptr %4, i64 %i.fr
  %scevgep1230 = getelementptr i8, ptr %i.ft, i64 4 ; 4 uses
  %i.fu = getelementptr i8, ptr %scevgep1230, i64 %mul.result
  %i.fv = getelementptr i8, ptr %scevgep1230, i64 %i.er
  %i.fw = icmp ult ptr %i.fu, %scevgep1230
  %i.fx = icmp ugt ptr %i.fv, %scevgep1230
  %i.fy = select i1 %i.eo, i1 %i.fx, i1 %i.fw
  %i.fz = getelementptr i8, ptr %scevgep1231, i64 %mul.result1233
  %i.ga = getelementptr i8, ptr %scevgep1231, i64 %i.ev
  %i.gb = icmp ult ptr %i.fz, %scevgep1231
  %i.gc = icmp ugt ptr %i.ga, %scevgep1231
  %i.gd = select i1 %i.es, i1 %i.gc, i1 %i.gb
  %i.ge = or i1 %i.gd, %mul.overflow1234
  %.reass = or i1 %i.fy, %invariant.op
  %i.gf = or i1 %.reass, %i.ge
  br i1 %i.gf, label %scalar.ph1270.preheader, label %vector.memcheck1235

vector.memcheck1235:                              ; preds = %vector.scevcheck1228
  %bound01252 = icmp ult ptr %scevgep1236, %scevgep1241
  %bound11253 = icmp ult ptr %scevgep1239, %scevgep1238
  %found.conflict1254 = and i1 %bound01252, %bound11253
  %bound01255 = icmp ult ptr %scevgep1236, %scevgep1246
  %bound11256 = icmp ult ptr %umin1244, %scevgep1238
  %found.conflict1257 = and i1 %bound01255, %bound11256
  %conflict.rdx = or i1 %found.conflict1254, %found.conflict1257
  %bound01258 = icmp ult ptr %scevgep1236, %scevgep1251
  %bound11259 = icmp ult ptr %umin1249, %scevgep1238
  %found.conflict1260 = and i1 %bound01258, %bound11259
  %conflict.rdx1261 = or i1 %conflict.rdx, %found.conflict1260
  %bound01262 = icmp ult ptr %scevgep1239, %scevgep1246
  %bound11263 = icmp ult ptr %umin1244, %scevgep1241
  %found.conflict1264 = and i1 %bound01262, %bound11263
  %conflict.rdx1265 = or i1 %conflict.rdx1261, %found.conflict1264
  %bound01266 = icmp ult ptr %scevgep1239, %scevgep1251
  %bound11267 = icmp ult ptr %umin1249, %scevgep1241
  %found.conflict1268 = and i1 %bound01266, %bound11267
  %conflict.rdx1269 = or i1 %conflict.rdx1265, %found.conflict1268
  br i1 %conflict.rdx1269, label %scalar.ph1270.preheader, label %vector.ph1272

vector.ph1272:                                    ; preds = %vector.memcheck1235
  %i.gg = add nsw i64 %n.vec1274, %i.fq
  %i.gh = add i64 %indvars.iv921, %i.ew
  %i.gi = add nsw i64 %n.vec1274, %i.fp
  %invariant.gep1830 = getelementptr [4 x i8], ptr %7, i64 %i.fp
  %invariant.gep1832 = getelementptr [4 x i8], ptr %7, i64 %i.fq
  br label %vector.body1275

vector.body1275:                                  ; preds = %vector.body1275, %vector.ph1272
  %index1276 = phi i64 [ 0, %vector.ph1272 ], [ %index.next1277, %vector.body1275 ] ; 4 uses
  %i.gj = mul i64 %index1276, %12
  %i.gk = add i64 %indvars.iv921, %i.gj           ; 4 uses
  %i.gl = getelementptr [4 x i8], ptr %4, i64 %i.gk ; 2 uses
  %gep1825 = getelementptr [4 x i8], ptr %invariant.gep1824, i64 %i.gk ; 2 uses
  %gep1827 = getelementptr [4 x i8], ptr %invariant.gep1826, i64 %i.gk ; 2 uses
  %gep1829 = getelementptr [4 x i8], ptr %invariant.gep1828, i64 %i.gk ; 2 uses
  %i.gm = getelementptr i8, ptr %i.gl, i64 -4
  %i.gn = getelementptr i8, ptr %gep1825, i64 -4
  %i.go = getelementptr i8, ptr %gep1827, i64 -4
  %i.gp = getelementptr i8, ptr %gep1829, i64 -4
  %i.gq = load float, ptr %i.gm, align 4, !alias.scope !1175
  %i.gr = load float, ptr %i.gn, align 4, !alias.scope !1175
  %i.gs = load float, ptr %i.go, align 4, !alias.scope !1175
  %i.gt = load float, ptr %i.gp, align 4, !alias.scope !1175
  %i.gu = insertelement <4 x float> poison, float %i.gq, i64 0
  %i.gv = insertelement <4 x float> %i.gu, float %i.gr, i64 1
  %i.gw = insertelement <4 x float> %i.gv, float %i.gs, i64 2
  %i.gx = insertelement <4 x float> %i.gw, float %i.gt, i64 3 ; 2 uses
  %i.gy = fadd <4 x float> %i.gx, %i.gx
  %gep1831 = getelementptr [4 x i8], ptr %invariant.gep1830, i64 %index1276
  store <4 x float> %i.gy, ptr %gep1831, align 4, !alias.scope !1178, !noalias !1180
  %i.gz = load float, ptr %i.gl, align 4, !alias.scope !1183
  %i.ha = load float, ptr %gep1825, align 4, !alias.scope !1183
  %i.hb = load float, ptr %gep1827, align 4, !alias.scope !1183
  %i.hc = load float, ptr %gep1829, align 4, !alias.scope !1183
  %i.hd = insertelement <4 x float> poison, float %i.gz, i64 0
  %i.he = insertelement <4 x float> %i.hd, float %i.ha, i64 1
  %i.hf = insertelement <4 x float> %i.he, float %i.hb, i64 2
  %i.hg = insertelement <4 x float> %i.hf, float %i.hc, i64 3 ; 2 uses
  %i.hh = fadd <4 x float> %i.hg, %i.hg
  %gep1833 = getelementptr [4 x i8], ptr %invariant.gep1832, i64 %index1276
  store <4 x float> %i.hh, ptr %gep1833, align 4, !alias.scope !1184, !noalias !1185
  %index.next1277 = add nuw i64 %index1276, 4     ; 2 uses
  %i.hi = icmp eq i64 %index.next1277, %n.vec1274
  br i1 %i.hi, label %middle.block1278, label %vector.body1275, !llvm.loop !1186

middle.block1278:                                 ; preds = %vector.body1275
  br i1 %cmp.n1279, label %._crit_edge688, label %scalar.ph1270.preheader

scalar.ph1270.preheader:                          ; preds = %vector.memcheck1235, %vector.scevcheck1228, %.lr.ph, %middle.block1278
  %indvars.iv927.ph = phi i64 [ %i.fq, %vector.memcheck1235 ], [ %i.fq, %vector.scevcheck1228 ], [ %i.fq, %.lr.ph ], [ %i.gg, %middle.block1278 ] ; 3 uses
  %indvars.iv923.ph = phi i64 [ %indvars.iv921, %vector.memcheck1235 ], [ %indvars.iv921, %vector.scevcheck1228 ], [ %indvars.iv921, %.lr.ph ], [ %i.gh, %middle.block1278 ] ; 3 uses
  %indvars.iv919.ph = phi i64 [ %i.fp, %vector.memcheck1235 ], [ %i.fp, %vector.scevcheck1228 ], [ %i.fp, %.lr.ph ], [ %i.gi, %middle.block1278 ] ; 3 uses
  %.2545686.ph = phi i32 [ 0, %vector.memcheck1235 ], [ 0, %vector.scevcheck1228 ], [ 0, %.lr.ph ], [ %i.ex, %middle.block1278 ] ; 4 uses
  %i.hj = sub i32 %2, %.2545686.ph
  %.neg = add i32 %.2545686.ph, 1
  %xtraiter1806 = and i32 %i.hj, 1
  %lcmp.mod1807.not = icmp eq i32 %xtraiter1806, 0
  br i1 %lcmp.mod1807.not, label %scalar.ph1270.prol.loopexit, label %scalar.ph1270.prol

scalar.ph1270.prol:                               ; preds = %scalar.ph1270.preheader
  %i.hk = getelementptr [4 x i8], ptr %4, i64 %indvars.iv923.ph ; 2 uses
  %i.hl = getelementptr i8, ptr %i.hk, i64 -4
  %i.hm = load float, ptr %i.hl, align 4          ; 2 uses
  %i.hn = fadd float %i.hm, %i.hm
  %i.ho = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv919.ph
  store float %i.hn, ptr %i.ho, align 4
  %i.hp = load float, ptr %i.hk, align 4          ; 2 uses
  %i.hq = fadd float %i.hp, %i.hp
  %i.hr = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv927.ph
  store float %i.hq, ptr %i.hr, align 4
  %indvars.iv.next920.prol = add nsw i64 %indvars.iv919.ph, %i.dx
  %indvars.iv.next928.prol = add nsw i64 %indvars.iv927.ph, %i.dx
  %indvars.iv.next924.prol = add nsw i64 %indvars.iv923.ph, %i.dz
  %i.hs = add nuw nsw i32 %.2545686.ph, 1
  br label %scalar.ph1270.prol.loopexit

scalar.ph1270.prol.loopexit:                      ; preds = %scalar.ph1270.prol, %scalar.ph1270.preheader
  %indvars.iv927.unr = phi i64 [ %indvars.iv927.ph, %scalar.ph1270.preheader ], [ %indvars.iv.next928.prol, %scalar.ph1270.prol ]
  %indvars.iv923.unr = phi i64 [ %indvars.iv923.ph, %scalar.ph1270.preheader ], [ %indvars.iv.next924.prol, %scalar.ph1270.prol ]
  %indvars.iv919.unr = phi i64 [ %indvars.iv919.ph, %scalar.ph1270.preheader ], [ %indvars.iv.next920.prol, %scalar.ph1270.prol ]
  %.2545686.unr = phi i32 [ %.2545686.ph, %scalar.ph1270.preheader ], [ %i.hs, %scalar.ph1270.prol ]
  %i.ht = icmp eq i32 %2, %.neg
  br i1 %i.ht, label %._crit_edge688, label %scalar.ph1270

scalar.ph1270:                                    ; preds = %scalar.ph1270.prol.loopexit, %scalar.ph1270
  %indvars.iv927 = phi i64 [ %indvars.iv.next928.1, %scalar.ph1270 ], [ %indvars.iv927.unr, %scalar.ph1270.prol.loopexit ] ; 2 uses
  %indvars.iv923 = phi i64 [ %indvars.iv.next924.1, %scalar.ph1270 ], [ %indvars.iv923.unr, %scalar.ph1270.prol.loopexit ] ; 2 uses
  %indvars.iv919 = phi i64 [ %indvars.iv.next920.1, %scalar.ph1270 ], [ %indvars.iv919.unr, %scalar.ph1270.prol.loopexit ] ; 2 uses
  %.2545686 = phi i32 [ %i.ik, %scalar.ph1270 ], [ %.2545686.unr, %scalar.ph1270.prol.loopexit ]
  %i.hu = getelementptr [4 x i8], ptr %4, i64 %indvars.iv923 ; 2 uses
  %i.hv = getelementptr i8, ptr %i.hu, i64 -4
  %i.hw = load float, ptr %i.hv, align 4          ; 2 uses
  %i.hx = fadd float %i.hw, %i.hw
  %i.hy = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv919
  store float %i.hx, ptr %i.hy, align 4
  %i.hz = load float, ptr %i.hu, align 4          ; 2 uses
  %i.ia = fadd float %i.hz, %i.hz
  %i.ib = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv927
  store float %i.ia, ptr %i.ib, align 4
  %indvars.iv.next920 = add nsw i64 %indvars.iv919, %i.dx ; 2 uses
  %indvars.iv.next928 = add nsw i64 %indvars.iv927, %i.dx ; 2 uses
  %indvars.iv.next924 = add nsw i64 %indvars.iv923, %i.dz ; 2 uses
  %i.ic = getelementptr [4 x i8], ptr %4, i64 %indvars.iv.next924 ; 2 uses
  %i.id = getelementptr i8, ptr %i.ic, i64 -4
  %i.ie = load float, ptr %i.id, align 4          ; 2 uses
  %i.if = fadd float %i.ie, %i.ie
  %i.ig = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next920
  store float %i.if, ptr %i.ig, align 4
  %i.ih = load float, ptr %i.ic, align 4          ; 2 uses
  %i.ii = fadd float %i.ih, %i.ih
  %i.ij = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next928
  store float %i.ii, ptr %i.ij, align 4
  %indvars.iv.next920.1 = add nsw i64 %indvars.iv.next920, %i.dx
  %indvars.iv.next928.1 = add nsw i64 %indvars.iv.next928, %i.dx
  %indvars.iv.next924.1 = add nsw i64 %indvars.iv.next924, %i.dz
  %i.ik = add nuw nsw i32 %.2545686, 2            ; 2 uses
  %exitcond934.not.1 = icmp eq i32 %i.ik, %2
  br i1 %exitcond934.not.1, label %._crit_edge688, label %scalar.ph1270, !llvm.loop !1187

._crit_edge688:                                   ; preds = %scalar.ph1270.prol.loopexit, %scalar.ph1270, %middle.block1278
  %indvars.iv.next922 = add i64 %indvars.iv921, %i.dy
  %i.il = add nuw nsw i32 %.0535692, 1            ; 2 uses
  %indvars.iv.next918 = add i32 %indvars.iv917, %i.d
  %indvars.iv.next926 = sub i32 %indvars.iv925, %i.d
  %exitcond936.not = icmp eq i32 %i.il, %i.o
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond936.not, label %._crit_edge695.split, label %.lr.ph, !llvm.loop !1188

._crit_edge695.split:                             ; preds = %._crit_edge688, %.loopexit667
  %i.im = icmp eq i32 %0, 1                       ; 2 uses
  br i1 %i.im, label %.loopexit661, label %bb.b

bb.b:                                             ; preds = %._crit_edge695.split
  %i.in = icmp slt i32 %i.m, %2
  br i1 %i.in, label %.preheader660, label %.preheader663

.preheader663:                                    ; preds = %bb.b
  br i1 %i.dv, label %.lr.ph712, label %.loopexit661.thread1192

.lr.ph712:                                        ; preds = %.preheader663
  %i.io = icmp slt i32 %2, 1
  %i.ip = icmp slt i32 %0, 3
  %brmerge = or i1 %i.io, %i.ip
  br i1 %brmerge, label %.loopexit661.thread, label %.preheader662.lr.ph.preheader

.preheader662.lr.ph.preheader:                    ; preds = %.lr.ph712
  %i.iq = sext i32 %i.c to i64                    ; 3 uses
  %i.ir = add i32 %1, -1
  %i.is = mul i32 %i.d, %i.ir
  %i.it = zext nneg i32 %0 to i64                 ; 4 uses
  %i.iu = add nsw i32 %0, -3
  %i.iv = lshr i32 %i.iu, 1                       ; 4 uses
  %i.iw = shl nuw nsw i64 %i.it, 2
  %i.ix = shl nsw i64 %i.iq, 2
  %scevgep1304 = getelementptr i8, ptr %7, i64 8
  %i.iy = add nsw i32 %2, -1
  %i.iz = zext i32 %i.iy to i64                   ; 2 uses
  %i.ja = mul nuw nsw i64 %i.it, %i.iz
  %i.jb = shl i64 %i.ja, 2                        ; 2 uses
  %i.jc = add nsw i32 %0, -3
  %i.jd = lshr i32 %i.jc, 1
  %i.je = zext nneg i32 %i.jd to i64
  %i.jf = shl nuw nsw i64 %i.je, 3                ; 4 uses
  %i.jg = add i64 %i.jb, %i.jf
  %i.jh = add i64 %i.jg, 12                       ; 2 uses
  %scevgep1306 = getelementptr i8, ptr %7, i64 %i.jh
  %scevgep1308 = getelementptr i8, ptr %7, i64 8
  %scevgep1310 = getelementptr i8, ptr %7, i64 %i.jh
  %i.ji = sub nuw nsw i64 -12, %i.jf
  %scevgep1312 = getelementptr i8, ptr %4, i64 %i.ji
  %i.jj = mul nsw i64 %i.iq, %i.iz
  %i.jk = shl i64 %i.jj, 2                        ; 2 uses
  %i.jl = getelementptr i8, ptr %4, i64 %i.jk
  %scevgep1314 = getelementptr i8, ptr %i.jl, i64 -4
  %scevgep1316 = getelementptr i8, ptr %4, i64 4
  %i.jm = getelementptr i8, ptr %4, i64 %i.jk
  %i.jn = getelementptr i8, ptr %i.jm, i64 %i.jf
  %scevgep1318 = getelementptr i8, ptr %i.jn, i64 12
  %scevgep1320 = getelementptr i8, ptr %7, i64 4
  %i.jo = add i64 %i.jb, %i.jf
  %i.jp = add i64 %i.jo, 8                        ; 2 uses
  %scevgep1322 = getelementptr i8, ptr %7, i64 %i.jp
  %scevgep1324 = getelementptr i8, ptr %7, i64 4
  %scevgep1326 = getelementptr i8, ptr %7, i64 %i.jp
  %i.jq = add nsw i32 %0, -3                      ; 2 uses
  %i.jr = lshr i32 %i.jq, 1
  %narrow = add nuw i32 %i.jr, 1
  %i.js = zext i32 %narrow to i64                 ; 2 uses
  %min.iters.check1392 = icmp ult i32 %i.jq, 62
  %i.jt = zext nneg i32 %i.iv to i64
  %mul1288 = shl nuw nsw i64 %i.jt, 3
  %i.ju = zext nneg i32 %i.iv to i64
  %mul1292 = shl nuw nsw i64 %i.ju, 3
  %i.jv = zext nneg i32 %i.iv to i64
  %mul1296 = shl nuw nsw i64 %i.jv, 3
  %i.jw = zext nneg i32 %i.iv to i64
  %mul1300.neg = mul nsw i64 %i.jw, -8
  %stride.check1334 = icmp slt i32 %i.c, 0
  %n.vec1395 = and i64 %i.js, 4294967292          ; 5 uses
  %i.jx = shl nuw nsw i64 %n.vec1395, 1           ; 3 uses
  %i.jy = shl nuw nsw i64 %n.vec1395, 1
  %i.jz = trunc nuw i64 %n.vec1395 to i32
  %i.ka = shl i32 %i.jz, 1
  %i.kb = or disjoint i32 %i.ka, 2
  %cmp.n1414 = icmp eq i64 %n.vec1395, %i.js
  br label %.preheader662.lr.ph

.preheader660:                                    ; preds = %bb.b
  br i1 %i.dv, label %.lr.ph734, label %.loopexit661.thread1192

end_hunk_0
