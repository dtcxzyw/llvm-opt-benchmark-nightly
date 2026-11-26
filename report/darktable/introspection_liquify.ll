Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_liquify?download=true
inline.NumInlined: 223
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 19
begin_hunk_0_@smooth_paths_linsys:bb.a
  %i.q = tail call noalias ptr @calloc(i64 noundef %i.n, i64 noundef 8) #34 ; 8 uses
  %i.r = tail call noalias ptr @calloc(i64 noundef %i.n, i64 noundef 4) #34 ; 16 uses
  br label %bb.e

bb.e:                                             ; preds = %path_length.exit, %bb.aj
  %.0191 = phi i64 [ 0, %path_length.exit ], [ %i.bm, %bb.aj ] ; 14 uses
  %.0161190 = phi ptr [ %i.a, %path_length.exit ], [ %i.x, %bb.aj ] ; 7 uses
  %i.s = getelementptr i8, ptr %.0161190, i64 16
  %.0161.val = load i8, ptr %i.s, align 4, !tbaa !139
  %i.t = icmp eq i8 %.0161.val, -1
  %i.u = getelementptr i8, ptr %.0161190, i64 18
  %.0161.val177 = load i8, ptr %i.u, align 2, !tbaa !177 ; 2 uses
  %i.v = icmp eq i8 %.0161.val177, -1
  %i.w = sext i8 %.0161.val177 to i64
  %i.x = getelementptr inbounds [76 x i8], ptr %0, i64 %i.w ; 4 uses
  %.not170 = or i1 %i.v, %.not170201              ; 4 uses
  br i1 %.not170, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr i8, ptr %i.x, i64 18
  %.val176 = load i8, ptr %i.y, align 2, !tbaa !177 ; 2 uses
  %i.z = icmp eq i8 %.val176, -1
  %i.aa = sext i8 %.val176 to i64
  %i.ab = getelementptr inbounds [76 x i8], ptr %0, i64 %i.aa
  %.0.i179 = select i1 %i.z, ptr null, ptr %i.ab
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ac = phi ptr [ %.0.i179, %bb.f ], [ null, %bb.e ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0161190, i64 20
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.0191
  %i.af = load <2 x float>, ptr %i.ad, align 4
  store <2 x float> %i.af, ptr %i.ae, align 4
  %i.ag = load i32, ptr %.0161190, align 4, !tbaa !140
  %i.ah = icmp ne i32 %i.ag, 3                    ; 2 uses
  br i1 %i.ah, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %.0161190, i64 60
  %i.aj = add i64 %.0191, -1                      ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.aj
  %i.al = load <2 x float>, ptr %i.ai, align 4
  store <2 x float> %i.al, ptr %i.ak, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %.0161190, i64 68
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.aj
  %i.ao = load <2 x float>, ptr %i.am, align 4
  store <2 x float> %i.ao, ptr %i.an, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %.0161190, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !145
  %i.ar = icmp eq i32 %i.aq, 3                    ; 5 uses
  br i1 %.not170, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !145
  %i.au = icmp eq i32 %i.at, 3
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.av = phi i1 [ false, %bb.i ], [ %i.au, %bb.j ] ; 9 uses
  %.not171 = or i1 %.not171189, %i.t
  %spec.select = or i1 %.not171, %i.ah            ; 2 uses
  %.not172 = icmp eq ptr %i.ac, null
  br i1 %.not172, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = load i32, ptr %i.ac, align 4, !tbaa !140
  %i.ax = icmp ne i32 %i.aw, 3
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ay = phi i1 [ true, %bb.k ], [ %i.ax, %bb.l ] ; 3 uses
  br i1 %.not170, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = load i32, ptr %i.x, align 4, !tbaa !140
  %i.ba = icmp eq i32 %i.az, 2
  br i1 %i.ba, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.0191
  store i32 5, ptr %i.bb, align 4, !tbaa !11
  br label %bb.aj

.critedge:                                        ; preds = %bb.m, %bb.n
  %or.cond = select i1 %i.ar, i1 true, i1 %i.av
  br i1 %or.cond, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.critedge
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.0191
  store i32 5, ptr %i.bc, align 4, !tbaa !11
  br label %bb.aj

bb.q:                                             ; preds = %.critedge
  %or.cond3 = select i1 %spec.select, i1 %i.ay, i1 false ; 2 uses
  %.not173 = xor i1 %i.ar, true                   ; 4 uses
  %or.cond5.not = select i1 %or.cond3, i1 %.not173, i1 false
  %or.cond7 = select i1 %or.cond5.not, i1 %i.av, i1 false
  br i1 %or.cond7, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.0191
  store i32 7, ptr %i.bd, align 4, !tbaa !11
  br label %bb.aj

bb.s:                                             ; preds = %bb.q
  %or.cond11 = select i1 %or.cond3, i1 %i.ar, i1 false ; 2 uses
  %or.cond13 = select i1 %or.cond11, i1 %i.av, i1 false
  br i1 %or.cond13, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.0191
  store i32 8, ptr %i.be, align 4, !tbaa !11
  br label %bb.aj

bb.u:                                             ; preds = %bb.s
  %or.cond17.not = xor i1 %or.cond11, true
  %or.cond19 = select i1 %or.cond17.not, i1 true, i1 %i.av
  br i1 %or.cond19, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.0191
  store i32 9, ptr %i.bf, align 4, !tbaa !11
  br label %bb.aj

bb.w:                                             ; preds = %bb.u
  %or.cond21 = select i1 %spec.select, i1 %i.ar, i1 false ; 2 uses
  %or.cond21.not = xor i1 %or.cond21, true
  %or.cond23 = select i1 %or.cond21.not, i1 true, i1 %i.av
  br i1 %or.cond23, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.0191
  store i32 5, ptr %i.bg, align 4, !tbaa !11
  br label %bb.aj

bb.y:                                             ; preds = %bb.w
  br i1 %or.cond21, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.0191
  store i32 1, ptr %i.bh, align 4, !tbaa !11
  br label %bb.aj

bb.aa:                                            ; preds = %bb.y
  %or.cond27 = select i1 %i.ay, i1 %i.ar, i1 false
  %or.cond29 = select i1 %or.cond27, i1 %i.av, i1 false
  br i1 %or.cond29, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.0191
  store i32 3, ptr %i.bi, align 4, !tbaa !11
  br label %bb.aj

bb.ac:                                            ; preds = %bb.aa
  %or.cond31.not = select i1 %i.ay, i1 %.not173, i1 false
  %or.cond33 = select i1 %or.cond31.not, i1 %i.av, i1 false
  br i1 %or.cond33, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.0191
  store i32 7, ptr %i.bj, align 4, !tbaa !11
  br label %bb.aj

bb.ae:                                            ; preds = %bb.ac
  %or.cond35 = select i1 %.not173, i1 true, i1 %i.av
  br i1 %or.cond35, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.0191
  store i32 6, ptr %i.bk, align 4, !tbaa !11
  br label %bb.aj

bb.ag:                                            ; preds = %bb.ae
  %or.cond37 = select i1 %.not173, i1 %i.av, i1 false
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.0191 ; 2 uses
  br i1 %or.cond37, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 4, ptr %i.bl, align 4, !tbaa !11
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  store i32 2, ptr %i.bl, align 4, !tbaa !11
  br label %bb.aj

bb.aj:                                            ; preds = %bb.p, %bb.t, %bb.x, %bb.ab, %bb.af, %bb.ai, %bb.ah, %bb.ad, %bb.z, %bb.v, %bb.r, %bb.o
  %i.bm = add i64 %.0191, 1
  br i1 %.not170, label %bb.ak, label %bb.e

bb.ak:                                            ; preds = %bb.aj
  %i.bn = zext nneg i32 %.06.i to i64             ; 5 uses
  %i.bo = shl nuw nsw i64 %i.bn, 2                ; 3 uses
  %i.bp = tail call noalias ptr @malloc(i64 noundef %i.bo) #32 ; 13 uses
  %i.bq = tail call noalias ptr @malloc(i64 noundef %i.bo) #32 ; 20 uses
  %i.br = tail call noalias ptr @malloc(i64 noundef %i.bo) #32 ; 18 uses
  %i.bs = shl nuw nsw i64 %i.bn, 3
  %i.bt = tail call noalias ptr @malloc(i64 noundef %i.bs) #32 ; 14 uses
  br label %.lr.ph.i182

.preheader179.i:                                  ; preds = %bb.au
  %.not215.i = icmp eq i32 %.06.i, 1
  br i1 %.not215.i, label %._crit_edge.i, label %.lr.ph182.preheader.i

.lr.ph182.preheader.i:                            ; preds = %.preheader179.i
  %.pre.i = load float, ptr %i.bq, align 4        ; 2 uses
  %xtraiter = and i64 %indvar, 1
  %i.bu = icmp eq i64 %indvar, 1
  br i1 %i.bu, label %.lr.ph182.i.epil.preheader, label %.lr.ph182.preheader.i.new

.lr.ph182.preheader.i.new:                        ; preds = %.lr.ph182.preheader.i
  %unroll_iter = and i64 %indvar, -2
  br label %.lr.ph182.i

.lr.ph.i182:                                      ; preds = %bb.ak, %bb.au
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.au ], [ 0, %bb.ak ] ; 41 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !11
  switch i32 %i.bw, label %bb.au [
    i32 1, label %bb.al
    i32 2, label %bb.am
    i32 3, label %bb.an
    i32 4, label %bb.ao
    i32 5, label %bb.ap
    i32 6, label %bb.aq
    i32 7, label %bb.ar
    i32 8, label %bb.as
    i32 9, label %bb.at
  ]

