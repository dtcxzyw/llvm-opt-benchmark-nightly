inline.NumInlined: 259
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@date_format:bb.a

bb.q:                                             ; preds = %bb.p
  %i.cc = srem i64 %i.ca, 10
  %switch.tableidx = add nsw i64 %i.cc, -1        ; 2 uses
  %i.cd = icmp ult i64 %switch.tableidx, 3
  br i1 %i.cd, label %switch.lookup, label %english_suffix.exit

switch.lookup:                                    ; preds = %bb.q
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.date_format, i64 %switch.tableidx
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %english_suffix.exit

english_suffix.exit:                              ; preds = %bb.q, %switch.lookup, %bb.p
  %.0.i181 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.288, %bb.p ], [ @.str.288, %bb.q ]
  %i.ce = call i32 (ptr, i64, ptr, ...) @ap_php_slprintf(ptr noundef nonnull %i.a, i64 noundef 97, ptr noundef nonnull @.str.55, ptr noundef nonnull %.0.i181) #21
  br label %bb.cg

bb.r:                                             ; preds = %bb.i
  %i.cf = load i64, ptr %2, align 8, !tbaa !136
  %i.cg = load i64, ptr %i.aq, align 8, !tbaa !137
  %i.ch = load i64, ptr %i.ar, align 8, !tbaa !135
  %i.ci = call i64 @timelib_day_of_week(i64 noundef %i.cf, i64 noundef %i.cg, i64 noundef %i.ch) #21
  %i.cj = trunc i64 %i.ci to i32
  %i.ck = call i32 (ptr, i64, ptr, ...) @ap_php_slprintf(ptr noundef nonnull %i.a, i64 noundef 97, ptr noundef nonnull @.str.260, i32 noundef %i.cj) #21
  br label %bb.cg

bb.s:                                             ; preds = %bb.i
  %i.cl = load i64, ptr %2, align 8, !tbaa !136
  %i.cm = load i64, ptr %i.aq, align 8, !tbaa !137
  %i.cn = load i64, ptr %i.ar, align 8, !tbaa !135
  %i.co = call i64 @timelib_iso_day_of_week(i64 noundef %i.cl, i64 noundef %i.cm, i64 noundef %i.cn) #21
  %i.cp = trunc i64 %i.co to i32
  %i.cq = call i32 (ptr, i64, ptr, ...) @ap_php_slprintf(ptr noundef nonnull %i.a, i64 noundef 97, ptr noundef nonnull @.str.260, i32 noundef %i.cp) #21
  br label %bb.cg

bb.t:                                             ; preds = %bb.i
  %i.cr = load i64, ptr %2, align 8, !tbaa !136
  %i.cs = load i64, ptr %i.aq, align 8, !tbaa !137
  %i.ct = load i64, ptr %i.ar, align 8, !tbaa !135
  %i.cu = call i64 @timelib_day_of_year(i64 noundef %i.cr, i64 noundef %i.cs, i64 noundef %i.ct) #21
  %i.cv = trunc i64 %i.cu to i32
  %i.cw = call i32 (ptr, i64, ptr, ...) @ap_php_slprintf(ptr noundef nonnull %i.a, i64 noundef 97, ptr noundef nonnull @.str.260, i32 noundef %i.cv) #21
  br label %bb.cg

