Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/mpn?download=true
inline.NumInlined: 115
inline.NumDeleted: 25
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZNK11mpn_manager13div_normalizeEPKjjS1_jR7sbufferIjLj16EES4_:bb.a
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %index235 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store <4 x i32> %wide.load236, ptr %i.dr, align 4, !tbaa !13
  store <4 x i32> %wide.load237, ptr %i.ds, align 4, !tbaa !13
  %index.next238 = add nuw i64 %index235, 8       ; 2 uses
  %i.dt = icmp eq i64 %index.next238, %n.vec233
  br i1 %i.dt, label %middle.block239, label %vector.body234, !llvm.loop !51

middle.block239:                                  ; preds = %vector.body234
  %cmp.n240 = icmp eq i64 %n.vec233, %wide.trip.count126
  br i1 %cmp.n240, label %.loopexit, label %scalar.ph228.preheader

scalar.ph228.preheader:                           ; preds = %.lr.ph111, %middle.block239
  %indvars.iv122.ph = phi i64 [ 0, %.lr.ph111 ], [ %n.vec233, %middle.block239 ] ; 3 uses
  %xtraiter260 = and i64 %wide.trip.count126, 3   ; 2 uses
  %lcmp.mod261.not = icmp eq i64 %xtraiter260, 0
  br i1 %lcmp.mod261.not, label %scalar.ph228.prol.loopexit, label %scalar.ph228.prol

scalar.ph228.prol:                                ; preds = %scalar.ph228.preheader, %scalar.ph228.prol
  %indvars.iv122.prol = phi i64 [ %indvars.iv.next123.prol, %scalar.ph228.prol ], [ %indvars.iv122.ph, %scalar.ph228.preheader ] ; 3 uses
  %prol.iter262 = phi i64 [ %prol.iter262.next, %scalar.ph228.prol ], [ 0, %scalar.ph228.preheader ]
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv122.prol
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !13
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv122.prol
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !13
  %indvars.iv.next123.prol = add nuw nsw i64 %indvars.iv122.prol, 1 ; 2 uses
  %prol.iter262.next = add i64 %prol.iter262, 1   ; 2 uses
  %prol.iter262.cmp.not = icmp eq i64 %prol.iter262.next, %xtraiter260
  br i1 %prol.iter262.cmp.not, label %scalar.ph228.prol.loopexit, label %scalar.ph228.prol, !llvm.loop !52

scalar.ph228.prol.loopexit:                       ; preds = %scalar.ph228.prol, %scalar.ph228.preheader
  %indvars.iv122.unr = phi i64 [ %indvars.iv122.ph, %scalar.ph228.preheader ], [ %indvars.iv.next123.prol, %scalar.ph228.prol ]
  %i.dx = sub nsw i64 %indvars.iv122.ph, %wide.trip.count126
  %i.dy = icmp ugt i64 %i.dx, -4
  br i1 %i.dy, label %.loopexit, label %scalar.ph228

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

scalar.ph228:                                     ; preds = %scalar.ph228.prol.loopexit, %scalar.ph228
  %indvars.iv122 = phi i64 [ %indvars.iv.next123.3, %scalar.ph228 ], [ %indvars.iv122.unr, %scalar.ph228.prol.loopexit ] ; 6 uses
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
  br i1 %exitcond127.not.3, label %.loopexit, label %scalar.ph228, !llvm.loop !54

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
  %min.iters.check167 = icmp ult i32 %2, 9
  br i1 %min.iters.check167, label %.lr.ph99.preheader247, label %vector.memcheck168

vector.memcheck168:                               ; preds = %.lr.ph99.preheader
  %i.fg = getelementptr i8, ptr %i.fd, i64 4
  %i.fh = shl nuw nsw i64 %i.ey, 2
  %i.fi = add nuw nsw i64 %i.fh, 4                ; 2 uses
  %i.fj = getelementptr i8, ptr %i.fd, i64 %i.fi
  %i.fk = getelementptr i8, ptr %1, i64 %i.fi
  %bound0 = icmp ult ptr %i.fg, %i.fk
  %bound1 = icmp ult ptr %1, %i.fj
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph99.preheader247, label %vector.ph169

