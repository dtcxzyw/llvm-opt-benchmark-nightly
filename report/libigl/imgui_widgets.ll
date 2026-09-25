Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui_widgets?download=true
inline.NumInlined: 1519
inline.NumDeleted: 254
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN5ImGui15SliderBehaviorTIjifEEbRK6ImRectjiPT_S4_S4_PKciPS1_:bb.a
  %i.bo = phi float [ %i.bn, %_Z22ImParseFormatPrecisionPKci.exit ], [ 1.000000e+00, %bb.d ]
  %i.bp = tail call noundef float @powf(float noundef 1.000000e-01, float noundef %i.bo) #36
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 5604
  %i.br = load float, ptr %i.bq, align 4, !tbaa !237
  %i.bs = fmul float %i.br, 5.000000e-01
  %i.bt = fcmp oge float %i.ac, 1.000000e+00
  %i.bu = select i1 %i.bt, float %i.ac, float 1.000000e+00
  %i.bv = fdiv float %i.bs, %i.bu
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.c
  %.0181 = phi float [ %i.bp, %bb.n ], [ 0.000000e+00, %bb.c ] ; 14 uses
  %.0180 = phi float [ %i.bv, %bb.n ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 7260
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !165
  %i.by = icmp eq i32 %i.bx, %1
  br i1 %i.by, label %bb.p, label %.critedge201

bb.p:                                             ; preds = %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 7312
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !170
  switch i32 %i.ca, label %.critedge201 [
    i32 1, label %bb.q
    i32 4, label %bb.u
  ]

bb.q:                                             ; preds = %bb.p
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.cc = load i8, ptr %i.cb, align 8, !tbaa !164, !range !135, !noundef !136
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN5ImGui13ClearActiveIDEv()
  br label %.critedge201

bb.s:                                             ; preds = %bb.q
  %i.ce = fcmp ogt float %i.ac, 0.000000e+00
  br i1 %i.ce, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.h
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !141
  %i.ci = extractelement <2 x float> %i.aj, i64 0
  %i.cj = fsub float %i.ch, %i.ci
  %i.ck = fdiv float %i.cj, %i.ac                 ; 3 uses
  %i.cl = fcmp olt float %i.ck, 0.000000e+00
  %i.cm = fcmp ogt float %i.ck, 1.000000e+00
  %i.cn = select i1 %i.cm, float 1.000000e+00, float %i.ck
  %i.co = select i1 %i.cl, float 0.000000e+00, float %i.cn
  br label %.thread

.thread:                                          ; preds = %bb.t, %bb.s
  %i.cp = phi float [ %i.co, %bb.t ], [ 0.000000e+00, %bb.s ] ; 2 uses
  %i.cq = fsub float 1.000000e+00, %i.cp
  %.0172 = select i1 %.not195.not, float %i.cp, float %i.cq
  br label %bb.az

bb.u:                                             ; preds = %bb.p
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 7272 ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 8, !tbaa !171, !range !135, !noundef !136
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 12348
  store float 0.000000e+00, ptr %i.cu, align 4, !tbaa !238
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 12352
  store i8 0, ptr %i.cv, align 8, !tbaa !239
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cw = tail call <2 x float> @_ZN5ImGui19GetNavInputAmount2dEi18ImGuiInputReadModeff(i32 noundef 3, i32 noundef 5, float noundef 0.000000e+00, float noundef 0.000000e+00) ; 2 uses
  %.sroa.0.0.vec.extract = extractelement <2 x float> %i.cw, i64 0
  %.sroa.0.4.vec.extract = extractelement <2 x float> %i.cw, i64 1
  %i.cx = fneg float %.sroa.0.4.vec.extract
  %i.cy = select i1 %.not195.not, float %.sroa.0.0.vec.extract, float %i.cx ; 4 uses
  %i.cz = fcmp une float %i.cy, 0.000000e+00
  br i1 %i.cz, label %bb.x, label %._crit_edge

._crit_edge:                                      ; preds = %bb.w
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 12348
  %.pre284 = load float, ptr %.phi.trans.insert, align 4, !tbaa !238
  br label %bb.ak

bb.x:                                             ; preds = %bb.w
  br i1 %i.f, label %.critedge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.da = load i8, ptr %6, align 1, !tbaa !148    ; 2 uses
  %.not24.i.i202 = icmp eq i8 %i.da, 0
  br i1 %.not24.i.i202, label %_Z22ImParseFormatPrecisionPKci.exit235.thread, label %.lr.ph.i.i203

.lr.ph.i.i203:                                    ; preds = %bb.y, %bb.aa
  %.pr.i204 = phi i8 [ %i.df, %bb.aa ], [ %i.da, %bb.y ]
  %.01025.i.i205 = phi ptr [ %i.de, %bb.aa ], [ %6, %bb.y ] ; 3 uses
  %i.db = icmp eq i8 %.pr.i204, 37                ; 2 uses
  br i1 %i.db, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i.i203
  %i.dc = getelementptr inbounds nuw i8, ptr %.01025.i.i205, i64 1
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !148
  %.not15.i.i210 = icmp eq i8 %i.dd, 37
  br i1 %.not15.i.i210, label %bb.aa, label %.preheader.i211

bb.aa:                                            ; preds = %bb.z, %.lr.ph.i.i203
  %spec.select.idx.i.i206 = zext i1 %i.db to i64
  %spec.select.i.i207 = getelementptr inbounds nuw i8, ptr %.01025.i.i205, i64 %spec.select.idx.i.i206
  %i.de = getelementptr inbounds nuw i8, ptr %spec.select.i.i207, i64 1 ; 2 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !148 ; 2 uses
  %.not.i.i208 = icmp eq i8 %i.df, 0
  br i1 %.not.i.i208, label %_Z22ImParseFormatPrecisionPKci.exit235.thread, label %.lr.ph.i.i203

.preheader.i211:                                  ; preds = %bb.z, %.preheader.i211
  %.pn.i212 = phi ptr [ %.018.i213, %.preheader.i211 ], [ %.01025.i.i205, %bb.z ] ; 2 uses
  %.018.i213 = getelementptr inbounds nuw i8, ptr %.pn.i212, i64 1 ; 2 uses
  %i.dg = load i8, ptr %.018.i213, align 1, !tbaa !148 ; 3 uses
  %i.dh = add i8 %i.dg, -48
  %or.cond23.i214 = icmp ult i8 %i.dh, 10
  br i1 %or.cond23.i214, label %.preheader.i211, label %.critedge.i215, !llvm.loop !1

.critedge.i215:                                   ; preds = %.preheader.i211
  %i.di = icmp eq i8 %i.dg, 46
  br i1 %i.di, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.critedge.i215
  %i.dj = getelementptr inbounds nuw i8, ptr %.pn.i212, i64 2 ; 2 uses
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !148
  %.not.i24.i220 = icmp eq i8 %i.dk, 45           ; 2 uses
  %spec.select.idx.i25.i221 = zext i1 %.not.i24.i220 to i64
  %spec.select.i26.i222 = getelementptr inbounds nuw i8, ptr %i.dj, i64 %spec.select.idx.i25.i221 ; 2 uses
  %i.dl = load i8, ptr %spec.select.i26.i222, align 1, !tbaa !148
  %i.dm = icmp eq i8 %i.dl, 43
  %.1.idx.i.i223 = zext i1 %i.dm to i64
  %.1.i.i224 = getelementptr inbounds nuw i8, ptr %spec.select.i26.i222, i64 %.1.idx.i.i223 ; 2 uses
  %i.dn = load i8, ptr %.1.i.i224, align 1, !tbaa !148 ; 3 uses
  %i.do = add i8 %i.dn, -48
  %or.cond15.i.i225 = icmp ult i8 %i.do, 10
  br i1 %or.cond15.i.i225, label %.lr.ph.i27.i230, label %_ZL6ImAtoiIiEPKcS1_PT_.exit.i226

.lr.ph.i27.i230:                                  ; preds = %bb.ab, %.lr.ph.i27.i230
  %i.dp = phi i8 [ %i.du, %.lr.ph.i27.i230 ], [ %i.dn, %bb.ab ]
  %.017.i.i231 = phi i32 [ %i.dt, %.lr.ph.i27.i230 ], [ 0, %bb.ab ]
  %.216.i.i232 = phi ptr [ %i.dr, %.lr.ph.i27.i230 ], [ %.1.i.i224, %bb.ab ]
  %i.dq = mul nsw i32 %.017.i.i231, 10
  %i.dr = getelementptr inbounds nuw i8, ptr %.216.i.i232, i64 1 ; 2 uses
  %narrow.i.i233 = add nsw i8 %i.dp, -48
  %i.ds = zext nneg i8 %narrow.i.i233 to i32
  %i.dt = add nsw i32 %i.dq, %i.ds                ; 2 uses
  %i.du = load i8, ptr %i.dr, align 1, !tbaa !148 ; 3 uses
  %i.dv = add i8 %i.du, -48
  %or.cond.i.i234 = icmp ult i8 %i.dv, 10
  br i1 %or.cond.i.i234, label %.lr.ph.i27.i230, label %_ZL6ImAtoiIiEPKcS1_PT_.exit.i226, !llvm.loop !2

_ZL6ImAtoiIiEPKcS1_PT_.exit.i226:                 ; preds = %.lr.ph.i27.i230, %bb.ab
  %i.dw = phi i8 [ %i.dn, %bb.ab ], [ %i.du, %.lr.ph.i27.i230 ]
  %.0.lcssa.i.i227 = phi i32 [ 0, %bb.ab ], [ %i.dt, %.lr.ph.i27.i230 ] ; 2 uses
  %i.dx = sub nsw i32 0, %.0.lcssa.i.i227
  %i.dy = select i1 %.not.i24.i220, i32 %i.dx, i32 %.0.lcssa.i.i227 ; 2 uses
  %or.cond.i228 = icmp ugt i32 %i.dy, 99
  %spec.select.i229 = select i1 %or.cond.i228, i32 3, i32 %i.dy
  %i.dz = freeze i32 %spec.select.i229
  br label %bb.ac

bb.ac:                                            ; preds = %_ZL6ImAtoiIiEPKcS1_PT_.exit.i226, %.critedge.i215
  %i.ea = phi i8 [ %i.dg, %.critedge.i215 ], [ %i.dw, %_ZL6ImAtoiIiEPKcS1_PT_.exit.i226 ] ; 2 uses
  %.031.i216 = phi i32 [ 2147483647, %.critedge.i215 ], [ %i.dz, %_ZL6ImAtoiIiEPKcS1_PT_.exit.i226 ] ; 3 uses
  switch i8 %i.ea, label %bb.ad [
    i8 101, label %.critedge
    i8 69, label %.critedge
    i8 103, label %bb.ae
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.eb = icmp eq i8 %i.ea, 71
  %i.ec = icmp eq i32 %.031.i216, 2147483647
  %or.cond3.i218 = and i1 %i.eb, %i.ec
  %i.ed = icmp sgt i32 %.031.i216, 0
  %or.cond269 = xor i1 %i.ed, %or.cond3.i218
  br i1 %or.cond269, label %_Z22ImParseFormatPrecisionPKci.exit235.thread, label %.critedge

bb.ae:                                            ; preds = %bb.ac
  %i.ee = add i32 %.031.i216, -1
  %or.cond267 = icmp ult i32 %i.ee, 2147483646
  br i1 %or.cond267, label %_Z22ImParseFormatPrecisionPKci.exit235.thread, label %.critedge

_Z22ImParseFormatPrecisionPKci.exit235.thread:    ; preds = %bb.aa, %bb.ad, %bb.ae, %bb.y
  %i.ef = fdiv float %i.cy, 1.000000e+02          ; 2 uses
  %i.eg = load ptr, ptr @GImGui, align 8, !tbaa !22 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 892
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !141
  %i.ej = fcmp ogt float %i.ei, 0.000000e+00
  br i1 %i.ej, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %_Z22ImParseFormatPrecisionPKci.exit235.thread
  %i.ek = fdiv float %i.ef, 1.000000e+01
  br label %bb.aj

.critedge:                                        ; preds = %bb.ad, %bb.ae, %bb.ac, %bb.ac, %bb.x
  %9 = uitofp nneg i32 %i.t to float
  %or.cond199 = icmp ult i32 %i.t, 101
  %.pre.pre = load ptr, ptr @GImGui, align 8, !tbaa !22 ; 3 uses
  br i1 %or.cond199, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.critedge
  %i.el = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 892
  %i.em = load float, ptr %i.el, align 4, !tbaa !141
  %i.en = fcmp ogt float %i.em, 0.000000e+00
  br i1 %i.en, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %.critedge
  %i.eo = fcmp olt float %i.cy, 0.000000e+00
  %i.ep = select i1 %i.eo, float -1.000000e+00, float 1.000000e+00
  %i.eq = fdiv float %i.ep, %9
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.er = fdiv float %i.cy, 1.000000e+02
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %_Z22ImParseFormatPrecisionPKci.exit235.thread, %bb.af
  %i.es = phi ptr [ %i.eg, %bb.af ], [ %i.eg, %_Z22ImParseFormatPrecisionPKci.exit235.thread ], [ %.pre.pre, %bb.ah ], [ %.pre.pre, %bb.ai ]
  %.0171 = phi float [ %i.ek, %bb.af ], [ %i.ef, %_Z22ImParseFormatPrecisionPKci.exit235.thread ], [ %i.eq, %bb.ah ], [ %i.er, %bb.ai ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 896
  %i.eu = load float, ptr %i.et, align 4, !tbaa !141
  %i.ev = fcmp ogt float %i.eu, 0.000000e+00
  %i.ew = fmul float %.0171, 1.000000e+01
  %.1 = select i1 %i.ev, float %i.ew, float %.0171
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 12348 ; 2 uses
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !238
  %i.ez = fadd float %i.ey, %.1                   ; 2 uses
  store float %i.ez, ptr %i.ex, align 4, !tbaa !238
  %i.fa = getelementptr inbounds nuw i8, ptr %i.a, i64 12352
  store i8 1, ptr %i.fa, align 8, !tbaa !239
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge, %bb.aj
  %i.fb = phi float [ %.pre284, %._crit_edge ], [ %i.ez, %bb.aj ] ; 7 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 12348 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 7712
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !224
  %i.ff = icmp eq i32 %i.fe, %1
  br i1 %i.ff, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.fg = load i8, ptr %i.cr, align 8, !tbaa !171, !range !135, !noundef !136
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @_ZN5ImGui13ClearActiveIDEv()
  br label %.critedge201

bb.an:                                            ; preds = %bb.al, %bb.ak
  %i.fi = getelementptr inbounds nuw i8, ptr %i.a, i64 12352 ; 3 uses
  %i.fj = load i8, ptr %i.fi, align 8, !tbaa !239, !range !135, !noundef !136
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.ao, label %.critedge201

bb.ao:                                            ; preds = %bb.an
  %i.fl = icmp eq i32 %4, %5
  br i1 %i.fl, label %_ZN5ImGui20ScaleRatioFromValueTIjifEEfiT_S1_S1_bff.exit.thread, label %bb.ap

_ZN5ImGui20ScaleRatioFromValueTIjifEEfiT_S1_S1_bff.exit.thread: ; preds = %bb.ao
  %i.fm = fcmp ogt float %i.fb, 0.000000e+00
  br label %bb.av

bb.ap:                                            ; preds = %bb.ao
  %i.fn = load i32, ptr %3, align 4, !tbaa !188   ; 2 uses
  %..i = tail call i32 @llvm.umin.i32(i32 %4, i32 %5) ; 3 uses
  %.76.i = tail call i32 @llvm.umax.i32(i32 %4, i32 %5) ; 2 uses
  %i.fo = icmp ult i32 %i.fn, %..i
  %i.fp = tail call i32 @llvm.umin.i32(i32 %i.fn, i32 %.76.i)
  %i.fq = select i1 %i.fo, i32 %..i, i32 %i.fp    ; 2 uses
  br i1 %i.d, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %i.fr = icmp ult i32 %5, %4
  %i.fs = uitofp i32 %..i to float                ; 2 uses
  %i.ft = fcmp ogt float %.0181, %i.fs
  %i.fu = select i1 %i.ft, float %.0181, float %i.fs ; 3 uses
  %i.fv = uitofp i32 %.76.i to float              ; 2 uses
  %i.fw = fcmp ogt float %.0181, %i.fv
  %i.fx = select i1 %i.fw, float %.0181, float %i.fv ; 2 uses
  %i.fy = uitofp i32 %i.fq to float               ; 3 uses
  %i.fz = fcmp ult float %i.fu, %i.fy
  br i1 %i.fz, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.ga = fcmp ugt float %i.fx, %i.fy
  br i1 %i.ga, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.gb = fdiv float %i.fy, %i.fu
  %i.gc = tail call noundef float @logf(float noundef %i.gb) #36
  %i.gd = fdiv float %i.fx, %i.fu
  %i.ge = tail call noundef float @logf(float noundef %i.gd) #36
  %i.gf = fdiv float %i.gc, %i.ge
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  %.1.i = phi float [ %i.gf, %bb.as ], [ 0.000000e+00, %bb.aq ], [ 1.000000e+00, %bb.ar ] ; 2 uses
  %i.gg = fsub float 1.000000e+00, %.1.i
  %i.gh = select i1 %i.fr, float %i.gg, float %.1.i
  br label %_ZN5ImGui20ScaleRatioFromValueTIjifEEfiT_S1_S1_bff.exit

bb.au:                                            ; preds = %bb.ap
  %i.gi = sub i32 %i.fq, %4
  %i.gj = sitofp i32 %i.gi to float
  %i.gk = sitofp i32 %i.r to float
  %i.gl = fdiv float %i.gj, %i.gk
  br label %_ZN5ImGui20ScaleRatioFromValueTIjifEEfiT_S1_S1_bff.exit

_ZN5ImGui20ScaleRatioFromValueTIjifEEfiT_S1_S1_bff.exit: ; preds = %bb.at, %bb.au
  %.149.i = phi float [ %i.gl, %bb.au ], [ %i.gh, %bb.at ] ; 2 uses
  %i.gm = fcmp oge float %.149.i, 1.000000e+00
  %i.gn = fcmp ogt float %i.fb, 0.000000e+00      ; 2 uses
  %or.cond3 = select i1 %i.gm, i1 %i.gn, i1 false
  br i1 %or.cond3, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %_ZN5ImGui20ScaleRatioFromValueTIjifEEfiT_S1_S1_bff.exit.thread, %_ZN5ImGui20ScaleRatioFromValueTIjifEEfiT_S1_S1_bff.exit
  %i.go = phi i1 [ %i.fm, %_ZN5ImGui20ScaleRatioFromValueTIjifEEfiT_S1_S1_bff.exit.thread ], [ %i.gn, %_ZN5ImGui20ScaleRatioFromValueTIjifEEfiT_S1_S1_bff.exit ]
  %.149.i258 = phi float [ 0.000000e+00, %_ZN5ImGui20ScaleRatioFromValueTIjifEEfiT_S1_S1_bff.exit.thread ], [ %.149.i, %_ZN5ImGui20ScaleRatioFromValueTIjifEEfiT_S1_S1_bff.exit ] ; 3 uses
  %i.gp = fcmp ole float %.149.i258, 0.000000e+00
  %i.gq = fcmp olt float %i.fb, 0.000000e+00
  %or.cond5 = select i1 %i.gp, i1 %i.gq, i1 false
  br i1 %or.cond5, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gr = fadd float %i.fb, %.149.i258            ; 3 uses
  %i.gs = fcmp olt float %i.gr, 0.000000e+00
  %i.gt = fcmp ogt float %i.gr, 1.000000e+00
  %i.gu = select i1 %i.gt, float 1.000000e+00, float %i.gr
  %i.gv = select i1 %i.gs, float 0.000000e+00, float %i.gu ; 2 uses
  %i.gw = tail call noundef i32 @_ZN5ImGui20ScaleValueFromRatioTIjifEET_ifS1_S1_bff(i32 noundef %2, float noundef %i.gv, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %i.d, float noundef %.0181, float noundef %.0180) ; 2 uses
  %i.gx = and i32 %7, 64
  %.not = icmp eq i32 %i.gx, 0
  br i1 %.not, label %bb.ax, label %.thread262

bb.ax:                                            ; preds = %bb.aw
  %i.gy = tail call noundef i32 @_ZN5ImGui22RoundScalarWithFormatTIjiEET_PKciS1_(ptr noundef %6, i32 noundef %2, i32 noundef %i.gw)
  br label %.thread262

.thread262:                                       ; preds = %bb.ax, %bb.aw
  %.0170 = phi i32 [ %i.gw, %bb.aw ], [ %i.gy, %bb.ax ]
  %i.gz = tail call noundef float @_ZN5ImGui20ScaleRatioFromValueTIjifEEfiT_S1_S1_bff(i32 noundef %2, i32 noundef %.0170, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %i.d, float noundef %.0181, float noundef %.0180)
  %i.ha = fsub float %i.gz, %.149.i258            ; 3 uses
  %i.hb = load float, ptr %i.fc, align 4, !tbaa !238
  %i.hc = fcmp oge float %i.ha, %i.fb
  %i.hd = fcmp olt float %i.ha, %i.fb
  %.sink313 = select i1 %i.go, i1 %i.hd, i1 %i.hc
  %i.he = select i1 %.sink313, float %i.ha, float %i.fb
  %i.hf = fsub float %i.hb, %i.he
  store float %i.hf, ptr %i.fc, align 4, !tbaa !238
  store i8 0, ptr %i.fi, align 8, !tbaa !239
  br label %bb.az

bb.ay:                                            ; preds = %bb.av, %_ZN5ImGui20ScaleRatioFromValueTIjifEEfiT_S1_S1_bff.exit
  store float 0.000000e+00, ptr %i.fc, align 4, !tbaa !238
  store i8 0, ptr %i.fi, align 8, !tbaa !239
  br label %.critedge201

bb.az:                                            ; preds = %.thread262, %.thread
  %.3261 = phi float [ %.0172, %.thread ], [ %i.gv, %.thread262 ] ; 7 uses
  %i.hg = icmp eq i32 %4, %5
  br i1 %i.hg, label %_ZN5ImGui20ScaleValueFromRatioTIjifEET_ifS1_S1_bff.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  br i1 %i.d, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %bb.ba
  %i.hh = fcmp ugt float %.3261, 0.000000e+00
  br i1 %i.hh, label %bb.bc, label %_ZN5ImGui20ScaleValueFromRatioTIjifEET_ifS1_S1_bff.exit

bb.bc:                                            ; preds = %bb.bb
  %i.hi = fcmp ult float %.3261, 1.000000e+00
  br i1 %i.hi, label %bb.bd, label %_ZN5ImGui20ScaleValueFromRatioTIjifEET_ifS1_S1_bff.exit

bb.bd:                                            ; preds = %bb.bc
  %i.hj = icmp ult i32 %5, %4                     ; 3 uses
  %i.hk = uitofp i32 %4 to float                  ; 2 uses
  %i.hl = fcmp ogt float %.0181, %i.hk
  %..i238.a = select i1 %i.hl, float %.0181, float %i.hk ; 2 uses
  %i.hm = uitofp i32 %5 to float                  ; 2 uses
  %i.hn = fcmp ogt float %.0181, %i.hm
  %i.ho = select i1 %i.hn, float %.0181, float %i.hm ; 2 uses
  %.088.i = select i1 %i.hj, float %i.ho, float %..i238.a ; 2 uses
  %.087.i = select i1 %i.hj, float %..i238.a, float %i.ho
  %i.hp = fsub float 1.000000e+00, %.3261
  %i.hq = select i1 %i.hj, float %i.hp, float %.3261
  %i.hr = fdiv float %.087.i, %.088.i
  %i.hs = tail call noundef float @powf(float noundef %i.hr, float noundef %i.hq) #36
  %i.ht = fmul float %.088.i, %i.hs
  %i.hu = fptoui float %i.ht to i32
  br label %_ZN5ImGui20ScaleValueFromRatioTIjifEET_ifS1_S1_bff.exit

bb.be:                                            ; preds = %bb.ba
  %i.hv = icmp eq i32 %i.e, 8
  br i1 %i.hv, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.hw = uitofp i32 %4 to float
  %i.hx = uitofp i32 %i.r to float
  %i.hy = tail call float @llvm.fmuladd.f32(float %i.hx, float %.3261, float %i.hw)
  %i.hz = fptoui float %i.hy to i32
  br label %_ZN5ImGui20ScaleValueFromRatioTIjifEET_ifS1_S1_bff.exit

bb.bg:                                            ; preds = %bb.be
  %i.ia = fcmp olt float %.3261, 1.000000e+00
  br i1 %i.ia, label %bb.bh, label %_ZN5ImGui20ScaleValueFromRatioTIjifEET_ifS1_S1_bff.exit

end_hunk_0
begin_hunk_1_@_ZN5ImGui15SliderBehaviorTIyxdEEbRK6ImRectjiPT_S4_S4_PKciPS1_:bb.a
  %i.bo = phi float [ %i.bn, %_Z22ImParseFormatPrecisionPKci.exit ], [ 1.000000e+00, %bb.d ]
  %i.bp = tail call noundef float @powf(float noundef 1.000000e-01, float noundef %i.bo) #36
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 5604
  %i.br = load float, ptr %i.bq, align 4, !tbaa !237
  %i.bs = fmul float %i.br, 5.000000e-01
  %i.bt = fcmp oge float %i.ac, 1.000000e+00
  %i.bu = select i1 %i.bt, float %i.ac, float 1.000000e+00
  %i.bv = fdiv float %i.bs, %i.bu
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.c
  %.0181 = phi float [ %i.bp, %bb.n ], [ 0.000000e+00, %bb.c ] ; 5 uses
  %.0180 = phi float [ %i.bv, %bb.n ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 7260
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !165
  %i.by = icmp eq i32 %i.bx, %1
  br i1 %i.by, label %bb.p, label %.critedge201

bb.p:                                             ; preds = %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 7312
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !170
  switch i32 %i.ca, label %.critedge201 [
    i32 1, label %bb.q
    i32 4, label %bb.u
  ]

bb.q:                                             ; preds = %bb.p
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.cc = load i8, ptr %i.cb, align 8, !tbaa !164, !range !135, !noundef !136
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN5ImGui13ClearActiveIDEv()
  br label %.critedge201

bb.s:                                             ; preds = %bb.q
  %i.ce = fcmp ogt float %i.ac, 0.000000e+00
  br i1 %i.ce, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.h
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !141
  %i.ci = extractelement <2 x float> %i.aj, i64 0
  %i.cj = fsub float %i.ch, %i.ci
  %i.ck = fdiv float %i.cj, %i.ac                 ; 3 uses
  %i.cl = fcmp olt float %i.ck, 0.000000e+00
  %i.cm = fcmp ogt float %i.ck, 1.000000e+00
  %i.cn = select i1 %i.cm, float 1.000000e+00, float %i.ck
  %i.co = select i1 %i.cl, float 0.000000e+00, float %i.cn
  br label %.thread

.thread:                                          ; preds = %bb.t, %bb.s
  %i.cp = phi float [ %i.co, %bb.t ], [ 0.000000e+00, %bb.s ] ; 2 uses
  %i.cq = fsub float 1.000000e+00, %i.cp
  %.0172 = select i1 %.not195.not, float %i.cp, float %i.cq
  br label %bb.az

bb.u:                                             ; preds = %bb.p
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 7272 ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 8, !tbaa !171, !range !135, !noundef !136
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 12348
  store float 0.000000e+00, ptr %i.cu, align 4, !tbaa !238
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 12352
  store i8 0, ptr %i.cv, align 8, !tbaa !239
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cw = tail call <2 x float> @_ZN5ImGui19GetNavInputAmount2dEi18ImGuiInputReadModeff(i32 noundef 3, i32 noundef 5, float noundef 0.000000e+00, float noundef 0.000000e+00) ; 2 uses
  %.sroa.0.0.vec.extract = extractelement <2 x float> %i.cw, i64 0
  %.sroa.0.4.vec.extract = extractelement <2 x float> %i.cw, i64 1
  %i.cx = fneg float %.sroa.0.4.vec.extract
  %i.cy = select i1 %.not195.not, float %.sroa.0.0.vec.extract, float %i.cx ; 4 uses
  %i.cz = fcmp une float %i.cy, 0.000000e+00
  br i1 %i.cz, label %bb.x, label %._crit_edge

._crit_edge:                                      ; preds = %bb.w
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 12348
  %.pre284 = load float, ptr %.phi.trans.insert, align 4, !tbaa !238
  br label %bb.ak

bb.x:                                             ; preds = %bb.w
  br i1 %i.f, label %.critedge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.da = load i8, ptr %6, align 1, !tbaa !148    ; 2 uses
  %.not24.i.i202 = icmp eq i8 %i.da, 0
  br i1 %.not24.i.i202, label %_Z22ImParseFormatPrecisionPKci.exit235.thread, label %.lr.ph.i.i203

.lr.ph.i.i203:                                    ; preds = %bb.y, %bb.aa
  %.pr.i204 = phi i8 [ %i.df, %bb.aa ], [ %i.da, %bb.y ]
  %.01025.i.i205 = phi ptr [ %i.de, %bb.aa ], [ %6, %bb.y ] ; 3 uses
  %i.db = icmp eq i8 %.pr.i204, 37                ; 2 uses
  br i1 %i.db, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i.i203
  %i.dc = getelementptr inbounds nuw i8, ptr %.01025.i.i205, i64 1
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !148
  %.not15.i.i210 = icmp eq i8 %i.dd, 37
  br i1 %.not15.i.i210, label %bb.aa, label %.preheader.i211

bb.aa:                                            ; preds = %bb.z, %.lr.ph.i.i203
  %spec.select.idx.i.i206 = zext i1 %i.db to i64
  %spec.select.i.i207 = getelementptr inbounds nuw i8, ptr %.01025.i.i205, i64 %spec.select.idx.i.i206
  %i.de = getelementptr inbounds nuw i8, ptr %spec.select.i.i207, i64 1 ; 2 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !148 ; 2 uses
  %.not.i.i208 = icmp eq i8 %i.df, 0
  br i1 %.not.i.i208, label %_Z22ImParseFormatPrecisionPKci.exit235.thread, label %.lr.ph.i.i203

.preheader.i211:                                  ; preds = %bb.z, %.preheader.i211
  %.pn.i212 = phi ptr [ %.018.i213, %.preheader.i211 ], [ %.01025.i.i205, %bb.z ] ; 2 uses
  %.018.i213 = getelementptr inbounds nuw i8, ptr %.pn.i212, i64 1 ; 2 uses
  %i.dg = load i8, ptr %.018.i213, align 1, !tbaa !148 ; 3 uses
  %i.dh = add i8 %i.dg, -48
  %or.cond23.i214 = icmp ult i8 %i.dh, 10
  br i1 %or.cond23.i214, label %.preheader.i211, label %.critedge.i215, !llvm.loop !1

.critedge.i215:                                   ; preds = %.preheader.i211
  %i.di = icmp eq i8 %i.dg, 46
  br i1 %i.di, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.critedge.i215
  %i.dj = getelementptr inbounds nuw i8, ptr %.pn.i212, i64 2 ; 2 uses
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !148
  %.not.i24.i220 = icmp eq i8 %i.dk, 45           ; 2 uses
  %spec.select.idx.i25.i221 = zext i1 %.not.i24.i220 to i64
  %spec.select.i26.i222 = getelementptr inbounds nuw i8, ptr %i.dj, i64 %spec.select.idx.i25.i221 ; 2 uses
  %i.dl = load i8, ptr %spec.select.i26.i222, align 1, !tbaa !148
  %i.dm = icmp eq i8 %i.dl, 43
  %.1.idx.i.i223 = zext i1 %i.dm to i64
  %.1.i.i224 = getelementptr inbounds nuw i8, ptr %spec.select.i26.i222, i64 %.1.idx.i.i223 ; 2 uses
  %i.dn = load i8, ptr %.1.i.i224, align 1, !tbaa !148 ; 3 uses
  %i.do = add i8 %i.dn, -48
  %or.cond15.i.i225 = icmp ult i8 %i.do, 10
  br i1 %or.cond15.i.i225, label %.lr.ph.i27.i230, label %_ZL6ImAtoiIiEPKcS1_PT_.exit.i226

.lr.ph.i27.i230:                                  ; preds = %bb.ab, %.lr.ph.i27.i230
  %i.dp = phi i8 [ %i.du, %.lr.ph.i27.i230 ], [ %i.dn, %bb.ab ]
  %.017.i.i231 = phi i32 [ %i.dt, %.lr.ph.i27.i230 ], [ 0, %bb.ab ]
  %.216.i.i232 = phi ptr [ %i.dr, %.lr.ph.i27.i230 ], [ %.1.i.i224, %bb.ab ]
  %i.dq = mul nsw i32 %.017.i.i231, 10
  %i.dr = getelementptr inbounds nuw i8, ptr %.216.i.i232, i64 1 ; 2 uses
  %narrow.i.i233 = add nsw i8 %i.dp, -48
  %i.ds = zext nneg i8 %narrow.i.i233 to i32
  %i.dt = add nsw i32 %i.dq, %i.ds                ; 2 uses
  %i.du = load i8, ptr %i.dr, align 1, !tbaa !148 ; 3 uses
  %i.dv = add i8 %i.du, -48
  %or.cond.i.i234 = icmp ult i8 %i.dv, 10
  br i1 %or.cond.i.i234, label %.lr.ph.i27.i230, label %_ZL6ImAtoiIiEPKcS1_PT_.exit.i226, !llvm.loop !2

_ZL6ImAtoiIiEPKcS1_PT_.exit.i226:                 ; preds = %.lr.ph.i27.i230, %bb.ab
  %i.dw = phi i8 [ %i.dn, %bb.ab ], [ %i.du, %.lr.ph.i27.i230 ]
  %.0.lcssa.i.i227 = phi i32 [ 0, %bb.ab ], [ %i.dt, %.lr.ph.i27.i230 ] ; 2 uses
  %i.dx = sub nsw i32 0, %.0.lcssa.i.i227
  %i.dy = select i1 %.not.i24.i220, i32 %i.dx, i32 %.0.lcssa.i.i227 ; 2 uses
  %or.cond.i228 = icmp ugt i32 %i.dy, 99
  %spec.select.i229 = select i1 %or.cond.i228, i32 3, i32 %i.dy
  %i.dz = freeze i32 %spec.select.i229
  br label %bb.ac

bb.ac:                                            ; preds = %_ZL6ImAtoiIiEPKcS1_PT_.exit.i226, %.critedge.i215
  %i.ea = phi i8 [ %i.dg, %.critedge.i215 ], [ %i.dw, %_ZL6ImAtoiIiEPKcS1_PT_.exit.i226 ] ; 2 uses
  %.031.i216 = phi i32 [ 2147483647, %.critedge.i215 ], [ %i.dz, %_ZL6ImAtoiIiEPKcS1_PT_.exit.i226 ] ; 3 uses
  switch i8 %i.ea, label %bb.ad [
    i8 101, label %.critedge
    i8 69, label %.critedge
    i8 103, label %bb.ae
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.eb = icmp eq i8 %i.ea, 71
  %i.ec = icmp eq i32 %.031.i216, 2147483647
  %or.cond3.i218 = and i1 %i.eb, %i.ec
  %i.ed = icmp sgt i32 %.031.i216, 0
  %or.cond269 = xor i1 %i.ed, %or.cond3.i218
  br i1 %or.cond269, label %_Z22ImParseFormatPrecisionPKci.exit235.thread, label %.critedge

bb.ae:                                            ; preds = %bb.ac
  %i.ee = add i32 %.031.i216, -1
  %or.cond267 = icmp ult i32 %i.ee, 2147483646
  br i1 %or.cond267, label %_Z22ImParseFormatPrecisionPKci.exit235.thread, label %.critedge

_Z22ImParseFormatPrecisionPKci.exit235.thread:    ; preds = %bb.aa, %bb.ad, %bb.ae, %bb.y
  %i.ef = fdiv float %i.cy, 1.000000e+02          ; 2 uses
  %i.eg = load ptr, ptr @GImGui, align 8, !tbaa !22 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 892
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !141
  %i.ej = fcmp ogt float %i.ei, 0.000000e+00
  br i1 %i.ej, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %_Z22ImParseFormatPrecisionPKci.exit235.thread
  %i.ek = fdiv float %i.ef, 1.000000e+01
  br label %bb.aj

.critedge:                                        ; preds = %bb.ad, %bb.ae, %bb.ac, %bb.ac, %bb.x
  %9 = uitofp nneg i64 %i.t to float
  %or.cond199 = icmp ult i64 %i.t, 101
  %.pre.pre = load ptr, ptr @GImGui, align 8, !tbaa !22 ; 3 uses
  br i1 %or.cond199, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.critedge
  %i.el = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 892
  %i.em = load float, ptr %i.el, align 4, !tbaa !141
  %i.en = fcmp ogt float %i.em, 0.000000e+00
  br i1 %i.en, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %.critedge
  %i.eo = fcmp olt float %i.cy, 0.000000e+00
  %i.ep = select i1 %i.eo, float -1.000000e+00, float 1.000000e+00
  %i.eq = fdiv float %i.ep, %9
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.er = fdiv float %i.cy, 1.000000e+02
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %_Z22ImParseFormatPrecisionPKci.exit235.thread, %bb.af
  %i.es = phi ptr [ %i.eg, %bb.af ], [ %i.eg, %_Z22ImParseFormatPrecisionPKci.exit235.thread ], [ %.pre.pre, %bb.ah ], [ %.pre.pre, %bb.ai ]
  %.0171 = phi float [ %i.ek, %bb.af ], [ %i.ef, %_Z22ImParseFormatPrecisionPKci.exit235.thread ], [ %i.eq, %bb.ah ], [ %i.er, %bb.ai ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 896
  %i.eu = load float, ptr %i.et, align 4, !tbaa !141
  %i.ev = fcmp ogt float %i.eu, 0.000000e+00
  %i.ew = fmul float %.0171, 1.000000e+01
  %.1 = select i1 %i.ev, float %i.ew, float %.0171
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 12348 ; 2 uses
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !238
  %i.ez = fadd float %i.ey, %.1                   ; 2 uses
  store float %i.ez, ptr %i.ex, align 4, !tbaa !238
  %i.fa = getelementptr inbounds nuw i8, ptr %i.a, i64 12352
  store i8 1, ptr %i.fa, align 8, !tbaa !239
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge, %bb.aj
  %i.fb = phi float [ %.pre284, %._crit_edge ], [ %i.ez, %bb.aj ] ; 7 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 12348 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 7712
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !224
  %i.ff = icmp eq i32 %i.fe, %1
  br i1 %i.ff, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.fg = load i8, ptr %i.cr, align 8, !tbaa !171, !range !135, !noundef !136
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @_ZN5ImGui13ClearActiveIDEv()
  br label %.critedge201

bb.an:                                            ; preds = %bb.al, %bb.ak
  %i.fi = getelementptr inbounds nuw i8, ptr %i.a, i64 12352 ; 3 uses
  %i.fj = load i8, ptr %i.fi, align 8, !tbaa !239, !range !135, !noundef !136
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.ao, label %.critedge201

bb.ao:                                            ; preds = %bb.an
  %i.fl = icmp eq i64 %4, %5
  br i1 %i.fl, label %_ZN5ImGui20ScaleRatioFromValueTIyxdEEfiT_S1_S1_bff.exit.thread, label %bb.ap

_ZN5ImGui20ScaleRatioFromValueTIyxdEEfiT_S1_S1_bff.exit.thread: ; preds = %bb.ao
  %i.fm = fcmp ogt float %i.fb, 0.000000e+00
  br label %bb.av

bb.ap:                                            ; preds = %bb.ao
  %i.fn = load i64, ptr %3, align 8, !tbaa !190   ; 2 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %4, i64 %5) ; 3 uses
  %.76.i = tail call i64 @llvm.umax.i64(i64 %4, i64 %5) ; 2 uses
  %i.fo = icmp ult i64 %i.fn, %..i
  %i.fp = tail call i64 @llvm.umin.i64(i64 %i.fn, i64 %.76.i)
  %i.fq = select i1 %i.fo, i64 %..i, i64 %i.fp    ; 2 uses
  br i1 %i.d, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %i.fr = icmp ult i64 %5, %4
  %i.fs = uitofp i64 %..i to double               ; 2 uses
  %i.ft = fpext float %.0181 to double            ; 4 uses
  %i.fu = fcmp olt double %i.fs, %i.ft
  %i.fv = select i1 %i.fu, double %i.ft, double %i.fs ; 3 uses
  %i.fw = uitofp i64 %.76.i to double             ; 2 uses
  %i.fx = fcmp olt double %i.fw, %i.ft
  %i.fy = select i1 %i.fx, double %i.ft, double %i.fw ; 2 uses
  %i.fz = uitofp i64 %i.fq to double              ; 3 uses
  %i.ga = fcmp ult double %i.fv, %i.fz
  br i1 %i.ga, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.gb = fcmp ugt double %i.fy, %i.fz
  br i1 %i.gb, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.gc = fdiv double %i.fz, %i.fv
  %i.gd = tail call noundef double @log(double noundef %i.gc) #36
  %i.ge = fdiv double %i.fy, %i.fv
  %i.gf = tail call noundef double @log(double noundef %i.ge) #36
  %i.gg = fdiv double %i.gd, %i.gf
  %i.gh = fptrunc double %i.gg to float
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  %.1.i = phi float [ %i.gh, %bb.as ], [ 0.000000e+00, %bb.aq ], [ 1.000000e+00, %bb.ar ] ; 2 uses
  %i.gi = fsub float 1.000000e+00, %.1.i
  %i.gj = select i1 %i.fr, float %i.gi, float %.1.i
  br label %_ZN5ImGui20ScaleRatioFromValueTIyxdEEfiT_S1_S1_bff.exit

bb.au:                                            ; preds = %bb.ap
  %i.gk = sub i64 %i.fq, %4
  %i.gl = sitofp i64 %i.gk to double
  %i.gm = sitofp i64 %i.r to double
  %i.gn = fdiv double %i.gl, %i.gm
  %i.go = fptrunc double %i.gn to float
  br label %_ZN5ImGui20ScaleRatioFromValueTIyxdEEfiT_S1_S1_bff.exit

_ZN5ImGui20ScaleRatioFromValueTIyxdEEfiT_S1_S1_bff.exit: ; preds = %bb.at, %bb.au
  %.149.i = phi float [ %i.go, %bb.au ], [ %i.gj, %bb.at ] ; 2 uses
  %i.gp = fcmp oge float %.149.i, 1.000000e+00
  %i.gq = fcmp ogt float %i.fb, 0.000000e+00      ; 2 uses
  %or.cond3 = select i1 %i.gp, i1 %i.gq, i1 false
  br i1 %or.cond3, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %_ZN5ImGui20ScaleRatioFromValueTIyxdEEfiT_S1_S1_bff.exit.thread, %_ZN5ImGui20ScaleRatioFromValueTIyxdEEfiT_S1_S1_bff.exit
  %i.gr = phi i1 [ %i.fm, %_ZN5ImGui20ScaleRatioFromValueTIyxdEEfiT_S1_S1_bff.exit.thread ], [ %i.gq, %_ZN5ImGui20ScaleRatioFromValueTIyxdEEfiT_S1_S1_bff.exit ]
  %.149.i258 = phi float [ 0.000000e+00, %_ZN5ImGui20ScaleRatioFromValueTIyxdEEfiT_S1_S1_bff.exit.thread ], [ %.149.i, %_ZN5ImGui20ScaleRatioFromValueTIyxdEEfiT_S1_S1_bff.exit ] ; 3 uses
  %i.gs = fcmp ole float %.149.i258, 0.000000e+00
  %i.gt = fcmp olt float %i.fb, 0.000000e+00
  %or.cond5 = select i1 %i.gs, i1 %i.gt, i1 false
  br i1 %or.cond5, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gu = fadd float %i.fb, %.149.i258            ; 3 uses
  %i.gv = fcmp olt float %i.gu, 0.000000e+00
  %i.gw = fcmp ogt float %i.gu, 1.000000e+00
  %i.gx = select i1 %i.gw, float 1.000000e+00, float %i.gu
  %i.gy = select i1 %i.gv, float 0.000000e+00, float %i.gx ; 2 uses
  %i.gz = tail call noundef i64 @_ZN5ImGui20ScaleValueFromRatioTIyxdEET_ifS1_S1_bff(i32 noundef %2, float noundef %i.gy, i64 noundef %4, i64 noundef %5, i1 noundef zeroext %i.d, float noundef %.0181, float noundef %.0180) ; 2 uses
  %i.ha = and i32 %7, 64
  %.not = icmp eq i32 %i.ha, 0
  br i1 %.not, label %bb.ax, label %.thread262

bb.ax:                                            ; preds = %bb.aw
  %i.hb = tail call noundef i64 @_ZN5ImGui22RoundScalarWithFormatTIyxEET_PKciS1_(ptr noundef %6, i32 noundef %2, i64 noundef %i.gz)
  br label %.thread262

.thread262:                                       ; preds = %bb.ax, %bb.aw
  %.0170 = phi i64 [ %i.gz, %bb.aw ], [ %i.hb, %bb.ax ]
  %i.hc = tail call noundef float @_ZN5ImGui20ScaleRatioFromValueTIyxdEEfiT_S1_S1_bff(i32 noundef %2, i64 noundef %.0170, i64 noundef %4, i64 noundef %5, i1 noundef zeroext %i.d, float noundef %.0181, float noundef %.0180)
  %i.hd = fsub float %i.hc, %.149.i258            ; 3 uses
  %i.he = load float, ptr %i.fc, align 4, !tbaa !238
  %i.hf = fcmp oge float %i.hd, %i.fb
  %i.hg = fcmp olt float %i.hd, %i.fb
  %.sink313 = select i1 %i.gr, i1 %i.hg, i1 %i.hf
  %i.hh = select i1 %.sink313, float %i.hd, float %i.fb
  %i.hi = fsub float %i.he, %i.hh
  store float %i.hi, ptr %i.fc, align 4, !tbaa !238
  store i8 0, ptr %i.fi, align 8, !tbaa !239
  br label %bb.az

bb.ay:                                            ; preds = %bb.av, %_ZN5ImGui20ScaleRatioFromValueTIyxdEEfiT_S1_S1_bff.exit
  store float 0.000000e+00, ptr %i.fc, align 4, !tbaa !238
  store i8 0, ptr %i.fi, align 8, !tbaa !239
  br label %.critedge201

bb.az:                                            ; preds = %.thread262, %.thread
  %.3261 = phi float [ %.0172, %.thread ], [ %i.gy, %.thread262 ] ; 7 uses
  %i.hj = icmp eq i64 %4, %5
  br i1 %i.hj, label %_ZN5ImGui20ScaleValueFromRatioTIyxdEET_ifS1_S1_bff.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  br i1 %i.d, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %bb.ba
  %i.hk = fcmp ugt float %.3261, 0.000000e+00
  br i1 %i.hk, label %bb.bc, label %_ZN5ImGui20ScaleValueFromRatioTIyxdEET_ifS1_S1_bff.exit

bb.bc:                                            ; preds = %bb.bb
  %i.hl = fcmp ult float %.3261, 1.000000e+00
  br i1 %i.hl, label %bb.bd, label %_ZN5ImGui20ScaleValueFromRatioTIyxdEET_ifS1_S1_bff.exit

bb.bd:                                            ; preds = %bb.bc
  %i.hm = icmp ult i64 %5, %4                     ; 3 uses
  %i.hn = uitofp i64 %4 to double                 ; 2 uses
  %i.ho = fpext float %.0181 to double            ; 4 uses
  %i.hp = fcmp olt double %i.hn, %i.ho
  %..i238.a = select i1 %i.hp, double %i.ho, double %i.hn ; 2 uses
  %i.hq = uitofp i64 %5 to double                 ; 2 uses
  %i.hr = fcmp olt double %i.hq, %i.ho
  %i.hs = select i1 %i.hr, double %i.ho, double %i.hq ; 2 uses
  %.088.i = select i1 %i.hm, double %i.hs, double %..i238.a ; 2 uses
  %.087.i = select i1 %i.hm, double %..i238.a, double %i.hs
  %i.ht = fsub float 1.000000e+00, %.3261
  %i.hu = select i1 %i.hm, float %i.ht, float %.3261
  %i.hv = fdiv double %.087.i, %.088.i
  %i.hw = fpext float %i.hu to double
  %i.hx = tail call noundef double @pow(double noundef %i.hv, double noundef %i.hw) #36
  %i.hy = fmul double %.088.i, %i.hx
  %i.hz = fptoui double %i.hy to i64
  br label %_ZN5ImGui20ScaleValueFromRatioTIyxdEET_ifS1_S1_bff.exit

bb.be:                                            ; preds = %bb.ba
  %i.ia = icmp eq i32 %i.e, 8
  br i1 %i.ia, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ib = uitofp i64 %4 to float
  %i.ic = uitofp i64 %i.r to float
  %i.id = tail call float @llvm.fmuladd.f32(float %i.ic, float %.3261, float %i.ib)
  %i.ie = fptoui float %i.id to i64
  br label %_ZN5ImGui20ScaleValueFromRatioTIyxdEET_ifS1_S1_bff.exit
end_hunk_1
