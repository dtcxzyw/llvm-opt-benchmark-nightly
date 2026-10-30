Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/physics_world?download=true
inline.NumInlined: 264
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 19
begin_hunk_0_@DrawQueryCallback:bb.a
bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !254 ; 2 uses
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !432
  %.not38 = icmp eq i32 %i.ao, -1
  br i1 %.not38, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !255 ; 3 uses
  %i.ar = and i32 %i.aq, 64
  %.not39 = icmp eq i32 %i.ar, 0
  br i1 %.not39, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 92
  %i.at = load i32, ptr %i.as, align 4, !tbaa !433
  %i.au = and i32 %i.at, 16
  %.not40 = icmp ne i32 %i.au, 0
  %i.av = icmp eq i32 %i.al, 2                    ; 2 uses
  %or.cond = and i1 %i.av, %.not40
  br i1 %or.cond, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = and i32 %i.aq, 32
  %.not41 = icmp eq i32 %i.aw, 0
  br i1 %.not41, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ax = and i32 %i.aq, 8
  %.not42 = icmp eq i32 %i.ax, 0
  br i1 %.not42, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  switch i32 %i.af, label %bb.m [
    i32 0, label %bb.n
    i32 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %. = select i1 %i.av, i32 16761035, i32 8421504
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.b, %bb.l
  %.0 = phi i32 [ 10025880, %bb.k ], [ %i.ad, %bb.b ], [ 16711680, %bb.d ], [ 7372944, %bb.e ], [ 16113331, %bb.f ], [ 65280, %bb.g ], [ 4251856, %bb.h ], [ 16776960, %bb.i ], [ 16416882, %bb.j ], [ 4286945, %bb.l ], [ %., %bb.m ] ; 6 uses
  %i.ay = load <2 x float>, ptr %i.o, align 4     ; 8 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ba = load <2 x float>, ptr %i.az, align 4    ; 13 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !434
  switch i32 %i.bc, label %b2DrawShape.exit [
    i32 1, label %bb.o
    i32 0, label %bb.p
    i32 3, label %bb.q
    i32 2, label %bb.r
    i32 4, label %bb.s
  ]

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.be = load <2 x float>, ptr %i.bd, align 8    ; 2 uses
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = fmul <2 x float> %i.ba, %i.bf           ; 2 uses
  %i.bh = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bi = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bj = fmul <2 x float> %i.bh, %i.bi           ; 2 uses
  %i.bk = fsub <2 x float> %i.bg, %i.bj
  %i.bl = fadd <2 x float> %i.bg, %i.bj
  %i.bm = shufflevector <2 x float> %i.bk, <2 x float> %i.bl, <2 x i32> <i32 0, i32 3>
  %i.bn = fadd <2 x float> %i.ay, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  %i.bp = load <2 x float>, ptr %i.bo, align 8    ; 2 uses
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = fmul <2 x float> %i.ba, %i.bq           ; 2 uses
  %i.bs = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bt = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bu = fmul <2 x float> %i.bs, %i.bt           ; 2 uses
  %i.bv = fsub <2 x float> %i.br, %i.bu
  %i.bw = fadd <2 x float> %i.br, %i.bu
  %i.bx = shufflevector <2 x float> %i.bv, <2 x float> %i.bw, <2 x i32> <i32 0, i32 3>
  %i.by = fadd <2 x float> %i.ay, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !435
  %i.cb = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  %i.cc = load float, ptr %i.cb, align 8, !tbaa !258
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !241
  tail call void %i.ca(<2 x float> %i.bn, <2 x float> %i.by, float noundef %i.cc, i32 noundef range(i32 1, 0) %.0, ptr noundef %i.ce) #23, !inline_history !429
  br label %b2DrawShape.exit

bb.p:                                             ; preds = %bb.n
  %i.cf = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !436
  %i.ci = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  %i.cj = load float, ptr %i.ci, align 8, !tbaa !438
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !241
  %i.cm = load <2 x float>, ptr %i.cf, align 8
  tail call void %i.ch(<2 x float> %i.ay, <2 x float> %i.ba, <2 x float> %i.cm, float noundef %i.cj, i32 noundef range(i32 1, 0) %.0, ptr noundef %i.cl) #23, !inline_history !429
  br label %b2DrawShape.exit

bb.q:                                             ; preds = %bb.n
  %i.cn = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !439
  %i.cq = getelementptr inbounds nuw i8, ptr %i.h, i64 284
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !441
  %i.cs = getelementptr inbounds nuw i8, ptr %i.h, i64 280
  %i.ct = load float, ptr %i.cs, align 8, !tbaa !442
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !241
  tail call void %i.cp(<2 x float> %i.ay, <2 x float> %i.ba, ptr noundef nonnull %i.cn, i32 noundef %i.cr, float noundef %i.ct, i32 noundef range(i32 1, 0) %.0, ptr noundef %i.cv) #23, !inline_history !429
  br label %b2DrawShape.exit

bb.r:                                             ; preds = %bb.n
  %i.cw = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.cx = load <2 x float>, ptr %i.cw, align 8    ; 2 uses
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cz = fmul <2 x float> %i.ba, %i.cy           ; 2 uses
  %i.da = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.db = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dc = fmul <2 x float> %i.da, %i.db           ; 2 uses
  %i.dd = fsub <2 x float> %i.cz, %i.dc
  %i.de = fadd <2 x float> %i.cz, %i.dc
  %i.df = shufflevector <2 x float> %i.dd, <2 x float> %i.de, <2 x i32> <i32 0, i32 3>
  %i.dg = fadd <2 x float> %i.ay, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  %i.di = load <2 x float>, ptr %i.dh, align 8    ; 2 uses
  %i.dj = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dk = fmul <2 x float> %i.ba, %i.dj           ; 2 uses
  %i.dl = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dm = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dn = fmul <2 x float> %i.dl, %i.dm           ; 2 uses
  %i.do = fsub <2 x float> %i.dk, %i.dn
  %i.dp = fadd <2 x float> %i.dk, %i.dn
  %i.dq = shufflevector <2 x float> %i.do, <2 x float> %i.dp, <2 x i32> <i32 0, i32 3>
  %i.dr = fadd <2 x float> %i.ay, %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !244
  %i.du = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !241
  tail call void %i.dt(<2 x float> %i.dg, <2 x float> %i.dr, i32 noundef range(i32 1, 0) %.0, ptr noundef %i.dv) #23, !inline_history !429
  br label %b2DrawShape.exit

bb.s:                                             ; preds = %bb.n
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 107
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !443, !range !67, !noundef !68
  %i.dy = trunc nuw i8 %i.dx to i1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  %i.ea = load <2 x float>, ptr %i.dz, align 8    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  %i.ec = load <2 x float>, ptr %i.eb, align 8    ; 2 uses
  %i.ed = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ee = fmul <2 x float> %i.ba, %i.ed           ; 2 uses
  %i.ef = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.eg = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.eh = fmul <2 x float> %i.ef, %i.eg           ; 2 uses
  %i.ei = fsub <2 x float> %i.ee, %i.eh
  %i.ej = fadd <2 x float> %i.ee, %i.eh
  %i.ek = shufflevector <2 x float> %i.ei, <2 x float> %i.ej, <2 x i32> <i32 0, i32 3>
  %i.el = fadd <2 x float> %i.ay, %i.ek           ; 3 uses
  %i.em = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> zeroinitializer
  %i.en = fmul <2 x float> %i.ba, %i.em           ; 2 uses
  %i.eo = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ep = fmul <2 x float> %i.ef, %i.eo           ; 2 uses
  %i.eq = fsub <2 x float> %i.en, %i.ep
  %i.er = fadd <2 x float> %i.en, %i.ep
  %i.es = shufflevector <2 x float> %i.eq, <2 x float> %i.er, <2 x i32> <i32 0, i32 3>
  %i.et = fadd <2 x float> %i.ay, %i.es           ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !244
  %i.ew = getelementptr inbounds nuw i8, ptr %i.c, i64 120 ; 3 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !241
  tail call void %i.ev(<2 x float> %i.el, <2 x float> %i.et, i32 noundef range(i32 1, 0) %.0, ptr noundef %i.ex) #23, !inline_history !429
  %i.ey = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !247
  %i.fa = load ptr, ptr %i.ew, align 8, !tbaa !241
  tail call void %i.ez(<2 x float> %i.et, float noundef 4.000000e+00, i32 noundef range(i32 1, 0) %.0, ptr noundef %i.fa) #23, !inline_history !429
  br i1 %i.dy, label %bb.t, label %b2DrawShape.exit

bb.t:                                             ; preds = %bb.s
  %i.fb = fmul <2 x float> %i.el, splat (float 5.000000e-01)
  %i.fc = fmul <2 x float> %i.et, splat (float 5.000000e-01)
  %i.fd = fadd <2 x float> %i.fb, %i.fc           ; 3 uses
  %i.fe = fsub <2 x float> %i.et, %i.el           ; 3 uses
  %i.ff = fmul <2 x float> %i.fe, %i.fe
  %i.fg = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ff) ; 2 uses
  %i.fh = fcmp ogt float %i.fg, f0x057A0000
  br i1 %i.fh, label %bb.u, label %b2Normalize.exit.i

