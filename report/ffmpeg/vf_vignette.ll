Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_vignette?download=true
inline.NumInlined: 13
inline.NumDeleted: 4
begin_hunk_0_@filter_frame:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 188 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 184 ; 4 uses
  br label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !47 ; 2 uses
  %.not182 = icmp eq i32 %i.af, 0
  br i1 %.not182, label %.critedge, label %.preheader157.lr.ph

.preheader157.lr.ph:                              ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !53
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !54
  %i.ak = getelementptr inbounds nuw i8, ptr %.0119, i64 64
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !54
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 188 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 184 ; 6 uses
  %i.ap = sext i32 %i.al to i64
  %i.aq = sext i32 %i.aj to i64
  %i.ar = sext i32 %i.ah to i64
  %i.as = load i32, ptr %i.am, align 8, !tbaa !46
  %.not183 = icmp eq i32 %i.as, 0
  br i1 %.not183, label %.critedge, label %.preheader157.preheader

.preheader157.preheader:                          ; preds = %.preheader157.lr.ph
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !55
  %i.av = load ptr, ptr %1, align 8, !tbaa !56
  %i.aw = load ptr, ptr %.0119, align 8, !tbaa !56
  br label %.preheader157

.preheader157:                                    ; preds = %.preheader157.preheader, %._crit_edge
  %i.ax = phi i32 [ %i.da, %._crit_edge ], [ %i.af, %.preheader157.preheader ]
  %i.ay = phi i32 [ %i.db, %._crit_edge ], [ 1, %.preheader157.preheader ]
  %.0116165 = phi ptr [ %i.de, %._crit_edge ], [ %i.au, %.preheader157.preheader ] ; 2 uses
  %.0117164 = phi ptr [ %i.dd, %._crit_edge ], [ %i.av, %.preheader157.preheader ] ; 2 uses
  %.0118163 = phi ptr [ %i.dc, %._crit_edge ], [ %i.aw, %.preheader157.preheader ] ; 2 uses
  %.0121162 = phi i32 [ %i.df, %._crit_edge ], [ 0, %.preheader157.preheader ]
  %.not184 = icmp eq i32 %i.ay, 0
  br i1 %.not184, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader157, %get_dither_value.exit152
  %indvars.iv = phi i64 [ %indvars.iv.next, %get_dither_value.exit152 ], [ 0, %.preheader157 ] ; 2 uses
  %.0114161 = phi ptr [ %i.cw, %get_dither_value.exit152 ], [ %.0117164, %.preheader157 ] ; 4 uses
  %.0115160 = phi ptr [ %i.cv, %get_dither_value.exit152 ], [ %.0118163, %.preheader157 ] ; 4 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.0116165, i64 %indvars.iv
  %i.ba = load float, ptr %i.az, align 4, !tbaa !57 ; 3 uses
  %i.bb = load i8, ptr %.0114161, align 1, !tbaa !58
  %i.bc = uitofp i8 %i.bb to float
  %i.bd = fmul nsz float %i.ba, %i.bc
  %i.be = fpext nsz float %i.bd to double         ; 2 uses
  %i.bf = load i32, ptr %i.an, align 4, !tbaa !59
  %.not.i145 = icmp eq i32 %i.bf, 0
  br i1 %.not.i145, label %get_dither_value.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.bg = load i32, ptr %i.ao, align 8, !tbaa !60 ; 2 uses
  %i.bh = uitofp nsz i32 %i.bg to double
  %i.bi = fmul nnan nsz double %i.bh, f0x3DF0000000000000
  %i.bj = mul i32 %i.bg, 1664525
  %i.bk = add i32 %i.bj, 1013904223
  store i32 %i.bk, ptr %i.ao, align 8, !tbaa !60
  %i.bl = fadd nsz double %i.bi, %i.be
  br label %get_dither_value.exit

