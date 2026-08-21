Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/pe_icons?download=true
inline.NumInlined: 21
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 26
begin_hunk_0_@getmetrics:bb.a
  %i.dz = add i32 %i.p, %i.de
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !57 ; 3 uses
  %i.ed = and i32 %i.ec, 255                      ; 4 uses
  %i.ee = lshr i32 %i.ec, 16
  %i.ef = lshr i32 %i.ec, 8
  %i.eg = and i32 %i.ee, 255                      ; 4 uses
  %i.eh = and i32 %i.ef, 255                      ; 4 uses
  %..i1027 = tail call i32 @llvm.umin.i32(i32 %i.eh, i32 %i.ed)
  %spec.select.i1028 = tail call i32 @llvm.umin.i32(i32 %i.eg, i32 %..i1027) ; 2 uses
  %.44.i1029 = tail call i32 @llvm.umax.i32(i32 %i.eh, i32 %i.ed)
  %i.ei = tail call i32 @llvm.umax.i32(i32 %i.eg, i32 %.44.i1029) ; 7 uses
  %i.ej = sub nsw i32 %i.ei, %spec.select.i1028   ; 4 uses
  %.not.i1030 = icmp eq i32 %i.ei, %spec.select.i1028
  br i1 %.not.i1030, label %hsv.exit1032, label %bb.k

bb.k:                                             ; preds = %hsv.exit1026
  %i.ek = mul nsw i32 %i.ej, 255
  %i.el = udiv i32 %i.ek, %i.ei
  br label %hsv.exit1032

hsv.exit1032:                                     ; preds = %hsv.exit1026, %bb.k
  %storemerge.i1031 = phi i32 [ %i.el, %bb.k ], [ 0, %hsv.exit1026 ] ; 4 uses
  %i.em = mul i32 %storemerge.i1031, %i.ei
  %i.en = mul i32 %i.em, %storemerge.i1031
  %i.eo = uitofp i32 %i.en to double
  %sqrt1099 = tail call double @llvm.sqrt.f64(double %i.eo)
  %i.ep = fptoui double %sqrt1099 to i32
  %i.eq = add i32 %i.dx, %i.ep                    ; 2 uses
  %i.er = add i32 %i.dy, %i.ei                    ; 2 uses
  br i1 %i.v, label %bb.m, label %bb.l

bb.l:                                             ; preds = %hsv.exit1032
  %i.es = icmp eq i64 %indvars.iv, %i.u
  %i.et = icmp ugt i32 %storemerge.i1031, 85
  %or.cond5 = and i1 %i.es, %i.et
  %i.eu = icmp samesign ugt i32 %i.ei, 85
  %or.cond1096 = select i1 %or.cond5, i1 %i.eu, i1 false
  br i1 %or.cond1096, label %bb.n, label %bb.o

bb.m:                                             ; preds = %hsv.exit1032
  %.old4 = icmp ugt i32 %storemerge.i1031, 85
  %.old = icmp samesign ugt i32 %i.ei, 85
  %or.cond1097 = select i1 %.old4, i1 %.old, i1 false
  br i1 %or.cond1097, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ev = sub nsw i32 %i.eh, %i.ed
  %i.ew = sub nsw i32 %i.eg, %i.ed
  %i.ex = sub nsw i32 %i.eg, %i.eh
  %i.ey = tail call i32 @llvm.abs.i32(i32 %i.ex, i1 true)
  %i.ez = tail call i32 @llvm.abs.i32(i32 %i.ew, i1 true)
  %i.fa = tail call i32 @llvm.abs.i32(i32 %i.ev, i1 true)
  %i.fb = mul nuw nsw i32 %i.ey, 100
  %i.fc = mul nuw nsw i32 %i.ez, 100
  %i.fd = mul nuw nsw i32 %i.fa, 100
  %i.fe = udiv i32 %i.fb, %i.ej
  %i.ff = udiv i32 %i.fc, %i.ej
  %i.fg = udiv i32 %i.fd, %i.ej
  %i.fh = load <4 x i32>, ptr %i.r, align 8, !tbaa !57
  %i.fi = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, i32 %i.fg, i64 0
  %i.fj = insertelement <4 x i32> %i.fi, i32 %i.ff, i64 1
  %i.fk = insertelement <4 x i32> %i.fj, i32 %i.fe, i64 2
  %i.fl = sub <4 x i32> %i.fh, %i.fk
  %i.fm = add <4 x i32> %i.fl, <i32 100, i32 100, i32 100, i32 1>
  store <4 x i32> %i.fm, ptr %i.r, align 8, !tbaa !57
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit1154, label %.lr.ph

.lr.ph1166.preheader:                             ; preds = %bb.i
  %i.fn = load i32, ptr %i.ai, align 4, !tbaa !57
  %i.fo = load i32, ptr %i.ae, align 4, !tbaa !57
  br label %.lr.ph1166

.lr.ph1166:                                       ; preds = %.lr.ph1166.preheader, %bb.s
  %indvars.iv1495 = phi i64 [ 0, %.lr.ph1166.preheader ], [ %indvars.iv.next1496, %bb.s ] ; 2 uses
  %.38981165 = phi i32 [ %i.fn, %.lr.ph1166.preheader ], [ %i.hc, %bb.s ]
  %.39031164 = phi i32 [ %i.fo, %.lr.ph1166.preheader ], [ %i.hb, %bb.s ]
  %i.fp = trunc nuw nsw i64 %indvars.iv1495 to i32 ; 2 uses
  %i.fq = add i32 %i.ac, %i.fp
  %i.fr = zext i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fr
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !57 ; 3 uses
  %i.fu = lshr i32 %i.ft, 16
  %i.fv = and i32 %i.fu, 255                      ; 2 uses
  %i.fw = lshr i32 %i.ft, 8
  %i.fx = and i32 %i.fw, 255                      ; 2 uses
  %i.fy = and i32 %i.ft, 255                      ; 2 uses
  %..i1033 = tail call i32 @llvm.umin.i32(i32 %i.fx, i32 %i.fy)
  %spec.select.i1034 = tail call i32 @llvm.umin.i32(i32 %i.fv, i32 %..i1033) ; 2 uses
  %.44.i1035 = tail call i32 @llvm.umax.i32(i32 %i.fx, i32 %i.fy)
  %i.fz = tail call i32 @llvm.umax.i32(i32 %i.fv, i32 %.44.i1035) ; 5 uses
  %.not.i1036 = icmp eq i32 %i.fz, %spec.select.i1034
  br i1 %.not.i1036, label %hsv.exit1038, label %bb.p