bb.u:                                             ; preds = %bb.t
  %i.fi = tail call float @sqrtf(float noundef %i.fg) #23
  %i.fj = fdiv float 1.000000e+00, %i.fi
  %i.fk = insertelement <2 x float> poison, float %i.fj, i64 0
  %i.fl = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fm = fmul <2 x float> %i.fe, %i.fl
  %i.fn = shufflevector <2 x float> %i.fm, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %b2Normalize.exit.i

b2Normalize.exit.i:                               ; preds = %bb.u, %bb.t
  %.sroa.012.0.i.i = phi <2 x float> [ %i.fn, %bb.u ], [ zeroinitializer, %bb.t ]
  %i.fo = tail call float @b2GetLengthUnitsPerMeter() #23
  %i.fp = fmul float %i.fo, 2.000000e-01
  %i.fq = load ptr, ptr %i.eu, align 8, !tbaa !244
  %i.fr = insertelement <2 x float> poison, float %i.fp, i64 0
  %i.fs = shufflevector <2 x float> %i.fr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ft = fmul <2 x float> %.sroa.012.0.i.i, %i.fs ; 2 uses
  %i.fu = fadd <2 x float> %i.fd, %i.ft
  %i.fv = fsub <2 x float> %i.fd, %i.ft
  %i.fw = shufflevector <2 x float> %i.fu, <2 x float> %i.fv, <2 x i32> <i32 0, i32 3>
  %i.fx = load ptr, ptr %i.ew, align 8, !tbaa !241
  tail call void %i.fq(<2 x float> %i.fd, <2 x float> %i.fw, i32 noundef 10025880, ptr noundef %i.fx) #23, !inline_history !429
  br label %b2DrawShape.exit

b2DrawShape.exit:                                 ; preds = %b2Normalize.exit.i, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.a
  %i.fy = getelementptr inbounds nuw i8, ptr %i.c, i64 110
  %i.fz = load i8, ptr %i.fy, align 2, !tbaa !444, !range !67, !noundef !68
  %i.ga = trunc nuw i8 %i.fz to i1
  br i1 %i.ga, label %bb.v, label %bb.w

bb.v:                                             ; preds = %b2DrawShape.exit
  %i.gb = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !252
  %i.gd = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.ge = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !241
  %i.gg = load <2 x float>, ptr %i.gd, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.gi = load <2 x float>, ptr %i.gh, align 8
  tail call void %i.gc(<2 x float> %i.gg, <2 x float> %i.gi, i32 noundef 16766720, ptr noundef %i.gf) #23
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %b2DrawShape.exit
  ret i1 true
}

