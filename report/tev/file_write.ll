Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/file_write?download=true
inline.NumInlined: 126
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN6LibRaw14write_ppm_tiffEv:bb.a
  store ptr %i.bz, ptr %i.bw, align 8, !tbaa !115
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.by, i8 0, i64 %i.bu, i1 false), !tbaa !72
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEEC2Em.exit

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ca = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.cb = load ptr, ptr %2, align 8, !tbaa !114   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i, label %.body, label %.body.sink.split

_ZNSt3__16vectorIhNS_9allocatorIhEEEC2Em.exit:    ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endEm.exit.i, %bb.j
  %i.cc = phi ptr [ %i.by, %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endEm.exit.i ], [ null, %bb.j ] ; 12 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 5444 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !116
  %.not63 = icmp eq i32 %i.ce, 0
  br i1 %.not63, label %bb.r, label %bb.o

bb.o:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEEC2Em.exit
  invoke void @_ZN6LibRaw9tiff_headEP8tiff_hdri(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %1, i32 noundef 1)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 381600 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !117
  %i.ch = call i64 @fwrite(ptr noundef nonnull %1, i64 noundef 1376, i64 noundef 1, ptr noundef %i.cg) ; 0 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 381680
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !84 ; 3 uses
  %.not69 = icmp eq ptr %i.cj, null
  br i1 %.not69, label %bb.y, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !77
  %i.cl = call noundef i32 @llvm.bswap.i32(i32 %i.ck)
  %i.cm = zext i32 %i.cl to i64
  %i.cn = load ptr, ptr %i.cf, align 8, !tbaa !117
  %i.co = call i64 @fwrite(ptr noundef nonnull %i.cj, i64 noundef %i.cm, i64 noundef 1, ptr noundef %i.cn) ; 0 uses
  br label %bb.y

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ag, %bb.o
  %lpad.loopexit.split-lp193 = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %.not.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i, label %.body, label %.body.sink.split

bb.r:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEEC2Em.exit
  %i.cp = load i32, ptr %i.bn, align 4, !tbaa !82 ; 4 uses
  %i.cq = icmp sgt i32 %i.cp, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 5448
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !118
  %i.ct = and i32 %i.cs, 1
  %.not66 = icmp eq i32 %i.ct, 0                  ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 381600
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !117 ; 4 uses
  br i1 %i.cq, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  br i1 %.not66, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 192688
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 192692
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !78
  %i.cz = fpext float %i.cy to double
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 192704
  %i.db = load i64, ptr %i.da, align 8, !tbaa !119
  %i.dc = load float, ptr %i.cw, align 8, !tbaa !85
  %i.dd = fptosi float %i.dc to i32
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 192696
  %i.df = load <2 x float>, ptr %i.de, align 8, !tbaa !79
  %i.dg = fpext <2 x float> %i.df to <2 x double> ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.dj = load i16, ptr %i.b, align 2, !tbaa !80
  %i.dk = zext i16 %i.dj to i32
  %i.dl = load i16, ptr %i.e, align 4, !tbaa !81
  %i.dm = zext i16 %i.dl to i32
  %i.dn = load i32, ptr %i.bq, align 8, !tbaa !83
  %notmask68 = shl nsw i32 -1, %i.dn
  %i.do = xor i32 %notmask68, -1
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.dq = extractelement <2 x double> %i.dg, i64 0
  %i.dr = extractelement <2 x double> %i.dg, i64 1
  %i.ds = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cv, ptr noundef nonnull @.str.5, double noundef %i.cz, i64 noundef %i.db, i32 noundef %i.dd, double noundef %i.dq, double noundef %i.dr, ptr noundef nonnull %i.dh, ptr noundef nonnull %i.di, i32 noundef %i.dk, i32 noundef %i.dm, i32 noundef %i.cp, i32 noundef %i.do, ptr noundef nonnull %i.dp) #17 ; 0 uses
  br label %bb.y