bb.p:                                             ; preds = %.lr.ph1166
  %i.ga = sub nsw i32 %i.fz, %spec.select.i1034
  %i.gb = mul nsw i32 %i.ga, 255
  %i.gc = udiv i32 %i.gb, %i.fz                   ; 2 uses
  %i.gd = mul i32 %i.gc, %i.fz
  %i.ge = mul i32 %i.gd, %i.gc
  %i.gf = uitofp i32 %i.ge to double
  %i.gg = tail call double @llvm.sqrt.f64(double %i.gf)
  %i.gh = fptoui double %i.gg to i32
  br label %hsv.exit1038

hsv.exit1038:                                     ; preds = %.lr.ph1166, %bb.p
  %storemerge.i1037 = phi i32 [ %i.gh, %bb.p ], [ 0, %.lr.ph1166 ]
  %i.gi = sub i32 %.39031164, %storemerge.i1037
  %i.gj = sub i32 %.38981165, %i.fz
  %i.gk = add i32 %i.ak, %i.fp
  %i.gl = zext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gl
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !57 ; 3 uses
  %i.go = and i32 %i.gn, 255                      ; 4 uses
  %i.gp = lshr i32 %i.gn, 16
  %i.gq = lshr i32 %i.gn, 8
  %i.gr = and i32 %i.gp, 255                      ; 4 uses
  %i.gs = and i32 %i.gq, 255                      ; 4 uses
  %..i1039 = tail call i32 @llvm.umin.i32(i32 %i.gs, i32 %i.go)
  %spec.select.i1040 = tail call i32 @llvm.umin.i32(i32 %i.gr, i32 %..i1039) ; 2 uses
  %.44.i1041 = tail call i32 @llvm.umax.i32(i32 %i.gs, i32 %i.go)
  %i.gt = tail call i32 @llvm.umax.i32(i32 %i.gr, i32 %.44.i1041) ; 6 uses
  %i.gu = sub nsw i32 %i.gt, %spec.select.i1040   ; 4 uses
  %.not.i1042 = icmp eq i32 %i.gt, %spec.select.i1040
  br i1 %.not.i1042, label %hsv.exit1044, label %bb.q

bb.q:                                             ; preds = %hsv.exit1038
  %i.gv = mul nsw i32 %i.gu, 255
  %i.gw = udiv i32 %i.gv, %i.gt
  br label %hsv.exit1044

hsv.exit1044:                                     ; preds = %hsv.exit1038, %bb.q
  %storemerge.i1043 = phi i32 [ %i.gw, %bb.q ], [ 0, %hsv.exit1038 ] ; 3 uses
  %i.gx = mul i32 %storemerge.i1043, %i.gt
  %i.gy = mul i32 %i.gx, %storemerge.i1043
  %i.gz = uitofp i32 %i.gy to double
  %sqrt1101 = tail call double @llvm.sqrt.f64(double %i.gz)
  %i.ha = fptoui double %sqrt1101 to i32
  %i.hb = add i32 %i.gi, %i.ha                    ; 2 uses
  %i.hc = add i32 %i.gj, %i.gt                    ; 2 uses
  %i.hd = icmp ugt i32 %storemerge.i1043, 85
  %i.he = icmp samesign ugt i32 %i.gt, 85
  %or.cond8 = and i1 %i.he, %i.hd
  br i1 %or.cond8, label %bb.r, label %bb.s

bb.r:                                             ; preds = %hsv.exit1044
  %i.hf = sub nsw i32 %i.gs, %i.go
  %i.hg = sub nsw i32 %i.gr, %i.go
  %i.hh = sub nsw i32 %i.gr, %i.gs
  %i.hi = tail call i32 @llvm.abs.i32(i32 %i.hh, i1 true)
  %i.hj = tail call i32 @llvm.abs.i32(i32 %i.hg, i1 true)
  %i.hk = tail call i32 @llvm.abs.i32(i32 %i.hf, i1 true)
  %i.hl = mul nuw nsw i32 %i.hi, 100
  %i.hm = mul nuw nsw i32 %i.hj, 100
  %i.hn = mul nuw nsw i32 %i.hk, 100
  %i.ho = udiv i32 %i.hl, %i.gu
  %i.hp = udiv i32 %i.hm, %i.gu
  %i.hq = udiv i32 %i.hn, %i.gu
  %i.hr = load <4 x i32>, ptr %i.r, align 8, !tbaa !57
  %i.hs = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, i32 %i.hq, i64 0
  %i.ht = insertelement <4 x i32> %i.hs, i32 %i.hp, i64 1
  %i.hu = insertelement <4 x i32> %i.ht, i32 %i.ho, i64 2
  %i.hv = sub <4 x i32> %i.hr, %i.hu
  %i.hw = add <4 x i32> %i.hv, <i32 100, i32 100, i32 100, i32 1>
  store <4 x i32> %i.hw, ptr %i.r, align 8, !tbaa !57
  br label %bb.s

bb.s:                                             ; preds = %hsv.exit1044, %bb.r
  %indvars.iv.next1496 = add nuw nsw i64 %indvars.iv1495, 1 ; 2 uses
  %exitcond1499.not = icmp eq i64 %indvars.iv.next1496, %wide.trip.count1498
  br i1 %exitcond1499.not, label %.loopexit1154, label %.lr.ph1166

