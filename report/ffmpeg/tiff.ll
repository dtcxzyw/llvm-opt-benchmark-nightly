Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/tiff?download=true
inline.NumInlined: 42
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 53
begin_hunk_0_@init_image:bb.a
bb.aq:                                            ; preds = %bb.b
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 1124
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !54
  %.not126 = icmp eq i32 %i.ec, 0
  %i.ed = select i1 %.not126, i32 76, i32 77      ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !43 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 136
  store i32 %i.ed, ptr %i.eg, align 8, !tbaa !82
  br label %bb.ax

bb.ar:                                            ; preds = %bb.b
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 1124
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !54
  %.not125 = icmp eq i32 %i.ei, 0
  %i.ej = select i1 %.not125, i32 112, i32 113    ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !43 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 136
  store i32 %i.ej, ptr %i.em, align 8, !tbaa !82
  br label %bb.ax

bb.as:                                            ; preds = %bb.b
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 1124
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !54
  %.not124 = icmp eq i32 %i.eo, 0
  %i.ep = select i1 %.not124, i32 217, i32 218    ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !43 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 136
  store i32 %i.ep, ptr %i.es, align 8, !tbaa !82
  br label %bb.ax

bb.at:                                            ; preds = %bb.b
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 1124
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !54
  %.not123 = icmp eq i32 %i.eu, 0
  %i.ev = select i1 %.not123, i32 219, i32 220    ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !43 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 136
  store i32 %i.ev, ptr %i.ey, align 8, !tbaa !82
  br label %bb.ax

bb.au:                                            ; preds = %bb.b
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 1124
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !54
  %.not122 = icmp eq i32 %i.fa, 0
  %i.fb = select i1 %.not122, i32 174, i32 175    ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !43 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 136
  store i32 %i.fb, ptr %i.fe, align 8, !tbaa !82
  br label %bb.ax

bb.av:                                            ; preds = %bb.b
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 1124
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !54
  %.not = icmp eq i32 %i.fg, 0
  %i.fh = select i1 %.not, i32 176, i32 177       ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !43 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 136
  store i32 %i.fh, ptr %i.fk, align 8, !tbaa !82
  br label %bb.ax

bb.aw:                                            ; preds = %bb.b
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !43
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.fm, i32 noundef 16, ptr noundef nonnull @.str.1824, i32 noundef %i.b, i32 noundef %.pre158) #16
  br label %.loopexit

