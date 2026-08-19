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
  %i.fx = add nuw i64 %index174, %i.er            ; 4 uses
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
  %i.hi = add nuw i64 %index203, %i.er            ; 4 uses
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
  %indvars.iv.next70.prol = add nuw nsw i64 %indvars.iv69.ph, 1
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
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 4 uses
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
  %indvars.iv.next70.1 = add nuw nsw i64 %indvars.iv69, 2 ; 2 uses
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
  %.0233 = phi ptr [ %i.ai, %bb.e ], [ null, %bb.d ] ; 60 uses
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
  %scevgep649 = getelementptr i8, ptr %.0233, i64 %i.av
  %scevgep651 = getelementptr i8, ptr %.0233, i64 -4
  %scevgep654 = getelementptr i8, ptr %.0233, i64 4
  %scevgep659 = getelementptr i8, ptr %.0233, i64 -4
  %scevgep750 = getelementptr i8, ptr %.0233, i64 %i.av
  %scevgep863 = getelementptr i8, ptr %.0233, i64 %i.av
  %scevgep867 = getelementptr i8, ptr %.0233, i64 4
  %scevgep869 = getelementptr i8, ptr %.0233, i64 4
  %min.iters.check931 = icmp samesign ult i32 %i.aa, 5
  %min.iters.check933 = icmp samesign ult i32 %i.aa, 33
  %i.aw = and i64 %wide.trip.count, 31            ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  %i.ay = select i1 %i.ax, i64 32, i64 %i.aw      ; 2 uses
  %n.vec935 = sub nsw i64 %wide.trip.count, %i.ay ; 3 uses
  %broadcast.splatinsert936 = insertelement <8 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat937 = shufflevector <8 x i32> %broadcast.splatinsert936, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %min.epilog.iters.check952 = icmp samesign ult i64 %i.ay, 5
  %i.az = and i64 %wide.trip.count, 3             ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  %i.bb = select i1 %i.ba, i64 4, i64 %i.az
  %n.vec954 = sub nsw i64 %wide.trip.count, %i.bb ; 2 uses
  %broadcast.splatinsert955 = insertelement <4 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat956 = shufflevector <4 x i32> %broadcast.splatinsert955, <4 x i32> poison, <4 x i32> zeroinitializer
  %invariant.op1026 = add i64 %i.au, -1
  %invariant.op1024 = add i64 %i.au, -1
  %min.iters.check464 = icmp samesign ult i32 %i.aa, 4
  %min.iters.check465 = icmp samesign ult i32 %i.aa, 16
  %i.bc = and i64 %wide.trip.count, 12
  %n.vec467 = and i64 %wide.trip.count, 2147483632 ; 4 uses
  %cmp.n484 = icmp eq i64 %n.vec467, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.bc, 0
  %n.vec485 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n499 = icmp eq i64 %n.vec485, %wide.trip.count
  %xtraiter997 = and i64 %wide.trip.count, 1
  %lcmp.mod998.not = icmp eq i64 %xtraiter997, 0
  %i.bd = add nsw i64 %wide.trip.count, -1
  %min.iters.check = icmp samesign ult i32 %i.aa, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %iter.check949

iter.check949:                                    ; preds = %.preheader299.lr.ph, %.loopexit965
  %indvars.iv385 = phi i64 [ 0, %.preheader299.lr.ph ], [ %indvars.iv.next386, %.loopexit965 ] ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv385 ; 8 uses
  br i1 %min.iters.check931, label %vec.epilog.scalar.ph950.preheader, label %vector.main.loop.iter.check932

vector.main.loop.iter.check932:                   ; preds = %iter.check949
  br i1 %min.iters.check933, label %vec.epilog.ph953, label %vector.body938

vector.body938:                                   ; preds = %vector.main.loop.iter.check932, %vector.body938
  %index939 = phi i64 [ %index.next946, %vector.body938 ], [ 0, %vector.main.loop.iter.check932 ] ; 6 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index939
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index939
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index939
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 128
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index939
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 192
  %wide.vec = load <32 x i16>, ptr %i.be, align 2, !tbaa !115
  %strided.vec = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec940 = load <32 x i16>, ptr %i.bg, align 2, !tbaa !115
  %strided.vec941 = shufflevector <32 x i16> %wide.vec940, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec942 = load <32 x i16>, ptr %i.bi, align 2, !tbaa !115
  %strided.vec943 = shufflevector <32 x i16> %wide.vec942, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec944 = load <32 x i16>, ptr %i.bk, align 2, !tbaa !115
  %strided.vec945 = shufflevector <32 x i16> %wide.vec944, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.bl = zext <8 x i16> %strided.vec to <8 x i32>
  %i.bm = zext <8 x i16> %strided.vec941 to <8 x i32>
  %i.bn = zext <8 x i16> %strided.vec943 to <8 x i32>
  %i.bo = zext <8 x i16> %strided.vec945 to <8 x i32>
  %i.bp = shl <8 x i32> %i.bl, %broadcast.splat937
  %i.bq = shl <8 x i32> %i.bm, %broadcast.splat937
  %i.br = shl <8 x i32> %i.bn, %broadcast.splat937
  %i.bs = shl <8 x i32> %i.bo, %broadcast.splat937
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
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %index939 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 96
  store <8 x float> %i.cb, ptr %i.cf, align 4, !tbaa !11
  store <8 x float> %i.cc, ptr %i.cg, align 4, !tbaa !11
  store <8 x float> %i.cd, ptr %i.ch, align 4, !tbaa !11
  store <8 x float> %i.ce, ptr %i.ci, align 4, !tbaa !11
end_hunk_0
begin_hunk_1_@_ZN6LibRaw15wavelet_denoiseEv:bb.a
  br i1 %conflict.rdx824, label %.lr.ph56.i.preheader, label %vector.main.loop.iter.check828

vector.main.loop.iter.check828:                   ; preds = %vector.memcheck819
  br i1 %min.iters.check829, label %vec.epilog.ph850, label %vector.ph830

vector.ph830:                                     ; preds = %vector.main.loop.iter.check828
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.fc
  br label %vector.body832

vector.body832:                                   ; preds = %vector.body832, %vector.ph830
  %index833 = phi i64 [ 0, %vector.ph830 ], [ %index.next840, %vector.body832 ] ; 4 uses
  %i.ke = add nuw i64 %index833, %i.ez            ; 2 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.ke ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 32
  %wide.load834 = load <8 x float>, ptr %i.kf, align 4, !tbaa !11
  %wide.load835 = load <8 x float>, ptr %i.kg, align 4, !tbaa !11
  %i.kh = fmul reassoc nsz arcp contract afn <8 x float> %wide.load834, splat (float 2.000000e+00)
  %i.ki = fmul reassoc nsz arcp contract afn <8 x float> %wide.load835, splat (float 2.000000e+00)
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %index833 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 32
  %wide.load836 = load <8 x float>, ptr %i.kj, align 4, !tbaa !11
  %wide.load837 = load <8 x float>, ptr %i.kk, align 4, !tbaa !11
  %i.kl = fadd reassoc nsz arcp contract afn <8 x float> %i.kh, %wide.load836
  %i.km = fadd reassoc nsz arcp contract afn <8 x float> %i.ki, %wide.load837
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %index833 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 32
  %wide.load838 = load <8 x float>, ptr %i.kn, align 4, !tbaa !11
  %wide.load839 = load <8 x float>, ptr %i.ko, align 4, !tbaa !11
  %i.kp = fadd reassoc nsz arcp contract afn <8 x float> %i.kl, %wide.load838
  %i.kq = fadd reassoc nsz arcp contract afn <8 x float> %i.km, %wide.load839
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ke ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 32
  store <8 x float> %i.kp, ptr %i.kr, align 4, !tbaa !11
  store <8 x float> %i.kq, ptr %i.ks, align 4, !tbaa !11
  %index.next840 = add nuw i64 %index833, 16      ; 2 uses
  %i.kt = icmp eq i64 %index.next840, %n.vec831
  br i1 %i.kt, label %middle.block841, label %vector.body832, !llvm.loop !135

middle.block841:                                  ; preds = %vector.body832
  br i1 %cmp.n842, label %.preheader.loopexit.i, label %vec.epilog.iter.check848

vec.epilog.iter.check848:                         ; preds = %middle.block841
  br i1 %min.epilog.iters.check849, label %.lr.ph56.i.preheader, label %vec.epilog.ph850, !prof !28

vec.epilog.ph850:                                 ; preds = %vector.main.loop.iter.check828, %vec.epilog.iter.check848
  %vec.epilog.resume.val843 = phi i64 [ %n.vec831, %vec.epilog.iter.check848 ], [ 0, %vector.main.loop.iter.check828 ]
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.fc
  br label %vec.epilog.vector.body852

vec.epilog.vector.body852:                        ; preds = %vec.epilog.vector.body852, %vec.epilog.ph850
  %index853 = phi i64 [ %vec.epilog.resume.val843, %vec.epilog.ph850 ], [ %index.next857, %vec.epilog.vector.body852 ] ; 4 uses
  %i.kv = add nuw i64 %index853, %i.ez            ; 2 uses
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.kv
  %wide.load854 = load <4 x float>, ptr %i.kw, align 4, !tbaa !11
  %i.kx = fmul reassoc nsz arcp contract afn <4 x float> %wide.load854, splat (float 2.000000e+00)
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %index853
  %wide.load855 = load <4 x float>, ptr %i.ky, align 4, !tbaa !11
  %i.kz = fadd reassoc nsz arcp contract afn <4 x float> %i.kx, %wide.load855
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %index853
  %wide.load856 = load <4 x float>, ptr %i.la, align 4, !tbaa !11
  %i.lb = fadd reassoc nsz arcp contract afn <4 x float> %i.kz, %wide.load856
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.kv
  store <4 x float> %i.lb, ptr %i.lc, align 4, !tbaa !11
  %index.next857 = add nuw i64 %index853, 4       ; 2 uses
  %i.ld = icmp eq i64 %index.next857, %n.vec851
  br i1 %i.ld, label %vec.epilog.middle.block858, label %vec.epilog.vector.body852, !llvm.loop !136

vec.epilog.middle.block858:                       ; preds = %vec.epilog.vector.body852
  br i1 %cmp.n859, label %.preheader.loopexit.i, label %.lr.ph56.i.preheader