.loopexit1154:                                    ; preds = %bb.o, %bb.s, %._crit_edge.us
  %.4904 = phi i32 [ %i.hb, %bb.s ], [ %i.bx, %._crit_edge.us ], [ %i.eq, %bb.o ]
  %.4899 = phi i32 [ %i.hc, %bb.s ], [ %i.by, %._crit_edge.us ], [ %i.er, %bb.o ]
  %i.hx = add i32 %.08761181, %i.w
  %i.hy = zext i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.hy
  store i32 %.4904, ptr %i.hz, align 4, !tbaa !57
  %i.ia = add i32 %.08761181, %i.y
  %i.ib = zext i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ib
  store i32 %.4899, ptr %i.ic, align 4, !tbaa !57
  %i.id = add i32 %.08761181, 1                   ; 2 uses
  %.not974 = icmp ugt i32 %i.id, %i.o
  br i1 %.not974, label %bb.t, label %bb.d

bb.t:                                             ; preds = %.loopexit1154
  %i.ie = add i32 %.08851183, 1                   ; 2 uses
  %.not964 = icmp ugt i32 %i.ie, %i.o
  br i1 %.not964, label %.preheader1151, label %.preheader1157

.preheader1145:                                   ; preds = %._crit_edge1214.split
  %i.if = mul nuw nsw i32 %i.h, %i.h              ; 24 uses
  %i.ig = load i32, ptr %i.ap, align 8, !tbaa !57
  %i.ih = udiv i32 %i.ig, %i.if
  store i32 %i.ih, ptr %i.ap, align 8, !tbaa !57
  %i.ii = load i32, ptr %i.al, align 4, !tbaa !57
  %i.ij = udiv i32 %i.ii, %i.if
  store i32 %i.ij, ptr %i.al, align 4, !tbaa !57
  %i.ik = load i32, ptr %i.au, align 8, !tbaa !57
  %i.il = udiv i32 %i.ik, %i.if
  store i32 %i.il, ptr %i.au, align 8, !tbaa !57
  %i.im = load i32, ptr %i.am, align 4, !tbaa !57
  %i.in = udiv i32 %i.im, %i.if
  store i32 %i.in, ptr %i.am, align 4, !tbaa !57
  %i.io = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !57
  %i.iq = udiv i32 %i.ip, %i.if
  store i32 %i.iq, ptr %i.io, align 4, !tbaa !57
  %i.ir = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %i.is = load i32, ptr %i.ir, align 8, !tbaa !57
  %i.it = udiv i32 %i.is, %i.if
  store i32 %i.it, ptr %i.ir, align 8, !tbaa !57
  %i.iu = getelementptr inbounds nuw i8, ptr %2, i64 84 ; 3 uses
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !57
  %i.iw = udiv i32 %i.iv, %i.if
  store i32 %i.iw, ptr %i.iu, align 4, !tbaa !57
  %i.ix = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 3 uses
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !57
  %i.iz = udiv i32 %i.iy, %i.if
  store i32 %i.iz, ptr %i.ix, align 8, !tbaa !57
  %i.ja = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !57
  %i.jc = udiv i32 %i.jb, %i.if
  store i32 %i.jc, ptr %i.ja, align 8, !tbaa !57
  %i.jd = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 4 uses
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !57
  %i.jf = udiv i32 %i.je, %i.if
  store i32 %i.jf, ptr %i.jd, align 4, !tbaa !57
  %i.jg = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  %i.jh = load i32, ptr %i.jg, align 8, !tbaa !57
  %i.ji = udiv i32 %i.jh, %i.if
  store i32 %i.ji, ptr %i.jg, align 8, !tbaa !57
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 124 ; 3 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !57
  %i.jl = udiv i32 %i.jk, %i.if
  store i32 %i.jl, ptr %i.jj, align 4, !tbaa !57
  %i.jm = load i32, ptr %i.q, align 4, !tbaa !124 ; 4 uses
  %i.jn = mul i32 %i.jm, 100
  %i.jo = mul nuw nsw i32 %0, %0                  ; 2 uses
  %i.jp = udiv i32 %i.jn, %i.jo                   ; 2 uses
  %i.jq = icmp ugt i32 %i.jp, 5                   ; 3 uses
  br i1 %i.jq, label %bb.an, label %bb.ao

.preheader1150.lr.ph:                             ; preds = %._crit_edge1214.split, %.preheader1151
  %indvars.iv1536 = phi i64 [ 0, %.preheader1151 ], [ %indvars.iv.next1537, %._crit_edge1214.split ] ; 22 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv1536 ; 2 uses
  store i32 -1, ptr %i.jr, align 4, !tbaa !57
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv1536 ; 2 uses
  store i32 -1, ptr %i.js, align 4, !tbaa !57
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv1536 ; 2 uses
  %.not1442 = icmp eq i64 %indvars.iv1536, 0      ; 4 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv1536
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv1536
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv1536
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv1536
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv1536 ; 2 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv1536
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv1536
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv1536
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv1536
  br i1 %.not1441, label %._crit_edge1214.split, label %.preheader1150.lr.ph.split

.preheader1150.lr.ph.split:                       ; preds = %.preheader1150.lr.ph
  %.promoted1215 = load i32, ptr %i.jt, align 4, !tbaa !57
  %.promoted1222 = load i32, ptr %i.jy, align 4, !tbaa !57
  %exitcond1514.not = icmp eq i64 %indvars.iv1536, 1
  %exitcond1519.not = icmp eq i64 %indvars.iv1536, 1
  %exitcond1524.not = icmp eq i64 %indvars.iv1536, 1
  %exitcond1529.not = icmp eq i64 %indvars.iv1536, 1 ; 2 uses
  br label %.preheader1150