bb.al:                                            ; preds = %.lr.ph.i182
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.i
  store float 0.000000e+00, ptr %i.bx, align 4, !tbaa !13
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.i
  store float 2.000000e+00, ptr %i.by, align 4, !tbaa !13
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.i
  store float 1.000000e+00, ptr %i.bz, align 4, !tbaa !13
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load <2 x float>, ptr %i.ca, align 4
  %i.cd = load <2 x float>, ptr %i.cb, align 4
  %i.ce = fmul reassoc nsz arcp contract afn <2 x float> %i.cd, splat (float 2.000000e+00)
  %i.cf = fadd reassoc nsz arcp contract afn <2 x float> %i.ce, %i.cc
  br label %.sink.split.i

bb.am:                                            ; preds = %.lr.ph.i182
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.i
  store float 1.000000e+00, ptr %i.cg, align 4, !tbaa !13
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.i
  store float 4.000000e+00, ptr %i.ch, align 4, !tbaa !13
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.i
  store float 1.000000e+00, ptr %i.ci, align 4, !tbaa !13
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load <2 x float>, ptr %i.cj, align 4
  %i.cm = fmul reassoc nsz arcp contract afn <2 x float> %i.cl, splat (float 4.000000e+00)
  %i.cn = load <2 x float>, ptr %i.ck, align 4
  %i.co = fmul reassoc nsz arcp contract afn <2 x float> %i.cn, splat (float 2.000000e+00)
  %i.cp = fadd reassoc nsz arcp contract afn <2 x float> %i.co, %i.cm
  br label %.sink.split.i

