Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/postprocessing_aux?download=true
inline.NumInlined: 12
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN6LibRaw13hat_transformEPfS0_iii:bb.a
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %wide.load120 = load <8 x float>, ptr %i.cm, align 4, !tbaa !12
  %wide.load121 = load <8 x float>, ptr %i.cn, align 4, !tbaa !12
  %i.co = fadd reassoc nsz arcp contract afn <8 x float> %i.cj, %wide.load120
  %i.cp = fadd reassoc nsz arcp contract afn <8 x float> %i.ck, %wide.load121
  %i.cq = getelementptr [4 x i8], ptr %i.cf, i64 %index117 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %wide.load122 = load <8 x float>, ptr %i.cq, align 4, !tbaa !12
  %wide.load123 = load <8 x float>, ptr %i.cr, align 4, !tbaa !12
  %i.cs = fadd reassoc nsz arcp contract afn <8 x float> %i.co, %wide.load122
  %i.ct = fadd reassoc nsz arcp contract afn <8 x float> %i.cp, %wide.load123
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cg ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  store <8 x float> %i.cs, ptr %i.cu, align 4, !tbaa !12
  store <8 x float> %i.ct, ptr %i.cv, align 4, !tbaa !12
  %index.next124 = add nuw i64 %index117, 16      ; 2 uses
  %i.cw = icmp eq i64 %index.next124, %n.vec115
  br i1 %i.cw, label %middle.block125, label %vector.body116, !llvm.loop !98

middle.block125:                                  ; preds = %vector.body116
  %cmp.n126 = icmp eq i64 %i.bv, %n.vec115
  br i1 %cmp.n126, label %.preheader.loopexit, label %vec.epilog.iter.check132

vec.epilog.iter.check132:                         ; preds = %middle.block125
  %min.epilog.iters.check133 = icmp eq i64 %i.cc, 0
  br i1 %min.epilog.iters.check133, label %.lr.ph56.preheader, label %vec.epilog.ph134, !prof !17

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
  %wide.load138 = load <4 x float>, ptr %i.db, align 4, !tbaa !12
  %i.dc = fmul reassoc nsz arcp contract afn <4 x float> %wide.load138, splat (float 2.000000e+00)
  %i.dd = sub nsw i64 %i.da, %i.bp
  %i.de = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dd
  %wide.load139 = load <4 x float>, ptr %i.de, align 4, !tbaa !12
  %i.df = fadd reassoc nsz arcp contract afn <4 x float> %i.dc, %wide.load139
  %i.dg = getelementptr [4 x i8], ptr %i.cz, i64 %index137
  %wide.load140 = load <4 x float>, ptr %i.dg, align 4, !tbaa !12
  %i.dh = fadd reassoc nsz arcp contract afn <4 x float> %i.df, %wide.load140
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.da
  store <4 x float> %i.dh, ptr %i.di, align 4, !tbaa !12
  %index.next141 = add nuw i64 %index137, 4       ; 2 uses
  %i.dj = icmp eq i64 %index.next141, %n.vec135
  br i1 %i.dj, label %vec.epilog.middle.block142, label %vec.epilog.vector.body136, !llvm.loop !99

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
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !12
  %i.dn = fmul reassoc nsz arcp contract afn float %i.dm, 2.000000e+00
  %i.do = sub nuw nsw i64 %i.e, %indvars.iv
  %i.dp = mul nsw i64 %i.do, %i.d
  %i.dq = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dp
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !12
  %i.ds = fadd reassoc nsz arcp contract afn float %i.dn, %i.dr
  %i.dt = add nuw nsw i64 %indvars.iv, %i.e
  %i.du = mul nsw i64 %i.dt, %i.d
  %i.dv = getelementptr inbounds [4 x i8], ptr %2, i64 %i.du
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !12
  %i.dx = fadd reassoc nsz arcp contract afn float %i.ds, %i.dw
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store float %i.dx, ptr %i.dy, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.dz = mul nsw i64 %indvars.iv.next, %i.d
  %i.ea = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dz
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !12
  %i.ec = fmul reassoc nsz arcp contract afn float %i.eb, 2.000000e+00
  %i.ed = sub nuw nsw i64 %i.e, %indvars.iv.next
  %i.ee = mul nsw i64 %i.ed, %i.d
  %i.ef = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ee
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !12
  %i.eh = fadd reassoc nsz arcp contract afn float %i.ec, %i.eg
  %i.ei = add nuw nsw i64 %indvars.iv.next, %i.e
  %i.ej = mul nsw i64 %i.ei, %i.d
  %i.ek = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ej
  %i.el = load float, ptr %i.ek, align 4, !tbaa !12
  %i.em = fadd reassoc nsz arcp contract afn float %i.eh, %i.el
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  store float %i.em, ptr %i.en, align 4, !tbaa !12
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.preheader53, label %.lr.ph, !llvm.loop !100

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
  %.neg52 = add nsw i32 %i.eq, -2                 ; 5 uses
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
  %wide.load175 = load <8 x float>, ptr %i.fy, align 4, !tbaa !12, !alias.scope !114
  %wide.load176 = load <8 x float>, ptr %i.fz, align 4, !tbaa !12, !alias.scope !114
  %wide.load177 = load <8 x float>, ptr %i.ga, align 4, !tbaa !12, !alias.scope !114
  %wide.load178 = load <8 x float>, ptr %i.gb, align 4, !tbaa !12, !alias.scope !114
  %i.gc = fmul reassoc nsz arcp contract afn <8 x float> %wide.load175, splat (float 2.000000e+00)
  %i.gd = fmul reassoc nsz arcp contract afn <8 x float> %wide.load176, splat (float 2.000000e+00)
  %i.ge = fmul reassoc nsz arcp contract afn <8 x float> %wide.load177, splat (float 2.000000e+00)
  %i.gf = fmul reassoc nsz arcp contract afn <8 x float> %wide.load178, splat (float 2.000000e+00)
  %i.gg = sub nuw nsw i64 %i.fx, %i.et
  %i.gh = getelementptr inbounds [4 x i8], ptr %2, i64 %i.gg ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 32
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 64
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 96
  %wide.load179 = load <8 x float>, ptr %i.gh, align 4, !tbaa !12, !alias.scope !115
  %wide.load180 = load <8 x float>, ptr %i.gi, align 4, !tbaa !12, !alias.scope !115
  %wide.load181 = load <8 x float>, ptr %i.gj, align 4, !tbaa !12, !alias.scope !115
  %wide.load182 = load <8 x float>, ptr %i.gk, align 4, !tbaa !12, !alias.scope !115
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
  %wide.load183 = load <8 x float>, ptr %i.gu, align 4, !tbaa !12, !alias.scope !116
  %wide.load184 = load <8 x float>, ptr %i.gv, align 4, !tbaa !12, !alias.scope !116
  %wide.load185 = load <8 x float>, ptr %i.gw, align 4, !tbaa !12, !alias.scope !116
  %wide.load186 = load <8 x float>, ptr %i.gx, align 4, !tbaa !12, !alias.scope !116
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
  store <8 x float> %i.gy, ptr %i.hc, align 4, !tbaa !12, !alias.scope !117, !noalias !118
  store <8 x float> %i.gz, ptr %i.hd, align 4, !tbaa !12, !alias.scope !117, !noalias !118
  store <8 x float> %i.ha, ptr %i.he, align 4, !tbaa !12, !alias.scope !117, !noalias !118
  store <8 x float> %i.hb, ptr %i.hf, align 4, !tbaa !12, !alias.scope !117, !noalias !118
  %index.next191 = add nuw i64 %index174, 32      ; 2 uses
  %i.hg = icmp eq i64 %index.next191, %n.vec172
  br i1 %i.hg, label %middle.block192, label %vector.body173, !llvm.loop !106

middle.block192:                                  ; preds = %vector.body173
  %cmp.n193 = icmp eq i64 %i.eu, %n.vec172
  br i1 %cmp.n193, label %._crit_edge, label %vec.epilog.iter.check198

vec.epilog.iter.check198:                         ; preds = %middle.block192
  %min.epilog.iters.check199 = icmp eq i64 %i.fv, 0
  br i1 %min.epilog.iters.check199, label %vec.epilog.scalar.ph197.preheader, label %vec.epilog.ph200, !prof !16

vec.epilog.ph200:                                 ; preds = %vector.main.loop.iter.check169, %vec.epilog.iter.check198
  %vec.epilog.resume.val194 = phi i64 [ %n.vec172, %vec.epilog.iter.check198 ], [ 0, %vector.main.loop.iter.check169 ]
  %n.vec201 = and i64 %i.eu, -8                   ; 3 uses
  %i.hh = add nsw i64 %n.vec201, %i.er
  br label %vec.epilog.vector.body202

vec.epilog.vector.body202:                        ; preds = %vec.epilog.vector.body202, %vec.epilog.ph200
  %index203 = phi i64 [ %vec.epilog.resume.val194, %vec.epilog.ph200 ], [ %index.next208, %vec.epilog.vector.body202 ] ; 2 uses
  %i.hi = add nuw i64 %index203, %i.er            ; 4 uses
  %i.hj = getelementptr inbounds [4 x i8], ptr %2, i64 %i.hi
  %wide.load204 = load <8 x float>, ptr %i.hj, align 4, !tbaa !12, !alias.scope !114
  %i.hk = fmul reassoc nsz arcp contract afn <8 x float> %wide.load204, splat (float 2.000000e+00)
  %i.hl = sub nuw nsw i64 %i.hi, %i.et
  %i.hm = getelementptr inbounds [4 x i8], ptr %2, i64 %i.hl
  %wide.load205 = load <8 x float>, ptr %i.hm, align 4, !tbaa !12, !alias.scope !115
  %i.hn = fadd reassoc nsz arcp contract afn <8 x float> %i.hk, %wide.load205
  %i.ho = trunc nsw i64 %i.hi to i32
  %i.hp = add i32 %5, %i.ho
  %i.hq = sub i32 %.neg52, %i.hp
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds [4 x i8], ptr %2, i64 %i.hr
  %i.ht = getelementptr inbounds i8, ptr %i.hs, i64 -28
  %wide.load206 = load <8 x float>, ptr %i.ht, align 4, !tbaa !12, !alias.scope !116
  %reverse207 = shufflevector <8 x float> %wide.load206, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.hu = fadd reassoc nsz arcp contract afn <8 x float> %i.hn, %reverse207
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hi
  store <8 x float> %i.hu, ptr %i.hv, align 4, !tbaa !12, !alias.scope !117, !noalias !118
  %index.next208 = add nuw i64 %index203, 8       ; 2 uses
  %i.hw = icmp eq i64 %index.next208, %n.vec201
  br i1 %i.hw, label %vec.epilog.middle.block209, label %vec.epilog.vector.body202, !llvm.loop !107

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
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !12
  %i.ib = fmul reassoc nsz arcp contract afn float %i.ia, 2.000000e+00
  %i.ic = sub nuw nsw i64 %indvars.iv69.ph, %i.et
  %i.id = mul nsw i64 %i.ic, %i.es
  %i.ie = getelementptr inbounds [4 x i8], ptr %2, i64 %i.id
  %i.if = load float, ptr %i.ie, align 4, !tbaa !12
  %i.ig = fadd reassoc nsz arcp contract afn float %i.ib, %i.if
  %i.ih = trunc nsw i64 %indvars.iv69.ph to i32
  %i.ii = add i32 %5, %i.ih
  %i.ij = sub i32 %.neg52, %i.ii
  %i.ik = mul nsw i32 %i.ij, %3
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds [4 x i8], ptr %2, i64 %i.il
  %i.in = load float, ptr %i.im, align 4, !tbaa !12
  %i.io = fadd reassoc nsz arcp contract afn float %i.ig, %i.in
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv69.ph
  store float %i.io, ptr %i.ip, align 4, !tbaa !12
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
  %i.iu = load float, ptr %i.it, align 4, !tbaa !12
  %i.iv = fmul reassoc nsz arcp contract afn float %i.iu, 2.000000e+00
  %i.iw = sub nsw i64 %indvars.iv64, %i.bp
  %i.ix = mul nsw i64 %i.iw, %i.bs
  %i.iy = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ix
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !12
  %i.ja = fadd reassoc nsz arcp contract afn float %i.iv, %i.iz
  %i.jb = mul nsw i64 %indvars.iv62, %i.bs
  %i.jc = getelementptr inbounds [4 x i8], ptr %2, i64 %i.jb
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !12
  %i.je = fadd reassoc nsz arcp contract afn float %i.ja, %i.jd
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv64
  store float %i.je, ptr %i.jf, align 4, !tbaa !12
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 3 uses
  %i.jg = icmp slt i64 %indvars.iv.next65, %invariant.op
  %indvars.iv.next63 = add nsw i64 %indvars.iv62, 1
  br i1 %i.jg, label %.lr.ph56, label %.preheader.loopexit, !llvm.loop !108

