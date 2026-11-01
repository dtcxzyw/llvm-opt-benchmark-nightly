Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/move?download=true
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@check_objects:bb.a
  %i.fu = getelementptr inbounds nuw [192 x i8], ptr %i.eo, i64 %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !28
  %i.fx = icmp eq i32 %i.fw, -1
  br i1 %i.fx, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.fv, align 8, !tbaa !28
  %.pre71 = load i32, ptr @my_pe, align 4, !tbaa !7
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  %i.fy = phi i32 [ %.pre71, %bb.w ], [ %i.fm, %bb.v ], [ %i.fm, %bb.u ], [ %i.fm, %bb.t ] ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.el, i64 68
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !7
  %i.gb = icmp eq i32 %i.ga, %i.fy
  br i1 %i.gb, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.gc = getelementptr inbounds nuw i8, ptr %i.el, i64 36
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !7  ; 2 uses
  %i.ge = icmp sgt i32 %i.gd, -1
  br i1 %i.ge, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.gf = zext nneg i32 %i.gd to i64
  %i.gg = getelementptr inbounds nuw [192 x i8], ptr %i.eo, i64 %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8 ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !28
  %i.gj = icmp eq i32 %i.gi, -1
  br i1 %i.gj, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.gh, align 8, !tbaa !28
  %.pre72 = load i32, ptr @my_pe, align 4, !tbaa !7
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  %i.gk = phi i32 [ %.pre72, %bb.aa ], [ %i.fy, %bb.z ], [ %i.fy, %bb.y ], [ %i.fy, %bb.x ] ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.el, i64 72
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !7
  %i.gn = icmp eq i32 %i.gm, %i.gk
  br i1 %i.gn, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.go = getelementptr inbounds nuw i8, ptr %i.el, i64 40
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !7  ; 2 uses
  %i.gq = icmp sgt i32 %i.gp, -1
  br i1 %i.gq, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.gr = zext nneg i32 %i.gp to i64
  %i.gs = getelementptr inbounds nuw [192 x i8], ptr %i.eo, i64 %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8 ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !28
  %i.gv = icmp eq i32 %i.gu, -1
  br i1 %i.gv, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.gt, align 8, !tbaa !28
  %.pre73 = load i32, ptr @my_pe, align 4, !tbaa !7
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %i.gw = phi i32 [ %.pre73, %bb.ae ], [ %i.gk, %bb.ad ], [ %i.gk, %bb.ac ], [ %i.gk, %bb.ab ] ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.el, i64 76
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !7
  %i.gz = icmp eq i32 %i.gy, %i.gw
  br i1 %i.gz, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.ha = getelementptr inbounds nuw i8, ptr %i.el, i64 44
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !7  ; 2 uses
  %i.hc = icmp sgt i32 %i.hb, -1
  br i1 %i.hc, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.hd = zext nneg i32 %i.hb to i64
  %i.he = getelementptr inbounds nuw [192 x i8], ptr %i.eo, i64 %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8 ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !28
  %i.hh = icmp eq i32 %i.hg, -1
  br i1 %i.hh, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.hf, align 8, !tbaa !28
  %.pre74 = load i32, ptr @my_pe, align 4, !tbaa !7
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af
  %i.hi = phi i32 [ %.pre74, %bb.ai ], [ %i.gw, %bb.ah ], [ %i.gw, %bb.ag ], [ %i.gw, %bb.af ] ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.el, i64 80
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !7
  %i.hl = icmp eq i32 %i.hk, %i.hi
  br i1 %i.hl, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.hm = getelementptr inbounds nuw i8, ptr %i.el, i64 48
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !7  ; 2 uses
  %i.ho = icmp sgt i32 %i.hn, -1
  br i1 %i.ho, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.hp = zext nneg i32 %i.hn to i64
  %i.hq = getelementptr inbounds nuw [192 x i8], ptr %i.eo, i64 %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8 ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !28
  %i.ht = icmp eq i32 %i.hs, -1
  br i1 %i.ht, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.hr, align 8, !tbaa !28
  %.pre75 = load i32, ptr @my_pe, align 4, !tbaa !7
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj
  %i.hu = phi i32 [ %.pre75, %bb.am ], [ %i.hi, %bb.al ], [ %i.hi, %bb.ak ], [ %i.hi, %bb.aj ]
  %i.hv = getelementptr inbounds nuw i8, ptr %i.el, i64 84
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !7
  %i.hx = icmp eq i32 %i.hw, %i.hu
  br i1 %i.hx, label %bb.ao, label %.loopexit

bb.ao:                                            ; preds = %bb.an
  %i.hy = getelementptr inbounds nuw i8, ptr %i.el, i64 52
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !7  ; 2 uses
  %i.ia = icmp sgt i32 %i.hz, -1
  br i1 %i.ia, label %bb.ap, label %.loopexit