bb.an:                                            ; preds = %.lr.ph.i182
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.i
  store float 2.000000e+00, ptr %i.cq, align 4, !tbaa !13
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.i
  store float 7.000000e+00, ptr %i.cr, align 4, !tbaa !13
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.i
  store float 0.000000e+00, ptr %i.cs, align 4, !tbaa !13
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load <2 x float>, ptr %i.ct, align 4
  %i.cw = fmul reassoc nsz arcp contract afn <2 x float> %i.cv, splat (float 8.000000e+00)
  %i.cx = load <2 x float>, ptr %i.cu, align 4
  %i.cy = fadd reassoc nsz arcp contract afn <2 x float> %i.cx, %i.cw
  br label %.sink.split.i

bb.ao:                                            ; preds = %.lr.ph.i182
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.i
  store float 0.000000e+00, ptr %i.cz, align 4, !tbaa !13
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.i
  store float 1.000000e+00, ptr %i.da, align 4, !tbaa !13
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.i
  store float 0.000000e+00, ptr %i.db, align 4, !tbaa !13
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.dd = load <2 x float>, ptr %i.dc, align 4
  br label %.sink.split.i

bb.ap:                                            ; preds = %.lr.ph.i182
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.i
  store float 0.000000e+00, ptr %i.de, align 4, !tbaa !13
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.i
  store float 1.000000e+00, ptr %i.df, align 4, !tbaa !13
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.i
  store float 0.000000e+00, ptr %i.dg, align 4, !tbaa !13
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.di = load <2 x float>, ptr %i.dh, align 4
  br label %.sink.split.i

bb.aq:                                            ; preds = %.lr.ph.i182
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.i
  store float 1.000000e+00, ptr %i.dj, align 4, !tbaa !13
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.i
  store float 4.000000e+00, ptr %i.dk, align 4, !tbaa !13
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.i
  store float 0.000000e+00, ptr %i.dl, align 4, !tbaa !13
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.do = load <2 x float>, ptr %i.dm, align 4
  %i.dp = fmul reassoc nsz arcp contract afn <2 x float> %i.do, splat (float 4.000000e+00)
  %i.dq = load <2 x float>, ptr %i.dn, align 4
  %i.dr = fadd reassoc nsz arcp contract afn <2 x float> %i.dq, %i.dp
  br label %.sink.split.i