declare ptr @b2GetBodySim(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #8

declare void @b2DrawJoint(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @b2GetContactSim(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @b2GetGraphColor(i32 noundef) local_unnamed_addr #4

declare i32 @b2DynamicTree_GetProxyCount(ptr noundef) local_unnamed_addr #4

declare { <2 x float>, <2 x float> } @b2DynamicTree_GetRootBounds(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define { <2 x float>, <2 x float> } @b2World_GetBounds(i32 %0) local_unnamed_addr #7 {
bb.a:
  %i.a = and i32 %0, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [2744 x i8], ptr @b2_worlds, i64 %i.b ; 5 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -5
  %i.e = load i8, ptr %i.d, align 1, !tbaa !66, !range !67, !noundef !68
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr i8, ptr %i.c, i64 -2744
  %i.h = icmp eq ptr %i.g, null
  %i.i = or i1 %i.h, %i.f
  br i1 %i.i, label %b2ComputeWorldBounds.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.c, i64 -2704    ; 2 uses
  %i.k = tail call i32 @b2DynamicTree_GetProxyCount(ptr noundef nonnull %i.j) #23
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call { <2 x float>, <2 x float> } @b2DynamicTree_GetRootBounds(ptr noundef nonnull %i.j) #23 ; 2 uses
  %i.n = extractvalue { <2 x float>, <2 x float> } %i.m, 0
  %i.o = extractvalue { <2 x float>, <2 x float> } %i.m, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1.i = phi i8 [ 0, %bb.b ], [ 1, %bb.c ]       ; 2 uses
  %.sroa.07.2.i = phi <2 x float> [ zeroinitializer, %bb.b ], [ %i.n, %bb.c ] ; 3 uses
  %.sroa.7.2.i = phi <2 x float> [ zeroinitializer, %bb.b ], [ %i.o, %bb.c ] ; 3 uses
  %i.p = getelementptr i8, ptr %i.c, i64 -2632    ; 2 uses
  %i.q = tail call i32 @b2DynamicTree_GetProxyCount(ptr noundef nonnull %i.p) #23
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = tail call { <2 x float>, <2 x float> } @b2DynamicTree_GetRootBounds(ptr noundef nonnull %i.p) #23 ; 2 uses
  %i.t = extractvalue { <2 x float>, <2 x float> } %i.s, 0 ; 3 uses
  %i.u = extractvalue { <2 x float>, <2 x float> } %i.s, 1 ; 3 uses
  %i.v = trunc nuw i8 %.1.i to i1
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = fcmp olt <2 x float> %.sroa.07.2.i, %i.t
  %i.x = select <2 x i1> %i.w, <2 x float> %.sroa.07.2.i, <2 x float> %i.t
  %i.y = fcmp ogt <2 x float> %.sroa.7.2.i, %i.u
  %i.z = select <2 x i1> %i.y, <2 x float> %.sroa.7.2.i, <2 x float> %i.u
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.1.1.i = phi i8 [ %.1.i, %bb.d ], [ 1, %bb.e ], [ 1, %bb.f ]
  %.sroa.07.2.1.i = phi <2 x float> [ %.sroa.07.2.i, %bb.d ], [ %i.t, %bb.e ], [ %i.x, %bb.f ] ; 3 uses
  %.sroa.7.2.1.i = phi <2 x float> [ %.sroa.7.2.i, %bb.d ], [ %i.u, %bb.e ], [ %i.z, %bb.f ] ; 3 uses
  %i.aa = getelementptr i8, ptr %i.c, i64 -2560   ; 2 uses
  %i.ab = tail call i32 @b2DynamicTree_GetProxyCount(ptr noundef nonnull %i.aa) #23
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %b2ComputeWorldBounds.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = tail call { <2 x float>, <2 x float> } @b2DynamicTree_GetRootBounds(ptr noundef nonnull %i.aa) #23 ; 2 uses
  %i.ae = extractvalue { <2 x float>, <2 x float> } %i.ad, 0 ; 3 uses
  %i.af = extractvalue { <2 x float>, <2 x float> } %i.ad, 1 ; 3 uses
  %i.ag = trunc nuw i8 %.1.1.i to i1
  br i1 %i.ag, label %bb.i, label %b2ComputeWorldBounds.exit

bb.i:                                             ; preds = %bb.h
  %i.ah = fcmp olt <2 x float> %.sroa.07.2.1.i, %i.ae
  %i.ai = select <2 x i1> %i.ah, <2 x float> %.sroa.07.2.1.i, <2 x float> %i.ae
  %i.aj = fcmp ogt <2 x float> %.sroa.7.2.1.i, %i.af
  %i.ak = select <2 x i1> %i.aj, <2 x float> %.sroa.7.2.1.i, <2 x float> %i.af
  br label %b2ComputeWorldBounds.exit

b2ComputeWorldBounds.exit:                        ; preds = %bb.i, %bb.h, %bb.g, %bb.a
  %.sroa.4.0 = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.7.2.1.i, %bb.g ], [ %i.af, %bb.h ], [ %i.ak, %bb.i ]
  %.sroa.0.0 = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.07.2.1.i, %bb.g ], [ %i.ae, %bb.h ], [ %i.ai, %bb.i ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.4.0, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define { ptr, i32 } @b2World_GetBodyEvents(i32 %0) local_unnamed_addr #2 {
bb.a:
  %i.a = and i32 %0, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [2744 x i8], ptr @b2_worlds, i64 %i.b ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -5
  %i.e = load i8, ptr %i.d, align 1, !tbaa !66, !range !67, !noundef !68
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.c, i64 -520
  %i.h = getelementptr i8, ptr %i.c, i64 -512
  %i.i = load i32, ptr %i.h, align 8, !tbaa !115
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !114
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.03.0 = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  %.sroa.3.0 = phi i32 [ %i.i, %bb.b ], [ 0, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.03.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.3.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define void @b2World_GetSensorEvents(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b2SensorEvents) align 8 captures(none) initializes((0, 24)) %0, i32 %1) local_unnamed_addr #9 {
bb.a:
  %i.a = and i32 %1, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [2744 x i8], ptr @b2_worlds, i64 %i.b ; 5 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -5
  %i.e = load i8, ptr %i.d, align 1, !tbaa !66, !range !67, !noundef !68
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.c, i64 -408
  %i.h = load i32, ptr %i.g, align 8, !tbaa !139
  %i.i = sub nsw i32 1, %i.h
  %i.j = getelementptr i8, ptr %i.c, i64 -504
  %i.k = getelementptr i8, ptr %i.c, i64 -496
  %i.l = load i32, ptr %i.k, align 8, !tbaa !118
  %i.m = getelementptr i8, ptr %i.c, i64 -472
  %i.n = sext i32 %i.i to i64
  %i.o = getelementptr inbounds [16 x i8], ptr %i.m, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !123
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !117
  store ptr %i.r, ptr %0, align 8, !tbaa !446
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !122
  store ptr %i.t, ptr %i.s, align 8, !tbaa !447
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.l, ptr %i.u, align 8, !tbaa !448
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.q, ptr %i.v, align 4, !tbaa !449
end_hunk_0
begin_hunk_1_@b2World_SetPreSolveCallback:bb.a
  %i.i = getelementptr i8, ptr %i.c, i64 -120
  store ptr %2, ptr %i.i, align 8, !tbaa !267
  %i.j = getelementptr i8, ptr %i.c, i64 -112
  store ptr %3, ptr %i.j, align 8, !tbaa !522
  ret void
}

; Function Attrs: nounwind uwtable
define void @b2World_SetGravity(i32 %0, <2 x float> %1) local_unnamed_addr #7 {
bb.a:
  %2 = alloca %struct.b2RecArgs_WorldSetGravity, align 4 ; 5 uses
  %i.a = and i32 %0, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [2744 x i8], ptr @b2_worlds, i64 %i.b ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !154  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i32 %0, ptr %2, align 4, !tbaa !185
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  store <2 x float> %1, ptr %i.f, align 4, !tbaa !142
  call void @b2RecWrite_WorldSetGravity(ptr noundef nonnull %i.e, ptr noundef nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr i8, ptr %i.c, i64 -292
  store <2 x float> %1, ptr %i.g, align 4, !tbaa !142
  ret void
}

declare void @b2RecWrite_WorldSetGravity(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define <2 x float> @b2World_GetGravity(i32 %0) local_unnamed_addr #16 {
bb.a:
  %i.a = and i32 %0, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [2744 x i8], ptr @b2_worlds, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -292
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.d, align 4, !tbaa !142
  ret <2 x float> %.sroa.01.0.copyload
}

; Function Attrs: nounwind uwtable
define void @b2World_Explode(i32 %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %2 = alloca %struct.b2RecArgs_WorldExplode, align 8 ; 6 uses
  %3 = alloca %struct.ExplosionContext, align 8   ; 8 uses
  %i.a = load i64, ptr %1, align 8, !tbaa !524
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.018.0.copyload = load <2 x float>, ptr %i.b, align 8, !tbaa !142 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load <2 x float>, ptr %i.c, align 8, !tbaa !142 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load float, ptr %i.e, align 8, !tbaa !525
  %i.g = and i32 %0, 65535
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr [2744 x i8], ptr @b2_worlds, i64 %i.h ; 4 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -2744
  %i.k = getelementptr i8, ptr %i.i, i64 -5
  %i.l = load i8, ptr %i.k, align 1, !tbaa !66, !range !67, !noundef !68
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %i.i, i64 -32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !154  ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i32 %0, ptr %2, align 8, !tbaa !185
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !526
  call void @b2RecWrite_WorldExplode(ptr noundef nonnull %i.o, ptr noundef nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.j, ptr %3, align 8, !tbaa !324
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.018.0.copyload, ptr %i.r, align 8, !tbaa !142
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <2 x float> %i.d, ptr %i.s, align 8, !tbaa !142
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24
  store float %i.f, ptr %i.t, align 8, !tbaa !325
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 0, ptr %i.u, align 4
  %i.v = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> zeroinitializer
  %i.w = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.x = fadd <2 x float> %i.v, %i.w              ; 2 uses
  %i.y = fsub <2 x float> %.sroa.018.0.copyload, %i.x
  %i.z = fadd <2 x float> %.sroa.018.0.copyload, %i.x
  %i.aa = getelementptr i8, ptr %i.i, i64 -2560
  %i.ab = call i64 @b2DynamicTree_Query(ptr noundef nonnull %i.aa, <2 x float> %i.y, <2 x float> %i.z, i64 noundef %i.a, ptr noundef nonnull @ExplosionCallback, ptr noundef nonnull %3) #23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

declare void @b2RecWrite_WorldExplode(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @ExplosionCallback(i32 %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) #7 {
bb.a:
  %3 = alloca %struct.b2Vec2, align 8             ; 5 uses
  %4 = alloca %struct.b2DistanceInput, align 4    ; 7 uses
  %5 = alloca %struct.b2ShapeProxy, align 4       ; 4 uses
  %6 = alloca %struct.b2SimplexCache, align 8     ; 4 uses
  %7 = alloca %struct.b2DistanceOutput, align 8   ; 5 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !324    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2144
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.d = shl i64 %1, 32
  %i.e = ashr exact i64 %i.d, 32
  %i.f = getelementptr inbounds [296 x i8], ptr %i.c, i64 %i.e ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1920
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !73
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !253
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [104 x i8], ptr %i.h, i64 %i.k ; 4 uses
  %i.m = tail call { <2 x float>, <2 x float> } @b2GetBodyTransformQuick(ptr noundef %i.a, ptr noundef %i.l) #23 ; 2 uses
  %i.n = extractvalue { <2 x float>, <2 x float> } %i.m, 0
  %i.o = extractvalue { <2 x float>, <2 x float> } %i.m, 1 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load <2 x float>, ptr %i.p, align 8
  %i.r = fsub <2 x float> %i.q, %i.n              ; 2 uses
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.t = fmul <2 x float> %i.o, %i.s              ; 2 uses
  %i.u = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.v = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.w = fmul <2 x float> %i.u, %i.v              ; 2 uses
  %i.x = fadd <2 x float> %i.t, %i.w
  %i.y = fsub <2 x float> %i.t, %i.w
  %i.z = shufflevector <2 x float> %i.x, <2 x float> %i.y, <2 x i32> <i32 1, i32 2>
  store <2 x float> %i.z, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @b2MakeShapeDistanceProxy(ptr dead_on_unwind nonnull writable sret(%struct.b2ShapeProxy) align 4 %4, ptr noundef %i.f) #23
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @b2MakeProxy(ptr dead_on_unwind nonnull writable sret(%struct.b2ShapeProxy) align 4 %5, ptr noundef nonnull %3, i32 noundef 1, float noundef 0.000000e+00) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %i.aa, ptr noundef nonnull align 4 dereferenceable(72) %5, i64 72, i1 false), !tbaa.struct !278
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ab, ptr noundef nonnull align 4 dereferenceable(16) @b2Transform_identity, i64 16, i1 false), !tbaa.struct !527
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 160
  store i8 1, ptr %i.ac, align 4, !tbaa !289
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store i64 0, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @b2ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b2DistanceOutput) align 4 %7, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef null, i32 noundef 0) #23
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ae = load float, ptr %i.ad, align 8, !tbaa !528 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ag = load float, ptr %i.af, align 4, !tbaa !529 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %i.ai = load float, ptr %i.ah, align 8, !tbaa !291
  %i.aj = fadd float %i.ae, %i.ag                 ; 2 uses
  %i.ak = fcmp ogt float %i.ai, %i.aj
  br i1 %i.ak, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.al = call zeroext i1 @b2WakeBody(ptr noundef nonnull %i.a, ptr noundef %i.l) #23 ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !254
  %.not = icmp eq i32 %i.an, 2
  br i1 %.not, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %.sroa.027.0.copyload = load <2 x float>, ptr %7, align 8, !tbaa !142
  %i.ao = load float, ptr %i.ah, align 8, !tbaa !291
  %i.ap = fcmp oeq float %i.ao, 0.000000e+00
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aq = call <2 x float> @b2GetShapeCentroid(ptr noundef nonnull %i.f) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.027.0 = phi <2 x float> [ %i.aq, %bb.d ], [ %.sroa.027.0.copyload, %bb.c ] ; 2 uses
  %i.ar = load <2 x float>, ptr %3, align 8
  %i.as = fsub <2 x float> %.sroa.027.0, %i.ar    ; 3 uses
  %i.at = fmul <2 x float> %i.as, %i.as
  %i.au = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.at) ; 2 uses
  %i.av = fcmp ogt float %i.au, f0x2BC80000
  br i1 %i.av, label %b2Normalize.exit, label %bb.f

