Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/physics_world?download=true
inline.NumInlined: 264
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 19
begin_hunk_0_@DrawQueryCallback:bb.a
bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 52
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !245
  %i.ai = fcmp oeq float %i.ah, 0.000000e+00
  br i1 %i.ai, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !254 ; 2 uses
  %i.al = icmp eq i32 %i.ak, 1
  br i1 %i.al, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !434
  %.not38 = icmp eq i32 %i.an, -1
  br i1 %.not38, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !255 ; 3 uses
  %i.aq = and i32 %i.ap, 64
  %.not39 = icmp eq i32 %i.aq, 0
  br i1 %.not39, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 92
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !435
  %i.at = and i32 %i.as, 16
  %.not40 = icmp ne i32 %i.at, 0
  %i.au = icmp eq i32 %i.ak, 2                    ; 2 uses
  %or.cond = and i1 %i.au, %.not40
  br i1 %or.cond, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = and i32 %i.ap, 32
  %.not41 = icmp eq i32 %i.av, 0
  br i1 %.not41, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.aw = and i32 %i.ap, 8
  %.not42 = icmp eq i32 %i.aw, 0
  br i1 %.not42, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  switch i32 %i.ae, label %bb.m [
    i32 0, label %bb.n
    i32 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %. = select i1 %i.au, i32 16761035, i32 8421504
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.b, %bb.l
  %.0 = phi i32 [ 10025880, %bb.k ], [ %i.ac, %bb.b ], [ 16711680, %bb.d ], [ 7372944, %bb.e ], [ 16113331, %bb.f ], [ 65280, %bb.g ], [ 4251856, %bb.h ], [ 16776960, %bb.i ], [ 16416882, %bb.j ], [ 4286945, %bb.l ], [ %., %bb.m ] ; 6 uses
  %i.ax = load <2 x float>, ptr %i.n, align 4     ; 8 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.az = load <2 x float>, ptr %i.ay, align 4    ; 13 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !436
  switch i32 %i.bb, label %b2DrawShape.exit [
    i32 1, label %bb.o
    i32 0, label %bb.p
    i32 3, label %bb.q
    i32 2, label %bb.r
    i32 4, label %bb.s
  ]

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.bd = load <2 x float>, ptr %i.bc, align 8    ; 2 uses
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bf = fmul <2 x float> %i.az, %i.be           ; 2 uses
  %i.bg = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bh = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bi = fmul <2 x float> %i.bg, %i.bh           ; 2 uses
  %i.bj = fsub <2 x float> %i.bf, %i.bi
  %i.bk = fadd <2 x float> %i.bf, %i.bi
  %i.bl = shufflevector <2 x float> %i.bj, <2 x float> %i.bk, <2 x i32> <i32 0, i32 3>
  %i.bm = fadd <2 x float> %i.ax, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.bo = load <2 x float>, ptr %i.bn, align 8    ; 2 uses
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = fmul <2 x float> %i.az, %i.bp           ; 2 uses
  %i.br = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bs = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bt = fmul <2 x float> %i.br, %i.bs           ; 2 uses
  %i.bu = fsub <2 x float> %i.bq, %i.bt
  %i.bv = fadd <2 x float> %i.bq, %i.bt
  %i.bw = shufflevector <2 x float> %i.bu, <2 x float> %i.bv, <2 x i32> <i32 0, i32 3>
  %i.bx = fadd <2 x float> %i.ax, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !437
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.cb = load float, ptr %i.ca, align 8, !tbaa !258
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !241
  tail call void %i.bz(<2 x float> %i.bm, <2 x float> %i.bx, float noundef %i.cb, i32 noundef range(i32 1, 0) %.0, ptr noundef %i.cd) #23, !inline_history !431
  br label %b2DrawShape.exit

bb.p:                                             ; preds = %bb.n
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !438
  %i.ch = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.ci = load float, ptr %i.ch, align 8, !tbaa !440
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !241
  %i.cl = load <2 x float>, ptr %i.ce, align 8
  tail call void %i.cg(<2 x float> %i.ax, <2 x float> %i.az, <2 x float> %i.cl, float noundef %i.ci, i32 noundef range(i32 1, 0) %.0, ptr noundef %i.ck) #23, !inline_history !431
  br label %b2DrawShape.exit

bb.q:                                             ; preds = %bb.n
  %i.cm = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !441
  %i.cp = getelementptr inbounds nuw i8, ptr %i.g, i64 284
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !443
  %i.cr = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.cs = load float, ptr %i.cr, align 8, !tbaa !444
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !241
  tail call void %i.co(<2 x float> %i.ax, <2 x float> %i.az, ptr noundef nonnull %i.cm, i32 noundef %i.cq, float noundef %i.cs, i32 noundef range(i32 1, 0) %.0, ptr noundef %i.cu) #23, !inline_history !431
  br label %b2DrawShape.exit

bb.r:                                             ; preds = %bb.n
  %i.cv = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.cw = load <2 x float>, ptr %i.cv, align 8    ; 2 uses
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cy = fmul <2 x float> %i.az, %i.cx           ; 2 uses
  %i.cz = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.da = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.db = fmul <2 x float> %i.cz, %i.da           ; 2 uses
  %i.dc = fsub <2 x float> %i.cy, %i.db
  %i.dd = fadd <2 x float> %i.cy, %i.db
  %i.de = shufflevector <2 x float> %i.dc, <2 x float> %i.dd, <2 x i32> <i32 0, i32 3>
  %i.df = fadd <2 x float> %i.ax, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.dh = load <2 x float>, ptr %i.dg, align 8    ; 2 uses
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = fmul <2 x float> %i.az, %i.di           ; 2 uses
  %i.dk = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dl = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dm = fmul <2 x float> %i.dk, %i.dl           ; 2 uses
  %i.dn = fsub <2 x float> %i.dj, %i.dm
  %i.do = fadd <2 x float> %i.dj, %i.dm
  %i.dp = shufflevector <2 x float> %i.dn, <2 x float> %i.do, <2 x i32> <i32 0, i32 3>
  %i.dq = fadd <2 x float> %i.ax, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !244
  %i.dt = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !241
  tail call void %i.ds(<2 x float> %i.df, <2 x float> %i.dq, i32 noundef range(i32 1, 0) %.0, ptr noundef %i.du) #23, !inline_history !431
  br label %b2DrawShape.exit

bb.s:                                             ; preds = %bb.n
  %i.dv = getelementptr inbounds nuw i8, ptr %i.c, i64 107
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !445, !range !67, !noundef !68
  %i.dx = trunc nuw i8 %i.dw to i1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.dz = load <2 x float>, ptr %i.dy, align 8    ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.eb = load <2 x float>, ptr %i.ea, align 8    ; 2 uses
  %i.ec = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ed = fmul <2 x float> %i.az, %i.ec           ; 2 uses
  %i.ee = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ef = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.eg = fmul <2 x float> %i.ee, %i.ef           ; 2 uses
  %i.eh = fsub <2 x float> %i.ed, %i.eg
  %i.ei = fadd <2 x float> %i.ed, %i.eg
  %i.ej = shufflevector <2 x float> %i.eh, <2 x float> %i.ei, <2 x i32> <i32 0, i32 3>
  %i.ek = fadd <2 x float> %i.ax, %i.ej           ; 3 uses
  %i.el = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.em = fmul <2 x float> %i.az, %i.el           ; 2 uses
  %i.en = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.eo = fmul <2 x float> %i.ee, %i.en           ; 2 uses
  %i.ep = fsub <2 x float> %i.em, %i.eo
  %i.eq = fadd <2 x float> %i.em, %i.eo
  %i.er = shufflevector <2 x float> %i.ep, <2 x float> %i.eq, <2 x i32> <i32 0, i32 3>
  %i.es = fadd <2 x float> %i.ax, %i.er           ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !244
  %i.ev = getelementptr inbounds nuw i8, ptr %i.c, i64 120 ; 3 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !241
  tail call void %i.eu(<2 x float> %i.ek, <2 x float> %i.es, i32 noundef range(i32 1, 0) %.0, ptr noundef %i.ew) #23, !inline_history !431
  %i.ex = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !247
  %i.ez = load ptr, ptr %i.ev, align 8, !tbaa !241
  tail call void %i.ey(<2 x float> %i.es, float noundef 4.000000e+00, i32 noundef range(i32 1, 0) %.0, ptr noundef %i.ez) #23, !inline_history !431
  br i1 %i.dx, label %bb.t, label %b2DrawShape.exit

bb.t:                                             ; preds = %bb.s
  %i.fa = fmul <2 x float> %i.ek, splat (float 5.000000e-01)
  %i.fb = fmul <2 x float> %i.es, splat (float 5.000000e-01)
  %i.fc = fadd <2 x float> %i.fa, %i.fb           ; 3 uses
  %i.fd = fsub <2 x float> %i.es, %i.ek           ; 3 uses
  %i.fe = fmul <2 x float> %i.fd, %i.fd
  %3 = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.fe) ; 2 uses
  %i.ff = fcmp ogt float %3, f0x057A0000
  br i1 %i.ff, label %bb.u, label %b2Normalize.exit.i