bb.u:                                             ; preds = %bb.i
  %.not177 = icmp eq i32 %.0158201, 0
  br i1 %.not177, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cx = load i64, ptr %2, align 8, !tbaa !136
  %i.cy = load i64, ptr %i.aq, align 8, !tbaa !137
  %i.cz = load i64, ptr %i.ar, align 8, !tbaa !135
  call void @timelib_isoweek_from_date(i64 noundef %i.cx, i64 noundef %i.cy, i64 noundef %i.cz, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #21
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.da = load i64, ptr %i.b, align 8, !tbaa !139
  %i.db = trunc i64 %i.da to i32
  %i.dc = call i32 (ptr, i64, ptr, ...) @ap_php_slprintf(ptr noundef nonnull %i.a, i64 noundef 97, ptr noundef nonnull @.str.259, i32 noundef %i.db) #21
  br label %bb.cg

bb.x:                                             ; preds = %bb.i
  %.not176 = icmp eq i32 %.0158201, 0
  br i1 %.not176, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dd = load i64, ptr %2, align 8, !tbaa !136
  %i.de = load i64, ptr %i.aq, align 8, !tbaa !137
  %i.df = load i64, ptr %i.ar, align 8, !tbaa !135
  call void @timelib_isoweek_from_date(i64 noundef %i.dd, i64 noundef %i.de, i64 noundef %i.df, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #21
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dg = load i64, ptr %i.c, align 8, !tbaa !139
  %i.dh = call i32 (ptr, i64, ptr, ...) @ap_php_slprintf(ptr noundef nonnull %i.a, i64 noundef 97, ptr noundef nonnull @.str.261, i64 noundef %i.dg) #21
  br label %bb.cg

bb.aa:                                            ; preds = %bb.i
  %i.di = load i64, ptr %i.aq, align 8, !tbaa !137
  %i.dj = getelementptr [8 x i8], ptr @mon_full_names, i64 %i.di
  %i.dk = getelementptr i8, ptr %i.dj, i64 -8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !138
  %i.dm = call i32 (ptr, i64, ptr, ...) @ap_php_slprintf(ptr noundef nonnull %i.a, i64 noundef 97, ptr noundef nonnull @.str.55, ptr noundef %i.dl) #21
  br label %bb.cg

bb.ab:                                            ; preds = %bb.i
  %i.dn = load i64, ptr %i.aq, align 8, !tbaa !137
  %i.do = trunc i64 %i.dn to i32
  %i.dp = call i32 (ptr, i64, ptr, ...) @ap_php_slprintf(ptr noundef nonnull %i.a, i64 noundef 97, ptr noundef nonnull @.str.259, i32 noundef %i.do) #21
  br label %bb.cg

bb.ac:                                            ; preds = %bb.i
  %i.dq = load i64, ptr %i.aq, align 8, !tbaa !137
  %i.dr = getelementptr [8 x i8], ptr @mon_short_names, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.dr, i64 -8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !138
  %i.du = call i32 (ptr, i64, ptr, ...) @ap_php_slprintf(ptr noundef nonnull %i.a, i64 noundef 97, ptr noundef nonnull @.str.55, ptr noundef %i.dt) #21
  br label %bb.cg

bb.ad:                                            ; preds = %bb.i
  %i.dv = load i64, ptr %i.aq, align 8, !tbaa !137
  %i.dw = trunc i64 %i.dv to i32
  %i.dx = call i32 (ptr, i64, ptr, ...) @ap_php_slprintf(ptr noundef nonnull %i.a, i64 noundef 97, ptr noundef nonnull @.str.260, i32 noundef %i.dw) #21
  br label %bb.cg

bb.ae:                                            ; preds = %bb.i
  %i.dy = load i64, ptr %2, align 8, !tbaa !136
  %i.dz = load i64, ptr %i.aq, align 8, !tbaa !137
  %i.ea = call i64 @timelib_days_in_month(i64 noundef %i.dy, i64 noundef %i.dz) #21
  %i.eb = trunc i64 %i.ea to i32
  %i.ec = call i32 (ptr, i64, ptr, ...) @ap_php_slprintf(ptr noundef nonnull %i.a, i64 noundef 97, ptr noundef nonnull @.str.260, i32 noundef %i.eb) #21
  br label %bb.cg

bb.af:                                            ; preds = %bb.i
  %i.ed = load i64, ptr %2, align 8, !tbaa !136
  %i.ee = trunc i64 %i.ed to i32                  ; 3 uses
  %i.ef = and i32 %i.ee, 3
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.eh = srem i32 %i.ee, 100
  %.not175 = icmp eq i32 %i.eh, 0
  br i1 %.not175, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ei = srem i32 %i.ee, 400
  %i.ej = icmp eq i32 %i.ei, 0
  %i.ek = zext i1 %i.ej to i32
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah, %bb.af
  %i.el = phi i32 [ 0, %bb.af ], [ 1, %bb.ag ], [ %i.ek, %bb.ah ]
  %i.em = call i32 (ptr, i64, ptr, ...) @ap_php_slprintf(ptr noundef nonnull %i.a, i64 noundef 97, ptr noundef nonnull @.str.260, i32 noundef %i.el) #21
  br label %bb.cg

bb.aj:                                            ; preds = %bb.i
  %i.en = load i64, ptr %2, align 8, !tbaa !136
  %i.eo = srem i64 %i.en, 100
  %i.ep = trunc nsw i64 %i.eo to i32
  %i.eq = call i32 (ptr, i64, ptr, ...) @ap_php_slprintf(ptr noundef nonnull %i.a, i64 noundef 97, ptr noundef nonnull @.str.259, i32 noundef %i.ep) #21
  br label %bb.cg

bb.ak:                                            ; preds = %bb.i
  %i.er = load i64, ptr %2, align 8, !tbaa !136   ; 2 uses
  %i.es = icmp slt i64 %i.er, 0
  %i.et = select i1 %i.es, ptr @.str.263, ptr @.str.37
  %i.eu = call noundef range(i64 0, -9223372036854775807) i64 @llvm.abs.i64(i64 %i.er, i1 false)
  %i.ev = call i32 (ptr, i64, ptr, ...) @ap_php_slprintf(ptr noundef nonnull %i.a, i64 noundef 97, ptr noundef nonnull @.str.262, ptr noundef nonnull %i.et, i64 noundef %i.eu) #21
  br label %bb.cg

bb.al:                                            ; preds = %bb.i
  %i.ew = load i64, ptr %2, align 8, !tbaa !136   ; 3 uses
  %i.ex = icmp slt i64 %i.ew, 0
  %i.ey = icmp sgt i64 %i.ew, 9999
  %i.ez = select i1 %i.ey, ptr @.str.264, ptr @.str.37
  %i.fa = select i1 %i.ex, ptr @.str.263, ptr %i.ez
  %i.fb = call noundef range(i64 0, -9223372036854775807) i64 @llvm.abs.i64(i64 %i.ew, i1 false)
  %i.fc = call i32 (ptr, i64, ptr, ...) @ap_php_slprintf(ptr noundef nonnull %i.a, i64 noundef 97, ptr noundef nonnull @.str.262, ptr noundef nonnull %i.fa, i64 noundef %i.fb) #21
  br label %bb.cg

bb.am:                                            ; preds = %bb.i
  %i.fd = load i64, ptr %2, align 8, !tbaa !136   ; 2 uses
  %i.fe = icmp slt i64 %i.fd, 0
  %i.ff = select i1 %i.fe, ptr @.str.263, ptr @.str.264
  %i.fg = call noundef range(i64 0, -9223372036854775807) i64 @llvm.abs.i64(i64 %i.fd, i1 false)
  %i.fh = call i32 (ptr, i64, ptr, ...) @ap_php_slprintf(ptr noundef nonnull %i.a, i64 noundef 97, ptr noundef nonnull @.str.262, ptr noundef nonnull %i.ff, i64 noundef %i.fg) #21
  br label %bb.cg

bb.an:                                            ; preds = %bb.i
  %i.fi = load i64, ptr %i.as, align 8, !tbaa !140
  %i.fj = icmp sgt i64 %i.fi, 11
  %i.fk = select i1 %i.fj, ptr @.str.265, ptr @.str.266
  %i.fl = call i32 (ptr, i64, ptr, ...) @ap_php_slprintf(ptr noundef nonnull %i.a, i64 noundef 97, ptr noundef nonnull @.str.55, ptr noundef nonnull %i.fk) #21
  br label %bb.cg

bb.ao:                                            ; preds = %bb.i
  %i.fm = load i64, ptr %i.as, align 8, !tbaa !140
  %i.fn = icmp sgt i64 %i.fm, 11
  %i.fo = select i1 %i.fn, ptr @.str.267, ptr @.str.268
  %i.fp = call i32 (ptr, i64, ptr, ...) @ap_php_slprintf(ptr noundef nonnull %i.a, i64 noundef 97, ptr noundef nonnull @.str.55, ptr noundef nonnull %i.fo) #21
  br label %bb.cg

bb.ap:                                            ; preds = %bb.i
  %i.fq = load i64, ptr %i.ap, align 8, !tbaa !133
  %i.fr = srem i64 %i.fq, 86400                   ; 2 uses
  %i.fs = trunc nsw i64 %i.fr to i32
  %i.ft = mul nsw i32 %i.fs, 10
  %i.fu = icmp slt i64 %i.fr, -3600
  %spec.select.v = select i1 %i.fu, i32 900000, i32 36000
  %spec.select = add nsw i32 %i.ft, %spec.select.v
  %i.fv = udiv i32 %spec.select, 864
  %i.fw = urem i32 %i.fv, 1000
  %i.fx = call i32 (ptr, i64, ptr, ...) @ap_php_slprintf(ptr noundef nonnull %i.a, i64 noundef 97, ptr noundef nonnull @.str.269, i32 noundef %i.fw) #21
  br label %bb.cg

bb.aq:                                            ; preds = %bb.i
  %i.fy = load i64, ptr %i.as, align 8, !tbaa !140 ; 2 uses
  %i.fz = srem i64 %i.fy, 12
  %.not174 = icmp eq i64 %i.fz, 0
  br i1 %.not174, label %8, label %5

5:                                                ; preds = %bb.aq
  %6 = trunc i64 %i.fy to i32
  %7 = srem i32 %6, 12
  br label %8

8:                                                ; preds = %bb.aq, %5
  %9 = phi i32 [ %7, %5 ], [ 12, %bb.aq ]
  %10 = call i32 (ptr, i64, ptr, ...) @ap_php_slprintf(ptr noundef nonnull %i.a, i64 noundef 97, ptr noundef nonnull @.str.260, i32 noundef %9) #21
  br label %bb.cg

bb.ar:                                            ; preds = %bb.i
  %i.ga = load i64, ptr %i.as, align 8, !tbaa !140
  %i.gb = trunc i64 %i.ga to i32
  %i.gc = call i32 (ptr, i64, ptr, ...) @ap_php_slprintf(ptr noundef nonnull %i.a, i64 noundef 97, ptr noundef nonnull @.str.260, i32 noundef %i.gb) #21
  br label %bb.cg

bb.as:                                            ; preds = %bb.i
  %i.gd = load i64, ptr %i.as, align 8, !tbaa !140 ; 2 uses
  %i.ge = srem i64 %i.gd, 12
  %.not173 = icmp eq i64 %i.ge, 0
  br i1 %.not173, label %14, label %11

11:                                               ; preds = %bb.as
  %12 = trunc i64 %i.gd to i32
  %13 = srem i32 %12, 12
  br label %14

14:                                               ; preds = %bb.as, %11
  %15 = phi i32 [ %13, %11 ], [ 12, %bb.as ]
  %16 = call i32 (ptr, i64, ptr, ...) @ap_php_slprintf(ptr noundef nonnull %i.a, i64 noundef 97, ptr noundef nonnull @.str.259, i32 noundef %15) #21
  br label %bb.cg

bb.at:                                            ; preds = %bb.i
  %i.gf = load i64, ptr %i.as, align 8, !tbaa !140
  %i.gg = trunc i64 %i.gf to i32
  %i.gh = call i32 (ptr, i64, ptr, ...) @ap_php_slprintf(ptr noundef nonnull %i.a, i64 noundef 97, ptr noundef nonnull @.str.259, i32 noundef %i.gg) #21
  br label %bb.cg

bb.au:                                            ; preds = %bb.i
  %i.gi = load i64, ptr %i.at, align 8, !tbaa !141
  %i.gj = trunc i64 %i.gi to i32
  %i.gk = call i32 (ptr, i64, ptr, ...) @ap_php_slprintf(ptr noundef nonnull %i.a, i64 noundef 97, ptr noundef nonnull @.str.259, i32 noundef %i.gj) #21
  br label %bb.cg

bb.av:                                            ; preds = %bb.i
  %i.gl = load i64, ptr %i.au, align 8, !tbaa !142
  %i.gm = trunc i64 %i.gl to i32
  %i.gn = call i32 (ptr, i64, ptr, ...) @ap_php_slprintf(ptr noundef nonnull %i.a, i64 noundef 97, ptr noundef nonnull @.str.259, i32 noundef %i.gm) #21
  br label %bb.cg

bb.aw:                                            ; preds = %bb.i
  %i.go = load i64, ptr %i.az, align 8, !tbaa !143
  %i.gp = trunc i64 %i.go to i32
  %i.gq = call i32 (ptr, i64, ptr, ...) @ap_php_slprintf(ptr noundef nonnull %i.a, i64 noundef 97, ptr noundef nonnull @.str.270, i32 noundef %i.gp) #21
  br label %bb.cg

bb.ax:                                            ; preds = %bb.i
  %i.gr = load i64, ptr %i.az, align 8, !tbaa !143
  %i.gs = sdiv i64 %i.gr, 1000
  %i.gt = trunc i64 %i.gs to i32
  %i.gu = call i32 (ptr, i64, ptr, ...) @ap_php_slprintf(ptr noundef nonnull %i.a, i64 noundef 97, ptr noundef nonnull @.str.269, i32 noundef %i.gt) #21
  br label %bb.cg

bb.ay:                                            ; preds = %bb.i
  br i1 %3, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.gv = load i32, ptr %i.ay, align 8, !tbaa !130
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %bb.az
  %i.gw = phi i32 [ %i.gv, %bb.az ], [ 0, %bb.ay ]
  %i.gx = call i32 (ptr, i64, ptr, ...) @ap_php_slprintf(ptr noundef nonnull %i.a, i64 noundef 97, ptr noundef nonnull @.str.260, i32 noundef %i.gw) #21
  br label %bb.cg

bb.bb:                                            ; preds = %bb.i
  br i1 %3, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.gy = load ptr, ptr %i.aw, align 8, !tbaa !132 ; 4 uses
  %i.gz = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.gy, ptr noundef nonnull dereferenceable(4) @.str.220) #23
  %i.ha = icmp eq i32 %i.gz, 0
  br i1 %i.ha, label %bb.bd, label %sub_0

sub_0:                                            ; preds = %bb.bc
  %i.hb = load i8, ptr %i.gy, align 1
  %.not202 = icmp eq i8 %i.hb, 90
  br i1 %.not202, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_0
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 1
  %i.hd = load i8, ptr %i.hc, align 1
  %i.he = icmp eq i8 %i.hd, 0
  br i1 %i.he, label %bb.bd, label %.tail.thread

.tail.thread:                                     ; preds = %sub_0, %.tail
  %i.hf = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.gy, ptr noundef nonnull dereferenceable(9) @.str.272) #23
  %i.hg = icmp eq i32 %i.hf, 0
  br i1 %i.hg, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.tail.thread, %.tail, %bb.bc, %bb.bb
  %i.hh = call i32 (ptr, i64, ptr, ...) @ap_php_slprintf(ptr noundef nonnull %i.a, i64 noundef 97, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.271) #21
  br label %bb.cg

