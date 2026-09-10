Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/oggenc?download=true
inline.NumInlined: 678
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 198
begin_hunk_0_@vorbis_encode_setup_managed:bb.a
  %i.x = load i64, ptr %i.w, align 8
  %.not60.i = icmp sgt i64 %2, %i.x
  br i1 %.not60.i, label %.backedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.in.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.y = load ptr, ptr %.in.i, align 8            ; 4 uses
  %i.z = load double, ptr %i.y, align 8
  %i.aa = fcmp olt double %i.m, %i.z
  br i1 %i.aa, label %.backedge.i, label %bb.j, !llvm.loop !6

bb.j:                                             ; preds = %bb.i
  %i.ab = load i32, ptr %i.o, align 8             ; 5 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ac
  %i.ae = load double, ptr %i.ad, align 8
  %i.af = fcmp ogt double %i.m, %i.ae
  br i1 %i.af, label %.backedge.i, label %.preheader.i, !llvm.loop !6

.preheader.i:                                     ; preds = %bb.j
  %i.ag = icmp sgt i32 %i.ab, 0
  br i1 %i.ag, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %i.ab to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.preheader.i
  %indvars.iv11.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next12.i, %bb.l ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv11.i ; 2 uses
  %i.ai = load double, ptr %i.ah, align 8
  %i.aj = fcmp ult double %i.m, %i.ai
  br i1 %i.aj, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = load double, ptr %i.ak, align 8
  %i.am = fcmp olt double %i.m, %i.al
  br i1 %i.am, label %._crit_edge.loopexit.i, label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i
  %indvars.iv.next12.i = add nuw nsw i64 %indvars.iv11.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next12.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %.lr.ph.i, !llvm.loop !7

._crit_edge.thread.i:                             ; preds = %bb.l
  store ptr %i.o, ptr %i.c, align 8
  br label %bb.m

._crit_edge.loopexit.i:                           ; preds = %bb.k
  %i.an = trunc nuw nsw i64 %indvars.iv11.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %.053.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.an, %._crit_edge.loopexit.i ] ; 3 uses
  store ptr %i.o, ptr %i.c, align 8
  %i.ao = icmp eq i32 %.053.lcssa.i, %i.ab
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %i.ap = uitofp nneg i32 %i.ab to double
  %i.aq = fadd double %i.ap, -1.000000e-03
  br label %get_setup_template.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.ar = zext nneg i32 %.053.lcssa.i to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ar
  %i.at = load <2 x double>, ptr %i.as, align 8
  %i.au = fptrunc <2 x double> %i.at to <2 x float> ; 3 uses
  %i.av = extractelement <2 x float> %i.au, i64 0
  %i.aw = fpext float %i.av to double
  %i.ax = fsub double %i.m, %i.aw
  %shift = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.au
  %i.ay = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.az = fpext float %i.ay to double
  %i.ba = fdiv double %i.ax, %i.az
  %i.bb = fptrunc double %i.ba to float
  %i.bc = uitofp nneg i32 %.053.lcssa.i to float
  %i.bd = fadd float %i.bc, %i.bb
  %i.be = fpext float %i.bd to double
  br label %get_setup_template.exit

.backedge.i:                                      ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not58.i = icmp eq i64 %indvars.iv.next.i, 22
  br i1 %.not58.i, label %get_setup_template.exit.thread, label %bb.f, !llvm.loop !6

get_setup_template.exit.thread:                   ; preds = %.backedge.i
  store ptr null, ptr %i.c, align 8
  br label %bb.o

get_setup_template.exit:                          ; preds = %bb.n, %bb.m
  %.sink = phi double [ %i.be, %bb.n ], [ %i.aq, %bb.m ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 5528
  store double %.sink, ptr %i.bf, align 8
  %i.bg = load ptr, ptr %i.a, align 8             ; 17 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 5512
  %i.bi = load ptr, ptr %i.bh, align 8            ; 3 uses
  %i.bj = trunc i64 %1 to i32
  store i32 0, ptr %0, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.bj, ptr %i.bk, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 5528
  %i.bn = load double, ptr %i.bm, align 8         ; 7 uses
  %i.bo = fptosi double %i.bn to i32              ; 3 uses
  %i.bp = sitofp i32 %i.bo to double
  %i.bq = fsub double %i.bn, %i.bp                ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bg, i64 5544
  store double %i.bn, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 5536
  store double %i.bn, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bg, i64 5560
  store i32 0, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bg, i64 5624
  store i32 1, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bg, i64 5628
  store i32 1, ptr %i.bv, align 4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bg, i64 5632
  store double %i.bn, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bi, i64 240
  %i.by = load ptr, ptr %i.bx, align 8            ; 2 uses
  %i.bz = sext i32 %i.bo to i64                   ; 3 uses
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.bz
  %i.cb = load double, ptr %i.ca, align 8
  %i.cc = fsub double 1.000000e+00, %i.bq         ; 3 uses
  %i.cd = fmul double %i.cc, %i.cb
  %i.ce = add nsw i32 %i.bo, 1
  %i.cf = sext i32 %i.ce to i64                   ; 3 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.cf
  %i.ch = load double, ptr %i.cg, align 8
  %i.ci = fmul double %i.bq, %i.ch
  %i.cj = fadd double %i.cd, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bg, i64 5640
  store double %i.cj, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bi, i64 224
  %i.cm = load ptr, ptr %i.cl, align 8            ; 2 uses
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.bz
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = sitofp i32 %i.co to double
  %i.cq = fmul double %i.cc, %i.cp
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.cf
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = sitofp i32 %i.cs to double
  %i.cu = fmul double %i.bq, %i.ct
  %i.cv = fadd double %i.cq, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bg, i64 5648
  store double %i.cv, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bi, i64 232
  %i.cy = load ptr, ptr %i.cx, align 8            ; 2 uses
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.bz
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = sitofp i32 %i.da to double
  %i.dc = fmul double %i.cc, %i.db
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.cf
  %i.de = load i32, ptr %i.dd, align 4
  %i.df = sitofp i32 %i.de to double
  %i.dg = fmul double %i.bq, %i.df
  %i.dh = fadd double %i.dc, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.bg, i64 5656
  store double %i.dh, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bg, i64 5664
  store double -6.000000e+00, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bg, i64 5672
  %i.dl = insertelement <4 x double> poison, double %i.bn, i64 0
  %i.dm = shufflevector <4 x double> %i.dl, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  store <4 x double> %i.dm, ptr %i.dk, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bg, i64 5704
  store <4 x double> %i.dm, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.bg, i64 5736
  store <4 x double> %i.dm, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bg, i64 5768
  store <4 x double> %i.dm, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bg, i64 5800
  store double %i.bn, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 5560
  store i32 1, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 5616
  store double 5.000000e-01, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 5600
  store <2 x double> <double 2.000000e+00, double 4.000000e+00>, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 5568
  store i64 %5, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 5592
  store i64 %3, ptr %i.dv, align 8
  %i.dw = fptosi double %i.d to i64               ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 5576
  store i64 %i.dw, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 5584
  store i64 %i.dw, ptr %i.dy, align 8
  br label %bb.o

bb.o:                                             ; preds = %get_setup_template.exit.thread, %bb.d, %get_setup_template.exit
  %.0 = phi i32 [ -130, %get_setup_template.exit.thread ], [ 0, %get_setup_template.exit ], [ -131, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define dso_local range(i32 -131, 1) i32 @vorbis_encode_setup_init(ptr nofree noundef %0) local_unnamed_addr #27 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 33 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 43 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 5512
  %i.d = icmp eq ptr %i.b, null
  br i1 %i.d, label %bb.cp, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 5624
  %i.f = load i32, ptr %i.e, align 8
  %.not.not = icmp eq i32 %i.f, 0                 ; 2 uses
  %spec.select = zext i1 %.not.not to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 5648 ; 2 uses
  %i.h = load double, ptr %i.g, align 8           ; 2 uses
  %i.i = fcmp ogt double %i.h, -8.000000e+01
  br i1 %i.i, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = fcmp olt double %i.h, -2.000000e+02
  br i1 %i.j, label %.sink.split, label %bb.d

.sink.split:                                      ; preds = %bb.c, %bb.b
  %.sink = phi double [ -8.000000e+01, %bb.b ], [ -2.000000e+02, %bb.c ]
  store double %.sink, ptr %i.g, align 8
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 5664 ; 2 uses
  %i.l = load double, ptr %i.k, align 8           ; 2 uses
  %i.m = fcmp ogt double %i.l, 0.000000e+00
  br i1 %i.m, label %.sink.split314, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = fcmp olt double %i.l, -9.999900e+04
  br i1 %i.n, label %.sink.split314, label %bb.f

.sink.split314:                                   ; preds = %bb.e, %bb.d
  %.sink315 = phi double [ 0.000000e+00, %bb.d ], [ -9.999900e+04, %bb.e ]
  store double %.sink315, ptr %i.k, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split314, %bb.e
  %i.o = load ptr, ptr %i.c, align 8              ; 32 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.cp, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 5520
  store i32 1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 5528 ; 2 uses
  %i.s = load double, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.w = load ptr, ptr %i.v, align 8
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.x = fptosi double %i.s to i32
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.y
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = sext i32 %i.aa to i64
  store i64 %i.ad, ptr %.val, align 8
  %i.ae = sext i32 %i.ac to i64
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 8
  store i64 %i.ae, ptr %i.af, align 8
  %i.ag = load i64, ptr %i.b, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ai = load i64, ptr %i.ah, align 8
  %.not176 = icmp eq i64 %i.ag, %i.ai             ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 5544 ; 3 uses
  %i.ak = load double, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 272 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 280 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 288
  %i.aq = load ptr, ptr %i.ap, align 8
  %.val180 = load ptr, ptr %i.a, align 8
  tail call fastcc void @vorbis_encode_floor_setup(ptr %.val180, double noundef %i.ak, i32 noundef 0, ptr noundef %i.am, ptr noundef %i.ao, ptr noundef %i.aq)
  br i1 %.not176, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 5536
  %i.as = load double, ptr %i.ar, align 8
  %i.at = load ptr, ptr %i.al, align 8
  %i.au = load ptr, ptr %i.an, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 296
  %i.aw = load ptr, ptr %i.av, align 8
  %.val179 = load ptr, ptr %i.a, align 8
  tail call fastcc void @vorbis_encode_floor_setup(ptr %.val179, double noundef %i.as, i32 noundef 1, ptr noundef %i.at, ptr noundef %i.au, ptr noundef %i.aw)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 5672
  %i.ay = load double, ptr %i.ax, align 8         ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 248
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.o, i64 256
  %i.bc = load ptr, ptr %i.bb, align 8
  %.val181 = load ptr, ptr %i.a, align 8          ; 11 uses
  %i.bd = fptosi double %i.ay to i32              ; 2 uses
  %i.be = sitofp i32 %i.bd to double
  %i.bf = fsub double %i.ay, %i.be                ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.val181, i64 4944
  %i.bh = sext i32 %i.bd to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bh ; 3 uses
  %i.bj = load double, ptr %i.bi, align 8
  %i.bk = fptosi double %i.bj to i32
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [492 x i8], ptr %i.ba, i64 %i.bl
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(492) %i.bg, ptr noundef nonnull readonly align 4 dereferenceable(492) %i.bm, i64 492, i1 false)
  %i.bn = load double, ptr %i.bi, align 8
  %i.bo = fsub double 1.000000e+00, %i.bf
  %i.bp = fmul double %i.bo, %i.bn
  %i.bq = getelementptr i8, ptr %i.bi, i64 8
  %i.br = load double, ptr %i.bq, align 8
  %i.bs = fmul double %i.bf, %i.br
  %i.bt = fadd double %i.bp, %i.bs                ; 2 uses
  %i.bu = fptosi double %i.bt to i32              ; 3 uses
  %i.bv = sitofp i32 %i.bu to double
  %i.bw = fsub double %i.bt, %i.bv                ; 2 uses
  %i.bx = fcmp oeq double %i.bw, 0.000000e+00
  %i.by = icmp sgt i32 %i.bu, 0
  %or.cond.i = and i1 %i.by, %i.bx                ; 2 uses
  %i.bz = sext i1 %or.cond.i to i32
  %.045.i = add nsw i32 %i.bz, %i.bu
  %.0.i = select i1 %or.cond.i, double 1.000000e+00, double %i.bw ; 9 uses
  %i.ca = sext i32 %.045.i to i64
  %i.cb = getelementptr inbounds [492 x i8], ptr %i.ba, i64 %i.ca ; 16 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cd = fsub double 1.000000e+00, %.0.i         ; 8 uses
  %i.ce = getelementptr i8, ptr %i.cb, i64 496
  %i.cf = getelementptr inbounds nuw i8, ptr %.val181, i64 4948
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.ch = getelementptr i8, ptr %i.cb, i64 524
  %i.ci = getelementptr inbounds nuw i8, ptr %.val181, i64 4976
  %i.cj = load float, ptr %i.cc, align 4
  %i.ck = fpext float %i.cj to double
  %i.cl = fmul double %i.cd, %i.ck
  %i.cm = load float, ptr %i.ce, align 4
  %i.cn = fpext float %i.cm to double
  %i.co = fmul double %.0.i, %i.cn
  %i.cp = fadd double %i.co, %i.cl
  %i.cq = fptrunc double %i.cp to float
  store float %i.cq, ptr %i.cf, align 4
  %i.cr = load float, ptr %i.cg, align 4
  %i.cs = fpext float %i.cr to double
  %i.ct = fmul double %i.cd, %i.cs
  %i.cu = load float, ptr %i.ch, align 4
  %i.cv = fpext float %i.cu to double
  %i.cw = fmul double %.0.i, %i.cv
  %i.cx = fadd double %i.cw, %i.ct
  %i.cy = fptrunc double %i.cx to float
  store float %i.cy, ptr %i.ci, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.da = load float, ptr %i.cz, align 4
  %i.db = fpext float %i.da to double
  %i.dc = fmul double %i.cd, %i.db
  %i.dd = getelementptr i8, ptr %i.cb, i64 500
  %i.de = load float, ptr %i.dd, align 4
  %i.df = fpext float %i.de to double
  %i.dg = fmul double %.0.i, %i.df
  %i.dh = fadd double %i.dc, %i.dg
  %i.di = fptrunc double %i.dh to float
  %i.dj = getelementptr inbounds nuw i8, ptr %.val181, i64 4952
  store float %i.di, ptr %i.dj, align 4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cb, i64 36
  %i.dl = load float, ptr %i.dk, align 4
  %i.dm = fpext float %i.dl to double
  %i.dn = fmul double %i.cd, %i.dm
  %i.do = getelementptr i8, ptr %i.cb, i64 528
  %i.dp = load float, ptr %i.do, align 4
  %i.dq = fpext float %i.dp to double
  %i.dr = fmul double %.0.i, %i.dq
  %i.ds = fadd double %i.dn, %i.dr
  %i.dt = fptrunc double %i.ds to float
  %i.du = getelementptr inbounds nuw i8, ptr %.val181, i64 4980
  store float %i.dt, ptr %i.du, align 4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  %i.dw = load float, ptr %i.dv, align 4
  %i.dx = fpext float %i.dw to double
  %i.dy = fmul double %i.cd, %i.dx
  %i.dz = getelementptr i8, ptr %i.cb, i64 504
  %i.ea = load float, ptr %i.dz, align 4
  %i.eb = fpext float %i.ea to double
  %i.ec = fmul double %.0.i, %i.eb
  %i.ed = fadd double %i.dy, %i.ec
  %i.ee = fptrunc double %i.ed to float
  %i.ef = getelementptr inbounds nuw i8, ptr %.val181, i64 4956
  store float %i.ee, ptr %i.ef, align 4
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %i.eh = load float, ptr %i.eg, align 4
  %i.ei = fpext float %i.eh to double
  %i.ej = fmul double %i.cd, %i.ei
  %i.ek = getelementptr i8, ptr %i.cb, i64 532
  %i.el = load float, ptr %i.ek, align 4
  %i.em = fpext float %i.el to double
  %i.en = fmul double %.0.i, %i.em
end_hunk_0
begin_hunk_1_@vorbis_encode_setup_init:bb.a
  %i.bqz = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.bra = getelementptr inbounds nuw i8, ptr %i.bqz, i64 5512
  %i.brb = load ptr, ptr %i.bra, align 8
  %i.brc = getelementptr inbounds nuw i8, ptr %i.brb, i64 8
  %i.brd = load ptr, ptr %i.brc, align 8          ; 2 uses
  %i.bre = icmp eq ptr %i.brd, null
  br i1 %i.bre, label %setting_to_approx_bitrate.exit, label %bb.cn

bb.cn:                                            ; preds = %vorbis_encode_map_n_res_setup.exit
  %i.brf = load i32, ptr %i.bge, align 4
  %i.brg = getelementptr inbounds nuw i8, ptr %i.bqz, i64 5528
  %i.brh = load double, ptr %i.brg, align 8       ; 2 uses
  %i.bri = fptosi double %i.brh to i32            ; 2 uses
  %i.brj = sitofp i32 %i.bri to double
  %i.brk = fsub double %i.brh, %i.brj             ; 2 uses
  %i.brl = sext i32 %i.bri to i64
  %i.brm = getelementptr inbounds [8 x i8], ptr %i.brd, i64 %i.brl ; 2 uses
  %i.brn = load double, ptr %i.brm, align 8
  %i.bro = fsub double 1.000000e+00, %i.brk
  %i.brp = fmul double %i.brn, %i.bro
  %i.brq = getelementptr i8, ptr %i.brm, i64 8
  %i.brr = load double, ptr %i.brq, align 8
  %i.brs = fmul double %i.brr, %i.brk
  %i.brt = fadd double %i.brs, %i.brp
  %i.bru = sitofp i32 %i.brf to double
  %i.brv = fmul double %i.brt, %i.bru
  %i.brw = fptosi double %i.brv to i64
  br label %setting_to_approx_bitrate.exit

setting_to_approx_bitrate.exit:                   ; preds = %vorbis_encode_map_n_res_setup.exit, %bb.cn
  %.0.i257 = phi i64 [ %i.brw, %bb.cn ], [ -1, %vorbis_encode_map_n_res_setup.exit ]
  %i.brx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.0.i257, ptr %i.brx, align 8
  %i.bry = getelementptr inbounds nuw i8, ptr %i.b, i64 5568 ; 2 uses
  %i.brz = load i64, ptr %i.bry, align 8
  %i.bsa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.brz, ptr %i.bsa, align 8
  %i.bsb = getelementptr inbounds nuw i8, ptr %i.b, i64 5592 ; 2 uses
  %i.bsc = load i64, ptr %i.bsb, align 8
  %i.bsd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bsc, ptr %i.bsd, align 8
  %i.bse = getelementptr inbounds nuw i8, ptr %i.b, i64 5600 ; 2 uses
  %i.bsf = load double, ptr %i.bse, align 8
  %i.bsg = fptosi double %i.bsf to i64
  %i.bsh = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.bsg, ptr %i.bsh, align 8
  %i.bsi = getelementptr inbounds nuw i8, ptr %i.b, i64 5560
  %i.bsj = load i32, ptr %i.bsi, align 8
  %.not = icmp eq i32 %i.bsj, 0
  br i1 %.not, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %setting_to_approx_bitrate.exit
  %i.bsk = getelementptr inbounds nuw i8, ptr %i.b, i64 5608
  %i.bsl = getelementptr inbounds nuw i8, ptr %i.b, i64 5440
  %i.bsm = load <2 x double>, ptr %i.bsk, align 8
  store <2 x double> %i.bsm, ptr %i.bsl, align 8
  %i.bsn = load double, ptr %i.bse, align 8
  %i.bso = getelementptr inbounds nuw i8, ptr %i.b, i64 5456
  store double %i.bsn, ptr %i.bso, align 8
  %i.bsp = load i64, ptr %i.bry, align 8
  %i.bsq = sitofp i64 %i.bsp to double
  %i.bsr = getelementptr inbounds nuw i8, ptr %i.b, i64 5464
  store double %i.bsq, ptr %i.bsr, align 8
  %i.bss = load i64, ptr %i.bsb, align 8
  %i.bst = sitofp i64 %i.bss to double
  %i.bsu = getelementptr inbounds nuw i8, ptr %i.b, i64 5472
  store double %i.bst, ptr %i.bsu, align 8
  %i.bsv = getelementptr inbounds nuw i8, ptr %i.b, i64 5576
  %i.bsw = load i64, ptr %i.bsv, align 8
  %i.bsx = sitofp i64 %i.bsw to double
  %i.bsy = getelementptr inbounds nuw i8, ptr %i.b, i64 5480
  store double %i.bsx, ptr %i.bsy, align 8
  %i.bsz = getelementptr inbounds nuw i8, ptr %i.b, i64 5584
  %i.bta = load i64, ptr %i.bsz, align 8
  %i.btb = sitofp i64 %i.bta to double
  %i.btc = getelementptr inbounds nuw i8, ptr %i.b, i64 5488
  store double %i.btb, ptr %i.btc, align 8
  %i.btd = getelementptr inbounds nuw i8, ptr %i.b, i64 5496
  store <2 x double> <double -9.999990e+05, double 9.999990e+05>, ptr %i.btd, align 8
  br label %bb.cp

bb.cp:                                            ; preds = %setting_to_approx_bitrate.exit, %bb.co, %bb.f, %bb.a
  %.0172 = phi i32 [ -131, %bb.f ], [ -131, %bb.a ], [ 0, %bb.co ], [ 0, %setting_to_approx_bitrate.exit ]
  ret i32 %.0172
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @vorbis_analysis_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @_vds_shared_init(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4944
  %i.g = tail call noalias dereferenceable_or_null(40) ptr @calloc(i64 noundef 1, i64 noundef 40) #71 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 %i.i, ptr %i.j, align 4
  store float -9.999000e+03, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.f, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store ptr %i.g, ptr %i.l, align 8
  %i.m = tail call noalias dereferenceable_or_null(280) ptr @calloc(i64 noundef 1, i64 noundef 280) #71 ; 2 uses
  store ptr %i.m, ptr %i.c, align 8
  tail call void @_ve_envelope_init(ptr noundef %i.m, ptr noundef %1)
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  tail call void @vorbis_bitrate_init(ptr noundef %1, ptr noundef nonnull %i.n)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noundef i32 @vorbis_block_init(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 192)) %1) local_unnamed_addr #9 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %1, i8 0, i64 192, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr null, ptr %i.b, align 8
  %i.c = load i32, ptr %0, align 8
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #71 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 184
  store ptr %i.d, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, i8 0, i64 16, i1 false)
  %i.g = tail call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #69 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.g, ptr %i.i, align 8
  store i8 0, ptr %i.g, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 256, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store float -9.999000e+03, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
