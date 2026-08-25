Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/noise?download=true
inline.NumInlined: 150
inline.NumDeleted: 63
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN5Noise10noiseMap2DEffPf:bb.a
  %wide.load106 = load <4 x float>, ptr %i.dp, align 4, !tbaa !29, !alias.scope !131, !noalias !133
  %i.dq = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load104, <4 x float> %wide.load105, <4 x float> %wide.load106)
  store <4 x float> %i.dq, ptr %i.dp, align 4, !tbaa !29, !alias.scope !131, !noalias !133
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index103
  %wide.load107 = load <4 x float>, ptr %i.dr, align 4, !tbaa !29, !alias.scope !134
  %wide.load108 = load <4 x float>, ptr %i.dn, align 4, !tbaa !29, !alias.scope !124, !noalias !127
  %i.ds = fmul nsz <4 x float> %wide.load107, %wide.load108
  store <4 x float> %i.ds, ptr %i.dn, align 4, !tbaa !29, !alias.scope !124, !noalias !127
  %index.next109 = add nuw i64 %index103, 4       ; 2 uses
  %i.dt = icmp eq i64 %index.next109, %n.vec101
  br i1 %i.dt, label %middle.block110, label %vector.body102, !llvm.loop !135

middle.block110:                                  ; preds = %vector.body102
  br i1 %cmp.n111, label %_ZN5Noise13updateResultsEfPfPKfm.exit, label %scalar.ph98.preheader

scalar.ph98.preheader:                            ; preds = %vector.memcheck75, %.lr.ph59.i, %middle.block110
  %.03658.i.ph = phi i64 [ 0, %vector.memcheck75 ], [ 0, %.lr.ph59.i ], [ %n.vec101, %middle.block110 ] ; 7 uses
  br i1 %lcmp.mod200.not, label %scalar.ph98.prol.loopexit, label %scalar.ph98.prol

scalar.ph98.prol:                                 ; preds = %scalar.ph98.preheader
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %.03658.i.ph ; 3 uses
  %i.dv = load float, ptr %i.du, align 4, !tbaa !29
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %.03658.i.ph
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !29
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %.03658.i.ph ; 2 uses
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !29
  %i.ea = tail call nsz float @llvm.fmuladd.f32(float %i.dv, float %i.dx, float %i.dz)
  store float %i.ea, ptr %i.dy, align 4, !tbaa !29
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.03658.i.ph
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !29
  %i.ed = load float, ptr %i.du, align 4, !tbaa !29
  %i.ee = fmul nsz float %i.ec, %i.ed
  store float %i.ee, ptr %i.du, align 4, !tbaa !29
  %i.ef = or disjoint i64 %.03658.i.ph, 1
  br label %scalar.ph98.prol.loopexit

scalar.ph98.prol.loopexit:                        ; preds = %scalar.ph98.prol, %scalar.ph98.preheader
  %.03658.i.unr = phi i64 [ %.03658.i.ph, %scalar.ph98.preheader ], [ %i.ef, %scalar.ph98.prol ]
  %i.eg = icmp eq i64 %.03658.i.ph, %i.ah
  br i1 %i.eg, label %_ZN5Noise13updateResultsEfPfPKfm.exit, label %scalar.ph98

.preheader.i:                                     ; preds = %bb.g
  br i1 %.not4160.i, label %_ZN5Noise13updateResultsEfPfPKfm.exit, label %.lr.ph62.i

.lr.ph62.i:                                       ; preds = %.preheader.i
  %i.eh = load ptr, ptr %i.ad, align 8, !tbaa !53 ; 6 uses
  %i.ei = load ptr, ptr %i.l, align 8, !tbaa !55  ; 6 uses
  br i1 %min.iters.check63, label %scalar.ph62.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph62.i
  %scevgep = getelementptr i8, ptr %i.ei, i64 %i.af
  %scevgep61 = getelementptr i8, ptr %i.eh, i64 %i.af
  %bound0 = icmp ult ptr %i.ei, %scevgep61
  %bound1 = icmp ult ptr %i.eh, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph62.preheader, label %vector.ph64

vector.ph64:                                      ; preds = %vector.memcheck
  %broadcast.splat = shufflevector <2 x float> %i.an, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph64
  %index67 = phi i64 [ 0, %vector.ph64 ], [ %index.next71, %vector.body66 ] ; 3 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %index67 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %wide.load = load <4 x float>, ptr %i.ej, align 4, !tbaa !29, !alias.scope !136
  %wide.load68 = load <4 x float>, ptr %i.ek, align 4, !tbaa !29, !alias.scope !136
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %index67 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16 ; 2 uses
  %wide.load69 = load <4 x float>, ptr %i.el, align 4, !tbaa !29, !alias.scope !139, !noalias !136
  %wide.load70 = load <4 x float>, ptr %i.em, align 4, !tbaa !29, !alias.scope !139, !noalias !136
  %i.en = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load, <4 x float> %wide.load69)
  %i.eo = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load68, <4 x float> %wide.load70)
  store <4 x float> %i.en, ptr %i.el, align 4, !tbaa !29, !alias.scope !139, !noalias !136
  store <4 x float> %i.eo, ptr %i.em, align 4, !tbaa !29, !alias.scope !139, !noalias !136
  %index.next71 = add nuw i64 %index67, 8         ; 2 uses
  %i.ep = icmp eq i64 %index.next71, %n.vec65
  br i1 %i.ep, label %middle.block72, label %vector.body66, !llvm.loop !141

middle.block72:                                   ; preds = %vector.body66
  br i1 %cmp.n73, label %_ZN5Noise13updateResultsEfPfPKfm.exit, label %scalar.ph62.preheader