vector.ph169:                                     ; preds = %vector.memcheck168
  %n.vec170 = and i64 %i.ey, 4294967288           ; 2 uses
  %i.fl = and i64 %i.ey, 7
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.064.lcssa, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert171 = insertelement <4 x i32> poison, i32 %i.fb, i64 0
  %broadcast.splat172 = shufflevector <4 x i32> %broadcast.splatinsert171, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body173

vector.body173:                                   ; preds = %vector.body173, %vector.ph169
  %index174 = phi i64 [ 0, %vector.ph169 ], [ %index.next179, %vector.body173 ] ; 2 uses
  %i.fm = sub i64 %i.ey, %index174                ; 3 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fm ; 2 uses
  %i.fo = getelementptr inbounds i8, ptr %i.fn, i64 -12
  %i.fp = getelementptr inbounds i8, ptr %i.fn, i64 -28
  %wide.load175 = load <4 x i32>, ptr %i.fo, align 4, !tbaa !13, !alias.scope !62
  %wide.load176 = load <4 x i32>, ptr %i.fp, align 4, !tbaa !13, !alias.scope !62
  %i.fq = shl <4 x i32> %wide.load175, %broadcast.splat
  %i.fr = shl <4 x i32> %wide.load176, %broadcast.splat
  %i.fs = getelementptr [4 x i8], ptr %1, i64 %i.fm ; 2 uses
  %i.ft = getelementptr i8, ptr %i.fs, i64 -16
  %i.fu = getelementptr i8, ptr %i.fs, i64 -32
  %wide.load177 = load <4 x i32>, ptr %i.ft, align 4, !tbaa !13, !alias.scope !62
  %wide.load178 = load <4 x i32>, ptr %i.fu, align 4, !tbaa !13, !alias.scope !62
  %i.fv = lshr <4 x i32> %wide.load177, %broadcast.splat172
  %i.fw = lshr <4 x i32> %wide.load178, %broadcast.splat172
  %i.fx = or disjoint <4 x i32> %i.fv, %i.fq
  %i.fy = or disjoint <4 x i32> %i.fw, %i.fr
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.fm ; 2 uses
  %i.ga = getelementptr inbounds i8, ptr %i.fz, i64 -12
  %i.gb = getelementptr inbounds i8, ptr %i.fz, i64 -28
  store <4 x i32> %i.fx, ptr %i.ga, align 4, !tbaa !13, !alias.scope !63, !noalias !62
  store <4 x i32> %i.fy, ptr %i.gb, align 4, !tbaa !13, !alias.scope !63, !noalias !62
  %index.next179 = add nuw i64 %index174, 8       ; 2 uses
  %i.gc = icmp eq i64 %index.next179, %n.vec170
  br i1 %i.gc, label %middle.block180, label %vector.body173, !llvm.loop !58

middle.block180:                                  ; preds = %vector.body173
  %cmp.n181 = icmp eq i64 %n.vec170, %i.ey
  br i1 %cmp.n181, label %._crit_edge, label %.lr.ph99.preheader247

.lr.ph99.preheader247:                            ; preds = %vector.memcheck168, %.lr.ph99.preheader, %middle.block180
  %indvars.iv.ph = phi i64 [ %i.ey, %vector.memcheck168 ], [ %i.ey, %.lr.ph99.preheader ], [ %i.fl, %middle.block180 ] ; 6 uses
  %xtraiter251 = and i64 %indvars.iv.ph, 1
  %lcmp.mod252.not = icmp eq i64 %xtraiter251, 0
  br i1 %lcmp.mod252.not, label %.lr.ph99.prol.loopexit, label %.lr.ph99.prol

.lr.ph99.prol:                                    ; preds = %.lr.ph99.preheader247
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