bb.u:                                             ; preds = %bb.s
  %i.dt = load i16, ptr %i.b, align 2, !tbaa !80
  %i.du = zext i16 %i.dt to i32
  %i.dv = load i16, ptr %i.e, align 4, !tbaa !81
  %i.dw = zext i16 %i.dv to i32
  %i.dx = load i32, ptr %i.bq, align 8, !tbaa !83
  %notmask67 = shl nsw i32 -1, %i.dx
  %i.dy = xor i32 %notmask67, -1
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.ea = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cv, ptr noundef nonnull @.str.6, i32 noundef %i.du, i32 noundef %i.dw, i32 noundef %i.cp, i32 noundef %i.dy, ptr noundef nonnull %i.dz) #17 ; 0 uses
  br label %bb.y

bb.v:                                             ; preds = %bb.r
  %i.eb = sdiv i32 %i.cp, 2
  %i.ec = add nsw i32 %i.eb, 5                    ; 2 uses
  br i1 %.not66, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 192688
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 192692
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !78
  %i.eg = fpext float %i.ef to double
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 192704
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !119
  %i.ej = load float, ptr %i.ed, align 8, !tbaa !85
  %i.ek = fptosi float %i.ej to i32
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 192696
  %i.em = load <2 x float>, ptr %i.el, align 8, !tbaa !79
  %i.en = fpext <2 x float> %i.em to <2 x double> ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.eq = load i16, ptr %i.b, align 2, !tbaa !80
  %i.er = zext i16 %i.eq to i32
  %i.es = load i16, ptr %i.e, align 4, !tbaa !81
  %i.et = zext i16 %i.es to i32
  %i.eu = load i32, ptr %i.bq, align 8, !tbaa !83
  %notmask65 = shl nsw i32 -1, %i.eu
  %i.ev = xor i32 %notmask65, -1
  %i.ew = extractelement <2 x double> %i.en, i64 0
  %i.ex = extractelement <2 x double> %i.en, i64 1
  %i.ey = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cv, ptr noundef nonnull @.str.7, i32 noundef %i.ec, double noundef %i.eg, i64 noundef %i.ei, i32 noundef %i.ek, double noundef %i.ew, double noundef %i.ex, ptr noundef nonnull %i.eo, ptr noundef nonnull %i.ep, i32 noundef %i.er, i32 noundef %i.et, i32 noundef %i.ev) #17 ; 0 uses
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.ez = load i16, ptr %i.b, align 2, !tbaa !80
  %i.fa = zext i16 %i.ez to i32
  %i.fb = load i16, ptr %i.e, align 4, !tbaa !81
  %i.fc = zext i16 %i.fb to i32
  %i.fd = load i32, ptr %i.bq, align 8, !tbaa !83
  %notmask = shl nsw i32 -1, %i.fd
  %i.fe = xor i32 %notmask, -1
  %i.ff = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cv, ptr noundef nonnull @.str.8, i32 noundef %i.ec, i32 noundef %i.fa, i32 noundef %i.fc, i32 noundef %i.fe) #17 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.u, %bb.t, %bb.x, %bb.w, %bb.p, %bb.q
  %i.fg = load i32, ptr %i.bh, align 8, !tbaa !70 ; 3 uses
  %i.fh = and i32 %i.fg, 4                        ; 2 uses
  %i.fi = and i32 %i.fg, 2
  %.not12.i = icmp eq i32 %i.fi, 0                ; 4 uses
  %i.fj = load i16, ptr %i.be, align 4
  %i.fk = zext i16 %i.fj to i32                   ; 4 uses
  %i.fl = add nsw i32 %i.fk, -1
  %.111.i = select i1 %.not12.i, i32 0, i32 %i.fl
  %i.fm = and i32 %i.fg, 1
  %.not13.i = icmp eq i32 %i.fm, 0                ; 4 uses
  %i.fn = load i16, ptr %i.bg, align 2
  %i.fo = zext i16 %i.fn to i32                   ; 7 uses
  %i.fp = add nsw i32 %i.fo, -1
  %.1.i = select i1 %.not13.i, i32 0, i32 %i.fp
  %i.fq = mul i32 %.111.i, %i.fo
  %i.fr = add i32 %i.fq, %.1.i                    ; 2 uses
  %.lobit = lshr exact i32 %i.fh, 2               ; 5 uses
  %spec.select14.i = xor i32 %.lobit, 1           ; 2 uses
  %i.fs = xor i32 %.lobit, -1                     ; 2 uses
  %i.ft = add nsw i32 %i.fs, %i.fk
  %.111.i76 = select i1 %.not12.i, i32 %.lobit, i32 %i.ft
  %i.fu = or disjoint i32 %.lobit, -2             ; 2 uses
  %i.fv = add nsw i32 %i.fu, %i.fo
  %.1.i78 = select i1 %.not13.i, i32 %spec.select14.i, i32 %i.fv
  %i.fw = mul i32 %.111.i76, %i.fo
  %i.fx = add i32 %i.fw, %.1.i78
  %i.fy = sub i32 %i.fx, %i.fr                    ; 3 uses
  %i.fz = load i16, ptr %i.e, align 4, !tbaa !81
  %.not124 = icmp eq i16 %i.fz, 0
  br i1 %.not124, label %._crit_edge123, label %.preheader100.lr.ph