scalar.ph62.preheader:                            ; preds = %vector.memcheck, %.lr.ph62.i, %middle.block72
  %.061.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph62.i ], [ %n.vec65, %middle.block72 ] ; 5 uses
  br i1 %lcmp.mod202.not, label %scalar.ph62.prol.loopexit, label %scalar.ph62.prol

scalar.ph62.prol:                                 ; preds = %scalar.ph62.preheader
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %.061.i.ph
  %i.er = load float, ptr %i.eq, align 4, !tbaa !29
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %.061.i.ph ; 2 uses
  %i.et = load float, ptr %i.es, align 4, !tbaa !29
  %i.eu = extractelement <2 x float> %i.an, i64 0
  %i.ev = tail call nsz float @llvm.fmuladd.f32(float %i.eu, float %i.er, float %i.et)
  store float %i.ev, ptr %i.es, align 4, !tbaa !29
  %i.ew = or disjoint i64 %.061.i.ph, 1
  br label %scalar.ph62.prol.loopexit

scalar.ph62.prol.loopexit:                        ; preds = %scalar.ph62.prol, %scalar.ph62.preheader
  %.061.i.unr = phi i64 [ %.061.i.ph, %scalar.ph62.preheader ], [ %i.ew, %scalar.ph62.prol ]
  %i.ex = icmp eq i64 %.061.i.ph, %i.ai
  br i1 %i.ex, label %_ZN5Noise13updateResultsEfPfPKfm.exit, label %scalar.ph62.preheader.new

scalar.ph62.preheader.new:                        ; preds = %scalar.ph62.prol.loopexit
  %i.ey = extractelement <2 x float> %i.an, i64 0
  %i.ez = extractelement <2 x float> %i.an, i64 0
  br label %scalar.ph62

scalar.ph98:                                      ; preds = %scalar.ph98.prol.loopexit, %scalar.ph98
  %.03658.i = phi i64 [ %i.fx, %scalar.ph98 ], [ %.03658.i.unr, %scalar.ph98.prol.loopexit ] ; 6 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %.03658.i ; 3 uses
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !29
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %.03658.i
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !29
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %.03658.i ; 2 uses
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !29
  %i.fg = tail call nsz float @llvm.fmuladd.f32(float %i.fb, float %i.fd, float %i.ff)
  store float %i.fg, ptr %i.fe, align 4, !tbaa !29
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.03658.i
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !29
  %i.fj = load float, ptr %i.fa, align 4, !tbaa !29
  %i.fk = fmul nsz float %i.fi, %i.fj
  store float %i.fk, ptr %i.fa, align 4, !tbaa !29
  %i.fl = add nuw nsw i64 %.03658.i, 1            ; 4 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.fl ; 3 uses
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !29
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.fl
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !29
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.fl ; 2 uses
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !29
  %i.fs = tail call nsz float @llvm.fmuladd.f32(float %i.fn, float %i.fp, float %i.fr)
  store float %i.fs, ptr %i.fq, align 4, !tbaa !29
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fl
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !29
  %i.fv = load float, ptr %i.fm, align 4, !tbaa !29
  %i.fw = fmul nsz float %i.fu, %i.fv
  store float %i.fw, ptr %i.fm, align 4, !tbaa !29
  %i.fx = add nuw nsw i64 %.03658.i, 2            ; 2 uses
  %.not42.i.1 = icmp eq i64 %i.fx, %i.f
  br i1 %.not42.i.1, label %_ZN5Noise13updateResultsEfPfPKfm.exit, label %scalar.ph98, !llvm.loop !142

scalar.ph62:                                      ; preds = %scalar.ph62, %scalar.ph62.preheader.new
  %.061.i = phi i64 [ %.061.i.unr, %scalar.ph62.preheader.new ], [ %i.gj, %scalar.ph62 ] ; 4 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %.061.i
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !29
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %.061.i ; 2 uses
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !29
  %i.gc = tail call nsz float @llvm.fmuladd.f32(float %i.ey, float %i.fz, float %i.gb)
  store float %i.gc, ptr %i.ga, align 4, !tbaa !29
  %i.gd = add nuw nsw i64 %.061.i, 1              ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.gd
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !29
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.gd ; 2 uses
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !29
  %i.gi = tail call nsz float @llvm.fmuladd.f32(float %i.ez, float %i.gf, float %i.gh)
  store float %i.gi, ptr %i.gg, align 4, !tbaa !29
  %i.gj = add nuw nsw i64 %.061.i, 2              ; 2 uses
  %.not41.i.1 = icmp eq i64 %i.gj, %i.f
  br i1 %.not41.i.1, label %_ZN5Noise13updateResultsEfPfPKfm.exit, label %scalar.ph62, !llvm.loop !143

_ZN5Noise13updateResultsEfPfPKfm.exit:            ; preds = %scalar.ph158, %scalar.ph119.prol.loopexit, %scalar.ph119, %scalar.ph98.prol.loopexit, %scalar.ph98, %scalar.ph62.prol.loopexit, %scalar.ph62, %middle.block170, %middle.block132, %middle.block110, %middle.block72, %.preheader50.i, %.preheader48.i, %.preheader46.i, %.preheader.i
  %i.gk = load <2 x float>, ptr %i.ae, align 4, !tbaa !29
  %i.gl = fmul nsz <2 x float> %i.an, %i.gk
  %i.gm = add nuw nsw i64 %.02843, 1              ; 2 uses
  %i.gn = load i16, ptr %i.x, align 8, !tbaa !57
  %i.go = zext i16 %i.gn to i64
  %i.gp = icmp samesign ult i64 %i.gm, %i.go
  br i1 %i.gp, label %bb.e, label %._crit_edge, !llvm.loop !144