.lr.ph56.i.preheader:                             ; preds = %vector.memcheck819, %iter.check846, %vec.epilog.iter.check848, %vec.epilog.middle.block858
  %indvars.iv64.i.ph = phi i64 [ %i.ez, %iter.check846 ], [ %i.ez, %vector.memcheck819 ], [ %i.gh, %vec.epilog.iter.check848 ], [ %i.gj, %vec.epilog.middle.block858 ]
  %indvars.iv62.i.ph = phi i64 [ %i.fc, %iter.check846 ], [ %i.fc, %vector.memcheck819 ], [ %i.gi, %vec.epilog.iter.check848 ], [ %i.gk, %vec.epilog.middle.block858 ]
  br label %.lr.ph56.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 8 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv.i
  %i.lf = load float, ptr %i.le, align 4, !tbaa !11
  %i.lg = fmul reassoc nsz arcp contract afn float %i.lf, 2.000000e+00
  %i.lh = sub nsw i64 %i.ez, %indvars.iv.i
  %i.li = getelementptr inbounds [4 x i8], ptr %i.id, i64 %i.lh
  %i.lj = load float, ptr %i.li, align 4, !tbaa !11
  %i.lk = fadd reassoc nsz arcp contract afn float %i.lg, %i.lj
  %gep308 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep307, i64 %indvars.iv.i
  %i.ll = load float, ptr %gep308, align 4, !tbaa !11
  %i.lm = fadd reassoc nsz arcp contract afn float %i.lk, %i.ll
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i
  store float %i.lm, ptr %i.ln, align 4, !tbaa !11
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 4 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv.next.i
  %i.lp = load float, ptr %i.lo, align 4, !tbaa !11
  %i.lq = fmul reassoc nsz arcp contract afn float %i.lp, 2.000000e+00
  %i.lr = sub nsw i64 %i.ez, %indvars.iv.next.i
  %i.ls = getelementptr inbounds [4 x i8], ptr %i.id, i64 %i.lr
  %i.lt = load float, ptr %i.ls, align 4, !tbaa !11
  %i.lu = fadd reassoc nsz arcp contract afn float %i.lq, %i.lt
  %gep308.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep307, i64 %indvars.iv.next.i
  %i.lv = load float, ptr %gep308.1, align 4, !tbaa !11
  %i.lw = fadd reassoc nsz arcp contract afn float %i.lu, %i.lv
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next.i
  store float %i.lw, ptr %i.lx, align 4, !tbaa !11
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 4 uses
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv.next.i.1
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !11
  %i.ma = fmul reassoc nsz arcp contract afn float %i.lz, 2.000000e+00
  %i.mb = sub nsw i64 %i.ez, %indvars.iv.next.i.1
  %i.mc = getelementptr inbounds [4 x i8], ptr %i.id, i64 %i.mb
  %i.md = load float, ptr %i.mc, align 4, !tbaa !11
  %i.me = fadd reassoc nsz arcp contract afn float %i.ma, %i.md
  %gep308.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep307, i64 %indvars.iv.next.i.1
  %i.mf = load float, ptr %gep308.2, align 4, !tbaa !11
  %i.mg = fadd reassoc nsz arcp contract afn float %i.me, %i.mf
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next.i.1
  store float %i.mg, ptr %i.mh, align 4, !tbaa !11
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 4 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv.next.i.2
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !11
  %i.mk = fmul reassoc nsz arcp contract afn float %i.mj, 2.000000e+00
  %i.ml = sub nsw i64 %i.ez, %indvars.iv.next.i.2
  %i.mm = getelementptr inbounds [4 x i8], ptr %i.id, i64 %i.ml
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !11
  %i.mo = fadd reassoc nsz arcp contract afn float %i.mk, %i.mn
  %gep308.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep307, i64 %indvars.iv.next.i.2
  %i.mp = load float, ptr %gep308.3, align 4, !tbaa !11
  %i.mq = fadd reassoc nsz arcp contract afn float %i.mo, %i.mp
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next.i.2
  store float %i.mq, ptr %i.mr, align 4, !tbaa !11
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader53.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !137

.preheader.loopexit.i:                            ; preds = %.lr.ph56.i, %vec.epilog.middle.block858, %middle.block841
  %indvars.iv.next65.i.lcssa = phi i64 [ %i.gj, %vec.epilog.middle.block858 ], [ %i.gh, %middle.block841 ], [ %indvars.iv.next65.i, %.lr.ph56.i ]
  %i.ms = trunc nsw i64 %indvars.iv.next65.i.lcssa to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.preheader53.i
  %.1.lcssa.i = phi i32 [ %i.ey, %.preheader53.i ], [ %i.ms, %.preheader.loopexit.i ] ; 4 uses
  %i.mt = icmp slt i32 %.1.lcssa.i, %i.cv
  br i1 %i.mt, label %iter.check803, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit

iter.check803:                                    ; preds = %.preheader.i
  %i.mu = sext i32 %.1.lcssa.i to i64             ; 11 uses
  %i.mv = sub nsw i64 %i.cw, %i.mu                ; 7 uses
  %min.iters.check775 = icmp ult i64 %i.mv, 8
  br i1 %min.iters.check775, label %vec.epilog.scalar.ph804.preheader, label %vector.scevcheck748

vector.scevcheck748:                              ; preds = %iter.check803
  %i.mw = xor i64 %i.mu, -1
  %i.mx = add nsw i64 %i.mw, %i.cw                ; 2 uses
  %i.my = add i32 %i.ey, %.1.lcssa.i
  %i.mz = sub i32 %i.dk, %i.my                    ; 2 uses
  %i.na = trunc i64 %i.mx to i32
  %i.nb = sub i32 %i.mz, %i.na
  %i.nc = icmp sgt i32 %i.nb, %i.mz
  %i.nd = icmp ugt i64 %i.mx, 4294967295
  %i.ne = or i1 %i.nc, %i.nd
  br i1 %i.ne, label %vec.epilog.scalar.ph804.preheader, label %vector.memcheck749

vector.memcheck749:                               ; preds = %vector.scevcheck748
  %i.nf = shl nsw i64 %i.mu, 2                    ; 3 uses
  %scevgep751 = getelementptr i8, ptr %scevgep750, i64 %i.nf ; 3 uses
  %scevgep754 = getelementptr i8, ptr %scevgep753, i64 %i.nf
  %scevgep757 = getelementptr i8, ptr %scevgep756, i64 %i.nf
  %i.ng = add i32 %i.ey, %.1.lcssa.i
  %i.nh = sub i32 %i.dp, %i.ng
  %i.ni = sext i32 %i.nh to i64                   ; 2 uses
  %i.nj = add nsw i64 %i.mu, %i.ni
  %i.nk = shl nsw i64 %i.nj, 2
  %scevgep760 = getelementptr i8, ptr %scevgep759, i64 %i.nk
  %i.nl = shl nsw i64 %i.ni, 2
  %scevgep762 = getelementptr i8, ptr %scevgep761, i64 %i.nl
  %bound0763 = icmp ult ptr %scevgep751, %scevgep755
  %bound1764 = icmp ult ptr %scevgep754, %scevgep752
  %found.conflict765 = and i1 %bound0763, %bound1764
  %bound0766 = icmp ult ptr %scevgep751, %scevgep758
  %bound1767 = icmp ult ptr %scevgep757, %scevgep752
  %found.conflict768 = and i1 %bound0766, %bound1767
  %conflict.rdx769 = or i1 %found.conflict765, %found.conflict768
  %bound0770 = icmp ult ptr %scevgep751, %scevgep762
  %bound1771 = icmp ult ptr %scevgep760, %scevgep752
  %found.conflict772 = and i1 %bound0770, %bound1771
  %conflict.rdx773 = or i1 %conflict.rdx769, %found.conflict772
  br i1 %conflict.rdx773, label %vec.epilog.scalar.ph804.preheader, label %vector.main.loop.iter.check776

vector.main.loop.iter.check776:                   ; preds = %vector.memcheck749
  %min.iters.check777 = icmp ult i64 %i.mv, 32
  br i1 %min.iters.check777, label %vec.epilog.ph807, label %vector.ph778

vector.ph778:                                     ; preds = %vector.main.loop.iter.check776
  %i.nm = and i64 %i.mv, 24
  %n.vec779 = and i64 %i.mv, -32                  ; 4 uses
  %i.nn = add nsw i64 %n.vec779, %i.mu
  br label %vector.body780

vector.body780:                                   ; preds = %vector.body780, %vector.ph778
  %index781 = phi i64 [ 0, %vector.ph778 ], [ %index.next798, %vector.body780 ] ; 2 uses
  %i.no = add nuw i64 %index781, %i.mu            ; 4 uses
  %i.np = getelementptr inbounds [4 x i8], ptr %i.id, i64 %i.no ; 4 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 32
  %i.nr = getelementptr inbounds nuw i8, ptr %i.np, i64 64
  %i.ns = getelementptr inbounds nuw i8, ptr %i.np, i64 96
  %wide.load782 = load <8 x float>, ptr %i.np, align 4, !tbaa !11, !alias.scope !138
  %wide.load783 = load <8 x float>, ptr %i.nq, align 4, !tbaa !11, !alias.scope !138
  %wide.load784 = load <8 x float>, ptr %i.nr, align 4, !tbaa !11, !alias.scope !138
  %wide.load785 = load <8 x float>, ptr %i.ns, align 4, !tbaa !11, !alias.scope !138
  %i.nt = fmul reassoc nsz arcp contract afn <8 x float> %wide.load782, splat (float 2.000000e+00)
  %i.nu = fmul reassoc nsz arcp contract afn <8 x float> %wide.load783, splat (float 2.000000e+00)
  %i.nv = fmul reassoc nsz arcp contract afn <8 x float> %wide.load784, splat (float 2.000000e+00)
  %i.nw = fmul reassoc nsz arcp contract afn <8 x float> %wide.load785, splat (float 2.000000e+00)
  %i.nx = sub nsw i64 %i.no, %i.ez
  %i.ny = getelementptr inbounds [4 x i8], ptr %i.id, i64 %i.nx ; 4 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 32
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ny, i64 64
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ny, i64 96
  %wide.load786 = load <8 x float>, ptr %i.ny, align 4, !tbaa !11, !alias.scope !141
  %wide.load787 = load <8 x float>, ptr %i.nz, align 4, !tbaa !11, !alias.scope !141
  %wide.load788 = load <8 x float>, ptr %i.oa, align 4, !tbaa !11, !alias.scope !141
  %wide.load789 = load <8 x float>, ptr %i.ob, align 4, !tbaa !11, !alias.scope !141
  %i.oc = fadd reassoc nsz arcp contract afn <8 x float> %i.nt, %wide.load786
  %i.od = fadd reassoc nsz arcp contract afn <8 x float> %i.nu, %wide.load787
  %i.oe = fadd reassoc nsz arcp contract afn <8 x float> %i.nv, %wide.load788
  %i.of = fadd reassoc nsz arcp contract afn <8 x float> %i.nw, %wide.load789
  %i.og = trunc nsw i64 %i.no to i32
  %i.oh = add i32 %i.ey, %i.og
  %i.oi = sub i32 %i.db, %i.oh
  %i.oj = sext i32 %i.oi to i64
  %i.ok = getelementptr inbounds [4 x i8], ptr %i.id, i64 %i.oj ; 4 uses
  %i.ol = getelementptr inbounds i8, ptr %i.ok, i64 -28
  %i.om = getelementptr inbounds i8, ptr %i.ok, i64 -60
  %i.on = getelementptr inbounds i8, ptr %i.ok, i64 -92
  %i.oo = getelementptr inbounds i8, ptr %i.ok, i64 -124
  %wide.load790 = load <8 x float>, ptr %i.ol, align 4, !tbaa !11, !alias.scope !143
  %wide.load791 = load <8 x float>, ptr %i.om, align 4, !tbaa !11, !alias.scope !143
  %wide.load792 = load <8 x float>, ptr %i.on, align 4, !tbaa !11, !alias.scope !143
  %wide.load793 = load <8 x float>, ptr %i.oo, align 4, !tbaa !11, !alias.scope !143
  %reverse794 = shufflevector <8 x float> %wide.load790, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse795 = shufflevector <8 x float> %wide.load791, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse796 = shufflevector <8 x float> %wide.load792, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse797 = shufflevector <8 x float> %wide.load793, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.op = fadd reassoc nsz arcp contract afn <8 x float> %i.oc, %reverse794
  %i.oq = fadd reassoc nsz arcp contract afn <8 x float> %i.od, %reverse795
  %i.or = fadd reassoc nsz arcp contract afn <8 x float> %i.oe, %reverse796
  %i.os = fadd reassoc nsz arcp contract afn <8 x float> %i.of, %reverse797
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.no ; 4 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 32
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ot, i64 64
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ot, i64 96
  store <8 x float> %i.op, ptr %i.ot, align 4, !tbaa !11, !alias.scope !145, !noalias !147
  store <8 x float> %i.oq, ptr %i.ou, align 4, !tbaa !11, !alias.scope !145, !noalias !147
  store <8 x float> %i.or, ptr %i.ov, align 4, !tbaa !11, !alias.scope !145, !noalias !147
  store <8 x float> %i.os, ptr %i.ow, align 4, !tbaa !11, !alias.scope !145, !noalias !147
  %index.next798 = add nuw i64 %index781, 32      ; 2 uses
  %i.ox = icmp eq i64 %index.next798, %n.vec779
  br i1 %i.ox, label %middle.block799, label %vector.body780, !llvm.loop !148

middle.block799:                                  ; preds = %vector.body780
  %cmp.n800 = icmp eq i64 %i.mv, %n.vec779
  br i1 %cmp.n800, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit, label %vec.epilog.iter.check805

vec.epilog.iter.check805:                         ; preds = %middle.block799
  %min.epilog.iters.check806 = icmp eq i64 %i.nm, 0
  br i1 %min.epilog.iters.check806, label %vec.epilog.scalar.ph804.preheader, label %vec.epilog.ph807, !prof !25