.preheader100.lr.ph:                              ; preds = %bb.y
  %.not.i74.not = icmp eq i32 %i.fh, 0            ; 2 uses
  %i.ga = load i16, ptr %i.b, align 2, !tbaa !80
  %i.gb = zext i16 %i.ga to i32                   ; 2 uses
  %spec.select.i87 = select i1 %.not.i74.not, i32 0, i32 %i.gb ; 2 uses
  %i.gc = xor i32 %spec.select.i87, -1
  %i.gd = add nsw i32 %i.gc, %i.fk
  %.111.i90 = select i1 %.not12.i, i32 %spec.select.i87, i32 %i.gd
  %spec.select14.i88 = select i1 %.not.i74.not, i32 %i.gb, i32 0 ; 2 uses
  %i.ge = xor i32 %spec.select14.i88, -1
  %i.gf = add nsw i32 %i.ge, %i.fo
  %.1.i92 = select i1 %.not13.i, i32 %spec.select14.i88, i32 %i.gf
  %i.gg = add nsw i32 %i.fo, %i.fs
  %.1.i85 = select i1 %.not13.i, i32 %.lobit, i32 %i.gg
  %i.gh = add nsw i32 %i.fu, %i.fk
  %.111.i83 = select i1 %.not12.i, i32 %spec.select14.i, i32 %i.gh
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 5600 ; 8 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 381600
  %reass.add = sub nsw i32 %.111.i83, %.111.i90
  %reass.mul = mul i32 %reass.add, %i.fo
  %i.gk = sub nsw i32 %.1.i85, %.1.i92
  %invariant.op = add i32 %i.gk, %reass.mul
  %i.gl = sext i32 %i.fy to i64                   ; 2 uses
  br label %.preheader100

.preheader100:                                    ; preds = %.preheader100.lr.ph, %bb.ah
  %.045122 = phi i32 [ %i.fr, %.preheader100.lr.ph ], [ %.reass, %bb.ah ] ; 4 uses
  %.048121 = phi i32 [ 0, %.preheader100.lr.ph ], [ %i.ko, %bb.ah ]
  %i.gm = load i16, ptr %i.b, align 2, !tbaa !80  ; 6 uses
  %i.gn = zext i16 %i.gm to i32                   ; 3 uses
  %.not125 = icmp eq i16 %i.gm, 0
  %.pre164 = load i32, ptr %i.bq, align 8, !tbaa !83 ; 3 uses
  br i1 %.not125, label %._crit_edge, label %.lr.ph115

.lr.ph115:                                        ; preds = %.preheader100
  %i.go = icmp eq i32 %.pre164, 8
  br i1 %i.go, label %.lr.ph115.split.preheader, label %.lr.ph115.split.us

.lr.ph115.split.preheader:                        ; preds = %.lr.ph115
  %i.gp = sext i32 %.045122 to i64
  %i.gq = load i32, ptr %i.bn, align 4, !tbaa !82 ; 2 uses
  %i.gr = icmp sgt i32 %i.gq, 0
  %i.gs = zext i16 %i.gm to i32                   ; 2 uses
  br label %.preheader

.lr.ph115.split.us:                               ; preds = %.lr.ph115
  %i.gt = load i32, ptr %i.bn, align 4, !tbaa !82 ; 5 uses
  %i.gu = icmp sgt i32 %i.gt, 0
  br i1 %i.gu, label %.lr.ph115.split.us.split.us, label %.lr.ph115.split.us.split

