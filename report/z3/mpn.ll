Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/mpn?download=true
inline.NumInlined: 115
inline.NumDeleted: 25
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZNK11mpn_manager13div_normalizeEPKjjS1_jR7sbufferIjLj16EES4_:bb.a
  store <4 x i32> %wide.load225, ptr %i.ds, align 4, !tbaa !13
  %index.next226 = add nuw i64 %index223, 8       ; 2 uses
  %i.dt = icmp eq i64 %index.next226, %n.vec221
  br i1 %i.dt, label %middle.block227, label %vector.body222, !llvm.loop !51

middle.block227:                                  ; preds = %vector.body222
  %cmp.n228 = icmp eq i64 %n.vec221, %wide.trip.count126
  br i1 %cmp.n228, label %.loopexit, label %scalar.ph218.preheader

scalar.ph218.preheader:                           ; preds = %.lr.ph111, %middle.block227
  %indvars.iv122.ph = phi i64 [ 0, %.lr.ph111 ], [ %n.vec221, %middle.block227 ] ; 3 uses
  %xtraiter248 = and i64 %wide.trip.count126, 3   ; 2 uses
  %lcmp.mod249.not = icmp eq i64 %xtraiter248, 0
  br i1 %lcmp.mod249.not, label %scalar.ph218.prol.loopexit, label %scalar.ph218.prol

scalar.ph218.prol:                                ; preds = %scalar.ph218.preheader, %scalar.ph218.prol
  %indvars.iv122.prol = phi i64 [ %indvars.iv.next123.prol, %scalar.ph218.prol ], [ %indvars.iv122.ph, %scalar.ph218.preheader ] ; 3 uses
  %prol.iter250 = phi i64 [ %prol.iter250.next, %scalar.ph218.prol ], [ 0, %scalar.ph218.preheader ]
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv122.prol
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !13
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv122.prol
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !13
  %indvars.iv.next123.prol = add nuw nsw i64 %indvars.iv122.prol, 1 ; 2 uses
  %prol.iter250.next = add i64 %prol.iter250, 1   ; 2 uses
  %prol.iter250.cmp.not = icmp eq i64 %prol.iter250.next, %xtraiter248
  br i1 %prol.iter250.cmp.not, label %scalar.ph218.prol.loopexit, label %scalar.ph218.prol, !llvm.loop !52

scalar.ph218.prol.loopexit:                       ; preds = %scalar.ph218.prol, %scalar.ph218.preheader
  %indvars.iv122.unr = phi i64 [ %indvars.iv122.ph, %scalar.ph218.preheader ], [ %indvars.iv.next123.prol, %scalar.ph218.prol ]
  %i.dx = sub nsw i64 %indvars.iv122.ph, %wide.trip.count126
  %i.dy = icmp ugt i64 %i.dx, -4
  br i1 %i.dy, label %.loopexit, label %scalar.ph218

.lr.ph109:                                        ; preds = %.lr.ph109.prol.loopexit, %.lr.ph109
  %indvars.iv118 = phi i64 [ %indvars.iv.next119.3, %.lr.ph109 ], [ %indvars.iv118.unr, %.lr.ph109.prol.loopexit ] ; 6 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv118
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !13
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv118
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !13
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next119
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !13
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv.next119
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !13
  %indvars.iv.next119.1 = add nuw nsw i64 %indvars.iv118, 2 ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next119.1
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !13
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv.next119.1
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !13
  %indvars.iv.next119.2 = add nuw nsw i64 %indvars.iv118, 3 ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next119.2
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !13
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv.next119.2
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !13
  %indvars.iv.next119.3 = add nuw nsw i64 %indvars.iv118, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next119.3, %i.cy
  br i1 %exitcond.not.3, label %.preheader, label %.lr.ph109, !llvm.loop !53

