inline.NumInlined: 12
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN6LibRaw13hat_transformEPfS0_iii:bb.a
  br label %vector.body116

vector.body116:                                   ; preds = %vector.body116, %vector.ph114
  %index117 = phi i64 [ 0, %vector.ph114 ], [ %index.next124, %vector.body116 ] ; 3 uses
  %i.cg = add nuw i64 %index117, %i.bq            ; 3 uses
  %i.ch = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cg ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %wide.load118 = load <8 x float>, ptr %i.ch, align 4, !tbaa !11
  %wide.load119 = load <8 x float>, ptr %i.ci, align 4, !tbaa !11
  %i.cj = fmul reassoc nsz arcp contract afn <8 x float> %wide.load118, splat (float 2.000000e+00)
  %i.ck = fmul reassoc nsz arcp contract afn <8 x float> %wide.load119, splat (float 2.000000e+00)
  %i.cl = sub nsw i64 %i.cg, %i.bp
  %i.cm = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cl ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %wide.load120 = load <8 x float>, ptr %i.cm, align 4, !tbaa !11
  %wide.load121 = load <8 x float>, ptr %i.cn, align 4, !tbaa !11
  %i.co = fadd reassoc nsz arcp contract afn <8 x float> %i.cj, %wide.load120
  %i.cp = fadd reassoc nsz arcp contract afn <8 x float> %i.ck, %wide.load121
  %i.cq = getelementptr [4 x i8], ptr %i.cf, i64 %index117 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %wide.load122 = load <8 x float>, ptr %i.cq, align 4, !tbaa !11
  %wide.load123 = load <8 x float>, ptr %i.cr, align 4, !tbaa !11
  %i.cs = fadd reassoc nsz arcp contract afn <8 x float> %i.co, %wide.load122
  %i.ct = fadd reassoc nsz arcp contract afn <8 x float> %i.cp, %wide.load123
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cg ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  store <8 x float> %i.cs, ptr %i.cu, align 4, !tbaa !11
  store <8 x float> %i.ct, ptr %i.cv, align 4, !tbaa !11
  %index.next124 = add nuw i64 %index117, 16      ; 2 uses
  %i.cw = icmp eq i64 %index.next124, %n.vec115
  br i1 %i.cw, label %middle.block125, label %vector.body116, !llvm.loop !27

middle.block125:                                  ; preds = %vector.body116
  %cmp.n126 = icmp eq i64 %i.bv, %n.vec115
  br i1 %cmp.n126, label %.preheader.loopexit, label %vec.epilog.iter.check132

vec.epilog.iter.check132:                         ; preds = %middle.block125
  %min.epilog.iters.check133 = icmp eq i64 %i.cc, 0
  br i1 %min.epilog.iters.check133, label %.lr.ph56.preheader, label %vec.epilog.ph134, !prof !28

vec.epilog.ph134:                                 ; preds = %vector.main.loop.iter.check112, %vec.epilog.iter.check132
  %vec.epilog.resume.val127 = phi i64 [ %n.vec115, %vec.epilog.iter.check132 ], [ 0, %vector.main.loop.iter.check112 ]
  %n.vec135 = and i64 %i.bv, -4                   ; 4 uses
  %i.cx = add i64 %n.vec135, %i.bq                ; 2 uses
  %i.cy = add i64 %i.br, %n.vec135
  %i.cz = getelementptr [4 x i8], ptr %2, i64 %i.br
  br label %vec.epilog.vector.body136

vec.epilog.vector.body136:                        ; preds = %vec.epilog.vector.body136, %vec.epilog.ph134
  %index137 = phi i64 [ %vec.epilog.resume.val127, %vec.epilog.ph134 ], [ %index.next141, %vec.epilog.vector.body136 ] ; 3 uses
  %i.da = add nuw i64 %index137, %i.bq            ; 3 uses
  %i.db = getelementptr inbounds [4 x i8], ptr %2, i64 %i.da
  %wide.load138 = load <4 x float>, ptr %i.db, align 4, !tbaa !11
  %i.dc = fmul reassoc nsz arcp contract afn <4 x float> %wide.load138, splat (float 2.000000e+00)
  %i.dd = sub nsw i64 %i.da, %i.bp
  %i.de = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dd
  %wide.load139 = load <4 x float>, ptr %i.de, align 4, !tbaa !11
  %i.df = fadd reassoc nsz arcp contract afn <4 x float> %i.dc, %wide.load139
  %i.dg = getelementptr [4 x i8], ptr %i.cz, i64 %index137
  %wide.load140 = load <4 x float>, ptr %i.dg, align 4, !tbaa !11
  %i.dh = fadd reassoc nsz arcp contract afn <4 x float> %i.df, %wide.load140
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.da
  store <4 x float> %i.dh, ptr %i.di, align 4, !tbaa !11
  %index.next141 = add nuw i64 %index137, 4       ; 2 uses
  %i.dj = icmp eq i64 %index.next141, %n.vec135
  br i1 %i.dj, label %vec.epilog.middle.block142, label %vec.epilog.vector.body136, !llvm.loop !29

vec.epilog.middle.block142:                       ; preds = %vec.epilog.vector.body136
  %cmp.n143 = icmp eq i64 %i.bv, %n.vec135
  br i1 %cmp.n143, label %.preheader.loopexit, label %.lr.ph56.preheader

.lr.ph56.preheader:                               ; preds = %vector.memcheck106, %iter.check130, %vec.epilog.iter.check132, %vec.epilog.middle.block142
  %indvars.iv64.ph = phi i64 [ %i.bq, %iter.check130 ], [ %i.bq, %vector.memcheck106 ], [ %i.cd, %vec.epilog.iter.check132 ], [ %i.cx, %vec.epilog.middle.block142 ]
  %indvars.iv62.ph = phi i64 [ %i.br, %iter.check130 ], [ %i.br, %vector.memcheck106 ], [ %i.ce, %vec.epilog.iter.check132 ], [ %i.cy, %vec.epilog.middle.block142 ]
  br label %.lr.ph56

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.dk = mul nsw i64 %indvars.iv, %i.d
  %i.dl = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dk
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !11
  %i.dn = fmul reassoc nsz arcp contract afn float %i.dm, 2.000000e+00
  %i.do = sub nsw i64 %i.e, %indvars.iv
  %i.dp = mul nsw i64 %i.do, %i.d
  %i.dq = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dp
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !11
  %i.ds = fadd reassoc nsz arcp contract afn float %i.dn, %i.dr
  %i.dt = add nuw nsw i64 %indvars.iv, %i.e
  %i.du = mul nsw i64 %i.dt, %i.d
  %i.dv = getelementptr inbounds [4 x i8], ptr %2, i64 %i.du
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !11
  %i.dx = fadd reassoc nsz arcp contract afn float %i.ds, %i.dw
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store float %i.dx, ptr %i.dy, align 4, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.dz = mul nsw i64 %indvars.iv.next, %i.d
  %i.ea = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dz
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !11
  %i.ec = fmul reassoc nsz arcp contract afn float %i.eb, 2.000000e+00
  %i.ed = sub nsw i64 %i.e, %indvars.iv.next
  %i.ee = mul nsw i64 %i.ed, %i.d
  %i.ef = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ee
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !11
  %i.eh = fadd reassoc nsz arcp contract afn float %i.ec, %i.eg
  %i.ei = add nuw nsw i64 %indvars.iv.next, %i.e
  %i.ej = mul nsw i64 %i.ei, %i.d
  %i.ek = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ej
  %i.el = load float, ptr %i.ek, align 4, !tbaa !11
  %i.em = fadd reassoc nsz arcp contract afn float %i.eh, %i.el
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  store float %i.em, ptr %i.en, align 4, !tbaa !11
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.preheader53, label %.lr.ph, !llvm.loop !30

.preheader.loopexit:                              ; preds = %.lr.ph56, %vec.epilog.middle.block142, %middle.block125
  %indvars.iv.next65.lcssa = phi i64 [ %i.cx, %vec.epilog.middle.block142 ], [ %i.cd, %middle.block125 ], [ %indvars.iv.next65, %.lr.ph56 ]
  %i.eo = trunc nsw i64 %indvars.iv.next65.lcssa to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader53
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader53 ], [ %i.eo, %.preheader.loopexit ] ; 4 uses
  %i.ep = icmp slt i32 %.1.lcssa, %4
  br i1 %i.ep, label %iter.check196, label %._crit_edge

iter.check196:                                    ; preds = %.preheader
  %i.eq = shl i32 %4, 1                           ; 3 uses
  %.neg52 = add i32 %i.eq, -2                     ; 5 uses
  %i.er = sext i32 %.1.lcssa to i64               ; 11 uses
  %i.es = sext i32 %3 to i64                      ; 6 uses
  %i.et = sext i32 %5 to i64                      ; 6 uses
  %wide.trip.count72 = sext i32 %4 to i64         ; 6 uses
  %i.eu = sub nsw i64 %wide.trip.count72, %i.er   ; 7 uses
  %min.iters.check168 = icmp ult i64 %i.eu, 8
  br i1 %min.iters.check168, label %vec.epilog.scalar.ph197.preheader, label %vector.scevcheck146

vector.scevcheck146:                              ; preds = %iter.check196
  %ident.check147 = icmp ne i32 %3, 1
  %i.ev = xor i64 %i.er, -1
  %i.ew = add nsw i64 %i.ev, %wide.trip.count72   ; 2 uses
  %i.ex = add i32 %i.eq, -2
  %i.ey = add i32 %.1.lcssa, %5
  %i.ez = sub i32 %i.ex, %i.ey                    ; 2 uses
  %i.fa = trunc i64 %i.ew to i32
  %i.fb = sub i32 %i.ez, %i.fa
  %i.fc = icmp sgt i32 %i.fb, %i.ez
  %i.fd = icmp ugt i64 %i.ew, 4294967295
  %i.fe = or i1 %i.fc, %i.fd
  %i.ff = or i1 %ident.check147, %i.fe
  br i1 %i.ff, label %vec.epilog.scalar.ph197.preheader, label %vector.memcheck148

vector.memcheck148:                               ; preds = %vector.scevcheck146
  %i.fg = shl nsw i64 %i.er, 2                    ; 3 uses
  %scevgep149 = getelementptr i8, ptr %1, i64 %i.fg ; 3 uses
  %i.fh = shl nsw i64 %wide.trip.count72, 2       ; 4 uses
  %scevgep150 = getelementptr i8, ptr %1, i64 %i.fh ; 3 uses
  %i.fi = add i32 %i.eq, -2
  %i.fj = add i32 %.1.lcssa, %5
  %i.fk = sub i32 %i.fi, %i.fj
  %i.fl = sext i32 %i.fk to i64                   ; 2 uses
  %i.fm = add nsw i64 %i.er, %i.fl
  %i.fn = shl nsw i64 %i.fm, 2
  %i.fo = add nsw i64 %i.fn, 4
  %i.fp = sub nsw i64 %i.fo, %i.fh
  %scevgep151 = getelementptr i8, ptr %2, i64 %i.fp
  %i.fq = shl nsw i64 %i.fl, 2
  %i.fr = getelementptr i8, ptr %2, i64 %i.fq
  %scevgep152 = getelementptr i8, ptr %i.fr, i64 4
  %i.fs = shl nsw i64 %i.et, 2                    ; 2 uses
  %i.ft = sub nsw i64 %i.fg, %i.fs
  %scevgep153 = getelementptr i8, ptr %2, i64 %i.ft
  %i.fu = sub nsw i64 %i.fh, %i.fs
  %scevgep154 = getelementptr i8, ptr %2, i64 %i.fu
  %scevgep155 = getelementptr i8, ptr %2, i64 %i.fg
  %scevgep156 = getelementptr i8, ptr %2, i64 %i.fh
  %bound0157 = icmp ult ptr %scevgep149, %scevgep152
  %bound1158 = icmp ult ptr %scevgep151, %scevgep150
  %found.conflict159 = and i1 %bound0157, %bound1158
  %bound0160 = icmp ult ptr %scevgep149, %scevgep154
  %bound1161 = icmp ult ptr %scevgep153, %scevgep150
  %found.conflict162 = and i1 %bound0160, %bound1161
  %conflict.rdx163 = or i1 %found.conflict159, %found.conflict162
  %bound0164 = icmp ult ptr %scevgep149, %scevgep156
  %bound1165 = icmp ult ptr %scevgep155, %scevgep150
  %found.conflict166 = and i1 %bound0164, %bound1165
  %conflict.rdx167 = or i1 %conflict.rdx163, %found.conflict166
  br i1 %conflict.rdx167, label %vec.epilog.scalar.ph197.preheader, label %vector.main.loop.iter.check169

vector.main.loop.iter.check169:                   ; preds = %vector.memcheck148
  %min.iters.check170 = icmp ult i64 %i.eu, 32
  br i1 %min.iters.check170, label %vec.epilog.ph200, label %vector.ph171

vector.ph171:                                     ; preds = %vector.main.loop.iter.check169
  %i.fv = and i64 %i.eu, 24
  %n.vec172 = and i64 %i.eu, -32                  ; 4 uses
  %i.fw = add nsw i64 %n.vec172, %i.er
  br label %vector.body173

vector.body173:                                   ; preds = %vector.body173, %vector.ph171
  %index174 = phi i64 [ 0, %vector.ph171 ], [ %index.next191, %vector.body173 ] ; 2 uses
  %i.fx = add i64 %index174, %i.er                ; 4 uses
  %i.fy = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fx ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 32
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 64
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 96
  %wide.load175 = load <8 x float>, ptr %i.fy, align 4, !tbaa !11, !alias.scope !31
  %wide.load176 = load <8 x float>, ptr %i.fz, align 4, !tbaa !11, !alias.scope !31
  %wide.load177 = load <8 x float>, ptr %i.ga, align 4, !tbaa !11, !alias.scope !31
  %wide.load178 = load <8 x float>, ptr %i.gb, align 4, !tbaa !11, !alias.scope !31
  %i.gc = fmul reassoc nsz arcp contract afn <8 x float> %wide.load175, splat (float 2.000000e+00)
  %i.gd = fmul reassoc nsz arcp contract afn <8 x float> %wide.load176, splat (float 2.000000e+00)
  %i.ge = fmul reassoc nsz arcp contract afn <8 x float> %wide.load177, splat (float 2.000000e+00)
  %i.gf = fmul reassoc nsz arcp contract afn <8 x float> %wide.load178, splat (float 2.000000e+00)
  %i.gg = sub nsw i64 %i.fx, %i.et
  %i.gh = getelementptr inbounds [4 x i8], ptr %2, i64 %i.gg ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 32
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 64
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 96
  %wide.load179 = load <8 x float>, ptr %i.gh, align 4, !tbaa !11, !alias.scope !34
  %wide.load180 = load <8 x float>, ptr %i.gi, align 4, !tbaa !11, !alias.scope !34
  %wide.load181 = load <8 x float>, ptr %i.gj, align 4, !tbaa !11, !alias.scope !34
  %wide.load182 = load <8 x float>, ptr %i.gk, align 4, !tbaa !11, !alias.scope !34
  %i.gl = fadd reassoc nsz arcp contract afn <8 x float> %i.gc, %wide.load179
  %i.gm = fadd reassoc nsz arcp contract afn <8 x float> %i.gd, %wide.load180
  %i.gn = fadd reassoc nsz arcp contract afn <8 x float> %i.ge, %wide.load181
  %i.go = fadd reassoc nsz arcp contract afn <8 x float> %i.gf, %wide.load182
  %i.gp = trunc nsw i64 %i.fx to i32
  %i.gq = add i32 %5, %i.gp
  %i.gr = sub i32 %.neg52, %i.gq
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds [4 x i8], ptr %2, i64 %i.gs ; 4 uses
  %i.gu = getelementptr inbounds i8, ptr %i.gt, i64 -28
  %i.gv = getelementptr inbounds i8, ptr %i.gt, i64 -60
  %i.gw = getelementptr inbounds i8, ptr %i.gt, i64 -92
  %i.gx = getelementptr inbounds i8, ptr %i.gt, i64 -124
  %wide.load183 = load <8 x float>, ptr %i.gu, align 4, !tbaa !11, !alias.scope !36
  %wide.load184 = load <8 x float>, ptr %i.gv, align 4, !tbaa !11, !alias.scope !36
  %wide.load185 = load <8 x float>, ptr %i.gw, align 4, !tbaa !11, !alias.scope !36
  %wide.load186 = load <8 x float>, ptr %i.gx, align 4, !tbaa !11, !alias.scope !36
  %reverse187 = shufflevector <8 x float> %wide.load183, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse188 = shufflevector <8 x float> %wide.load184, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse189 = shufflevector <8 x float> %wide.load185, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse190 = shufflevector <8 x float> %wide.load186, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.gy = fadd reassoc nsz arcp contract afn <8 x float> %i.gl, %reverse187
  %i.gz = fadd reassoc nsz arcp contract afn <8 x float> %i.gm, %reverse188
  %i.ha = fadd reassoc nsz arcp contract afn <8 x float> %i.gn, %reverse189
  %i.hb = fadd reassoc nsz arcp contract afn <8 x float> %i.go, %reverse190
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fx ; 4 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 32
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 64
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 96
  store <8 x float> %i.gy, ptr %i.hc, align 4, !tbaa !11, !alias.scope !38, !noalias !40
  store <8 x float> %i.gz, ptr %i.hd, align 4, !tbaa !11, !alias.scope !38, !noalias !40
  store <8 x float> %i.ha, ptr %i.he, align 4, !tbaa !11, !alias.scope !38, !noalias !40
  store <8 x float> %i.hb, ptr %i.hf, align 4, !tbaa !11, !alias.scope !38, !noalias !40
  %index.next191 = add nuw i64 %index174, 32      ; 2 uses
  %i.hg = icmp eq i64 %index.next191, %n.vec172
  br i1 %i.hg, label %middle.block192, label %vector.body173, !llvm.loop !41