bb.ar:                                            ; preds = %.lr.ph.i182
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.i
  store float 0.000000e+00, ptr %i.ds, align 4, !tbaa !13
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.i
  store float 1.000000e+00, ptr %i.dt, align 4, !tbaa !13
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.i
  store float 0.000000e+00, ptr %i.du, align 4, !tbaa !13
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.dw = load <2 x float>, ptr %i.dv, align 4
  br label %.sink.split.i

bb.as:                                            ; preds = %.lr.ph.i182
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.i
  store float 0.000000e+00, ptr %i.dx, align 4, !tbaa !13
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.i
  store float 3.000000e+00, ptr %i.dy, align 4, !tbaa !13
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.i
  store float 0.000000e+00, ptr %i.dz, align 4, !tbaa !13
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load <2 x float>, ptr %i.ea, align 4
  %i.ed = fmul reassoc nsz arcp contract afn <2 x float> %i.ec, splat (float 2.000000e+00)
  %i.ee = load <2 x float>, ptr %i.eb, align 4
  %i.ef = fadd reassoc nsz arcp contract afn <2 x float> %i.ee, %i.ed
  br label %.sink.split.i

bb.at:                                            ; preds = %.lr.ph.i182
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.i
  store float 0.000000e+00, ptr %i.eg, align 4, !tbaa !13
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.i
  store float 2.000000e+00, ptr %i.eh, align 4, !tbaa !13
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.i
  store float 0.000000e+00, ptr %i.ei, align 4, !tbaa !13
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.el = load <2 x float>, ptr %i.ej, align 4
  %i.em = load <2 x float>, ptr %i.ek, align 4
  %i.en = fadd reassoc nsz arcp contract afn <2 x float> %i.em, %i.el
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al
  %i.eo = phi <2 x float> [ %i.en, %bb.at ], [ %i.ef, %bb.as ], [ %i.dw, %bb.ar ], [ %i.dr, %bb.aq ], [ %i.di, %bb.ap ], [ %i.dd, %bb.ao ], [ %i.cy, %bb.an ], [ %i.cp, %bb.am ], [ %i.cf, %bb.al ]
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.i
  store <2 x float> %i.eo, ptr %i.ep, align 4
  br label %bb.au

bb.au:                                            ; preds = %.sink.split.i, %.lr.ph.i182
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.bn
  br i1 %exitcond.not.i, label %.preheader179.i, label %.lr.ph.i182

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph182.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph182.i.epil.preheader