vec.epilog.ph807:                                 ; preds = %vector.main.loop.iter.check776, %vec.epilog.iter.check805
  %vec.epilog.resume.val801 = phi i64 [ %n.vec779, %vec.epilog.iter.check805 ], [ 0, %vector.main.loop.iter.check776 ]
  %n.vec808 = and i64 %i.mv, -8                   ; 3 uses
  %i.oy = add nsw i64 %n.vec808, %i.mu
  br label %vec.epilog.vector.body809

vec.epilog.vector.body809:                        ; preds = %vec.epilog.vector.body809, %vec.epilog.ph807
  %index810 = phi i64 [ %vec.epilog.resume.val801, %vec.epilog.ph807 ], [ %index.next815, %vec.epilog.vector.body809 ] ; 2 uses
  %i.oz = add nuw i64 %index810, %i.mu            ; 4 uses
  %i.pa = getelementptr inbounds [4 x i8], ptr %i.id, i64 %i.oz
  %wide.load811 = load <8 x float>, ptr %i.pa, align 4, !tbaa !11, !alias.scope !138
  %i.pb = fmul reassoc nsz arcp contract afn <8 x float> %wide.load811, splat (float 2.000000e+00)
  %i.pc = sub nsw i64 %i.oz, %i.ez
  %i.pd = getelementptr inbounds [4 x i8], ptr %i.id, i64 %i.pc
  %wide.load812 = load <8 x float>, ptr %i.pd, align 4, !tbaa !11, !alias.scope !141
  %i.pe = fadd reassoc nsz arcp contract afn <8 x float> %i.pb, %wide.load812
  %i.pf = trunc nsw i64 %i.oz to i32
  %i.pg = add i32 %i.ey, %i.pf
  %i.ph = sub i32 %i.db, %i.pg
  %i.pi = sext i32 %i.ph to i64
  %i.pj = getelementptr inbounds [4 x i8], ptr %i.id, i64 %i.pi
  %i.pk = getelementptr inbounds i8, ptr %i.pj, i64 -28
  %wide.load813 = load <8 x float>, ptr %i.pk, align 4, !tbaa !11, !alias.scope !143
  %reverse814 = shufflevector <8 x float> %wide.load813, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.pl = fadd reassoc nsz arcp contract afn <8 x float> %i.pe, %reverse814
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.oz
  store <8 x float> %i.pl, ptr %i.pm, align 4, !tbaa !11, !alias.scope !145, !noalias !147
  %index.next815 = add nuw i64 %index810, 8       ; 2 uses
  %i.pn = icmp eq i64 %index.next815, %n.vec808
  br i1 %i.pn, label %vec.epilog.middle.block816, label %vec.epilog.vector.body809, !llvm.loop !149

vec.epilog.middle.block816:                       ; preds = %vec.epilog.vector.body809
  %cmp.n817 = icmp eq i64 %i.mv, %n.vec808
  br i1 %cmp.n817, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit, label %vec.epilog.scalar.ph804.preheader

vec.epilog.scalar.ph804.preheader:                ; preds = %vector.memcheck749, %vector.scevcheck748, %iter.check803, %vec.epilog.iter.check805, %vec.epilog.middle.block816
  %indvars.iv69.i.ph = phi i64 [ %i.mu, %iter.check803 ], [ %i.mu, %vector.scevcheck748 ], [ %i.mu, %vector.memcheck749 ], [ %i.nn, %vec.epilog.iter.check805 ], [ %i.oy, %vec.epilog.middle.block816 ] ; 8 uses
  %i.po = sub i64 %i.cz, %indvars.iv69.i.ph
  %xtraiter981 = and i64 %i.po, 1
  %lcmp.mod982.not = icmp eq i64 %xtraiter981, 0
  br i1 %lcmp.mod982.not, label %vec.epilog.scalar.ph804.prol.loopexit, label %vec.epilog.scalar.ph804.prol

vec.epilog.scalar.ph804.prol:                     ; preds = %vec.epilog.scalar.ph804.preheader
  %i.pp = getelementptr inbounds [4 x i8], ptr %i.id, i64 %indvars.iv69.i.ph
  %i.pq = load float, ptr %i.pp, align 4, !tbaa !11
  %i.pr = fmul reassoc nsz arcp contract afn float %i.pq, 2.000000e+00
  %i.ps = sub nsw i64 %indvars.iv69.i.ph, %i.ez
  %i.pt = getelementptr inbounds [4 x i8], ptr %i.id, i64 %i.ps
  %i.pu = load float, ptr %i.pt, align 4, !tbaa !11
  %i.pv = fadd reassoc nsz arcp contract afn float %i.pr, %i.pu
  %i.pw = trunc nsw i64 %indvars.iv69.i.ph to i32
  %i.px = add i32 %i.ey, %i.pw
  %i.py = sub i32 %i.db, %i.px
  %i.pz = sext i32 %i.py to i64
  %i.qa = getelementptr inbounds [4 x i8], ptr %i.id, i64 %i.pz
  %i.qb = load float, ptr %i.qa, align 4, !tbaa !11
  %i.qc = fadd reassoc nsz arcp contract afn float %i.pv, %i.qb
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv69.i.ph
  store float %i.qc, ptr %i.qd, align 4, !tbaa !11
  %indvars.iv.next70.i.prol = add nuw nsw i64 %indvars.iv69.i.ph, 1
  br label %vec.epilog.scalar.ph804.prol.loopexit

vec.epilog.scalar.ph804.prol.loopexit:            ; preds = %vec.epilog.scalar.ph804.prol, %vec.epilog.scalar.ph804.preheader
  %indvars.iv69.i.unr = phi i64 [ %indvars.iv69.i.ph, %vec.epilog.scalar.ph804.preheader ], [ %indvars.iv.next70.i.prol, %vec.epilog.scalar.ph804.prol ]
  %i.qe = icmp eq i64 %indvars.iv69.i.ph, %i.du
  br i1 %i.qe, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit, label %vec.epilog.scalar.ph804

.lr.ph56.i:                                       ; preds = %.lr.ph56.i.preheader, %.lr.ph56.i
  %indvars.iv64.i = phi i64 [ %indvars.iv.next65.i, %.lr.ph56.i ], [ %indvars.iv64.i.ph, %.lr.ph56.i.preheader ] ; 4 uses
  %indvars.iv62.i = phi i64 [ %indvars.iv.next63.i, %.lr.ph56.i ], [ %indvars.iv62.i.ph, %.lr.ph56.i.preheader ] ; 2 uses
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv64.i
  %i.qg = load float, ptr %i.qf, align 4, !tbaa !11
  %i.qh = fmul reassoc nsz arcp contract afn float %i.qg, 2.000000e+00
  %i.qi = sub nuw nsw i64 %indvars.iv64.i, %i.ez
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.qi
  %i.qk = load float, ptr %i.qj, align 4, !tbaa !11
  %i.ql = fadd reassoc nsz arcp contract afn float %i.qh, %i.qk
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv62.i
  %i.qn = load float, ptr %i.qm, align 4, !tbaa !11
  %i.qo = fadd reassoc nsz arcp contract afn float %i.ql, %i.qn
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv64.i
  store float %i.qo, ptr %i.qp, align 4, !tbaa !11
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 3 uses
  %i.qq = icmp slt i64 %indvars.iv.next65.i, %invariant.op.i
  %indvars.iv.next63.i = add nuw nsw i64 %indvars.iv62.i, 1
  br i1 %i.qq, label %.lr.ph56.i, label %.preheader.loopexit.i, !llvm.loop !150

vec.epilog.scalar.ph804:                          ; preds = %vec.epilog.scalar.ph804.prol.loopexit, %vec.epilog.scalar.ph804
  %indvars.iv69.i = phi i64 [ %indvars.iv.next70.i.1, %vec.epilog.scalar.ph804 ], [ %indvars.iv69.i.unr, %vec.epilog.scalar.ph804.prol.loopexit ] ; 6 uses
  %i.qr = getelementptr inbounds [4 x i8], ptr %i.id, i64 %indvars.iv69.i
  %i.qs = load float, ptr %i.qr, align 4, !tbaa !11
  %i.qt = fmul reassoc nsz arcp contract afn float %i.qs, 2.000000e+00
  %i.qu = sub nsw i64 %indvars.iv69.i, %i.ez
  %i.qv = getelementptr inbounds [4 x i8], ptr %i.id, i64 %i.qu
  %i.qw = load float, ptr %i.qv, align 4, !tbaa !11
  %i.qx = fadd reassoc nsz arcp contract afn float %i.qt, %i.qw
  %i.qy = trunc nsw i64 %indvars.iv69.i to i32
  %i.qz = add i32 %i.ey, %i.qy
  %i.ra = sub i32 %i.db, %i.qz
  %i.rb = sext i32 %i.ra to i64
  %i.rc = getelementptr inbounds [4 x i8], ptr %i.id, i64 %i.rb
  %i.rd = load float, ptr %i.rc, align 4, !tbaa !11
  %i.re = fadd reassoc nsz arcp contract afn float %i.qx, %i.rd
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv69.i
  store float %i.re, ptr %i.rf, align 4, !tbaa !11
  %indvars.iv.next70.i = add nuw nsw i64 %indvars.iv69.i, 1 ; 4 uses
  %i.rg = getelementptr inbounds [4 x i8], ptr %i.id, i64 %indvars.iv.next70.i
  %i.rh = load float, ptr %i.rg, align 4, !tbaa !11
  %i.ri = fmul reassoc nsz arcp contract afn float %i.rh, 2.000000e+00
  %i.rj = sub nsw i64 %indvars.iv.next70.i, %i.ez
  %i.rk = getelementptr inbounds [4 x i8], ptr %i.id, i64 %i.rj
  %i.rl = load float, ptr %i.rk, align 4, !tbaa !11
  %i.rm = fadd reassoc nsz arcp contract afn float %i.ri, %i.rl
  %i.rn = trunc nsw i64 %indvars.iv.next70.i to i32
  %i.ro = add i32 %i.ey, %i.rn
  %i.rp = sub i32 %i.db, %i.ro
  %i.rq = sext i32 %i.rp to i64
  %i.rr = getelementptr inbounds [4 x i8], ptr %i.id, i64 %i.rq
  %i.rs = load float, ptr %i.rr, align 4, !tbaa !11
  %i.rt = fadd reassoc nsz arcp contract afn float %i.rm, %i.rs
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next70.i
  store float %i.rt, ptr %i.ru, align 4, !tbaa !11
  %indvars.iv.next70.i.1 = add nuw nsw i64 %indvars.iv69.i, 2 ; 2 uses
  %exitcond73.not.i.1 = icmp eq i64 %indvars.iv.next70.i.1, %i.cw
  br i1 %exitcond73.not.i.1, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit, label %vec.epilog.scalar.ph804, !llvm.loop !151

_ZN6LibRaw13hat_transformEPfS0_iii.exit:          ; preds = %vec.epilog.scalar.ph804.prol.loopexit, %vec.epilog.scalar.ph804, %middle.block799, %vec.epilog.middle.block816, %.preheader.i
  br i1 %.not344, label %._crit_edge, label %iter.check735

iter.check735:                                    ; preds = %_ZN6LibRaw13hat_transformEPfS0_iii.exit
  %gep438 = getelementptr [4 x i8], ptr %invariant.gep437, i64 %i.ic ; 11 uses
  %.reass1011 = add i64 %i.ib, %invariant.op1010.reass
  %diff.check718 = icmp ult i64 %.reass1011, 127
  %or.cond = select i1 %min.iters.check720, i1 true, i1 %diff.check718
  br i1 %or.cond, label %vec.epilog.scalar.ph736.preheader, label %vector.main.loop.iter.check721

vector.main.loop.iter.check721:                   ; preds = %iter.check735
  br i1 %min.iters.check722, label %vec.epilog.ph739, label %vector.body725

