Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtrttf?download=true
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@dtrttf_:bb.a
  %i.co = icmp eq i64 %index.next1067, %n.vec1064
  br i1 %i.co, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !12

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1068 = icmp eq i64 %i.am, %n.vec1064
  br i1 %cmp.n1068, label %._crit_edge.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv690.ph = phi i64 [ %indvars.iv688, %iter.check ], [ %indvars.iv688, %vector.memcheck ], [ %i.bz, %vec.epilog.iter.check ], [ %i.ck, %vec.epilog.middle.block ] ; 4 uses
  %indvars.iv686.ph = phi i64 [ %i.bs, %iter.check ], [ %i.bs, %vector.memcheck ], [ %i.ca, %vec.epilog.iter.check ], [ %i.cl, %vec.epilog.middle.block ] ; 2 uses
  %i.cp = sub i64 %i.ac, %indvars.iv690.ph
  %xtraiter1943 = and i64 %i.cp, 7                ; 2 uses
  %lcmp.mod1944.not = icmp eq i64 %xtraiter1943, 0
  br i1 %lcmp.mod1944.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv690.prol = phi i64 [ %indvars.iv.next691.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv690.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv686.prol = phi i64 [ %indvars.iv.next687.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv686.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter1945 = phi i64 [ %prol.iter1945.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep1008.prol = getelementptr [8 x i8], ptr %invariant.gep1007, i64 %indvars.iv690.prol
  %i.cq = load double, ptr %gep1008.prol, align 8, !tbaa !108
  %i.cr = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv686.prol
  store double %i.cq, ptr %i.cr, align 8, !tbaa !108
  %indvars.iv.next687.prol = add nsw i64 %indvars.iv686.prol, 1 ; 3 uses
  %indvars.iv.next691.prol = add nuw nsw i64 %indvars.iv690.prol, 1 ; 2 uses
  %prol.iter1945.next = add i64 %prol.iter1945, 1 ; 2 uses
  %prol.iter1945.cmp.not = icmp eq i64 %prol.iter1945.next, %xtraiter1943
  br i1 %prol.iter1945.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !13

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.next687.lcssa1942.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next687.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv690.unr = phi i64 [ %indvars.iv690.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next691.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv686.unr = phi i64 [ %indvars.iv686.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next687.prol, %vec.epilog.scalar.ph.prol ]
  %i.cs = sub i64 %indvars.iv690.ph, %i.ac
  %i.ct = icmp ugt i64 %i.cs, -8
  br i1 %i.ct, label %._crit_edge.loopexit, label %vec.epilog.scalar.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv678 = phi i64 [ %indvars.iv.next679.7, %.lr.ph ], [ %indvars.iv678.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.cu = mul nsw i64 %indvars.iv678, %i.ab
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cu
  %i.cv = load double, ptr %gep, align 8, !tbaa !108
  %i.cw = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv
  store double %i.cv, ptr %i.cw, align 8, !tbaa !108
  %indvars.iv.next679 = add nuw nsw i64 %indvars.iv678, 1
  %i.cx = mul nsw i64 %indvars.iv.next679, %i.ab
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cx
  %i.cy = load double, ptr %gep.1, align 8, !tbaa !108
  %i.cz = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.da = getelementptr i8, ptr %i.cz, i64 8
  store double %i.cy, ptr %i.da, align 8, !tbaa !108
  %indvars.iv.next679.1 = add nuw nsw i64 %indvars.iv678, 2
  %i.db = mul nsw i64 %indvars.iv.next679.1, %i.ab
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.db
  %i.dc = load double, ptr %gep.2, align 8, !tbaa !108
  %i.dd = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.de = getelementptr i8, ptr %i.dd, i64 16
  store double %i.dc, ptr %i.de, align 8, !tbaa !108
  %indvars.iv.next679.2 = add nuw nsw i64 %indvars.iv678, 3
  %i.df = mul nsw i64 %indvars.iv.next679.2, %i.ab
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.df
  %i.dg = load double, ptr %gep.3, align 8, !tbaa !108
  %i.dh = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.di = getelementptr i8, ptr %i.dh, i64 24
  store double %i.dg, ptr %i.di, align 8, !tbaa !108
  %indvars.iv.next679.3 = add nuw nsw i64 %indvars.iv678, 4
  %i.dj = mul nsw i64 %indvars.iv.next679.3, %i.ab
  %gep.4 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.dj
  %i.dk = load double, ptr %gep.4, align 8, !tbaa !108
  %i.dl = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.dm = getelementptr i8, ptr %i.dl, i64 32
  store double %i.dk, ptr %i.dm, align 8, !tbaa !108
  %indvars.iv.next679.4 = add nuw nsw i64 %indvars.iv678, 5
  %i.dn = mul nsw i64 %indvars.iv.next679.4, %i.ab
  %gep.5 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.dn
  %i.do = load double, ptr %gep.5, align 8, !tbaa !108
  %i.dp = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.dq = getelementptr i8, ptr %i.dp, i64 40
  store double %i.do, ptr %i.dq, align 8, !tbaa !108
  %indvars.iv.next679.5 = add nuw nsw i64 %indvars.iv678, 6
  %i.dr = mul nsw i64 %indvars.iv.next679.5, %i.ab
  %gep.6 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.dr
  %i.ds = load double, ptr %gep.6, align 8, !tbaa !108
  %i.dt = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.du = getelementptr i8, ptr %i.dt, i64 48
  store double %i.ds, ptr %i.du, align 8, !tbaa !108
  %indvars.iv.next679.6 = add nuw nsw i64 %indvars.iv678, 7
  %i.dv = mul nsw i64 %indvars.iv.next679.6, %i.ab
  %gep.7 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.dv
  %i.dw = load double, ptr %gep.7, align 8, !tbaa !108
  %i.dx = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.dy = getelementptr i8, ptr %i.dx, i64 56
  store double %i.dw, ptr %i.dy, align 8, !tbaa !108
  %indvars.iv.next.7 = add nsw i64 %indvars.iv, 8 ; 2 uses
  %indvars.iv.next679.7 = add nuw nsw i64 %indvars.iv678, 8 ; 2 uses
  %lftr.wideiv.7 = trunc i64 %indvars.iv.next679.7 to i32
  %exitcond.not.7 = icmp eq i32 %indvars.iv683, %lftr.wideiv.7
  br i1 %exitcond.not.7, label %.preheader484.loopexit, label %.lr.ph, !llvm.loop !14

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv690 = phi i64 [ %indvars.iv.next691.7, %vec.epilog.scalar.ph ], [ %indvars.iv690.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %indvars.iv686 = phi i64 [ %indvars.iv.next687.7, %vec.epilog.scalar.ph ], [ %indvars.iv686.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %gep1008 = getelementptr [8 x i8], ptr %invariant.gep1007, i64 %indvars.iv690
  %i.dz = load double, ptr %gep1008, align 8, !tbaa !108
  %i.ea = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv686
  store double %i.dz, ptr %i.ea, align 8, !tbaa !108
  %i.eb = getelementptr [8 x i8], ptr %invariant.gep1007, i64 %indvars.iv690
  %gep1008.1 = getelementptr i8, ptr %i.eb, i64 8
  %i.ec = load double, ptr %gep1008.1, align 8, !tbaa !108
  %i.ed = getelementptr [8 x i8], ptr %5, i64 %indvars.iv686
  %i.ee = getelementptr i8, ptr %i.ed, i64 8
  store double %i.ec, ptr %i.ee, align 8, !tbaa !108
  %i.ef = getelementptr [8 x i8], ptr %invariant.gep1007, i64 %indvars.iv690
  %gep1008.2 = getelementptr i8, ptr %i.ef, i64 16
  %i.eg = load double, ptr %gep1008.2, align 8, !tbaa !108
  %i.eh = getelementptr [8 x i8], ptr %5, i64 %indvars.iv686
  %i.ei = getelementptr i8, ptr %i.eh, i64 16
  store double %i.eg, ptr %i.ei, align 8, !tbaa !108
  %i.ej = getelementptr [8 x i8], ptr %invariant.gep1007, i64 %indvars.iv690
  %gep1008.3 = getelementptr i8, ptr %i.ej, i64 24
  %i.ek = load double, ptr %gep1008.3, align 8, !tbaa !108
  %i.el = getelementptr [8 x i8], ptr %5, i64 %indvars.iv686
  %i.em = getelementptr i8, ptr %i.el, i64 24
  store double %i.ek, ptr %i.em, align 8, !tbaa !108
  %i.en = getelementptr [8 x i8], ptr %invariant.gep1007, i64 %indvars.iv690
  %gep1008.4 = getelementptr i8, ptr %i.en, i64 32
  %i.eo = load double, ptr %gep1008.4, align 8, !tbaa !108
  %i.ep = getelementptr [8 x i8], ptr %5, i64 %indvars.iv686
  %i.eq = getelementptr i8, ptr %i.ep, i64 32
  store double %i.eo, ptr %i.eq, align 8, !tbaa !108
  %i.er = getelementptr [8 x i8], ptr %invariant.gep1007, i64 %indvars.iv690
  %gep1008.5 = getelementptr i8, ptr %i.er, i64 40
  %i.es = load double, ptr %gep1008.5, align 8, !tbaa !108
  %i.et = getelementptr [8 x i8], ptr %5, i64 %indvars.iv686
  %i.eu = getelementptr i8, ptr %i.et, i64 40
  store double %i.es, ptr %i.eu, align 8, !tbaa !108
  %i.ev = getelementptr [8 x i8], ptr %invariant.gep1007, i64 %indvars.iv690
  %gep1008.6 = getelementptr i8, ptr %i.ev, i64 48
  %i.ew = load double, ptr %gep1008.6, align 8, !tbaa !108
  %i.ex = getelementptr [8 x i8], ptr %5, i64 %indvars.iv686
  %i.ey = getelementptr i8, ptr %i.ex, i64 48
  store double %i.ew, ptr %i.ey, align 8, !tbaa !108
  %i.ez = getelementptr [8 x i8], ptr %invariant.gep1007, i64 %indvars.iv690
  %gep1008.7 = getelementptr i8, ptr %i.ez, i64 56
  %i.fa = load double, ptr %gep1008.7, align 8, !tbaa !108
  %i.fb = getelementptr [8 x i8], ptr %5, i64 %indvars.iv686
  %i.fc = getelementptr i8, ptr %i.fb, i64 56
  store double %i.fa, ptr %i.fc, align 8, !tbaa !108
  %indvars.iv.next687.7 = add nsw i64 %indvars.iv686, 8 ; 2 uses
  %indvars.iv.next691.7 = add nuw nsw i64 %indvars.iv690, 8 ; 2 uses
  %exitcond695.not.7 = icmp eq i64 %indvars.iv.next691.7, %wide.trip.count
  br i1 %exitcond695.not.7, label %._crit_edge.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !15

._crit_edge.loopexit:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next687.lcssa = phi i64 [ %i.cl, %vec.epilog.middle.block ], [ %i.ca, %middle.block ], [ %indvars.iv.next687.lcssa1942.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %indvars.iv.next687.7, %vec.epilog.scalar.ph ]
  %i.fd = trunc nsw i64 %indvars.iv.next687.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader484
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader484 ], [ %i.fd, %._crit_edge.loopexit ]
  %indvars.iv.next689 = add nuw nsw i64 %indvars.iv688, 1 ; 2 uses
  %exitcond698.not = icmp eq i64 %indvars.iv.next689, %wide.trip.count697
  br i1 %exitcond698.not, label %.loopexit, label %.lr.ph498, !llvm.loop !16

.preheader482.preheader:                          ; preds = %bb.n
  %i.fe = sub nsw i32 %i.u, %i.i
  %i.ff = xor i32 %i.v, -1
  %i.fg = add nsw i32 %i.i, %i.ff
  %i.fh = sext i32 %i.d to i64                    ; 12 uses
  %i.fi = zext nneg i32 %i.i to i64               ; 4 uses
  %i.fj = zext nneg i32 %i.v to i64               ; 4 uses
  %i.fk = shl nuw nsw i64 %i.fj, 3
  %i.fl = add i64 %i.fk, %i.b
  %i.fm = add i64 %i.fl, 16
  %i.fn = add i32 %.0369, %i.v
  %i.fo = sub i32 %i.fn, %i.i
  %i.fp = shl nsw i64 %i.fh, 3
  %i.fq = add nuw nsw i64 %i.fi, 2305843009213693951
  %i.fr = mul i64 %i.fq, %i.fh
  %i.fs = shl i64 %i.fr, 3
  %i.ft = add i64 %i.fs, %i.a
  %i.fu = sub i64 %i.b, %i.ft
  %ident.check1104.not = icmp eq i32 %i.d, 1
  br label %iter.check1156

iter.check1156:                                   ; preds = %._crit_edge510, %.preheader482.preheader
  %indvar = phi i64 [ %indvar.next, %._crit_edge510 ], [ 0, %.preheader482.preheader ] ; 5 uses
  %indvars.iv720 = phi i64 [ %indvars.iv.next721, %._crit_edge510 ], [ %i.fi, %.preheader482.preheader ] ; 10 uses
  %indvars.iv711 = phi i32 [ %indvars.iv.next712, %._crit_edge510 ], [ %i.fg, %.preheader482.preheader ] ; 2 uses
  %.3515 = phi i32 [ %i.kr, %._crit_edge510 ], [ %i.fe, %.preheader482.preheader ]
  %i.fv = trunc i64 %indvar to i32
  %i.fw = add i32 %i.fo, %i.fv                    ; 3 uses
  %i.fx = zext i32 %i.fw to i64
  %i.fy = add nuw nsw i64 %i.fx, 1                ; 5 uses
  %i.fz = sext i32 %indvars.iv711 to i64          ; 7 uses
  %indvars.iv.next721 = add nsw i64 %indvars.iv720, -1 ; 4 uses
  %i.ga = mul nsw i64 %indvars.iv.next721, %i.fh
  %i.gb = sext i32 %.3515 to i64                  ; 8 uses
  %invariant.gep1009 = getelementptr [8 x i8], ptr %3, i64 %i.ga ; 11 uses
  %min.iters.check1140 = icmp samesign ult i64 %indvars.iv720, 4
  br i1 %min.iters.check1140, label %vec.epilog.scalar.ph1158.preheader, label %vector.memcheck1141

vector.memcheck1141:                              ; preds = %iter.check1156
  %i.gc = mul i64 %indvar, %i.fp
  %i.gd = add i64 %i.fu, %i.gc
  %i.ge = shl nsw i64 %i.gb, 3
  %i.gf = add i64 %i.gd, %i.ge
  %i.gg = add i64 %i.gf, -1
  %diff.check1142 = icmp ult i64 %i.gg, 127
  br i1 %diff.check1142, label %vec.epilog.scalar.ph1158.preheader, label %vector.main.loop.iter.check1143

vector.main.loop.iter.check1143:                  ; preds = %vector.memcheck1141
  %min.iters.check1144 = icmp samesign ult i64 %indvars.iv720, 16
  br i1 %min.iters.check1144, label %vec.epilog.ph1160, label %vector.ph1145

vector.ph1145:                                    ; preds = %vector.main.loop.iter.check1143
  %i.gh = and i64 %indvars.iv720, 12
  %n.vec1146 = and i64 %indvars.iv720, 9223372036854775792 ; 6 uses
  %i.gi = add i64 %n.vec1146, %i.gb               ; 2 uses
  %invariant.gep2049 = getelementptr [8 x i8], ptr %5, i64 %i.gb
  br label %vector.body1147

vector.body1147:                                  ; preds = %vector.ph1145, %vector.body1147
  %index1148 = phi i64 [ 0, %vector.ph1145 ], [ %index.next1153, %vector.body1147 ] ; 3 uses
  %i.gj = getelementptr [8 x i8], ptr %invariant.gep1009, i64 %index1148 ; 4 uses
  %i.gk = getelementptr i8, ptr %i.gj, i64 32
  %i.gl = getelementptr i8, ptr %i.gj, i64 64
  %i.gm = getelementptr i8, ptr %i.gj, i64 96
  %wide.load1149 = load <4 x double>, ptr %i.gj, align 8, !tbaa !108
  %wide.load1150 = load <4 x double>, ptr %i.gk, align 8, !tbaa !108
  %wide.load1151 = load <4 x double>, ptr %i.gl, align 8, !tbaa !108
  %wide.load1152 = load <4 x double>, ptr %i.gm, align 8, !tbaa !108
  %gep2050 = getelementptr [8 x i8], ptr %invariant.gep2049, i64 %index1148 ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %gep2050, i64 32
  %i.go = getelementptr inbounds nuw i8, ptr %gep2050, i64 64
  %i.gp = getelementptr inbounds nuw i8, ptr %gep2050, i64 96
  store <4 x double> %wide.load1149, ptr %gep2050, align 8, !tbaa !108
  store <4 x double> %wide.load1150, ptr %i.gn, align 8, !tbaa !108
  store <4 x double> %wide.load1151, ptr %i.go, align 8, !tbaa !108
  store <4 x double> %wide.load1152, ptr %i.gp, align 8, !tbaa !108
  %index.next1153 = add nuw i64 %index1148, 16    ; 2 uses
  %i.gq = icmp eq i64 %index.next1153, %n.vec1146
  br i1 %i.gq, label %middle.block1154, label %vector.body1147, !llvm.loop !17

middle.block1154:                                 ; preds = %vector.body1147
  %ind.escape = add nsw i64 %n.vec1146, -1
  %cmp.n1155 = icmp eq i64 %indvars.iv720, %n.vec1146
  br i1 %cmp.n1155, label %._crit_edge503, label %vec.epilog.iter.check1157

vec.epilog.iter.check1157:                        ; preds = %middle.block1154
  %min.epilog.iters.check1159 = icmp eq i64 %i.gh, 0
  br i1 %min.epilog.iters.check1159, label %vec.epilog.scalar.ph1158.preheader, label %vec.epilog.ph1160, !prof !112

vec.epilog.ph1160:                                ; preds = %vector.main.loop.iter.check1143, %vec.epilog.iter.check1157
  %vec.epilog.resume.val1161 = phi i64 [ %n.vec1146, %vec.epilog.iter.check1157 ], [ 0, %vector.main.loop.iter.check1143 ]
  %n.vec1162 = and i64 %indvars.iv720, 9223372036854775804 ; 5 uses
  %i.gr = add i64 %n.vec1162, %i.gb               ; 2 uses
  %invariant.gep2051 = getelementptr [8 x i8], ptr %5, i64 %i.gb
  br label %vec.epilog.vector.body1163

vec.epilog.vector.body1163:                       ; preds = %vec.epilog.vector.body1163, %vec.epilog.ph1160
  %index1164 = phi i64 [ %vec.epilog.resume.val1161, %vec.epilog.ph1160 ], [ %index.next1166, %vec.epilog.vector.body1163 ] ; 3 uses
  %i.gs = getelementptr [8 x i8], ptr %invariant.gep1009, i64 %index1164
  %wide.load1165 = load <4 x double>, ptr %i.gs, align 8, !tbaa !108
  %gep2052 = getelementptr [8 x i8], ptr %invariant.gep2051, i64 %index1164
  store <4 x double> %wide.load1165, ptr %gep2052, align 8, !tbaa !108
  %index.next1166 = add nuw i64 %index1164, 4     ; 2 uses
  %i.gt = icmp eq i64 %index.next1166, %n.vec1162
  br i1 %i.gt, label %vec.epilog.middle.block1167, label %vec.epilog.vector.body1163, !llvm.loop !18

vec.epilog.middle.block1167:                      ; preds = %vec.epilog.vector.body1163
  %ind.escape1168 = add nsw i64 %n.vec1162, -1
  %cmp.n1169 = icmp eq i64 %indvars.iv720, %n.vec1162
  br i1 %cmp.n1169, label %._crit_edge503, label %vec.epilog.scalar.ph1158.preheader

vec.epilog.scalar.ph1158.preheader:               ; preds = %iter.check1156, %vector.memcheck1141, %vec.epilog.iter.check1157, %vec.epilog.middle.block1167
  %indvars.iv702.ph = phi i64 [ 0, %iter.check1156 ], [ 0, %vector.memcheck1141 ], [ %n.vec1146, %vec.epilog.iter.check1157 ], [ %n.vec1162, %vec.epilog.middle.block1167 ] ; 4 uses
  %indvars.iv700.ph = phi i64 [ %i.gb, %iter.check1156 ], [ %i.gb, %vector.memcheck1141 ], [ %i.gi, %vec.epilog.iter.check1157 ], [ %i.gr, %vec.epilog.middle.block1167 ] ; 2 uses
  %i.gu = sub nsw i64 %indvars.iv720, %indvars.iv702.ph
  %xtraiter1946 = and i64 %i.gu, 7                ; 2 uses
  %lcmp.mod1947.not = icmp eq i64 %xtraiter1946, 0
  br i1 %lcmp.mod1947.not, label %vec.epilog.scalar.ph1158.prol.loopexit, label %vec.epilog.scalar.ph1158.prol

vec.epilog.scalar.ph1158.prol:                    ; preds = %vec.epilog.scalar.ph1158.preheader, %vec.epilog.scalar.ph1158.prol
  %indvars.iv702.prol = phi i64 [ %indvars.iv.next703.prol, %vec.epilog.scalar.ph1158.prol ], [ %indvars.iv702.ph, %vec.epilog.scalar.ph1158.preheader ] ; 3 uses
  %indvars.iv700.prol = phi i64 [ %indvars.iv.next701.prol, %vec.epilog.scalar.ph1158.prol ], [ %indvars.iv700.ph, %vec.epilog.scalar.ph1158.preheader ] ; 2 uses
  %prol.iter1948 = phi i64 [ %prol.iter1948.next, %vec.epilog.scalar.ph1158.prol ], [ 0, %vec.epilog.scalar.ph1158.preheader ]
  %gep1010.prol = getelementptr [8 x i8], ptr %invariant.gep1009, i64 %indvars.iv702.prol
  %i.gv = load double, ptr %gep1010.prol, align 8, !tbaa !108
  %i.gw = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv700.prol
  store double %i.gv, ptr %i.gw, align 8, !tbaa !108
  %indvars.iv.next701.prol = add nsw i64 %indvars.iv700.prol, 1 ; 3 uses
  %indvars.iv.next703.prol = add nuw nsw i64 %indvars.iv702.prol, 1 ; 2 uses
  %prol.iter1948.next = add i64 %prol.iter1948, 1 ; 2 uses
  %prol.iter1948.cmp.not = icmp eq i64 %prol.iter1948.next, %xtraiter1946
  br i1 %prol.iter1948.cmp.not, label %vec.epilog.scalar.ph1158.prol.loopexit, label %vec.epilog.scalar.ph1158.prol, !llvm.loop !19

vec.epilog.scalar.ph1158.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1158.prol, %vec.epilog.scalar.ph1158.preheader
  %indvars.iv702.lcssa1939.unr = phi i64 [ poison, %vec.epilog.scalar.ph1158.preheader ], [ %indvars.iv702.prol, %vec.epilog.scalar.ph1158.prol ]
  %indvars.iv.next701.lcssa1938.unr = phi i64 [ poison, %vec.epilog.scalar.ph1158.preheader ], [ %indvars.iv.next701.prol, %vec.epilog.scalar.ph1158.prol ]
  %indvars.iv702.unr = phi i64 [ %indvars.iv702.ph, %vec.epilog.scalar.ph1158.preheader ], [ %indvars.iv.next703.prol, %vec.epilog.scalar.ph1158.prol ]
  %indvars.iv700.unr = phi i64 [ %indvars.iv700.ph, %vec.epilog.scalar.ph1158.preheader ], [ %indvars.iv.next701.prol, %vec.epilog.scalar.ph1158.prol ]
  %i.gx = sub i64 %indvar, %i.fi
  %i.gy = add i64 %i.gx, %indvars.iv702.ph
  %i.gz = icmp ugt i64 %i.gy, -8
  br i1 %i.gz, label %._crit_edge503, label %vec.epilog.scalar.ph1158

vec.epilog.scalar.ph1158:                         ; preds = %vec.epilog.scalar.ph1158.prol.loopexit, %vec.epilog.scalar.ph1158
  %indvars.iv702 = phi i64 [ %indvars.iv.next703.7, %vec.epilog.scalar.ph1158 ], [ %indvars.iv702.unr, %vec.epilog.scalar.ph1158.prol.loopexit ] ; 9 uses
  %indvars.iv700 = phi i64 [ %indvars.iv.next701.7, %vec.epilog.scalar.ph1158 ], [ %indvars.iv700.unr, %vec.epilog.scalar.ph1158.prol.loopexit ] ; 9 uses
  %gep1010 = getelementptr [8 x i8], ptr %invariant.gep1009, i64 %indvars.iv702
  %i.ha = load double, ptr %gep1010, align 8, !tbaa !108
  %i.hb = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv700
  store double %i.ha, ptr %i.hb, align 8, !tbaa !108
  %i.hc = getelementptr [8 x i8], ptr %invariant.gep1009, i64 %indvars.iv702
  %gep1010.1 = getelementptr i8, ptr %i.hc, i64 8
  %i.hd = load double, ptr %gep1010.1, align 8, !tbaa !108
  %i.he = getelementptr [8 x i8], ptr %5, i64 %indvars.iv700
  %i.hf = getelementptr i8, ptr %i.he, i64 8
  store double %i.hd, ptr %i.hf, align 8, !tbaa !108
  %i.hg = getelementptr [8 x i8], ptr %invariant.gep1009, i64 %indvars.iv702
  %gep1010.2 = getelementptr i8, ptr %i.hg, i64 16
  %i.hh = load double, ptr %gep1010.2, align 8, !tbaa !108
  %i.hi = getelementptr [8 x i8], ptr %5, i64 %indvars.iv700
  %i.hj = getelementptr i8, ptr %i.hi, i64 16
  store double %i.hh, ptr %i.hj, align 8, !tbaa !108
  %i.hk = getelementptr [8 x i8], ptr %invariant.gep1009, i64 %indvars.iv702
  %gep1010.3 = getelementptr i8, ptr %i.hk, i64 24
  %i.hl = load double, ptr %gep1010.3, align 8, !tbaa !108
  %i.hm = getelementptr [8 x i8], ptr %5, i64 %indvars.iv700
  %i.hn = getelementptr i8, ptr %i.hm, i64 24
  store double %i.hl, ptr %i.hn, align 8, !tbaa !108
  %i.ho = getelementptr [8 x i8], ptr %invariant.gep1009, i64 %indvars.iv702
  %gep1010.4 = getelementptr i8, ptr %i.ho, i64 32
  %i.hp = load double, ptr %gep1010.4, align 8, !tbaa !108
  %i.hq = getelementptr [8 x i8], ptr %5, i64 %indvars.iv700
  %i.hr = getelementptr i8, ptr %i.hq, i64 32
  store double %i.hp, ptr %i.hr, align 8, !tbaa !108
  %i.hs = getelementptr [8 x i8], ptr %invariant.gep1009, i64 %indvars.iv702
  %gep1010.5 = getelementptr i8, ptr %i.hs, i64 40
  %i.ht = load double, ptr %gep1010.5, align 8, !tbaa !108
  %i.hu = getelementptr [8 x i8], ptr %5, i64 %indvars.iv700
  %i.hv = getelementptr i8, ptr %i.hu, i64 40
  store double %i.ht, ptr %i.hv, align 8, !tbaa !108
  %i.hw = getelementptr [8 x i8], ptr %invariant.gep1009, i64 %indvars.iv702
  %gep1010.6 = getelementptr i8, ptr %i.hw, i64 48
  %i.hx = load double, ptr %gep1010.6, align 8, !tbaa !108
  %i.hy = getelementptr [8 x i8], ptr %5, i64 %indvars.iv700
  %i.hz = getelementptr i8, ptr %i.hy, i64 48
  store double %i.hx, ptr %i.hz, align 8, !tbaa !108
  %indvars.iv.next703.6 = add nuw nsw i64 %indvars.iv702, 7 ; 2 uses
  %gep1010.7 = getelementptr [8 x i8], ptr %invariant.gep1009, i64 %indvars.iv.next703.6
  %i.ia = load double, ptr %gep1010.7, align 8, !tbaa !108
  %i.ib = getelementptr [8 x i8], ptr %5, i64 %indvars.iv700
  %i.ic = getelementptr i8, ptr %i.ib, i64 56
  store double %i.ia, ptr %i.ic, align 8, !tbaa !108
  %indvars.iv.next701.7 = add nsw i64 %indvars.iv700, 8 ; 2 uses
  %indvars.iv.next703.7 = add nuw nsw i64 %indvars.iv702, 8 ; 2 uses
  %exitcond708.not.7 = icmp eq i64 %indvars.iv.next703.7, %indvars.iv720
  br i1 %exitcond708.not.7, label %._crit_edge503, label %vec.epilog.scalar.ph1158, !llvm.loop !20

._crit_edge503:                                   ; preds = %vec.epilog.scalar.ph1158.prol.loopexit, %vec.epilog.scalar.ph1158, %vec.epilog.middle.block1167, %middle.block1154
  %indvars.iv702.lcssa = phi i64 [ %ind.escape1168, %vec.epilog.middle.block1167 ], [ %ind.escape, %middle.block1154 ], [ %indvars.iv702.lcssa1939.unr, %vec.epilog.scalar.ph1158.prol.loopexit ], [ %indvars.iv.next703.6, %vec.epilog.scalar.ph1158 ]
  %indvars.iv.next701.lcssa = phi i64 [ %i.gr, %vec.epilog.middle.block1167 ], [ %i.gi, %middle.block1154 ], [ %indvars.iv.next701.lcssa1938.unr, %vec.epilog.scalar.ph1158.prol.loopexit ], [ %indvars.iv.next701.7, %vec.epilog.scalar.ph1158 ] ; 7 uses
  %i.id = sub nsw i64 %indvars.iv.next721, %i.fj  ; 2 uses
  %.not448.not505 = icmp slt i64 %i.id, %i.fj
  br i1 %.not448.not505, label %iter.check1123, label %._crit_edge510

iter.check1123:                                   ; preds = %._crit_edge503
  %invariant.gep1011 = getelementptr [8 x i8], ptr %3, i64 %i.id ; 11 uses
  %min.iters.check1107 = icmp ugt i32 %i.fw, 2
  %or.cond1869 = select i1 %min.iters.check1107, i1 %ident.check1104.not, i1 false
  br i1 %or.cond1869, label %vector.memcheck1108, label %.lr.ph509.preheader

vector.memcheck1108:                              ; preds = %iter.check1123
  %i.ie = add i64 %indvar, %i.gb
  %i.if = shl i64 %i.ie, 3
  %i.ig = add i64 %i.fm, %i.if
  %i.ih = add nsw i64 %i.fi, %i.fz
  %i.ii = shl nsw i64 %i.ih, 3
  %i.ij = add i64 %i.ii, %i.a
  %i.ik = sub i64 %i.ig, %i.ij
  %i.il = shl i64 %indvars.iv702.lcssa, 3
  %i.im = add i64 %i.ik, %i.il
  %i.in = add i64 %i.im, -1
  %diff.check1109 = icmp ult i64 %i.in, 127
  br i1 %diff.check1109, label %.lr.ph509.preheader, label %vector.main.loop.iter.check1110

vector.main.loop.iter.check1110:                  ; preds = %vector.memcheck1108
  %min.iters.check1111 = icmp ult i32 %i.fw, 15
  br i1 %min.iters.check1111, label %vec.epilog.ph1127, label %vector.ph1112

vector.ph1112:                                    ; preds = %vector.main.loop.iter.check1110
  %i.io = and i64 %i.fy, 12
  %n.vec1113 = and i64 %i.fy, 8589934576          ; 5 uses
  %i.ip = add nsw i64 %n.vec1113, %i.fz
  %i.iq = add i64 %indvars.iv.next701.lcssa, %n.vec1113 ; 2 uses
  %invariant.gep2053 = getelementptr [8 x i8], ptr %invariant.gep1011, i64 %i.fz
  %i.ir = getelementptr [8 x i8], ptr %5, i64 %indvars.iv.next701.lcssa
  br label %vector.body1114

vector.body1114:                                  ; preds = %vector.ph1112, %vector.body1114
  %index1115 = phi i64 [ 0, %vector.ph1112 ], [ %index.next1120, %vector.body1114 ] ; 3 uses
  %gep2054 = getelementptr [8 x i8], ptr %invariant.gep2053, i64 %index1115 ; 4 uses
  %i.is = getelementptr i8, ptr %gep2054, i64 32
  %i.it = getelementptr i8, ptr %gep2054, i64 64
  %i.iu = getelementptr i8, ptr %gep2054, i64 96
  %wide.load1116 = load <4 x double>, ptr %gep2054, align 8, !tbaa !108
  %wide.load1117 = load <4 x double>, ptr %i.is, align 8, !tbaa !108
  %wide.load1118 = load <4 x double>, ptr %i.it, align 8, !tbaa !108
  %wide.load1119 = load <4 x double>, ptr %i.iu, align 8, !tbaa !108
  %i.iv = getelementptr [8 x i8], ptr %i.ir, i64 %index1115 ; 4 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 32
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 64
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 96
  store <4 x double> %wide.load1116, ptr %i.iv, align 8, !tbaa !108
  store <4 x double> %wide.load1117, ptr %i.iw, align 8, !tbaa !108
  store <4 x double> %wide.load1118, ptr %i.ix, align 8, !tbaa !108
  store <4 x double> %wide.load1119, ptr %i.iy, align 8, !tbaa !108
  %index.next1120 = add nuw i64 %index1115, 16    ; 2 uses
  %i.iz = icmp eq i64 %index.next1120, %n.vec1113
  br i1 %i.iz, label %middle.block1121, label %vector.body1114, !llvm.loop !21

middle.block1121:                                 ; preds = %vector.body1114
  %cmp.n1122 = icmp eq i64 %i.fy, %n.vec1113
  br i1 %cmp.n1122, label %._crit_edge510, label %vec.epilog.iter.check1124

vec.epilog.iter.check1124:                        ; preds = %middle.block1121
  %min.epilog.iters.check1126 = icmp eq i64 %i.io, 0
  br i1 %min.epilog.iters.check1126, label %.lr.ph509.preheader, label %vec.epilog.ph1127, !prof !112

vec.epilog.ph1127:                                ; preds = %vector.main.loop.iter.check1110, %vec.epilog.iter.check1124
  %vec.epilog.resume.val1128 = phi i64 [ %n.vec1113, %vec.epilog.iter.check1124 ], [ 0, %vector.main.loop.iter.check1110 ]
  %n.vec1129 = and i64 %i.fy, 8589934588          ; 4 uses
  %i.ja = add nsw i64 %n.vec1129, %i.fz
  %i.jb = add i64 %indvars.iv.next701.lcssa, %n.vec1129 ; 2 uses
  %invariant.gep2055 = getelementptr [8 x i8], ptr %invariant.gep1011, i64 %i.fz
  %i.jc = getelementptr [8 x i8], ptr %5, i64 %indvars.iv.next701.lcssa
  br label %vec.epilog.vector.body1130

vec.epilog.vector.body1130:                       ; preds = %vec.epilog.vector.body1130, %vec.epilog.ph1127
  %index1131 = phi i64 [ %vec.epilog.resume.val1128, %vec.epilog.ph1127 ], [ %index.next1133, %vec.epilog.vector.body1130 ] ; 3 uses
  %gep2056 = getelementptr [8 x i8], ptr %invariant.gep2055, i64 %index1131
  %wide.load1132 = load <4 x double>, ptr %gep2056, align 8, !tbaa !108
  %i.jd = getelementptr [8 x i8], ptr %i.jc, i64 %index1131
  store <4 x double> %wide.load1132, ptr %i.jd, align 8, !tbaa !108
  %index.next1133 = add nuw i64 %index1131, 4     ; 2 uses
  %i.je = icmp eq i64 %index.next1133, %n.vec1129
  br i1 %i.je, label %vec.epilog.middle.block1134, label %vec.epilog.vector.body1130, !llvm.loop !22

vec.epilog.middle.block1134:                      ; preds = %vec.epilog.vector.body1130
  %cmp.n1135 = icmp eq i64 %i.fy, %n.vec1129
  br i1 %cmp.n1135, label %._crit_edge510, label %.lr.ph509.preheader

.lr.ph509.preheader:                              ; preds = %iter.check1123, %vector.memcheck1108, %vec.epilog.iter.check1124, %vec.epilog.middle.block1134
  %indvars.iv713.ph = phi i64 [ %i.fz, %iter.check1123 ], [ %i.fz, %vector.memcheck1108 ], [ %i.ip, %vec.epilog.iter.check1124 ], [ %i.ja, %vec.epilog.middle.block1134 ] ; 3 uses
  %indvars.iv709.ph = phi i64 [ %indvars.iv.next701.lcssa, %iter.check1123 ], [ %indvars.iv.next701.lcssa, %vector.memcheck1108 ], [ %i.iq, %vec.epilog.iter.check1124 ], [ %i.jb, %vec.epilog.middle.block1134 ] ; 2 uses
  %i.jf = trunc i64 %indvars.iv713.ph to i32      ; 2 uses
  %i.jg = sub i32 %.0369, %i.jf
  %xtraiter1949 = and i32 %i.jg, 7                ; 2 uses
  %lcmp.mod1950.not = icmp eq i32 %xtraiter1949, 0
  br i1 %lcmp.mod1950.not, label %.lr.ph509.prol.loopexit, label %.lr.ph509.prol

.lr.ph509.prol:                                   ; preds = %.lr.ph509.preheader, %.lr.ph509.prol
  %indvars.iv713.prol = phi i64 [ %indvars.iv.next714.prol, %.lr.ph509.prol ], [ %indvars.iv713.ph, %.lr.ph509.preheader ] ; 2 uses
  %indvars.iv709.prol = phi i64 [ %indvars.iv.next710.prol, %.lr.ph509.prol ], [ %indvars.iv709.ph, %.lr.ph509.preheader ] ; 2 uses
  %prol.iter1951 = phi i32 [ %prol.iter1951.next, %.lr.ph509.prol ], [ 0, %.lr.ph509.preheader ]
  %i.jh = mul nsw i64 %indvars.iv713.prol, %i.fh
  %gep1012.prol = getelementptr [8 x i8], ptr %invariant.gep1011, i64 %i.jh
  %i.ji = load double, ptr %gep1012.prol, align 8, !tbaa !108
  %i.jj = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv709.prol
  store double %i.ji, ptr %i.jj, align 8, !tbaa !108
  %indvars.iv.next710.prol = add nsw i64 %indvars.iv709.prol, 1 ; 3 uses
  %indvars.iv.next714.prol = add nsw i64 %indvars.iv713.prol, 1 ; 2 uses
  %prol.iter1951.next = add i32 %prol.iter1951, 1 ; 2 uses
  %prol.iter1951.cmp.not = icmp eq i32 %prol.iter1951.next, %xtraiter1949
  br i1 %prol.iter1951.cmp.not, label %.lr.ph509.prol.loopexit, label %.lr.ph509.prol, !llvm.loop !23

.lr.ph509.prol.loopexit:                          ; preds = %.lr.ph509.prol, %.lr.ph509.preheader
end_hunk_0
begin_hunk_1_@dtrttf_:bb.a
  store <4 x double> %wide.load1410, ptr %gep2086, align 8, !tbaa !108
  store <4 x double> %wide.load1411, ptr %i.acg, align 8, !tbaa !108
  store <4 x double> %wide.load1412, ptr %i.ach, align 8, !tbaa !108
  store <4 x double> %wide.load1413, ptr %i.aci, align 8, !tbaa !108
  %index.next1414 = add nuw i64 %index1409, 16    ; 2 uses
  %i.acj = icmp eq i64 %index.next1414, %n.vec1407
  br i1 %i.acj, label %middle.block1415, label %vector.body1408, !llvm.loop !57

middle.block1415:                                 ; preds = %vector.body1408
  %cmp.n1416 = icmp eq i64 %i.aad, %n.vec1407
  br i1 %cmp.n1416, label %._crit_edge569, label %vec.epilog.iter.check1418

vec.epilog.iter.check1418:                        ; preds = %middle.block1415
  %min.epilog.iters.check1420 = icmp eq i64 %i.aby, 0
  br i1 %min.epilog.iters.check1420, label %vec.epilog.scalar.ph1419.preheader, label %vec.epilog.ph1421, !prof !112

vec.epilog.ph1421:                                ; preds = %vector.main.loop.iter.check1404, %vec.epilog.iter.check1418
  %vec.epilog.resume.val1422 = phi i64 [ %n.vec1407, %vec.epilog.iter.check1418 ], [ 0, %vector.main.loop.iter.check1404 ]
  %n.vec1423 = and i64 %i.aad, -4                 ; 4 uses
  %i.ack = add i64 %indvars.iv834, %n.vec1423
  %i.acl = add i64 %n.vec1423, %i.abs             ; 2 uses
  %i.acm = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv834
  %invariant.gep2087 = getelementptr [8 x i8], ptr %5, i64 %i.abs
  br label %vec.epilog.vector.body1424

vec.epilog.vector.body1424:                       ; preds = %vec.epilog.vector.body1424, %vec.epilog.ph1421
  %index1425 = phi i64 [ %vec.epilog.resume.val1422, %vec.epilog.ph1421 ], [ %index.next1427, %vec.epilog.vector.body1424 ] ; 3 uses
  %i.acn = getelementptr [8 x i8], ptr %i.acm, i64 %index1425
  %wide.load1426 = load <4 x double>, ptr %i.acn, align 8, !tbaa !108
  %gep2088 = getelementptr [8 x i8], ptr %invariant.gep2087, i64 %index1425
  store <4 x double> %wide.load1426, ptr %gep2088, align 8, !tbaa !108
  %index.next1427 = add nuw i64 %index1425, 4     ; 2 uses
  %i.aco = icmp eq i64 %index.next1427, %n.vec1423
  br i1 %i.aco, label %vec.epilog.middle.block1428, label %vec.epilog.vector.body1424, !llvm.loop !58

vec.epilog.middle.block1428:                      ; preds = %vec.epilog.vector.body1424
  %cmp.n1429 = icmp eq i64 %i.aad, %n.vec1423
  br i1 %cmp.n1429, label %._crit_edge569, label %vec.epilog.scalar.ph1419.preheader

vec.epilog.scalar.ph1419.preheader:               ; preds = %iter.check1417, %vector.memcheck1402, %vec.epilog.iter.check1418, %vec.epilog.middle.block1428
  %indvars.iv836.ph = phi i64 [ %indvars.iv834, %iter.check1417 ], [ %indvars.iv834, %vector.memcheck1402 ], [ %i.abz, %vec.epilog.iter.check1418 ], [ %i.ack, %vec.epilog.middle.block1428 ] ; 4 uses
  %indvars.iv832.ph = phi i64 [ %i.abs, %iter.check1417 ], [ %i.abs, %vector.memcheck1402 ], [ %i.aca, %vec.epilog.iter.check1418 ], [ %i.acl, %vec.epilog.middle.block1428 ] ; 2 uses
  %i.acp = sub i64 %i.zs, %indvars.iv836.ph
  %xtraiter1973 = and i64 %i.acp, 7               ; 2 uses
  %lcmp.mod1974.not = icmp eq i64 %xtraiter1973, 0
  br i1 %lcmp.mod1974.not, label %vec.epilog.scalar.ph1419.prol.loopexit, label %vec.epilog.scalar.ph1419.prol

vec.epilog.scalar.ph1419.prol:                    ; preds = %vec.epilog.scalar.ph1419.preheader, %vec.epilog.scalar.ph1419.prol
  %indvars.iv836.prol = phi i64 [ %indvars.iv.next837.prol, %vec.epilog.scalar.ph1419.prol ], [ %indvars.iv836.ph, %vec.epilog.scalar.ph1419.preheader ] ; 2 uses
  %indvars.iv832.prol = phi i64 [ %indvars.iv.next833.prol, %vec.epilog.scalar.ph1419.prol ], [ %indvars.iv832.ph, %vec.epilog.scalar.ph1419.preheader ] ; 2 uses
  %prol.iter1975 = phi i64 [ %prol.iter1975.next, %vec.epilog.scalar.ph1419.prol ], [ 0, %vec.epilog.scalar.ph1419.preheader ]
  %gep1030.prol = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv836.prol
  %i.acq = load double, ptr %gep1030.prol, align 8, !tbaa !108
  %i.acr = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv832.prol
  store double %i.acq, ptr %i.acr, align 8, !tbaa !108
  %indvars.iv.next833.prol = add nsw i64 %indvars.iv832.prol, 1 ; 3 uses
  %indvars.iv.next837.prol = add nuw nsw i64 %indvars.iv836.prol, 1 ; 2 uses
  %prol.iter1975.next = add i64 %prol.iter1975, 1 ; 2 uses
  %prol.iter1975.cmp.not = icmp eq i64 %prol.iter1975.next, %xtraiter1973
  br i1 %prol.iter1975.cmp.not, label %vec.epilog.scalar.ph1419.prol.loopexit, label %vec.epilog.scalar.ph1419.prol, !llvm.loop !59

vec.epilog.scalar.ph1419.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1419.prol, %vec.epilog.scalar.ph1419.preheader
  %indvars.iv.next833.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph1419.preheader ], [ %indvars.iv.next833.prol, %vec.epilog.scalar.ph1419.prol ]
  %indvars.iv836.unr = phi i64 [ %indvars.iv836.ph, %vec.epilog.scalar.ph1419.preheader ], [ %indvars.iv.next837.prol, %vec.epilog.scalar.ph1419.prol ]
  %indvars.iv832.unr = phi i64 [ %indvars.iv832.ph, %vec.epilog.scalar.ph1419.preheader ], [ %indvars.iv.next833.prol, %vec.epilog.scalar.ph1419.prol ]
  %i.acs = sub i64 %indvars.iv836.ph, %i.zs
  %i.act = icmp ugt i64 %i.acs, -8
  br i1 %i.act, label %._crit_edge569, label %vec.epilog.scalar.ph1419

vec.epilog.scalar.ph1461:                         ; preds = %vec.epilog.scalar.ph1461.prol.loopexit, %vec.epilog.scalar.ph1461
  %indvars.iv830.in = phi i32 [ %indvars.iv830.3, %vec.epilog.scalar.ph1461 ], [ %indvars.iv830.in.unr, %vec.epilog.scalar.ph1461.prol.loopexit ]
  %indvars.iv822 = phi i64 [ %indvars.iv.next823.3, %vec.epilog.scalar.ph1461 ], [ %indvars.iv822.unr, %vec.epilog.scalar.ph1461.prol.loopexit ] ; 5 uses
  %indvars.iv820 = phi i64 [ %indvars.iv.next821.3, %vec.epilog.scalar.ph1461 ], [ %indvars.iv820.unr, %vec.epilog.scalar.ph1461.prol.loopexit ] ; 5 uses
  %i.acu = mul nsw i64 %indvars.iv822, %i.zu
  %gep1028 = getelementptr [8 x i8], ptr %gep1032, i64 %i.acu
  %i.acv = load double, ptr %gep1028, align 8, !tbaa !108
  %i.acw = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv820
  store double %i.acv, ptr %i.acw, align 8, !tbaa !108
  %indvars.iv.next823 = add nuw nsw i64 %indvars.iv822, 1
  %i.acx = mul nsw i64 %indvars.iv.next823, %i.zu
  %gep1028.1 = getelementptr [8 x i8], ptr %gep1032, i64 %i.acx
  %i.acy = load double, ptr %gep1028.1, align 8, !tbaa !108
  %i.acz = getelementptr [8 x i8], ptr %5, i64 %indvars.iv820
  %i.ada = getelementptr i8, ptr %i.acz, i64 8
  store double %i.acy, ptr %i.ada, align 8, !tbaa !108
  %indvars.iv.next823.1 = add nuw nsw i64 %indvars.iv822, 2
  %i.adb = mul nsw i64 %indvars.iv.next823.1, %i.zu
  %gep1028.2 = getelementptr [8 x i8], ptr %gep1032, i64 %i.adb
  %i.adc = load double, ptr %gep1028.2, align 8, !tbaa !108
  %i.add = getelementptr [8 x i8], ptr %5, i64 %indvars.iv820
  %i.ade = getelementptr i8, ptr %i.add, i64 16
  store double %i.adc, ptr %i.ade, align 8, !tbaa !108
  %indvars.iv.next823.2 = add nuw nsw i64 %indvars.iv822, 3 ; 2 uses
  %indvars.iv830.3 = add i32 %indvars.iv830.in, 4 ; 2 uses
  %i.adf = mul nsw i64 %indvars.iv.next823.2, %i.zu
  %gep1028.3 = getelementptr [8 x i8], ptr %gep1032, i64 %i.adf
  %i.adg = load double, ptr %gep1028.3, align 8, !tbaa !108
  %i.adh = getelementptr [8 x i8], ptr %5, i64 %indvars.iv820
  %i.adi = getelementptr i8, ptr %i.adh, i64 24
  store double %i.adg, ptr %i.adi, align 8, !tbaa !108
  %indvars.iv.next821.3 = add nsw i64 %indvars.iv820, 4 ; 2 uses
  %indvars.iv.next823.3 = add nuw nsw i64 %indvars.iv822, 4
  %exitcond828.not.3 = icmp eq i64 %indvars.iv.next823.2, %indvars.iv843.in
  br i1 %exitcond828.not.3, label %.preheader474, label %vec.epilog.scalar.ph1461, !llvm.loop !60

vec.epilog.scalar.ph1419:                         ; preds = %vec.epilog.scalar.ph1419.prol.loopexit, %vec.epilog.scalar.ph1419
  %indvars.iv836 = phi i64 [ %indvars.iv.next837.7, %vec.epilog.scalar.ph1419 ], [ %indvars.iv836.unr, %vec.epilog.scalar.ph1419.prol.loopexit ] ; 9 uses
  %indvars.iv832 = phi i64 [ %indvars.iv.next833.7, %vec.epilog.scalar.ph1419 ], [ %indvars.iv832.unr, %vec.epilog.scalar.ph1419.prol.loopexit ] ; 9 uses
  %gep1030 = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv836
  %i.adj = load double, ptr %gep1030, align 8, !tbaa !108
  %i.adk = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv832
  store double %i.adj, ptr %i.adk, align 8, !tbaa !108
  %i.adl = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv836
  %gep1030.1 = getelementptr i8, ptr %i.adl, i64 8
  %i.adm = load double, ptr %gep1030.1, align 8, !tbaa !108
  %i.adn = getelementptr [8 x i8], ptr %5, i64 %indvars.iv832
  %i.ado = getelementptr i8, ptr %i.adn, i64 8
  store double %i.adm, ptr %i.ado, align 8, !tbaa !108
  %i.adp = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv836
  %gep1030.2 = getelementptr i8, ptr %i.adp, i64 16
  %i.adq = load double, ptr %gep1030.2, align 8, !tbaa !108
  %i.adr = getelementptr [8 x i8], ptr %5, i64 %indvars.iv832
  %i.ads = getelementptr i8, ptr %i.adr, i64 16
  store double %i.adq, ptr %i.ads, align 8, !tbaa !108
  %i.adt = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv836
  %gep1030.3 = getelementptr i8, ptr %i.adt, i64 24
  %i.adu = load double, ptr %gep1030.3, align 8, !tbaa !108
  %i.adv = getelementptr [8 x i8], ptr %5, i64 %indvars.iv832
  %i.adw = getelementptr i8, ptr %i.adv, i64 24
  store double %i.adu, ptr %i.adw, align 8, !tbaa !108
  %i.adx = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv836
  %gep1030.4 = getelementptr i8, ptr %i.adx, i64 32
  %i.ady = load double, ptr %gep1030.4, align 8, !tbaa !108
  %i.adz = getelementptr [8 x i8], ptr %5, i64 %indvars.iv832
  %i.aea = getelementptr i8, ptr %i.adz, i64 32
  store double %i.ady, ptr %i.aea, align 8, !tbaa !108
  %i.aeb = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv836
  %gep1030.5 = getelementptr i8, ptr %i.aeb, i64 40
  %i.aec = load double, ptr %gep1030.5, align 8, !tbaa !108
  %i.aed = getelementptr [8 x i8], ptr %5, i64 %indvars.iv832
  %i.aee = getelementptr i8, ptr %i.aed, i64 40
  store double %i.aec, ptr %i.aee, align 8, !tbaa !108
  %i.aef = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv836
  %gep1030.6 = getelementptr i8, ptr %i.aef, i64 48
  %i.aeg = load double, ptr %gep1030.6, align 8, !tbaa !108
  %i.aeh = getelementptr [8 x i8], ptr %5, i64 %indvars.iv832
  %i.aei = getelementptr i8, ptr %i.aeh, i64 48
  store double %i.aeg, ptr %i.aei, align 8, !tbaa !108
  %i.aej = getelementptr [8 x i8], ptr %invariant.gep1029, i64 %indvars.iv836
  %gep1030.7 = getelementptr i8, ptr %i.aej, i64 56
  %i.aek = load double, ptr %gep1030.7, align 8, !tbaa !108
  %i.ael = getelementptr [8 x i8], ptr %5, i64 %indvars.iv832
  %i.aem = getelementptr i8, ptr %i.ael, i64 56
  store double %i.aek, ptr %i.aem, align 8, !tbaa !108
  %indvars.iv.next833.7 = add nsw i64 %indvars.iv832, 8 ; 2 uses
  %indvars.iv.next837.7 = add nuw nsw i64 %indvars.iv836, 8 ; 2 uses
  %exitcond842.not.7 = icmp eq i64 %indvars.iv.next837.7, %i.zs
  br i1 %exitcond842.not.7, label %._crit_edge569, label %vec.epilog.scalar.ph1419, !llvm.loop !61

._crit_edge569:                                   ; preds = %vec.epilog.scalar.ph1419.prol.loopexit, %vec.epilog.scalar.ph1419, %middle.block1415, %vec.epilog.middle.block1428, %.preheader474
  %.18.lcssa.in = phi i64 [ %indvars.iv.next821.lcssa, %.preheader474 ], [ %i.acl, %vec.epilog.middle.block1428 ], [ %i.aca, %middle.block1415 ], [ %indvars.iv.next833.lcssa.unr, %vec.epilog.scalar.ph1419.prol.loopexit ], [ %indvars.iv.next833.7, %vec.epilog.scalar.ph1419 ]
  %.18.lcssa = trunc i64 %.18.lcssa.in to i32
  %indvars.iv.next835 = add nuw nsw i64 %indvars.iv834, 1 ; 2 uses
  %exitcond849.not = icmp eq i64 %indvars.iv.next835, %wide.trip.count848
  br i1 %exitcond849.not, label %.loopexit, label %iter.check1459, !llvm.loop !62

.preheader469.lr.ph:                              ; preds = %bb.p
  %i.aen = xor i32 %i.i, -1
  %i.aeo = add nsw i32 %i.u, %i.aen
  %i.aep = shl nuw i32 %i.i, 1
  %i.aeq = xor i32 %i.v, -1
  %i.aer = add nsw i32 %i.i, %i.aeq
  %i.aes = sext i32 %i.d to i64                   ; 12 uses
  %i.aet = zext nneg i32 %i.i to i64              ; 4 uses
  %i.aeu = zext nneg i32 %i.v to i64              ; 4 uses
  %i.aev = shl nuw nsw i64 %i.aeu, 3
  %i.aew = add i64 %i.aev, %i.b
  %i.aex = add i64 %i.aew, 8
  %i.aey = shl nsw i64 %i.aes, 3
  %i.aez = add nuw nsw i64 %i.aet, 2305843009213693951
  %i.afa = mul i64 %i.aez, %i.aes
  %i.afb = shl i64 %i.afa, 3
  %i.afc = add i64 %i.afb, %i.a
  %i.afd = sub i64 %i.b, %i.afc
  %ident.check1628.not = icmp eq i32 %i.d, 1
  %invariant.op = sub i32 -2, %i.aep
  br label %iter.check1691

iter.check1691:                                   ; preds = %.preheader469.lr.ph, %._crit_edge611
  %indvar1633 = phi i64 [ 0, %.preheader469.lr.ph ], [ %indvar.next1634, %._crit_edge611 ] ; 5 uses
  %indvars.iv926 = phi i64 [ %i.aet, %.preheader469.lr.ph ], [ %indvars.iv.next927, %._crit_edge611 ] ; 10 uses
  %indvars.iv917 = phi i32 [ %i.aer, %.preheader469.lr.ph ], [ %indvars.iv.next918, %._crit_edge611 ] ; 2 uses
  %.19616 = phi i32 [ %i.aeo, %.preheader469.lr.ph ], [ %.reass.reass, %._crit_edge611 ] ; 5 uses
  %i.afe = and i64 %indvar1633, 4294967295        ; 3 uses
  %i.aff = add nuw nsw i64 %i.afe, 1              ; 5 uses
  %i.afg = sext i32 %indvars.iv917 to i64         ; 7 uses
  %indvars.iv.next927 = add nsw i64 %indvars.iv926, -1 ; 4 uses
  %i.afh = mul nsw i64 %indvars.iv.next927, %i.aes
  %i.afi = sext i32 %.19616 to i64                ; 7 uses
  %invariant.gep1041 = getelementptr [8 x i8], ptr %3, i64 %i.afh ; 11 uses
  %min.iters.check1668 = icmp samesign ult i64 %indvars.iv926, 4
  br i1 %min.iters.check1668, label %vec.epilog.scalar.ph1693.preheader, label %vector.memcheck1669

vector.memcheck1669:                              ; preds = %iter.check1691
  %i.afj = mul i64 %indvar1633, %i.aey
  %i.afk = add i64 %i.afd, %i.afj
  %i.afl = shl nsw i64 %i.afi, 3
  %i.afm = add i64 %i.afk, %i.afl
  %i.afn = add i64 %i.afm, -1
  %diff.check1670 = icmp ult i64 %i.afn, 127
  br i1 %diff.check1670, label %vec.epilog.scalar.ph1693.preheader, label %vector.main.loop.iter.check1671

vector.main.loop.iter.check1671:                  ; preds = %vector.memcheck1669
  %min.iters.check1672 = icmp samesign ult i64 %indvars.iv926, 16
  br i1 %min.iters.check1672, label %vec.epilog.ph1695, label %vector.ph1673

vector.ph1673:                                    ; preds = %vector.main.loop.iter.check1671
  %i.afo = and i64 %indvars.iv926, 12
  %n.vec1674 = and i64 %indvars.iv926, 9223372036854775792 ; 5 uses
  %i.afp = add i64 %n.vec1674, %i.afi             ; 2 uses
  %i.afq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.19616, i64 0
  %invariant.gep2101 = getelementptr [8 x i8], ptr %5, i64 %i.afi
  br label %vector.body1675

vector.body1675:                                  ; preds = %vector.ph1673, %vector.body1675
  %index1676 = phi i64 [ 0, %vector.ph1673 ], [ %index.next1685, %vector.body1675 ] ; 3 uses
  %vec.phi1677 = phi <4 x i32> [ %i.afq, %vector.ph1673 ], [ %i.afr, %vector.body1675 ]
  %vec.phi1678 = phi <4 x i32> [ zeroinitializer, %vector.ph1673 ], [ %i.afs, %vector.body1675 ]
  %vec.phi1679 = phi <4 x i32> [ zeroinitializer, %vector.ph1673 ], [ %i.aft, %vector.body1675 ]
  %vec.phi1680 = phi <4 x i32> [ zeroinitializer, %vector.ph1673 ], [ %i.afu, %vector.body1675 ]
  %i.afr = add <4 x i32> %vec.phi1677, splat (i32 1) ; 2 uses
  %i.afs = add <4 x i32> %vec.phi1678, splat (i32 1) ; 2 uses
  %i.aft = add <4 x i32> %vec.phi1679, splat (i32 1) ; 2 uses
  %i.afu = add <4 x i32> %vec.phi1680, splat (i32 1) ; 2 uses
  %i.afv = getelementptr [8 x i8], ptr %invariant.gep1041, i64 %index1676 ; 4 uses
  %i.afw = getelementptr i8, ptr %i.afv, i64 32
  %i.afx = getelementptr i8, ptr %i.afv, i64 64
  %i.afy = getelementptr i8, ptr %i.afv, i64 96
  %wide.load1681 = load <4 x double>, ptr %i.afv, align 8, !tbaa !108
  %wide.load1682 = load <4 x double>, ptr %i.afw, align 8, !tbaa !108
  %wide.load1683 = load <4 x double>, ptr %i.afx, align 8, !tbaa !108
  %wide.load1684 = load <4 x double>, ptr %i.afy, align 8, !tbaa !108
  %gep2102 = getelementptr [8 x i8], ptr %invariant.gep2101, i64 %index1676 ; 4 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %gep2102, i64 32
  %i.aga = getelementptr inbounds nuw i8, ptr %gep2102, i64 64
  %i.agb = getelementptr inbounds nuw i8, ptr %gep2102, i64 96
  store <4 x double> %wide.load1681, ptr %gep2102, align 8, !tbaa !108
  store <4 x double> %wide.load1682, ptr %i.afz, align 8, !tbaa !108
  store <4 x double> %wide.load1683, ptr %i.aga, align 8, !tbaa !108
  store <4 x double> %wide.load1684, ptr %i.agb, align 8, !tbaa !108
  %index.next1685 = add nuw i64 %index1676, 16    ; 2 uses
  %i.agc = icmp eq i64 %index.next1685, %n.vec1674
  br i1 %i.agc, label %middle.block1686, label %vector.body1675, !llvm.loop !63

middle.block1686:                                 ; preds = %vector.body1675
  %bin.rdx1687 = add <4 x i32> %i.afs, %i.afr
  %bin.rdx1688 = add <4 x i32> %i.aft, %bin.rdx1687
  %bin.rdx1689 = add <4 x i32> %i.afu, %bin.rdx1688
  %i.agd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1689) ; 3 uses
  %cmp.n1690 = icmp eq i64 %indvars.iv926, %n.vec1674
  br i1 %cmp.n1690, label %.loopexit1857, label %vec.epilog.iter.check1692

vec.epilog.iter.check1692:                        ; preds = %middle.block1686
  %min.epilog.iters.check1694 = icmp eq i64 %i.afo, 0
  br i1 %min.epilog.iters.check1694, label %vec.epilog.scalar.ph1693.preheader, label %vec.epilog.ph1695, !prof !112

vec.epilog.ph1695:                                ; preds = %vector.main.loop.iter.check1671, %vec.epilog.iter.check1692
  %vec.epilog.resume.val1696 = phi i64 [ %n.vec1674, %vec.epilog.iter.check1692 ], [ 0, %vector.main.loop.iter.check1671 ]
  %bc.merge.rdx1697 = phi i32 [ %i.agd, %vec.epilog.iter.check1692 ], [ %.19616, %vector.main.loop.iter.check1671 ]
  %n.vec1698 = and i64 %indvars.iv926, 9223372036854775804 ; 4 uses
  %i.age = add i64 %n.vec1698, %i.afi             ; 2 uses
  %i.agf = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1697, i64 0
  %invariant.gep2103 = getelementptr [8 x i8], ptr %5, i64 %i.afi
  br label %vec.epilog.vector.body1699

vec.epilog.vector.body1699:                       ; preds = %vec.epilog.vector.body1699, %vec.epilog.ph1695
  %index1700 = phi i64 [ %vec.epilog.resume.val1696, %vec.epilog.ph1695 ], [ %index.next1703, %vec.epilog.vector.body1699 ] ; 3 uses
  %vec.phi1701 = phi <4 x i32> [ %i.agf, %vec.epilog.ph1695 ], [ %i.agg, %vec.epilog.vector.body1699 ]
  %i.agg = add <4 x i32> %vec.phi1701, splat (i32 1) ; 2 uses
  %i.agh = getelementptr [8 x i8], ptr %invariant.gep1041, i64 %index1700
  %wide.load1702 = load <4 x double>, ptr %i.agh, align 8, !tbaa !108
  %gep2104 = getelementptr [8 x i8], ptr %invariant.gep2103, i64 %index1700
  store <4 x double> %wide.load1702, ptr %gep2104, align 8, !tbaa !108
  %index.next1703 = add nuw i64 %index1700, 4     ; 2 uses
  %i.agi = icmp eq i64 %index.next1703, %n.vec1698
  br i1 %i.agi, label %vec.epilog.middle.block1704, label %vec.epilog.vector.body1699, !llvm.loop !64

vec.epilog.middle.block1704:                      ; preds = %vec.epilog.vector.body1699
  %i.agj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.agg) ; 2 uses
  %cmp.n1705 = icmp eq i64 %indvars.iv926, %n.vec1698
  br i1 %cmp.n1705, label %.loopexit1857, label %vec.epilog.scalar.ph1693.preheader

vec.epilog.scalar.ph1693.preheader:               ; preds = %iter.check1691, %vector.memcheck1669, %vec.epilog.iter.check1692, %vec.epilog.middle.block1704
  %indvars.iv913.in.ph = phi i32 [ %.19616, %iter.check1691 ], [ %.19616, %vector.memcheck1669 ], [ %i.agd, %vec.epilog.iter.check1692 ], [ %i.agj, %vec.epilog.middle.block1704 ] ; 2 uses
  %indvars.iv906.ph = phi i64 [ 0, %iter.check1691 ], [ 0, %vector.memcheck1669 ], [ %n.vec1674, %vec.epilog.iter.check1692 ], [ %n.vec1698, %vec.epilog.middle.block1704 ] ; 4 uses
  %indvars.iv904.ph = phi i64 [ %i.afi, %iter.check1691 ], [ %i.afi, %vector.memcheck1669 ], [ %i.afp, %vec.epilog.iter.check1692 ], [ %i.age, %vec.epilog.middle.block1704 ] ; 2 uses
  %i.agk = sub nsw i64 %indvars.iv926, %indvars.iv906.ph
  %xtraiter1985 = and i64 %i.agk, 7               ; 2 uses
  %lcmp.mod1986.not = icmp eq i64 %xtraiter1985, 0
  br i1 %lcmp.mod1986.not, label %vec.epilog.scalar.ph1693.prol.loopexit, label %vec.epilog.scalar.ph1693.prol

vec.epilog.scalar.ph1693.prol:                    ; preds = %vec.epilog.scalar.ph1693.preheader, %vec.epilog.scalar.ph1693.prol
  %indvars.iv913.in.prol = phi i32 [ %indvars.iv913.prol, %vec.epilog.scalar.ph1693.prol ], [ %indvars.iv913.in.ph, %vec.epilog.scalar.ph1693.preheader ]
  %indvars.iv906.prol = phi i64 [ %indvars.iv.next907.prol, %vec.epilog.scalar.ph1693.prol ], [ %indvars.iv906.ph, %vec.epilog.scalar.ph1693.preheader ] ; 2 uses
  %indvars.iv904.prol = phi i64 [ %indvars.iv.next905.prol, %vec.epilog.scalar.ph1693.prol ], [ %indvars.iv904.ph, %vec.epilog.scalar.ph1693.preheader ] ; 2 uses
  %prol.iter1987 = phi i64 [ %prol.iter1987.next, %vec.epilog.scalar.ph1693.prol ], [ 0, %vec.epilog.scalar.ph1693.preheader ]
  %indvars.iv913.prol = add i32 %indvars.iv913.in.prol, 1 ; 3 uses
  %gep1042.prol = getelementptr [8 x i8], ptr %invariant.gep1041, i64 %indvars.iv906.prol
  %i.agl = load double, ptr %gep1042.prol, align 8, !tbaa !108
  %i.agm = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv904.prol
  store double %i.agl, ptr %i.agm, align 8, !tbaa !108
  %indvars.iv.next905.prol = add nsw i64 %indvars.iv904.prol, 1 ; 3 uses
  %indvars.iv.next907.prol = add nuw nsw i64 %indvars.iv906.prol, 1 ; 2 uses
  %prol.iter1987.next = add i64 %prol.iter1987, 1 ; 2 uses
  %prol.iter1987.cmp.not = icmp eq i64 %prol.iter1987.next, %xtraiter1985
  br i1 %prol.iter1987.cmp.not, label %vec.epilog.scalar.ph1693.prol.loopexit, label %vec.epilog.scalar.ph1693.prol, !llvm.loop !65

vec.epilog.scalar.ph1693.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1693.prol, %vec.epilog.scalar.ph1693.preheader
  %indvars.iv913.lcssa1900.unr = phi i32 [ poison, %vec.epilog.scalar.ph1693.preheader ], [ %indvars.iv913.prol, %vec.epilog.scalar.ph1693.prol ]
  %indvars.iv.next905.lcssa1899.unr = phi i64 [ poison, %vec.epilog.scalar.ph1693.preheader ], [ %indvars.iv.next905.prol, %vec.epilog.scalar.ph1693.prol ]
  %indvars.iv913.in.unr = phi i32 [ %indvars.iv913.in.ph, %vec.epilog.scalar.ph1693.preheader ], [ %indvars.iv913.prol, %vec.epilog.scalar.ph1693.prol ]
  %indvars.iv906.unr = phi i64 [ %indvars.iv906.ph, %vec.epilog.scalar.ph1693.preheader ], [ %indvars.iv.next907.prol, %vec.epilog.scalar.ph1693.prol ]
  %indvars.iv904.unr = phi i64 [ %indvars.iv904.ph, %vec.epilog.scalar.ph1693.preheader ], [ %indvars.iv.next905.prol, %vec.epilog.scalar.ph1693.prol ]
  %i.agn = sub i64 %indvar1633, %i.aet
  %i.ago = add i64 %i.agn, %indvars.iv906.ph
  %i.agp = icmp ugt i64 %i.ago, -8
  br i1 %i.agp, label %.loopexit1857, label %vec.epilog.scalar.ph1693

vec.epilog.scalar.ph1693:                         ; preds = %vec.epilog.scalar.ph1693.prol.loopexit, %vec.epilog.scalar.ph1693
  %indvars.iv913.in = phi i32 [ %indvars.iv913.7, %vec.epilog.scalar.ph1693 ], [ %indvars.iv913.in.unr, %vec.epilog.scalar.ph1693.prol.loopexit ]
  %indvars.iv906 = phi i64 [ %indvars.iv.next907.7, %vec.epilog.scalar.ph1693 ], [ %indvars.iv906.unr, %vec.epilog.scalar.ph1693.prol.loopexit ] ; 9 uses
  %indvars.iv904 = phi i64 [ %indvars.iv.next905.7, %vec.epilog.scalar.ph1693 ], [ %indvars.iv904.unr, %vec.epilog.scalar.ph1693.prol.loopexit ] ; 9 uses
  %gep1042 = getelementptr [8 x i8], ptr %invariant.gep1041, i64 %indvars.iv906
  %i.agq = load double, ptr %gep1042, align 8, !tbaa !108
  %i.agr = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv904
  store double %i.agq, ptr %i.agr, align 8, !tbaa !108
  %i.ags = getelementptr [8 x i8], ptr %invariant.gep1041, i64 %indvars.iv906
  %gep1042.1 = getelementptr i8, ptr %i.ags, i64 8
  %i.agt = load double, ptr %gep1042.1, align 8, !tbaa !108
  %i.agu = getelementptr [8 x i8], ptr %5, i64 %indvars.iv904
  %i.agv = getelementptr i8, ptr %i.agu, i64 8
  store double %i.agt, ptr %i.agv, align 8, !tbaa !108
  %i.agw = getelementptr [8 x i8], ptr %invariant.gep1041, i64 %indvars.iv906
  %gep1042.2 = getelementptr i8, ptr %i.agw, i64 16
  %i.agx = load double, ptr %gep1042.2, align 8, !tbaa !108
  %i.agy = getelementptr [8 x i8], ptr %5, i64 %indvars.iv904
  %i.agz = getelementptr i8, ptr %i.agy, i64 16
  store double %i.agx, ptr %i.agz, align 8, !tbaa !108
  %i.aha = getelementptr [8 x i8], ptr %invariant.gep1041, i64 %indvars.iv906
  %gep1042.3 = getelementptr i8, ptr %i.aha, i64 24
  %i.ahb = load double, ptr %gep1042.3, align 8, !tbaa !108
  %i.ahc = getelementptr [8 x i8], ptr %5, i64 %indvars.iv904
  %i.ahd = getelementptr i8, ptr %i.ahc, i64 24
  store double %i.ahb, ptr %i.ahd, align 8, !tbaa !108
  %i.ahe = getelementptr [8 x i8], ptr %invariant.gep1041, i64 %indvars.iv906
  %gep1042.4 = getelementptr i8, ptr %i.ahe, i64 32
  %i.ahf = load double, ptr %gep1042.4, align 8, !tbaa !108
  %i.ahg = getelementptr [8 x i8], ptr %5, i64 %indvars.iv904
  %i.ahh = getelementptr i8, ptr %i.ahg, i64 32
  store double %i.ahf, ptr %i.ahh, align 8, !tbaa !108
  %i.ahi = getelementptr [8 x i8], ptr %invariant.gep1041, i64 %indvars.iv906
  %gep1042.5 = getelementptr i8, ptr %i.ahi, i64 40
  %i.ahj = load double, ptr %gep1042.5, align 8, !tbaa !108
  %i.ahk = getelementptr [8 x i8], ptr %5, i64 %indvars.iv904
  %i.ahl = getelementptr i8, ptr %i.ahk, i64 40
  store double %i.ahj, ptr %i.ahl, align 8, !tbaa !108
  %i.ahm = getelementptr [8 x i8], ptr %invariant.gep1041, i64 %indvars.iv906
  %gep1042.6 = getelementptr i8, ptr %i.ahm, i64 48
  %i.ahn = load double, ptr %gep1042.6, align 8, !tbaa !108
  %i.aho = getelementptr [8 x i8], ptr %5, i64 %indvars.iv904
  %i.ahp = getelementptr i8, ptr %i.aho, i64 48
  store double %i.ahn, ptr %i.ahp, align 8, !tbaa !108
  %indvars.iv913.7 = add i32 %indvars.iv913.in, 8 ; 2 uses
  %i.ahq = getelementptr [8 x i8], ptr %invariant.gep1041, i64 %indvars.iv906
  %gep1042.7 = getelementptr i8, ptr %i.ahq, i64 56
  %i.ahr = load double, ptr %gep1042.7, align 8, !tbaa !108
  %i.ahs = getelementptr [8 x i8], ptr %5, i64 %indvars.iv904
  %i.aht = getelementptr i8, ptr %i.ahs, i64 56
  store double %i.ahr, ptr %i.aht, align 8, !tbaa !108
  %indvars.iv.next905.7 = add nsw i64 %indvars.iv904, 8 ; 2 uses
  %indvars.iv.next907.7 = add nuw nsw i64 %indvars.iv906, 8 ; 2 uses
  %exitcond912.not.7 = icmp eq i64 %indvars.iv.next907.7, %indvars.iv926
  br i1 %exitcond912.not.7, label %.loopexit1857, label %vec.epilog.scalar.ph1693, !llvm.loop !66

.loopexit1857:                                    ; preds = %vec.epilog.scalar.ph1693.prol.loopexit, %vec.epilog.scalar.ph1693, %vec.epilog.middle.block1704, %middle.block1686
  %indvars.iv913.lcssa = phi i32 [ %i.agj, %vec.epilog.middle.block1704 ], [ %i.agd, %middle.block1686 ], [ %indvars.iv913.lcssa1900.unr, %vec.epilog.scalar.ph1693.prol.loopexit ], [ %indvars.iv913.7, %vec.epilog.scalar.ph1693 ]
  %indvars.iv.next905.lcssa = phi i64 [ %i.age, %vec.epilog.middle.block1704 ], [ %i.afp, %middle.block1686 ], [ %indvars.iv.next905.lcssa1899.unr, %vec.epilog.scalar.ph1693.prol.loopexit ], [ %indvars.iv.next905.7, %vec.epilog.scalar.ph1693 ]
  %i.ahu = sub nuw nsw i64 %indvars.iv.next927, %i.aeu ; 2 uses
  %.not432.not606 = icmp slt i64 %i.ahu, %i.aeu
  br i1 %.not432.not606, label %iter.check1651, label %._crit_edge611

iter.check1651:                                   ; preds = %.loopexit1857
  %i.ahv = sext i32 %indvars.iv913.lcssa to i64   ; 7 uses
  %invariant.gep1043 = getelementptr [8 x i8], ptr %3, i64 %i.ahu ; 11 uses
  %min.iters.check1635 = icmp samesign ugt i64 %i.afe, 2
  %or.cond1875 = select i1 %min.iters.check1635, i1 %ident.check1628.not, i1 false
  br i1 %or.cond1875, label %vector.memcheck1636, label %.lr.ph610.preheader

vector.memcheck1636:                              ; preds = %iter.check1651
  %i.ahw = add i64 %indvar1633, %i.ahv
  %i.ahx = shl i64 %i.ahw, 3
  %i.ahy = add i64 %i.aex, %i.ahx
  %i.ahz = add nsw i64 %i.aet, %i.afg
  %i.aia = shl nsw i64 %i.ahz, 3
  %i.aib = add i64 %i.aia, %i.a
  %i.aic = sub i64 %i.aib, %i.ahy
  %diff.check1637 = icmp ugt i64 %i.aic, -128
  br i1 %diff.check1637, label %.lr.ph610.preheader, label %vector.main.loop.iter.check1638

vector.main.loop.iter.check1638:                  ; preds = %vector.memcheck1636
  %min.iters.check1639 = icmp samesign ult i64 %i.afe, 15
  br i1 %min.iters.check1639, label %vec.epilog.ph1655, label %vector.ph1640

vector.ph1640:                                    ; preds = %vector.main.loop.iter.check1638
  %i.aid = and i64 %i.aff, 12
  %n.vec1641 = and i64 %i.aff, 8589934576         ; 5 uses
  %i.aie = add nsw i64 %n.vec1641, %i.afg
  %i.aif = add nsw i64 %n.vec1641, %i.ahv         ; 2 uses
  %invariant.gep2105 = getelementptr [8 x i8], ptr %invariant.gep1043, i64 %i.afg
  %invariant.gep2107 = getelementptr [8 x i8], ptr %5, i64 %i.ahv
  br label %vector.body1642

vector.body1642:                                  ; preds = %vector.ph1640, %vector.body1642
  %index1643 = phi i64 [ 0, %vector.ph1640 ], [ %index.next1648, %vector.body1642 ] ; 3 uses
  %gep2106 = getelementptr [8 x i8], ptr %invariant.gep2105, i64 %index1643 ; 4 uses
  %i.aig = getelementptr i8, ptr %gep2106, i64 32
  %i.aih = getelementptr i8, ptr %gep2106, i64 64
  %i.aii = getelementptr i8, ptr %gep2106, i64 96
  %wide.load1644 = load <4 x double>, ptr %gep2106, align 8, !tbaa !108
  %wide.load1645 = load <4 x double>, ptr %i.aig, align 8, !tbaa !108
  %wide.load1646 = load <4 x double>, ptr %i.aih, align 8, !tbaa !108
  %wide.load1647 = load <4 x double>, ptr %i.aii, align 8, !tbaa !108
  %gep2108 = getelementptr [8 x i8], ptr %invariant.gep2107, i64 %index1643 ; 4 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %gep2108, i64 32
  %i.aik = getelementptr inbounds nuw i8, ptr %gep2108, i64 64
  %i.ail = getelementptr inbounds nuw i8, ptr %gep2108, i64 96
  store <4 x double> %wide.load1644, ptr %gep2108, align 8, !tbaa !108
  store <4 x double> %wide.load1645, ptr %i.aij, align 8, !tbaa !108
  store <4 x double> %wide.load1646, ptr %i.aik, align 8, !tbaa !108
  store <4 x double> %wide.load1647, ptr %i.ail, align 8, !tbaa !108
  %index.next1648 = add nuw i64 %index1643, 16    ; 2 uses
  %i.aim = icmp eq i64 %index.next1648, %n.vec1641
  br i1 %i.aim, label %middle.block1649, label %vector.body1642, !llvm.loop !67

middle.block1649:                                 ; preds = %vector.body1642
  %cmp.n1650 = icmp eq i64 %i.aff, %n.vec1641
  br i1 %cmp.n1650, label %._crit_edge611, label %vec.epilog.iter.check1652

vec.epilog.iter.check1652:                        ; preds = %middle.block1649
  %min.epilog.iters.check1654 = icmp eq i64 %i.aid, 0
  br i1 %min.epilog.iters.check1654, label %.lr.ph610.preheader, label %vec.epilog.ph1655, !prof !112

vec.epilog.ph1655:                                ; preds = %vector.main.loop.iter.check1638, %vec.epilog.iter.check1652
  %vec.epilog.resume.val1656 = phi i64 [ %n.vec1641, %vec.epilog.iter.check1652 ], [ 0, %vector.main.loop.iter.check1638 ]
  %n.vec1657 = and i64 %i.aff, 8589934588         ; 4 uses
  %i.ain = add nsw i64 %n.vec1657, %i.afg
  %i.aio = add nsw i64 %n.vec1657, %i.ahv         ; 2 uses
  %invariant.gep2109 = getelementptr [8 x i8], ptr %invariant.gep1043, i64 %i.afg
  %invariant.gep2111 = getelementptr [8 x i8], ptr %5, i64 %i.ahv
  br label %vec.epilog.vector.body1658

vec.epilog.vector.body1658:                       ; preds = %vec.epilog.vector.body1658, %vec.epilog.ph1655
  %index1659 = phi i64 [ %vec.epilog.resume.val1656, %vec.epilog.ph1655 ], [ %index.next1661, %vec.epilog.vector.body1658 ] ; 3 uses
  %gep2110 = getelementptr [8 x i8], ptr %invariant.gep2109, i64 %index1659
  %wide.load1660 = load <4 x double>, ptr %gep2110, align 8, !tbaa !108
  %gep2112 = getelementptr [8 x i8], ptr %invariant.gep2111, i64 %index1659
  store <4 x double> %wide.load1660, ptr %gep2112, align 8, !tbaa !108
  %index.next1661 = add nuw i64 %index1659, 4     ; 2 uses
  %i.aip = icmp eq i64 %index.next1661, %n.vec1657
  br i1 %i.aip, label %vec.epilog.middle.block1662, label %vec.epilog.vector.body1658, !llvm.loop !68

vec.epilog.middle.block1662:                      ; preds = %vec.epilog.vector.body1658
  %cmp.n1663 = icmp eq i64 %i.aff, %n.vec1657
  br i1 %cmp.n1663, label %._crit_edge611, label %.lr.ph610.preheader

.lr.ph610.preheader:                              ; preds = %iter.check1651, %vector.memcheck1636, %vec.epilog.iter.check1652, %vec.epilog.middle.block1662
  %indvars.iv919.ph = phi i64 [ %i.afg, %iter.check1651 ], [ %i.afg, %vector.memcheck1636 ], [ %i.aie, %vec.epilog.iter.check1652 ], [ %i.ain, %vec.epilog.middle.block1662 ] ; 3 uses
  %indvars.iv915.ph = phi i64 [ %i.ahv, %iter.check1651 ], [ %i.ahv, %vector.memcheck1636 ], [ %i.aif, %vec.epilog.iter.check1652 ], [ %i.aio, %vec.epilog.middle.block1662 ] ; 2 uses
  %i.aiq = trunc i64 %indvars.iv919.ph to i32     ; 2 uses
  %i.air = sub i32 %i.v, %i.aiq
  %xtraiter1988 = and i32 %i.air, 7               ; 2 uses
  %lcmp.mod1989.not = icmp eq i32 %xtraiter1988, 0
  br i1 %lcmp.mod1989.not, label %.lr.ph610.prol.loopexit, label %.lr.ph610.prol

.lr.ph610.prol:                                   ; preds = %.lr.ph610.preheader, %.lr.ph610.prol
  %indvars.iv919.prol = phi i64 [ %indvars.iv.next920.prol, %.lr.ph610.prol ], [ %indvars.iv919.ph, %.lr.ph610.preheader ] ; 2 uses
  %indvars.iv915.prol = phi i64 [ %indvars.iv.next916.prol, %.lr.ph610.prol ], [ %indvars.iv915.ph, %.lr.ph610.preheader ] ; 2 uses
  %prol.iter1990 = phi i32 [ %prol.iter1990.next, %.lr.ph610.prol ], [ 0, %.lr.ph610.preheader ]
  %i.ais = mul nsw i64 %indvars.iv919.prol, %i.aes
  %gep1044.prol = getelementptr [8 x i8], ptr %invariant.gep1043, i64 %i.ais
  %i.ait = load double, ptr %gep1044.prol, align 8, !tbaa !108
  %i.aiu = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv915.prol
  store double %i.ait, ptr %i.aiu, align 8, !tbaa !108
  %indvars.iv.next916.prol = add nsw i64 %indvars.iv915.prol, 1 ; 3 uses
  %indvars.iv.next920.prol = add nsw i64 %indvars.iv919.prol, 1 ; 2 uses
  %prol.iter1990.next = add i32 %prol.iter1990, 1 ; 2 uses
  %prol.iter1990.cmp.not = icmp eq i32 %prol.iter1990.next, %xtraiter1988
end_hunk_1