vec.epilog.scalar.ph197:                          ; preds = %vec.epilog.scalar.ph197.prol.loopexit, %vec.epilog.scalar.ph197
  %indvars.iv69 = phi i64 [ %indvars.iv.next70.1, %vec.epilog.scalar.ph197 ], [ %indvars.iv69.unr, %vec.epilog.scalar.ph197.prol.loopexit ] ; 6 uses
  %i.jh = mul nsw i64 %indvars.iv69, %i.es
  %i.ji = getelementptr inbounds [4 x i8], ptr %2, i64 %i.jh
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !12
  %i.jk = fmul reassoc nsz arcp contract afn float %i.jj, 2.000000e+00
  %i.jl = sub nuw nsw i64 %indvars.iv69, %i.et
  %i.jm = mul nsw i64 %i.jl, %i.es
  %i.jn = getelementptr inbounds [4 x i8], ptr %2, i64 %i.jm
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !12
  %i.jp = fadd reassoc nsz arcp contract afn float %i.jk, %i.jo
  %i.jq = trunc nsw i64 %indvars.iv69 to i32
  %i.jr = add i32 %5, %i.jq
  %i.js = sub i32 %.neg52, %i.jr
  %i.jt = mul nsw i32 %i.js, %3
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ju
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !12
  %i.jx = fadd reassoc nsz arcp contract afn float %i.jp, %i.jw
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv69
  store float %i.jx, ptr %i.jy, align 4, !tbaa !12
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 4 uses
  %i.jz = mul nsw i64 %indvars.iv.next70, %i.es
  %i.ka = getelementptr inbounds [4 x i8], ptr %2, i64 %i.jz
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !12
  %i.kc = fmul reassoc nsz arcp contract afn float %i.kb, 2.000000e+00
  %i.kd = sub nuw nsw i64 %indvars.iv.next70, %i.et
  %i.ke = mul nsw i64 %i.kd, %i.es
  %i.kf = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ke
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !12
  %i.kh = fadd reassoc nsz arcp contract afn float %i.kc, %i.kg
  %i.ki = trunc nsw i64 %indvars.iv.next70 to i32
  %i.kj = add i32 %5, %i.ki
  %i.kk = sub i32 %.neg52, %i.kj
  %i.kl = mul nsw i32 %i.kk, %3
  %i.km = sext i32 %i.kl to i64
  %i.kn = getelementptr inbounds [4 x i8], ptr %2, i64 %i.km
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !12
  %i.kp = fadd reassoc nsz arcp contract afn float %i.kh, %i.ko
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next70
  store float %i.kp, ptr %i.kq, align 4, !tbaa !12
  %indvars.iv.next70.1 = add nuw nsw i64 %indvars.iv69, 2 ; 2 uses
  %exitcond73.not.1 = icmp eq i64 %indvars.iv.next70.1, %wide.trip.count72
  br i1 %exitcond73.not.1, label %._crit_edge, label %vec.epilog.scalar.ph197, !llvm.loop !109

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
  %i.e = load i16, ptr %i.d, align 2, !tbaa !187  ; 2 uses
  %i.f = icmp ult i16 %i.e, 65
  br i1 %i.f, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.h = load i16, ptr %i.g, align 4, !tbaa !188  ; 2 uses
  %i.i = icmp ult i16 %i.h, 65
  br i1 %i.i, label %bb.n, label %.preheader296

.preheader296:                                    ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 153096 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !189  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader296
  %.0231 = phi i32 [ %i.n, %bb.c ], [ 1, %.preheader296 ] ; 3 uses
  %i.l = shl i32 %i.k, %.0231
  %i.m = icmp ult i32 %i.l, 65536
  %i.n = add nuw nsw i32 %.0231, 1
  br i1 %i.m, label %bb.c, label %bb.d, !llvm.loop !119

bb.d:                                             ; preds = %bb.c
  %i.o = add nsw i32 %.0231, -1                   ; 6 uses
  %i.p = shl i32 %i.k, %i.o
  store i32 %i.p, ptr %i.j, align 8, !tbaa !189
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 153088 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !190
  %i.s = shl i32 %i.r, %i.o
  store i32 %i.s, ptr %i.q, align 8, !tbaa !190
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136672 ; 4 uses
  %i.u = load <4 x i32>, ptr %i.t, align 8, !tbaa !79
  %i.v = insertelement <4 x i32> poison, i32 %i.o, i64 0
  %i.w = shufflevector <4 x i32> %i.v, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.x = shl <4 x i32> %i.u, %i.w
  store <4 x i32> %i.x, ptr %i.t, align 8, !tbaa !79
  %i.y = zext i16 %i.h to i32                     ; 2 uses
  %i.z = zext i16 %i.e to i32                     ; 2 uses
  %i.aa = mul nuw nsw i32 %i.y, %i.z              ; 9 uses
  %i.ab = icmp samesign ult i32 %i.aa, 357892096
  %i.ac = mul i32 %i.aa, 3                        ; 2 uses
  br i1 %i.ab, label %bb.e, label %._crit_edge408

bb.e:                                             ; preds = %bb.d
  %i.ad = add nuw nsw i32 %i.z, 128
  %i.ae = add nuw nsw i32 %i.ad, %i.y
  %i.af = add nuw nsw i32 %i.ae, %i.ac
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 2
  %i.ai = tail call noundef ptr @_ZN6LibRaw6mallocEm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.ah)
  br label %._crit_edge408

._crit_edge408:                                   ; preds = %bb.d, %bb.e
  %.0233 = phi ptr [ %i.ai, %bb.e ], [ null, %bb.d ] ; 58 uses
  %i.aj = zext i32 %i.ac to i64                   ; 9 uses
  %i.ak = getelementptr [4 x i8], ptr %.0233, i64 %i.aj ; 52 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.am = load i32, ptr %i.al, align 4, !tbaa !80 ; 3 uses
  %i.an = icmp ne i32 %i.am, 3                    ; 2 uses
  br i1 %i.an, label %bb.f, label %.thread

.thread:                                          ; preds = %._crit_edge408
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !191
  %.not = icmp eq i32 %i.ap, 0
  %spec.select = select i1 %.not, i32 3, i32 4
  br label %.preheader295.lr.ph

bb.f:                                             ; preds = %._crit_edge408
  %i.aq = icmp sgt i32 %i.am, 0
  br i1 %i.aq, label %.preheader295.lr.ph, label %.loopexit289

.preheader295.lr.ph:                              ; preds = %.thread, %bb.f
  %.0218424 = phi i32 [ %spec.select, %.thread ], [ %i.am, %bb.f ]
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 5372
  %wide.trip.count384 = zext nneg i32 %.0218424 to i64
  %wide.trip.count = zext nneg i32 %i.aa to i64   ; 17 uses
  %i.at = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %scevgep = getelementptr i8, ptr %.0233, i64 %i.at ; 3 uses
  %scevgep448 = getelementptr i8, ptr %.0233, i64 %i.at
  %i.au = mul nsw i64 %i.aj, -4                   ; 2 uses
  %i.av = shl nuw nsw i64 %i.aj, 2                ; 6 uses
  %scevgep523 = getelementptr i8, ptr %.0233, i64 %i.av
  %scevgep637 = getelementptr i8, ptr %.0233, i64 %i.av
  %scevgep639 = getelementptr i8, ptr %.0233, i64 -4
  %scevgep642 = getelementptr i8, ptr %.0233, i64 4
  %scevgep647 = getelementptr i8, ptr %.0233, i64 -4
  %scevgep738 = getelementptr i8, ptr %.0233, i64 %i.av
  %scevgep850 = getelementptr i8, ptr %.0233, i64 %i.av
  %scevgep854 = getelementptr i8, ptr %.0233, i64 4
  %scevgep856 = getelementptr i8, ptr %.0233, i64 4
  %min.iters.check918 = icmp samesign ult i32 %i.aa, 5
  %min.iters.check920 = icmp samesign ult i32 %i.aa, 33
  %i.aw = and i64 %wide.trip.count, 31            ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  %i.ay = select i1 %i.ax, i64 32, i64 %i.aw      ; 2 uses
  %n.vec922 = sub nsw i64 %wide.trip.count, %i.ay ; 3 uses
  %broadcast.splatinsert923 = insertelement <8 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat924 = shufflevector <8 x i32> %broadcast.splatinsert923, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %min.epilog.iters.check939 = icmp samesign ult i64 %i.ay, 5
  %i.az = and i64 %wide.trip.count, 3             ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  %i.bb = select i1 %i.ba, i64 4, i64 %i.az
  %n.vec941 = sub nsw i64 %wide.trip.count, %i.bb ; 2 uses
  %broadcast.splatinsert942 = insertelement <4 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat943 = shufflevector <4 x i32> %broadcast.splatinsert942, <4 x i32> poison, <4 x i32> zeroinitializer
  %invariant.op1013 = add i64 %i.au, -1
  %invariant.op1011 = add i64 %i.au, -1
  %min.iters.check458 = icmp samesign ult i32 %i.aa, 4
  %min.iters.check459 = icmp samesign ult i32 %i.aa, 16
  %i.bc = and i64 %wide.trip.count, 12
  %n.vec461 = and i64 %wide.trip.count, 2147483632 ; 4 uses
  %cmp.n475 = icmp eq i64 %n.vec461, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.bc, 0
  %n.vec476 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n488 = icmp eq i64 %n.vec476, %wide.trip.count
  %xtraiter984 = and i64 %wide.trip.count, 1
  %lcmp.mod985.not = icmp eq i64 %xtraiter984, 0
  %i.bd = add nsw i64 %wide.trip.count, -1
  %min.iters.check = icmp samesign ult i32 %i.aa, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %iter.check936

iter.check936:                                    ; preds = %.preheader295.lr.ph, %.loopexit952
  %indvars.iv381 = phi i64 [ 0, %.preheader295.lr.ph ], [ %indvars.iv.next382, %.loopexit952 ] ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv381 ; 8 uses
  br i1 %min.iters.check918, label %vec.epilog.scalar.ph937.preheader, label %vector.main.loop.iter.check919

vector.main.loop.iter.check919:                   ; preds = %iter.check936
  br i1 %min.iters.check920, label %vec.epilog.ph940, label %vector.body925

vector.body925:                                   ; preds = %vector.main.loop.iter.check919, %vector.body925
  %index926 = phi i64 [ %index.next933, %vector.body925 ], [ 0, %vector.main.loop.iter.check919 ] ; 6 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index926
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index926
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index926
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 128
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index926
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 192
  %wide.vec = load <32 x i16>, ptr %i.be, align 2, !tbaa !82
  %strided.vec = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec927 = load <32 x i16>, ptr %i.bg, align 2, !tbaa !82
  %strided.vec928 = shufflevector <32 x i16> %wide.vec927, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec929 = load <32 x i16>, ptr %i.bi, align 2, !tbaa !82
  %strided.vec930 = shufflevector <32 x i16> %wide.vec929, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec931 = load <32 x i16>, ptr %i.bk, align 2, !tbaa !82
  %strided.vec932 = shufflevector <32 x i16> %wide.vec931, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.bl = zext <8 x i16> %strided.vec to <8 x i32>
  %i.bm = zext <8 x i16> %strided.vec928 to <8 x i32>
  %i.bn = zext <8 x i16> %strided.vec930 to <8 x i32>
  %i.bo = zext <8 x i16> %strided.vec932 to <8 x i32>
  %i.bp = shl <8 x i32> %i.bl, %broadcast.splat924
  %i.bq = shl <8 x i32> %i.bm, %broadcast.splat924
  %i.br = shl <8 x i32> %i.bn, %broadcast.splat924
  %i.bs = shl <8 x i32> %i.bo, %broadcast.splat924
  %i.bt = sitofp reassoc nsz arcp contract afn <8 x i32> %i.bp to <8 x float>
  %i.bu = sitofp reassoc nsz arcp contract afn <8 x i32> %i.bq to <8 x float>
  %i.bv = sitofp reassoc nsz arcp contract afn <8 x i32> %i.br to <8 x float>
  %i.bw = sitofp reassoc nsz arcp contract afn <8 x i32> %i.bs to <8 x float>
  %i.bx = tail call reassoc ninf nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.bt)
end_hunk_0
begin_hunk_1_@_ZN6LibRaw15wavelet_denoiseEv:bb.a
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 32
  %wide.load821 = load <8 x float>, ptr %i.kc, align 4, !tbaa !12
  %wide.load822 = load <8 x float>, ptr %i.kd, align 4, !tbaa !12
  %i.ke = fmul reassoc nsz arcp contract afn <8 x float> %wide.load821, splat (float 2.000000e+00)
  %i.kf = fmul reassoc nsz arcp contract afn <8 x float> %wide.load822, splat (float 2.000000e+00)
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %index820 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 32
  %wide.load823 = load <8 x float>, ptr %i.kg, align 4, !tbaa !12
  %wide.load824 = load <8 x float>, ptr %i.kh, align 4, !tbaa !12
  %i.ki = fadd reassoc nsz arcp contract afn <8 x float> %i.ke, %wide.load823
  %i.kj = fadd reassoc nsz arcp contract afn <8 x float> %i.kf, %wide.load824
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %index820 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 32
  %wide.load825 = load <8 x float>, ptr %i.kk, align 4, !tbaa !12
  %wide.load826 = load <8 x float>, ptr %i.kl, align 4, !tbaa !12
  %i.km = fadd reassoc nsz arcp contract afn <8 x float> %i.ki, %wide.load825
  %i.kn = fadd reassoc nsz arcp contract afn <8 x float> %i.kj, %wide.load826
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.kb ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 32
  store <8 x float> %i.km, ptr %i.ko, align 4, !tbaa !12
  store <8 x float> %i.kn, ptr %i.kp, align 4, !tbaa !12
  %index.next827 = add nuw i64 %index820, 16      ; 2 uses
  %i.kq = icmp eq i64 %index.next827, %n.vec818
  br i1 %i.kq, label %middle.block828, label %vector.body819, !llvm.loop !132

middle.block828:                                  ; preds = %vector.body819
  br i1 %cmp.n829, label %.preheader.loopexit.i, label %vec.epilog.iter.check835

vec.epilog.iter.check835:                         ; preds = %middle.block828
  br i1 %min.epilog.iters.check836, label %.lr.ph56.i.preheader, label %vec.epilog.ph837, !prof !17

vec.epilog.ph837:                                 ; preds = %vector.main.loop.iter.check815, %vec.epilog.iter.check835
  %vec.epilog.resume.val830 = phi i64 [ %n.vec818, %vec.epilog.iter.check835 ], [ 0, %vector.main.loop.iter.check815 ]
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.fb
  br label %vec.epilog.vector.body839

vec.epilog.vector.body839:                        ; preds = %vec.epilog.vector.body839, %vec.epilog.ph837
  %index840 = phi i64 [ %vec.epilog.resume.val830, %vec.epilog.ph837 ], [ %index.next844, %vec.epilog.vector.body839 ] ; 4 uses
  %i.ks = add nuw i64 %index840, %i.ey            ; 2 uses
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.ks
  %wide.load841 = load <4 x float>, ptr %i.kt, align 4, !tbaa !12
  %i.ku = fmul reassoc nsz arcp contract afn <4 x float> %wide.load841, splat (float 2.000000e+00)
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %index840
  %wide.load842 = load <4 x float>, ptr %i.kv, align 4, !tbaa !12
  %i.kw = fadd reassoc nsz arcp contract afn <4 x float> %i.ku, %wide.load842
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %index840
  %wide.load843 = load <4 x float>, ptr %i.kx, align 4, !tbaa !12
  %i.ky = fadd reassoc nsz arcp contract afn <4 x float> %i.kw, %wide.load843
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ks
  store <4 x float> %i.ky, ptr %i.kz, align 4, !tbaa !12
  %index.next844 = add nuw i64 %index840, 4       ; 2 uses
  %i.la = icmp eq i64 %index.next844, %n.vec838
  br i1 %i.la, label %vec.epilog.middle.block845, label %vec.epilog.vector.body839, !llvm.loop !133