scalar.ph218:                                     ; preds = %scalar.ph218.prol.loopexit, %scalar.ph218
  %indvars.iv122 = phi i64 [ %indvars.iv.next123.3, %scalar.ph218 ], [ %indvars.iv122.unr, %scalar.ph218.prol.loopexit ] ; 6 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv122
  %i.em = load i32, ptr %i.el, align 4, !tbaa !13
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv122
  store i32 %i.em, ptr %i.en, align 4, !tbaa !13
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next123
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !13
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv.next123
  store i32 %i.ep, ptr %i.eq, align 4, !tbaa !13
  %indvars.iv.next123.1 = add nuw nsw i64 %indvars.iv122, 2 ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next123.1
  %i.es = load i32, ptr %i.er, align 4, !tbaa !13
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv.next123.1
  store i32 %i.es, ptr %i.et, align 4, !tbaa !13
  %indvars.iv.next123.2 = add nuw nsw i64 %indvars.iv122, 3 ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next123.2
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !13
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv.next123.2
  store i32 %i.ev, ptr %i.ew, align 4, !tbaa !13
  %indvars.iv.next123.3 = add nuw nsw i64 %indvars.iv122, 4 ; 2 uses
  %exitcond127.not.3 = icmp eq i64 %indvars.iv.next123.3, %wide.trip.count126
  br i1 %exitcond127.not.3, label %.loopexit, label %scalar.ph218, !llvm.loop !54

bb.l:                                             ; preds = %_ZN6bufferIjLb0ELj16EE6resizeEjRKj.exit91
  %.not67 = icmp eq i32 %2, 0
  br i1 %.not67, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ex = add i32 %2, -1                          ; 2 uses
  %i.ey = zext i32 %i.ex to i64                   ; 8 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !13
  %i.fb = sub i32 32, %.064.lcssa                 ; 9 uses
  %i.fc = lshr i32 %i.fa, %i.fb
  %i.fd = load ptr, ptr %5, align 8, !tbaa !21    ; 8 uses
  %i.fe = zext i32 %2 to i64
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.fe
  store i32 %i.fc, ptr %i.ff, align 4, !tbaa !13
  %.not6897 = icmp eq i32 %i.ex, 0
  br i1 %.not6897, label %._crit_edge, label %.lr.ph99.preheader

.lr.ph99.preheader:                               ; preds = %bb.m
  %min.iters.check163 = icmp ult i32 %2, 9
  br i1 %min.iters.check163, label %.lr.ph99.preheader235, label %vector.memcheck164

vector.memcheck164:                               ; preds = %.lr.ph99.preheader
  %i.fg = getelementptr i8, ptr %i.fd, i64 4
  %i.fh = shl nuw nsw i64 %i.ey, 2
  %i.fi = add nuw nsw i64 %i.fh, 4                ; 2 uses
  %i.fj = getelementptr i8, ptr %i.fd, i64 %i.fi
  %i.fk = getelementptr i8, ptr %1, i64 %i.fi
  %bound0 = icmp ult ptr %i.fg, %i.fk
  %bound1 = icmp ult ptr %1, %i.fj
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph99.preheader235, label %vector.ph165

vector.ph165:                                     ; preds = %vector.memcheck164
  %n.vec166 = and i64 %i.ey, 4294967288           ; 2 uses
  %i.fl = and i64 %i.ey, 7
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.064.lcssa, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert167 = insertelement <4 x i32> poison, i32 %i.fb, i64 0
  %broadcast.splat168 = shufflevector <4 x i32> %broadcast.splatinsert167, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body169

