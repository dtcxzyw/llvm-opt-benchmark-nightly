Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/path?download=true
inline.NumInlined: 240
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_path_events_post_expose:bb.a
  %i.av = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.af
  %i.aw = load float, ptr %i.av, align 4, !tbaa !12
  %i.ax = getelementptr i8, ptr %i.ar, i64 8
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !12
  %i.az = fcmp reassoc nsz arcp contract afn oeq float %i.aw, %i.ay
  br i1 %i.az, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.ba = load i32, ptr %i.z, align 4, !tbaa !166
  %i.bb = icmp eq i32 %i.ba, %3
  br i1 %i.bb, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.bc = load i32, ptr %i.aa, align 4, !tbaa !26
  %.not251 = icmp eq i32 %i.bc, 0
  br i1 %.not251, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bd = load i32, ptr %i.ab, align 8, !tbaa !161
  %.not252 = icmp eq i32 %i.bd, 0
  br i1 %.not252, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.be = load i32, ptr %i.ac, align 4, !tbaa !25
  %i.bf = icmp eq i32 %i.be, %.0232265
  %i.bg = zext i1 %i.bf to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.g
  %i.bh = phi i32 [ 0, %bb.g ], [ 1, %bb.i ], [ 1, %bb.h ], [ %i.bg, %bb.j ]
  tail call void @dt_masks_line_stroke(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.bh, float noundef %1) #25
  %i.bi = add nsw i32 %.0234264, 1
  %i.bj = srem i32 %i.bi, %4
  %i.bk = add nsw i32 %.0232265, 1
  %i.bl = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.af
  %i.bn = load <2 x float>, ptr %i.bm, align 4, !tbaa !12
  %i.bo = fpext reassoc nsz arcp contract afn <2 x float> %i.bn to <2 x double> ; 2 uses
  %i.bp = extractelement <2 x double> %i.bo, i64 0
  %i.bq = extractelement <2 x double> %i.bo, i64 1
  tail call void @cairo_move_to(ptr noundef %0, double noundef %i.bp, double noundef %i.bq) #25
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.f, %bb.k
  %.1235 = phi i32 [ %i.bj, %bb.k ], [ %.0234264, %bb.f ], [ %.0234264, %bb.e ]
  %.1233 = phi i32 [ %i.bk, %bb.k ], [ %.0232265, %bb.f ], [ %.0232265, %bb.e ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.br = load i32, ptr %i.k, align 8, !tbaa !41  ; 2 uses
  %i.bs = sext i32 %i.br to i64
  %i.bt = icmp slt i64 %indvars.iv.next, %i.bs
  br i1 %i.bt, label %bb.e, label %.loopexit260

.loopexit260:                                     ; preds = %bb.l, %bb.d, %bb.c
  %i.bu = phi i32 [ %i.l, %bb.c ], [ %i.x, %bb.d ], [ %i.br, %bb.l ]
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 164 ; 4 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !166
  %i.bx = icmp eq i32 %i.bw, %3
  br i1 %i.bx, label %bb.m, label %.loopexit259.thread316

bb.m:                                             ; preds = %.loopexit260
  %i.by = icmp sgt i32 %i.bu, %i.n
  %i.bz = icmp sgt i32 %4, 0
  %or.cond = and i1 %i.by, %i.bz
  br i1 %or.cond, label %.lr.ph268, label %.loopexit259.thread

.lr.ph268:                                        ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 132
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 84
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph268, %bb.p
  %indvars.iv283 = phi i64 [ 0, %.lr.ph268 ], [ %indvars.iv.next284, %bb.p ] ; 4 uses
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !149
  %i.cd = zext i32 %i.cc to i64
  %i.ce = icmp eq i64 %indvars.iv283, %i.cd
  br i1 %i.ce, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cf = load i32, ptr %i.cb, align 4, !tbaa !23
  %i.cg = zext i32 %i.cf to i64
  %i.ch = icmp eq i64 %indvars.iv283, %i.cg
  %i.ci = zext i1 %i.ch to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cj = phi i32 [ 1, %bb.n ], [ %i.ci, %bb.o ]
  %i.ck = load ptr, ptr %i.j, align 8, !tbaa !42
  %.idx = mul nuw nsw i64 %indvars.iv283, 24
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.idx ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !12
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  %i.cp = load float, ptr %i.co, align 4, !tbaa !12
  tail call void @dt_masks_draw_anchor(ptr noundef %0, i32 noundef %i.cj, float noundef %1, float noundef %i.cn, float noundef %i.cp) #25
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next284, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit259, label %bb.n

.loopexit259:                                     ; preds = %bb.p
  %.pre = load i32, ptr %i.bv, align 4, !tbaa !166
  %i.cq = icmp eq i32 %.pre, %3
  br i1 %i.cq, label %.loopexit259.thread, label %.loopexit259.thread316

.loopexit259.thread:                              ; preds = %bb.m, %.loopexit259
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !167 ; 6 uses
  %i.ct = icmp sgt i32 %i.cs, -1
  br i1 %i.ct, label %bb.q, label %.loopexit259.thread316

bb.q:                                             ; preds = %.loopexit259.thread
  %i.cu = load ptr, ptr %i.j, align 8, !tbaa !42  ; 2 uses
  %i.cv = mul nuw nsw i32 %i.cs, 6                ; 6 uses
  %i.cw = add nuw nsw i32 %i.cv, 2
  %i.cx = zext nneg i32 %i.cw to i64              ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.cx
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !12
  %i.da = fpext reassoc nsz arcp contract afn float %i.cz to double
  %i.db = add nuw nsw i32 %i.cv, 3
  %i.dc = zext nneg i32 %i.db to i64              ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.dc
  %i.de = load float, ptr %i.dd, align 4, !tbaa !12
  %i.df = fpext reassoc nsz arcp contract afn float %i.de to double
  tail call void @cairo_move_to(ptr noundef %0, double noundef %i.da, double noundef %i.df) #25
  %i.dg = load ptr, ptr %i.j, align 8, !tbaa !42  ; 2 uses
  %i.dh = zext nneg i32 %i.cv to i64              ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.dh
  %i.dj = load float, ptr %i.di, align 4, !tbaa !12
  %i.dk = fpext reassoc nsz arcp contract afn float %i.dj to double
  %i.dl = or disjoint i32 %i.cv, 1
  %i.dm = zext nneg i32 %i.dl to i64              ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.dm
  %i.do = load float, ptr %i.dn, align 4, !tbaa !12
  %i.dp = fpext reassoc nsz arcp contract afn float %i.do to double
  tail call void @cairo_line_to(ptr noundef %0, double noundef %i.dk, double noundef %i.dp) #25
  tail call void @dt_masks_line_stroke(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef 0, float noundef %1) #25
  %i.dq = load ptr, ptr %i.j, align 8, !tbaa !42  ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.dh
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !12
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.dm
  %i.du = load float, ptr %i.dt, align 4, !tbaa !12
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !153
  %i.dx = icmp eq i32 %i.cs, %i.dw
  br i1 %i.dx, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !24
  %i.ea = icmp eq i32 %i.cs, %i.dz
  %i.eb = zext i1 %i.ea to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ec = phi i32 [ 1, %bb.q ], [ %i.eb, %bb.r ]
  tail call void @dt_masks_draw_ctrl(ptr noundef %0, float noundef %i.ds, float noundef %i.du, float noundef %1, i32 noundef %i.ec) #25
  %i.ed = load ptr, ptr %i.j, align 8, !tbaa !42  ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.cx
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !12
  %i.eg = fpext reassoc nsz arcp contract afn float %i.ef to double
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.dc
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !12
  %i.ej = fpext reassoc nsz arcp contract afn float %i.ei to double
  tail call void @cairo_move_to(ptr noundef %0, double noundef %i.eg, double noundef %i.ej) #25
  %i.ek = load ptr, ptr %i.j, align 8, !tbaa !42  ; 2 uses
  %i.el = add nuw nsw i32 %i.cv, 4
  %i.em = zext nneg i32 %i.el to i64              ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.em
  %i.eo = load float, ptr %i.en, align 4, !tbaa !12
  %i.ep = fpext reassoc nsz arcp contract afn float %i.eo to double
  %i.eq = add nuw nsw i32 %i.cv, 5
  %i.er = zext nneg i32 %i.eq to i64              ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.er
  %i.et = load float, ptr %i.es, align 4, !tbaa !12
  %i.eu = fpext reassoc nsz arcp contract afn float %i.et to double
  tail call void @cairo_line_to(ptr noundef %0, double noundef %i.ep, double noundef %i.eu) #25
  tail call void @dt_masks_line_stroke(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef 0, float noundef %1) #25
  %i.ev = load ptr, ptr %i.j, align 8, !tbaa !42  ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.em
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !12
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.er
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !12
  %i.fa = load i32, ptr %i.dv, align 8, !tbaa !153
  %i.fb = icmp eq i32 %i.cs, %i.fa
  br i1 %i.fb, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !24
  %i.fe = icmp eq i32 %i.cs, %i.fd
  %i.ff = zext i1 %i.fe to i32
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.fg = phi i32 [ 1, %bb.s ], [ %i.ff, %bb.t ]
  tail call void @dt_masks_draw_ctrl(ptr noundef %0, float noundef %i.ex, float noundef %i.ez, float noundef %1, i32 noundef %i.fg) #25
  br label %.loopexit259.thread316

.loopexit259.thread316:                           ; preds = %.loopexit260, %bb.u, %.loopexit259.thread, %.loopexit259
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !241
  %.not244 = icmp eq i32 %i.fi, 0
  br i1 %.not244, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.loopexit259.thread316
  %i.fj = load i32, ptr %i.bv, align 4, !tbaa !166
  %i.fk = icmp eq i32 %i.fj, %3
  br i1 %i.fk, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %bb.v, %.loopexit259.thread316
  %i.fl = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !40
  %i.fn = icmp sgt i32 %i.fm, %i.n
  br i1 %i.fn, label %.lr.ph271, label %.loopexit

.lr.ph271:                                        ; preds = %bb.w
  %i.fo = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph271, %bb.ad
  %.0227270 = phi i32 [ %i.m, %.lr.ph271 ], [ %i.ge, %bb.ad ] ; 3 uses
  %.0228269 = phi i32 [ 1, %.lr.ph271 ], [ %.1229, %bb.ad ] ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !39
  %i.fq = shl nsw i32 %.0227270, 1
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %i.fr ; 3 uses
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !12 ; 2 uses
  %i.fu = fcmp reassoc nsz arcp contract afn oeq float %i.ft, f0xFF7FFFFF
  br i1 %i.fu, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.fv = getelementptr i8, ptr %i.fs, i64 4
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !12 ; 2 uses
  %i.fx = fcmp reassoc nsz arcp contract afn oeq float %i.fw, f0xFF7FFFFF
  br i1 %i.fx, label %._crit_edge, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fy = fadd reassoc nsz arcp contract afn float %i.fw, -1.000000e+00
  %i.fz = fptosi float %i.fy to i32
  br label %bb.ad

bb.aa:                                            ; preds = %bb.x
  %.not245 = icmp eq i32 %.0228269, 0
  %i.ga = fpext reassoc nsz arcp contract afn float %i.ft to double ; 2 uses
  %i.gb = getelementptr i8, ptr %i.fs, i64 4
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !12
  %i.gd = fpext reassoc nsz arcp contract afn float %i.gc to double ; 2 uses
  br i1 %.not245, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @cairo_move_to(ptr noundef %0, double noundef %i.ga, double noundef %i.gd) #25
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  tail call void @cairo_line_to(ptr noundef %0, double noundef %i.ga, double noundef %i.gd) #25
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %bb.z
  %.1229 = phi i32 [ %.0228269, %bb.z ], [ 0, %bb.ab ], [ 0, %bb.ac ]
  %.1 = phi i32 [ %i.fz, %bb.z ], [ %.0227270, %bb.ab ], [ %.0227270, %bb.ac ]
  %i.ge = add nsw i32 %.1, 1                      ; 2 uses
  %i.gf = load i32, ptr %i.fl, align 8, !tbaa !40
  %i.gg = icmp slt i32 %i.ge, %i.gf
  br i1 %i.gg, label %bb.x, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ad, %bb.y
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !163
  tail call void @dt_masks_line_stroke(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef %i.gi, float noundef %1) #25
  %i.gj = icmp sgt i32 %4, 0
  br i1 %i.gj, label %.lr.ph275, label %.loopexit

.lr.ph275:                                        ; preds = %._crit_edge
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %wide.trip.count289 = zext nneg i32 %4 to i64
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph275, %bb.ag
  %indvars.iv286 = phi i64 [ 0, %.lr.ph275 ], [ %indvars.iv.next287, %bb.ag ] ; 5 uses
  %i.gm = load i32, ptr %i.gk, align 8, !tbaa !165
  %i.gn = zext i32 %i.gm to i64
  %i.go = icmp eq i64 %indvars.iv286, %i.gn
  br i1 %i.go, label %bb.af, label %._crit_edge296

._crit_edge296:                                   ; preds = %bb.ae
  %.pre297 = mul nuw nsw i64 %indvars.iv286, 6
  br label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.gp = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.gq = mul nuw nsw i64 %indvars.iv286, 6       ; 3 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.gq ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !12
  %i.gu = fpext reassoc nsz arcp contract afn float %i.gt to double
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 12
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !12
  %i.gx = fpext reassoc nsz arcp contract afn float %i.gw to double
  tail call void @cairo_move_to(ptr noundef %0, double noundef %i.gu, double noundef %i.gx) #25
  %i.gy = load ptr, ptr %i.gl, align 8, !tbaa !39
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.gq ; 2 uses
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !12
  %i.hb = fpext reassoc nsz arcp contract afn float %i.ha to double
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !12
  %i.he = fpext reassoc nsz arcp contract afn float %i.hd to double
  tail call void @cairo_line_to(ptr noundef %0, double noundef %i.hb, double noundef %i.he) #25
  tail call void @dt_masks_line_stroke(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef 0, float noundef %1) #25
  %.pre294 = load i32, ptr %i.gk, align 8, !tbaa !165
  %.pre295 = zext i32 %.pre294 to i64
  %i.hf = icmp eq i64 %indvars.iv286, %.pre295
  %i.hg = zext i1 %i.hf to i32
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge296, %bb.af
  %.pre-phi298 = phi i64 [ %.pre297, %._crit_edge296 ], [ %i.gq, %bb.af ]
  %.pre-phi = phi i32 [ 0, %._crit_edge296 ], [ %i.hg, %bb.af ]
  %i.hh = load ptr, ptr %i.gl, align 8, !tbaa !39
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %.pre-phi298 ; 2 uses
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !12
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !12
  tail call void @dt_masks_draw_anchor(ptr noundef %0, i32 noundef %.pre-phi, float noundef %1, float noundef %i.hj, float noundef %i.hl) #25
  %indvars.iv.next287 = add nuw nsw i64 %indvars.iv286, 1 ; 2 uses
  %exitcond290.not = icmp eq i64 %indvars.iv.next287, %wide.trip.count289
  br i1 %exitcond290.not, label %.loopexit, label %bb.ae

.loopexit:                                        ; preds = %bb.ag, %._crit_edge, %bb.w, %bb.v
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 172 ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !19
  %.not246 = icmp eq i32 %i.hn, 0
  br i1 %.not246, label %.thread, label %bb.ah

bb.ah:                                            ; preds = %.loopexit
  %i.ho = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !138
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 2160
  %i.hq = load ptr, ptr %i.hp, align 16, !tbaa !171 ; 2 uses
  %.not247 = icmp eq ptr %i.hq, null
  br i1 %.not247, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !151
  %i.ht = and i32 %i.hs, 8
  %.not248 = icmp eq i32 %i.ht, 0
  br i1 %.not248, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hu = mul i32 %4, 6                           ; 2 uses
  %i.hv = add i32 %i.hu, -4                       ; 2 uses
  %i.hw = icmp sgt i32 %i.hv, -1
  br i1 %i.hw, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !12
  %i.hx = load ptr, ptr %i.j, align 8, !tbaa !42  ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !12
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 12
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !12
  %i.ic = zext nneg i32 %i.hv to i64
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.ic
  %i.ie = load float, ptr %i.id, align 4, !tbaa !12
  %i.if = add i32 %i.hu, -3
  %i.ig = sext i32 %i.if to i64
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.ig
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !12
  call void @dt_masks_calculate_source_pos_value(ptr noundef nonnull %2, i32 noundef 2, float noundef %i.hz, float noundef %i.ib, float noundef %i.ie, float noundef %i.ii, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 1) #25
  %i.ij = load float, ptr %i.a, align 4, !tbaa !12
  %i.ik = load float, ptr %i.b, align 4, !tbaa !12
  call void @dt_masks_draw_clone_source_pos(ptr noundef %0, float noundef %1, float noundef %i.ij, float noundef %i.ik) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !12
  %i.il = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.im = load float, ptr %i.il, align 4, !tbaa !172 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.io = load float, ptr %i.in, align 8, !tbaa !173 ; 2 uses
  call void @dt_masks_calculate_source_pos_value(ptr noundef nonnull %2, i32 noundef 2, float noundef %i.im, float noundef %i.io, float noundef %i.im, float noundef %i.io, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef 0) #25
  %i.ip = load float, ptr %i.c, align 4, !tbaa !12
  %i.iq = load float, ptr %i.d, align 4, !tbaa !12
  call void @dt_masks_draw_clone_source_pos(ptr noundef %0, float noundef %1, float noundef %i.ip, float noundef %i.iq) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al, %bb.ai, %bb.ah
  %.pr = load i32, ptr %i.hm, align 4, !tbaa !19
  %.not249 = icmp eq i32 %.pr, 0
  br i1 %.not249, label %.thread, label %bb.aq

.thread:                                          ; preds = %.loopexit, %bb.am
  %i.ir = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 4 uses
  %i.is = load i32, ptr %i.ir, align 8, !tbaa !36 ; 2 uses
  %i.it = icmp sgt i32 %i.is, %i.n
  br i1 %i.it, label %._crit_edge.i.i, label %bb.aq

._crit_edge.i.i:                                  ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  store float 0.000000e+00, ptr %i.e, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  store float 0.000000e+00, ptr %i.f, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  store float 0.000000e+00, ptr %i.g, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  store float 0.000000e+00, ptr %i.h, align 4, !tbaa !12
  %i.iu = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 5 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !35 ; 5 uses
  %i.iw = icmp sgt i32 %4, -1
  call void @llvm.assume(i1 %i.iw)
  %i.ix = zext nneg i32 %i.m to i64               ; 5 uses
  %wide.trip.count.i.i = sext i32 %i.is to i64    ; 3 uses
  %i.iy = sub nsw i64 %wide.trip.count.i.i, %i.ix
  %xtraiter = and i64 %i.iy, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph107.i.i.prol.loopexit, label %.lr.ph107.i.i.prol

.lr.ph107.i.i.prol:                               ; preds = %._crit_edge.i.i, %.lr.ph107.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph107.i.i.prol ], [ %i.ix, %._crit_edge.i.i ] ; 2 uses
  %5 = phi <2 x float> [ %11, %.lr.ph107.i.i.prol ], [ splat (float f0x00800000), %._crit_edge.i.i ] ; 2 uses
  %6 = phi <2 x float> [ %10, %.lr.ph107.i.i.prol ], [ splat (float f0x7F7FFFFF), %._crit_edge.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph107.i.i.prol ], [ 0, %._crit_edge.i.i ]
  %.idx.i.i.prol = shl nuw nsw i64 %indvars.iv.i.i.prol, 3
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iv, i64 %.idx.i.i.prol
  %7 = load <2 x float>, ptr %i.iz, align 4, !tbaa !12 ; 4 uses
  %8 = fcmp reassoc nsz arcp contract afn ogt <2 x float> %7, %5
  %9 = fcmp reassoc nsz arcp contract afn olt <2 x float> %7, %6
  %10 = select <2 x i1> %9, <2 x float> %7, <2 x float> %6 ; 3 uses
  %11 = select <2 x i1> %8, <2 x float> %7, <2 x float> %5 ; 3 uses
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph107.i.i.prol.loopexit, label %.lr.ph107.i.i.prol, !llvm.loop !240

.lr.ph107.i.i.prol.loopexit:                      ; preds = %.lr.ph107.i.i.prol, %._crit_edge.i.i
  %.lcssa325.unr = phi <2 x float> [ poison, %._crit_edge.i.i ], [ %10, %.lr.ph107.i.i.prol ]
  %.lcssa.unr = phi <2 x float> [ poison, %._crit_edge.i.i ], [ %11, %.lr.ph107.i.i.prol ]
  %indvars.iv.i.i.unr = phi i64 [ %i.ix, %._crit_edge.i.i ], [ %indvars.iv.next.i.i.prol, %.lr.ph107.i.i.prol ]
  %.unr = phi <2 x float> [ splat (float f0x00800000), %._crit_edge.i.i ], [ %11, %.lr.ph107.i.i.prol ]
  %.unr327 = phi <2 x float> [ splat (float f0x7F7FFFFF), %._crit_edge.i.i ], [ %10, %.lr.ph107.i.i.prol ]
  %12 = sub nsw i64 %i.ix, %wide.trip.count.i.i
  %13 = icmp ugt i64 %12, -4
  br i1 %13, label %_path_bounding_box.exit, label %.lr.ph107.i.i.a

.lr.ph107.i.i.a:                                  ; preds = %.lr.ph107.i.i.prol.loopexit, %.lr.ph107.i.i.a
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph107.i.i.a ], [ %indvars.iv.i.i.unr, %.lr.ph107.i.i.prol.loopexit ] ; 5 uses
  %14 = phi <2 x float> [ %42, %.lr.ph107.i.i.a ], [ %.unr, %.lr.ph107.i.i.prol.loopexit ] ; 2 uses
  %15 = phi <2 x float> [ %41, %.lr.ph107.i.i.a ], [ %.unr327, %.lr.ph107.i.i.prol.loopexit ] ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %indvars.iv.i.i, 3
  %16 = getelementptr inbounds nuw i8, ptr %i.iv, i64 %.idx.i.i
  %17 = load <2 x float>, ptr %16, align 4, !tbaa !12 ; 4 uses
  %18 = fcmp reassoc nsz arcp contract afn ogt <2 x float> %17, %14
  %19 = fcmp reassoc nsz arcp contract afn olt <2 x float> %17, %15
  %20 = select <2 x i1> %19, <2 x float> %17, <2 x float> %15 ; 2 uses
  %21 = select <2 x i1> %18, <2 x float> %17, <2 x float> %14 ; 2 uses
  %indvars.iv.next.i.i = shl i64 %indvars.iv.i.i, 3
  %22 = getelementptr i8, ptr %i.iv, i64 %indvars.iv.next.i.i
  %23 = getelementptr i8, ptr %22, i64 8
  %24 = load <2 x float>, ptr %23, align 4, !tbaa !12 ; 4 uses
  %25 = fcmp reassoc nsz arcp contract afn ogt <2 x float> %24, %21
  %26 = fcmp reassoc nsz arcp contract afn olt <2 x float> %24, %20
  %27 = select <2 x i1> %26, <2 x float> %24, <2 x float> %20 ; 2 uses
  %28 = select <2 x i1> %25, <2 x float> %24, <2 x float> %21 ; 2 uses
  %indvars.iv.next.i.i.1 = shl i64 %indvars.iv.i.i, 3
  %29 = getelementptr i8, ptr %i.iv, i64 %indvars.iv.next.i.i.1
  %30 = getelementptr i8, ptr %29, i64 16
  %31 = load <2 x float>, ptr %30, align 4, !tbaa !12 ; 4 uses
  %32 = fcmp reassoc nsz arcp contract afn ogt <2 x float> %31, %28
  %33 = fcmp reassoc nsz arcp contract afn olt <2 x float> %31, %27
  %34 = select <2 x i1> %33, <2 x float> %31, <2 x float> %27 ; 2 uses
  %35 = select <2 x i1> %32, <2 x float> %31, <2 x float> %28 ; 2 uses
  %indvars.iv.next.i.i.2 = shl i64 %indvars.iv.i.i, 3
  %36 = getelementptr i8, ptr %i.iv, i64 %indvars.iv.next.i.i.2
  %37 = getelementptr i8, ptr %36, i64 24
  %38 = load <2 x float>, ptr %37, align 4, !tbaa !12 ; 4 uses
  %39 = fcmp reassoc nsz arcp contract afn ogt <2 x float> %38, %35
  %40 = fcmp reassoc nsz arcp contract afn olt <2 x float> %38, %34
  %41 = select <2 x i1> %40, <2 x float> %38, <2 x float> %34 ; 2 uses
  %42 = select <2 x i1> %39, <2 x float> %38, <2 x float> %35 ; 2 uses
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %_path_bounding_box.exit, label %.lr.ph107.i.i.a

