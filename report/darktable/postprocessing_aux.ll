Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/postprocessing_aux?download=true
inline.NumInlined: 12
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN6LibRaw13hat_transformEPfS0_iii:bb.a
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.aw = mul nsw i64 %indvars.iv.ph, %i.d
  %i.ax = getelementptr inbounds [4 x i8], ptr %2, i64 %i.aw
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !11
  %i.az = fmul reassoc nsz arcp contract afn float %i.ay, 2.000000e+00
  %i.ba = sub nuw nsw i64 %i.e, %indvars.iv.ph
  %i.bb = mul nsw i64 %i.ba, %i.d
  %i.bc = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bb
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !11
  %i.be = fadd reassoc nsz arcp contract afn float %i.az, %i.bd
  %i.bf = add nuw nsw i64 %indvars.iv.ph, %i.e
  %i.bg = mul nsw i64 %i.bf, %i.d
  %i.bh = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bg
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !11
  %i.bj = fadd reassoc nsz arcp contract afn float %i.be, %i.bi
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.ph
  store float %i.bj, ptr %i.bk, align 4, !tbaa !11
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.bl = add nsw i64 %wide.trip.count, -1
  %i.bm = icmp eq i64 %indvars.iv.ph, %i.bl
  br i1 %i.bm, label %.preheader53, label %.lr.ph

.preheader53:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %5, %middle.block ], [ %5, %vec.epilog.middle.block ], [ %5, %.lr.ph ], [ %5, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.bn = add nsw i32 %.0.lcssa, %5
  %i.bo = icmp slt i32 %i.bn, %4
  br i1 %i.bo, label %iter.check130, label %.preheader

iter.check130:                                    ; preds = %.preheader53
  %i.bp = sext i32 %5 to i64                      ; 6 uses
  %i.bq = zext nneg i32 %.0.lcssa to i64          ; 9 uses
  %i.br = add nsw i64 %i.bp, %i.bq                ; 6 uses
  %i.bs = sext i32 %3 to i64                      ; 3 uses
  %i.bt = sext i32 %4 to i64
  %invariant.op = sub nsw i64 %i.bt, %i.bp        ; 2 uses
  %i.bu = add nuw nsw i64 %i.bq, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op, i64 %i.bu)
  %i.bv = sub nsw i64 %smax, %i.bq                ; 7 uses
  %min.iters.check111 = icmp ugt i64 %i.bv, 3
  %ident.check105.not = icmp eq i32 %3, 1
  %or.cond212 = and i1 %min.iters.check111, %ident.check105.not
  br i1 %or.cond212, label %vector.memcheck106, label %.lr.ph56.preheader

vector.memcheck106:                               ; preds = %iter.check130
  %i.bw = shl nsw i64 %i.bp, 2                    ; 2 uses
  %i.bx = add i64 %i.bw, %i.a
  %i.by = sub i64 %i.bx, %i.b
  %diff.check = icmp ugt i64 %i.by, -64
  %i.bz = add i64 %i.bw, %i.b
  %i.ca = sub i64 %i.a, %i.bz
  %diff.check107 = icmp ugt i64 %i.ca, -64
  %conflict.rdx108 = or i1 %diff.check, %diff.check107
  %i.cb = sub i64 %i.a, %i.b
  %diff.check109 = icmp ugt i64 %i.cb, -64
  %conflict.rdx110 = or i1 %conflict.rdx108, %diff.check109
  br i1 %conflict.rdx110, label %.lr.ph56.preheader, label %vector.main.loop.iter.check112

vector.main.loop.iter.check112:                   ; preds = %vector.memcheck106
  %min.iters.check113 = icmp ult i64 %i.bv, 16
  br i1 %min.iters.check113, label %vec.epilog.ph134, label %vector.ph114

vector.ph114:                                     ; preds = %vector.main.loop.iter.check112
  %i.cc = and i64 %i.bv, 12
  %n.vec115 = and i64 %i.bv, -16                  ; 5 uses
  %i.cd = add i64 %n.vec115, %i.bq                ; 2 uses
  %i.ce = add i64 %i.br, %n.vec115
  %i.cf = getelementptr [4 x i8], ptr %2, i64 %i.br
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
  %i.do = sub nuw nsw i64 %i.e, %indvars.iv
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
  %i.ed = sub nuw nsw i64 %i.e, %indvars.iv.next
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
end_hunk_0