vector.body725:                                   ; preds = %vector.main.loop.iter.check721, %vector.body725
  %index726 = phi i64 [ %index.next731, %vector.body725 ], [ 0, %vector.main.loop.iter.check721 ] ; 3 uses
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index726 ; 4 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 32
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rv, i64 64
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rv, i64 96
  %wide.load727 = load <8 x float>, ptr %i.rv, align 4, !tbaa !11
  %wide.load728 = load <8 x float>, ptr %i.rw, align 4, !tbaa !11
  %wide.load729 = load <8 x float>, ptr %i.rx, align 4, !tbaa !11
  %wide.load730 = load <8 x float>, ptr %i.ry, align 4, !tbaa !11
  %i.rz = fmul reassoc nsz arcp contract afn <8 x float> %wide.load727, splat (float 2.500000e-01)
  %i.sa = fmul reassoc nsz arcp contract afn <8 x float> %wide.load728, splat (float 2.500000e-01)
  %i.sb = fmul reassoc nsz arcp contract afn <8 x float> %wide.load729, splat (float 2.500000e-01)
  %i.sc = fmul reassoc nsz arcp contract afn <8 x float> %wide.load730, splat (float 2.500000e-01)
  %i.sd = getelementptr [4 x i8], ptr %gep438, i64 %index726 ; 4 uses
  %i.se = getelementptr i8, ptr %i.sd, i64 32
  %i.sf = getelementptr i8, ptr %i.sd, i64 64
  %i.sg = getelementptr i8, ptr %i.sd, i64 96
  store <8 x float> %i.rz, ptr %i.sd, align 4, !tbaa !11
  store <8 x float> %i.sa, ptr %i.se, align 4, !tbaa !11
  store <8 x float> %i.sb, ptr %i.sf, align 4, !tbaa !11
  store <8 x float> %i.sc, ptr %i.sg, align 4, !tbaa !11
  %index.next731 = add nuw i64 %index726, 32      ; 2 uses
  %i.sh = icmp eq i64 %index.next731, %n.vec724
  br i1 %i.sh, label %middle.block732, label %vector.body725, !llvm.loop !152

middle.block732:                                  ; preds = %vector.body725
  br i1 %cmp.n733, label %._crit_edge, label %vec.epilog.iter.check737

vec.epilog.iter.check737:                         ; preds = %middle.block732
  br i1 %min.epilog.iters.check738, label %vec.epilog.scalar.ph736.preheader, label %vec.epilog.ph739, !prof !117

vec.epilog.ph739:                                 ; preds = %vector.main.loop.iter.check721, %vec.epilog.iter.check737
  %vec.epilog.resume.val734 = phi i64 [ %n.vec724, %vec.epilog.iter.check737 ], [ 0, %vector.main.loop.iter.check721 ]
  br label %vec.epilog.vector.body741

vec.epilog.vector.body741:                        ; preds = %vec.epilog.vector.body741, %vec.epilog.ph739
  %index742 = phi i64 [ %vec.epilog.resume.val734, %vec.epilog.ph739 ], [ %index.next744, %vec.epilog.vector.body741 ] ; 3 uses
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index742
  %wide.load743 = load <4 x float>, ptr %i.si, align 4, !tbaa !11
  %i.sj = fmul reassoc nsz arcp contract afn <4 x float> %wide.load743, splat (float 2.500000e-01)
  %i.sk = getelementptr [4 x i8], ptr %gep438, i64 %index742
  store <4 x float> %i.sj, ptr %i.sk, align 4, !tbaa !11
  %index.next744 = add nuw i64 %index742, 4       ; 2 uses
  %i.sl = icmp eq i64 %index.next744, %n.vec740
  br i1 %i.sl, label %vec.epilog.middle.block745, label %vec.epilog.vector.body741, !llvm.loop !153

vec.epilog.middle.block745:                       ; preds = %vec.epilog.vector.body741
  br i1 %cmp.n746, label %._crit_edge, label %vec.epilog.scalar.ph736.preheader

vec.epilog.scalar.ph736.preheader:                ; preds = %iter.check735, %vec.epilog.iter.check737, %vec.epilog.middle.block745
  %indvars.iv351.ph = phi i64 [ 0, %iter.check735 ], [ %n.vec724, %vec.epilog.iter.check737 ], [ %n.vec740, %vec.epilog.middle.block745 ] ; 4 uses
  %i.sm = sub nsw i64 %i.cz, %indvars.iv351.ph
  %xtraiter983 = and i64 %i.sm, 7                 ; 2 uses
  %lcmp.mod984.not = icmp eq i64 %xtraiter983, 0
  br i1 %lcmp.mod984.not, label %vec.epilog.scalar.ph736.prol.loopexit, label %vec.epilog.scalar.ph736.prol

vec.epilog.scalar.ph736.prol:                     ; preds = %vec.epilog.scalar.ph736.preheader, %vec.epilog.scalar.ph736.prol
  %indvars.iv351.prol = phi i64 [ %indvars.iv.next352.prol, %vec.epilog.scalar.ph736.prol ], [ %indvars.iv351.ph, %vec.epilog.scalar.ph736.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph736.prol ], [ 0, %vec.epilog.scalar.ph736.preheader ]
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv351.prol
  %i.so = load float, ptr %i.sn, align 4, !tbaa !11
  %i.sp = fmul reassoc nsz arcp contract afn float %i.so, 2.500000e-01
  %i.sq = getelementptr [4 x i8], ptr %gep438, i64 %indvars.iv351.prol
  store float %i.sp, ptr %i.sq, align 4, !tbaa !11
  %indvars.iv.next352.prol = add nuw nsw i64 %indvars.iv351.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter983
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph736.prol.loopexit, label %vec.epilog.scalar.ph736.prol, !llvm.loop !154

vec.epilog.scalar.ph736.prol.loopexit:            ; preds = %vec.epilog.scalar.ph736.prol, %vec.epilog.scalar.ph736.preheader
  %indvars.iv351.unr = phi i64 [ %indvars.iv351.ph, %vec.epilog.scalar.ph736.preheader ], [ %indvars.iv.next352.prol, %vec.epilog.scalar.ph736.prol ]
  %i.sr = sub nsw i64 %indvars.iv351.ph, %i.cz
  %i.ss = icmp ugt i64 %i.sr, -8
  br i1 %i.ss, label %._crit_edge, label %vec.epilog.scalar.ph736

vec.epilog.scalar.ph736:                          ; preds = %vec.epilog.scalar.ph736.prol.loopexit, %vec.epilog.scalar.ph736
  %indvars.iv351 = phi i64 [ %indvars.iv.next352.7, %vec.epilog.scalar.ph736 ], [ %indvars.iv351.unr, %vec.epilog.scalar.ph736.prol.loopexit ] ; 10 uses
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv351
  %i.su = load float, ptr %i.st, align 4, !tbaa !11
  %i.sv = fmul reassoc nsz arcp contract afn float %i.su, 2.500000e-01
  %i.sw = getelementptr [4 x i8], ptr %gep438, i64 %indvars.iv351
  store float %i.sv, ptr %i.sw, align 4, !tbaa !11
  %indvars.iv.next352 = add nuw nsw i64 %indvars.iv351, 1 ; 2 uses
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next352
  %i.sy = load float, ptr %i.sx, align 4, !tbaa !11
  %i.sz = fmul reassoc nsz arcp contract afn float %i.sy, 2.500000e-01
  %i.ta = getelementptr [4 x i8], ptr %gep438, i64 %indvars.iv.next352
  store float %i.sz, ptr %i.ta, align 4, !tbaa !11
  %indvars.iv.next352.1 = add nuw nsw i64 %indvars.iv351, 2 ; 2 uses
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next352.1
  %i.tc = load float, ptr %i.tb, align 4, !tbaa !11
  %i.td = fmul reassoc nsz arcp contract afn float %i.tc, 2.500000e-01
  %i.te = getelementptr [4 x i8], ptr %gep438, i64 %indvars.iv.next352.1
  store float %i.td, ptr %i.te, align 4, !tbaa !11
  %indvars.iv.next352.2 = add nuw nsw i64 %indvars.iv351, 3 ; 2 uses
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next352.2
  %i.tg = load float, ptr %i.tf, align 4, !tbaa !11
  %i.th = fmul reassoc nsz arcp contract afn float %i.tg, 2.500000e-01
  %i.ti = getelementptr [4 x i8], ptr %gep438, i64 %indvars.iv.next352.2
  store float %i.th, ptr %i.ti, align 4, !tbaa !11
  %indvars.iv.next352.3 = add nuw nsw i64 %indvars.iv351, 4 ; 2 uses
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next352.3
  %i.tk = load float, ptr %i.tj, align 4, !tbaa !11
  %i.tl = fmul reassoc nsz arcp contract afn float %i.tk, 2.500000e-01
  %i.tm = getelementptr [4 x i8], ptr %gep438, i64 %indvars.iv.next352.3
  store float %i.tl, ptr %i.tm, align 4, !tbaa !11
  %indvars.iv.next352.4 = add nuw nsw i64 %indvars.iv351, 5 ; 2 uses
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next352.4
  %i.to = load float, ptr %i.tn, align 4, !tbaa !11
  %i.tp = fmul reassoc nsz arcp contract afn float %i.to, 2.500000e-01
  %i.tq = getelementptr [4 x i8], ptr %gep438, i64 %indvars.iv.next352.4
  store float %i.tp, ptr %i.tq, align 4, !tbaa !11
  %indvars.iv.next352.5 = add nuw nsw i64 %indvars.iv351, 6 ; 2 uses
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next352.5
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !11
  %i.tt = fmul reassoc nsz arcp contract afn float %i.ts, 2.500000e-01
  %i.tu = getelementptr [4 x i8], ptr %gep438, i64 %indvars.iv.next352.5
  store float %i.tt, ptr %i.tu, align 4, !tbaa !11
  %indvars.iv.next352.6 = add nuw nsw i64 %indvars.iv351, 7 ; 2 uses
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next352.6
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !11
  %i.tx = fmul reassoc nsz arcp contract afn float %i.tw, 2.500000e-01
  %i.ty = getelementptr [4 x i8], ptr %gep438, i64 %indvars.iv.next352.6
  store float %i.tx, ptr %i.ty, align 4, !tbaa !11
  %indvars.iv.next352.7 = add nuw nsw i64 %indvars.iv351, 8 ; 2 uses
  %exitcond355.not.7 = icmp eq i64 %indvars.iv.next352.7, %wide.trip.count354
  br i1 %exitcond355.not.7, label %._crit_edge, label %vec.epilog.scalar.ph736, !llvm.loop !155

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph736.prol.loopexit, %vec.epilog.scalar.ph736, %middle.block732, %vec.epilog.middle.block745, %_ZN6LibRaw13hat_transformEPfS0_iii.exit
  %indvars.iv.next357 = add nuw nsw i64 %indvars.iv356, 1 ; 2 uses
  %exitcond360.not = icmp eq i64 %indvars.iv.next357, %wide.trip.count359
  br i1 %exitcond360.not, label %.preheader296, label %iter.check914, !llvm.loop !156

iter.check701:                                    ; preds = %.lr.ph318, %._crit_edge316
  %indvars.iv366 = phi i64 [ 0, %.lr.ph318 ], [ %indvars.iv.next367, %._crit_edge316 ] ; 7 uses
  %i.tz = mul nsw i64 %indvars.iv366, -4          ; 3 uses
  %i.ua = shl nuw nsw i64 %indvars.iv366, 2       ; 6 uses
  %scevgep537 = getelementptr i8, ptr %i.hl, i64 %i.ua
  %scevgep539 = getelementptr i8, ptr %i.hm, i64 %i.ua
  %scevgep540 = getelementptr i8, ptr %i.hn, i64 %i.ua
  %scevgep542 = getelementptr i8, ptr %i.ho, i64 %i.ua
  %scevgep543 = getelementptr i8, ptr %i.hq, i64 %i.ua
  %scevgep545 = getelementptr i8, ptr %i.hs, i64 %i.ua
  %i.ub = trunc i64 %indvars.iv366 to i32
  %i.uc = add i32 %i.ev, %i.ub
  %i.ud = sext i32 %i.uc to i64
  %i.ue = shl nsw i64 %i.ud, 2
  %i.uf = trunc i64 %indvars.iv366 to i32
  %i.ug = add i32 %i.ev, %i.uf                    ; 2 uses
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvars.iv366 ; 39 uses
  %or.cond967.not = xor i1 %or.cond967, true
  %brmerge1028 = select i1 %or.cond967.not, i1 true, i1 %conflict.rdx672
  br i1 %brmerge1028, label %.lr.ph.i277.preheader, label %vector.main.loop.iter.check675

.lr.ph.i277.preheader:                            ; preds = %iter.check701
  br i1 %i.ht, label %.lr.ph.i277.epil.preheader, label %.lr.ph.i277