_path_bounding_box.exit:                          ; preds = %.lr.ph107.i.i.a, %.lr.ph107.i.i.prol.loopexit
  %.lcssa325 = phi <2 x float> [ %.lcssa325.unr, %.lr.ph107.i.i.prol.loopexit ], [ %41, %.lr.ph107.i.i.a ] ; 3 uses
  %.lcssa = phi <2 x float> [ %.lcssa.unr, %.lr.ph107.i.i.prol.loopexit ], [ %42, %.lr.ph107.i.i.a ] ; 2 uses
  %43 = extractelement <2 x float> %.lcssa325, i64 1
  %i.ja = extractelement <2 x float> %.lcssa, i64 1
  %44 = extractelement <2 x float> %.lcssa, i64 0
  %45 = extractelement <2 x float> %.lcssa325, i64 0
  %46 = fsub reassoc nsz arcp contract afn float 4.000000e+00, %43
  %i.jb = fadd reassoc nsz arcp contract afn float %46, %i.ja
  %47 = fadd reassoc nsz arcp contract afn float %44, 4.000000e+00
  %i.jc = fsub reassoc nsz arcp contract afn float %47, %45
  %i.jd = insertelement <2 x float> poison, float %i.jc, i64 0
  %i.je = insertelement <2 x float> %i.jd, float %i.jb, i64 1
  %i.jf = fptosi <2 x float> %i.je to <2 x i32>
  %48 = fadd reassoc nsz arcp contract afn <2 x float> %.lcssa325, splat (float -2.000000e+00)
  %i.jg = fptosi <2 x float> %48 to <2 x i32>
  %i.jh = sitofp reassoc nsz arcp contract afn <2 x i32> %i.jg to <2 x float>
  %i.ji = sitofp reassoc nsz arcp contract afn <2 x i32> %i.jf to <2 x float>
  %i.jj = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.ji, splat (float 5.000000e-01)
  %i.jk = fadd reassoc nsz arcp contract afn <2 x float> %i.jj, %i.jh ; 2 uses
  %i.jl = load i32, ptr %i.k, align 8, !tbaa !41
  %i.jm = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.jn = extractelement <2 x float> %i.jk, i64 0
  %i.jo = extractelement <2 x float> %i.jk, i64 1
  call void @dt_masks_closest_point(i32 noundef %i.jl, i32 noundef %i.m, ptr noundef %i.jm, float noundef %i.jn, float noundef %i.jo, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #25
  %i.jp = load i32, ptr %i.ir, align 8, !tbaa !36
  %i.jq = load ptr, ptr %i.iu, align 8, !tbaa !35
  %i.jr = load float, ptr %i.e, align 4, !tbaa !12
  %i.js = load float, ptr %i.f, align 4, !tbaa !12
  call void @dt_masks_closest_point(i32 noundef %i.jp, i32 noundef %i.m, ptr noundef %i.jq, float noundef %i.jr, float noundef %i.js, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #25
  %i.jt = load float, ptr %i.g, align 4, !tbaa !12
  %i.ju = load float, ptr %i.h, align 4, !tbaa !12
  %i.jv = load float, ptr %i.e, align 4, !tbaa !12
  %i.jw = load float, ptr %i.f, align 4, !tbaa !12
  call void @dt_masks_draw_arrow(ptr noundef %0, float noundef %i.jt, float noundef %i.ju, float noundef %i.jv, float noundef %i.jw, float noundef %1, i32 noundef 0) #25
  call void @dt_masks_stroke_arrow(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %3, float noundef %1) #25
  %i.jx = load ptr, ptr %i.iu, align 8, !tbaa !35
  %i.jy = mul nuw nsw i32 %4, 6
  %i.jz = zext nneg i32 %i.jy to i64              ; 2 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %i.jz
  %i.kb = load <2 x float>, ptr %i.ka, align 4, !tbaa !12
  %i.kc = fpext reassoc nsz arcp contract afn <2 x float> %i.kb to <2 x double> ; 2 uses
  %i.kd = extractelement <2 x double> %i.kc, i64 0
  %i.ke = extractelement <2 x double> %i.kc, i64 1
  call void @cairo_move_to(ptr noundef %0, double noundef %i.kd, double noundef %i.ke) #25
  %i.kf = load i32, ptr %i.ir, align 8, !tbaa !36
  %i.kg = icmp slt i32 %i.m, %i.kf
  br i1 %i.kg, label %.lr.ph277, label %._crit_edge278

._crit_edge278:                                   ; preds = %.lr.ph277, %_path_bounding_box.exit
  %i.kh = load ptr, ptr %i.iu, align 8, !tbaa !35
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %i.jz
  %i.kj = load <2 x float>, ptr %i.ki, align 4, !tbaa !12
  %i.kk = fpext reassoc nsz arcp contract afn <2 x float> %i.kj to <2 x double> ; 2 uses
  %i.kl = extractelement <2 x double> %i.kk, i64 0
  %i.km = extractelement <2 x double> %i.kk, i64 1
  call void @cairo_line_to(ptr noundef %0, double noundef %i.kl, double noundef %i.km) #25
  %i.kn = load i32, ptr %i.bv, align 4, !tbaa !166
  %i.ko = icmp eq i32 %i.kn, %3
  br i1 %i.ko, label %bb.an, label %bb.ap

.lr.ph277:                                        ; preds = %_path_bounding_box.exit, %.lr.ph277
  %indvars.iv291 = phi i64 [ %indvars.iv.next292, %.lr.ph277 ], [ %i.ix, %_path_bounding_box.exit ] ; 2 uses
  %i.kp = load ptr, ptr %i.iu, align 8, !tbaa !35
  %.idx315 = shl nuw nsw i64 %indvars.iv291, 3
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 %.idx315
  %i.kr = load <2 x float>, ptr %i.kq, align 4, !tbaa !12
  %i.ks = fpext reassoc nsz arcp contract afn <2 x float> %i.kr to <2 x double> ; 2 uses
  %i.kt = extractelement <2 x double> %i.ks, i64 0
  %i.ku = extractelement <2 x double> %i.ks, i64 1
  call void @cairo_line_to(ptr noundef %0, double noundef %i.kt, double noundef %i.ku) #25
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 1 ; 2 uses
  %i.kv = load i32, ptr %i.ir, align 8, !tbaa !36
  %i.kw = trunc nuw i64 %indvars.iv.next292 to i32
  %i.kx = icmp sgt i32 %i.kv, %i.kw
  br i1 %i.kx, label %.lr.ph277, label %._crit_edge278

bb.an:                                            ; preds = %._crit_edge278
  %i.ky = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !26
  %.not250 = icmp eq i32 %i.kz, 0
  br i1 %.not250, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.la = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.lb = load i32, ptr %i.la, align 8, !tbaa !161
  %i.lc = icmp ne i32 %i.lb, 0
  %i.ld = zext i1 %i.lc to i32
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao, %._crit_edge278
  %i.le = phi i32 [ 0, %._crit_edge278 ], [ 1, %bb.an ], [ %i.ld, %bb.ao ]
  call void @dt_masks_line_stroke(ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef %i.le, float noundef %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  br label %bb.aq

bb.aq:                                            ; preds = %bb.b, %bb.ap, %.thread, %bb.am, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @hypotf(float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan2.f32(float, float) #6

declare ptr @dt_mouse_action_create_simple(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #9

declare i32 @g_list_length(ptr noundef) local_unnamed_addr #7

declare i64 @g_strlcat(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare i32 @g_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #10

; Function Attrs: nounwind uwtable
define internal fastcc void @_path_init_ctrl_points(ptr nofree noundef readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22
  %i.b = tail call i32 @g_list_length(ptr noundef %i.a) #25 ; 2 uses
  %i.c = icmp ult i32 %i.b, 2
  br i1 %i.c, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.l
  %.04776.in = phi ptr [ %i.cg, %bb.l ], [ %0, %bb.a ]
  %.075 = phi i32 [ %i.ch, %bb.l ], [ 0, %bb.a ]
  %.04776 = load ptr, ptr %.04776.in, align 8, !tbaa !27 ; 5 uses
  %i.d = load ptr, ptr %.04776, align 8, !tbaa !31 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i32, ptr %i.e, align 4, !tbaa !159
  %i.g = and i32 %i.f, 1
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %.04776, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !242  ; 2 uses
  %.not6.i = icmp eq ptr %i.i, null
  br i1 %.not6.i, label %g_list_prev_wraparound.exit, label %g_list_prev_wraparound.exit.thread

g_list_prev_wraparound.exit:                      ; preds = %bb.b
  %i.j = tail call ptr @g_list_last(ptr noundef nonnull %.04776) #25 ; 2 uses
  %.not.i49 = icmp eq ptr %i.j, null
  br i1 %.not.i49, label %bb.c, label %g_list_prev_wraparound.exit.thread

g_list_prev_wraparound.exit.thread:               ; preds = %bb.b, %g_list_prev_wraparound.exit
  %i.k = phi ptr [ %i.j, %g_list_prev_wraparound.exit ], [ %i.i, %bb.b ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !242  ; 2 uses
  %.not6.i50 = icmp eq ptr %i.m, null
  br i1 %.not6.i50, label %bb.c, label %g_list_next_wraparound.exit.thread

bb.c:                                             ; preds = %g_list_prev_wraparound.exit.thread, %g_list_prev_wraparound.exit
  %i.n = phi ptr [ %i.k, %g_list_prev_wraparound.exit.thread ], [ null, %g_list_prev_wraparound.exit ] ; 2 uses
  %i.o = tail call ptr @g_list_last(ptr noundef %i.n) #25
  br label %g_list_next_wraparound.exit.thread

g_list_next_wraparound.exit.thread:               ; preds = %bb.c, %g_list_prev_wraparound.exit.thread
  %i.p = phi ptr [ %i.n, %bb.c ], [ %i.k, %g_list_prev_wraparound.exit.thread ]
  %i.q = phi ptr [ %i.o, %bb.c ], [ %i.m, %g_list_prev_wraparound.exit.thread ]
  %i.r = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.04776, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !30   ; 2 uses
  %.not6.i53 = icmp eq ptr %i.t, null
  %spec.select66 = select i1 %.not6.i53, ptr %i.r, ptr %i.t ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %spec.select66, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !30   ; 2 uses
  %.not6.i55 = icmp eq ptr %i.v, null
  %spec.select = select i1 %.not6.i55, ptr %i.r, ptr %i.v
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !31   ; 2 uses
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !31   ; 4 uses
  %i.y = load ptr, ptr %spec.select66, align 8, !tbaa !31 ; 4 uses
  %i.z = load ptr, ptr %spec.select, align 8, !tbaa !31 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !12
  %i.ac = load <2 x float>, ptr %i.x, align 4, !tbaa !12 ; 3 uses
  %i.ad = load <2 x float>, ptr %i.d, align 4, !tbaa !12 ; 3 uses
  %i.ae = load <2 x float>, ptr %i.y, align 4, !tbaa !12
  %i.af = extractelement <2 x float> %i.ac, i64 1
  %i.ag = fmul reassoc nsz arcp contract afn float %i.af, 6.000000e+00
  %i.ah = fsub reassoc nsz arcp contract afn float %i.ag, %i.ab
  %i.ai = extractelement <2 x float> %i.ad, i64 1
  %i.aj = fadd reassoc nsz arcp contract afn float %i.ah, %i.ai
  %i.ak = fmul reassoc nsz arcp contract afn float %i.aj, f0x3E2AAAAB
  %i.al = fmul reassoc nsz arcp contract afn <2 x float> %i.ad, splat (float 6.000000e+00)
  %i.am = fadd reassoc nsz arcp contract afn <2 x float> %i.al, %i.ac
  %i.an = fsub reassoc nsz arcp contract afn <2 x float> %i.am, %i.ae
  %i.ao = fmul reassoc nsz arcp contract afn <2 x float> %i.an, splat (float f0x3E2AAAAB)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !12
  %i.ar = fcmp reassoc nsz arcp contract afn oeq float %i.aq, -1.000000e+00
  br i1 %i.ar, label %bb.d, label %bb.e

bb.d:                                             ; preds = %g_list_next_wraparound.exit.thread
  %i.as = extractelement <2 x float> %i.ac, i64 0
  %i.at = fmul reassoc nsz arcp contract afn float %i.as, 6.000000e+00
  %i.au = load float, ptr %i.w, align 4, !tbaa !12
  %i.av = fsub reassoc nsz arcp contract afn float %i.at, %i.au
  %i.aw = extractelement <2 x float> %i.ad, i64 0
  %i.ax = fadd reassoc nsz arcp contract afn float %i.av, %i.aw
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ax, f0x3E2AAAAB
  store float %i.ay, ptr %i.ap, align 4, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %g_list_next_wraparound.exit.thread
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 20 ; 2 uses
  %i.ba = load float, ptr %i.az, align 4, !tbaa !12
  %i.bb = fcmp reassoc nsz arcp contract afn oeq float %i.ba, -1.000000e+00
  br i1 %i.bb, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store float %i.ak, ptr %i.az, align 4, !tbaa !12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store <2 x float> %i.ao, ptr %i.bc, align 4, !tbaa !12
  %i.bd = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.be = load float, ptr %i.bd, align 4, !tbaa !12
  %i.bf = load <2 x float>, ptr %i.x, align 4, !tbaa !12
  %i.bg = load <2 x float>, ptr %i.d, align 4, !tbaa !12 ; 3 uses
  %i.bh = load <2 x float>, ptr %i.y, align 4, !tbaa !12 ; 3 uses
  %i.bi = fmul reassoc nsz arcp contract afn <2 x float> %i.bg, splat (float 6.000000e+00)
  %i.bj = fsub reassoc nsz arcp contract afn <2 x float> %i.bi, %i.bf
  %i.bk = fadd reassoc nsz arcp contract afn <2 x float> %i.bj, %i.bh
  %i.bl = fmul reassoc nsz arcp contract afn <2 x float> %i.bk, splat (float f0x3E2AAAAB)
  %i.bm = extractelement <2 x float> %i.bh, i64 1
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bm, 6.000000e+00
  %i.bo = extractelement <2 x float> %i.bg, i64 1
  %i.bp = fadd reassoc nsz arcp contract afn float %i.bn, %i.bo
  %i.bq = fsub reassoc nsz arcp contract afn float %i.bp, %i.be
  %i.br = fmul reassoc nsz arcp contract afn float %i.bq, f0x3E2AAAAB
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !12
  %i.bu = fcmp reassoc nsz arcp contract afn oeq float %i.bt, -1.000000e+00
  br i1 %i.bu, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bv = extractelement <2 x float> %i.bh, i64 0
  %i.bw = fmul reassoc nsz arcp contract afn float %i.bv, 6.000000e+00
  %i.bx = extractelement <2 x float> %i.bg, i64 0
  %i.by = fadd reassoc nsz arcp contract afn float %i.bw, %i.bx
  %i.bz = load float, ptr %i.z, align 4, !tbaa !12
  %i.ca = fsub reassoc nsz arcp contract afn float %i.by, %i.bz
  %i.cb = fmul reassoc nsz arcp contract afn float %i.ca, f0x3E2AAAAB
  store float %i.cb, ptr %i.bs, align 4, !tbaa !12
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cc = getelementptr inbounds nuw i8, ptr %i.y, i64 12 ; 2 uses
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !12
  %i.ce = fcmp reassoc nsz arcp contract afn oeq float %i.cd, -1.000000e+00
  br i1 %i.ce, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store float %i.br, ptr %i.cc, align 4, !tbaa !12
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store <2 x float> %i.bl, ptr %i.cf, align 4, !tbaa !12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.preheader
  %i.cg = getelementptr inbounds nuw i8, ptr %.04776, i64 8
  %i.ch = add nuw i32 %.075, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.ch, %i.b
  br i1 %exitcond.not, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %bb.l, %bb.a
  ret void
}

declare ptr @g_list_last(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @g_list_append(ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @g_list_nth_data(ptr noundef, i32 noundef) local_unnamed_addr #7

declare i32 @dt_masks_point_in_form_exact(float noundef, float noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare i32 @dt_masks_point_in_form_near(float noundef, float noundef, ptr noundef, i32 noundef, i32 noundef, float noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_path_get_pts_border(ptr noundef %0, ptr noundef %1, double noundef %2, i32 noundef range(i32 0, 4) %3, ptr noundef %4, ptr nofree noundef captures(none) initializes((0, 8)) %5, ptr nofree noundef captures(none) initializes((0, 4)) %6, ptr nofree noundef captures(address_is_null) %7, ptr nofree noundef captures(none) %8, i32 noundef %9) unnamed_addr #3 {
bb.a:
  %10 = alloca %struct.timeval, align 8           ; 5 uses
  %11 = alloca %struct.timeval, align 8           ; 5 uses
  %12 = alloca %struct.timeval, align 8           ; 5 uses
  %13 = alloca %struct.timeval, align 8           ; 5 uses
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %14 = alloca %struct.timeval, align 8           ; 5 uses
  %15 = alloca %struct.timeval, align 8           ; 5 uses
  %16 = alloca %struct.timeval, align 8           ; 5 uses
  %i.h = alloca [5 x float], align 16             ; 5 uses
  %i.i = alloca [5 x float], align 16             ; 5 uses
  %i.j = alloca [2 x float], align 8              ; 6 uses
  %i.k = alloca [2 x float], align 8              ; 7 uses
  %i.l = alloca [2 x float], align 8              ; 5 uses
  %i.m = alloca [2 x float], align 8              ; 5 uses
  %i.n = alloca [2 x float], align 8              ; 5 uses
  %i.o = alloca [2 x float], align 8              ; 4 uses
  %i.p = alloca [2 x float], align 8              ; 6 uses
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !124
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %dt_get_debug_wtime.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  %i.r = call i32 @gettimeofday(ptr noundef nonnull %16, ptr noundef null) #25 ; 0 uses
  %i.s = load i64, ptr %16, align 8, !tbaa !126
  %i.t = add nsw i64 %i.s, -1290608000
  %i.u = sitofp reassoc nsz arcp contract afn i64 %i.t to double
  %i.v = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !127
  %i.x = sitofp reassoc nsz arcp contract afn i64 %i.w to double
  %i.y = fmul reassoc nnan nsz arcp contract afn double %i.x, f0x3EB0C6F7A0B5ED8D
  %i.z = fadd reassoc nsz arcp contract afn double %i.y, %i.u
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %dt_get_debug_wtime.exit

dt_get_debug_wtime.exit:                          ; preds = %bb.a, %bb.b
  %i.aa = phi reassoc nsz arcp contract afn double [ %i.z, %bb.b ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.ac = load <2 x i32>, ptr %i.ab, align 16, !tbaa !28
  %i.ad = sitofp reassoc nsz arcp contract afn <2 x i32> %i.ac to <2 x float> ; 9 uses
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.af = extractelement <2 x float> %i.ad, i64 1 ; 5 uses
  %i.ag = extractelement <2 x float> %i.ad, i64 0 ; 5 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !22
  %i.ai = tail call i32 @g_list_length(ptr noundef %i.ah) #25 ; 10 uses
  store ptr null, ptr %5, align 8, !tbaa !128
  store i32 0, ptr %6, align 4, !tbaa !28
  %i.aj = icmp ne ptr %7, null                    ; 6 uses
  br i1 %i.aj, label %.critedge, label %.critedge.thread

.critedge:                                        ; preds = %dt_get_debug_wtime.exit
  store ptr null, ptr %7, align 8, !tbaa !128
  store i32 0, ptr %8, align 4, !tbaa !28
  %i.ak = tail call fastcc ptr @dt_masks_dynbuf_init(i64 noundef 1000000, ptr noundef nonnull @.str.17) ; 6 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %.critedge438, label %bb.c

.critedge.thread:                                 ; preds = %dt_get_debug_wtime.exit
  %i.am = tail call fastcc ptr @dt_masks_dynbuf_init(i64 noundef 1000000, ptr noundef nonnull @.str.17) ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %.critedge438, label %.thread

bb.c:                                             ; preds = %.critedge
  %i.ao = tail call fastcc ptr @dt_masks_dynbuf_init(i64 noundef 1000000, ptr noundef nonnull @.str.18) ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.aq = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !124
  %i.ar = and i32 %i.aq, 4096
  %.not.i475 = icmp eq i32 %i.ar, 0
  br i1 %.not.i475, label %dt_masks_dynbuf_free.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !176
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.29, ptr noundef nonnull %i.as, ptr noundef %i.at) #25
  br label %dt_masks_dynbuf_free.exit

dt_masks_dynbuf_free.exit:                        ; preds = %bb.d, %bb.e
  %i.au = load ptr, ptr %i.ak, align 8, !tbaa !176
  tail call void @free(ptr noundef %i.au) #25
  tail call void @free(ptr noundef nonnull %i.ak) #25
  br label %.critedge438

.thread:                                          ; preds = %.critedge.thread, %bb.c
  %i.av = phi ptr [ %i.ak, %bb.c ], [ %i.am, %.critedge.thread ] ; 24 uses
  %.0378 = phi ptr [ %i.ao, %bb.c ], [ null, %.critedge.thread ] ; 27 uses
  %i.aw = tail call i32 @llvm.umax.i32(i32 %i.ai, i32 1)
  %i.ax = mul i32 %i.aw, 10
  %i.ay = zext i32 %i.ax to i64                   ; 5 uses
  %i.az = tail call fastcc ptr @dt_masks_dynbuf_init(i64 noundef %i.ay, ptr noundef nonnull @.str.19) ; 28 uses
  %i.ba = tail call noalias dereferenceable_or_null(152) ptr @calloc(i64 noundef 1, i64 noundef 152) #27 ; 25 uses
  %.not.i476 = icmp eq ptr %i.ba, null
  br i1 %.not.i476, label %dt_masks_intbuf_init.exit.thread, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 7 uses
  %i.bc = tail call i64 @g_strlcpy(ptr noundef nonnull %i.bb, ptr noundef nonnull @.str.20, i64 noundef 128) #25 ; 0 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 136 ; 5 uses
  store i64 0, ptr %i.bd, align 8, !tbaa !254
  %i.be = shl nuw nsw i64 %i.ay, 2
  %i.bf = tail call ptr @dt_alloc_aligned(i64 noundef %i.be) #25 ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bf, i64 64) ]
  %.not.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i, label %_dt_masks_intbuf_growto.exit.thread.i, label %bb.g

_dt_masks_intbuf_growto.exit.thread.i:            ; preds = %bb.f
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.31, ptr noundef nonnull %i.bb, i64 noundef range(i64 0, 4294967296) %i.ay) #25
  br label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !178 ; 2 uses
  %.not19.i.i = icmp eq ptr %i.bg, null
  br i1 %.not19.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 144 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !179
  %i.bj = shl i64 %i.bi, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.bf, ptr nonnull align 4 %i.bg, i64 %i.bj, i1 false)
  %i.bk = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !124
  %i.bl = and i32 %i.bk, 4096
  %.not20.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not20.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = load i64, ptr %i.bh, align 8, !tbaa !179
  %i.bn = load ptr, ptr %i.ba, align 8, !tbaa !178
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.32, ptr noundef nonnull %i.bb, i64 noundef %i.bm, ptr noundef nonnull %i.bf, ptr noundef %i.bn) #25
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bo = load ptr, ptr %i.ba, align 8, !tbaa !178
  tail call void @free(ptr noundef %i.bo) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ba, i64 144
  store i64 %i.ay, ptr %i.bp, align 8, !tbaa !179
  store ptr %i.bf, ptr %i.ba, align 8, !tbaa !178
  %i.bq = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !124
  %i.br = and i32 %i.bq, 4096
  %.not13.i = icmp eq i32 %i.br, 0
  br i1 %.not13.i, label %dt_masks_intbuf_init.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.30, ptr noundef nonnull %i.bb, i64 noundef range(i64 0, 4294967296) %i.ay, ptr noundef nonnull %i.bf) #25
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_dt_masks_intbuf_growto.exit.thread.i
  %.pr.i = load ptr, ptr %i.ba, align 8, !tbaa !178
  %i.bs = icmp eq ptr %.pr.i, null
  br i1 %i.bs, label %bb.n, label %dt_masks_intbuf_init.exit

bb.n:                                             ; preds = %bb.m
  tail call void @free(ptr noundef nonnull %i.ba) #25
  br label %dt_masks_intbuf_init.exit.thread

dt_masks_intbuf_init.exit.thread:                 ; preds = %bb.n, %.thread
  %i.bt = icmp eq ptr %i.az, null
  br label %bb.o

dt_masks_intbuf_init.exit:                        ; preds = %bb.k, %bb.m
  %i.bu = icmp eq ptr %i.az, null
  br i1 %i.bu, label %bb.o, label %bb.y

bb.o:                                             ; preds = %dt_masks_intbuf_init.exit, %dt_masks_intbuf_init.exit.thread
  %i.bv = phi i1 [ true, %dt_masks_intbuf_init.exit.thread ], [ false, %dt_masks_intbuf_init.exit ]
  %i.bw = phi i1 [ %i.bt, %dt_masks_intbuf_init.exit.thread ], [ true, %dt_masks_intbuf_init.exit ]
  %.0.i575 = phi ptr [ null, %dt_masks_intbuf_init.exit.thread ], [ %i.ba, %dt_masks_intbuf_init.exit ] ; 4 uses
  %i.bx = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !124
  %i.by = and i32 %i.bx, 4096
  %.not.i477 = icmp eq i32 %i.by, 0
  br i1 %.not.i477, label %dt_masks_dynbuf_free.exit478, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ca = load ptr, ptr %i.av, align 8, !tbaa !176
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.29, ptr noundef nonnull %i.bz, ptr noundef %i.ca) #25
  br label %dt_masks_dynbuf_free.exit478

dt_masks_dynbuf_free.exit478:                     ; preds = %bb.o, %bb.p
  %i.cb = load ptr, ptr %i.av, align 8, !tbaa !176
  tail call void @free(ptr noundef %i.cb) #25
  tail call void @free(ptr noundef nonnull %i.av) #25
  %i.cc = icmp eq ptr %.0378, null
  br i1 %i.cc, label %dt_masks_dynbuf_free.exit480, label %bb.q

bb.q:                                             ; preds = %dt_masks_dynbuf_free.exit478
  %i.cd = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !124
  %i.ce = and i32 %i.cd, 4096
  %.not.i479 = icmp eq i32 %i.ce, 0
  br i1 %.not.i479, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cf = getelementptr inbounds nuw i8, ptr %.0378, i64 8
  %i.cg = load ptr, ptr %.0378, align 8, !tbaa !176
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.29, ptr noundef nonnull %i.cf, ptr noundef %i.cg) #25
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ch = load ptr, ptr %.0378, align 8, !tbaa !176
  tail call void @free(ptr noundef %i.ch) #25
  tail call void @free(ptr noundef nonnull %.0378) #25
  br label %dt_masks_dynbuf_free.exit480

dt_masks_dynbuf_free.exit480:                     ; preds = %dt_masks_dynbuf_free.exit478, %bb.s
  br i1 %i.bw, label %bb.v, label %bb.t

bb.t:                                             ; preds = %dt_masks_dynbuf_free.exit480
  %i.ci = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !124
  %i.cj = and i32 %i.ci, 4096
  %.not.i481 = icmp eq i32 %i.cj, 0
  br i1 %.not.i481, label %dt_masks_dynbuf_free.exit482, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ck = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.cl = load ptr, ptr %i.az, align 8, !tbaa !176
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.29, ptr noundef nonnull %i.ck, ptr noundef %i.cl) #25
  br label %dt_masks_dynbuf_free.exit482

dt_masks_dynbuf_free.exit482:                     ; preds = %bb.t, %bb.u
  %i.cm = load ptr, ptr %i.az, align 8, !tbaa !176
  tail call void @free(ptr noundef %i.cm) #25
  tail call void @free(ptr noundef nonnull %i.az) #25
  br label %bb.v

bb.v:                                             ; preds = %dt_masks_dynbuf_free.exit482, %dt_masks_dynbuf_free.exit480
  br i1 %i.bv, label %.critedge438, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cn = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !124
  %i.co = and i32 %i.cn, 4096
  %.not.i483 = icmp eq i32 %i.co, 0
  br i1 %.not.i483, label %dt_masks_intbuf_free.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i575, i64 8
  %i.cq = load ptr, ptr %.0.i575, align 8, !tbaa !178
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.33, ptr noundef nonnull %i.cp, ptr noundef %i.cq) #25
  br label %dt_masks_intbuf_free.exit

dt_masks_intbuf_free.exit:                        ; preds = %bb.w, %bb.x
  %i.cr = load ptr, ptr %.0.i575, align 8, !tbaa !178
  tail call void @free(ptr noundef %i.cr) #25
  tail call void @free(ptr noundef nonnull %.0.i575) #25
  br label %.critedge438

bb.y:                                             ; preds = %dt_masks_intbuf_init.exit
  %i.cs = icmp ne i32 %9, 0                       ; 2 uses
  %i.ct = icmp ne i32 %i.ai, 0                    ; 4 uses
  %or.cond3 = select i1 %i.cs, i1 %i.ct, i1 false
  %i.cu = icmp ne i32 %3, 0                       ; 2 uses
  %or.cond5 = and i1 %i.cu, %or.cond3
  %.0372613.pre = load ptr, ptr %1, align 8, !tbaa !27 ; 3 uses
  br i1 %or.cond5, label %.thread768, label %bb.z

.thread768:                                       ; preds = %bb.y
  %i.cv = load ptr, ptr %.0372613.pre, align 8, !tbaa !31
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cx = load <2 x float>, ptr %i.cv, align 4, !tbaa !12
  %i.cy = load <2 x float>, ptr %i.cw, align 8, !tbaa !12
  %i.cz = fsub reassoc nsz arcp contract afn <2 x float> %i.cx, %i.cy
  %i.da = fmul reassoc nsz arcp contract afn <2 x float> %i.cz, %i.ad
  br label %.lr.ph

bb.z:                                             ; preds = %bb.y
  %.not614 = icmp eq ptr %.0372613.pre, null
  br i1 %.not614, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.thread768, %bb.z
  %i.db = phi <2 x float> [ %i.da, %.thread768 ], [ zeroinitializer, %bb.z ] ; 3 uses
  %i.dc = extractelement <2 x float> %i.db, i64 1 ; 3 uses
  %i.dd = extractelement <2 x float> %i.db, i64 0 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.av, i64 136 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.av, i64 144
  br label %bb.aa

._crit_edge:                                      ; preds = %dt_masks_dynbuf_reserve_n.exit.thread, %bb.z
  %i.dg = phi <2 x float> [ zeroinitializer, %bb.z ], [ %i.db, %dt_masks_dynbuf_reserve_n.exit.thread ] ; 6 uses
  %i.dh = shufflevector <2 x float> %i.dg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.di = shufflevector <2 x float> %i.dg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %.not417 = icmp eq ptr %.0378, null             ; 4 uses
  br i1 %.not417, label %dt_masks_dynbuf_add_zeros.exit, label %bb.ae

bb.aa:                                            ; preds = %.lr.ph, %dt_masks_dynbuf_reserve_n.exit.thread
  %.0372615 = phi ptr [ %.0372613.pre, %.lr.ph ], [ %.0372, %dt_masks_dynbuf_reserve_n.exit.thread ] ; 2 uses
  %i.dj = load ptr, ptr %.0372615, align 8, !tbaa !31 ; 6 uses
  %i.dk = load i64, ptr %i.de, align 8, !tbaa !180 ; 2 uses
  %i.dl = add i64 %i.dk, 6                        ; 3 uses
  %i.dm = load i64, ptr %i.df, align 8, !tbaa !181 ; 3 uses
  %.not.i484 = icmp ult i64 %i.dl, %i.dm
  br i1 %.not.i484, label %dt_masks_dynbuf_reserve_n.exit, label %bb.ab, !prof !182

bb.ab:                                            ; preds = %bb.aa
  %i.dn = icmp eq i64 %i.dm, 0
  br i1 %i.dn, label %dt_masks_dynbuf_reserve_n.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ab, %.preheader.i
  %.018.i = phi i64 [ %i.do, %.preheader.i ], [ %i.dm, %bb.ab ] ; 3 uses
end_hunk_0
begin_hunk_1_@_path_get_pts_border:bb.a
bb.bh:                                            ; preds = %._crit_edge.i509, %bb.be
  %.pre-phi.i512 = phi i64 [ %.pre12.i511, %._crit_edge.i509 ], [ %i.lv, %bb.be ]
  %i.mb = phi i64 [ %.pre.i510, %._crit_edge.i509 ], [ %.0378.val439, %bb.be ]
  %i.mc = load ptr, ptr %.0378, align 8, !tbaa !176
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %i.mb ; 2 uses
  store float %i.lu, ptr %i.md, align 4, !tbaa !12
  store i64 %.pre-phi.i512, ptr %i.gz, align 8, !tbaa !180
  %i.me = getelementptr i8, ptr %i.md, i64 4
  store float %i.lt, ptr %i.me, align 4, !tbaa !12
  br label %dt_masks_dynbuf_add_2.exit513

dt_masks_dynbuf_add_2.exit513:                    ; preds = %bb.bf, %bb.bg, %bb.bh
  %.0378.val468 = load ptr, ptr %.0378, align 8, !tbaa !176 ; 3 uses
  %i.mf = sext i32 %i.hz to i64
  %i.mg = getelementptr inbounds [4 x i8], ptr %.0378.val468, i64 %i.mf ; 2 uses
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !12 ; 2 uses
  store float %i.mh, ptr %i.id, align 8, !tbaa !12
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %.0378.val468, i64 %i.ic
  store float %i.mh, ptr %i.mi, align 4, !tbaa !12
  %i.mj = getelementptr i8, ptr %i.mg, i64 4
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !12 ; 2 uses
  %i.ml = or disjoint i64 %i.ic, 1                ; 2 uses
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.ml
  store float %i.mk, ptr %i.mm, align 4, !tbaa !12
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %.0378.val468, i64 %i.ml
  store float %i.mk, ptr %i.mn, align 4, !tbaa !12
  br i1 %i.hf, label %bb.bi, label %.critedge427

bb.bi:                                            ; preds = %dt_masks_dynbuf_add_2.exit513
  %i.mo = fmul reassoc nsz arcp contract afn <2 x float> %i.jg, splat (float f0x3F7FFE08)
  %i.mp = fmul reassoc nsz arcp contract afn <2 x float> %i.jj, splat (float f0x37FBA738)
  %i.mq = fmul reassoc nsz arcp contract afn <2 x float> %i.jp, splat (float 2.999970e-10)
  %i.mr = fmul reassoc nsz arcp contract afn <2 x float> %i.jm, splat (float f0x26901D7C)
  %i.ms = fneg reassoc nsz arcp contract afn <2 x float> %i.jg
  %i.mt = fpext reassoc nsz arcp contract afn <2 x float> %i.jj to <2 x double>
  %i.mu = fpext reassoc nsz arcp contract afn <2 x float> %i.jp to <2 x double>
  %i.mv = fpext reassoc nsz arcp contract afn <2 x float> %i.jm to <2 x double>
  %i.mw = fadd reassoc nsz arcp contract afn <2 x float> %i.mp, %i.mo
  %i.mx = fadd reassoc nsz arcp contract afn <2 x float> %i.mw, %i.mr
  %i.my = fadd reassoc nsz arcp contract afn <2 x float> %i.mx, %i.mq ; 2 uses
  %i.mz = fpext reassoc nsz arcp contract afn <2 x float> %i.ms to <2 x double>
  %i.na = fmul reassoc nsz arcp contract afn <2 x double> %i.mz, splat (double f0x4007FFE08AFA0ED4)
  %i.nb = fmul reassoc nsz arcp contract afn <2 x double> %i.mt, splat (double f0x4007FFC115FE6C7C)
  %i.nc = fmul reassoc nsz arcp contract afn <2 x double> %i.mu, splat (double f0x3F0F74F153844524)
  %i.nd = fmul reassoc nsz arcp contract afn <2 x double> %i.mv, splat (double f0x3DF49DA7D1E82B00)
  %i.ne = fadd reassoc nsz arcp contract afn <2 x double> %i.nb, %i.na
  %i.nf = fadd reassoc nsz arcp contract afn <2 x double> %i.ne, %i.nd
  %i.ng = fadd reassoc nsz arcp contract afn <2 x double> %i.nf, %i.nc ; 5 uses
  %i.nh = extractelement <2 x double> %i.ng, i64 0
  %i.ni = fcmp reassoc nsz arcp contract afn oeq double %i.nh, 0.000000e+00
  %i.nj = extractelement <2 x double> %i.ng, i64 1 ; 3 uses
  %i.nk = fcmp reassoc nsz arcp contract afn oeq double %i.nj, 0.000000e+00
  %or.cond.i = select i1 %i.ni, i1 %i.nk, i1 false
  br i1 %or.cond.i, label %_path_border_get_XY.exit516, label %_path_border_get_XY.exit

_path_border_get_XY.exit:                         ; preds = %bb.bi
  %foldExtExtBinop = fmul reassoc nsz arcp contract afn <2 x double> %i.ng, %i.ng
  %i.nl = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.nm = fmul reassoc nsz arcp contract afn double %i.nj, %i.nj
  %i.nn = fadd reassoc nsz arcp contract afn double %i.nm, %i.nl
  %i.no = call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.nn)
  %i.np = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.no
  %i.nq = fpext reassoc nsz arcp contract afn <2 x float> %i.my to <2 x double> ; 2 uses
  %i.nr = extractelement <2 x float> %i.jb, i64 1
  %i.ns = fpext reassoc nsz arcp contract afn float %i.nr to double
  %i.nt = insertelement <2 x double> poison, double %i.ns, i64 0
  %i.nu = insertelement <2 x double> poison, double %i.np, i64 0
  %i.nv = shufflevector <2 x double> %i.ng, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.nw = fmul reassoc nsz arcp contract afn <2 x double> %i.nu, %i.nt
  %i.nx = shufflevector <2 x double> %i.nw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ny = fmul reassoc nsz arcp contract afn <2 x double> %i.nx, %i.nv ; 2 uses
  %i.nz = fadd reassoc nsz arcp contract afn <2 x double> %i.ny, %i.nq
  %i.oa = fsub reassoc nsz arcp contract afn <2 x double> %i.nq, %i.ny
  %i.ob = shufflevector <2 x double> %i.nz, <2 x double> %i.oa, <2 x i32> <i32 0, i32 3>
  %i.oc = fptrunc reassoc nsz arcp contract afn <2 x double> %i.ob to <2 x float> ; 3 uses
  %i.od = extractelement <2 x float> %i.oc, i64 0
  %i.oe = fcmp reassoc nsz arcp contract afn oeq float %i.od, f0xFF7FFFFF
  %i.of = extractelement <2 x float> %i.oc, i64 1
  br i1 %i.oe, label %_path_border_get_XY.exit516, label %bb.bj

_path_border_get_XY.exit516:                      ; preds = %bb.bi, %_path_border_get_XY.exit
  %storemerge.i515 = phi float [ %i.of, %_path_border_get_XY.exit ], [ f0xFF7FFFFF, %bb.bi ]
  store <2 x float> %i.my, ptr %i.n, align 8, !tbaa !12
  %i.og = insertelement <2 x float> <float f0xFF7FFFFF, float poison>, float %storemerge.i515, i64 1 ; 2 uses
  store <2 x float> %i.og, ptr %i.m, align 8, !tbaa !12
  br label %bb.bj

bb.bj:                                            ; preds = %_path_border_get_XY.exit516, %_path_border_get_XY.exit
  %i.oh = phi <2 x float> [ %i.og, %_path_border_get_XY.exit516 ], [ %i.oc, %_path_border_get_XY.exit ] ; 4 uses
  %i.oi = extractelement <2 x float> %i.oh, i64 0
  %i.oj = fsub reassoc nsz arcp contract afn float %i.oi, %i.lu
  %i.ok = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.oj)
  %or.cond428 = fcmp reassoc nsz arcp contract afn ogt float %i.ok, 1.000000e+00
  br i1 %or.cond428, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ol = extractelement <2 x float> %i.oh, i64 1
  %i.om = fsub reassoc nsz arcp contract afn float %i.ol, %i.lt
  %i.on = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.om)
  %or.cond429 = fcmp reassoc nsz arcp contract afn ogt float %i.on, 1.000000e+00
  br i1 %or.cond429, label %bb.bl, label %.critedge427

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.oo = load ptr, ptr %1, align 8, !tbaa !22    ; 4 uses
  %.not6.i.i517 = icmp eq ptr %i.oo, null
  br i1 %.not6.i.i517, label %_path_is_clockwise.exit527, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !30 ; 2 uses
  %.not6.i.1.i518 = icmp eq ptr %i.oq, null
  br i1 %.not6.i.1.i518, label %_path_is_clockwise.exit527, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 8
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !30
  %.not6.i.2.i519 = icmp eq ptr %i.os, null
  br i1 %.not6.i.2.i519, label %_path_is_clockwise.exit527, label %g_list_next_wraparound.exit.i520