.lr.ph99.prol.loopexit:                           ; preds = %.lr.ph99.prol, %.lr.ph99.preheader247
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph99.preheader247 ], [ %i.gg, %.lr.ph99.prol ]
  %i.gm = icmp eq i64 %indvars.iv.ph, 1
  br i1 %i.gm, label %._crit_edge, label %.lr.ph99

._crit_edge:                                      ; preds = %.lr.ph99.prol.loopexit, %.lr.ph99, %middle.block180, %bb.m
  %i.gn = load i32, ptr %1, align 4, !tbaa !13
  %i.go = shl i32 %i.gn, %.064.lcssa
  store i32 %i.go, ptr %i.fd, align 4, !tbaa !13
  %.0100 = add i32 %4, -1                         ; 3 uses
  %.not69101 = icmp eq i32 %.0100, 0
  %.pre = load ptr, ptr %6, align 8, !tbaa !21    ; 6 uses
  %.pre187 = ptrtoaddr ptr %.pre to i64           ; 2 uses
  br i1 %.not69101, label %._crit_edge106, label %.lr.ph105

.lr.ph105:                                        ; preds = %._crit_edge
  %i.gp = zext i32 %.0100 to i64                  ; 7 uses
  %min.iters.check189 = icmp ult i32 %.0100, 12
  br i1 %min.iters.check189, label %scalar.ph188.preheader, label %vector.memcheck190

vector.memcheck190:                               ; preds = %.lr.ph105
  %i.gq = add i32 %4, -2
  %i.gr = zext i32 %i.gq to i64
  %i.gs = shl nuw nsw i64 %i.gr, 2
  %i.gt = shl nuw nsw i64 %i.gp, 2
  %i.gu = add i64 %i.gs, %i.b
  %i.gv = add i64 %i.gt, %.pre187
  %7 = sub i64 %i.gv, %i.gu
  %diff.check191 = icmp ugt i64 %7, -32
  %i.gw = sub i64 %.pre187, %i.b
  %diff.check192 = icmp ugt i64 %i.gw, -32
  %conflict.rdx = or i1 %diff.check191, %diff.check192
  br i1 %conflict.rdx, label %scalar.ph188.preheader, label %vector.ph193

vector.ph193:                                     ; preds = %vector.memcheck190
  %n.vec194 = and i64 %i.gp, 4294967288           ; 3 uses
  %i.gx = and i64 %i.gp, 7
  %i.gy = trunc nuw i64 %n.vec194 to i32
  %i.gz = sub i32 %4, %i.gy
  %broadcast.splatinsert195 = insertelement <4 x i32> poison, i32 %.064.lcssa, i64 0
  %broadcast.splat196 = shufflevector <4 x i32> %broadcast.splatinsert195, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert197 = insertelement <4 x i32> poison, i32 %i.fb, i64 0
  %broadcast.splat198 = shufflevector <4 x i32> %broadcast.splatinsert197, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body199

