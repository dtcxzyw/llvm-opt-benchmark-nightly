Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui_widgets?download=true
inline.NumInlined: 1519
inline.NumDeleted: 254
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i:bb.a
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !165
  %.not200 = icmp eq i32 %i.cc, %1
  br i1 %.not200, label %bb.aq, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cd = and i32 %.1, 96
  %.not201 = icmp eq i32 %i.cd, 0
  br i1 %.not201, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZN5ImGui11SetActiveIDEjP11ImGuiWindow(i32 noundef %1, ptr noundef nonnull %i.c)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 7316
  store i32 %.0168248252, ptr %i.ce, align 4, !tbaa !395
  %i.cf = and i32 %.1, 262144
  %.not202 = icmp eq i32 %i.cf, 0
  br i1 %.not202, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  tail call void @_ZN5ImGui10SetFocusIDEjP11ImGuiWindow(i32 noundef %1, ptr noundef nonnull %i.c)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  tail call void @_ZN5ImGui11FocusWindowEP11ImGuiWindow(ptr noundef nonnull %i.c)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ad
  %i.cg = and i32 %.1, 16
  %.not203 = icmp eq i32 %i.cg, 0
  br i1 %.not203, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.ch = and i32 %.1, 256
  %.not204 = icmp eq i32 %i.ch, 0
  br i1 %.not204, label %bb.aq, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 1061
  %i.cj = zext nneg i32 %.0168248252 to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !164, !range !135, !noundef !136
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.ak, label %bb.aq

bb.ak:                                            ; preds = %bb.aj, %bb.ah
  %i.cn = and i32 %.1, 131072
  %.not205 = icmp eq i32 %i.cn, 0
  br i1 %.not205, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @_ZN5ImGui13ClearActiveIDEv()
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  tail call void @_ZN5ImGui11SetActiveIDEjP11ImGuiWindow(i32 noundef %1, ptr noundef nonnull %i.c)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.co = and i32 %.1, 262144
  %.not206 = icmp eq i32 %i.co, 0
  br i1 %.not206, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  tail call void @_ZN5ImGui10SetFocusIDEjP11ImGuiWindow(i32 noundef %1, ptr noundef nonnull %i.c)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 7316
  store i32 %.0168248252, ptr %i.cp, align 4, !tbaa !395
  tail call void @_ZN5ImGui11FocusWindowEP11ImGuiWindow(ptr noundef nonnull %i.c)
  br label %bb.aq

bb.aq:                                            ; preds = %.split251, %bb.ai, %bb.aj, %bb.ap, %bb.ac, %bb.ab
  %.0167254 = phi i64 [ %.0167253, %bb.ap ], [ %.0167253, %bb.aj ], [ %.0167253, %bb.ai ], [ %.0167253, %bb.ac ], [ %.0167, %bb.ab ], [ %spec.select229, %.split251 ]
  %i.cq = phi i1 [ %i.ca, %bb.ap ], [ %i.ca, %bb.aj ], [ %i.ca, %bb.ai ], [ %i.ca, %bb.ac ], [ %i.bz, %bb.ab ], [ %i.by, %.split251 ]
  %.1173 = phi i8 [ 1, %bb.ap ], [ %.0172, %bb.aj ], [ %.0172, %bb.ai ], [ %.0172, %bb.ac ], [ %.0172, %bb.ab ], [ %.0172, %.split251 ] ; 2 uses
  %i.cr = and i32 %.1, 128
  %i.cs = icmp ne i32 %i.cr, 0
  %or.cond = and i1 %i.cs, %i.cq
  %i.ct = and i32 %.1, 1024                       ; 2 uses
  br i1 %or.cond, label %bb.ar, label %._crit_edge

bb.ar:                                            ; preds = %bb.aq
  %.not207 = icmp eq i32 %i.ct, 0
  br i1 %.not207, label %.thread255, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 1108
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %.0167254
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !141
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 148
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !396
  %i.cz = fcmp oge float %i.cw, %i.cy
  %cond.fr = freeze i1 %i.cz
  %spec.select257 = select i1 %cond.fr, i8 %.1173, i8 1
  br label %.thread255