bb.h:                                             ; preds = %._crit_edge
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !145
  %i.gs = fadd nsz float %i.gr, -1.000000e+00
  %i.gt = tail call nsz noundef float @llvm.fabs.f32(float %i.gs)
  %i.gu = fpext nsz float %i.gt to double
  %i.gv = fcmp nsz ule double %i.gu, 1.000000e-05
  %.not3445 = icmp eq i32 %i.e, 0
  %or.cond = select i1 %i.gv, i1 true, i1 %.not3445
  br i1 %or.cond, label %.loopexit, label %.lr.ph48

bb.i:                                             ; preds = %._crit_edge
  %.not3445.old = icmp eq i32 %i.e, 0
  br i1 %.not3445.old, label %.loopexit, label %.lr.ph48

.lr.ph48:                                         ; preds = %bb.h, %bb.i
  %i.gw = load ptr, ptr %i.l, align 8, !tbaa !55  ; 6 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %min.iters.check180 = icmp ult i32 %i.e, 8
  br i1 %min.iters.check180, label %scalar.ph179.preheader, label %vector.memcheck173

vector.memcheck173:                               ; preds = %.lr.ph48
  %i.gy = shl nuw nsw i64 %i.f, 2
  %scevgep174 = getelementptr i8, ptr %i.gw, i64 %i.gy
  %scevgep175 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %bound0176 = icmp ult ptr %i.gw, %scevgep175
  %bound1177 = icmp ult ptr %0, %scevgep174
  %found.conflict178 = and i1 %bound0176, %bound1177
  br i1 %found.conflict178, label %scalar.ph179.preheader, label %vector.ph181

vector.ph181:                                     ; preds = %vector.memcheck173
  %n.vec182 = and i64 %i.f, 4294967288            ; 3 uses
  %4 = load <4 x float>, ptr %i.gx, align 4
  %broadcast.splat188 = shufflevector <4 x float> %4, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %5 = load <4 x float>, ptr %0, align 8
  %broadcast.splat190 = shufflevector <4 x float> %5, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body183

vector.body183:                                   ; preds = %vector.body183, %vector.ph181
  %index184 = phi i64 [ 0, %vector.ph181 ], [ %index.next191, %vector.body183 ] ; 2 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %index184 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16 ; 2 uses
  %wide.load185 = load <4 x float>, ptr %i.gz, align 4, !tbaa !29, !alias.scope !146, !noalias !149
  %wide.load186 = load <4 x float>, ptr %i.ha, align 4, !tbaa !29, !alias.scope !146, !noalias !149
  %i.hb = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load185, <4 x float> %broadcast.splat188, <4 x float> %broadcast.splat190)
  %i.hc = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load186, <4 x float> %broadcast.splat188, <4 x float> %broadcast.splat190)
  store <4 x float> %i.hb, ptr %i.gz, align 4, !tbaa !29, !alias.scope !146, !noalias !149
  store <4 x float> %i.hc, ptr %i.ha, align 4, !tbaa !29, !alias.scope !146, !noalias !149
  %index.next191 = add nuw i64 %index184, 8       ; 2 uses
  %i.hd = icmp eq i64 %index.next191, %n.vec182
  br i1 %i.hd, label %middle.block192, label %vector.body183, !llvm.loop !151

middle.block192:                                  ; preds = %vector.body183
  %cmp.n193 = icmp eq i64 %n.vec182, %i.f
  br i1 %cmp.n193, label %.loopexit, label %scalar.ph179.preheader

scalar.ph179.preheader:                           ; preds = %vector.memcheck173, %.lr.ph48, %middle.block192
  %.046.ph = phi i64 [ 0, %vector.memcheck173 ], [ 0, %.lr.ph48 ], [ %n.vec182, %middle.block192 ] ; 4 uses
  %xtraiter203 = and i64 %i.f, 1
  %lcmp.mod204.not = icmp eq i64 %xtraiter203, 0
  br i1 %lcmp.mod204.not, label %scalar.ph179.prol.loopexit, label %scalar.ph179.prol

scalar.ph179.prol:                                ; preds = %scalar.ph179.preheader
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %.046.ph ; 2 uses
  %i.hf = load float, ptr %i.he, align 4, !tbaa !29
  %i.hg = load float, ptr %i.gx, align 4, !tbaa !145
  %i.hh = load float, ptr %0, align 8, !tbaa !102
  %i.hi = tail call nsz float @llvm.fmuladd.f32(float %i.hf, float %i.hg, float %i.hh)
  store float %i.hi, ptr %i.he, align 4, !tbaa !29
  %i.hj = or disjoint i64 %.046.ph, 1
  br label %scalar.ph179.prol.loopexit

scalar.ph179.prol.loopexit:                       ; preds = %scalar.ph179.prol, %scalar.ph179.preheader
  %.046.unr = phi i64 [ %.046.ph, %scalar.ph179.preheader ], [ %i.hj, %scalar.ph179.prol ]
  %i.hk = add nsw i64 %i.f, -1
  %i.hl = icmp eq i64 %.046.ph, %i.hk
  br i1 %i.hl, label %.loopexit, label %scalar.ph179