define dso_local range(i32 -1, 1) i32 @ogg_stream_init(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #24 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.a, i8 0, i64 392, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 16384, ptr %i.b, align 8
  %i.c = tail call noalias dereferenceable_or_null(16384) ptr @malloc(i64 noundef 16384) #69
  store ptr %i.c, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 1024, ptr %i.d, align 8
  %i.e = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #69
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.e, ptr %i.f, align 8
  %i.g = tail call noalias dereferenceable_or_null(8192) ptr @malloc(i64 noundef 8192) #69
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.g, ptr %i.h, align 8
  %i.i = sext i32 %1 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i64 %i.i, ptr %i.j, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -130, 1) i32 @vorbis_analysis_headerout(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.oggpack_buffer, align 8     ; 82 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #62
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8              ; 8 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %_vorbis_pack_info.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 16, i1 false)
  %i.e = tail call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #69 ; 32 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 47 uses
  store ptr %i.e, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 140 uses
  store ptr %i.e, ptr %i.g, align 8
  store i8 0, ptr %i.e, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 56 uses
  store i64 256, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_vorbis_pack_info.exit, label %oggpack_write.exit92

oggpack_write.exit92:                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 94 uses
  store <8 x i8> <i8 1, i8 118, i8 111, i8 114, i8 98, i8 105, i8 115, i8 0>, ptr %i.e, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 0, ptr %i.l, align 1
  store i64 11, ptr %5, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 11 ; 2 uses
  store ptr %i.m, ptr %i.g, align 8
  store i32 0, ptr %i.k, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.o = load i32, ptr %i.n, align 4
  %i.p = trunc i32 %i.o to i8
  store i8 %i.p, ptr %i.m, align 1
  %6 = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i8 0, ptr %6, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 2 uses
  store ptr %i.q, ptr %i.g, align 8
  store i32 0, ptr %i.k, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = load i64, ptr %i.r, align 8              ; 4 uses
  %i.t = trunc i64 %i.s to i8
  store i8 %i.t, ptr %i.q, align 1
  %i.u = lshr i64 %i.s, 8
  %i.v = trunc i64 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 13
  store i8 %i.v, ptr %i.w, align 1
  %i.x = lshr i64 %i.s, 16
  %i.y = trunc i64 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 14
  store i8 %i.y, ptr %i.z, align 1
  %i.aa = lshr i64 %i.s, 24
  %i.ab = trunc i64 %i.aa to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 15
  store i8 %i.ab, ptr %i.ac, align 1
  %7 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i8 0, ptr %7, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store ptr %i.ad, ptr %i.g, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.af = load i64, ptr %i.ae, align 8            ; 4 uses
  %i.ag = trunc i64 %i.af to i8
  store i8 %i.ag, ptr %i.ad, align 1
  %i.ah = lshr i64 %i.af, 8
  %i.ai = trunc i64 %i.ah to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 17
  store i8 %i.ai, ptr %i.aj, align 1
  %i.ak = lshr i64 %i.af, 16
  %i.al = trunc i64 %i.ak to i8
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 18
  store i8 %i.al, ptr %i.am, align 1
  %i.an = lshr i64 %i.af, 24
  %i.ao = trunc i64 %i.an to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 19
  store i8 %i.ao, ptr %i.ap, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i8 0, ptr %i.aq, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 20 ; 2 uses
  store ptr %i.ar, ptr %i.g, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.at = load i64, ptr %i.as, align 8            ; 4 uses
  %i.au = trunc i64 %i.at to i8
  store i8 %i.au, ptr %i.ar, align 1
  %i.av = lshr i64 %i.at, 8
  %i.aw = trunc i64 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 21
  store i8 %i.aw, ptr %i.ax, align 1
  %i.ay = lshr i64 %i.at, 16
  %i.az = trunc i64 %i.ay to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 22
  store i8 %i.az, ptr %i.ba, align 1
  %i.bb = lshr i64 %i.at, 24
  %i.bc = trunc i64 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 23
  store i8 %i.bc, ptr %i.bd, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i8 0, ptr %i.be, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bh = load i64, ptr %i.bg, align 8            ; 4 uses
  %i.bi = trunc i64 %i.bh to i8
  store i8 %i.bi, ptr %i.bf, align 1
  %i.bj = lshr i64 %i.bh, 8
  %i.bk = trunc i64 %i.bj to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 25
  store i8 %i.bk, ptr %i.bl, align 1
  %i.bm = lshr i64 %i.bh, 16
  %i.bn = trunc i64 %i.bm to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 26
  store i8 %i.bn, ptr %i.bo, align 1
  %i.bp = lshr i64 %i.bh, 24
  %i.bq = trunc i64 %i.bp to i8
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 27
  store i8 %i.bq, ptr %i.br, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  store i8 0, ptr %i.bs, align 1
  store i64 28, ptr %5, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 28 ; 5 uses
  store ptr %i.bt, ptr %i.g, align 8
  store i32 0, ptr %i.k, align 8
  %i.bu = load i64, ptr %i.j, align 8
  %i.bv = trunc i64 %i.bu to i32                  ; 2 uses
  %.not910.i.i = icmp ult i32 %i.bv, 2
  br i1 %.not910.i.i, label %oggpack_write.exit84, label %select.unfold.preheader.i.i

select.unfold.preheader.i.i:                      ; preds = %oggpack_write.exit92
  %spec.select.i.i = add i32 %i.bv, -1
  br label %select.unfold.i.i

select.unfold.i.i:                                ; preds = %select.unfold.i.i, %select.unfold.preheader.i.i
  %.012.i.i = phi i32 [ %i.bw, %select.unfold.i.i ], [ 0, %select.unfold.preheader.i.i ]
  %.111.i.i = phi i32 [ %i.bx, %select.unfold.i.i ], [ %spec.select.i.i, %select.unfold.preheader.i.i ]
  %i.bw = add nuw nsw i32 %.012.i.i, 1            ; 2 uses
  %i.bx = lshr i32 %.111.i.i, 1                   ; 2 uses
  %.not9.i.i = icmp eq i32 %i.bx, 0
  br i1 %.not9.i.i, label %ilog2.exit.loopexit.i, label %select.unfold.i.i, !llvm.loop !8

ilog2.exit.loopexit.i:                            ; preds = %select.unfold.i.i
  %i.by = trunc i32 %i.bw to i8
  %i.bz = and i8 %i.by, 15
  br label %oggpack_write.exit84

oggpack_write.exit84:                             ; preds = %oggpack_write.exit92, %ilog2.exit.loopexit.i
  %.0.lcssa.i.i = phi i8 [ 0, %oggpack_write.exit92 ], [ %i.bz, %ilog2.exit.loopexit.i ]
  %.pre397 = load i8, ptr %i.bt, align 1
  %i.ca = or i8 %.pre397, %.0.lcssa.i.i           ; 3 uses
  store i8 %i.ca, ptr %i.bt, align 1
  store ptr %i.bt, ptr %i.g, align 8
  store i32 4, ptr %i.k, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = trunc i64 %i.cc to i32                  ; 2 uses
  %.not910.i21.i = icmp ult i32 %i.cd, 2
  br i1 %.not910.i21.i, label %bb.c, label %select.unfold.preheader.i22.i

select.unfold.preheader.i22.i:                    ; preds = %oggpack_write.exit84
  %spec.select.i23.i = add i32 %i.cd, -1
  br label %select.unfold.i24.i

select.unfold.i24.i:                              ; preds = %select.unfold.i24.i, %select.unfold.preheader.i22.i
  %.012.i25.i = phi i32 [ %i.ce, %select.unfold.i24.i ], [ 0, %select.unfold.preheader.i22.i ]
  %.111.i26.i = phi i32 [ %i.cf, %select.unfold.i24.i ], [ %spec.select.i23.i, %select.unfold.preheader.i22.i ]
  %i.ce = add nuw nsw i32 %.012.i25.i, 1          ; 2 uses
  %i.cf = lshr i32 %.111.i26.i, 1                 ; 2 uses
  %.not9.i27.i = icmp eq i32 %i.cf, 0
  br i1 %.not9.i27.i, label %ilog2.exit29.loopexit.i, label %select.unfold.i24.i, !llvm.loop !8

ilog2.exit29.loopexit.i:                          ; preds = %select.unfold.i24.i
  %i.cg = trunc i32 %i.ce to i8
  %i.ch = shl i8 %i.cg, 4
  %i.ci = or i8 %i.ca, %i.ch
  br label %bb.c

bb.c:                                             ; preds = %ilog2.exit29.loopexit.i, %oggpack_write.exit84
  %.0.lcssa.i28.i = phi i8 [ %i.ca, %oggpack_write.exit84 ], [ %i.ci, %ilog2.exit29.loopexit.i ]
  store i8 %.0.lcssa.i28.i, ptr %i.bt, align 1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.e, i64 29
  store i8 1, ptr %i.cj, align 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %.pre406 = load ptr, ptr %.phi.trans.insert, align 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %.not58 = icmp eq ptr %.pre406, null
  br i1 %.not58, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %.pre406) #62
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.cl = tail call noalias dereferenceable_or_null(30) ptr @malloc(i64 noundef 30) #69 ; 3 uses
  store ptr %i.cl, ptr %i.ck, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.cl, ptr noundef nonnull align 1 dereferenceable(30) %i.e, i64 30, i1 false)
  store ptr %i.cl, ptr %2, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 30, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 1, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.co, i8 0, i64 16, i1 false)
  store ptr %i.e, ptr %i.g, align 8
  store i8 0, ptr %i.e, align 1
  store i64 0, ptr %5, align 8
  store i32 0, ptr %i.k, align 8
  call fastcc void @_vorbis_pack_comment(ptr noundef %5, ptr noundef %1)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.d, i64 128 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8            ; 2 uses
  %.not59 = icmp eq ptr %i.cq, null
  br i1 %.not59, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.cq) #62
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cr = load i64, ptr %5, align 8
  %i.cs = load i32, ptr %i.k, align 8
  %i.ct = add nsw i32 %i.cs, 7
  %i.cu = sdiv i32 %i.ct, 8
  %i.cv = sext i32 %i.cu to i64
  %i.cw = add nsw i64 %i.cr, %i.cv                ; 3 uses
  %i.cx = tail call noalias ptr @malloc(i64 noundef %i.cw) #69 ; 3 uses
  store ptr %i.cx, ptr %i.cp, align 8
  %i.cy = load ptr, ptr %i.f, align 8             ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cx, ptr align 1 %i.cy, i64 %i.cw, i1 false)
  store ptr %i.cx, ptr %3, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.cw, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.da, i8 0, i64 24, i1 false)
  store ptr %i.cy, ptr %i.g, align 8
  store i8 0, ptr %i.cy, align 1
  store i64 0, ptr %5, align 8
  store i32 0, ptr %i.k, align 8
  %i.db = load ptr, ptr %i.i, align 8             ; 14 uses
  %.not.i65 = icmp eq ptr %i.db, null
  br i1 %.not.i65, label %_vorbis_pack_info.exit, label %.lr.ph.i.i66

.lr.ph.i.i66:                                     ; preds = %bb.g
  %i.dc = load i64, ptr %i.h, align 8             ; 2 uses
  %.not.i357 = icmp sgt i64 %i.dc, 4
  br i1 %.not.i357, label %._crit_edge.i361, label %bb.h

._crit_edge.i361:                                 ; preds = %.lr.ph.i.i66
  %.pre.i363 = load ptr, ptr %i.g, align 8
  br label %oggpack_write.exit364

bb.h:                                             ; preds = %.lr.ph.i.i66
  %i.dd = load ptr, ptr %i.f, align 8
  %i.de = add nsw i64 %i.dc, 256                  ; 2 uses
  %i.df = tail call ptr @realloc(ptr noundef %i.dd, i64 noundef %i.de) #66 ; 3 uses
  store ptr %i.df, ptr %i.f, align 8
  store i64 %i.de, ptr %i.h, align 8
  store ptr %i.df, ptr %i.g, align 8
  br label %oggpack_write.exit364

oggpack_write.exit364:                            ; preds = %bb.h, %._crit_edge.i361
  %i.dg = phi ptr [ %.pre.i363, %._crit_edge.i361 ], [ %i.df, %bb.h ] ; 2 uses
end_hunk_1
begin_hunk_2_@vorbis_encode_noisebias_setup:bb.a
  %i.fp = sitofp i32 %i.fo to double
  %i.fq = fmul double %i.c, %i.fp
  %i.fr = fadd double %i.fm, %i.fq
  %i.fs = fptrunc double %i.fr to float
  %i.ft = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  store float %i.fs, ptr %i.ft, align 4
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ah, i64 52
  %i.fv = load i32, ptr %i.fu, align 4
  %i.fw = sitofp i32 %i.fv to double
  %i.fx = fmul double %i.j, %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ai, i64 52
  %i.fz = load i32, ptr %i.fy, align 4
  %i.ga = sitofp i32 %i.fz to double
  %i.gb = fmul double %i.c, %i.ga
  %i.gc = fadd double %i.fx, %i.gb
  %i.gd = fptrunc double %i.gc to float
  %i.ge = getelementptr inbounds nuw i8, ptr %i.aj, i64 52
  store float %i.gd, ptr %i.ge, align 4
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.gg = load i32, ptr %i.gf, align 4
  %i.gh = sitofp i32 %i.gg to double
  %i.gi = fmul double %i.j, %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.gk = load i32, ptr %i.gj, align 4
  %i.gl = sitofp i32 %i.gk to double
  %i.gm = fmul double %i.c, %i.gl
  %i.gn = fadd double %i.gi, %i.gm
  %i.go = fptrunc double %i.gn to float
  %i.gp = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  store float %i.go, ptr %i.gp, align 4
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ah, i64 60
  %i.gr = load i32, ptr %i.gq, align 4
  %i.gs = sitofp i32 %i.gr to double
  %i.gt = fmul double %i.j, %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ai, i64 60
  %i.gv = load i32, ptr %i.gu, align 4
  %i.gw = sitofp i32 %i.gv to double
  %i.gx = fmul double %i.c, %i.gw
  %i.gy = fadd double %i.gt, %i.gx
  %i.gz = fptrunc double %i.gy to float
  %i.ha = getelementptr inbounds nuw i8, ptr %i.aj, i64 60
  store float %i.gz, ptr %i.ha, align 4
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.hc = load i32, ptr %i.hb, align 4
  %i.hd = sitofp i32 %i.hc to double
  %i.he = fmul double %i.j, %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.hg = load i32, ptr %i.hf, align 4
  %i.hh = sitofp i32 %i.hg to double
  %i.hi = fmul double %i.c, %i.hh
  %i.hj = fadd double %i.he, %i.hi
  %i.hk = fptrunc double %i.hj to float
  %i.hl = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  store float %i.hk, ptr %i.hl, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %.preheader, label %.preheader1, !llvm.loop !212