bb.be:                                            ; preds = %.tail.thread, %bb.i
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.i
  %.0159 = phi ptr [ @.str.274, %bb.be ], [ @.str.37, %bb.i ]
  br i1 %3, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.hi = load i32, ptr %.0160, align 8, !tbaa !127 ; 3 uses
  %i.hj = icmp slt i32 %i.hi, 0
  %i.hk = select i1 %i.hj, i32 45, i32 43
  %i.hl = sdiv i32 %i.hi, 3600
  %i.hm = call i32 @llvm.abs.i32(i32 %i.hl, i1 true)
  %i.hn = srem i32 %i.hi, 3600
  %.lhs.trunc = trunc nsw i32 %i.hn to i16
  %i.ho = sdiv i16 %.lhs.trunc, 60
  %i.hp = call i16 @llvm.abs.i16(i16 %i.ho, i1 true)
  %i.hq = zext nneg i16 %i.hp to i32
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bf, %bb.bg
  %i.hr = phi i32 [ %i.hm, %bb.bg ], [ 0, %bb.bf ]
  %i.hs = phi i32 [ %i.hk, %bb.bg ], [ 43, %bb.bf ]
  %i.ht = phi i32 [ %i.hq, %bb.bg ], [ 0, %bb.bf ]
  %i.hu = call i32 (ptr, i64, ptr, ...) @ap_php_slprintf(ptr noundef nonnull %i.a, i64 noundef 97, ptr noundef nonnull @.str.273, i32 noundef %i.hs, i32 noundef %i.hr, ptr noundef nonnull %.0159, i32 noundef %i.ht) #21
  br label %bb.cg

bb.bi:                                            ; preds = %bb.i
  br i1 %3, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.hv = load ptr, ptr %i.aw, align 8, !tbaa !132
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj
  %i.hw = phi ptr [ %i.hv, %bb.bj ], [ @.str.17, %bb.bi ]
  %i.hx = call i32 (ptr, i64, ptr, ...) @ap_php_slprintf(ptr noundef nonnull %i.a, i64 noundef 97, ptr noundef nonnull @.str.55, ptr noundef %i.hw) #21
  br label %bb.cg

bb.bl:                                            ; preds = %bb.i
  br i1 %3, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hy = call i32 (ptr, i64, ptr, ...) @ap_php_slprintf(ptr noundef nonnull %i.a, i64 noundef 97, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.220) #21
  br label %bb.cg

bb.bn:                                            ; preds = %bb.bl
  %i.hz = load i32, ptr %i.av, align 8, !tbaa !124
  switch i32 %i.hz, label %bb.cg [
    i32 3, label %bb.bo
    i32 2, label %bb.bp
    i32 1, label %bb.bq
  ]

bb.bo:                                            ; preds = %bb.bn
  %i.ia = load ptr, ptr %i.ax, align 8, !tbaa !134
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !144
  %i.ic = call i32 (ptr, i64, ptr, ...) @ap_php_slprintf(ptr noundef nonnull %i.a, i64 noundef 97, ptr noundef nonnull @.str.55, ptr noundef %i.ib) #21
  br label %bb.cg

bb.bp:                                            ; preds = %bb.bn
  %i.id = load ptr, ptr %i.aw, align 8, !tbaa !132
  %i.ie = call i32 (ptr, i64, ptr, ...) @ap_php_slprintf(ptr noundef nonnull %i.a, i64 noundef 97, ptr noundef nonnull @.str.55, ptr noundef %i.id) #21
  br label %bb.cg