.preheader1150:                                   ; preds = %.preheader1150.lr.ph.split, %._crit_edge1209
  %.promoted12121229 = phi i32 [ -1, %.preheader1150.lr.ph.split ], [ %.promoted12121227, %._crit_edge1209 ] ; 2 uses
  %.promoted12111225 = phi i32 [ %.promoted1222, %.preheader1150.lr.ph.split ], [ %.promoted12111223, %._crit_edge1209 ] ; 2 uses
  %.promoted12101221 = phi i32 [ -1, %.preheader1150.lr.ph.split ], [ %.promoted12101219, %._crit_edge1209 ] ; 2 uses
  %.promoted1218 = phi i32 [ %.promoted1215, %.preheader1150.lr.ph.split ], [ %.promoted1216, %._crit_edge1209 ] ; 2 uses
  %.18861213 = phi i32 [ 0, %.preheader1150.lr.ph.split ], [ %i.ob, %._crit_edge1209 ] ; 16 uses
  %i.kd = mul i32 %.18861213, %0
  %i.ke = add i32 %.18861213, %0
  %i.kf = mul i32 %i.ke, %0
  %i.kg = add i32 %.18861213, %i.h                ; 8 uses
  br label %bb.u

bb.u:                                             ; preds = %.preheader1150, %bb.am
  %indvars.iv1530 = phi i64 [ 0, %.preheader1150 ], [ %indvars.iv.next1531, %bb.am ] ; 10 uses
  %.promoted12121228 = phi i32 [ %.promoted12121229, %.preheader1150 ], [ %.promoted12121227, %bb.am ] ; 2 uses
  %.promoted12111224 = phi i32 [ %.promoted12111225, %.preheader1150 ], [ %.promoted12111223, %bb.am ] ; 3 uses
  %.promoted12101220 = phi i32 [ %.promoted12101221, %.preheader1150 ], [ %.promoted12101219, %bb.am ] ; 3 uses
  %.promoted1217 = phi i32 [ %.promoted1218, %.preheader1150 ], [ %.promoted1216, %bb.am ] ; 3 uses
  %i.kh = phi i32 [ %.promoted12121229, %.preheader1150 ], [ %i.oa, %bb.am ] ; 3 uses
  %i.ki = phi i32 [ %.promoted12111225, %.preheader1150 ], [ %i.nd, %bb.am ] ; 4 uses
  %i.kj = phi i32 [ %.promoted12101221, %.preheader1150 ], [ %i.mi, %bb.am ] ; 4 uses
  %i.kk = phi i32 [ %.promoted1218, %.preheader1150 ], [ %i.ln, %bb.am ] ; 4 uses
  %indvars1532 = trunc i64 %indvars.iv1530 to i32 ; 10 uses
  %i.kl = add i32 %i.kd, %indvars1532
  %i.km = zext i32 %i.kl to i64
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.km
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !57 ; 8 uses
  %i.kp = add i32 %i.kf, %indvars1532
  %i.kq = zext i32 %i.kp to i64
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.kq
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !57 ; 8 uses
  %i.kt = icmp ugt i32 %i.ko, %i.kk
  br i1 %i.kt, label %.preheader1149, label %._crit_edge

.preheader1149:                                   ; preds = %bb.u
  br i1 %.not1442, label %._crit_edge.thread, label %.lr.ph1185

.lr.ph1185:                                       ; preds = %.preheader1149
  %i.ku = add i32 %i.h, %indvars1532              ; 2 uses
  %i.kv = load i32, ptr %i.aq, align 4, !tbaa !57 ; 2 uses
  %i.kw = icmp ugt i32 %i.ku, %i.kv
  %i.kx = add i32 %i.kv, %i.h
  %i.ky = zext i32 %i.kx to i64
  %i.kz = icmp samesign ult i64 %indvars.iv1530, %i.ky
  %or.cond986 = and i1 %i.kw, %i.kz
  br i1 %or.cond986, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph1185
  %i.la = load i32, ptr %i.ar, align 8, !tbaa !57 ; 2 uses
  %i.lb = icmp ugt i32 %i.kg, %i.la
  %i.lc = add i32 %i.la, %i.h
  %i.ld = icmp ult i32 %.18861213, %i.lc
  %or.cond989 = and i1 %i.lb, %i.ld
  br i1 %or.cond989, label %._crit_edge, label %bb.w

bb.w:                                             ; preds = %.lr.ph1185, %bb.v
  br i1 %exitcond1514.not, label %._crit_edge.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.le = load i32, ptr %i.az, align 8, !tbaa !57 ; 2 uses
  %i.lf = icmp ugt i32 %i.ku, %i.le
  %i.lg = add i32 %i.le, %i.h
  %i.lh = zext i32 %i.lg to i64
  %i.li = icmp samesign ult i64 %indvars.iv1530, %i.lh
  %or.cond986.1 = and i1 %i.lf, %i.li
  br i1 %or.cond986.1, label %bb.y, label %._crit_edge.thread

bb.y:                                             ; preds = %bb.x
  %i.lj = load i32, ptr %i.ba, align 4, !tbaa !57 ; 2 uses
  %i.lk = icmp ugt i32 %i.kg, %i.lj
  %i.ll = add i32 %i.lj, %i.h
  %i.lm = icmp ult i32 %.18861213, %i.ll
  %or.cond989.1 = and i1 %i.lk, %i.lm
  br i1 %or.cond989.1, label %._crit_edge, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.w, %bb.y, %bb.x, %.preheader1149
  store i32 %i.ko, ptr %i.jt, align 4, !tbaa !57
  store i32 %indvars1532, ptr %i.ju, align 4, !tbaa !57
  store i32 %.18861213, ptr %i.jv, align 4, !tbaa !57
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.v, %bb.y, %._crit_edge.thread, %bb.u
  %.promoted1216 = phi i32 [ %.promoted1217, %bb.u ], [ %i.ko, %._crit_edge.thread ], [ %.promoted1217, %bb.y ], [ %.promoted1217, %bb.v ] ; 2 uses
  %i.ln = phi i32 [ %i.kk, %bb.u ], [ %i.ko, %._crit_edge.thread ], [ %i.kk, %bb.y ], [ %i.kk, %bb.v ]
  %i.lo = icmp ult i32 %i.ko, %i.kj
  br i1 %i.lo, label %.preheader1148, label %._crit_edge1191