vector.body169:                                   ; preds = %vector.body169, %vector.ph165
  %index170 = phi i64 [ 0, %vector.ph165 ], [ %index.next175, %vector.body169 ] ; 2 uses
  %i.fm = sub i64 %i.ey, %index170                ; 3 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fm ; 2 uses
  %i.fo = getelementptr inbounds i8, ptr %i.fn, i64 -12
  %i.fp = getelementptr inbounds i8, ptr %i.fn, i64 -28
  %wide.load171 = load <4 x i32>, ptr %i.fo, align 4, !tbaa !13, !alias.scope !62
  %wide.load172 = load <4 x i32>, ptr %i.fp, align 4, !tbaa !13, !alias.scope !62
  %i.fq = shl <4 x i32> %wide.load171, %broadcast.splat
  %i.fr = shl <4 x i32> %wide.load172, %broadcast.splat
  %i.fs = getelementptr [4 x i8], ptr %1, i64 %i.fm ; 2 uses
  %i.ft = getelementptr i8, ptr %i.fs, i64 -16
  %i.fu = getelementptr i8, ptr %i.fs, i64 -32
  %wide.load173 = load <4 x i32>, ptr %i.ft, align 4, !tbaa !13, !alias.scope !62
  %wide.load174 = load <4 x i32>, ptr %i.fu, align 4, !tbaa !13, !alias.scope !62
  %i.fv = lshr <4 x i32> %wide.load173, %broadcast.splat168
  %i.fw = lshr <4 x i32> %wide.load174, %broadcast.splat168
  %i.fx = or disjoint <4 x i32> %i.fv, %i.fq
  %i.fy = or disjoint <4 x i32> %i.fw, %i.fr
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.fm ; 2 uses
  %i.ga = getelementptr inbounds i8, ptr %i.fz, i64 -12
  %i.gb = getelementptr inbounds i8, ptr %i.fz, i64 -28
  store <4 x i32> %i.fx, ptr %i.ga, align 4, !tbaa !13, !alias.scope !63, !noalias !62
  store <4 x i32> %i.fy, ptr %i.gb, align 4, !tbaa !13, !alias.scope !63, !noalias !62
  %index.next175 = add nuw i64 %index170, 8       ; 2 uses
  %i.gc = icmp eq i64 %index.next175, %n.vec166
  br i1 %i.gc, label %middle.block176, label %vector.body169, !llvm.loop !58

middle.block176:                                  ; preds = %vector.body169
  %cmp.n177 = icmp eq i64 %n.vec166, %i.ey
  br i1 %cmp.n177, label %._crit_edge, label %.lr.ph99.preheader235

.lr.ph99.preheader235:                            ; preds = %vector.memcheck164, %.lr.ph99.preheader, %middle.block176
  %indvars.iv.ph = phi i64 [ %i.ey, %vector.memcheck164 ], [ %i.ey, %.lr.ph99.preheader ], [ %i.fl, %middle.block176 ] ; 6 uses
  %xtraiter239 = and i64 %indvars.iv.ph, 1
  %lcmp.mod240.not = icmp eq i64 %xtraiter239, 0
  br i1 %lcmp.mod240.not, label %.lr.ph99.prol.loopexit, label %.lr.ph99.prol

.lr.ph99.prol:                                    ; preds = %.lr.ph99.preheader235
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.ph
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !13
  %i.gf = shl i32 %i.ge, %.064.lcssa
  %i.gg = add nsw i64 %indvars.iv.ph, -1          ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gg
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !13
  %i.gj = lshr i32 %i.gi, %i.fb
  %i.gk = or disjoint i32 %i.gj, %i.gf
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv.ph
  store i32 %i.gk, ptr %i.gl, align 4, !tbaa !13
  br label %.lr.ph99.prol.loopexit

.lr.ph99.prol.loopexit:                           ; preds = %.lr.ph99.prol, %.lr.ph99.preheader235
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph99.preheader235 ], [ %i.gg, %.lr.ph99.prol ]
  %i.gm = icmp eq i64 %indvars.iv.ph, 1
  br i1 %i.gm, label %._crit_edge, label %.lr.ph99

._crit_edge:                                      ; preds = %.lr.ph99.prol.loopexit, %.lr.ph99, %middle.block176, %bb.m
  %i.gn = load i32, ptr %1, align 4, !tbaa !13
  %i.go = shl i32 %i.gn, %.064.lcssa
  store i32 %i.go, ptr %i.fd, align 4, !tbaa !13
  %.0100 = add i32 %4, -1                         ; 3 uses
  %.not69101 = icmp eq i32 %.0100, 0
  %.pre = load ptr, ptr %6, align 8, !tbaa !21    ; 6 uses
  %.pre180 = ptrtoaddr ptr %.pre to i64           ; 2 uses
  br i1 %.not69101, label %._crit_edge106, label %.lr.ph105