bb.bq:                                            ; preds = %bb.bn
  %i.if = load i32, ptr %.0160, align 8, !tbaa !127 ; 4 uses
  %i.ig = srem i32 %i.if, 60                      ; 2 uses
  %i.ih = icmp eq i32 %i.ig, 0
  %i.ii = icmp slt i32 %i.if, 0
  %i.ij = select i1 %i.ii, i32 45, i32 43         ; 2 uses
  %i.ik = sdiv i32 %i.if, 3600
  %i.il = call i32 @llvm.abs.i32(i32 %i.ik, i1 true) ; 2 uses
  %i.im = srem i32 %i.if, 3600
  %.lhs.trunc189 = trunc nsw i32 %i.im to i16
  %i.in = sdiv i16 %.lhs.trunc189, 60
  %i.io = call i16 @llvm.abs.i16(i16 %i.in, i1 true)
  %i.ip = zext nneg i16 %i.io to i32              ; 2 uses
  br i1 %i.ih, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.iq = call i32 (ptr, i64, ptr, ...) @ap_php_slprintf(ptr noundef nonnull %i.a, i64 noundef 97, ptr noundef nonnull @.str.275, i32 noundef %i.ij, i32 noundef %i.il, i32 noundef %i.ip) #21
  br label %bb.cg

bb.bs:                                            ; preds = %bb.bq
  %i.ir = call i32 @llvm.abs.i32(i32 %i.ig, i1 true)
  %i.is = call i32 (ptr, i64, ptr, ...) @ap_php_slprintf(ptr noundef nonnull %i.a, i64 noundef 97, ptr noundef nonnull @.str.276, i32 noundef %i.ij, i32 noundef %i.il, i32 noundef %i.ip, i32 noundef %i.ir) #21
  br label %bb.cg

bb.bt:                                            ; preds = %bb.i
  br i1 %3, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.it = load i32, ptr %.0160, align 8, !tbaa !127
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bt, %bb.bu
  %i.iu = phi i32 [ %i.it, %bb.bu ], [ 0, %bb.bt ]
  %i.iv = call i32 (ptr, i64, ptr, ...) @ap_php_slprintf(ptr noundef nonnull %i.a, i64 noundef 97, ptr noundef nonnull @.str.260, i32 noundef %i.iu) #21
  br label %bb.cg

bb.bw:                                            ; preds = %bb.i
  %i.iw = load i64, ptr %2, align 8, !tbaa !136
  %i.ix = load i64, ptr %i.aq, align 8, !tbaa !137
  %i.iy = trunc i64 %i.ix to i32
  %i.iz = load i64, ptr %i.ar, align 8, !tbaa !135
  %i.ja = trunc i64 %i.iz to i32
  %i.jb = load i64, ptr %i.as, align 8, !tbaa !140
  %i.jc = trunc i64 %i.jb to i32
  %i.jd = load i64, ptr %i.at, align 8, !tbaa !141
  %i.je = trunc i64 %i.jd to i32
  %i.jf = load i64, ptr %i.au, align 8, !tbaa !142
  %i.jg = trunc i64 %i.jf to i32
  br i1 %3, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.jh = load i32, ptr %.0160, align 8, !tbaa !127 ; 3 uses
  %i.ji = icmp slt i32 %i.jh, 0
  %i.jj = select i1 %i.ji, i32 45, i32 43
  %i.jk = sdiv i32 %i.jh, 3600
  %i.jl = call i32 @llvm.abs.i32(i32 %i.jk, i1 true)
  %i.jm = srem i32 %i.jh, 3600
  %.lhs.trunc193 = trunc nsw i32 %i.jm to i16
  %i.jn = sdiv i16 %.lhs.trunc193, 60
  %i.jo = call i16 @llvm.abs.i16(i16 %i.jn, i1 true)
  %i.jp = zext nneg i16 %i.jo to i32
  br label %bb.by

bb.by:                                            ; preds = %bb.bw, %bb.bx
  %i.jq = phi i32 [ %i.jl, %bb.bx ], [ 0, %bb.bw ]
  %i.jr = phi i32 [ %i.jj, %bb.bx ], [ 43, %bb.bw ]
  %i.js = phi i32 [ %i.jp, %bb.bx ], [ 0, %bb.bw ]
  %i.jt = call i32 (ptr, i64, ptr, ...) @ap_php_slprintf(ptr noundef nonnull %i.a, i64 noundef 97, ptr noundef nonnull @.str.277, i64 noundef %i.iw, i32 noundef %i.iy, i32 noundef %i.ja, i32 noundef %i.jc, i32 noundef %i.je, i32 noundef %i.jg, i32 noundef %i.jr, i32 noundef %i.jq, i32 noundef %i.js) #21
  br label %bb.cg

bb.bz:                                            ; preds = %bb.i
  %i.ju = load i64, ptr %2, align 8, !tbaa !136
  %i.jv = load i64, ptr %i.aq, align 8, !tbaa !137
  %i.jw = load i64, ptr %i.ar, align 8, !tbaa !135
  %i.jx = call i64 @timelib_day_of_week(i64 noundef %i.ju, i64 noundef %i.jv, i64 noundef %i.jw) #21 ; 2 uses
  %i.jy = icmp slt i64 %i.jx, 0
  br i1 %i.jy, label %php_date_short_day_name.exit183, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr @day_short_names, i64 %i.jx
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !138
  br label %php_date_short_day_name.exit183

php_date_short_day_name.exit183:                  ; preds = %bb.bz, %bb.ca
  %.0.i182 = phi ptr [ %i.ka, %bb.ca ], [ @.str.280, %bb.bz ]
  %i.kb = load i64, ptr %i.ar, align 8, !tbaa !135
  %i.kc = trunc i64 %i.kb to i32
  %i.kd = load i64, ptr %i.aq, align 8, !tbaa !137
  %i.ke = getelementptr [8 x i8], ptr @mon_short_names, i64 %i.kd
  %i.kf = getelementptr i8, ptr %i.ke, i64 -8
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !138
  %i.kh = load i64, ptr %2, align 8, !tbaa !136
  %i.ki = load i64, ptr %i.as, align 8, !tbaa !140
  %i.kj = trunc i64 %i.ki to i32
  %i.kk = load i64, ptr %i.at, align 8, !tbaa !141
  %i.kl = trunc i64 %i.kk to i32
  %i.km = load i64, ptr %i.au, align 8, !tbaa !142
  %i.kn = trunc i64 %i.km to i32
  br i1 %3, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %php_date_short_day_name.exit183
  %i.ko = load i32, ptr %.0160, align 8, !tbaa !127 ; 3 uses
  %i.kp = icmp slt i32 %i.ko, 0
  %i.kq = select i1 %i.kp, i32 45, i32 43
  %i.kr = sdiv i32 %i.ko, 3600
  %i.ks = call i32 @llvm.abs.i32(i32 %i.kr, i1 true)
  %i.kt = srem i32 %i.ko, 3600
  %.lhs.trunc195 = trunc nsw i32 %i.kt to i16
  %i.ku = sdiv i16 %.lhs.trunc195, 60
  %i.kv = call i16 @llvm.abs.i16(i16 %i.ku, i1 true)
  %i.kw = zext nneg i16 %i.kv to i32
  br label %bb.cc