middle.block192:                                  ; preds = %vector.body173
  %cmp.n193 = icmp eq i64 %i.eu, %n.vec172
  br i1 %cmp.n193, label %._crit_edge, label %vec.epilog.iter.check198

vec.epilog.iter.check198:                         ; preds = %middle.block192
  %min.epilog.iters.check199 = icmp eq i64 %i.fv, 0
  br i1 %min.epilog.iters.check199, label %vec.epilog.scalar.ph197.preheader, label %vec.epilog.ph200, !prof !25

vec.epilog.ph200:                                 ; preds = %vector.main.loop.iter.check169, %vec.epilog.iter.check198
  %vec.epilog.resume.val194 = phi i64 [ %n.vec172, %vec.epilog.iter.check198 ], [ 0, %vector.main.loop.iter.check169 ]
  %n.vec201 = and i64 %i.eu, -8                   ; 3 uses
  %i.hh = add nsw i64 %n.vec201, %i.er
  br label %vec.epilog.vector.body202

vec.epilog.vector.body202:                        ; preds = %vec.epilog.vector.body202, %vec.epilog.ph200
  %index203 = phi i64 [ %vec.epilog.resume.val194, %vec.epilog.ph200 ], [ %index.next208, %vec.epilog.vector.body202 ] ; 2 uses
  %i.hi = add i64 %index203, %i.er                ; 4 uses
  %i.hj = getelementptr inbounds [4 x i8], ptr %2, i64 %i.hi
  %wide.load204 = load <8 x float>, ptr %i.hj, align 4, !tbaa !11, !alias.scope !31
  %i.hk = fmul reassoc nsz arcp contract afn <8 x float> %wide.load204, splat (float 2.000000e+00)
  %i.hl = sub nsw i64 %i.hi, %i.et
  %i.hm = getelementptr inbounds [4 x i8], ptr %2, i64 %i.hl
  %wide.load205 = load <8 x float>, ptr %i.hm, align 4, !tbaa !11, !alias.scope !34
  %i.hn = fadd reassoc nsz arcp contract afn <8 x float> %i.hk, %wide.load205
  %i.ho = trunc nsw i64 %i.hi to i32
  %i.hp = add i32 %5, %i.ho
  %i.hq = sub i32 %.neg52, %i.hp
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds [4 x i8], ptr %2, i64 %i.hr
  %i.ht = getelementptr inbounds i8, ptr %i.hs, i64 -28
  %wide.load206 = load <8 x float>, ptr %i.ht, align 4, !tbaa !11, !alias.scope !36
  %reverse207 = shufflevector <8 x float> %wide.load206, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.hu = fadd reassoc nsz arcp contract afn <8 x float> %i.hn, %reverse207
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hi
  store <8 x float> %i.hu, ptr %i.hv, align 4, !tbaa !11, !alias.scope !38, !noalias !40
  %index.next208 = add nuw i64 %index203, 8       ; 2 uses
  %i.hw = icmp eq i64 %index.next208, %n.vec201
  br i1 %i.hw, label %vec.epilog.middle.block209, label %vec.epilog.vector.body202, !llvm.loop !42

vec.epilog.middle.block209:                       ; preds = %vec.epilog.vector.body202
  %cmp.n210 = icmp eq i64 %i.eu, %n.vec201
  br i1 %cmp.n210, label %._crit_edge, label %vec.epilog.scalar.ph197.preheader

vec.epilog.scalar.ph197.preheader:                ; preds = %vector.memcheck148, %vector.scevcheck146, %iter.check196, %vec.epilog.iter.check198, %vec.epilog.middle.block209
  %indvars.iv69.ph = phi i64 [ %i.er, %iter.check196 ], [ %i.er, %vector.scevcheck146 ], [ %i.er, %vector.memcheck148 ], [ %i.fw, %vec.epilog.iter.check198 ], [ %i.hh, %vec.epilog.middle.block209 ] ; 8 uses
  %i.hx = sub i64 %wide.trip.count72, %indvars.iv69.ph
  %xtraiter214 = and i64 %i.hx, 1
  %lcmp.mod215.not = icmp eq i64 %xtraiter214, 0
  br i1 %lcmp.mod215.not, label %vec.epilog.scalar.ph197.prol.loopexit, label %vec.epilog.scalar.ph197.prol

vec.epilog.scalar.ph197.prol:                     ; preds = %vec.epilog.scalar.ph197.preheader
  %i.hy = mul nsw i64 %indvars.iv69.ph, %i.es
  %i.hz = getelementptr inbounds [4 x i8], ptr %2, i64 %i.hy
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !11
  %i.ib = fmul reassoc nsz arcp contract afn float %i.ia, 2.000000e+00
  %i.ic = sub nsw i64 %indvars.iv69.ph, %i.et
  %i.id = mul nsw i64 %i.ic, %i.es
  %i.ie = getelementptr inbounds [4 x i8], ptr %2, i64 %i.id
  %i.if = load float, ptr %i.ie, align 4, !tbaa !11
  %i.ig = fadd reassoc nsz arcp contract afn float %i.ib, %i.if
  %i.ih = trunc nsw i64 %indvars.iv69.ph to i32
  %i.ii = add i32 %5, %i.ih
  %i.ij = sub i32 %.neg52, %i.ii
  %i.ik = mul nsw i32 %i.ij, %3
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds [4 x i8], ptr %2, i64 %i.il
  %i.in = load float, ptr %i.im, align 4, !tbaa !11
  %i.io = fadd reassoc nsz arcp contract afn float %i.ig, %i.in
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv69.ph
  store float %i.io, ptr %i.ip, align 4, !tbaa !11
  %indvars.iv.next70.prol = add nsw i64 %indvars.iv69.ph, 1
  br label %vec.epilog.scalar.ph197.prol.loopexit

vec.epilog.scalar.ph197.prol.loopexit:            ; preds = %vec.epilog.scalar.ph197.prol, %vec.epilog.scalar.ph197.preheader
  %indvars.iv69.unr = phi i64 [ %indvars.iv69.ph, %vec.epilog.scalar.ph197.preheader ], [ %indvars.iv.next70.prol, %vec.epilog.scalar.ph197.prol ]
  %i.iq = add nsw i64 %wide.trip.count72, -1
  %i.ir = icmp eq i64 %indvars.iv69.ph, %i.iq
  br i1 %i.ir, label %._crit_edge, label %vec.epilog.scalar.ph197

.lr.ph56:                                         ; preds = %.lr.ph56.preheader, %.lr.ph56
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %.lr.ph56 ], [ %indvars.iv64.ph, %.lr.ph56.preheader ] ; 4 uses
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %.lr.ph56 ], [ %indvars.iv62.ph, %.lr.ph56.preheader ] ; 2 uses
  %i.is = mul nsw i64 %indvars.iv64, %i.bs
  %i.it = getelementptr inbounds [4 x i8], ptr %2, i64 %i.is
  %i.iu = load float, ptr %i.it, align 4, !tbaa !11
  %i.iv = fmul reassoc nsz arcp contract afn float %i.iu, 2.000000e+00
  %i.iw = sub nsw i64 %indvars.iv64, %i.bp
  %i.ix = mul nsw i64 %i.iw, %i.bs
  %i.iy = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ix
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !11
  %i.ja = fadd reassoc nsz arcp contract afn float %i.iv, %i.iz
  %i.jb = mul nsw i64 %indvars.iv62, %i.bs
  %i.jc = getelementptr inbounds [4 x i8], ptr %2, i64 %i.jb
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !11
  %i.je = fadd reassoc nsz arcp contract afn float %i.ja, %i.jd
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv64
  store float %i.je, ptr %i.jf, align 4, !tbaa !11
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 3 uses
  %i.jg = icmp slt i64 %indvars.iv.next65, %invariant.op
  %indvars.iv.next63 = add nsw i64 %indvars.iv62, 1
  br i1 %i.jg, label %.lr.ph56, label %.preheader.loopexit, !llvm.loop !43

vec.epilog.scalar.ph197:                          ; preds = %vec.epilog.scalar.ph197.prol.loopexit, %vec.epilog.scalar.ph197
  %indvars.iv69 = phi i64 [ %indvars.iv.next70.1, %vec.epilog.scalar.ph197 ], [ %indvars.iv69.unr, %vec.epilog.scalar.ph197.prol.loopexit ] ; 6 uses
  %i.jh = mul nsw i64 %indvars.iv69, %i.es
  %i.ji = getelementptr inbounds [4 x i8], ptr %2, i64 %i.jh
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !11
  %i.jk = fmul reassoc nsz arcp contract afn float %i.jj, 2.000000e+00
  %i.jl = sub nsw i64 %indvars.iv69, %i.et
  %i.jm = mul nsw i64 %i.jl, %i.es
  %i.jn = getelementptr inbounds [4 x i8], ptr %2, i64 %i.jm
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !11
  %i.jp = fadd reassoc nsz arcp contract afn float %i.jk, %i.jo
  %i.jq = trunc nsw i64 %indvars.iv69 to i32
  %i.jr = add i32 %5, %i.jq
  %i.js = sub i32 %.neg52, %i.jr
  %i.jt = mul nsw i32 %i.js, %3
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ju
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !11
  %i.jx = fadd reassoc nsz arcp contract afn float %i.jp, %i.jw
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv69
  store float %i.jx, ptr %i.jy, align 4, !tbaa !11
  %indvars.iv.next70 = add nsw i64 %indvars.iv69, 1 ; 4 uses
  %i.jz = mul nsw i64 %indvars.iv.next70, %i.es
  %i.ka = getelementptr inbounds [4 x i8], ptr %2, i64 %i.jz
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !11
  %i.kc = fmul reassoc nsz arcp contract afn float %i.kb, 2.000000e+00
  %i.kd = sub nsw i64 %indvars.iv.next70, %i.et
  %i.ke = mul nsw i64 %i.kd, %i.es
  %i.kf = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ke
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !11
  %i.kh = fadd reassoc nsz arcp contract afn float %i.kc, %i.kg
  %i.ki = trunc nsw i64 %indvars.iv.next70 to i32
  %i.kj = add i32 %5, %i.ki
  %i.kk = sub i32 %.neg52, %i.kj
  %i.kl = mul nsw i32 %i.kk, %3
  %i.km = sext i32 %i.kl to i64
  %i.kn = getelementptr inbounds [4 x i8], ptr %2, i64 %i.km
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !11
  %i.kp = fadd reassoc nsz arcp contract afn float %i.kh, %i.ko
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next70
  store float %i.kp, ptr %i.kq, align 4, !tbaa !11
  %indvars.iv.next70.1 = add nsw i64 %indvars.iv69, 2 ; 2 uses
  %exitcond73.not.1 = icmp eq i64 %indvars.iv.next70.1, %wide.trip.count72
  br i1 %exitcond73.not.1, label %._crit_edge, label %vec.epilog.scalar.ph197, !llvm.loop !44

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph197.prol.loopexit, %vec.epilog.scalar.ph197, %middle.block192, %vec.epilog.middle.block209, %.preheader
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw15wavelet_denoiseEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca [2 x float], align 8              ; 4 uses
  %i.b = alloca [2 x i32], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 30 ; 4 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !45   ; 2 uses
  %i.f = icmp ult i16 %i.e, 65
  br i1 %i.f, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.h = load i16, ptr %i.g, align 4, !tbaa !107  ; 2 uses
  %i.i = icmp ult i16 %i.h, 65
  br i1 %i.i, label %bb.ad, label %.preheader300

.preheader300:                                    ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 153096 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !108  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader300
  %.0231 = phi i32 [ %i.n, %bb.c ], [ 1, %.preheader300 ] ; 3 uses
  %i.l = shl i32 %i.k, %.0231
  %i.m = icmp ult i32 %i.l, 65536
  %i.n = add nuw nsw i32 %.0231, 1
  br i1 %i.m, label %bb.c, label %bb.d, !llvm.loop !109

bb.d:                                             ; preds = %bb.c
  %i.o = add nsw i32 %.0231, -1                   ; 6 uses
  %i.p = shl i32 %i.k, %i.o
  store i32 %i.p, ptr %i.j, align 8, !tbaa !108
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 153088 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !110
  %i.s = shl i32 %i.r, %i.o
  store i32 %i.s, ptr %i.q, align 8, !tbaa !110
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136672 ; 4 uses
  %i.u = load <4 x i32>, ptr %i.t, align 8, !tbaa !111
  %i.v = insertelement <4 x i32> poison, i32 %i.o, i64 0
  %i.w = shufflevector <4 x i32> %i.v, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.x = shl <4 x i32> %i.u, %i.w
  store <4 x i32> %i.x, ptr %i.t, align 8, !tbaa !111
  %i.y = zext i16 %i.h to i32                     ; 2 uses
  %i.z = zext i16 %i.e to i32                     ; 2 uses
  %i.aa = mul nuw nsw i32 %i.y, %i.z              ; 9 uses
  %i.ab = icmp samesign ult i32 %i.aa, 357892096
  %i.ac = mul i32 %i.aa, 3                        ; 2 uses
  br i1 %i.ab, label %bb.e, label %._crit_edge412

bb.e:                                             ; preds = %bb.d
  %i.ad = add nuw nsw i32 %i.z, 128
  %i.ae = add nuw nsw i32 %i.ad, %i.y
  %i.af = add nuw nsw i32 %i.ae, %i.ac
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 2
  %i.ai = tail call noundef ptr @_ZN6LibRaw6mallocEm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.ah)
  br label %._crit_edge412

._crit_edge412:                                   ; preds = %bb.d, %bb.e
  %.0233 = phi ptr [ %i.ai, %bb.e ], [ null, %bb.d ] ; 58 uses
  %i.aj = zext i32 %i.ac to i64                   ; 9 uses
  %i.ak = getelementptr [4 x i8], ptr %.0233, i64 %i.aj ; 52 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.am = load i32, ptr %i.al, align 4, !tbaa !112 ; 3 uses
  %i.an = icmp ne i32 %i.am, 3                    ; 2 uses
  br i1 %i.an, label %bb.f, label %.thread

.thread:                                          ; preds = %._crit_edge412
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !113
  %.not = icmp eq i32 %i.ap, 0
  %spec.select = select i1 %.not, i32 3, i32 4
  br label %.preheader299.lr.ph

bb.f:                                             ; preds = %._crit_edge412
  %i.aq = icmp sgt i32 %i.am, 0
  br i1 %i.aq, label %.preheader299.lr.ph, label %.loopexit293