.lr.ph182.i.epil.preheader:                       ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph182.preheader.i
  %.epil.init = phi float [ %.pre.i, %.lr.ph182.preheader.i ], [ %i.hh, %._crit_edge.i.loopexit.unr-lcssa ]
  %indvars.iv191.i.epil.init = phi i64 [ 1, %.lr.ph182.preheader.i ], [ %indvars.iv.next192.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod204 = trunc i64 %indvar to i1
  tail call void @llvm.assume(i1 %lcmp.mod204)
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv191.i.epil.init
  %i.er = load float, ptr %i.eq, align 4, !tbaa !13
  %1 = add nsw i64 %indvars.iv191.i.epil.init, -1 ; 2 uses
  %i.es = fdiv reassoc nsz arcp contract afn float %i.er, %.epil.init ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv191.i.epil.init ; 2 uses
  %i.eu = load float, ptr %i.et, align 4, !tbaa !13
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.br, i64 %1
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !13
  %i.ex = fmul reassoc nsz arcp contract afn float %i.ew, %i.es
  %i.ey = fsub reassoc nsz arcp contract afn float %i.eu, %i.ex
  store float %i.ey, ptr %i.et, align 4, !tbaa !13
  %2 = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv191.i.epil.init ; 2 uses
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %1
  %3 = load <2 x float>, ptr %2, align 4
  %i.fa = load <2 x float>, ptr %i.ez, align 4
  %i.fb = insertelement <2 x float> poison, float %i.es, i64 0
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fd = fmul reassoc nsz arcp contract afn <2 x float> %i.fa, %i.fc
  %i.fe = fsub reassoc nsz arcp contract afn <2 x float> %3, %i.fd
  store <2 x float> %i.fe, ptr %2, align 4
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph182.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %.preheader179.i
  %i.ff = add nsw i64 %i.n, -2                    ; 3 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.ff
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ff
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !13
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ff
  %i.fk = load <2 x float>, ptr %i.fg, align 4
  %i.fl = insertelement <2 x float> poison, float %i.fi, i64 0
  %i.fm = shufflevector <2 x float> %i.fl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fn = fdiv reassoc nsz arcp contract afn <2 x float> %i.fk, %i.fm
  store <2 x float> %i.fn, ptr %i.fj, align 4
  %i.fo = icmp samesign ugt i32 %.06.i, 1
  br i1 %i.fo, label %.lr.ph185.preheader.i, label %.lr.ph187.i.preheader

.lr.ph185.preheader.i:                            ; preds = %._crit_edge.i
  %i.fp = add nsw i32 %.06.i, -2                  ; 2 uses
  %i.fq = zext i32 %i.fp to i64                   ; 3 uses
  %i.fr = add nuw nsw i64 %i.fq, 1
  %xtraiter205.a = and i64 %i.fr, 3               ; 2 uses
  %lcmp.mod206.not.a = icmp eq i64 %xtraiter205.a, 0
  br i1 %lcmp.mod206.not.a, label %.lr.ph185.i.prol.loopexit, label %.lr.ph185.i.prol

.lr.ph185.i.prol:                                 ; preds = %.lr.ph185.preheader.i, %.lr.ph185.i.prol
  %indvars.iv195.i.prol = phi i64 [ %indvars.iv.next196.i.prol, %.lr.ph185.i.prol ], [ %i.fq, %.lr.ph185.preheader.i ] ; 5 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph185.i.prol ], [ 0, %.lr.ph185.preheader.i ]
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv195.i.prol
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv195.i.prol
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !13
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv195.i.prol ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv195.i.prol
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !13
  %i.fz = load <2 x float>, ptr %i.fs, align 4
  %i.ga = load <2 x float>, ptr %i.fw, align 4
  %i.gb = insertelement <2 x float> poison, float %i.fu, i64 0
  %i.gc = shufflevector <2 x float> %i.gb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gd = fmul reassoc nsz arcp contract afn <2 x float> %i.ga, %i.gc
  %i.ge = fsub reassoc nsz arcp contract afn <2 x float> %i.fz, %i.gd
  %i.gf = insertelement <2 x float> poison, float %i.fy, i64 0
  %i.gg = shufflevector <2 x float> %i.gf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gh = fdiv reassoc nsz arcp contract afn <2 x float> %i.ge, %i.gg
  store <2 x float> %i.gh, ptr %i.fv, align 4
  %indvars.iv.next196.i.prol = add nsw i64 %indvars.iv195.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter205.a
  br i1 %prol.iter.cmp.not, label %.lr.ph185.i.prol.loopexit, label %.lr.ph185.i.prol, !llvm.loop !231

.lr.ph185.i.prol.loopexit:                        ; preds = %.lr.ph185.i.prol, %.lr.ph185.preheader.i
  %indvars.iv195.i.unr = phi i64 [ %i.fq, %.lr.ph185.preheader.i ], [ %indvars.iv.next196.i.prol, %.lr.ph185.i.prol ]
  %i.gi = icmp ult i32 %i.fp, 3
  br i1 %i.gi, label %.lr.ph187.i.preheader, label %.lr.ph185.i