vector.main.loop.iter.check675:                   ; preds = %iter.check701
  br i1 %min.iters.check676, label %vec.epilog.ph705, label %vector.ph677

vector.ph677:                                     ; preds = %vector.main.loop.iter.check675
  %invariant.gep1012 = getelementptr [4 x i8], ptr %i.uh, i64 %i.go
  br label %vector.body679

vector.body679:                                   ; preds = %vector.body679, %vector.ph677
  %index680 = phi i64 [ 0, %vector.ph677 ], [ %index.next697, %vector.body679 ] ; 5 uses
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %index680 ; 4 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 32
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ui, i64 64
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ui, i64 96
  %wide.load681 = load <8 x float>, ptr %i.ui, align 4, !tbaa !11, !alias.scope !157
  %wide.load682 = load <8 x float>, ptr %i.uj, align 4, !tbaa !11, !alias.scope !157
  %wide.load683 = load <8 x float>, ptr %i.uk, align 4, !tbaa !11, !alias.scope !157
  %wide.load684 = load <8 x float>, ptr %i.ul, align 4, !tbaa !11, !alias.scope !157
  %i.um = fmul reassoc nsz arcp contract afn <8 x float> %wide.load681, splat (float 2.000000e+00)
  %i.un = fmul reassoc nsz arcp contract afn <8 x float> %wide.load682, splat (float 2.000000e+00)
  %i.uo = fmul reassoc nsz arcp contract afn <8 x float> %wide.load683, splat (float 2.000000e+00)
  %i.up = fmul reassoc nsz arcp contract afn <8 x float> %wide.load684, splat (float 2.000000e+00)
  %i.uq = sub nsw i64 %i.go, %index680
  %i.ur = getelementptr inbounds [4 x i8], ptr %i.uh, i64 %i.uq ; 4 uses
  %i.us = getelementptr inbounds i8, ptr %i.ur, i64 -28
  %i.ut = getelementptr inbounds i8, ptr %i.ur, i64 -60
  %i.uu = getelementptr inbounds i8, ptr %i.ur, i64 -92
end_hunk_1
begin_hunk_2_@_ZN6LibRaw15wavelet_denoiseEv:bb.a
  br label %.preheader53.i259

.preheader53.i259:                                ; preds = %vector.body679, %vec.epilog.vector.body707, %.lr.ph.i277.epil.preheader, %.preheader53.i259.loopexit.unr-lcssa
  br i1 %i.gq, label %iter.check630, label %.preheader.i260

iter.check630:                                    ; preds = %.preheader53.i259
  br i1 %or.cond968, label %vector.memcheck604, label %.lr.ph56.i270.preheader

vector.memcheck604:                               ; preds = %iter.check630
  %.reass1017 = add i64 %i.tz, %invariant.op1016
  %diff.check605 = icmp ult i64 %.reass1017, 63
  %.reass1019 = add i64 %i.tz, %invariant.op1018
  %diff.check606 = icmp ult i64 %.reass1019, 63
  %conflict.rdx607 = or i1 %diff.check605, %diff.check606
  %.reass1021 = add i64 %i.tz, %invariant.op1020
  %diff.check608 = icmp ult i64 %.reass1021, 63
  %conflict.rdx609 = or i1 %conflict.rdx607, %diff.check608
  br i1 %conflict.rdx609, label %.lr.ph56.i270.preheader, label %vector.main.loop.iter.check612

vector.main.loop.iter.check612:                   ; preds = %vector.memcheck604
  br i1 %min.iters.check613, label %vec.epilog.ph634, label %vector.ph614

vector.ph614:                                     ; preds = %vector.main.loop.iter.check612
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %i.gr
  br label %vector.body616

vector.body616:                                   ; preds = %vector.body616, %vector.ph614
  %index617 = phi i64 [ 0, %vector.ph614 ], [ %index.next624, %vector.body616 ] ; 4 uses
  %i.wl = add nuw i64 %index617, %i.go            ; 2 uses
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %i.wl ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 32
  %wide.load618 = load <8 x float>, ptr %i.wm, align 4, !tbaa !11
  %wide.load619 = load <8 x float>, ptr %i.wn, align 4, !tbaa !11
  %i.wo = fmul reassoc nsz arcp contract afn <8 x float> %wide.load618, splat (float 2.000000e+00)
  %i.wp = fmul reassoc nsz arcp contract afn <8 x float> %wide.load619, splat (float 2.000000e+00)
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %index617 ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 32
  %wide.load620 = load <8 x float>, ptr %i.wq, align 4, !tbaa !11
  %wide.load621 = load <8 x float>, ptr %i.wr, align 4, !tbaa !11
  %i.ws = fadd reassoc nsz arcp contract afn <8 x float> %i.wo, %wide.load620
  %i.wt = fadd reassoc nsz arcp contract afn <8 x float> %i.wp, %wide.load621
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %index617 ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 32
  %wide.load622 = load <8 x float>, ptr %i.wu, align 4, !tbaa !11
  %wide.load623 = load <8 x float>, ptr %i.wv, align 4, !tbaa !11
  %i.ww = fadd reassoc nsz arcp contract afn <8 x float> %i.ws, %wide.load622
  %i.wx = fadd reassoc nsz arcp contract afn <8 x float> %i.wt, %wide.load623
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.wl ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 32
  store <8 x float> %i.ww, ptr %i.wy, align 4, !tbaa !11
  store <8 x float> %i.wx, ptr %i.wz, align 4, !tbaa !11
  %index.next624 = add nuw i64 %index617, 16      ; 2 uses
  %i.xa = icmp eq i64 %index.next624, %n.vec615
  br i1 %i.xa, label %middle.block625, label %vector.body616, !llvm.loop !169

middle.block625:                                  ; preds = %vector.body616
  br i1 %cmp.n626, label %.preheader.loopexit.i275, label %vec.epilog.iter.check632

vec.epilog.iter.check632:                         ; preds = %middle.block625
  br i1 %min.epilog.iters.check633, label %.lr.ph56.i270.preheader, label %vec.epilog.ph634, !prof !28

vec.epilog.ph634:                                 ; preds = %vector.main.loop.iter.check612, %vec.epilog.iter.check632
  %vec.epilog.resume.val627 = phi i64 [ %n.vec615, %vec.epilog.iter.check632 ], [ 0, %vector.main.loop.iter.check612 ]
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %i.gr
  br label %vec.epilog.vector.body636

vec.epilog.vector.body636:                        ; preds = %vec.epilog.vector.body636, %vec.epilog.ph634
  %index637 = phi i64 [ %vec.epilog.resume.val627, %vec.epilog.ph634 ], [ %index.next641, %vec.epilog.vector.body636 ] ; 4 uses
  %i.xc = add nuw i64 %index637, %i.go            ; 2 uses
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %i.xc
  %wide.load638 = load <4 x float>, ptr %i.xd, align 4, !tbaa !11
  %i.xe = fmul reassoc nsz arcp contract afn <4 x float> %wide.load638, splat (float 2.000000e+00)
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %index637
  %wide.load639 = load <4 x float>, ptr %i.xf, align 4, !tbaa !11
  %i.xg = fadd reassoc nsz arcp contract afn <4 x float> %i.xe, %wide.load639
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.xb, i64 %index637
  %wide.load640 = load <4 x float>, ptr %i.xh, align 4, !tbaa !11
  %i.xi = fadd reassoc nsz arcp contract afn <4 x float> %i.xg, %wide.load640
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.xc
  store <4 x float> %i.xi, ptr %i.xj, align 4, !tbaa !11
  %index.next641 = add nuw i64 %index637, 4       ; 2 uses
  %i.xk = icmp eq i64 %index.next641, %n.vec635
  br i1 %i.xk, label %vec.epilog.middle.block642, label %vec.epilog.vector.body636, !llvm.loop !170

vec.epilog.middle.block642:                       ; preds = %vec.epilog.vector.body636
  br i1 %cmp.n643, label %.preheader.loopexit.i275, label %.lr.ph56.i270.preheader

.lr.ph56.i270.preheader:                          ; preds = %vector.memcheck604, %iter.check630, %vec.epilog.iter.check632, %vec.epilog.middle.block642
  %indvars.iv64.i271.ph = phi i64 [ %i.go, %iter.check630 ], [ %i.go, %vector.memcheck604 ], [ %i.hv, %vec.epilog.iter.check632 ], [ %i.hx, %vec.epilog.middle.block642 ]
  %indvars.iv62.i272.ph = phi i64 [ %i.gr, %iter.check630 ], [ %i.gr, %vector.memcheck604 ], [ %i.hw, %vec.epilog.iter.check632 ], [ %i.hy, %vec.epilog.middle.block642 ]
  br label %.lr.ph56.i270

.lr.ph.i277:                                      ; preds = %.lr.ph.i277.preheader, %.lr.ph.i277
  %indvars.iv.i278 = phi i64 [ %indvars.iv.next.i279.1, %.lr.ph.i277 ], [ 0, %.lr.ph.i277.preheader ] ; 6 uses
  %niter990 = phi i64 [ %niter990.next.1, %.lr.ph.i277 ], [ 0, %.lr.ph.i277.preheader ]
  %i.xl = mul nuw nsw i64 %indvars.iv.i278, %i.cw
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %i.xl
  %i.xn = load float, ptr %i.xm, align 4, !tbaa !11
  %i.xo = fmul reassoc nsz arcp contract afn float %i.xn, 2.000000e+00
  %i.xp = sub nsw i64 %i.go, %indvars.iv.i278
  %i.xq = mul nsw i64 %i.xp, %i.cw
  %i.xr = getelementptr inbounds [4 x i8], ptr %i.uh, i64 %i.xq
  %i.xs = load float, ptr %i.xr, align 4, !tbaa !11
  %i.xt = fadd reassoc nsz arcp contract afn float %i.xo, %i.xs
  %i.xu = add nuw nsw i64 %indvars.iv.i278, %i.go
  %i.xv = mul nuw nsw i64 %i.xu, %i.cw
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %i.xv
  %i.xx = load float, ptr %i.xw, align 4, !tbaa !11
  %i.xy = fadd reassoc nsz arcp contract afn float %i.xt, %i.xx
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i278
  store float %i.xy, ptr %i.xz, align 4, !tbaa !11
  %indvars.iv.next.i279 = or disjoint i64 %indvars.iv.i278, 1 ; 4 uses
  %i.ya = mul nuw nsw i64 %indvars.iv.next.i279, %i.cw
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %i.ya
  %i.yc = load float, ptr %i.yb, align 4, !tbaa !11
  %i.yd = fmul reassoc nsz arcp contract afn float %i.yc, 2.000000e+00
  %i.ye = sub nsw i64 %i.go, %indvars.iv.next.i279
  %i.yf = mul nsw i64 %i.ye, %i.cw
  %i.yg = getelementptr inbounds [4 x i8], ptr %i.uh, i64 %i.yf
  %i.yh = load float, ptr %i.yg, align 4, !tbaa !11
  %i.yi = fadd reassoc nsz arcp contract afn float %i.yd, %i.yh
  %i.yj = add nuw nsw i64 %indvars.iv.next.i279, %i.go
  %i.yk = mul nuw nsw i64 %i.yj, %i.cw
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %i.yk
  %i.ym = load float, ptr %i.yl, align 4, !tbaa !11
  %i.yn = fadd reassoc nsz arcp contract afn float %i.yi, %i.ym
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next.i279
  store float %i.yn, ptr %i.yo, align 4, !tbaa !11
  %indvars.iv.next.i279.1 = add nuw nsw i64 %indvars.iv.i278, 2 ; 2 uses
  %niter990.next.1 = add i64 %niter990, 2         ; 2 uses
  %niter990.ncmp.1 = icmp eq i64 %niter990.next.1, %unroll_iter989
  br i1 %niter990.ncmp.1, label %.preheader53.i259.loopexit.unr-lcssa, label %.lr.ph.i277, !llvm.loop !171

.preheader.loopexit.i275:                         ; preds = %.lr.ph56.i270, %vec.epilog.middle.block642, %middle.block625
  %indvars.iv.next65.i273.lcssa = phi i64 [ %i.hx, %vec.epilog.middle.block642 ], [ %i.hv, %middle.block625 ], [ %indvars.iv.next65.i273, %.lr.ph56.i270 ]
  %i.yp = trunc nsw i64 %indvars.iv.next65.i273.lcssa to i32
  br label %.preheader.i260