.preheader299.lr.ph:                              ; preds = %.thread, %bb.f
  %.0218431 = phi i32 [ %spec.select, %.thread ], [ %i.am, %bb.f ]
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !114
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 5372
  %wide.trip.count388 = zext nneg i32 %.0218431 to i64
  %wide.trip.count = zext nneg i32 %i.aa to i64   ; 17 uses
  %i.at = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %scevgep = getelementptr i8, ptr %.0233, i64 %i.at ; 3 uses
  %scevgep454 = getelementptr i8, ptr %.0233, i64 %i.at
  %i.au = mul nsw i64 %i.aj, -4                   ; 2 uses
  %i.av = shl nuw nsw i64 %i.aj, 2                ; 6 uses
  %scevgep534 = getelementptr i8, ptr %.0233, i64 %i.av
  %scevgep648 = getelementptr i8, ptr %.0233, i64 %i.av
  %scevgep650 = getelementptr i8, ptr %.0233, i64 -4
  %scevgep653 = getelementptr i8, ptr %.0233, i64 4
  %scevgep658 = getelementptr i8, ptr %.0233, i64 -4
  %scevgep749 = getelementptr i8, ptr %.0233, i64 %i.av
  %scevgep861 = getelementptr i8, ptr %.0233, i64 %i.av
  %scevgep865 = getelementptr i8, ptr %.0233, i64 4
  %scevgep867 = getelementptr i8, ptr %.0233, i64 4
  %min.iters.check929 = icmp samesign ult i32 %i.aa, 5
  %min.iters.check931 = icmp samesign ult i32 %i.aa, 33
  %i.aw = and i64 %wide.trip.count, 31            ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  %i.ay = select i1 %i.ax, i64 32, i64 %i.aw      ; 2 uses
  %n.vec933 = sub nsw i64 %wide.trip.count, %i.ay ; 3 uses
  %broadcast.splatinsert934 = insertelement <8 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat935 = shufflevector <8 x i32> %broadcast.splatinsert934, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %min.epilog.iters.check950 = icmp samesign ult i64 %i.ay, 5
  %i.az = and i64 %wide.trip.count, 3             ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  %i.bb = select i1 %i.ba, i64 4, i64 %i.az
  %n.vec952 = sub nsw i64 %wide.trip.count, %i.bb ; 2 uses
  %broadcast.splatinsert953 = insertelement <4 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat954 = shufflevector <4 x i32> %broadcast.splatinsert953, <4 x i32> poison, <4 x i32> zeroinitializer
  %invariant.op1024 = add i64 %i.au, -1
  %invariant.op1022 = add i64 %i.au, -1
  %min.iters.check464 = icmp samesign ult i32 %i.aa, 4
  %min.iters.check465 = icmp samesign ult i32 %i.aa, 16
  %i.bc = and i64 %wide.trip.count, 12
  %n.vec467 = and i64 %wide.trip.count, 2147483632 ; 4 uses
  %cmp.n484 = icmp eq i64 %n.vec467, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.bc, 0
  %n.vec485 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n499 = icmp eq i64 %n.vec485, %wide.trip.count
  %xtraiter995 = and i64 %wide.trip.count, 1
  %lcmp.mod996.not = icmp eq i64 %xtraiter995, 0
  %i.bd = add nsw i64 %wide.trip.count, -1
  %min.iters.check = icmp samesign ult i32 %i.aa, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %iter.check947

iter.check947:                                    ; preds = %.preheader299.lr.ph, %.loopexit963
  %indvars.iv385 = phi i64 [ 0, %.preheader299.lr.ph ], [ %indvars.iv.next386, %.loopexit963 ] ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv385 ; 8 uses
  br i1 %min.iters.check929, label %vec.epilog.scalar.ph948.preheader, label %vector.main.loop.iter.check930

vector.main.loop.iter.check930:                   ; preds = %iter.check947
  br i1 %min.iters.check931, label %vec.epilog.ph951, label %vector.body936

vector.body936:                                   ; preds = %vector.main.loop.iter.check930, %vector.body936
  %index937 = phi i64 [ %index.next944, %vector.body936 ], [ 0, %vector.main.loop.iter.check930 ] ; 6 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index937
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index937
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index937
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 128
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index937
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 192
  %wide.vec = load <32 x i16>, ptr %i.be, align 2, !tbaa !115
  %strided.vec = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec938 = load <32 x i16>, ptr %i.bg, align 2, !tbaa !115
  %strided.vec939 = shufflevector <32 x i16> %wide.vec938, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec940 = load <32 x i16>, ptr %i.bi, align 2, !tbaa !115
  %strided.vec941 = shufflevector <32 x i16> %wide.vec940, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec942 = load <32 x i16>, ptr %i.bk, align 2, !tbaa !115
  %strided.vec943 = shufflevector <32 x i16> %wide.vec942, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.bl = zext <8 x i16> %strided.vec to <8 x i32>
  %i.bm = zext <8 x i16> %strided.vec939 to <8 x i32>
  %i.bn = zext <8 x i16> %strided.vec941 to <8 x i32>
  %i.bo = zext <8 x i16> %strided.vec943 to <8 x i32>
  %i.bp = shl <8 x i32> %i.bl, %broadcast.splat935
  %i.bq = shl <8 x i32> %i.bm, %broadcast.splat935
  %i.br = shl <8 x i32> %i.bn, %broadcast.splat935
  %i.bs = shl <8 x i32> %i.bo, %broadcast.splat935
  %i.bt = sitofp reassoc nsz arcp contract afn <8 x i32> %i.bp to <8 x float>
  %i.bu = sitofp reassoc nsz arcp contract afn <8 x i32> %i.bq to <8 x float>
  %i.bv = sitofp reassoc nsz arcp contract afn <8 x i32> %i.br to <8 x float>
  %i.bw = sitofp reassoc nsz arcp contract afn <8 x i32> %i.bs to <8 x float>
  %i.bx = tail call reassoc ninf nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.bt)
  %i.by = tail call reassoc ninf nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.bu)
  %i.bz = tail call reassoc ninf nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.bv)
  %i.ca = tail call reassoc ninf nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.bw)
  %i.cb = fmul reassoc nsz arcp contract afn <8 x float> %i.bx, splat (float 2.560000e+02)
  %i.cc = fmul reassoc nsz arcp contract afn <8 x float> %i.by, splat (float 2.560000e+02)
  %i.cd = fmul reassoc nsz arcp contract afn <8 x float> %i.bz, splat (float 2.560000e+02)
  %i.ce = fmul reassoc nsz arcp contract afn <8 x float> %i.ca, splat (float 2.560000e+02)
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %index937 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 96
  store <8 x float> %i.cb, ptr %i.cf, align 4, !tbaa !11
  store <8 x float> %i.cc, ptr %i.cg, align 4, !tbaa !11
  store <8 x float> %i.cd, ptr %i.ch, align 4, !tbaa !11
  store <8 x float> %i.ce, ptr %i.ci, align 4, !tbaa !11
end_hunk_0
begin_hunk_1_@_ZN6LibRaw15wavelet_denoiseEv:bb.a
  br i1 %conflict.rdx822, label %.lr.ph56.i.preheader, label %vector.main.loop.iter.check826

vector.main.loop.iter.check826:                   ; preds = %vector.memcheck817
  br i1 %min.iters.check827, label %vec.epilog.ph848, label %vector.ph828

vector.ph828:                                     ; preds = %vector.main.loop.iter.check826
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %i.fc
  br label %vector.body830

vector.body830:                                   ; preds = %vector.body830, %vector.ph828
  %index831 = phi i64 [ 0, %vector.ph828 ], [ %index.next838, %vector.body830 ] ; 4 uses
  %i.kc = add nuw i64 %index831, %i.ez            ; 2 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %i.kc ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 32
  %wide.load832 = load <8 x float>, ptr %i.kd, align 4, !tbaa !11
  %wide.load833 = load <8 x float>, ptr %i.ke, align 4, !tbaa !11
  %i.kf = fmul reassoc nsz arcp contract afn <8 x float> %wide.load832, splat (float 2.000000e+00)
  %i.kg = fmul reassoc nsz arcp contract afn <8 x float> %wide.load833, splat (float 2.000000e+00)
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %index831 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 32
  %wide.load834 = load <8 x float>, ptr %i.kh, align 4, !tbaa !11
  %wide.load835 = load <8 x float>, ptr %i.ki, align 4, !tbaa !11
  %i.kj = fadd reassoc nsz arcp contract afn <8 x float> %i.kf, %wide.load834
  %i.kk = fadd reassoc nsz arcp contract afn <8 x float> %i.kg, %wide.load835
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %index831 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 32
  %wide.load836 = load <8 x float>, ptr %i.kl, align 4, !tbaa !11
  %wide.load837 = load <8 x float>, ptr %i.km, align 4, !tbaa !11
  %i.kn = fadd reassoc nsz arcp contract afn <8 x float> %i.kj, %wide.load836
  %i.ko = fadd reassoc nsz arcp contract afn <8 x float> %i.kk, %wide.load837
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.kc ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 32
  store <8 x float> %i.kn, ptr %i.kp, align 4, !tbaa !11
  store <8 x float> %i.ko, ptr %i.kq, align 4, !tbaa !11
  %index.next838 = add nuw i64 %index831, 16      ; 2 uses
  %i.kr = icmp eq i64 %index.next838, %n.vec829
  br i1 %i.kr, label %middle.block839, label %vector.body830, !llvm.loop !135

middle.block839:                                  ; preds = %vector.body830
  br i1 %cmp.n840, label %.preheader.loopexit.i, label %vec.epilog.iter.check846

vec.epilog.iter.check846:                         ; preds = %middle.block839
  br i1 %min.epilog.iters.check847, label %.lr.ph56.i.preheader, label %vec.epilog.ph848, !prof !28

vec.epilog.ph848:                                 ; preds = %vector.main.loop.iter.check826, %vec.epilog.iter.check846
  %vec.epilog.resume.val841 = phi i64 [ %n.vec829, %vec.epilog.iter.check846 ], [ 0, %vector.main.loop.iter.check826 ]
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %i.fc
  br label %vec.epilog.vector.body850

vec.epilog.vector.body850:                        ; preds = %vec.epilog.vector.body850, %vec.epilog.ph848
  %index851 = phi i64 [ %vec.epilog.resume.val841, %vec.epilog.ph848 ], [ %index.next855, %vec.epilog.vector.body850 ] ; 4 uses
  %i.kt = add nuw i64 %index851, %i.ez            ; 2 uses
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %i.kt
  %wide.load852 = load <4 x float>, ptr %i.ku, align 4, !tbaa !11
  %i.kv = fmul reassoc nsz arcp contract afn <4 x float> %wide.load852, splat (float 2.000000e+00)
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %index851
  %wide.load853 = load <4 x float>, ptr %i.kw, align 4, !tbaa !11
  %i.kx = fadd reassoc nsz arcp contract afn <4 x float> %i.kv, %wide.load853
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %index851
  %wide.load854 = load <4 x float>, ptr %i.ky, align 4, !tbaa !11
  %i.kz = fadd reassoc nsz arcp contract afn <4 x float> %i.kx, %wide.load854
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.kt
  store <4 x float> %i.kz, ptr %i.la, align 4, !tbaa !11
  %index.next855 = add nuw i64 %index851, 4       ; 2 uses
  %i.lb = icmp eq i64 %index.next855, %n.vec849
  br i1 %i.lb, label %vec.epilog.middle.block856, label %vec.epilog.vector.body850, !llvm.loop !136

vec.epilog.middle.block856:                       ; preds = %vec.epilog.vector.body850
  br i1 %cmp.n857, label %.preheader.loopexit.i, label %.lr.ph56.i.preheader

.lr.ph56.i.preheader:                             ; preds = %vector.memcheck817, %iter.check844, %vec.epilog.iter.check846, %vec.epilog.middle.block856
  %indvars.iv64.i.ph = phi i64 [ %i.ez, %iter.check844 ], [ %i.ez, %vector.memcheck817 ], [ %i.gg, %vec.epilog.iter.check846 ], [ %i.gi, %vec.epilog.middle.block856 ]
  %indvars.iv62.i.ph = phi i64 [ %i.fc, %iter.check844 ], [ %i.fc, %vector.memcheck817 ], [ %i.gh, %vec.epilog.iter.check846 ], [ %i.gj, %vec.epilog.middle.block856 ]
  br label %.lr.ph56.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 8 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %indvars.iv.i
  %i.ld = load float, ptr %i.lc, align 4, !tbaa !11
  %i.le = fmul reassoc nsz arcp contract afn float %i.ld, 2.000000e+00
  %i.lf = sub nsw i64 %i.ez, %indvars.iv.i
  %i.lg = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %i.lf
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !11
  %i.li = fadd reassoc nsz arcp contract afn float %i.le, %i.lh
  %gep308 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep307, i64 %indvars.iv.i
  %i.lj = load float, ptr %gep308, align 4, !tbaa !11
  %i.lk = fadd reassoc nsz arcp contract afn float %i.li, %i.lj
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i
  store float %i.lk, ptr %i.ll, align 4, !tbaa !11
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 4 uses
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %indvars.iv.next.i
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !11
  %i.lo = fmul reassoc nsz arcp contract afn float %i.ln, 2.000000e+00
  %i.lp = sub nsw i64 %i.ez, %indvars.iv.next.i
  %i.lq = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %i.lp
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !11
  %i.ls = fadd reassoc nsz arcp contract afn float %i.lo, %i.lr
  %gep308.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep307, i64 %indvars.iv.next.i
  %i.lt = load float, ptr %gep308.1, align 4, !tbaa !11
  %i.lu = fadd reassoc nsz arcp contract afn float %i.ls, %i.lt
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next.i
  store float %i.lu, ptr %i.lv, align 4, !tbaa !11
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 4 uses
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %indvars.iv.next.i.1
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !11
  %i.ly = fmul reassoc nsz arcp contract afn float %i.lx, 2.000000e+00
  %i.lz = sub nsw i64 %i.ez, %indvars.iv.next.i.1
  %i.ma = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %i.lz
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !11
  %i.mc = fadd reassoc nsz arcp contract afn float %i.ly, %i.mb
  %gep308.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep307, i64 %indvars.iv.next.i.1
  %i.md = load float, ptr %gep308.2, align 4, !tbaa !11
  %i.me = fadd reassoc nsz arcp contract afn float %i.mc, %i.md
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next.i.1
  store float %i.me, ptr %i.mf, align 4, !tbaa !11
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 4 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %indvars.iv.next.i.2
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !11
  %i.mi = fmul reassoc nsz arcp contract afn float %i.mh, 2.000000e+00
  %i.mj = sub nsw i64 %i.ez, %indvars.iv.next.i.2
  %i.mk = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %i.mj
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !11
  %i.mm = fadd reassoc nsz arcp contract afn float %i.mi, %i.ml
  %gep308.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep307, i64 %indvars.iv.next.i.2
  %i.mn = load float, ptr %gep308.3, align 4, !tbaa !11
  %i.mo = fadd reassoc nsz arcp contract afn float %i.mm, %i.mn
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next.i.2
  store float %i.mo, ptr %i.mp, align 4, !tbaa !11
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader53.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !137

.preheader.loopexit.i:                            ; preds = %.lr.ph56.i, %vec.epilog.middle.block856, %middle.block839
  %indvars.iv.next65.i.lcssa = phi i64 [ %i.gi, %vec.epilog.middle.block856 ], [ %i.gg, %middle.block839 ], [ %indvars.iv.next65.i, %.lr.ph56.i ]
  %i.mq = trunc nsw i64 %indvars.iv.next65.i.lcssa to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.preheader53.i
  %.1.lcssa.i = phi i32 [ %i.ey, %.preheader53.i ], [ %i.mq, %.preheader.loopexit.i ] ; 4 uses
  %i.mr = icmp slt i32 %.1.lcssa.i, %i.cv
  br i1 %i.mr, label %iter.check801, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit

iter.check801:                                    ; preds = %.preheader.i
  %i.ms = sext i32 %.1.lcssa.i to i64             ; 11 uses
  %i.mt = sub nsw i64 %i.cw, %i.ms                ; 7 uses
  %min.iters.check773 = icmp ult i64 %i.mt, 8
  br i1 %min.iters.check773, label %vec.epilog.scalar.ph802.preheader, label %vector.scevcheck747

vector.scevcheck747:                              ; preds = %iter.check801
  %i.mu = xor i64 %i.ms, -1
  %i.mv = add nsw i64 %i.mu, %i.cw                ; 2 uses
  %i.mw = add i32 %i.ey, %.1.lcssa.i
  %i.mx = sub i32 %i.dk, %i.mw                    ; 2 uses
  %i.my = trunc i64 %i.mv to i32
  %i.mz = sub i32 %i.mx, %i.my
  %i.na = icmp sgt i32 %i.mz, %i.mx
  %i.nb = icmp ugt i64 %i.mv, 4294967295
  %i.nc = or i1 %i.na, %i.nb
  br i1 %i.nc, label %vec.epilog.scalar.ph802.preheader, label %vector.memcheck748