.preheader1148:                                   ; preds = %._crit_edge
  br i1 %.not1442, label %._crit_edge1191.thread, label %.lr.ph1190

.lr.ph1190:                                       ; preds = %.preheader1148
  %i.lp = add i32 %i.h, %indvars1532              ; 2 uses
  %i.lq = load i32, ptr %i.as, align 8, !tbaa !57 ; 2 uses
  %i.lr = icmp ugt i32 %i.lp, %i.lq
  %i.ls = add i32 %i.lq, %i.h
  %i.lt = zext i32 %i.ls to i64
  %i.lu = icmp samesign ult i64 %indvars.iv1530, %i.lt
  %or.cond992 = and i1 %i.lr, %i.lu
  br i1 %or.cond992, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph1190
  %i.lv = load i32, ptr %i.at, align 4, !tbaa !57 ; 2 uses
  %i.lw = icmp ugt i32 %i.kg, %i.lv
  %i.lx = add i32 %i.lv, %i.h
  %i.ly = icmp ult i32 %.18861213, %i.lx
  %or.cond995 = and i1 %i.lw, %i.ly
  br i1 %or.cond995, label %._crit_edge1191, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph1190, %bb.z
  br i1 %exitcond1519.not, label %._crit_edge1191.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.lz = load i32, ptr %i.bb, align 4, !tbaa !57 ; 2 uses
  %i.ma = icmp ugt i32 %i.lp, %i.lz
  %i.mb = add i32 %i.lz, %i.h
  %i.mc = zext i32 %i.mb to i64
  %i.md = icmp samesign ult i64 %indvars.iv1530, %i.mc
  %or.cond992.1 = and i1 %i.ma, %i.md
  br i1 %or.cond992.1, label %bb.ac, label %._crit_edge1191.thread

bb.ac:                                            ; preds = %bb.ab
  %i.me = load i32, ptr %i.bc, align 8, !tbaa !57 ; 2 uses
  %i.mf = icmp ugt i32 %i.kg, %i.me
  %i.mg = add i32 %i.me, %i.h
  %i.mh = icmp ult i32 %.18861213, %i.mg
  %or.cond995.1 = and i1 %i.mf, %i.mh
  br i1 %or.cond995.1, label %._crit_edge1191, label %._crit_edge1191.thread

._crit_edge1191.thread:                           ; preds = %bb.aa, %bb.ac, %bb.ab, %.preheader1148
  store i32 %i.ko, ptr %i.jr, align 4, !tbaa !57
  store i32 %indvars1532, ptr %i.jw, align 4, !tbaa !57
  store i32 %.18861213, ptr %i.jx, align 4, !tbaa !57
  br label %._crit_edge1191

._crit_edge1191:                                  ; preds = %bb.z, %bb.ac, %._crit_edge1191.thread, %._crit_edge
  %.promoted12101219 = phi i32 [ %.promoted12101220, %._crit_edge ], [ %i.ko, %._crit_edge1191.thread ], [ %.promoted12101220, %bb.ac ], [ %.promoted12101220, %bb.z ] ; 2 uses
  %i.mi = phi i32 [ %i.kj, %._crit_edge ], [ %i.ko, %._crit_edge1191.thread ], [ %i.kj, %bb.ac ], [ %i.kj, %bb.z ]
  %i.mj = icmp ugt i32 %i.ks, %i.ki
  br i1 %i.mj, label %.preheader1147, label %._crit_edge1197

.preheader1147:                                   ; preds = %._crit_edge1191
  br i1 %.not1442, label %._crit_edge1197.thread, label %.lr.ph1196

.lr.ph1196:                                       ; preds = %.preheader1147
  %i.mk = add i32 %i.h, %indvars1532              ; 2 uses
  %i.ml = load i32, ptr %i.av, align 4, !tbaa !57 ; 2 uses
  %i.mm = icmp ugt i32 %i.mk, %i.ml
  %i.mn = add i32 %i.ml, %i.h
  %i.mo = zext i32 %i.mn to i64
  %i.mp = icmp samesign ult i64 %indvars.iv1530, %i.mo
  %or.cond998 = and i1 %i.mm, %i.mp
  br i1 %or.cond998, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph1196
  %i.mq = load i32, ptr %i.aw, align 8, !tbaa !57 ; 2 uses
  %i.mr = icmp ugt i32 %i.kg, %i.mq
  %i.ms = add i32 %i.mq, %i.h
  %i.mt = icmp ult i32 %.18861213, %i.ms
  %or.cond1001 = and i1 %i.mr, %i.mt
  br i1 %or.cond1001, label %._crit_edge1197, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph1196, %bb.ad
  br i1 %exitcond1524.not, label %._crit_edge1197.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.mu = load i32, ptr %i.bd, align 8, !tbaa !57 ; 2 uses
  %i.mv = icmp ugt i32 %i.mk, %i.mu
  %i.mw = add i32 %i.mu, %i.h
  %i.mx = zext i32 %i.mw to i64
  %i.my = icmp samesign ult i64 %indvars.iv1530, %i.mx
  %or.cond998.1 = and i1 %i.mv, %i.my
  br i1 %or.cond998.1, label %bb.ag, label %._crit_edge1197.thread

bb.ag:                                            ; preds = %bb.af
  %i.mz = load i32, ptr %i.be, align 4, !tbaa !57 ; 2 uses
  %i.na = icmp ugt i32 %i.kg, %i.mz
  %i.nb = add i32 %i.mz, %i.h
  %i.nc = icmp ult i32 %.18861213, %i.nb
  %or.cond1001.1 = and i1 %i.na, %i.nc
  br i1 %or.cond1001.1, label %._crit_edge1197, label %._crit_edge1197.thread

._crit_edge1197.thread:                           ; preds = %bb.ae, %bb.ag, %bb.af, %.preheader1147
  store i32 %i.ks, ptr %i.jy, align 4, !tbaa !57
  store i32 %indvars1532, ptr %i.jz, align 4, !tbaa !57
  store i32 %.18861213, ptr %i.ka, align 4, !tbaa !57
  br label %._crit_edge1197