.lr.ph115.split.us.split.us:                      ; preds = %.lr.ph115.split.us
  %i.gv = load ptr, ptr %i.a, align 8, !tbaa !120
  %i.gw = sext i32 %.045122 to i64
  %i.gx = zext nneg i32 %i.gt to i64
  %i.gy = zext i16 %i.gm to i64
  %exitcond144.not = icmp eq i32 %i.gt, 1
  %exitcond144.not.1 = icmp eq i32 %i.gt, 2
  %exitcond144.not.2 = icmp eq i32 %i.gt, 3
  br label %.preheader98.us.us

.preheader98.us.us:                               ; preds = %..loopexit99_crit_edge.us.us, %.lr.ph115.split.us.split.us
  %indvars.iv147 = phi i64 [ %indvars.iv.next148, %..loopexit99_crit_edge.us.us ], [ 0, %.lr.ph115.split.us.split.us ] ; 2 uses
  %indvars.iv145 = phi i64 [ %indvars.iv.next146, %..loopexit99_crit_edge.us.us ], [ %i.gw, %.lr.ph115.split.us.split.us ] ; 2 uses
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.gv, i64 %indvars.iv145 ; 4 uses
  %i.ha = mul nuw nsw i64 %indvars.iv147, %i.gx
  %i.hb = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.ha ; 4 uses
  %i.hc = load i16, ptr %i.gz, align 2, !tbaa !71
  %i.hd = zext i16 %i.hc to i64
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %i.gi, i64 %i.hd
  %i.hf = load i16, ptr %i.he, align 2, !tbaa !71
  store i16 %i.hf, ptr %i.hb, align 2, !tbaa !71
  br i1 %exitcond144.not, label %..loopexit99_crit_edge.us.us, label %bb.z

bb.z:                                             ; preds = %.preheader98.us.us
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gz, i64 2
  %i.hh = load i16, ptr %i.hg, align 2, !tbaa !71
  %i.hi = zext i16 %i.hh to i64
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %i.gi, i64 %i.hi
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !71
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hb, i64 2
  store i16 %i.hk, ptr %i.hl, align 2, !tbaa !71
  br i1 %exitcond144.not.1, label %..loopexit99_crit_edge.us.us, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !71
  %i.ho = zext i16 %i.hn to i64
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %i.gi, i64 %i.ho
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !71
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  store i16 %i.hq, ptr %i.hr, align 2, !tbaa !71
  br i1 %exitcond144.not.2, label %..loopexit99_crit_edge.us.us, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gz, i64 6
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !71
  %i.hu = zext i16 %i.ht to i64
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %i.gi, i64 %i.hu
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !71
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hb, i64 6
  store i16 %i.hw, ptr %i.hx, align 2, !tbaa !71
  br label %..loopexit99_crit_edge.us.us

..loopexit99_crit_edge.us.us:                     ; preds = %bb.ab, %bb.aa, %bb.z, %.preheader98.us.us
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %indvars.iv.next146 = add nsw i64 %indvars.iv145, %i.gl ; 2 uses
  %i.hy = icmp samesign ult i64 %indvars.iv.next148, %i.gy
  br i1 %i.hy, label %.preheader98.us.us, label %._crit_edge.loopexit127, !llvm.loop !99

.lr.ph115.split.us.split:                         ; preds = %.lr.ph115.split.us
  %i.hz = add i32 %i.fy, %.045122
  %i.ia = add nsw i32 %i.gn, -1
  %i.ib = mul i32 %i.fy, %i.ia
  %i.ic = add i32 %i.hz, %i.ib
  br label %._crit_edge

.preheader:                                       ; preds = %.loopexit, %.lr.ph115.split.preheader
  %indvars.iv160 = phi i64 [ %i.gp, %.lr.ph115.split.preheader ], [ %indvars.iv.next161, %.loopexit ] ; 2 uses
  %.047111 = phi i32 [ 0, %.lr.ph115.split.preheader ], [ %i.jy, %.loopexit ] ; 5 uses
  br i1 %i.gr, label %.lr.ph110, label %.loopexit