vector.memcheck748:                               ; preds = %vector.scevcheck747
  %i.nd = shl nsw i64 %i.ms, 2                    ; 3 uses
  %scevgep750 = getelementptr i8, ptr %scevgep749, i64 %i.nd ; 3 uses
  %scevgep752 = getelementptr i8, ptr %i.ib, i64 %i.nd
  %scevgep755 = getelementptr i8, ptr %scevgep754, i64 %i.nd
  %i.ne = add i32 %i.ey, %.1.lcssa.i
  %i.nf = sub i32 %i.dp, %i.ne
  %i.ng = sext i32 %i.nf to i64                   ; 2 uses
  %i.nh = add nsw i64 %i.ms, %i.ng
  %i.ni = shl nsw i64 %i.nh, 2
  %scevgep758 = getelementptr i8, ptr %scevgep757, i64 %i.ni
  %i.nj = shl nsw i64 %i.ng, 2
  %scevgep760 = getelementptr i8, ptr %scevgep759, i64 %i.nj
  %bound0761 = icmp ult ptr %scevgep750, %scevgep753
  %bound1762 = icmp ult ptr %scevgep752, %scevgep751
  %found.conflict763 = and i1 %bound0761, %bound1762
  %bound0764 = icmp ult ptr %scevgep750, %scevgep756
  %bound1765 = icmp ult ptr %scevgep755, %scevgep751
  %found.conflict766 = and i1 %bound0764, %bound1765
  %conflict.rdx767 = or i1 %found.conflict763, %found.conflict766
  %bound0768 = icmp ult ptr %scevgep750, %scevgep760
  %bound1769 = icmp ult ptr %scevgep758, %scevgep751
  %found.conflict770 = and i1 %bound0768, %bound1769
  %conflict.rdx771 = or i1 %conflict.rdx767, %found.conflict770
  br i1 %conflict.rdx771, label %vec.epilog.scalar.ph802.preheader, label %vector.main.loop.iter.check774

vector.main.loop.iter.check774:                   ; preds = %vector.memcheck748
  %min.iters.check775 = icmp ult i64 %i.mt, 32
  br i1 %min.iters.check775, label %vec.epilog.ph805, label %vector.ph776

vector.ph776:                                     ; preds = %vector.main.loop.iter.check774
  %i.nk = and i64 %i.mt, 24
  %n.vec777 = and i64 %i.mt, -32                  ; 4 uses
  %i.nl = add nsw i64 %n.vec777, %i.ms
  br label %vector.body778

vector.body778:                                   ; preds = %vector.body778, %vector.ph776
  %index779 = phi i64 [ 0, %vector.ph776 ], [ %index.next796, %vector.body778 ] ; 2 uses
  %i.nm = add i64 %index779, %i.ms                ; 4 uses
  %i.nn = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %i.nm ; 4 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 32
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 64
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nn, i64 96
  %wide.load780 = load <8 x float>, ptr %i.nn, align 4, !tbaa !11, !alias.scope !138
  %wide.load781 = load <8 x float>, ptr %i.no, align 4, !tbaa !11, !alias.scope !138
  %wide.load782 = load <8 x float>, ptr %i.np, align 4, !tbaa !11, !alias.scope !138
  %wide.load783 = load <8 x float>, ptr %i.nq, align 4, !tbaa !11, !alias.scope !138
  %i.nr = fmul reassoc nsz arcp contract afn <8 x float> %wide.load780, splat (float 2.000000e+00)
  %i.ns = fmul reassoc nsz arcp contract afn <8 x float> %wide.load781, splat (float 2.000000e+00)
  %i.nt = fmul reassoc nsz arcp contract afn <8 x float> %wide.load782, splat (float 2.000000e+00)
  %i.nu = fmul reassoc nsz arcp contract afn <8 x float> %wide.load783, splat (float 2.000000e+00)
  %i.nv = sub nsw i64 %i.nm, %i.ez
  %i.nw = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %i.nv ; 4 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 32
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nw, i64 64
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nw, i64 96
  %wide.load784 = load <8 x float>, ptr %i.nw, align 4, !tbaa !11, !alias.scope !141
  %wide.load785 = load <8 x float>, ptr %i.nx, align 4, !tbaa !11, !alias.scope !141
  %wide.load786 = load <8 x float>, ptr %i.ny, align 4, !tbaa !11, !alias.scope !141
  %wide.load787 = load <8 x float>, ptr %i.nz, align 4, !tbaa !11, !alias.scope !141
  %i.oa = fadd reassoc nsz arcp contract afn <8 x float> %i.nr, %wide.load784
  %i.ob = fadd reassoc nsz arcp contract afn <8 x float> %i.ns, %wide.load785
  %i.oc = fadd reassoc nsz arcp contract afn <8 x float> %i.nt, %wide.load786
  %i.od = fadd reassoc nsz arcp contract afn <8 x float> %i.nu, %wide.load787
  %i.oe = trunc nsw i64 %i.nm to i32
  %i.of = add i32 %i.ey, %i.oe
  %i.og = sub i32 %i.db, %i.of
  %i.oh = sext i32 %i.og to i64
  %i.oi = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %i.oh ; 4 uses
  %i.oj = getelementptr inbounds i8, ptr %i.oi, i64 -28
  %i.ok = getelementptr inbounds i8, ptr %i.oi, i64 -60
  %i.ol = getelementptr inbounds i8, ptr %i.oi, i64 -92
  %i.om = getelementptr inbounds i8, ptr %i.oi, i64 -124
  %wide.load788 = load <8 x float>, ptr %i.oj, align 4, !tbaa !11, !alias.scope !143
  %wide.load789 = load <8 x float>, ptr %i.ok, align 4, !tbaa !11, !alias.scope !143
  %wide.load790 = load <8 x float>, ptr %i.ol, align 4, !tbaa !11, !alias.scope !143
  %wide.load791 = load <8 x float>, ptr %i.om, align 4, !tbaa !11, !alias.scope !143
  %reverse792 = shufflevector <8 x float> %wide.load788, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse793 = shufflevector <8 x float> %wide.load789, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse794 = shufflevector <8 x float> %wide.load790, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse795 = shufflevector <8 x float> %wide.load791, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.on = fadd reassoc nsz arcp contract afn <8 x float> %i.oa, %reverse792
  %i.oo = fadd reassoc nsz arcp contract afn <8 x float> %i.ob, %reverse793
  %i.op = fadd reassoc nsz arcp contract afn <8 x float> %i.oc, %reverse794
  %i.oq = fadd reassoc nsz arcp contract afn <8 x float> %i.od, %reverse795
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.nm ; 4 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 32
  %i.ot = getelementptr inbounds nuw i8, ptr %i.or, i64 64
  %i.ou = getelementptr inbounds nuw i8, ptr %i.or, i64 96
  store <8 x float> %i.on, ptr %i.or, align 4, !tbaa !11, !alias.scope !145, !noalias !147
  store <8 x float> %i.oo, ptr %i.os, align 4, !tbaa !11, !alias.scope !145, !noalias !147
  store <8 x float> %i.op, ptr %i.ot, align 4, !tbaa !11, !alias.scope !145, !noalias !147
  store <8 x float> %i.oq, ptr %i.ou, align 4, !tbaa !11, !alias.scope !145, !noalias !147
  %index.next796 = add nuw i64 %index779, 32      ; 2 uses
  %i.ov = icmp eq i64 %index.next796, %n.vec777
  br i1 %i.ov, label %middle.block797, label %vector.body778, !llvm.loop !148

middle.block797:                                  ; preds = %vector.body778
  %cmp.n798 = icmp eq i64 %i.mt, %n.vec777
  br i1 %cmp.n798, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit, label %vec.epilog.iter.check803

vec.epilog.iter.check803:                         ; preds = %middle.block797
  %min.epilog.iters.check804 = icmp eq i64 %i.nk, 0
  br i1 %min.epilog.iters.check804, label %vec.epilog.scalar.ph802.preheader, label %vec.epilog.ph805, !prof !25

vec.epilog.ph805:                                 ; preds = %vector.main.loop.iter.check774, %vec.epilog.iter.check803
  %vec.epilog.resume.val799 = phi i64 [ %n.vec777, %vec.epilog.iter.check803 ], [ 0, %vector.main.loop.iter.check774 ]
  %n.vec806 = and i64 %i.mt, -8                   ; 3 uses
  %i.ow = add nsw i64 %n.vec806, %i.ms
  br label %vec.epilog.vector.body807

vec.epilog.vector.body807:                        ; preds = %vec.epilog.vector.body807, %vec.epilog.ph805
  %index808 = phi i64 [ %vec.epilog.resume.val799, %vec.epilog.ph805 ], [ %index.next813, %vec.epilog.vector.body807 ] ; 2 uses
  %i.ox = add i64 %index808, %i.ms                ; 4 uses
  %i.oy = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %i.ox
  %wide.load809 = load <8 x float>, ptr %i.oy, align 4, !tbaa !11, !alias.scope !138
  %i.oz = fmul reassoc nsz arcp contract afn <8 x float> %wide.load809, splat (float 2.000000e+00)
  %i.pa = sub nsw i64 %i.ox, %i.ez
  %i.pb = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %i.pa
  %wide.load810 = load <8 x float>, ptr %i.pb, align 4, !tbaa !11, !alias.scope !141
  %i.pc = fadd reassoc nsz arcp contract afn <8 x float> %i.oz, %wide.load810
  %i.pd = trunc nsw i64 %i.ox to i32
  %i.pe = add i32 %i.ey, %i.pd
  %i.pf = sub i32 %i.db, %i.pe
  %i.pg = sext i32 %i.pf to i64
  %i.ph = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %i.pg
  %i.pi = getelementptr inbounds i8, ptr %i.ph, i64 -28
  %wide.load811 = load <8 x float>, ptr %i.pi, align 4, !tbaa !11, !alias.scope !143
  %reverse812 = shufflevector <8 x float> %wide.load811, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.pj = fadd reassoc nsz arcp contract afn <8 x float> %i.pc, %reverse812
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ox
  store <8 x float> %i.pj, ptr %i.pk, align 4, !tbaa !11, !alias.scope !145, !noalias !147
  %index.next813 = add nuw i64 %index808, 8       ; 2 uses
  %i.pl = icmp eq i64 %index.next813, %n.vec806
  br i1 %i.pl, label %vec.epilog.middle.block814, label %vec.epilog.vector.body807, !llvm.loop !149

vec.epilog.middle.block814:                       ; preds = %vec.epilog.vector.body807
  %cmp.n815 = icmp eq i64 %i.mt, %n.vec806
  br i1 %cmp.n815, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit, label %vec.epilog.scalar.ph802.preheader

vec.epilog.scalar.ph802.preheader:                ; preds = %vector.memcheck748, %vector.scevcheck747, %iter.check801, %vec.epilog.iter.check803, %vec.epilog.middle.block814
  %indvars.iv69.i.ph = phi i64 [ %i.ms, %iter.check801 ], [ %i.ms, %vector.scevcheck747 ], [ %i.ms, %vector.memcheck748 ], [ %i.nl, %vec.epilog.iter.check803 ], [ %i.ow, %vec.epilog.middle.block814 ] ; 8 uses
  %i.pm = sub i64 %i.cz, %indvars.iv69.i.ph
  %xtraiter979 = and i64 %i.pm, 1
  %lcmp.mod980.not = icmp eq i64 %xtraiter979, 0
  br i1 %lcmp.mod980.not, label %vec.epilog.scalar.ph802.prol.loopexit, label %vec.epilog.scalar.ph802.prol

vec.epilog.scalar.ph802.prol:                     ; preds = %vec.epilog.scalar.ph802.preheader
  %i.pn = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %indvars.iv69.i.ph
  %i.po = load float, ptr %i.pn, align 4, !tbaa !11
  %i.pp = fmul reassoc nsz arcp contract afn float %i.po, 2.000000e+00
  %i.pq = sub nsw i64 %indvars.iv69.i.ph, %i.ez
  %i.pr = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %i.pq
  %i.ps = load float, ptr %i.pr, align 4, !tbaa !11
  %i.pt = fadd reassoc nsz arcp contract afn float %i.pp, %i.ps
  %i.pu = trunc nsw i64 %indvars.iv69.i.ph to i32
  %i.pv = add i32 %i.ey, %i.pu
  %i.pw = sub i32 %i.db, %i.pv
  %i.px = sext i32 %i.pw to i64
  %i.py = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %i.px
  %i.pz = load float, ptr %i.py, align 4, !tbaa !11
  %i.qa = fadd reassoc nsz arcp contract afn float %i.pt, %i.pz
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv69.i.ph
  store float %i.qa, ptr %i.qb, align 4, !tbaa !11
  %indvars.iv.next70.i.prol = add nsw i64 %indvars.iv69.i.ph, 1
  br label %vec.epilog.scalar.ph802.prol.loopexit

vec.epilog.scalar.ph802.prol.loopexit:            ; preds = %vec.epilog.scalar.ph802.prol, %vec.epilog.scalar.ph802.preheader
  %indvars.iv69.i.unr = phi i64 [ %indvars.iv69.i.ph, %vec.epilog.scalar.ph802.preheader ], [ %indvars.iv.next70.i.prol, %vec.epilog.scalar.ph802.prol ]
  %i.qc = icmp eq i64 %indvars.iv69.i.ph, %i.du
  br i1 %i.qc, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit, label %vec.epilog.scalar.ph802

.lr.ph56.i:                                       ; preds = %.lr.ph56.i.preheader, %.lr.ph56.i
  %indvars.iv64.i = phi i64 [ %indvars.iv.next65.i, %.lr.ph56.i ], [ %indvars.iv64.i.ph, %.lr.ph56.i.preheader ] ; 4 uses
  %indvars.iv62.i = phi i64 [ %indvars.iv.next63.i, %.lr.ph56.i ], [ %indvars.iv62.i.ph, %.lr.ph56.i.preheader ] ; 2 uses
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %indvars.iv64.i
  %i.qe = load float, ptr %i.qd, align 4, !tbaa !11
  %i.qf = fmul reassoc nsz arcp contract afn float %i.qe, 2.000000e+00
  %i.qg = sub nuw nsw i64 %indvars.iv64.i, %i.ez
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %i.qg
  %i.qi = load float, ptr %i.qh, align 4, !tbaa !11
  %i.qj = fadd reassoc nsz arcp contract afn float %i.qf, %i.qi
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %indvars.iv62.i
  %i.ql = load float, ptr %i.qk, align 4, !tbaa !11
  %i.qm = fadd reassoc nsz arcp contract afn float %i.qj, %i.ql
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv64.i
  store float %i.qm, ptr %i.qn, align 4, !tbaa !11
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 3 uses
  %i.qo = icmp slt i64 %indvars.iv.next65.i, %invariant.op.i
  %indvars.iv.next63.i = add nuw nsw i64 %indvars.iv62.i, 1
  br i1 %i.qo, label %.lr.ph56.i, label %.preheader.loopexit.i, !llvm.loop !150