get_dither_value.exit:                            ; preds = %.lr.ph, %bb.i
  %.0.i146 = phi double [ %i.bl, %bb.i ], [ %i.be, %.lr.ph ]
  %i.bm = fptosi double %.0.i146 to i32           ; 3 uses
  %.not.i142 = icmp ult i32 %i.bm, 256
  %isnotneg.i143 = icmp sgt i32 %i.bm, -1
  %i.bn = sext i1 %isnotneg.i143 to i8
  %i.bo = trunc nuw i32 %i.bm to i8
  %.0.i144 = select i1 %.not.i142, i8 %i.bo, i8 %i.bn
  store i8 %.0.i144, ptr %.0115160, align 1, !tbaa !58
  %i.bp = getelementptr inbounds nuw i8, ptr %.0114161, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !58
  %i.br = uitofp i8 %i.bq to float
  %i.bs = fmul nsz float %i.ba, %i.br
  %i.bt = fpext nsz float %i.bs to double         ; 2 uses
  %i.bu = load i32, ptr %i.an, align 4, !tbaa !59
  %.not.i147 = icmp eq i32 %i.bu, 0
  br i1 %.not.i147, label %get_dither_value.exit149, label %bb.j

bb.j:                                             ; preds = %get_dither_value.exit
  %i.bv = load i32, ptr %i.ao, align 8, !tbaa !60 ; 2 uses
  %i.bw = uitofp nsz i32 %i.bv to double
  %i.bx = fmul nnan nsz double %i.bw, f0x3DF0000000000000
  %i.by = mul i32 %i.bv, 1664525
  %i.bz = add i32 %i.by, 1013904223
  store i32 %i.bz, ptr %i.ao, align 8, !tbaa !60
  %i.ca = fadd nsz double %i.bx, %i.bt
  br label %get_dither_value.exit149

get_dither_value.exit149:                         ; preds = %get_dither_value.exit, %bb.j
  %.0.i148 = phi double [ %i.ca, %bb.j ], [ %i.bt, %get_dither_value.exit ]
  %i.cb = fptosi double %.0.i148 to i32           ; 3 uses
  %.not.i139 = icmp ult i32 %i.cb, 256
  %isnotneg.i140 = icmp sgt i32 %i.cb, -1
  %i.cc = sext i1 %isnotneg.i140 to i8
  %i.cd = trunc nuw i32 %i.cb to i8
  %.0.i141 = select i1 %.not.i139, i8 %i.cd, i8 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %.0115160, i64 1
  store i8 %.0.i141, ptr %i.ce, align 1, !tbaa !58
  %i.cf = getelementptr inbounds nuw i8, ptr %.0114161, i64 2
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !58
  %i.ch = uitofp i8 %i.cg to float
  %i.ci = fmul nsz float %i.ba, %i.ch
  %i.cj = fpext nsz float %i.ci to double         ; 2 uses
  %i.ck = load i32, ptr %i.an, align 4, !tbaa !59
  %.not.i150 = icmp eq i32 %i.ck, 0
  br i1 %.not.i150, label %get_dither_value.exit152, label %bb.k

bb.k:                                             ; preds = %get_dither_value.exit149
  %i.cl = load i32, ptr %i.ao, align 8, !tbaa !60 ; 2 uses
  %i.cm = uitofp nsz i32 %i.cl to double
  %i.cn = fmul nnan nsz double %i.cm, f0x3DF0000000000000
  %i.co = mul i32 %i.cl, 1664525
  %i.cp = add i32 %i.co, 1013904223
  store i32 %i.cp, ptr %i.ao, align 8, !tbaa !60
  %i.cq = fadd nsz double %i.cn, %i.cj
  br label %get_dither_value.exit152