g_list_shorter_than.exit._crit_edge.i525:         ; preds = %g_list_next_wraparound.exit.i520
  %i.ot = fcmp reassoc nsz arcp contract afn olt float %i.ph, 0.000000e+00
  br label %_path_is_clockwise.exit527

g_list_next_wraparound.exit.i520:                 ; preds = %bb.bn, %g_list_next_wraparound.exit.i520
  %.01625.i521 = phi ptr [ %i.ov, %g_list_next_wraparound.exit.i520 ], [ %i.oo, %bb.bn ] ; 2 uses
  %.01524.i522 = phi float [ %i.ph, %g_list_next_wraparound.exit.i520 ], [ 0.000000e+00, %bb.bn ]
  %i.ou = getelementptr inbounds nuw i8, ptr %.01625.i521, i64 8
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !30 ; 3 uses
  %.not6.i19.i523 = icmp eq ptr %i.ov, null       ; 2 uses
  %spec.select.i524 = select i1 %.not6.i19.i523, ptr %i.oo, ptr %i.ov
  %i.ow = load ptr, ptr %.01625.i521, align 8, !tbaa !31 ; 2 uses
  %i.ox = load ptr, ptr %spec.select.i524, align 8, !tbaa !31 ; 2 uses
  %i.oy = load float, ptr %i.ox, align 4, !tbaa !12
  %i.oz = load float, ptr %i.ow, align 4, !tbaa !12
  %i.pa = fsub reassoc nsz arcp contract afn float %i.oy, %i.oz
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ox, i64 4
  %i.pc = load float, ptr %i.pb, align 4, !tbaa !12
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ow, i64 4
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !12
  %i.pf = fadd reassoc nsz arcp contract afn float %i.pe, %i.pc
  %i.pg = fmul reassoc nsz arcp contract afn float %i.pf, %i.pa
  %i.ph = fadd reassoc nsz arcp contract afn float %i.pg, %.01524.i522 ; 2 uses
  br i1 %.not6.i19.i523, label %g_list_shorter_than.exit._crit_edge.i525, label %g_list_next_wraparound.exit.i520

_path_is_clockwise.exit527:                       ; preds = %bb.bl, %bb.bm, %bb.bn, %g_list_shorter_than.exit._crit_edge.i525
  %.0.i526 = phi i1 [ %i.ot, %g_list_shorter_than.exit._crit_edge.i525 ], [ true, %bb.bn ], [ true, %bb.bm ], [ true, %bb.bl ] ; 2 uses
  %i.pi = fsub reassoc nsz arcp contract afn float %i.lt, %i.kg ; 2 uses
  %i.pj = fsub reassoc nsz arcp contract afn float %i.lu, %i.kh ; 2 uses
  %i.pk = call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.pi, float %i.pj) ; 3 uses
  %foldExtExtBinop909 = fsub reassoc nsz arcp contract afn <2 x float> %i.oh, %i.kf
  %i.pl = extractelement <2 x float> %foldExtExtBinop909, i64 1 ; 2 uses
  %foldExtExtBinop911 = fsub reassoc nsz arcp contract afn <2 x float> %i.oh, %i.kf
  %i.pm = extractelement <2 x float> %foldExtExtBinop911, i64 0 ; 2 uses
  %i.pn = call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.pl, float %i.pm) ; 3 uses
  %i.po = fcmp reassoc nsz arcp contract afn oeq float %i.pk, %i.pn
  br i1 %i.po, label %.critedge427, label %bb.bo

bb.bo:                                            ; preds = %_path_is_clockwise.exit527
  %i.pp = fpext reassoc nsz arcp contract afn float %i.pn to double ; 2 uses
  %i.pq = fpext reassoc nsz arcp contract afn float %i.pk to double ; 3 uses
  %i.pr = fcmp reassoc nsz arcp contract afn olt float %i.pn, %i.pk
  %or.cond.i528 = and i1 %.0.i526, %i.pr
  %i.ps = fadd reassoc nsz arcp contract afn double %i.pp, f0x401921FB54442D18
  %spec.select.i529 = select nsz i1 %or.cond.i528, double %i.ps, double %i.pp ; 4 uses
  %i.pt = fcmp reassoc nsz arcp contract afn ule double %spec.select.i529, %i.pq
  %or.cond3.i = or i1 %.0.i526, %i.pt
  %i.pu = fadd reassoc nsz arcp contract afn double %i.pq, f0x401921FB54442D18
  %.086.i = select nsz i1 %or.cond3.i, double %i.pq, double %i.pu ; 4 uses
  %i.pv = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.pi, float noundef %i.pj) #24 ; 4 uses
  %i.pw = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.pl, float noundef %i.pm) #24 ; 2 uses
  %i.px = fcmp reassoc nsz arcp contract afn ogt double %spec.select.i529, %.086.i
  %i.py = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.pv, float %i.pw)
  %i.pz = fpext reassoc nsz arcp contract afn float %i.py to double
  %i.qa = fsub reassoc nsz arcp contract afn double %.086.i, %spec.select.i529
  %i.qb = fsub reassoc nsz arcp contract afn double %spec.select.i529, %.086.i ; 2 uses
  %.sink.i = select i1 %i.px, double %i.qb, double %i.qa
  %i.qc = fmul reassoc nsz arcp contract afn double %.sink.i, %i.pz
  %.084.i = fptosi double %i.qc to i32            ; 6 uses
  %i.qd = icmp slt i32 %.084.i, 2
  br i1 %i.qd, label %.critedge427, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.qe = uitofp nneg i32 %.084.i to double
  %i.qf = fdiv reassoc nsz arcp contract afn double %i.qb, %i.qe
  %i.qg = fptrunc reassoc nsz arcp contract afn double %i.qf to float ; 4 uses
  %i.qh = fsub reassoc nsz arcp contract afn float %i.pw, %i.pv
  %i.qi = uitofp nneg i32 %.084.i to float
  %i.qj = fdiv reassoc nsz arcp contract afn float %i.qh, %i.qi ; 3 uses
  %i.qk = fpext reassoc nsz arcp contract afn float %i.qg to double
  %i.ql = fadd reassoc nsz arcp contract afn double %.086.i, %i.qk
  %i.qm = fptrunc reassoc nsz arcp contract afn double %i.ql to float ; 2 uses
  %.val.i = load i64, ptr %i.hj, align 8, !tbaa !180
  %i.qn = lshr i64 %.val.i, 1
  %i.qo = trunc i64 %i.qn to i32                  ; 2 uses
  %i.qp = shl nuw i32 %.084.i, 1
  %i.qq = add i32 %i.qp, -2                       ; 2 uses
  %i.qr = add nsw i32 %i.qq, %i.qo
  %i.qs = insertelement <2 x i32> poison, i32 %i.qo, i64 0
  %i.qt = insertelement <2 x i32> %i.qs, i32 %i.qr, i64 1
  %i.qu = sitofp reassoc nsz arcp contract afn <2 x i32> %i.qt to <2 x float>
  %i.qv = load i64, ptr %i.bd, align 8, !tbaa !254 ; 2 uses
  %i.qw = add i64 %i.qv, 2                        ; 2 uses
  %i.qx = load i64, ptr %i.hm, align 8, !tbaa !179 ; 3 uses
  %.not.i.i530 = icmp ult i64 %i.qw, %i.qx
  br i1 %.not.i.i530, label %bb.bs, label %bb.bq, !prof !182

bb.bq:                                            ; preds = %bb.bp
  %i.qy = icmp eq i64 %i.qx, 0
  br i1 %i.qy, label %dt_masks_intbuf_add2.exit.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.qz = shl i64 %i.qx, 1
  %i.ra = add i64 %i.qz, 2
  %i.rb = call fastcc i32 @_dt_masks_intbuf_growto(ptr noundef nonnull %i.ba, i64 noundef %i.ra)
  %.not11.i.i = icmp eq i32 %i.rb, 0
  br i1 %.not11.i.i, label %dt_masks_intbuf_add2.exit.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.br
  %.pre.i.i = load i64, ptr %i.bd, align 8, !tbaa !254 ; 2 uses
  %.pre12.i.i = add i64 %.pre.i.i, 2
  br label %bb.bs

bb.bs:                                            ; preds = %._crit_edge.i.i, %bb.bp
  %.pre-phi.i.i = phi i64 [ %.pre12.i.i, %._crit_edge.i.i ], [ %i.qw, %bb.bp ]
  %i.rc = phi i64 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.qv, %bb.bp ]
  %i.rd = fptosi <2 x float> %i.qu to <2 x i32>
  %i.re = load ptr, ptr %i.ba, align 8, !tbaa !178
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.re, i64 %i.rc
  store i64 %.pre-phi.i.i, ptr %i.bd, align 8, !tbaa !254
  store <2 x i32> %i.rd, ptr %i.rf, align 4, !tbaa !28
  br label %dt_masks_intbuf_add2.exit.i

dt_masks_intbuf_add2.exit.i:                      ; preds = %bb.bs, %bb.br, %bb.bq
  %i.rg = load i64, ptr %i.hj, align 8, !tbaa !180 ; 2 uses
  %i.rh = zext nneg i32 %i.qq to i64              ; 4 uses
  %i.ri = add i64 %i.rg, %i.rh                    ; 3 uses
  %i.rj = load i64, ptr %i.hk, align 8, !tbaa !181 ; 3 uses
  %.not.i92.i = icmp ult i64 %i.ri, %i.rj
  br i1 %.not.i92.i, label %bb.bv, label %bb.bt, !prof !182

bb.bt:                                            ; preds = %dt_masks_intbuf_add2.exit.i
  %i.rk = icmp eq i64 %i.rj, 0
  br i1 %i.rk, label %dt_masks_dynbuf_reserve_n.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.bt, %.preheader.i.i
  %.018.i.i = phi i64 [ %i.rl, %.preheader.i.i ], [ %i.rj, %bb.bt ] ; 3 uses
  %.not19.i.i531 = icmp ult i64 %i.ri, %.018.i.i
  %i.rl = shl i64 %.018.i.i, 1
  br i1 %.not19.i.i531, label %bb.bu, label %.preheader.i.i

bb.bu:                                            ; preds = %.preheader.i.i
  %i.rm = call fastcc i32 @_dt_masks_dynbuf_growto(ptr noundef nonnull %i.av, i64 noundef %.018.i.i)
  %.not20.not.i.i = icmp eq i32 %i.rm, 0
  br i1 %.not20.not.i.i, label %dt_masks_dynbuf_reserve_n.exit.i, label %._crit_edge.i93.i

._crit_edge.i93.i:                                ; preds = %bb.bu
  %.pre.i94.i = load i64, ptr %i.hj, align 8, !tbaa !180 ; 2 uses
  %.pre21.i.i = add i64 %.pre.i94.i, %i.rh
  br label %bb.bv

bb.bv:                                            ; preds = %._crit_edge.i93.i, %dt_masks_intbuf_add2.exit.i
  %.pre-phi.i95.i = phi i64 [ %.pre21.i.i, %._crit_edge.i93.i ], [ %i.ri, %dt_masks_intbuf_add2.exit.i ]
  %i.rn = phi i64 [ %.pre.i94.i, %._crit_edge.i93.i ], [ %i.rg, %dt_masks_intbuf_add2.exit.i ]
  %i.ro = load ptr, ptr %i.av, align 8, !tbaa !176
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.ro, i64 %i.rn
  store i64 %.pre-phi.i95.i, ptr %i.hj, align 8, !tbaa !180
  br label %dt_masks_dynbuf_reserve_n.exit.i

dt_masks_dynbuf_reserve_n.exit.i:                 ; preds = %bb.bv, %bb.bu, %bb.bt
  %.1.i.i = phi ptr [ null, %bb.bu ], [ %i.rp, %bb.bv ], [ null, %bb.bt ] ; 3 uses
  %i.rq = load i64, ptr %i.gz, align 8, !tbaa !180 ; 2 uses
  %i.rr = add i64 %i.rq, %i.rh                    ; 3 uses
  %i.rs = load i64, ptr %i.hl, align 8, !tbaa !181 ; 3 uses
  %.not.i96.i = icmp ult i64 %i.rr, %i.rs
  br i1 %.not.i96.i, label %bb.by, label %bb.bw, !prof !182

bb.bw:                                            ; preds = %dt_masks_dynbuf_reserve_n.exit.i
  %i.rt = icmp eq i64 %i.rs, 0
  br i1 %i.rt, label %dt_masks_dynbuf_reserve_n.exit106.i, label %.preheader.i97.i

.preheader.i97.i:                                 ; preds = %bb.bw, %.preheader.i97.i
  %.018.i98.i = phi i64 [ %i.ru, %.preheader.i97.i ], [ %i.rs, %bb.bw ] ; 3 uses
  %.not19.i99.i = icmp ult i64 %i.rr, %.018.i98.i
  %i.ru = shl i64 %.018.i98.i, 1
  br i1 %.not19.i99.i, label %bb.bx, label %.preheader.i97.i

bb.bx:                                            ; preds = %.preheader.i97.i
  %i.rv = call fastcc i32 @_dt_masks_dynbuf_growto(ptr noundef nonnull %.0378, i64 noundef %.018.i98.i)
  %.not20.not.i100.i = icmp eq i32 %i.rv, 0
  br i1 %.not20.not.i100.i, label %dt_masks_dynbuf_reserve_n.exit106.i, label %._crit_edge.i101.i

._crit_edge.i101.i:                               ; preds = %bb.bx
  %.pre.i102.i = load i64, ptr %i.gz, align 8, !tbaa !180 ; 2 uses
  %.pre21.i103.i = add i64 %.pre.i102.i, %i.rh
  br label %bb.by

bb.by:                                            ; preds = %._crit_edge.i101.i, %dt_masks_dynbuf_reserve_n.exit.i
  %.pre-phi.i104.i = phi i64 [ %.pre21.i103.i, %._crit_edge.i101.i ], [ %i.rr, %dt_masks_dynbuf_reserve_n.exit.i ]
  %i.rw = phi i64 [ %.pre.i102.i, %._crit_edge.i101.i ], [ %i.rq, %dt_masks_dynbuf_reserve_n.exit.i ]
  %i.rx = load ptr, ptr %.0378, align 8, !tbaa !176
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.rx, i64 %i.rw
  store i64 %.pre-phi.i104.i, ptr %i.gz, align 8, !tbaa !180
  br label %dt_masks_dynbuf_reserve_n.exit106.i

dt_masks_dynbuf_reserve_n.exit106.i:              ; preds = %bb.by, %bb.bx, %bb.bw
  %.1.i105.i = phi ptr [ null, %bb.bx ], [ %i.ry, %bb.by ], [ null, %bb.bw ] ; 2 uses
  %.not.i532 = icmp eq ptr %.1.i.i, null
  br i1 %.not.i532, label %.critedge427, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %dt_masks_dynbuf_reserve_n.exit106.i
  %sincos9.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.qm) ; 2 uses
  %i.rz = add nsw i32 %.084.i, -1                 ; 3 uses
  %xtraiter = and i32 %i.rz, 1
  %i.sa = icmp eq i32 %.084.i, 2
  br i1 %i.sa, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i32 %i.rz, -2
  %invariant.op = fadd reassoc nsz arcp contract afn float %i.qg, %i.qg
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.cb, %.lr.ph.preheader.i.new
  %.08319.pn.i = phi float [ %i.pv, %.lr.ph.preheader.i.new ], [ %.08319.i.1, %bb.cb ]
  %sincos.pn.i = phi { float, float } [ %sincos9.i, %.lr.ph.preheader.i.new ], [ %sincos.i.1, %bb.cb ] ; 2 uses
  %.08015.i = phi ptr [ %.1.i105.i, %.lr.ph.preheader.i.new ], [ %.1.i534.1, %bb.cb ] ; 4 uses
  %.08114.i = phi ptr [ %.1.i.i, %.lr.ph.preheader.i.new ], [ %i.sj, %bb.cb ] ; 3 uses
  %.08213.i = phi float [ %i.qm, %.lr.ph.preheader.i.new ], [ %.reass950, %bb.cb ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %bb.cb ]
  %.08319.i = fadd reassoc nsz arcp contract afn float %.08319.pn.i, %i.qj ; 3 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %.08114.i, i64 8
  store <2 x float> %i.kf, ptr %.08114.i, align 4, !tbaa !12
  %.not91.i = icmp eq ptr %.08015.i, null
  br i1 %.not91.i, label %.lr.ph.i.1, label %bb.bz