.preheader:                                       ; preds = %.preheader1
  %i.hm = load <4 x float>, ptr %i.ag, align 4    ; 2 uses
  %i.hn = extractelement <4 x float> %i.hm, i64 0
  %i.ho = fadd float %i.hn, 6.000000e+00          ; 3 uses
  %i.hp = fpext <4 x float> %i.hm to <4 x double>
  %i.hq = insertelement <4 x double> poison, double %5, i64 0
  %i.hr = shufflevector <4 x double> %i.hq, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.hs = fadd <4 x double> %i.hr, %i.hp
  %i.ht = fptrunc <4 x double> %i.hs to <4 x float> ; 2 uses
  %i.hu = insertelement <4 x float> poison, float %i.ho, i64 0
  %i.hv = shufflevector <4 x float> %i.hu, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.hw = fcmp ogt <4 x float> %i.hv, %i.ht
  %i.hx = select <4 x i1> %i.hw, <4 x float> %i.hv, <4 x float> %i.ht
  store <4 x float> %i.hx, ptr %i.ag, align 4
  %i.hy = getelementptr inbounds nuw i8, ptr %i.g, i64 148 ; 2 uses
  %i.hz = load <4 x float>, ptr %i.hy, align 4
  %i.ia = fpext <4 x float> %i.hz to <4 x double>
  %i.ib = fadd <4 x double> %i.hr, %i.ia
  %i.ic = fptrunc <4 x double> %i.ib to <4 x float> ; 2 uses
  %i.id = fcmp ogt <4 x float> %i.hv, %i.ic
  %i.ie = select <4 x i1> %i.id, <4 x float> %i.hv, <4 x float> %i.ic
  store <4 x float> %i.ie, ptr %i.hy, align 4
  %i.if = getelementptr inbounds nuw i8, ptr %i.g, i64 164 ; 2 uses
  %i.ig = load <4 x float>, ptr %i.if, align 4
  %i.ih = fpext <4 x float> %i.ig to <4 x double>
  %i.ii = fadd <4 x double> %i.hr, %i.ih
  %i.ij = fptrunc <4 x double> %i.ii to <4 x float> ; 2 uses
  %i.ik = fcmp ogt <4 x float> %i.hv, %i.ij
  %i.il = select <4 x i1> %i.ik, <4 x float> %i.hv, <4 x float> %i.ij
  store <4 x float> %i.il, ptr %i.if, align 4
  %i.im = getelementptr inbounds nuw i8, ptr %i.g, i64 180 ; 2 uses
  %i.in = load <4 x float>, ptr %i.im, align 4
  %i.io = fpext <4 x float> %i.in to <4 x double>
  %i.ip = fadd <4 x double> %i.hr, %i.io
  %i.iq = fptrunc <4 x double> %i.ip to <4 x float> ; 2 uses
  %i.ir = fcmp ogt <4 x float> %i.hv, %i.iq
  %i.is = select <4 x i1> %i.ir, <4 x float> %i.hv, <4 x float> %i.iq
  store <4 x float> %i.is, ptr %i.im, align 4
  %i.it = getelementptr inbounds nuw i8, ptr %i.g, i64 196 ; 2 uses
  %i.iu = load float, ptr %i.it, align 4
  %i.iv = fpext float %i.iu to double
  %i.iw = fadd double %5, %i.iv
  %i.ix = fptrunc double %i.iw to float           ; 2 uses
  %i.iy = fcmp ogt float %i.ho, %i.ix
  %storemerge.16 = select i1 %i.iy, float %i.ho, float %i.ix
  store float %storemerge.16, ptr %i.it, align 4
  %i.iz = getelementptr inbounds nuw i8, ptr %i.g, i64 200 ; 2 uses
  %i.ja = load <4 x float>, ptr %i.iz, align 8    ; 2 uses
  %i.jb = extractelement <4 x float> %i.ja, i64 0
  %i.jc = fadd float %i.jb, 6.000000e+00          ; 3 uses
  %i.jd = fpext <4 x float> %i.ja to <4 x double>
  %i.je = insertelement <4 x double> poison, double %5, i64 0
  %i.jf = shufflevector <4 x double> %i.je, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.jg = fadd <4 x double> %i.jf, %i.jd
  %i.jh = fptrunc <4 x double> %i.jg to <4 x float> ; 2 uses
  %i.ji = insertelement <4 x float> poison, float %i.jc, i64 0
  %i.jj = shufflevector <4 x float> %i.ji, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.jk = fcmp ogt <4 x float> %i.jj, %i.jh
  %i.jl = select <4 x i1> %i.jk, <4 x float> %i.jj, <4 x float> %i.jh
  store <4 x float> %i.jl, ptr %i.iz, align 8
  %i.jm = getelementptr inbounds nuw i8, ptr %i.g, i64 216 ; 2 uses
  %i.jn = load <4 x float>, ptr %i.jm, align 8
  %i.jo = fpext <4 x float> %i.jn to <4 x double>
  %i.jp = fadd <4 x double> %i.jf, %i.jo
  %i.jq = fptrunc <4 x double> %i.jp to <4 x float> ; 2 uses
  %i.jr = fcmp ogt <4 x float> %i.jj, %i.jq
  %i.js = select <4 x i1> %i.jr, <4 x float> %i.jj, <4 x float> %i.jq
  store <4 x float> %i.js, ptr %i.jm, align 8
  %i.jt = getelementptr inbounds nuw i8, ptr %i.g, i64 232 ; 2 uses
  %i.ju = load <4 x float>, ptr %i.jt, align 8
  %i.jv = fpext <4 x float> %i.ju to <4 x double>
  %i.jw = fadd <4 x double> %i.jf, %i.jv
  %i.jx = fptrunc <4 x double> %i.jw to <4 x float> ; 2 uses
  %i.jy = fcmp ogt <4 x float> %i.jj, %i.jx
  %i.jz = select <4 x i1> %i.jy, <4 x float> %i.jj, <4 x float> %i.jx
  store <4 x float> %i.jz, ptr %i.jt, align 8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.g, i64 248 ; 2 uses
  %i.kb = load <4 x float>, ptr %i.ka, align 8
  %i.kc = fpext <4 x float> %i.kb to <4 x double>
  %i.kd = fadd <4 x double> %i.jf, %i.kc
  %i.ke = fptrunc <4 x double> %i.kd to <4 x float> ; 2 uses
  %i.kf = fcmp ogt <4 x float> %i.jj, %i.ke
  %i.kg = select <4 x i1> %i.kf, <4 x float> %i.jj, <4 x float> %i.ke
  store <4 x float> %i.kg, ptr %i.ka, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %i.g, i64 264 ; 2 uses
  %i.ki = load float, ptr %i.kh, align 8
  %i.kj = fpext float %i.ki to double
  %i.kk = fadd double %5, %i.kj
  %i.kl = fptrunc double %i.kk to float           ; 2 uses
  %i.km = fcmp ogt float %i.jc, %i.kl
  %storemerge.16.1 = select i1 %i.km, float %i.jc, float %i.kl
  store float %storemerge.16.1, ptr %i.kh, align 8
  %i.kn = getelementptr inbounds nuw i8, ptr %i.g, i64 268 ; 2 uses
  %i.ko = load <4 x float>, ptr %i.kn, align 4    ; 2 uses
  %i.kp = extractelement <4 x float> %i.ko, i64 0
  %i.kq = fadd float %i.kp, 6.000000e+00          ; 3 uses
  %i.kr = fpext <4 x float> %i.ko to <4 x double>
  %i.ks = insertelement <4 x double> poison, double %5, i64 0
  %i.kt = shufflevector <4 x double> %i.ks, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.ku = fadd <4 x double> %i.kt, %i.kr
  %i.kv = fptrunc <4 x double> %i.ku to <4 x float> ; 2 uses
  %i.kw = insertelement <4 x float> poison, float %i.kq, i64 0
  %i.kx = shufflevector <4 x float> %i.kw, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.ky = fcmp ogt <4 x float> %i.kx, %i.kv
  %i.kz = select <4 x i1> %i.ky, <4 x float> %i.kx, <4 x float> %i.kv
  store <4 x float> %i.kz, ptr %i.kn, align 4
  %i.la = getelementptr inbounds nuw i8, ptr %i.g, i64 284 ; 2 uses
  %i.lb = load <4 x float>, ptr %i.la, align 4
  %i.lc = fpext <4 x float> %i.lb to <4 x double>
  %i.ld = fadd <4 x double> %i.kt, %i.lc
  %i.le = fptrunc <4 x double> %i.ld to <4 x float> ; 2 uses
  %i.lf = fcmp ogt <4 x float> %i.kx, %i.le
  %i.lg = select <4 x i1> %i.lf, <4 x float> %i.kx, <4 x float> %i.le
  store <4 x float> %i.lg, ptr %i.la, align 4
  %i.lh = getelementptr inbounds nuw i8, ptr %i.g, i64 300 ; 2 uses
  %i.li = load <4 x float>, ptr %i.lh, align 4
  %i.lj = fpext <4 x float> %i.li to <4 x double>
  %i.lk = fadd <4 x double> %i.kt, %i.lj
  %i.ll = fptrunc <4 x double> %i.lk to <4 x float> ; 2 uses
  %i.lm = fcmp ogt <4 x float> %i.kx, %i.ll
  %i.ln = select <4 x i1> %i.lm, <4 x float> %i.kx, <4 x float> %i.ll
  store <4 x float> %i.ln, ptr %i.lh, align 4
  %i.lo = getelementptr inbounds nuw i8, ptr %i.g, i64 316 ; 2 uses
  %i.lp = load <4 x float>, ptr %i.lo, align 4
  %i.lq = fpext <4 x float> %i.lp to <4 x double>
  %i.lr = fadd <4 x double> %i.kt, %i.lq
  %i.ls = fptrunc <4 x double> %i.lr to <4 x float> ; 2 uses
  %i.lt = fcmp ogt <4 x float> %i.kx, %i.ls
  %i.lu = select <4 x i1> %i.lt, <4 x float> %i.kx, <4 x float> %i.ls
  store <4 x float> %i.lu, ptr %i.lo, align 4
  %i.lv = getelementptr inbounds nuw i8, ptr %i.g, i64 332 ; 2 uses
  %i.lw = load float, ptr %i.lv, align 4
  %i.lx = fpext float %i.lw to double
  %i.ly = fadd double %5, %i.lx
  %i.lz = fptrunc double %i.ly to float           ; 2 uses
  %i.ma = fcmp ogt float %i.kq, %i.lz
  %storemerge.16.2 = select i1 %i.ma, float %i.kq, float %i.lz
  store float %storemerge.16.2, ptr %i.lv, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -131, 1) i32 @vorbis_encode_init_vbr(ptr noundef %0, i64 noundef %1, i64 noundef %2, float noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @vorbis_encode_setup_vbr(ptr noundef %0, i64 noundef %1, i64 noundef %2, float noundef %3) ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @vorbis_encode_setup_init(ptr noundef %0) ; 2 uses
  %.not12 = icmp eq i32 %i.b, 0
  br i1 %.not12, label %bb.c, label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.a
  %.0.ph = phi i32 [ %i.a, %bb.a ], [ %i.b, %bb.b ]
  tail call void @vorbis_info_clear(ptr noundef %0)
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %.0.ph, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -131, 1) i32 @vorbis_encode_init(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @vorbis_encode_setup_managed(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @vorbis_encode_setup_init(ptr noundef %0) ; 2 uses
  %.not14 = icmp eq i32 %i.b, 0
  br i1 %.not14, label %bb.c, label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.a
  %.0.ph = phi i32 [ %i.a, %bb.a ], [ %i.b, %bb.b ]
  tail call void @vorbis_info_clear(ptr noundef %0)
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %.0.ph, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ov_clear(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.b = tail call i32 @vorbis_block_clear(ptr noundef nonnull %i.a) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @vorbis_dsp_clear(ptr noundef nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not11.i = icmp eq ptr %i.e, null
  br i1 %.not11.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.e) #62
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not12.i = icmp eq ptr %i.g, null
  br i1 %.not12.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.g) #62
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not13.i = icmp eq ptr %i.i, null
  br i1 %.not13.i, label %ogg_stream_clear.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.i) #62
  br label %ogg_stream_clear.exit

ogg_stream_clear.exit:                            ; preds = %bb.f, %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %i.d, i8 0, i64 408, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not33 = icmp eq ptr %i.k, null
  br i1 %.not33, label %bb.q, label %bb.h

bb.h:                                             ; preds = %ogg_stream_clear.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8              ; 2 uses
  %.not34 = icmp eq i32 %i.m, 0
  br i1 %.not34, label %bb.q, label %.preheader

.preheader:                                       ; preds = %bb.h
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %vorbis_comment_clear.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %vorbis_comment_clear.exit ] ; 3 uses
  %i.p = load ptr, ptr %i.j, align 8
  %i.q = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %indvars.iv
  tail call void @vorbis_info_clear(ptr noundef %i.q)
  %i.r = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %indvars.iv ; 6 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %vorbis_comment_clear.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8              ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.k
  %i.w = phi i32 [ %i.aa, %bb.k ], [ %i.u, %.preheader.i ]
  %.023.i = phi i64 [ %i.ab, %bb.k ], [ 0, %.preheader.i ] ; 2 uses
  %i.x = load ptr, ptr %i.s, align 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.023.i
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %.not22.i = icmp eq ptr %i.z, null
  br i1 %.not22.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  tail call void @free(ptr noundef nonnull %i.z) #62
  %.pre.i = load i32, ptr %i.t, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i
  %i.aa = phi i32 [ %i.w, %.lr.ph.i ], [ %.pre.i, %bb.j ] ; 2 uses
  %i.ab = add nuw nsw i64 %.023.i, 1              ; 2 uses
  %i.ac = sext i32 %i.aa to i64
  %i.ad = icmp slt i64 %i.ab, %i.ac
  br i1 %i.ad, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %bb.k, %.preheader.i
  %i.ae = load ptr, ptr %i.s, align 8             ; 2 uses
  %.not19.i = icmp eq ptr %i.ae, null
  br i1 %.not19.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i
  tail call void @free(ptr noundef nonnull %i.ae) #62
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not20.i = icmp eq ptr %i.ag, null
  br i1 %.not20.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @free(ptr noundef nonnull %i.ag) #62
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not21.i = icmp eq ptr %i.ai, null
  br i1 %.not21.i, label %vorbis_comment_clear.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @free(ptr noundef nonnull %i.ai) #62
  br label %vorbis_comment_clear.exit

vorbis_comment_clear.exit:                        ; preds = %bb.i, %bb.o, %bb.p
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i8 0, i64 32, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = load i32, ptr %i.l, align 8
  %i.ak = sext i32 %i.aj to i64
  %i.al = icmp slt i64 %indvars.iv.next, %i.ak
  br i1 %i.al, label %bb.i, label %._crit_edge.loopexit, !llvm.loop !213

._crit_edge.loopexit:                             ; preds = %vorbis_comment_clear.exit
  %.pre = load ptr, ptr %i.j, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.am = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.k, %.preheader ]
  tail call void @free(ptr noundef %i.am) #62
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void @free(ptr noundef %i.ao) #62
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.h, %ogg_stream_clear.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not35 = icmp eq ptr %i.aq, null
  br i1 %.not35, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @free(ptr noundef nonnull %i.aq) #62
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %.not36 = icmp eq ptr %i.as, null
  br i1 %.not36, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @free(ptr noundef nonnull %i.as) #62
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not37 = icmp eq ptr %i.au, null
  br i1 %.not37, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @free(ptr noundef nonnull %i.au) #62
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %.not38 = icmp eq ptr %i.aw, null
  br i1 %.not38, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @free(ptr noundef nonnull %i.aw) #62
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.ay, null
  br i1 %.not5.i, label %ogg_sync_clear.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @free(ptr noundef nonnull %i.ay) #62
  br label %ogg_sync_clear.exit

ogg_sync_clear.exit:                              ; preds = %bb.y, %bb.z
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i8 0, i64 32, i1 false)
  %i.az = load ptr, ptr %0, align 8               ; 2 uses
  %.not39 = icmp eq ptr %i.az, null
  br i1 %.not39, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %ogg_sync_clear.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = tail call i32 %i.bb(ptr noundef nonnull %i.az) #62 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %ogg_sync_clear.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(944) %0, i8 0, i64 944, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local noundef i32 @ogg_sync_clear(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #16 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not5 = icmp eq ptr %i.a, null
  br i1 %.not5, label %ogg_sync_init.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.a) #62
  br label %ogg_sync_init.exit

ogg_sync_init.exit:                               ; preds = %bb.c, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %ogg_sync_init.exit, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -138, 1) i32 @ov_open_callbacks(ptr noundef %0, ptr noundef initializes((0, 944)) %1, ptr nofree noundef readonly captures(address_is_null) %2, i64 noundef %3, ptr nofree noundef readonly byval(%struct.ov_callbacks) align 8 captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @_ov_open1(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull byval(%struct.ov_callbacks) align 8 %4) ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i32 @_ov_open2(ptr noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -134, 1) i32 @_ov_open1(ptr noundef %0, ptr nofree noundef captures(address_is_null) initializes((0, 944)) %1, ptr nofree noundef readonly captures(address_is_null) %2, i64 noundef %3, ptr nofree noundef readonly byval(%struct.ov_callbacks) align 8 captures(none) %4) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i32 %i.b(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #62
  %i.d = icmp eq i32 %i.c, -1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.not32 = phi i1 [ %i.d, %bb.b ], [ true, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(904) %i.e, i8 0, i64 904, i1 false)
  store ptr %0, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 912
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  %.not31 = icmp eq ptr %2, null
  br i1 %.not31, label %ogg_sync_wrote.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.j = icmp sgt i64 %3, 0
  br i1 %i.j, label %bb.e, label %ogg_sync_buffer.exit

bb.e:                                             ; preds = %bb.d
  %i.k = add nuw i64 %3, 4096                     ; 2 uses
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #69 ; 2 uses
  %.pre27.i.pre = load i32, ptr %i.i, align 4
  store ptr %i.l, ptr %i.g, align 8
  %i.m = trunc i64 %i.k to i32
  store i32 %i.m, ptr %i.h, align 8
  %i.n = sext i32 %.pre27.i.pre to i64
  br label %ogg_sync_buffer.exit

ogg_sync_buffer.exit:                             ; preds = %bb.d, %bb.e
  %i.o = phi i64 [ %i.n, %bb.e ], [ 0, %bb.d ]
  %i.p = phi ptr [ %i.l, %bb.e ], [ null, %bb.d ]
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 %i.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr nonnull align 1 %2, i64 %3, i1 false)
  %i.r = load i32, ptr %i.i, align 4
  %i.s = sext i32 %i.r to i64
  %i.t = add nsw i64 %3, %i.s                     ; 2 uses
  %i.u = load i32, ptr %i.h, align 8
  %i.v = sext i32 %i.u to i64
  %i.w = icmp sgt i64 %i.t, %i.v
  br i1 %i.w, label %ogg_sync_wrote.exit, label %bb.f

bb.f:                                             ; preds = %ogg_sync_buffer.exit
  %i.x = trunc i64 %i.t to i32
  store i32 %i.x, ptr %i.i, align 4
  br label %ogg_sync_wrote.exit

ogg_sync_wrote.exit:                              ; preds = %bb.f, %ogg_sync_buffer.exit, %bb.c
  br i1 %.not32, label %bb.h, label %bb.g

bb.g:                                             ; preds = %ogg_sync_wrote.exit
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 1, ptr %i.y, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %ogg_sync_wrote.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  store i32 1, ptr %i.z, align 8
  %i.aa = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #71 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = load i32, ptr %i.z, align 8
  %i.ad = sext i32 %i.ac to i64
  %i.ae = tail call noalias ptr @calloc(i64 noundef %i.ad, i64 noundef 32) #71 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %i.ae, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.ah, i8 0, i64 392, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 176
  store i64 16384, ptr %i.ai, align 8
  %i.aj = tail call noalias dereferenceable_or_null(16384) ptr @malloc(i64 noundef 16384) #69
  store ptr %i.aj, ptr %i.ag, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 216
  store i64 1024, ptr %i.ak, align 8
  %i.al = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #69
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 200
  store ptr %i.al, ptr %i.am, align 8
  %i.an = tail call noalias dereferenceable_or_null(8192) ptr @malloc(i64 noundef 8192) #69
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 208
  store ptr %i.an, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 544
  store i64 -1, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ar = tail call fastcc i32 @_fetch_headers(ptr noundef nonnull %1, ptr noundef %i.aa, ptr noundef %i.ae, ptr noundef nonnull %i.aq, ptr noundef null) ; 2 uses
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %1, align 8
  %i.at = tail call i32 @ov_clear(ptr noundef nonnull %1) ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i32 1, ptr %i.au, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  ret i32 %i.ar
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -138, 1) i32 @_ov_open2(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.ogg_page, align 8           ; 8 uses
  %2 = alloca %struct.ogg_page, align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 1
  br i1 %.not, label %bb.b, label %bb.bp

bb.b:                                             ; preds = %bb.a
  store i32 2, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8
  %.not9 = icmp eq i32 %i.d, 0
  br i1 %.not9, label %bb.bo, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 20 uses
  %i.h = load i64, ptr %i.g, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #62
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 8 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load ptr, ptr %0, align 8
  %i.l = tail call i32 %i.j(ptr noundef %i.k, i64 noundef 0, i32 noundef 2) #62, !inline_history !214 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load ptr, ptr %0, align 8
  %i.p = tail call i64 %i.n(ptr noundef %i.o) #62, !inline_history !214 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.p, ptr %i.q, align 8
  store i64 %i.p, ptr %i.g, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 13 uses
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge32.i.i, %bb.c
  %.02234.i.i = phi i64 [ %i.p, %bb.c ], [ %spec.store.select.i.i, %._crit_edge32.i.i ]
  %i.s = call i64 @llvm.smax.i64(i64 %.02234.i.i, i64 8500)
  %spec.store.select.i.i = add nsw i64 %i.s, -8500 ; 4 uses
  %i.t = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %._seek_helper.exit_crit_edge.i.i, label %bb.e

._seek_helper.exit_crit_edge.i.i:                 ; preds = %bb.d
  %.pre.i.i = load i64, ptr %i.g, align 8
  br label %_seek_helper.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.i, align 8
  %i.v = call i32 %i.u(ptr noundef nonnull %i.t, i64 noundef %spec.store.select.i.i, i32 noundef 0) #62, !inline_history !215 ; 0 uses
  store i64 %spec.store.select.i.i, ptr %i.g, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.r, i8 0, i64 20, i1 false)
  br label %_seek_helper.exit.i.i