scalar.ph179:                                     ; preds = %scalar.ph179.prol.loopexit, %scalar.ph179
  %.046 = phi i64 [ %i.hx, %scalar.ph179 ], [ %.046.unr, %scalar.ph179.prol.loopexit ] ; 3 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %.046 ; 2 uses
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !29
  %i.ho = load float, ptr %i.gx, align 4, !tbaa !145
  %i.hp = load float, ptr %0, align 8, !tbaa !102
  %i.hq = tail call nsz float @llvm.fmuladd.f32(float %i.hn, float %i.ho, float %i.hp)
  store float %i.hq, ptr %i.hm, align 4, !tbaa !29
  %i.hr = getelementptr [4 x i8], ptr %i.gw, i64 %.046
  %i.hs = getelementptr i8, ptr %i.hr, i64 4      ; 2 uses
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !29
  %i.hu = load float, ptr %i.gx, align 4, !tbaa !145
  %i.hv = load float, ptr %0, align 8, !tbaa !102
  %i.hw = tail call nsz float @llvm.fmuladd.f32(float %i.ht, float %i.hu, float %i.hv)
  store float %i.hw, ptr %i.hs, align 4, !tbaa !29
  %i.hx = add i64 %.046, 2                        ; 2 uses
  %.not34.1 = icmp eq i64 %i.hx, %i.f
  br i1 %.not34.1, label %.loopexit, label %scalar.ph179, !llvm.loop !152

.loopexit:                                        ; preds = %scalar.ph179.prol.loopexit, %scalar.ph179, %middle.block192, %bb.i, %bb.h
  %i.hy = load ptr, ptr %i.l, align 8, !tbaa !55
  ret ptr %i.hy
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5Noise13updateResultsEfPfPKfm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, float noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !85
  %i.c = and i32 %i.b, 4
  %.not = icmp eq i32 %i.c, 0
  %.not40 = icmp eq ptr %3, null                  ; 2 uses
  %.not4160 = icmp eq i64 %4, 0                   ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not40, label %.preheader48, label %.preheader50

.preheader50:                                     ; preds = %bb.b
  br i1 %.not4160, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader50
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !53   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !55   ; 6 uses
  %min.iters.check = icmp ult i64 %4, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.h = shl i64 %4, 2                            ; 4 uses
  %scevgep = getelementptr i8, ptr %i.g, i64 %i.h ; 3 uses
  %scevgep74 = getelementptr i8, ptr %2, i64 %i.h ; 3 uses
  %scevgep75 = getelementptr i8, ptr %i.e, i64 %i.h ; 2 uses
  %scevgep76 = getelementptr i8, ptr %3, i64 %i.h ; 2 uses
  %bound0 = icmp ult ptr %i.g, %scevgep74
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound077 = icmp ult ptr %i.g, %scevgep75
  %bound178 = icmp ult ptr %i.e, %scevgep
  %found.conflict79 = and i1 %bound077, %bound178
  %conflict.rdx = or i1 %found.conflict, %found.conflict79
  %bound080 = icmp ult ptr %i.g, %scevgep76
  %bound181 = icmp ult ptr %3, %scevgep
  %found.conflict82 = and i1 %bound080, %bound181
  %conflict.rdx83 = or i1 %conflict.rdx, %found.conflict82
  %bound084 = icmp ult ptr %2, %scevgep75
  %bound185 = icmp ult ptr %i.e, %scevgep74
  %found.conflict86 = and i1 %bound084, %bound185
  %conflict.rdx87 = or i1 %conflict.rdx83, %found.conflict86
  %bound088 = icmp ult ptr %2, %scevgep76
  %bound189 = icmp ult ptr %3, %scevgep74
  %found.conflict90 = and i1 %bound088, %bound189
  %conflict.rdx91 = or i1 %conflict.rdx87, %found.conflict90
  br i1 %conflict.rdx91, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %4, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 3 uses
  %wide.load = load <4 x float>, ptr %i.i, align 4, !tbaa !29, !alias.scope !153, !noalias !156
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index
  %wide.load92 = load <4 x float>, ptr %i.j, align 4, !tbaa !29, !alias.scope !159
  %i.k = tail call nsz <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load92)
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index ; 2 uses
  %wide.load93 = load <4 x float>, ptr %i.l, align 4, !tbaa !29, !alias.scope !160, !noalias !162
  %i.m = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %i.k, <4 x float> %wide.load93)
  store <4 x float> %i.m, ptr %i.l, align 4, !tbaa !29, !alias.scope !160, !noalias !162
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load94 = load <4 x float>, ptr %i.n, align 4, !tbaa !29, !alias.scope !163
  %wide.load95 = load <4 x float>, ptr %i.i, align 4, !tbaa !29, !alias.scope !153, !noalias !156
  %i.o = fmul nsz <4 x float> %wide.load94, %wide.load95
  store <4 x float> %i.o, ptr %i.i, align 4, !tbaa !29, !alias.scope !153, !noalias !156
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !164

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.03853.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader48:                                     ; preds = %bb.b
  br i1 %.not4160, label %.loopexit, label %.lr.ph56

.lr.ph56:                                         ; preds = %.preheader48
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !53   ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !55   ; 6 uses
  %min.iters.check103 = icmp ult i64 %4, 8
  br i1 %min.iters.check103, label %scalar.ph102.preheader, label %vector.memcheck96

vector.memcheck96:                                ; preds = %.lr.ph56
  %i.u = shl i64 %4, 2                            ; 2 uses
  %scevgep97 = getelementptr i8, ptr %i.t, i64 %i.u
  %scevgep98 = getelementptr i8, ptr %i.r, i64 %i.u
  %bound099 = icmp ult ptr %i.t, %scevgep98
  %bound1100 = icmp ult ptr %i.r, %scevgep97
  %found.conflict101 = and i1 %bound099, %bound1100
  br i1 %found.conflict101, label %scalar.ph102.preheader, label %vector.ph104