._crit_edge1197:                                  ; preds = %bb.ad, %bb.ag, %._crit_edge1197.thread, %._crit_edge1191
  %.promoted12111223 = phi i32 [ %.promoted12111224, %._crit_edge1191 ], [ %i.ks, %._crit_edge1197.thread ], [ %.promoted12111224, %bb.ag ], [ %.promoted12111224, %bb.ad ] ; 2 uses
  %i.nd = phi i32 [ %i.ki, %._crit_edge1191 ], [ %i.ks, %._crit_edge1197.thread ], [ %i.ki, %bb.ag ], [ %i.ki, %bb.ad ]
  %i.ne = icmp ult i32 %i.ks, %i.kh
  br i1 %i.ne, label %.preheader1146, label %bb.am

.preheader1146:                                   ; preds = %._crit_edge1197
  br i1 %.not1442, label %._crit_edge1203.thread, label %.lr.ph1202

.lr.ph1202:                                       ; preds = %.preheader1146
  %i.nf = add i32 %i.h, %indvars1532              ; 2 uses
  %i.ng = load i32, ptr %i.ax, align 8, !tbaa !57 ; 2 uses
  %i.nh = icmp ugt i32 %i.nf, %i.ng
  %i.ni = add i32 %i.ng, %i.h
  %i.nj = zext i32 %i.ni to i64
  %i.nk = icmp samesign ult i64 %indvars.iv1530, %i.nj
  %or.cond1004 = and i1 %i.nh, %i.nk
  br i1 %or.cond1004, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph1202
  %i.nl = load i32, ptr %i.ay, align 4, !tbaa !57 ; 2 uses
  %i.nm = icmp ugt i32 %i.kg, %i.nl
  %i.nn = add i32 %i.nl, %i.h
  %i.no = icmp ult i32 %.18861213, %i.nn
  %or.cond1007 = and i1 %i.nm, %i.no              ; 2 uses
  %brmerge = or i1 %or.cond1007, %exitcond1529.not
  %.mux = select i1 %or.cond1007, i64 0, i64 %indvars.iv1536
  br i1 %brmerge, label %._crit_edge1203, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph1202
  br i1 %exitcond1529.not, label %._crit_edge1203, label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.np = load i32, ptr %i.bf, align 4, !tbaa !57 ; 2 uses
  %i.nq = icmp ugt i32 %i.nf, %i.np
  %i.nr = add i32 %i.np, %i.h
  %i.ns = zext i32 %i.nr to i64
  %i.nt = icmp samesign ult i64 %indvars.iv1530, %i.ns
  %or.cond1004.1 = and i1 %i.nq, %i.nt
  br i1 %or.cond1004.1, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.nu = load i32, ptr %i.bg, align 8, !tbaa !57 ; 2 uses
  %i.nv = icmp ugt i32 %i.kg, %i.nu
  %i.nw = add i32 %i.nu, %i.h
  %i.nx = icmp ult i32 %.18861213, %i.nw
  %or.cond1007.1 = and i1 %i.nv, %i.nx
  br i1 %or.cond1007.1, label %._crit_edge1203, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  br label %._crit_edge1203

._crit_edge1203:                                  ; preds = %bb.ah, %bb.al, %bb.ak, %bb.ai
  %.3909.lcssa.ph.in = phi i64 [ %indvars.iv1536, %bb.ai ], [ %.mux, %bb.ah ], [ 1, %bb.ak ], [ %indvars.iv1536, %bb.al ]
  %i.ny = and i64 %.3909.lcssa.ph.in, 4294967295
  %i.nz = icmp eq i64 %i.ny, %indvars.iv1536
  br i1 %i.nz, label %._crit_edge1203.thread, label %bb.am

._crit_edge1203.thread:                           ; preds = %.preheader1146, %._crit_edge1203
  store i32 %i.ks, ptr %i.js, align 4, !tbaa !57
  store i32 %indvars1532, ptr %i.kb, align 4, !tbaa !57
  store i32 %.18861213, ptr %i.kc, align 4, !tbaa !57
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge1203, %._crit_edge1203.thread, %._crit_edge1197
  %.promoted12121227 = phi i32 [ %.promoted12121228, %._crit_edge1203 ], [ %i.ks, %._crit_edge1203.thread ], [ %.promoted12121228, %._crit_edge1197 ] ; 2 uses
  %i.oa = phi i32 [ %i.kh, %._crit_edge1203 ], [ %i.ks, %._crit_edge1203.thread ], [ %i.kh, %._crit_edge1197 ]
  %indvars.iv.next1531 = add nuw nsw i64 %indvars.iv1530, 1 ; 2 uses
  %exitcond1534.not = icmp eq i64 %indvars.iv.next1531, %wide.trip.count1533
  br i1 %exitcond1534.not, label %._crit_edge1209, label %bb.u

._crit_edge1209:                                  ; preds = %bb.am
  %i.ob = add nuw i32 %.18861213, 1               ; 2 uses
  %exitcond1535.not = icmp eq i32 %i.ob, %umax
  br i1 %exitcond1535.not, label %._crit_edge1214.split, label %.preheader1150

._crit_edge1214.split:                            ; preds = %._crit_edge1209, %.preheader1150.lr.ph
  %indvars.iv.next1537 = add nuw nsw i64 %indvars.iv1536, 1 ; 2 uses
  %exitcond1539.not = icmp eq i64 %indvars.iv.next1537, 3
  br i1 %exitcond1539.not, label %.preheader1145, label %.preheader1150.lr.ph

bb.an:                                            ; preds = %.preheader1145
  %i.oc = load i32, ptr %i.r, align 8, !tbaa !129
  %i.od = udiv i32 %i.oc, %i.jm
  store i32 %i.od, ptr %i.r, align 8, !tbaa !129
  %i.oe = load i32, ptr %i.s, align 4, !tbaa !130
  %i.of = udiv i32 %i.oe, %i.jm
  store i32 %i.of, ptr %i.s, align 4, !tbaa !130
  %i.og = load i32, ptr %i.t, align 8, !tbaa !131
  %i.oh = udiv i32 %i.og, %i.jm
  br label %bb.ap