.lr.ph105:                                        ; preds = %._crit_edge
  %i.gp = zext i32 %.0100 to i64                  ; 7 uses
  %min.iters.check184 = icmp ult i32 %.0100, 12
  br i1 %min.iters.check184, label %scalar.ph183.preheader, label %vector.memcheck179

vector.memcheck179:                               ; preds = %.lr.ph105
  %i.gq = add i32 %4, -2
  %i.gr = zext i32 %i.gq to i64
  %i.gs = shl nuw nsw i64 %i.gr, 2
  %7 = add i64 %i.gs, %i.b
  %8 = shl nuw nsw i64 %i.gp, 2
  %i.gt = add i64 %8, %.pre180
  %i.gu = sub i64 %i.gt, %7
  %diff.check181 = icmp ugt i64 %i.gu, -32
  %i.gv = sub i64 %.pre180, %i.b
  %diff.check182 = icmp ugt i64 %i.gv, -32
  %conflict.rdx = or i1 %diff.check181, %diff.check182
  br i1 %conflict.rdx, label %scalar.ph183.preheader, label %vector.ph185

vector.ph185:                                     ; preds = %vector.memcheck179
  %n.vec186 = and i64 %i.gp, 4294967288           ; 3 uses
  %i.gw = and i64 %i.gp, 7
  %i.gx = trunc nuw i64 %n.vec186 to i32
  %i.gy = sub i32 %4, %i.gx
  %broadcast.splatinsert187 = insertelement <4 x i32> poison, i32 %.064.lcssa, i64 0
  %broadcast.splat188 = shufflevector <4 x i32> %broadcast.splatinsert187, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert189 = insertelement <4 x i32> poison, i32 %i.fb, i64 0
  %broadcast.splat190 = shufflevector <4 x i32> %broadcast.splatinsert189, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body191

vector.body191:                                   ; preds = %vector.body191, %vector.ph185
  %index192 = phi i64 [ 0, %vector.ph185 ], [ %index.next197, %vector.body191 ] ; 3 uses
  %i.gz = sub i64 %i.gp, %index192                ; 2 uses
  %i.ha = trunc i64 %index192 to i32
  %i.hb = sub i32 %4, %i.ha
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.gz ; 2 uses
  %i.hd = getelementptr inbounds i8, ptr %i.hc, i64 -12
  %i.he = getelementptr inbounds i8, ptr %i.hc, i64 -28
  %wide.load193 = load <4 x i32>, ptr %i.hd, align 4, !tbaa !13
  %wide.load194 = load <4 x i32>, ptr %i.he, align 4, !tbaa !13
  %i.hf = shl <4 x i32> %wide.load193, %broadcast.splat188
  %i.hg = shl <4 x i32> %wide.load194, %broadcast.splat188
  %i.hh = add i32 %i.hb, -2
  %i.hi = zext i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.hi ; 2 uses
  %i.hk = getelementptr inbounds i8, ptr %i.hj, i64 -12
  %i.hl = getelementptr inbounds i8, ptr %i.hj, i64 -28
  %wide.load195 = load <4 x i32>, ptr %i.hk, align 4, !tbaa !13
  %wide.load196 = load <4 x i32>, ptr %i.hl, align 4, !tbaa !13
  %i.hm = lshr <4 x i32> %wide.load195, %broadcast.splat190
  %i.hn = lshr <4 x i32> %wide.load196, %broadcast.splat190
  %i.ho = or disjoint <4 x i32> %i.hm, %i.hf
  %i.hp = or disjoint <4 x i32> %i.hn, %i.hg
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.gz ; 2 uses
  %i.hr = getelementptr inbounds i8, ptr %i.hq, i64 -12
  %i.hs = getelementptr inbounds i8, ptr %i.hq, i64 -28
  store <4 x i32> %i.ho, ptr %i.hr, align 4, !tbaa !13
  store <4 x i32> %i.hp, ptr %i.hs, align 4, !tbaa !13
  %index.next197 = add nuw i64 %index192, 8       ; 2 uses
  %i.ht = icmp eq i64 %index.next197, %n.vec186
  br i1 %i.ht, label %middle.block198, label %vector.body191, !llvm.loop !59