bb.bz:                                            ; preds = %.lr.ph.i
  %sin17.i = extractvalue { float, float } %sincos.pn.i, 0
  %cos18.i = extractvalue { float, float } %sincos.pn.i, 1
  %i.sc = fmul reassoc nsz arcp contract afn float %cos18.i, %.08319.i
  %i.sd = fadd reassoc nsz arcp contract afn float %i.sc, %i.kh
  %i.se = getelementptr inbounds nuw i8, ptr %.08015.i, i64 4
  store float %i.sd, ptr %.08015.i, align 4, !tbaa !12
  %i.sf = fmul reassoc nsz arcp contract afn float %sin17.i, %.08319.i
  %i.sg = fadd reassoc nsz arcp contract afn float %i.sf, %i.kg
  %i.sh = getelementptr inbounds nuw i8, ptr %.08015.i, i64 8
  store float %i.sg, ptr %i.se, align 4, !tbaa !12
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.bz, %.lr.ph.i
  %.1.i534 = phi ptr [ %i.sh, %bb.bz ], [ null, %.lr.ph.i ] ; 4 uses
  %i.si = fadd reassoc nsz arcp contract afn float %.08213.i, %i.qg
  %.08319.i.1 = fadd reassoc nsz arcp contract afn float %.08319.i, %i.qj ; 4 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %.08114.i, i64 16 ; 2 uses
  store <2 x float> %i.kf, ptr %i.sb, align 4, !tbaa !12
  %.not91.i.1 = icmp eq ptr %.1.i534, null
  br i1 %.not91.i.1, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph.i.1
  %sincos.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.si) ; 2 uses
  %sin17.i.1 = extractvalue { float, float } %sincos.i, 0
  %cos18.i.1 = extractvalue { float, float } %sincos.i, 1
  %i.sk = fmul reassoc nsz arcp contract afn float %cos18.i.1, %.08319.i.1
  %i.sl = fadd reassoc nsz arcp contract afn float %i.sk, %i.kh
  %i.sm = getelementptr inbounds nuw i8, ptr %.1.i534, i64 4
  store float %i.sl, ptr %.1.i534, align 4, !tbaa !12
  %i.sn = fmul reassoc nsz arcp contract afn float %sin17.i.1, %.08319.i.1
  %i.so = fadd reassoc nsz arcp contract afn float %i.sn, %i.kg
  %i.sp = getelementptr inbounds nuw i8, ptr %.1.i534, i64 8
  store float %i.so, ptr %i.sm, align 4, !tbaa !12
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %.lr.ph.i.1
  %.1.i534.1 = phi ptr [ %i.sp, %bb.ca ], [ null, %.lr.ph.i.1 ] ; 2 uses
  %.reass950 = fadd reassoc nsz arcp contract afn float %.08213.i, %invariant.op ; 2 uses
  %sincos.i.1 = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %.reass950) ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge427.loopexit.unr-lcssa, label %.lr.ph.i

.critedge427.loopexit.unr-lcssa:                  ; preds = %bb.cb
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge427, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.critedge427.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.08319.pn.i.epil.init = phi float [ %i.pv, %.lr.ph.preheader.i ], [ %.08319.i.1, %.critedge427.loopexit.unr-lcssa ]
  %sincos.pn.i.epil.init = phi { float, float } [ %sincos9.i, %.lr.ph.preheader.i ], [ %sincos.i.1, %.critedge427.loopexit.unr-lcssa ] ; 2 uses
  %.08015.i.epil.init = phi ptr [ %.1.i105.i, %.lr.ph.preheader.i ], [ %.1.i534.1, %.critedge427.loopexit.unr-lcssa ] ; 3 uses
  %.08114.i.epil.init = phi ptr [ %.1.i.i, %.lr.ph.preheader.i ], [ %i.sj, %.critedge427.loopexit.unr-lcssa ]
  %lcmp.mod931 = trunc i32 %i.rz to i1
  call void @llvm.assume(i1 %lcmp.mod931)
  store <2 x float> %i.kf, ptr %.08114.i.epil.init, align 4, !tbaa !12
  %.not91.i.epil = icmp eq ptr %.08015.i.epil.init, null
  br i1 %.not91.i.epil, label %.critedge427, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph.i.epil.preheader
  %.08319.i.epil = fadd reassoc nsz arcp contract afn float %.08319.pn.i.epil.init, %i.qj ; 2 uses
  %sin17.i.epil = extractvalue { float, float } %sincos.pn.i.epil.init, 0
  %cos18.i.epil = extractvalue { float, float } %sincos.pn.i.epil.init, 1
  %i.sq = fmul reassoc nsz arcp contract afn float %cos18.i.epil, %.08319.i.epil
  %i.sr = fadd reassoc nsz arcp contract afn float %i.sq, %i.kh
  %i.ss = getelementptr inbounds nuw i8, ptr %.08015.i.epil.init, i64 4
  store float %i.sr, ptr %.08015.i.epil.init, align 4, !tbaa !12
  %i.st = fmul reassoc nsz arcp contract afn float %sin17.i.epil, %.08319.i.epil
  %i.su = fadd reassoc nsz arcp contract afn float %i.st, %i.kg
  store float %i.su, ptr %i.ss, align 4, !tbaa !12
  br label %.critedge427

.critedge427:                                     ; preds = %.critedge427.loopexit.unr-lcssa, %bb.cc, %.lr.ph.i.epil.preheader, %dt_masks_dynbuf_reserve_n.exit106.i, %bb.bo, %_path_is_clockwise.exit527, %dt_masks_dynbuf_add_2.exit506.thread, %bb.bk, %dt_masks_dynbuf_add_2.exit513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.fm
  br i1 %exitcond.not, label %._crit_edge621, label %bb.an

bb.cd:                                            ; preds = %dt_masks_dynbuf_free.exit491
  %i.sv = getelementptr i8, ptr %.0378, i64 136   ; 2 uses
  %.0378.val = load i64, ptr %i.sv, align 8, !tbaa !180
  %i.sw = lshr i64 %.0378.val, 1
  %i.sx = trunc i64 %i.sw to i32
  store i32 %i.sx, ptr %8, align 4, !tbaa !28
  %i.sy = load ptr, ptr %.0378, align 8, !tbaa !176
  store ptr null, ptr %.0378, align 8, !tbaa !176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sv, i8 0, i64 16, i1 false)
  store ptr %i.sy, ptr %7, align 8, !tbaa !128
end_hunk_1
begin_hunk_2_@_path_get_pts_border:bb.a

._crit_edge.i102.i.i:                             ; preds = %bb.cy
  %.pre.i103.i.i = load i64, ptr %i.wi, align 8, !tbaa !180 ; 2 uses
  %.pre12.i104.i.i = add i64 %.pre.i103.i.i, 2
  br label %bb.cz

bb.cz:                                            ; preds = %._crit_edge.i102.i.i, %.preheader.i.i550
  %.pre-phi.i105.i.i = phi i64 [ %.pre12.i104.i.i, %._crit_edge.i102.i.i ], [ %i.ya, %.preheader.i.i550 ]
  %i.yg = phi i64 [ %.pre.i103.i.i, %._crit_edge.i102.i.i ], [ %i.xz, %.preheader.i.i550 ]
  %i.yh = load ptr, ptr %i.vu, align 8, !tbaa !176
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %i.yh, i64 %i.yg ; 2 uses
  store float %i.xx, ptr %i.yi, align 4, !tbaa !12
  store i64 %.pre-phi.i105.i.i, ptr %i.wi, align 8, !tbaa !180
  %i.yj = getelementptr i8, ptr %i.yi, i64 4
  store float %i.xy, ptr %i.yj, align 4, !tbaa !12
  br label %dt_masks_dynbuf_add_2.exit106.i.i

dt_masks_dynbuf_add_2.exit106.i.i:                ; preds = %bb.cz, %bb.cy, %bb.cx
  %.077.i.i = add nsw i32 %.077169.i.i, -1        ; 2 uses
  %i.yk = icmp sgt i32 %.077.i.i, %.0222410.i
  br i1 %i.yk, label %.preheader.i.i550, label %_path_fill_gaps.exit.i

bb.da:                                            ; preds = %dt_masks_dynbuf_add_2.exit.i.i
  %i.yl = icmp slt i32 %i.xk, -1
  br i1 %i.yl, label %.preheader153.i.i, label %_path_fill_gaps.exit.i

.preheader153.i.i:                                ; preds = %bb.da
  %.074160.i.i = add nsw i32 %i.xj, 1
  %i.ym = extractelement <2 x i32> %i.wz, i64 1
  %i.yn = sub nsw i32 %i.ym, %.0220411.i
  %i.yo = sitofp reassoc nsz arcp contract afn i32 %i.xk to float
  %i.yp = sitofp reassoc nsz arcp contract afn i32 %.0220411.i to float
  %i.yq = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.yo
  br label %.preheader149.i.i

.preheader149.i.i:                                ; preds = %dt_masks_dynbuf_add_2.exit127.i.i, %.preheader153.i.i
  %.074161.i.i = phi i32 [ %.074160.i.i, %.preheader153.i.i ], [ %.074.i.i, %dt_masks_dynbuf_add_2.exit127.i.i ] ; 3 uses
  %i.yr = sub nsw i32 %.074161.i.i, %.0222410.i
  %i.ys = mul nsw i32 %i.yr, %i.yn
  %i.yt = sitofp reassoc nsz arcp contract afn i32 %i.ys to float
  %i.yu = fmul reassoc nsz arcp contract afn float %i.yt, %i.yq
  %i.yv = fadd reassoc nsz arcp contract afn float %i.yu, %i.yp
  %i.yw = fptosi float %i.yv to i32
  %i.yx = sitofp reassoc nsz arcp contract afn i32 %.074161.i.i to float
  %i.yy = sitofp reassoc nsz arcp contract afn i32 %i.yw to float
  %i.yz = load i64, ptr %i.wi, align 8, !tbaa !180 ; 2 uses
  %i.za = add i64 %i.yz, 2                        ; 2 uses
  %i.zb = load i64, ptr %i.wj, align 8, !tbaa !181 ; 3 uses
  %.not.i121.i.i = icmp ult i64 %i.za, %i.zb
  br i1 %.not.i121.i.i, label %bb.dd, label %bb.db, !prof !182

bb.db:                                            ; preds = %.preheader149.i.i
  %i.zc = icmp eq i64 %i.zb, 0
  br i1 %i.zc, label %dt_masks_dynbuf_add_2.exit127.i.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.zd = shl i64 %i.zb, 1
  %i.ze = add i64 %i.zd, 2
  %i.zf = call fastcc i32 @_dt_masks_dynbuf_growto(ptr noundef nonnull %i.vu, i64 noundef %i.ze)
  %.not11.i122.i.i = icmp eq i32 %i.zf, 0
  br i1 %.not11.i122.i.i, label %dt_masks_dynbuf_add_2.exit127.i.i, label %._crit_edge.i123.i.i

._crit_edge.i123.i.i:                             ; preds = %bb.dc
  %.pre.i124.i.i = load i64, ptr %i.wi, align 8, !tbaa !180 ; 2 uses
  %.pre12.i125.i.i = add i64 %.pre.i124.i.i, 2
  br label %bb.dd

bb.dd:                                            ; preds = %._crit_edge.i123.i.i, %.preheader149.i.i
  %.pre-phi.i126.i.i = phi i64 [ %.pre12.i125.i.i, %._crit_edge.i123.i.i ], [ %i.za, %.preheader149.i.i ]
  %i.zg = phi i64 [ %.pre.i124.i.i, %._crit_edge.i123.i.i ], [ %i.yz, %.preheader149.i.i ]
  %i.zh = load ptr, ptr %i.vu, align 8, !tbaa !176
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %i.zh, i64 %i.zg ; 2 uses
  store float %i.yx, ptr %i.zi, align 4, !tbaa !12
  store i64 %.pre-phi.i126.i.i, ptr %i.wi, align 8, !tbaa !180
  %i.zj = getelementptr i8, ptr %i.zi, i64 4
  store float %i.yy, ptr %i.zj, align 4, !tbaa !12
  br label %dt_masks_dynbuf_add_2.exit127.i.i

dt_masks_dynbuf_add_2.exit127.i.i:                ; preds = %bb.dd, %bb.dc, %bb.db
  %.074.i.i = add nsw i32 %.074161.i.i, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %.074.i.i, %.0222410.i
  br i1 %exitcond.not.i.i, label %_path_fill_gaps.exit.i, label %.preheader149.i.i

_path_fill_gaps.exit.i:                           ; preds = %dt_masks_dynbuf_add_2.exit127.i.i, %dt_masks_dynbuf_add_2.exit106.i.i, %bb.da
  %.val.i541 = load i64, ptr %i.wi, align 8, !tbaa !180
  %i.zk = lshr i64 %.val.i541, 1
  %i.zl = trunc i64 %i.zk to i32
  %.0217399.i = add i32 %i.zl, -1                 ; 2 uses
  %i.zm = icmp sgt i32 %.0217399.i, -1
  br i1 %i.zm, label %.lr.ph404.i, label %._crit_edge405.i

.lr.ph404.i:                                      ; preds = %_path_fill_gaps.exit.i
  %i.zn = add nsw i32 %spec.select.i540, -1
  %.not.i294.i = icmp slt i32 %spec.select.i540, %.sroa.6461.0.i
  %i.zo = select i1 %.not.i294.i, i32 %i.tv, i32 0
  %i.zp = add nsw i32 %i.zo, %spec.select.i540    ; 10 uses
  %i.zq = insertelement <4 x i32> poison, i32 %i.zp, i64 0
  %i.zr = shufflevector <4 x i32> %i.zq, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.zs = icmp slt <4 x i32> %i.wr, %i.zr
  %i.zt = zext nneg i32 %.0217399.i to i64
  %broadcast.splatinsert811 = insertelement <8 x i32> poison, i32 %i.zp, i64 0
  %broadcast.splat812 = shufflevector <8 x i32> %broadcast.splatinsert811, <8 x i32> poison, <8 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert834 = insertelement <8 x i32> poison, i32 %i.zp, i64 0
  %broadcast.splat835 = shufflevector <8 x i32> %broadcast.splatinsert834, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %bb.de

bb.de:                                            ; preds = %bb.ei, %.lr.ph404.i
  %indvars.iv456.i = phi i64 [ %i.zt, %.lr.ph404.i ], [ %indvars.iv.next457.i, %bb.ei ] ; 3 uses
  %.1221402.i = phi i32 [ %.0220411.i, %.lr.ph404.i ], [ %.2.ph.i, %bb.ei ] ; 2 uses
  %.1223401.i = phi i32 [ %.0222410.i, %.lr.ph404.i ], [ %.2224.ph.i, %bb.ei ] ; 2 uses
  %.1242400.i = phi i32 [ %.0241409.i, %.lr.ph404.i ], [ %.8.ph.i, %bb.ei ] ; 2 uses
  %.val290.i = load ptr, ptr %i.vu, align 8, !tbaa !176
  %.idx500.i = shl nuw nsw i64 %indvars.iv456.i, 3
  %i.zu = getelementptr inbounds nuw i8, ptr %.val290.i, i64 %.idx500.i ; 2 uses
  %i.zv = load float, ptr %i.zu, align 4, !tbaa !12
  %i.zw = fptosi float %i.zv to i32               ; 4 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zu, i64 4
  %i.zy = load float, ptr %i.zx, align 4, !tbaa !12
  %i.zz = fptosi float %i.zy to i32               ; 4 uses
  %.reass.reass = add i32 %i.zz, %invariant.op951
  %i.aaa = mul nsw i32 %.reass.reass, %i.un
  %.reass792.reass = add i32 %i.zw, %invariant.op952
  %i.aab = add nsw i32 %.reass792.reass, %i.aaa   ; 3 uses
  %i.aac = icmp slt i32 %i.aab, 0
  br i1 %i.aac, label %.sink.split.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.aad = zext nneg i32 %i.aab to i64            ; 3 uses
  %i.aae = icmp ult i64 %i.up, %i.aad
  br i1 %i.aae, label %.sink.split.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.aaf = icmp eq i32 %.1223401.i, %i.zw
  %i.aag = icmp eq i32 %.1221402.i, %i.zz
  %or.cond283.i = select i1 %i.aaf, i1 %i.aag, i1 false
  br i1 %or.cond283.i, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.aah = getelementptr inbounds nuw [4 x i8], ptr %i.vs, i64 %i.aad
  store i32 %spec.select.i540, ptr %i.aah, align 4, !tbaa !28
  br label %bb.ei

bb.di:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 0, ptr %i.wk, align 4
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %i.vs, i64 %i.aad ; 3 uses
  %i.aaj = load i32, ptr %i.aai, align 4, !tbaa !28
  store i32 %i.aaj, ptr %i.a, align 4, !tbaa !28
  %.not278.i = icmp sgt i32 %i.ws, %i.zw
  br i1 %.not278.i, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.aak = getelementptr i8, ptr %i.aai, i64 -4
  %i.aal = load i32, ptr %i.aak, align 4, !tbaa !28
  store i32 %i.aal, ptr %i.wk, align 4, !tbaa !28
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.not279.i = icmp sgt i32 %i.wt, %i.zz
  br i1 %.not279.i, label %.preheader914, label %bb.dl

.preheader914:                                    ; preds = %bb.dl, %bb.dk
  br label %bb.dn

bb.dl:                                            ; preds = %bb.dk
  %i.aam = sub nsw i32 %i.aab, %i.un
  %i.aan = sext i32 %i.aam to i64
  %i.aao = getelementptr inbounds [4 x i8], ptr %i.vs, i64 %i.aan
  %i.aap = load i32, ptr %i.aao, align 4, !tbaa !28
  store i32 %i.aap, ptr %i.wl, align 4, !tbaa !28
  br label %.preheader914

bb.dm:                                            ; preds = %_check_cutable.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.ei

bb.dn:                                            ; preds = %.preheader914, %_check_cutable.exit.thread.i
  %indvars.iv452.i = phi i64 [ %indvars.iv.next453.i, %_check_cutable.exit.thread.i ], [ 0, %.preheader914 ] ; 2 uses
  %.2243397.i = phi i32 [ %.7.i, %_check_cutable.exit.thread.i ], [ %.1242400.i, %.preheader914 ] ; 10 uses
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv452.i
  %i.aar = load i32, ptr %i.aaq, align 4, !tbaa !28 ; 8 uses
  %i.aas = icmp eq i32 %i.aar, %spec.select.i540
  %i.aat = icmp eq i32 %i.aar, %i.zn
  %or.cond285.i = select i1 %i.aas, i1 true, i1 %i.aat
  br i1 %or.cond285.i, label %_check_cutable.exit.thread.i, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.aau = icmp eq i32 %i.aar, 0
  br i1 %i.aau, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  store i32 %spec.select.i540, ptr %i.aai, align 4, !tbaa !28
  br label %_check_cutable.exit.thread.i

bb.dq:                                            ; preds = %bb.do
  %.not.i293.i = icmp slt i32 %i.aar, %.sroa.6461.0.i
  %i.aav = select i1 %.not.i293.i, i32 %i.tv, i32 0
  %i.aaw = add nsw i32 %i.aav, %i.aar             ; 8 uses
  %i.aax = sub nsw i32 %i.zp, %i.aaw
  %i.aay = sitofp reassoc nsz arcp contract afn i32 %i.aax to float
  %i.aaz = load i64, ptr %i.bd, align 8, !tbaa !254 ; 5 uses
  %.not49.i.i = icmp eq i64 %i.aaz, 0
  br i1 %.not49.i.i, label %._crit_edge.i.i543, label %iter.check