bb.cc:                                            ; preds = %php_date_short_day_name.exit183, %bb.cb
  %i.kx = phi i32 [ %i.ks, %bb.cb ], [ 0, %php_date_short_day_name.exit183 ]
  %i.ky = phi i32 [ %i.kq, %bb.cb ], [ 43, %php_date_short_day_name.exit183 ]
  %i.kz = phi i32 [ %i.kw, %bb.cb ], [ 0, %php_date_short_day_name.exit183 ]
  %i.la = call i32 (ptr, i64, ptr, ...) @ap_php_slprintf(ptr noundef nonnull %i.a, i64 noundef 97, ptr noundef nonnull @.str.278, ptr noundef %.0.i182, i32 noundef %i.kc, ptr noundef %i.kg, i64 noundef %i.kh, i32 noundef %i.kj, i32 noundef %i.kl, i32 noundef %i.kn, i32 noundef %i.ky, i32 noundef %i.kx, i32 noundef %i.kz) #21
  br label %bb.cg

bb.cd:                                            ; preds = %bb.i
  %i.lb = load i64, ptr %i.ap, align 8, !tbaa !133
  %i.lc = call i32 (ptr, i64, ptr, ...) @ap_php_slprintf(ptr noundef nonnull %i.a, i64 noundef 97, ptr noundef nonnull @.str.279, i64 noundef %i.lb) #21
  br label %bb.cg

bb.ce:                                            ; preds = %bb.i
  %i.ld = add nuw i64 %.0164199, 1                ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 %i.ld
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !40
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.i
  %i.le = phi i8 [ %i.bd, %bb.i ], [ %.pre, %bb.ce ]
  %.1165 = phi i64 [ %.0164199, %bb.i ], [ %i.ld, %bb.ce ]
  store i8 %i.le, ptr %i.a, align 16, !tbaa !40
  store i8 0, ptr %i.ba, align 1, !tbaa !40
  br label %bb.cg

bb.cg:                                            ; preds = %bb.br, %bb.bs, %bb.bm, %bb.bp, %bb.bo, %bb.bn, %bb.cf, %bb.cd, %bb.cc, %bb.by, %bb.bv, %bb.bk, %bb.bh, %bb.bd, %bb.ba, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %14, %bb.ar, %8, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.w, %bb.t, %bb.s, %bb.r, %english_suffix.exit, %php_date_full_day_name.exit, %bb.m, %php_date_short_day_name.exit, %bb.j
  %.2166 = phi i64 [ %.1165, %bb.cf ], [ %.0164199, %bb.j ], [ %.0164199, %php_date_short_day_name.exit ], [ %.0164199, %bb.m ], [ %.0164199, %php_date_full_day_name.exit ], [ %.0164199, %english_suffix.exit ], [ %.0164199, %bb.r ], [ %.0164199, %bb.s ], [ %.0164199, %bb.t ], [ %.0164199, %bb.w ], [ %.0164199, %bb.z ], [ %.0164199, %bb.aa ], [ %.0164199, %bb.ab ], [ %.0164199, %bb.ac ], [ %.0164199, %bb.ad ], [ %.0164199, %bb.ae ], [ %.0164199, %bb.ai ], [ %.0164199, %bb.aj ], [ %.0164199, %bb.ak ], [ %.0164199, %bb.al ], [ %.0164199, %bb.am ], [ %.0164199, %bb.an ], [ %.0164199, %bb.ao ], [ %.0164199, %bb.ap ], [ %.0164199, %8 ], [ %.0164199, %bb.ar ], [ %.0164199, %14 ], [ %.0164199, %bb.at ], [ %.0164199, %bb.au ], [ %.0164199, %bb.av ], [ %.0164199, %bb.aw ], [ %.0164199, %bb.ax ], [ %.0164199, %bb.ba ], [ %.0164199, %bb.bd ], [ %.0164199, %bb.bh ], [ %.0164199, %bb.bk ], [ %.0164199, %bb.bn ], [ %.0164199, %bb.bo ], [ %.0164199, %bb.bp ], [ %.0164199, %bb.cd ], [ %.0164199, %bb.bm ], [ %.0164199, %bb.bv ], [ %.0164199, %bb.by ], [ %.0164199, %bb.cc ], [ %.0164199, %bb.bs ], [ %.0164199, %bb.br ]
  %.2163 = phi i32 [ 1, %bb.cf ], [ %i.bg, %bb.j ], [ %i.bo, %php_date_short_day_name.exit ], [ %i.br, %bb.m ], [ %i.bz, %php_date_full_day_name.exit ], [ %i.ce, %english_suffix.exit ], [ %i.ck, %bb.r ], [ %i.cq, %bb.s ], [ %i.cw, %bb.t ], [ %i.dc, %bb.w ], [ %i.dh, %bb.z ], [ %i.dm, %bb.aa ], [ %i.dp, %bb.ab ], [ %i.du, %bb.ac ], [ %i.dx, %bb.ad ], [ %i.ec, %bb.ae ], [ %i.em, %bb.ai ], [ %i.eq, %bb.aj ], [ %i.ev, %bb.ak ], [ %i.fc, %bb.al ], [ %i.fh, %bb.am ], [ %i.fl, %bb.an ], [ %i.fp, %bb.ao ], [ %i.fx, %bb.ap ], [ %10, %8 ], [ %i.gc, %bb.ar ], [ %16, %14 ], [ %i.gh, %bb.at ], [ %i.gk, %bb.au ], [ %i.gn, %bb.av ], [ %i.gq, %bb.aw ], [ %i.gu, %bb.ax ], [ %i.gx, %bb.ba ], [ %i.hh, %bb.bd ], [ %i.hu, %bb.bh ], [ %i.hx, %bb.bk ], [ %.0161200, %bb.bn ], [ %i.ic, %bb.bo ], [ %i.ie, %bb.bp ], [ %i.lc, %bb.cd ], [ %i.hy, %bb.bm ], [ %i.iv, %bb.bv ], [ %i.jt, %bb.by ], [ %i.la, %bb.cc ], [ %i.is, %bb.bs ], [ %i.iq, %bb.br ] ; 2 uses
  %.3 = phi i32 [ %.0158201, %bb.cf ], [ %.0158201, %bb.j ], [ %.0158201, %php_date_short_day_name.exit ], [ %.0158201, %bb.m ], [ %.0158201, %php_date_full_day_name.exit ], [ %.0158201, %english_suffix.exit ], [ %.0158201, %bb.r ], [ %.0158201, %bb.s ], [ %.0158201, %bb.t ], [ 1, %bb.w ], [ 1, %bb.z ], [ %.0158201, %bb.aa ], [ %.0158201, %bb.ab ], [ %.0158201, %bb.ac ], [ %.0158201, %bb.ad ], [ %.0158201, %bb.ae ], [ %.0158201, %bb.ai ], [ %.0158201, %bb.aj ], [ %.0158201, %bb.ak ], [ %.0158201, %bb.al ], [ %.0158201, %bb.am ], [ %.0158201, %bb.an ], [ %.0158201, %bb.ao ], [ %.0158201, %bb.ap ], [ %.0158201, %8 ], [ %.0158201, %bb.ar ], [ %.0158201, %14 ], [ %.0158201, %bb.at ], [ %.0158201, %bb.au ], [ %.0158201, %bb.av ], [ %.0158201, %bb.aw ], [ %.0158201, %bb.ax ], [ %.0158201, %bb.ba ], [ %.0158201, %bb.bd ], [ %.0158201, %bb.bh ], [ %.0158201, %bb.bk ], [ %.0158201, %bb.bn ], [ %.0158201, %bb.bo ], [ %.0158201, %bb.bp ], [ %.0158201, %bb.cd ], [ %.0158201, %bb.bm ], [ %.0158201, %bb.bv ], [ %.0158201, %bb.by ], [ %.0158201, %bb.cc ], [ %.0158201, %bb.bs ], [ %.0158201, %bb.br ]
  %i.lf = sext i32 %.2163 to i64                  ; 3 uses
  %i.lg = load ptr, ptr %4, align 8, !tbaa !154   ; 3 uses
  %.not.i178 = icmp eq ptr %i.lg, null
  br i1 %.not.i178, label %bb.ci, label %bb.ch, !prof !156