_seek_helper.exit.i.i:                            ; preds = %bb.e, %._seek_helper.exit_crit_edge.i.i
  %i.w = phi i64 [ %.pre.i.i, %._seek_helper.exit_crit_edge.i.i ], [ %spec.store.select.i.i, %bb.e ] ; 2 uses
  %i.x = icmp slt i64 %i.w, %i.p
  br i1 %i.x, label %.lr.ph.i.i, label %._crit_edge32.i.i

bb.f:                                             ; preds = %bb.g
  %i.y = load i64, ptr %i.g, align 8              ; 2 uses
  %i.z = icmp slt i64 %i.y, %i.p
  br i1 %i.z, label %.lr.ph.i.i, label %._crit_edge32.thread.i.i, !llvm.loop !13

.lr.ph.i.i:                                       ; preds = %_seek_helper.exit.i.i, %bb.f
  %i.aa = phi i64 [ %i.y, %bb.f ], [ %i.w, %_seek_helper.exit.i.i ]
  %.131.i.i = phi i64 [ %i.ac, %bb.f ], [ -1, %_seek_helper.exit.i.i ]
  %i.ab = sub nsw i64 %i.p, %i.aa
  %i.ac = call fastcc i64 @_get_next_page(ptr noundef nonnull %0, ptr noundef nonnull %2, i64 noundef %i.ab) ; 4 uses
  %i.ad = icmp eq i64 %i.ac, -128
  br i1 %i.ad, label %_open_seekable2.exit.thread, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ae = icmp slt i64 %i.ac, 0
  br i1 %i.ae, label %._crit_edge.i.i, label %bb.f, !llvm.loop !13

._crit_edge.i.i:                                  ; preds = %bb.g
  br label %._crit_edge32.i.i, !llvm.loop !13

._crit_edge32.i.i:                                ; preds = %._crit_edge.i.i, %_seek_helper.exit.i.i
  %.1.lcssa.i.i = phi i64 [ %.131.i.i, %._crit_edge.i.i ], [ -1, %_seek_helper.exit.i.i ] ; 2 uses
  %i.af = icmp eq i64 %.1.lcssa.i.i, -1
  br i1 %i.af, label %bb.d, label %._crit_edge32.thread.i.i, !llvm.loop !14

._crit_edge32.thread.i.i:                         ; preds = %._crit_edge32.i.i, %bb.f
  %.1.lcssa45.i.i = phi i64 [ %i.ac, %bb.f ], [ %.1.lcssa.i.i, %._crit_edge32.i.i ] ; 4 uses
  %i.ag = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i27.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i27.i.i, label %_seek_helper.exit28.i.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge32.thread.i.i
  %i.ah = load ptr, ptr %i.i, align 8
  %i.ai = call i32 %i.ah(ptr noundef nonnull %i.ag, i64 noundef %.1.lcssa45.i.i, i32 noundef 0) #62, !inline_history !215 ; 0 uses
  store i64 %.1.lcssa45.i.i, ptr %i.g, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.r, i8 0, i64 20, i1 false)
  br label %_seek_helper.exit28.i.i

_seek_helper.exit28.i.i:                          ; preds = %bb.h, %._crit_edge32.thread.i.i
  %i.aj = call fastcc i64 @_get_next_page(ptr noundef nonnull %0, ptr noundef nonnull %2, i64 noundef 8500)
  %i.ak = icmp slt i64 %i.aj, 0
  br i1 %i.ak, label %_open_seekable2.exit.thread, label %_get_prev_page.exit.i

_get_prev_page.exit.i:                            ; preds = %_seek_helper.exit28.i.i
  %i.al = load ptr, ptr %2, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 14
  %i.an = load i32, ptr %i.am, align 1
  %i.ao = sext i32 %i.an to i64
  %.not.i = icmp eq i64 %i.f, %i.ao
  %i.ap = add nuw nsw i64 %.1.lcssa45.i.i, 1      ; 2 uses
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_get_prev_page.exit.i
  %i.aq = call fastcc i32 @_bisect_forward_serialno(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i64 noundef %i.ap, i64 noundef %i.f, i64 noundef 0)
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %_open_seekable2.exit.thread, label %bb.k

bb.j:                                             ; preds = %_get_prev_page.exit.i
  %i.as = call fastcc i32 @_bisect_forward_serialno(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %.1.lcssa45.i.i, i64 noundef %i.ap, i64 noundef %i.f, i64 noundef 0)
  %.not25.i = icmp eq i32 %i.as, 0
  br i1 %.not25.i, label %bb.k, label %_open_seekable2.exit.thread

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #62
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = sext i32 %i.aw to i64
  %i.ay = mul nsw i64 %i.ax, 56
  %i.az = call ptr @realloc(ptr noundef %i.au, i64 noundef %i.ay) #66
  store ptr %i.az, ptr %i.at, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = load i32, ptr %i.av, align 8
  %i.bd = sext i32 %i.bc to i64
  %i.be = shl nsw i64 %i.bd, 5
  %i.bf = call ptr @realloc(ptr noundef %i.bb, i64 noundef %i.be) #66
  store ptr %i.bf, ptr %i.ba, align 8
  %i.bg = load i32, ptr %i.av, align 8
  %i.bh = sext i32 %i.bg to i64
  %i.bi = shl nsw i64 %i.bh, 3
  %i.bj = call noalias ptr @malloc(i64 noundef %i.bi) #69
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  store ptr %i.bj, ptr %i.bk, align 8
  %i.bl = load i32, ptr %i.av, align 8
  %i.bm = shl nsw i32 %i.bl, 1
  %i.bn = sext i32 %i.bm to i64
  %i.bo = shl nsw i64 %i.bn, 3
  %i.bp = call noalias ptr @malloc(i64 noundef %i.bo) #69
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  store ptr %i.bp, ptr %i.bq, align 8
  %i.br = load i32, ptr %i.av, align 8
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %.lr.ph148.i.i, label %_open_seekable2.exit

.lr.ph148.i.i:                                    ; preds = %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.bm, %.lr.ph148.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph148.i.i ], [ %indvars.iv.next.i.i, %bb.bm ] ; 15 uses
  %i.cm = icmp eq i64 %indvars.iv.i.i, 0
  br i1 %i.cm, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cn = load ptr, ptr %i.bk, align 8
  store i64 %i.h, ptr %i.cn, align 8
  %i.co = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i.i32.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i32.i, label %_seek_helper.exit.i26.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cp = load ptr, ptr %i.i, align 8
  %i.cq = call i32 %i.cp(ptr noundef nonnull %i.co, i64 noundef %i.h, i32 noundef 0) #62, !inline_history !216 ; 0 uses
  store i64 %i.h, ptr %i.g, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.r, i8 0, i64 20, i1 false)
  br label %_seek_helper.exit.i26.i

bb.o:                                             ; preds = %bb.l
  %i.cr = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i85.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i85.i.i, label %_seek_helper.exit86.i.i, label %bb.p