middle.block198:                                  ; preds = %vector.body191
  %cmp.n199 = icmp eq i64 %n.vec186, %i.gp
  br i1 %cmp.n199, label %._crit_edge106, label %scalar.ph183.preheader

scalar.ph183.preheader:                           ; preds = %vector.memcheck179, %.lr.ph105, %middle.block198
  %indvars.iv115.ph = phi i64 [ %i.gp, %vector.memcheck179 ], [ %i.gp, %.lr.ph105 ], [ %i.gw, %middle.block198 ] ; 7 uses
  %.0.in102.ph = phi i32 [ %4, %vector.memcheck179 ], [ %4, %.lr.ph105 ], [ %i.gy, %middle.block198 ] ; 2 uses
  %i.hu = trunc nuw i64 %indvars.iv115.ph to i32
  %xtraiter242 = and i32 %i.hu, 1
  %lcmp.mod243.not = icmp eq i32 %xtraiter242, 0
  br i1 %lcmp.mod243.not, label %scalar.ph183.prol.loopexit, label %scalar.ph183.prol

scalar.ph183.prol:                                ; preds = %scalar.ph183.preheader
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv115.ph
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !13
  %i.hx = shl i32 %i.hw, %.064.lcssa
  %i.hy = add i32 %.0.in102.ph, -2
  %i.hz = zext i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !13
  %i.ic = lshr i32 %i.ib, %i.fb
  %i.id = or disjoint i32 %i.ic, %i.hx
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv115.ph
  store i32 %i.id, ptr %i.ie, align 4, !tbaa !13
  %indvars.iv.next116.prol = add nsw i64 %indvars.iv115.ph, -1
  %i.if = trunc nuw i64 %indvars.iv115.ph to i32
  br label %scalar.ph183.prol.loopexit

scalar.ph183.prol.loopexit:                       ; preds = %scalar.ph183.prol, %scalar.ph183.preheader
  %indvars.iv115.unr = phi i64 [ %indvars.iv115.ph, %scalar.ph183.preheader ], [ %indvars.iv.next116.prol, %scalar.ph183.prol ]
  %.0.in102.unr = phi i32 [ %.0.in102.ph, %scalar.ph183.preheader ], [ %i.if, %scalar.ph183.prol ]
  %i.ig = icmp eq i64 %indvars.iv115.ph, 1
  br i1 %i.ig, label %._crit_edge106, label %scalar.ph183

.lr.ph99:                                         ; preds = %.lr.ph99.prol.loopexit, %.lr.ph99
  %indvars.iv = phi i64 [ %i.it, %.lr.ph99 ], [ %indvars.iv.unr, %.lr.ph99.prol.loopexit ] ; 4 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !13
  %i.ij = shl i32 %i.ii, %.064.lcssa
  %i.ik = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ik
  %i.im = load i32, ptr %i.il, align 4, !tbaa !13
  %i.in = lshr i32 %i.im, %i.fb
  %i.io = or disjoint i32 %i.in, %i.ij
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv
  store i32 %i.io, ptr %i.ip, align 4, !tbaa !13
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ik
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !13
  %i.is = shl i32 %i.ir, %.064.lcssa
  %i.it = add nsw i64 %indvars.iv, -2             ; 3 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.it
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !13
  %i.iw = lshr i32 %i.iv, %i.fb
  %i.ix = or disjoint i32 %i.iw, %i.is
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.ik
  store i32 %i.ix, ptr %i.iy, align 4, !tbaa !13
  %.not68.wide.1 = icmp eq i64 %i.it, 0
  br i1 %.not68.wide.1, label %._crit_edge, label %.lr.ph99, !llvm.loop !60

._crit_edge106:                                   ; preds = %scalar.ph183.prol.loopexit, %scalar.ph183, %middle.block198, %._crit_edge
  %i.iz = load i32, ptr %3, align 4, !tbaa !13
  %i.ja = shl i32 %i.iz, %.064.lcssa
  store i32 %i.ja, ptr %.pre, align 4, !tbaa !13
  br label %.loopexit