vec.epilog.scalar.ph802:                          ; preds = %vec.epilog.scalar.ph802.prol.loopexit, %vec.epilog.scalar.ph802
  %indvars.iv69.i = phi i64 [ %indvars.iv.next70.i.1, %vec.epilog.scalar.ph802 ], [ %indvars.iv69.i.unr, %vec.epilog.scalar.ph802.prol.loopexit ] ; 6 uses
  %i.qp = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %indvars.iv69.i
  %i.qq = load float, ptr %i.qp, align 4, !tbaa !11
  %i.qr = fmul reassoc nsz arcp contract afn float %i.qq, 2.000000e+00
  %i.qs = sub nsw i64 %indvars.iv69.i, %i.ez
  %i.qt = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %i.qs
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !11
  %i.qv = fadd reassoc nsz arcp contract afn float %i.qr, %i.qu
  %i.qw = trunc nsw i64 %indvars.iv69.i to i32
  %i.qx = add i32 %i.ey, %i.qw
  %i.qy = sub i32 %i.db, %i.qx
  %i.qz = sext i32 %i.qy to i64
  %i.ra = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %i.qz
  %i.rb = load float, ptr %i.ra, align 4, !tbaa !11
  %i.rc = fadd reassoc nsz arcp contract afn float %i.qv, %i.rb
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv69.i
  store float %i.rc, ptr %i.rd, align 4, !tbaa !11
  %indvars.iv.next70.i = add nsw i64 %indvars.iv69.i, 1 ; 4 uses
  %i.re = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %indvars.iv.next70.i
  %i.rf = load float, ptr %i.re, align 4, !tbaa !11
  %i.rg = fmul reassoc nsz arcp contract afn float %i.rf, 2.000000e+00
  %i.rh = sub nsw i64 %indvars.iv.next70.i, %i.ez
  %i.ri = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %i.rh
  %i.rj = load float, ptr %i.ri, align 4, !tbaa !11
  %i.rk = fadd reassoc nsz arcp contract afn float %i.rg, %i.rj
  %i.rl = trunc nsw i64 %indvars.iv.next70.i to i32
  %i.rm = add i32 %i.ey, %i.rl
  %i.rn = sub i32 %i.db, %i.rm
  %i.ro = sext i32 %i.rn to i64
  %i.rp = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %i.ro
  %i.rq = load float, ptr %i.rp, align 4, !tbaa !11
  %i.rr = fadd reassoc nsz arcp contract afn float %i.rk, %i.rq
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next70.i
  store float %i.rr, ptr %i.rs, align 4, !tbaa !11
  %indvars.iv.next70.i.1 = add nsw i64 %indvars.iv69.i, 2 ; 2 uses
  %exitcond73.not.i.1 = icmp eq i64 %indvars.iv.next70.i.1, %i.cw
  br i1 %exitcond73.not.i.1, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit, label %vec.epilog.scalar.ph802, !llvm.loop !151

_ZN6LibRaw13hat_transformEPfS0_iii.exit:          ; preds = %vec.epilog.scalar.ph802.prol.loopexit, %vec.epilog.scalar.ph802, %middle.block797, %vec.epilog.middle.block814, %.preheader.i
  br i1 %.not344, label %._crit_edge, label %iter.check734

iter.check734:                                    ; preds = %_ZN6LibRaw13hat_transformEPfS0_iii.exit
  %gep438 = getelementptr [4 x i8], ptr %invariant.gep437, i64 %i.ia ; 11 uses
  %.reass1009 = add i64 %i.hz, %invariant.op1008.reass
  %diff.check717 = icmp ult i64 %.reass1009, 127
  %or.cond = select i1 %min.iters.check719, i1 true, i1 %diff.check717
  br i1 %or.cond, label %vec.epilog.scalar.ph735.preheader, label %vector.main.loop.iter.check720

vector.main.loop.iter.check720:                   ; preds = %iter.check734
  br i1 %min.iters.check721, label %vec.epilog.ph738, label %vector.body724

vector.body724:                                   ; preds = %vector.main.loop.iter.check720, %vector.body724
  %index725 = phi i64 [ %index.next730, %vector.body724 ], [ 0, %vector.main.loop.iter.check720 ] ; 3 uses
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index725 ; 4 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 32
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rt, i64 64
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rt, i64 96
  %wide.load726 = load <8 x float>, ptr %i.rt, align 4, !tbaa !11
  %wide.load727 = load <8 x float>, ptr %i.ru, align 4, !tbaa !11
  %wide.load728 = load <8 x float>, ptr %i.rv, align 4, !tbaa !11
  %wide.load729 = load <8 x float>, ptr %i.rw, align 4, !tbaa !11
  %i.rx = fmul reassoc nsz arcp contract afn <8 x float> %wide.load726, splat (float 2.500000e-01)
  %i.ry = fmul reassoc nsz arcp contract afn <8 x float> %wide.load727, splat (float 2.500000e-01)
  %i.rz = fmul reassoc nsz arcp contract afn <8 x float> %wide.load728, splat (float 2.500000e-01)
  %i.sa = fmul reassoc nsz arcp contract afn <8 x float> %wide.load729, splat (float 2.500000e-01)
  %i.sb = getelementptr [4 x i8], ptr %gep438, i64 %index725 ; 4 uses
  %i.sc = getelementptr i8, ptr %i.sb, i64 32
  %i.sd = getelementptr i8, ptr %i.sb, i64 64
  %i.se = getelementptr i8, ptr %i.sb, i64 96
  store <8 x float> %i.rx, ptr %i.sb, align 4, !tbaa !11
  store <8 x float> %i.ry, ptr %i.sc, align 4, !tbaa !11
  store <8 x float> %i.rz, ptr %i.sd, align 4, !tbaa !11
  store <8 x float> %i.sa, ptr %i.se, align 4, !tbaa !11
  %index.next730 = add nuw i64 %index725, 32      ; 2 uses
  %i.sf = icmp eq i64 %index.next730, %n.vec723
  br i1 %i.sf, label %middle.block731, label %vector.body724, !llvm.loop !152

middle.block731:                                  ; preds = %vector.body724
  br i1 %cmp.n732, label %._crit_edge, label %vec.epilog.iter.check736

vec.epilog.iter.check736:                         ; preds = %middle.block731
  br i1 %min.epilog.iters.check737, label %vec.epilog.scalar.ph735.preheader, label %vec.epilog.ph738, !prof !117

vec.epilog.ph738:                                 ; preds = %vector.main.loop.iter.check720, %vec.epilog.iter.check736
  %vec.epilog.resume.val733 = phi i64 [ %n.vec723, %vec.epilog.iter.check736 ], [ 0, %vector.main.loop.iter.check720 ]
  br label %vec.epilog.vector.body740

vec.epilog.vector.body740:                        ; preds = %vec.epilog.vector.body740, %vec.epilog.ph738
  %index741 = phi i64 [ %vec.epilog.resume.val733, %vec.epilog.ph738 ], [ %index.next743, %vec.epilog.vector.body740 ] ; 3 uses
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index741
  %wide.load742 = load <4 x float>, ptr %i.sg, align 4, !tbaa !11
  %i.sh = fmul reassoc nsz arcp contract afn <4 x float> %wide.load742, splat (float 2.500000e-01)
  %i.si = getelementptr [4 x i8], ptr %gep438, i64 %index741
  store <4 x float> %i.sh, ptr %i.si, align 4, !tbaa !11
  %index.next743 = add nuw i64 %index741, 4       ; 2 uses
  %i.sj = icmp eq i64 %index.next743, %n.vec739
  br i1 %i.sj, label %vec.epilog.middle.block744, label %vec.epilog.vector.body740, !llvm.loop !153

vec.epilog.middle.block744:                       ; preds = %vec.epilog.vector.body740
  br i1 %cmp.n745, label %._crit_edge, label %vec.epilog.scalar.ph735.preheader

vec.epilog.scalar.ph735.preheader:                ; preds = %iter.check734, %vec.epilog.iter.check736, %vec.epilog.middle.block744
  %indvars.iv351.ph = phi i64 [ 0, %iter.check734 ], [ %n.vec723, %vec.epilog.iter.check736 ], [ %n.vec739, %vec.epilog.middle.block744 ] ; 4 uses
  %i.sk = sub nsw i64 %i.cz, %indvars.iv351.ph
  %xtraiter981 = and i64 %i.sk, 7                 ; 2 uses
  %lcmp.mod982.not = icmp eq i64 %xtraiter981, 0
  br i1 %lcmp.mod982.not, label %vec.epilog.scalar.ph735.prol.loopexit, label %vec.epilog.scalar.ph735.prol

vec.epilog.scalar.ph735.prol:                     ; preds = %vec.epilog.scalar.ph735.preheader, %vec.epilog.scalar.ph735.prol
  %indvars.iv351.prol = phi i64 [ %indvars.iv.next352.prol, %vec.epilog.scalar.ph735.prol ], [ %indvars.iv351.ph, %vec.epilog.scalar.ph735.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph735.prol ], [ 0, %vec.epilog.scalar.ph735.preheader ]
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv351.prol
  %i.sm = load float, ptr %i.sl, align 4, !tbaa !11
  %i.sn = fmul reassoc nsz arcp contract afn float %i.sm, 2.500000e-01
  %i.so = getelementptr [4 x i8], ptr %gep438, i64 %indvars.iv351.prol
  store float %i.sn, ptr %i.so, align 4, !tbaa !11
  %indvars.iv.next352.prol = add nuw nsw i64 %indvars.iv351.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter981
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph735.prol.loopexit, label %vec.epilog.scalar.ph735.prol, !llvm.loop !154

vec.epilog.scalar.ph735.prol.loopexit:            ; preds = %vec.epilog.scalar.ph735.prol, %vec.epilog.scalar.ph735.preheader
  %indvars.iv351.unr = phi i64 [ %indvars.iv351.ph, %vec.epilog.scalar.ph735.preheader ], [ %indvars.iv.next352.prol, %vec.epilog.scalar.ph735.prol ]
  %i.sp = sub nsw i64 %indvars.iv351.ph, %i.cz
  %i.sq = icmp ugt i64 %i.sp, -8
  br i1 %i.sq, label %._crit_edge, label %vec.epilog.scalar.ph735

vec.epilog.scalar.ph735:                          ; preds = %vec.epilog.scalar.ph735.prol.loopexit, %vec.epilog.scalar.ph735
  %indvars.iv351 = phi i64 [ %indvars.iv.next352.7, %vec.epilog.scalar.ph735 ], [ %indvars.iv351.unr, %vec.epilog.scalar.ph735.prol.loopexit ] ; 10 uses
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv351
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !11
  %i.st = fmul reassoc nsz arcp contract afn float %i.ss, 2.500000e-01
  %i.su = getelementptr [4 x i8], ptr %gep438, i64 %indvars.iv351
  store float %i.st, ptr %i.su, align 4, !tbaa !11
  %indvars.iv.next352 = add nuw nsw i64 %indvars.iv351, 1 ; 2 uses
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next352
  %i.sw = load float, ptr %i.sv, align 4, !tbaa !11
  %i.sx = fmul reassoc nsz arcp contract afn float %i.sw, 2.500000e-01
  %i.sy = getelementptr [4 x i8], ptr %gep438, i64 %indvars.iv.next352
  store float %i.sx, ptr %i.sy, align 4, !tbaa !11
  %indvars.iv.next352.1 = add nuw nsw i64 %indvars.iv351, 2 ; 2 uses
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next352.1
  %i.ta = load float, ptr %i.sz, align 4, !tbaa !11
  %i.tb = fmul reassoc nsz arcp contract afn float %i.ta, 2.500000e-01
  %i.tc = getelementptr [4 x i8], ptr %gep438, i64 %indvars.iv.next352.1
  store float %i.tb, ptr %i.tc, align 4, !tbaa !11
  %indvars.iv.next352.2 = add nuw nsw i64 %indvars.iv351, 3 ; 2 uses
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next352.2
  %i.te = load float, ptr %i.td, align 4, !tbaa !11
  %i.tf = fmul reassoc nsz arcp contract afn float %i.te, 2.500000e-01
  %i.tg = getelementptr [4 x i8], ptr %gep438, i64 %indvars.iv.next352.2
  store float %i.tf, ptr %i.tg, align 4, !tbaa !11
  %indvars.iv.next352.3 = add nuw nsw i64 %indvars.iv351, 4 ; 2 uses
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next352.3
  %i.ti = load float, ptr %i.th, align 4, !tbaa !11
  %i.tj = fmul reassoc nsz arcp contract afn float %i.ti, 2.500000e-01
  %i.tk = getelementptr [4 x i8], ptr %gep438, i64 %indvars.iv.next352.3
  store float %i.tj, ptr %i.tk, align 4, !tbaa !11
  %indvars.iv.next352.4 = add nuw nsw i64 %indvars.iv351, 5 ; 2 uses
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next352.4
  %i.tm = load float, ptr %i.tl, align 4, !tbaa !11
  %i.tn = fmul reassoc nsz arcp contract afn float %i.tm, 2.500000e-01
  %i.to = getelementptr [4 x i8], ptr %gep438, i64 %indvars.iv.next352.4
  store float %i.tn, ptr %i.to, align 4, !tbaa !11
  %indvars.iv.next352.5 = add nuw nsw i64 %indvars.iv351, 6 ; 2 uses
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next352.5
  %i.tq = load float, ptr %i.tp, align 4, !tbaa !11
  %i.tr = fmul reassoc nsz arcp contract afn float %i.tq, 2.500000e-01
  %i.ts = getelementptr [4 x i8], ptr %gep438, i64 %indvars.iv.next352.5
  store float %i.tr, ptr %i.ts, align 4, !tbaa !11
  %indvars.iv.next352.6 = add nuw nsw i64 %indvars.iv351, 7 ; 2 uses
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next352.6
  %i.tu = load float, ptr %i.tt, align 4, !tbaa !11
  %i.tv = fmul reassoc nsz arcp contract afn float %i.tu, 2.500000e-01
  %i.tw = getelementptr [4 x i8], ptr %gep438, i64 %indvars.iv.next352.6
  store float %i.tv, ptr %i.tw, align 4, !tbaa !11
  %indvars.iv.next352.7 = add nuw nsw i64 %indvars.iv351, 8 ; 2 uses
  %exitcond355.not.7 = icmp eq i64 %indvars.iv.next352.7, %wide.trip.count354
  br i1 %exitcond355.not.7, label %._crit_edge, label %vec.epilog.scalar.ph735, !llvm.loop !155

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph735.prol.loopexit, %vec.epilog.scalar.ph735, %middle.block731, %vec.epilog.middle.block744, %_ZN6LibRaw13hat_transformEPfS0_iii.exit
  %indvars.iv.next357 = add nuw nsw i64 %indvars.iv356, 1 ; 2 uses
  %exitcond360.not = icmp eq i64 %indvars.iv.next357, %wide.trip.count359
  br i1 %exitcond360.not, label %.preheader296, label %iter.check912, !llvm.loop !156

iter.check700:                                    ; preds = %.lr.ph318, %._crit_edge316
  %indvars.iv366 = phi i64 [ 0, %.lr.ph318 ], [ %indvars.iv.next367, %._crit_edge316 ] ; 6 uses
  %i.tx = mul nsw i64 %indvars.iv366, -4          ; 3 uses
  %i.ty = shl nuw nsw i64 %indvars.iv366, 2       ; 5 uses
  %scevgep538 = getelementptr i8, ptr %i.hk, i64 %i.ty
  %scevgep539 = getelementptr i8, ptr %i.hl, i64 %i.ty
  %scevgep541 = getelementptr i8, ptr %i.hm, i64 %i.ty
  %scevgep542 = getelementptr i8, ptr %i.ho, i64 %i.ty
  %scevgep544 = getelementptr i8, ptr %i.hq, i64 %i.ty
  %i.tz = trunc i64 %indvars.iv366 to i32
  %i.ua = add i32 %i.ev, %i.tz
  %i.ub = sext i32 %i.ua to i64
  %i.uc = shl nsw i64 %i.ub, 2
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %indvars.iv366 ; 40 uses
  %or.cond965.not = xor i1 %or.cond965, true
  %brmerge1026 = select i1 %or.cond965.not, i1 true, i1 %conflict.rdx671
  br i1 %brmerge1026, label %.lr.ph.i277.preheader, label %vector.main.loop.iter.check674

.lr.ph.i277.preheader:                            ; preds = %iter.check700
  br i1 %i.hr, label %.lr.ph.i277.epil.preheader, label %.lr.ph.i277

vector.main.loop.iter.check674:                   ; preds = %iter.check700
  br i1 %min.iters.check675, label %vec.epilog.ph704, label %vector.ph676

vector.ph676:                                     ; preds = %vector.main.loop.iter.check674
  %invariant.gep1010 = getelementptr [4 x i8], ptr %i.ud, i64 %i.gn
  br label %vector.body678