vector.ph104:                                     ; preds = %vector.memcheck96
  %n.vec105 = and i64 %4, -8                      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %1, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph104
  %index107 = phi i64 [ 0, %vector.ph104 ], [ %index.next112, %vector.body106 ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index107 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load108 = load <4 x float>, ptr %i.v, align 4, !tbaa !29, !alias.scope !165
  %wide.load109 = load <4 x float>, ptr %i.w, align 4, !tbaa !29, !alias.scope !165
  %i.x = tail call nsz <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load108)
  %i.y = tail call nsz <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load109)
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index107 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %wide.load110 = load <4 x float>, ptr %i.z, align 4, !tbaa !29, !alias.scope !168, !noalias !165
  %wide.load111 = load <4 x float>, ptr %i.aa, align 4, !tbaa !29, !alias.scope !168, !noalias !165
  %i.ab = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.x, <4 x float> %wide.load110)
  %i.ac = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.y, <4 x float> %wide.load111)
  store <4 x float> %i.ab, ptr %i.z, align 4, !tbaa !29, !alias.scope !168, !noalias !165
  store <4 x float> %i.ac, ptr %i.aa, align 4, !tbaa !29, !alias.scope !168, !noalias !165
  %index.next112 = add nuw i64 %index107, 8       ; 2 uses
  %i.ad = icmp eq i64 %index.next112, %n.vec105
  br i1 %i.ad, label %middle.block113, label %vector.body106, !llvm.loop !170

middle.block113:                                  ; preds = %vector.body106
  %cmp.n114 = icmp eq i64 %4, %n.vec105
  br i1 %cmp.n114, label %.loopexit, label %scalar.ph102.preheader

scalar.ph102.preheader:                           ; preds = %vector.memcheck96, %.lr.ph56, %middle.block113
  %.03755.ph = phi i64 [ 0, %vector.memcheck96 ], [ 0, %.lr.ph56 ], [ %n.vec105, %middle.block113 ] ; 5 uses
  %.neg = or disjoint i64 %.03755.ph, 1
  %xtraiter = and i64 %4, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph102.prol.loopexit, label %scalar.ph102.prol

scalar.ph102.prol:                                ; preds = %scalar.ph102.preheader
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.03755.ph
end_hunk_0
begin_hunk_1_@_ZN5Noise10noiseMap3DEfffPf:bb.a
  %wide.load110 = load <4 x float>, ptr %i.dz, align 4, !tbaa !29, !alias.scope !223, !noalias !225
  %i.ea = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load108, <4 x float> %wide.load109, <4 x float> %wide.load110)
  store <4 x float> %i.ea, ptr %i.dz, align 4, !tbaa !29, !alias.scope !223, !noalias !225
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index107
  %wide.load111 = load <4 x float>, ptr %i.eb, align 4, !tbaa !29, !alias.scope !226
  %wide.load112 = load <4 x float>, ptr %i.dx, align 4, !tbaa !29, !alias.scope !216, !noalias !219
  %i.ec = fmul nsz <4 x float> %wide.load111, %wide.load112
  store <4 x float> %i.ec, ptr %i.dx, align 4, !tbaa !29, !alias.scope !216, !noalias !219
  %index.next113 = add nuw i64 %index107, 4       ; 2 uses
  %i.ed = icmp eq i64 %index.next113, %n.vec105
  br i1 %i.ed, label %middle.block114, label %vector.body106, !llvm.loop !227

middle.block114:                                  ; preds = %vector.body106
  br i1 %cmp.n115, label %_ZN5Noise13updateResultsEfPfPKfm.exit, label %scalar.ph102.preheader

scalar.ph102.preheader:                           ; preds = %vector.memcheck79, %.lr.ph59.i, %middle.block114
  %.03658.i.ph = phi i64 [ 0, %vector.memcheck79 ], [ 0, %.lr.ph59.i ], [ %n.vec105, %middle.block114 ] ; 7 uses
  br i1 %lcmp.mod204.not, label %scalar.ph102.prol.loopexit, label %scalar.ph102.prol

scalar.ph102.prol:                                ; preds = %scalar.ph102.preheader
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.03658.i.ph ; 3 uses
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !29
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %.03658.i.ph
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !29
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.03658.i.ph ; 2 uses
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !29
  %i.ek = tail call nsz float @llvm.fmuladd.f32(float %i.ef, float %i.eh, float %i.ej)
  store float %i.ek, ptr %i.ei, align 4, !tbaa !29
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.03658.i.ph
  %i.em = load float, ptr %i.el, align 4, !tbaa !29
  %i.en = load float, ptr %i.ee, align 4, !tbaa !29
  %i.eo = fmul nsz float %i.em, %i.en
  store float %i.eo, ptr %i.ee, align 4, !tbaa !29
  %i.ep = or disjoint i64 %.03658.i.ph, 1
  br label %scalar.ph102.prol.loopexit

scalar.ph102.prol.loopexit:                       ; preds = %scalar.ph102.prol, %scalar.ph102.preheader
  %.03658.i.unr = phi i64 [ %.03658.i.ph, %scalar.ph102.preheader ], [ %i.ep, %scalar.ph102.prol ]
  %i.eq = icmp eq i64 %.03658.i.ph, %i.an
  br i1 %i.eq, label %_ZN5Noise13updateResultsEfPfPKfm.exit, label %scalar.ph102

.preheader.i:                                     ; preds = %bb.g
  br i1 %.not4160.i, label %_ZN5Noise13updateResultsEfPfPKfm.exit, label %.lr.ph62.i