.preheader.i260:                                  ; preds = %.preheader.loopexit.i275, %.preheader53.i259
  %.1.lcssa.i261 = phi i32 [ %i.gn, %.preheader53.i259 ], [ %i.yp, %.preheader.loopexit.i275 ] ; 4 uses
  %i.yq = icmp slt i32 %.1.lcssa.i261, %i.ct
  br i1 %i.yq, label %iter.check586, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit281

iter.check586:                                    ; preds = %.preheader.i260
  %i.yr = sext i32 %.1.lcssa.i261 to i64          ; 11 uses
  %i.ys = sub nsw i64 %wide.trip.count359, %i.yr  ; 7 uses
  %min.iters.check559 = icmp ult i64 %i.ys, 8
  br i1 %min.iters.check559, label %vec.epilog.scalar.ph587.preheader, label %vector.scevcheck531

vector.scevcheck531:                              ; preds = %iter.check586
  %i.yt = xor i64 %i.yr, -1
  %i.yu = add nsw i64 %i.yt, %wide.trip.count359  ; 2 uses
  %i.yv = add i32 %i.gn, %.1.lcssa.i261
  %i.yw = sub i32 %i.dd, %i.yv                    ; 2 uses
  %i.yx = trunc i64 %i.yu to i32
  %i.yy = sub i32 %i.yw, %i.yx
  %i.yz = icmp sgt i32 %i.yy, %i.yw
  %i.za = icmp ugt i64 %i.yu, 4294967295
  %i.zb = or i1 %i.yz, %i.za
  %i.zc = or i1 %ident.check532, %i.zb
  br i1 %i.zc, label %vec.epilog.scalar.ph587.preheader, label %vector.memcheck533

vector.memcheck533:                               ; preds = %vector.scevcheck531
  %i.zd = shl nsw i64 %i.yr, 2                    ; 3 uses
  %scevgep535 = getelementptr i8, ptr %scevgep534, i64 %i.zd ; 3 uses
  %scevgep538 = getelementptr i8, ptr %scevgep537, i64 %i.zd
  %scevgep541 = getelementptr i8, ptr %scevgep540, i64 %i.zd
  %i.ze = add i32 %i.gn, %.1.lcssa.i261
  %i.zf = sub i32 %i.dh, %i.ze
  %i.zg = sext i32 %i.zf to i64                   ; 2 uses
  %i.zh = add nsw i64 %i.yr, %i.zg
  %i.zi = shl nsw i64 %i.zh, 2
  %scevgep544 = getelementptr i8, ptr %scevgep543, i64 %i.zi
  %i.zj = shl nsw i64 %i.zg, 2
  %scevgep546 = getelementptr i8, ptr %scevgep545, i64 %i.zj
  %bound0547 = icmp ult ptr %scevgep535, %scevgep539
  %bound1548 = icmp ult ptr %scevgep538, %scevgep536
  %found.conflict549 = and i1 %bound0547, %bound1548
  %bound0550 = icmp ult ptr %scevgep535, %scevgep542
  %bound1551 = icmp ult ptr %scevgep541, %scevgep536
  %found.conflict552 = and i1 %bound0550, %bound1551
  %conflict.rdx553 = or i1 %found.conflict549, %found.conflict552
  %bound0554 = icmp ult ptr %scevgep535, %scevgep546
  %bound1555 = icmp ult ptr %scevgep544, %scevgep536
  %found.conflict556 = and i1 %bound0554, %bound1555
  %conflict.rdx557 = or i1 %conflict.rdx553, %found.conflict556
  br i1 %conflict.rdx557, label %vec.epilog.scalar.ph587.preheader, label %vector.main.loop.iter.check560

vector.main.loop.iter.check560:                   ; preds = %vector.memcheck533
  %min.iters.check561 = icmp ult i64 %i.ys, 32
  br i1 %min.iters.check561, label %vec.epilog.ph590, label %vector.ph562

vector.ph562:                                     ; preds = %vector.main.loop.iter.check560
  %i.zk = and i64 %i.ys, 24
  %n.vec563 = and i64 %i.ys, -32                  ; 4 uses
  %i.zl = add nsw i64 %n.vec563, %i.yr
  br label %vector.body564

vector.body564:                                   ; preds = %vector.body564, %vector.ph562
  %index565 = phi i64 [ 0, %vector.ph562 ], [ %index.next581, %vector.body564 ] ; 2 uses
  %i.zm = add nuw i64 %index565, %i.yr            ; 4 uses
  %i.zn = getelementptr inbounds [4 x i8], ptr %i.uh, i64 %i.zm ; 4 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 32
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zn, i64 64
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zn, i64 96
  %wide.load566 = load <8 x float>, ptr %i.zn, align 4, !tbaa !11, !alias.scope !172
  %wide.load567 = load <8 x float>, ptr %i.zo, align 4, !tbaa !11, !alias.scope !172
  %wide.load568 = load <8 x float>, ptr %i.zp, align 4, !tbaa !11, !alias.scope !172
  %wide.load569 = load <8 x float>, ptr %i.zq, align 4, !tbaa !11, !alias.scope !172
  %i.zr = fmul reassoc nsz arcp contract afn <8 x float> %wide.load566, splat (float 2.000000e+00)
  %i.zs = fmul reassoc nsz arcp contract afn <8 x float> %wide.load567, splat (float 2.000000e+00)
  %i.zt = fmul reassoc nsz arcp contract afn <8 x float> %wide.load568, splat (float 2.000000e+00)
  %i.zu = fmul reassoc nsz arcp contract afn <8 x float> %wide.load569, splat (float 2.000000e+00)
  %i.zv = sub nsw i64 %i.zm, %i.go
  %i.zw = getelementptr inbounds [4 x i8], ptr %i.uh, i64 %i.zv ; 4 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 32
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zw, i64 64
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zw, i64 96
  %wide.load570 = load <8 x float>, ptr %i.zw, align 4, !tbaa !11, !alias.scope !175
  %wide.load571 = load <8 x float>, ptr %i.zx, align 4, !tbaa !11, !alias.scope !175
  %wide.load572 = load <8 x float>, ptr %i.zy, align 4, !tbaa !11, !alias.scope !175
  %wide.load573 = load <8 x float>, ptr %i.zz, align 4, !tbaa !11, !alias.scope !175
  %i.aaa = fadd reassoc nsz arcp contract afn <8 x float> %i.zr, %wide.load570
  %i.aab = fadd reassoc nsz arcp contract afn <8 x float> %i.zs, %wide.load571
  %i.aac = fadd reassoc nsz arcp contract afn <8 x float> %i.zt, %wide.load572
  %i.aad = fadd reassoc nsz arcp contract afn <8 x float> %i.zu, %wide.load573
  %i.aae = trunc nsw i64 %i.zm to i32
  %i.aaf = add i32 %i.gn, %i.aae
  %i.aag = sub i32 %invariant.op, %i.aaf
  %i.aah = sext i32 %i.aag to i64
  %i.aai = getelementptr inbounds [4 x i8], ptr %i.uh, i64 %i.aah ; 4 uses
  %i.aaj = getelementptr inbounds i8, ptr %i.aai, i64 -28
  %i.aak = getelementptr inbounds i8, ptr %i.aai, i64 -60
  %i.aal = getelementptr inbounds i8, ptr %i.aai, i64 -92
  %i.aam = getelementptr inbounds i8, ptr %i.aai, i64 -124
  %wide.load574 = load <8 x float>, ptr %i.aaj, align 4, !tbaa !11, !alias.scope !177
  %wide.load575 = load <8 x float>, ptr %i.aak, align 4, !tbaa !11, !alias.scope !177
  %wide.load576 = load <8 x float>, ptr %i.aal, align 4, !tbaa !11, !alias.scope !177
  %wide.load577 = load <8 x float>, ptr %i.aam, align 4, !tbaa !11, !alias.scope !177
  %reverse = shufflevector <8 x float> %wide.load574, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse578 = shufflevector <8 x float> %wide.load575, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse579 = shufflevector <8 x float> %wide.load576, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse580 = shufflevector <8 x float> %wide.load577, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.aan = fadd reassoc nsz arcp contract afn <8 x float> %i.aaa, %reverse
  %i.aao = fadd reassoc nsz arcp contract afn <8 x float> %i.aab, %reverse578
  %i.aap = fadd reassoc nsz arcp contract afn <8 x float> %i.aac, %reverse579
  %i.aaq = fadd reassoc nsz arcp contract afn <8 x float> %i.aad, %reverse580
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.zm ; 4 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 32
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aar, i64 64
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aar, i64 96
  store <8 x float> %i.aan, ptr %i.aar, align 4, !tbaa !11, !alias.scope !179, !noalias !181
  store <8 x float> %i.aao, ptr %i.aas, align 4, !tbaa !11, !alias.scope !179, !noalias !181
  store <8 x float> %i.aap, ptr %i.aat, align 4, !tbaa !11, !alias.scope !179, !noalias !181
  store <8 x float> %i.aaq, ptr %i.aau, align 4, !tbaa !11, !alias.scope !179, !noalias !181
  %index.next581 = add nuw i64 %index565, 32      ; 2 uses
  %i.aav = icmp eq i64 %index.next581, %n.vec563
  br i1 %i.aav, label %middle.block582, label %vector.body564, !llvm.loop !182

middle.block582:                                  ; preds = %vector.body564
  %cmp.n583 = icmp eq i64 %i.ys, %n.vec563
  br i1 %cmp.n583, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit281, label %vec.epilog.iter.check588

vec.epilog.iter.check588:                         ; preds = %middle.block582
  %min.epilog.iters.check589 = icmp eq i64 %i.zk, 0
  br i1 %min.epilog.iters.check589, label %vec.epilog.scalar.ph587.preheader, label %vec.epilog.ph590, !prof !25

vec.epilog.ph590:                                 ; preds = %vector.main.loop.iter.check560, %vec.epilog.iter.check588
  %vec.epilog.resume.val584 = phi i64 [ %n.vec563, %vec.epilog.iter.check588 ], [ 0, %vector.main.loop.iter.check560 ]
  %n.vec591 = and i64 %i.ys, -8                   ; 3 uses
  %i.aaw = add nsw i64 %n.vec591, %i.yr
  br label %vec.epilog.vector.body592

vec.epilog.vector.body592:                        ; preds = %vec.epilog.vector.body592, %vec.epilog.ph590
  %index593 = phi i64 [ %vec.epilog.resume.val584, %vec.epilog.ph590 ], [ %index.next598, %vec.epilog.vector.body592 ] ; 2 uses
  %i.aax = add nuw i64 %index593, %i.yr           ; 4 uses
  %i.aay = getelementptr inbounds [4 x i8], ptr %i.uh, i64 %i.aax
  %wide.load594 = load <8 x float>, ptr %i.aay, align 4, !tbaa !11, !alias.scope !172
  %i.aaz = fmul reassoc nsz arcp contract afn <8 x float> %wide.load594, splat (float 2.000000e+00)
  %i.aba = sub nsw i64 %i.aax, %i.go
  %i.abb = getelementptr inbounds [4 x i8], ptr %i.uh, i64 %i.aba
  %wide.load595 = load <8 x float>, ptr %i.abb, align 4, !tbaa !11, !alias.scope !175
  %i.abc = fadd reassoc nsz arcp contract afn <8 x float> %i.aaz, %wide.load595
  %i.abd = trunc nsw i64 %i.aax to i32
  %i.abe = add i32 %i.gn, %i.abd
  %i.abf = sub i32 %invariant.op, %i.abe
  %i.abg = sext i32 %i.abf to i64
  %i.abh = getelementptr inbounds [4 x i8], ptr %i.uh, i64 %i.abg
  %i.abi = getelementptr inbounds i8, ptr %i.abh, i64 -28
  %wide.load596 = load <8 x float>, ptr %i.abi, align 4, !tbaa !11, !alias.scope !177
  %reverse597 = shufflevector <8 x float> %wide.load596, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.abj = fadd reassoc nsz arcp contract afn <8 x float> %i.abc, %reverse597
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.aax
  store <8 x float> %i.abj, ptr %i.abk, align 4, !tbaa !11, !alias.scope !179, !noalias !181
  %index.next598 = add nuw i64 %index593, 8       ; 2 uses
  %i.abl = icmp eq i64 %index.next598, %n.vec591
  br i1 %i.abl, label %vec.epilog.middle.block599, label %vec.epilog.vector.body592, !llvm.loop !183