bb.ax:                                            ; preds = %bb.e, %bb.ae, %bb.y, %bb.ab, %bb.ad, %bb.ac, %bb.aa, %bb.w, %bb.o, %bb.p, %bb.q, %bb.r, %bb.i, %bb.j, %bb.k, %bb.l, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.ak, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.g, %bb.f, %bb.d
  %i.fn = phi i32 [ 11, %bb.e ], [ %i.fh, %bb.av ], [ 10, %bb.d ], [ %i.ac, %bb.f ], [ 166, %bb.g ], [ 140, %bb.i ], [ 139, %bb.j ], [ 141, %bb.k ], [ 142, %bb.l ], [ 145, %bb.o ], [ 143, %bb.p ], [ 147, %bb.q ], [ 149, %bb.r ], [ 5, %bb.w ], [ 4, %bb.y ], [ 7, %bb.aa ], [ 31, %bb.ab ], [ 0, %bb.ac ], [ 6, %bb.ad ], [ 2, %bb.ae ], [ %i.cj, %bb.af ], [ 56, %bb.ag ], [ %i.cs, %bb.ah ], [ %i.cz, %bb.ai ], [ 26, %bb.ak ], [ %i.dl, %bb.am ], [ %i.dr, %bb.an ], [ 71, %bb.ao ], [ 111, %bb.ap ], [ %i.ed, %bb.aq ], [ %i.ej, %bb.ar ], [ %i.ep, %bb.as ], [ %i.ev, %bb.at ], [ %i.fb, %bb.au ]
  %i.fo = phi ptr [ %i.w, %bb.e ], [ %i.fj, %bb.av ], [ %i.t, %bb.d ], [ %i.ae, %bb.f ], [ %i.ah, %bb.g ], [ %i.am, %bb.i ], [ %i.am, %bb.j ], [ %i.am, %bb.k ], [ %i.am, %bb.l ], [ %i.au, %bb.o ], [ %i.au, %bb.p ], [ %i.au, %bb.q ], [ %i.au, %bb.r ], [ %i.bh, %bb.w ], [ %i.bm, %bb.y ], [ %i.br, %bb.aa ], [ %i.bu, %bb.ab ], [ %i.bx, %bb.ac ], [ %i.ca, %bb.ad ], [ %i.cf, %bb.ae ], [ %i.cl, %bb.af ], [ %i.co, %bb.ag ], [ %i.cu, %bb.ah ], [ %i.db, %bb.ai ], [ %i.dh, %bb.ak ], [ %i.dn, %bb.am ], [ %i.dt, %bb.an ], [ %i.dw, %bb.ao ], [ %i.dz, %bb.ap ], [ %i.ef, %bb.aq ], [ %i.el, %bb.ar ], [ %i.er, %bb.as ], [ %i.ex, %bb.at ], [ %i.fd, %bb.au ]
  %.not138 = phi i1 [ %.not133, %bb.e ], [ true, %bb.av ], [ true, %bb.d ], [ true, %bb.f ], [ true, %bb.g ], [ true, %bb.i ], [ true, %bb.j ], [ true, %bb.k ], [ true, %bb.l ], [ true, %bb.o ], [ true, %bb.p ], [ true, %bb.q ], [ true, %bb.r ], [ true, %bb.w ], [ true, %bb.y ], [ true, %bb.aa ], [ true, %bb.ab ], [ true, %bb.ac ], [ true, %bb.ad ], [ true, %bb.ae ], [ true, %bb.af ], [ true, %bb.ag ], [ true, %bb.ah ], [ true, %bb.ai ], [ true, %bb.ak ], [ true, %bb.am ], [ true, %bb.an ], [ true, %bb.ao ], [ true, %bb.ap ], [ true, %bb.aq ], [ true, %bb.ar ], [ true, %bb.as ], [ true, %bb.at ], [ true, %bb.au ]
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 1132
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !57
  %i.fr = icmp eq i32 %i.fq, 6
  br i1 %i.fr, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ft = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.fn) #16 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !85
  %i.fw = and i64 %i.fv, 48
  %or.cond.not = icmp eq i64 %i.fw, 16
  br i1 %or.cond.not, label %bb.az, label %.critedge

bb.az:                                            ; preds = %bb.ay
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fy = load i8, ptr %i.fx, align 8, !tbaa !86
  %i.fz = icmp ult i8 %i.fy, 3
  br i1 %i.fz, label %.critedge, label %._crit_edge

._crit_edge:                                      ; preds = %bb.az
  %.pre = load ptr, ptr %i.fs, align 8, !tbaa !43
  br label %bb.ba

.critedge:                                        ; preds = %bb.az, %bb.ay
  %i.ga = load ptr, ptr %i.fs, align 8, !tbaa !43
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ga, i32 noundef 16, ptr noundef nonnull @.str.1825) #16
  br label %.loopexit

bb.ba:                                            ; preds = %._crit_edge, %bb.ax
  %i.gb = phi ptr [ %.pre, %._crit_edge ], [ %i.fo, %bb.ax ] ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !65 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 112
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !88
  %.not136 = icmp eq i32 %i.gd, %i.gg
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !66 ; 2 uses
  br i1 %.not136, label %bb.bb, label %._crit_edge151

bb.bb:                                            ; preds = %bb.ba
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gb, i64 116
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !89
  %.not137 = icmp eq i32 %i.gi, %i.gk
  br i1 %.not137, label %bb.bc, label %._crit_edge151

._crit_edge151:                                   ; preds = %bb.ba, %bb.bb
  %i.gl = tail call i32 @ff_set_dimensions(ptr noundef nonnull %i.gb, i32 noundef %i.gd, i32 noundef %i.gi) #16 ; 2 uses
  %i.gm = icmp slt i32 %i.gl, 0
  br i1 %i.gm, label %.loopexit, label %._crit_edge154

._crit_edge154:                                   ; preds = %._crit_edge151
  %.pre155 = load ptr, ptr %i.ge, align 8, !tbaa !43
  br label %bb.bc