get_dither_value.exit152:                         ; preds = %get_dither_value.exit149, %bb.k
  %.0.i151 = phi double [ %i.cq, %bb.k ], [ %i.cj, %get_dither_value.exit149 ]
  %i.cr = fptosi double %.0.i151 to i32           ; 3 uses
  %.not.i136 = icmp ult i32 %i.cr, 256
  %isnotneg.i137 = icmp sgt i32 %i.cr, -1
  %i.cs = sext i1 %isnotneg.i137 to i8
  %i.ct = trunc nuw i32 %i.cr to i8
  %.0.i138 = select i1 %.not.i136, i8 %i.ct, i8 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %.0115160, i64 2
  store i8 %.0.i138, ptr %i.cu, align 1, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.0115160, i64 3
  %i.cw = getelementptr inbounds nuw i8, ptr %.0114161, i64 3
  %i.cx = load i32, ptr %i.am, align 8, !tbaa !46 ; 2 uses
  %i.cy = zext i32 %i.cx to i64
  %i.cz = icmp samesign ult i64 %indvars.iv.next, %i.cy
  br i1 %i.cz, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !61

._crit_edge.loopexit:                             ; preds = %get_dither_value.exit152
  %.pre = load i32, ptr %i.ae, align 4, !tbaa !47
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader157
  %i.da = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.ax, %.preheader157 ] ; 2 uses
  %i.db = phi i32 [ %i.cx, %._crit_edge.loopexit ], [ 0, %.preheader157 ]
  %i.dc = getelementptr inbounds i8, ptr %.0118163, i64 %i.ap
  %i.dd = getelementptr inbounds i8, ptr %.0117164, i64 %i.aq
  %i.de = getelementptr inbounds [4 x i8], ptr %.0116165, i64 %i.ar
  %i.df = add nuw i32 %.0121162, 1                ; 2 uses
  %i.dg = icmp ult i32 %i.df, %i.da
  br i1 %i.dg, label %.preheader157, label %.critedge, !llvm.loop !63

bb.l:                                             ; preds = %.preheader156, %._crit_edge178.split
  %indvars.iv198 = phi i64 [ 0, %.preheader156 ], [ %indvars.iv.next199, %._crit_edge178.split ] ; 6 uses
  %i.dh = load ptr, ptr %i.a, align 8, !tbaa !33  ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv198
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !56 ; 3 uses
  %.not130 = icmp eq ptr %i.dj, null
  br i1 %.not130, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv198
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !54 ; 2 uses
  %.not131 = icmp eq i32 %i.dm, 0
  br i1 %.not131, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.0119, i64 %indvars.iv198
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !56 ; 2 uses
  %i.dp = load ptr, ptr %i.x, align 8, !tbaa !55  ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv198
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !54
  %i.ds = load i32, ptr %i.z, align 8, !tbaa !53
  %i.dt = trunc i64 %indvars.iv198 to i32
  %i.du = add i32 %i.dt, -1
  %i.dv = icmp ult i32 %i.du, 2                   ; 2 uses
  br i1 %i.dv, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dw = load ptr, ptr %i.s, align 8, !tbaa !49  ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 9
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !65
  %i.dz = zext i8 %i.dy to i32
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 10
  %i.eb = load i8, ptr %i.ea, align 2, !tbaa !66
  %i.ec = zext i8 %i.eb to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ed = phi i32 [ %i.dz, %bb.o ], [ 0, %bb.n ]  ; 2 uses
  %i.ee = phi i32 [ %i.ec, %bb.o ], [ 0, %bb.n ]  ; 2 uses
  %i.ef = load i32, ptr %i.aa, align 8, !tbaa !46
  %i.eg = sub nsw i32 0, %i.ef
  %i.eh = ashr i32 %i.eg, %i.ed                   ; 2 uses
  %i.ei = sub nsw i32 0, %i.eh                    ; 2 uses
  %i.ej = load i32, ptr %i.ab, align 4, !tbaa !47
  %i.ek = sub nsw i32 0, %i.ej
  %i.el = ashr i32 %i.ek, %i.ee                   ; 2 uses
  %i.em = sub nsw i32 0, %i.el                    ; 2 uses
  %.not186 = icmp eq i32 %i.el, 0
  br i1 %.not186, label %._crit_edge178.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.p
  %.not187 = icmp eq i32 %i.eh, 0
  %i.en = sext i32 %i.dr to i64                   ; 2 uses
  %i.eo = sext i32 %i.dm to i64                   ; 2 uses
  %i.ep = shl i32 %i.ds, %i.ee
  %i.eq = sext i32 %i.ep to i64                   ; 2 uses
  br i1 %.not187, label %._crit_edge178.split, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  br i1 %i.dv, label %.preheader.us, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %wide.trip.count = zext i32 %i.ei to i64
  br label %.preheader