vec.epilog.middle.block599:                       ; preds = %vec.epilog.vector.body592
  %cmp.n600 = icmp eq i64 %i.ys, %n.vec591
  br i1 %cmp.n600, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit281, label %vec.epilog.scalar.ph587.preheader

vec.epilog.scalar.ph587.preheader:                ; preds = %vector.memcheck533, %vector.scevcheck531, %iter.check586, %vec.epilog.iter.check588, %vec.epilog.middle.block599
  %indvars.iv69.i265.ph = phi i64 [ %i.yr, %iter.check586 ], [ %i.yr, %vector.scevcheck531 ], [ %i.yr, %vector.memcheck533 ], [ %i.zl, %vec.epilog.iter.check588 ], [ %i.aaw, %vec.epilog.middle.block599 ] ; 8 uses
  %i.abm = sub i64 %wide.trip.count359, %indvars.iv69.i265.ph
  %xtraiter991 = and i64 %i.abm, 1
  %lcmp.mod992.not = icmp eq i64 %xtraiter991, 0
  br i1 %lcmp.mod992.not, label %vec.epilog.scalar.ph587.prol.loopexit, label %vec.epilog.scalar.ph587.prol

vec.epilog.scalar.ph587.prol:                     ; preds = %vec.epilog.scalar.ph587.preheader
  %i.abn = mul nsw i64 %indvars.iv69.i265.ph, %i.cw
  %i.abo = getelementptr inbounds [4 x i8], ptr %i.uh, i64 %i.abn
  %i.abp = load float, ptr %i.abo, align 4, !tbaa !11
  %i.abq = fmul reassoc nsz arcp contract afn float %i.abp, 2.000000e+00
  %i.abr = sub nsw i64 %indvars.iv69.i265.ph, %i.go
  %i.abs = mul nsw i64 %i.abr, %i.cw
  %i.abt = getelementptr inbounds [4 x i8], ptr %i.uh, i64 %i.abs
  %i.abu = load float, ptr %i.abt, align 4, !tbaa !11
  %i.abv = fadd reassoc nsz arcp contract afn float %i.abq, %i.abu
  %i.abw = trunc nsw i64 %indvars.iv69.i265.ph to i32
  %i.abx = add i32 %i.gn, %i.abw
  %i.aby = sub i32 %invariant.op, %i.abx
  %i.abz = mul nsw i32 %i.aby, %i.cv
  %i.aca = sext i32 %i.abz to i64
  %i.acb = getelementptr inbounds [4 x i8], ptr %i.uh, i64 %i.aca
  %i.acc = load float, ptr %i.acb, align 4, !tbaa !11
  %i.acd = fadd reassoc nsz arcp contract afn float %i.abv, %i.acc
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv69.i265.ph
  store float %i.acd, ptr %i.ace, align 4, !tbaa !11
  %indvars.iv.next70.i266.prol = add nuw nsw i64 %indvars.iv69.i265.ph, 1
  br label %vec.epilog.scalar.ph587.prol.loopexit

vec.epilog.scalar.ph587.prol.loopexit:            ; preds = %vec.epilog.scalar.ph587.prol, %vec.epilog.scalar.ph587.preheader
  %indvars.iv69.i265.unr = phi i64 [ %indvars.iv69.i265.ph, %vec.epilog.scalar.ph587.preheader ], [ %indvars.iv.next70.i266.prol, %vec.epilog.scalar.ph587.prol ]
  %i.acf = icmp eq i64 %indvars.iv69.i265.ph, %i.dw
  br i1 %i.acf, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit281, label %vec.epilog.scalar.ph587

.lr.ph56.i270:                                    ; preds = %.lr.ph56.i270.preheader, %.lr.ph56.i270
  %indvars.iv64.i271 = phi i64 [ %indvars.iv.next65.i273, %.lr.ph56.i270 ], [ %indvars.iv64.i271.ph, %.lr.ph56.i270.preheader ] ; 4 uses
  %indvars.iv62.i272 = phi i64 [ %indvars.iv.next63.i274, %.lr.ph56.i270 ], [ %indvars.iv62.i272.ph, %.lr.ph56.i270.preheader ] ; 2 uses
  %i.acg = mul nuw nsw i64 %indvars.iv64.i271, %i.cw
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %i.acg
  %i.aci = load float, ptr %i.ach, align 4, !tbaa !11
  %i.acj = fmul reassoc nsz arcp contract afn float %i.aci, 2.000000e+00
  %i.ack = sub nuw nsw i64 %indvars.iv64.i271, %i.go
  %i.acl = mul nuw nsw i64 %i.ack, %i.cw
  %i.acm = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %i.acl
  %i.acn = load float, ptr %i.acm, align 4, !tbaa !11
  %i.aco = fadd reassoc nsz arcp contract afn float %i.acj, %i.acn
  %i.acp = mul nuw nsw i64 %indvars.iv62.i272, %i.cw
  %i.acq = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %i.acp
  %i.acr = load float, ptr %i.acq, align 4, !tbaa !11
  %i.acs = fadd reassoc nsz arcp contract afn float %i.aco, %i.acr
  %i.act = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv64.i271
  store float %i.acs, ptr %i.act, align 4, !tbaa !11
  %indvars.iv.next65.i273 = add nuw nsw i64 %indvars.iv64.i271, 1 ; 3 uses
  %i.acu = icmp slt i64 %indvars.iv.next65.i273, %invariant.op.i269
  %indvars.iv.next63.i274 = add nuw nsw i64 %indvars.iv62.i272, 1
  br i1 %i.acu, label %.lr.ph56.i270, label %.preheader.loopexit.i275, !llvm.loop !184

vec.epilog.scalar.ph587:                          ; preds = %vec.epilog.scalar.ph587.prol.loopexit, %vec.epilog.scalar.ph587
  %indvars.iv69.i265 = phi i64 [ %indvars.iv.next70.i266.1, %vec.epilog.scalar.ph587 ], [ %indvars.iv69.i265.unr, %vec.epilog.scalar.ph587.prol.loopexit ] ; 6 uses
  %i.acv = mul nsw i64 %indvars.iv69.i265, %i.cw
  %i.acw = getelementptr inbounds [4 x i8], ptr %i.uh, i64 %i.acv
  %i.acx = load float, ptr %i.acw, align 4, !tbaa !11
  %i.acy = fmul reassoc nsz arcp contract afn float %i.acx, 2.000000e+00
  %i.acz = sub nsw i64 %indvars.iv69.i265, %i.go
  %i.ada = mul nsw i64 %i.acz, %i.cw
  %i.adb = getelementptr inbounds [4 x i8], ptr %i.uh, i64 %i.ada
  %i.adc = load float, ptr %i.adb, align 4, !tbaa !11
  %i.add = fadd reassoc nsz arcp contract afn float %i.acy, %i.adc
  %i.ade = trunc nsw i64 %indvars.iv69.i265 to i32
  %i.adf = add i32 %i.gn, %i.ade
  %i.adg = sub i32 %invariant.op, %i.adf
  %i.adh = mul nsw i32 %i.adg, %i.cv
  %i.adi = sext i32 %i.adh to i64
  %i.adj = getelementptr inbounds [4 x i8], ptr %i.uh, i64 %i.adi
  %i.adk = load float, ptr %i.adj, align 4, !tbaa !11
  %i.adl = fadd reassoc nsz arcp contract afn float %i.add, %i.adk
  %i.adm = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv69.i265
  store float %i.adl, ptr %i.adm, align 4, !tbaa !11
  %indvars.iv.next70.i266 = add nuw nsw i64 %indvars.iv69.i265, 1 ; 4 uses
  %i.adn = mul nsw i64 %indvars.iv.next70.i266, %i.cw
  %i.ado = getelementptr inbounds [4 x i8], ptr %i.uh, i64 %i.adn
  %i.adp = load float, ptr %i.ado, align 4, !tbaa !11
  %i.adq = fmul reassoc nsz arcp contract afn float %i.adp, 2.000000e+00
  %i.adr = sub nsw i64 %indvars.iv.next70.i266, %i.go
  %i.ads = mul nsw i64 %i.adr, %i.cw
  %i.adt = getelementptr inbounds [4 x i8], ptr %i.uh, i64 %i.ads
  %i.adu = load float, ptr %i.adt, align 4, !tbaa !11
  %i.adv = fadd reassoc nsz arcp contract afn float %i.adq, %i.adu
  %i.adw = trunc nsw i64 %indvars.iv.next70.i266 to i32
  %i.adx = add i32 %i.gn, %i.adw
  %i.ady = sub i32 %invariant.op, %i.adx
  %i.adz = mul nsw i32 %i.ady, %i.cv
  %i.aea = sext i32 %i.adz to i64
  %i.aeb = getelementptr inbounds [4 x i8], ptr %i.uh, i64 %i.aea
  %i.aec = load float, ptr %i.aeb, align 4, !tbaa !11
  %i.aed = fadd reassoc nsz arcp contract afn float %i.adv, %i.aec
  %i.aee = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next70.i266
  store float %i.aed, ptr %i.aee, align 4, !tbaa !11
  %indvars.iv.next70.i266.1 = add nuw nsw i64 %indvars.iv69.i265, 2 ; 2 uses
  %exitcond73.not.i267.1 = icmp eq i64 %indvars.iv.next70.i266.1, %i.cx
  br i1 %exitcond73.not.i267.1, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit281, label %vec.epilog.scalar.ph587, !llvm.loop !185

_ZN6LibRaw13hat_transformEPfS0_iii.exit281:       ; preds = %vec.epilog.scalar.ph587.prol.loopexit, %vec.epilog.scalar.ph587, %middle.block582, %vec.epilog.middle.block599, %.preheader.i260
  br i1 %.not343, label %._crit_edge316, label %iter.check518

iter.check518:                                    ; preds = %_ZN6LibRaw13hat_transformEPfS0_iii.exit281
  %i.aef = trunc nuw nsw i64 %indvars.iv366 to i32
  %i.aeg = add i32 %i.ev, %i.aef                  ; 7 uses
  br i1 %min.iters.check503, label %vec.epilog.scalar.ph519.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check518
  %i.aeh = add i32 %i.ug, %i.dx
  %i.aei = icmp slt i32 %i.aeh, %i.ug
  %.reass1023 = or i1 %i.aei, %invariant.op1022
  %.reass1025 = add i64 %i.ue, %invariant.op1024
  %diff.check = icmp ult i64 %.reass1025, 127
  %or.cond969 = select i1 %.reass1023, i1 true, i1 %diff.check
  br i1 %or.cond969, label %vec.epilog.scalar.ph519.preheader, label %vector.main.loop.iter.check504

vector.main.loop.iter.check504:                   ; preds = %vector.scevcheck
  br i1 %min.iters.check505, label %vec.epilog.ph522, label %vector.body508

vector.body508:                                   ; preds = %vector.main.loop.iter.check504, %vector.body508
  %index509 = phi i64 [ %index.next514, %vector.body508 ], [ 0, %vector.main.loop.iter.check504 ] ; 3 uses
  %i.aej = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index509 ; 4 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aej, i64 32
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aej, i64 64
  %i.aem = getelementptr inbounds nuw i8, ptr %i.aej, i64 96
  %wide.load510 = load <8 x float>, ptr %i.aej, align 4, !tbaa !11
  %wide.load511 = load <8 x float>, ptr %i.aek, align 4, !tbaa !11
  %wide.load512 = load <8 x float>, ptr %i.ael, align 4, !tbaa !11
  %wide.load513 = load <8 x float>, ptr %i.aem, align 4, !tbaa !11
  %i.aen = fmul reassoc nsz arcp contract afn <8 x float> %wide.load510, splat (float 2.500000e-01)
  %i.aeo = fmul reassoc nsz arcp contract afn <8 x float> %wide.load511, splat (float 2.500000e-01)
  %i.aep = fmul reassoc nsz arcp contract afn <8 x float> %wide.load512, splat (float 2.500000e-01)
  %i.aeq = fmul reassoc nsz arcp contract afn <8 x float> %wide.load513, splat (float 2.500000e-01)
  %i.aer = trunc nuw nsw i64 %index509 to i32
  %i.aes = add i32 %i.aeg, %i.aer
  %i.aet = sext i32 %i.aes to i64
  %i.aeu = getelementptr inbounds [4 x i8], ptr %.0233, i64 %i.aet ; 4 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 32
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aeu, i64 64
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aeu, i64 96
  store <8 x float> %i.aen, ptr %i.aeu, align 4, !tbaa !11
  store <8 x float> %i.aeo, ptr %i.aev, align 4, !tbaa !11
  store <8 x float> %i.aep, ptr %i.aew, align 4, !tbaa !11
  store <8 x float> %i.aeq, ptr %i.aex, align 4, !tbaa !11
  %index.next514 = add nuw i64 %index509, 32      ; 2 uses
  %i.aey = icmp eq i64 %index.next514, %n.vec507
  br i1 %i.aey, label %middle.block515, label %vector.body508, !llvm.loop !186