iter.check:                                       ; preds = %bb.dq
  %i.aba = load ptr, ptr %i.ba, align 8, !tbaa !178 ; 6 uses
  %i.abb = add i64 %i.aaz, -1
  %i.abc = lshr i64 %i.abb, 1
  %i.abd = add nuw i64 %i.abc, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.aaz, 15
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check810 = icmp ult i64 %i.aaz, 63
  br i1 %min.iters.check810, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.abe = and i64 %i.abd, 24
  %n.vec = and i64 %i.abd, -32                    ; 4 uses
  %i.abf = shl i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.aaw, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %predphi, %vector.body ] ; 2 uses
  %vec.phi813 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %predphi826, %vector.body ] ; 2 uses
  %vec.phi814 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %predphi827, %vector.body ] ; 2 uses
  %vec.phi815 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %predphi828, %vector.body ] ; 2 uses
  %i.abg = shl nuw i64 %index, 1                  ; 4 uses
  %i.abh = getelementptr inbounds nuw [4 x i8], ptr %i.aba, i64 %i.abg
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %i.aba, i64 %i.abg
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 64
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %i.aba, i64 %i.abg
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 128
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr %i.aba, i64 %i.abg
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 192
  %wide.vec = load <16 x i32>, ptr %i.abh, align 4, !tbaa !28 ; 2 uses
  %strided.vec = shufflevector <16 x i32> %wide.vec, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec816 = shufflevector <16 x i32> %wide.vec, <16 x i32> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %wide.vec817 = load <16 x i32>, ptr %i.abj, align 4, !tbaa !28 ; 2 uses
  %strided.vec818 = shufflevector <16 x i32> %wide.vec817, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec819 = shufflevector <16 x i32> %wide.vec817, <16 x i32> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %wide.vec820 = load <16 x i32>, ptr %i.abl, align 4, !tbaa !28 ; 2 uses
  %strided.vec821 = shufflevector <16 x i32> %wide.vec820, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec822 = shufflevector <16 x i32> %wide.vec820, <16 x i32> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %wide.vec823 = load <16 x i32>, ptr %i.abn, align 4, !tbaa !28 ; 2 uses
  %strided.vec824 = shufflevector <16 x i32> %wide.vec823, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec825 = shufflevector <16 x i32> %wide.vec823, <16 x i32> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.abo = icmp slt <8 x i32> %strided.vec816, %broadcast.splat
  %i.abp = icmp slt <8 x i32> %strided.vec819, %broadcast.splat
  %i.abq = icmp slt <8 x i32> %strided.vec822, %broadcast.splat
  %i.abr = icmp slt <8 x i32> %strided.vec825, %broadcast.splat
  %i.abs = icmp sgt <8 x i32> %strided.vec, %broadcast.splat812
  %i.abt = icmp sgt <8 x i32> %strided.vec818, %broadcast.splat812
  %i.abu = icmp sgt <8 x i32> %strided.vec821, %broadcast.splat812
  %i.abv = icmp sgt <8 x i32> %strided.vec824, %broadcast.splat812
  %i.abw = select <8 x i1> %i.abo, <8 x i1> splat (i1 true), <8 x i1> %i.abs
  %i.abx = select <8 x i1> %i.abp, <8 x i1> splat (i1 true), <8 x i1> %i.abt
  %i.aby = select <8 x i1> %i.abq, <8 x i1> splat (i1 true), <8 x i1> %i.abu
  %i.abz = select <8 x i1> %i.abr, <8 x i1> splat (i1 true), <8 x i1> %i.abv
  %i.aca = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %broadcast.splat812, <8 x i32> %strided.vec816)
  %i.acb = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %broadcast.splat812, <8 x i32> %strided.vec819)
  %i.acc = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %broadcast.splat812, <8 x i32> %strided.vec822)
  %i.acd = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %broadcast.splat812, <8 x i32> %strided.vec825)
  %i.ace = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %broadcast.splat, <8 x i32> %strided.vec)
  %i.acf = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %broadcast.splat, <8 x i32> %strided.vec818)
  %i.acg = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %broadcast.splat, <8 x i32> %strided.vec821)
  %i.ach = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %broadcast.splat, <8 x i32> %strided.vec824)
  %i.aci = sub nsw <8 x i32> %i.aca, %i.ace
  %i.acj = sub nsw <8 x i32> %i.acb, %i.acf
  %i.ack = sub nsw <8 x i32> %i.acc, %i.acg
  %i.acl = sub nsw <8 x i32> %i.acd, %i.ach
  %i.acm = sitofp reassoc nsz arcp contract afn <8 x i32> %i.aci to <8 x float>
  %i.acn = sitofp reassoc nsz arcp contract afn <8 x i32> %i.acj to <8 x float>
  %i.aco = sitofp reassoc nsz arcp contract afn <8 x i32> %i.ack to <8 x float>
  %i.acp = sitofp reassoc nsz arcp contract afn <8 x i32> %i.acl to <8 x float>
  %i.acq = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi, %i.acm
  %i.acr = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi813, %i.acn
  %i.acs = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi814, %i.aco
  %i.act = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi815, %i.acp
  %predphi = select nsz <8 x i1> %i.abw, <8 x float> %vec.phi, <8 x float> %i.acq ; 2 uses
  %predphi826 = select nsz <8 x i1> %i.abx, <8 x float> %vec.phi813, <8 x float> %i.acr ; 2 uses
  %predphi827 = select nsz <8 x i1> %i.aby, <8 x float> %vec.phi814, <8 x float> %i.acs ; 2 uses
  %predphi828 = select nsz <8 x i1> %i.abz, <8 x float> %vec.phi815, <8 x float> %i.act ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.acu = icmp eq i64 %index.next, %n.vec
  br i1 %i.acu, label %middle.block, label %vector.body, !llvm.loop !243

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd reassoc nsz arcp contract afn <8 x float> %predphi826, %predphi
  %bin.rdx829 = fadd reassoc nsz arcp contract afn <8 x float> %predphi827, %bin.rdx
  %bin.rdx830 = fadd reassoc nsz arcp contract afn <8 x float> %predphi828, %bin.rdx829
  %i.acv = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx830) ; 3 uses
  %cmp.n = icmp eq i64 %i.abd, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i543, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.abe, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !255

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.acv, %vec.epilog.iter.check ], [ 0.000000e+00, %vector.main.loop.iter.check ]
  %n.vec831 = and i64 %i.abd, -8                  ; 3 uses
  %i.acw = shl i64 %n.vec831, 1
  %i.acx = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  %broadcast.splatinsert832 = insertelement <8 x i32> poison, i32 %i.aaw, i64 0
  %broadcast.splat833 = shufflevector <8 x i32> %broadcast.splatinsert832, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index836 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next842, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi837 = phi <8 x float> [ %i.acx, %vec.epilog.ph ], [ %predphi841, %vec.epilog.vector.body ] ; 2 uses
  %.idx907 = shl nuw i64 %index836, 3
  %i.acy = getelementptr inbounds nuw i8, ptr %i.aba, i64 %.idx907
  %wide.vec838 = load <16 x i32>, ptr %i.acy, align 4, !tbaa !28 ; 2 uses
  %strided.vec839 = shufflevector <16 x i32> %wide.vec838, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec840 = shufflevector <16 x i32> %wide.vec838, <16 x i32> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.acz = icmp slt <8 x i32> %strided.vec840, %broadcast.splat833
  %i.ada = icmp sgt <8 x i32> %strided.vec839, %broadcast.splat835
  %i.adb = select <8 x i1> %i.acz, <8 x i1> splat (i1 true), <8 x i1> %i.ada
  %i.adc = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %broadcast.splat835, <8 x i32> %strided.vec840)
  %i.add = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %broadcast.splat833, <8 x i32> %strided.vec839)
  %i.ade = sub nsw <8 x i32> %i.adc, %i.add
  %i.adf = sitofp reassoc nsz arcp contract afn <8 x i32> %i.ade to <8 x float>
  %i.adg = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi837, %i.adf
  %predphi841 = select nsz <8 x i1> %i.adb, <8 x float> %vec.phi837, <8 x float> %i.adg ; 2 uses
  %index.next842 = add nuw i64 %index836, 8       ; 2 uses
  %i.adh = icmp eq i64 %index.next842, %n.vec831
  br i1 %i.adh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !244

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.adi = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %predphi841) ; 2 uses
  %cmp.n843 = icmp eq i64 %i.abd, %n.vec831
  br i1 %cmp.n843, label %._crit_edge.i.i543, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check ], [ %i.abf, %vec.epilog.iter.check ], [ %i.acw, %vec.epilog.middle.block ]
  %.03546.i.i.ph = phi float [ 0.000000e+00, %iter.check ], [ %i.acv, %vec.epilog.iter.check ], [ %i.adi, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge.i.i543:                               ; preds = %bb.ds, %middle.block, %vec.epilog.middle.block, %bb.dq
  %.035.lcssa.i.i = phi float [ 0.000000e+00, %bb.dq ], [ %i.adi, %vec.epilog.middle.block ], [ %i.acv, %middle.block ], [ %.1.i.i542, %bb.ds ]
  %i.adj = fdiv reassoc nsz arcp contract afn float %.035.lcssa.i.i, %i.aay
  %i.adk = fcmp reassoc nsz arcp contract afn ogt float %i.adj, 5.000000e-01
  br i1 %i.adk, label %_check_cutable.exit.thread318.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %._crit_edge.i.i543
  %i.adl = insertelement <4 x i32> poison, i32 %i.aaw, i64 0
  %i.adm = shufflevector <4 x i32> %i.adl, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.adn = icmp slt <4 x i32> %i.adm, %i.wr
  %i.ado = and <4 x i1> %i.zs, %i.adn
  %i.adp = freeze <4 x i1> %i.ado
  %i.adq = bitcast <4 x i1> %i.adp to i4
  %.not913 = icmp eq i4 %i.adq, 0
  br i1 %.not913, label %_check_cutable.exit.thread318.i, label %_check_cutable.exit.thread.i

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %bb.ds
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.ds ], [ %indvars.iv.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.03546.i.i = phi float [ %.1.i.i542, %bb.ds ], [ %.03546.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.adr = getelementptr inbounds nuw [4 x i8], ptr %i.aba, i64 %indvars.iv.i.i ; 2 uses
  %i.ads = load i32, ptr %i.adr, align 4, !tbaa !28 ; 2 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adr, i64 4
  %i.adu = load i32, ptr %i.adt, align 4, !tbaa !28 ; 2 uses
  %.not.i296.i = icmp slt i32 %i.adu, %i.aaw
  %.not44.i.i = icmp sgt i32 %i.ads, %i.zp
  %or.cond.i.i = select i1 %.not.i296.i, i1 true, i1 %.not44.i.i
  br i1 %or.cond.i.i, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %vec.epilog.scalar.ph
  %i.adv = call i32 @llvm.smin.i32(i32 %i.zp, i32 %i.adu)
  %i.adw = call i32 @llvm.smax.i32(i32 %i.aaw, i32 %i.ads)
  %i.adx = sub nsw i32 %i.adv, %i.adw
  %i.ady = sitofp reassoc nsz arcp contract afn i32 %i.adx to float
  %i.adz = fadd reassoc nsz arcp contract afn float %.03546.i.i, %i.ady
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %vec.epilog.scalar.ph
  %.1.i.i542 = phi nsz float [ %i.adz, %bb.dr ], [ %.03546.i.i, %vec.epilog.scalar.ph ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.aea = icmp ugt i64 %i.aaz, %indvars.iv.next.i.i
  br i1 %i.aea, label %vec.epilog.scalar.ph, label %._crit_edge.i.i543, !llvm.loop !245

_check_cutable.exit.thread318.i:                  ; preds = %.preheader.preheader.i.i, %._crit_edge.i.i543
  %i.aeb = icmp eq i32 %.2243397.i, 0
  br i1 %i.aeb, label %bb.dt, label %.preheader.i544

.preheader.i544:                                  ; preds = %_check_cutable.exit.thread318.i
  %i.aec = icmp sgt i32 %.2243397.i, 0
  br i1 %i.aec, label %.lr.ph391.i, label %_check_cutable.exit.thread.i

.lr.ph391.i:                                      ; preds = %.preheader.i544
  %.val292.i = load ptr, ptr %i.az, align 8, !tbaa !176 ; 3 uses
  %wide.trip.count450.i = zext nneg i32 %.2243397.i to i64
  br label %bb.dx

bb.dt:                                            ; preds = %_check_cutable.exit.thread318.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i32 %i.aar, ptr %i.b, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i32 %spec.select.i540, ptr %i.c, align 4, !tbaa !28
  call fastcc void @_optimize_intersection_points(ptr noundef %i.tr, i32 noundef %i.tu, i32 noundef %.sroa.6461.0.i, i32 noundef %i.ts, ptr noundef %i.b, ptr noundef %i.c, i32 noundef %.sroa.6461.0.i, i32 noundef %i.ui, i32 noundef %.sroa.6461.0.i, i32 noundef %i.zp)
  %i.aed = load i32, ptr %i.b, align 4, !tbaa !28
  %i.aee = sitofp reassoc nsz arcp contract afn i32 %i.aed to float
  %i.aef = load i32, ptr %i.c, align 4, !tbaa !28
  %i.aeg = sitofp reassoc nsz arcp contract afn i32 %i.aef to float
  %i.aeh = load i64, ptr %i.wm, align 8, !tbaa !180 ; 2 uses
  %i.aei = add i64 %i.aeh, 2                      ; 2 uses
  %i.aej = load i64, ptr %i.wn, align 8, !tbaa !181 ; 3 uses
  %.not.i297.i = icmp ult i64 %i.aei, %i.aej
  br i1 %.not.i297.i, label %bb.dw, label %bb.du, !prof !182

bb.du:                                            ; preds = %bb.dt
  %i.aek = icmp eq i64 %i.aej, 0
  br i1 %i.aek, label %dt_masks_dynbuf_add_2.exit.i, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.ael = shl i64 %i.aej, 1
  %i.aem = add i64 %i.ael, 2
  %i.aen = call fastcc i32 @_dt_masks_dynbuf_growto(ptr noundef nonnull %i.az, i64 noundef %i.aem)
  %.not11.i.i546 = icmp eq i32 %i.aen, 0
  br i1 %.not11.i.i546, label %dt_masks_dynbuf_add_2.exit.i, label %._crit_edge.i298.i

._crit_edge.i298.i:                               ; preds = %bb.dv
  %.pre.i.i547 = load i64, ptr %i.wm, align 8, !tbaa !180 ; 2 uses
  %.pre12.i.i548 = add i64 %.pre.i.i547, 2
  br label %bb.dw

bb.dw:                                            ; preds = %._crit_edge.i298.i, %bb.dt
  %.pre-phi.i.i549 = phi i64 [ %.pre12.i.i548, %._crit_edge.i298.i ], [ %i.aei, %bb.dt ]
  %i.aeo = phi i64 [ %.pre.i.i547, %._crit_edge.i298.i ], [ %i.aeh, %bb.dt ]
  %i.aep = load ptr, ptr %i.az, align 8, !tbaa !176
  %i.aeq = getelementptr inbounds nuw [4 x i8], ptr %i.aep, i64 %i.aeo ; 2 uses
  store float %i.aee, ptr %i.aeq, align 4, !tbaa !12
  store i64 %.pre-phi.i.i549, ptr %i.wm, align 8, !tbaa !180
  %i.aer = getelementptr i8, ptr %i.aeq, i64 4
  store float %i.aeg, ptr %i.aer, align 4, !tbaa !12
  br label %dt_masks_dynbuf_add_2.exit.i

dt_masks_dynbuf_add_2.exit.i:                     ; preds = %bb.dw, %bb.dv, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %_check_cutable.exit.thread.i

bb.dx:                                            ; preds = %bb.ed, %.lr.ph391.i
  %indvars.iv447.i = phi i64 [ 0, %.lr.ph391.i ], [ %indvars.iv.next448.i, %bb.ed ] ; 3 uses
  %i.aes = shl nuw nsw i64 %indvars.iv447.i, 1    ; 4 uses
  %i.aet = getelementptr inbounds nuw [4 x i8], ptr %.val292.i, i64 %i.aes ; 2 uses
  %i.aeu = load float, ptr %i.aet, align 4, !tbaa !12
  %i.aev = fptosi float %i.aeu to i32             ; 2 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aet, i64 4
  %i.aex = load float, ptr %i.aew, align 4, !tbaa !12
  %i.aey = fptosi float %i.aex to i32             ; 2 uses
  %.not.i299.i = icmp sgt i32 %.sroa.6461.0.i, %i.aev
  %i.aez = select i1 %.not.i299.i, i32 %i.tv, i32 0
  %i.afa = add nsw i32 %i.aez, %i.aev             ; 2 uses
  %.not.i300.i = icmp sgt i32 %.sroa.6461.0.i, %i.aey
  %i.afb = select i1 %.not.i300.i, i32 %i.tv, i32 0
  %i.afc = add nsw i32 %i.afb, %i.aey             ; 4 uses
  %.not281.i = icmp sgt i32 %i.afa, %i.aaw        ; 2 uses
  %.not282.i = icmp sgt i32 %i.aaw, %i.afc        ; 2 uses
  %or.cond286.i = select i1 %.not281.i, i1 true, i1 %.not282.i
  br i1 %or.cond286.i, label %bb.dy, label %_check_cutable.exit.thread.i

bb.dy:                                            ; preds = %bb.dx
  %i.afd = icmp slt i32 %i.afc, %i.zp
  %or.cond287.i = select i1 %.not281.i, i1 %i.afd, i1 false
  br i1 %or.cond287.i, label %bb.dz, label %bb.ed

bb.dz:                                            ; preds = %bb.dy
  %i.afe = trunc nuw nsw i64 %indvars.iv447.i to i32
  store i64 %i.aes, ptr %i.wm, align 8, !tbaa !180
  %i.aff = add nuw nsw i32 %i.afe, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store i32 %i.aar, ptr %i.d, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  store i32 %spec.select.i540, ptr %i.e, align 4, !tbaa !28
  call fastcc void @_optimize_intersection_points(ptr noundef %i.tr, i32 noundef %i.tu, i32 noundef %.sroa.6461.0.i, i32 noundef %i.ts, ptr noundef %i.d, ptr noundef %i.e, i32 noundef %.sroa.6461.0.i, i32 noundef %i.afa, i32 noundef %i.afc, i32 noundef %i.zp)
  %i.afg = load i32, ptr %i.d, align 4, !tbaa !28
  %i.afh = sitofp reassoc nsz arcp contract afn i32 %i.afg to float
  %i.afi = load i32, ptr %i.e, align 4, !tbaa !28
  %i.afj = sitofp reassoc nsz arcp contract afn i32 %i.afi to float
  %i.afk = add nuw nsw i64 %i.aes, 2              ; 2 uses
  %i.afl = load i64, ptr %i.wn, align 8, !tbaa !181 ; 3 uses
  %.not.i301.i = icmp ult i64 %i.afk, %i.afl
  br i1 %.not.i301.i, label %bb.ec, label %bb.ea, !prof !182

bb.ea:                                            ; preds = %bb.dz
  %i.afm = icmp eq i64 %i.afl, 0
  br i1 %i.afm, label %dt_masks_dynbuf_add_2.exit307.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.afn = shl nuw nsw i64 %i.afl, 1
  %i.afo = add nuw nsw i64 %i.afn, 2
  %i.afp = call fastcc i32 @_dt_masks_dynbuf_growto(ptr noundef nonnull %i.az, i64 noundef %i.afo)
  %.not11.i302.i = icmp eq i32 %i.afp, 0
  br i1 %.not11.i302.i, label %dt_masks_dynbuf_add_2.exit307.i, label %._crit_edge.i303.i

._crit_edge.i303.i:                               ; preds = %bb.eb
  %.pre.i304.i = load i64, ptr %i.wm, align 8, !tbaa !180 ; 2 uses
  %.pre12.i305.i = add i64 %.pre.i304.i, 2
  %.pre.i545 = load ptr, ptr %i.az, align 8, !tbaa !176
  br label %bb.ec

bb.ec:                                            ; preds = %._crit_edge.i303.i, %bb.dz
  %i.afq = phi ptr [ %.pre.i545, %._crit_edge.i303.i ], [ %.val292.i, %bb.dz ]
  %.pre-phi.i306.i = phi i64 [ %.pre12.i305.i, %._crit_edge.i303.i ], [ %i.afk, %bb.dz ]
  %i.afr = phi i64 [ %.pre.i304.i, %._crit_edge.i303.i ], [ %i.aes, %bb.dz ]
  %i.afs = getelementptr inbounds nuw [4 x i8], ptr %i.afq, i64 %i.afr ; 2 uses
  store float %i.afh, ptr %i.afs, align 4, !tbaa !12
  store i64 %.pre-phi.i306.i, ptr %i.wm, align 8, !tbaa !180
  %i.aft = getelementptr i8, ptr %i.afs, i64 4
  store float %i.afj, ptr %i.aft, align 4, !tbaa !12
  br label %dt_masks_dynbuf_add_2.exit307.i

dt_masks_dynbuf_add_2.exit307.i:                  ; preds = %bb.ec, %bb.eb, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %_check_cutable.exit.thread.i

bb.ed:                                            ; preds = %bb.dy
  %indvars.iv.next448.i = add nuw nsw i64 %indvars.iv447.i, 1 ; 2 uses
  %exitcond451.not.i = icmp eq i64 %indvars.iv.next448.i, %wide.trip.count450.i
  br i1 %exitcond451.not.i, label %.loopexit.i, label %bb.dx

.loopexit.i:                                      ; preds = %bb.ed
  br i1 %.not282.i, label %bb.ee, label %_check_cutable.exit.thread.i

bb.ee:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  store i32 %i.aar, ptr %i.f, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  store i32 %spec.select.i540, ptr %i.g, align 4, !tbaa !28
  call fastcc void @_optimize_intersection_points(ptr noundef %i.tr, i32 noundef %i.tu, i32 noundef %.sroa.6461.0.i, i32 noundef %i.ts, ptr noundef %i.f, ptr noundef %i.g, i32 noundef %i.afc, i32 noundef %i.ui, i32 noundef %.sroa.6461.0.i, i32 noundef %i.zp)
  %i.afu = load i32, ptr %i.f, align 4, !tbaa !28
  %i.afv = sitofp reassoc nsz arcp contract afn i32 %i.afu to float
  %i.afw = load i32, ptr %i.g, align 4, !tbaa !28
  %i.afx = sitofp reassoc nsz arcp contract afn i32 %i.afw to float
  %i.afy = load i64, ptr %i.wm, align 8, !tbaa !180 ; 2 uses
  %i.afz = add i64 %i.afy, 2                      ; 2 uses
  %i.aga = load i64, ptr %i.wn, align 8, !tbaa !181 ; 3 uses
  %.not.i308.i = icmp ult i64 %i.afz, %i.aga
  br i1 %.not.i308.i, label %bb.eh, label %bb.ef, !prof !182

bb.ef:                                            ; preds = %bb.ee
  %i.agb = icmp eq i64 %i.aga, 0
  br i1 %i.agb, label %dt_masks_dynbuf_add_2.exit314.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.agc = shl i64 %i.aga, 1
  %i.agd = add i64 %i.agc, 2
  %i.age = call fastcc i32 @_dt_masks_dynbuf_growto(ptr noundef nonnull %i.az, i64 noundef %i.agd)
  %.not11.i309.i = icmp eq i32 %i.age, 0
  br i1 %.not11.i309.i, label %dt_masks_dynbuf_add_2.exit314.i, label %._crit_edge.i310.i

._crit_edge.i310.i:                               ; preds = %bb.eg
  %.pre.i311.i = load i64, ptr %i.wm, align 8, !tbaa !180 ; 2 uses
  %.pre12.i312.i = add i64 %.pre.i311.i, 2
  %.pre678 = load ptr, ptr %i.az, align 8, !tbaa !176
  br label %bb.eh

bb.eh:                                            ; preds = %._crit_edge.i310.i, %bb.ee
  %i.agf = phi ptr [ %.pre678, %._crit_edge.i310.i ], [ %.val292.i, %bb.ee ]
  %.pre-phi.i313.i = phi i64 [ %.pre12.i312.i, %._crit_edge.i310.i ], [ %i.afz, %bb.ee ]
  %i.agg = phi i64 [ %.pre.i311.i, %._crit_edge.i310.i ], [ %i.afy, %bb.ee ]
  %i.agh = getelementptr inbounds nuw [4 x i8], ptr %i.agf, i64 %i.agg ; 2 uses
  store float %i.afv, ptr %i.agh, align 4, !tbaa !12
  store i64 %.pre-phi.i313.i, ptr %i.wm, align 8, !tbaa !180
  %i.agi = getelementptr i8, ptr %i.agh, i64 4
  store float %i.afx, ptr %i.agi, align 4, !tbaa !12
  br label %dt_masks_dynbuf_add_2.exit314.i

dt_masks_dynbuf_add_2.exit314.i:                  ; preds = %bb.eh, %bb.eg, %bb.ef
  %i.agj = add nuw nsw i32 %.2243397.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  br label %_check_cutable.exit.thread.i

_check_cutable.exit.thread.i:                     ; preds = %bb.dx, %dt_masks_dynbuf_add_2.exit314.i, %.loopexit.i, %dt_masks_dynbuf_add_2.exit307.i, %dt_masks_dynbuf_add_2.exit.i, %.preheader.i544, %.preheader.preheader.i.i, %bb.dp, %bb.dn
  %.7.i = phi i32 [ %.2243397.i, %bb.dn ], [ %.2243397.i, %bb.dp ], [ 1, %dt_masks_dynbuf_add_2.exit.i ], [ %.2243397.i, %.preheader.preheader.i.i ], [ %i.agj, %dt_masks_dynbuf_add_2.exit314.i ], [ %.2243397.i, %.loopexit.i ], [ %.2243397.i, %.preheader.i544 ], [ %i.aff, %dt_masks_dynbuf_add_2.exit307.i ], [ %.2243397.i, %bb.dx ] ; 2 uses
  %indvars.iv.next453.i = add nuw nsw i64 %indvars.iv452.i, 1 ; 2 uses
  %exitcond455.not.i = icmp eq i64 %indvars.iv.next453.i, 3
  br i1 %exitcond455.not.i, label %bb.dm, label %bb.dn

bb.ei:                                            ; preds = %bb.dm, %bb.dh
  %.8.ph.i = phi i32 [ %.7.i, %bb.dm ], [ %.1242400.i, %bb.dh ] ; 2 uses
  %.2224.ph.i = phi i32 [ %i.zw, %bb.dm ], [ %.1223401.i, %bb.dh ] ; 2 uses
  %.2.ph.i = phi i32 [ %i.zz, %bb.dm ], [ %.1221402.i, %bb.dh ] ; 2 uses
  %indvars.iv.next457.i = add nsw i64 %indvars.iv456.i, -1
  %i.agk = icmp sgt i64 %indvars.iv456.i, 0
  br i1 %i.agk, label %bb.de, label %._crit_edge405.i

._crit_edge405.i:                                 ; preds = %bb.ei, %_path_fill_gaps.exit.i
  %.1242.lcssa.i = phi i32 [ %.0241409.i, %_path_fill_gaps.exit.i ], [ %.8.ph.i, %bb.ei ] ; 2 uses
  %.1223.lcssa.i = phi i32 [ %.0222410.i, %_path_fill_gaps.exit.i ], [ %.2224.ph.i, %bb.ei ]
  %.1221.lcssa.i = phi i32 [ %.0220411.i, %_path_fill_gaps.exit.i ], [ %.2.ph.i, %bb.ei ]
  %i.agl = add nuw nsw i32 %.0219412.i, 1         ; 2 uses
  %exitcond459.not.i = icmp eq i32 %i.agl, %i.ts
  br i1 %exitcond459.not.i, label %.thread347.i, label %bb.cs

.thread347.i:                                     ; preds = %._crit_edge405.i, %bb.cs, %bb.cr
  %.0241.lcssa.i = phi i32 [ 0, %bb.cr ], [ %.1242.lcssa.i, %._crit_edge405.i ], [ %.0241409.i, %bb.cs ]
  %i.agm = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !124
  %i.agn = and i32 %i.agm, 4096
  %.not.i315.i = icmp eq i32 %i.agn, 0
  %.pre466.i = load ptr, ptr %i.vu, align 8, !tbaa !176 ; 2 uses
  br i1 %.not.i315.i, label %dt_masks_dynbuf_free.exit.i, label %bb.ej

bb.ej:                                            ; preds = %.thread347.i
  %i.ago = getelementptr inbounds nuw i8, ptr %i.vu, i64 8
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.29, ptr noundef nonnull %i.ago, ptr noundef %.pre466.i) #25
  %.pre465.i = load ptr, ptr %i.vu, align 8, !tbaa !176
  br label %dt_masks_dynbuf_free.exit.i

dt_masks_dynbuf_free.exit.i:                      ; preds = %bb.ej, %.thread347.i
  %i.agp = phi ptr [ %.pre466.i, %.thread347.i ], [ %.pre465.i, %bb.ej ]
  call void @free(ptr noundef %i.agp) #25
  call void @free(ptr noundef nonnull %i.vu) #25
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.df, %bb.de, %dt_masks_dynbuf_free.exit.i, %bb.cq
  %.10256.ph.i = phi i32 [ 0, %bb.cq ], [ %.0241.lcssa.i, %dt_masks_dynbuf_free.exit.i ], [ 0, %bb.de ], [ 0, %bb.df ]
  call void @free(ptr noundef %i.vs) #25
  br label %_path_find_self_intersection.exit

_path_find_self_intersection.exit:                ; preds = %bb.ci, %bb.ck, %bb.cp, %.sink.split.i
  %.10256.i = phi i32 [ 0, %bb.ci ], [ 0, %bb.ck ], [ 0, %bb.cp ], [ %.10256.ph.i, %.sink.split.i ] ; 2 uses
  %i.agq = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !124
  %i.agr = and i32 %i.agq, 4112
  %or.cond431.not = icmp eq i32 %i.agr, 4112
  br i1 %or.cond431.not, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %_path_find_self_intersection.exit
  %i.ags = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.agt = call i32 @gettimeofday(ptr noundef nonnull %13, ptr noundef null) #25 ; 0 uses
  %i.agu = load i64, ptr %13, align 8, !tbaa !126
  %i.agv = add nsw i64 %i.agu, -1290608000
  %i.agw = sitofp reassoc nsz arcp contract afn i64 %i.agv to double
  %i.agx = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.agy = load i64, ptr %i.agx, align 8, !tbaa !127
  %i.agz = sitofp reassoc nsz arcp contract afn i64 %i.agy to double
  %i.aha = fmul reassoc nnan nsz arcp contract afn double %i.agz, f0x3EB0C6F7A0B5ED8D
  %i.ahb = fadd reassoc nsz arcp contract afn double %i.aha, %i.agw ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.ahc = fsub reassoc nsz arcp contract afn double %i.ahb, %.1572
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.23, ptr noundef nonnull %i.ags, double noundef %i.ahc) #25
  br label %bb.el

bb.el:                                            ; preds = %_path_find_self_intersection.exit, %bb.ek, %bb.ch
  %.2 = phi nsz double [ %.1572, %_path_find_self_intersection.exit ], [ %i.ahb, %bb.ek ], [ %.1572, %bb.ch ] ; 3 uses
  %.0369 = phi i32 [ %.10256.i, %_path_find_self_intersection.exit ], [ %.10256.i, %bb.ek ], [ 0, %bb.ch ] ; 2 uses
  %.not679 = xor i1 %i.cu, true
  %or.cond9 = and i1 %i.cs, %.not679
  %i.ahd = load ptr, ptr %5, align 8, !tbaa !128  ; 2 uses
  %i.ahe = load i32, ptr %6, align 4, !tbaa !28
  %i.ahf = sext i32 %i.ahe to i64                 ; 2 uses
  br i1 %or.cond9, label %bb.em, label %bb.ev

bb.em:                                            ; preds = %bb.el
  %i.ahg = call i32 @dt_dev_distort_transform_plus(ptr noundef %0, ptr noundef %4, double noundef %2, i32 noundef 4, ptr noundef %i.ahd, i64 noundef %i.ahf) #25
  %.not412 = icmp eq i32 %i.ahg, 0
  br i1 %.not412, label %bb.eq, label %bb.en

bb.en:                                            ; preds = %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #25
  %i.ahh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ahi = load <2 x float>, ptr %i.ahh, align 8, !tbaa !12
  %i.ahj = fmul reassoc nsz arcp contract afn <2 x float> %i.ahi, %i.ad
  store <2 x float> %i.ahj, ptr %i.p, align 8, !tbaa !12
  %i.ahk = call i32 @dt_dev_distort_transform_plus(ptr noundef %0, ptr noundef %4, double noundef %2, i32 noundef 4, ptr noundef nonnull %i.p, i64 noundef 1) #25
  %.not413 = icmp eq i32 %i.ahk, 0
  br i1 %.not413, label %.thread586, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.ahl = load ptr, ptr %5, align 8, !tbaa !128  ; 7 uses
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahl, i64 8
  %i.ahn = load <2 x float>, ptr %i.p, align 8, !tbaa !12
  %i.aho = load <2 x float>, ptr %i.ahm, align 8, !tbaa !12
  %i.ahp = fsub reassoc nsz arcp contract afn <2 x float> %i.ahn, %i.aho ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ahl, i64 64) ]
  %i.ahq = load i32, ptr %6, align 4, !tbaa !28   ; 5 uses
  %i.ahr = icmp sgt i32 %i.ahq, 0
  br i1 %i.ahr, label %iter.check886, label %._crit_edge629

iter.check886:                                    ; preds = %bb.eo
  %wide.trip.count668 = zext nneg i32 %i.ahq to i64 ; 6 uses
  %min.iters.check865 = icmp ult i32 %i.ahq, 4
  br i1 %min.iters.check865, label %.lr.ph628.preheader, label %vector.main.loop.iter.check866