.preheader.us:                                    ; preds = %.preheader.lr.ph.split, %._crit_edge170.split.us.us
  %.0109176.us = phi ptr [ %i.fn, %._crit_edge170.split.us.us ], [ %i.dp, %.preheader.lr.ph.split ] ; 2 uses
  %.0110174.us = phi ptr [ %i.fm, %._crit_edge170.split.us.us ], [ %i.dj, %.preheader.lr.ph.split ] ; 2 uses
  %.0111172.us = phi ptr [ %i.fl, %._crit_edge170.split.us.us ], [ %i.do, %.preheader.lr.ph.split ] ; 2 uses
  %.1122171.us = phi i32 [ %i.fo, %._crit_edge170.split.us.us ], [ 0, %.preheader.lr.ph.split ]
  br label %bb.q

bb.q:                                             ; preds = %get_dither_value.exit155.us.us, %.preheader.us
  %.0168.us.us = phi ptr [ %.0110174.us, %.preheader.us ], [ %.1.us.us, %get_dither_value.exit155.us.us ] ; 2 uses
  %.0107167.us.us.a = phi ptr [ %.0111172.us, %.preheader.us ], [ %.1108.us.us, %get_dither_value.exit155.us.us ] ; 2 uses
  %.1124166.us.us = phi i32 [ 0, %.preheader.us ], [ %2, %get_dither_value.exit155.us.us ] ; 2 uses
  %i.er = load i32, ptr %i.ac, align 4, !tbaa !59
  %.not.i153.us.us = icmp eq i32 %i.er, 0
  br i1 %.not.i153.us.us, label %get_dither_value.exit155.us.us, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.es = load i32, ptr %i.ad, align 8, !tbaa !60 ; 2 uses
  %i.et = uitofp nsz i32 %i.es to double
  %i.eu = fmul nnan nsz double %i.et, f0x3DF0000000000000
  %i.ev = mul i32 %i.es, 1664525
  %i.ew = add i32 %i.ev, 1013904223
  store i32 %i.ew, ptr %i.ad, align 8, !tbaa !60
  br label %get_dither_value.exit155.us.us

get_dither_value.exit155.us.us:                   ; preds = %bb.r, %bb.q
  %.0.i154.us.us = phi nsz double [ %i.eu, %bb.r ], [ 0.000000e+00, %bb.q ]
  %i.ex = shl i32 %.1124166.us.us, %i.ed
  %i.ey = zext i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.0109176.us, i64 %i.ey
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !57
  %i.fb = load i8, ptr %.0168.us.us, align 1, !tbaa !58
  %i.fc = zext i8 %i.fb to i32
  %i.fd = add nsw i32 %i.fc, -127
  %i.fe = sitofp nsz i32 %i.fd to float
  %i.ff = tail call nsz float @llvm.fmuladd.f32(float %i.fa, float %i.fe, float 1.270000e+02)
  %i.fg = fpext nsz float %i.ff to double
  %i.fh = fadd nsz double %.0.i154.us.us, %i.fg
  %i.fi = fptosi double %i.fh to i32              ; 3 uses
  %.not.i133.us.us = icmp ult i32 %i.fi, 256
  %isnotneg.i134.us.us = icmp sgt i32 %i.fi, -1
  %i.fj = sext i1 %isnotneg.i134.us.us to i8
  %i.fk = trunc nuw i32 %i.fi to i8
  %.0.i135.us.us = select i1 %.not.i133.us.us, i8 %i.fk, i8 %i.fj
  %.1.us.us = getelementptr inbounds nuw i8, ptr %.0168.us.us, i64 1
  %.1108.us.us = getelementptr inbounds nuw i8, ptr %.0107167.us.us.a, i64 1
  store i8 %.0.i135.us.us, ptr %.0107167.us.us.a, align 1, !tbaa !58
  %2 = add nuw i32 %.1124166.us.us, 1             ; 2 uses
  %exitcond196.not = icmp eq i32 %2, %i.ei
  br i1 %exitcond196.not, label %._crit_edge170.split.us.us, label %bb.q, !llvm.loop !67