end_hunk_2
begin_hunk_3_@llvm.rint.f64
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @ov_bitrate_instant(ptr nofree noundef captures(none) %0) local_unnamed_addr #36 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load i32, ptr %i.c, align 8
  %i.e = sext i32 %i.d to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp slt i32 %i.h, 2
  br i1 %i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.k = load double, ptr %i.j, align 8           ; 2 uses
  %i.l = fcmp oeq double %i.k, 0.000000e+00
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.n = load double, ptr %i.m, align 8
  %i.o = fdiv double %i.n, %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds [56 x i8], ptr %i.q, i64 %i.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %i.s, align 8
  %i.u = sitofp i64 %i.t to double
  %i.v = fmul double %i.o, %i.u
  %i.w = fadd double %i.v, 5.000000e-01
  %i.x = fptosi double %i.w to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.e
  %.0 = phi i64 [ %i.x, %bb.e ], [ -131, %bb.c ], [ -1, %bb.d ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @ov_serialnumber(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #37 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = add nsw i32 %i.b, -1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.tr14 = phi i32 [ %1, %bb.a ], [ %.tr14.be, %tailrecurse.backedge ] ; 4 uses
  %.not = icmp slt i32 %.tr14, %i.b
  br i1 %.not, label %bb.b, label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %tailrecurse, %bb.b
  %.tr14.be = phi i32 [ -1, %bb.b ], [ %i.c, %tailrecurse ]
  br label %tailrecurse

bb.b:                                             ; preds = %tailrecurse
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp eq i32 %i.e, 0
  %i.g = icmp sgt i32 %.tr14, -1
  %or.cond = and i1 %i.g, %i.f
  br i1 %or.cond, label %tailrecurse.backedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp slt i32 %.tr14, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = zext nneg i32 %.tr14 to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.in = phi ptr [ %i.m, %bb.e ], [ %i.i, %bb.d ]
  %.0 = load i64, ptr %.0.in, align 8
  ret i64 %.0
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @ov_raw_total(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #35 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp slt i32 %i.b, 2
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i32, ptr %i.f, align 8              ; 3 uses
  %.not19 = icmp slt i32 %1, %i.g
  br i1 %.not19, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.h = icmp slt i32 %1, 0
  br i1 %i.h, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.d
  %i.i = icmp sgt i32 %i.g, 0
  br i1 %i.i, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.021 = phi i32 [ %i.l, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %.01620 = phi i64 [ %i.k, %.lr.ph ], [ 0, %.preheader ]
  %i.j = tail call i64 @ov_raw_total(ptr noundef nonnull %0, i32 noundef %.021)
  %i.k = add nsw i64 %i.j, %.01620                ; 2 uses
  %i.l = add nuw nsw i32 %.021, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.l, %i.g
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !226

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = zext nneg i32 %1 to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8
  %i.s = load i64, ptr %i.p, align 8
  %i.t = sub nsw i64 %i.r, %i.s
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.b, %bb.c, %bb.a, %bb.e
  %.017 = phi i64 [ %i.t, %bb.e ], [ -131, %bb.a ], [ -131, %bb.b ], [ -131, %bb.c ], [ 0, %.preheader ], [ %i.k, %.lr.ph ]
  ret i64 %.017
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @ov_pcm_total(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #35 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp slt i32 %i.b, 2
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i32, ptr %i.f, align 8              ; 3 uses
  %.not17 = icmp slt i32 %1, %i.g
  br i1 %.not17, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.h = icmp slt i32 %1, 0
  br i1 %i.h, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.d
  %i.i = icmp sgt i32 %i.g, 0
  br i1 %i.i, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.019 = phi i32 [ %i.l, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %.01418 = phi i64 [ %i.k, %.lr.ph ], [ 0, %.preheader ]
  %i.j = tail call i64 @ov_pcm_total(ptr noundef nonnull %0, i32 noundef %.019)
  %i.k = add nsw i64 %i.j, %.01418                ; 2 uses
  %i.l = add nuw nsw i32 %.019, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.l, %i.g
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !227

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = shl nuw nsw i32 %1, 1
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i64, ptr %i.r, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.b, %bb.c, %bb.a, %bb.e
  %.015 = phi i64 [ %i.s, %bb.e ], [ -131, %bb.a ], [ -131, %bb.b ], [ -131, %bb.c ], [ 0, %.preheader ], [ %i.k, %.lr.ph ]
  ret i64 %.015
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -138, 1) i32 @ov_raw_seek(ptr nofree noundef %0, i64 noundef %1) #0 {
bb.a:
  %2 = alloca %struct.ogg_stream_state, align 8   ; 25 uses
  %3 = alloca %struct.ogg_page, align 8           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #62
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 7 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp slt i32 %i.b, 2
  br i1 %i.c, label %bb.bf, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.bf, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp slt i64 %1, 0
  br i1 %i.f, label %bb.bf, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp sgt i64 %1, %i.h
  br i1 %i.i, label %bb.bf, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  store i64 -1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 532 ; 2 uses
  store i32 0, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  store i32 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 540 ; 2 uses
  store i32 0, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  store i64 -1, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %sext = shl i64 %i.m, 32
  %i.u = ashr exact i64 %sext, 32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  store i64 %i.u, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not.i = icmp eq ptr %i.aa, null
  %.not19.i = icmp eq ptr %i.y, null
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not19.i
  br i1 %or.cond.i, label %vorbis_synthesis_restart.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8            ; 3 uses
  %.not20.i = icmp eq ptr %i.ac, null
  br i1 %.not20.i, label %vorbis_synthesis_restart.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 5808
  %i.ae = load i32, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = add nsw i32 %i.ae, 1
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = ashr i64 %i.ag, %i.ai                   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 656
  store i64 %i.aj, ptr %i.ak, align 8
  %i.al = zext nneg i32 %i.ae to i64
  %i.am = ashr i64 %i.aj, %i.al
  %i.an = trunc i64 %i.am to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 612
  store i32 %i.an, ptr %i.ao, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i32 -1, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 624
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 -1, i64 16, i1 false)
  store i32 0, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.aa, i64 296
  store i64 -1, ptr %i.as, align 8
  br label %vorbis_synthesis_restart.exit

vorbis_synthesis_restart.exit:                    ; preds = %bb.e, %bb.f, %bb.g
  %i.at = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i95 = icmp eq ptr %i.at, null
  br i1 %.not.i95, label %_seek_helper.exit, label %bb.h

bb.h:                                             ; preds = %vorbis_synthesis_restart.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = tail call i32 %i.av(ptr noundef nonnull %i.at, i64 noundef %1, i32 noundef 0) #62, !inline_history !17 ; 0 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ay, i8 0, i64 20, i1 false)
  br label %_seek_helper.exit

_seek_helper.exit:                                ; preds = %vorbis_synthesis_restart.exit, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #62
  %i.az = load i64, ptr %i.l, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.bb, i8 0, i64 288, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 16384, ptr %i.bc, align 8
  %i.bd = tail call noalias dereferenceable_or_null(16384) ptr @malloc(i64 noundef 16384) #69
  store ptr %i.bd, ptr %2, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 1024, ptr %i.be, align 8
  %i.bf = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #69
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  store ptr %i.bf, ptr %i.bg, align 8
  %i.bh = tail call noalias dereferenceable_or_null(8192) ptr @malloc(i64 noundef 8192) #69
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 5 uses
  store ptr %i.bh, ptr %i.bi, align 8
  %sext214 = shl i64 %i.az, 32
  %i.bj = ashr exact i64 %sext214, 32
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 376 ; 2 uses
  store i64 %i.bj, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 364 ; 2 uses
  store i32 0, ptr %i.bm, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 368 ; 2 uses
  store i32 0, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 372 ; 2 uses
  store i32 0, ptr %i.bo, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 384 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i8 0, i64 24, i1 false)
  store i64 -1, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 392 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i8 0, i64 16, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %ogg_stream_packetout.exit164.outer

ogg_stream_packetout.exit164.outer:               ; preds = %ogg_stream_packetout.exit120, %_seek_helper.exit
  %.078.ph = phi i32 [ %.076, %ogg_stream_packetout.exit120 ], [ 0, %_seek_helper.exit ]
  %.077.ph = phi i32 [ %.1, %ogg_stream_packetout.exit120 ], [ 0, %_seek_helper.exit ] ; 6 uses
  %.075.ph = phi i32 [ %.075, %ogg_stream_packetout.exit120 ], [ undef, %_seek_helper.exit ]
  br label %ogg_stream_packetout.exit164

ogg_stream_packetout.exit164:                     ; preds = %ogg_stream_packetout.exit164.outer, %.thread303
  %.078 = phi i32 [ 0, %.thread303 ], [ %.078.ph, %ogg_stream_packetout.exit164.outer ] ; 3 uses
  %.075 = phi i32 [ %i.kg, %.thread303 ], [ %.075.ph, %ogg_stream_packetout.exit164.outer ] ; 2 uses
  %i.cd = load i32, ptr %i.a, align 8
  %i.ce = icmp sgt i32 %i.cd, 2
  br i1 %i.ce, label %bb.i, label %ogg_stream_packetout.exit164.thread

bb.i:                                             ; preds = %ogg_stream_packetout.exit164
  %i.cf = load i64, ptr %i.br, align 8            ; 2 uses
  %i.cg = load i64, ptr %i.bs, align 8
  %sext.i.i = shl i64 %i.cf, 32                   ; 2 uses
  %i.ch = ashr exact i64 %sext.i.i, 32            ; 3 uses
  %.not.i.i = icmp sgt i64 %i.cg, %i.ch
  br i1 %.not.i.i, label %bb.j, label %ogg_stream_packetout.exit164.thread

bb.j:                                             ; preds = %bb.i
  %i.ci = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.ch
  %i.ck = load i32, ptr %i.cj, align 4            ; 2 uses
  %i.cl = and i32 %i.ck, 1024
  %.not51.i.i = icmp eq i32 %i.cl, 0
  br i1 %.not51.i.i, label %bb.k, label %ogg_stream_packetout.exit

bb.k:                                             ; preds = %bb.j
  %i.cm = and i32 %i.ck, 255                      ; 2 uses
  %i.cn = icmp eq i32 %i.cm, 255
  br i1 %i.cn, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.k, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %i.ch, %bb.k ]
  %.04554.i.i = phi i32 [ %i.cr, %.lr.ph.i.i ], [ 255, %bb.k ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.co = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %indvars.iv.next.i.i
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = and i32 %i.cp, 255                      ; 2 uses
  %i.cr = add nuw nsw i32 %i.cq, %.04554.i.i      ; 2 uses
  %i.cs = icmp eq i32 %i.cq, 255
  br i1 %i.cs, label %.lr.ph.i.i, label %.loopexit.loopexit, !llvm.loop !15

ogg_stream_packetout.exit:                        ; preds = %bb.j
end_hunk_3
begin_hunk_4_@ogg_stream_pagein:bb.a
  %.0120157 = phi i64 [ %i.e, %.lr.ph159.preheader ], [ %i.eb, %bb.o ]
  %.0123156 = phi ptr [ %i.c, %.lr.ph159.preheader ], [ %i.ea, %bb.o ]
  %i.dw = getelementptr i8, ptr %i.a, i64 %indvars.iv177
  %i.dx = getelementptr i8, ptr %i.dw, i64 27
  %i.dy = load i8, ptr %i.dx, align 1             ; 2 uses
  %i.dz = zext i8 %i.dy to i64                    ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.0123156, i64 %i.dz ; 3 uses
  %i.eb = sub nsw i64 %.0120157, %i.dz            ; 3 uses
  %.not141 = icmp eq i8 %i.dy, -1
  br i1 %.not141, label %bb.o, label %.loopexit.split.loop.exit152

bb.o:                                             ; preds = %.lr.ph159
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next178, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph159, !llvm.loop !237

.loopexit.split.loop.exit152:                     ; preds = %.lr.ph159
  %i.ec = trunc nuw nsw i64 %indvars.iv177 to i32
  %i.ed = add nuw nsw i32 %i.ec, 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.o, %.loopexit.split.loop.exit152, %.preheader, %bb.n, %_os_lacing_expand.exit
  %.2125 = phi ptr [ %i.c, %_os_lacing_expand.exit ], [ %i.c, %bb.n ], [ %i.ea, %.loopexit.split.loop.exit152 ], [ %i.c, %.preheader ], [ %i.ea, %bb.o ]
  %.2122 = phi i64 [ %i.e, %_os_lacing_expand.exit ], [ %i.e, %bb.n ], [ %i.eb, %.loopexit.split.loop.exit152 ], [ %i.e, %.preheader ], [ %i.eb, %bb.o ] ; 4 uses
  %.3119 = phi i32 [ 0, %_os_lacing_expand.exit ], [ 0, %bb.n ], [ %i.ed, %.loopexit.split.loop.exit152 ], [ 0, %.preheader ], [ %i.al, %bb.o ] ; 2 uses
  %.1115.shrunk = phi i8 [ %i.k, %_os_lacing_expand.exit ], [ %i.k, %bb.n ], [ 0, %.loopexit.split.loop.exit152 ], [ 0, %.preheader ], [ 0, %bb.o ]
  %.not142 = icmp eq i64 %.2122, 0
  br i1 %.not142, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.loopexit
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8            ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.eh = load i64, ptr %i.eg, align 8            ; 2 uses
  %sext = shl i64 %.2122, 32                      ; 2 uses
  %i.ei = ashr exact i64 %sext, 32
  %i.ej = add nsw i64 %i.eh, %i.ei
  %.not.i147 = icmp sgt i64 %i.ef, %i.ej
  %.pre186 = load ptr, ptr %0, align 8            ; 2 uses
  br i1 %.not.i147, label %_os_body_expand.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %sext150 = add i64 %sext, 4398046511104
  %i.ek = ashr exact i64 %sext150, 32
  %i.el = add nsw i64 %i.ef, %i.ek                ; 2 uses
  store i64 %i.el, ptr %i.ee, align 8
  %i.em = tail call ptr @realloc(ptr noundef %.pre186, i64 noundef %i.el) #66 ; 2 uses
  store ptr %i.em, ptr %0, align 8
  %.pre187 = load i64, ptr %i.eg, align 8
  br label %_os_body_expand.exit

_os_body_expand.exit:                             ; preds = %bb.p, %bb.q
  %i.en = phi i64 [ %i.eh, %bb.p ], [ %.pre187, %bb.q ]
  %i.eo = phi ptr [ %.pre186, %bb.p ], [ %i.em, %bb.q ]
  %i.ep = getelementptr inbounds i8, ptr %i.eo, i64 %i.en
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ep, ptr align 1 %.2125, i64 %.2122, i1 false)
  %i.eq = load i64, ptr %i.eg, align 8
  %i.er = add nsw i64 %i.eq, %.2122
  store i64 %i.er, ptr %i.eg, align 8
  br label %bb.r

bb.r:                                             ; preds = %_os_body_expand.exit, %.loopexit
  %i.es = icmp slt i32 %.3119, %i.al
  br i1 %i.es, label %.lr.ph166, label %._crit_edge167.thread

.lr.ph166:                                        ; preds = %bb.r
  %i.et = icmp eq i8 %.1115.shrunk, 0
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ex = sext i32 %.3119 to i64                  ; 2 uses
  %wide.trip.count182 = zext i8 %i.ak to i64      ; 2 uses
  %i.ey = getelementptr i8, ptr %i.a, i64 %i.ex
  %i.ez = getelementptr i8, ptr %i.ey, i64 27
  %i.fa = load i8, ptr %i.ez, align 1             ; 2 uses
  %i.fb = zext i8 %i.fa to i32
  %i.fc = load ptr, ptr %i.eu, align 8
  %i.fd = load i64, ptr %i.bt, align 8
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.fc, i64 %i.fd
  store i32 %i.fb, ptr %i.fe, align 4
  %i.ff = load ptr, ptr %i.ev, align 8
  %i.fg = load i64, ptr %i.bt, align 8
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.ff, i64 %i.fg
  store i64 -1, ptr %i.fh, align 8
  br i1 %i.et, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph166
  %i.fi = load ptr, ptr %i.eu, align 8
  %i.fj = load i64, ptr %i.bt, align 8
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %i.fj ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 4
  %i.fm = or i32 %i.fl, 256
  store i32 %i.fm, ptr %i.fk, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph166
  %.not146.peel = icmp eq i8 %i.fa, -1
  %i.fn = load i64, ptr %i.bt, align 8            ; 3 uses
  br i1 %.not146.peel, label %.thread.peel, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fo = trunc i64 %i.fn to i32
  %i.fp = add nsw i64 %i.fn, 1                    ; 2 uses
  store i64 %i.fp, ptr %i.ew, align 8
  br label %bb.v

.thread.peel:                                     ; preds = %bb.t
  %i.fq = add nsw i64 %i.fn, 1
  br label %bb.v

bb.v:                                             ; preds = %.thread.peel, %bb.u
  %.sink = phi i64 [ %i.fq, %.thread.peel ], [ %i.fp, %bb.u ] ; 2 uses
  %.1149.peel = phi i32 [ -1, %.thread.peel ], [ %i.fo, %bb.u ] ; 2 uses
  store i64 %.sink, ptr %i.bt, align 8
  %indvars.iv.next181.peel = add nsw i64 %i.ex, 1 ; 2 uses
  %exitcond183.peel.not = icmp eq i64 %indvars.iv.next181.peel, %wide.trip.count182
  br i1 %exitcond183.peel.not, label %._crit_edge167, label %.peel.next

.peel.next:                                       ; preds = %bb.v, %bb.x
  %i.fr = phi i64 [ %.sink185, %bb.x ], [ %.sink, %bb.v ]
  %indvars.iv180 = phi i64 [ %indvars.iv.next181, %bb.x ], [ %indvars.iv.next181.peel, %bb.v ] ; 2 uses
  %.0164 = phi i32 [ %.1149, %bb.x ], [ %.1149.peel, %bb.v ]
  %i.fs = getelementptr i8, ptr %i.a, i64 %indvars.iv180
  %i.ft = getelementptr i8, ptr %i.fs, i64 27
  %i.fu = load i8, ptr %i.ft, align 1             ; 2 uses
  %i.fv = zext i8 %i.fu to i32
  %i.fw = load ptr, ptr %i.eu, align 8
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %i.fr
  store i32 %i.fv, ptr %i.fx, align 4
  %i.fy = load ptr, ptr %i.ev, align 8
  %i.fz = load i64, ptr %i.bt, align 8
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.fy, i64 %i.fz
  store i64 -1, ptr %i.ga, align 8
  %.not146 = icmp eq i8 %i.fu, -1
  %i.gb = load i64, ptr %i.bt, align 8            ; 3 uses
  br i1 %.not146, label %.thread, label %bb.w

.thread:                                          ; preds = %.peel.next
  %i.gc = add nsw i64 %i.gb, 1
  br label %bb.x

bb.w:                                             ; preds = %.peel.next
  %i.gd = trunc i64 %i.gb to i32
  %i.ge = add nsw i64 %i.gb, 1                    ; 2 uses
  store i64 %i.ge, ptr %i.ew, align 8
  br label %bb.x

bb.x:                                             ; preds = %.thread, %bb.w
  %.sink185 = phi i64 [ %i.gc, %.thread ], [ %i.ge, %bb.w ] ; 2 uses
  %.1149 = phi i32 [ %.0164, %.thread ], [ %i.gd, %bb.w ] ; 2 uses
  store i64 %.sink185, ptr %i.bt, align 8
  %indvars.iv.next181 = add nsw i64 %indvars.iv180, 1 ; 2 uses
  %exitcond183.not = icmp eq i64 %indvars.iv.next181, %wide.trip.count182
  br i1 %exitcond183.not, label %._crit_edge167, label %.peel.next, !llvm.loop !238

._crit_edge167:                                   ; preds = %bb.x, %bb.v
  %.0.lcssa = phi i32 [ %.1149.peel, %bb.v ], [ %.1149, %bb.x ] ; 2 uses
  %.not143 = icmp eq i32 %.0.lcssa, -1
  br i1 %.not143, label %._crit_edge167.thread, label %bb.y

bb.y:                                             ; preds = %._crit_edge167
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gg = load ptr, ptr %i.gf, align 8
  %i.gh = sext i32 %.0.lcssa to i64
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.gg, i64 %i.gh
  store i64 %i.ad, ptr %i.gi, align 8
  br label %._crit_edge167.thread

._crit_edge167.thread:                            ; preds = %bb.r, %bb.y, %._crit_edge167
  %.not144 = icmp eq i8 %i.l, 0
  br i1 %.not144, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %._crit_edge167.thread
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i32 1, ptr %i.gj, align 8
  %i.gk = load i64, ptr %i.bt, align 8            ; 2 uses
  %i.gl = icmp sgt i64 %i.gk, 0
  br i1 %i.gl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gn = load ptr, ptr %i.gm, align 8
  %i.go = getelementptr [4 x i8], ptr %i.gn, i64 %i.gk
  %i.gp = getelementptr i8, ptr %i.go, i64 -4     ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4
  %i.gr = or i32 %i.gq, 512
  store i32 %i.gr, ptr %i.gp, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa, %._crit_edge167.thread
  %i.gs = add nsw i64 %i.ai, 1
  store i64 %i.gs, ptr %i.cj, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.i, %bb.ab
  %.0126 = phi i32 [ 0, %bb.ab ], [ -1, %bb.i ]
  ret i32 %.0126
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ov_pcm_seek_page(ptr noundef %0, i64 noundef %1) #0 {
bb.a:
  %2 = alloca %struct.ogg_page, align 8           ; 6 uses
  %3 = alloca %struct.ogg_page, align 8           ; 10 uses
  %i.a = tail call i64 @ov_pcm_total(ptr noundef %0, i32 noundef -1) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp slt i32 %i.c, 2
  br i1 %i.d, label %bb.ax, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.ax, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp slt i64 %1, 0
  %i.h = icmp sgt i64 %1, %i.a
  %or.cond = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond, label %bb.ax, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i32, ptr %i.i, align 8              ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %i.j, i32 0) ; 2 uses
  %i.l = add i32 %smin, -1                        ; 2 uses
  %.pre.pre = load ptr, ptr %i.k, align 8         ; 2 uses
  %i.m = icmp sgt i32 %i.j, 0
  br i1 %i.m, label %.lr.ph475, label %._crit_edge372

.lr.ph475:                                        ; preds = %bb.d
  %i.n = zext nneg i32 %i.j to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.o = trunc nuw i64 %indvars.iv.next to i32    ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %._crit_edge372, !llvm.loop !241

._crit_edge372:                                   ; preds = %bb.e, %bb.d
  %.0170.lcssa = phi i64 [ %i.a, %bb.d ], [ %i.w, %bb.e ]
  %.pre373 = shl nsw i32 %i.l, 1
  br label %split

bb.f:                                             ; preds = %.lr.ph475, %bb.e
  %i.q = phi i32 [ %i.j, %.lr.ph475 ], [ %i.o, %bb.e ]
  %.0170473 = phi i64 [ %i.a, %.lr.ph475 ], [ %i.w, %bb.e ]
  %indvars.iv472 = phi i64 [ %i.n, %.lr.ph475 ], [ %indvars.iv.next, %bb.e ]
  %indvars.iv.next = add nsw i64 %indvars.iv472, -1 ; 3 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  %i.r = shl nsw i32 %indvars, 1                  ; 2 uses
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.pre.pre, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8
  %i.w = sub nsw i64 %.0170473, %i.v              ; 4 uses
  %.not201 = icmp slt i64 %1, %i.w
  br i1 %.not201, label %bb.e, label %split, !llvm.loop !241

split:                                            ; preds = %bb.f, %._crit_edge372
  %.pre-phi374 = phi i32 [ %.pre373, %._crit_edge372 ], [ %i.r, %bb.f ]
  %.0179.in.lcssa = phi i32 [ %smin, %._crit_edge372 ], [ %i.q, %bb.f ]
  %.0179.lcssa = phi i32 [ %i.l, %._crit_edge372 ], [ %indvars, %bb.f ] ; 3 uses
  %.1171 = phi i64 [ %.0170.lcssa, %._crit_edge372 ], [ %i.w, %bb.f ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = sext i32 %.0179.in.lcssa to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = sext i32 %.0179.lcssa to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8            ; 4 uses
  %i.af = sext i32 %.pre-phi374 to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %.pre.pre, i64 %i.af ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8            ; 3 uses
  %i.ai = getelementptr i8, ptr %i.ag, i64 8
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = sub nsw i64 %1, %.1171
  %i.al = add nsw i64 %i.ah, %i.ak                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #62
  %i.am = icmp slt i64 %i.ae, %i.ab
  br i1 %i.am, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %split
  %i.an = add nsw i64 %i.aj, %i.ah
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %_seek_helper.exit218.thread255
  %.0132343 = phi i64 [ %i.ae, %.lr.ph ], [ %.6138, %_seek_helper.exit218.thread255 ] ; 2 uses
  %.0139342 = phi i64 [ %i.an, %.lr.ph ], [ %.5144, %_seek_helper.exit218.thread255 ] ; 4 uses
  %.0145341 = phi i64 [ %i.ah, %.lr.ph ], [ %.6151, %_seek_helper.exit218.thread255 ] ; 4 uses
  %.0152340 = phi i64 [ %i.ae, %.lr.ph ], [ %.6158, %_seek_helper.exit218.thread255 ] ; 7 uses
  %.0159339 = phi i64 [ %i.ab, %.lr.ph ], [ %.6165, %_seek_helper.exit218.thread255 ] ; 4 uses
  %i.ar = sub nsw i64 %.0159339, %.0152340        ; 2 uses
  %i.as = icmp slt i64 %i.ar, 8500
  br i1 %i.as, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = sub nsw i64 %i.al, %.0145341
  %i.au = mul nsw i64 %i.at, %i.ar
  %i.av = sub nsw i64 %.0139342, %.0145341
  %i.aw = sdiv i64 %i.au, %i.av
  %i.ax = add i64 %.0152340, -8500
  %i.ay = add i64 %i.ax, %i.aw
  %i.az = add nsw i64 %.0152340, 1
  %spec.select = call i64 @llvm.smax.i64(i64 %i.ay, i64 %i.az)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi i64 [ %spec.select, %bb.h ], [ %.0152340, %bb.g ] ; 3 uses
  %i.ba = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i = icmp eq ptr %i.ba, null
  br i1 %.not.i, label %_seek_helper.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = load ptr, ptr %i.ao, align 8
  %i.bc = call i32 %i.bb(ptr noundef nonnull %i.ba, i64 noundef %.0, i32 noundef 0) #62, !inline_history !17 ; 0 uses
  store i64 %.0, ptr %i.ap, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.aq, i8 0, i64 20, i1 false)
  br label %_seek_helper.exit

_seek_helper.exit:                                ; preds = %bb.i, %bb.j
  %i.bd = icmp slt i64 %.0152340, %.0159339
  br i1 %i.bd, label %_seek_helper.exit218.outer.split, label %_seek_helper.exit218.thread255

_seek_helper.exit218.outer.split:                 ; preds = %_seek_helper.exit, %_seek_helper.exit216
  %.1.ph335 = phi i64 [ %.6, %_seek_helper.exit216 ], [ %.0, %_seek_helper.exit ] ; 5 uses
  %.1133.ph334 = phi i64 [ %.4136, %_seek_helper.exit216 ], [ %.0132343, %_seek_helper.exit ] ; 6 uses
  %.1146.ph333 = phi i64 [ %.4149, %_seek_helper.exit216 ], [ %.0145341, %_seek_helper.exit ] ; 4 uses
  %.1153.ph332 = phi i64 [ %.4156, %_seek_helper.exit216 ], [ %.0152340, %_seek_helper.exit ] ; 6 uses
  %.1160.ph331 = phi i64 [ %.4163, %_seek_helper.exit216 ], [ %.0159339, %_seek_helper.exit ] ; 6 uses
  br label %_seek_helper.exit218

_seek_helper.exit218:                             ; preds = %_seek_helper.exit218.outer.split, %bb.p
  %i.be = load i64, ptr %i.ap, align 8
  %i.bf = sub nsw i64 %.1160.ph331, %i.be
  %i.bg = call fastcc i64 @_get_next_page(ptr noundef nonnull %0, ptr noundef nonnull %2, i64 noundef %i.bf) ; 9 uses
  %i.bh = icmp eq i64 %i.bg, -128
  br i1 %i.bh, label %.sink.split, label %bb.k

bb.k:                                             ; preds = %_seek_helper.exit218
  %i.bi = icmp slt i64 %i.bg, 0
  br i1 %i.bi, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.bj = add nsw i64 %.1153.ph332, 1             ; 2 uses
  %.not208 = icmp sgt i64 %.1.ph335, %i.bj
  br i1 %.not208, label %bb.m, label %._crit_edge

bb.m:                                             ; preds = %bb.l
  %i.bk = icmp eq i64 %.1.ph335, 0
  br i1 %i.bk, label %.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bl = add nsw i64 %.1.ph335, -8500
  %spec.select210 = call i64 @llvm.smax.i64(i64 %i.bl, i64 %i.bj) ; 3 uses
  %i.bm = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i215 = icmp eq ptr %i.bm, null
  br i1 %.not.i215, label %_seek_helper.exit216, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = load ptr, ptr %i.ao, align 8
  %i.bo = call i32 %i.bn(ptr noundef nonnull %i.bm, i64 noundef %spec.select210, i32 noundef 0) #62, !inline_history !17 ; 0 uses
  br label %_seek_helper.exit216.sink.split

bb.p:                                             ; preds = %bb.k
  %i.bp = load ptr, ptr %2, align 8               ; 4 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 10
  %i.br = load i32, ptr %i.bq, align 1
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 9
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr i8, ptr %i.bp, i64 7
  %i.bx = load i16, ptr %i.bw, align 1
  %i.by = zext i16 %i.bx to i64
  %i.bz = shl nuw nsw i64 %i.by, 8
  %i.ca = shl nuw i64 %i.bs, 32
  %i.cb = shl nuw nsw i64 %i.bv, 24
  %i.cc = or disjoint i64 %i.ca, %i.cb
  %i.cd = or disjoint i64 %i.cc, %i.bz
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bp, i64 6
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = zext i8 %i.cf to i64
  %i.ch = or disjoint i64 %i.cd, %i.cg            ; 6 uses
  %i.ci = icmp eq i64 %i.ch, -1
  br i1 %i.ci, label %_seek_helper.exit218, label %bb.q, !llvm.loop !242

bb.q:                                             ; preds = %bb.p
  %i.cj = icmp slt i64 %i.ch, %i.al
  br i1 %i.cj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ck = load i64, ptr %i.ap, align 8            ; 3 uses
  %i.cl = sub nsw i64 %i.al, %i.ch
  %i.cm = icmp sgt i64 %i.cl, 44100
end_hunk_4
begin_hunk_5_@_fetch_and_process_packet:bb.a

bb.w:                                             ; preds = %bb.v, %._crit_edge.i
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8            ; 2 uses
  %.not20.i = icmp eq ptr %i.fi, null
  br i1 %.not20.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @free(ptr noundef nonnull %i.fi) #62
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8            ; 2 uses
  %.not21.i = icmp eq ptr %i.fk, null
  br i1 %.not21.i, label %.thread25, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @free(ptr noundef nonnull %i.fk) #62
  br label %.thread25

.thread25:                                        ; preds = %bb.z, %bb.y, %bb.s
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eu, i8 0, i64 32, i1 false)
  %.pr34.pre = load i32, ptr %i.a, align 8        ; 2 uses
  %.not119 = icmp eq i32 %.pr34.pre, 4
  br i1 %.not119, label %.thread25.thread102, label %.thread25.thread