.lr.ph110:                                        ; preds = %.preheader
  %i.id = load ptr, ptr %i.a, align 8, !tbaa !120
  %i.ie = getelementptr inbounds [8 x i8], ptr %i.id, i64 %indvars.iv160 ; 4 uses
  %i.if = load i32, ptr %i.bn, align 4, !tbaa !82 ; 6 uses
  %i.ig = load i16, ptr %i.ie, align 2, !tbaa !71
  %i.ih = zext i16 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %i.gi, i64 %i.ih
  %i.ij = load i16, ptr %i.ii, align 2, !tbaa !71
  %i.ik = lshr i16 %i.ij, 8
  %i.il = trunc nuw i16 %i.ik to i8
  %i.im = mul nuw nsw i32 %i.gq, %.047111
  %i.in = zext nneg i32 %i.im to i64
  %i.io = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.in
  store i8 %i.il, ptr %i.io, align 1, !tbaa !72
  %i.ip = icmp sgt i32 %i.if, 1
  br i1 %i.ip, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %.lr.ph110
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ie, i64 2
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !71
  %i.is = zext i16 %i.ir to i64
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %i.gi, i64 %i.is
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !71
  %i.iv = lshr i16 %i.iu, 8
  %i.iw = trunc nuw i16 %i.iv to i8
  %i.ix = mul nuw nsw i32 %i.if, %.047111
  %i.iy = zext nneg i32 %i.ix to i64
  %i.iz = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.iy
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 1
  store i8 %i.iw, ptr %i.ja, align 1, !tbaa !72
  %.not195 = icmp eq i32 %i.if, 2
  br i1 %.not195, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  %i.jc = load i16, ptr %i.jb, align 2, !tbaa !71
  %i.jd = zext i16 %i.jc to i64
  %i.je = getelementptr inbounds nuw [2 x i8], ptr %i.gi, i64 %i.jd
  %i.jf = load i16, ptr %i.je, align 2, !tbaa !71
  %i.jg = lshr i16 %i.jf, 8
  %i.jh = trunc nuw i16 %i.jg to i8
  %i.ji = mul nuw nsw i32 %i.if, %.047111
  %i.jj = zext nneg i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.jj
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 2
  store i8 %i.jh, ptr %i.jl, align 1, !tbaa !72
  %i.jm = icmp sgt i32 %i.if, 3
  br i1 %i.jm, label %bb.ae, label %.loopexit

bb.ae:                                            ; preds = %bb.ad
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ie, i64 6
  %i.jo = load i16, ptr %i.jn, align 2, !tbaa !71
  %i.jp = zext i16 %i.jo to i64
  %i.jq = getelementptr inbounds nuw [2 x i8], ptr %i.gi, i64 %i.jp
  %i.jr = load i16, ptr %i.jq, align 2, !tbaa !71
  %i.js = lshr i16 %i.jr, 8
  %i.jt = trunc nuw i16 %i.js to i8
  %i.ju = mul nuw nsw i32 %i.if, %.047111
  %i.jv = zext nneg i32 %i.ju to i64
  %i.jw = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.jv
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 3
  store i8 %i.jt, ptr %i.jx, align 1, !tbaa !72
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph110, %bb.ac, %bb.ad, %bb.ae, %.preheader
  %i.jy = add nuw nsw i32 %.047111, 1             ; 2 uses
  %indvars.iv.next161 = add nsw i64 %indvars.iv160, %i.gl ; 2 uses
  %i.jz = icmp samesign ult i32 %i.jy, %i.gs
  br i1 %i.jz, label %.preheader, label %._crit_edge.loopexit, !llvm.loop !100

._crit_edge.loopexit:                             ; preds = %.loopexit
  %i.ka = trunc nsw i64 %indvars.iv.next161 to i32
  br label %._crit_edge