vector.main.loop.iter.check866:                   ; preds = %iter.check886
  %min.iters.check867 = icmp ult i32 %i.ahq, 16
  br i1 %min.iters.check867, label %vec.epilog.ph890, label %vector.ph868

vector.ph868:                                     ; preds = %vector.main.loop.iter.check866
  %i.ahs = and i64 %wide.trip.count668, 12
  %n.vec869 = and i64 %wide.trip.count668, 2147483632 ; 4 uses
  %broadcast.splat871 = shufflevector <2 x float> %i.ahp, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat873 = shufflevector <2 x float> %i.ahp, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body874

vector.body874:                                   ; preds = %vector.ph868, %vector.body874
  %index875 = phi i64 [ 0, %vector.ph868 ], [ %index.next883, %vector.body874 ] ; 3 uses
  %i.aht = shl nuw nsw i64 %index875, 3
  %i.ahu = shl i64 %index875, 3
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahl, i64 %i.aht ; 2 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahl, i64 %i.ahu
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahw, i64 64 ; 2 uses
  %wide.vec876 = load <16 x float>, ptr %i.ahv, align 64, !tbaa !12 ; 2 uses
  %strided.vec877 = shufflevector <16 x float> %wide.vec876, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec878 = shufflevector <16 x float> %wide.vec876, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec879 = load <16 x float>, ptr %i.ahx, align 64, !tbaa !12 ; 2 uses
  %strided.vec880 = shufflevector <16 x float> %wide.vec879, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec881 = shufflevector <16 x float> %wide.vec879, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ahy = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat871, %strided.vec877
  %i.ahz = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat871, %strided.vec880
  %i.aia = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat873, %strided.vec878
  %i.aib = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat873, %strided.vec881
  %interleaved.vec = shufflevector <8 x float> %i.ahy, <8 x float> %i.aia, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.ahv, align 64, !tbaa !12
  %interleaved.vec882 = shufflevector <8 x float> %i.ahz, <8 x float> %i.aib, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec882, ptr %i.ahx, align 64, !tbaa !12
  %index.next883 = add nuw i64 %index875, 16      ; 2 uses
  %i.aic = icmp eq i64 %index.next883, %n.vec869
  br i1 %i.aic, label %middle.block884, label %vector.body874, !llvm.loop !246

middle.block884:                                  ; preds = %vector.body874
  %cmp.n885 = icmp eq i64 %n.vec869, %wide.trip.count668
  br i1 %cmp.n885, label %._crit_edge629, label %vec.epilog.iter.check887

vec.epilog.iter.check887:                         ; preds = %middle.block884
  %min.epilog.iters.check889 = icmp eq i64 %i.ahs, 0
  br i1 %min.epilog.iters.check889, label %.lr.ph628.preheader, label %vec.epilog.ph890, !prof !256

vec.epilog.ph890:                                 ; preds = %vector.main.loop.iter.check866, %vec.epilog.iter.check887
  %vec.epilog.resume.val891 = phi i64 [ %n.vec869, %vec.epilog.iter.check887 ], [ 0, %vector.main.loop.iter.check866 ]
  %n.vec892 = and i64 %wide.trip.count668, 2147483644 ; 3 uses
  %broadcast.splat894 = shufflevector <2 x float> %i.ahp, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat896 = shufflevector <2 x float> %i.ahp, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vec.epilog.vector.body897

vec.epilog.vector.body897:                        ; preds = %vec.epilog.vector.body897, %vec.epilog.ph890
  %index898 = phi i64 [ %vec.epilog.resume.val891, %vec.epilog.ph890 ], [ %index.next903, %vec.epilog.vector.body897 ] ; 2 uses
  %i.aid = shl nuw nsw i64 %index898, 3
  %i.aie = getelementptr inbounds nuw i8, ptr %i.ahl, i64 %i.aid ; 2 uses
  %wide.vec899 = load <8 x float>, ptr %i.aie, align 32, !tbaa !12 ; 2 uses
  %strided.vec900 = shufflevector <8 x float> %wide.vec899, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec901 = shufflevector <8 x float> %wide.vec899, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.aif = fadd reassoc nsz arcp contract afn <4 x float> %broadcast.splat894, %strided.vec900
  %i.aig = fadd reassoc nsz arcp contract afn <4 x float> %broadcast.splat896, %strided.vec901
  %interleaved.vec902 = shufflevector <4 x float> %i.aif, <4 x float> %i.aig, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec902, ptr %i.aie, align 32, !tbaa !12
  %index.next903 = add nuw i64 %index898, 4       ; 2 uses
  %i.aih = icmp eq i64 %index.next903, %n.vec892
  br i1 %i.aih, label %vec.epilog.middle.block904, label %vec.epilog.vector.body897, !llvm.loop !247

vec.epilog.middle.block904:                       ; preds = %vec.epilog.vector.body897
  %cmp.n905 = icmp eq i64 %n.vec892, %wide.trip.count668
  br i1 %cmp.n905, label %._crit_edge629, label %.lr.ph628.preheader

.lr.ph628.preheader:                              ; preds = %iter.check886, %vec.epilog.iter.check887, %vec.epilog.middle.block904
  %indvars.iv665.ph = phi i64 [ 0, %iter.check886 ], [ %n.vec869, %vec.epilog.iter.check887 ], [ %n.vec892, %vec.epilog.middle.block904 ]
  br label %.lr.ph628

._crit_edge629:                                   ; preds = %.lr.ph628, %middle.block884, %vec.epilog.middle.block904, %bb.eo
  %i.aii = sext i32 %i.ahq to i64
  %i.aij = call i32 @dt_dev_distort_transform_plus(ptr noundef %0, ptr noundef %4, double noundef %2, i32 noundef 1, ptr noundef nonnull %i.ahl, i64 noundef %i.aii) #25
  %.not414 = icmp eq i32 %i.aij, 0
  br i1 %.not414, label %.thread586, label %bb.ep

.lr.ph628:                                        ; preds = %.lr.ph628.preheader, %.lr.ph628
  %indvars.iv665 = phi i64 [ %indvars.iv.next666, %.lr.ph628 ], [ %indvars.iv665.ph, %.lr.ph628.preheader ] ; 2 uses
  %.idx767 = shl nuw nsw i64 %indvars.iv665, 3
  %i.aik = getelementptr inbounds nuw i8, ptr %i.ahl, i64 %.idx767 ; 2 uses
  %i.ail = load <2 x float>, ptr %i.aik, align 8, !tbaa !12
  %i.aim = fadd reassoc nsz arcp contract afn <2 x float> %i.ahp, %i.ail
  store <2 x float> %i.aim, ptr %i.aik, align 8, !tbaa !12
  %indvars.iv.next666 = add nuw nsw i64 %indvars.iv665, 1 ; 2 uses
  %exitcond669.not = icmp eq i64 %indvars.iv.next666, %wide.trip.count668
  br i1 %exitcond669.not, label %._crit_edge629, label %.lr.ph628, !llvm.loop !248

.thread586:                                       ; preds = %bb.en, %._crit_edge629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #25
  br label %bb.fq

bb.ep:                                            ; preds = %._crit_edge629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #25
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.em
  %i.ain = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !124 ; 2 uses
  %i.aio = and i32 %i.ain, 4112
  %or.cond432.not = icmp eq i32 %i.aio, 4112
  br i1 %or.cond432.not, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.aip = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.aiq = call i32 @gettimeofday(ptr noundef nonnull %12, ptr noundef null) #25 ; 0 uses
  %i.air = load i64, ptr %12, align 8, !tbaa !126
  %i.ais = add nsw i64 %i.air, -1290608000
  %i.ait = sitofp reassoc nsz arcp contract afn i64 %i.ais to double
  %i.aiu = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.aiv = load i64, ptr %i.aiu, align 8, !tbaa !127
  %i.aiw = sitofp reassoc nsz arcp contract afn i64 %i.aiv to double
  %i.aix = fmul reassoc nnan nsz arcp contract afn double %i.aiw, f0x3EB0C6F7A0B5ED8D
  %i.aiy = fadd reassoc nsz arcp contract afn double %i.aix, %i.ait
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.aiz = fsub reassoc nsz arcp contract afn double %i.aiy, %.2
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.24, ptr noundef nonnull %i.aip, double noundef %i.aiz) #25
  %.pre685 = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !124
  br label %bb.es

bb.es:                                            ; preds = %bb.eq, %bb.er
  %i.aja = phi i32 [ %i.ain, %bb.eq ], [ %.pre685, %bb.er ]
  %i.ajb = and i32 %i.aja, 4096
  %.not.i554 = icmp eq i32 %i.ajb, 0
  br i1 %.not.i554, label %dt_masks_dynbuf_free.exit555, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.ajd = load ptr, ptr %i.az, align 8, !tbaa !176
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.29, ptr noundef nonnull %i.ajc, ptr noundef %i.ajd) #25
  br label %dt_masks_dynbuf_free.exit555

dt_masks_dynbuf_free.exit555:                     ; preds = %bb.es, %bb.et
  %i.aje = load ptr, ptr %i.az, align 8, !tbaa !176
  call void @free(ptr noundef %i.aje) #25
  call void @free(ptr noundef nonnull %i.az) #25
  %i.ajf = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !124
  %i.ajg = and i32 %i.ajf, 4096
  %.not.i556 = icmp eq i32 %i.ajg, 0
  br i1 %.not.i556, label %dt_masks_intbuf_free.exit557, label %bb.eu

bb.eu:                                            ; preds = %dt_masks_dynbuf_free.exit555
  %i.ajh = load ptr, ptr %i.ba, align 8, !tbaa !178
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.33, ptr noundef nonnull %i.bb, ptr noundef %i.ajh) #25
  br label %dt_masks_intbuf_free.exit557

dt_masks_intbuf_free.exit557:                     ; preds = %dt_masks_dynbuf_free.exit555, %bb.eu
  %i.aji = load ptr, ptr %i.ba, align 8, !tbaa !178
  call void @free(ptr noundef %i.aji) #25
  call void @free(ptr noundef nonnull %i.ba) #25
  call void @free(ptr noundef %i.fo) #25
  br label %.critedge438

bb.ev:                                            ; preds = %bb.el
  %i.ajj = call i32 @dt_dev_distort_transform_plus(ptr noundef %0, ptr noundef %4, double noundef %2, i32 noundef %3, ptr noundef %i.ahd, i64 noundef %i.ahf) #25
  %.not405 = icmp eq i32 %i.ajj, 0
  br i1 %.not405, label %bb.fq, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  br i1 %i.aj, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.ajk = load ptr, ptr %7, align 8, !tbaa !128
  %i.ajl = load i32, ptr %8, align 4, !tbaa !28
  %i.ajm = sext i32 %i.ajl to i64
  %i.ajn = call i32 @dt_dev_distort_transform_plus(ptr noundef %0, ptr noundef %4, double noundef %2, i32 noundef %3, ptr noundef %i.ajk, i64 noundef %i.ajm) #25
  %.not406 = icmp eq i32 %i.ajn, 0
  br i1 %.not406, label %bb.fq, label %bb.ey

bb.ey:                                            ; preds = %bb.ew, %bb.ex
  %i.ajo = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !124
  %i.ajp = and i32 %i.ajo, 4112
  %or.cond433.not = icmp eq i32 %i.ajp, 4112
  br i1 %or.cond433.not, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.ajq = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.ajr = call i32 @gettimeofday(ptr noundef nonnull %11, ptr noundef null) #25 ; 0 uses
  %i.ajs = load i64, ptr %11, align 8, !tbaa !126
  %i.ajt = add nsw i64 %i.ajs, -1290608000
  %i.aju = sitofp reassoc nsz arcp contract afn i64 %i.ajt to double
  %i.ajv = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ajw = load i64, ptr %i.ajv, align 8, !tbaa !127
  %i.ajx = sitofp reassoc nsz arcp contract afn i64 %i.ajw to double
  %i.ajy = fmul reassoc nnan nsz arcp contract afn double %i.ajx, f0x3EB0C6F7A0B5ED8D
  %i.ajz = fadd reassoc nsz arcp contract afn double %i.ajy, %i.aju ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.aka = fsub reassoc nsz arcp contract afn double %i.ajz, %.2
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.25, ptr noundef nonnull %i.ajq, double noundef %i.aka) #25
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %.3 = phi nsz double [ %.2, %bb.ey ], [ %i.ajz, %bb.ez ]
  br i1 %i.aj, label %.preheader595, label %.loopexit

.preheader595:                                    ; preds = %bb.fa
  br i1 %i.ct, label %.preheader594.lr.ph, label %.preheader

.preheader594.lr.ph:                              ; preds = %.preheader595
  %i.akb = load ptr, ptr %7, align 8, !tbaa !128  ; 18 uses
  %min.iters.check848 = icmp ult i32 %i.ai, 5
  br i1 %min.iters.check848, label %.preheader594.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader594.lr.ph
  %i.akc = getelementptr nuw i8, ptr %i.akb, i64 8
  %i.akd = mul nuw nsw i64 %i.fm, 24              ; 2 uses
  %i.ake = getelementptr i8, ptr %i.akb, i64 %i.akd
  %i.akf = getelementptr i8, ptr %i.fo, i64 8
  %i.akg = getelementptr i8, ptr %i.fo, i64 %i.akd
  %bound0 = icmp ult ptr %i.akc, %i.akg
  %bound1 = icmp ult ptr %i.akf, %i.ake
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader594.preheader, label %vector.ph849

vector.ph849:                                     ; preds = %vector.memcheck
  %i.akh = and i64 %i.fm, 3                       ; 2 uses
  %i.aki = icmp eq i64 %i.akh, 0
  %i.akj = select i1 %i.aki, i64 4, i64 %i.akh
  %n.vec850 = sub nsw i64 %i.fm, %i.akj           ; 2 uses
  br label %vector.body851

vector.body851:                                   ; preds = %vector.body851, %vector.ph849
  %index852 = phi i64 [ 0, %vector.ph849 ], [ %index.next861, %vector.body851 ]
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph849 ], [ %vec.ind.next, %vector.body851 ] ; 2 uses
  %i.akk = mul nuw nsw <4 x i64> %vec.ind, splat (i64 6) ; 4 uses
  %i.akl = add nuw nsw <4 x i64> %i.akk, splat (i64 2) ; 2 uses
  %i.akm = extractelement <4 x i64> %i.akl, i64 0
  %i.akn = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.akm
  %wide.vec853 = load <24 x float>, ptr %i.akn, align 8, !tbaa !12, !alias.scope !257 ; 4 uses
  %strided.vec854 = shufflevector <24 x float> %wide.vec853, <24 x float> poison, <4 x i32> <i32 0, i32 6, i32 12, i32 18>
  %strided.vec855 = shufflevector <24 x float> %wide.vec853, <24 x float> poison, <4 x i32> <i32 1, i32 7, i32 13, i32 19>
  %strided.vec856 = shufflevector <24 x float> %wide.vec853, <24 x float> poison, <4 x i32> <i32 2, i32 8, i32 14, i32 20>
  %strided.vec857 = shufflevector <24 x float> %wide.vec853, <24 x float> poison, <4 x i32> <i32 3, i32 9, i32 15, i32 21>
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %i.akb, <4 x i64> %i.akl
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec854, <4 x ptr> align 4 %wide.gep, <4 x i1> splat (i1 true)), !tbaa !12, !alias.scope !258, !noalias !257
  %i.ako = add nuw nsw <4 x i64> %i.akk, splat (i64 3)
  %wide.gep858 = getelementptr inbounds nuw [4 x i8], ptr %i.akb, <4 x i64> %i.ako
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec855, <4 x ptr> align 4 %wide.gep858, <4 x i1> splat (i1 true)), !tbaa !12, !alias.scope !258, !noalias !257
  %i.akp = add nuw nsw <4 x i64> %i.akk, splat (i64 4)
  %wide.gep859 = getelementptr inbounds nuw [4 x i8], ptr %i.akb, <4 x i64> %i.akp
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec856, <4 x ptr> align 4 %wide.gep859, <4 x i1> splat (i1 true)), !tbaa !12, !alias.scope !258, !noalias !257
  %i.akq = add nuw nsw <4 x i64> %i.akk, splat (i64 5)
  %wide.gep860 = getelementptr inbounds nuw [4 x i8], ptr %i.akb, <4 x i64> %i.akq
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec857, <4 x ptr> align 4 %wide.gep860, <4 x i1> splat (i1 true)), !tbaa !12, !alias.scope !258, !noalias !257
  %index.next861 = add nuw i64 %index852, 4       ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.akr = icmp eq i64 %index.next861, %n.vec850
  br i1 %i.akr, label %.preheader594.preheader, label %vector.body851, !llvm.loop !252

.preheader594.preheader:                          ; preds = %vector.body851, %vector.memcheck, %.preheader594.lr.ph
  %indvars.iv655.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader594.lr.ph ], [ %n.vec850, %vector.body851 ] ; 5 uses
  %i.aks = sub nsw i64 %i.fm, %indvars.iv655.ph
  %xtraiter932 = and i64 %i.aks, 1
  %lcmp.mod933.not = icmp eq i64 %xtraiter932, 0
  br i1 %lcmp.mod933.not, label %.preheader594.prol.loopexit, label %.preheader594.prol

.preheader594.prol:                               ; preds = %.preheader594.preheader
  %i.akt = mul nuw nsw i64 %indvars.iv655.ph, 6   ; 4 uses
  %i.aku = add nuw nsw i64 %i.akt, 2              ; 2 uses
  %i.akv = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.aku
  %i.akw = load float, ptr %i.akv, align 8, !tbaa !12
  %i.akx = getelementptr inbounds nuw [4 x i8], ptr %i.akb, i64 %i.aku
  store float %i.akw, ptr %i.akx, align 4, !tbaa !12
  %i.aky = add nuw nsw i64 %i.akt, 3              ; 2 uses
  %i.akz = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.aky
  %i.ala = load float, ptr %i.akz, align 4, !tbaa !12
  %i.alb = getelementptr inbounds nuw [4 x i8], ptr %i.akb, i64 %i.aky
  store float %i.ala, ptr %i.alb, align 4, !tbaa !12
  %i.alc = add nuw nsw i64 %i.akt, 4              ; 2 uses
  %i.ald = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.alc
  %i.ale = load float, ptr %i.ald, align 8, !tbaa !12
  %i.alf = getelementptr inbounds nuw [4 x i8], ptr %i.akb, i64 %i.alc
  store float %i.ale, ptr %i.alf, align 4, !tbaa !12
  %i.alg = add nuw nsw i64 %i.akt, 5              ; 2 uses
  %i.alh = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.alg
  %i.ali = load float, ptr %i.alh, align 4, !tbaa !12
  %i.alj = getelementptr inbounds nuw [4 x i8], ptr %i.akb, i64 %i.alg
  store float %i.ali, ptr %i.alj, align 4, !tbaa !12
  %indvars.iv.next656.prol = add nuw nsw i64 %indvars.iv655.ph, 1
  br label %.preheader594.prol.loopexit

.preheader594.prol.loopexit:                      ; preds = %.preheader594.prol, %.preheader594.preheader
  %indvars.iv655.unr = phi i64 [ %indvars.iv655.ph, %.preheader594.preheader ], [ %indvars.iv.next656.prol, %.preheader594.prol ]
  %i.alk = add nsw i64 %i.fm, -1
  %i.all = icmp eq i64 %indvars.iv655.ph, %i.alk
  br i1 %i.all, label %.preheader, label %.preheader594

.preheader594:                                    ; preds = %.preheader594.prol.loopexit, %.preheader594
  %indvars.iv655 = phi i64 [ %indvars.iv.next656.1, %.preheader594 ], [ %indvars.iv655.unr, %.preheader594.prol.loopexit ] ; 3 uses
  %i.alm = mul nuw nsw i64 %indvars.iv655, 6      ; 4 uses
  %i.aln = add nuw nsw i64 %i.alm, 2              ; 2 uses
  %i.alo = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.aln
  %i.alp = load float, ptr %i.alo, align 8, !tbaa !12
  %i.alq = getelementptr inbounds nuw [4 x i8], ptr %i.akb, i64 %i.aln
  store float %i.alp, ptr %i.alq, align 4, !tbaa !12
  %i.alr = add nuw nsw i64 %i.alm, 3              ; 2 uses
  %i.als = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.alr
  %i.alt = load float, ptr %i.als, align 4, !tbaa !12
  %i.alu = getelementptr inbounds nuw [4 x i8], ptr %i.akb, i64 %i.alr
  store float %i.alt, ptr %i.alu, align 4, !tbaa !12
  %i.alv = add nuw nsw i64 %i.alm, 4              ; 2 uses
  %i.alw = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.alv
  %i.alx = load float, ptr %i.alw, align 8, !tbaa !12
  %i.aly = getelementptr inbounds nuw [4 x i8], ptr %i.akb, i64 %i.alv
  store float %i.alx, ptr %i.aly, align 4, !tbaa !12
  %i.alz = add nuw nsw i64 %i.alm, 5              ; 2 uses
  %i.ama = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.alz
  %i.amb = load float, ptr %i.ama, align 4, !tbaa !12
  %i.amc = getelementptr inbounds nuw [4 x i8], ptr %i.akb, i64 %i.alz
  store float %i.amb, ptr %i.amc, align 4, !tbaa !12
  %i.amd = mul nuw i64 %indvars.iv655, 6          ; 4 uses
  %i.ame = add nuw i64 %i.amd, 8                  ; 2 uses
  %i.amf = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.ame
  %i.amg = load float, ptr %i.amf, align 8, !tbaa !12
  %i.amh = getelementptr inbounds nuw [4 x i8], ptr %i.akb, i64 %i.ame
  store float %i.amg, ptr %i.amh, align 4, !tbaa !12
  %i.ami = add nuw i64 %i.amd, 9                  ; 2 uses
  %i.amj = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.ami
  %i.amk = load float, ptr %i.amj, align 4, !tbaa !12
  %i.aml = getelementptr inbounds nuw [4 x i8], ptr %i.akb, i64 %i.ami
  store float %i.amk, ptr %i.aml, align 4, !tbaa !12
  %i.amm = add nuw i64 %i.amd, 10                 ; 2 uses
  %i.amn = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.amm
  %i.amo = load float, ptr %i.amn, align 8, !tbaa !12
  %i.amp = getelementptr inbounds nuw [4 x i8], ptr %i.akb, i64 %i.amm
  store float %i.amo, ptr %i.amp, align 4, !tbaa !12
  %i.amq = add nuw i64 %i.amd, 11                 ; 2 uses
  %i.amr = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.amq
  %i.ams = load float, ptr %i.amr, align 4, !tbaa !12
  %i.amt = getelementptr inbounds nuw [4 x i8], ptr %i.akb, i64 %i.amq
  store float %i.ams, ptr %i.amt, align 4, !tbaa !12
  %indvars.iv.next656.1 = add nuw nsw i64 %indvars.iv655, 2 ; 2 uses
  %exitcond659.not.1 = icmp eq i64 %indvars.iv.next656.1, %i.fm
  br i1 %exitcond659.not.1, label %.preheader, label %.preheader594, !llvm.loop !253

.preheader:                                       ; preds = %.preheader594.prol.loopexit, %.preheader594, %.preheader595
  %i.amu = icmp sgt i32 %.0369, 0
  br i1 %i.amu, label %.lr.ph625, label %.loopexit

.lr.ph625:                                        ; preds = %.preheader
  %.val464 = load ptr, ptr %i.az, align 8, !tbaa !176
  %i.amv = mul nuw nsw i32 %i.ai, 3
  %i.amw = mul i32 %i.ai, 6                       ; 2 uses
  %i.amx = zext i32 %i.amw to i64
  %i.amy = or disjoint i32 %i.amw, 1
  %i.amz = zext i32 %i.amy to i64                 ; 2 uses
  %wide.trip.count663 = zext nneg i32 %.0369 to i64
  br label %bb.fb

bb.fb:                                            ; preds = %.lr.ph625, %bb.fl
  %indvars.iv660 = phi i64 [ 0, %.lr.ph625 ], [ %indvars.iv.next661, %bb.fl ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv660, 3
  %i.ana = getelementptr inbounds nuw i8, ptr %.val464, i64 %.idx ; 2 uses
  %i.anb = load float, ptr %i.ana, align 4, !tbaa !12
  %i.anc = fptosi float %i.anb to i32             ; 3 uses
  %i.and = getelementptr inbounds nuw i8, ptr %i.ana, i64 4
  %i.ane = load float, ptr %i.and, align 4, !tbaa !12
  %i.anf = fptosi float %i.ane to i32             ; 5 uses
  %.not411 = icmp sgt i32 %i.anc, %i.anf
  br i1 %.not411, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.ang = load ptr, ptr %7, align 8, !tbaa !128
  %i.anh = shl nsw i32 %i.anc, 1
  %i.ani = sext i32 %i.anh to i64
  %i.anj = getelementptr inbounds [4 x i8], ptr %i.ang, i64 %i.ani ; 2 uses
  store float f0xFF7FFFFF, ptr %i.anj, align 4, !tbaa !12
  %i.ank = sitofp reassoc nsz arcp contract afn i32 %i.anf to float
  br label %bb.fl

bb.fd:                                            ; preds = %bb.fb
  %i.anl = icmp slt i32 %i.amv, %i.anf
  %.pre681 = load ptr, ptr %7, align 8, !tbaa !128 ; 4 uses
  br i1 %i.anl, label %bb.fe, label %bb.fk

bb.fe:                                            ; preds = %bb.fd
  %i.anm = getelementptr inbounds nuw [4 x i8], ptr %.pre681, i64 %i.amx ; 2 uses
  %i.ann = load float, ptr %i.anm, align 4, !tbaa !12
  %i.ano = fcmp reassoc nsz arcp contract afn oeq float %i.ann, f0xFF7FFFFF
  br i1 %i.ano, label %bb.ff, label %bb.fi

bb.ff:                                            ; preds = %bb.fe
  %i.anp = getelementptr inbounds nuw [4 x i8], ptr %.pre681, i64 %i.amz ; 3 uses
  %i.anq = load float, ptr %i.anp, align 4, !tbaa !12 ; 3 uses
  %i.anr = fcmp reassoc nsz arcp contract afn oeq float %i.anq, f0xFF7FFFFF
  %i.ans = uitofp nneg i32 %i.anf to float        ; 3 uses
  br i1 %i.anr, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  store float %i.ans, ptr %i.anp, align 4, !tbaa !12
  br label %bb.fj

bb.fh:                                            ; preds = %bb.ff
  %i.ant = fcmp reassoc nsz arcp contract afn ogt float %i.anq, %i.ans
  %.434 = select reassoc nsz arcp contract afn i1 %i.ant, float %i.anq, float %i.ans
  store float %.434, ptr %i.anp, align 4, !tbaa !12
  br label %bb.fj

bb.fi:                                            ; preds = %bb.fe
  %i.anu = uitofp nneg i32 %i.anf to float
  %i.anv = getelementptr inbounds nuw [4 x i8], ptr %.pre681, i64 %i.amz
  store float %i.anu, ptr %i.anv, align 4, !tbaa !12
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fh, %bb.fi, %bb.fg
  store float f0xFF7FFFFF, ptr %i.anm, align 4, !tbaa !12
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fd
  %i.anw = shl nsw i32 %i.anc, 1
  %i.anx = sext i32 %i.anw to i64
  %i.any = getelementptr inbounds [4 x i8], ptr %.pre681, i64 %i.anx ; 2 uses
  store float f0xFF7FFFFF, ptr %i.any, align 4, !tbaa !12
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fc
  %.sink794 = phi ptr [ %i.any, %bb.fk ], [ %i.anj, %bb.fc ]
  %.sink = phi float [ f0xFF7FFFFF, %bb.fk ], [ %i.ank, %bb.fc ]
  %i.anz = getelementptr i8, ptr %.sink794, i64 4
  store float %.sink, ptr %i.anz, align 4, !tbaa !12
  %indvars.iv.next661 = add nuw nsw i64 %indvars.iv660, 1 ; 2 uses
  %exitcond664.not = icmp eq i64 %indvars.iv.next661, %wide.trip.count663
  br i1 %exitcond664.not, label %.loopexit, label %bb.fb

.loopexit:                                        ; preds = %bb.fl, %.preheader, %bb.fa
  %i.aoa = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !124 ; 2 uses
  %i.aob = and i32 %i.aoa, 4112
  %or.cond435.not = icmp eq i32 %i.aob, 4112
  br i1 %or.cond435.not, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %.loopexit
  %i.aoc = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.aod = call i32 @gettimeofday(ptr noundef nonnull %10, ptr noundef null) #25 ; 0 uses
  %i.aoe = load i64, ptr %10, align 8, !tbaa !126
  %i.aof = add nsw i64 %i.aoe, -1290608000
  %i.aog = sitofp reassoc nsz arcp contract afn i64 %i.aof to double
  %i.aoh = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.aoi = load i64, ptr %i.aoh, align 8, !tbaa !127
  %i.aoj = sitofp reassoc nsz arcp contract afn i64 %i.aoi to double
  %i.aok = fmul reassoc nnan nsz arcp contract afn double %i.aoj, f0x3EB0C6F7A0B5ED8D
  %i.aol = fadd reassoc nsz arcp contract afn double %i.aok, %i.aog
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.aom = fsub reassoc nsz arcp contract afn double %i.aol, %.3
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.24, ptr noundef nonnull %i.aoc, double noundef %i.aom) #25
  %.pre682 = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !124
  br label %bb.fn