vector.body678:                                   ; preds = %vector.body678, %vector.ph676
  %index679 = phi i64 [ 0, %vector.ph676 ], [ %index.next696, %vector.body678 ] ; 5 uses
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.ud, i64 %index679 ; 4 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 32
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ue, i64 64
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ue, i64 96
  %wide.load680 = load <8 x float>, ptr %i.ue, align 4, !tbaa !11, !alias.scope !157
  %wide.load681 = load <8 x float>, ptr %i.uf, align 4, !tbaa !11, !alias.scope !157
  %wide.load682 = load <8 x float>, ptr %i.ug, align 4, !tbaa !11, !alias.scope !157
  %wide.load683 = load <8 x float>, ptr %i.uh, align 4, !tbaa !11, !alias.scope !157
  %i.ui = fmul reassoc nsz arcp contract afn <8 x float> %wide.load680, splat (float 2.000000e+00)
  %i.uj = fmul reassoc nsz arcp contract afn <8 x float> %wide.load681, splat (float 2.000000e+00)
  %i.uk = fmul reassoc nsz arcp contract afn <8 x float> %wide.load682, splat (float 2.000000e+00)
  %i.ul = fmul reassoc nsz arcp contract afn <8 x float> %wide.load683, splat (float 2.000000e+00)
  %i.um = sub nsw i64 %i.gn, %index679
  %i.un = getelementptr inbounds [4 x i8], ptr %i.ud, i64 %i.um ; 4 uses
  %i.uo = getelementptr inbounds i8, ptr %i.un, i64 -28
  %i.up = getelementptr inbounds i8, ptr %i.un, i64 -60
  %i.uq = getelementptr inbounds i8, ptr %i.un, i64 -92
  %i.ur = getelementptr inbounds i8, ptr %i.un, i64 -124
  %wide.load684 = load <8 x float>, ptr %i.uo, align 4, !tbaa !11, !alias.scope !160
  %wide.load685 = load <8 x float>, ptr %i.up, align 4, !tbaa !11, !alias.scope !160
end_hunk_1
begin_hunk_2_@_ZN6LibRaw15wavelet_denoiseEv:bb.a
  br label %.preheader53.i259

.preheader53.i259:                                ; preds = %vector.body678, %vec.epilog.vector.body706, %.lr.ph.i277.epil.preheader, %.preheader53.i259.loopexit.unr-lcssa
  br i1 %i.gp, label %iter.check629, label %.preheader.i260

iter.check629:                                    ; preds = %.preheader53.i259
  br i1 %or.cond966, label %vector.memcheck603, label %.lr.ph56.i270.preheader

vector.memcheck603:                               ; preds = %iter.check629
  %.reass1015 = add i64 %i.tx, %invariant.op1014
  %diff.check604 = icmp ult i64 %.reass1015, 63
  %.reass1017 = add i64 %i.tx, %invariant.op1016
  %diff.check605 = icmp ult i64 %.reass1017, 63
  %conflict.rdx606 = or i1 %diff.check604, %diff.check605
  %.reass1019 = add i64 %i.tx, %invariant.op1018
  %diff.check607 = icmp ult i64 %.reass1019, 63
  %conflict.rdx608 = or i1 %conflict.rdx606, %diff.check607
  br i1 %conflict.rdx608, label %.lr.ph56.i270.preheader, label %vector.main.loop.iter.check611

vector.main.loop.iter.check611:                   ; preds = %vector.memcheck603
  br i1 %min.iters.check612, label %vec.epilog.ph633, label %vector.ph613

vector.ph613:                                     ; preds = %vector.main.loop.iter.check611
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %i.ud, i64 %i.gq
  br label %vector.body615

vector.body615:                                   ; preds = %vector.body615, %vector.ph613
  %index616 = phi i64 [ 0, %vector.ph613 ], [ %index.next623, %vector.body615 ] ; 4 uses
  %i.wh = add nuw i64 %index616, %i.gn            ; 2 uses
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.ud, i64 %i.wh ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 32
  %wide.load617 = load <8 x float>, ptr %i.wi, align 4, !tbaa !11
  %wide.load618 = load <8 x float>, ptr %i.wj, align 4, !tbaa !11
  %i.wk = fmul reassoc nsz arcp contract afn <8 x float> %wide.load617, splat (float 2.000000e+00)
  %i.wl = fmul reassoc nsz arcp contract afn <8 x float> %wide.load618, splat (float 2.000000e+00)
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.ud, i64 %index616 ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 32
  %wide.load619 = load <8 x float>, ptr %i.wm, align 4, !tbaa !11
  %wide.load620 = load <8 x float>, ptr %i.wn, align 4, !tbaa !11
  %i.wo = fadd reassoc nsz arcp contract afn <8 x float> %i.wk, %wide.load619
  %i.wp = fadd reassoc nsz arcp contract afn <8 x float> %i.wl, %wide.load620
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %i.wg, i64 %index616 ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 32
  %wide.load621 = load <8 x float>, ptr %i.wq, align 4, !tbaa !11
  %wide.load622 = load <8 x float>, ptr %i.wr, align 4, !tbaa !11
  %i.ws = fadd reassoc nsz arcp contract afn <8 x float> %i.wo, %wide.load621
  %i.wt = fadd reassoc nsz arcp contract afn <8 x float> %i.wp, %wide.load622
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.wh ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 32
  store <8 x float> %i.ws, ptr %i.wu, align 4, !tbaa !11
  store <8 x float> %i.wt, ptr %i.wv, align 4, !tbaa !11
  %index.next623 = add nuw i64 %index616, 16      ; 2 uses
  %i.ww = icmp eq i64 %index.next623, %n.vec614
  br i1 %i.ww, label %middle.block624, label %vector.body615, !llvm.loop !169

middle.block624:                                  ; preds = %vector.body615
  br i1 %cmp.n625, label %.preheader.loopexit.i275, label %vec.epilog.iter.check631

vec.epilog.iter.check631:                         ; preds = %middle.block624
  br i1 %min.epilog.iters.check632, label %.lr.ph56.i270.preheader, label %vec.epilog.ph633, !prof !28

vec.epilog.ph633:                                 ; preds = %vector.main.loop.iter.check611, %vec.epilog.iter.check631
  %vec.epilog.resume.val626 = phi i64 [ %n.vec614, %vec.epilog.iter.check631 ], [ 0, %vector.main.loop.iter.check611 ]
  %i.wx = getelementptr inbounds nuw [4 x i8], ptr %i.ud, i64 %i.gq
  br label %vec.epilog.vector.body635

vec.epilog.vector.body635:                        ; preds = %vec.epilog.vector.body635, %vec.epilog.ph633
  %index636 = phi i64 [ %vec.epilog.resume.val626, %vec.epilog.ph633 ], [ %index.next640, %vec.epilog.vector.body635 ] ; 4 uses
  %i.wy = add nuw i64 %index636, %i.gn            ; 2 uses
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.ud, i64 %i.wy
  %wide.load637 = load <4 x float>, ptr %i.wz, align 4, !tbaa !11
  %i.xa = fmul reassoc nsz arcp contract afn <4 x float> %wide.load637, splat (float 2.000000e+00)
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %i.ud, i64 %index636
  %wide.load638 = load <4 x float>, ptr %i.xb, align 4, !tbaa !11
  %i.xc = fadd reassoc nsz arcp contract afn <4 x float> %i.xa, %wide.load638
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %i.wx, i64 %index636
  %wide.load639 = load <4 x float>, ptr %i.xd, align 4, !tbaa !11
  %i.xe = fadd reassoc nsz arcp contract afn <4 x float> %i.xc, %wide.load639
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.wy
  store <4 x float> %i.xe, ptr %i.xf, align 4, !tbaa !11
  %index.next640 = add nuw i64 %index636, 4       ; 2 uses
  %i.xg = icmp eq i64 %index.next640, %n.vec634
  br i1 %i.xg, label %vec.epilog.middle.block641, label %vec.epilog.vector.body635, !llvm.loop !170

vec.epilog.middle.block641:                       ; preds = %vec.epilog.vector.body635
  br i1 %cmp.n642, label %.preheader.loopexit.i275, label %.lr.ph56.i270.preheader

.lr.ph56.i270.preheader:                          ; preds = %vector.memcheck603, %iter.check629, %vec.epilog.iter.check631, %vec.epilog.middle.block641
  %indvars.iv64.i271.ph = phi i64 [ %i.gn, %iter.check629 ], [ %i.gn, %vector.memcheck603 ], [ %i.ht, %vec.epilog.iter.check631 ], [ %i.hv, %vec.epilog.middle.block641 ]
  %indvars.iv62.i272.ph = phi i64 [ %i.gq, %iter.check629 ], [ %i.gq, %vector.memcheck603 ], [ %i.hu, %vec.epilog.iter.check631 ], [ %i.hw, %vec.epilog.middle.block641 ]
  br label %.lr.ph56.i270

.lr.ph.i277:                                      ; preds = %.lr.ph.i277.preheader, %.lr.ph.i277
  %indvars.iv.i278 = phi i64 [ %indvars.iv.next.i279.1, %.lr.ph.i277 ], [ 0, %.lr.ph.i277.preheader ] ; 6 uses
  %niter988 = phi i64 [ %niter988.next.1, %.lr.ph.i277 ], [ 0, %.lr.ph.i277.preheader ]
  %i.xh = mul nuw nsw i64 %indvars.iv.i278, %i.cw
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %i.ud, i64 %i.xh
  %i.xj = load float, ptr %i.xi, align 4, !tbaa !11
  %i.xk = fmul reassoc nsz arcp contract afn float %i.xj, 2.000000e+00
  %i.xl = sub nsw i64 %i.gn, %indvars.iv.i278
  %i.xm = mul nsw i64 %i.xl, %i.cw
  %i.xn = getelementptr inbounds [4 x i8], ptr %i.ud, i64 %i.xm
  %i.xo = load float, ptr %i.xn, align 4, !tbaa !11
  %i.xp = fadd reassoc nsz arcp contract afn float %i.xk, %i.xo
  %i.xq = add nuw nsw i64 %indvars.iv.i278, %i.gn
  %i.xr = mul nuw nsw i64 %i.xq, %i.cw
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %i.ud, i64 %i.xr
  %i.xt = load float, ptr %i.xs, align 4, !tbaa !11
  %i.xu = fadd reassoc nsz arcp contract afn float %i.xp, %i.xt
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i278
  store float %i.xu, ptr %i.xv, align 4, !tbaa !11
  %indvars.iv.next.i279 = or disjoint i64 %indvars.iv.i278, 1 ; 4 uses
  %i.xw = mul nuw nsw i64 %indvars.iv.next.i279, %i.cw
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %i.ud, i64 %i.xw
  %i.xy = load float, ptr %i.xx, align 4, !tbaa !11
  %i.xz = fmul reassoc nsz arcp contract afn float %i.xy, 2.000000e+00
  %i.ya = sub nsw i64 %i.gn, %indvars.iv.next.i279
  %i.yb = mul nsw i64 %i.ya, %i.cw
  %i.yc = getelementptr inbounds [4 x i8], ptr %i.ud, i64 %i.yb
  %i.yd = load float, ptr %i.yc, align 4, !tbaa !11
  %i.ye = fadd reassoc nsz arcp contract afn float %i.xz, %i.yd
  %i.yf = add nuw nsw i64 %indvars.iv.next.i279, %i.gn
  %i.yg = mul nuw nsw i64 %i.yf, %i.cw
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %i.ud, i64 %i.yg
  %i.yi = load float, ptr %i.yh, align 4, !tbaa !11
  %i.yj = fadd reassoc nsz arcp contract afn float %i.ye, %i.yi
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next.i279
  store float %i.yj, ptr %i.yk, align 4, !tbaa !11
  %indvars.iv.next.i279.1 = add nuw nsw i64 %indvars.iv.i278, 2 ; 2 uses
  %niter988.next.1 = add i64 %niter988, 2         ; 2 uses
  %niter988.ncmp.1 = icmp eq i64 %niter988.next.1, %unroll_iter987
  br i1 %niter988.ncmp.1, label %.preheader53.i259.loopexit.unr-lcssa, label %.lr.ph.i277, !llvm.loop !171

.preheader.loopexit.i275:                         ; preds = %.lr.ph56.i270, %vec.epilog.middle.block641, %middle.block624
  %indvars.iv.next65.i273.lcssa = phi i64 [ %i.hv, %vec.epilog.middle.block641 ], [ %i.ht, %middle.block624 ], [ %indvars.iv.next65.i273, %.lr.ph56.i270 ]
  %i.yl = trunc nsw i64 %indvars.iv.next65.i273.lcssa to i32
  br label %.preheader.i260

.preheader.i260:                                  ; preds = %.preheader.loopexit.i275, %.preheader53.i259
  %.1.lcssa.i261 = phi i32 [ %i.gm, %.preheader53.i259 ], [ %i.yl, %.preheader.loopexit.i275 ] ; 4 uses
  %i.ym = icmp slt i32 %.1.lcssa.i261, %i.ct
  br i1 %i.ym, label %iter.check585, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit281

iter.check585:                                    ; preds = %.preheader.i260
  %i.yn = sext i32 %.1.lcssa.i261 to i64          ; 11 uses
  %i.yo = sub nsw i64 %wide.trip.count359, %i.yn  ; 7 uses
  %min.iters.check558 = icmp ult i64 %i.yo, 8
  br i1 %min.iters.check558, label %vec.epilog.scalar.ph586.preheader, label %vector.scevcheck531

vector.scevcheck531:                              ; preds = %iter.check585
  %i.yp = xor i64 %i.yn, -1
  %i.yq = add nsw i64 %i.yp, %wide.trip.count359  ; 2 uses
  %i.yr = add i32 %i.gm, %.1.lcssa.i261
  %i.ys = sub i32 %i.dd, %i.yr                    ; 2 uses
  %i.yt = trunc i64 %i.yq to i32
  %i.yu = sub i32 %i.ys, %i.yt
  %i.yv = icmp sgt i32 %i.yu, %i.ys
  %i.yw = icmp ugt i64 %i.yq, 4294967295
  %i.yx = or i1 %i.yv, %i.yw
  %i.yy = or i1 %ident.check532, %i.yx
  br i1 %i.yy, label %vec.epilog.scalar.ph586.preheader, label %vector.memcheck533

vector.memcheck533:                               ; preds = %vector.scevcheck531
  %i.yz = shl nsw i64 %i.yn, 2                    ; 3 uses
  %scevgep535 = getelementptr i8, ptr %scevgep534, i64 %i.yz ; 3 uses
  %scevgep537 = getelementptr i8, ptr %i.ud, i64 %i.yz
  %scevgep540 = getelementptr i8, ptr %scevgep539, i64 %i.yz
  %i.za = add i32 %i.gm, %.1.lcssa.i261
  %i.zb = sub i32 %i.dh, %i.za
  %i.zc = sext i32 %i.zb to i64                   ; 2 uses
  %i.zd = add nsw i64 %i.yn, %i.zc
  %i.ze = shl nsw i64 %i.zd, 2
  %scevgep543 = getelementptr i8, ptr %scevgep542, i64 %i.ze
  %i.zf = shl nsw i64 %i.zc, 2
  %scevgep545 = getelementptr i8, ptr %scevgep544, i64 %i.zf
  %bound0546 = icmp ult ptr %scevgep535, %scevgep538
  %bound1547 = icmp ult ptr %scevgep537, %scevgep536
  %found.conflict548 = and i1 %bound0546, %bound1547
  %bound0549 = icmp ult ptr %scevgep535, %scevgep541
  %bound1550 = icmp ult ptr %scevgep540, %scevgep536
  %found.conflict551 = and i1 %bound0549, %bound1550
  %conflict.rdx552 = or i1 %found.conflict548, %found.conflict551
  %bound0553 = icmp ult ptr %scevgep535, %scevgep545
  %bound1554 = icmp ult ptr %scevgep543, %scevgep536
  %found.conflict555 = and i1 %bound0553, %bound1554
  %conflict.rdx556 = or i1 %conflict.rdx552, %found.conflict555
  br i1 %conflict.rdx556, label %vec.epilog.scalar.ph586.preheader, label %vector.main.loop.iter.check559

vector.main.loop.iter.check559:                   ; preds = %vector.memcheck533
  %min.iters.check560 = icmp ult i64 %i.yo, 32
  br i1 %min.iters.check560, label %vec.epilog.ph589, label %vector.ph561

vector.ph561:                                     ; preds = %vector.main.loop.iter.check559
  %i.zg = and i64 %i.yo, 24
  %n.vec562 = and i64 %i.yo, -32                  ; 4 uses
  %i.zh = add nsw i64 %n.vec562, %i.yn
  br label %vector.body563