.lr.ph182.i:                                      ; preds = %.lr.ph182.i, %.lr.ph182.preheader.i.new
  %i.gj = phi float [ %.pre.i, %.lr.ph182.preheader.i.new ], [ %i.hh, %.lr.ph182.i ]
  %indvars.iv191.i = phi i64 [ 1, %.lr.ph182.preheader.i.new ], [ %indvars.iv.next192.i.1, %.lr.ph182.i ] ; 8 uses
  %niter = phi i64 [ 0, %.lr.ph182.preheader.i.new ], [ %niter.next.1, %.lr.ph182.i ]
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv191.i
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !13
  %4 = add nsw i64 %indvars.iv191.i, -1           ; 2 uses
  %i.gm = fdiv reassoc nsz arcp contract afn float %i.gl, %i.gj ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv191.i ; 2 uses
  %i.go = load float, ptr %i.gn, align 4, !tbaa !13
  %i.gp = getelementptr inbounds [4 x i8], ptr %i.br, i64 %4
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !13
  %i.gr = fmul reassoc nsz arcp contract afn float %i.gq, %i.gm
  %i.gs = fsub reassoc nsz arcp contract afn float %i.go, %i.gr ; 2 uses
  store float %i.gs, ptr %i.gn, align 4, !tbaa !13
  %5 = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv191.i ; 2 uses
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %4
  %6 = load <2 x float>, ptr %5, align 4
  %i.gu = load <2 x float>, ptr %i.gt, align 4
  %i.gv = insertelement <2 x float> poison, float %i.gm, i64 0
  %i.gw = shufflevector <2 x float> %i.gv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gx = fmul reassoc nsz arcp contract afn <2 x float> %i.gu, %i.gw
  %i.gy = fsub reassoc nsz arcp contract afn <2 x float> %6, %i.gx
  store <2 x float> %i.gy, ptr %5, align 4
  %indvars.iv.next192.i = add nuw nsw i64 %indvars.iv191.i, 1 ; 3 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.next192.i
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !13
  %i.hb = fdiv reassoc nsz arcp contract afn float %i.ha, %i.gs ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.next192.i ; 2 uses
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !13
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv191.i
  %i.hf = load float, ptr %i.he, align 4, !tbaa !13
  %i.hg = fmul reassoc nsz arcp contract afn float %i.hf, %i.hb
  %i.hh = fsub reassoc nsz arcp contract afn float %i.hd, %i.hg ; 3 uses
  store float %i.hh, ptr %i.hc, align 4, !tbaa !13
  %7 = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next192.i ; 2 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv191.i
  %8 = load <2 x float>, ptr %7, align 4
  %i.hj = load <2 x float>, ptr %i.hi, align 4
  %i.hk = insertelement <2 x float> poison, float %i.hb, i64 0
  %i.hl = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hm = fmul reassoc nsz arcp contract afn <2 x float> %i.hj, %i.hl
  %i.hn = fsub reassoc nsz arcp contract afn <2 x float> %8, %i.hm
  store <2 x float> %i.hn, ptr %7, align 4
  %indvars.iv.next192.i.1 = add nuw nsw i64 %indvars.iv191.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph182.i

.lr.ph185.i:                                      ; preds = %.lr.ph185.i.prol.loopexit, %.lr.ph185.i
  %indvars.iv195.i = phi i64 [ %indvars.iv.next196.i.3, %.lr.ph185.i ], [ %indvars.iv195.i.unr, %.lr.ph185.i.prol.loopexit ] ; 8 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv195.i
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv195.i
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !13
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv195.i ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv195.i
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !13
  %i.hv = load <2 x float>, ptr %i.ho, align 4
  %i.hw = load <2 x float>, ptr %i.hs, align 4
  %i.hx = insertelement <2 x float> poison, float %i.hq, i64 0
  %i.hy = shufflevector <2 x float> %i.hx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hz = fmul reassoc nsz arcp contract afn <2 x float> %i.hw, %i.hy
  %i.ia = fsub reassoc nsz arcp contract afn <2 x float> %i.hv, %i.hz
  %i.ib = insertelement <2 x float> poison, float %i.hu, i64 0
  %i.ic = shufflevector <2 x float> %i.ib, <2 x float> poison, <2 x i32> zeroinitializer
  %i.id = fdiv reassoc nsz arcp contract afn <2 x float> %i.ia, %i.ic
  store <2 x float> %i.id, ptr %i.hr, align 4
  %indvars.iv.next196.i = add nsw i64 %indvars.iv195.i, -1 ; 4 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next196.i
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.next196.i
  %i.ig = load float, ptr %i.if, align 4, !tbaa !13
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next196.i ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.next196.i
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !13
  %i.il = load <2 x float>, ptr %i.ie, align 4
  %i.im = load <2 x float>, ptr %i.ii, align 4
  %i.in = insertelement <2 x float> poison, float %i.ig, i64 0
  %i.io = shufflevector <2 x float> %i.in, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ip = fmul reassoc nsz arcp contract afn <2 x float> %i.im, %i.io
  %i.iq = fsub reassoc nsz arcp contract afn <2 x float> %i.il, %i.ip
  %i.ir = insertelement <2 x float> poison, float %i.ik, i64 0
  %i.is = shufflevector <2 x float> %i.ir, <2 x float> poison, <2 x i32> zeroinitializer
  %i.it = fdiv reassoc nsz arcp contract afn <2 x float> %i.iq, %i.is
  store <2 x float> %i.it, ptr %i.ih, align 4
  %indvars.iv.next196.i.1 = add nsw i64 %indvars.iv195.i, -2 ; 4 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next196.i.1
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.next196.i.1
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !13
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next196.i.1 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.next196.i.1
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !13
  %i.jb = load <2 x float>, ptr %i.iu, align 4
  %i.jc = load <2 x float>, ptr %i.iy, align 4
  %i.jd = insertelement <2 x float> poison, float %i.iw, i64 0
  %i.je = shufflevector <2 x float> %i.jd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jf = fmul reassoc nsz arcp contract afn <2 x float> %i.jc, %i.je
  %i.jg = fsub reassoc nsz arcp contract afn <2 x float> %i.jb, %i.jf
  %i.jh = insertelement <2 x float> poison, float %i.ja, i64 0
  %i.ji = shufflevector <2 x float> %i.jh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jj = fdiv reassoc nsz arcp contract afn <2 x float> %i.jg, %i.ji
  store <2 x float> %i.jj, ptr %i.ix, align 4
  %indvars.iv.next196.i.2 = add nsw i64 %indvars.iv195.i, -3 ; 5 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next196.i.2
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.next196.i.2
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !13
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next196.i.2 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.next196.i.2
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !13
  %i.jr = load <2 x float>, ptr %i.jk, align 4
  %i.js = load <2 x float>, ptr %i.jo, align 4
  %i.jt = insertelement <2 x float> poison, float %i.jm, i64 0
  %i.ju = shufflevector <2 x float> %i.jt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jv = fmul reassoc nsz arcp contract afn <2 x float> %i.js, %i.ju
  %i.jw = fsub reassoc nsz arcp contract afn <2 x float> %i.jr, %i.jv
  %i.jx = insertelement <2 x float> poison, float %i.jq, i64 0
  %i.jy = shufflevector <2 x float> %i.jx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jz = fdiv reassoc nsz arcp contract afn <2 x float> %i.jw, %i.jy
  store <2 x float> %i.jz, ptr %i.jn, align 4
  %indvars.iv.next196.i.3 = add nsw i64 %indvars.iv195.i, -4
  %.not216.i.3 = icmp eq i64 %indvars.iv.next196.i.2, 0
  br i1 %.not216.i.3, label %.lr.ph187.i.preheader, label %.lr.ph185.i