._crit_edge170.split.us.us:                       ; preds = %get_dither_value.exit155.us.us
  %i.fl = getelementptr inbounds i8, ptr %.0111172.us, i64 %i.en
  %i.fm = getelementptr inbounds i8, ptr %.0110174.us, i64 %i.eo
  %i.fn = getelementptr inbounds [4 x i8], ptr %.0109176.us, i64 %i.eq
  %i.fo = add nuw i32 %.1122171.us, 1             ; 2 uses
  %exitcond197.not = icmp eq i32 %i.fo, %i.em
  br i1 %exitcond197.not, label %._crit_edge178.split, label %.preheader.us, !llvm.loop !68

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge170.split
  %.0109176 = phi ptr [ %i.gh, %._crit_edge170.split ], [ %i.dp, %.preheader.preheader ] ; 2 uses
  %.0110174 = phi ptr [ %i.gg, %._crit_edge170.split ], [ %i.dj, %.preheader.preheader ] ; 2 uses
  %.0111172 = phi ptr [ %i.gf, %._crit_edge170.split ], [ %i.do, %.preheader.preheader ] ; 2 uses
  %.1122171 = phi i32 [ %i.gi, %._crit_edge170.split ], [ 0, %.preheader.preheader ]
  br label %bb.s

bb.s:                                             ; preds = %.preheader, %get_dither_value.exit155
  %indvars.iv192 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next193, %get_dither_value.exit155 ] ; 2 uses
  %.0168 = phi ptr [ %.0110174, %.preheader ], [ %.1, %get_dither_value.exit155 ] ; 2 uses
  %.0107167 = phi ptr [ %.0111172, %.preheader ], [ %.1108, %get_dither_value.exit155 ] ; 2 uses
  %i.fp = load i32, ptr %i.ac, align 4, !tbaa !59
  %.not.i153 = icmp eq i32 %i.fp, 0
  br i1 %.not.i153, label %get_dither_value.exit155, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fq = load i32, ptr %i.ad, align 8, !tbaa !60 ; 2 uses
  %i.fr = uitofp nsz i32 %i.fq to double
  %i.fs = fmul nnan nsz double %i.fr, f0x3DF0000000000000
  %i.ft = mul i32 %i.fq, 1664525
  %i.fu = add i32 %i.ft, 1013904223
  store i32 %i.fu, ptr %i.ad, align 8, !tbaa !60
  br label %get_dither_value.exit155

get_dither_value.exit155:                         ; preds = %bb.s, %bb.t
  %.0.i154 = phi nsz double [ %i.fs, %bb.t ], [ 0.000000e+00, %bb.s ]
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.0109176, i64 %indvars.iv192
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !57
  %i.fx = load i8, ptr %.0168, align 1, !tbaa !58
  %i.fy = uitofp i8 %i.fx to float
  %i.fz = fmul nsz float %i.fw, %i.fy
  %i.ga = fpext nsz float %i.fz to double
  %i.gb = fadd nsz double %.0.i154, %i.ga
  %i.gc = fptosi double %i.gb to i32              ; 3 uses
  %.not.i = icmp ult i32 %i.gc, 256
  %isnotneg.i = icmp sgt i32 %i.gc, -1
  %i.gd = sext i1 %isnotneg.i to i8
  %i.ge = trunc nuw i32 %i.gc to i8
  %.0.i = select i1 %.not.i, i8 %i.ge, i8 %i.gd
  %.1 = getelementptr inbounds nuw i8, ptr %.0168, i64 1
  %.1108 = getelementptr inbounds nuw i8, ptr %.0107167, i64 1
  store i8 %.0.i, ptr %.0107167, align 1, !tbaa !58
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next193, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge170.split, label %bb.s, !llvm.loop !67