vector.body563:                                   ; preds = %vector.body563, %vector.ph561
  %index564 = phi i64 [ 0, %vector.ph561 ], [ %index.next580, %vector.body563 ] ; 2 uses
  %i.zi = add i64 %index564, %i.yn                ; 4 uses
  %i.zj = getelementptr inbounds [4 x i8], ptr %i.ud, i64 %i.zi ; 4 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 32
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zj, i64 64
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zj, i64 96
  %wide.load565 = load <8 x float>, ptr %i.zj, align 4, !tbaa !11, !alias.scope !172
  %wide.load566 = load <8 x float>, ptr %i.zk, align 4, !tbaa !11, !alias.scope !172
  %wide.load567 = load <8 x float>, ptr %i.zl, align 4, !tbaa !11, !alias.scope !172
  %wide.load568 = load <8 x float>, ptr %i.zm, align 4, !tbaa !11, !alias.scope !172
  %i.zn = fmul reassoc nsz arcp contract afn <8 x float> %wide.load565, splat (float 2.000000e+00)
  %i.zo = fmul reassoc nsz arcp contract afn <8 x float> %wide.load566, splat (float 2.000000e+00)
  %i.zp = fmul reassoc nsz arcp contract afn <8 x float> %wide.load567, splat (float 2.000000e+00)
  %i.zq = fmul reassoc nsz arcp contract afn <8 x float> %wide.load568, splat (float 2.000000e+00)
  %i.zr = sub nsw i64 %i.zi, %i.gn
  %i.zs = getelementptr inbounds [4 x i8], ptr %i.ud, i64 %i.zr ; 4 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 32
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zs, i64 64
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zs, i64 96
  %wide.load569 = load <8 x float>, ptr %i.zs, align 4, !tbaa !11, !alias.scope !175
  %wide.load570 = load <8 x float>, ptr %i.zt, align 4, !tbaa !11, !alias.scope !175
  %wide.load571 = load <8 x float>, ptr %i.zu, align 4, !tbaa !11, !alias.scope !175
  %wide.load572 = load <8 x float>, ptr %i.zv, align 4, !tbaa !11, !alias.scope !175
  %i.zw = fadd reassoc nsz arcp contract afn <8 x float> %i.zn, %wide.load569
  %i.zx = fadd reassoc nsz arcp contract afn <8 x float> %i.zo, %wide.load570
  %i.zy = fadd reassoc nsz arcp contract afn <8 x float> %i.zp, %wide.load571
  %i.zz = fadd reassoc nsz arcp contract afn <8 x float> %i.zq, %wide.load572
  %i.aaa = trunc nsw i64 %i.zi to i32
  %i.aab = add i32 %i.gm, %i.aaa
  %i.aac = sub i32 %invariant.op, %i.aab
  %i.aad = sext i32 %i.aac to i64
  %i.aae = getelementptr inbounds [4 x i8], ptr %i.ud, i64 %i.aad ; 4 uses
  %i.aaf = getelementptr inbounds i8, ptr %i.aae, i64 -28
  %i.aag = getelementptr inbounds i8, ptr %i.aae, i64 -60
  %i.aah = getelementptr inbounds i8, ptr %i.aae, i64 -92
  %i.aai = getelementptr inbounds i8, ptr %i.aae, i64 -124
  %wide.load573 = load <8 x float>, ptr %i.aaf, align 4, !tbaa !11, !alias.scope !177
  %wide.load574 = load <8 x float>, ptr %i.aag, align 4, !tbaa !11, !alias.scope !177
  %wide.load575 = load <8 x float>, ptr %i.aah, align 4, !tbaa !11, !alias.scope !177
  %wide.load576 = load <8 x float>, ptr %i.aai, align 4, !tbaa !11, !alias.scope !177
  %reverse = shufflevector <8 x float> %wide.load573, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse577 = shufflevector <8 x float> %wide.load574, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse578 = shufflevector <8 x float> %wide.load575, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse579 = shufflevector <8 x float> %wide.load576, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.aaj = fadd reassoc nsz arcp contract afn <8 x float> %i.zw, %reverse
  %i.aak = fadd reassoc nsz arcp contract afn <8 x float> %i.zx, %reverse577
  %i.aal = fadd reassoc nsz arcp contract afn <8 x float> %i.zy, %reverse578
  %i.aam = fadd reassoc nsz arcp contract afn <8 x float> %i.zz, %reverse579
  %i.aan = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.zi ; 4 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 32
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aan, i64 64
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aan, i64 96
  store <8 x float> %i.aaj, ptr %i.aan, align 4, !tbaa !11, !alias.scope !179, !noalias !181
  store <8 x float> %i.aak, ptr %i.aao, align 4, !tbaa !11, !alias.scope !179, !noalias !181
  store <8 x float> %i.aal, ptr %i.aap, align 4, !tbaa !11, !alias.scope !179, !noalias !181
  store <8 x float> %i.aam, ptr %i.aaq, align 4, !tbaa !11, !alias.scope !179, !noalias !181
  %index.next580 = add nuw i64 %index564, 32      ; 2 uses
  %i.aar = icmp eq i64 %index.next580, %n.vec562
  br i1 %i.aar, label %middle.block581, label %vector.body563, !llvm.loop !182

middle.block581:                                  ; preds = %vector.body563
  %cmp.n582 = icmp eq i64 %i.yo, %n.vec562
  br i1 %cmp.n582, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit281, label %vec.epilog.iter.check587

vec.epilog.iter.check587:                         ; preds = %middle.block581
  %min.epilog.iters.check588 = icmp eq i64 %i.zg, 0
  br i1 %min.epilog.iters.check588, label %vec.epilog.scalar.ph586.preheader, label %vec.epilog.ph589, !prof !25

vec.epilog.ph589:                                 ; preds = %vector.main.loop.iter.check559, %vec.epilog.iter.check587
  %vec.epilog.resume.val583 = phi i64 [ %n.vec562, %vec.epilog.iter.check587 ], [ 0, %vector.main.loop.iter.check559 ]
  %n.vec590 = and i64 %i.yo, -8                   ; 3 uses
  %i.aas = add nsw i64 %n.vec590, %i.yn
  br label %vec.epilog.vector.body591

vec.epilog.vector.body591:                        ; preds = %vec.epilog.vector.body591, %vec.epilog.ph589
  %index592 = phi i64 [ %vec.epilog.resume.val583, %vec.epilog.ph589 ], [ %index.next597, %vec.epilog.vector.body591 ] ; 2 uses
  %i.aat = add i64 %index592, %i.yn               ; 4 uses
  %i.aau = getelementptr inbounds [4 x i8], ptr %i.ud, i64 %i.aat
  %wide.load593 = load <8 x float>, ptr %i.aau, align 4, !tbaa !11, !alias.scope !172
  %i.aav = fmul reassoc nsz arcp contract afn <8 x float> %wide.load593, splat (float 2.000000e+00)
  %i.aaw = sub nsw i64 %i.aat, %i.gn
  %i.aax = getelementptr inbounds [4 x i8], ptr %i.ud, i64 %i.aaw
  %wide.load594 = load <8 x float>, ptr %i.aax, align 4, !tbaa !11, !alias.scope !175
  %i.aay = fadd reassoc nsz arcp contract afn <8 x float> %i.aav, %wide.load594
  %i.aaz = trunc nsw i64 %i.aat to i32
  %i.aba = add i32 %i.gm, %i.aaz
  %i.abb = sub i32 %invariant.op, %i.aba
  %i.abc = sext i32 %i.abb to i64
  %i.abd = getelementptr inbounds [4 x i8], ptr %i.ud, i64 %i.abc
  %i.abe = getelementptr inbounds i8, ptr %i.abd, i64 -28
  %wide.load595 = load <8 x float>, ptr %i.abe, align 4, !tbaa !11, !alias.scope !177
  %reverse596 = shufflevector <8 x float> %wide.load595, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.abf = fadd reassoc nsz arcp contract afn <8 x float> %i.aay, %reverse596
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.aat
  store <8 x float> %i.abf, ptr %i.abg, align 4, !tbaa !11, !alias.scope !179, !noalias !181
  %index.next597 = add nuw i64 %index592, 8       ; 2 uses
  %i.abh = icmp eq i64 %index.next597, %n.vec590
  br i1 %i.abh, label %vec.epilog.middle.block598, label %vec.epilog.vector.body591, !llvm.loop !183

vec.epilog.middle.block598:                       ; preds = %vec.epilog.vector.body591
  %cmp.n599 = icmp eq i64 %i.yo, %n.vec590
  br i1 %cmp.n599, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit281, label %vec.epilog.scalar.ph586.preheader

vec.epilog.scalar.ph586.preheader:                ; preds = %vector.memcheck533, %vector.scevcheck531, %iter.check585, %vec.epilog.iter.check587, %vec.epilog.middle.block598
  %indvars.iv69.i265.ph = phi i64 [ %i.yn, %iter.check585 ], [ %i.yn, %vector.scevcheck531 ], [ %i.yn, %vector.memcheck533 ], [ %i.zh, %vec.epilog.iter.check587 ], [ %i.aas, %vec.epilog.middle.block598 ] ; 8 uses
  %i.abi = sub i64 %wide.trip.count359, %indvars.iv69.i265.ph
  %xtraiter989 = and i64 %i.abi, 1
  %lcmp.mod990.not = icmp eq i64 %xtraiter989, 0
  br i1 %lcmp.mod990.not, label %vec.epilog.scalar.ph586.prol.loopexit, label %vec.epilog.scalar.ph586.prol

vec.epilog.scalar.ph586.prol:                     ; preds = %vec.epilog.scalar.ph586.preheader
  %i.abj = mul nsw i64 %indvars.iv69.i265.ph, %i.cw
  %i.abk = getelementptr inbounds [4 x i8], ptr %i.ud, i64 %i.abj
  %i.abl = load float, ptr %i.abk, align 4, !tbaa !11
  %i.abm = fmul reassoc nsz arcp contract afn float %i.abl, 2.000000e+00
  %i.abn = sub nsw i64 %indvars.iv69.i265.ph, %i.gn
  %i.abo = mul nsw i64 %i.abn, %i.cw
  %i.abp = getelementptr inbounds [4 x i8], ptr %i.ud, i64 %i.abo
  %i.abq = load float, ptr %i.abp, align 4, !tbaa !11
  %i.abr = fadd reassoc nsz arcp contract afn float %i.abm, %i.abq
  %i.abs = trunc nsw i64 %indvars.iv69.i265.ph to i32
  %i.abt = add i32 %i.gm, %i.abs
  %i.abu = sub i32 %invariant.op, %i.abt
  %i.abv = mul nsw i32 %i.abu, %i.cv
  %i.abw = sext i32 %i.abv to i64
  %i.abx = getelementptr inbounds [4 x i8], ptr %i.ud, i64 %i.abw
  %i.aby = load float, ptr %i.abx, align 4, !tbaa !11
  %i.abz = fadd reassoc nsz arcp contract afn float %i.abr, %i.aby
  %i.aca = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv69.i265.ph
  store float %i.abz, ptr %i.aca, align 4, !tbaa !11
  %indvars.iv.next70.i266.prol = add nsw i64 %indvars.iv69.i265.ph, 1
  br label %vec.epilog.scalar.ph586.prol.loopexit

vec.epilog.scalar.ph586.prol.loopexit:            ; preds = %vec.epilog.scalar.ph586.prol, %vec.epilog.scalar.ph586.preheader
  %indvars.iv69.i265.unr = phi i64 [ %indvars.iv69.i265.ph, %vec.epilog.scalar.ph586.preheader ], [ %indvars.iv.next70.i266.prol, %vec.epilog.scalar.ph586.prol ]
  %i.acb = icmp eq i64 %indvars.iv69.i265.ph, %i.dw
  br i1 %i.acb, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit281, label %vec.epilog.scalar.ph586

.lr.ph56.i270:                                    ; preds = %.lr.ph56.i270.preheader, %.lr.ph56.i270
  %indvars.iv64.i271 = phi i64 [ %indvars.iv.next65.i273, %.lr.ph56.i270 ], [ %indvars.iv64.i271.ph, %.lr.ph56.i270.preheader ] ; 4 uses
  %indvars.iv62.i272 = phi i64 [ %indvars.iv.next63.i274, %.lr.ph56.i270 ], [ %indvars.iv62.i272.ph, %.lr.ph56.i270.preheader ] ; 2 uses
  %i.acc = mul nuw nsw i64 %indvars.iv64.i271, %i.cw
  %i.acd = getelementptr inbounds nuw [4 x i8], ptr %i.ud, i64 %i.acc
  %i.ace = load float, ptr %i.acd, align 4, !tbaa !11
  %i.acf = fmul reassoc nsz arcp contract afn float %i.ace, 2.000000e+00
  %i.acg = sub nuw nsw i64 %indvars.iv64.i271, %i.gn
  %i.ach = mul nuw nsw i64 %i.acg, %i.cw
  %i.aci = getelementptr inbounds nuw [4 x i8], ptr %i.ud, i64 %i.ach
  %i.acj = load float, ptr %i.aci, align 4, !tbaa !11
  %i.ack = fadd reassoc nsz arcp contract afn float %i.acf, %i.acj
  %i.acl = mul nuw nsw i64 %indvars.iv62.i272, %i.cw
  %i.acm = getelementptr inbounds nuw [4 x i8], ptr %i.ud, i64 %i.acl
  %i.acn = load float, ptr %i.acm, align 4, !tbaa !11
  %i.aco = fadd reassoc nsz arcp contract afn float %i.ack, %i.acn
  %i.acp = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv64.i271
  store float %i.aco, ptr %i.acp, align 4, !tbaa !11
  %indvars.iv.next65.i273 = add nuw nsw i64 %indvars.iv64.i271, 1 ; 3 uses
  %i.acq = icmp slt i64 %indvars.iv.next65.i273, %invariant.op.i269
  %indvars.iv.next63.i274 = add nuw nsw i64 %indvars.iv62.i272, 1
  br i1 %i.acq, label %.lr.ph56.i270, label %.preheader.loopexit.i275, !llvm.loop !184

vec.epilog.scalar.ph586:                          ; preds = %vec.epilog.scalar.ph586.prol.loopexit, %vec.epilog.scalar.ph586
  %indvars.iv69.i265 = phi i64 [ %indvars.iv.next70.i266.1, %vec.epilog.scalar.ph586 ], [ %indvars.iv69.i265.unr, %vec.epilog.scalar.ph586.prol.loopexit ] ; 6 uses
  %i.acr = mul nsw i64 %indvars.iv69.i265, %i.cw
  %i.acs = getelementptr inbounds [4 x i8], ptr %i.ud, i64 %i.acr
  %i.act = load float, ptr %i.acs, align 4, !tbaa !11
  %i.acu = fmul reassoc nsz arcp contract afn float %i.act, 2.000000e+00
  %i.acv = sub nsw i64 %indvars.iv69.i265, %i.gn
  %i.acw = mul nsw i64 %i.acv, %i.cw
  %i.acx = getelementptr inbounds [4 x i8], ptr %i.ud, i64 %i.acw
  %i.acy = load float, ptr %i.acx, align 4, !tbaa !11
  %i.acz = fadd reassoc nsz arcp contract afn float %i.acu, %i.acy
  %i.ada = trunc nsw i64 %indvars.iv69.i265 to i32
  %i.adb = add i32 %i.gm, %i.ada
  %i.adc = sub i32 %invariant.op, %i.adb
  %i.add = mul nsw i32 %i.adc, %i.cv
  %i.ade = sext i32 %i.add to i64
  %i.adf = getelementptr inbounds [4 x i8], ptr %i.ud, i64 %i.ade
  %i.adg = load float, ptr %i.adf, align 4, !tbaa !11
  %i.adh = fadd reassoc nsz arcp contract afn float %i.acz, %i.adg
  %i.adi = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv69.i265
  store float %i.adh, ptr %i.adi, align 4, !tbaa !11
  %indvars.iv.next70.i266 = add nsw i64 %indvars.iv69.i265, 1 ; 4 uses
  %i.adj = mul nsw i64 %indvars.iv.next70.i266, %i.cw
  %i.adk = getelementptr inbounds [4 x i8], ptr %i.ud, i64 %i.adj
  %i.adl = load float, ptr %i.adk, align 4, !tbaa !11
  %i.adm = fmul reassoc nsz arcp contract afn float %i.adl, 2.000000e+00
  %i.adn = sub nsw i64 %indvars.iv.next70.i266, %i.gn
  %i.ado = mul nsw i64 %i.adn, %i.cw
  %i.adp = getelementptr inbounds [4 x i8], ptr %i.ud, i64 %i.ado
  %i.adq = load float, ptr %i.adp, align 4, !tbaa !11
  %i.adr = fadd reassoc nsz arcp contract afn float %i.adm, %i.adq
  %i.ads = trunc nsw i64 %indvars.iv.next70.i266 to i32
  %i.adt = add i32 %i.gm, %i.ads
  %i.adu = sub i32 %invariant.op, %i.adt
  %i.adv = mul nsw i32 %i.adu, %i.cv
  %i.adw = sext i32 %i.adv to i64
  %i.adx = getelementptr inbounds [4 x i8], ptr %i.ud, i64 %i.adw
  %i.ady = load float, ptr %i.adx, align 4, !tbaa !11
  %i.adz = fadd reassoc nsz arcp contract afn float %i.adr, %i.ady
  %i.aea = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next70.i266
  store float %i.adz, ptr %i.aea, align 4, !tbaa !11
  %indvars.iv.next70.i266.1 = add nsw i64 %indvars.iv69.i265, 2 ; 2 uses
  %exitcond73.not.i267.1 = icmp eq i64 %indvars.iv.next70.i266.1, %i.cx
  br i1 %exitcond73.not.i267.1, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit281, label %vec.epilog.scalar.ph586, !llvm.loop !185