vec.epilog.middle.block845:                       ; preds = %vec.epilog.vector.body839
  br i1 %cmp.n846, label %.preheader.loopexit.i, label %.lr.ph56.i.preheader

.lr.ph56.i.preheader:                             ; preds = %vector.memcheck806, %iter.check833, %vec.epilog.iter.check835, %vec.epilog.middle.block845
  %indvars.iv64.i.ph = phi i64 [ %i.ey, %iter.check833 ], [ %i.ey, %vector.memcheck806 ], [ %i.gf, %vec.epilog.iter.check835 ], [ %i.gh, %vec.epilog.middle.block845 ]
  %indvars.iv62.i.ph = phi i64 [ %i.fb, %iter.check833 ], [ %i.fb, %vector.memcheck806 ], [ %i.gg, %vec.epilog.iter.check835 ], [ %i.gi, %vec.epilog.middle.block845 ]
  br label %.lr.ph56.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 8 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %indvars.iv.i
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !12
  %i.ld = fmul reassoc nsz arcp contract afn float %i.lc, 2.000000e+00
  %i.le = sub nuw nsw i64 %i.ey, %indvars.iv.i
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.le
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !12
  %i.lh = fadd reassoc nsz arcp contract afn float %i.ld, %i.lg
  %gep304 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep303, i64 %indvars.iv.i
  %i.li = load float, ptr %gep304, align 4, !tbaa !12
  %i.lj = fadd reassoc nsz arcp contract afn float %i.lh, %i.li
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i
  store float %i.lj, ptr %i.lk, align 4, !tbaa !12
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 4 uses
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %indvars.iv.next.i
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !12
  %i.ln = fmul reassoc nsz arcp contract afn float %i.lm, 2.000000e+00
  %i.lo = sub nuw nsw i64 %i.ey, %indvars.iv.next.i
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.lo
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !12
  %i.lr = fadd reassoc nsz arcp contract afn float %i.ln, %i.lq
  %gep304.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep303, i64 %indvars.iv.next.i
  %i.ls = load float, ptr %gep304.1, align 4, !tbaa !12
  %i.lt = fadd reassoc nsz arcp contract afn float %i.lr, %i.ls
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next.i
  store float %i.lt, ptr %i.lu, align 4, !tbaa !12
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 4 uses
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %indvars.iv.next.i.1
  %i.lw = load float, ptr %i.lv, align 4, !tbaa !12
  %i.lx = fmul reassoc nsz arcp contract afn float %i.lw, 2.000000e+00
  %i.ly = sub nuw nsw i64 %i.ey, %indvars.iv.next.i.1
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.ly
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !12
  %i.mb = fadd reassoc nsz arcp contract afn float %i.lx, %i.ma
  %gep304.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep303, i64 %indvars.iv.next.i.1
  %i.mc = load float, ptr %gep304.2, align 4, !tbaa !12
  %i.md = fadd reassoc nsz arcp contract afn float %i.mb, %i.mc
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next.i.1
  store float %i.md, ptr %i.me, align 4, !tbaa !12
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 4 uses
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %indvars.iv.next.i.2
  %i.mg = load float, ptr %i.mf, align 4, !tbaa !12
  %i.mh = fmul reassoc nsz arcp contract afn float %i.mg, 2.000000e+00
  %i.mi = sub nuw nsw i64 %i.ey, %indvars.iv.next.i.2
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.mi
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !12
  %i.ml = fadd reassoc nsz arcp contract afn float %i.mh, %i.mk
  %gep304.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep303, i64 %indvars.iv.next.i.2
  %i.mm = load float, ptr %gep304.3, align 4, !tbaa !12
  %i.mn = fadd reassoc nsz arcp contract afn float %i.ml, %i.mm
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next.i.2
  store float %i.mn, ptr %i.mo, align 4, !tbaa !12
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader53.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !134

.preheader.loopexit.i:                            ; preds = %.lr.ph56.i, %vec.epilog.middle.block845, %middle.block828
  %indvars.iv.next65.i.lcssa = phi i64 [ %i.gh, %vec.epilog.middle.block845 ], [ %i.gf, %middle.block828 ], [ %indvars.iv.next65.i, %.lr.ph56.i ]
  %i.mp = trunc nuw nsw i64 %indvars.iv.next65.i.lcssa to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.preheader53.i
  %.1.lcssa.i = phi i32 [ %i.ex, %.preheader53.i ], [ %i.mp, %.preheader.loopexit.i ] ; 4 uses
  %i.mq = icmp slt i32 %.1.lcssa.i, %i.cv
  br i1 %i.mq, label %iter.check790, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit

iter.check790:                                    ; preds = %.preheader.i
  %i.mr = sext i32 %.1.lcssa.i to i64             ; 11 uses
  %i.ms = sub nsw i64 %i.cw, %i.mr                ; 7 uses
  %min.iters.check762 = icmp ult i64 %i.ms, 8
  br i1 %min.iters.check762, label %vec.epilog.scalar.ph791.preheader, label %vector.scevcheck736

vector.scevcheck736:                              ; preds = %iter.check790
  %i.mt = xor i64 %i.mr, -1
  %i.mu = add nsw i64 %i.mt, %i.cw                ; 2 uses
  %i.mv = add i32 %i.ex, %.1.lcssa.i
  %i.mw = sub i32 %i.dk, %i.mv                    ; 2 uses
  %i.mx = trunc i64 %i.mu to i32
  %i.my = sub i32 %i.mw, %i.mx
  %i.mz = icmp sgt i32 %i.my, %i.mw
  %i.na = icmp ugt i64 %i.mu, 4294967295
  %i.nb = or i1 %i.mz, %i.na
  br i1 %i.nb, label %vec.epilog.scalar.ph791.preheader, label %vector.memcheck737

vector.memcheck737:                               ; preds = %vector.scevcheck736
  %i.nc = shl nsw i64 %i.mr, 2                    ; 3 uses
  %scevgep739 = getelementptr i8, ptr %scevgep738, i64 %i.nc ; 3 uses
  %scevgep741 = getelementptr i8, ptr %i.ia, i64 %i.nc
  %scevgep744 = getelementptr i8, ptr %scevgep743, i64 %i.nc
  %i.nd = add i32 %i.ex, %.1.lcssa.i
  %i.ne = sub i32 %i.dp, %i.nd
  %i.nf = sext i32 %i.ne to i64                   ; 2 uses
  %i.ng = add nsw i64 %i.mr, %i.nf
  %i.nh = shl nsw i64 %i.ng, 2
  %scevgep747 = getelementptr i8, ptr %scevgep746, i64 %i.nh
  %i.ni = shl nsw i64 %i.nf, 2
  %scevgep749 = getelementptr i8, ptr %scevgep748, i64 %i.ni
  %bound0750 = icmp ult ptr %scevgep739, %scevgep742
  %bound1751 = icmp ult ptr %scevgep741, %scevgep740
  %found.conflict752 = and i1 %bound0750, %bound1751
  %bound0753 = icmp ult ptr %scevgep739, %scevgep745
  %bound1754 = icmp ult ptr %scevgep744, %scevgep740
  %found.conflict755 = and i1 %bound0753, %bound1754
  %conflict.rdx756 = or i1 %found.conflict752, %found.conflict755
  %bound0757 = icmp ult ptr %scevgep739, %scevgep749
  %bound1758 = icmp ult ptr %scevgep747, %scevgep740
  %found.conflict759 = and i1 %bound0757, %bound1758
  %conflict.rdx760 = or i1 %conflict.rdx756, %found.conflict759
  br i1 %conflict.rdx760, label %vec.epilog.scalar.ph791.preheader, label %vector.main.loop.iter.check763

vector.main.loop.iter.check763:                   ; preds = %vector.memcheck737
  %min.iters.check764 = icmp ult i64 %i.ms, 32
  br i1 %min.iters.check764, label %vec.epilog.ph794, label %vector.ph765

vector.ph765:                                     ; preds = %vector.main.loop.iter.check763
  %i.nj = and i64 %i.ms, 24
  %n.vec766 = and i64 %i.ms, -32                  ; 4 uses
  %i.nk = add nsw i64 %n.vec766, %i.mr
  br label %vector.body767

vector.body767:                                   ; preds = %vector.body767, %vector.ph765
  %index768 = phi i64 [ 0, %vector.ph765 ], [ %index.next785, %vector.body767 ] ; 2 uses
  %i.nl = add nuw i64 %index768, %i.mr            ; 4 uses
  %i.nm = getelementptr inbounds [4 x i8], ptr %i.ia, i64 %i.nl ; 4 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 32
  %i.no = getelementptr inbounds nuw i8, ptr %i.nm, i64 64
  %i.np = getelementptr inbounds nuw i8, ptr %i.nm, i64 96
  %wide.load769 = load <8 x float>, ptr %i.nm, align 4, !tbaa !12, !alias.scope !197
  %wide.load770 = load <8 x float>, ptr %i.nn, align 4, !tbaa !12, !alias.scope !197
  %wide.load771 = load <8 x float>, ptr %i.no, align 4, !tbaa !12, !alias.scope !197
  %wide.load772 = load <8 x float>, ptr %i.np, align 4, !tbaa !12, !alias.scope !197
  %i.nq = fmul reassoc nsz arcp contract afn <8 x float> %wide.load769, splat (float 2.000000e+00)
  %i.nr = fmul reassoc nsz arcp contract afn <8 x float> %wide.load770, splat (float 2.000000e+00)
  %i.ns = fmul reassoc nsz arcp contract afn <8 x float> %wide.load771, splat (float 2.000000e+00)
  %i.nt = fmul reassoc nsz arcp contract afn <8 x float> %wide.load772, splat (float 2.000000e+00)
  %i.nu = sub nuw nsw i64 %i.nl, %i.ey
  %i.nv = getelementptr inbounds [4 x i8], ptr %i.ia, i64 %i.nu ; 4 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 32
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nv, i64 64
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nv, i64 96
  %wide.load773 = load <8 x float>, ptr %i.nv, align 4, !tbaa !12, !alias.scope !198
  %wide.load774 = load <8 x float>, ptr %i.nw, align 4, !tbaa !12, !alias.scope !198
  %wide.load775 = load <8 x float>, ptr %i.nx, align 4, !tbaa !12, !alias.scope !198
  %wide.load776 = load <8 x float>, ptr %i.ny, align 4, !tbaa !12, !alias.scope !198
  %i.nz = fadd reassoc nsz arcp contract afn <8 x float> %i.nq, %wide.load773
  %i.oa = fadd reassoc nsz arcp contract afn <8 x float> %i.nr, %wide.load774
  %i.ob = fadd reassoc nsz arcp contract afn <8 x float> %i.ns, %wide.load775
  %i.oc = fadd reassoc nsz arcp contract afn <8 x float> %i.nt, %wide.load776
  %i.od = trunc nsw i64 %i.nl to i32
  %i.oe = add i32 %i.ex, %i.od
  %i.of = sub i32 %i.db, %i.oe
  %i.og = sext i32 %i.of to i64
  %i.oh = getelementptr inbounds [4 x i8], ptr %i.ia, i64 %i.og ; 4 uses
  %i.oi = getelementptr inbounds i8, ptr %i.oh, i64 -28
  %i.oj = getelementptr inbounds i8, ptr %i.oh, i64 -60
  %i.ok = getelementptr inbounds i8, ptr %i.oh, i64 -92
  %i.ol = getelementptr inbounds i8, ptr %i.oh, i64 -124
  %wide.load777 = load <8 x float>, ptr %i.oi, align 4, !tbaa !12, !alias.scope !199
  %wide.load778 = load <8 x float>, ptr %i.oj, align 4, !tbaa !12, !alias.scope !199
  %wide.load779 = load <8 x float>, ptr %i.ok, align 4, !tbaa !12, !alias.scope !199
  %wide.load780 = load <8 x float>, ptr %i.ol, align 4, !tbaa !12, !alias.scope !199
  %reverse781 = shufflevector <8 x float> %wide.load777, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse782 = shufflevector <8 x float> %wide.load778, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse783 = shufflevector <8 x float> %wide.load779, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse784 = shufflevector <8 x float> %wide.load780, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.om = fadd reassoc nsz arcp contract afn <8 x float> %i.nz, %reverse781
  %i.on = fadd reassoc nsz arcp contract afn <8 x float> %i.oa, %reverse782
  %i.oo = fadd reassoc nsz arcp contract afn <8 x float> %i.ob, %reverse783
  %i.op = fadd reassoc nsz arcp contract afn <8 x float> %i.oc, %reverse784
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.nl ; 4 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 32
  %i.os = getelementptr inbounds nuw i8, ptr %i.oq, i64 64
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oq, i64 96
  store <8 x float> %i.om, ptr %i.oq, align 4, !tbaa !12, !alias.scope !200, !noalias !201
  store <8 x float> %i.on, ptr %i.or, align 4, !tbaa !12, !alias.scope !200, !noalias !201
  store <8 x float> %i.oo, ptr %i.os, align 4, !tbaa !12, !alias.scope !200, !noalias !201
  store <8 x float> %i.op, ptr %i.ot, align 4, !tbaa !12, !alias.scope !200, !noalias !201
  %index.next785 = add nuw i64 %index768, 32      ; 2 uses
  %i.ou = icmp eq i64 %index.next785, %n.vec766
  br i1 %i.ou, label %middle.block786, label %vector.body767, !llvm.loop !140

middle.block786:                                  ; preds = %vector.body767
  %cmp.n787 = icmp eq i64 %i.ms, %n.vec766
  br i1 %cmp.n787, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit, label %vec.epilog.iter.check792

vec.epilog.iter.check792:                         ; preds = %middle.block786
  %min.epilog.iters.check793 = icmp eq i64 %i.nj, 0
  br i1 %min.epilog.iters.check793, label %vec.epilog.scalar.ph791.preheader, label %vec.epilog.ph794, !prof !16

vec.epilog.ph794:                                 ; preds = %vector.main.loop.iter.check763, %vec.epilog.iter.check792
  %vec.epilog.resume.val788 = phi i64 [ %n.vec766, %vec.epilog.iter.check792 ], [ 0, %vector.main.loop.iter.check763 ]
  %n.vec795 = and i64 %i.ms, -8                   ; 3 uses
  %i.ov = add nsw i64 %n.vec795, %i.mr
  br label %vec.epilog.vector.body796