.thread255:                                       ; preds = %bb.as, %bb.ar
  %i.da = phi i8 [ 1, %bb.ar ], [ %spec.select257, %bb.as ]
  %i.db = and i32 %.1, 262144
  %.not208 = icmp eq i32 %i.db, 0
  br i1 %.not208, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.thread255
  tail call void @_ZN5ImGui10SetFocusIDEjP11ImGuiWindow(i32 noundef %1, ptr noundef nonnull %i.c)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.thread255
  tail call void @_ZN5ImGui13ClearActiveIDEv()
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.aq, %bb.au
  %.3175 = phi i8 [ %i.da, %bb.au ], [ %.1173, %bb.aq ] ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 7260
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !165
  %i.de = icmp ne i32 %i.dd, %1
  %.not209 = icmp eq i32 %i.ct, 0
  %or.cond231 = or i1 %.not209, %i.de
  br i1 %or.cond231, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %._crit_edge
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 7316
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !395 ; 2 uses
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.di
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !141
  %i.dl = fcmp ogt float %i.dk, 0.000000e+00
  br i1 %i.dl, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.dm = tail call noundef zeroext i1 @_ZN5ImGui14IsMouseClickedEib(i32 noundef %i.dh, i1 noundef zeroext true)
  %spec.select232 = select i1 %i.dm, i8 1, i8 %.3175
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %._crit_edge, %bb.av, %bb.q, %bb.p, %bb.o
  %.5 = phi i8 [ %.0172, %bb.o ], [ %.0172, %bb.p ], [ %.0172, %bb.q ], [ %.3175, %._crit_edge ], [ %spec.select232, %bb.aw ], [ %.3175, %bb.av ]
  %i.dn = trunc nuw i8 %.5 to i1
  br i1 %i.dn, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 7762
  store i8 1, ptr %i.do, align 2, !tbaa !166
  br label %bb.az