._crit_edge.loopexit127:                          ; preds = %..loopexit99_crit_edge.us.us
  %i.kb = trunc nsw i64 %indvars.iv.next146 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph115.split.us.split, %._crit_edge.loopexit127, %._crit_edge.loopexit, %.preheader100
  %.146.lcssa = phi i32 [ %.045122, %.preheader100 ], [ %i.kb, %._crit_edge.loopexit127 ], [ %i.ka, %._crit_edge.loopexit ], [ %i.ic, %.lr.ph115.split.us.split ]
  %.lcssa = phi i32 [ 0, %.preheader100 ], [ %i.gn, %._crit_edge.loopexit127 ], [ %i.gs, %._crit_edge.loopexit ], [ %i.gn, %.lr.ph115.split.us.split ]
  %i.kc = icmp eq i32 %.pre164, 16
  br i1 %i.kc, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %._crit_edge
  %i.kd = load i32, ptr %i.cd, align 4, !tbaa !116
  %.not70 = icmp eq i32 %i.kd, 0
  br i1 %.not70, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ke = load i32, ptr %i.bn, align 4, !tbaa !82
  %i.kf = shl nuw nsw i32 %.lcssa, 1
  %i.kg = mul i32 %i.kf, %i.ke
  invoke void @_ZN6LibRaw11libraw_swabEPvi(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.cc, i32 noundef %i.kg)
          to label %._crit_edge165 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge165:                                   ; preds = %bb.ag
  %.pre166 = load i32, ptr %i.bq, align 8, !tbaa !83
  %.pre167 = load i16, ptr %i.b, align 2, !tbaa !80
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge165, %bb.af, %._crit_edge
  %3 = phi i16 [ %.pre167, %._crit_edge165 ], [ %i.gm, %bb.af ], [ %i.gm, %._crit_edge ]
  %4 = phi i32 [ %.pre166, %._crit_edge165 ], [ 16, %bb.af ], [ %.pre164, %._crit_edge ]
  %i.kh = load i32, ptr %i.bn, align 4, !tbaa !82
  %i.ki = mul nsw i32 %4, %i.kh
  %i.kj = sdiv i32 %i.ki, 8
  %i.kk = sext i32 %i.kj to i64
  %i.kl = zext i16 %3 to i64
  %i.km = load ptr, ptr %i.gj, align 8, !tbaa !117
  %i.kn = call i64 @fwrite(ptr noundef %i.cc, i64 noundef %i.kk, i64 noundef %i.kl, ptr noundef %i.km) ; 0 uses
  %i.ko = add nuw nsw i32 %.048121, 1             ; 2 uses
  %.reass = add i32 %.146.lcssa, %invariant.op
  %i.kp = load i16, ptr %i.e, align 4, !tbaa !81
  %i.kq = zext i16 %i.kp to i32
  %i.kr = icmp samesign ult i32 %i.ko, %i.kq
  br i1 %i.kr, label %.preheader100, label %._crit_edge123, !llvm.loop !101

._crit_edge123:                                   ; preds = %bb.ah, %bb.y
  %.not.i.i93 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i93, label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit94, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge123
  %i.ks = load ptr, ptr %i.bw, align 8, !tbaa !115
  %i.kt = ptrtoint ptr %i.ks to i64
  %i.ku = ptrtoint ptr %i.cc to i64
  %i.kv = sub i64 %i.kt, %i.ku
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.kv) #21
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit94

_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit94: ; preds = %._crit_edge123, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void