bb.bc:                                            ; preds = %._crit_edge154, %bb.bb
  %i.gn = phi ptr [ %.pre155, %._crit_edge154 ], [ %i.gb, %bb.bb ] ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 704
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !276
  %i.gq = icmp sgt i32 %i.gp, 47
  br i1 %i.gq, label %.loopexit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gr = tail call i32 @ff_thread_get_buffer(ptr noundef nonnull %i.gn, ptr noundef %1, i32 noundef 0) #16 ; 2 uses
  %i.gs = icmp slt i32 %i.gr, 0
  br i1 %i.gs, label %.loopexit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gt = load ptr, ptr %i.ge, align 8, !tbaa !43
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 136
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !82
  %i.gw = icmp eq i32 %i.gv, 11
  br i1 %i.gw, label %bb.bf, label %.loopexit

bb.bf:                                            ; preds = %bb.be
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !72 ; 2 uses
  br i1 %.not138, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.gy, ptr noundef nonnull align 8 dereferenceable(1024) %i.gz, i64 1024, i1 false)
  br label %.loopexit

bb.bh:                                            ; preds = %bb.bf
  %i.ha = load i32, ptr %i.a, align 8, !tbaa !55  ; 2 uses
  %.not149 = icmp eq i32 %i.ha, 31
  br i1 %.not149, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.bh
  %i.hb = shl nuw nsw i32 1, %i.ha
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.hc = phi i32 [ %i.hb, %.lr.ph.preheader ], [ %i.hl, %.lr.ph ]
  %i.hd = add nsw i32 %i.hc, -1
  %i.he = trunc i64 %indvars.iv to i32
  %i.hf = mul i32 %i.he, 255
  %i.hg = udiv i32 %i.hf, %i.hd
  %i.hh = mul nuw nsw i32 %i.hg, 65793
  %i.hi = or i32 %i.hh, -16777216
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv
  store i32 %i.hi, ptr %i.hj, align 4, !tbaa !33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hk = load i32, ptr %i.a, align 8, !tbaa !55
  %i.hl = shl nuw i32 1, %i.hk                    ; 2 uses
  %i.hm = sext i32 %i.hl to i64
  %i.hn = icmp slt i64 %indvars.iv.next, %i.hm
  br i1 %i.hn, label %.lr.ph, label %.loopexit, !llvm.loop !275

.loopexit:                                        ; preds = %.lr.ph, %bb.bh, %bb.be, %bb.bg, %bb.bd, %bb.bc, %._crit_edge151, %.critedge, %bb.aw, %bb.al, %.thread146, %bb.s, %bb.m, %._crit_edge156
  %.1 = phi i32 [ -1094995529, %._crit_edge156 ], [ -1094995529, %bb.aw ], [ -1163346256, %bb.al ], [ %i.gl, %._crit_edge151 ], [ 0, %bb.bc ], [ %i.gr, %bb.bd ], [ -1094995529, %.critedge ], [ -1163346256, %bb.m ], [ -1163346256, %bb.s ], [ -1163346256, %.thread146 ], [ 1, %bb.be ], [ 1, %bb.bg ], [ 1, %bb.bh ], [ 1, %.lr.ph ]
  ret i32 %.1
}