bb.ch:                                            ; preds = %bb.cg
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !51 ; 2 uses
  %i.lj = add i64 %i.li, %i.lf                    ; 3 uses
  %i.lk = load i64, ptr %i.bb, align 8, !tbaa !157
  %.not12.i = icmp ult i64 %i.lj, %i.lk
  br i1 %.not12.i, label %smart_str_alloc.exit, label %bb.ci, !prof !12

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.0.i = phi i64 [ %i.lf, %bb.cg ], [ %i.lj, %bb.ch ] ; 2 uses
  call void @smart_str_erealloc(ptr noundef nonnull %4, i64 noundef %.0.i) #21
  %.pre203 = load ptr, ptr %4, align 8, !tbaa !154 ; 2 uses
  %.phi.trans.insert204 = getelementptr inbounds nuw i8, ptr %.pre203, i64 16
  %.pre205 = load i64, ptr %.phi.trans.insert204, align 8, !tbaa !51
  br label %smart_str_alloc.exit

smart_str_alloc.exit:                             ; preds = %bb.ch, %bb.ci
  %i.ll = phi i64 [ %i.li, %bb.ch ], [ %.pre205, %bb.ci ]
  %i.lm = phi ptr [ %i.lg, %bb.ch ], [ %.pre203, %bb.ci ]
  %i.ln = phi i64 [ %i.lj, %bb.ch ], [ %.0.i, %bb.ci ] ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 24
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.ll
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lp, ptr nonnull align 16 %i.a, i64 range(i64 -2147483648, 2147483648) %i.lf, i1 false)
  %i.lq = load ptr, ptr %4, align 8, !tbaa !154   ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  store i64 %i.ln, ptr %i.lr, align 8, !tbaa !51
  %i.ls = add i64 %.2166, 1                       ; 2 uses
  %i.lt = icmp ult i64 %i.ls, %1
  br i1 %i.lt, label %bb.i, label %smart_str_0.exit, !llvm.loop !158

smart_str_0.exit:                                 ; preds = %smart_str_alloc.exit
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lq, i64 24
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 %i.ln
  store i8 0, ptr %i.lv, align 1, !tbaa !40
  br i1 %3, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %smart_str_0.exit
  call void @timelib_time_offset_dtor(ptr noundef %.0160) #21
  br label %bb.ck

bb.ck:                                            ; preds = %smart_str_0.exit, %bb.cj, %bb.a
  %.0.in = phi ptr [ @zend_empty_string, %bb.a ], [ %4, %bb.cj ], [ %4, %smart_str_0.exit ]
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @php_format_date(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @timelib_time_ctor() #21   ; 6 uses
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @get_timezone_info()
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %i.b, ptr %i.c, align 8, !tbaa !134
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store i32 3, ptr %i.d, align 8, !tbaa !124
  tail call void @timelib_unixtime2local(ptr noundef %i.a, i64 noundef %2) #21
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @timelib_unixtime2gmt(ptr noundef %i.a, i64 noundef %2) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = tail call fastcc ptr @date_format(ptr noundef %0, i64 noundef %1, ptr noundef %i.a, i1 noundef zeroext %3)
  tail call void @timelib_time_dtor(ptr noundef %i.a) #21
  ret ptr %i.e
}

declare ptr @timelib_time_ctor() local_unnamed_addr #6