vec.epilog.vector.body796:                        ; preds = %vec.epilog.vector.body796, %vec.epilog.ph794
  %index797 = phi i64 [ %vec.epilog.resume.val788, %vec.epilog.ph794 ], [ %index.next802, %vec.epilog.vector.body796 ] ; 2 uses
  %i.ow = add nuw i64 %index797, %i.mr            ; 4 uses
  %i.ox = getelementptr inbounds [4 x i8], ptr %i.ia, i64 %i.ow
  %wide.load798 = load <8 x float>, ptr %i.ox, align 4, !tbaa !12, !alias.scope !197
  %i.oy = fmul reassoc nsz arcp contract afn <8 x float> %wide.load798, splat (float 2.000000e+00)
  %i.oz = sub nuw nsw i64 %i.ow, %i.ey
  %i.pa = getelementptr inbounds [4 x i8], ptr %i.ia, i64 %i.oz
  %wide.load799 = load <8 x float>, ptr %i.pa, align 4, !tbaa !12, !alias.scope !198
  %i.pb = fadd reassoc nsz arcp contract afn <8 x float> %i.oy, %wide.load799
  %i.pc = trunc nsw i64 %i.ow to i32
  %i.pd = add i32 %i.ex, %i.pc
  %i.pe = sub i32 %i.db, %i.pd
  %i.pf = sext i32 %i.pe to i64
  %i.pg = getelementptr inbounds [4 x i8], ptr %i.ia, i64 %i.pf
  %i.ph = getelementptr inbounds i8, ptr %i.pg, i64 -28
  %wide.load800 = load <8 x float>, ptr %i.ph, align 4, !tbaa !12, !alias.scope !199
  %reverse801 = shufflevector <8 x float> %wide.load800, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.pi = fadd reassoc nsz arcp contract afn <8 x float> %i.pb, %reverse801
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ow
  store <8 x float> %i.pi, ptr %i.pj, align 4, !tbaa !12, !alias.scope !200, !noalias !201
  %index.next802 = add nuw i64 %index797, 8       ; 2 uses
  %i.pk = icmp eq i64 %index.next802, %n.vec795
  br i1 %i.pk, label %vec.epilog.middle.block803, label %vec.epilog.vector.body796, !llvm.loop !141

vec.epilog.middle.block803:                       ; preds = %vec.epilog.vector.body796
  %cmp.n804 = icmp eq i64 %i.ms, %n.vec795
  br i1 %cmp.n804, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit, label %vec.epilog.scalar.ph791.preheader

vec.epilog.scalar.ph791.preheader:                ; preds = %vector.memcheck737, %vector.scevcheck736, %iter.check790, %vec.epilog.iter.check792, %vec.epilog.middle.block803
  %indvars.iv69.i.ph = phi i64 [ %i.mr, %iter.check790 ], [ %i.mr, %vector.scevcheck736 ], [ %i.mr, %vector.memcheck737 ], [ %i.nk, %vec.epilog.iter.check792 ], [ %i.ov, %vec.epilog.middle.block803 ] ; 8 uses
  %i.pl = sub i64 %i.cz, %indvars.iv69.i.ph
  %xtraiter968 = and i64 %i.pl, 1
  %lcmp.mod969.not = icmp eq i64 %xtraiter968, 0
  br i1 %lcmp.mod969.not, label %vec.epilog.scalar.ph791.prol.loopexit, label %vec.epilog.scalar.ph791.prol

vec.epilog.scalar.ph791.prol:                     ; preds = %vec.epilog.scalar.ph791.preheader
  %i.pm = getelementptr inbounds [4 x i8], ptr %i.ia, i64 %indvars.iv69.i.ph
  %i.pn = load float, ptr %i.pm, align 4, !tbaa !12
  %i.po = fmul reassoc nsz arcp contract afn float %i.pn, 2.000000e+00
  %i.pp = sub nuw nsw i64 %indvars.iv69.i.ph, %i.ey
  %i.pq = getelementptr inbounds [4 x i8], ptr %i.ia, i64 %i.pp
  %i.pr = load float, ptr %i.pq, align 4, !tbaa !12
  %i.ps = fadd reassoc nsz arcp contract afn float %i.po, %i.pr
  %i.pt = trunc nsw i64 %indvars.iv69.i.ph to i32
  %i.pu = add i32 %i.ex, %i.pt
  %i.pv = sub i32 %i.db, %i.pu
  %i.pw = sext i32 %i.pv to i64
  %i.px = getelementptr inbounds [4 x i8], ptr %i.ia, i64 %i.pw
  %i.py = load float, ptr %i.px, align 4, !tbaa !12
  %i.pz = fadd reassoc nsz arcp contract afn float %i.ps, %i.py
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv69.i.ph
  store float %i.pz, ptr %i.qa, align 4, !tbaa !12
  %indvars.iv.next70.i.prol = add nuw nsw i64 %indvars.iv69.i.ph, 1
  br label %vec.epilog.scalar.ph791.prol.loopexit

vec.epilog.scalar.ph791.prol.loopexit:            ; preds = %vec.epilog.scalar.ph791.prol, %vec.epilog.scalar.ph791.preheader
  %indvars.iv69.i.unr = phi i64 [ %indvars.iv69.i.ph, %vec.epilog.scalar.ph791.preheader ], [ %indvars.iv.next70.i.prol, %vec.epilog.scalar.ph791.prol ]
  %i.qb = icmp eq i64 %indvars.iv69.i.ph, %i.du
  br i1 %i.qb, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit, label %vec.epilog.scalar.ph791

.lr.ph56.i:                                       ; preds = %.lr.ph56.i.preheader, %.lr.ph56.i
  %indvars.iv64.i = phi i64 [ %indvars.iv.next65.i, %.lr.ph56.i ], [ %indvars.iv64.i.ph, %.lr.ph56.i.preheader ] ; 4 uses
  %indvars.iv62.i = phi i64 [ %indvars.iv.next63.i, %.lr.ph56.i ], [ %indvars.iv62.i.ph, %.lr.ph56.i.preheader ] ; 2 uses
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %indvars.iv64.i
  %i.qd = load float, ptr %i.qc, align 4, !tbaa !12
  %i.qe = fmul reassoc nsz arcp contract afn float %i.qd, 2.000000e+00
  %i.qf = sub nuw nsw i64 %indvars.iv64.i, %i.ey
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.qf
  %i.qh = load float, ptr %i.qg, align 4, !tbaa !12
  %i.qi = fadd reassoc nsz arcp contract afn float %i.qe, %i.qh
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %indvars.iv62.i
  %i.qk = load float, ptr %i.qj, align 4, !tbaa !12
  %i.ql = fadd reassoc nsz arcp contract afn float %i.qi, %i.qk
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv64.i
  store float %i.ql, ptr %i.qm, align 4, !tbaa !12
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 3 uses
  %i.qn = icmp slt i64 %indvars.iv.next65.i, %invariant.op.i
  %indvars.iv.next63.i = add nuw nsw i64 %indvars.iv62.i, 1
  br i1 %i.qn, label %.lr.ph56.i, label %.preheader.loopexit.i, !llvm.loop !142

vec.epilog.scalar.ph791:                          ; preds = %vec.epilog.scalar.ph791.prol.loopexit, %vec.epilog.scalar.ph791
  %indvars.iv69.i = phi i64 [ %indvars.iv.next70.i.1, %vec.epilog.scalar.ph791 ], [ %indvars.iv69.i.unr, %vec.epilog.scalar.ph791.prol.loopexit ] ; 6 uses
  %i.qo = getelementptr inbounds [4 x i8], ptr %i.ia, i64 %indvars.iv69.i
  %i.qp = load float, ptr %i.qo, align 4, !tbaa !12
  %i.qq = fmul reassoc nsz arcp contract afn float %i.qp, 2.000000e+00
  %i.qr = sub nuw nsw i64 %indvars.iv69.i, %i.ey
  %i.qs = getelementptr inbounds [4 x i8], ptr %i.ia, i64 %i.qr
  %i.qt = load float, ptr %i.qs, align 4, !tbaa !12
  %i.qu = fadd reassoc nsz arcp contract afn float %i.qq, %i.qt
  %i.qv = trunc nsw i64 %indvars.iv69.i to i32
  %i.qw = add i32 %i.ex, %i.qv
  %i.qx = sub i32 %i.db, %i.qw
  %i.qy = sext i32 %i.qx to i64
  %i.qz = getelementptr inbounds [4 x i8], ptr %i.ia, i64 %i.qy
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !12
  %i.rb = fadd reassoc nsz arcp contract afn float %i.qu, %i.ra
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv69.i
  store float %i.rb, ptr %i.rc, align 4, !tbaa !12
  %indvars.iv.next70.i = add nuw nsw i64 %indvars.iv69.i, 1 ; 4 uses
  %i.rd = getelementptr inbounds [4 x i8], ptr %i.ia, i64 %indvars.iv.next70.i
  %i.re = load float, ptr %i.rd, align 4, !tbaa !12
  %i.rf = fmul reassoc nsz arcp contract afn float %i.re, 2.000000e+00
  %i.rg = sub nuw nsw i64 %indvars.iv.next70.i, %i.ey
  %i.rh = getelementptr inbounds [4 x i8], ptr %i.ia, i64 %i.rg
  %i.ri = load float, ptr %i.rh, align 4, !tbaa !12
  %i.rj = fadd reassoc nsz arcp contract afn float %i.rf, %i.ri
  %i.rk = trunc nsw i64 %indvars.iv.next70.i to i32
  %i.rl = add i32 %i.ex, %i.rk
  %i.rm = sub i32 %i.db, %i.rl
  %i.rn = sext i32 %i.rm to i64
  %i.ro = getelementptr inbounds [4 x i8], ptr %i.ia, i64 %i.rn
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !12
  %i.rq = fadd reassoc nsz arcp contract afn float %i.rj, %i.rp
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next70.i
  store float %i.rq, ptr %i.rr, align 4, !tbaa !12
  %indvars.iv.next70.i.1 = add nuw nsw i64 %indvars.iv69.i, 2 ; 2 uses
  %exitcond73.not.i.1 = icmp eq i64 %indvars.iv.next70.i.1, %i.cw
  br i1 %exitcond73.not.i.1, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit, label %vec.epilog.scalar.ph791, !llvm.loop !143

_ZN6LibRaw13hat_transformEPfS0_iii.exit:          ; preds = %vec.epilog.scalar.ph791.prol.loopexit, %vec.epilog.scalar.ph791, %middle.block786, %vec.epilog.middle.block803, %.preheader.i
  br i1 %.not340, label %._crit_edge, label %iter.check723

iter.check723:                                    ; preds = %_ZN6LibRaw13hat_transformEPfS0_iii.exit
  %gep431 = getelementptr [4 x i8], ptr %invariant.gep430, i64 %i.hz ; 11 uses
  %.reass998 = add i64 %i.hy, %invariant.op997.reass
  %diff.check706 = icmp ult i64 %.reass998, 127
  %or.cond = select i1 %min.iters.check708, i1 true, i1 %diff.check706
  br i1 %or.cond, label %vec.epilog.scalar.ph724.preheader, label %vector.main.loop.iter.check709

vector.main.loop.iter.check709:                   ; preds = %iter.check723
  br i1 %min.iters.check710, label %vec.epilog.ph727, label %vector.body713

vector.body713:                                   ; preds = %vector.main.loop.iter.check709, %vector.body713
  %index714 = phi i64 [ %index.next719, %vector.body713 ], [ 0, %vector.main.loop.iter.check709 ] ; 3 uses
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index714 ; 4 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 32
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rs, i64 64
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rs, i64 96
  %wide.load715 = load <8 x float>, ptr %i.rs, align 4, !tbaa !12
  %wide.load716 = load <8 x float>, ptr %i.rt, align 4, !tbaa !12
  %wide.load717 = load <8 x float>, ptr %i.ru, align 4, !tbaa !12
  %wide.load718 = load <8 x float>, ptr %i.rv, align 4, !tbaa !12
  %i.rw = fmul reassoc nsz arcp contract afn <8 x float> %wide.load715, splat (float 2.500000e-01)
  %i.rx = fmul reassoc nsz arcp contract afn <8 x float> %wide.load716, splat (float 2.500000e-01)
  %i.ry = fmul reassoc nsz arcp contract afn <8 x float> %wide.load717, splat (float 2.500000e-01)
  %i.rz = fmul reassoc nsz arcp contract afn <8 x float> %wide.load718, splat (float 2.500000e-01)
  %i.sa = getelementptr [4 x i8], ptr %gep431, i64 %index714 ; 4 uses
  %i.sb = getelementptr i8, ptr %i.sa, i64 32
  %i.sc = getelementptr i8, ptr %i.sa, i64 64
  %i.sd = getelementptr i8, ptr %i.sa, i64 96
  store <8 x float> %i.rw, ptr %i.sa, align 4, !tbaa !12
  store <8 x float> %i.rx, ptr %i.sb, align 4, !tbaa !12
  store <8 x float> %i.ry, ptr %i.sc, align 4, !tbaa !12
  store <8 x float> %i.rz, ptr %i.sd, align 4, !tbaa !12
  %index.next719 = add nuw i64 %index714, 32      ; 2 uses
  %i.se = icmp eq i64 %index.next719, %n.vec712
  br i1 %i.se, label %middle.block720, label %vector.body713, !llvm.loop !144

middle.block720:                                  ; preds = %vector.body713
  br i1 %cmp.n721, label %._crit_edge, label %vec.epilog.iter.check725

vec.epilog.iter.check725:                         ; preds = %middle.block720
  br i1 %min.epilog.iters.check726, label %vec.epilog.scalar.ph724.preheader, label %vec.epilog.ph727, !prof !83

vec.epilog.ph727:                                 ; preds = %vector.main.loop.iter.check709, %vec.epilog.iter.check725
  %vec.epilog.resume.val722 = phi i64 [ %n.vec712, %vec.epilog.iter.check725 ], [ 0, %vector.main.loop.iter.check709 ]
  br label %vec.epilog.vector.body729