bb.az:                                            ; preds = %.split, %bb.ax, %bb.ay, %bb.m
  %.2171.shrunk240 = phi i1 [ true, %bb.ay ], [ true, %bb.ax ], [ false, %bb.m ], [ false, %.split ] ; 5 uses
  %.6 = phi i8 [ 1, %bb.ay ], [ 0, %bb.ax ], [ %.0172, %bb.m ], [ %.0172, %.split ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 7696
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !167
  %i.dr = icmp eq i32 %i.dq, %1
  br i1 %i.dr, label %bb.ba, label %bb.bg

bb.ba:                                            ; preds = %bb.az
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 7762
  %i.dt = load i8, ptr %i.ds, align 2, !tbaa !166, !range !135, !noundef !136
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.bg, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 7763
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !168, !range !135, !noundef !136
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 7260
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !165 ; 3 uses
  %i.ea = icmp eq i32 %i.dz, 0
  %i.eb = icmp eq i32 %i.dz, %1
  %or.cond233 = or i1 %i.ea, %i.eb
  br i1 %or.cond233, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ec = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !397
  %i.ee = icmp eq i32 %i.dz, %i.ed
  %i.ef = and i32 %.1, 524288
  %.not210 = icmp eq i32 %i.ef, 0
  %or.cond234 = and i1 %.not210, %i.ee
  br i1 %or.cond234, label %bb.bf, label %bb.bg

bb.be:                                            ; preds = %bb.bc
  %.old = and i32 %.1, 524288
  %.not210.old = icmp eq i32 %.old, 0
  br i1 %.not210.old, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.bd, %bb.be
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf, %bb.bd, %bb.bb, %bb.ba, %bb.az
  %.3.shrunk = phi i1 [ %.2171.shrunk240, %bb.ba ], [ %.2171.shrunk240, %bb.be ], [ true, %bb.bf ], [ %.2171.shrunk240, %bb.bd ], [ %.2171.shrunk240, %bb.bb ], [ %.2171.shrunk240, %bb.az ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 7708 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !398
  %i.ei = icmp eq i32 %i.eh, %1
  br i1 %i.ei, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 7704
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !169
  %i.el = icmp eq i32 %i.ek, %1
  %5 = and i32 %.1, 1024
  %.not211 = icmp eq i32 %5, 0
  %6 = select i1 %.not211, i32 1, i32 3
  %i.em = tail call noundef float @_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode(i32 noundef 0, i32 noundef %6)
  %i.en = fcmp ogt float %i.em, 0.000000e+00
  %or.cond3 = or i1 %i.el, %i.en
  br i1 %or.cond3, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  tail call void @_ZN5ImGui11SetActiveIDEjP11ImGuiWindow(i32 noundef %1, ptr noundef nonnull %i.c)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.a, i64 7312
  store i32 4, ptr %i.eo, align 8, !tbaa !170
  %i.ep = and i32 %.1, 262144
  %.not212 = icmp eq i32 %i.ep, 0
  br i1 %.not212, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  tail call void @_ZN5ImGui10SetFocusIDEjP11ImGuiWindow(i32 noundef %1, ptr noundef nonnull %i.c)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bh, %bb.bj, %bb.bi, %bb.bg
  %.8 = phi i8 [ %.6, %bb.bg ], [ 1, %bb.bi ], [ 1, %bb.bj ], [ %.6, %bb.bh ] ; 8 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.a, i64 7260
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !165
  %i.es = icmp eq i32 %i.er, %1
  br i1 %i.es, label %bb.bl, label %bb.cd

bb.bl:                                            ; preds = %bb.bk
  %i.et = getelementptr inbounds nuw i8, ptr %i.a, i64 7312
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !170
  switch i32 %i.eu, label %bb.cb [
    i32 1, label %bb.bm
    i32 4, label %bb.bz
  ]

bb.bm:                                            ; preds = %bb.bl
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 7272
  %i.ew = load i8, ptr %i.ev, align 8, !tbaa !171, !range !135, !noundef !136
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.ey = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  %i.ez = load <2 x float>, ptr %i.ey, align 8, !tbaa !141
  %i.fa = load <2 x float>, ptr %0, align 4, !tbaa !141
  %i.fb = fsub <2 x float> %i.ez, %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 7296
  store <2 x float> %i.fb, ptr %i.fc, align 8, !tbaa !141
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 7316
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !395
  %i.ff = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.fg = sext i32 %i.fe to i64                   ; 3 uses
  %i.fh = getelementptr inbounds i8, ptr %i.ff, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !164, !range !135, !noundef !136
  %i.fj = trunc nuw i8 %i.fi to i1                ; 3 uses
  br i1 %i.fj, label %bb.bx, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.fk = and i32 %.1, 32
  %i.fl = icmp ne i32 %i.fk, 0
  %i.fm = and i1 %i.fl, %.3.shrunk
  %i.fn = and i32 %.1, 64
  %i.fo = icmp ne i32 %i.fn, 0
  %or.cond5 = or i1 %i.fo, %i.fm
  br i1 %or.cond5, label %bb.bq, label %bb.bw

bb.bq:                                            ; preds = %bb.bp
  %i.fp = load i8, ptr %i.ap, align 4, !tbaa !156, !range !135, !noundef !136
  %i.fq = trunc nuw i8 %i.fp to i1
  br i1 %i.fq, label %bb.bw, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.fr = and i32 %.1, 256
  %.not214 = icmp eq i32 %i.fr, 0
  br i1 %.not214, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.fs = getelementptr inbounds nuw i8, ptr %i.a, i64 1081
  %i.ft = getelementptr inbounds i8, ptr %i.fs, i64 %i.fg
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !164, !range !135, !noundef !136
  %i.fv = trunc nuw i8 %i.fu to i1
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.fw = phi i1 [ false, %bb.br ], [ %i.fv, %bb.bs ]
  %i.fx = and i32 %.1, 1024
  %.not215 = icmp eq i32 %i.fx, 0
  br i1 %.not215, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.fy = getelementptr inbounds nuw i8, ptr %i.a, i64 1108
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %i.fg
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !141
  %i.gb = getelementptr inbounds nuw i8, ptr %i.a, i64 148
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !396
  %i.gd = fcmp oge float %i.ga, %i.gc
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.ge = phi i1 [ false, %bb.bt ], [ %i.gd, %bb.bu ]
  %or.cond7 = select i1 %i.fw, i1 true, i1 %i.ge
  %spec.select235 = select i1 %or.cond7, i8 %.8, i8 1
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bp, %bb.bv, %bb.bq
  %.10 = phi i8 [ %.8, %bb.bq ], [ %spec.select235, %bb.bv ], [ %.8, %bb.bp ]
  tail call void @_ZN5ImGui13ClearActiveIDEv()
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bo, %bb.bw
  %.11 = phi i8 [ %.10, %bb.bw ], [ %.8, %bb.bo ] ; 2 uses
  %i.gf = and i32 %.1, 262144
  %.not216 = icmp eq i32 %i.gf, 0
  br i1 %.not216, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %bb.bx
  %i.gg = getelementptr inbounds nuw i8, ptr %i.a, i64 7762
  store i8 1, ptr %i.gg, align 2, !tbaa !166
  br label %bb.cb

bb.bz:                                            ; preds = %bb.bl
  %i.gh = load i32, ptr %i.eg, align 4, !tbaa !398
  %.not213 = icmp eq i32 %i.gh, %1
  br i1 %.not213, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  tail call void @_ZN5ImGui13ClearActiveIDEv()
  br label %bb.cb

bb.cb:                                            ; preds = %bb.bl, %bb.bx, %bb.by, %bb.ca, %bb.bz
  %.12 = phi i8 [ %.8, %bb.bl ], [ %.8, %bb.ca ], [ %.8, %bb.bz ], [ %.11, %bb.by ], [ %.11, %bb.bx ]
  %.1166 = phi i1 [ false, %bb.bl ], [ false, %bb.ca ], [ false, %bb.bz ], [ %i.fj, %bb.by ], [ %i.fj, %bb.bx ] ; 2 uses
  %i.gi = trunc nuw i8 %.12 to i1
  br i1 %i.gi, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.gj = getelementptr inbounds nuw i8, ptr %i.a, i64 7275
  store i8 1, ptr %i.gj, align 1, !tbaa !399
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc, %bb.bk
  %.13 = phi i8 [ 1, %bb.cc ], [ 0, %bb.cb ], [ %.8, %bb.bk ]
  %.2 = phi i1 [ %.1166, %bb.cc ], [ %.1166, %bb.cb ], [ false, %bb.bk ]
  %.not217 = icmp eq ptr %2, null
  br i1 %.not217, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.gk = zext i1 %.3.shrunk to i8
  store i8 %i.gk, ptr %2, align 1, !tbaa !164
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.not218 = icmp eq ptr %3, null
  br i1 %.not218, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.gl = zext i1 %.2 to i8
  store i8 %i.gl, ptr %3, align 1, !tbaa !164
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.gm = trunc nuw i8 %.13 to i1
  ret i1 %i.gm
}

declare noundef zeroext i1 @_ZN5ImGui13ItemHoverableERK6ImRectj(ptr noundef nonnull align 4 dereferenceable(16), i32 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef) local_unnamed_addr #3

declare void @_ZN5ImGui12SetHoveredIDEj(i32 noundef) local_unnamed_addr #3

declare void @_ZN5ImGui11FocusWindowEP11ImGuiWindow(ptr noundef) local_unnamed_addr #3

declare void @_ZN5ImGui11SetActiveIDEjP11ImGuiWindow(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN5ImGui10SetFocusIDEjP11ImGuiWindow(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN5ImGui13ClearActiveIDEv() local_unnamed_addr #3

declare noundef zeroext i1 @_ZN5ImGui14IsMouseClickedEib(i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui8ButtonExEPKcRK6ImVec2i(ptr noundef %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.ImVec2, align 8             ; 4 uses
  %4 = alloca %struct.ImVec2, align 8             ; 4 uses
  %5 = alloca %struct.ImRect, align 8             ; 11 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %6 = alloca %struct.ImVec2, align 8             ; 4 uses
  %7 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !22 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 7184
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !111  ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  store i8 1, ptr %i.f, align 8, !tbaa !133
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 147
  %i.h = load i8, ptr %i.g, align 1, !tbaa !134, !range !135, !noundef !136
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.i, label %bb.b

end_hunk_0