bb.ap:                                            ; preds = %bb.ao
  %i.ib = zext nneg i32 %i.hz to i64
  %i.ic = getelementptr inbounds nuw [192 x i8], ptr %i.eo, i64 %i.ib
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8 ; 2 uses
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !28
  %i.if = icmp eq i32 %i.ie, -1
  br i1 %i.if, label %bb.aq, label %.loopexit

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %i.id, align 8, !tbaa !28
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.j, %bb.k
  %.not63 = icmp eq i32 %i.dw, 0
  br i1 %.not63, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %.loopexit
  %i.ig = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !28
  %i.ii = icmp eq i32 %i.ih, -1
  br i1 %i.ii, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %i.ig, align 8, !tbaa !28
  br label %bb.at

bb.at:                                            ; preds = %bb.b, %bb.as, %bb.ar, %.loopexit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ij = load ptr, ptr @sorted_index, align 8, !tbaa !18
  %i.ik = load i32, ptr @num_refine, align 4, !tbaa !7 ; 2 uses
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr [4 x i8], ptr %i.ij, i64 %i.il
  %i.in = getelementptr i8, ptr %i.im, i64 4
  %i.io = load i32, ptr %i.in, align 4, !tbaa !7
  %i.ip = sext i32 %i.io to i64
  %i.iq = icmp slt i64 %indvars.iv.next, %i.ip
  br i1 %i.iq, label %bb.b, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %bb.at, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 0, 2) i32 @check_block(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @num_objects, align 4, !tbaa !7 ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 15 uses
  %.pre1116 = load ptr, ptr @objects, align 8, !tbaa !9
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.thread
  %i.h = phi i32 [ %i.a, %.lr.ph ], [ %i.uc, %.thread ] ; 67 uses
  %i.i = phi ptr [ %.pre1116, %.lr.ph ], [ %i.ud, %.thread ] ; 68 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.thread ] ; 2 uses
  %.01114 = phi i32 [ undef, %.lr.ph ], [ %.5, %.thread ] ; 31 uses
  %.09111113 = phi i32 [ undef, %.lr.ph ], [ %.5916, %.thread ] ; 31 uses
  %.09211112 = phi i32 [ undef, %.lr.ph ], [ %.3924, %.thread ] ; 44 uses
  %.09271111 = phi i32 [ 0, %.lr.ph ], [ %.3930, %.thread ]
  %i.j = getelementptr inbounds nuw [176 x i8], ptr %i.i, i64 %indvars.iv ; 21 uses
  %.not1189 = icmp eq i32 %.09271111, 0
  br i1 %.not1189, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 104 ; 19 uses
  %i.l = load double, ptr %i.k, align 8, !tbaa !12 ; 15 uses
  %i.m = fcmp olt double %i.l, 0.000000e+00
  br i1 %i.m, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %i.o = load double, ptr %i.n, align 8, !tbaa !12 ; 14 uses
  %i.p = fcmp olt double %i.o, 0.000000e+00
  br i1 %i.p, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  %i.r = load double, ptr %i.q, align 8, !tbaa !12 ; 18 uses
  %i.s = fcmp olt double %i.r, 0.000000e+00
  br i1 %i.s, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr %i.j, align 8, !tbaa !34   ; 10 uses
  switch i32 %i.t, label %bb.af [
    i32 0, label %bb.g
    i32 1, label %bb.z
  ]

bb.g:                                             ; preds = %bb.f
  %i.u = load double, ptr %i.c, align 8, !tbaa !12 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.w = load double, ptr %i.v, align 8, !tbaa !12 ; 2 uses
  %i.x = fsub double %i.w, %i.l                   ; 3 uses
  %i.y = fcmp ogt double %i.u, %i.x
  br i1 %i.y, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.z = load double, ptr %0, align 8, !tbaa !12  ; 3 uses
  %i.aa = fadd double %i.l, %i.w                  ; 3 uses
  %i.ab = fcmp olt double %i.z, %i.aa
  br i1 %i.ab, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ac = fcmp olt double %i.z, %i.x
  %i.ad = fcmp olt double %i.u, %i.aa
  %or.cond1009 = and i1 %i.ad, %i.ac
  br i1 %or.cond1009, label %._crit_edge1117, label %bb.j

._crit_edge1117:                                  ; preds = %bb.i
  %.pre1118 = load double, ptr %i.d, align 8, !tbaa !12
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ae = fcmp ogt double %i.z, %i.x
  %i.af = fcmp ogt double %i.u, %i.aa
  %or.cond1107 = and i1 %i.af, %i.ae
  %.pre1119 = load double, ptr %i.d, align 8, !tbaa !12 ; 4 uses
  br i1 %or.cond1107, label %bb.k, label %bb.o