vec.epilog.vector.body729:                        ; preds = %vec.epilog.vector.body729, %vec.epilog.ph727
  %index730 = phi i64 [ %vec.epilog.resume.val722, %vec.epilog.ph727 ], [ %index.next732, %vec.epilog.vector.body729 ] ; 3 uses
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index730
  %wide.load731 = load <4 x float>, ptr %i.sf, align 4, !tbaa !12
  %i.sg = fmul reassoc nsz arcp contract afn <4 x float> %wide.load731, splat (float 2.500000e-01)
  %i.sh = getelementptr [4 x i8], ptr %gep431, i64 %index730
  store <4 x float> %i.sg, ptr %i.sh, align 4, !tbaa !12
  %index.next732 = add nuw i64 %index730, 4       ; 2 uses
  %i.si = icmp eq i64 %index.next732, %n.vec728
  br i1 %i.si, label %vec.epilog.middle.block733, label %vec.epilog.vector.body729, !llvm.loop !145

vec.epilog.middle.block733:                       ; preds = %vec.epilog.vector.body729
  br i1 %cmp.n734, label %._crit_edge, label %vec.epilog.scalar.ph724.preheader

vec.epilog.scalar.ph724.preheader:                ; preds = %iter.check723, %vec.epilog.iter.check725, %vec.epilog.middle.block733
  %indvars.iv347.ph = phi i64 [ 0, %iter.check723 ], [ %n.vec712, %vec.epilog.iter.check725 ], [ %n.vec728, %vec.epilog.middle.block733 ] ; 4 uses
  %i.sj = sub nsw i64 %i.cz, %indvars.iv347.ph
  %xtraiter970 = and i64 %i.sj, 7                 ; 2 uses
  %lcmp.mod971.not = icmp eq i64 %xtraiter970, 0
  br i1 %lcmp.mod971.not, label %vec.epilog.scalar.ph724.prol.loopexit, label %vec.epilog.scalar.ph724.prol

vec.epilog.scalar.ph724.prol:                     ; preds = %vec.epilog.scalar.ph724.preheader, %vec.epilog.scalar.ph724.prol
  %indvars.iv347.prol = phi i64 [ %indvars.iv.next348.prol, %vec.epilog.scalar.ph724.prol ], [ %indvars.iv347.ph, %vec.epilog.scalar.ph724.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph724.prol ], [ 0, %vec.epilog.scalar.ph724.preheader ]
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv347.prol
  %i.sl = load float, ptr %i.sk, align 4, !tbaa !12
  %i.sm = fmul reassoc nsz arcp contract afn float %i.sl, 2.500000e-01
  %i.sn = getelementptr [4 x i8], ptr %gep431, i64 %indvars.iv347.prol
  store float %i.sm, ptr %i.sn, align 4, !tbaa !12
  %indvars.iv.next348.prol = add nuw nsw i64 %indvars.iv347.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter970
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph724.prol.loopexit, label %vec.epilog.scalar.ph724.prol, !llvm.loop !146

vec.epilog.scalar.ph724.prol.loopexit:            ; preds = %vec.epilog.scalar.ph724.prol, %vec.epilog.scalar.ph724.preheader
  %indvars.iv347.unr = phi i64 [ %indvars.iv347.ph, %vec.epilog.scalar.ph724.preheader ], [ %indvars.iv.next348.prol, %vec.epilog.scalar.ph724.prol ]
  %i.so = sub nsw i64 %indvars.iv347.ph, %i.cz
  %i.sp = icmp ugt i64 %i.so, -8
  br i1 %i.sp, label %._crit_edge, label %vec.epilog.scalar.ph724

vec.epilog.scalar.ph724:                          ; preds = %vec.epilog.scalar.ph724.prol.loopexit, %vec.epilog.scalar.ph724
  %indvars.iv347 = phi i64 [ %indvars.iv.next348.7, %vec.epilog.scalar.ph724 ], [ %indvars.iv347.unr, %vec.epilog.scalar.ph724.prol.loopexit ] ; 10 uses
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv347
  %i.sr = load float, ptr %i.sq, align 4, !tbaa !12
  %i.ss = fmul reassoc nsz arcp contract afn float %i.sr, 2.500000e-01
  %i.st = getelementptr [4 x i8], ptr %gep431, i64 %indvars.iv347
  store float %i.ss, ptr %i.st, align 4, !tbaa !12
  %indvars.iv.next348 = add nuw nsw i64 %indvars.iv347, 1 ; 2 uses
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next348
  %i.sv = load float, ptr %i.su, align 4, !tbaa !12
  %i.sw = fmul reassoc nsz arcp contract afn float %i.sv, 2.500000e-01
  %i.sx = getelementptr [4 x i8], ptr %gep431, i64 %indvars.iv.next348
  store float %i.sw, ptr %i.sx, align 4, !tbaa !12
  %indvars.iv.next348.1 = add nuw nsw i64 %indvars.iv347, 2 ; 2 uses
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next348.1
  %i.sz = load float, ptr %i.sy, align 4, !tbaa !12
  %i.ta = fmul reassoc nsz arcp contract afn float %i.sz, 2.500000e-01
  %i.tb = getelementptr [4 x i8], ptr %gep431, i64 %indvars.iv.next348.1
  store float %i.ta, ptr %i.tb, align 4, !tbaa !12
  %indvars.iv.next348.2 = add nuw nsw i64 %indvars.iv347, 3 ; 2 uses
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next348.2
  %i.td = load float, ptr %i.tc, align 4, !tbaa !12
  %i.te = fmul reassoc nsz arcp contract afn float %i.td, 2.500000e-01
  %i.tf = getelementptr [4 x i8], ptr %gep431, i64 %indvars.iv.next348.2
  store float %i.te, ptr %i.tf, align 4, !tbaa !12
  %indvars.iv.next348.3 = add nuw nsw i64 %indvars.iv347, 4 ; 2 uses
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next348.3
  %i.th = load float, ptr %i.tg, align 4, !tbaa !12
  %i.ti = fmul reassoc nsz arcp contract afn float %i.th, 2.500000e-01
  %i.tj = getelementptr [4 x i8], ptr %gep431, i64 %indvars.iv.next348.3
  store float %i.ti, ptr %i.tj, align 4, !tbaa !12
  %indvars.iv.next348.4 = add nuw nsw i64 %indvars.iv347, 5 ; 2 uses
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next348.4
  %i.tl = load float, ptr %i.tk, align 4, !tbaa !12
  %i.tm = fmul reassoc nsz arcp contract afn float %i.tl, 2.500000e-01
  %i.tn = getelementptr [4 x i8], ptr %gep431, i64 %indvars.iv.next348.4
  store float %i.tm, ptr %i.tn, align 4, !tbaa !12
  %indvars.iv.next348.5 = add nuw nsw i64 %indvars.iv347, 6 ; 2 uses
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next348.5
  %i.tp = load float, ptr %i.to, align 4, !tbaa !12
  %i.tq = fmul reassoc nsz arcp contract afn float %i.tp, 2.500000e-01
  %i.tr = getelementptr [4 x i8], ptr %gep431, i64 %indvars.iv.next348.5
  store float %i.tq, ptr %i.tr, align 4, !tbaa !12
  %indvars.iv.next348.6 = add nuw nsw i64 %indvars.iv347, 7 ; 2 uses
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next348.6
  %i.tt = load float, ptr %i.ts, align 4, !tbaa !12
  %i.tu = fmul reassoc nsz arcp contract afn float %i.tt, 2.500000e-01
  %i.tv = getelementptr [4 x i8], ptr %gep431, i64 %indvars.iv.next348.6
  store float %i.tu, ptr %i.tv, align 4, !tbaa !12
  %indvars.iv.next348.7 = add nuw nsw i64 %indvars.iv347, 8 ; 2 uses
  %exitcond351.not.7 = icmp eq i64 %indvars.iv.next348.7, %wide.trip.count350
  br i1 %exitcond351.not.7, label %._crit_edge, label %vec.epilog.scalar.ph724, !llvm.loop !147

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph724.prol.loopexit, %vec.epilog.scalar.ph724, %middle.block720, %vec.epilog.middle.block733, %_ZN6LibRaw13hat_transformEPfS0_iii.exit
  %indvars.iv.next353 = add nuw nsw i64 %indvars.iv352, 1 ; 2 uses
  %exitcond356.not = icmp eq i64 %indvars.iv.next353, %wide.trip.count355
  br i1 %exitcond356.not, label %.preheader292, label %iter.check901, !llvm.loop !148

iter.check689:                                    ; preds = %.lr.ph314, %._crit_edge312
  %indvars.iv362 = phi i64 [ 0, %.lr.ph314 ], [ %indvars.iv.next363, %._crit_edge312 ] ; 6 uses
  %i.tw = mul nsw i64 %indvars.iv362, -4          ; 3 uses
  %i.tx = shl nuw nsw i64 %indvars.iv362, 2       ; 5 uses
  %scevgep527 = getelementptr i8, ptr %i.hj, i64 %i.tx
  %scevgep528 = getelementptr i8, ptr %i.hk, i64 %i.tx
  %scevgep530 = getelementptr i8, ptr %i.hl, i64 %i.tx
  %scevgep531 = getelementptr i8, ptr %i.hn, i64 %i.tx
  %scevgep533 = getelementptr i8, ptr %i.hp, i64 %i.tx
  %i.ty = trunc i64 %indvars.iv362 to i32
  %i.tz = add i32 %i.eu, %i.ty
  %i.ua = sext i32 %i.tz to i64
  %i.ub = shl nsw i64 %i.ua, 2
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv362 ; 40 uses
  %or.cond954.not = xor i1 %or.cond954, true
  %brmerge1015 = select i1 %or.cond954.not, i1 true, i1 %conflict.rdx660
  br i1 %brmerge1015, label %.lr.ph.i274.preheader, label %vector.main.loop.iter.check663

.lr.ph.i274.preheader:                            ; preds = %iter.check689
  br i1 %i.hq, label %.lr.ph.i274.epil.preheader, label %.lr.ph.i274

vector.main.loop.iter.check663:                   ; preds = %iter.check689
  br i1 %min.iters.check664, label %vec.epilog.ph693, label %vector.ph665

vector.ph665:                                     ; preds = %vector.main.loop.iter.check663
  %invariant.gep999 = getelementptr [4 x i8], ptr %i.uc, i64 %i.gm
  br label %vector.body667

vector.body667:                                   ; preds = %vector.body667, %vector.ph665
  %index668 = phi i64 [ 0, %vector.ph665 ], [ %index.next685, %vector.body667 ] ; 5 uses
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %i.uc, i64 %index668 ; 4 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 32
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ud, i64 64
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ud, i64 96
  %wide.load669 = load <8 x float>, ptr %i.ud, align 4, !tbaa !12, !alias.scope !202
  %wide.load670 = load <8 x float>, ptr %i.ue, align 4, !tbaa !12, !alias.scope !202
  %wide.load671 = load <8 x float>, ptr %i.uf, align 4, !tbaa !12, !alias.scope !202
end_hunk_1
begin_hunk_2_@_ZN6LibRaw15wavelet_denoiseEv:bb.a
  %conflict.rdx595 = or i1 %diff.check593, %diff.check594
  %.reass1008 = add i64 %i.tw, %invariant.op1007
  %diff.check596 = icmp ult i64 %.reass1008, 63
  %conflict.rdx597 = or i1 %conflict.rdx595, %diff.check596
  br i1 %conflict.rdx597, label %.lr.ph56.i267.preheader, label %vector.main.loop.iter.check600

vector.main.loop.iter.check600:                   ; preds = %vector.memcheck592
  br i1 %min.iters.check601, label %vec.epilog.ph622, label %vector.ph602

vector.ph602:                                     ; preds = %vector.main.loop.iter.check600
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.uc, i64 %i.gp
  br label %vector.body604

vector.body604:                                   ; preds = %vector.body604, %vector.ph602
  %index605 = phi i64 [ 0, %vector.ph602 ], [ %index.next612, %vector.body604 ] ; 4 uses
  %i.wg = add nuw i64 %index605, %i.gm            ; 2 uses
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.uc, i64 %i.wg ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 32
  %wide.load606 = load <8 x float>, ptr %i.wh, align 4, !tbaa !12
  %wide.load607 = load <8 x float>, ptr %i.wi, align 4, !tbaa !12
  %i.wj = fmul reassoc nsz arcp contract afn <8 x float> %wide.load606, splat (float 2.000000e+00)
  %i.wk = fmul reassoc nsz arcp contract afn <8 x float> %wide.load607, splat (float 2.000000e+00)
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.uc, i64 %index605 ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 32
  %wide.load608 = load <8 x float>, ptr %i.wl, align 4, !tbaa !12
  %wide.load609 = load <8 x float>, ptr %i.wm, align 4, !tbaa !12
  %i.wn = fadd reassoc nsz arcp contract afn <8 x float> %i.wj, %wide.load608
  %i.wo = fadd reassoc nsz arcp contract afn <8 x float> %i.wk, %wide.load609
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.wf, i64 %index605 ; 2 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 32
  %wide.load610 = load <8 x float>, ptr %i.wp, align 4, !tbaa !12
  %wide.load611 = load <8 x float>, ptr %i.wq, align 4, !tbaa !12
  %i.wr = fadd reassoc nsz arcp contract afn <8 x float> %i.wn, %wide.load610
  %i.ws = fadd reassoc nsz arcp contract afn <8 x float> %i.wo, %wide.load611
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.wg ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 32
  store <8 x float> %i.wr, ptr %i.wt, align 4, !tbaa !12
  store <8 x float> %i.ws, ptr %i.wu, align 4, !tbaa !12
  %index.next612 = add nuw i64 %index605, 16      ; 2 uses
  %i.wv = icmp eq i64 %index.next612, %n.vec603
  br i1 %i.wv, label %middle.block613, label %vector.body604, !llvm.loop !156

middle.block613:                                  ; preds = %vector.body604
  br i1 %cmp.n614, label %.preheader.loopexit.i272, label %vec.epilog.iter.check620

vec.epilog.iter.check620:                         ; preds = %middle.block613
  br i1 %min.epilog.iters.check621, label %.lr.ph56.i267.preheader, label %vec.epilog.ph622, !prof !17

vec.epilog.ph622:                                 ; preds = %vector.main.loop.iter.check600, %vec.epilog.iter.check620
  %vec.epilog.resume.val615 = phi i64 [ %n.vec603, %vec.epilog.iter.check620 ], [ 0, %vector.main.loop.iter.check600 ]
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %i.uc, i64 %i.gp
  br label %vec.epilog.vector.body624