_ZN6LibRaw13hat_transformEPfS0_iii.exit281:       ; preds = %vec.epilog.scalar.ph586.prol.loopexit, %vec.epilog.scalar.ph586, %middle.block581, %vec.epilog.middle.block598, %.preheader.i260
  br i1 %.not343, label %._crit_edge316, label %iter.check518

iter.check518:                                    ; preds = %_ZN6LibRaw13hat_transformEPfS0_iii.exit281
  %i.aeb = trunc nuw nsw i64 %indvars.iv366 to i32
  %i.aec = add i32 %i.ev, %i.aeb                  ; 9 uses
  br i1 %min.iters.check503, label %vec.epilog.scalar.ph519.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check518
  %i.aed = add i32 %i.aec, %i.dx
  %i.aee = icmp slt i32 %i.aed, %i.aec
  %.reass1021 = or i1 %i.aee, %invariant.op1020
  %.reass1023 = add i64 %i.uc, %invariant.op1022
  %diff.check = icmp ult i64 %.reass1023, 127
  %or.cond967 = select i1 %.reass1021, i1 true, i1 %diff.check
  br i1 %or.cond967, label %vec.epilog.scalar.ph519.preheader, label %vector.main.loop.iter.check504

vector.main.loop.iter.check504:                   ; preds = %vector.scevcheck
  br i1 %min.iters.check505, label %vec.epilog.ph522, label %vector.body508

vector.body508:                                   ; preds = %vector.main.loop.iter.check504, %vector.body508
  %index509 = phi i64 [ %index.next514, %vector.body508 ], [ 0, %vector.main.loop.iter.check504 ] ; 3 uses
  %i.aef = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index509 ; 4 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aef, i64 32
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aef, i64 64
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aef, i64 96
  %wide.load510 = load <8 x float>, ptr %i.aef, align 4, !tbaa !11
  %wide.load511 = load <8 x float>, ptr %i.aeg, align 4, !tbaa !11
  %wide.load512 = load <8 x float>, ptr %i.aeh, align 4, !tbaa !11
  %wide.load513 = load <8 x float>, ptr %i.aei, align 4, !tbaa !11
  %i.aej = fmul reassoc nsz arcp contract afn <8 x float> %wide.load510, splat (float 2.500000e-01)
  %i.aek = fmul reassoc nsz arcp contract afn <8 x float> %wide.load511, splat (float 2.500000e-01)
  %i.ael = fmul reassoc nsz arcp contract afn <8 x float> %wide.load512, splat (float 2.500000e-01)
  %i.aem = fmul reassoc nsz arcp contract afn <8 x float> %wide.load513, splat (float 2.500000e-01)
  %i.aen = trunc nuw nsw i64 %index509 to i32
  %i.aeo = add i32 %i.aec, %i.aen
  %i.aep = sext i32 %i.aeo to i64
  %i.aeq = getelementptr inbounds [4 x i8], ptr %.0233, i64 %i.aep ; 4 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeq, i64 32
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aeq, i64 64
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aeq, i64 96
  store <8 x float> %i.aej, ptr %i.aeq, align 4, !tbaa !11
  store <8 x float> %i.aek, ptr %i.aer, align 4, !tbaa !11
  store <8 x float> %i.ael, ptr %i.aes, align 4, !tbaa !11
  store <8 x float> %i.aem, ptr %i.aet, align 4, !tbaa !11
  %index.next514 = add nuw i64 %index509, 32      ; 2 uses
  %i.aeu = icmp eq i64 %index.next514, %n.vec507
  br i1 %i.aeu, label %middle.block515, label %vector.body508, !llvm.loop !186

middle.block515:                                  ; preds = %vector.body508
  br i1 %cmp.n516, label %._crit_edge316, label %vec.epilog.iter.check520

vec.epilog.iter.check520:                         ; preds = %middle.block515
  br i1 %min.epilog.iters.check521, label %vec.epilog.scalar.ph519.preheader, label %vec.epilog.ph522, !prof !117

vec.epilog.ph522:                                 ; preds = %vector.main.loop.iter.check504, %vec.epilog.iter.check520
  %vec.epilog.resume.val517 = phi i64 [ %n.vec507, %vec.epilog.iter.check520 ], [ 0, %vector.main.loop.iter.check504 ]
  br label %vec.epilog.vector.body524

vec.epilog.vector.body524:                        ; preds = %vec.epilog.vector.body524, %vec.epilog.ph522
  %index525 = phi i64 [ %vec.epilog.resume.val517, %vec.epilog.ph522 ], [ %index.next527, %vec.epilog.vector.body524 ] ; 3 uses
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index525
  %wide.load526 = load <4 x float>, ptr %i.aev, align 4, !tbaa !11
  %i.aew = fmul reassoc nsz arcp contract afn <4 x float> %wide.load526, splat (float 2.500000e-01)
  %i.aex = trunc nuw nsw i64 %index525 to i32
  %i.aey = add i32 %i.aec, %i.aex
  %i.aez = sext i32 %i.aey to i64
  %i.afa = getelementptr inbounds [4 x i8], ptr %.0233, i64 %i.aez
  store <4 x float> %i.aew, ptr %i.afa, align 4, !tbaa !11
  %index.next527 = add nuw i64 %index525, 4       ; 2 uses
  %i.afb = icmp eq i64 %index.next527, %n.vec523
  br i1 %i.afb, label %vec.epilog.middle.block528, label %vec.epilog.vector.body524, !llvm.loop !187

vec.epilog.middle.block528:                       ; preds = %vec.epilog.vector.body524
  br i1 %cmp.n529, label %._crit_edge316, label %vec.epilog.scalar.ph519.preheader

vec.epilog.scalar.ph519.preheader:                ; preds = %vector.scevcheck, %iter.check518, %vec.epilog.iter.check520, %vec.epilog.middle.block528
  %indvars.iv361.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %iter.check518 ], [ %n.vec507, %vec.epilog.iter.check520 ], [ %n.vec523, %vec.epilog.middle.block528 ] ; 3 uses
  br i1 %lcmp.mod993.not, label %vec.epilog.scalar.ph519.prol.loopexit, label %vec.epilog.scalar.ph519.prol

vec.epilog.scalar.ph519.prol:                     ; preds = %vec.epilog.scalar.ph519.preheader, %vec.epilog.scalar.ph519.prol
  %indvars.iv361.prol = phi i64 [ %indvars.iv.next362.prol, %vec.epilog.scalar.ph519.prol ], [ %indvars.iv361.ph, %vec.epilog.scalar.ph519.preheader ] ; 3 uses
  %prol.iter994 = phi i64 [ %prol.iter994.next, %vec.epilog.scalar.ph519.prol ], [ 0, %vec.epilog.scalar.ph519.preheader ]
  %i.afc = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv361.prol
  %i.afd = load float, ptr %i.afc, align 4, !tbaa !11
  %i.afe = fmul reassoc nsz arcp contract afn float %i.afd, 2.500000e-01
  %i.aff = mul nuw nsw i64 %indvars.iv361.prol, %i.cz
  %i.afg = trunc nuw nsw i64 %i.aff to i32
  %i.afh = add i32 %i.aec, %i.afg
  %i.afi = sext i32 %i.afh to i64
  %i.afj = getelementptr inbounds [4 x i8], ptr %.0233, i64 %i.afi
  store float %i.afe, ptr %i.afj, align 4, !tbaa !11
  %indvars.iv.next362.prol = add nuw nsw i64 %indvars.iv361.prol, 1 ; 2 uses
  %prol.iter994.next = add i64 %prol.iter994, 1   ; 2 uses
  %prol.iter994.cmp.not = icmp eq i64 %prol.iter994.next, %xtraiter992
  br i1 %prol.iter994.cmp.not, label %vec.epilog.scalar.ph519.prol.loopexit, label %vec.epilog.scalar.ph519.prol, !llvm.loop !188

vec.epilog.scalar.ph519.prol.loopexit:            ; preds = %vec.epilog.scalar.ph519.prol, %vec.epilog.scalar.ph519.preheader
  %indvars.iv361.unr = phi i64 [ %indvars.iv361.ph, %vec.epilog.scalar.ph519.preheader ], [ %indvars.iv.next362.prol, %vec.epilog.scalar.ph519.prol ]
  %i.afk = sub nsw i64 %indvars.iv361.ph, %wide.trip.count359
  %i.afl = icmp ugt i64 %i.afk, -4
  br i1 %i.afl, label %._crit_edge316, label %vec.epilog.scalar.ph519

vec.epilog.scalar.ph519:                          ; preds = %vec.epilog.scalar.ph519.prol.loopexit, %vec.epilog.scalar.ph519
  %indvars.iv361 = phi i64 [ %indvars.iv.next362.3, %vec.epilog.scalar.ph519 ], [ %indvars.iv361.unr, %vec.epilog.scalar.ph519.prol.loopexit ] ; 6 uses
  %i.afm = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv361
  %i.afn = load float, ptr %i.afm, align 4, !tbaa !11
  %i.afo = fmul reassoc nsz arcp contract afn float %i.afn, 2.500000e-01
  %i.afp = mul nuw nsw i64 %indvars.iv361, %i.cz
  %i.afq = trunc nuw nsw i64 %i.afp to i32
  %i.afr = add i32 %i.aec, %i.afq
  %i.afs = sext i32 %i.afr to i64
  %i.aft = getelementptr inbounds [4 x i8], ptr %.0233, i64 %i.afs
  store float %i.afo, ptr %i.aft, align 4, !tbaa !11
  %indvars.iv.next362 = add nuw nsw i64 %indvars.iv361, 1 ; 2 uses
  %i.afu = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next362
  %i.afv = load float, ptr %i.afu, align 4, !tbaa !11
  %i.afw = fmul reassoc nsz arcp contract afn float %i.afv, 2.500000e-01
  %i.afx = mul nuw nsw i64 %indvars.iv.next362, %i.cz
  %i.afy = trunc nuw nsw i64 %i.afx to i32
  %i.afz = add i32 %i.aec, %i.afy
  %i.aga = sext i32 %i.afz to i64
  %i.agb = getelementptr inbounds [4 x i8], ptr %.0233, i64 %i.aga
  store float %i.afw, ptr %i.agb, align 4, !tbaa !11
  %indvars.iv.next362.1 = add nuw nsw i64 %indvars.iv361, 2 ; 2 uses
  %i.agc = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next362.1
  %i.agd = load float, ptr %i.agc, align 4, !tbaa !11
  %i.age = fmul reassoc nsz arcp contract afn float %i.agd, 2.500000e-01
  %i.agf = mul nuw nsw i64 %indvars.iv.next362.1, %i.cz
  %i.agg = trunc nuw nsw i64 %i.agf to i32
  %i.agh = add i32 %i.aec, %i.agg
  %i.agi = sext i32 %i.agh to i64
  %i.agj = getelementptr inbounds [4 x i8], ptr %.0233, i64 %i.agi
  store float %i.age, ptr %i.agj, align 4, !tbaa !11
  %indvars.iv.next362.2 = add nuw nsw i64 %indvars.iv361, 3 ; 2 uses
  %i.agk = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next362.2
  %i.agl = load float, ptr %i.agk, align 4, !tbaa !11
  %i.agm = fmul reassoc nsz arcp contract afn float %i.agl, 2.500000e-01
  %i.agn = mul nuw nsw i64 %indvars.iv.next362.2, %i.cz
  %i.ago = trunc nuw nsw i64 %i.agn to i32
  %i.agp = add i32 %i.aec, %i.ago
  %i.agq = sext i32 %i.agp to i64
  %i.agr = getelementptr inbounds [4 x i8], ptr %.0233, i64 %i.agq
  store float %i.agm, ptr %i.agr, align 4, !tbaa !11
  %indvars.iv.next362.3 = add nuw nsw i64 %indvars.iv361, 4 ; 2 uses
  %exitcond365.not.3 = icmp eq i64 %indvars.iv.next362.3, %wide.trip.count364
  br i1 %exitcond365.not.3, label %._crit_edge316, label %vec.epilog.scalar.ph519, !llvm.loop !189

._crit_edge316:                                   ; preds = %vec.epilog.scalar.ph519.prol.loopexit, %vec.epilog.scalar.ph519, %middle.block515, %vec.epilog.middle.block528, %_ZN6LibRaw13hat_transformEPfS0_iii.exit281
  %indvars.iv.next367 = add nuw nsw i64 %indvars.iv366, 1 ; 2 uses
  %exitcond370.not = icmp eq i64 %indvars.iv.next367, %wide.trip.count369
  br i1 %exitcond370.not, label %iter.check, label %iter.check700, !llvm.loop !190

iter.check:                                       ; preds = %._crit_edge316, %.preheader296
  %i.ags = load float, ptr %i.as, align 4, !tbaa !191
  %i.agt = getelementptr inbounds nuw [4 x i8], ptr @_ZZN6LibRaw15wavelet_denoiseEvE5noise, i64 %indvars.iv376
  %i.agu = load float, ptr %i.agt, align 4, !tbaa !11
  %i.agv = fmul reassoc nsz arcp contract afn float %i.agu, %i.ags ; 12 uses
  %i.agw = fneg reassoc nsz arcp contract afn float %i.agv ; 5 uses
  %.not254 = icmp ne i32 %.0229322, 0             ; 5 uses
  %i.agx = sext i32 %i.ev to i64                  ; 3 uses
  %i.agy = sext i32 %.0229322 to i64              ; 2 uses
  %invariant.gep439 = getelementptr [4 x i8], ptr %.0233, i64 %i.agx ; 7 uses
  %invariant.gep441 = getelementptr [4 x i8], ptr %.0233, i64 %i.agy ; 7 uses
  br i1 %min.iters.check464, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.agz = shl nsw i64 %i.agy, 2
  %scevgep453 = getelementptr i8, ptr %scevgep, i64 %i.agz ; 2 uses
  %i.aha = shl nsw i64 %i.agx, 2
  %scevgep455 = getelementptr i8, ptr %scevgep454, i64 %i.aha ; 2 uses
  %bound0 = icmp ult ptr %invariant.gep441, %scevgep
  %bound1 = icmp ult ptr %.0233, %scevgep453
  %found.conflict = and i1 %bound0, %bound1
  %bound0456 = icmp ult ptr %invariant.gep441, %scevgep455
  %bound1457 = icmp ult ptr %invariant.gep439, %scevgep453
  %found.conflict458 = and i1 %bound0456, %bound1457
  %conflict.rdx = or i1 %found.conflict, %found.conflict458
  %bound0459 = icmp ult ptr %.0233, %scevgep455
  %bound1460 = icmp ult ptr %invariant.gep439, %scevgep
  %found.conflict461 = and i1 %bound0459, %bound1460
  %conflict.rdx462 = or i1 %conflict.rdx, %found.conflict461
  br i1 %conflict.rdx462, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check465, label %vec.epilog.ph, label %vector.ph466

vector.ph466:                                     ; preds = %vector.main.loop.iter.check
  %i.ahb = insertelement <8 x i1> poison, i1 %.not254, i64 0
  %i.ahc = shufflevector <8 x i1> %i.ahb, <8 x i1> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert468 = insertelement <8 x float> poison, float %i.agv, i64 0
  %broadcast.splat469 = shufflevector <8 x float> %broadcast.splatinsert468, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %broadcast.splatinsert470 = insertelement <8 x float> poison, float %i.agw, i64 0
  %broadcast.splat471 = shufflevector <8 x float> %broadcast.splatinsert470, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body472

vector.body472:                                   ; preds = %vector.body472, %vector.ph466
end_hunk_2