.lr.ph62.i:                                       ; preds = %.preheader.i
  %i.er = load ptr, ptr %i.aj, align 8, !tbaa !53 ; 6 uses
  %i.es = load ptr, ptr %i.r, align 8, !tbaa !55  ; 6 uses
  br i1 %min.iters.check67, label %scalar.ph66.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph62.i
  %scevgep = getelementptr i8, ptr %i.es, i64 %i.al
  %scevgep65 = getelementptr i8, ptr %i.er, i64 %i.al
  %bound0 = icmp ult ptr %i.es, %scevgep65
  %bound1 = icmp ult ptr %i.er, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph66.preheader, label %vector.ph68

vector.ph68:                                      ; preds = %vector.memcheck
  %broadcast.splat = shufflevector <2 x float> %i.at, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body70

vector.body70:                                    ; preds = %vector.body70, %vector.ph68
  %index71 = phi i64 [ 0, %vector.ph68 ], [ %index.next75, %vector.body70 ] ; 3 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %index71 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %wide.load = load <4 x float>, ptr %i.et, align 4, !tbaa !29, !alias.scope !228
  %wide.load72 = load <4 x float>, ptr %i.eu, align 4, !tbaa !29, !alias.scope !228
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %index71 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16 ; 2 uses
  %wide.load73 = load <4 x float>, ptr %i.ev, align 4, !tbaa !29, !alias.scope !231, !noalias !228
  %wide.load74 = load <4 x float>, ptr %i.ew, align 4, !tbaa !29, !alias.scope !231, !noalias !228
  %i.ex = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load, <4 x float> %wide.load73)
  %i.ey = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load72, <4 x float> %wide.load74)
  store <4 x float> %i.ex, ptr %i.ev, align 4, !tbaa !29, !alias.scope !231, !noalias !228
  store <4 x float> %i.ey, ptr %i.ew, align 4, !tbaa !29, !alias.scope !231, !noalias !228
  %index.next75 = add nuw i64 %index71, 8         ; 2 uses
  %i.ez = icmp eq i64 %index.next75, %n.vec69
  br i1 %i.ez, label %middle.block76, label %vector.body70, !llvm.loop !233

middle.block76:                                   ; preds = %vector.body70
  br i1 %cmp.n77, label %_ZN5Noise13updateResultsEfPfPKfm.exit, label %scalar.ph66.preheader

scalar.ph66.preheader:                            ; preds = %vector.memcheck, %.lr.ph62.i, %middle.block76
  %.061.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph62.i ], [ %n.vec69, %middle.block76 ] ; 5 uses
  br i1 %lcmp.mod206.not, label %scalar.ph66.prol.loopexit, label %scalar.ph66.prol

scalar.ph66.prol:                                 ; preds = %scalar.ph66.preheader
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %.061.i.ph
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !29
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %.061.i.ph ; 2 uses
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !29
  %i.fe = extractelement <2 x float> %i.at, i64 0
  %i.ff = tail call nsz float @llvm.fmuladd.f32(float %i.fe, float %i.fb, float %i.fd)
  store float %i.ff, ptr %i.fc, align 4, !tbaa !29
  %i.fg = or disjoint i64 %.061.i.ph, 1
  br label %scalar.ph66.prol.loopexit

scalar.ph66.prol.loopexit:                        ; preds = %scalar.ph66.prol, %scalar.ph66.preheader
  %.061.i.unr = phi i64 [ %.061.i.ph, %scalar.ph66.preheader ], [ %i.fg, %scalar.ph66.prol ]
  %i.fh = icmp eq i64 %.061.i.ph, %i.ao
  br i1 %i.fh, label %_ZN5Noise13updateResultsEfPfPKfm.exit, label %scalar.ph66.preheader.new

scalar.ph66.preheader.new:                        ; preds = %scalar.ph66.prol.loopexit
  %i.fi = extractelement <2 x float> %i.at, i64 0
  %i.fj = extractelement <2 x float> %i.at, i64 0
  br label %scalar.ph66

scalar.ph102:                                     ; preds = %scalar.ph102.prol.loopexit, %scalar.ph102
  %.03658.i = phi i64 [ %i.gh, %scalar.ph102 ], [ %.03658.i.unr, %scalar.ph102.prol.loopexit ] ; 6 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.03658.i ; 3 uses
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !29
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %.03658.i
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !29
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.03658.i ; 2 uses
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !29
  %i.fq = tail call nsz float @llvm.fmuladd.f32(float %i.fl, float %i.fn, float %i.fp)
  store float %i.fq, ptr %i.fo, align 4, !tbaa !29
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.03658.i
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !29
  %i.ft = load float, ptr %i.fk, align 4, !tbaa !29
  %i.fu = fmul nsz float %i.fs, %i.ft
  store float %i.fu, ptr %i.fk, align 4, !tbaa !29
  %i.fv = add nuw nsw i64 %.03658.i, 1            ; 4 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.fv ; 3 uses
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !29
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.fv
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !29
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.fv ; 2 uses
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !29
  %i.gc = tail call nsz float @llvm.fmuladd.f32(float %i.fx, float %i.fz, float %i.gb)
  store float %i.gc, ptr %i.ga, align 4, !tbaa !29
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.fv
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !29
  %i.gf = load float, ptr %i.fw, align 4, !tbaa !29
  %i.gg = fmul nsz float %i.ge, %i.gf
  store float %i.gg, ptr %i.fw, align 4, !tbaa !29
  %i.gh = add nuw nsw i64 %.03658.i, 2            ; 2 uses
  %.not42.i.1 = icmp eq i64 %i.gh, %i.i
  br i1 %.not42.i.1, label %_ZN5Noise13updateResultsEfPfPKfm.exit, label %scalar.ph102, !llvm.loop !234