.lr.ph187.i.preheader:                            ; preds = %.lr.ph185.i.prol.loopexit, %.lr.ph185.i, %._crit_edge.i
  %xtraiter207 = and i64 %i.bn, 1
  %i.ka = icmp eq i64 %indvar, 0
  br i1 %i.ka, label %.lr.ph187.i.epil.preheader, label %.lr.ph187.i.preheader.new

.lr.ph187.i.preheader.new:                        ; preds = %.lr.ph187.i.preheader
  %unroll_iter210 = and i64 %i.bn, 2147483646
  br label %.lr.ph187.i

.lr.ph187.i:                                      ; preds = %bb.az, %.lr.ph187.i.preheader.new
  %indvars.iv198.i = phi i64 [ 0, %.lr.ph187.i.preheader.new ], [ %indvars.iv.next199.i.1, %bb.az ] ; 8 uses
  %niter211 = phi i64 [ 0, %.lr.ph187.i.preheader.new ], [ %niter211.next.1, %bb.az ]
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv198.i
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !11
  switch i32 %i.kc, label %bb.aw [
    i32 5, label %.lr.ph187.i.1
    i32 6, label %.lr.ph187.i.1
    i32 9, label %.lr.ph187.i.1
    i32 3, label %bb.av
    i32 7, label %bb.av
    i32 8, label %bb.av
  ]

bb.av:                                            ; preds = %.lr.ph187.i, %.lr.ph187.i, %.lr.ph187.i
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv198.i
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv198.i
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kg = load <2 x float>, ptr %i.kd, align 4
  %i.kh = load <2 x float>, ptr %i.kf, align 4
  %i.ki = fadd reassoc nsz arcp contract afn <2 x float> %i.kh, %i.kg
  %i.kj = fmul reassoc nsz arcp contract afn <2 x float> %i.ki, splat (float 5.000000e-01)
  br label %.sink.split209.i

bb.aw:                                            ; preds = %.lr.ph187.i
  %i.kk = or disjoint i64 %indvars.iv198.i, 1     ; 2 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.kk
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.kk
  %i.kn = load <2 x float>, ptr %i.kl, align 4
  %i.ko = fmul reassoc nsz arcp contract afn <2 x float> %i.kn, splat (float 2.000000e+00)
  %i.kp = load <2 x float>, ptr %i.km, align 4
  %i.kq = fsub reassoc nsz arcp contract afn <2 x float> %i.ko, %i.kp
  br label %.sink.split209.i