vector.body199:                                   ; preds = %vector.body199, %vector.ph193
  %index200 = phi i64 [ 0, %vector.ph193 ], [ %index.next205, %vector.body199 ] ; 3 uses
  %i.ha = sub i64 %i.gp, %index200                ; 2 uses
  %i.hb = trunc i64 %index200 to i32
  %i.hc = sub i32 %4, %i.hb
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ha ; 2 uses
  %i.he = getelementptr inbounds i8, ptr %i.hd, i64 -12
  %i.hf = getelementptr inbounds i8, ptr %i.hd, i64 -28
  %wide.load201 = load <4 x i32>, ptr %i.he, align 4, !tbaa !13
  %wide.load202 = load <4 x i32>, ptr %i.hf, align 4, !tbaa !13
  %i.hg = shl <4 x i32> %wide.load201, %broadcast.splat196
  %i.hh = shl <4 x i32> %wide.load202, %broadcast.splat196
  %i.hi = add i32 %i.hc, -2
  %i.hj = zext i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.hj ; 2 uses
  %i.hl = getelementptr inbounds i8, ptr %i.hk, i64 -12
  %i.hm = getelementptr inbounds i8, ptr %i.hk, i64 -28
  %wide.load203 = load <4 x i32>, ptr %i.hl, align 4, !tbaa !13
  %wide.load204 = load <4 x i32>, ptr %i.hm, align 4, !tbaa !13
  %i.hn = lshr <4 x i32> %wide.load203, %broadcast.splat198
  %i.ho = lshr <4 x i32> %wide.load204, %broadcast.splat198
  %i.hp = or disjoint <4 x i32> %i.hn, %i.hg
  %i.hq = or disjoint <4 x i32> %i.ho, %i.hh
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.ha ; 2 uses
  %i.hs = getelementptr inbounds i8, ptr %i.hr, i64 -12
  %i.ht = getelementptr inbounds i8, ptr %i.hr, i64 -28
  store <4 x i32> %i.hp, ptr %i.hs, align 4, !tbaa !13
  store <4 x i32> %i.hq, ptr %i.ht, align 4, !tbaa !13
  %index.next205 = add nuw i64 %index200, 8       ; 2 uses
  %i.hu = icmp eq i64 %index.next205, %n.vec194
  br i1 %i.hu, label %middle.block206, label %vector.body199, !llvm.loop !59

middle.block206:                                  ; preds = %vector.body199
  %cmp.n207 = icmp eq i64 %n.vec194, %i.gp
  br i1 %cmp.n207, label %._crit_edge106, label %scalar.ph188.preheader

scalar.ph188.preheader:                           ; preds = %vector.memcheck190, %.lr.ph105, %middle.block206
  %indvars.iv115.ph = phi i64 [ %i.gp, %vector.memcheck190 ], [ %i.gp, %.lr.ph105 ], [ %i.gx, %middle.block206 ] ; 7 uses
  %.0.in102.ph = phi i32 [ %4, %vector.memcheck190 ], [ %4, %.lr.ph105 ], [ %i.gz, %middle.block206 ] ; 2 uses
  %i.hv = trunc nuw i64 %indvars.iv115.ph to i32
  %xtraiter254 = and i32 %i.hv, 1
  %lcmp.mod255.not = icmp eq i32 %xtraiter254, 0
  br i1 %lcmp.mod255.not, label %scalar.ph188.prol.loopexit, label %scalar.ph188.prol

scalar.ph188.prol:                                ; preds = %scalar.ph188.preheader
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv115.ph
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !13
  %i.hy = shl i32 %i.hx, %.064.lcssa
  %i.hz = add i32 %.0.in102.ph, -2
  %i.ia = zext i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ia
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !13
  %i.id = lshr i32 %i.ic, %i.fb
  %i.ie = or disjoint i32 %i.id, %i.hy
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv115.ph
  store i32 %i.ie, ptr %i.if, align 4, !tbaa !13
  %indvars.iv.next116.prol = add nsw i64 %indvars.iv115.ph, -1
  %i.ig = trunc nuw i64 %indvars.iv115.ph to i32
  br label %scalar.ph188.prol.loopexit

scalar.ph188.prol.loopexit:                       ; preds = %scalar.ph188.prol, %scalar.ph188.preheader
  %indvars.iv115.unr = phi i64 [ %indvars.iv115.ph, %scalar.ph188.preheader ], [ %indvars.iv.next116.prol, %scalar.ph188.prol ]
  %.0.in102.unr = phi i32 [ %.0.in102.ph, %scalar.ph188.preheader ], [ %i.ig, %scalar.ph188.prol ]
  %i.ih = icmp eq i64 %indvars.iv115.ph, 1
  br i1 %i.ih, label %._crit_edge106, label %scalar.ph188