bb.ao:                                            ; preds = %.preheader1145
  store i32 0, ptr %i.r, align 8, !tbaa !129
  store i32 0, ptr %i.s, align 4, !tbaa !130
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %storemerge = phi i32 [ 0, %bb.ao ], [ %i.oh, %bb.an ]
  %.sink = phi i32 [ 0, %bb.ao ], [ %i.jp, %bb.an ]
  %.0905 = phi i64 [ 6, %bb.ao ], [ 3, %bb.an ]
  store i32 %storemerge, ptr %i.t, align 8, !tbaa !131
  store i32 %.sink, ptr %i.q, align 4, !tbaa !124
  %i.oi = tail call ptr @cli_max_malloc(i64 noundef %i.k) #13 ; 11 uses
  %.not965 = icmp eq ptr %i.oi, null
  br i1 %.not965, label %bb.aq, label %.preheader1143

bb.aq:                                            ; preds = %bb.ap
  %i.oj = shl nuw nsw i32 %i.jo, 3
  %i.ok = zext nneg i32 %i.oj to i64
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.36, i64 noundef %i.ok) #13
  tail call void @free(ptr noundef %i.l) #13
  br label %bb.cv

.preheader1143:                                   ; preds = %bb.ap, %bb.bj
  %indvars.iv1549 = phi i64 [ %indvars.iv.next1550, %bb.bj ], [ 0, %bb.ap ] ; 2 uses
  %i.ol = mul nuw nsw i64 %indvars.iv1549, %i.i
  br label %bb.ar

.preheader1141.us.preheader:                      ; preds = %bb.bj
  %i.om = add nsw i32 %0, -1                      ; 7 uses
  %i.on = zext nneg i32 %0 to i64                 ; 3 uses
  %wide.trip.count1562 = zext i32 %i.om to i64    ; 3 uses
  %i.oo = add nsw i64 %wide.trip.count1562, -1    ; 5 uses
  %n.vec = and i64 %i.oo, -2                      ; 2 uses
  %i.op = or i64 %i.oo, 1
  %cmp.n = icmp eq i64 %i.oo, %n.vec
  br label %.preheader1141.us

.preheader1141.us:                                ; preds = %.preheader1141.us.preheader, %._crit_edge1238.us
  %indvars.iv1559 = phi i64 [ 1, %.preheader1141.us.preheader ], [ %indvars.iv.next1560, %._crit_edge1238.us ] ; 3 uses
  %.29141240.us = phi i32 [ 0, %.preheader1141.us.preheader ], [ %spec.select.us.lcssa, %._crit_edge1238.us ]
  %i.oq = add nsw i64 %indvars.iv1559, -1
  %i.or = mul nuw nsw i64 %i.oq, %i.on            ; 3 uses
  %i.os = mul nuw nsw i64 %indvars.iv1559, %i.on  ; 3 uses
  %indvars.iv.next1560 = add nuw nsw i64 %indvars.iv1559, 1 ; 3 uses
  %i.ot = mul nuw nsw i64 %indvars.iv.next1560, %i.on ; 3 uses
  %invariant.gep1862 = getelementptr [8 x i8], ptr %i.oi, i64 %i.or ; 2 uses
  %invariant.gep1864 = getelementptr [8 x i8], ptr %i.oi, i64 %i.os ; 2 uses
  %invariant.gep1866 = getelementptr [8 x i8], ptr %i.oi, i64 %i.ot ; 2 uses
  %invariant.gep1868 = getelementptr [8 x i8], ptr %i.oi, i64 %i.or ; 2 uses
  %invariant.gep1870 = getelementptr inbounds nuw [8 x i8], ptr %i.oi, i64 %i.os ; 2 uses
  %invariant.gep1872 = getelementptr inbounds nuw [8 x i8], ptr %i.oi, i64 %i.ot ; 2 uses
  %invariant.gep1874 = getelementptr [8 x i8], ptr %i.oi, i64 %i.or ; 2 uses
  %invariant.gep1876 = getelementptr inbounds nuw [8 x i8], ptr %i.oi, i64 %i.ot ; 2 uses
  %invariant.gep1878 = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.os ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.29141240.us, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader1141.us
  %index = phi i64 [ 0, %.preheader1141.us ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <2 x i32> [ %broadcast.splat, %.preheader1141.us ], [ %i.pv, %vector.body ]
  %i.ou = or disjoint i64 %index, 1               ; 3 uses
  %i.ov = getelementptr [8 x i8], ptr %invariant.gep1862, i64 %index
  %wide.load = load <2 x double>, ptr %i.ov, align 8, !tbaa !132 ; 2 uses
  %i.ow = getelementptr [8 x i8], ptr %invariant.gep1864, i64 %index
  %wide.load22 = load <2 x double>, ptr %i.ow, align 8, !tbaa !132
  %i.ox = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load22, <2 x double> splat (double 2.000000e+00), <2 x double> %wide.load)
  %i.oy = getelementptr [8 x i8], ptr %invariant.gep1866, i64 %index
  %wide.load23 = load <2 x double>, ptr %i.oy, align 8, !tbaa !132 ; 2 uses
  %i.oz = fadd <2 x double> %i.ox, %wide.load23
  %i.pa = add nuw nsw i64 %index, 2               ; 3 uses
  %i.pb = getelementptr [8 x i8], ptr %invariant.gep1868, i64 %i.pa
  %wide.load24 = load <2 x double>, ptr %i.pb, align 8, !tbaa !132 ; 2 uses
  %i.pc = fsub <2 x double> %i.oz, %wide.load24
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1870, i64 %i.pa
  %wide.load25 = load <2 x double>, ptr %i.pd, align 8, !tbaa !132
  %i.pe = fneg <2 x double> %wide.load25
  %i.pf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pe, <2 x double> splat (double 2.000000e+00), <2 x double> %i.pc)
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1872, i64 %i.pa
  %wide.load26 = load <2 x double>, ptr %i.pg, align 8, !tbaa !132 ; 2 uses
  %i.ph = fsub <2 x double> %i.pf, %wide.load26   ; 2 uses
  %i.pi = getelementptr [8 x i8], ptr %invariant.gep1874, i64 %i.ou
  %wide.load27 = load <2 x double>, ptr %i.pi, align 8, !tbaa !132
  %i.pj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load27, <2 x double> splat (double 2.000000e+00), <2 x double> %wide.load)
  %i.pk = fadd <2 x double> %wide.load24, %i.pj
  %i.pl = fsub <2 x double> %i.pk, %wide.load23
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1876, i64 %i.ou
  %wide.load28 = load <2 x double>, ptr %i.pm, align 8, !tbaa !132
  %i.pn = fneg <2 x double> %wide.load28
  %i.po = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pn, <2 x double> splat (double 2.000000e+00), <2 x double> %i.pl)
  %i.pp = fsub <2 x double> %i.po, %wide.load26   ; 2 uses
  %i.pq = fmul <2 x double> %i.pp, %i.pp
  %i.pr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ph, <2 x double> %i.ph, <2 x double> %i.pq)
  %i.ps = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.pr)
  %i.pt = fptosi <2 x double> %i.ps to <2 x i32>  ; 2 uses
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1878, i64 %i.ou
  store <2 x i32> %i.pt, ptr %i.pu, align 4, !tbaa !57
  %i.pv = tail call <2 x i32> @llvm.umax.v2i32(<2 x i32> %vec.phi, <2 x i32> %i.pt) ; 2 uses
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.pw = icmp eq i64 %index.next, %n.vec
  br i1 %i.pw, label %middle.block, label %vector.body, !llvm.loop !134