declare void @avpriv_report_missing_feature(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @dng_decode_tiles(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 132524 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !71   ; 4 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 132528 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !70   ; 4 uses
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %3 = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %4 = load i32, ptr %3, align 8, !tbaa !65       ; 2 uses
  %5 = srem i32 %4, %i.d
  %.not = icmp ne i32 %5, 0
  %6 = getelementptr inbounds nuw i8, ptr %i.b, i64 84 ; 2 uses
  %7 = load i32, ptr %6, align 4, !tbaa !66       ; 2 uses
  %8 = srem i32 %7, %i.g
  %.not74.a = icmp ne i32 %8, 0
  %9 = add nsw i32 %i.d, -1
  %10 = add i32 %9, %4
  %11 = sdiv i32 %10, %i.d                        ; 4 uses
  %12 = add nsw i32 %i.g, -1
  %13 = add i32 %12, %7
  %14 = sdiv i32 %13, %i.g                        ; 2 uses
  %i.i = mul nsw i32 %14, %11                     ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %15 = add nsw i32 %11, -1
  %16 = add nsw i32 %14, -1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 132520
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 1124 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 132516
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.k
  %.085 = phi i32 [ 0, %.lr.ph ], [ %spec.select78, %bb.k ] ; 2 uses
  %.06584 = phi i32 [ 0, %.lr.ph ], [ %spec.select, %bb.k ] ; 2 uses
  %.06983 = phi i32 [ 0, %.lr.ph ], [ %i.bq, %bb.k ] ; 4 uses
  %i.q = srem i32 %.06983, %11
  %i.r = sdiv i32 %.06983, %11
  %i.s = icmp eq i32 %i.q, %15                    ; 3 uses
  %or.cond = select i1 %.not, i1 %i.s, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = load i32, ptr %3, align 8, !tbaa !65
  %i.u = load i32, ptr %i.c, align 4, !tbaa !71
  %i.v = srem i32 %i.t, %i.u
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.w = load i32, ptr %i.c, align 4, !tbaa !71
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.068 = phi i32 [ %i.v, %bb.e ], [ %i.w, %bb.f ] ; 2 uses
  %i.x = icmp eq i32 %i.r, %16
  %or.cond77 = select i1 %.not74.a, i1 %i.x, i1 false
  br i1 %or.cond77, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load i32, ptr %6, align 4, !tbaa !66
  %i.z = load i32, ptr %i.f, align 8, !tbaa !70
  %i.aa = srem i32 %i.y, %i.z
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ab = load i32, ptr %i.f, align 8, !tbaa !70
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.067 = phi i32 [ %i.aa, %bb.h ], [ %i.ab, %bb.i ] ; 2 uses
  %i.ac = load i32, ptr %i.k, align 8, !tbaa !68
  %i.ad = shl i32 %.06983, 2                      ; 2 uses
  %i.ae = add i32 %i.ac, %i.ad                    ; 2 uses
  %i.af = load ptr, ptr %i.m, align 8, !tbaa !53
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !52  ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = trunc i64 %i.aj to i32
  %i.al = icmp slt i32 %i.ae, 0
  %..i = tail call i32 @llvm.smin.i32(i32 %i.ae, i32 %i.ak)
  %.0.i = select i1 %i.al, i32 0, i32 %..i
  %i.am = sext i32 %.0.i to i64
  %i.an = getelementptr inbounds i8, ptr %i.ag, i64 %i.am
  store ptr %i.an, ptr %i.l, align 8, !tbaa !51
  %i.ao = load i32, ptr %i.o, align 4, !tbaa !54
  %i.ap = tail call i32 @ff_tget_long(ptr noundef nonnull %i.l, i32 noundef %i.ao) #16 ; 2 uses
  %i.aq = load i32, ptr %i.p, align 4, !tbaa !69
  %i.ar = add i32 %i.aq, %i.ad                    ; 2 uses
  %i.as = load ptr, ptr %i.m, align 8, !tbaa !53
  %i.at = load ptr, ptr %i.n, align 8, !tbaa !52  ; 2 uses
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = icmp slt i32 %i.ar, 0
  %..i79 = tail call i32 @llvm.smin.i32(i32 %i.ar, i32 %i.ax)
  %.0.i80 = select i1 %i.ay, i32 0, i32 %..i79
  %i.az = sext i32 %.0.i80 to i64
  %i.ba = getelementptr inbounds i8, ptr %i.at, i64 %i.az
  store ptr %i.ba, ptr %i.l, align 8, !tbaa !51
  %i.bb = load i32, ptr %i.o, align 4, !tbaa !54
  %i.bc = tail call i32 @ff_tget_long(ptr noundef nonnull %i.l, i32 noundef %i.bb) #16
  %i.bd = load ptr, ptr %i.m, align 8, !tbaa !53
  %i.be = load ptr, ptr %i.n, align 8, !tbaa !52  ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = icmp slt i32 %i.ap, 0
  %..i81 = tail call i32 @llvm.smin.i32(i32 %i.ap, i32 %i.bi)
  %.0.i82 = select i1 %i.bj, i32 0, i32 %..i81
  %i.bk = sext i32 %.0.i82 to i64
  %i.bl = getelementptr inbounds i8, ptr %i.be, i64 %i.bk
  store ptr %i.bl, ptr %i.l, align 8, !tbaa !51
  %i.bm = tail call fastcc i32 @dng_decode_jpeg(ptr noundef %0, ptr noundef %1, i32 noundef %i.bc, i32 noundef %.06584, i32 noundef %.085, i32 noundef %.068, i32 noundef %.067) ; 2 uses
  %i.bn = icmp slt i32 %i.bm, 0
  br i1 %i.bn, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = add nsw i32 %.068, %.06584
  %spec.select = select i1 %i.s, i32 0, i32 %i.bo
  %i.bp = select i1 %i.s, i32 %.067, i32 0
  %spec.select78 = add nsw i32 %i.bp, %.085
  %i.bq = add nuw nsw i32 %.06983, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.bq, %i.i
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !277

._crit_edge:                                      ; preds = %bb.k, %bb.c
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i32 1, ptr %i.br, align 8, !tbaa !278
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 276 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !279
  %i.bu = or i32 %i.bt, 2
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !279
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !50
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %bb.a, %bb.b, %._crit_edge
  %.070 = phi i32 [ %i.bw, %._crit_edge ], [ -1094995529, %bb.a ], [ -1094995529, %bb.b ], [ %i.bm, %bb.j ]
  ret i32 %.070
}

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #2

declare i32 @ff_tget(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @av_freep(ptr noundef) local_unnamed_addr #2

declare void @av_free(ptr noundef) local_unnamed_addr #2

declare i32 @ff_decode_exif_attach_ifd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @av_strerror(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #7

declare i32 @ff_tread_tag(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @add_metadata(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #1 {
bb.a:
  switch i32 %1, label %bb.e [
    i32 12, label %bb.b
    i32 3, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 1124
  %i.c = load i32, ptr %i.b, align 4, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 312
  %i.e = tail call i32 @ff_tadd_doubles_metadata(i32 noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %i.a, i32 noundef %i.c, ptr noundef nonnull %i.d) #16
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 1124
  %i.h = load i32, ptr %i.g, align 4, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 312
  %i.j = tail call i32 @ff_tadd_shorts_metadata(i32 noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %i.f, i32 noundef %i.h, i32 noundef 0, ptr noundef nonnull %i.i) #16
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 1124
  %i.m = load i32, ptr %i.l, align 4, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 312
  %i.o = tail call i32 @ff_tadd_string_metadata(i32 noundef %0, ptr noundef %2, ptr noundef nonnull %i.k, i32 noundef %i.m, ptr noundef nonnull %i.n) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %i.o, %bb.d ], [ %i.e, %bb.b ], [ %i.j, %bb.c ], [ -1094995529, %bb.a ]
  ret i32 %.0
}

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define internal fastcc ptr @get_geokey_val(i32 noundef %0, i16 noundef zeroext %1) unnamed_addr #8 {
bb.a:
  %i.a = zext i16 %1 to i32                       ; 4 uses
  switch i16 %1, label %bb.c [
    i16 0, label %search_keyval.exit
    i16 32767, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %search_keyval.exit

bb.c:                                             ; preds = %bb.a
  switch i32 %0, label %search_keyval.exit [
    i32 1024, label %bb.d
    i32 1025, label %bb.f
    i32 2052, label %bb.h
    i32 3076, label %bb.h
    i32 4099, label %bb.h
    i32 2054, label %bb.j
    i32 2060, label %bb.j
    i32 2048, label %bb.l
    i32 2050, label %bb.q
    i32 2056, label %bb.v
    i32 2051, label %bb.x
    i32 3072, label %.lr.ph.i.i
    i32 3074, label %.lr.ph.i.i58
    i32 3075, label %bb.af
    i32 4096, label %bb.ah
  ]

bb.d:                                             ; preds = %bb.c
  %i.b = icmp ult i16 %1, 4
  br i1 %i.b, label %bb.e, label %search_keyval.exit

bb.e:                                             ; preds = %bb.d
  %i.c = zext nneg i16 %1 to i64
  %i.d = getelementptr [8 x i8], ptr @tiff_gt_model_type_codes, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72
  br label %search_keyval.exit

bb.f:                                             ; preds = %bb.c
  %i.g = icmp ult i16 %1, 3
  br i1 %i.g, label %bb.g, label %search_keyval.exit

bb.g:                                             ; preds = %bb.f
  %i.h = zext nneg i16 %1 to i64
  %i.i = getelementptr [8 x i8], ptr @tiff_gt_raster_type_codes, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 -8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !72
  br label %search_keyval.exit

bb.h:                                             ; preds = %bb.c, %bb.c, %bb.c
  %i.l = add i16 %1, -9001
  %or.cond = icmp ult i16 %i.l, 15
end_hunk_0