b2Normalize.exit:                                 ; preds = %bb.e
  %i.aw = call float @sqrtf(float noundef %i.au) #23
  %i.ax = fdiv float 1.000000e+00, %i.aw
  %i.ay = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = fmul <2 x float> %i.as, %i.az
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %b2Normalize.exit
  %.sroa.021.0 = phi <2 x float> [ %i.ba, %b2Normalize.exit ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.e ] ; 4 uses
  %.sroa.0.4.vec.extract.i70 = extractelement <2 x float> %.sroa.021.0, i64 1
  %i.bb = fneg float %.sroa.0.4.vec.extract.i70
  %.sroa.01.0.vec.insert.i = insertelement <2 x float> poison, float %i.bb, i64 0
  %.sroa.01.4.vec.insert.i = shufflevector <2 x float> %.sroa.01.0.vec.insert.i, <2 x float> %.sroa.021.0, <2 x i32> <i32 0, i32 2>
  %i.bc = call float @b2GetShapeProjectedPerimeter(ptr noundef nonnull %i.f, <2 x float> %.sroa.01.4.vec.insert.i) #23
  %i.bd = load float, ptr %i.ah, align 8, !tbaa !291 ; 2 uses
  %i.be = fcmp ogt float %i.bd, %i.ae
  %i.bf = fcmp ogt float %i.ag, 0.000000e+00
  %or.cond = and i1 %i.bf, %i.be
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bg = fsub float %i.aj, %i.bd
  %i.bh = fdiv float %i.bg, %i.ag                 ; 3 uses
  %i.bi = fcmp olt float %i.bh, 0.000000e+00
  %i.bj = fcmp ogt float %i.bh, 1.000000e+00
  %i.bk = select i1 %i.bj, float 1.000000e+00, float %i.bh
  %i.bl = select i1 %i.bi, float 0.000000e+00, float %i.bk
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.061 = phi float [ %i.bl, %bb.g ], [ 1.000000e+00, %bb.f ]
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bn = load float, ptr %i.bm, align 8, !tbaa !325
  %i.bo = fmul float %i.bc, %i.bn
  %i.bp = fmul float %.061, %i.bo
  %i.bq = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.br = shufflevector <2 x float> %.sroa.021.0, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bs = fmul <2 x float> %i.bq, %i.br           ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !326
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 1960
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !76 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 176
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 192
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !93
  %i.ca = sext i32 %i.bu to i64                   ; 2 uses
  %i.cb = getelementptr inbounds [32 x i8], ptr %i.bz, i64 %i.ca ; 3 uses
  %i.cc = load ptr, ptr %i.bx, align 8, !tbaa !91
  %i.cd = getelementptr inbounds [96 x i8], ptr %i.cc, i64 %i.ca ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 60
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !530
  %i.cg = load <2 x float>, ptr %i.cb, align 4
  %i.ch = shufflevector <2 x float> %.sroa.021.0, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = fmul <2 x float> %i.o, %i.ch            ; 2 uses
  %i.cj = fsub <2 x float> %i.ci, %i.bs
  %i.ck = fadd <2 x float> %i.ci, %i.bs
  %i.cl = shufflevector <2 x float> %i.cj, <2 x float> %i.ck, <2 x i32> <i32 0, i32 3>
  %i.cm = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.co = fmul <2 x float> %i.cl, %i.cn           ; 2 uses
  %i.cp = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cr = fmul <2 x float> %i.co, %i.cq
  %i.cs = fadd <2 x float> %i.cr, %i.cg
  store <2 x float> %i.cs, ptr %i.cb, align 4, !tbaa !142
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cu = load <2 x float>, ptr %i.ct, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cd, i64 64
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !531
  %i.cx = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cy = fsub <2 x float> %.sroa.027.0, %i.cu    ; 2 uses
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.da = fmul <2 x float> %i.o, %i.cz            ; 2 uses
  %i.db = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dc = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dd = fmul <2 x float> %i.db, %i.dc           ; 2 uses
  %i.de = fsub <2 x float> %i.da, %i.dd
  %i.df = fadd <2 x float> %i.da, %i.dd
  %i.dg = shufflevector <2 x float> %i.de, <2 x float> %i.df, <2 x i32> <i32 0, i32 3>
  %i.dh = fmul <2 x float> %i.cx, %i.dg           ; 2 uses
  %shift = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.dh, %shift
  %i.di = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.dj = fmul float %i.cw, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !328
  %i.dm = fadd float %i.dl, %i.dj
  store float %i.dm, ptr %i.dk, align 4, !tbaa !328
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.a, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i1 true
}