vec.epilog.vector.body624:                        ; preds = %vec.epilog.vector.body624, %vec.epilog.ph622
  %index625 = phi i64 [ %vec.epilog.resume.val615, %vec.epilog.ph622 ], [ %index.next629, %vec.epilog.vector.body624 ] ; 4 uses
  %i.wx = add nuw i64 %index625, %i.gm            ; 2 uses
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.uc, i64 %i.wx
  %wide.load626 = load <4 x float>, ptr %i.wy, align 4, !tbaa !12
  %i.wz = fmul reassoc nsz arcp contract afn <4 x float> %wide.load626, splat (float 2.000000e+00)
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %i.uc, i64 %index625
  %wide.load627 = load <4 x float>, ptr %i.xa, align 4, !tbaa !12
  %i.xb = fadd reassoc nsz arcp contract afn <4 x float> %i.wz, %wide.load627
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.ww, i64 %index625
  %wide.load628 = load <4 x float>, ptr %i.xc, align 4, !tbaa !12
  %i.xd = fadd reassoc nsz arcp contract afn <4 x float> %i.xb, %wide.load628
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.wx
  store <4 x float> %i.xd, ptr %i.xe, align 4, !tbaa !12
  %index.next629 = add nuw i64 %index625, 4       ; 2 uses
  %i.xf = icmp eq i64 %index.next629, %n.vec623
  br i1 %i.xf, label %vec.epilog.middle.block630, label %vec.epilog.vector.body624, !llvm.loop !157

vec.epilog.middle.block630:                       ; preds = %vec.epilog.vector.body624
  br i1 %cmp.n631, label %.preheader.loopexit.i272, label %.lr.ph56.i267.preheader

.lr.ph56.i267.preheader:                          ; preds = %vector.memcheck592, %iter.check618, %vec.epilog.iter.check620, %vec.epilog.middle.block630
  %indvars.iv64.i268.ph = phi i64 [ %i.gm, %iter.check618 ], [ %i.gm, %vector.memcheck592 ], [ %i.hs, %vec.epilog.iter.check620 ], [ %i.hu, %vec.epilog.middle.block630 ]
  %indvars.iv62.i269.ph = phi i64 [ %i.gp, %iter.check618 ], [ %i.gp, %vector.memcheck592 ], [ %i.ht, %vec.epilog.iter.check620 ], [ %i.hv, %vec.epilog.middle.block630 ]
  br label %.lr.ph56.i267

.lr.ph.i274:                                      ; preds = %.lr.ph.i274.preheader, %.lr.ph.i274
  %indvars.iv.i275 = phi i64 [ %indvars.iv.next.i276.1, %.lr.ph.i274 ], [ 0, %.lr.ph.i274.preheader ] ; 6 uses
  %niter977 = phi i64 [ %niter977.next.1, %.lr.ph.i274 ], [ 0, %.lr.ph.i274.preheader ]
  %i.xg = mul nuw nsw i64 %indvars.iv.i275, %i.cw
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.uc, i64 %i.xg
  %i.xi = load float, ptr %i.xh, align 4, !tbaa !12
  %i.xj = fmul reassoc nsz arcp contract afn float %i.xi, 2.000000e+00
  %i.xk = sub nuw nsw i64 %i.gm, %indvars.iv.i275
  %i.xl = mul nuw nsw i64 %i.xk, %i.cw
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.uc, i64 %i.xl
  %i.xn = load float, ptr %i.xm, align 4, !tbaa !12
  %i.xo = fadd reassoc nsz arcp contract afn float %i.xj, %i.xn
  %i.xp = add nuw nsw i64 %indvars.iv.i275, %i.gm
  %i.xq = mul nuw nsw i64 %i.xp, %i.cw
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %i.uc, i64 %i.xq
  %i.xs = load float, ptr %i.xr, align 4, !tbaa !12
  %i.xt = fadd reassoc nsz arcp contract afn float %i.xo, %i.xs
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i275
  store float %i.xt, ptr %i.xu, align 4, !tbaa !12
  %indvars.iv.next.i276 = or disjoint i64 %indvars.iv.i275, 1 ; 4 uses
  %i.xv = mul nuw nsw i64 %indvars.iv.next.i276, %i.cw
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %i.uc, i64 %i.xv
  %i.xx = load float, ptr %i.xw, align 4, !tbaa !12
  %i.xy = fmul reassoc nsz arcp contract afn float %i.xx, 2.000000e+00
  %i.xz = sub nuw nsw i64 %i.gm, %indvars.iv.next.i276
  %i.ya = mul nuw nsw i64 %i.xz, %i.cw
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %i.uc, i64 %i.ya
  %i.yc = load float, ptr %i.yb, align 4, !tbaa !12
  %i.yd = fadd reassoc nsz arcp contract afn float %i.xy, %i.yc
  %i.ye = add nuw nsw i64 %indvars.iv.next.i276, %i.gm
  %i.yf = mul nuw nsw i64 %i.ye, %i.cw
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %i.uc, i64 %i.yf
  %i.yh = load float, ptr %i.yg, align 4, !tbaa !12
  %i.yi = fadd reassoc nsz arcp contract afn float %i.yd, %i.yh
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next.i276
  store float %i.yi, ptr %i.yj, align 4, !tbaa !12
  %indvars.iv.next.i276.1 = add nuw nsw i64 %indvars.iv.i275, 2 ; 2 uses
  %niter977.next.1 = add i64 %niter977, 2         ; 2 uses
  %niter977.ncmp.1 = icmp eq i64 %niter977.next.1, %unroll_iter976
  br i1 %niter977.ncmp.1, label %.preheader53.i256.loopexit.unr-lcssa, label %.lr.ph.i274, !llvm.loop !158

.preheader.loopexit.i272:                         ; preds = %.lr.ph56.i267, %vec.epilog.middle.block630, %middle.block613
  %indvars.iv.next65.i270.lcssa = phi i64 [ %i.hu, %vec.epilog.middle.block630 ], [ %i.hs, %middle.block613 ], [ %indvars.iv.next65.i270, %.lr.ph56.i267 ]
  %i.yk = trunc nuw nsw i64 %indvars.iv.next65.i270.lcssa to i32
  br label %.preheader.i257

.preheader.i257:                                  ; preds = %.preheader.loopexit.i272, %.preheader53.i256
  %.1.lcssa.i258 = phi i32 [ %i.gl, %.preheader53.i256 ], [ %i.yk, %.preheader.loopexit.i272 ] ; 4 uses
  %i.yl = icmp slt i32 %.1.lcssa.i258, %i.ct
  br i1 %i.yl, label %iter.check574, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit278

iter.check574:                                    ; preds = %.preheader.i257
  %i.ym = sext i32 %.1.lcssa.i258 to i64          ; 11 uses
  %i.yn = sub nsw i64 %wide.trip.count355, %i.ym  ; 7 uses
  %min.iters.check547 = icmp ult i64 %i.yn, 8
  br i1 %min.iters.check547, label %vec.epilog.scalar.ph575.preheader, label %vector.scevcheck520

vector.scevcheck520:                              ; preds = %iter.check574
  %i.yo = xor i64 %i.ym, -1
  %i.yp = add nsw i64 %i.yo, %wide.trip.count355  ; 2 uses
  %i.yq = add i32 %i.gl, %.1.lcssa.i258
  %i.yr = sub i32 %i.dd, %i.yq                    ; 2 uses
  %i.ys = trunc i64 %i.yp to i32
  %i.yt = sub i32 %i.yr, %i.ys
  %i.yu = icmp sgt i32 %i.yt, %i.yr
  %i.yv = icmp ugt i64 %i.yp, 4294967295
  %i.yw = or i1 %i.yu, %i.yv
  %i.yx = or i1 %ident.check521, %i.yw
  br i1 %i.yx, label %vec.epilog.scalar.ph575.preheader, label %vector.memcheck522

vector.memcheck522:                               ; preds = %vector.scevcheck520
  %i.yy = shl nsw i64 %i.ym, 2                    ; 3 uses
  %scevgep524 = getelementptr i8, ptr %scevgep523, i64 %i.yy ; 3 uses
  %scevgep526 = getelementptr i8, ptr %i.uc, i64 %i.yy
  %scevgep529 = getelementptr i8, ptr %scevgep528, i64 %i.yy
  %i.yz = add i32 %i.gl, %.1.lcssa.i258
  %i.za = sub i32 %i.dh, %i.yz
  %i.zb = sext i32 %i.za to i64                   ; 2 uses
  %i.zc = add nsw i64 %i.ym, %i.zb
  %i.zd = shl nsw i64 %i.zc, 2
  %scevgep532 = getelementptr i8, ptr %scevgep531, i64 %i.zd
  %i.ze = shl nsw i64 %i.zb, 2
  %scevgep534 = getelementptr i8, ptr %scevgep533, i64 %i.ze
  %bound0535 = icmp ult ptr %scevgep524, %scevgep527
  %bound1536 = icmp ult ptr %scevgep526, %scevgep525
  %found.conflict537 = and i1 %bound0535, %bound1536
  %bound0538 = icmp ult ptr %scevgep524, %scevgep530
  %bound1539 = icmp ult ptr %scevgep529, %scevgep525
  %found.conflict540 = and i1 %bound0538, %bound1539
  %conflict.rdx541 = or i1 %found.conflict537, %found.conflict540
  %bound0542 = icmp ult ptr %scevgep524, %scevgep534
  %bound1543 = icmp ult ptr %scevgep532, %scevgep525
  %found.conflict544 = and i1 %bound0542, %bound1543
  %conflict.rdx545 = or i1 %conflict.rdx541, %found.conflict544
  br i1 %conflict.rdx545, label %vec.epilog.scalar.ph575.preheader, label %vector.main.loop.iter.check548

vector.main.loop.iter.check548:                   ; preds = %vector.memcheck522
  %min.iters.check549 = icmp ult i64 %i.yn, 32
  br i1 %min.iters.check549, label %vec.epilog.ph578, label %vector.ph550

vector.ph550:                                     ; preds = %vector.main.loop.iter.check548
  %i.zf = and i64 %i.yn, 24
  %n.vec551 = and i64 %i.yn, -32                  ; 4 uses
  %i.zg = add nsw i64 %n.vec551, %i.ym
  br label %vector.body552

vector.body552:                                   ; preds = %vector.body552, %vector.ph550
  %index553 = phi i64 [ 0, %vector.ph550 ], [ %index.next569, %vector.body552 ] ; 2 uses
  %i.zh = add nuw i64 %index553, %i.ym            ; 4 uses
  %i.zi = getelementptr inbounds [4 x i8], ptr %i.uc, i64 %i.zh ; 4 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 32
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zi, i64 64
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zi, i64 96
  %wide.load554 = load <8 x float>, ptr %i.zi, align 4, !tbaa !12, !alias.scope !207
  %wide.load555 = load <8 x float>, ptr %i.zj, align 4, !tbaa !12, !alias.scope !207
  %wide.load556 = load <8 x float>, ptr %i.zk, align 4, !tbaa !12, !alias.scope !207
  %wide.load557 = load <8 x float>, ptr %i.zl, align 4, !tbaa !12, !alias.scope !207
  %i.zm = fmul reassoc nsz arcp contract afn <8 x float> %wide.load554, splat (float 2.000000e+00)
  %i.zn = fmul reassoc nsz arcp contract afn <8 x float> %wide.load555, splat (float 2.000000e+00)
  %i.zo = fmul reassoc nsz arcp contract afn <8 x float> %wide.load556, splat (float 2.000000e+00)
  %i.zp = fmul reassoc nsz arcp contract afn <8 x float> %wide.load557, splat (float 2.000000e+00)
  %i.zq = sub nuw nsw i64 %i.zh, %i.gm
  %i.zr = getelementptr inbounds [4 x i8], ptr %i.uc, i64 %i.zq ; 4 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 32
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zr, i64 64
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zr, i64 96
  %wide.load558 = load <8 x float>, ptr %i.zr, align 4, !tbaa !12, !alias.scope !208
  %wide.load559 = load <8 x float>, ptr %i.zs, align 4, !tbaa !12, !alias.scope !208
  %wide.load560 = load <8 x float>, ptr %i.zt, align 4, !tbaa !12, !alias.scope !208
  %wide.load561 = load <8 x float>, ptr %i.zu, align 4, !tbaa !12, !alias.scope !208
  %i.zv = fadd reassoc nsz arcp contract afn <8 x float> %i.zm, %wide.load558
  %i.zw = fadd reassoc nsz arcp contract afn <8 x float> %i.zn, %wide.load559
  %i.zx = fadd reassoc nsz arcp contract afn <8 x float> %i.zo, %wide.load560
  %i.zy = fadd reassoc nsz arcp contract afn <8 x float> %i.zp, %wide.load561
  %i.zz = trunc nsw i64 %i.zh to i32
  %i.aaa = add i32 %i.gl, %i.zz
  %i.aab = sub i32 %invariant.op, %i.aaa
  %i.aac = sext i32 %i.aab to i64
  %i.aad = getelementptr inbounds [4 x i8], ptr %i.uc, i64 %i.aac ; 4 uses
  %i.aae = getelementptr inbounds i8, ptr %i.aad, i64 -28
  %i.aaf = getelementptr inbounds i8, ptr %i.aad, i64 -60
  %i.aag = getelementptr inbounds i8, ptr %i.aad, i64 -92
  %i.aah = getelementptr inbounds i8, ptr %i.aad, i64 -124
  %wide.load562 = load <8 x float>, ptr %i.aae, align 4, !tbaa !12, !alias.scope !209
  %wide.load563 = load <8 x float>, ptr %i.aaf, align 4, !tbaa !12, !alias.scope !209
  %wide.load564 = load <8 x float>, ptr %i.aag, align 4, !tbaa !12, !alias.scope !209
  %wide.load565 = load <8 x float>, ptr %i.aah, align 4, !tbaa !12, !alias.scope !209
  %reverse = shufflevector <8 x float> %wide.load562, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse566 = shufflevector <8 x float> %wide.load563, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse567 = shufflevector <8 x float> %wide.load564, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse568 = shufflevector <8 x float> %wide.load565, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.aai = fadd reassoc nsz arcp contract afn <8 x float> %i.zv, %reverse
  %i.aaj = fadd reassoc nsz arcp contract afn <8 x float> %i.zw, %reverse566
  %i.aak = fadd reassoc nsz arcp contract afn <8 x float> %i.zx, %reverse567
  %i.aal = fadd reassoc nsz arcp contract afn <8 x float> %i.zy, %reverse568
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.zh ; 4 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 32
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aam, i64 64
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aam, i64 96
  store <8 x float> %i.aai, ptr %i.aam, align 4, !tbaa !12, !alias.scope !210, !noalias !211
  store <8 x float> %i.aaj, ptr %i.aan, align 4, !tbaa !12, !alias.scope !210, !noalias !211
  store <8 x float> %i.aak, ptr %i.aao, align 4, !tbaa !12, !alias.scope !210, !noalias !211
  store <8 x float> %i.aal, ptr %i.aap, align 4, !tbaa !12, !alias.scope !210, !noalias !211
  %index.next569 = add nuw i64 %index553, 32      ; 2 uses
  %i.aaq = icmp eq i64 %index.next569, %n.vec551
  br i1 %i.aaq, label %middle.block570, label %vector.body552, !llvm.loop !164