middle.block:                                     ; preds = %vector.body
  %i.px = tail call i32 @llvm.vector.reduce.umax.v2i32(<2 x i32> %i.pv) ; 2 uses
  br i1 %cmp.n, label %._crit_edge1238.us, label %scalar.ph

scalar.ph:                                        ; preds = %middle.block, %scalar.ph
  %indvars.iv1554 = phi i64 [ %indvars.iv.next1555, %scalar.ph ], [ %i.op, %middle.block ] ; 5 uses
  %.39151235.us = phi i32 [ %spec.select.us, %scalar.ph ], [ %i.px, %middle.block ]
  %i.py = add nsw i64 %indvars.iv1554, -1         ; 3 uses
  %gep1863 = getelementptr [8 x i8], ptr %invariant.gep1862, i64 %i.py
  %i.pz = load double, ptr %gep1863, align 8, !tbaa !132
  %gep1865 = getelementptr [8 x i8], ptr %invariant.gep1864, i64 %i.py
  %i.qa = load double, ptr %gep1865, align 8, !tbaa !132
  %gep1867 = getelementptr [8 x i8], ptr %invariant.gep1866, i64 %i.py
  %i.qb = load double, ptr %gep1867, align 8, !tbaa !132 ; 2 uses
  %indvars.iv.next1555 = add nuw nsw i64 %indvars.iv1554, 1 ; 5 uses
  %gep1869 = getelementptr [8 x i8], ptr %invariant.gep1868, i64 %indvars.iv.next1555
  %gep1871 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1870, i64 %indvars.iv.next1555
  %i.qc = load double, ptr %gep1871, align 8, !tbaa !132
  %i.qd = fneg double %i.qc
  %gep1873 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1872, i64 %indvars.iv.next1555
  %i.qe = load double, ptr %gep1873, align 8, !tbaa !132 ; 2 uses
  %gep1875 = getelementptr [8 x i8], ptr %invariant.gep1874, i64 %indvars.iv1554
  %i.qf = load <2 x double>, ptr %gep1875, align 8, !tbaa !132 ; 2 uses
  %i.qg = load double, ptr %gep1869, align 8, !tbaa !132
  %i.qh = shufflevector <2 x double> %i.qf, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.qi = insertelement <2 x double> %i.qh, double %i.qa, i64 0
  %i.qj = insertelement <2 x double> poison, double %i.pz, i64 0
  %i.qk = shufflevector <2 x double> %i.qj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ql = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qi, <2 x double> splat (double 2.000000e+00), <2 x double> %i.qk)
  %i.qm = insertelement <2 x double> %i.qf, double %i.qb, i64 0
  %i.qn = fadd <2 x double> %i.ql, %i.qm
  %i.qo = insertelement <2 x double> poison, double %i.qg, i64 0
  %i.qp = insertelement <2 x double> %i.qo, double %i.qb, i64 1
  %i.qq = fsub <2 x double> %i.qn, %i.qp          ; 2 uses
  %i.qr = extractelement <2 x double> %i.qq, i64 0
  %i.qs = tail call double @llvm.fmuladd.f64(double %i.qd, double 2.000000e+00, double %i.qr)
  %i.qt = fsub double %i.qs, %i.qe                ; 2 uses
  %gep1877 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1876, i64 %indvars.iv1554
  %i.qu = load double, ptr %gep1877, align 8, !tbaa !132
  %i.qv = fneg double %i.qu
  %i.qw = extractelement <2 x double> %i.qq, i64 1
  %i.qx = tail call double @llvm.fmuladd.f64(double %i.qv, double 2.000000e+00, double %i.qw)
  %i.qy = fsub double %i.qx, %i.qe                ; 2 uses
  %i.qz = fmul double %i.qy, %i.qy
  %i.ra = tail call double @llvm.fmuladd.f64(double %i.qt, double %i.qt, double %i.qz)
  %sqrt1102.us = tail call double @llvm.sqrt.f64(double %i.ra)
  %i.rb = fptosi double %sqrt1102.us to i32       ; 2 uses
  %gep1879 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1878, i64 %indvars.iv1554
  store i32 %i.rb, ptr %gep1879, align 4, !tbaa !57
end_hunk_0