bb.fn:                                            ; preds = %.loopexit, %bb.fm
  %i.aon = phi i32 [ %i.aoa, %.loopexit ], [ %.pre682, %bb.fm ]
  %i.aoo = and i32 %i.aon, 4096
  %.not.i558 = icmp eq i32 %i.aoo, 0
  %.pre684 = load ptr, ptr %i.az, align 8, !tbaa !176 ; 2 uses
  br i1 %.not.i558, label %dt_masks_dynbuf_free.exit559, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.aop = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.29, ptr noundef nonnull %i.aop, ptr noundef %.pre684) #25
  %.pre683 = load ptr, ptr %i.az, align 8, !tbaa !176
  br label %dt_masks_dynbuf_free.exit559

dt_masks_dynbuf_free.exit559:                     ; preds = %bb.fn, %bb.fo
  %i.aoq = phi ptr [ %.pre684, %bb.fn ], [ %.pre683, %bb.fo ]
  call void @free(ptr noundef %i.aoq) #25
  call void @free(ptr noundef nonnull %i.az) #25
  %i.aor = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !124
  %i.aos = and i32 %i.aor, 4096
  %.not.i560 = icmp eq i32 %i.aos, 0
  br i1 %.not.i560, label %dt_masks_intbuf_free.exit561, label %bb.fp

bb.fp:                                            ; preds = %dt_masks_dynbuf_free.exit559
  %i.aot = load ptr, ptr %i.ba, align 8, !tbaa !178
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.33, ptr noundef nonnull %i.bb, ptr noundef %i.aot) #25
  br label %dt_masks_intbuf_free.exit561

dt_masks_intbuf_free.exit561:                     ; preds = %dt_masks_dynbuf_free.exit559, %bb.fp
  %i.aou = load ptr, ptr %i.ba, align 8, !tbaa !178
  call void @free(ptr noundef %i.aou) #25
  call void @free(ptr noundef nonnull %i.ba) #25
  call void @free(ptr noundef %i.fo) #25
  br label %.critedge438

bb.fq:                                            ; preds = %bb.ex, %bb.ev, %.thread586
  %i.aov = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !124
  %i.aow = and i32 %i.aov, 4096
  %.not.i562 = icmp eq i32 %i.aow, 0
  br i1 %.not.i562, label %dt_masks_dynbuf_free.exit563, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.aox = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.aoy = load ptr, ptr %i.az, align 8, !tbaa !176
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.29, ptr noundef nonnull %i.aox, ptr noundef %i.aoy) #25
  br label %dt_masks_dynbuf_free.exit563

dt_masks_dynbuf_free.exit563:                     ; preds = %bb.fq, %bb.fr
  %i.aoz = load ptr, ptr %i.az, align 8, !tbaa !176
  call void @free(ptr noundef %i.aoz) #25
  call void @free(ptr noundef nonnull %i.az) #25
  %i.apa = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !124
  %i.apb = and i32 %i.apa, 4096
  %.not.i564 = icmp eq i32 %i.apb, 0
  br i1 %.not.i564, label %dt_masks_intbuf_free.exit565, label %bb.fs

bb.fs:                                            ; preds = %dt_masks_dynbuf_free.exit563
  %i.apc = load ptr, ptr %i.ba, align 8, !tbaa !178
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.33, ptr noundef nonnull %i.bb, ptr noundef %i.apc) #25
  br label %dt_masks_intbuf_free.exit565

dt_masks_intbuf_free.exit565:                     ; preds = %dt_masks_dynbuf_free.exit563, %bb.fs
  %i.apd = load ptr, ptr %i.ba, align 8, !tbaa !178
  call void @free(ptr noundef %i.apd) #25
  call void @free(ptr noundef nonnull %i.ba) #25
  call void @free(ptr noundef %i.fo) #25
  %i.ape = load ptr, ptr %5, align 8, !tbaa !128
  call void @free(ptr noundef %i.ape) #25
  store ptr null, ptr %5, align 8, !tbaa !128
  store i32 0, ptr %6, align 4, !tbaa !28
  br i1 %i.aj, label %.critedge437, label %.critedge438

.critedge437:                                     ; preds = %dt_masks_intbuf_free.exit565
  %i.apf = load ptr, ptr %7, align 8, !tbaa !128
  call void @free(ptr noundef %i.apf) #25
  store ptr null, ptr %7, align 8, !tbaa !128
  store i32 0, ptr %8, align 4, !tbaa !28
  br label %.critedge438

.critedge438:                                     ; preds = %.critedge.thread, %dt_masks_intbuf_free.exit557, %dt_masks_intbuf_free.exit561, %dt_masks_intbuf_free.exit565, %.critedge437, %bb.v, %dt_masks_intbuf_free.exit, %.critedge, %dt_masks_dynbuf_free.exit
  %.1 = phi i32 [ 0, %bb.v ], [ 0, %dt_masks_dynbuf_free.exit ], [ 0, %.critedge ], [ 0, %dt_masks_intbuf_free.exit ], [ 1, %dt_masks_intbuf_free.exit561 ], [ 1, %dt_masks_intbuf_free.exit557 ], [ 0, %dt_masks_intbuf_free.exit565 ], [ 0, %.critedge437 ], [ 0, %.critedge.thread ]
  ret i32 %.1
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc noundef ptr @dt_masks_dynbuf_init(i64 noundef range(i64 0, 4294967296) %0, ptr noundef %1) unnamed_addr #12 {
bb.a:
end_hunk_2
begin_hunk_3_@_optimize_intersection_points:bb.a
  %i.bw = getelementptr inbounds [4 x i8], ptr %0, i64 %.pre-phi101 ; 2 uses
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !12
  %i.by = getelementptr i8, ptr %i.bw, i64 4
  %i.bz = load float, ptr %i.by, align 4, !tbaa !12
  %i.ca = fsub reassoc nsz arcp contract afn float %i.bt, %i.bx ; 2 uses
  %i.cb = fmul reassoc nsz arcp contract afn float %i.ca, %i.ca
  %i.cc = fsub reassoc nsz arcp contract afn float %i.bv, %i.bz ; 2 uses
  %i.cd = fmul reassoc nsz arcp contract afn float %i.cc, %i.cc
  %i.ce = fadd reassoc nsz arcp contract afn float %i.cd, %i.cb ; 2 uses
  %reass.sub104 = sub i32 %i.br, %1
  %i.cf = insertelement <2 x i32> <i32 poison, i32 1>, i32 %i.br, i64 0
  %i.cg = insertelement <2 x i32> %i.k, i32 %reass.sub104, i64 1
  %i.ch = add <2 x i32> %i.cf, %i.cg
  %i.ci = srem <2 x i32> %i.ch, %i.m              ; 2 uses
  %i.cj = extractelement <2 x i32> %i.ci, i64 0
  %i.ck = add nsw i32 %i.cj, %1                   ; 2 uses
  %i.cl = extractelement <2 x i32> %i.ci, i64 1
  %i.cm = add nsw i32 %i.cl, %1                   ; 2 uses
  %i.cn = shl nsw i32 %i.ck, 1
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %0, i64 %i.co ; 2 uses
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !12
  %i.cr = getelementptr i8, ptr %i.cp, i64 4
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !12
  %i.ct = fsub reassoc nsz arcp contract afn float %i.cq, %i.bt ; 2 uses
  %i.cu = fmul reassoc nsz arcp contract afn float %i.ct, %i.ct
  %i.cv = fsub reassoc nsz arcp contract afn float %i.cs, %i.bv ; 2 uses
  %i.cw = fmul reassoc nsz arcp contract afn float %i.cv, %i.cv
  %i.cx = fadd reassoc nsz arcp contract afn float %i.cw, %i.cu ; 2 uses
  %i.cy = fcmp reassoc nsz arcp contract afn olt float %i.cx, %i.ce ; 2 uses
  %spec.select.i71 = select nsz i1 %i.cy, float %i.cx, float %i.ce
  %spec.select33.i72 = select i1 %i.cy, i32 %i.ck, i32 %i.br
  %i.cz = shl nsw i32 %i.cm, 1
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [4 x i8], ptr %0, i64 %i.da ; 2 uses
  %i.dc = load float, ptr %i.db, align 4, !tbaa !12
  %i.dd = getelementptr i8, ptr %i.db, i64 4
  %i.de = load float, ptr %i.dd, align 4, !tbaa !12
  %i.df = fsub reassoc nsz arcp contract afn float %i.dc, %i.bt ; 2 uses
  %i.dg = fmul reassoc nsz arcp contract afn float %i.df, %i.df
  %i.dh = fsub reassoc nsz arcp contract afn float %i.de, %i.bv ; 2 uses
  %i.di = fmul reassoc nsz arcp contract afn float %i.dh, %i.dh
  %i.dj = fadd reassoc nsz arcp contract afn float %i.di, %i.dg
  %i.dk = fcmp reassoc nsz arcp contract afn olt float %i.dj, %spec.select.i71
  %spec.select33.1.i73 = select i1 %i.dk, i32 %i.cm, i32 %spec.select33.i72 ; 2 uses
  %i.dl = icmp sge i32 %i.br, %2
  %i.dm = icmp slt i32 %spec.select33.1.i73, %2
  %.not63 = xor i1 %i.dl, %i.dm
  %spec.select66 = select i1 %.not63, i32 %spec.select33.1.i73, i32 %i.br ; 5 uses
  %.not.i74 = icmp slt i32 %spec.select66, %2
  %i.dn = select i1 %.not.i74, i32 %i.a, i32 0
  %i.do = add nsw i32 %i.dn, %spec.select66       ; 2 uses
  %i.dp = icmp slt i32 %i.do, %8
  %i.dq = icmp sgt i32 %i.do, %9
  %or.cond67 = or i1 %i.dp, %i.dq
  %.not64 = icmp eq i32 %spec.select66, %i.br
  %or.cond82 = or i1 %.not64, %or.cond67
  br i1 %or.cond82, label %.thread78, label %bb.d

bb.d:                                             ; preds = %.thread
  store i32 %spec.select66, ptr %5, align 4, !tbaa !28
  %.old84 = icmp samesign ult i32 %.05983, 19
  br i1 %.old84, label %..backedge_crit_edge, label %.loopexit

..backedge_crit_edge:                             ; preds = %bb.d
  %.pre.pre = load i32, ptr %4, align 4, !tbaa !28
  br label %.backedge

.backedge:                                        ; preds = %..backedge_crit_edge, %.thread78
  %.pre = phi i32 [ %.pre.pre, %..backedge_crit_edge ], [ %.pre92, %.thread78 ]
  %i.dr = phi i32 [ %spec.select66, %..backedge_crit_edge ], [ %i.br, %.thread78 ]
  %.05983.be = add nuw nsw i32 %.05983, 1
  br label %bb.b

.thread78:                                        ; preds = %.thread
  %i.ds = icmp samesign ult i32 %.05983, 19
  %or.cond85 = select i1 %or.cond81.not87, i1 %i.ds, i1 false
  br i1 %or.cond85, label %.backedge, label %.loopexit

.loopexit:                                        ; preds = %bb.d, %.thread78, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #10

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_get_area(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6, i32 noundef range(i32 0, 2) %7) unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store ptr null, ptr %i.b, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !129
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.h = load i32, ptr %i.g, align 16, !tbaa !57
  %i.i = sitofp reassoc nsz arcp contract afn i32 %i.h to double
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !135
  %i.l = call fastcc i32 @_path_get_pts_border(ptr noundef %i.f, ptr noundef %2, double noundef %i.i, i32 noundef 3, ptr noundef %i.k, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, i32 noundef %7)
  %.not13 = icmp eq i32 %i.l, 0
  br i1 %.not13, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !128
  call void @free(ptr noundef %i.m) #25
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !128
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %2, align 8, !tbaa !22
  %i.p = call i32 @g_list_length(ptr noundef %i.o) #25
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !128  ; 6 uses
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !128  ; 2 uses
  %i.s = load i32, ptr %i.c, align 4, !tbaa !28   ; 2 uses
  %i.t = load i32, ptr %i.d, align 4, !tbaa !28   ; 2 uses
  %i.u = mul nsw i32 %i.p, 3                      ; 4 uses
  %i.v = icmp slt i32 %i.u, %i.t
  br i1 %i.v, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.h
  %.06590.i.i = phi i32 [ %i.ao, %bb.h ], [ %i.u, %bb.d ] ; 2 uses
  %i.w = phi <2 x float> [ %i.am, %bb.h ], [ splat (float f0x00800000), %bb.d ] ; 4 uses
  %i.x = phi <2 x float> [ %i.an, %bb.h ], [ splat (float f0x7F7FFFFF), %bb.d ] ; 4 uses
  %i.y = shl nsw i32 %.06590.i.i, 1
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.z
  %i.ab = load <2 x float>, ptr %i.aa, align 4, !tbaa !12 ; 6 uses
  %i.ac = extractelement <2 x float> %i.ab, i64 0
  %i.ad = fcmp reassoc nsz arcp contract afn oeq float %i.ac, f0xFF7FFFFF
  br i1 %i.ad, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ae = extractelement <2 x float> %i.ab, i64 1 ; 2 uses
  %i.af = fcmp reassoc nsz arcp contract afn oeq float %i.ae, f0xFF7FFFFF
  br i1 %i.af, label %._crit_edge.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = fadd reassoc nsz arcp contract afn float %i.ae, -1.000000e+00
  %i.ah = fptosi float %i.ag to i32
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ai = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ab, %i.w
  %i.aj = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ab, %i.x
  %i.ak = select <2 x i1> %i.aj, <2 x float> %i.ab, <2 x float> %i.x
  %i.al = select <2 x i1> %i.ai, <2 x float> %i.ab, <2 x float> %i.w
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.166.ph.i.i = phi i32 [ %i.ah, %bb.f ], [ %.06590.i.i, %bb.g ]
  %i.am = phi <2 x float> [ %i.w, %bb.f ], [ %i.al, %bb.g ] ; 2 uses
  %i.an = phi <2 x float> [ %i.x, %bb.f ], [ %i.ak, %bb.g ] ; 2 uses
  %i.ao = add nsw i32 %.166.ph.i.i, 1             ; 2 uses
  %i.ap = icmp slt i32 %i.ao, %i.t
  br i1 %i.ap, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.h, %bb.e, %bb.d
  %i.aq = phi <2 x float> [ splat (float f0x00800000), %bb.d ], [ %i.w, %bb.e ], [ %i.am, %bb.h ] ; 3 uses
  %i.ar = phi <2 x float> [ splat (float f0x7F7FFFFF), %bb.d ], [ %i.x, %bb.e ], [ %i.an, %bb.h ] ; 3 uses
  %i.as = icmp slt i32 %i.u, %i.s
  br i1 %i.as, label %.lr.ph107.preheader.i.i, label %_path_bounding_box.exit

.lr.ph107.preheader.i.i:                          ; preds = %._crit_edge.i.i
  %i.at = sext i32 %i.u to i64                    ; 4 uses
  %wide.trip.count.i.i = sext i32 %i.s to i64     ; 3 uses
  %i.au = sub nsw i64 %wide.trip.count.i.i, %i.at
  %xtraiter = and i64 %i.au, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph107.i.i.prol.loopexit, label %.lr.ph107.i.i.prol

.lr.ph107.i.i.prol:                               ; preds = %.lr.ph107.preheader.i.i, %.lr.ph107.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph107.i.i.prol ], [ %i.at, %.lr.ph107.preheader.i.i ] ; 2 uses
  %i.av = phi <2 x float> [ %i.ba, %.lr.ph107.i.i.prol ], [ %i.ar, %.lr.ph107.preheader.i.i ] ; 2 uses
  %i.aw = phi <2 x float> [ %i.bc, %.lr.ph107.i.i.prol ], [ %i.aq, %.lr.ph107.preheader.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph107.i.i.prol ], [ 0, %.lr.ph107.preheader.i.i ]
  %.idx.i.i.prol = shl nsw i64 %indvars.iv.i.i.prol, 3
  %i.ax = getelementptr inbounds i8, ptr %i.q, i64 %.idx.i.i.prol
  %i.ay = load <2 x float>, ptr %i.ax, align 4, !tbaa !12 ; 4 uses
  %i.az = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ay, %i.av
  %i.ba = select <2 x i1> %i.az, <2 x float> %i.ay, <2 x float> %i.av ; 3 uses
  %i.bb = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ay, %i.aw
  %i.bc = select <2 x i1> %i.bb, <2 x float> %i.ay, <2 x float> %i.aw ; 3 uses
  %indvars.iv.next.i.i.prol = add nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph107.i.i.prol.loopexit, label %.lr.ph107.i.i.prol, !llvm.loop !259

.lr.ph107.i.i.prol.loopexit:                      ; preds = %.lr.ph107.i.i.prol, %.lr.ph107.preheader.i.i
  %.lcssa35.unr = phi <2 x float> [ poison, %.lr.ph107.preheader.i.i ], [ %i.ba, %.lr.ph107.i.i.prol ]
  %.lcssa.unr = phi <2 x float> [ poison, %.lr.ph107.preheader.i.i ], [ %i.bc, %.lr.ph107.i.i.prol ]
  %indvars.iv.i.i.unr = phi i64 [ %i.at, %.lr.ph107.preheader.i.i ], [ %indvars.iv.next.i.i.prol, %.lr.ph107.i.i.prol ]
  %.unr = phi <2 x float> [ %i.ar, %.lr.ph107.preheader.i.i ], [ %i.ba, %.lr.ph107.i.i.prol ]
  %.unr37 = phi <2 x float> [ %i.aq, %.lr.ph107.preheader.i.i ], [ %i.bc, %.lr.ph107.i.i.prol ]
  %i.bd = sub nsw i64 %i.at, %wide.trip.count.i.i
  %i.be = icmp ugt i64 %i.bd, -4
  br i1 %i.be, label %_path_bounding_box.exit, label %.lr.ph107.i.i

.lr.ph107.i.i:                                    ; preds = %.lr.ph107.i.i.prol.loopexit, %.lr.ph107.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph107.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph107.i.i.prol.loopexit ] ; 5 uses
  %i.bf = phi <2 x float> [ %i.cf, %.lr.ph107.i.i ], [ %.unr, %.lr.ph107.i.i.prol.loopexit ] ; 2 uses
  %i.bg = phi <2 x float> [ %i.ch, %.lr.ph107.i.i ], [ %.unr37, %.lr.ph107.i.i.prol.loopexit ] ; 2 uses
  %.idx.i.i = shl nsw i64 %indvars.iv.i.i, 3
  %i.bh = getelementptr inbounds i8, ptr %i.q, i64 %.idx.i.i
  %i.bi = load <2 x float>, ptr %i.bh, align 4, !tbaa !12 ; 4 uses
  %i.bj = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.bi, %i.bf
  %i.bk = select <2 x i1> %i.bj, <2 x float> %i.bi, <2 x float> %i.bf ; 2 uses
  %i.bl = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.bi, %i.bg
  %i.bm = select <2 x i1> %i.bl, <2 x float> %i.bi, <2 x float> %i.bg ; 2 uses
  %indvars.iv.next.i.i = shl i64 %indvars.iv.i.i, 3
  %i.bn = getelementptr i8, ptr %i.q, i64 %indvars.iv.next.i.i
  %i.bo = getelementptr i8, ptr %i.bn, i64 8
  %i.bp = load <2 x float>, ptr %i.bo, align 4, !tbaa !12 ; 4 uses
  %i.bq = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.bp, %i.bk
  %i.br = select <2 x i1> %i.bq, <2 x float> %i.bp, <2 x float> %i.bk ; 2 uses
  %i.bs = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.bp, %i.bm
  %i.bt = select <2 x i1> %i.bs, <2 x float> %i.bp, <2 x float> %i.bm ; 2 uses
  %indvars.iv.next.i.i.1 = shl i64 %indvars.iv.i.i, 3
  %i.bu = getelementptr i8, ptr %i.q, i64 %indvars.iv.next.i.i.1
  %i.bv = getelementptr i8, ptr %i.bu, i64 16
  %i.bw = load <2 x float>, ptr %i.bv, align 4, !tbaa !12 ; 4 uses
  %i.bx = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.bw, %i.br
  %i.by = select <2 x i1> %i.bx, <2 x float> %i.bw, <2 x float> %i.br ; 2 uses
  %i.bz = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.bw, %i.bt
  %i.ca = select <2 x i1> %i.bz, <2 x float> %i.bw, <2 x float> %i.bt ; 2 uses
  %indvars.iv.next.i.i.2 = shl i64 %indvars.iv.i.i, 3
  %i.cb = getelementptr i8, ptr %i.q, i64 %indvars.iv.next.i.i.2
  %i.cc = getelementptr i8, ptr %i.cb, i64 24
  %i.cd = load <2 x float>, ptr %i.cc, align 4, !tbaa !12 ; 4 uses
  %i.ce = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.cd, %i.by
  %i.cf = select <2 x i1> %i.ce, <2 x float> %i.cd, <2 x float> %i.by ; 2 uses
  %i.cg = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.cd, %i.ca
  %i.ch = select <2 x i1> %i.cg, <2 x float> %i.cd, <2 x float> %i.ca ; 2 uses
  %indvars.iv.next.i.i.3 = add nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %_path_bounding_box.exit, label %.lr.ph107.i.i

_path_bounding_box.exit:                          ; preds = %.lr.ph107.i.i.prol.loopexit, %.lr.ph107.i.i, %._crit_edge.i.i
  %i.ci = phi <2 x float> [ %i.ar, %._crit_edge.i.i ], [ %.lcssa35.unr, %.lr.ph107.i.i.prol.loopexit ], [ %i.cf, %.lr.ph107.i.i ] ; 3 uses
  %i.cj = phi <2 x float> [ %i.aq, %._crit_edge.i.i ], [ %.lcssa.unr, %.lr.ph107.i.i.prol.loopexit ], [ %i.ch, %.lr.ph107.i.i ]
  %i.ck = insertelement <2 x float> %i.ci, float 0.000000e+00, i64 0
  %i.cl = fadd reassoc nsz arcp contract afn <2 x float> %i.cj, splat (float 4.000000e+00)
  %i.cm = fsub reassoc nsz arcp contract afn <2 x float> %i.cl, %i.ck ; 2 uses
  %i.cn = extractelement <2 x float> %i.cm, i64 1
  %i.co = fptosi float %i.cn to i32
  store i32 %i.co, ptr %4, align 4, !tbaa !28
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <2 x float> %i.cm, %i.ci
  %i.cp = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cq = fptosi float %i.cp to i32
  store i32 %i.cq, ptr %3, align 4, !tbaa !28
  %i.cr = fadd reassoc nsz arcp contract afn <2 x float> %i.ci, splat (float -2.000000e+00)
  %i.cs = fptosi <2 x float> %i.cr to <2 x i32>   ; 2 uses
  %i.ct = extractelement <2 x i32> %i.cs, i64 0
  store i32 %i.ct, ptr %5, align 4, !tbaa !28
  %i.cu = extractelement <2 x i32> %i.cs, i64 1
  store i32 %i.cu, ptr %6, align 4, !tbaa !28
  call void @free(ptr noundef %i.q) #25
  br label %bb.i

bb.i:                                             ; preds = %_path_bounding_box.exit, %bb.c
  %.sink = phi ptr [ %i.r, %_path_bounding_box.exit ], [ %i.n, %bb.c ]
  %.0 = phi i32 [ 1, %_path_bounding_box.exit ], [ 0, %bb.c ]
  call void @free(ptr noundef %.sink) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  %.1 = phi i32 [ %.0, %bb.i ], [ 0, %bb.a ]
  ret i32 %.1
}