; Function Attrs: nounwind uwtable
define void @b2World_RebuildStaticTree(i32 %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %struct.b2RecArgs_WorldRebuildStaticTree, align 4 ; 4 uses
  %i.a = and i32 %0, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [2744 x i8], ptr @b2_worlds, i64 %i.b ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -5
  %i.e = load i8, ptr %i.d, align 1, !tbaa !66, !range !67, !noundef !68
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.c, i64 -32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !154  ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  store i32 %0, ptr %1, align 4, !tbaa !185
  call void @b2RecWrite_WorldRebuildStaticTree(ptr noundef nonnull %i.h, ptr noundef nonnull %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr i8, ptr %i.c, i64 -2704
  %i.j = call i32 @b2DynamicTree_Rebuild(ptr noundef nonnull %i.i, i1 noundef zeroext true) #23 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

declare void @b2RecWrite_WorldRebuildStaticTree(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @b2DynamicTree_Rebuild(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @b2ValidateConnectivity(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @b2ValidateSolverSets(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @b2ValidateContacts(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  ret void
}

; Function Attrs: nounwind memory(argmem: write)
declare void @llvm.x86.sse.stmxcsr(ptr) #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #18

declare ptr @b2StackAlloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @b2ParallelFor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @b2CollideTask(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !201  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2192
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !155
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !212
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 2144
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !96   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1920
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !73   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1960
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !76
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 192
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !93   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 2484
  %i.p = load float, ptr %i.o, align 4, !tbaa !143 ; 3 uses
  %i.q = tail call float @b2GetLengthUnitsPerMeter() #23
  %i.r = fmul float %i.q, 5.000000e-03
  %i.s = fmul float %i.r, 4.000000e+00            ; 2 uses
  %i.t = fcmp uge float %i.p, %i.s
  %i.u = icmp slt i32 %0, %1
  br i1 %i.u, label %.lr.ph384, label %._crit_edge

.lr.ph384:                                        ; preds = %bb.a
  %i.v = sext i32 %2 to i64
  %i.w = getelementptr inbounds [120 x i8], ptr %i.d, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.y = fcmp ogt float %i.p, 0.000000e+00
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 2464
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 112 ; 2 uses
  %i.ab = sext i32 %0 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph384, %.loopexit
  %indvars.iv391 = phi i64 [ %i.ab, %.lr.ph384 ], [ %indvars.iv.next392, %.loopexit ] ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.f, i64 %indvars.iv391
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !209 ; 24 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !232 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 44
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !535
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [296 x i8], ptr %i.h, i64 %i.ah ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !536
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [296 x i8], ptr %i.h, i64 %i.al ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.ap = load <2 x float>, ptr %i.an, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  %i.ar = load <2 x float>, ptr %i.aq, align 8
  %i.as = load <2 x float>, ptr %i.ao, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  %i.au = load <2 x float>, ptr %i.at, align 8
  %i.av = shufflevector <2 x float> %i.as, <2 x float> %i.ap, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aw = shufflevector <2 x float> %i.ar, <2 x float> %i.au, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ax = fcmp ule <4 x float> %i.av, %i.aw
  %i.ay = freeze <4 x i1> %i.ax
  %i.az = bitcast <4 x i1> %i.ay to i4
  %i.ba = icmp eq i4 %i.az, -1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ad, i64 196 ; 7 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !231 ; 2 uses
  br i1 %i.ba, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bd = and i32 %i.bc, -196609
  %i.be = or disjoint i32 %i.bd, 131072
  store i32 %i.be, ptr %i.bb, align 4, !tbaa !231
  %.val233 = load ptr, ptr %i.x, align 8, !tbaa !215
  %i.bf = lshr i32 %i.ae, 6
  %i.bg = and i32 %i.ae, 63
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = shl nuw i64 1, %i.bh
  %i.bj = zext nneg i32 %i.bf to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.val233, i64 %i.bj ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !216
  %i.bm = or i64 %i.bl, %i.bi
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !216
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.bn = and i32 %i.bc, 65536
  %.not225 = icmp eq i32 %i.bn, 0                 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !253
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [104 x i8], ptr %i.j, i64 %i.bq ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !253
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [104 x i8], ptr %i.j, i64 %i.bu ; 5 uses
  %i.bw = tail call ptr @b2GetBodySim(ptr noundef %i.b, ptr noundef %i.br) #23 ; 6 uses
  %i.bx = tail call ptr @b2GetBodySim(ptr noundef %i.b, ptr noundef %i.bv) #23 ; 6 uses
  %.sroa.096.0.copyload = load <2 x float>, ptr %i.bw, align 4, !tbaa !142 ; 3 uses
  %.sroa.699.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.sroa.699.0.copyload = load <2 x float>, ptr %.sroa.699.0..sroa_idx, align 4, !tbaa !142 ; 15 uses
  %.sroa.088.0.copyload = load <2 x float>, ptr %i.bx, align 4, !tbaa !142 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.sroa.6.0.copyload = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !142 ; 11 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !254
  %i.ca = icmp eq i32 %i.bz, 2
  br i1 %i.ca, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !326
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.cd = phi i32 [ %i.cc, %bb.e ], [ -1, %bb.d ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ad, i64 36 ; 2 uses
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !537
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 60
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ad, i64 52
  %i.ch = load <2 x float>, ptr %i.cf, align 4, !tbaa !142
  store <2 x float> %i.ch, ptr %i.cg, align 4, !tbaa !142
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !254
  %i.ck = icmp eq i32 %i.cj, 2
  br i1 %i.ck, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !326
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.cn = phi i32 [ %i.cm, %bb.g ], [ -1, %bb.f ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ad, i64 40 ; 2 uses
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !538
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bx, i64 60
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ad, i64 60
  %i.cr = load <2 x float>, ptr %i.cp, align 4, !tbaa !142
  store <2 x float> %i.cr, ptr %i.cq, align 4, !tbaa !142
  %i.cs = getelementptr inbounds nuw i8, ptr %i.br, i64 80
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !255
  %i.cu = and i32 %i.ct, 8
  %.not = icmp eq i32 %i.cu, 0
  br i1 %.not, label %bb.i, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.h
  %.pre = load i32, ptr %i.bb, align 4, !tbaa !231
  br label %.thread

bb.i:                                             ; preds = %bb.h
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bv, i64 80
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !255
  %i.cx = and i32 %i.cw, 8
  %i.cy = icmp eq i32 %i.cx, 0
  %or.cond = select i1 %i.cy, i1 %i.y, i1 false
  %.pre395 = load i32, ptr %i.bb, align 4, !tbaa !231 ; 4 uses
  %i.cz = and i32 %.pre395, 4194312
  %or.cond230.not = icmp eq i32 %i.cz, 4194312
  %or.cond401 = select i1 %or.cond, i1 %or.cond230.not, i1 false
  br i1 %or.cond401, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %.sroa.085.0.copyload = load <2 x float>, ptr %i.da, align 4, !tbaa !142 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %.sroa.083.0.copyload = load <2 x float>, ptr %i.db, align 4, !tbaa !142 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %.sroa.081.0.copyload = load <2 x float>, ptr %i.dc, align 4, !tbaa !142
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 28
  %.sroa.482.0.copyload = load <2 x float>, ptr %.sroa.482.0..sroa_idx, align 4, !tbaa !142
  %i.dd = shufflevector <2 x float> %.sroa.699.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.de = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.df = fmul <2 x float> %i.dd, %i.de           ; 2 uses
  %i.dg = shufflevector <2 x float> %.sroa.699.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dh = fmul <2 x float> %i.dg, %.sroa.6.0.copyload ; 2 uses
  %i.di = fadd <2 x float> %i.df, %i.dh
  %i.dj = fsub <2 x float> %i.df, %i.dh
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> %i.di, <2 x i32> <i32 0, i32 3>
  %i.dl = fsub <2 x float> %.sroa.088.0.copyload, %.sroa.096.0.copyload ; 2 uses
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dn = fmul <2 x float> %.sroa.699.0.copyload, %i.dm ; 2 uses
  %i.do = shufflevector <2 x float> %.sroa.699.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dp = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dq = fmul <2 x float> %i.do, %i.dp           ; 2 uses
  %i.dr = fadd <2 x float> %i.dn, %i.dq
  %i.ds = fsub <2 x float> %i.dn, %i.dq
  %i.dt = shufflevector <2 x float> %i.ds, <2 x float> %i.dr, <2 x i32> <i32 0, i32 3>
  %i.du = fmul <2 x float> %.sroa.699.0.copyload, %.sroa.085.0.copyload ; 2 uses
  %shift = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.du, %shift ; 2 uses
  %i.dv = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.dw = fmul <2 x float> %.sroa.6.0.copyload, %.sroa.083.0.copyload ; 2 uses
  %shift416 = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop417 = fadd <2 x float> %i.dw, %shift416 ; 2 uses
  %i.dx = extractelement <2 x float> %foldExtExtBinop417, i64 0 ; 2 uses
  %i.dy = fcmp olt float %i.dv, %i.dx
  %i.dz = select i1 %i.dy, float %i.dv, float %i.dx
  %i.ea = getelementptr inbounds nuw i8, ptr %i.br, i64 84
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !243
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bw, i64 72
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !539
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ef = phi float [ %i.ee, %bb.k ], [ 0.000000e+00, %bb.j ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bv, i64 84
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !243
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bx, i64 72
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !539
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.el = phi float [ %i.ek, %bb.m ], [ 0.000000e+00, %bb.l ] ; 2 uses
  %4 = shufflevector <2 x float> %.sroa.081.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %5 = fsub <2 x float> %4, %i.dt                 ; 2 uses
  %6 = fmul <2 x float> %5, %5
  %7 = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %6)
  %8 = tail call float @sqrtf(float noundef %7) #23
  %i.em = fcmp ogt float %i.dz, 9.800000e-01
  br i1 %i.em, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.en = fmul <2 x float> %i.dk, %.sroa.482.0.copyload ; 2 uses
  %shift419 = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop420 = fsub <2 x float> %shift419, %i.en
  %i.eo = extractelement <2 x float> %foldExtExtBinop420, i64 0 ; 3 uses
  %i.ep = fcmp ogt float %i.ef, %i.el
  %i.eq = select i1 %i.ep, float %i.ef, float %i.el
  %i.er = select i1 %.not225, i1 %i.t, i1 false
  %i.es = select i1 %i.er, float %i.s, float %i.p
  %i.et = fcmp olt float %i.eo, 0.000000e+00
  %i.eu = fneg float %i.eo
  %i.ev = select i1 %i.et, float %i.eu, float %i.eo
  %i.ew = fmul float %i.ev, %i.eq
  %i.ex = fadd float %8, %i.ew
  %i.ey = fcmp olt float %i.ex, %i.es
  br i1 %i.ey, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.ez = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> %.sroa.699.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.fa = shufflevector <2 x float> %.sroa.083.0.copyload, <2 x float> %.sroa.085.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.fb = fmul <2 x float> %i.ez, %i.fa
  %i.fc = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> %.sroa.699.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.fd = shufflevector <2 x float> %.sroa.083.0.copyload, <2 x float> %.sroa.085.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.fe = fmul <2 x float> %i.fc, %i.fd
  %i.ff = fsub <2 x float> %i.fb, %i.fe           ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.fi = load <2 x float>, ptr %i.fg, align 4
  %i.fj = load <2 x float>, ptr %i.fh, align 4
  %i.fk = fsub <2 x float> %i.fi, %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ad, i64 176
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !246 ; 2 uses
  %i.fn = icmp sgt i32 %i.fm, 0
  br i1 %i.fn, label %.lr.ph382, label %.critedge

.lr.ph382:                                        ; preds = %bb.p
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ad, i64 68
  %.sroa.065.0.copyload = load <2 x float>, ptr %i.fo, align 4, !tbaa !142 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ad, i64 184
  %.not228 = icmp eq i32 %i.cd, -1
  %i.fr = sext i32 %i.cd to i64
  %i.fs = getelementptr inbounds [32 x i8], ptr %i.n, i64 %i.fr ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %.not229 = icmp eq i32 %i.cn, -1
  %i.fu = sext i32 %i.cn to i64
  %i.fv = getelementptr inbounds [32 x i8], ptr %i.n, i64 %i.fu ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %wide.trip.count389 = zext nneg i32 %i.fm to i64
  %i.fx = shufflevector <2 x float> %foldExtExtBinop417, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fy = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fz = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ga = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.q

.critedge:                                        ; preds = %bb.x, %bb.p
  %i.gb = load i32, ptr %i.aa, align 8, !tbaa !213
  %i.gc = add nsw i32 %i.gb, 1
  store i32 %i.gc, ptr %i.aa, align 8, !tbaa !213
  br label %.loopexit

bb.q:                                             ; preds = %.lr.ph382, %bb.x
  %indvars.iv386 = phi i64 [ 0, %.lr.ph382 ], [ %indvars.iv.next387, %bb.x ] ; 2 uses
  %i.gd = getelementptr inbounds nuw [48 x i8], ptr %i.fp, i64 %indvars.iv386 ; 9 uses
  %i.ge = load <2 x float>, ptr %i.gd, align 4    ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gg = load <2 x float>, ptr %i.gf, align 4    ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 40
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !540
  %i.gj = shufflevector <2 x float> %i.ge, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gk = fmul <2 x float> %i.fz, %i.gj           ; 2 uses
  %i.gl = fmul <2 x float> %i.fy, %i.ge           ; 2 uses
  %i.gm = fsub <2 x float> %i.gl, %i.gk
  %i.gn = fadd <2 x float> %i.gl, %i.gk
  %i.go = shufflevector <2 x float> %i.gm, <2 x float> %i.gn, <2 x i32> <i32 0, i32 3>
  %i.gp = shufflevector <2 x float> %i.gg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gq = fmul <2 x float> %i.ga, %i.gp           ; 2 uses
  %i.gr = fmul <2 x float> %i.fx, %i.gg           ; 2 uses
  %i.gs = fsub <2 x float> %i.gr, %i.gq
  %i.gt = fadd <2 x float> %i.gr, %i.gq
  %i.gu = shufflevector <2 x float> %i.gs, <2 x float> %i.gt, <2 x i32> <i32 0, i32 3>
  %i.gv = fsub <2 x float> %i.gu, %i.go
  %i.gw = fadd <2 x float> %i.fk, %i.gv
  %i.gx = fmul <2 x float> %.sroa.065.0.copyload, %i.gw ; 2 uses
  %shift422 = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop423 = fadd <2 x float> %i.gx, %shift422
  %i.gy = extractelement <2 x float> %foldExtExtBinop423, i64 0
  %i.gz = fadd float %i.gi, %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  store float %i.gz, ptr %i.ha, align 4, !tbaa !249
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gd, i64 32
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !251
  %i.hd = fcmp ogt float %i.hc, 0.000000e+00
  br i1 %i.hd, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.he = getelementptr inbounds nuw i8, ptr %i.gd, i64 36
  %i.hf = load float, ptr %i.he, align 4, !tbaa !541 ; 2 uses
  %i.hg = load float, ptr %i.z, align 8, !tbaa !263
  %i.hh = fneg float %i.hg
  %i.hi = fcmp olt float %i.hf, %i.hh
  br i1 %i.hi, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.hj = load float, ptr %i.fq, align 4, !tbaa !542
  %i.hk = fneg float %i.hj
  %i.hl = fmul float %i.hf, %i.hk
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.r, %bb.s
  %.sink = phi float [ %i.hl, %bb.s ], [ 0.000000e+00, %bb.r ], [ 0.000000e+00, %bb.q ]
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gd, i64 28
  store float %.sink, ptr %i.hm, align 4, !tbaa !543
  br i1 %.not228, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hn = load float, ptr %i.ft, align 4, !tbaa !328
  %i.ho = load <2 x float>, ptr %i.fs, align 4    ; 2 uses
  %i.hp = insertelement <2 x float> poison, float %i.hn, i64 0
  %i.hq = shufflevector <2 x float> %i.hp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hr = fmul <2 x float> %i.hq, %i.ge           ; 2 uses
  %shift425 = shufflevector <2 x float> %i.hr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop426 = fsub <2 x float> %i.ho, %shift425
  %shift428 = shufflevector <2 x float> %i.ho, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop429 = fadd <2 x float> %shift428, %i.hr
  %.sroa.02.4.vec.insert.i303 = shufflevector <2 x float> %foldExtExtBinop426, <2 x float> %foldExtExtBinop429, <2 x i32> <i32 0, i32 2>
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.041.0 = phi <2 x float> [ %.sroa.02.4.vec.insert.i303, %bb.u ], [ zeroinitializer, %bb.t ]
  br i1 %.not229, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hs = load float, ptr %i.fw, align 4, !tbaa !328
  %i.ht = load <2 x float>, ptr %i.fv, align 4    ; 2 uses
  %i.hu = insertelement <2 x float> poison, float %i.hs, i64 0
  %i.hv = shufflevector <2 x float> %i.hu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hw = fmul <2 x float> %i.hv, %i.gg           ; 2 uses
  %shift431 = shufflevector <2 x float> %i.hw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop432 = fsub <2 x float> %i.ht, %shift431
  %shift434 = shufflevector <2 x float> %i.ht, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop435 = fadd <2 x float> %shift434, %i.hw
  %.sroa.02.4.vec.insert.i313 = shufflevector <2 x float> %foldExtExtBinop432, <2 x float> %foldExtExtBinop435, <2 x i32> <i32 0, i32 2>
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sroa.034.0 = phi <2 x float> [ %.sroa.02.4.vec.insert.i313, %bb.w ], [ zeroinitializer, %bb.v ]
  %i.hx = fsub <2 x float> %.sroa.034.0, %.sroa.041.0
  %i.hy = fmul <2 x float> %.sroa.065.0.copyload, %i.hx
  %i.hz = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.hy)
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gd, i64 36
  store float %i.hz, ptr %i.ia, align 4, !tbaa !541
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gd, i64 46
  store i8 1, ptr %i.ib, align 2, !tbaa !250
  %indvars.iv.next387 = add nuw nsw i64 %indvars.iv386, 1 ; 2 uses
  %exitcond390.not = icmp eq i64 %indvars.iv.next387, %wide.trip.count389
  br i1 %exitcond390.not, label %.critedge, label %bb.q, !llvm.loop !532

.thread:                                          ; preds = %..thread_crit_edge, %bb.o, %bb.n, %bb.i
  %i.ic = phi i32 [ %.pre, %..thread_crit_edge ], [ %.pre395, %bb.o ], [ %.pre395, %bb.n ], [ %.pre395, %bb.i ]
  %i.id = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store <2 x float> %.sroa.699.0.copyload, ptr %i.id, align 4, !tbaa !142
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store <2 x float> %.sroa.6.0.copyload, ptr %i.ie, align 4, !tbaa !142
  %i.if = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.ig = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ih = fmul <2 x float> %.sroa.699.0.copyload, %i.ig ; 2 uses
  %shift437 = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop438 = fsub <2 x float> %i.ih, %shift437
  %i.ii = fmul <2 x float> %.sroa.699.0.copyload, %.sroa.6.0.copyload ; 2 uses
  %shift440 = shufflevector <2 x float> %i.ii, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop441 = fadd <2 x float> %i.ii, %shift440
  %.sroa.010.0.vec.insert.i.i328 = shufflevector <2 x float> %foldExtExtBinop441, <2 x float> %foldExtExtBinop438, <2 x i32> <i32 0, i32 2>
  %i.ij = fsub <2 x float> %.sroa.088.0.copyload, %.sroa.096.0.copyload ; 2 uses
  %i.ik = shufflevector <2 x float> %i.ij, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.il = fmul <2 x float> %.sroa.699.0.copyload, %i.ik ; 2 uses
  %i.im = shufflevector <2 x float> %.sroa.699.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.in = shufflevector <2 x float> %i.ij, <2 x float> poison, <2 x i32> zeroinitializer
  %i.io = fmul <2 x float> %i.im, %i.in           ; 2 uses
  %i.ip = fadd <2 x float> %i.il, %i.io
  %i.iq = fsub <2 x float> %i.il, %i.io
  %i.ir = shufflevector <2 x float> %i.ip, <2 x float> %i.iq, <2 x i32> <i32 1, i32 2>
  store <2 x float> %i.ir, ptr %i.if, align 4, !tbaa !142
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 28
  store <2 x float> %.sroa.010.0.vec.insert.i.i328, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !142
  %i.is = or i32 %i.ic, 4194304
  store i32 %i.is, ptr %i.bb, align 4, !tbaa !231
  %i.it = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.iu = load <2 x float>, ptr %i.it, align 4    ; 2 uses
  %i.iv = shufflevector <2 x float> %i.iu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iw = fmul <2 x float> %.sroa.699.0.copyload, %i.iv ; 2 uses
  %i.ix = shufflevector <2 x float> %.sroa.699.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.iy = shufflevector <2 x float> %i.iu, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.iz = fmul <2 x float> %i.ix, %i.iy           ; 2 uses
  %i.ja = fsub <2 x float> %i.iw, %i.iz
  %i.jb = fadd <2 x float> %i.iw, %i.iz
  %i.jc = shufflevector <2 x float> %i.ja, <2 x float> %i.jb, <2 x i32> <i32 0, i32 3>
  %i.jd = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.je = load <2 x float>, ptr %i.jd, align 4    ; 2 uses
  %i.jf = shufflevector <2 x float> %i.je, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jg = fmul <2 x float> %.sroa.6.0.copyload, %i.jf ; 2 uses
  %i.jh = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ji = shufflevector <2 x float> %i.je, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jj = fmul <2 x float> %i.jh, %i.ji           ; 2 uses
  %i.jk = fsub <2 x float> %i.jg, %i.jj
  %i.jl = fadd <2 x float> %i.jg, %i.jj
  %i.jm = shufflevector <2 x float> %i.jk, <2 x float> %i.jl, <2 x i32> <i32 0, i32 3>
  %i.jn = tail call zeroext i1 @b2UpdateContact(ptr noundef %i.b, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ai, <2 x float> %.sroa.096.0.copyload, <2 x float> %.sroa.699.0.copyload, <2 x float> %i.jc, ptr noundef nonnull %i.am, <2 x float> %.sroa.088.0.copyload, <2 x float> %.sroa.6.0.copyload, <2 x float> %i.jm) #23 ; 3 uses
  %or.cond231 = select i1 %i.jn, i1 %.not225, i1 false
  br i1 %or.cond231, label %.sink.split, label %bb.y

bb.y:                                             ; preds = %.thread
  %brmerge = select i1 %i.jn, i1 true, i1 %.not225
  br i1 %brmerge, label %bb.z, label %.sink.split

.sink.split:                                      ; preds = %bb.y, %.thread
  %.sink414 = phi i32 [ 262144, %.thread ], [ 524288, %bb.y ]
  %i.jo = load i32, ptr %i.bb, align 4, !tbaa !231
  %i.jp = or i32 %i.jo, %.sink414
  store i32 %i.jp, ptr %i.bb, align 4, !tbaa !231
  %.val = load ptr, ptr %i.x, align 8, !tbaa !215
  %i.jq = lshr i32 %i.ae, 6
  %i.jr = and i32 %i.ae, 63
  %i.js = zext nneg i32 %i.jr to i64
  %i.jt = shl nuw i64 1, %i.js
  %i.ju = zext nneg i32 %i.jq to i64
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.ju ; 2 uses
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !216
  %i.jx = or i64 %i.jw, %i.jt
  store i64 %i.jx, ptr %i.jv, align 8, !tbaa !216
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %bb.y
  br i1 %i.jn, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.z
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ad, i64 68
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ad, i64 176
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !246 ; 2 uses
  %i.kb = icmp sgt i32 %i.ka, 0
  br i1 %i.kb, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  %i.kd = load i32, ptr %i.ce, align 4, !tbaa !537 ; 2 uses
  %.not226 = icmp eq i32 %i.kd, -1
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr inbounds [32 x i8], ptr %i.n, i64 %i.ke ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kh = load i32, ptr %i.co, align 4, !tbaa !538 ; 2 uses
  %.not227 = icmp eq i32 %i.kh, -1
  %i.ki = sext i32 %i.kh to i64
  %i.kj = getelementptr inbounds [32 x i8], ptr %i.n, i64 %i.ki ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %wide.trip.count = zext nneg i32 %i.ka to i64
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph, %bb.ae
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ae ] ; 2 uses
  %i.kl = getelementptr inbounds nuw [48 x i8], ptr %i.kc, i64 %indvars.iv ; 5 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %i.kn = load float, ptr %i.km, align 4, !tbaa !249
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kl, i64 40
  store float %i.kn, ptr %i.ko, align 4, !tbaa !540
  br i1 %.not226, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.kp = load float, ptr %i.kg, align 4, !tbaa !328
  %i.kq = load <2 x float>, ptr %i.kl, align 4
  %i.kr = load <2 x float>, ptr %i.kf, align 4    ; 2 uses
  %i.ks = insertelement <2 x float> poison, float %i.kp, i64 0
  %i.kt = shufflevector <2 x float> %i.ks, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ku = shufflevector <2 x float> %i.kq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.kv = fmul <2 x float> %i.kt, %i.ku           ; 2 uses
  %i.kw = fsub <2 x float> %i.kr, %i.kv
  %i.kx = fadd <2 x float> %i.kr, %i.kv
  %i.ky = shufflevector <2 x float> %i.kw, <2 x float> %i.kx, <2 x i32> <i32 0, i32 3>
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sroa.012.0 = phi <2 x float> [ %i.ky, %bb.ab ], [ zeroinitializer, %bb.aa ]
  br i1 %.not227, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.kz = load float, ptr %i.kk, align 4, !tbaa !328
  %i.la = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.lb = load <2 x float>, ptr %i.la, align 4
  %i.lc = load <2 x float>, ptr %i.kj, align 4    ; 2 uses
  %i.ld = insertelement <2 x float> poison, float %i.kz, i64 0
  %i.le = shufflevector <2 x float> %i.ld, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lf = shufflevector <2 x float> %i.lb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.lg = fmul <2 x float> %i.le, %i.lf           ; 2 uses
  %i.lh = fsub <2 x float> %i.lc, %i.lg
  %i.li = fadd <2 x float> %i.lc, %i.lg
  %i.lj = shufflevector <2 x float> %i.lh, <2 x float> %i.li, <2 x i32> <i32 0, i32 3>
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.sroa.06.0 = phi <2 x float> [ %i.lj, %bb.ad ], [ zeroinitializer, %bb.ac ]
  %i.lk = load <2 x float>, ptr %i.jy, align 4
  %i.ll = fsub <2 x float> %.sroa.06.0, %.sroa.012.0
  %i.lm = fmul <2 x float> %i.lk, %i.ll
  %i.ln = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.lm)
  %i.lo = getelementptr inbounds nuw i8, ptr %i.kl, i64 36
  store float %i.ln, ptr %i.lo, align 4, !tbaa !541
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.aa, !llvm.loop !533

.loopexit:                                        ; preds = %bb.ae, %.preheader, %.critedge, %bb.z, %bb.c
  %indvars.iv.next392 = add nsw i64 %indvars.iv391, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next392 to i32
  %exitcond394.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond394.not, label %._crit_edge, label %bb.b, !llvm.loop !534
}

declare void @b2StackFree(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @b2InPlaceUnion(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @b2DestroyContact(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @b2LinkContact(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @b2AddContactToGraph(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @b2UnlinkContact(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @b2RemoveContactFromGraph(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare zeroext i1 @b2UpdateContact(ptr noundef, ptr noundef, ptr noundef, <2 x float>, <2 x float>, <2 x float>, ptr noundef, <2 x float>, <2 x float>, <2 x float>) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #19

declare { <2 x float>, <2 x float> } @b2GetBodyTransformQuick(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @b2MakeShapeDistanceProxy(ptr dead_on_unwind writable sret(%struct.b2ShapeProxy) align 4, ptr noundef) local_unnamed_addr #4

declare void @b2ShapeDistance(ptr dead_on_unwind writable sret(%struct.b2DistanceOutput) align 4, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @b2RayCastShape(ptr dead_on_unwind writable sret(%struct.b2CastOutput) align 4, ptr noundef, ptr noundef, <2 x float>, <2 x float>) local_unnamed_addr #4

declare void @b2ShapeCastShape(ptr dead_on_unwind writable sret(%struct.b2CastOutput) align 4, ptr noundef, ptr noundef, <2 x float>, <2 x float>) local_unnamed_addr #4

declare void @b2CollideMover(ptr dead_on_unwind writable sret(%struct.b2PlaneResult) align 4, ptr noundef, ptr noundef, <2 x float>, <2 x float>) local_unnamed_addr #4

declare void @b2MakeProxy(ptr dead_on_unwind writable sret(%struct.b2ShapeProxy) align 4, ptr noundef, i32 noundef, float noundef) local_unnamed_addr #4

declare zeroext i1 @b2WakeBody(ptr noundef, ptr noundef) local_unnamed_addr #4

declare <2 x float> @b2GetShapeCentroid(ptr noundef) local_unnamed_addr #4

declare float @b2GetShapeProjectedPerimeter(ptr noundef, <2 x float>) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #20

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind memory(argmem: write) }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nofree nounwind }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !69}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"p1 _ZTS12b2StackEntry", !9, i64 0}
!12 = !{!"b2DynamicArray_b2StackEntry", !11, i64 0, !6, i64 8, !6, i64 12}
!13 = !{!"b2Stack", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !12, i64 24}
!14 = !{!"p1 int", !9, i64 0}
!15 = !{!"b2DynamicArray_int", !14, i64 0, !6, i64 8, !6, i64 12}
!16 = !{!"p1 _ZTS12b2MoveResult", !9, i64 0}
!17 = !{!"p1 _ZTS10b2MovePair", !9, i64 0}
!18 = !{!"b2AtomicInt", !6, i64 0}
!19 = !{!"p1 _ZTS9b2SetItem", !9, i64 0}
!20 = !{!"b2HashSet", !19, i64 0, !6, i64 8, !6, i64 12}
!21 = !{!"b2BroadPhase", !5, i64 0, !5, i64 216, !15, i64 264, !16, i64 280, !17, i64 288, !6, i64 296, !18, i64 300, !20, i64 304}
!22 = !{!"b2ConstraintGraph", !5, i64 0}
!23 = !{!"b2IdPool", !15, i64 0, !6, i64 16}
!24 = !{!"p1 _ZTS6b2Body", !9, i64 0}
!25 = !{!"b2DynamicArray_b2Body", !24, i64 0, !6, i64 8, !6, i64 12}
!26 = !{!"p1 _ZTS11b2SolverSet", !9, i64 0}
!27 = !{!"b2DynamicArray_b2SolverSet", !26, i64 0, !6, i64 8, !6, i64 12}
!28 = !{!"p1 _ZTS7b2Joint", !9, i64 0}
!29 = !{!"b2DynamicArray_b2Joint", !28, i64 0, !6, i64 8, !6, i64 12}
!30 = !{!"p1 _ZTS9b2Contact", !9, i64 0}
!31 = !{!"b2DynamicArray_b2Contact", !30, i64 0, !6, i64 8, !6, i64 12}
!32 = !{!"p1 _ZTS8b2Island", !9, i64 0}
!33 = !{!"b2DynamicArray_b2Island", !32, i64 0, !6, i64 8, !6, i64 12}
!34 = !{!"p1 _ZTS7b2Shape", !9, i64 0}
!35 = !{!"b2DynamicArray_b2Shape", !34, i64 0, !6, i64 8, !6, i64 12}
!36 = !{!"p1 _ZTS12b2ChainShape", !9, i64 0}
!37 = !{!"b2DynamicArray_b2ChainShape", !36, i64 0, !6, i64 8, !6, i64 12}
!38 = !{!"p1 _ZTS8b2Sensor", !9, i64 0}
!39 = !{!"b2DynamicArray_b2Sensor", !38, i64 0, !6, i64 8, !6, i64 12}
!40 = !{!"p1 _ZTS13b2TaskContext", !9, i64 0}
!41 = !{!"b2DynamicArray_b2TaskContext", !40, i64 0, !6, i64 8, !6, i64 12}
!42 = !{!"p1 _ZTS19b2SensorTaskContext", !9, i64 0}
!43 = !{!"b2DynamicArray_b2SensorTaskContext", !42, i64 0, !6, i64 8, !6, i64 12}
!44 = !{!"p1 _ZTS15b2BodyMoveEvent", !9, i64 0}
!45 = !{!"b2DynamicArray_b2BodyMoveEvent", !44, i64 0, !6, i64 8, !6, i64 12}
!46 = !{!"p1 _ZTS23b2SensorBeginTouchEvent", !9, i64 0}
!47 = !{!"b2DynamicArray_b2SensorBeginTouchEvent", !46, i64 0, !6, i64 8, !6, i64 12}
!48 = !{!"p1 _ZTS24b2ContactBeginTouchEvent", !9, i64 0}
!49 = !{!"b2DynamicArray_b2ContactBeginTouchEvent", !48, i64 0, !6, i64 8, !6, i64 12}
!50 = !{!"p1 _ZTS17b2ContactHitEvent", !9, i64 0}
!51 = !{!"b2DynamicArray_b2ContactHitEvent", !50, i64 0, !6, i64 8, !6, i64 12}
!52 = !{!"p1 _ZTS12b2JointEvent", !9, i64 0}
!53 = !{!"b2DynamicArray_b2JointEvent", !52, i64 0, !6, i64 8, !6, i64 12}
!54 = !{!"p1 long", !9, i64 0}
!55 = !{!"b2BitSet", !54, i64 0, !6, i64 8, !6, i64 12}
!56 = !{!"long", !5, i64 0}
!57 = !{!"float", !5, i64 0}
!58 = !{!"b2Vec2", !57, i64 0, !57, i64 4}
!59 = !{!"short", !5, i64 0}
!60 = !{!"b2Profile", !57, i64 0, !57, i64 4, !57, i64 8, !57, i64 12, !57, i64 16, !57, i64 20, !57, i64 24, !57, i64 28, !57, i64 32, !57, i64 36, !57, i64 40, !57, i64 44, !57, i64 48, !57, i64 52, !57, i64 56, !57, i64 60, !57, i64 64, !57, i64 68, !57, i64 72, !57, i64 76, !57, i64 80, !57, i64 84}
!61 = !{!"b2Capacity", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!62 = !{!"p1 _ZTS11b2Scheduler", !9, i64 0}
!63 = !{!"p1 _ZTS11b2Recording", !9, i64 0}
!64 = !{!"_Bool", !5, i64 0}
!65 = !{!"b2World", !13, i64 0, !21, i64 40, !22, i64 360, !23, i64 1896, !25, i64 1920, !23, i64 1936, !27, i64 1960, !23, i64 1976, !29, i64 2000, !23, i64 2016, !31, i64 2040, !23, i64 2056, !33, i64 2080, !23, i64 2096, !23, i64 2120, !35, i64 2144, !37, i64 2160, !39, i64 2176, !41, i64 2192, !43, i64 2208, !45, i64 2224, !47, i64 2240, !49, i64 2256, !5, i64 2272, !5, i64 2304, !6, i64 2336, !51, i64 2344, !53, i64 2360, !55, i64 2376, !55, i64 2392, !55, i64 2408, !55, i64 2424, !56, i64 2440, !6, i64 2448, !58, i64 2452, !57, i64 2460, !57, i64 2464, !57, i64 2468, !57, i64 2472, !57, i64 2476, !57, i64 2480, !57, i64 2484, !9, i64 2488, !9, i64 2496, !59, i64 2504, !60, i64 2508, !61, i64 2596, !9, i64 2616, !9, i64 2624, !9, i64 2632, !9, i64 2640, !9, i64 2648, !6, i64 2656, !9, i64 2664, !9, i64 2672, !9, i64 2680, !9, i64 2688, !62, i64 2696, !9, i64 2704, !63, i64 2712, !57, i64 2720, !57, i64 2724, !6, i64 2728, !6, i64 2732, !59, i64 2736, !64, i64 2738, !64, i64 2739, !64, i64 2740, !64, i64 2741, !64, i64 2742}
!66 = !{!65, !64, i64 2739}
!67 = !{i8 0, i8 2}
!68 = !{}
!69 = !{!"llvm.loop.mustprogress"}
!70 = !{!65, !59, i64 2504}
!71 = !{!65, !59, i64 2736}
!72 = !{!6, !6, i64 0}
!73 = !{!65, !24, i64 1920}
!74 = !{!65, !6, i64 1928}
!75 = !{!65, !6, i64 1932}
!76 = !{!65, !26, i64 1960}
!77 = !{!65, !6, i64 1968}
!78 = !{!65, !6, i64 1972}
!79 = !{!"p1 _ZTS9b2BodySim", !9, i64 0}
!80 = !{!"b2DynamicArray_b2BodySim", !79, i64 0, !6, i64 8, !6, i64 12}
!81 = !{!"p1 _ZTS11b2BodyState", !9, i64 0}
!82 = !{!"b2DynamicArray_b2BodyState", !81, i64 0, !6, i64 8, !6, i64 12}
!83 = !{!"p1 _ZTS10b2JointSim", !9, i64 0}
!84 = !{!"b2DynamicArray_b2JointSim", !83, i64 0, !6, i64 8, !6, i64 12}
!85 = !{!"p1 _ZTS12b2ContactSim", !9, i64 0}
!86 = !{!"b2DynamicArray_b2ContactSim", !85, i64 0, !6, i64 8, !6, i64 12}
!87 = !{!"p1 _ZTS11b2IslandSim", !9, i64 0}
!88 = !{!"b2DynamicArray_b2IslandSim", !87, i64 0, !6, i64 8, !6, i64 12}
!89 = !{!"b2SolverSet", !80, i64 0, !82, i64 16, !84, i64 32, !86, i64 48, !88, i64 64, !6, i64 80}
!90 = !{!89, !6, i64 12}
!91 = !{!89, !79, i64 0}
!92 = !{!89, !6, i64 28}
!93 = !{!89, !81, i64 16}
!94 = !{!89, !6, i64 60}
!95 = !{!89, !85, i64 48}
!96 = !{!65, !34, i64 2144}
!97 = !{!65, !6, i64 2152}
!98 = !{!65, !6, i64 2156}
!99 = !{!65, !36, i64 2160}
!100 = !{!65, !6, i64 2168}
!101 = !{!65, !6, i64 2172}
!102 = !{!65, !30, i64 2040}
!103 = !{!65, !6, i64 2048}
!104 = !{!65, !6, i64 2052}
!105 = !{!65, !28, i64 2000}
!106 = !{!65, !6, i64 2008}
!107 = !{!65, !6, i64 2012}
!108 = !{!65, !32, i64 2080}
!109 = !{!65, !6, i64 2088}
!110 = !{!65, !6, i64 2092}
!111 = !{!65, !38, i64 2176}
!112 = !{!65, !6, i64 2184}
!113 = !{!65, !6, i64 2188}
!114 = !{!65, !44, i64 2224}
!115 = !{!65, !6, i64 2232}
!116 = !{!65, !6, i64 2236}
!117 = !{!65, !46, i64 2240}
!118 = !{!65, !6, i64 2248}
!119 = !{!65, !6, i64 2252}
!120 = !{!"p1 _ZTS21b2SensorEndTouchEvent", !9, i64 0}
!121 = !{!"b2DynamicArray_b2SensorEndTouchEvent", !120, i64 0, !6, i64 8, !6, i64 12}
!122 = !{!121, !120, i64 0}
!123 = !{!121, !6, i64 8}
!124 = !{!121, !6, i64 12}
!125 = !{!65, !48, i64 2256}
!126 = !{!65, !6, i64 2264}
!127 = !{!65, !6, i64 2268}
!128 = !{!"p1 _ZTS22b2ContactEndTouchEvent", !9, i64 0}
!129 = !{!"b2DynamicArray_b2ContactEndTouchEvent", !128, i64 0, !6, i64 8, !6, i64 12}
!130 = !{!129, !128, i64 0}
!131 = !{!129, !6, i64 8}
!132 = !{!129, !6, i64 12}
!133 = !{!65, !50, i64 2344}
!134 = !{!65, !6, i64 2352}
!135 = !{!65, !6, i64 2356}
!136 = !{!65, !52, i64 2360}
!137 = !{!65, !6, i64 2368}
!138 = !{!65, !6, i64 2372}
!139 = !{!65, !6, i64 2336}
!140 = !{!65, !6, i64 2728}
!141 = !{!65, !6, i64 2732}
!142 = !{!57, !57, i64 0}
!143 = !{!65, !57, i64 2484}
!144 = !{!9, !9, i64 0}
!145 = !{!65, !64, i64 2738}
!146 = !{!65, !64, i64 2740}
!147 = !{!65, !64, i64 2741}
!148 = !{!65, !9, i64 2688}
!149 = !{!65, !9, i64 2704}
!150 = !{!65, !6, i64 2656}
!151 = !{!65, !9, i64 2672}
!152 = !{!65, !62, i64 2696}
!153 = !{!54, !54, i64 0}
!154 = !{!65, !63, i64 2712}
!155 = !{!65, !40, i64 2192}
!156 = !{!65, !6, i64 2204}
end_hunk_1