bb.u:                                             ; preds = %bb.t
  %sqrt.i.i = tail call nnan float @llvm.sqrt.f32(float %3)
  %i.fg = fdiv nnan float 1.000000e+00, %sqrt.i.i
  %i.fh = insertelement <2 x float> poison, float %i.fg, i64 0
  %i.fi = shufflevector <2 x float> %i.fh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fj = fmul <2 x float> %i.fd, %i.fi
  %i.fk = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %b2Normalize.exit.i

b2Normalize.exit.i:                               ; preds = %bb.u, %bb.t
  %.sroa.012.0.i.i = phi <2 x float> [ %i.fk, %bb.u ], [ zeroinitializer, %bb.t ]
  %i.fl = tail call float @b2GetLengthUnitsPerMeter() #23
  %i.fm = fmul float %i.fl, 2.000000e-01
  %i.fn = load ptr, ptr %i.et, align 8, !tbaa !244
  %i.fo = insertelement <2 x float> poison, float %i.fm, i64 0
  %i.fp = shufflevector <2 x float> %i.fo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fq = fmul <2 x float> %.sroa.012.0.i.i, %i.fp ; 2 uses
  %i.fr = fadd <2 x float> %i.fc, %i.fq
  %i.fs = fsub <2 x float> %i.fc, %i.fq
  %i.ft = shufflevector <2 x float> %i.fr, <2 x float> %i.fs, <2 x i32> <i32 0, i32 3>
  %i.fu = load ptr, ptr %i.ev, align 8, !tbaa !241
  tail call void %i.fn(<2 x float> %i.fc, <2 x float> %i.ft, i32 noundef 10025880, ptr noundef %i.fu) #23, !inline_history !431
  br label %b2DrawShape.exit

b2DrawShape.exit:                                 ; preds = %b2Normalize.exit.i, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.a
  %i.fv = getelementptr inbounds nuw i8, ptr %i.c, i64 110
  %i.fw = load i8, ptr %i.fv, align 2, !tbaa !446, !range !67, !noundef !68
  %i.fx = trunc nuw i8 %i.fw to i1
  br i1 %i.fx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %b2DrawShape.exit
  %i.fy = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !252
  %i.ga = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.gb = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !241
  %i.gd = load <2 x float>, ptr %i.ga, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.gf = load <2 x float>, ptr %i.ge, align 8
  tail call void %i.fz(<2 x float> %i.gd, <2 x float> %i.gf, i32 noundef 16766720, ptr noundef %i.gc) #23
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
  store ptr %i.r, ptr %0, align 8, !tbaa !448
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
begin_hunk_1_@MoverCastCallback:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load float, ptr %i.t, align 4, !tbaa !315
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 80
  store float %i.u, ptr %i.v, align 4, !tbaa !317
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1920
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !73
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !253
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [104 x i8], ptr %i.x, i64 %i.aa
  %i.ac = tail call { <2 x float>, <2 x float> } @b2GetBodyTransformQuick(ptr noundef nonnull %i.a, ptr noundef %i.ab) #23 ; 2 uses
  %i.ad = extractvalue { <2 x float>, <2 x float> } %i.ac, 0
  %i.ae = extractvalue { <2 x float>, <2 x float> } %i.ac, 1
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.ag = load <2 x float>, ptr %i.af, align 4
  %i.ah = fsub <2 x float> %i.ad, %i.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @b2ShapeCastShape(ptr dead_on_unwind nonnull writable sret(%struct.b2CastOutput) align 4 %5, ptr noundef nonnull %4, ptr noundef nonnull %i.e, <2 x float> %i.ah, <2 x float> %i.ae) #23
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !302 ; 3 uses
  %i.ak = fcmp oeq float %i.aj, 0.000000e+00
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.am = load float, ptr %i.al, align 8, !tbaa !320
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store float %i.aj, ptr %i.al, align 8, !tbaa !320
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi float [ %i.am, %bb.d ], [ %i.aj, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.1 = phi float [ %i.r, %bb.b ], [ %.0, %bb.f ]
  ret float %.1
}

declare void @b2RecW_CAPSULE(ptr noundef, ptr noundef byval(%struct.b2Capsule) align 8) local_unnamed_addr #4