.lr.ph99:                                         ; preds = %.lr.ph99.prol.loopexit, %.lr.ph99
  %indvars.iv = phi i64 [ %i.iu, %.lr.ph99 ], [ %indvars.iv.unr, %.lr.ph99.prol.loopexit ] ; 4 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !13
  %i.ik = shl i32 %i.ij, %.064.lcssa
  %i.il = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.il
  %i.in = load i32, ptr %i.im, align 4, !tbaa !13
  %i.io = lshr i32 %i.in, %i.fb
  %i.ip = or disjoint i32 %i.io, %i.ik
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv
  store i32 %i.ip, ptr %i.iq, align 4, !tbaa !13
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.il
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !13
  %i.it = shl i32 %i.is, %.064.lcssa
  %i.iu = add nsw i64 %indvars.iv, -2             ; 3 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.iu
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !13
  %i.ix = lshr i32 %i.iw, %i.fb
  %i.iy = or disjoint i32 %i.ix, %i.it
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.il
  store i32 %i.iy, ptr %i.iz, align 4, !tbaa !13
  %.not68.wide.1 = icmp eq i64 %i.iu, 0
  br i1 %.not68.wide.1, label %._crit_edge, label %.lr.ph99, !llvm.loop !60

._crit_edge106:                                   ; preds = %scalar.ph188.prol.loopexit, %scalar.ph188, %middle.block206, %._crit_edge
  %i.ja = load i32, ptr %3, align 4, !tbaa !13
  %i.jb = shl i32 %i.ja, %.064.lcssa
  store i32 %i.jb, ptr %.pre, align 4, !tbaa !13
  br label %.loopexit

scalar.ph188:                                     ; preds = %scalar.ph188.prol.loopexit, %scalar.ph188
  %indvars.iv115 = phi i64 [ %indvars.iv.next116.1, %scalar.ph188 ], [ %indvars.iv115.unr, %scalar.ph188.prol.loopexit ] ; 5 uses
  %.0.in102 = phi i32 [ %i.jx, %scalar.ph188 ], [ %.0.in102.unr, %scalar.ph188.prol.loopexit ]
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv115
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !13
  %i.je = shl i32 %i.jd, %.064.lcssa
  %i.jf = add i32 %.0.in102, -2
  %i.jg = zext i32 %i.jf to i64
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.jg
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !13
  %i.jj = lshr i32 %i.ji, %i.fb
  %i.jk = or disjoint i32 %i.jj, %i.je
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv115
  store i32 %i.jk, ptr %i.jl, align 4, !tbaa !13
  %indvars.iv.next116 = add nsw i64 %indvars.iv115, -1 ; 3 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next116
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !13
  %i.jo = shl i32 %i.jn, %.064.lcssa
  %i.jp = add i64 %indvars.iv115, 4294967294
  %i.jq = and i64 %i.jp, 4294967295
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.jq
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !13
  %i.jt = lshr i32 %i.js, %i.fb
  %i.ju = or disjoint i32 %i.jt, %i.jo
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv.next116
  store i32 %i.ju, ptr %i.jv, align 4, !tbaa !13
  %indvars.iv.next116.1 = add nsw i64 %indvars.iv115, -2 ; 2 uses
  %i.jw = and i64 %indvars.iv.next116.1, 4294967295
  %.not69.1 = icmp eq i64 %i.jw, 0
  %i.jx = trunc nuw i64 %indvars.iv.next116 to i32
  br i1 %.not69.1, label %._crit_edge106, label %scalar.ph188, !llvm.loop !61

.loopexit:                                        ; preds = %scalar.ph228.prol.loopexit, %scalar.ph228, %middle.block239, %.preheader, %bb.l, %._crit_edge106
  %.1 = phi i32 [ 0, %bb.l ], [ %.064.lcssa, %._crit_edge106 ], [ 0, %.preheader ], [ 0, %middle.block239 ], [ 0, %scalar.ph228 ], [ 0, %scalar.ph228.prol.loopexit ]
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
  %i.u = trunc i64 %.recomposed to i32
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.k ; 2 uses
end_hunk_0