scalar.ph66:                                      ; preds = %scalar.ph66, %scalar.ph66.preheader.new
  %.061.i = phi i64 [ %.061.i.unr, %scalar.ph66.preheader.new ], [ %i.gt, %scalar.ph66 ] ; 4 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %.061.i
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !29
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %.061.i ; 2 uses
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !29
  %i.gm = tail call nsz float @llvm.fmuladd.f32(float %i.fi, float %i.gj, float %i.gl)
  store float %i.gm, ptr %i.gk, align 4, !tbaa !29
  %i.gn = add nuw nsw i64 %.061.i, 1              ; 2 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.gn
  %i.gp = load float, ptr %i.go, align 4, !tbaa !29
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.gn ; 2 uses
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !29
  %i.gs = tail call nsz float @llvm.fmuladd.f32(float %i.fj, float %i.gp, float %i.gr)
  store float %i.gs, ptr %i.gq, align 4, !tbaa !29
  %i.gt = add nuw nsw i64 %.061.i, 2              ; 2 uses
  %.not41.i.1 = icmp eq i64 %i.gt, %i.i
  br i1 %.not41.i.1, label %_ZN5Noise13updateResultsEfPfPKfm.exit, label %scalar.ph66, !llvm.loop !235

_ZN5Noise13updateResultsEfPfPKfm.exit:            ; preds = %scalar.ph162, %scalar.ph123.prol.loopexit, %scalar.ph123, %scalar.ph102.prol.loopexit, %scalar.ph102, %scalar.ph66.prol.loopexit, %scalar.ph66, %middle.block174, %middle.block136, %middle.block114, %middle.block76, %.preheader50.i, %.preheader48.i, %.preheader46.i, %.preheader.i
  %i.gu = load <2 x float>, ptr %i.ak, align 4, !tbaa !29
  %i.gv = fmul nsz <2 x float> %i.at, %i.gu
  %i.gw = add nuw nsw i64 %.03247, 1              ; 2 uses
  %i.gx = load i16, ptr %i.ad, align 8, !tbaa !57
  %i.gy = zext i16 %i.gx to i64
  %i.gz = icmp samesign ult i64 %i.gw, %i.gy
  br i1 %i.gz, label %bb.e, label %._crit_edge, !llvm.loop !236

bb.h:                                             ; preds = %._crit_edge
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !145
  %i.hc = fadd nsz float %i.hb, -1.000000e+00
  %i.hd = tail call nsz noundef float @llvm.fabs.f32(float %i.hc)
  %i.he = fpext nsz float %i.hd to double
  %i.hf = fcmp nsz ule double %i.he, 1.000000e-05
  %.not3849 = icmp eq i32 %i.h, 0
  %or.cond = select i1 %i.hf, i1 true, i1 %.not3849
  br i1 %or.cond, label %.loopexit, label %.lr.ph52

bb.i:                                             ; preds = %._crit_edge
  %.not3849.old = icmp eq i32 %i.h, 0
  br i1 %.not3849.old, label %.loopexit, label %.lr.ph52

.lr.ph52:                                         ; preds = %bb.h, %bb.i
  %i.hg = load ptr, ptr %i.r, align 8, !tbaa !55  ; 6 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %min.iters.check184 = icmp ult i32 %i.h, 8
  br i1 %min.iters.check184, label %scalar.ph183.preheader, label %vector.memcheck177

vector.memcheck177:                               ; preds = %.lr.ph52
  %i.hi = shl nuw nsw i64 %i.i, 2
  %scevgep178 = getelementptr i8, ptr %i.hg, i64 %i.hi
  %scevgep179 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %bound0180 = icmp ult ptr %i.hg, %scevgep179
  %bound1181 = icmp ult ptr %0, %scevgep178
  %found.conflict182 = and i1 %bound0180, %bound1181
  br i1 %found.conflict182, label %scalar.ph183.preheader, label %vector.ph185

vector.ph185:                                     ; preds = %vector.memcheck177
  %n.vec186 = and i64 %i.i, 4294967288            ; 3 uses
  %5 = load <4 x float>, ptr %i.hh, align 4
  %broadcast.splat192 = shufflevector <4 x float> %5, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %6 = load <4 x float>, ptr %0, align 8
  %broadcast.splat194 = shufflevector <4 x float> %6, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body187

vector.body187:                                   ; preds = %vector.body187, %vector.ph185
  %index188 = phi i64 [ 0, %vector.ph185 ], [ %index.next195, %vector.body187 ] ; 2 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %index188 ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16 ; 2 uses
  %wide.load189 = load <4 x float>, ptr %i.hj, align 4, !tbaa !29, !alias.scope !237, !noalias !240
  %wide.load190 = load <4 x float>, ptr %i.hk, align 4, !tbaa !29, !alias.scope !237, !noalias !240
  %i.hl = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load189, <4 x float> %broadcast.splat192, <4 x float> %broadcast.splat194)
  %i.hm = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load190, <4 x float> %broadcast.splat192, <4 x float> %broadcast.splat194)
  store <4 x float> %i.hl, ptr %i.hj, align 4, !tbaa !29, !alias.scope !237, !noalias !240
  store <4 x float> %i.hm, ptr %i.hk, align 4, !tbaa !29, !alias.scope !237, !noalias !240
  %index.next195 = add nuw i64 %index188, 8       ; 2 uses
  %i.hn = icmp eq i64 %index.next195, %n.vec186
  br i1 %i.hn, label %middle.block196, label %vector.body187, !llvm.loop !242