scalar.ph183:                                     ; preds = %scalar.ph183.prol.loopexit, %scalar.ph183
  %indvars.iv115 = phi i64 [ %indvars.iv.next116.1, %scalar.ph183 ], [ %indvars.iv115.unr, %scalar.ph183.prol.loopexit ] ; 5 uses
  %.0.in102 = phi i32 [ %i.jw, %scalar.ph183 ], [ %.0.in102.unr, %scalar.ph183.prol.loopexit ]
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv115
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !13
  %i.jd = shl i32 %i.jc, %.064.lcssa
  %i.je = add i32 %.0.in102, -2
  %i.jf = zext i32 %i.je to i64
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.jf
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !13
  %i.ji = lshr i32 %i.jh, %i.fb
  %i.jj = or disjoint i32 %i.ji, %i.jd
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv115
  store i32 %i.jj, ptr %i.jk, align 4, !tbaa !13
  %indvars.iv.next116 = add nsw i64 %indvars.iv115, -1 ; 3 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next116
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !13
  %i.jn = shl i32 %i.jm, %.064.lcssa
  %i.jo = add i64 %indvars.iv115, 4294967294
  %i.jp = and i64 %i.jo, 4294967295
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.jp
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !13
  %i.js = lshr i32 %i.jr, %i.fb
  %i.jt = or disjoint i32 %i.js, %i.jn
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv.next116
  store i32 %i.jt, ptr %i.ju, align 4, !tbaa !13
  %indvars.iv.next116.1 = add nsw i64 %indvars.iv115, -2 ; 2 uses
  %i.jv = and i64 %indvars.iv.next116.1, 4294967295
  %.not69.1 = icmp eq i64 %i.jv, 0
  %i.jw = trunc nuw i64 %indvars.iv.next116 to i32
  br i1 %.not69.1, label %._crit_edge106, label %scalar.ph183, !llvm.loop !61

.loopexit:                                        ; preds = %scalar.ph218.prol.loopexit, %scalar.ph218, %middle.block227, %.preheader, %bb.l, %._crit_edge106
  %.1 = phi i32 [ 0, %bb.l ], [ %.064.lcssa, %._crit_edge106 ], [ 0, %.preheader ], [ 0, %middle.block227 ], [ 0, %scalar.ph218 ], [ 0, %scalar.ph218.prol.loopexit ]
  ret i32 %.1
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK11mpn_manager5div_1ER7sbufferIjLj16EEjPj(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %.031 = add i32 %i.b, -1                        ; 2 uses
  %.not32 = icmp eq i32 %.031, 0
  br i1 %.not32, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = zext i32 %2 to i64                       ; 3 uses
  %i.d = zext i32 %.031 to i64
  %.pre = load ptr, ptr %1, align 8, !tbaa !21
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret i1 true

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.e = phi ptr [ %.pre, %.lr.ph ], [ %i.r, %bb.f ] ; 3 uses
  %indvars.iv = phi i64 [ %i.d, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 4 uses
  %.0.in33 = phi i32 [ %i.b, %.lr.ph ], [ %i.af, %bb.f ]
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load i32, ptr %i.f, align 4, !tbaa !13
  %i.h = zext i32 %i.g to i64
  %i.i = shl nuw i64 %i.h, 32
  %i.j = add i32 %.0.in33, -2
  %i.k = zext i32 %i.j to i64                     ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !13
  %i.n = zext i32 %i.m to i64
  %i.o = or disjoint i64 %i.i, %i.n               ; 3 uses
  %i.p = udiv i64 %i.o, %i.c                      ; 3 uses
  %.recomposed = urem i64 %i.o, %i.c              ; 2 uses
  %i.q = icmp ugt i64 %i.p, 4294967295
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.5, i32 noundef 260, ptr noundef nonnull @.str.6)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  %.pre36 = load ptr, ptr %1, align 8, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = phi ptr [ %.pre36, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.s = mul i64 %i.p, %i.c
  %i.t = icmp ugt i64 %i.s, %i.o
end_hunk_0