._crit_edge170.split:                             ; preds = %get_dither_value.exit155
  %i.gf = getelementptr inbounds i8, ptr %.0111172, i64 %i.en
  %i.gg = getelementptr inbounds i8, ptr %.0110174, i64 %i.eo
  %i.gh = getelementptr inbounds [4 x i8], ptr %.0109176, i64 %i.eq
  %i.gi = add nuw i32 %.1122171, 1                ; 2 uses
  %exitcond195.not = icmp eq i32 %i.gi, %i.em
  br i1 %exitcond195.not, label %._crit_edge178.split, label %.preheader, !llvm.loop !68

._crit_edge178.split:                             ; preds = %._crit_edge170.split, %._crit_edge170.split.us.us, %.preheader.lr.ph, %bb.p
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1 ; 2 uses
  %exitcond201.not = icmp eq i64 %indvars.iv.next199, 4
  br i1 %exitcond201.not, label %.critedge, label %bb.l, !llvm.loop !69

.critedge:                                        ; preds = %._crit_edge, %bb.m, %._crit_edge178.split, %bb.l, %.preheader157.lr.ph, %bb.h
  br i1 %.not, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.critedge
  call void @av_frame_free(ptr noundef nonnull %i.a) #6
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.critedge
  %i.gj = call i32 @ff_filter_frame(ptr noundef %i.h, ptr noundef %.0119) #6
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.c
  %.0113 = phi i32 [ %i.gj, %bb.v ], [ -12, %bb.c ]
  ret i32 %.0113
}