middle.block196:                                  ; preds = %vector.body187
  %cmp.n197 = icmp eq i64 %n.vec186, %i.i
  br i1 %cmp.n197, label %.loopexit, label %scalar.ph183.preheader

scalar.ph183.preheader:                           ; preds = %vector.memcheck177, %.lr.ph52, %middle.block196
  %.050.ph = phi i64 [ 0, %vector.memcheck177 ], [ 0, %.lr.ph52 ], [ %n.vec186, %middle.block196 ] ; 4 uses
  %xtraiter207 = and i64 %i.i, 1
  %lcmp.mod208.not = icmp eq i64 %xtraiter207, 0
  br i1 %lcmp.mod208.not, label %scalar.ph183.prol.loopexit, label %scalar.ph183.prol

scalar.ph183.prol:                                ; preds = %scalar.ph183.preheader
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.050.ph ; 2 uses
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !29
  %i.hq = load float, ptr %i.hh, align 4, !tbaa !145
  %i.hr = load float, ptr %0, align 8, !tbaa !102
  %i.hs = tail call nsz float @llvm.fmuladd.f32(float %i.hp, float %i.hq, float %i.hr)
  store float %i.hs, ptr %i.ho, align 4, !tbaa !29
  %i.ht = or disjoint i64 %.050.ph, 1
  br label %scalar.ph183.prol.loopexit

scalar.ph183.prol.loopexit:                       ; preds = %scalar.ph183.prol, %scalar.ph183.preheader
  %.050.unr = phi i64 [ %.050.ph, %scalar.ph183.preheader ], [ %i.ht, %scalar.ph183.prol ]
  %i.hu = add nsw i64 %i.i, -1
  %i.hv = icmp eq i64 %.050.ph, %i.hu
  br i1 %i.hv, label %.loopexit, label %scalar.ph183

scalar.ph183:                                     ; preds = %scalar.ph183.prol.loopexit, %scalar.ph183
  %.050 = phi i64 [ %i.ih, %scalar.ph183 ], [ %.050.unr, %scalar.ph183.prol.loopexit ] ; 3 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.050 ; 2 uses
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !29
  %i.hy = load float, ptr %i.hh, align 4, !tbaa !145
  %i.hz = load float, ptr %0, align 8, !tbaa !102
  %i.ia = tail call nsz float @llvm.fmuladd.f32(float %i.hx, float %i.hy, float %i.hz)
  store float %i.ia, ptr %i.hw, align 4, !tbaa !29
  %i.ib = getelementptr [4 x i8], ptr %i.hg, i64 %.050
  %i.ic = getelementptr i8, ptr %i.ib, i64 4      ; 2 uses
  %i.id = load float, ptr %i.ic, align 4, !tbaa !29
  %i.ie = load float, ptr %i.hh, align 4, !tbaa !145
  %i.if = load float, ptr %0, align 8, !tbaa !102
  %i.ig = tail call nsz float @llvm.fmuladd.f32(float %i.id, float %i.ie, float %i.if)
  store float %i.ig, ptr %i.ic, align 4, !tbaa !29
  %i.ih = add i64 %.050, 2                        ; 2 uses
  %.not38.1 = icmp eq i64 %i.ih, %i.i
  br i1 %.not38.1, label %.loopexit, label %scalar.ph183, !llvm.loop !243

.loopexit:                                        ; preds = %scalar.ph183.prol.loopexit, %scalar.ph183, %middle.block196, %bb.i, %bb.h
  %i.ii = load ptr, ptr %i.r, align 8, !tbaa !55
  ret ptr %i.ii
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13PrngExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN13BaseExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !20
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #28, !inline_history !244
  br label %_ZN13BaseExceptionD2Ev.exit

_ZN13BaseExceptionD2Ev.exit:                      ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #26, !inline_history !244
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK13BaseException4whatEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13BaseExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN13BaseExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !20
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #28, !inline_history !244
  br label %_ZN13BaseExceptionD2Ev.exit

_ZN13BaseExceptionD2Ev.exit:                      ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #26, !inline_history !244
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #28
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #21

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN27InvalidNoiseParamsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN13BaseExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !20
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #28, !inline_history !244
  br label %_ZN13BaseExceptionD2Ev.exit

_ZN13BaseExceptionD2Ev.exit:                      ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #26, !inline_history !244
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !75     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  %i.c = load ptr, ptr %0, align 8, !tbaa !76     ; 9 uses
  %.not.i = icmp eq ptr %i.c, null                ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %_ZN11StreamProxylsIPKcEERS_OT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !77
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !76
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.k = phi ptr [ %.pre.i, %bb.d ], [ %i.c, %bb.c ]
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.10, i64 noundef 6) ; 0 uses
  br label %_ZN11StreamProxylsIPKcEERS_OT_.exit

bb.f:                                             ; preds = %bb.a
  br i1 %.not.i, label %_ZN11StreamProxylsIPKcEERS_OT_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %i.c, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !77
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.pre.i5 = load ptr, ptr %0, align 8, !tbaa !76 ; 3 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !75    ; 2 uses
  %.not.i.i6 = icmp eq ptr %.pre, null
  br i1 %.not.i.i6, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.t = load ptr, ptr %.pre.i5, align 8, !tbaa !24
  %i.u = getelementptr i8, ptr %i.t, i64 -24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr %.pre.i5, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !77
  %i.z = or i32 %i.y, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.w, i32 noundef %i.z)
end_hunk_1