middle.block515:                                  ; preds = %vector.body508
  br i1 %cmp.n516, label %._crit_edge316, label %vec.epilog.iter.check520

vec.epilog.iter.check520:                         ; preds = %middle.block515
  br i1 %min.epilog.iters.check521, label %vec.epilog.scalar.ph519.preheader, label %vec.epilog.ph522, !prof !117

vec.epilog.ph522:                                 ; preds = %vector.main.loop.iter.check504, %vec.epilog.iter.check520
  %vec.epilog.resume.val517 = phi i64 [ %n.vec507, %vec.epilog.iter.check520 ], [ 0, %vector.main.loop.iter.check504 ]
  br label %vec.epilog.vector.body524

vec.epilog.vector.body524:                        ; preds = %vec.epilog.vector.body524, %vec.epilog.ph522
  %index525 = phi i64 [ %vec.epilog.resume.val517, %vec.epilog.ph522 ], [ %index.next527, %vec.epilog.vector.body524 ] ; 3 uses
  %i.aez = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index525
  %wide.load526 = load <4 x float>, ptr %i.aez, align 4, !tbaa !11
  %i.afa = fmul reassoc nsz arcp contract afn <4 x float> %wide.load526, splat (float 2.500000e-01)
  %i.afb = trunc nuw nsw i64 %index525 to i32
  %i.afc = add i32 %i.aeg, %i.afb
  %i.afd = sext i32 %i.afc to i64
  %i.afe = getelementptr inbounds [4 x i8], ptr %.0233, i64 %i.afd
  store <4 x float> %i.afa, ptr %i.afe, align 4, !tbaa !11
  %index.next527 = add nuw i64 %index525, 4       ; 2 uses
  %i.aff = icmp eq i64 %index.next527, %n.vec523
  br i1 %i.aff, label %vec.epilog.middle.block528, label %vec.epilog.vector.body524, !llvm.loop !187

vec.epilog.middle.block528:                       ; preds = %vec.epilog.vector.body524
  br i1 %cmp.n529, label %._crit_edge316, label %vec.epilog.scalar.ph519.preheader

vec.epilog.scalar.ph519.preheader:                ; preds = %vector.scevcheck, %iter.check518, %vec.epilog.iter.check520, %vec.epilog.middle.block528
  %indvars.iv361.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %iter.check518 ], [ %n.vec507, %vec.epilog.iter.check520 ], [ %n.vec523, %vec.epilog.middle.block528 ] ; 3 uses
  br i1 %lcmp.mod995.not, label %vec.epilog.scalar.ph519.prol.loopexit, label %vec.epilog.scalar.ph519.prol

vec.epilog.scalar.ph519.prol:                     ; preds = %vec.epilog.scalar.ph519.preheader, %vec.epilog.scalar.ph519.prol
  %indvars.iv361.prol = phi i64 [ %indvars.iv.next362.prol, %vec.epilog.scalar.ph519.prol ], [ %indvars.iv361.ph, %vec.epilog.scalar.ph519.preheader ] ; 3 uses
  %prol.iter996 = phi i64 [ %prol.iter996.next, %vec.epilog.scalar.ph519.prol ], [ 0, %vec.epilog.scalar.ph519.preheader ]
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv361.prol
  %i.afh = load float, ptr %i.afg, align 4, !tbaa !11
  %i.afi = fmul reassoc nsz arcp contract afn float %i.afh, 2.500000e-01
  %i.afj = mul nuw nsw i64 %indvars.iv361.prol, %i.cz
  %i.afk = trunc nuw nsw i64 %i.afj to i32
  %i.afl = add i32 %i.aeg, %i.afk
  %i.afm = sext i32 %i.afl to i64
  %i.afn = getelementptr inbounds [4 x i8], ptr %.0233, i64 %i.afm
  store float %i.afi, ptr %i.afn, align 4, !tbaa !11
  %indvars.iv.next362.prol = add nuw nsw i64 %indvars.iv361.prol, 1 ; 2 uses
  %prol.iter996.next = add i64 %prol.iter996, 1   ; 2 uses
  %prol.iter996.cmp.not = icmp eq i64 %prol.iter996.next, %xtraiter994
  br i1 %prol.iter996.cmp.not, label %vec.epilog.scalar.ph519.prol.loopexit, label %vec.epilog.scalar.ph519.prol, !llvm.loop !188

vec.epilog.scalar.ph519.prol.loopexit:            ; preds = %vec.epilog.scalar.ph519.prol, %vec.epilog.scalar.ph519.preheader
  %indvars.iv361.unr = phi i64 [ %indvars.iv361.ph, %vec.epilog.scalar.ph519.preheader ], [ %indvars.iv.next362.prol, %vec.epilog.scalar.ph519.prol ]
  %i.afo = sub nsw i64 %indvars.iv361.ph, %wide.trip.count359
  %i.afp = icmp ugt i64 %i.afo, -4
  br i1 %i.afp, label %._crit_edge316, label %vec.epilog.scalar.ph519

vec.epilog.scalar.ph519:                          ; preds = %vec.epilog.scalar.ph519.prol.loopexit, %vec.epilog.scalar.ph519
  %indvars.iv361 = phi i64 [ %indvars.iv.next362.3, %vec.epilog.scalar.ph519 ], [ %indvars.iv361.unr, %vec.epilog.scalar.ph519.prol.loopexit ] ; 6 uses
  %i.afq = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv361
  %i.afr = load float, ptr %i.afq, align 4, !tbaa !11
  %i.afs = fmul reassoc nsz arcp contract afn float %i.afr, 2.500000e-01
  %i.aft = mul nuw nsw i64 %indvars.iv361, %i.cz
  %i.afu = trunc nuw nsw i64 %i.aft to i32
  %i.afv = add i32 %i.aeg, %i.afu
  %i.afw = sext i32 %i.afv to i64
  %i.afx = getelementptr inbounds [4 x i8], ptr %.0233, i64 %i.afw
  store float %i.afs, ptr %i.afx, align 4, !tbaa !11
  %indvars.iv.next362 = add nuw nsw i64 %indvars.iv361, 1 ; 2 uses
  %i.afy = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next362
  %i.afz = load float, ptr %i.afy, align 4, !tbaa !11
  %i.aga = fmul reassoc nsz arcp contract afn float %i.afz, 2.500000e-01
  %i.agb = mul nuw nsw i64 %indvars.iv.next362, %i.cz
  %i.agc = trunc nuw nsw i64 %i.agb to i32
  %i.agd = add i32 %i.aeg, %i.agc
  %i.age = sext i32 %i.agd to i64
  %i.agf = getelementptr inbounds [4 x i8], ptr %.0233, i64 %i.age
  store float %i.aga, ptr %i.agf, align 4, !tbaa !11
  %indvars.iv.next362.1 = add nuw nsw i64 %indvars.iv361, 2 ; 2 uses
  %i.agg = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next362.1
  %i.agh = load float, ptr %i.agg, align 4, !tbaa !11
  %i.agi = fmul reassoc nsz arcp contract afn float %i.agh, 2.500000e-01
  %i.agj = mul nuw nsw i64 %indvars.iv.next362.1, %i.cz
  %i.agk = trunc nuw nsw i64 %i.agj to i32
  %i.agl = add i32 %i.aeg, %i.agk
  %i.agm = sext i32 %i.agl to i64
  %i.agn = getelementptr inbounds [4 x i8], ptr %.0233, i64 %i.agm
  store float %i.agi, ptr %i.agn, align 4, !tbaa !11
  %indvars.iv.next362.2 = add nuw nsw i64 %indvars.iv361, 3 ; 2 uses
  %i.ago = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next362.2
  %i.agp = load float, ptr %i.ago, align 4, !tbaa !11
  %i.agq = fmul reassoc nsz arcp contract afn float %i.agp, 2.500000e-01
  %i.agr = mul nuw nsw i64 %indvars.iv.next362.2, %i.cz
  %i.ags = trunc nuw nsw i64 %i.agr to i32
  %i.agt = add i32 %i.aeg, %i.ags
  %i.agu = sext i32 %i.agt to i64
  %i.agv = getelementptr inbounds [4 x i8], ptr %.0233, i64 %i.agu
  store float %i.agq, ptr %i.agv, align 4, !tbaa !11
  %indvars.iv.next362.3 = add nuw nsw i64 %indvars.iv361, 4 ; 2 uses
  %exitcond365.not.3 = icmp eq i64 %indvars.iv.next362.3, %wide.trip.count364
  br i1 %exitcond365.not.3, label %._crit_edge316, label %vec.epilog.scalar.ph519, !llvm.loop !189

._crit_edge316:                                   ; preds = %vec.epilog.scalar.ph519.prol.loopexit, %vec.epilog.scalar.ph519, %middle.block515, %vec.epilog.middle.block528, %_ZN6LibRaw13hat_transformEPfS0_iii.exit281
  %indvars.iv.next367 = add nuw nsw i64 %indvars.iv366, 1 ; 2 uses
  %exitcond370.not = icmp eq i64 %indvars.iv.next367, %wide.trip.count369
  br i1 %exitcond370.not, label %iter.check, label %iter.check701, !llvm.loop !190

iter.check:                                       ; preds = %._crit_edge316, %.preheader296
  %i.agw = load float, ptr %i.as, align 4, !tbaa !191
  %i.agx = getelementptr inbounds nuw [4 x i8], ptr @_ZZN6LibRaw15wavelet_denoiseEvE5noise, i64 %indvars.iv376
  %i.agy = load float, ptr %i.agx, align 4, !tbaa !11
  %i.agz = fmul reassoc nsz arcp contract afn float %i.agy, %i.agw ; 12 uses
  %i.aha = fneg reassoc nsz arcp contract afn float %i.agz ; 5 uses
  %.not254 = icmp ne i32 %.0229322, 0             ; 5 uses
  %i.ahb = sext i32 %i.ev to i64                  ; 3 uses
  %i.ahc = sext i32 %.0229322 to i64              ; 2 uses
  %invariant.gep439 = getelementptr [4 x i8], ptr %.0233, i64 %i.ahb ; 7 uses
  %invariant.gep441 = getelementptr [4 x i8], ptr %.0233, i64 %i.ahc ; 7 uses
  br i1 %min.iters.check464, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ahd = shl nsw i64 %i.ahc, 2
  %scevgep453 = getelementptr i8, ptr %scevgep, i64 %i.ahd ; 2 uses
  %i.ahe = shl nsw i64 %i.ahb, 2
  %scevgep455 = getelementptr i8, ptr %scevgep454, i64 %i.ahe ; 2 uses
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
  %i.ahf = insertelement <8 x i1> poison, i1 %.not254, i64 0
  %i.ahg = shufflevector <8 x i1> %i.ahf, <8 x i1> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert468 = insertelement <8 x float> poison, float %i.agz, i64 0
  %broadcast.splat469 = shufflevector <8 x float> %broadcast.splatinsert468, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %broadcast.splatinsert470 = insertelement <8 x float> poison, float %i.aha, i64 0
  %broadcast.splat471 = shufflevector <8 x float> %broadcast.splatinsert470, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body472

vector.body472:                                   ; preds = %vector.body472, %vector.ph466
end_hunk_2