middle.block570:                                  ; preds = %vector.body552
  %cmp.n571 = icmp eq i64 %i.yn, %n.vec551
  br i1 %cmp.n571, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit278, label %vec.epilog.iter.check576

vec.epilog.iter.check576:                         ; preds = %middle.block570
  %min.epilog.iters.check577 = icmp eq i64 %i.zf, 0
  br i1 %min.epilog.iters.check577, label %vec.epilog.scalar.ph575.preheader, label %vec.epilog.ph578, !prof !16

vec.epilog.ph578:                                 ; preds = %vector.main.loop.iter.check548, %vec.epilog.iter.check576
  %vec.epilog.resume.val572 = phi i64 [ %n.vec551, %vec.epilog.iter.check576 ], [ 0, %vector.main.loop.iter.check548 ]
  %n.vec579 = and i64 %i.yn, -8                   ; 3 uses
  %i.aar = add nsw i64 %n.vec579, %i.ym
  br label %vec.epilog.vector.body580

vec.epilog.vector.body580:                        ; preds = %vec.epilog.vector.body580, %vec.epilog.ph578
  %index581 = phi i64 [ %vec.epilog.resume.val572, %vec.epilog.ph578 ], [ %index.next586, %vec.epilog.vector.body580 ] ; 2 uses
  %i.aas = add nuw i64 %index581, %i.ym           ; 4 uses
  %i.aat = getelementptr inbounds [4 x i8], ptr %i.uc, i64 %i.aas
  %wide.load582 = load <8 x float>, ptr %i.aat, align 4, !tbaa !12, !alias.scope !207
  %i.aau = fmul reassoc nsz arcp contract afn <8 x float> %wide.load582, splat (float 2.000000e+00)
  %i.aav = sub nuw nsw i64 %i.aas, %i.gm
  %i.aaw = getelementptr inbounds [4 x i8], ptr %i.uc, i64 %i.aav
  %wide.load583 = load <8 x float>, ptr %i.aaw, align 4, !tbaa !12, !alias.scope !208
  %i.aax = fadd reassoc nsz arcp contract afn <8 x float> %i.aau, %wide.load583
  %i.aay = trunc nsw i64 %i.aas to i32
  %i.aaz = add i32 %i.gl, %i.aay
  %i.aba = sub i32 %invariant.op, %i.aaz
  %i.abb = sext i32 %i.aba to i64
  %i.abc = getelementptr inbounds [4 x i8], ptr %i.uc, i64 %i.abb
  %i.abd = getelementptr inbounds i8, ptr %i.abc, i64 -28
  %wide.load584 = load <8 x float>, ptr %i.abd, align 4, !tbaa !12, !alias.scope !209
  %reverse585 = shufflevector <8 x float> %wide.load584, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.abe = fadd reassoc nsz arcp contract afn <8 x float> %i.aax, %reverse585
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.aas
  store <8 x float> %i.abe, ptr %i.abf, align 4, !tbaa !12, !alias.scope !210, !noalias !211
  %index.next586 = add nuw i64 %index581, 8       ; 2 uses
  %i.abg = icmp eq i64 %index.next586, %n.vec579
  br i1 %i.abg, label %vec.epilog.middle.block587, label %vec.epilog.vector.body580, !llvm.loop !165

vec.epilog.middle.block587:                       ; preds = %vec.epilog.vector.body580
  %cmp.n588 = icmp eq i64 %i.yn, %n.vec579
  br i1 %cmp.n588, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit278, label %vec.epilog.scalar.ph575.preheader

vec.epilog.scalar.ph575.preheader:                ; preds = %vector.memcheck522, %vector.scevcheck520, %iter.check574, %vec.epilog.iter.check576, %vec.epilog.middle.block587
  %indvars.iv69.i262.ph = phi i64 [ %i.ym, %iter.check574 ], [ %i.ym, %vector.scevcheck520 ], [ %i.ym, %vector.memcheck522 ], [ %i.zg, %vec.epilog.iter.check576 ], [ %i.aar, %vec.epilog.middle.block587 ] ; 8 uses
  %i.abh = sub i64 %wide.trip.count355, %indvars.iv69.i262.ph
  %xtraiter978 = and i64 %i.abh, 1
  %lcmp.mod979.not = icmp eq i64 %xtraiter978, 0
  br i1 %lcmp.mod979.not, label %vec.epilog.scalar.ph575.prol.loopexit, label %vec.epilog.scalar.ph575.prol

vec.epilog.scalar.ph575.prol:                     ; preds = %vec.epilog.scalar.ph575.preheader
  %i.abi = mul nsw i64 %indvars.iv69.i262.ph, %i.cw
  %i.abj = getelementptr inbounds [4 x i8], ptr %i.uc, i64 %i.abi
  %i.abk = load float, ptr %i.abj, align 4, !tbaa !12
  %i.abl = fmul reassoc nsz arcp contract afn float %i.abk, 2.000000e+00
  %i.abm = sub nuw nsw i64 %indvars.iv69.i262.ph, %i.gm
  %i.abn = mul nsw i64 %i.abm, %i.cw
  %i.abo = getelementptr inbounds [4 x i8], ptr %i.uc, i64 %i.abn
  %i.abp = load float, ptr %i.abo, align 4, !tbaa !12
  %i.abq = fadd reassoc nsz arcp contract afn float %i.abl, %i.abp
  %i.abr = trunc nsw i64 %indvars.iv69.i262.ph to i32
  %i.abs = add i32 %i.gl, %i.abr
  %i.abt = sub i32 %invariant.op, %i.abs
  %i.abu = mul nsw i32 %i.abt, %i.cv
  %i.abv = sext i32 %i.abu to i64
  %i.abw = getelementptr inbounds [4 x i8], ptr %i.uc, i64 %i.abv
  %i.abx = load float, ptr %i.abw, align 4, !tbaa !12
  %i.aby = fadd reassoc nsz arcp contract afn float %i.abq, %i.abx
  %i.abz = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv69.i262.ph
  store float %i.aby, ptr %i.abz, align 4, !tbaa !12
  %indvars.iv.next70.i263.prol = add nuw nsw i64 %indvars.iv69.i262.ph, 1
  br label %vec.epilog.scalar.ph575.prol.loopexit

vec.epilog.scalar.ph575.prol.loopexit:            ; preds = %vec.epilog.scalar.ph575.prol, %vec.epilog.scalar.ph575.preheader
  %indvars.iv69.i262.unr = phi i64 [ %indvars.iv69.i262.ph, %vec.epilog.scalar.ph575.preheader ], [ %indvars.iv.next70.i263.prol, %vec.epilog.scalar.ph575.prol ]
  %i.aca = icmp eq i64 %indvars.iv69.i262.ph, %i.dw
  br i1 %i.aca, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit278, label %vec.epilog.scalar.ph575

.lr.ph56.i267:                                    ; preds = %.lr.ph56.i267.preheader, %.lr.ph56.i267
  %indvars.iv64.i268 = phi i64 [ %indvars.iv.next65.i270, %.lr.ph56.i267 ], [ %indvars.iv64.i268.ph, %.lr.ph56.i267.preheader ] ; 4 uses
  %indvars.iv62.i269 = phi i64 [ %indvars.iv.next63.i271, %.lr.ph56.i267 ], [ %indvars.iv62.i269.ph, %.lr.ph56.i267.preheader ] ; 2 uses
  %i.acb = mul nuw nsw i64 %indvars.iv64.i268, %i.cw
  %i.acc = getelementptr inbounds nuw [4 x i8], ptr %i.uc, i64 %i.acb
  %i.acd = load float, ptr %i.acc, align 4, !tbaa !12
  %i.ace = fmul reassoc nsz arcp contract afn float %i.acd, 2.000000e+00
  %i.acf = sub nuw nsw i64 %indvars.iv64.i268, %i.gm
  %i.acg = mul nuw nsw i64 %i.acf, %i.cw
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %i.uc, i64 %i.acg
  %i.aci = load float, ptr %i.ach, align 4, !tbaa !12
  %i.acj = fadd reassoc nsz arcp contract afn float %i.ace, %i.aci
  %i.ack = mul nuw nsw i64 %indvars.iv62.i269, %i.cw
  %i.acl = getelementptr inbounds nuw [4 x i8], ptr %i.uc, i64 %i.ack
  %i.acm = load float, ptr %i.acl, align 4, !tbaa !12
  %i.acn = fadd reassoc nsz arcp contract afn float %i.acj, %i.acm
  %i.aco = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv64.i268
  store float %i.acn, ptr %i.aco, align 4, !tbaa !12
  %indvars.iv.next65.i270 = add nuw nsw i64 %indvars.iv64.i268, 1 ; 3 uses
  %i.acp = icmp slt i64 %indvars.iv.next65.i270, %invariant.op.i266
  %indvars.iv.next63.i271 = add nuw nsw i64 %indvars.iv62.i269, 1
  br i1 %i.acp, label %.lr.ph56.i267, label %.preheader.loopexit.i272, !llvm.loop !166

vec.epilog.scalar.ph575:                          ; preds = %vec.epilog.scalar.ph575.prol.loopexit, %vec.epilog.scalar.ph575
  %indvars.iv69.i262 = phi i64 [ %indvars.iv.next70.i263.1, %vec.epilog.scalar.ph575 ], [ %indvars.iv69.i262.unr, %vec.epilog.scalar.ph575.prol.loopexit ] ; 6 uses
  %i.acq = mul nsw i64 %indvars.iv69.i262, %i.cw
  %i.acr = getelementptr inbounds [4 x i8], ptr %i.uc, i64 %i.acq
  %i.acs = load float, ptr %i.acr, align 4, !tbaa !12
  %i.act = fmul reassoc nsz arcp contract afn float %i.acs, 2.000000e+00
  %i.acu = sub nuw nsw i64 %indvars.iv69.i262, %i.gm
  %i.acv = mul nsw i64 %i.acu, %i.cw
  %i.acw = getelementptr inbounds [4 x i8], ptr %i.uc, i64 %i.acv
  %i.acx = load float, ptr %i.acw, align 4, !tbaa !12
  %i.acy = fadd reassoc nsz arcp contract afn float %i.act, %i.acx
  %i.acz = trunc nsw i64 %indvars.iv69.i262 to i32
  %i.ada = add i32 %i.gl, %i.acz
  %i.adb = sub i32 %invariant.op, %i.ada
  %i.adc = mul nsw i32 %i.adb, %i.cv
  %i.add = sext i32 %i.adc to i64
  %i.ade = getelementptr inbounds [4 x i8], ptr %i.uc, i64 %i.add
  %i.adf = load float, ptr %i.ade, align 4, !tbaa !12
  %i.adg = fadd reassoc nsz arcp contract afn float %i.acy, %i.adf
  %i.adh = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv69.i262
  store float %i.adg, ptr %i.adh, align 4, !tbaa !12
  %indvars.iv.next70.i263 = add nuw nsw i64 %indvars.iv69.i262, 1 ; 4 uses
  %i.adi = mul nsw i64 %indvars.iv.next70.i263, %i.cw
  %i.adj = getelementptr inbounds [4 x i8], ptr %i.uc, i64 %i.adi
  %i.adk = load float, ptr %i.adj, align 4, !tbaa !12
  %i.adl = fmul reassoc nsz arcp contract afn float %i.adk, 2.000000e+00
  %i.adm = sub nuw nsw i64 %indvars.iv.next70.i263, %i.gm
  %i.adn = mul nsw i64 %i.adm, %i.cw
  %i.ado = getelementptr inbounds [4 x i8], ptr %i.uc, i64 %i.adn
  %i.adp = load float, ptr %i.ado, align 4, !tbaa !12
  %i.adq = fadd reassoc nsz arcp contract afn float %i.adl, %i.adp
  %i.adr = trunc nsw i64 %indvars.iv.next70.i263 to i32
  %i.ads = add i32 %i.gl, %i.adr
  %i.adt = sub i32 %invariant.op, %i.ads
  %i.adu = mul nsw i32 %i.adt, %i.cv
  %i.adv = sext i32 %i.adu to i64
  %i.adw = getelementptr inbounds [4 x i8], ptr %i.uc, i64 %i.adv
  %i.adx = load float, ptr %i.adw, align 4, !tbaa !12
  %i.ady = fadd reassoc nsz arcp contract afn float %i.adq, %i.adx
  %i.adz = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next70.i263
  store float %i.ady, ptr %i.adz, align 4, !tbaa !12
  %indvars.iv.next70.i263.1 = add nuw nsw i64 %indvars.iv69.i262, 2 ; 2 uses
  %exitcond73.not.i264.1 = icmp eq i64 %indvars.iv.next70.i263.1, %i.cx
  br i1 %exitcond73.not.i264.1, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit278, label %vec.epilog.scalar.ph575, !llvm.loop !167

_ZN6LibRaw13hat_transformEPfS0_iii.exit278:       ; preds = %vec.epilog.scalar.ph575.prol.loopexit, %vec.epilog.scalar.ph575, %middle.block570, %vec.epilog.middle.block587, %.preheader.i257
  br i1 %.not339, label %._crit_edge312, label %iter.check507

