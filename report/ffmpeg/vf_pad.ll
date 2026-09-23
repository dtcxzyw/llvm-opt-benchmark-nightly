Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_pad?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@filter_frame:bb.a
  %.not124 = icmp eq i32 %i.ns, 0
  br i1 %.not124, label %.critedge, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.nt = load i8, ptr %i.bf, align 4, !tbaa !51
  %i.nu = zext nneg i8 %i.nt to i32
  %i.nv = load i8, ptr %i.bg, align 4, !tbaa !51
  %i.nw = zext nneg i8 %i.nv to i32
  %i.nx = load i32, ptr %i.bn, align 8, !tbaa !41 ; 4 uses
  %i.ny = ashr i32 %i.nx, %i.nu
  %i.nz = load i32, ptr %i.bi, align 8, !tbaa !50
  %i.oa = mul nsw i32 %i.ny, %i.nz
  %i.ob = load i32, ptr %i.bm, align 4, !tbaa !52 ; 4 uses
  %i.oc = ashr i32 %i.ob, %i.nw
  %i.od = mul nsw i32 %i.oc, %i.ns
  %i.oe = add nsw i32 %i.od, %i.oa
  %i.of = sext i32 %i.oe to i64
  %i.og = sub nsw i64 0, %i.of
  %i.oh = getelementptr inbounds i8, ptr %i.nr, i64 %i.og
  store ptr %i.oh, ptr %1, align 8, !tbaa !49
  %i.oi = load ptr, ptr %i.bc, align 8, !tbaa !49 ; 2 uses
  %.not123.1 = icmp eq ptr %i.oi, null
  br i1 %.not123.1, label %.critedge, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.oj = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !50 ; 2 uses
  %.not124.1 = icmp eq i32 %i.ok, 0
  br i1 %.not124.1, label %.critedge, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ol = getelementptr inbounds nuw i8, ptr %i.f, i64 121
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !51
  %i.on = zext nneg i8 %i.om to i32
  %i.oo = getelementptr inbounds nuw i8, ptr %i.f, i64 125
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !51
  %i.oq = zext nneg i8 %i.op to i32
  %i.or = ashr i32 %i.nx, %i.on
  %i.os = getelementptr inbounds nuw i8, ptr %i.f, i64 108
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !50
  %i.ou = mul nsw i32 %i.or, %i.ot
  %i.ov = ashr i32 %i.ob, %i.oq
  %i.ow = mul nsw i32 %i.ov, %i.ok
  %i.ox = add nsw i32 %i.ow, %i.ou
  %i.oy = sext i32 %i.ox to i64
  %i.oz = sub nsw i64 0, %i.oy
  %i.pa = getelementptr inbounds i8, ptr %i.oi, i64 %i.oz
  store ptr %i.pa, ptr %i.bc, align 8, !tbaa !49
  %i.pb = load ptr, ptr %i.bd, align 8, !tbaa !49 ; 2 uses
  %.not123.2 = icmp eq ptr %i.pb, null
  br i1 %.not123.2, label %.critedge, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.pc = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.pd = load i32, ptr %i.pc, align 8, !tbaa !50 ; 2 uses
  %.not124.2 = icmp eq i32 %i.pd, 0
  br i1 %.not124.2, label %.critedge, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.pe = getelementptr inbounds nuw i8, ptr %i.f, i64 122
  %i.pf = load i8, ptr %i.pe, align 2, !tbaa !51
  %i.pg = zext nneg i8 %i.pf to i32
  %i.ph = getelementptr inbounds nuw i8, ptr %i.f, i64 126
  %i.pi = load i8, ptr %i.ph, align 2, !tbaa !51
  %i.pj = zext nneg i8 %i.pi to i32
  %i.pk = ashr i32 %i.nx, %i.pg
  %i.pl = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.pm = load i32, ptr %i.pl, align 8, !tbaa !50
  %i.pn = mul nsw i32 %i.pk, %i.pm
  %i.po = ashr i32 %i.ob, %i.pj
  %i.pp = mul nsw i32 %i.po, %i.pd
  %i.pq = add nsw i32 %i.pp, %i.pn
  %i.pr = sext i32 %i.pq to i64
  %i.ps = sub nsw i64 0, %i.pr
  %i.pt = getelementptr inbounds i8, ptr %i.pb, i64 %i.ps
  store ptr %i.pt, ptr %i.bd, align 8, !tbaa !49
  %i.pu = load ptr, ptr %i.be, align 8, !tbaa !49 ; 2 uses
  %.not123.3 = icmp eq ptr %i.pu, null
  br i1 %.not123.3, label %.critedge, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.pv = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !50 ; 2 uses
  %.not124.3 = icmp eq i32 %i.pw, 0
  br i1 %.not124.3, label %.critedge, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.px = getelementptr inbounds nuw i8, ptr %i.f, i64 123
  %i.py = load i8, ptr %i.px, align 1, !tbaa !51
  %i.pz = zext nneg i8 %i.py to i32
  %i.qa = getelementptr inbounds nuw i8, ptr %i.f, i64 127
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !51
  %i.qc = zext nneg i8 %i.qb to i32
  %i.qd = ashr i32 %i.nx, %i.pz
  %i.qe = getelementptr inbounds nuw i8, ptr %i.f, i64 116
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !50
  %i.qg = mul nsw i32 %i.qd, %i.qf
  %i.qh = ashr i32 %i.ob, %i.qc
  %i.qi = mul nsw i32 %i.qh, %i.pw
  %i.qj = add nsw i32 %i.qi, %i.qg
  %i.qk = sext i32 %i.qj to i64
  %i.ql = sub nsw i64 0, %i.qk
  %i.qm = getelementptr inbounds i8, ptr %i.pu, i64 %i.ql
  store ptr %i.qm, ptr %i.be, align 8, !tbaa !49
  br label %.critedge