declare void @b2RecW_F32(ptr noundef, float noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @b2World_CollideMover(i32 %0, <2 x float> %1, ptr nofree noundef readonly captures(none) %2, i64 %3, i64 %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #7 {
bb.a:
  %7 = alloca %struct.b2RecQueryWriter, align 8   ; 12 uses
  %8 = alloca %struct.b2Capsule, align 8          ; 4 uses
  %9 = alloca %struct.WorldMoverContext, align 8  ; 13 uses
  %i.a = and i32 %0, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [2744 x i8], ptr @b2_worlds, i64 %i.b ; 6 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -2744
  %i.e = getelementptr i8, ptr %i.c, i64 -5
  %i.f = load i8, ptr %i.e, align 1, !tbaa !66, !range !67, !noundef !68
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, i8 0, i64 48, i1 false)
  %i.h = getelementptr i8, ptr %i.c, i64 -32      ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !154
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @b2RecQueryBegin(ptr noundef nonnull %7, ptr noundef %6) #23
  store ptr %5, ptr %7, align 8, !tbaa !240
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  call void @b2RecW_WORLDID(ptr noundef nonnull %i.j, i32 %0) #23
  call void @b2RecW_POSITION(ptr noundef nonnull %i.j, <2 x float> %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %8, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !299
  call void @b2RecW_CAPSULE(ptr noundef nonnull %i.j, ptr noundef nonnull byval(%struct.b2Capsule) align 8 %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @b2RecW_QUERYFILTER(ptr noundef nonnull %i.j, i64 %3, i64 %4) #23
  %i.k = call i32 @b2RecReserveU32(ptr noundef nonnull %i.j) #23
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i32 %i.k, ptr %i.l, align 8, !tbaa !270
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.037 = phi ptr [ %7, %bb.c ], [ %6, %bb.b ]
  %.0 = phi ptr [ @b2RecPlaneTrampoline, %bb.c ], [ %5, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load float, ptr %i.m, align 4, !tbaa !258
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load <2 x float>, ptr %2, align 4        ; 4 uses
  %i.q = load <2 x float>, ptr %i.o, align 4      ; 4 uses
  %i.r = fcmp olt <2 x float> %i.p, %i.q
  %i.s = select <2 x i1> %i.r, <2 x float> %i.p, <2 x float> %i.q
  %i.t = insertelement <2 x float> poison, float %i.n, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.v = fsub <2 x float> %i.s, %i.u
  %i.w = fadd <2 x float> %1, %i.v                ; 3 uses
  %i.x = fcmp ogt <2 x float> %i.p, %i.q
  %i.y = select <2 x i1> %i.x, <2 x float> %i.p, <2 x float> %i.q
  %i.z = fadd <2 x float> %i.u, %i.y
  %i.aa = fadd <2 x float> %1, %i.z               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store ptr %i.d, ptr %9, align 8, !tbaa !322
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %.0, ptr %i.ab, align 8, !tbaa !323
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %3, ptr %i.ac, align 8, !tbaa !215
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 %4, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !215
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ad, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !299
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 52
  store <2 x float> %1, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 60
  store i32 0, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 64
  store ptr %.037, ptr %i.ag, align 8, !tbaa !324
  %i.ah = getelementptr i8, ptr %i.c, i64 -2704
  %i.ai = call i64 @b2DynamicTree_Query(ptr noundef nonnull %i.ah, <2 x float> %i.w, <2 x float> %i.aa, i64 noundef %4, ptr noundef nonnull @TreeCollideCallback, ptr noundef nonnull %9) #23 ; 0 uses
  %i.aj = getelementptr i8, ptr %i.c, i64 -2632
  %i.ak = call i64 @b2DynamicTree_Query(ptr noundef nonnull %i.aj, <2 x float> %i.w, <2 x float> %i.aa, i64 noundef %4, ptr noundef nonnull @TreeCollideCallback, ptr noundef nonnull %9) #23 ; 0 uses
  %i.al = getelementptr i8, ptr %i.c, i64 -2560
  %i.am = call i64 @b2DynamicTree_Query(ptr noundef nonnull %i.al, <2 x float> %i.w, <2 x float> %i.aa, i64 noundef %4, ptr noundef nonnull @TreeCollideCallback, ptr noundef nonnull %9) #23 ; 0 uses
  %i.an = load ptr, ptr %i.h, align 8, !tbaa !154
  %.not38 = icmp eq ptr %i.an, null
  br i1 %.not38, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !270
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !276
  call void @b2RecPatchU32(ptr noundef nonnull %i.ao, i32 noundef %i.aq, i32 noundef %i.as) #23
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !154
  call void @b2RecQueryCommit(ptr noundef %i.at, i8 noundef zeroext -28, ptr noundef nonnull %7) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  ret void
}

declare zeroext i1 @b2RecPlaneTrampoline(i64, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal zeroext i1 @TreeCollideCallback(i32 %0, i64 noundef %1, ptr noundef %2) #7 {
bb.a:
  %3 = alloca %struct.b2PlaneResult, align 8      ; 6 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !322    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2144
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !96
  %sext = shl i64 %1, 32
  %i.d = ashr exact i64 %sext, 32
  %i.e = getelementptr inbounds [296 x i8], ptr %i.c, i64 %i.d ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = load i64, ptr %i.i, align 8
  %.val = load i64, ptr %i.f, align 8, !tbaa !277
  %i.k = getelementptr i8, ptr %i.e, i64 120
  %.val22 = load i64, ptr %i.k, align 8
  %i.l = and i64 %.val, %i.j
  %i.m = icmp ne i64 %i.l, 0
  %i.n = and i64 %.val22, %i.h
  %i.o = icmp ne i64 %i.n, 0
  %i.p = select i1 %i.m, i1 %i.o, i1 false
  br i1 %i.p, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 1920
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !73
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !253
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [104 x i8], ptr %i.r, i64 %i.u
  %i.w = tail call { <2 x float>, <2 x float> } @b2GetBodyTransformQuick(ptr noundef nonnull %i.a, ptr noundef %i.v) #23 ; 2 uses
  %i.x = extractvalue { <2 x float>, <2 x float> } %i.w, 0
  %i.y = extractvalue { <2 x float>, <2 x float> } %i.w, 1
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.aa = load <2 x float>, ptr %i.z, align 4
  %i.ab = fsub <2 x float> %i.x, %i.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @b2CollideMover(ptr dead_on_unwind nonnull writable sret(%struct.b2PlaneResult) align 4 %3, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.e, <2 x float> %i.ab, <2 x float> %i.y) #23
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ae = load i8, ptr %i.ad, align 4, !tbaa !521, !range !67, !noundef !68
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ag = load <2 x float>, ptr %3, align 8       ; 2 uses
  %i.ah = fmul <2 x float> %i.ag, %i.ag
  %4 = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ah)
  %i.ai = fsub float 1.000000e+00, %4
  %i.aj = call float @llvm.fabs.f32(float %i.ai)
  %i.ak = fcmp olt float %i.aj, f0x37480000
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.al = load i32, ptr %i.e, align 8, !tbaa !222
  %i.am = add nsw i32 %i.al, 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 2736
  %i.ao = load i16, ptr %i.an, align 8, !tbaa !71
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 288
  %i.aq = load i16, ptr %i.ap, align 8, !tbaa !223
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !323
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !324
  %.sroa.5.0.insert.ext = zext i16 %i.aq to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 48
  %.sroa.4.0.insert.ext = zext i16 %i.ao to i64
  %.sroa.4.0.insert.shift = shl nuw nsw i64 %.sroa.4.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.am to i64
  %.sroa.4.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.0.0.insert.ext
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.insert, %.sroa.5.0.insert.shift
  %i.av = call zeroext i1 %i.as(i64 %.sroa.0.0.insert.insert, ptr noundef nonnull %3, ptr noundef %i.au) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.0 = phi i1 [ %i.av, %bb.d ], [ true, %bb.c ], [ true, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.1 = phi i1 [ %.0, %bb.e ], [ true, %bb.a ]
  ret i1 %.1
}

; Function Attrs: nofree nounwind uwtable
define void @b2World_SetCustomFilterCallback(i32 %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #15 {
bb.a:
  %i.a = and i32 %0, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [2744 x i8], ptr @b2_worlds, i64 %i.b ; 3 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.c, i64 -32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !154
  %.not6 = icmp eq ptr %i.e, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 -104
  store ptr %1, ptr %i.f, align 8, !tbaa !522
  %i.g = getelementptr i8, ptr %i.c, i64 -96
  store ptr %2, ptr %i.g, align 8, !tbaa !523
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @b2World_SetPreSolveCallback(i32 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #15 {
bb.a:
  %i.a = and i32 %0, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [2744 x i8], ptr @b2_worlds, i64 %i.b ; 4 uses
  %i.d = icmp ne ptr %1, null
  %i.e = icmp ne ptr %2, null
  %or.cond = or i1 %i.d, %i.e
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 -32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !154
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %i.h = getelementptr i8, ptr %i.c, i64 -128
  store ptr %1, ptr %i.h, align 8, !tbaa !266
  %i.i = getelementptr i8, ptr %i.c, i64 -120
  store ptr %2, ptr %i.i, align 8, !tbaa !267
  %i.j = getelementptr i8, ptr %i.c, i64 -112
  store ptr %3, ptr %i.j, align 8, !tbaa !524
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
  store i32 %0, ptr %2, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  store <2 x float> %1, ptr %i.f, align 4
  call void @b2RecWrite_WorldSetGravity(ptr noundef nonnull %i.e, ptr noundef nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr i8, ptr %i.c, i64 -292
  store <2 x float> %1, ptr %i.g, align 4
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
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.d, align 4
  ret <2 x float> %.sroa.01.0.copyload
}

; Function Attrs: nounwind uwtable
define void @b2World_Explode(i32 %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %2 = alloca %struct.b2RecArgs_WorldExplode, align 8 ; 6 uses
  %3 = alloca %struct.ExplosionContext, align 8   ; 8 uses
  %i.a = load i64, ptr %1, align 8, !tbaa !526
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.018.0.copyload = load <2 x float>, ptr %i.b, align 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load <2 x float>, ptr %i.c, align 8, !tbaa !142 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load float, ptr %i.e, align 8, !tbaa !527
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
  store i32 %0, ptr %2, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !528
  call void @b2RecWrite_WorldExplode(ptr noundef nonnull %i.o, ptr noundef nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.j, ptr %3, align 8, !tbaa !326
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.018.0.copyload, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <2 x float> %i.d, ptr %i.s, align 8, !tbaa !142
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24
  store float %i.f, ptr %i.t, align 8, !tbaa !327
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
  %i.a = load ptr, ptr %2, align 8, !tbaa !326    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2144
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !96
  %sext = shl i64 %1, 32
  %i.d = ashr exact i64 %sext, 32
  %i.e = getelementptr inbounds [296 x i8], ptr %i.c, i64 %i.d ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1920
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !73
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !253
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [104 x i8], ptr %i.g, i64 %i.j ; 4 uses
  %i.l = tail call { <2 x float>, <2 x float> } @b2GetBodyTransformQuick(ptr noundef %i.a, ptr noundef %i.k) #23 ; 2 uses
  %i.m = extractvalue { <2 x float>, <2 x float> } %i.l, 0
  %i.n = extractvalue { <2 x float>, <2 x float> } %i.l, 1 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load <2 x float>, ptr %i.o, align 8
  %i.q = fsub <2 x float> %i.p, %i.m              ; 2 uses
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.s = fmul <2 x float> %i.n, %i.r              ; 2 uses
  %i.t = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.u = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x float> %i.t, %i.u              ; 2 uses
  %i.w = fadd <2 x float> %i.s, %i.v
  %i.x = fsub <2 x float> %i.s, %i.v
  %i.y = shufflevector <2 x float> %i.w, <2 x float> %i.x, <2 x i32> <i32 1, i32 2>
  store <2 x float> %i.y, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @b2MakeShapeDistanceProxy(ptr dead_on_unwind nonnull writable sret(%struct.b2ShapeProxy) align 4 %4, ptr noundef %i.e) #23
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @b2MakeProxy(ptr dead_on_unwind nonnull writable sret(%struct.b2ShapeProxy) align 4 %5, ptr noundef nonnull %3, i32 noundef 1, float noundef 0.000000e+00) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %i.z, ptr noundef nonnull align 4 dereferenceable(72) %5, i64 72, i1 false), !tbaa.struct !278
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aa, ptr noundef nonnull align 4 dereferenceable(16) @b2Transform_identity, i64 16, i1 false), !tbaa.struct !529
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 160
  store i8 1, ptr %i.ab, align 4, !tbaa !289
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store i64 0, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @b2ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b2DistanceOutput) align 4 %7, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef null, i32 noundef 0) #23
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !530 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.af = load float, ptr %i.ae, align 4, !tbaa !531 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !291
  %i.ai = fadd float %i.ad, %i.af                 ; 2 uses
  %i.aj = fcmp ogt float %i.ah, %i.ai
  br i1 %i.aj, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ak = call zeroext i1 @b2WakeBody(ptr noundef nonnull %i.a, ptr noundef %i.k) #23 ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !254
  %.not = icmp eq i32 %i.am, 2
  br i1 %.not, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %.sroa.027.0.copyload = load <2 x float>, ptr %7, align 8
  %i.an = load float, ptr %i.ag, align 8, !tbaa !291
  %i.ao = fcmp oeq float %i.an, 0.000000e+00
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ap = call <2 x float> @b2GetShapeCentroid(ptr noundef nonnull %i.e) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.027.0 = phi <2 x float> [ %i.ap, %bb.d ], [ %.sroa.027.0.copyload, %bb.c ] ; 2 uses
  %i.aq = load <2 x float>, ptr %3, align 8
  %i.ar = fsub <2 x float> %.sroa.027.0, %i.aq    ; 3 uses
  %i.as = fmul <2 x float> %i.ar, %i.ar
  %8 = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.as) ; 2 uses
  %i.at = fcmp ogt float %8, f0x2BC80000
  br i1 %i.at, label %b2Normalize.exit, label %bb.f

b2Normalize.exit:                                 ; preds = %bb.e
  %sqrt.i = call nnan float @llvm.sqrt.f32(float %8)
  %i.au = fdiv nnan float 1.000000e+00, %sqrt.i
  %i.av = insertelement <2 x float> poison, float %i.au, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = fmul <2 x float> %i.ar, %i.aw
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %b2Normalize.exit
  %.sroa.021.0 = phi <2 x float> [ %i.ax, %b2Normalize.exit ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.e ] ; 4 uses
  %.sroa.0.4.vec.extract.i70 = extractelement <2 x float> %.sroa.021.0, i64 1
  %i.ay = fneg float %.sroa.0.4.vec.extract.i70
  %.sroa.01.0.vec.insert.i = insertelement <2 x float> poison, float %i.ay, i64 0
  %.sroa.01.4.vec.insert.i = shufflevector <2 x float> %.sroa.01.0.vec.insert.i, <2 x float> %.sroa.021.0, <2 x i32> <i32 0, i32 2>
  %i.az = call float @b2GetShapeProjectedPerimeter(ptr noundef nonnull %i.e, <2 x float> %.sroa.01.4.vec.insert.i) #23
  %i.ba = load float, ptr %i.ag, align 8, !tbaa !291 ; 2 uses
  %i.bb = fcmp ogt float %i.ba, %i.ad
  %i.bc = fcmp ogt float %i.af, 0.000000e+00
  %or.cond = and i1 %i.bc, %i.bb
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bd = fsub float %i.ai, %i.ba
  %i.be = fdiv float %i.bd, %i.af                 ; 3 uses
  %i.bf = fcmp olt float %i.be, 0.000000e+00
  %i.bg = fcmp ogt float %i.be, 1.000000e+00
  %i.bh = select i1 %i.bg, float 1.000000e+00, float %i.be
  %i.bi = select i1 %i.bf, float 0.000000e+00, float %i.bh
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.061 = phi float [ %i.bi, %bb.g ], [ 1.000000e+00, %bb.f ]
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bk = load float, ptr %i.bj, align 8, !tbaa !327
  %i.bl = fmul float %i.az, %i.bk
  %i.bm = fmul float %.061, %i.bl
  %i.bn = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bo = shufflevector <2 x float> %.sroa.021.0, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bp = fmul <2 x float> %i.bn, %i.bo           ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !328
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 1960
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !76 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 176
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 192
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !93
  %i.bx = sext i32 %i.br to i64                   ; 2 uses
  %i.by = getelementptr inbounds [32 x i8], ptr %i.bw, i64 %i.bx ; 3 uses
  %i.bz = load ptr, ptr %i.bu, align 8, !tbaa !91
  %i.ca = getelementptr inbounds [96 x i8], ptr %i.bz, i64 %i.bx ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 60
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !532
  %i.cd = load <2 x float>, ptr %i.by, align 4
  %i.ce = shufflevector <2 x float> %.sroa.021.0, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = fmul <2 x float> %i.n, %i.ce            ; 2 uses
  %i.cg = fsub <2 x float> %i.cf, %i.bp
  %i.ch = fadd <2 x float> %i.cf, %i.bp
  %i.ci = shufflevector <2 x float> %i.cg, <2 x float> %i.ch, <2 x i32> <i32 0, i32 3>
  %i.cj = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cl = fmul <2 x float> %i.ci, %i.ck           ; 2 uses
  %i.cm = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.co = fmul <2 x float> %i.cl, %i.cn
  %i.cp = fadd <2 x float> %i.co, %i.cd
  store <2 x float> %i.cp, ptr %i.by, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.cr = load <2 x float>, ptr %i.cq, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !533
  %i.cu = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cv = fsub <2 x float> %.sroa.027.0, %i.cr    ; 2 uses
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cx = fmul <2 x float> %i.n, %i.cw            ; 2 uses
  %i.cy = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cz = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.da = fmul <2 x float> %i.cy, %i.cz           ; 2 uses
  %i.db = fsub <2 x float> %i.cx, %i.da
  %i.dc = fadd <2 x float> %i.cx, %i.da
  %i.dd = shufflevector <2 x float> %i.db, <2 x float> %i.dc, <2 x i32> <i32 0, i32 3>
  %i.de = fmul <2 x float> %i.cu, %i.dd           ; 2 uses
  %shift99 = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop100 = fsub <2 x float> %i.de, %shift99
  %i.df = extractelement <2 x float> %foldExtExtBinop100, i64 0
  %i.dg = fmul float %i.ct, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  %i.di = load float, ptr %i.dh, align 4, !tbaa !330
  %i.dj = fadd float %i.di, %i.dg
  store float %i.dj, ptr %i.dh, align 4, !tbaa !330
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
  store i32 %0, ptr %1, align 4
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !200  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2192
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !155
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !211
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
end_hunk_1
begin_hunk_2_@b2CollideTask:bb.a
  %i.ab = sext i32 %0 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph384, %.loopexit
  %indvars.iv391 = phi i64 [ %i.ab, %.lr.ph384 ], [ %indvars.iv.next392, %.loopexit ] ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.f, i64 %indvars.iv391
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !208 ; 24 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !232 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 44
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !537
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [296 x i8], ptr %i.h, i64 %i.ah ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !538
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
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !230 ; 2 uses
  br i1 %i.ba, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bd = and i32 %i.bc, -196609
  %i.be = or disjoint i32 %i.bd, 131072
  store i32 %i.be, ptr %i.bb, align 4, !tbaa !230
  %.val233 = load ptr, ptr %i.x, align 8, !tbaa !214
  %i.bf = lshr i32 %i.ae, 6
  %i.bg = and i32 %i.ae, 63
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = shl nuw i64 1, %i.bh
  %i.bj = zext nneg i32 %i.bf to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.val233, i64 %i.bj ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !215
  %i.bm = or i64 %i.bl, %i.bi
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !215
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
  %.sroa.096.0.copyload = load <2 x float>, ptr %i.bw, align 4 ; 3 uses
  %.sroa.699.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.sroa.699.0.copyload = load <2 x float>, ptr %.sroa.699.0..sroa_idx, align 4 ; 15 uses
  %.sroa.088.0.copyload = load <2 x float>, ptr %i.bx, align 4 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.sroa.6.0.copyload = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 4 ; 11 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !254
  %i.ca = icmp eq i32 %i.bz, 2
  br i1 %i.ca, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !328
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.cd = phi i32 [ %i.cc, %bb.e ], [ -1, %bb.d ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ad, i64 36 ; 2 uses
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !539
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
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !328
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.cn = phi i32 [ %i.cm, %bb.g ], [ -1, %bb.f ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ad, i64 40 ; 2 uses
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !540
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
  %.pre = load i32, ptr %i.bb, align 4, !tbaa !230
  br label %.thread

bb.i:                                             ; preds = %bb.h
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bv, i64 80
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !255
  %i.cx = and i32 %i.cw, 8
  %i.cy = icmp eq i32 %i.cx, 0
  %or.cond = select i1 %i.cy, i1 %i.y, i1 false
  %.pre395 = load i32, ptr %i.bb, align 4, !tbaa !230 ; 4 uses
  %i.cz = and i32 %.pre395, 4194312
  %or.cond230.not = icmp eq i32 %i.cz, 4194312
  %or.cond401 = select i1 %or.cond, i1 %or.cond230.not, i1 false
  br i1 %or.cond401, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %.sroa.085.0.copyload = load <2 x float>, ptr %i.da, align 4 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %.sroa.083.0.copyload = load <2 x float>, ptr %i.db, align 4 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %.sroa.081.0.copyload = load <2 x float>, ptr %i.dc, align 4
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 28
  %.sroa.482.0.copyload = load <2 x float>, ptr %.sroa.482.0..sroa_idx, align 4
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
  %i.dv = fmul <2 x float> %.sroa.6.0.copyload, %.sroa.083.0.copyload ; 2 uses
  %shift = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.du, %shift ; 2 uses
  %i.dw = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %shift416 = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop417 = fadd <2 x float> %i.dv, %shift416 ; 2 uses
  %i.dx = extractelement <2 x float> %foldExtExtBinop417, i64 0 ; 2 uses
  %i.dy = fcmp olt float %i.dw, %i.dx
  %i.dz = select i1 %i.dy, float %i.dw, float %i.dx
  %i.ea = getelementptr inbounds nuw i8, ptr %i.br, i64 84
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !243
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bw, i64 72
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !541
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ef = phi float [ %i.ee, %bb.k ], [ 0.000000e+00, %bb.j ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bv, i64 84
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !243
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bx, i64 72
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !541
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.el = phi float [ %i.ek, %bb.m ], [ 0.000000e+00, %bb.l ] ; 2 uses
  %i.em = fcmp ogt float %i.dz, 9.800000e-01
  br i1 %i.em, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.en = fmul <2 x float> %i.dk, %.sroa.482.0.copyload ; 2 uses
  %shift419 = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop420 = fsub <2 x float> %shift419, %i.en
  %i.eo = extractelement <2 x float> %foldExtExtBinop420, i64 0 ; 3 uses
  %i.ep = shufflevector <2 x float> %.sroa.081.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.eq = fsub <2 x float> %i.ep, %i.dt           ; 2 uses
  %i.er = fmul <2 x float> %i.eq, %i.eq
  %4 = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.er)
  %sqrt.i = tail call float @llvm.sqrt.f32(float %4)
  %i.es = fcmp ogt float %i.ef, %i.el
  %i.et = select i1 %i.es, float %i.ef, float %i.el
  %i.eu = select i1 %.not225, i1 %i.t, i1 false
  %i.ev = select i1 %i.eu, float %i.s, float %i.p
  %i.ew = fcmp olt float %i.eo, 0.000000e+00
  %i.ex = fneg float %i.eo
  %i.ey = select i1 %i.ew, float %i.ex, float %i.eo
  %i.ez = fmul float %i.ey, %i.et
  %i.fa = fadd float %sqrt.i, %i.ez
  %i.fb = fcmp olt float %i.fa, %i.ev
  br i1 %i.fb, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.fc = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> %.sroa.699.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.fd = shufflevector <2 x float> %.sroa.083.0.copyload, <2 x float> %.sroa.085.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.fe = fmul <2 x float> %i.fc, %i.fd
  %i.ff = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> %.sroa.699.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.fg = shufflevector <2 x float> %.sroa.083.0.copyload, <2 x float> %.sroa.085.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.fh = fmul <2 x float> %i.ff, %i.fg
  %i.fi = fsub <2 x float> %i.fe, %i.fh           ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.fl = load <2 x float>, ptr %i.fj, align 4
  %i.fm = load <2 x float>, ptr %i.fk, align 4
  %i.fn = fsub <2 x float> %i.fl, %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ad, i64 176
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !246 ; 2 uses
  %i.fq = icmp sgt i32 %i.fp, 0
  br i1 %i.fq, label %.lr.ph382, label %.critedge

.lr.ph382:                                        ; preds = %bb.p
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ad, i64 68
  %.sroa.065.0.copyload = load <2 x float>, ptr %i.fr, align 4 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ad, i64 184
  %.not228 = icmp eq i32 %i.cd, -1
  %i.fu = sext i32 %i.cd to i64
  %i.fv = getelementptr inbounds [32 x i8], ptr %i.n, i64 %i.fu ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %.not229 = icmp eq i32 %i.cn, -1
  %i.fx = sext i32 %i.cn to i64
  %i.fy = getelementptr inbounds [32 x i8], ptr %i.n, i64 %i.fx ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %wide.trip.count389 = zext nneg i32 %i.fp to i64
  %i.ga = shufflevector <2 x float> %foldExtExtBinop417, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gb = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gc = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gd = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.q

.critedge:                                        ; preds = %bb.x, %bb.p
  %i.ge = load i32, ptr %i.aa, align 8, !tbaa !212
  %i.gf = add nsw i32 %i.ge, 1
  store i32 %i.gf, ptr %i.aa, align 8, !tbaa !212
  br label %.loopexit

bb.q:                                             ; preds = %.lr.ph382, %bb.x
  %indvars.iv386 = phi i64 [ 0, %.lr.ph382 ], [ %indvars.iv.next387, %bb.x ] ; 2 uses
  %i.gg = getelementptr inbounds nuw [48 x i8], ptr %i.fs, i64 %indvars.iv386 ; 9 uses
  %i.gh = load <2 x float>, ptr %i.gg, align 4    ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gj = load <2 x float>, ptr %i.gi, align 4    ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gg, i64 40
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !542
  %i.gm = shufflevector <2 x float> %i.gh, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gn = fmul <2 x float> %i.gc, %i.gm           ; 2 uses
  %i.go = fmul <2 x float> %i.gb, %i.gh           ; 2 uses
  %i.gp = fsub <2 x float> %i.go, %i.gn
  %i.gq = fadd <2 x float> %i.go, %i.gn
  %i.gr = shufflevector <2 x float> %i.gp, <2 x float> %i.gq, <2 x i32> <i32 0, i32 3>
  %i.gs = shufflevector <2 x float> %i.gj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gt = fmul <2 x float> %i.gd, %i.gs           ; 2 uses
  %i.gu = fmul <2 x float> %i.ga, %i.gj           ; 2 uses
  %i.gv = fsub <2 x float> %i.gu, %i.gt
  %i.gw = fadd <2 x float> %i.gu, %i.gt
  %i.gx = shufflevector <2 x float> %i.gv, <2 x float> %i.gw, <2 x i32> <i32 0, i32 3>
  %i.gy = fsub <2 x float> %i.gx, %i.gr
  %i.gz = fadd <2 x float> %i.fn, %i.gy
  %i.ha = fmul <2 x float> %.sroa.065.0.copyload, %i.gz ; 2 uses
  %shift425.a = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop426.a = fadd <2 x float> %i.ha, %shift425.a
  %i.hb = extractelement <2 x float> %foldExtExtBinop426.a, i64 0
  %i.hc = fadd float %i.gl, %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  store float %i.hc, ptr %i.hd, align 4, !tbaa !249
  %i.he = getelementptr inbounds nuw i8, ptr %i.gg, i64 32
  %i.hf = load float, ptr %i.he, align 4, !tbaa !251
  %i.hg = fcmp ogt float %i.hf, 0.000000e+00
  br i1 %i.hg, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gg, i64 36
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !543 ; 2 uses
  %i.hj = load float, ptr %i.z, align 8, !tbaa !263
  %i.hk = fneg float %i.hj
  %i.hl = fcmp olt float %i.hi, %i.hk
  br i1 %i.hl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.hm = load float, ptr %i.ft, align 4, !tbaa !544
  %i.hn = fneg float %i.hm
  %i.ho = fmul float %i.hi, %i.hn
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.r, %bb.s
  %.sink = phi float [ %i.ho, %bb.s ], [ 0.000000e+00, %bb.r ], [ 0.000000e+00, %bb.q ]
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gg, i64 28
  store float %.sink, ptr %i.hp, align 4, !tbaa !545
  br i1 %.not228, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hq = load float, ptr %i.fw, align 4, !tbaa !330
  %i.hr = load <2 x float>, ptr %i.fv, align 4    ; 2 uses
  %i.hs = insertelement <2 x float> poison, float %i.hq, i64 0
  %i.ht = shufflevector <2 x float> %i.hs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hu = fmul <2 x float> %i.ht, %i.gh           ; 2 uses
  %shift428.a = shufflevector <2 x float> %i.hu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop429.a = fsub <2 x float> %i.hr, %shift428.a
  %shift431.a = shufflevector <2 x float> %i.hr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop432.a = fadd <2 x float> %shift431.a, %i.hu
  %.sroa.02.4.vec.insert.i303 = shufflevector <2 x float> %foldExtExtBinop429.a, <2 x float> %foldExtExtBinop432.a, <2 x i32> <i32 0, i32 2>
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.041.0 = phi <2 x float> [ %.sroa.02.4.vec.insert.i303, %bb.u ], [ zeroinitializer, %bb.t ]
  br i1 %.not229, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hv = load float, ptr %i.fz, align 4, !tbaa !330
  %i.hw = load <2 x float>, ptr %i.fy, align 4    ; 2 uses
  %i.hx = insertelement <2 x float> poison, float %i.hv, i64 0
  %i.hy = shufflevector <2 x float> %i.hx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hz = fmul <2 x float> %i.hy, %i.gj           ; 2 uses
  %shift434.a = shufflevector <2 x float> %i.hz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop435.a = fsub <2 x float> %i.hw, %shift434.a
  %shift437.a = shufflevector <2 x float> %i.hw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop438.a = fadd <2 x float> %shift437.a, %i.hz
  %.sroa.02.4.vec.insert.i313 = shufflevector <2 x float> %foldExtExtBinop435.a, <2 x float> %foldExtExtBinop438.a, <2 x i32> <i32 0, i32 2>
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sroa.034.0 = phi <2 x float> [ %.sroa.02.4.vec.insert.i313, %bb.w ], [ zeroinitializer, %bb.v ]
  %i.ia = fsub <2 x float> %.sroa.034.0, %.sroa.041.0
  %i.ib = fmul <2 x float> %.sroa.065.0.copyload, %i.ia ; 2 uses
  %shift440.a = shufflevector <2 x float> %i.ib, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop441.a = fadd <2 x float> %i.ib, %shift440.a
  %i.ic = extractelement <2 x float> %foldExtExtBinop441.a, i64 0
  %i.id = getelementptr inbounds nuw i8, ptr %i.gg, i64 36
  store float %i.ic, ptr %i.id, align 4, !tbaa !543
  %i.ie = getelementptr inbounds nuw i8, ptr %i.gg, i64 46
  store i8 1, ptr %i.ie, align 2, !tbaa !250
  %indvars.iv.next387 = add nuw nsw i64 %indvars.iv386, 1 ; 2 uses
  %exitcond390.not = icmp eq i64 %indvars.iv.next387, %wide.trip.count389
  br i1 %exitcond390.not, label %.critedge, label %bb.q, !llvm.loop !534

.thread:                                          ; preds = %..thread_crit_edge, %bb.o, %bb.n, %bb.i
  %i.if = phi i32 [ %.pre, %..thread_crit_edge ], [ %.pre395, %bb.o ], [ %.pre395, %bb.n ], [ %.pre395, %bb.i ]
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store <2 x float> %.sroa.699.0.copyload, ptr %i.ig, align 4
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store <2 x float> %.sroa.6.0.copyload, ptr %i.ih, align 4
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.ij = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ik = fmul <2 x float> %.sroa.699.0.copyload, %i.ij ; 2 uses
  %shift443.a = shufflevector <2 x float> %i.ik, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop444.a = fsub <2 x float> %i.ik, %shift443.a
  %i.il = fmul <2 x float> %.sroa.699.0.copyload, %.sroa.6.0.copyload ; 2 uses
  %shift446 = shufflevector <2 x float> %i.il, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop447 = fadd <2 x float> %i.il, %shift446
  %.sroa.010.0.vec.insert.i.i328 = shufflevector <2 x float> %foldExtExtBinop447, <2 x float> %foldExtExtBinop444.a, <2 x i32> <i32 0, i32 2>
  %i.im = fsub <2 x float> %.sroa.088.0.copyload, %.sroa.096.0.copyload ; 2 uses
  %i.in = shufflevector <2 x float> %i.im, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.io = fmul <2 x float> %.sroa.699.0.copyload, %i.in ; 2 uses
  %i.ip = shufflevector <2 x float> %.sroa.699.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.iq = shufflevector <2 x float> %i.im, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ir = fmul <2 x float> %i.ip, %i.iq           ; 2 uses
  %i.is = fadd <2 x float> %i.io, %i.ir
  %i.it = fsub <2 x float> %i.io, %i.ir
  %i.iu = shufflevector <2 x float> %i.is, <2 x float> %i.it, <2 x i32> <i32 1, i32 2>
  store <2 x float> %i.iu, ptr %i.ii, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 28
  store <2 x float> %.sroa.010.0.vec.insert.i.i328, ptr %.sroa.4.0..sroa_idx, align 4
  %i.iv = or i32 %i.if, 4194304
  store i32 %i.iv, ptr %i.bb, align 4, !tbaa !230
  %i.iw = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.ix = load <2 x float>, ptr %i.iw, align 4    ; 2 uses
  %i.iy = shufflevector <2 x float> %i.ix, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iz = fmul <2 x float> %.sroa.699.0.copyload, %i.iy ; 2 uses
  %i.ja = shufflevector <2 x float> %.sroa.699.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.jb = shufflevector <2 x float> %i.ix, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jc = fmul <2 x float> %i.ja, %i.jb           ; 2 uses
  %i.jd = fsub <2 x float> %i.iz, %i.jc
  %i.je = fadd <2 x float> %i.iz, %i.jc
  %i.jf = shufflevector <2 x float> %i.jd, <2 x float> %i.je, <2 x i32> <i32 0, i32 3>
  %i.jg = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.jh = load <2 x float>, ptr %i.jg, align 4    ; 2 uses
  %i.ji = shufflevector <2 x float> %i.jh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jj = fmul <2 x float> %.sroa.6.0.copyload, %i.ji ; 2 uses
  %i.jk = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.jl = shufflevector <2 x float> %i.jh, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jm = fmul <2 x float> %i.jk, %i.jl           ; 2 uses
  %i.jn = fsub <2 x float> %i.jj, %i.jm
  %i.jo = fadd <2 x float> %i.jj, %i.jm
  %i.jp = shufflevector <2 x float> %i.jn, <2 x float> %i.jo, <2 x i32> <i32 0, i32 3>
  %i.jq = tail call zeroext i1 @b2UpdateContact(ptr noundef %i.b, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ai, <2 x float> %.sroa.096.0.copyload, <2 x float> %.sroa.699.0.copyload, <2 x float> %i.jf, ptr noundef nonnull %i.am, <2 x float> %.sroa.088.0.copyload, <2 x float> %.sroa.6.0.copyload, <2 x float> %i.jp) #23 ; 3 uses
  %or.cond231 = select i1 %i.jq, i1 %.not225, i1 false
  br i1 %or.cond231, label %.sink.split, label %bb.y

bb.y:                                             ; preds = %.thread
  %brmerge = select i1 %i.jq, i1 true, i1 %.not225
  br i1 %brmerge, label %bb.z, label %.sink.split

.sink.split:                                      ; preds = %bb.y, %.thread
  %.sink414 = phi i32 [ 262144, %.thread ], [ 524288, %bb.y ]
  %i.jr = load i32, ptr %i.bb, align 4, !tbaa !230
  %i.js = or i32 %i.jr, %.sink414
  store i32 %i.js, ptr %i.bb, align 4, !tbaa !230
  %.val = load ptr, ptr %i.x, align 8, !tbaa !214
  %i.jt = lshr i32 %i.ae, 6
  %i.ju = and i32 %i.ae, 63
  %i.jv = zext nneg i32 %i.ju to i64
  %i.jw = shl nuw i64 1, %i.jv
  %i.jx = zext nneg i32 %i.jt to i64
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.jx ; 2 uses
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !215
  %i.ka = or i64 %i.jz, %i.jw
  store i64 %i.ka, ptr %i.jy, align 8, !tbaa !215
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %bb.y
  br i1 %i.jq, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.z
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ad, i64 68
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ad, i64 176
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !246 ; 2 uses
  %i.ke = icmp sgt i32 %i.kd, 0
  br i1 %i.ke, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  %i.kg = load i32, ptr %i.ce, align 4, !tbaa !539 ; 2 uses
  %.not226 = icmp eq i32 %i.kg, -1
  %i.kh = sext i32 %i.kg to i64
  %i.ki = getelementptr inbounds [32 x i8], ptr %i.n, i64 %i.kh ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.kk = load i32, ptr %i.co, align 4, !tbaa !540 ; 2 uses
  %.not227 = icmp eq i32 %i.kk, -1
  %i.kl = sext i32 %i.kk to i64
  %i.km = getelementptr inbounds [32 x i8], ptr %i.n, i64 %i.kl ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %wide.trip.count = zext nneg i32 %i.kd to i64
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph, %bb.ae
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ae ] ; 2 uses
  %i.ko = getelementptr inbounds nuw [48 x i8], ptr %i.kf, i64 %indvars.iv ; 5 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !249
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 40
  store float %i.kq, ptr %i.kr, align 4, !tbaa !542
  br i1 %.not226, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ks = load float, ptr %i.kj, align 4, !tbaa !330
  %i.kt = load <2 x float>, ptr %i.ko, align 4
  %i.ku = load <2 x float>, ptr %i.ki, align 4    ; 2 uses
  %i.kv = insertelement <2 x float> poison, float %i.ks, i64 0
  %i.kw = shufflevector <2 x float> %i.kv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kx = shufflevector <2 x float> %i.kt, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ky = fmul <2 x float> %i.kw, %i.kx           ; 2 uses
  %i.kz = fsub <2 x float> %i.ku, %i.ky
  %i.la = fadd <2 x float> %i.ku, %i.ky
  %i.lb = shufflevector <2 x float> %i.kz, <2 x float> %i.la, <2 x i32> <i32 0, i32 3>
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sroa.012.0 = phi <2 x float> [ %i.lb, %bb.ab ], [ zeroinitializer, %bb.aa ]
  br i1 %.not227, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.lc = load float, ptr %i.kn, align 4, !tbaa !330
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.le = load <2 x float>, ptr %i.ld, align 4
  %i.lf = load <2 x float>, ptr %i.km, align 4    ; 2 uses
  %i.lg = insertelement <2 x float> poison, float %i.lc, i64 0
  %i.lh = shufflevector <2 x float> %i.lg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.li = shufflevector <2 x float> %i.le, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.lj = fmul <2 x float> %i.lh, %i.li           ; 2 uses
  %i.lk = fsub <2 x float> %i.lf, %i.lj
  %i.ll = fadd <2 x float> %i.lf, %i.lj
  %i.lm = shufflevector <2 x float> %i.lk, <2 x float> %i.ll, <2 x i32> <i32 0, i32 3>
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.sroa.06.0 = phi <2 x float> [ %i.lm, %bb.ad ], [ zeroinitializer, %bb.ac ]
  %i.ln = load <2 x float>, ptr %i.kb, align 4
  %i.lo = fsub <2 x float> %.sroa.06.0, %.sroa.012.0
  %i.lp = fmul <2 x float> %i.ln, %i.lo
  %5 = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.lp)
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ko, i64 36
  store float %5, ptr %i.lq, align 4, !tbaa !543
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.aa, !llvm.loop !535

.loopexit:                                        ; preds = %bb.ae, %.preheader, %.critedge, %bb.z, %bb.c
  %indvars.iv.next392 = add nsw i64 %indvars.iv391, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next392 to i32
  %exitcond394.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond394.not, label %._crit_edge, label %bb.b, !llvm.loop !536
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
declare float @llvm.sqrt.f32(float) #20

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
!157 = !{!65, !6, i64 2200}
!158 = !{!65, !42, i64 2208}
!159 = !{!65, !6, i64 2220}
!160 = !{!65, !6, i64 2216}
!161 = !{!"p1 _ZTS11b2SensorHit", !9, i64 0}
!162 = !{!"b2DynamicArray_b2SensorHit", !161, i64 0, !6, i64 8, !6, i64 12}
!163 = !{!"b2TaskContext", !162, i64 0, !55, i64 16, !55, i64 32, !64, i64 48, !55, i64 56, !55, i64 72, !55, i64 88, !57, i64 104, !6, i64 108, !6, i64 112}
!164 = !{!163, !161, i64 0}
!165 = !{!163, !6, i64 12}
end_hunk_2