declare i32 @dt_dev_distort_backtransform(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare void @dt_masks_gui_form_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

declare void @dt_control_queue_redraw_center() local_unnamed_addr #7

declare ptr @g_list_nth(ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @dt_dev_add_masks_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare float @dt_masks_form_change_opacity(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #7

declare float @dt_masks_change_size(i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #7

declare float @dt_conf_get_float(ptr noundef) local_unnamed_addr #7

declare void @dt_conf_set_float(ptr noundef, float noundef) local_unnamed_addr #7

declare void @dt_toast_log(ptr noundef, ...) local_unnamed_addr #7

declare i32 @gtk_accelerator_get_default_mod_mask() local_unnamed_addr #7

declare void @dt_masks_set_source_pos_initial_state(ptr noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #7

declare void @dt_masks_set_edit_mode(ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @dt_masks_iop_update(ptr noundef) local_unnamed_addr #7

declare ptr @g_list_remove(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @dt_masks_gui_form_save_creation(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @dt_dev_add_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @dt_masks_set_edit_mode_single_form(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare void @dt_dev_masks_selection_change(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @gtk_toggle_button_set_active(ptr noundef, i32 noundef) local_unnamed_addr #7

declare ptr @dt_masks_create(i32 noundef) local_unnamed_addr #7

declare void @dt_masks_change_form_gui(ptr noundef) local_unnamed_addr #7

declare void @dt_masks_select_form(ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @dt_masks_get_from_id(ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @dt_masks_set_source_pos_initial_value(ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc float @_get_ctrl_scale(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6) unnamed_addr #20 {
bb.a:
  %i.a = fmul reassoc nsz arcp contract afn float %6, %2
  %i.b = fmul reassoc nsz arcp contract afn float %6, %4
  %i.c = fmul reassoc nsz arcp contract afn float %6, %0 ; 2 uses
  %i.d = fsub reassoc nsz arcp contract afn float %i.a, %i.c
  %i.e = fsub reassoc nsz arcp contract afn float %3, %1
  %i.f = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.d, float noundef %i.e) #24
  %i.g = fsub reassoc nsz arcp contract afn float %i.b, %i.c
  %i.h = fsub reassoc nsz arcp contract afn float %5, %1
  %i.i = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.g, float noundef %i.h) #24
  %i.j = fdiv reassoc nsz arcp contract afn float %i.f, %i.i
  ret float %i.j
}

declare ptr @g_list_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @dt_masks_clear_form_gui(ptr noundef) local_unnamed_addr #7

declare void @dt_masks_form_remove(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @dt_dev_masks_list_remove(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare i32 @g_strcmp0(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @cairo_move_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #7

declare void @cairo_line_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #7

declare void @dt_masks_line_stroke(ptr noundef, i32 noundef, i32 noundef, i32 noundef, float noundef) local_unnamed_addr #7

declare void @dt_masks_draw_anchor(ptr noundef, i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #7

declare void @dt_masks_draw_ctrl(ptr noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #7

declare void @dt_masks_calculate_source_pos_value(ptr noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @dt_masks_draw_clone_source_pos(ptr noundef, float noundef, float noundef, float noundef) local_unnamed_addr #7

declare void @dt_masks_closest_point(i32 noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @dt_masks_draw_arrow(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #7

declare void @dt_masks_stroke_arrow(ptr noundef, ptr noundef, i32 noundef, float noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.minnum.v8f32(<8 x float>, <8 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.maxnum.v8f32(<8 x float>, <8 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmin.v8f32(<8 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmax.v8f32(<8 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f32.v4p0(<4 x float>, <4 x ptr>, <4 x i1>) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <6 x float> @llvm.masked.load.v6f32.p0(ptr captures(none), <6 x i1>, <6 x float>) #23

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #24 = { nounwind willreturn memory(none) }
attributes #25 = { nounwind }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"float", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"p1 _ZTS6_GList", !13, i64 0}
!15 = !{!"p1 _ZTS17dt_masks_dynbuf_t", !13, i64 0}
!16 = !{!"p1 _ZTS15dt_iop_module_t", !13, i64 0}
!17 = !{!"long", !7, i64 0}
!18 = !{!"dt_masks_form_gui_t", !14, i64 0, !15, i64 8, !15, i64 16, !8, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !11, i64 152, !11, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !16, i64 184, !16, i64 192, !8, i64 200, !8, i64 204, !17, i64 208, !13, i64 216, !13, i64 224}
!19 = !{!18, !8, i64 172}
!20 = !{!"p1 _ZTS20dt_masks_functions_t", !13, i64 0}
!21 = !{!"dt_masks_form_t", !14, i64 0, !8, i64 8, !20, i64 16, !7, i64 24, !7, i64 32, !8, i64 160, !8, i64 164}
!22 = !{!21, !14, i64 0}
!23 = !{!18, !8, i64 84}
!24 = !{!18, !8, i64 92}
!25 = !{!18, !8, i64 100}
!26 = !{!18, !8, i64 60}
!27 = !{!14, !14, i64 0}
!28 = !{!8, !8, i64 0}
!29 = !{!"_GList", !13, i64 0, !14, i64 8, !14, i64 16}
!30 = !{!29, !14, i64 8}
!31 = !{!29, !13, i64 0}
!32 = !{!18, !14, i64 0}
!33 = !{!"p1 float", !13, i64 0}
!34 = !{!"dt_masks_form_gui_points_t", !33, i64 0, !8, i64 8, !33, i64 16, !8, i64 24, !33, i64 32, !8, i64 40, !8, i64 44}
!35 = !{!34, !33, i64 32}
!36 = !{!34, !8, i64 40}
!37 = !{!"llvm.loop.isvectorized", i32 1}
!38 = !{!"llvm.loop.unroll.runtime.disable"}
!39 = !{!34, !33, i64 16}
!40 = !{!34, !8, i64 24}
!41 = !{!34, !8, i64 8}
!42 = !{!34, !33, i64 0}
!43 = !{!"p1 _ZTS8_GModule", !13, i64 0}
!44 = !{!"p1 int", !13, i64 0}
!45 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !17, i64 8, !8, i64 16, !8, i64 20}
!46 = !{!"p1 _ZTS12dt_develop_t", !13, i64 0}
!47 = !{!"dt_pthread_mutex_t", !7, i64 0}
!48 = !{!"p1 _ZTS25dt_develop_blend_params_t", !13, i64 0}
!49 = !{!"p1 _ZTS11_GHashTable", !13, i64 0}
!50 = !{!"", !49, i64 0, !49, i64 8}
!51 = !{!"", !16, i64 0, !8, i64 8}
!52 = !{!"", !50, i64 0, !51, i64 16}
!53 = !{!"p1 _ZTS10_GtkWidget", !13, i64 0}
!54 = !{!"p1 _ZTS7_GSList", !13, i64 0}
!55 = !{!"p1 _ZTS18dt_iop_module_so_t", !13, i64 0}
!56 = !{!"dt_iop_module_t", !8, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !13, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !13, i64 376, !13, i64 384, !13, i64 392, !13, i64 400, !13, i64 408, !13, i64 416, !13, i64 424, !13, i64 432, !13, i64 440, !43, i64 448, !7, i64 456, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !7, i64 512, !7, i64 528, !7, i64 544, !7, i64 560, !7, i64 576, !7, i64 592, !44, i64 608, !45, i64 616, !7, i64 640, !8, i64 656, !8, i64 660, !46, i64 664, !8, i64 672, !8, i64 676, !13, i64 680, !13, i64 688, !8, i64 696, !13, i64 704, !47, i64 712, !13, i64 752, !13, i64 760, !48, i64 768, !48, i64 776, !13, i64 784, !52, i64 792, !53, i64 824, !53, i64 832, !53, i64 840, !53, i64 848, !53, i64 856, !53, i64 864, !53, i64 872, !8, i64 880, !53, i64 888, !53, i64 896, !53, i64 904, !54, i64 912, !54, i64 920, !53, i64 928, !53, i64 936, !8, i64 944, !55, i64 952, !8, i64 960, !7, i64 964, !8, i64 1092, !53, i64 1096, !13, i64 1104, !8, i64 1112}
!57 = !{!56, !8, i64 480}
!58 = !{!"double", !7, i64 0}
!59 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !13, i64 0}
!60 = !{!"short", !7, i64 0}
!61 = !{!"", !60, i64 0, !60, i64 2}
!62 = !{!"", !8, i64 0, !7, i64 16}
!63 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !61, i64 48, !62, i64 64, !7, i64 96, !8, i64 112}
!64 = !{!"p1 omnipotent char", !13, i64 0}
!65 = !{!"dt_image_raw_parameters_t", !8, i64 0, !8, i64 3}
!66 = !{!"dt_image_geoloc_t", !58, i64 0, !58, i64 8, !58, i64 16}
!67 = !{!"_color_harmony_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !7, i64 16}
!68 = !{!"p1 _ZTS16dt_cache_entry_t", !13, i64 0}
!69 = !{!"dt_image_t", !8, i64 0, !8, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !8, i64 40, !7, i64 44, !7, i64 108, !7, i64 172, !7, i64 300, !7, i64 364, !7, i64 428, !7, i64 492, !17, i64 560, !8, i64 568, !7, i64 572, !7, i64 800, !7, i64 864, !7, i64 928, !7, i64 992, !8, i64 1120, !7, i64 1124, !8, i64 1380, !8, i64 1384, !8, i64 1388, !8, i64 1392, !8, i64 1396, !8, i64 1400, !8, i64 1404, !8, i64 1408, !8, i64 1412, !8, i64 1416, !11, i64 1420, !8, i64 1424, !8, i64 1428, !8, i64 1432, !8, i64 1436, !8, i64 1440, !8, i64 1444, !17, i64 1448, !17, i64 1456, !17, i64 1464, !17, i64 1472, !8, i64 1480, !63, i64 1488, !7, i64 1616, !64, i64 1656, !8, i64 1664, !8, i64 1668, !65, i64 1672, !66, i64 1680, !67, i64 1704, !60, i64 1736, !7, i64 1738, !8, i64 1748, !8, i64 1752, !11, i64 1756, !11, i64 1760, !7, i64 1776, !7, i64 1792, !7, i64 1840, !14, i64 1856, !68, i64 1864, !8, i64 1872, !8, i64 1876}
!70 = !{!"p1 _ZTS15dt_masks_form_t", !13, i64 0}
!71 = !{!"p1 _ZTS19dt_masks_form_gui_t", !13, i64 0}
!72 = !{!"dt_dev_proxy_exposure_t", !16, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32}
!73 = !{!"p1 _ZTS15dt_lib_module_t", !13, i64 0}
!74 = !{!"", !73, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64}
!75 = !{!"", !73, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32}
!76 = !{!"", !72, i64 0, !16, i64 40, !74, i64 48, !75, i64 120}
!77 = !{!"dt_dev_chroma_t", !16, i64 0, !16, i64 8, !7, i64 16, !7, i64 32, !7, i64 64, !8, i64 96}
!78 = !{!"", !16, i64 0, !16, i64 8, !13, i64 16}
!79 = !{!"", !53, i64 0, !53, i64 8, !8, i64 16, !8, i64 20, !11, i64 24, !11, i64 28, !8, i64 32}
!80 = !{!"", !53, i64 0, !53, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !11, i64 28}
!81 = !{!"", !53, i64 0, !53, i64 8}
!82 = !{!"", !53, i64 0, !8, i64 8}
!83 = !{!"", !53, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !53, i64 32}
!84 = !{!"dt_dev_viewport_t", !53, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !58, i64 32, !58, i64 40, !58, i64 48, !8, i64 56, !8, i64 60, !8, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !59, i64 80, !53, i64 88, !46, i64 96}
!85 = !{!"dt_develop_t", !8, i64 0, !8, i64 4, !8, i64 8, !13, i64 16, !58, i64 24, !58, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !58, i64 64, !8, i64 72, !8, i64 76, !8, i64 80, !16, i64 88, !59, i64 96, !69, i64 112, !8, i64 2000, !8, i64 2004, !47, i64 2008, !8, i64 2048, !14, i64 2056, !8, i64 2064, !16, i64 2072, !8, i64 2080, !14, i64 2088, !14, i64 2096, !8, i64 2104, !14, i64 2112, !14, i64 2120, !44, i64 2128, !44, i64 2136, !8, i64 2144, !8, i64 2148, !14, i64 2152, !70, i64 2160, !71, i64 2168, !14, i64 2176, !8, i64 2184, !8, i64 2188, !8, i64 2192, !11, i64 2196, !11, i64 2200, !16, i64 2208, !8, i64 2216, !76, i64 2224, !77, i64 2384, !78, i64 2496, !79, i64 2520, !80, i64 2560, !81, i64 2592, !82, i64 2608, !83, i64 2624, !53, i64 2664, !53, i64 2672, !84, i64 2680, !84, i64 2784, !8, i64 2888, !8, i64 2892, !8, i64 2896, !8, i64 2900, !14, i64 2904, !8, i64 2912, !46, i64 2920}
!86 = !{!85, !59, i64 96}
!87 = !{!"dt_codepath_t", !8, i64 0}
!88 = !{!"p1 _ZTS11_JsonParser", !13, i64 0}
!89 = !{!"p1 _ZTS9dt_conf_t", !13, i64 0}
!90 = !{!"p1 _ZTS8dt_lib_t", !13, i64 0}
!91 = !{!"p1 _ZTS17dt_view_manager_t", !13, i64 0}
!92 = !{!"p1 _ZTS12dt_control_t", !13, i64 0}
!93 = !{!"p1 _ZTS19dt_control_signal_t", !13, i64 0}
!94 = !{!"p1 _ZTS12dt_gui_gtk_t", !13, i64 0}
!95 = !{!"p1 _ZTS17dt_mipmap_cache_t", !13, i64 0}
!96 = !{!"p1 _ZTS16dt_image_cache_t", !13, i64 0}
!97 = !{!"p1 _ZTS12dt_bauhaus_t", !13, i64 0}
!98 = !{!"p1 _ZTS13dt_database_t", !13, i64 0}
!99 = !{!"p1 _ZTS14dt_pwstorage_t", !13, i64 0}
!100 = !{!"p1 _ZTS11dt_camctl_t", !13, i64 0}
!101 = !{!"p1 _ZTS15dt_collection_t", !13, i64 0}
!102 = !{!"p1 _ZTS14dt_selection_t", !13, i64 0}
!103 = !{!"p1 _ZTS11dt_points_t", !13, i64 0}
!104 = !{!"p1 _ZTS12dt_imageio_t", !13, i64 0}
!105 = !{!"p1 _ZTS11dt_opencl_t", !13, i64 0}
!106 = !{!"p1 _ZTS9dt_dbus_t", !13, i64 0}
!107 = !{!"p1 _ZTS9dt_undo_t", !13, i64 0}
!108 = !{!"p1 _ZTS16dt_colorspaces_t", !13, i64 0}
!109 = !{!"p1 _ZTS9dt_l10n_t", !13, i64 0}
!110 = !{!"p1 _ZTS9lua_State", !13, i64 0}
!111 = !{!"_Bool", !7, i64 0}
!112 = !{!"p1 _ZTS10_GMainLoop", !13, i64 0}
!113 = !{!"p1 _ZTS13_GMainContext", !13, i64 0}
!114 = !{!"p1 _ZTS12_GThreadPool", !13, i64 0}
!115 = !{!"p1 _ZTS12_GAsyncQueue", !13, i64 0}
!116 = !{!"", !110, i64 0, !47, i64 8, !7, i64 48, !111, i64 96, !111, i64 97, !112, i64 104, !113, i64 112, !114, i64 120, !115, i64 128, !115, i64 136, !115, i64 144}
!117 = !{!"p1 _ZTS10_GTimeZone", !13, i64 0}
!118 = !{!"p1 _ZTS10_GDateTime", !13, i64 0}
!119 = !{!"dt_sys_resources_t", !17, i64 0, !17, i64 8, !44, i64 16, !44, i64 24, !8, i64 32}
!120 = !{!"dt_backthumb_t", !58, i64 0, !58, i64 8, !8, i64 16, !8, i64 20}
!121 = !{!"dt_gimp_t", !8, i64 0, !64, i64 8, !64, i64 16, !8, i64 24, !8, i64 28}
!122 = !{!"dt_splash_t", !53, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !8, i64 32}
!123 = !{!"darktable_t", !87, i64 0, !8, i64 4, !8, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !88, i64 48, !89, i64 56, !46, i64 64, !90, i64 72, !91, i64 80, !92, i64 88, !93, i64 96, !94, i64 104, !95, i64 112, !96, i64 120, !97, i64 128, !98, i64 136, !99, i64 144, !100, i64 152, !101, i64 160, !102, i64 168, !103, i64 176, !104, i64 184, !105, i64 192, !106, i64 200, !107, i64 208, !108, i64 216, !109, i64 224, !7, i64 232, !47, i64 2792, !47, i64 2832, !47, i64 2872, !47, i64 2912, !47, i64 2952, !47, i64 2992, !64, i64 3032, !64, i64 3040, !64, i64 3048, !64, i64 3056, !64, i64 3064, !64, i64 3072, !64, i64 3080, !64, i64 3088, !64, i64 3096, !64, i64 3104, !64, i64 3112, !64, i64 3120, !64, i64 3128, !116, i64 3136, !14, i64 3288, !58, i64 3296, !14, i64 3304, !8, i64 3312, !7, i64 3316, !8, i64 3512, !8, i64 3516, !117, i64 3520, !118, i64 3528, !119, i64 3536, !120, i64 3576, !121, i64 3600, !122, i64 3632, !8, i64 3672}
!124 = !{!123, !8, i64 8}
!125 = !{!"timeval", !17, i64 0, !17, i64 8}
!126 = !{!125, !17, i64 0}
!127 = !{!125, !17, i64 8}
!128 = !{!33, !33, i64 0}
!129 = !{!56, !46, i64 664}
!130 = !{!"p1 _ZTS18dt_histogram_roi_t", !13, i64 0}
!131 = !{!"dt_dev_histogram_collection_params_t", !130, i64 0, !8, i64 8}
!132 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !11, i64 16}
!133 = !{!"dt_dev_distorted_mask_cache_t", !33, i64 0, !132, i64 8, !17, i64 32, !17, i64 40}
!134 = !{!"dt_dev_pixelpipe_iop_t", !16, i64 0, !59, i64 8, !13, i64 16, !13, i64 24, !8, i64 32, !8, i64 36, !131, i64 40, !44, i64 56, !45, i64 64, !7, i64 88, !11, i64 104, !8, i64 108, !8, i64 112, !17, i64 120, !8, i64 128, !8, i64 132, !132, i64 136, !132, i64 156, !132, i64 176, !132, i64 196, !8, i64 216, !8, i64 220, !63, i64 224, !63, i64 352, !7, i64 480, !8, i64 516, !49, i64 520, !133, i64 528, !133, i64 576}
!135 = !{!134, !59, i64 8}
!136 = !{!"llvm.loop.unroll.disable"}
!137 = !{!58, !58, i64 0}
!138 = !{!123, !46, i64 64}
!139 = !{!"any p2 pointer", !13, i64 0}
!140 = !{!"p1 long", !13, i64 0}
!141 = !{!"p1 _ZTS19dt_iop_buffer_dsc_t", !13, i64 0}
!142 = !{!"dt_dev_pixelpipe_cache_t", !8, i64 0, !17, i64 8, !17, i64 16, !139, i64 24, !140, i64 32, !141, i64 40, !140, i64 48, !44, i64 56, !44, i64 64, !17, i64 72, !8, i64 80, !17, i64 88, !17, i64 96, !8, i64 104, !8, i64 108, !8, i64 112}
!143 = !{!"p1 _ZTS30dt_iop_order_iccprofile_info_t", !13, i64 0}
!144 = !{!"dt_dev_detail_mask_t", !132, i64 0, !17, i64 24, !33, i64 32}
!145 = !{!"dt_dev_pixelpipe_t", !142, i64 0, !8, i64 120, !17, i64 128, !33, i64 136, !8, i64 144, !8, i64 148, !11, i64 152, !8, i64 156, !8, i64 160, !63, i64 176, !143, i64 304, !143, i64 312, !143, i64 320, !143, i64 328, !14, i64 336, !8, i64 344, !8, i64 348, !8, i64 352, !8, i64 356, !64, i64 360, !17, i64 368, !8, i64 376, !8, i64 380, !11, i64 384, !7, i64 388, !17, i64 416, !47, i64 424, !47, i64 464, !47, i64 504, !8, i64 544, !8, i64 548, !8, i64 552, !144, i64 560, !8, i64 600, !8, i64 604, !8, i64 608, !7, i64 612, !8, i64 616, !8, i64 620, !8, i64 624, !8, i64 628, !8, i64 632, !8, i64 636, !8, i64 640, !8, i64 644, !8, i64 648, !8, i64 652, !69, i64 656, !8, i64 2544, !64, i64 2552, !8, i64 2560, !14, i64 2568, !14, i64 2576, !14, i64 2584, !8, i64 2592, !33, i64 2600, !17, i64 2608, !7, i64 2616, !7, i64 2632}
!146 = !{!145, !11, i64 152}
!147 = !{!145, !8, i64 156}
!148 = !{!85, !59, i64 2760}
!149 = !{!18, !8, i64 132}
!150 = !{!18, !8, i64 180}
!151 = !{!21, !8, i64 8}
!152 = !{!18, !8, i64 140}
!153 = !{!18, !8, i64 136}
!154 = !{!18, !8, i64 96}
!155 = !{!18, !8, i64 148}
!156 = !{!18, !11, i64 152}
!157 = !{!18, !11, i64 156}
!158 = !{!"dt_masks_point_path_t", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32}
!159 = !{!158, !8, i64 32}
!160 = !{!18, !8, i64 144}
!161 = !{!18, !8, i64 112}
!162 = !{!18, !8, i64 116}
!163 = !{!18, !8, i64 64}
!164 = !{!18, !8, i64 68}
!165 = !{!18, !8, i64 104}
!166 = !{!18, !8, i64 164}
!167 = !{!18, !8, i64 88}
!168 = !{!18, !8, i64 80}
!169 = !{!18, !11, i64 44}
!170 = !{!18, !11, i64 48}
!171 = !{!85, !70, i64 2160}
!172 = !{!18, !11, i64 28}
!173 = !{!18, !11, i64 32}
!174 = !{!34, !8, i64 44}
!175 = !{!"dt_masks_dynbuf_t", !33, i64 0, !7, i64 8, !17, i64 136, !17, i64 144}
!176 = !{!175, !33, i64 0}
!177 = !{!"dt_masks_intbuf_t", !44, i64 0, !7, i64 8, !17, i64 136, !17, i64 144}
!178 = !{!177, !44, i64 0}
!179 = !{!177, !17, i64 144}
!180 = !{!175, !17, i64 136}
!181 = !{!175, !17, i64 144}
!182 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!183 = distinct !{!183, i1 false, !"LVerDomain"}
!184 = distinct !{!184, !183}
!185 = distinct !{!185, !37, !38}
!186 = distinct !{!186, !183}
!187 = distinct !{!187, !37}
!188 = !{!184}
!189 = !{!186}
!190 = distinct !{!190, !136}
!191 = distinct !{!191, !37, !38}
!192 = distinct !{!192, !37, !38}
!193 = distinct !{!193, !38, !37}
!194 = distinct !{!194, !38, !37}
!195 = distinct !{!195, !136}
!196 = distinct !{!196, i1 true, !"_path_falloff"}
!197 = distinct !{!197, !196, !"_path_falloff: argument 0"}
!198 = !{!197}
!199 = distinct !{!199, !37, !38}
!200 = distinct !{!200, !136}
!201 = distinct !{!201, !37}
!202 = distinct !{!202, !37, !38}
!203 = distinct !{!203, !38, !37}
!204 = distinct !{!204, !136}
!205 = distinct !{!205, !136}
!206 = distinct !{!206, !136}
!207 = distinct !{!207, !136}
!208 = distinct !{!208, !136}
!209 = distinct !{!209, !37, !38}
!210 = distinct !{!210, !37, !38}
!211 = distinct !{!211, !38, !37}
!212 = distinct !{!212, !136}
!213 = !{!132, !11, i64 16}
!214 = !{!"branch_weights", i32 4, i32 28}
!215 = !{!123, !94, i64 104}
!216 = !{!"p1 _ZTS7dt_ui_t", !13, i64 0}
!217 = !{!"dt_gui_widgets_t", !53, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !8, i64 32, !8, i64 36, !8, i64 40}
!218 = !{!"dt_gui_scrollbars_t", !53, i64 0, !53, i64 8, !8, i64 16}
!219 = !{!"p1 _ZTS14_cairo_surface", !13, i64 0}
!220 = !{!"dt_gui_gtk_t", !216, i64 0, !217, i64 8, !218, i64 56, !219, i64 80, !8, i64 88, !64, i64 96, !7, i64 104, !7, i64 112, !8, i64 1360, !8, i64 1364, !8, i64 1368, !8, i64 1372, !8, i64 1376, !8, i64 1380, !58, i64 1384, !58, i64 1392, !58, i64 1400, !58, i64 1408, !53, i64 1416, !58, i64 1424, !58, i64 1432, !58, i64 1440, !58, i64 1448, !8, i64 1456, !8, i64 1460, !7, i64 1464, !8, i64 5560, !8, i64 5564, !8, i64 5568}
!221 = !{!220, !58, i64 1432}
!222 = !{!18, !8, i64 76}
!223 = !{!18, !16, i64 184}
!224 = !{!18, !8, i64 176}
!225 = !{!18, !16, i64 192}
!226 = !{!56, !55, i64 952}
!227 = !{!21, !8, i64 160}
!228 = !{!56, !13, i64 784}
!229 = !{!53, !53, i64 0}
!230 = !{!"p1 _ZTS7_GtkBox", !13, i64 0}
!231 = !{!"p1 _ZTS28dt_iop_gui_blendif_channel_t", !13, i64 0}
!232 = !{!"p1 _ZTS12_GtkNotebook", !13, i64 0}
!233 = !{!"dt_iop_gui_blend_data_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !16, i64 32, !14, i64 40, !14, i64 48, !53, i64 56, !230, i64 64, !230, i64 72, !230, i64 80, !230, i64 88, !230, i64 96, !230, i64 104, !53, i64 112, !53, i64 120, !53, i64 128, !7, i64 136, !53, i64 280, !53, i64 288, !53, i64 296, !53, i64 304, !53, i64 312, !53, i64 320, !53, i64 328, !53, i64 336, !53, i64 344, !53, i64 352, !53, i64 360, !53, i64 368, !8, i64 376, !8, i64 380, !231, i64 384, !8, i64 392, !7, i64 396, !8, i64 460, !8, i64 464, !232, i64 472, !8, i64 480, !53, i64 488, !53, i64 496, !53, i64 504, !7, i64 512, !7, i64 552, !53, i64 576, !53, i64 584, !44, i64 592, !8, i64 600, !53, i64 608, !53, i64 616, !8, i64 624, !47, i64 632}
!234 = !{!233, !53, i64 576}
!235 = !{!85, !71, i64 2168}
!236 = !{!"dt_masks_point_group_t", !8, i64 0, !8, i64 4, !8, i64 8, !11, i64 12}
!237 = !{!236, !8, i64 0}
!238 = !{!18, !11, i64 36}
!239 = !{!18, !11, i64 40}
!240 = distinct !{!240, !136}
!241 = !{!18, !8, i64 168}
!242 = !{!29, !14, i64 16}
!243 = distinct !{!243, !37, !38}
!244 = distinct !{!244, !37, !38}
!245 = distinct !{!245, !38, !37}
!246 = distinct !{!246, !37, !38}
!247 = distinct !{!247, !37, !38}
!248 = distinct !{!248, !38, !37}
!249 = distinct !{!249, i1 false, !"LVerDomain"}
!250 = distinct !{!250, !249}
!251 = distinct !{!251, !249}
!252 = distinct !{!252, !37, !38}
!253 = distinct !{!253, !37}
!254 = !{!177, !17, i64 136}
!255 = !{!"branch_weights", i32 8, i32 24}
!256 = !{!"branch_weights", i32 4, i32 12}
!257 = !{!250}
!258 = !{!251}
!259 = distinct !{!259, !136}
end_hunk_3