.critedge:                                        ; preds = %bb.au, %split, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.at
  %.not122130 = phi i1 [ false, %bb.at ], [ true, %bb.bb ], [ true, %bb.ba ], [ true, %bb.az ], [ true, %bb.ay ], [ true, %bb.ax ], [ true, %bb.aw ], [ true, %bb.av ], [ true, %split ], [ true, %bb.au ]
  %.0105 = phi ptr [ %i.np, %bb.at ], [ %1, %bb.bb ], [ %1, %bb.ba ], [ %1, %bb.az ], [ %1, %bb.ay ], [ %1, %bb.ax ], [ %1, %bb.aw ], [ %1, %bb.av ], [ %1, %split ], [ %1, %bb.au ] ; 11 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.f, i64 20 ; 5 uses
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !52 ; 2 uses
  %.not126 = icmp eq i32 %i.qo, 0
  br i1 %.not126, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.critedge
  %i.qp = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.qq = getelementptr inbounds nuw i8, ptr %i.f, i64 224
  %i.qr = getelementptr inbounds nuw i8, ptr %.0105, i64 64
  %i.qs = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.qt = load i32, ptr %i.qs, align 8, !tbaa !37
  tail call void @ff_fill_rectangle(ptr noundef nonnull %i.qp, ptr noundef nonnull %i.qq, ptr noundef nonnull %.0105, ptr noundef nonnull %i.qr, i32 noundef 0, i32 noundef 0, i32 noundef %i.qt, i32 noundef %i.qo) #7
  %.pre154 = load i32, ptr %i.qn, align 4, !tbaa !52
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.critedge
  %i.qu = phi i32 [ %.pre154, %bb.bc ], [ 0, %.critedge ] ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !39 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !40
  %i.qz = add nsw i32 %i.qy, %i.qu                ; 3 uses
  %i.ra = icmp sgt i32 %i.qw, %i.qz
  br i1 %i.ra, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.rb = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.rc = getelementptr inbounds nuw i8, ptr %i.f, i64 224
  %i.rd = getelementptr inbounds nuw i8, ptr %.0105, i64 64
  %i.re = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.rf = load i32, ptr %i.re, align 8, !tbaa !37
  %i.rg = sub i32 %i.qw, %i.qz
  tail call void @ff_fill_rectangle(ptr noundef nonnull %i.rb, ptr noundef nonnull %i.rc, ptr noundef nonnull %.0105, ptr noundef nonnull %i.rd, i32 noundef 0, i32 noundef %i.qz, i32 noundef %i.rf, i32 noundef %i.rg) #7
  %.pre155 = load i32, ptr %i.qn, align 4, !tbaa !52
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.rh = phi i32 [ %.pre155, %bb.be ], [ %i.qu, %bb.bd ]
  %i.ri = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 3 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.f, i64 224 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %.0105, i64 64 ; 3 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.rm = load i32, ptr %i.rl, align 8, !tbaa !41
  %i.rn = getelementptr inbounds nuw i8, ptr %1, i64 108 ; 3 uses
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !48
  tail call void @ff_fill_rectangle(ptr noundef nonnull %i.ri, ptr noundef nonnull %i.rj, ptr noundef nonnull %.0105, ptr noundef nonnull %i.rk, i32 noundef 0, i32 noundef %i.rh, i32 noundef %i.rm, i32 noundef %i.ro) #7
  br i1 %.not122130, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.rp = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.rq = load i32, ptr %i.rl, align 8, !tbaa !41
  %i.rr = load i32, ptr %i.qn, align 4, !tbaa !52
  %i.rs = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.rt = load i32, ptr %i.rs, align 8, !tbaa !47
  %i.ru = load i32, ptr %i.rn, align 4, !tbaa !48
  tail call void @ff_copy_rectangle2(ptr noundef nonnull %i.ri, ptr noundef nonnull %.0105, ptr noundef nonnull %i.rk, ptr noundef nonnull %1, ptr noundef nonnull %i.rp, i32 noundef %i.rq, i32 noundef %i.rr, i32 noundef 0, i32 noundef 0, i32 noundef %i.rt, i32 noundef %i.ru) #7
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.rv = load i32, ptr %i.rl, align 8, !tbaa !41
  %i.rw = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.rx = load i32, ptr %i.rw, align 8, !tbaa !38
  %i.ry = add nsw i32 %i.rx, %i.rv                ; 2 uses
  %i.rz = load i32, ptr %i.qn, align 4, !tbaa !52
  %i.sa = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.sb = load i32, ptr %i.sa, align 8, !tbaa !37
  %i.sc = sub i32 %i.sb, %i.ry
  %i.sd = load i32, ptr %i.rn, align 4, !tbaa !48
  tail call void @ff_fill_rectangle(ptr noundef nonnull %i.ri, ptr noundef nonnull %i.rj, ptr noundef nonnull %.0105, ptr noundef nonnull %i.rk, i32 noundef %i.ry, i32 noundef %i.rz, i32 noundef %i.sc, i32 noundef %i.sd) #7
  %i.se = getelementptr inbounds nuw i8, ptr %.0105, i64 104
  %i.sf = load <2 x i32>, ptr %i.sa, align 8, !tbaa !50
  store <2 x i32> %i.sf, ptr %i.se, align 8, !tbaa !50
  %.not127 = icmp eq ptr %1, %.0105
  br i1 %.not127, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @av_frame_free(ptr noundef nonnull %i.b) #7
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.sg = call i32 @ff_filter_frame(ptr noundef %i.i, ptr noundef nonnull %.0105) #7
  br label %bb.bk