declare void @timelib_unixtime2local(ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @timelib_unixtime2gmt(ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @timelib_time_dtor(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @php_idate(i8 noundef signext %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.c = tail call ptr @timelib_time_ctor() #21   ; 27 uses
  br i1 %2, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  tail call void @timelib_unixtime2gmt(ptr noundef %i.c, i64 noundef %1) #21
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @get_timezone_info()
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !134
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 232 ; 2 uses
  store i32 3, ptr %i.f, align 8, !tbaa !124
  tail call void @timelib_unixtime2local(ptr noundef %i.c, i64 noundef %1) #21
  %i.g = load i32, ptr %i.f, align 8, !tbaa !124
  switch i32 %i.g, label %bb.e [
    i32 2, label %bb.c
    i32 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @timelib_time_offset_ctor() #21 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.j = load i32, ptr %i.i, align 8, !tbaa !125
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.l = load i32, ptr %i.k, align 8, !tbaa !126  ; 2 uses
  %i.m = mul nsw i32 %i.l, 3600
  %i.n = add nsw i32 %i.m, %i.j
  store i32 %i.n, ptr %i.h, align 8, !tbaa !127
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 0, ptr %i.o, align 4, !tbaa !129
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 %i.l, ptr %i.p, align 8, !tbaa !130
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !131
  %i.s = tail call noalias ptr @_estrdup(ptr noundef %i.r) #21
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.s, ptr %i.t, align 8, !tbaa !132
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.u = tail call ptr @timelib_time_offset_ctor() #21 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.w = load i32, ptr %i.v, align 8, !tbaa !125
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.y = load i32, ptr %i.x, align 8, !tbaa !126  ; 2 uses
  %i.z = mul nsw i32 %i.y, 3600
  %i.aa = add nsw i32 %i.z, %i.w
  store i32 %i.aa, ptr %i.u, align 8, !tbaa !127
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 0, ptr %i.ab, align 4, !tbaa !129
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 %i.y, ptr %i.ac, align 8, !tbaa !130
  %i.ad = tail call noalias ptr @_emalloc_16() #21 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !132
  %i.af = load i32, ptr %i.u, align 8, !tbaa !127 ; 3 uses
  %i.ag = icmp slt i32 %i.af, 0
  %i.ah = select i1 %i.ag, i32 45, i32 43
  %i.ai = sdiv i32 %i.af, 3600
  %i.aj = tail call i32 @llvm.abs.i32(i32 %i.ai, i1 true)
  %i.ak = srem i32 %i.af, 3600
  %.lhs.trunc = trunc nsw i32 %i.ak to i16
  %i.al = sdiv i16 %.lhs.trunc, 60
  %i.am = tail call i16 @llvm.abs.i16(i16 %i.al, i1 true)
  %i.an = zext nneg i16 %i.am to i32
  %i.ao = tail call i32 (ptr, i64, ptr, ...) @ap_php_snprintf(ptr noundef %i.ad, i64 noundef 9, ptr noundef nonnull @.str.13, i32 noundef %i.ah, i32 noundef %i.aj, i32 noundef %i.an) #21 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !133
  %i.ar = load ptr, ptr %i.e, align 8, !tbaa !134
  %i.as = tail call ptr @timelib_get_time_zone_info(i64 noundef %i.aq, ptr noundef %i.ar) #21
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.c, %bb.e, %bb.d
  %.0 = phi ptr [ null, %.thread ], [ %i.h, %bb.c ], [ %i.u, %bb.d ], [ %i.as, %bb.e ] ; 3 uses
  %i.at = load i64, ptr %i.c, align 8, !tbaa !136
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 6 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !137
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 5 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !135
  call void @timelib_isoweek_from_date(i64 noundef %i.at, i64 noundef %i.av, i64 noundef %i.ax, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #21
  switch i8 %0, label %bb.ad [
    i8 100, label %bb.g
    i8 106, label %bb.g
    i8 78, label %bb.h
    i8 119, label %bb.i
    i8 122, label %bb.j
    i8 87, label %bb.k
    i8 109, label %bb.l
    i8 110, label %bb.l
    i8 116, label %bb.m
    i8 76, label %bb.n
    i8 121, label %bb.q
    i8 89, label %bb.r
    i8 111, label %bb.s
    i8 66, label %bb.t
    i8 103, label %bb.u
    i8 104, label %bb.u
    i8 72, label %bb.v
    i8 71, label %bb.v
    i8 105, label %bb.w
    i8 115, label %bb.x
    i8 73, label %bb.y
    i8 90, label %bb.aa
    i8 85, label %bb.ac
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !135
  %i.az = trunc i64 %i.ay to i32
  br label %bb.ad

bb.h:                                             ; preds = %bb.f
  %i.ba = load i64, ptr %i.c, align 8, !tbaa !136
  %i.bb = load i64, ptr %i.au, align 8, !tbaa !137
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !135
  %i.bd = call i64 @timelib_iso_day_of_week(i64 noundef %i.ba, i64 noundef %i.bb, i64 noundef %i.bc) #21
  %i.be = trunc i64 %i.bd to i32
  br label %bb.ad

bb.i:                                             ; preds = %bb.f
  %i.bf = load i64, ptr %i.c, align 8, !tbaa !136
  %i.bg = load i64, ptr %i.au, align 8, !tbaa !137
  %i.bh = load i64, ptr %i.aw, align 8, !tbaa !135
  %i.bi = call i64 @timelib_day_of_week(i64 noundef %i.bf, i64 noundef %i.bg, i64 noundef %i.bh) #21
  %i.bj = trunc i64 %i.bi to i32
  br label %bb.ad

bb.j:                                             ; preds = %bb.f
  %i.bk = load i64, ptr %i.c, align 8, !tbaa !136
  %i.bl = load i64, ptr %i.au, align 8, !tbaa !137
  %i.bm = load i64, ptr %i.aw, align 8, !tbaa !135
  %i.bn = call i64 @timelib_day_of_year(i64 noundef %i.bk, i64 noundef %i.bl, i64 noundef %i.bm) #21
  %i.bo = trunc i64 %i.bn to i32
  br label %bb.ad

bb.k:                                             ; preds = %bb.f
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !139
  %i.bq = trunc i64 %i.bp to i32
  br label %bb.ad

bb.l:                                             ; preds = %bb.f, %bb.f
  %i.br = load i64, ptr %i.au, align 8, !tbaa !137
  %i.bs = trunc i64 %i.br to i32
  br label %bb.ad

bb.m:                                             ; preds = %bb.f
  %i.bt = load i64, ptr %i.c, align 8, !tbaa !136
  %i.bu = load i64, ptr %i.au, align 8, !tbaa !137
  %i.bv = call i64 @timelib_days_in_month(i64 noundef %i.bt, i64 noundef %i.bu) #21
  %i.bw = trunc i64 %i.bv to i32
  br label %bb.ad

bb.n:                                             ; preds = %bb.f
  %i.bx = load i64, ptr %i.c, align 8, !tbaa !136
  %i.by = trunc i64 %i.bx to i32                  ; 3 uses
  %i.bz = and i32 %i.by, 3
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.o, label %bb.ad

bb.o:                                             ; preds = %bb.n
  %i.cb = srem i32 %i.by, 100
  %.not77 = icmp eq i32 %i.cb, 0
  br i1 %.not77, label %bb.p, label %bb.ad

bb.p:                                             ; preds = %bb.o
  %i.cc = srem i32 %i.by, 400
  %i.cd = icmp eq i32 %i.cc, 0
  %i.ce = zext i1 %i.cd to i32
  br label %bb.ad

bb.q:                                             ; preds = %bb.f
  %i.cf = load i64, ptr %i.c, align 8, !tbaa !136
  %i.cg = srem i64 %i.cf, 100
  %i.ch = trunc nsw i64 %i.cg to i32
  br label %bb.ad

bb.r:                                             ; preds = %bb.f
  %i.ci = load i64, ptr %i.c, align 8, !tbaa !136
  %i.cj = trunc i64 %i.ci to i32
  br label %bb.ad

bb.s:                                             ; preds = %bb.f
  %i.ck = load i64, ptr %i.b, align 8, !tbaa !139
  %i.cl = trunc i64 %i.ck to i32
  br label %bb.ad

bb.t:                                             ; preds = %bb.f
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !133
  %i.co = srem i64 %i.cn, 86400                   ; 2 uses
  %i.cp = trunc nsw i64 %i.co to i32
  %i.cq = mul nsw i32 %i.cp, 10
  %i.cr = icmp slt i64 %i.co, -3600
  %spec.select.v = select i1 %i.cr, i32 900000, i32 36000
  %spec.select = add nsw i32 %i.cq, %spec.select.v
  %i.cs = udiv i32 %spec.select, 864
  %i.ct = urem i32 %i.cs, 1000
  br label %bb.ad

bb.u:                                             ; preds = %bb.f, %bb.f
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !140 ; 2 uses
  %i.cw = srem i64 %i.cv, 12
  %.not = icmp eq i64 %i.cw, 0
  br i1 %.not, label %bb.ad, label %3

3:                                                ; preds = %bb.u
  %4 = trunc i64 %i.cv to i32
  %5 = srem i32 %4, 12
  br label %bb.ad

bb.v:                                             ; preds = %bb.f, %bb.f
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !140
  %i.cz = trunc i64 %i.cy to i32
  br label %bb.ad

bb.w:                                             ; preds = %bb.f
  %i.da = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.db = load i64, ptr %i.da, align 8, !tbaa !141
  %i.dc = trunc i64 %i.db to i32
  br label %bb.ad

bb.x:                                             ; preds = %bb.f
  %i.dd = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !142
  %i.df = trunc i64 %i.de to i32
  br label %bb.ad

bb.y:                                             ; preds = %bb.f
  br i1 %2, label %.thread78, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dg = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !130
  br label %.thread82

bb.aa:                                            ; preds = %bb.f
  br i1 %2, label %.thread78, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.di = load i32, ptr %.0, align 8, !tbaa !127
  br label %.thread82

bb.ac:                                            ; preds = %bb.f
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !133
  %i.dl = trunc i64 %i.dk to i32
  br label %bb.ad

bb.ad:                                            ; preds = %3, %bb.u, %bb.n, %bb.p, %bb.o, %bb.ac, %bb.x, %bb.w, %bb.v, %bb.t, %bb.s, %bb.r, %bb.q, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.1 = phi i32 [ -1, %bb.f ], [ %i.az, %bb.g ], [ %i.be, %bb.h ], [ %i.bj, %bb.i ], [ %i.bo, %bb.j ], [ %i.bq, %bb.k ], [ %i.bs, %bb.l ], [ %i.bw, %bb.m ], [ %i.dl, %bb.ac ], [ %i.ch, %bb.q ], [ %i.cj, %bb.r ], [ %i.cl, %bb.s ], [ %i.ct, %bb.t ], [ %i.ce, %bb.p ], [ %i.cz, %bb.v ], [ %i.dc, %bb.w ], [ %i.df, %bb.x ], [ 12, %bb.u ], [ %5, %3 ], [ 0, %bb.n ], [ 1, %bb.o ] ; 2 uses
  br i1 %2, label %.thread78, label %.thread82

.thread82:                                        ; preds = %bb.z, %bb.ab, %bb.ad
  %.184 = phi i32 [ %.1, %bb.ad ], [ %i.dh, %bb.z ], [ %i.di, %bb.ab ]
  call void @timelib_time_offset_dtor(ptr noundef %.0) #21
  br label %.thread78

.thread78:                                        ; preds = %bb.y, %bb.aa, %.thread82, %bb.ad
  %.180 = phi i32 [ %.1, %bb.ad ], [ %.184, %.thread82 ], [ 0, %bb.aa ], [ 0, %bb.y ]
  call void @timelib_time_dtor(ptr noundef nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.180
}

declare ptr @timelib_time_offset_ctor() local_unnamed_addr #6

declare noalias ptr @_estrdup(ptr noundef) local_unnamed_addr #6

declare noalias ptr @_emalloc_16() local_unnamed_addr #6

declare i32 @ap_php_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

declare ptr @timelib_get_time_zone_info(i64 noundef, ptr noundef) local_unnamed_addr #6

declare void @timelib_isoweek_from_date(i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare i64 @timelib_iso_day_of_week(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare i64 @timelib_day_of_week(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare i64 @timelib_day_of_year(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare i64 @timelib_days_in_month(i64 noundef, i64 noundef) local_unnamed_addr #6

declare void @timelib_time_offset_dtor(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define hidden void @zif_date(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  tail call fastcc void @php_date(ptr noundef %0, ptr noundef %1, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @php_date(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.timeval, align 8            ; 4 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !40   ; 2 uses
  %i.e = add i32 %i.d, -3
  %or.cond = icmp ult i32 %i.e, -2
  br i1 %or.cond, label %bb.b, label %bb.c, !prof !160

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 2) #21
  br label %.thread80

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load i8, ptr %i.g, align 8, !tbaa !40
  %i.i = icmp eq i8 %i.h, 6
  br i1 %i.i, label %zend_parse_arg_str_ex.exit.thread, label %zend_parse_arg_str_ex.exit, !prof !12

zend_parse_arg_str_ex.exit.thread:                ; preds = %bb.c
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !40
  store ptr %i.j, ptr %i.a, align 8, !tbaa !44
  br label %bb.d

zend_parse_arg_str_ex.exit:                       ; preds = %bb.c
  %i.k = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, i32 noundef 1) #21
  br i1 %i.k, label %bb.d, label %.thread80, !prof !161

bb.d:                                             ; preds = %zend_parse_arg_str_ex.exit.thread, %zend_parse_arg_str_ex.exit
  %i.l = icmp eq i32 %i.d, 1
  br i1 %i.l, label %.critedge.thread, label %bb.e, !prof !156

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = load i8, ptr %i.n, align 8, !tbaa !40
  switch i8 %i.o, label %zend_parse_arg_long_ex.exit [
    i8 4, label %.critedge.thread93.critedge
    i8 1, label %.critedge.thread
  ], !prof !162

.critedge.thread93.critedge:                      ; preds = %bb.e
  %i.p = load i64, ptr %i.m, align 8, !tbaa !40   ; 2 uses
  store i64 %i.p, ptr %i.b, align 8, !tbaa !163
  br label %.critedge.thread93

zend_parse_arg_long_ex.exit:                      ; preds = %bb.e
  %i.q = call zeroext i1 @zend_parse_arg_long_slow(ptr noundef nonnull %i.m, ptr noundef nonnull %i.b, i32 noundef 2) #21
  %cond.fr64 = freeze i1 %i.q
  br i1 %cond.fr64, label %zend_parse_arg_long_ex.exit..critedge.thread93_crit_edge, label %.thread80, !prof !161

zend_parse_arg_long_ex.exit..critedge.thread93_crit_edge: ; preds = %zend_parse_arg_long_ex.exit
  %.pre = load i64, ptr %i.b, align 8, !tbaa !163
  br label %.critedge.thread93

.thread80:                                        ; preds = %zend_parse_arg_long_ex.exit, %zend_parse_arg_str_ex.exit, %bb.b
  %.090 = phi i32 [ 0, %bb.b ], [ 1, %zend_parse_arg_str_ex.exit ], [ 2, %zend_parse_arg_long_ex.exit ]
  %.05289 = phi i32 [ 1, %bb.b ], [ 9, %zend_parse_arg_str_ex.exit ], [ 9, %zend_parse_arg_long_ex.exit ]
  %.05388 = phi ptr [ null, %bb.b ], [ %i.f, %zend_parse_arg_str_ex.exit ], [ %i.m, %zend_parse_arg_long_ex.exit ]
  %.05487 = phi i32 [ 0, %bb.b ], [ 4, %zend_parse_arg_str_ex.exit ], [ 1, %zend_parse_arg_long_ex.exit ]
  call void @zend_wrong_parameter_error(i32 noundef %.05289, i32 noundef %.090, ptr noundef null, i32 noundef %.05487, ptr noundef %.05388) #21
  br label %bb.j

.critedge.thread:                                 ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.r = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null) #21
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !12

bb.f:                                             ; preds = %.critedge.thread
  %i.s = call i64 @time(ptr noundef null) #21
  br label %php_time.exit

bb.g:                                             ; preds = %.critedge.thread
  %i.t = load i64, ptr %3, align 8, !tbaa !13
  br label %php_time.exit

php_time.exit:                                    ; preds = %bb.f, %bb.g
  %.0.i61 = phi i64 [ %i.s, %bb.f ], [ %i.t, %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  store i64 %.0.i61, ptr %i.b, align 8, !tbaa !163
  br label %.critedge.thread93

.critedge.thread93:                               ; preds = %zend_parse_arg_long_ex.exit..critedge.thread93_crit_edge, %.critedge.thread93.critedge, %php_time.exit
  %i.u = phi i64 [ %.pre, %zend_parse_arg_long_ex.exit..critedge.thread93_crit_edge ], [ %i.p, %.critedge.thread93.critedge ], [ %.0.i61, %php_time.exit ] ; 2 uses
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !51
  %i.z = call ptr @timelib_time_ctor() #21        ; 6 uses
  br i1 %2, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge.thread93
  %i.aa = call ptr @get_timezone_info()
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !134
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 232
  store i32 3, ptr %i.ac, align 8, !tbaa !124
  call void @timelib_unixtime2local(ptr noundef %i.z, i64 noundef %i.u) #21
  br label %php_format_date.exit

bb.i:                                             ; preds = %.critedge.thread93
  call void @timelib_unixtime2gmt(ptr noundef %i.z, i64 noundef %i.u) #21
  br label %php_format_date.exit

php_format_date.exit:                             ; preds = %bb.h, %bb.i
  %i.ad = call fastcc ptr @date_format(ptr noundef nonnull readonly %i.w, i64 noundef %i.y, ptr noundef %i.z, i1 noundef zeroext %2) ; 2 uses
  call void @timelib_time_dtor(ptr noundef %i.z) #21
  store ptr %i.ad, ptr %1, align 8, !tbaa !40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !40
  %i.ag = and i32 %i.af, 64
  %.not56 = icmp eq i32 %i.ag, 0
  %i.ah = select i1 %.not56, i32 262, i32 6
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !40
  br label %bb.j

bb.j:                                             ; preds = %.thread80, %php_format_date.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zif_gmdate(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  tail call fastcc void @php_date(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zif_idate(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct.timeval, align 8            ; 4 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !40   ; 2 uses
  %i.e = add i32 %i.d, -3
  %or.cond = icmp ult i32 %i.e, -2
  br i1 %or.cond, label %bb.b, label %bb.c, !prof !160

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 2) #21
end_hunk_0