.thread25.thread:                                 ; preds = %bb.o, %.thread25
  %i.fl = phi i32 [ %.pr34.pre, %.thread25 ], [ %i.ek, %bb.o ]
  %i.fm = icmp slt i32 %i.fl, 3
  br i1 %i.fm, label %.thread25.thread.thread, label %bb.ae

.thread25.thread.thread:                          ; preds = %bb.m, %.thread25.thread
  %.pre = load i32, ptr %i.s, align 8
  %i.fn = icmp eq i32 %.pre, 0
  br i1 %i.fn, label %bb.ad, label %.thread25.thread.thread.thread

.thread25.thread.thread.thread:                   ; preds = %bb.r, %.thread25.thread.thread
  %i.fo = load ptr, ptr %2, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 14
  %i.fq = load i32, ptr %i.fp, align 1
  %i.fr = sext i32 %i.fq to i64                   ; 3 uses
  store i64 %i.fr, ptr %i.q, align 8
  %i.fs = load i32, ptr %i.w, align 8             ; 3 uses
  %i.ft = icmp sgt i32 %i.fs, 0
  br i1 %i.ft, label %.lr.ph52, label %._crit_edge

.lr.ph52:                                         ; preds = %.thread25.thread.thread.thread
  %i.fu = load ptr, ptr %i.v, align 8
  %wide.trip.count = zext nneg i32 %i.fs to i64
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph52, %bb.ab
  %indvars.iv = phi i64 [ 0, %.lr.ph52 ], [ %indvars.iv.next, %bb.ab ] ; 3 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %indvars.iv
  %i.fw = load i64, ptr %i.fv, align 8
  %i.fx = icmp eq i64 %i.fw, %i.fr
  br i1 %i.fx, label %._crit_edge.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread31, label %bb.aa, !llvm.loop !310

._crit_edge.loopexit:                             ; preds = %bb.aa
  %i.fy = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.thread25.thread.thread.thread
  %.0.lcssa = phi i32 [ 0, %.thread25.thread.thread.thread ], [ %i.fy, %._crit_edge.loopexit ] ; 2 uses
  %i.fz = icmp eq i32 %.0.lcssa, %i.fs
  br i1 %i.fz, label %.thread31, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge
  store i32 %.0.lcssa, ptr %i.x, align 8
  store i32 0, ptr %i.aa, align 4
  store i32 0, ptr %i.ab, align 8
  store i32 0, ptr %i.ac, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  store i64 -1, ptr %i.ad, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store i64 %i.fr, ptr %i.ae, align 8
  store i32 3, ptr %i.a, align 8
  br label %bb.ae

bb.ad:                                            ; preds = %.thread25.thread.thread
  %i.ga = load ptr, ptr %i.t, align 8
  %i.gb = load ptr, ptr %i.u, align 8
  %i.gc = call fastcc i32 @_fetch_headers(ptr noundef nonnull %0, ptr noundef %i.ga, ptr noundef %i.gb, ptr noundef nonnull %i.q, ptr noundef nonnull %2) ; 2 uses
  %.not121 = icmp eq i32 %i.gc, 0
  br i1 %.not121, label %.thread28, label %.thread31

.thread28:                                        ; preds = %bb.ad
  %i.gd = load i32, ptr %i.x, align 8
  %i.ge = add nsw i32 %i.gd, 1
  store i32 %i.ge, ptr %i.x, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %.thread25.thread, %bb.ac, %.thread28
  %i.gf = call fastcc i32 @_make_decode_ready(ptr noundef nonnull %0) ; 2 uses
  %i.gg = icmp sgt i32 %i.gf, -1
  br i1 %i.gg, label %.thread25.thread102, label %.thread31

.thread25.thread102:                              ; preds = %bb.p, %bb.ae, %.thread25
  %i.gh = call i32 @ogg_stream_pagein(ptr noundef nonnull %i.b, ptr noundef nonnull %2) ; 0 uses
  br label %bb.b

.thread31:                                        ; preds = %bb.ad, %._crit_edge, %bb.n, %bb.q, %bb.ae, %bb.ab, %.thread18
  %.12 = phi i32 [ %.398.ph, %.thread18 ], [ -137, %bb.ab ], [ -137, %._crit_edge ], [ %i.gc, %bb.ad ], [ -2, %bb.q ], [ -2, %bb.n ], [ %i.gf, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #62
  ret i32 %.12
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 1) i32 @ov_time_seek(ptr noundef %0, double noundef %1) #0 {
bb.a:
  %i.a = tail call i64 @ov_pcm_total(ptr noundef %0, i32 noundef -1) ; 2 uses
  %i.b = tail call double @ov_time_total(ptr noundef %0, i32 noundef -1) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp slt i32 %i.d, 2
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = fcmp olt double %1, 0.000000e+00
  %i.i = fcmp ogt double %1, %i.b
  %or.cond = select i1 %i.h, i1 true, i1 %i.i
  br i1 %or.cond, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load i32, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = zext i32 %i.k to i64
  %indvars.iv.next38 = add nsw i64 %i.m, -1       ; 2 uses
  %i.n = icmp sgt i32 %i.k, 0
  br i1 %i.n, label %.lr.ph.preheader, label %._crit_edge44

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.o = load ptr, ptr %i.l, align 8
  br label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv.next41, -1 ; 2 uses
  %i.p = trunc nuw i64 %indvars.iv.next41 to i32
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge44, !llvm.loop !311

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv.next41 = phi i64 [ %indvars.iv.next, %bb.e ], [ %indvars.iv.next38, %.lr.ph.preheader ] ; 5 uses
  %.02540 = phi double [ %i.y, %bb.e ], [ %i.b, %.lr.ph.preheader ]
  %.02639 = phi i64 [ %i.w, %bb.e ], [ %i.a, %.lr.ph.preheader ]
  %indvars = trunc i64 %indvars.iv.next41 to i32
  %i.r = shl i64 %indvars.iv.next41, 1
  %i.s = and i64 %i.r, 4294967294
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8
  %i.w = sub nsw i64 %.02639, %i.v                ; 3 uses
  %i.x = tail call double @ov_time_total(ptr noundef nonnull %0, i32 noundef %indvars)
  %i.y = fsub double %.02540, %i.x                ; 4 uses
  %i.z = fcmp ult double %1, %i.y
  br i1 %i.z, label %bb.e, label %._crit_edge, !llvm.loop !311

._crit_edge:                                      ; preds = %.lr.ph
  br label %._crit_edge44, !llvm.loop !311