bb.bk:                                            ; preds = %bb.g, %bb.bj, %bb.as
  %.1 = phi i32 [ %i.sg, %bb.bj ], [ -12, %bb.as ], [ %i.ar, %bb.g ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @config_input(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [15 x double], align 16           ; 22 uses
  %i.b = alloca double, align 8                   ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20   ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28   ; 21 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.05.0.copyload = load i64, ptr %i.g, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 8 uses
  %i.i = tail call i32 @ff_draw_init_from_link(ptr noundef nonnull %i.h, ptr noundef %0, i32 noundef 0) #7 ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.d, i32 noundef 16, ptr noundef nonnull @.str.4) #7
  br label %bb.ae

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 224
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 2 uses
  tail call void @ff_draw_color(ptr noundef nonnull %i.h, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) #7
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %1 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 7 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.o = load <2 x i32>, ptr %i.m, align 8, !tbaa !50
  %i.p = sitofp <2 x i32> %i.o to <2 x double>    ; 3 uses
  %3 = extractelement <2 x double> %i.p, i64 0    ; 2 uses
  store double %3, ptr %i.a, align 16, !tbaa !75
  %4 = extractelement <2 x double> %i.p, i64 1    ; 2 uses
  store double %4, ptr %2, align 8, !tbaa !75
  store <2 x double> %i.p, ptr %1, align 8, !tbaa !75
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 5 uses
  store <2 x double> splat (double +qnan), ptr %i.r, align 16, !tbaa !75
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 4 uses
  store <2 x double> splat (double +qnan), ptr %i.t, align 16, !tbaa !75
  %i.u = fdiv nsz double %3, %4                   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store double %i.u, ptr %i.v, align 16, !tbaa !75
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !55   ; 2 uses
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = sitofp nsz i32 %i.x to double
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !54
  %i.ab = sitofp nsz i32 %i.aa to double
  %i.ac = fdiv nsz double %i.y, %i.ab
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.ad = phi nsz double [ %i.ac, %bb.d ], [ 1.000000e+00, %bb.c ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store double %i.ad, ptr %i.ae, align 8, !tbaa !75
  %i.af = fmul nsz double %i.u, %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store double %i.af, ptr %i.ag, align 16, !tbaa !75
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !76
  %i.aj = zext nneg i8 %i.ai to i32
  %i.ak = shl nuw i32 1, %i.aj
  %i.al = sitofp nsz i32 %i.ak to double
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store double %i.al, ptr %i.am, align 8, !tbaa !75
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 129
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !77
  %i.ap = zext nneg i8 %i.ao to i32
  %i.aq = shl nuw i32 1, %i.ap
  %i.ar = sitofp nsz i32 %i.aq to double
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store double %i.ar, ptr %i.as, align 16, !tbaa !75
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !78
  %i.av = call i32 @av_expr_parse_and_eval(ptr noundef nonnull %i.b, ptr noundef %i.au, ptr noundef nonnull @var_names, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.d) #7 ; 0 uses
  %i.aw = load double, ptr %i.b, align 8, !tbaa !75 ; 3 uses
  store double %i.aw, ptr %i.q, align 8, !tbaa !75
  store double %i.aw, ptr %i.r, align 16, !tbaa !75
  %i.ax = fptosi double %i.aw to i32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 10 uses
  store i32 %i.ax, ptr %i.ay, align 8, !tbaa !37
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !79 ; 2 uses
  %i.bb = call i32 @av_expr_parse_and_eval(ptr noundef nonnull %i.b, ptr noundef %i.ba, ptr noundef nonnull @var_names, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.d) #7 ; 2 uses
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %bb.ad, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = load double, ptr %i.b, align 8, !tbaa !75 ; 3 uses
  store double %i.bd, ptr %i.s, align 8, !tbaa !75
  store double %i.bd, ptr %i.t, align 16, !tbaa !75
  %i.be = fptosi double %i.bd to i32              ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 10 uses
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !39
  %.not151 = icmp eq i32 %i.be, 0
  br i1 %.not151, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bg = load i32, ptr %i.n, align 4, !tbaa !57  ; 2 uses
  store i32 %i.bg, ptr %i.bf, align 4, !tbaa !39
  %i.bh = sitofp nsz i32 %i.bg to double          ; 2 uses
  store double %i.bh, ptr %i.s, align 8, !tbaa !75
  store double %i.bh, ptr %i.t, align 16, !tbaa !75
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bi = load ptr, ptr %i.at, align 8, !tbaa !78 ; 2 uses
  %i.bj = call i32 @av_expr_parse_and_eval(ptr noundef nonnull %i.b, ptr noundef %i.bi, ptr noundef nonnull @var_names, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.d) #7 ; 2 uses
  %i.bk = icmp slt i32 %i.bj, 0
  br i1 %i.bk, label %bb.ad, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bl = load double, ptr %i.b, align 8, !tbaa !75 ; 3 uses
  store double %i.bl, ptr %i.q, align 8, !tbaa !75
  store double %i.bl, ptr %i.r, align 16, !tbaa !75
  %i.bm = fptosi double %i.bl to i32              ; 3 uses
  store i32 %i.bm, ptr %i.ay, align 8, !tbaa !37
  %.not152 = icmp eq i32 %i.bm, 0
  br i1 %.not152, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bn = load i32, ptr %i.m, align 8, !tbaa !56  ; 3 uses
  store i32 %i.bn, ptr %i.ay, align 8, !tbaa !37
  %i.bo = sitofp nsz i32 %i.bn to double          ; 2 uses
  store double %i.bo, ptr %i.q, align 8, !tbaa !75
  store double %i.bo, ptr %i.r, align 16, !tbaa !75
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bp = phi i32 [ %i.bn, %bb.j ], [ %i.bm, %bb.i ]
  %i.bq = and i64 %.sroa.05.0.copyload, 4294967295
  %i.br = icmp ne i64 %i.bq, 0
  %i.bs = icmp ugt i64 %.sroa.05.0.copyload, 4294967295
  %or.cond = and i1 %i.br, %i.bs
  br i1 %or.cond, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bt = load i64, ptr %i.w, align 8
  %i.bu = call i64 @av_div_q(i64 %.sroa.05.0.copyload, i64 %i.bt) #8 ; 2 uses
  %i.bv = load i32, ptr %i.bf, align 4, !tbaa !39
  %i.bw = sext i32 %i.bv to i64                   ; 2 uses
  %i.bx = sext i32 %i.bp to i64
  %i.by = ashr i64 %i.bu, 32                      ; 2 uses
  %sext = shl i64 %i.bu, 32
  %i.bz = ashr exact i64 %sext, 32                ; 2 uses
  %i.ca = call i64 @av_rescale(i64 noundef %i.bx, i64 noundef %i.by, i64 noundef %i.bz) #8 ; 3 uses
  %i.cb = icmp sgt i64 %i.ca, %i.bw
  br i1 %i.cb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cc = sitofp nsz i64 %i.ca to double          ; 2 uses
  store double %i.cc, ptr %i.s, align 8, !tbaa !75
  store double %i.cc, ptr %i.t, align 16, !tbaa !75
  %i.cd = trunc i64 %i.ca to i32
  store i32 %i.cd, ptr %i.bf, align 4, !tbaa !39
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ce = call i64 @av_rescale(i64 noundef %i.bw, i64 noundef %i.bz, i64 noundef %i.by) #8 ; 2 uses
  %i.cf = sitofp nsz i64 %i.ce to double          ; 2 uses
  store double %i.cf, ptr %i.q, align 8, !tbaa !75
  store double %i.cf, ptr %i.r, align 16, !tbaa !75
  %i.cg = trunc i64 %i.ce to i32
  store i32 %i.cg, ptr %i.ay, align 8, !tbaa !37
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.k
  %i.ch = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !80
  %i.cj = call i32 @av_expr_parse_and_eval(ptr noundef nonnull %i.b, ptr noundef %i.ci, ptr noundef nonnull @var_names, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.d) #7 ; 0 uses
  %i.ck = load double, ptr %i.b, align 8, !tbaa !75 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 3 uses
  store double %i.ck, ptr %i.cl, align 16, !tbaa !75
  %i.cm = fptosi double %i.ck to i32
  %i.cn = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 7 uses
  store i32 %i.cm, ptr %i.cn, align 8, !tbaa !41
  %i.co = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !81 ; 2 uses
  %i.cq = call i32 @av_expr_parse_and_eval(ptr noundef nonnull %i.b, ptr noundef %i.cp, ptr noundef nonnull @var_names, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.d) #7 ; 2 uses
  %i.cr = icmp slt i32 %i.cq, 0
  br i1 %i.cr, label %bb.ad, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cs = load double, ptr %i.b, align 8, !tbaa !75 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  store double %i.cs, ptr %i.ct, align 8, !tbaa !75
  %i.cu = fptosi double %i.cs to i32
  %i.cv = getelementptr inbounds nuw i8, ptr %i.f, i64 20 ; 7 uses
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !52
  %i.cw = load ptr, ptr %i.ch, align 8, !tbaa !80 ; 2 uses
  %i.cx = call i32 @av_expr_parse_and_eval(ptr noundef nonnull %i.b, ptr noundef %i.cw, ptr noundef nonnull @var_names, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.d) #7 ; 2 uses
  %i.cy = icmp slt i32 %i.cx, 0
  br i1 %i.cy, label %bb.ad, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cz = load double, ptr %i.b, align 8, !tbaa !75 ; 2 uses
  store double %i.cz, ptr %i.cl, align 16, !tbaa !75
  %i.da = fptosi double %i.cz to i32              ; 3 uses
  store i32 %i.da, ptr %i.cn, align 8, !tbaa !41
  %i.db = icmp slt i32 %i.da, 0
  %.pre = load i32, ptr %i.ay, align 8, !tbaa !37 ; 3 uses
  %.pre153 = load i32, ptr %i.m, align 8, !tbaa !56 ; 2 uses
  %i.dc = add nsw i32 %.pre153, %i.da
  %i.dd = icmp sgt i32 %i.dc, %.pre
  %or.cond173 = select i1 %i.db, i1 true, i1 %i.dd
  br i1 %or.cond173, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.de = sub nsw i32 %.pre, %.pre153
  %i.df = sdiv i32 %i.de, 2                       ; 2 uses
  %i.dg = sitofp nsz i32 %i.df to double
  store double %i.dg, ptr %i.cl, align 16, !tbaa !75
  store i32 %i.df, ptr %i.cn, align 8, !tbaa !41
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.dh = load i32, ptr %i.cv, align 4, !tbaa !52 ; 2 uses
  %i.di = icmp slt i32 %i.dh, 0
  %.pre154 = load i32, ptr %i.bf, align 4, !tbaa !39 ; 2 uses
  %.pre155 = load i32, ptr %i.n, align 4, !tbaa !57 ; 2 uses
  %i.dj = add nsw i32 %.pre155, %i.dh
  %i.dk = icmp sgt i32 %i.dj, %.pre154
  %or.cond175 = select i1 %i.di, i1 true, i1 %i.dk
  br i1 %or.cond175, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dl = sub nsw i32 %.pre154, %.pre155
  %i.dm = sdiv i32 %i.dl, 2                       ; 2 uses
  %i.dn = sitofp nsz i32 %i.dm to double
  store double %i.dn, ptr %i.ct, align 8, !tbaa !75
  store i32 %i.dm, ptr %i.cv, align 4, !tbaa !52
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.do = call i32 @ff_draw_round_to_sub(ptr noundef nonnull %i.h, i32 noundef 0, i32 noundef -1, i32 noundef %.pre) #7
  store i32 %i.do, ptr %i.ay, align 8, !tbaa !37
end_hunk_0