iter.check507:                                    ; preds = %_ZN6LibRaw13hat_transformEPfS0_iii.exit278
  %i.aea = trunc nuw nsw i64 %indvars.iv362 to i32
  %i.aeb = add i32 %i.eu, %i.aea                  ; 9 uses
  br i1 %min.iters.check492, label %vec.epilog.scalar.ph508.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check507
  %i.aec = add i32 %i.aeb, %i.dx
  %i.aed = icmp slt i32 %i.aec, %i.aeb
  %.reass1010 = or i1 %i.aed, %invariant.op1009
  %.reass1012 = add i64 %i.ub, %invariant.op1011
  %diff.check = icmp ult i64 %.reass1012, 127
  %or.cond956 = select i1 %.reass1010, i1 true, i1 %diff.check
  br i1 %or.cond956, label %vec.epilog.scalar.ph508.preheader, label %vector.main.loop.iter.check493

vector.main.loop.iter.check493:                   ; preds = %vector.scevcheck
  br i1 %min.iters.check494, label %vec.epilog.ph511, label %vector.body497

vector.body497:                                   ; preds = %vector.main.loop.iter.check493, %vector.body497
  %index498 = phi i64 [ %index.next503, %vector.body497 ], [ 0, %vector.main.loop.iter.check493 ] ; 3 uses
  %i.aee = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index498 ; 4 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aee, i64 32
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aee, i64 64
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aee, i64 96
  %wide.load499 = load <8 x float>, ptr %i.aee, align 4, !tbaa !12
  %wide.load500 = load <8 x float>, ptr %i.aef, align 4, !tbaa !12
  %wide.load501 = load <8 x float>, ptr %i.aeg, align 4, !tbaa !12
  %wide.load502 = load <8 x float>, ptr %i.aeh, align 4, !tbaa !12
  %i.aei = fmul reassoc nsz arcp contract afn <8 x float> %wide.load499, splat (float 2.500000e-01)
  %i.aej = fmul reassoc nsz arcp contract afn <8 x float> %wide.load500, splat (float 2.500000e-01)
  %i.aek = fmul reassoc nsz arcp contract afn <8 x float> %wide.load501, splat (float 2.500000e-01)
  %i.ael = fmul reassoc nsz arcp contract afn <8 x float> %wide.load502, splat (float 2.500000e-01)
  %i.aem = trunc nuw nsw i64 %index498 to i32
  %i.aen = add i32 %i.aeb, %i.aem
  %i.aeo = sext i32 %i.aen to i64
  %i.aep = getelementptr inbounds [4 x i8], ptr %.0233, i64 %i.aeo ; 4 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aep, i64 32
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aep, i64 64
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aep, i64 96
  store <8 x float> %i.aei, ptr %i.aep, align 4, !tbaa !12
  store <8 x float> %i.aej, ptr %i.aeq, align 4, !tbaa !12
  store <8 x float> %i.aek, ptr %i.aer, align 4, !tbaa !12
  store <8 x float> %i.ael, ptr %i.aes, align 4, !tbaa !12
  %index.next503 = add nuw i64 %index498, 32      ; 2 uses
  %i.aet = icmp eq i64 %index.next503, %n.vec496
  br i1 %i.aet, label %middle.block504, label %vector.body497, !llvm.loop !168

middle.block504:                                  ; preds = %vector.body497
  br i1 %cmp.n505, label %._crit_edge312, label %vec.epilog.iter.check509

vec.epilog.iter.check509:                         ; preds = %middle.block504
  br i1 %min.epilog.iters.check510, label %vec.epilog.scalar.ph508.preheader, label %vec.epilog.ph511, !prof !83

vec.epilog.ph511:                                 ; preds = %vector.main.loop.iter.check493, %vec.epilog.iter.check509
  %vec.epilog.resume.val506 = phi i64 [ %n.vec496, %vec.epilog.iter.check509 ], [ 0, %vector.main.loop.iter.check493 ]
  br label %vec.epilog.vector.body513

vec.epilog.vector.body513:                        ; preds = %vec.epilog.vector.body513, %vec.epilog.ph511
  %index514 = phi i64 [ %vec.epilog.resume.val506, %vec.epilog.ph511 ], [ %index.next516, %vec.epilog.vector.body513 ] ; 3 uses
  %i.aeu = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index514
  %wide.load515 = load <4 x float>, ptr %i.aeu, align 4, !tbaa !12
  %i.aev = fmul reassoc nsz arcp contract afn <4 x float> %wide.load515, splat (float 2.500000e-01)
  %i.aew = trunc nuw nsw i64 %index514 to i32
  %i.aex = add i32 %i.aeb, %i.aew
  %i.aey = sext i32 %i.aex to i64
  %i.aez = getelementptr inbounds [4 x i8], ptr %.0233, i64 %i.aey
  store <4 x float> %i.aev, ptr %i.aez, align 4, !tbaa !12
  %index.next516 = add nuw i64 %index514, 4       ; 2 uses
  %i.afa = icmp eq i64 %index.next516, %n.vec512
  br i1 %i.afa, label %vec.epilog.middle.block517, label %vec.epilog.vector.body513, !llvm.loop !169

vec.epilog.middle.block517:                       ; preds = %vec.epilog.vector.body513
  br i1 %cmp.n518, label %._crit_edge312, label %vec.epilog.scalar.ph508.preheader

vec.epilog.scalar.ph508.preheader:                ; preds = %vector.scevcheck, %iter.check507, %vec.epilog.iter.check509, %vec.epilog.middle.block517
  %indvars.iv357.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %iter.check507 ], [ %n.vec496, %vec.epilog.iter.check509 ], [ %n.vec512, %vec.epilog.middle.block517 ] ; 3 uses
  br i1 %lcmp.mod982.not, label %vec.epilog.scalar.ph508.prol.loopexit, label %vec.epilog.scalar.ph508.prol

vec.epilog.scalar.ph508.prol:                     ; preds = %vec.epilog.scalar.ph508.preheader, %vec.epilog.scalar.ph508.prol
  %indvars.iv357.prol = phi i64 [ %indvars.iv.next358.prol, %vec.epilog.scalar.ph508.prol ], [ %indvars.iv357.ph, %vec.epilog.scalar.ph508.preheader ] ; 3 uses
  %prol.iter983 = phi i64 [ %prol.iter983.next, %vec.epilog.scalar.ph508.prol ], [ 0, %vec.epilog.scalar.ph508.preheader ]
  %i.afb = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv357.prol
  %i.afc = load float, ptr %i.afb, align 4, !tbaa !12
  %i.afd = fmul reassoc nsz arcp contract afn float %i.afc, 2.500000e-01
  %i.afe = mul nuw nsw i64 %indvars.iv357.prol, %i.cz
  %i.aff = trunc nuw nsw i64 %i.afe to i32
  %i.afg = add i32 %i.aeb, %i.aff
  %i.afh = sext i32 %i.afg to i64
  %i.afi = getelementptr inbounds [4 x i8], ptr %.0233, i64 %i.afh
  store float %i.afd, ptr %i.afi, align 4, !tbaa !12
  %indvars.iv.next358.prol = add nuw nsw i64 %indvars.iv357.prol, 1 ; 2 uses
  %prol.iter983.next = add i64 %prol.iter983, 1   ; 2 uses
  %prol.iter983.cmp.not = icmp eq i64 %prol.iter983.next, %xtraiter981
  br i1 %prol.iter983.cmp.not, label %vec.epilog.scalar.ph508.prol.loopexit, label %vec.epilog.scalar.ph508.prol, !llvm.loop !170

vec.epilog.scalar.ph508.prol.loopexit:            ; preds = %vec.epilog.scalar.ph508.prol, %vec.epilog.scalar.ph508.preheader
  %indvars.iv357.unr = phi i64 [ %indvars.iv357.ph, %vec.epilog.scalar.ph508.preheader ], [ %indvars.iv.next358.prol, %vec.epilog.scalar.ph508.prol ]
  %i.afj = sub nsw i64 %indvars.iv357.ph, %wide.trip.count355
  %i.afk = icmp ugt i64 %i.afj, -4
  br i1 %i.afk, label %._crit_edge312, label %vec.epilog.scalar.ph508

vec.epilog.scalar.ph508:                          ; preds = %vec.epilog.scalar.ph508.prol.loopexit, %vec.epilog.scalar.ph508
  %indvars.iv357 = phi i64 [ %indvars.iv.next358.3, %vec.epilog.scalar.ph508 ], [ %indvars.iv357.unr, %vec.epilog.scalar.ph508.prol.loopexit ] ; 6 uses
  %i.afl = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv357
  %i.afm = load float, ptr %i.afl, align 4, !tbaa !12
  %i.afn = fmul reassoc nsz arcp contract afn float %i.afm, 2.500000e-01
  %i.afo = mul nuw nsw i64 %indvars.iv357, %i.cz
  %i.afp = trunc nuw nsw i64 %i.afo to i32
  %i.afq = add i32 %i.aeb, %i.afp
  %i.afr = sext i32 %i.afq to i64
  %i.afs = getelementptr inbounds [4 x i8], ptr %.0233, i64 %i.afr
  store float %i.afn, ptr %i.afs, align 4, !tbaa !12
  %indvars.iv.next358 = add nuw nsw i64 %indvars.iv357, 1 ; 2 uses
  %i.aft = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next358
  %i.afu = load float, ptr %i.aft, align 4, !tbaa !12
  %i.afv = fmul reassoc nsz arcp contract afn float %i.afu, 2.500000e-01
  %i.afw = mul nuw nsw i64 %indvars.iv.next358, %i.cz
  %i.afx = trunc nuw nsw i64 %i.afw to i32
  %i.afy = add i32 %i.aeb, %i.afx
  %i.afz = sext i32 %i.afy to i64
  %i.aga = getelementptr inbounds [4 x i8], ptr %.0233, i64 %i.afz
  store float %i.afv, ptr %i.aga, align 4, !tbaa !12
  %indvars.iv.next358.1 = add nuw nsw i64 %indvars.iv357, 2 ; 2 uses
  %i.agb = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next358.1
  %i.agc = load float, ptr %i.agb, align 4, !tbaa !12
  %i.agd = fmul reassoc nsz arcp contract afn float %i.agc, 2.500000e-01
  %i.age = mul nuw nsw i64 %indvars.iv.next358.1, %i.cz
  %i.agf = trunc nuw nsw i64 %i.age to i32
  %i.agg = add i32 %i.aeb, %i.agf
  %i.agh = sext i32 %i.agg to i64
  %i.agi = getelementptr inbounds [4 x i8], ptr %.0233, i64 %i.agh
  store float %i.agd, ptr %i.agi, align 4, !tbaa !12
  %indvars.iv.next358.2 = add nuw nsw i64 %indvars.iv357, 3 ; 2 uses
  %i.agj = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next358.2
  %i.agk = load float, ptr %i.agj, align 4, !tbaa !12
  %i.agl = fmul reassoc nsz arcp contract afn float %i.agk, 2.500000e-01
  %i.agm = mul nuw nsw i64 %indvars.iv.next358.2, %i.cz
  %i.agn = trunc nuw nsw i64 %i.agm to i32
  %i.ago = add i32 %i.aeb, %i.agn
  %i.agp = sext i32 %i.ago to i64
  %i.agq = getelementptr inbounds [4 x i8], ptr %.0233, i64 %i.agp
  store float %i.agl, ptr %i.agq, align 4, !tbaa !12
  %indvars.iv.next358.3 = add nuw nsw i64 %indvars.iv357, 4 ; 2 uses
  %exitcond361.not.3 = icmp eq i64 %indvars.iv.next358.3, %wide.trip.count360
  br i1 %exitcond361.not.3, label %._crit_edge312, label %vec.epilog.scalar.ph508, !llvm.loop !171

._crit_edge312:                                   ; preds = %vec.epilog.scalar.ph508.prol.loopexit, %vec.epilog.scalar.ph508, %middle.block504, %vec.epilog.middle.block517, %_ZN6LibRaw13hat_transformEPfS0_iii.exit278
  %indvars.iv.next363 = add nuw nsw i64 %indvars.iv362, 1 ; 2 uses
  %exitcond366.not = icmp eq i64 %indvars.iv.next363, %wide.trip.count365
  br i1 %exitcond366.not, label %iter.check, label %iter.check689, !llvm.loop !172

iter.check:                                       ; preds = %._crit_edge312, %.preheader292
  %i.agr = load float, ptr %i.as, align 4, !tbaa !212
  %i.ags = getelementptr inbounds nuw [4 x i8], ptr @_ZZN6LibRaw15wavelet_denoiseEvE5noise, i64 %indvars.iv372
  %i.agt = load float, ptr %i.ags, align 4, !tbaa !12
  %i.agu = fmul reassoc nsz arcp contract afn float %i.agt, %i.agr ; 12 uses
  %i.agv = fneg reassoc nsz arcp contract afn float %i.agu ; 5 uses
  %.not254 = icmp ne i32 %.0229318, 0             ; 5 uses
  %i.agw = sext i32 %i.eu to i64                  ; 3 uses
  %i.agx = sext i32 %.0229318 to i64              ; 2 uses
  %invariant.gep432 = getelementptr [4 x i8], ptr %.0233, i64 %i.agw ; 7 uses
  %invariant.gep434 = getelementptr [4 x i8], ptr %.0233, i64 %i.agx ; 7 uses
  br i1 %min.iters.check458, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.agy = shl nsw i64 %i.agx, 2
  %scevgep447 = getelementptr i8, ptr %scevgep, i64 %i.agy ; 2 uses
  %i.agz = shl nsw i64 %i.agw, 2
  %scevgep449 = getelementptr i8, ptr %scevgep448, i64 %i.agz ; 2 uses
  %bound0 = icmp ult ptr %invariant.gep434, %scevgep
  %bound1 = icmp ult ptr %.0233, %scevgep447
  %found.conflict = and i1 %bound0, %bound1
  %bound0450 = icmp ult ptr %invariant.gep434, %scevgep449
  %bound1451 = icmp ult ptr %invariant.gep432, %scevgep447
  %found.conflict452 = and i1 %bound0450, %bound1451
  %conflict.rdx = or i1 %found.conflict, %found.conflict452
  %bound0453 = icmp ult ptr %.0233, %scevgep449
  %bound1454 = icmp ult ptr %invariant.gep432, %scevgep
  %found.conflict455 = and i1 %bound0453, %bound1454
  %conflict.rdx456 = or i1 %conflict.rdx, %found.conflict455
end_hunk_2