.sink.split209.i:                                 ; preds = %bb.aw, %bb.av
  %i.kr = phi <2 x float> [ %i.kj, %bb.av ], [ %i.kq, %bb.aw ]
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv198.i
  store <2 x float> %i.kr, ptr %i.ks, align 4
  br label %.lr.ph187.i.1

.lr.ph187.i.1:                                    ; preds = %.sink.split209.i, %.lr.ph187.i, %.lr.ph187.i, %.lr.ph187.i
  %indvars.iv.next199.i = or disjoint i64 %indvars.iv198.i, 1 ; 4 uses
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next199.i
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !11
  switch i32 %i.ku, label %bb.ay [
    i32 5, label %bb.az
    i32 6, label %bb.az
    i32 9, label %bb.az
    i32 3, label %bb.ax
    i32 7, label %bb.ax
    i32 8, label %bb.ax
  ]

bb.ax:                                            ; preds = %.lr.ph187.i.1, %.lr.ph187.i.1, %.lr.ph187.i.1
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next199.i
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next199.i
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %i.ky = load <2 x float>, ptr %i.kv, align 4
  %i.kz = load <2 x float>, ptr %i.kx, align 4
  %i.la = fadd reassoc nsz arcp contract afn <2 x float> %i.kz, %i.ky
  %i.lb = fmul reassoc nsz arcp contract afn <2 x float> %i.la, splat (float 5.000000e-01)
  br label %.sink.split209.i.1

bb.ay:                                            ; preds = %.lr.ph187.i.1
  %i.lc = add nuw nsw i64 %indvars.iv198.i, 2     ; 2 uses
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.lc
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.lc
  %i.lf = load <2 x float>, ptr %i.ld, align 4
  %i.lg = fmul reassoc nsz arcp contract afn <2 x float> %i.lf, splat (float 2.000000e+00)
  %i.lh = load <2 x float>, ptr %i.le, align 4
  %i.li = fsub reassoc nsz arcp contract afn <2 x float> %i.lg, %i.lh
  br label %.sink.split209.i.1

.sink.split209.i.1:                               ; preds = %bb.ay, %bb.ax
  %i.lj = phi <2 x float> [ %i.lb, %bb.ax ], [ %i.li, %bb.ay ]
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next199.i
  store <2 x float> %i.lj, ptr %i.lk, align 4
  br label %bb.az

bb.az:                                            ; preds = %.sink.split209.i.1, %.lr.ph187.i.1, %.lr.ph187.i.1, %.lr.ph187.i.1
  %indvars.iv.next199.i.1 = add nuw nsw i64 %indvars.iv198.i, 2 ; 2 uses
  %niter211.next.1 = add i64 %niter211, 2         ; 2 uses
  %niter211.ncmp.1 = icmp eq i64 %niter211.next.1, %unroll_iter210
  br i1 %niter211.ncmp.1, label %smooth_path_linsys.exit.unr-lcssa, label %.lr.ph187.i

smooth_path_linsys.exit.unr-lcssa:                ; preds = %bb.az
  %lcmp.mod208.not = icmp eq i64 %xtraiter207, 0
  br i1 %lcmp.mod208.not, label %smooth_path_linsys.exit, label %.lr.ph187.i.epil.preheader

.lr.ph187.i.epil.preheader:                       ; preds = %smooth_path_linsys.exit.unr-lcssa, %.lr.ph187.i.preheader
  %indvars.iv198.i.epil.init = phi i64 [ 0, %.lr.ph187.i.preheader ], [ %indvars.iv.next199.i.1, %smooth_path_linsys.exit.unr-lcssa ] ; 5 uses
  %lcmp.mod209 = trunc i32 %.06.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod209)
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv198.i.epil.init
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !11
  switch i32 %i.lm, label %bb.bb [
    i32 5, label %smooth_path_linsys.exit
    i32 6, label %smooth_path_linsys.exit
    i32 9, label %smooth_path_linsys.exit
    i32 3, label %bb.ba
    i32 7, label %bb.ba
    i32 8, label %bb.ba
  ]

bb.ba:                                            ; preds = %.lr.ph187.i.epil.preheader, %.lr.ph187.i.epil.preheader, %.lr.ph187.i.epil.preheader
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv198.i.epil.init
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv198.i.epil.init
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %i.lq = load <2 x float>, ptr %i.ln, align 4
end_hunk_0