; Function Attrs: nounwind uwtable
define internal range(i32 -12, 1) i32 @config_props(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9    ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.04.0.copyload = load i32, ptr %i.e, align 8, !tbaa !54 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !54 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !70
  %i.h = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.g) #6
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !49
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.m = load <2 x i32>, ptr %i.j, align 8, !tbaa !54
  %i.n = sitofp <2 x i32> %i.m to <2 x double>    ; 3 uses
  store <2 x double> %i.n, ptr %i.k, align 8, !tbaa !71
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.p to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %i.p, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  %i.q = sitofp nsz i32 %.sroa.0.0.extract.trunc.i to double
  %i.r = sitofp nsz i32 %.sroa.2.0.extract.trunc.i to double
  %i.s = fdiv nsz double %i.q, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store double %i.s, ptr %i.t, align 8, !tbaa !71
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !72
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.y = load i32, ptr %i.x, align 4, !tbaa !74
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = load i64, ptr %i.u, align 8             ; 2 uses
  %.sroa.0.0.extract.trunc.i55 = trunc i64 %i.aa to i32
  %.sroa.2.0.extract.shift.i56 = lshr i64 %i.aa, 32
  %.sroa.2.0.extract.trunc.i57 = trunc nuw i64 %.sroa.2.0.extract.shift.i56 to i32
  %i.ab = sitofp nsz i32 %.sroa.0.0.extract.trunc.i55 to double
  %i.ac = sitofp nsz i32 %.sroa.2.0.extract.trunc.i57 to double
  %i.ad = fdiv nsz double %i.ab, %i.ac
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %i.ae = phi nsz double [ %i.ad, %bb.c ], [ +qnan, %bb.b ], [ +qnan, %bb.a ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  store double %i.ae, ptr %i.af, align 8, !tbaa !71
  %i.ag = icmp ne i32 %.sroa.04.0.copyload, 0
  %i.ah = icmp ne i32 %.sroa.8.0.copyload, 0
  %or.cond = select i1 %i.ag, i1 %i.ah, i1 false  ; 2 uses
  %spec.select = select i1 %or.cond, i32 %.sroa.8.0.copyload, i32 1 ; 3 uses
  %spec.select54 = select i1 %or.cond, i32 %.sroa.04.0.copyload, i32 1 ; 3 uses
  %i.ai = icmp sgt i32 %spec.select54, %spec.select
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 192 ; 2 uses
  br i1 %i.ai, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.8.0.insert.ext = zext i32 %spec.select to i64
  %.sroa.8.0.insert.shift = shl nuw i64 %.sroa.8.0.insert.ext, 32
  %.sroa.04.0.insert.ext = zext i32 %spec.select54 to i64
  %.sroa.04.0.insert.insert = or disjoint i64 %.sroa.8.0.insert.shift, %.sroa.04.0.insert.ext
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = tail call i64 @av_div_q(i64 %.sroa.04.0.insert.insert, i64 %i.ak) #7 ; 2 uses
  %.sroa.0.0.extract.trunc.i58 = trunc i64 %i.al to i32
  %.sroa.2.0.extract.shift.i59 = lshr i64 %i.al, 32
  %.sroa.2.0.extract.trunc.i60 = trunc nuw i64 %.sroa.2.0.extract.shift.i59 to i32
  %i.am = sitofp nsz i32 %.sroa.0.0.extract.trunc.i58 to double
  %i.an = sitofp nsz i32 %.sroa.2.0.extract.trunc.i60 to double
  %i.ao = fdiv nsz double %i.am, %i.an
  %i.ap = fptrunc nsz double %i.ao to float
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.aq = load i64, ptr %i.aj, align 8
  %.sroa.8.0.insert.ext12 = zext i32 %spec.select to i64
  %.sroa.8.0.insert.shift13 = shl nuw i64 %.sroa.8.0.insert.ext12, 32
  %.sroa.04.0.insert.ext8 = zext i32 %spec.select54 to i64
  %.sroa.04.0.insert.insert10 = or disjoint i64 %.sroa.8.0.insert.shift13, %.sroa.04.0.insert.ext8
  %i.ar = tail call i64 @av_div_q(i64 %i.aq, i64 %.sroa.04.0.insert.insert10) #7 ; 2 uses
  %.sroa.0.0.extract.trunc.i61 = trunc i64 %i.ar to i32
  %.sroa.2.0.extract.shift.i62 = lshr i64 %i.ar, 32
  %.sroa.2.0.extract.trunc.i63 = trunc nuw i64 %.sroa.2.0.extract.shift.i62 to i32
  %i.as = sitofp nsz i32 %.sroa.0.0.extract.trunc.i61 to double
  %i.at = sitofp nsz i32 %.sroa.2.0.extract.trunc.i63 to double
  %i.au = fdiv nsz double %i.as, %i.at
  %i.av = fptrunc nsz double %i.au to float
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink64 = phi float [ %i.ap, %bb.e ], [ 1.000000e+00, %bb.f ] ; 2 uses
  %.sink = phi float [ 1.000000e+00, %bb.e ], [ %i.av, %bb.f ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  store float %.sink64, ptr %i.aw, align 8, !tbaa !75
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 180
  store float %.sink, ptr %i.ax, align 4, !tbaa !76
  %i.ay = extractelement <2 x double> %i.n, i64 0
  %i.az = fmul nnan nsz double %i.ay, 5.000000e-01
  %i.ba = extractelement <2 x double> %i.n, i64 1
  %i.bb = fmul nnan nsz double %i.ba, 5.000000e-01
  %i.bc = tail call nsz double @hypot(double noundef %i.az, double noundef %i.bb) #7 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  store double %i.bc, ptr %i.bd, align 8, !tbaa !77
  %i.be = fpext nsz float %.sink64 to double
  %i.bf = fpext nsz float %.sink to double
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.b, i32 noundef 48, ptr noundef nonnull @.str.3, double noundef %i.be, double noundef %i.bf, double noundef %i.bc) #6
end_hunk_0