bb.k:                                             ; preds = %._crit_edge1117, %bb.j
  %i.ag = phi double [ %.pre1118, %._crit_edge1117 ], [ %.pre1119, %bb.j ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !12 ; 2 uses
  %i.aj = fsub double %i.ai, %i.o
  %i.ak = fcmp ogt double %i.ag, %i.aj
  br i1 %i.ak, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.al = load double, ptr %i.e, align 8, !tbaa !12
  %i.am = fadd double %i.o, %i.ai
  %i.an = fcmp olt double %i.al, %i.am
  br i1 %i.an, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.ao = load double, ptr %i.f, align 8, !tbaa !12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !12 ; 2 uses
  %i.ar = fsub double %i.aq, %i.r
  %i.as = fcmp ogt double %i.ao, %i.ar
  br i1 %i.as, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.at = load double, ptr %i.g, align 8, !tbaa !12
  %i.au = fadd double %i.r, %i.aq
  %i.av = fcmp olt double %i.at, %i.au
  br label %.thread

bb.o:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !12 ; 2 uses
  %i.ay = fsub double %i.ax, %i.o                 ; 3 uses
  %i.az = fcmp ogt double %.pre1119, %i.ay
  br i1 %i.az, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.ba = load double, ptr %i.e, align 8, !tbaa !12 ; 3 uses
  %i.bb = fadd double %i.o, %i.ax                 ; 3 uses
  %i.bc = fcmp olt double %i.ba, %i.bb
  br i1 %i.bc, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.bd = fcmp olt double %i.ba, %i.ay
  %i.be = fcmp olt double %.pre1119, %i.bb
  %or.cond1010 = and i1 %i.be, %i.bd
  br i1 %or.cond1010, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = fcmp ogt double %i.ba, %i.ay
  %i.bg = fcmp ogt double %.pre1119, %i.bb
  %or.cond1108 = and i1 %i.bg, %i.bf
  br i1 %or.cond1108, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bh = load double, ptr %i.f, align 8, !tbaa !12
  %i.bi = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !12 ; 2 uses
  %i.bk = fsub double %i.bj, %i.r
  %i.bl = fcmp ogt double %i.bh, %i.bk
  br i1 %i.bl, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.bm = load double, ptr %i.g, align 8, !tbaa !12
  %i.bn = fadd double %i.r, %i.bj
  %i.bo = fcmp olt double %i.bm, %i.bn
  br label %.thread

bb.u:                                             ; preds = %bb.p, %bb.o
  %i.bp = load double, ptr %i.f, align 8, !tbaa !12 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.br = load double, ptr %i.bq, align 8, !tbaa !12 ; 2 uses
  %i.bs = fsub double %i.br, %i.r                 ; 3 uses
  %i.bt = fcmp ogt double %i.bp, %i.bs
  br i1 %i.bt, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.bu = load double, ptr %i.g, align 8, !tbaa !12 ; 3 uses
  %i.bv = fadd double %i.r, %i.br                 ; 3 uses
  %i.bw = fcmp olt double %i.bu, %i.bv
  br i1 %i.bw, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v
  %i.bx = fcmp olt double %i.bu, %i.bs
  %i.by = fcmp olt double %i.bp, %i.bv
  %or.cond1012 = and i1 %i.by, %i.bx
  br i1 %or.cond1012, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bz = fcmp ogt double %i.bu, %i.bs
  %i.ca = fcmp ogt double %i.bp, %i.bv
  %or.cond1109 = and i1 %i.ca, %i.bz
  br i1 %or.cond1109, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x, %bb.w
  br label %.thread

bb.z:                                             ; preds = %bb.f
  %i.cb = load double, ptr %i.c, align 8, !tbaa !12
  %i.cc = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !12 ; 2 uses
  %i.ce = fsub double %i.cd, %i.l
  %i.cf = fcmp ogt double %i.cb, %i.ce
  br i1 %i.cf, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z
  %i.cg = load double, ptr %0, align 8, !tbaa !12
  %i.ch = fadd double %i.l, %i.cd
  %i.ci = fcmp olt double %i.cg, %i.ch
  br i1 %i.ci, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %bb.aa
  %i.cj = load double, ptr %i.d, align 8, !tbaa !12
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !12 ; 2 uses
  %i.cm = fsub double %i.cl, %i.o
  %i.cn = fcmp ogt double %i.cj, %i.cm
  br i1 %i.cn, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.ab
  %i.co = load double, ptr %i.e, align 8, !tbaa !12
  %i.cp = fadd double %i.o, %i.cl
  %i.cq = fcmp olt double %i.co, %i.cp
  br i1 %i.cq, label %bb.ad, label %.thread

bb.ad:                                            ; preds = %bb.ac
  %i.cr = load double, ptr %i.f, align 8, !tbaa !12
  %i.cs = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !12 ; 2 uses
  %i.cu = fsub double %i.ct, %i.r
  %i.cv = fcmp ogt double %i.cr, %i.cu
  br i1 %i.cv, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %bb.ad
  %i.cw = load double, ptr %i.g, align 8, !tbaa !12
  %i.cx = fadd double %i.r, %i.ct
  %i.cy = fcmp olt double %i.cw, %i.cx
  br label %.thread

bb.af:                                            ; preds = %bb.f
  %i.cz = add i32 %i.t, -2
  %or.cond1014 = icmp ult i32 %i.cz, 13
  %i.da = and i32 %i.t, 1
  %.not = icmp eq i32 %i.da, 0                    ; 2 uses
  %or.cond1015 = and i1 %or.cond1014, %.not
  br i1 %or.cond1015, label %bb.ag, label %bb.bl

bb.ag:                                            ; preds = %bb.af
  %i.db = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.dc = load double, ptr %i.db, align 8, !tbaa !12 ; 6 uses
  %i.dd = load double, ptr %0, align 8, !tbaa !12 ; 2 uses
  %i.de = fcmp olt double %i.dc, %i.dd            ; 2 uses
  br i1 %i.de, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.df = load double, ptr %i.c, align 8, !tbaa !12 ; 2 uses
  %i.dg = fcmp ogt double %i.dc, %i.df
  br i1 %i.dg, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dh = fadd double %i.dd, %i.df
  %i.di = fmul double %i.dh, 5.000000e-01
  %i.dj = fcmp uge double %i.dc, %i.di
  %. = zext i1 %i.dj to i32
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %.not985 = phi i1 [ true, %bb.ah ], [ true, %bb.ag ], [ false, %bb.ai ]
  %.1922 = phi i32 [ 1, %bb.ah ], [ 0, %bb.ag ], [ %., %bb.ai ] ; 18 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !12 ; 7 uses
  %i.dm = load double, ptr %i.e, align 8, !tbaa !12 ; 2 uses
  %i.dn = fcmp olt double %i.dl, %i.dm            ; 2 uses
  br i1 %i.dn, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.do = load double, ptr %i.d, align 8, !tbaa !12 ; 2 uses
  %i.dp = fcmp ogt double %i.dl, %i.do
  br i1 %i.dp, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dq = fadd double %i.dm, %i.do
  %i.dr = fmul double %i.dq, 5.000000e-01
  %i.ds = fcmp uge double %i.dl, %i.dr
  %.1016 = zext i1 %i.ds to i32
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %.not986 = phi i1 [ true, %bb.ak ], [ true, %bb.aj ], [ false, %bb.al ] ; 2 uses
  %.1912 = phi i32 [ 1, %bb.ak ], [ 0, %bb.aj ], [ %.1016, %bb.al ] ; 19 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.du = load double, ptr %i.dt, align 8, !tbaa !12 ; 9 uses
  %i.dv = load double, ptr %i.g, align 8, !tbaa !12 ; 2 uses
  %i.dw = fcmp uge double %i.du, %i.dv            ; 2 uses
  br i1 %i.dw, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.dx = load double, ptr %i.f, align 8, !tbaa !12 ; 2 uses
  %i.dy = fcmp ogt double %i.du, %i.dx
  br i1 %i.dy, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dz = fadd double %i.dv, %i.dx
  %i.ea = fmul double %i.dz, 5.000000e-01
  %i.eb = fcmp uge double %i.du, %i.ea
  %.1017 = zext i1 %i.eb to i32
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am
  %.not987 = phi i1 [ true, %bb.an ], [ true, %bb.am ], [ false, %bb.ao ] ; 4 uses
  %.1 = phi i32 [ 1, %bb.an ], [ 0, %bb.am ], [ %.1017, %bb.ao ] ; 21 uses
  br i1 %.not985, label %bb.aw, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  br i1 %.not986, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  br i1 %.not987, label %bb.as, label %bb.bd

bb.as:                                            ; preds = %bb.ar
  %i.ec = zext nneg i32 %.1 to i64
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ec
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !12
  %i.ef = fsub double %i.ee, %i.du
  %i.eg = tail call double @llvm.fabs.f64(double %i.ef)
  %i.eh = fcmp olt double %i.eg, %i.r
  br i1 %i.eh, label %bb.bd, label %.thread

bb.at:                                            ; preds = %bb.aq
  %i.ei = zext nneg i32 %.1912 to i64
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ei
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !12
  %i.el = fsub double %i.ek, %i.dl                ; 2 uses
  br i1 %.not987, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.em = tail call double @llvm.fabs.f64(double %i.el)
  %i.en = fcmp olt double %i.em, %i.o
  br i1 %i.en, label %bb.bd, label %.thread

bb.av:                                            ; preds = %bb.at
  %1 = fdiv double %i.el, %i.o                    ; 2 uses
  %i.eo = zext nneg i32 %.1 to i64
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.eo
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !12
  %i.er = fsub double %i.eq, %i.du
  %2 = fdiv double %i.er, %i.r                    ; 2 uses
  %3 = fmul double %2, %2
  %i.es = tail call double @llvm.fmuladd.f64(double %1, double %1, double %3)
  %i.et = fcmp olt double %i.es, 1.000000e+00
  br i1 %i.et, label %bb.bd, label %.thread

bb.aw:                                            ; preds = %bb.ap
  %i.eu = zext nneg i32 %.1922 to i64
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.eu
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !12
  %i.ex = fsub double %i.ew, %i.dc                ; 3 uses
  br i1 %.not986, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  br i1 %.not987, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ey = tail call double @llvm.fabs.f64(double %i.ex)
  %i.ez = fcmp olt double %i.ey, %i.l
  br i1 %i.ez, label %bb.bd, label %.thread

bb.az:                                            ; preds = %bb.ax
  %i.fa = fdiv double %i.ex, %i.l                 ; 2 uses
  %i.fb = zext nneg i32 %.1 to i64
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.fb
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !12
  %i.fe = fsub double %i.fd, %i.du
  %i.ff = fdiv double %i.fe, %i.r                 ; 2 uses
  %i.fg = fmul double %i.ff, %i.ff
  %i.fh = tail call double @llvm.fmuladd.f64(double %i.fa, double %i.fa, double %i.fg)
  %i.fi = fcmp olt double %i.fh, 1.000000e+00
  br i1 %i.fi, label %bb.bd, label %.thread

bb.ba:                                            ; preds = %bb.aw
  %4 = fdiv double %i.ex, %i.l                    ; 2 uses
  %i.fj = zext nneg i32 %.1912 to i64
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.fj
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !12
  %i.fm = fsub double %i.fl, %i.dl
  %5 = fdiv double %i.fm, %i.o                    ; 2 uses
  %6 = fmul double %5, %5
  %i.fn = tail call double @llvm.fmuladd.f64(double %4, double %4, double %6) ; 2 uses
  br i1 %.not987, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fo = fcmp olt double %i.fn, 1.000000e+00
  br i1 %i.fo, label %bb.bd, label %.thread

bb.bc:                                            ; preds = %bb.ba
  %i.fp = zext nneg i32 %.1 to i64
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.fp
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !12
  %i.fs = fsub double %i.fr, %i.du
  %i.ft = fdiv double %i.fs, %i.r                 ; 2 uses
  %i.fu = tail call double @llvm.fmuladd.f64(double %i.ft, double %i.ft, double %i.fn)
  %i.fv = fcmp olt double %i.fu, 1.000000e+00
  br i1 %i.fv, label %bb.bd, label %.thread

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.az, %bb.ay, %bb.av, %bb.au, %bb.as, %bb.ar
  %i.fw = xor i32 %.1922, 1
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fx
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !12
  %i.ga = xor i32 %.1912, 1
  %i.gb = zext nneg i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.gb
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !12
  %i.ge = insertelement <2 x double> poison, double %i.fz, i64 0
  %i.gf = insertelement <2 x double> %i.ge, double %i.gd, i64 1
  %i.gg = insertelement <2 x double> poison, double %i.dc, i64 0
  %i.gh = insertelement <2 x double> %i.gg, double %i.dl, i64 1
  %i.gi = fsub <2 x double> %i.gf, %i.gh
  %7 = insertelement <2 x double> poison, double %i.l, i64 0
  %8 = insertelement <2 x double> %7, double %i.o, i64 1
  %i.gj = fdiv <2 x double> %i.gi, %8             ; 3 uses
  %foldExtExtBinop.a = fmul <2 x double> %i.gj, %i.gj
  %i.gk = extractelement <2 x double> %foldExtExtBinop.a, i64 1
  %i.gl = extractelement <2 x double> %i.gj, i64 0 ; 2 uses
  %i.gm = tail call double @llvm.fmuladd.f64(double %i.gl, double %i.gl, double %i.gk)
  %i.gn = xor i32 %.1, 1
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.go
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !12
  %i.gr = fsub double %i.gq, %i.du
  %i.gs = fdiv double %i.gr, %i.r                 ; 2 uses
  %i.gt = tail call double @llvm.fmuladd.f64(double %i.gs, double %i.gs, double %i.gm)
  %i.gu = fcmp ogt double %i.gt, 1.000000e+00     ; 2 uses
  %i.gv = icmp ne i32 %i.t, 2
  %or.cond = select i1 %i.gv, i1 %i.gu, i1 false
  br i1 %or.cond, label %bb.be, label %.thread

bb.be:                                            ; preds = %bb.bd
  switch i32 %i.t, label %.thread [
    i32 4, label %bb.bf
    i32 6, label %bb.bg
    i32 8, label %bb.bh
    i32 10, label %bb.bi
    i32 12, label %bb.bj
    i32 14, label %bb.bk
  ]

bb.bf:                                            ; preds = %bb.be
  %i.gw = load double, ptr %i.c, align 8, !tbaa !12
  %i.gx = fcmp olt double %i.gw, %i.dc
  br i1 %i.gx, label %.thread, label %.thread1062

bb.bg:                                            ; preds = %bb.be
  br i1 %i.de, label %.thread, label %.thread1062

bb.bh:                                            ; preds = %bb.be
  %i.gy = load double, ptr %i.d, align 8, !tbaa !12
  %i.gz = fcmp olt double %i.gy, %i.dl
  br i1 %i.gz, label %.thread, label %.thread1062

bb.bi:                                            ; preds = %bb.be
  br i1 %i.dn, label %.thread, label %.thread1062

bb.bj:                                            ; preds = %bb.be
  %i.ha = load double, ptr %i.f, align 8, !tbaa !12
  %i.hb = fcmp olt double %i.ha, %i.du
  br i1 %i.hb, label %.thread, label %.thread1062

.thread1062:                                      ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf
  br label %.thread

bb.bk:                                            ; preds = %bb.be
  br label %.thread

bb.bl:                                            ; preds = %bb.af
  %i.hc = add i32 %i.t, -16
  %or.cond1027 = icmp ult i32 %i.hc, -13
  %or.cond1028 = or i1 %or.cond1027, %.not
  br i1 %or.cond1028, label %bb.co, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hd = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.he = load double, ptr %i.hd, align 8, !tbaa !12 ; 4 uses
  %i.hf = load double, ptr %0, align 8, !tbaa !12
  %i.hg = fcmp olt double %i.he, %i.hf            ; 2 uses
  br i1 %i.hg, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.hh = load double, ptr %i.c, align 8, !tbaa !12
  %i.hi = fcmp ogt double %i.he, %i.hh            ; 2 uses
  %..0921 = select i1 %i.hi, i32 1, i32 %.09211112
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.not1002 = phi i1 [ true, %bb.bm ], [ %i.hi, %bb.bn ]
  %.2923 = phi i32 [ 0, %bb.bm ], [ %..0921, %bb.bn ] ; 10 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !12 ; 5 uses
  %i.hl = load double, ptr %i.e, align 8, !tbaa !12
  %i.hm = fcmp olt double %i.hk, %i.hl            ; 2 uses
  br i1 %i.hm, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hn = load double, ptr %i.d, align 8, !tbaa !12
  %i.ho = fcmp ogt double %i.hk, %i.hn            ; 2 uses
  %..0911 = select i1 %i.ho, i32 1, i32 %.09111113
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.not1003 = phi i1 [ true, %bb.bo ], [ %i.ho, %bb.bp ] ; 2 uses
  %.2913 = phi i32 [ 0, %bb.bo ], [ %..0911, %bb.bp ] ; 11 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !12 ; 7 uses
  %i.hr = load double, ptr %i.g, align 8, !tbaa !12
  %i.hs = fcmp uge double %i.hq, %i.hr            ; 2 uses
  br i1 %i.hs, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.ht = load double, ptr %i.f, align 8, !tbaa !12
  %i.hu = fcmp ogt double %i.hq, %i.ht            ; 2 uses
  %..0 = select i1 %i.hu, i32 1, i32 %.01114
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.not1004 = phi i1 [ true, %bb.bq ], [ %i.hu, %bb.br ] ; 4 uses
  %.2 = phi i32 [ 0, %bb.bq ], [ %..0, %bb.br ]   ; 13 uses
  br i1 %.not1002, label %bb.bz, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  br i1 %.not1003, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  br i1 %.not1004, label %bb.bv, label %bb.cg

bb.bv:                                            ; preds = %bb.bu
  %i.hv = sext i32 %.2 to i64
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.hv
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !12
  %i.hy = fsub double %i.hx, %i.hq
  %i.hz = tail call double @llvm.fabs.f64(double %i.hy)
  %i.ia = fcmp olt double %i.hz, %i.r
  br label %bb.cg

bb.bw:                                            ; preds = %bb.bt
  %i.ib = sext i32 %.2913 to i64
  %i.ic = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ib
  %i.id = load double, ptr %i.ic, align 8, !tbaa !12
  %i.ie = fsub double %i.id, %i.hk                ; 2 uses
  br i1 %.not1004, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.if = tail call double @llvm.fabs.f64(double %i.ie)
  %i.ig = fcmp olt double %i.if, %i.o
  br label %bb.cg

bb.by:                                            ; preds = %bb.bw
  %9 = fdiv double %i.ie, %i.o                    ; 2 uses
  %i.ih = sext i32 %.2 to i64
  %i.ii = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ih
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !12
  %i.ik = fsub double %i.ij, %i.hq
  %10 = fdiv double %i.ik, %i.r                   ; 2 uses
  %11 = fmul double %10, %10
  %i.il = tail call double @llvm.fmuladd.f64(double %9, double %9, double %11)
  %i.im = fcmp olt double %i.il, 1.000000e+00
  br label %bb.cg

bb.bz:                                            ; preds = %bb.bs
  %i.in = sext i32 %.2923 to i64
  %i.io = getelementptr inbounds [8 x i8], ptr %0, i64 %i.in
  %i.ip = load double, ptr %i.io, align 8, !tbaa !12
  %i.iq = fsub double %i.ip, %i.he                ; 3 uses
  br i1 %.not1003, label %bb.cd, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  br i1 %.not1004, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ir = tail call double @llvm.fabs.f64(double %i.iq)
  %i.is = fcmp olt double %i.ir, %i.l
  br label %bb.cg

bb.cc:                                            ; preds = %bb.ca
  %i.it = fdiv double %i.iq, %i.l                 ; 2 uses
  %i.iu = sext i32 %.2 to i64
  %i.iv = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.iu
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !12
  %i.ix = fsub double %i.iw, %i.hq
  %i.iy = fdiv double %i.ix, %i.r                 ; 2 uses
  %i.iz = fmul double %i.iy, %i.iy
  %i.ja = tail call double @llvm.fmuladd.f64(double %i.it, double %i.it, double %i.iz)
  %i.jb = fcmp olt double %i.ja, 1.000000e+00
  br label %bb.cg

bb.cd:                                            ; preds = %bb.bz
  %12 = fdiv double %i.iq, %i.l                   ; 2 uses
  %i.jc = sext i32 %.2913 to i64
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.jc
  %i.je = load double, ptr %i.jd, align 8, !tbaa !12
  %i.jf = fsub double %i.je, %i.hk
  %13 = fdiv double %i.jf, %i.o                   ; 2 uses
  %14 = fmul double %13, %13
  %i.jg = tail call double @llvm.fmuladd.f64(double %12, double %12, double %14) ; 2 uses
  br i1 %.not1004, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.jh = fcmp olt double %i.jg, 1.000000e+00
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cd
  %i.ji = sext i32 %.2 to i64
  %i.jj = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ji
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !12
  %i.jl = fsub double %i.jk, %i.hq
  %i.jm = fdiv double %i.jl, %i.r                 ; 2 uses
  %i.jn = tail call double @llvm.fmuladd.f64(double %i.jm, double %i.jm, double %i.jg)
  %i.jo = fcmp olt double %i.jn, 1.000000e+00
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %bb.cc, %bb.cb, %bb.by, %bb.bx, %bb.bv, %bb.bu
  %.2929.shrunk = phi i1 [ %i.jb, %bb.cc ], [ true, %bb.bu ], [ %i.jo, %bb.cf ], [ %i.ia, %bb.bv ], [ %i.is, %bb.cb ], [ %i.ig, %bb.bx ], [ %i.jh, %bb.ce ], [ %i.im, %bb.by ] ; 2 uses
  %i.jp = icmp ne i32 %i.t, 3
  %or.cond3 = select i1 %i.jp, i1 %.2929.shrunk, i1 false
  br i1 %or.cond3, label %bb.ch, label %.thread

bb.ch:                                            ; preds = %bb.cg
  switch i32 %i.t, label %.thread [
    i32 5, label %bb.ci
    i32 7, label %bb.cj
    i32 9, label %bb.ck
    i32 11, label %bb.cl
    i32 13, label %bb.cm
    i32 15, label %bb.cn
  ]

bb.ci:                                            ; preds = %bb.ch
  %i.jq = load double, ptr %i.c, align 8, !tbaa !12
  %i.jr = fcmp olt double %i.jq, %i.he
  br i1 %i.jr, label %.thread, label %.thread1071

bb.cj:                                            ; preds = %bb.ch
  br i1 %i.hg, label %.thread, label %.thread1071

bb.ck:                                            ; preds = %bb.ch
  %i.js = load double, ptr %i.d, align 8, !tbaa !12
  %i.jt = fcmp olt double %i.js, %i.hk
  br i1 %i.jt, label %.thread, label %.thread1071

bb.cl:                                            ; preds = %bb.ch
  br i1 %i.hm, label %.thread, label %.thread1071

bb.cm:                                            ; preds = %bb.ch
  %i.ju = load double, ptr %i.f, align 8, !tbaa !12
  %i.jv = fcmp olt double %i.ju, %i.hq
  br i1 %i.jv, label %.thread, label %.thread1071

.thread1071:                                      ; preds = %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci
  br label %.thread

bb.cn:                                            ; preds = %bb.ch
  br label %.thread

bb.co:                                            ; preds = %bb.bl
  switch i32 %i.t, label %bb.ec [
    i32 24, label %bb.cq
    i32 22, label %bb.cp
    i32 20, label %bb.cr
    i32 21, label %bb.dv
    i32 23, label %bb.dt
    i32 25, label %bb.du
  ]

bb.cp:                                            ; preds = %bb.co
  br label %bb.cr

bb.cq:                                            ; preds = %bb.co
  br label %bb.cr

bb.cr:                                            ; preds = %bb.co, %bb.cp, %bb.cq
  %.0935 = phi i64 [ 2, %bb.cq ], [ 1, %bb.cp ], [ 0, %bb.co ] ; 3 uses
  %.0933 = phi i64 [ 0, %bb.cq ], [ 2, %bb.cp ], [ 1, %bb.co ] ; 8 uses
  %.0931 = phi i64 [ 1, %bb.cq ], [ 0, %bb.cp ], [ 2, %bb.co ] ; 8 uses
  %i.jw = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0935 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !12
  %i.jz = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %.0935
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !12 ; 2 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.0935
  %i.kd = load double, ptr %i.kc, align 8, !tbaa !12 ; 2 uses
  %i.ke = fsub double %i.kb, %i.kd
  %i.kf = fcmp ogt double %i.jy, %i.ke
  br i1 %i.kf, label %bb.cs, label %.thread

bb.cs:                                            ; preds = %bb.cr
  %i.kg = load double, ptr %i.jw, align 8, !tbaa !12
  %i.kh = fadd double %i.kb, %i.kd
  %i.ki = fcmp olt double %i.kg, %i.kh
  br i1 %i.ki, label %bb.ct, label %.thread

bb.ct:                                            ; preds = %bb.cs
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %.0933
  %i.kk = load double, ptr %i.kj, align 8, !tbaa !12 ; 9 uses
  %i.kl = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0933 ; 8 uses
  %i.km = load double, ptr %i.kl, align 8, !tbaa !12 ; 2 uses
  %i.kn = fcmp olt double %i.kk, %i.km
  br i1 %i.kn, label %bb.cw, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !12 ; 2 uses
  %i.kq = fcmp ogt double %i.kk, %i.kp
  br i1 %i.kq, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.kr = fadd double %i.km, %i.kp
  %i.ks = fmul double %i.kr, 5.000000e-01
  %i.kt = fcmp uge double %i.kk, %i.ks
  %.1040 = zext i1 %i.kt to i32
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu, %bb.ct
  %.not996 = phi i1 [ true, %bb.cu ], [ true, %bb.ct ], [ false, %bb.cv ] ; 2 uses
  %.3914 = phi i32 [ 1, %bb.cu ], [ 0, %bb.ct ], [ %.1040, %bb.cv ] ; 17 uses
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %.0931
  %i.kv = load double, ptr %i.ku, align 8, !tbaa !12 ; 11 uses
  %i.kw = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0931 ; 10 uses
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !12 ; 2 uses
  %i.ky = fcmp olt double %i.kv, %i.kx
  br i1 %i.ky, label %bb.cz, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %i.la = load double, ptr %i.kz, align 8, !tbaa !12 ; 2 uses
  %i.lb = fcmp ogt double %i.kv, %i.la
  br i1 %i.lb, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.lc = fadd double %i.kx, %i.la
  %i.ld = fmul double %i.lc, 5.000000e-01
  %i.le = fcmp uge double %i.kv, %i.ld
  %.1041 = zext i1 %i.le to i32
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx, %bb.cw
  %.not997 = phi i1 [ true, %bb.cx ], [ true, %bb.cw ], [ false, %bb.cy ] ; 4 uses
  %.3 = phi i32 [ 1, %bb.cx ], [ 0, %bb.cw ], [ %.1041, %bb.cy ] ; 19 uses
  %i.lf = load double, ptr %0, align 8, !tbaa !12 ; 2 uses
  %i.lg = load double, ptr %i.jz, align 8, !tbaa !12 ; 3 uses
  %i.lh = fsub double %i.lg, %i.l                 ; 2 uses
  %i.li = fcmp olt double %i.lf, %i.lh
  br i1 %i.li, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.lj = load double, ptr %i.c, align 8, !tbaa !12
  %i.lk = fadd double %i.l, %i.lg
  %i.ll = fcmp olt double %i.lj, %i.lk
  br i1 %i.ll, label %bb.dd, label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.lm = fcmp ogt double %i.lf, %i.lh
  br i1 %i.lm, label %bb.dc, label %bb.dj

bb.dc:                                            ; preds = %bb.db
  %i.ln = load double, ptr %i.c, align 8, !tbaa !12
  %i.lo = fadd double %i.l, %i.lg
  %i.lp = fcmp ogt double %i.ln, %i.lo
  br i1 %i.lp, label %bb.dd, label %bb.dj

bb.dd:                                            ; preds = %bb.dc, %bb.da
  br i1 %.not996, label %bb.dg, label %bb.de

bb.de:                                            ; preds = %bb.dd
  br i1 %.not997, label %bb.df, label %.thread

bb.df:                                            ; preds = %bb.de
  %i.lq = zext nneg i32 %.3 to i64
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %i.lq
  %i.ls = load double, ptr %i.lr, align 8, !tbaa !12
  %i.lt = fsub double %i.ls, %i.kv
  %i.lu = tail call double @llvm.fabs.f64(double %i.lt)
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.0931
  %i.lw = load double, ptr %i.lv, align 8, !tbaa !12
  %i.lx = fcmp olt double %i.lu, %i.lw
  br label %.thread

bb.dg:                                            ; preds = %bb.dd
  %i.ly = zext nneg i32 %.3914 to i64
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %i.ly
  %i.ma = load double, ptr %i.lz, align 8, !tbaa !12
  %i.mb = fsub double %i.ma, %i.kk                ; 2 uses
  br i1 %.not997, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.mc = tail call double @llvm.fabs.f64(double %i.mb)
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.0933
  %i.me = load double, ptr %i.md, align 8, !tbaa !12
  %i.mf = fcmp olt double %i.mc, %i.me
  br label %.thread

bb.di:                                            ; preds = %bb.dg
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.0933
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !12
end_hunk_0