.body.sink.split:                                 ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.n
  %.sink190 = phi ptr [ %i.cb, %bb.n ], [ %i.cc, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.pn.ph = phi { ptr, i32 } [ %i.ca, %bb.n ], [ %lpad.loopexit.split-lp193, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  store ptr %.sink190, ptr %i.bv, align 8, !tbaa !122
  %i.kw = load ptr, ptr %i.bw, align 8, !tbaa !115
  %i.kx = ptrtoint ptr %i.kw to i64
  %i.ky = ptrtoint ptr %.sink190 to i64
  %i.kz = sub i64 %i.kx, %i.ky
  call void @_ZdlPvm(ptr noundef nonnull %.sink190, i64 noundef %i.kz) #21
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ca, %bb.n ], [ %lpad.loopexit.split-lp193, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.aj

bb.aj:                                            ; preds = %.body, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bk, %bb.i ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.la = call ptr @__cxa_begin_catch(ptr %.1) #17 ; 0 uses
  %i.lb = call ptr @__cxa_allocate_exception(i64 4) #17 ; 2 uses
  store i32 1, ptr %i.lb, align 16, !tbaa !124
  invoke void @__cxa_throw(ptr nonnull %i.lb, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #19
          to label %bb.an unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.lc = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %bb.ak
  resume { ptr, i32 } %i.lc

bb.am:                                            ; preds = %bb.ak
  %i.ld = landingpad { ptr, i32 }
          catch ptr null
  %i.le = extractvalue { ptr, i32 } %i.ld, 0
  call void @__clang_call_terminate(ptr %i.le) #22
  unreachable

bb.an:                                            ; preds = %bb.aj
  unreachable
}

declare void @_ZN6LibRaw11gamma_curveEddii(ptr noundef nonnull align 8 dereferenceable(768512), double noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #7

declare void @_ZN6LibRaw11libraw_swabEPvi(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #9

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #17 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str.9) #19
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef %0) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZNSt12length_errorC2B8ne180100EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #17
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt12length_errorC2B8ne180100EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12length_error, i64 16), ptr %0, align 8, !tbaa !126
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #6

declare void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { noreturn }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { builtin nounwind }
attributes #22 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 short", !8, i64 0}
!10 = !{!"short", !4, i64 0}
!11 = !{!"double", !4, i64 0}
!12 = !{!"_ZTS20libraw_image_sizes_t", !10, i64 0, !10, i64 2, !10, i64 4, !10, i64 6, !10, i64 8, !10, i64 10, !10, i64 12, !10, i64 14, !5, i64 16, !11, i64 24, !5, i64 32, !4, i64 36, !10, i64 164, !4, i64 166}
!13 = !{!"p1 omnipotent char", !8, i64 0}
!14 = !{!"_ZTS16libraw_iparams_t", !4, i64 0, !4, i64 4, !4, i64 68, !4, i64 132, !4, i64 196, !4, i64 260, !5, i64 324, !5, i64 328, !5, i64 332, !5, i64 336, !5, i64 340, !5, i64 344, !4, i64 348, !4, i64 384, !4, i64 420, !5, i64 428, !13, i64 432}
!15 = !{!"float", !4, i64 0}
!16 = !{!"_ZTS18libraw_nikonlens_t", !15, i64 0, !4, i64 4, !4, i64 5, !4, i64 6, !4, i64 7}
!17 = !{!"_ZTS16libraw_dnglens_t", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12}
!18 = !{!"long long", !4, i64 0}
!19 = !{!"_ZTS24libraw_makernotes_lens_t", !18, i64 0, !4, i64 8, !10, i64 136, !10, i64 138, !18, i64 144, !10, i64 152, !10, i64 154, !4, i64 156, !10, i64 220, !4, i64 222, !4, i64 238, !15, i64 256, !15, i64 260, !15, i64 264, !15, i64 268, !15, i64 272, !15, i64 276, !15, i64 280, !15, i64 284, !15, i64 288, !15, i64 292, !15, i64 296, !15, i64 300, !15, i64 304, !15, i64 308, !15, i64 312, !18, i64 320, !4, i64 328, !18, i64 456, !4, i64 464, !18, i64 592, !4, i64 600, !10, i64 728, !15, i64 732}
!20 = !{!"_ZTS17libraw_lensinfo_t", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !4, i64 20, !4, i64 148, !4, i64 276, !4, i64 404, !10, i64 532, !16, i64 536, !17, i64 544, !19, i64 560}
!21 = !{!"_ZTS13libraw_area_t", !10, i64 0, !10, i64 2, !10, i64 4, !10, i64 6}
!22 = !{!"_ZTS25libraw_canon_makernotes_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !4, i64 16, !5, i64 32, !4, i64 36, !10, i64 52, !10, i64 54, !4, i64 56, !10, i64 58, !10, i64 60, !10, i64 62, !10, i64 64, !10, i64 66, !10, i64 68, !10, i64 70, !10, i64 72, !10, i64 74, !10, i64 76, !10, i64 78, !10, i64 80, !10, i64 82, !5, i64 84, !15, i64 88, !10, i64 92, !10, i64 94, !10, i64 96, !10, i64 98, !5, i64 100, !10, i64 104, !5, i64 108, !5, i64 112, !10, i64 116, !5, i64 120, !21, i64 124, !21, i64 132, !21, i64 140, !21, i64 148, !21, i64 156, !4, i64 164}
end_hunk_0