._crit_edge44:                                    ; preds = %bb.e, %._crit_edge, %bb.d
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next41, %._crit_edge ], [ %indvars.iv.next38, %bb.d ], [ %indvars.iv.next, %bb.e ]
  %.127 = phi i64 [ %i.w, %._crit_edge ], [ %i.a, %bb.d ], [ %i.w, %bb.e ]
  %.1 = phi double [ %i.y, %._crit_edge ], [ %i.b, %bb.d ], [ %i.y, %bb.e ]
  %i.aa = sitofp i64 %.127 to double
  %i.ab = fsub double %1, %.1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ad = load ptr, ptr %i.ac, align 8
  %sext = shl i64 %indvars.iv.next.lcssa, 32
  %i.ae = ashr exact i64 %sext, 32
  %i.af = getelementptr inbounds [56 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = sitofp i64 %i.ah to double
  %i.aj = fmul double %i.ab, %i.ai
  %i.ak = fadd double %i.aj, %i.aa
  %i.al = fptosi double %i.ak to i64
  %i.am = tail call i32 @ov_pcm_seek(ptr noundef nonnull %0, i64 noundef %i.al)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.b, %bb.a, %._crit_edge44
  %.0 = phi i32 [ -131, %bb.a ], [ -138, %bb.b ], [ %i.am, %._crit_edge44 ], [ -131, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ov_time_seek_page(ptr noundef %0, double noundef %1) #0 {
bb.a:
  %i.a = tail call i64 @ov_pcm_total(ptr noundef %0, i32 noundef -1) ; 2 uses
  %i.b = tail call double @ov_time_total(ptr noundef %0, i32 noundef -1) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp slt i32 %i.d, 2
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = fcmp olt double %1, 0.000000e+00
  %i.i = fcmp ogt double %1, %i.b
  %or.cond = select i1 %i.h, i1 true, i1 %i.i
  br i1 %or.cond, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load i32, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = zext i32 %i.k to i64
  %indvars.iv.next38 = add nsw i64 %i.m, -1       ; 2 uses
  %i.n = icmp sgt i32 %i.k, 0
  br i1 %i.n, label %.lr.ph.preheader, label %._crit_edge44

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.o = load ptr, ptr %i.l, align 8
  br label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv.next41, -1 ; 2 uses
  %i.p = trunc nuw i64 %indvars.iv.next41 to i32
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge44, !llvm.loop !312

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv.next41 = phi i64 [ %indvars.iv.next, %bb.e ], [ %indvars.iv.next38, %.lr.ph.preheader ] ; 5 uses
  %.02540 = phi double [ %i.y, %bb.e ], [ %i.b, %.lr.ph.preheader ]
  %.02639 = phi i64 [ %i.w, %bb.e ], [ %i.a, %.lr.ph.preheader ]
  %indvars = trunc i64 %indvars.iv.next41 to i32
  %i.r = shl i64 %indvars.iv.next41, 1
  %i.s = and i64 %i.r, 4294967294
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8
  %i.w = sub nsw i64 %.02639, %i.v                ; 3 uses
  %i.x = tail call double @ov_time_total(ptr noundef nonnull %0, i32 noundef %indvars)
  %i.y = fsub double %.02540, %i.x                ; 4 uses
  %i.z = fcmp ult double %1, %i.y
  br i1 %i.z, label %bb.e, label %._crit_edge, !llvm.loop !312

._crit_edge:                                      ; preds = %.lr.ph
  br label %._crit_edge44, !llvm.loop !312

._crit_edge44:                                    ; preds = %bb.e, %._crit_edge, %bb.d
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next41, %._crit_edge ], [ %indvars.iv.next38, %bb.d ], [ %indvars.iv.next, %bb.e ]
  %.127 = phi i64 [ %i.w, %._crit_edge ], [ %i.a, %bb.d ], [ %i.w, %bb.e ]
  %.1 = phi double [ %i.y, %._crit_edge ], [ %i.b, %bb.d ], [ %i.y, %bb.e ]
  %i.aa = sitofp i64 %.127 to double
  %i.ab = fsub double %1, %.1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ad = load ptr, ptr %i.ac, align 8
  %sext = shl i64 %indvars.iv.next.lcssa, 32
  %i.ae = ashr exact i64 %sext, 32
  %i.af = getelementptr inbounds [56 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = sitofp i64 %i.ah to double
  %i.aj = fmul double %i.ab, %i.ai
  %i.ak = fadd double %i.aj, %i.aa
  %i.al = fptosi double %i.ak to i64
  %i.am = tail call i32 @ov_pcm_seek_page(ptr noundef nonnull %0, i64 noundef %i.al)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.b, %bb.a, %._crit_edge44
  %.0 = phi i32 [ -131, %bb.a ], [ -138, %bb.b ], [ %i.am, %._crit_edge44 ], [ -131, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @ov_raw_tell(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp slt i32 %i.b, 2
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.e, %bb.b ], [ -131, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @ov_pcm_tell(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp slt i32 %i.b, 2
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = load i64, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.e, %bb.b ], [ -131, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local double @ov_time_tell(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #35 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp slt i32 %i.b, 2
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i64 @ov_pcm_total(ptr noundef nonnull %0, i32 noundef -1) ; 2 uses
  %i.g = tail call double @ov_time_total(ptr noundef nonnull %0, i32 noundef -1) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.l = zext i32 %i.i to i64
  %indvars.iv.next31 = add nsw i64 %i.l, -1       ; 2 uses
  %i.m = icmp sgt i32 %i.i, 0
  br i1 %i.m, label %.lr.ph.preheader, label %.loopexit.loopexit

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.n = load ptr, ptr %i.j, align 8
  br label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv.next34, -1 ; 2 uses
  %i.o = trunc nuw i64 %indvars.iv.next34 to i32
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !313

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv.next34 = phi i64 [ %indvars.iv.next, %bb.d ], [ %indvars.iv.next31, %.lr.ph.preheader ] ; 5 uses
  %.033 = phi double [ %i.x, %bb.d ], [ %i.g, %.lr.ph.preheader ]
  %.02032 = phi i64 [ %i.v, %bb.d ], [ %i.f, %.lr.ph.preheader ]
  %indvars = trunc i64 %indvars.iv.next34 to i32
  %i.q = shl i64 %indvars.iv.next34, 1
  %i.r = and i64 %i.q, 4294967294
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.t, align 8
  %i.v = sub nsw i64 %.02032, %i.u                ; 4 uses
  %i.w = tail call double @ov_time_total(ptr noundef nonnull %0, i32 noundef %indvars)
  %i.x = fsub double %.033, %i.w                  ; 3 uses
  %i.y = load i64, ptr %i.k, align 8
  %.not27 = icmp slt i64 %i.y, %i.v
  br i1 %.not27, label %bb.d, label %..loopexit.loopexit_crit_edge, !llvm.loop !313

..loopexit.loopexit_crit_edge:                    ; preds = %.lr.ph
  br label %.loopexit.loopexit, !llvm.loop !313

.loopexit.loopexit:                               ; preds = %bb.d, %..loopexit.loopexit_crit_edge, %bb.c
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next34, %..loopexit.loopexit_crit_edge ], [ %indvars.iv.next31, %bb.c ], [ %indvars.iv.next, %bb.d ]
  %.121.ph = phi i64 [ %i.v, %..loopexit.loopexit_crit_edge ], [ %i.f, %bb.c ], [ %i.v, %bb.d ]
  %.1.ph = phi double [ %i.x, %..loopexit.loopexit_crit_edge ], [ %i.g, %bb.c ], [ %i.x, %bb.d ]
  %sext = shl i64 %indvars.iv.next.lcssa, 32
  %i.z = ashr exact i64 %sext, 32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b
  %.123 = phi i64 [ 0, %bb.b ], [ %i.z, %.loopexit.loopexit ]
  %.121 = phi i64 [ 0, %bb.b ], [ %.121.ph, %.loopexit.loopexit ]
  %.1 = phi double [ 0.000000e+00, %bb.b ], [ %.1.ph, %.loopexit.loopexit ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = sub nsw i64 %i.ab, %.121
  %i.ad = sitofp i64 %i.ac to double
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds [56 x i8], ptr %i.af, i64 %.123
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = sitofp i64 %i.ai to double
  %i.ak = fdiv double %i.ad, %i.aj
  %i.al = fadd double %.1, %i.ak
  br label %bb.e
end_hunk_5
begin_hunk_6_@vorbis_synthesis_headerin:bb.a
  %i.hu = shl nsw i64 %i.hm, 3
  %i.hv = icmp sgt i64 %i.ht, %i.hu
  %.pre103 = load ptr, ptr %i.e, align 8          ; 2 uses
  br i1 %i.hv, label %._crit_edge.i73.i, label %bb.am

._crit_edge.i73.i:                                ; preds = %bb.al
  %i.hw = sdiv i32 %i.hp, 8
  %i.hx = sext i32 %i.hw to i64                   ; 2 uses
  %i.hy = getelementptr inbounds i8, ptr %.pre103, i64 %i.hx
  store ptr %i.hy, ptr %i.e, align 8
  %i.hz = add nsw i64 %i.hn, %i.hx
  store i64 %i.hz, ptr %3, align 8
  %i.ia = and i32 %i.hp, 7
  store i32 %i.ia, ptr %i.i, align 8
  br label %.preheader.i.i

bb.am:                                            ; preds = %._crit_edge.i24._crit_edge, %bb.al
  %i.ib = phi ptr [ %.pre102, %._crit_edge.i24._crit_edge ], [ %.pre103, %bb.al ] ; 6 uses
  %i.ic = load i8, ptr %i.ib, align 1
  %i.id = zext i8 %i.ic to i32
  %i.ie = lshr i32 %i.id, %i.ho                   ; 2 uses
  %i.if = icmp sgt i32 %i.ho, 7
  br i1 %i.if, label %bb.an, label %oggpack_read.exit76.i

bb.an:                                            ; preds = %bb.am
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ib, i64 1
  %i.ih = load i8, ptr %i.ig, align 1
  %i.ii = zext i8 %i.ih to i32
  %i.ij = sub nsw i32 8, %i.ho
  %i.ik = shl nuw nsw i32 %i.ii, %i.ij
  %i.il = or i32 %i.ik, %i.ie                     ; 2 uses
  %i.im = icmp samesign ugt i32 %i.ho, 15
  br i1 %i.im, label %bb.ao, label %oggpack_read.exit76.i

bb.ao:                                            ; preds = %bb.an
  %i.in = getelementptr inbounds nuw i8, ptr %i.ib, i64 2
  %i.io = load i8, ptr %i.in, align 1
  %i.ip = zext i8 %i.io to i32
  %i.iq = sub nsw i32 16, %i.ho
  %i.ir = shl nuw nsw i32 %i.ip, %i.iq
  %i.is = or i32 %i.ir, %i.il                     ; 2 uses
  %i.it = icmp samesign ugt i32 %i.ho, 23
  br i1 %i.it, label %bb.ap, label %oggpack_read.exit76.i

bb.ap:                                            ; preds = %bb.ao
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ib, i64 3
  %i.iv = load i8, ptr %i.iu, align 1
  %i.iw = zext i8 %i.iv to i32
  %i.ix = sub nsw i32 24, %i.ho
  %i.iy = shl nuw nsw i32 %i.iw, %i.ix
  %i.iz = or i32 %i.iy, %i.is                     ; 2 uses
  %i.ja = icmp samesign ult i32 %i.ho, 32
  br i1 %i.ja, label %oggpack_read.exit76.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  %i.jc = load i8, ptr %i.jb, align 1
  %i.jd = zext i8 %i.jc to i32
  %i.je = sub nsw i32 32, %i.ho
  %i.jf = shl nuw nsw i32 %i.jd, %i.je
  %i.jg = or i32 %i.jf, %i.iz
  br label %oggpack_read.exit76.i

oggpack_read.exit76.i:                            ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am
  %.0.i70.in.i = phi i32 [ %i.jg, %bb.aq ], [ %i.ie, %bb.am ], [ %i.iz, %bb.ap ], [ %i.is, %bb.ao ], [ %i.il, %bb.an ]
  %i.jh = trunc i32 %.0.i70.in.i to i1
  %i.ji = sdiv i32 %i.hp, 8
  %i.jj = sext i32 %i.ji to i64                   ; 2 uses
  %i.jk = getelementptr inbounds i8, ptr %i.ib, i64 %i.jj
  store ptr %i.jk, ptr %i.e, align 8
  %i.jl = add nsw i64 %i.hn, %i.jj
  store i64 %i.jl, ptr %3, align 8
  %i.jm = and i32 %i.hp, 7
  store i32 %i.jm, ptr %i.i, align 8
  br i1 %i.jh, label %_vorbis_unpack_comment.exit, label %.preheader.i.i

_v_readstring.exit68.i:                           ; preds = %oggpack_read.exit.i20.thread, %oggpack_read.exit.i20
  %.not.i77.i = icmp eq ptr %1, null
  br i1 %.not.i77.i, label %vorbis_comment_clear.exit.i, label %_v_readstring.exit68.i..preheader.i.i_crit_edge

_v_readstring.exit68.i..preheader.i.i_crit_edge:  ; preds = %_v_readstring.exit68.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre104 = load i32, ptr %.phi.trans.insert, align 8
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %oggpack_read.exit54.i, %_v_readstring.exit68.i..preheader.i.i_crit_edge, %oggpack_read.exit76.i, %._crit_edge.i73.i
  %i.jn = phi i32 [ %.pre104, %_v_readstring.exit68.i..preheader.i.i_crit_edge ], [ %i.hl, %._crit_edge.i73.i ], [ %i.hl, %oggpack_read.exit76.i ], [ %i.da, %oggpack_read.exit54.i ] ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.jp = icmp sgt i32 %i.jn, 0
  br i1 %i.jp, label %.lr.ph.i79.i, label %._crit_edge.i78.i

.lr.ph.i79.i:                                     ; preds = %.preheader.i.i, %bb.as
  %i.jq = phi i32 [ %i.ju, %bb.as ], [ %i.jn, %.preheader.i.i ]
  %.023.i.i = phi i64 [ %i.jv, %bb.as ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.jr = load ptr, ptr %1, align 8
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %.023.i.i
  %i.jt = load ptr, ptr %i.js, align 8            ; 2 uses
  %.not22.i.i = icmp eq ptr %i.jt, null
  br i1 %.not22.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i79.i
  tail call void @free(ptr noundef nonnull %i.jt) #62
  %.pre.i80.i = load i32, ptr %i.jo, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.lr.ph.i79.i
  %i.ju = phi i32 [ %i.jq, %.lr.ph.i79.i ], [ %.pre.i80.i, %bb.ar ] ; 2 uses
  %i.jv = add nuw nsw i64 %.023.i.i, 1            ; 2 uses
  %i.jw = sext i32 %i.ju to i64
  %i.jx = icmp slt i64 %i.jv, %i.jw
  br i1 %i.jx, label %.lr.ph.i79.i, label %._crit_edge.i78.i, !llvm.loop !1

._crit_edge.i78.i:                                ; preds = %bb.as, %oggpack_read.exit46.i, %oggpack_read.exit46.i.thread, %.preheader.i.i
  %i.jy = load ptr, ptr %1, align 8               ; 2 uses
  %.not19.i.i = icmp eq ptr %i.jy, null
  br i1 %.not19.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %._crit_edge.i78.i
  tail call void @free(ptr noundef nonnull %i.jy) #62
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %._crit_edge.i78.i
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ka = load ptr, ptr %i.jz, align 8            ; 2 uses
  %.not20.i.i = icmp eq ptr %i.ka, null
  br i1 %.not20.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  tail call void @free(ptr noundef nonnull %i.ka) #62
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.kc = load ptr, ptr %i.kb, align 8            ; 2 uses
  %.not21.i.i = icmp eq ptr %i.kc, null
  br i1 %.not21.i.i, label %vorbis_comment_clear.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void @free(ptr noundef nonnull %i.kc) #62
  br label %vorbis_comment_clear.exit.i

vorbis_comment_clear.exit.i:                      ; preds = %bb.ax, %bb.aw, %_v_readstring.exit68.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  br label %_vorbis_unpack_comment.exit

bb.ay:                                            ; preds = %bb.j
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ke = load i64, ptr %i.kd, align 8
  %i.kf = icmp eq i64 %i.ke, 0
  br i1 %i.kf, label %_vorbis_unpack_comment.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.kh = load ptr, ptr %i.kg, align 8
  %i.ki = icmp eq ptr %i.kh, null
  br i1 %i.ki, label %_vorbis_unpack_comment.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.kk = load ptr, ptr %i.kj, align 8            ; 15 uses
  %.not.i28 = icmp eq ptr %i.kk, null
  br i1 %.not.i28, label %_vorbis_unpack_comment.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.not.i.i29 = icmp slt i64 %i.g, 12
  %i.kl = icmp slt i64 %.pre-phi, 64
  %or.cond179 = select i1 %.not.i.i29, i1 %i.kl, i1 false
  br i1 %or.cond179, label %oggpack_read.exit.i31.thread, label %oggpack_read.exit.i31

oggpack_read.exit.i31.thread:                     ; preds = %bb.bb
  %i.km = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.km, ptr %i.e, align 8
  store i64 8, ptr %3, align 8
  store i32 0, ptr %i.i, align 8
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kk, i64 32
  store i32 0, ptr %i.kn, align 8
  br label %._crit_edge.i37

oggpack_read.exit.i31:                            ; preds = %bb.bb
  %i.ko = load i8, ptr %i.al, align 1
  %i.kp = zext i8 %i.ko to i32
  %i.kq = add nuw nsw i32 %i.kp, 1
  %i.kr = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.kr, ptr %i.e, align 8
  store i64 8, ptr %3, align 8
  store i32 0, ptr %i.i, align 8
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kk, i64 32 ; 2 uses
  store i32 %i.kq, ptr %i.ks, align 8
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kk, i64 2856
  br label %bb.bd

bb.bc:                                            ; preds = %bb.bd
  %indvars.iv.next.i36 = add nuw nsw i64 %indvars.iv.i34, 1 ; 2 uses
  %i.ku = load i32, ptr %i.ks, align 8
  %i.kv = sext i32 %i.ku to i64
  %i.kw = icmp slt i64 %indvars.iv.next.i36, %i.kv
  br i1 %i.kw, label %bb.bd, label %._crit_edge.i37thread-pre-split, !llvm.loop !399

bb.bd:                                            ; preds = %bb.bc, %oggpack_read.exit.i31
  %indvars.iv.i34 = phi i64 [ 0, %oggpack_read.exit.i31 ], [ %indvars.iv.next.i36, %bb.bc ] ; 2 uses
  %4 = call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #71 ; 2 uses
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %indvars.iv.i34
  store ptr %4, ptr %i.kx, align 8
  %i.ky = call i32 @vorbis_staticbook_unpack(ptr noundef nonnull %3, ptr noundef %4)
  %.not123.i = icmp eq i32 %i.ky, 0
  br i1 %.not123.i, label %bb.bc, label %.loopexit.i35

._crit_edge.i37thread-pre-split:                  ; preds = %bb.bc
  %.pr = load i32, ptr %i.i, align 8
  %.pre = load i64, ptr %3, align 8
  br label %._crit_edge.i37

._crit_edge.i37:                                  ; preds = %oggpack_read.exit.i31.thread, %._crit_edge.i37thread-pre-split
  %i.kz = phi i64 [ %.pre, %._crit_edge.i37thread-pre-split ], [ 8, %oggpack_read.exit.i31.thread ] ; 3 uses
  %i.la = phi i32 [ %.pr, %._crit_edge.i37thread-pre-split ], [ 0, %oggpack_read.exit.i31.thread ] ; 10 uses
  %i.lb = add nsw i32 %i.la, 6                    ; 3 uses
  %i.lc = add nsw i64 %i.kz, 4
  %i.ld = load i64, ptr %i.h, align 8             ; 7 uses
  %.not.i126.i = icmp slt i64 %i.lc, %i.ld
  br i1 %.not.i126.i, label %._crit_edge.i37._crit_edge, label %bb.be

._crit_edge.i37._crit_edge:                       ; preds = %._crit_edge.i37
  %.pre93 = load ptr, ptr %i.e, align 8
  br label %bb.bf

bb.be:                                            ; preds = %._crit_edge.i37
  %i.le = shl nsw i64 %i.kz, 3
  %i.lf = sext i32 %i.lb to i64
  %i.lg = add nsw i64 %i.le, %i.lf
  %i.lh = shl nsw i64 %i.ld, 3
  %i.li = icmp sgt i64 %i.lg, %i.lh
  %.pre94 = load ptr, ptr %i.e, align 8           ; 2 uses
  br i1 %i.li, label %oggpack_read.exit133.i, label %bb.bf

bb.bf:                                            ; preds = %._crit_edge.i37._crit_edge, %bb.be
  %i.lj = phi ptr [ %.pre93, %._crit_edge.i37._crit_edge ], [ %.pre94, %bb.be ] ; 6 uses
  %i.lk = load i8, ptr %i.lj, align 1
  %i.ll = zext i8 %i.lk to i32
  %i.lm = lshr i32 %i.ll, %i.la                   ; 2 uses
  %i.ln = icmp sgt i32 %i.la, 2
  br i1 %i.ln, label %bb.bg, label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lj, i64 1
  %i.lp = load i8, ptr %i.lo, align 1
  %i.lq = zext i8 %i.lp to i32
  %i.lr = sub nsw i32 8, %i.la
  %i.ls = shl nuw nsw i32 %i.lq, %i.lr
  %i.lt = or i32 %i.ls, %i.lm                     ; 2 uses
  %i.lu = icmp samesign ugt i32 %i.la, 10
  br i1 %i.lu, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lj, i64 2
  %i.lw = load i8, ptr %i.lv, align 1
  %i.lx = zext i8 %i.lw to i32
  %i.ly = sub nsw i32 16, %i.la
  %i.lz = shl nuw nsw i32 %i.lx, %i.ly
  %i.ma = or i32 %i.lz, %i.lt                     ; 2 uses
  %i.mb = icmp samesign ugt i32 %i.la, 18
  br i1 %i.mb, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lj, i64 3
  %i.md = load i8, ptr %i.mc, align 1
  %i.me = zext i8 %i.md to i32
  %i.mf = sub nsw i32 24, %i.la
  %i.mg = shl nuw nsw i32 %i.me, %i.mf
  %i.mh = or i32 %i.mg, %i.ma                     ; 2 uses
  %i.mi = icmp samesign ult i32 %i.la, 27
  br i1 %i.mi, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lj, i64 4
  %i.mk = load i8, ptr %i.mj, align 1
  %i.ml = zext i8 %i.mk to i32
  %i.mm = sub nsw i32 32, %i.la
  %i.mn = shl nuw nsw i32 %i.ml, %i.mm
  %i.mo = or i32 %i.mn, %i.mh
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf
  %.0.i127.in.i = phi i32 [ %i.mo, %bb.bj ], [ %i.lm, %bb.bf ], [ %i.mh, %bb.bi ], [ %i.ma, %bb.bh ], [ %i.lt, %bb.bg ]
  %i.mp = and i32 %.0.i127.in.i, 63
  %i.mq = add nuw nsw i32 %i.mp, 1
  br label %oggpack_read.exit133.i

oggpack_read.exit133.i:                           ; preds = %bb.be, %bb.bk
  %i.mr = phi ptr [ %i.lj, %bb.bk ], [ %.pre94, %bb.be ]
  %.1.i128.i = phi i32 [ %i.mq, %bb.bk ], [ 0, %bb.be ] ; 3 uses
  %i.ms = sdiv i32 %i.lb, 8
  %i.mt = sext i32 %i.ms to i64                   ; 2 uses
  %i.mu = getelementptr inbounds i8, ptr %i.mr, i64 %i.mt ; 7 uses
  store ptr %i.mu, ptr %i.e, align 8
  %i.mv = add nsw i64 %i.kz, %i.mt                ; 6 uses
  store i64 %i.mv, ptr %3, align 8
  %i.mw = and i32 %i.lb, 7                        ; 15 uses
  store i32 %i.mw, ptr %i.i, align 8
  %.not319.i = icmp eq i32 %.1.i128.i, 0
  br i1 %.not319.i, label %.thread.i, label %.lr.ph227.i

.lr.ph227.i:                                      ; preds = %oggpack_read.exit133.i
  %i.mx = shl nsw i64 %i.ld, 3                    ; 2 uses
  %i.my = or disjoint i32 %i.mw, 16               ; 2 uses
  %i.mz = add nsw i64 %i.mv, 4
  %.not.i134.peel.i = icmp slt i64 %i.mz, %i.ld
  br i1 %.not.i134.peel.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph227.i
  %i.na = shl nsw i64 %i.mv, 3
  %i.nb = zext nneg i32 %i.my to i64
  %i.nc = add nsw i64 %i.na, %i.nb
  %i.nd = icmp sgt i64 %i.nc, %i.mx
  br i1 %i.nd, label %._crit_edge.i138.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %.lr.ph227.i
  %i.ne = load i8, ptr %i.mu, align 1
  %i.nf = zext i8 %i.ne to i32
  %i.ng = lshr i32 %i.nf, %i.mw
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mu, i64 1
  %i.ni = load i8, ptr %i.nh, align 1
  %i.nj = zext i8 %i.ni to i32
  %i.nk = sub nuw nsw i32 8, %i.mw                ; 2 uses
  %i.nl = shl nuw nsw i32 %i.nj, %i.nk
  %i.nm = or i32 %i.nl, %i.ng                     ; 2 uses
  %.not302.i = icmp eq i32 %i.mw, 0               ; 2 uses
  br i1 %.not302.i, label %oggpack_read.exit141.peel.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.nn = getelementptr inbounds nuw i8, ptr %i.mu, i64 2
  %i.no = load i8, ptr %i.nn, align 1
  %i.np = zext i8 %i.no to i32
  %i.nq = sub nuw nsw i32 16, %i.mw
  %i.nr = shl nuw nsw i32 %i.np, %i.nq
  %i.ns = or i32 %i.nr, %i.nm
  br label %oggpack_read.exit141.peel.i

oggpack_read.exit141.peel.i:                      ; preds = %bb.bn, %bb.bm
  %.0.i135.in.peel.i = phi i32 [ %i.ns, %bb.bn ], [ %i.nm, %bb.bm ]
  %i.nt = and i32 %.0.i135.in.peel.i, 65535
  %i.nu = icmp eq i32 %i.nt, 0
  %i.nv = getelementptr inbounds nuw i8, ptr %i.mu, i64 2 ; 3 uses
  store ptr %i.nv, ptr %i.e, align 8
  %i.nw = add nsw i64 %i.mv, 2                    ; 3 uses
  store i64 %i.nw, ptr %3, align 8
  store i32 %i.mw, ptr %i.i, align 8
  br i1 %i.nu, label %bb.bo, label %.loopexit.i35

bb.bo:                                            ; preds = %oggpack_read.exit141.peel.i
  %exitcond.peel.not.i = icmp eq i32 %.1.i128.i, 1
  br i1 %exitcond.peel.not.i, label %.thread.i, label %.peel.next.i38

.peel.next.i38:                                   ; preds = %bb.bo
  %i.nx = sub nuw nsw i32 16, %i.mw
  %i.ny = zext nneg i32 %i.my to i64
  br label %bb.bq

bb.bp:                                            ; preds = %oggpack_read.exit141.i
  %i.nz = add nuw nsw i32 %.1111226.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.nz, %.1.i128.i
  br i1 %exitcond.not.i, label %.thread.i, label %bb.bq, !llvm.loop !400

bb.bq:                                            ; preds = %bb.bp, %.peel.next.i38
  %i.oa = phi ptr [ %i.nv, %.peel.next.i38 ], [ %i.ox, %bb.bp ] ; 5 uses
  %i.ob = phi i64 [ %i.nw, %.peel.next.i38 ], [ %i.oy, %bb.bp ] ; 4 uses
  %.1111226.i = phi i32 [ 1, %.peel.next.i38 ], [ %i.nz, %bb.bp ]
  %i.oc = add nsw i64 %i.ob, 4
  %.not.i134.i = icmp slt i64 %i.oc, %i.ld
  br i1 %.not.i134.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.od = shl nsw i64 %i.ob, 3
  %i.oe = add nsw i64 %i.od, %i.ny
  %i.of = icmp sgt i64 %i.oe, %i.mx
  br i1 %i.of, label %._crit_edge.i138.i, label %bb.bs

._crit_edge.i138.i:                               ; preds = %bb.br, %bb.bl
  %.pre.i140.i = phi ptr [ %i.mu, %bb.bl ], [ %i.oa, %bb.br ]
  %.lcssa253.i = phi i64 [ %i.mv, %bb.bl ], [ %i.ob, %bb.br ]
  %i.og = getelementptr inbounds nuw i8, ptr %.pre.i140.i, i64 2
  store ptr %i.og, ptr %i.e, align 8
  %i.oh = add nsw i64 %.lcssa253.i, 2
  store i64 %i.oh, ptr %3, align 8
  store i32 %i.mw, ptr %i.i, align 8
  br label %.loopexit.i35

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.oi = load i8, ptr %i.oa, align 1
  %i.oj = zext i8 %i.oi to i32
  %i.ok = lshr i32 %i.oj, %i.mw
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oa, i64 1
  %i.om = load i8, ptr %i.ol, align 1
  %i.on = zext i8 %i.om to i32
  %i.oo = shl nuw nsw i32 %i.on, %i.nk
  %i.op = or i32 %i.oo, %i.ok                     ; 2 uses
  br i1 %.not302.i, label %oggpack_read.exit141.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oa, i64 2
  %i.or = load i8, ptr %i.oq, align 1
  %i.os = zext i8 %i.or to i32
end_hunk_6
begin_hunk_7_@vorbis_staticbook_pack:bb.a
  %factor.op.mul226 = mul i64 %factor.op.mul224, %i.gy
  %factor.op.mul227 = mul i64 %factor.op.mul225, %.022.us.i
  %factor.op.mul228 = mul i64 %factor.op.mul226, %i.gy
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.us.i.new
  %.02031.us.i = phi i64 [ 1, %.lr.ph.us.i.new ], [ %.reass216.reass.reass.reass.reass.reass.reass, %bb.aa ]
  %.02130.us.i = phi i64 [ 1, %.lr.ph.us.i.new ], [ %.reass.reass.reass.reass.reass.reass.reass, %bb.aa ]
  %niter = phi i64 [ 0, %.lr.ph.us.i.new ], [ %niter.next.7, %bb.aa ]
  %.reass.reass.reass.reass.reass.reass.reass = mul i64 %.02130.us.i, %factor.op.mul227 ; 3 uses
  %.reass216.reass.reass.reass.reass.reass.reass = mul i64 %.02031.us.i, %factor.op.mul228 ; 3 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.us.i.unr-lcssa, label %bb.aa, !llvm.loop !23

bb.ab:                                            ; preds = %._crit_edge.us.i
  %i.gz = icmp sgt i64 %.lcssa197, %i.gm
  %.1.v.us.i = select i1 %i.gz, i64 -1, i64 1
  %.1.us.i = add nsw i64 %.1.v.us.i, %.022.us.i
  br label %.lr.ph.us.i

._crit_edge.us.i.unr-lcssa:                       ; preds = %bb.aa
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.lr.ph.us.i
  %.02031.us.i.epil.init = phi i64 [ 1, %.lr.ph.us.i ], [ %.reass216.reass.reass.reass.reass.reass.reass, %._crit_edge.us.i.unr-lcssa ]
  %.02130.us.i.epil.init = phi i64 [ 1, %.lr.ph.us.i ], [ %.reass.reass.reass.reass.reass.reass.reass, %._crit_edge.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod206)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.epil.preheader
  %.02031.us.i.epil = phi i64 [ %.02031.us.i.epil.init, %.epil.preheader ], [ %i.hb, %bb.ac ]
  %.02130.us.i.epil = phi i64 [ %.02130.us.i.epil.init, %.epil.preheader ], [ %i.ha, %bb.ac ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ac ]
  %i.ha = mul nsw i64 %.02130.us.i.epil, %.022.us.i ; 2 uses
  %i.hb = mul nsw i64 %.02031.us.i.epil, %i.gy    ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i, label %bb.ac, !llvm.loop !479

._crit_edge.us.i:                                 ; preds = %bb.ac, %._crit_edge.us.i.unr-lcssa
  %.lcssa197 = phi i64 [ %.reass.reass.reass.reass.reass.reass.reass, %._crit_edge.us.i.unr-lcssa ], [ %i.ha, %bb.ac ] ; 2 uses
  %.lcssa = phi i64 [ %.reass216.reass.reass.reass.reass.reass.reass, %._crit_edge.us.i.unr-lcssa ], [ %i.hb, %bb.ac ]
  %.not.us.i = icmp sle i64 %.lcssa197, %i.gm
  %i.hc = icmp sgt i64 %.lcssa, %i.gm
  %or.cond.us.i = select i1 %.not.us.i, i1 %i.hc, i1 false
  br i1 %or.cond.us.i, label %_book_maptype1_quantvals.exit, label %bb.ab

.lr.ph.i:                                         ; preds = %bb.z, %.lr.ph.i
  br label %.lr.ph.i

bb.ad:                                            ; preds = %bb.y
  %i.hd = load i64, ptr %i.b, align 8
  %i.he = load i64, ptr %0, align 8
  %i.hf = mul nsw i64 %i.he, %i.hd
  br label %_book_maptype1_quantvals.exit

_book_maptype1_quantvals.exit:                    ; preds = %._crit_edge.us.i, %bb.ad
  %.0 = phi i64 [ %i.hf, %bb.ad ], [ %.022.us.i, %._crit_edge.us.i ]
  %sext = shl i64 %.0, 32
  %i.hg = ashr exact i64 %sext, 32                ; 2 uses
  %i.hh = icmp sgt i64 %i.hg, 0
  br i1 %i.hh, label %.lr.ph147, label %.loopexit

.lr.ph147:                                        ; preds = %_book_maptype1_quantvals.exit, %.lr.ph147
  %.5146 = phi i64 [ %i.hn, %.lr.ph147 ], [ 0, %_book_maptype1_quantvals.exit ] ; 2 uses
  %i.hi = load ptr, ptr %i.fy, align 8
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %.5146
  %i.hk = load i64, ptr %i.hj, align 8
  %i.hl = tail call i64 @llvm.abs.i64(i64 %i.hk, i1 true)
  %i.hm = load i32, ptr %i.ge, align 8
  tail call void @oggpack_write(ptr noundef %1, i64 noundef %i.hl, i32 noundef %i.hm)
  %i.hn = add nuw nsw i64 %.5146, 1               ; 2 uses
  %exitcond155.not = icmp eq i64 %i.hn, %i.hg
  br i1 %exitcond155.not, label %.loopexit, label %.lr.ph147, !llvm.loop !480

.loopexit:                                        ; preds = %.lr.ph147, %bb.y, %_book_maptype1_quantvals.exit, %.loopexit107
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit107, %bb.x, %.loopexit
  %.099 = phi i32 [ -1, %bb.x ], [ 0, %.loopexit ], [ -1, %.loopexit107 ]
  ret i32 %.099
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @oggpack_write(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #16 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = add nsw i64 %i.a, 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %.not = icmp slt i64 %i.b, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = add nsw i64 %i.d, 256
  %i.h = tail call ptr @realloc(ptr noundef %i.f, i64 noundef %i.g) #66 ; 2 uses
  store ptr %i.h, ptr %i.e, align 8
  %i.i = load i64, ptr %i.c, align 8
  %i.j = add nsw i64 %i.i, 256
  store i64 %i.j, ptr %i.c, align 8
  %i.k = load i64, ptr %0, align 8
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.l, ptr %i.m, align 8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.n = phi ptr [ %.pre, %._crit_edge ], [ %i.l, %bb.b ] ; 2 uses
  %i.o = sext i32 %2 to i64
  %i.p = getelementptr inbounds [8 x i8], ptr @mask, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8
  %i.r = and i64 %i.q, %1                         ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.t = load i32, ptr %i.s, align 8              ; 2 uses
  %i.u = add nsw i32 %i.t, %2                     ; 6 uses
  %i.v = zext nneg i32 %i.t to i64
  %i.w = shl i64 %i.r, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.y = load i8, ptr %i.n, align 1
  %i.z = trunc i64 %i.w to i8
  %i.aa = or i8 %i.y, %i.z
  store i8 %i.aa, ptr %i.n, align 1
  %i.ab = icmp sgt i32 %i.u, 7
  br i1 %i.ab, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ac = load i32, ptr %i.s, align 8
  %i.ad = sub nsw i32 8, %i.ac
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = lshr i64 %i.r, %i.ae
  %i.ag = trunc i64 %i.af to i8
  %i.ah = load ptr, ptr %i.x, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store i8 %i.ag, ptr %i.ai, align 1
  %i.aj = icmp samesign ugt i32 %i.u, 15
  br i1 %i.aj, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ak = load i32, ptr %i.s, align 8
  %i.al = sub nsw i32 16, %i.ak
  %i.am = zext nneg i32 %i.al to i64
  %i.an = lshr i64 %i.r, %i.am
  %i.ao = trunc i64 %i.an to i8
  %i.ap = load ptr, ptr %i.x, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  store i8 %i.ao, ptr %i.aq, align 1
  %i.ar = icmp samesign ugt i32 %i.u, 23
  br i1 %i.ar, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.as = load i32, ptr %i.s, align 8
  %i.at = sub nsw i32 24, %i.as
  %i.au = zext nneg i32 %i.at to i64
  %i.av = lshr i64 %i.r, %i.au
  %i.aw = trunc i64 %i.av to i8
  %i.ax = load ptr, ptr %i.x, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 3
  store i8 %i.aw, ptr %i.ay, align 1
  %i.az = icmp samesign ugt i32 %i.u, 31
  br i1 %i.az, label %.sink.split, label %bb.g

.sink.split:                                      ; preds = %bb.f
  %i.ba = load i32, ptr %i.s, align 8             ; 2 uses
  %.not41 = icmp eq i32 %i.ba, 0
  %i.bb = sub nsw i32 32, %i.ba
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = lshr i64 %i.r, %i.bc
  %i.be = trunc i64 %i.bd to i8
  %.sink = select i1 %.not41, i8 0, i8 %i.be
  %i.bf = load ptr, ptr %i.x, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  store i8 %.sink, ptr %i.bg, align 1
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.d, %bb.f, %bb.e, %bb.c
  %i.bh = sdiv i32 %i.u, 8
  %i.bi = sext i32 %i.bh to i64                   ; 2 uses
  %i.bj = load i64, ptr %0, align 8
  %i.bk = add nsw i64 %i.bj, %i.bi
  store i64 %i.bk, ptr %0, align 8
  %i.bl = load ptr, ptr %i.x, align 8
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %i.bi
  store ptr %i.bm, ptr %i.x, align 8
  %i.bn = and i32 %i.u, 7
  store i32 %i.bn, ptr %i.s, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #50

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local range(i32 -1, 1) i32 @vorbis_staticbook_unpack(ptr nofree noundef %0, ptr nofree noundef captures(none) initializes((0, 96)) %1) local_unnamed_addr #14 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %1, i8 0, i64 96, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i32 1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 32 uses
  %i.c = load i32, ptr %i.b, align 8              ; 11 uses
  %i.d = add nsw i32 %i.c, 24                     ; 2 uses
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = add nsw i64 %i.e, 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 13 uses
  %i.h = load i64, ptr %i.g, align 8              ; 4 uses
  %.not.i = icmp slt i64 %i.f, %i.h
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = shl nsw i64 %i.e, 3
  %i.j = sext i32 %i.d to i64
  %i.k = add nsw i64 %i.i, %i.j
  %i.l = shl nsw i64 %i.h, 3
  %i.m = icmp sgt i64 %i.k, %i.l
  br i1 %i.m, label %._crit_edge.i, label %bb.c

._crit_edge.i:                                    ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %oggpack_read.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8              ; 6 uses
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i32
  %i.r = lshr i32 %i.q, %i.c                      ; 2 uses
  %i.s = icmp sgt i32 %i.c, -16
  br i1 %i.s, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i32
  %i.w = sub nsw i32 8, %i.c
  %i.x = shl nuw nsw i32 %i.v, %i.w
  %i.y = or i32 %i.x, %i.r                        ; 2 uses
  %i.z = icmp sgt i32 %i.c, -8
  br i1 %i.z, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i32
  %i.ad = sub nsw i32 16, %i.c
  %i.ae = shl nuw nsw i32 %i.ac, %i.ad
  %i.af = or i32 %i.ae, %i.y                      ; 2 uses
  %i.ag = icmp sgt i32 %i.c, 0
  br i1 %i.ag, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = zext i8 %i.ai to i32
  %i.ak = sub nsw i32 24, %i.c
  %i.al = shl nuw nsw i32 %i.aj, %i.ak
  %i.am = or i32 %i.al, %i.af                     ; 2 uses
  %i.an = icmp samesign ult i32 %i.c, 9
  br i1 %i.an, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i32
  %i.ar = sub nsw i32 32, %i.c
  %i.as = shl nuw nsw i32 %i.aq, %i.ar
  %i.at = or i32 %i.as, %i.am
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.0.i.in = phi i32 [ %i.at, %bb.g ], [ %i.r, %bb.c ], [ %i.am, %bb.f ], [ %i.af, %bb.e ], [ %i.y, %bb.d ]
  %i.au = and i32 %.0.i.in, 16777215
  %i.av = icmp eq i32 %i.au, 5653314
  br label %oggpack_read.exit

oggpack_read.exit:                                ; preds = %._crit_edge.i, %bb.h
  %i.aw = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.o, %bb.h ]
  %.1.i = phi i1 [ false, %._crit_edge.i ], [ %i.av, %bb.h ]
  %i.ax = sdiv i32 %i.d, 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 43 uses
  %i.az = sext i32 %i.ax to i64                   ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.aw, i64 %i.az ; 5 uses
  store ptr %i.ba, ptr %i.ay, align 8
  %i.bb = add nsw i64 %i.e, %i.az                 ; 4 uses
  store i64 %i.bb, ptr %0, align 8
  %i.bc = and i32 %i.c, 7                         ; 7 uses
  store i32 %i.bc, ptr %i.b, align 8
  br i1 %.1.i, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %oggpack_read.exit
  %i.bd = add nsw i64 %i.bb, 4
  %.not.i103 = icmp slt i64 %i.bd, %i.h
  br i1 %.not.i103, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = or disjoint i32 %i.bc, 16
  %i.bf = shl nsw i64 %i.bb, 3
  %i.bg = zext nneg i32 %i.be to i64
  %i.bh = add nsw i64 %i.bf, %i.bg
  %i.bi = shl nsw i64 %i.h, 3
  %i.bj = icmp sgt i64 %i.bh, %i.bi
  br i1 %i.bj, label %oggpack_read.exit110, label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.bk = load i8, ptr %i.ba, align 1
  %i.bl = zext i8 %i.bk to i32
  %i.bm = lshr i32 %i.bl, %i.bc
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = zext i8 %i.bo to i32
  %i.bq = sub nuw nsw i32 8, %i.bc
  %i.br = shl nuw nsw i32 %i.bp, %i.bq
  %i.bs = or i32 %i.br, %i.bm                     ; 2 uses
  %.not = icmp eq i32 %i.bc, 0
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = zext i8 %i.bu to i32
  %i.bw = sub nuw nsw i32 16, %i.bc
  %i.bx = shl nuw nsw i32 %i.bv, %i.bw
  %i.by = or i32 %i.bx, %i.bs
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0.i104.in = phi i32 [ %i.by, %bb.l ], [ %i.bs, %bb.k ]
  %i.bz = and i32 %.0.i104.in, 65535
  %i.ca = zext nneg i32 %i.bz to i64
  br label %oggpack_read.exit110

oggpack_read.exit110:                             ; preds = %bb.j, %bb.m
  %.1.i105 = phi i64 [ %i.ca, %bb.m ], [ -1, %bb.j ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  store ptr %i.cb, ptr %i.ay, align 8
  %i.cc = add nsw i64 %i.bb, 2
  store i64 %i.cc, ptr %0, align 8
  store i32 %i.bc, ptr %i.b, align 8
  store i64 %.1.i105, ptr %1, align 8
  %i.cd = load i32, ptr %i.b, align 8             ; 11 uses
  %i.ce = add nsw i32 %i.cd, 24                   ; 2 uses
  %i.cf = load i64, ptr %0, align 8               ; 3 uses
  %i.cg = add nsw i64 %i.cf, 4
  %i.ch = load i64, ptr %i.g, align 8             ; 2 uses
  %.not.i111 = icmp slt i64 %i.cg, %i.ch
  br i1 %.not.i111, label %bb.o, label %bb.n

bb.n:                                             ; preds = %oggpack_read.exit110
  %i.ci = shl nsw i64 %i.cf, 3
  %i.cj = sext i32 %i.ce to i64
  %i.ck = add nsw i64 %i.ci, %i.cj
  %i.cl = shl nsw i64 %i.ch, 3
  %i.cm = icmp sgt i64 %i.ck, %i.cl
  br i1 %i.cm, label %._crit_edge.i115, label %bb.o

._crit_edge.i115:                                 ; preds = %bb.n
  %.pre.i117 = load ptr, ptr %i.ay, align 8
  br label %oggpack_read.exit118

bb.o:                                             ; preds = %bb.n, %oggpack_read.exit110
  %i.cn = load ptr, ptr %i.ay, align 8            ; 6 uses
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = zext i8 %i.co to i32
  %i.cq = lshr i32 %i.cp, %i.cd                   ; 2 uses
  %i.cr = icmp sgt i32 %i.cd, -16
  br i1 %i.cr, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  %i.ct = load i8, ptr %i.cs, align 1
  %i.cu = zext i8 %i.ct to i32
  %i.cv = sub nsw i32 8, %i.cd
  %i.cw = shl nuw nsw i32 %i.cu, %i.cv
  %i.cx = or i32 %i.cw, %i.cq                     ; 2 uses
  %i.cy = icmp sgt i32 %i.cd, -8
  br i1 %i.cy, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cn, i64 2
  %i.da = load i8, ptr %i.cz, align 1
  %i.db = zext i8 %i.da to i32
  %i.dc = sub nsw i32 16, %i.cd
  %i.dd = shl nuw nsw i32 %i.db, %i.dc
  %i.de = or i32 %i.dd, %i.cx                     ; 2 uses
  %i.df = icmp sgt i32 %i.cd, 0
  br i1 %i.df, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cn, i64 3
  %i.dh = load i8, ptr %i.dg, align 1
  %i.di = zext i8 %i.dh to i32
  %i.dj = sub nsw i32 24, %i.cd
  %i.dk = shl nuw nsw i32 %i.di, %i.dj
  %i.dl = or i32 %i.dk, %i.de                     ; 2 uses
end_hunk_7
