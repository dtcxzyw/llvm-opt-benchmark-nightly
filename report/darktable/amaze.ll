Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/amaze?download=true
inline.NumInlined: 126
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 42
begin_hunk_0_@amaze_demosaic:bb.a
  %indvars.iv4401 = phi i64 [ -16, %.preheader3944.preheader ], [ %indvars.iv.next4402, %._crit_edge4159 ] ; 26 uses
  %indvars.iv4290 = phi i32 [ 8, %.preheader3944.preheader ], [ %indvars.iv.next4291, %._crit_edge4159 ] ; 2 uses
  %indvars.iv4288 = phi i32 [ 144, %.preheader3944.preheader ], [ %indvars.iv.next4289, %._crit_edge4159 ] ; 3 uses
  %smin4833 = tail call i32 @llvm.smin.i32(i32 %indvars.iv4288, i32 %i.af)
  %i.by = shl i32 %indvar4834, 7
  %i.bz = sub i32 %smin4833, %i.by
  %i.ca = tail call i32 @llvm.smax.i32(i32 %i.bz, i32 17)
  %smax = zext nneg i32 %i.ca to i64
  %i.cb = mul nuw nsw i64 %smax, 640
  %smin4308 = tail call i32 @llvm.smin.i32(i32 %indvars.iv4288, i32 %i.af)
  %i.cc = add i32 %smin4308, %indvars.iv4290      ; 2 uses
  %i.cd = add nsw i64 %indvars.iv4401, 160        ; 2 uses
  %i.ce = trunc nsw i64 %i.cd to i32
  %i.cf = tail call i32 @llvm.smin.i32(i32 %i.ce, i32 %i.af)
  %i.cg = trunc i64 %indvars.iv4401 to i32        ; 4 uses
  %i.ch = sub nsw i32 %i.cf, %i.cg                ; 18 uses
  %i.ci = icmp sgt i64 %indvars.iv4401, -1        ; 3 uses
  %i.cj = select i1 %i.ci, i32 0, i32 16          ; 4 uses
  %i.ck = icmp sgt i64 %i.cd, %i.ao
  %i.cl = trunc i64 %indvars.iv4401 to i32
  %i.cm = sub i32 %3, %i.cl
  %i.cn = select i1 %i.ck, i32 %i.cm, i32 %i.ch   ; 6 uses
  %i.co = icmp slt i32 %i.cj, %i.cn               ; 3 uses
  %i.cp = icmp slt i32 %i.cn, %i.ch               ; 3 uses
  %.not4408 = xor i1 %i.co, true
  %.not3511 = xor i1 %i.cp, true
  %i.cq = add nsw i32 %i.ch, -2
  %i.cr = icmp sgt i32 %i.ch, 4
  %i.cs = add nsw i32 %i.ch, -4                   ; 2 uses
  %i.ct = icmp sgt i32 %i.ch, 8
  %i.cu = add nsw i32 %i.ch, -6                   ; 4 uses
  %i.cv = icmp sgt i32 %i.ch, 12
  %i.cw = add nsw i32 %i.ch, -8                   ; 3 uses
  %i.cx = icmp sgt i32 %i.ch, 16                  ; 2 uses
  %i.cy = add nsw i32 %i.ch, -10
  %i.cz = icmp sgt i32 %i.ch, 20
  %i.da = add nsw i32 %i.ch, -12                  ; 3 uses
  %i.db = icmp sgt i32 %i.ch, 24
  %i.dc = icmp slt i32 %.3509, %i.da
  %i.dd = add nsw i32 %i.ch, -14
  %i.de = icmp sgt i32 %i.ch, 28
  %i.df = add nsw i32 %i.ch, -16
  %i.dg = icmp sgt i32 %i.ch, 32
  %i.dh = zext nneg i32 %i.cj to i64              ; 4 uses
  %i.di = sext i32 %i.cn to i64                   ; 24 uses
  %i.dj = sext i32 %i.cw to i64
  %i.dk = sext i32 %i.df to i64                   ; 2 uses
  %i.dl = trunc i64 %indvars.iv4401 to i32
  %i.dm = add i32 %i.dl, 32
  %i.dn = mul i32 %2, %i.dm
  %i.do = trunc i64 %indvars.iv4401 to i32
  %i.dp = add i32 %i.do, 31
  %i.dq = mul i32 %i.dp, %2
  %i.dr = trunc i64 %indvars.iv4401 to i32
  %i.ds = add i32 %i.dr, 30
  %i.dt = mul i32 %i.ds, %2
  %i.du = trunc i64 %indvars.iv4401 to i32
  %i.dv = add i32 %i.du, 29
  %i.dw = mul i32 %i.dv, %2
  %i.dx = trunc i64 %indvars.iv4401 to i32
  %i.dy = add i32 %i.dx, 28
  %i.dz = mul i32 %i.dy, %2
  %i.ea = trunc i64 %indvars.iv4401 to i32
  %i.eb = add i32 %i.ea, 27
  %i.ec = mul i32 %i.eb, %2
  %i.ed = trunc i64 %indvars.iv4401 to i32
  %i.ee = add i32 %i.ed, 26
  %i.ef = mul i32 %i.ee, %2
  %i.eg = trunc i64 %indvars.iv4401 to i32
  %i.eh = add i32 %i.eg, 25
  %i.ei = mul i32 %i.eh, %2
  %i.ej = trunc i64 %indvars.iv4401 to i32
  %i.ek = add i32 %i.ej, 24
  %i.el = mul i32 %i.ek, %2
  %i.em = trunc i64 %indvars.iv4401 to i32
  %i.en = add i32 %i.em, 23
  %i.eo = mul i32 %i.en, %2
  %i.ep = trunc i64 %indvars.iv4401 to i32
  %i.eq = add i32 %i.ep, 22
  %i.er = mul i32 %i.eq, %2
  %i.es = trunc i64 %indvars.iv4401 to i32
  %i.et = add i32 %i.es, 21
  %i.eu = mul i32 %i.et, %2
  %i.ev = trunc i64 %indvars.iv4401 to i32
  %i.ew = add i32 %i.ev, 20
  %i.ex = mul i32 %i.ew, %2
  %i.ey = trunc i64 %indvars.iv4401 to i32
  %i.ez = add i32 %i.ey, 19
  %i.fa = mul i32 %i.ez, %2
  %i.fb = trunc i64 %indvars.iv4401 to i32
  %i.fc = add i32 %i.fb, 18
  %i.fd = mul i32 %i.fc, %2
  %i.fe = trunc i64 %indvars.iv4401 to i32
  %i.ff = add i32 %i.fe, 17
  %i.fg = mul i32 %i.ff, %2
  %wide.trip.count4194 = zext i32 %i.cn to i64    ; 2 uses
  %i.fh = mul nsw i64 %i.di, 160                  ; 7 uses
  %i.fi = mul nsw i64 %i.di, 160
  %i.fj = add nsw i64 %i.fi, 160                  ; 7 uses
  %i.fk = mul nsw i64 %i.di, 160
  %i.fl = add nsw i64 %i.fk, 320                  ; 7 uses
  %i.fm = mul nsw i64 %i.di, 160
  %i.fn = add nsw i64 %i.fm, 480                  ; 7 uses
  %i.fo = mul nsw i64 %i.di, 160
  %i.fp = add nsw i64 %i.fo, 640                  ; 7 uses
  %i.fq = mul nsw i64 %i.di, 160
  %i.fr = add nsw i64 %i.fq, 800                  ; 7 uses
  %i.fs = mul nsw i64 %i.di, 160
  %i.ft = add nsw i64 %i.fs, 960                  ; 7 uses
  %i.fu = mul nsw i64 %i.di, 160
  %i.fv = add nsw i64 %i.fu, 1120                 ; 7 uses
  %i.fw = mul nsw i64 %i.di, 160
  %i.fx = add nsw i64 %i.fw, 1280                 ; 7 uses
  %i.fy = mul nsw i64 %i.di, 160
  %i.fz = add nsw i64 %i.fy, 1440                 ; 7 uses
  %i.ga = mul nsw i64 %i.di, 160
  %i.gb = add nsw i64 %i.ga, 1600                 ; 7 uses
  %i.gc = mul nsw i64 %i.di, 160
  %i.gd = add nsw i64 %i.gc, 1760                 ; 7 uses
  %i.ge = mul nsw i64 %i.di, 160
  %i.gf = add nsw i64 %i.ge, 1920                 ; 7 uses
  %i.gg = mul nsw i64 %i.di, 160
  %i.gh = add nsw i64 %i.gg, 2080                 ; 7 uses
  %i.gi = mul nsw i64 %i.di, 160
  %i.gj = add nsw i64 %i.gi, 2240                 ; 7 uses
  %i.gk = mul nsw i64 %i.di, 160
  %i.gl = add nsw i64 %i.gk, 2400                 ; 7 uses
  %wide.trip.count4212 = zext nneg i32 %i.cn to i64
  %wide.trip.count4221 = zext nneg i32 %i.cn to i64
  %scevgep4836 = getelementptr i8, ptr %scevgep4832, i64 %i.cb
  %i.gm = mul nsw i64 %i.di, 640                  ; 6 uses
  %scevgep6053 = getelementptr i8, ptr %scevgep6052, i64 %i.gm
  %scevgep6056 = getelementptr i8, ptr %scevgep6055, i64 %i.gm
  %scevgep6096 = getelementptr i8, ptr %scevgep6095, i64 %i.gm
  %scevgep6099 = getelementptr i8, ptr %scevgep6098, i64 %i.gm
  %scevgep6139 = getelementptr i8, ptr %scevgep6138, i64 %i.gm
  %scevgep6142 = getelementptr i8, ptr %scevgep6141, i64 %i.gm
  %i.gn = mul nsw i64 %i.di, 640                  ; 6 uses
  %scevgep6182 = getelementptr i8, ptr %scevgep6181, i64 %i.gn
  %scevgep6185 = getelementptr i8, ptr %scevgep6184, i64 %i.gn
  %scevgep6225 = getelementptr i8, ptr %scevgep6224, i64 %i.gn
  %scevgep6228 = getelementptr i8, ptr %scevgep6227, i64 %i.gn
  %scevgep6268 = getelementptr i8, ptr %scevgep6267, i64 %i.gn
  %scevgep6271 = getelementptr i8, ptr %scevgep6270, i64 %i.gn
  %i.go = mul nsw i64 %i.di, 640                  ; 6 uses
  %scevgep6311 = getelementptr i8, ptr %scevgep6310, i64 %i.go
  %scevgep6314 = getelementptr i8, ptr %scevgep6313, i64 %i.go
  %scevgep6354 = getelementptr i8, ptr %scevgep6353, i64 %i.go
  %scevgep6357 = getelementptr i8, ptr %scevgep6356, i64 %i.go
  %scevgep6397 = getelementptr i8, ptr %scevgep6396, i64 %i.go
  %scevgep6400 = getelementptr i8, ptr %scevgep6399, i64 %i.go
  %i.gp = mul nsw i64 %i.di, 640                  ; 6 uses
  %scevgep6440 = getelementptr i8, ptr %scevgep6439, i64 %i.gp
  %scevgep6443 = getelementptr i8, ptr %scevgep6442, i64 %i.gp
  %scevgep6483 = getelementptr i8, ptr %scevgep6482, i64 %i.gp
  %scevgep6486 = getelementptr i8, ptr %scevgep6485, i64 %i.gp
  %scevgep6526 = getelementptr i8, ptr %scevgep6525, i64 %i.gp
  %scevgep6529 = getelementptr i8, ptr %scevgep6528, i64 %i.gp
  %i.gq = mul nsw i64 %i.di, 640                  ; 6 uses
  %scevgep6569 = getelementptr i8, ptr %scevgep6568, i64 %i.gq
  %scevgep6572 = getelementptr i8, ptr %scevgep6571, i64 %i.gq
  %scevgep6612 = getelementptr i8, ptr %scevgep6611, i64 %i.gq
  %scevgep6615 = getelementptr i8, ptr %scevgep6614, i64 %i.gq
  %scevgep6655 = getelementptr i8, ptr %scevgep6654, i64 %i.gq
  %scevgep6658 = getelementptr i8, ptr %scevgep6657, i64 %i.gq
  %i.gr = mul nsw i64 %i.di, 640                  ; 2 uses
  %scevgep6697 = getelementptr i8, ptr %i.i, i64 %i.gr
  %scevgep6700 = getelementptr i8, ptr %scevgep6699, i64 %i.gr
  %i.gs = add i32 %i.cj, %i.cg
  %i.gt = mul i32 %2, %i.gs
  %i.gu = add i32 %i.gt, -16
  %i.gv = mul nuw nsw i64 %i.dh, 640
  %scevgep6741 = getelementptr i8, ptr %i.i, i64 %i.gv
  %i.gw = mul nuw nsw i64 %wide.trip.count4194, 640
  %scevgep6744 = getelementptr i8, ptr %scevgep6743, i64 %i.gw
  %i.gx = add i32 %i.cj, %i.cg
  %i.gy = mul i32 %2, %i.gx
  %i.gz = add i32 %i.gy, -16
  br label %bb.b

._crit_edge4161.split:                            ; preds = %._crit_edge4159, %.preheader3944.lr.ph, %bb.a
  tail call void @free(ptr noundef %i.e) #9
  ret void

._crit_edge4159:                                  ; preds = %._crit_edge4152.split
  %indvars.iv.next4402 = add nsw i64 %indvars.iv4401, 128 ; 2 uses
  %i.ha = icmp slt i64 %indvars.iv.next4402, %i.ao
  %indvars.iv.next4289 = add nuw i32 %indvars.iv4288, 128
  %indvars.iv.next4291 = add nsw i32 %indvars.iv4290, -128
  %indvar.next4835 = add i32 %indvar4834, 1
  br i1 %i.ha, label %.preheader3944, label %._crit_edge4161.split, !llvm.loop !11

bb.b:                                             ; preds = %.preheader3944, %._crit_edge4152.split
  %indvar = phi i64 [ 0, %.preheader3944 ], [ %indvar.next, %._crit_edge4152.split ] ; 9 uses
  %indvars.iv4397 = phi i64 [ -16, %.preheader3944 ], [ %indvars.iv.next4398, %._crit_edge4152.split ] ; 9 uses
  %indvars.iv4374 = phi i64 [ 0, %.preheader3944 ], [ %indvars.iv.next4375, %._crit_edge4152.split ] ; 5 uses
  %i.hb = trunc i64 %indvars.iv4374 to i32
  %i.hc = add i32 %i.gz, %i.hb
  %i.hd = trunc i64 %indvars.iv4374 to i32
  %i.he = add i32 %i.gu, %i.hd
  %i.hf = trunc i64 %indvar to i32
  %i.hg = mul i32 %i.hf, -128
  %i.hh = or disjoint i32 %i.hg, 3
  %indvar.tr7437.a = trunc i64 %indvar to i32
  %i.hi = shl i32 %indvar.tr7437.a, 7
  %indvar.tr7438 = trunc i64 %indvar to i32
  %i.hj = shl i32 %indvar.tr7438, 7
  %i.hk = shl nuw nsw i64 %indvar, 7              ; 2 uses
  %i.hl = trunc i64 %i.hk to i32
  %i.hm = add i32 %i.hl, 144
  %smin = tail call i32 @llvm.smin.i32(i32 %i.hm, i32 %i.ag)
  %i.hn = trunc i64 %indvar to i32
  %i.ho = shl i32 %i.hn, 7
  %i.hp = sub i32 %smin, %i.ho
  %i.hq = tail call i32 @llvm.umax.i32(i32 %i.hp, i32 17)
  %umax = zext i32 %i.hq to i64                   ; 2 uses
  %i.hr = shl nuw nsw i64 %umax, 4
  %i.hs = shl nuw nsw i64 %umax, 2
  %scevgep4837 = getelementptr i8, ptr %scevgep4836, i64 %i.hs
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(12320) %i.ae, i8 0, i64 12320, i1 false)
  %i.ht = add nsw i64 %indvars.iv4397, 160        ; 2 uses
  %i.hu = trunc i64 %i.ht to i32
  %i.hv = tail call i32 @llvm.smin.i32(i32 %i.hu, i32 %i.ag) ; 9 uses
  %i.hw = trunc i64 %indvars.iv4397 to i32        ; 35 uses
  %i.hx = sub i32 %i.hv, %i.hw                    ; 22 uses
  %i.hy = icmp slt i64 %indvars.iv4397, 0         ; 3 uses
  %i.hz = select i1 %i.hy, i32 16, i32 0          ; 70 uses
  %i.ia = icmp sgt i64 %i.ht, %i.al
  %i.ib = trunc i64 %indvars.iv4397 to i32
  %i.ic = sub i32 %2, %i.ib
  %i.id = select i1 %i.ia, i32 %i.ic, i32 %i.hx   ; 8 uses
  %i.ie = icmp sge i32 %i.hz, %i.id               ; 2 uses
  %or.cond4163.not = select i1 %i.ci, i1 true, i1 %i.ie
  br i1 %or.cond4163.not, label %.loopexit3943.split, label %iter.check7424

iter.check7424:                                   ; preds = %bb.b
  %i.if = zext nneg i32 %i.hz to i64              ; 176 uses
  %i.ig = add i32 %i.dn, %i.hw                    ; 9 uses
  %wide.trip.count = zext nneg i32 %i.id to i64   ; 128 uses
  %i.ih = sub nsw i64 %wide.trip.count, %i.if     ; 6 uses
  %min.iters.check7408 = icmp ult i64 %i.ih, 8
  br i1 %min.iters.check7408, label %vec.epilog.scalar.ph7425.preheader, label %vector.scevcheck7397

vector.scevcheck7397:                             ; preds = %iter.check7424
  %i.ii = xor i64 %i.if, -1
  %i.ij = add nsw i64 %i.ii, %wide.trip.count     ; 2 uses
  %i.ik = add i32 %i.hz, %i.ig                    ; 2 uses
  %i.il = trunc i64 %i.ij to i32
  %i.im = add i32 %i.ik, %i.il
  %i.in = icmp slt i32 %i.im, %i.ik
  %i.io = icmp ugt i64 %i.ij, 4294967295
  %i.ip = or i1 %i.in, %i.io
  br i1 %i.ip, label %vec.epilog.scalar.ph7425.preheader, label %vector.memcheck7398

vector.memcheck7398:                              ; preds = %vector.scevcheck7397
  %i.iq = shl nuw nsw i64 %i.if, 2
  %scevgep7399 = getelementptr i8, ptr %i.i, i64 %i.iq
  %i.ir = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep7401 = getelementptr i8, ptr %scevgep7400, i64 %i.ir
  %i.is = add i32 %i.hz, %i.ig
  %i.it = sext i32 %i.is to i64                   ; 2 uses
  %i.iu = shl nsw i64 %i.it, 2
  %scevgep7402 = getelementptr i8, ptr %0, i64 %i.iu
  %i.iv = add nsw i64 %i.it, %wide.trip.count
  %i.iw = sub nsw i64 %i.iv, %i.if
  %i.ix = shl nsw i64 %i.iw, 2
  %scevgep7403 = getelementptr i8, ptr %0, i64 %i.ix
  %bound07404 = icmp ult ptr %scevgep7399, %scevgep7403
  %bound17405 = icmp ult ptr %scevgep7402, %scevgep7401
  %found.conflict7406 = and i1 %bound07404, %bound17405
  br i1 %found.conflict7406, label %vec.epilog.scalar.ph7425.preheader, label %vector.main.loop.iter.check7409

vector.main.loop.iter.check7409:                  ; preds = %vector.memcheck7398
  %min.iters.check7410 = icmp ult i64 %i.ih, 32
  br i1 %min.iters.check7410, label %vec.epilog.ph7428, label %vector.ph7411

vector.ph7411:                                    ; preds = %vector.main.loop.iter.check7409
  %i.iy = and i64 %i.ih, 24
  %n.vec7412 = and i64 %i.ih, -32                 ; 4 uses
  %i.iz = or disjoint i64 %n.vec7412, %i.if
  br label %vector.body7413

vector.body7413:                                  ; preds = %vector.ph7411, %vector.body7413
  %index7414 = phi i64 [ 0, %vector.ph7411 ], [ %index.next7419, %vector.body7413 ] ; 2 uses
  %i.ja = or disjoint i64 %index7414, %i.if       ; 3 uses
  %i.jb = trunc nuw nsw i64 %i.ja to i32
  %i.jc = add i32 %i.ig, %i.jb
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds [4 x i8], ptr %0, i64 %i.jd ; 4 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 32
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 64
  %i.jh = getelementptr inbounds nuw i8, ptr %i.je, i64 96
  %wide.load7415 = load <8 x float>, ptr %i.je, align 4, !tbaa !322, !alias.scope !323 ; 2 uses
  %wide.load7416 = load <8 x float>, ptr %i.jf, align 4, !tbaa !322, !alias.scope !323 ; 2 uses
  %wide.load7417 = load <8 x float>, ptr %i.jg, align 4, !tbaa !322, !alias.scope !323 ; 2 uses
  %wide.load7418 = load <8 x float>, ptr %i.jh, align 4, !tbaa !322, !alias.scope !323 ; 2 uses
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ja ; 4 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 32
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 64
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 96
  store <8 x float> %wide.load7415, ptr %i.ji, align 64, !tbaa !322, !alias.scope !324, !noalias !323
  store <8 x float> %wide.load7416, ptr %i.jj, align 32, !tbaa !322, !alias.scope !324, !noalias !323
  store <8 x float> %wide.load7417, ptr %i.jk, align 64, !tbaa !322, !alias.scope !324, !noalias !323
  store <8 x float> %wide.load7418, ptr %i.jl, align 32, !tbaa !322, !alias.scope !324, !noalias !323
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ja ; 4 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 32
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 64
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jm, i64 96
  store <8 x float> %wide.load7415, ptr %i.jm, align 64, !tbaa !322, !alias.scope !324, !noalias !323
  store <8 x float> %wide.load7416, ptr %i.jn, align 32, !tbaa !322, !alias.scope !324, !noalias !323
  store <8 x float> %wide.load7417, ptr %i.jo, align 64, !tbaa !322, !alias.scope !324, !noalias !323
  store <8 x float> %wide.load7418, ptr %i.jp, align 32, !tbaa !322, !alias.scope !324, !noalias !323
  %index.next7419 = add nuw i64 %index7414, 32    ; 2 uses
  %i.jq = icmp eq i64 %index.next7419, %n.vec7412
  br i1 %i.jq, label %middle.block7420, label %vector.body7413, !llvm.loop !15

middle.block7420:                                 ; preds = %vector.body7413
  %cmp.n7421 = icmp eq i64 %i.ih, %n.vec7412
  br i1 %cmp.n7421, label %iter.check7384, label %vec.epilog.iter.check7426

vec.epilog.iter.check7426:                        ; preds = %middle.block7420
  %min.epilog.iters.check7427 = icmp eq i64 %i.iy, 0
  br i1 %min.epilog.iters.check7427, label %vec.epilog.scalar.ph7425.preheader, label %vec.epilog.ph7428, !prof !327

vec.epilog.ph7428:                                ; preds = %vector.main.loop.iter.check7409, %vec.epilog.iter.check7426
  %vec.epilog.resume.val7422 = phi i64 [ %n.vec7412, %vec.epilog.iter.check7426 ], [ 0, %vector.main.loop.iter.check7409 ]
  %i.jr = and i64 %wide.trip.count, 7             ; 2 uses
  %n.vec7429 = sub nsw i64 %i.ih, %i.jr           ; 2 uses
  %i.js = add nsw i64 %n.vec7429, %i.if
  br label %vec.epilog.vector.body7430

vec.epilog.vector.body7430:                       ; preds = %vec.epilog.vector.body7430, %vec.epilog.ph7428
  %index7431 = phi i64 [ %vec.epilog.resume.val7422, %vec.epilog.ph7428 ], [ %index.next7433, %vec.epilog.vector.body7430 ] ; 2 uses
  %i.jt = add nuw i64 %index7431, %i.if           ; 3 uses
  %i.ju = trunc nuw nsw i64 %i.jt to i32
  %i.jv = add i32 %i.ig, %i.ju
  %i.jw = sext i32 %i.jv to i64
  %i.jx = getelementptr inbounds [4 x i8], ptr %0, i64 %i.jw
  %wide.load7432 = load <8 x float>, ptr %i.jx, align 4, !tbaa !322, !alias.scope !323 ; 2 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.jt
  store <8 x float> %wide.load7432, ptr %i.jy, align 32, !tbaa !322, !alias.scope !324, !noalias !323
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.jt
  store <8 x float> %wide.load7432, ptr %i.jz, align 32, !tbaa !322, !alias.scope !324, !noalias !323
  %index.next7433 = add nuw i64 %index7431, 8     ; 2 uses
  %i.ka = icmp eq i64 %index.next7433, %n.vec7429
  br i1 %i.ka, label %vec.epilog.middle.block7434, label %vec.epilog.vector.body7430, !llvm.loop !16

vec.epilog.middle.block7434:                      ; preds = %vec.epilog.vector.body7430
  %cmp.n7435 = icmp eq i64 %i.jr, 0
  br i1 %cmp.n7435, label %iter.check7384, label %vec.epilog.scalar.ph7425.preheader

vec.epilog.scalar.ph7425.preheader:               ; preds = %iter.check7424, %vector.scevcheck7397, %vector.memcheck7398, %vec.epilog.iter.check7426, %vec.epilog.middle.block7434
  %indvars.iv.ph = phi i64 [ %i.if, %iter.check7424 ], [ %i.if, %vector.scevcheck7397 ], [ %i.if, %vector.memcheck7398 ], [ %i.iz, %vec.epilog.iter.check7426 ], [ %i.js, %vec.epilog.middle.block7434 ] ; 4 uses
  %i.kb = sub i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.kb, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph7425.prol.loopexit, label %vec.epilog.scalar.ph7425.prol

vec.epilog.scalar.ph7425.prol:                    ; preds = %vec.epilog.scalar.ph7425.preheader, %vec.epilog.scalar.ph7425.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph7425.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph7425.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph7425.prol ], [ 0, %vec.epilog.scalar.ph7425.preheader ]
  %i.kc = trunc nuw nsw i64 %indvars.iv.prol to i32
  %i.kd = add i32 %i.ig, %i.kc
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ke
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !322 ; 2 uses
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.prol
  store float %i.kg, ptr %i.kh, align 4, !tbaa !322
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.prol
  store float %i.kg, ptr %i.ki, align 4, !tbaa !322
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph7425.prol.loopexit, label %vec.epilog.scalar.ph7425.prol, !llvm.loop !17

vec.epilog.scalar.ph7425.prol.loopexit:           ; preds = %vec.epilog.scalar.ph7425.prol, %vec.epilog.scalar.ph7425.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph7425.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph7425.prol ]
  %i.kj = sub i64 %indvars.iv.ph, %wide.trip.count
  %i.kk = icmp ugt i64 %i.kj, -4
  br i1 %i.kk, label %iter.check7384, label %vec.epilog.scalar.ph7425

iter.check7384:                                   ; preds = %vec.epilog.scalar.ph7425.prol.loopexit, %vec.epilog.scalar.ph7425, %vec.epilog.middle.block7434, %middle.block7420
  %i.kl = add i32 %i.dq, %i.hw                    ; 9 uses
  %i.km = sub nsw i64 %wide.trip.count, %i.if     ; 6 uses
  %min.iters.check7368 = icmp ult i64 %i.km, 8
  br i1 %min.iters.check7368, label %vec.epilog.scalar.ph7385.preheader, label %vector.scevcheck7356

vector.scevcheck7356:                             ; preds = %iter.check7384
  %i.kn = xor i64 %i.if, -1
  %i.ko = add nsw i64 %i.kn, %wide.trip.count     ; 2 uses
  %i.kp = add i32 %i.hz, %i.kl                    ; 2 uses
  %i.kq = trunc i64 %i.ko to i32
  %i.kr = add i32 %i.kp, %i.kq
  %i.ks = icmp slt i32 %i.kr, %i.kp
  %i.kt = icmp ugt i64 %i.ko, 4294967295
  %i.ku = or i1 %i.ks, %i.kt
  br i1 %i.ku, label %vec.epilog.scalar.ph7385.preheader, label %vector.memcheck7357

vector.memcheck7357:                              ; preds = %vector.scevcheck7356
  %i.kv = shl nuw nsw i64 %i.if, 2
  %scevgep7359 = getelementptr i8, ptr %scevgep7358, i64 %i.kv
  %i.kw = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep7361 = getelementptr i8, ptr %scevgep7360, i64 %i.kw
end_hunk_0
begin_hunk_1_@amaze_demosaic:bb.a
  %i.epb = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.eoz
  store float %i.eoy, ptr %i.epb, align 4, !tbaa !322
  %i.epc = add i32 %i.elo, -13
  %i.epd = sext i32 %i.epc to i64
  %i.epe = getelementptr inbounds [4 x i8], ptr %0, i64 %i.epd
  %i.epf = load float, ptr %i.epe, align 4, !tbaa !322 ; 2 uses
  %i.epg = add nsw i64 %i.elq, 13                 ; 2 uses
  %i.eph = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.epg
  store float %i.epf, ptr %i.eph, align 4, !tbaa !322
  %i.epi = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.epg
  store float %i.epf, ptr %i.epi, align 4, !tbaa !322
  %i.epj = add i32 %i.elo, -14
  %i.epk = sext i32 %i.epj to i64
  %i.epl = getelementptr inbounds [4 x i8], ptr %0, i64 %i.epk
  %i.epm = load float, ptr %i.epl, align 4, !tbaa !322 ; 2 uses
  %i.epn = add nsw i64 %i.elq, 14                 ; 2 uses
  %i.epo = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.epn
  store float %i.epm, ptr %i.epo, align 4, !tbaa !322
  %i.epp = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.epn
  store float %i.epm, ptr %i.epp, align 4, !tbaa !322
  %i.epq = add i32 %i.elo, -15
  %i.epr = sext i32 %i.epq to i64
  %i.eps = getelementptr inbounds [4 x i8], ptr %0, i64 %i.epr
  %i.ept = load float, ptr %i.eps, align 4, !tbaa !322 ; 2 uses
  %i.epu = add nsw i64 %i.elq, 15                 ; 2 uses
  %i.epv = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.epu
  store float %i.ept, ptr %i.epv, align 4, !tbaa !322
  %i.epw = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.epu
  store float %i.ept, ptr %i.epw, align 4, !tbaa !322
  %indvars.iv.next4244 = add nuw nsw i64 %indvars.iv4243, 1 ; 2 uses
  %exitcond4246.not = icmp eq i64 %indvars.iv.next4244, 16
  br i1 %exitcond4246.not, label %.loopexit3931, label %.preheader3907, !llvm.loop !248

.loopexit3931:                                    ; preds = %.preheader3907, %.loopexit3933
  %or.cond3 = and i1 %i.cp, %i.hy
  br i1 %or.cond3, label %.preheader3906, label %.loopexit3929

.preheader3906:                                   ; preds = %.loopexit3931, %.preheader3906
  %indvars.iv4251 = phi i64 [ %indvars.iv.next4252, %.preheader3906 ], [ 0, %.loopexit3931 ] ; 3 uses
  %i.epx = trunc nuw nsw i64 %indvars.iv4251 to i32
  %i.epy = sub i32 %i.ah, %i.epx
  %i.epz = mul nsw i32 %i.epy, %2                 ; 16 uses
  %reass.sub = add i32 %i.epz, 32
  %i.eqa = add nsw i64 %indvars.iv4251, %i.di
  %i.eqb = mul nsw i64 %i.eqa, 160                ; 17 uses
  %i.eqc = sext i32 %reass.sub to i64
  %i.eqd = getelementptr inbounds [4 x i8], ptr %0, i64 %i.eqc
  %i.eqe = load float, ptr %i.eqd, align 4, !tbaa !322 ; 2 uses
  %i.eqf = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.eqb
  store float %i.eqe, ptr %i.eqf, align 64, !tbaa !322
  %i.eqg = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.eqb
  store float %i.eqe, ptr %i.eqg, align 64, !tbaa !322
  %i.eqh = add i32 %i.epz, 31
  %i.eqi = sext i32 %i.eqh to i64
  %i.eqj = getelementptr inbounds [4 x i8], ptr %0, i64 %i.eqi
  %i.eqk = load float, ptr %i.eqj, align 4, !tbaa !322 ; 2 uses
  %i.eql = or disjoint i64 %i.eqb, 1              ; 2 uses
  %i.eqm = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.eql
  store float %i.eqk, ptr %i.eqm, align 4, !tbaa !322
  %i.eqn = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.eql
  store float %i.eqk, ptr %i.eqn, align 4, !tbaa !322
  %i.eqo = add i32 %i.epz, 30
  %i.eqp = sext i32 %i.eqo to i64
  %i.eqq = getelementptr inbounds [4 x i8], ptr %0, i64 %i.eqp
  %i.eqr = load float, ptr %i.eqq, align 4, !tbaa !322 ; 2 uses
  %i.eqs = or disjoint i64 %i.eqb, 2              ; 2 uses
  %i.eqt = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.eqs
  store float %i.eqr, ptr %i.eqt, align 8, !tbaa !322
  %i.equ = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.eqs
  store float %i.eqr, ptr %i.equ, align 8, !tbaa !322
  %i.eqv = add i32 %i.epz, 29
  %i.eqw = sext i32 %i.eqv to i64
  %i.eqx = getelementptr inbounds [4 x i8], ptr %0, i64 %i.eqw
  %i.eqy = load float, ptr %i.eqx, align 4, !tbaa !322 ; 2 uses
  %i.eqz = or disjoint i64 %i.eqb, 3              ; 2 uses
  %i.era = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.eqz
  store float %i.eqy, ptr %i.era, align 4, !tbaa !322
  %i.erb = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.eqz
  store float %i.eqy, ptr %i.erb, align 4, !tbaa !322
  %i.erc = add i32 %i.epz, 28
  %i.erd = sext i32 %i.erc to i64
  %i.ere = getelementptr inbounds [4 x i8], ptr %0, i64 %i.erd
  %i.erf = load float, ptr %i.ere, align 4, !tbaa !322 ; 2 uses
  %i.erg = or disjoint i64 %i.eqb, 4              ; 2 uses
  %i.erh = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.erg
  store float %i.erf, ptr %i.erh, align 16, !tbaa !322
  %i.eri = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.erg
  store float %i.erf, ptr %i.eri, align 16, !tbaa !322
  %i.erj = add i32 %i.epz, 27
  %i.erk = sext i32 %i.erj to i64
  %i.erl = getelementptr inbounds [4 x i8], ptr %0, i64 %i.erk
  %i.erm = load float, ptr %i.erl, align 4, !tbaa !322 ; 2 uses
  %i.ern = or disjoint i64 %i.eqb, 5              ; 2 uses
  %i.ero = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.ern
  store float %i.erm, ptr %i.ero, align 4, !tbaa !322
  %i.erp = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.ern
  store float %i.erm, ptr %i.erp, align 4, !tbaa !322
  %i.erq = add i32 %i.epz, 26
  %i.err = sext i32 %i.erq to i64
  %i.ers = getelementptr inbounds [4 x i8], ptr %0, i64 %i.err
  %i.ert = load float, ptr %i.ers, align 4, !tbaa !322 ; 2 uses
  %i.eru = or disjoint i64 %i.eqb, 6              ; 2 uses
  %i.erv = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.eru
  store float %i.ert, ptr %i.erv, align 8, !tbaa !322
  %i.erw = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.eru
  store float %i.ert, ptr %i.erw, align 8, !tbaa !322
  %i.erx = add i32 %i.epz, 25
  %i.ery = sext i32 %i.erx to i64
  %i.erz = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ery
  %i.esa = load float, ptr %i.erz, align 4, !tbaa !322 ; 2 uses
  %i.esb = or disjoint i64 %i.eqb, 7              ; 2 uses
  %i.esc = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.esb
  store float %i.esa, ptr %i.esc, align 4, !tbaa !322
  %i.esd = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.esb
  store float %i.esa, ptr %i.esd, align 4, !tbaa !322
  %i.ese = add i32 %i.epz, 24
  %i.esf = sext i32 %i.ese to i64
  %i.esg = getelementptr inbounds [4 x i8], ptr %0, i64 %i.esf
  %i.esh = load float, ptr %i.esg, align 4, !tbaa !322 ; 2 uses
  %i.esi = or disjoint i64 %i.eqb, 8              ; 2 uses
  %i.esj = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.esi
  store float %i.esh, ptr %i.esj, align 32, !tbaa !322
  %i.esk = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.esi
  store float %i.esh, ptr %i.esk, align 32, !tbaa !322
  %i.esl = add i32 %i.epz, 23
  %i.esm = sext i32 %i.esl to i64
  %i.esn = getelementptr inbounds [4 x i8], ptr %0, i64 %i.esm
  %i.eso = load float, ptr %i.esn, align 4, !tbaa !322 ; 2 uses
  %i.esp = or disjoint i64 %i.eqb, 9              ; 2 uses
  %i.esq = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.esp
  store float %i.eso, ptr %i.esq, align 4, !tbaa !322
  %i.esr = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.esp
  store float %i.eso, ptr %i.esr, align 4, !tbaa !322
  %i.ess = add i32 %i.epz, 22
  %i.est = sext i32 %i.ess to i64
  %i.esu = getelementptr inbounds [4 x i8], ptr %0, i64 %i.est
  %i.esv = load float, ptr %i.esu, align 4, !tbaa !322 ; 2 uses
  %i.esw = or disjoint i64 %i.eqb, 10             ; 2 uses
  %i.esx = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.esw
  store float %i.esv, ptr %i.esx, align 8, !tbaa !322
  %i.esy = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.esw
  store float %i.esv, ptr %i.esy, align 8, !tbaa !322
  %i.esz = add i32 %i.epz, 21
  %i.eta = sext i32 %i.esz to i64
  %i.etb = getelementptr inbounds [4 x i8], ptr %0, i64 %i.eta
  %i.etc = load float, ptr %i.etb, align 4, !tbaa !322 ; 2 uses
  %i.etd = or disjoint i64 %i.eqb, 11             ; 2 uses
  %i.ete = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.etd
  store float %i.etc, ptr %i.ete, align 4, !tbaa !322
  %i.etf = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.etd
  store float %i.etc, ptr %i.etf, align 4, !tbaa !322
  %i.etg = add i32 %i.epz, 20
  %i.eth = sext i32 %i.etg to i64
  %i.eti = getelementptr inbounds [4 x i8], ptr %0, i64 %i.eth
  %i.etj = load float, ptr %i.eti, align 4, !tbaa !322 ; 2 uses
  %i.etk = or disjoint i64 %i.eqb, 12             ; 2 uses
  %i.etl = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.etk
  store float %i.etj, ptr %i.etl, align 16, !tbaa !322
  %i.etm = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.etk
  store float %i.etj, ptr %i.etm, align 16, !tbaa !322
  %i.etn = add i32 %i.epz, 19
  %i.eto = sext i32 %i.etn to i64
  %i.etp = getelementptr inbounds [4 x i8], ptr %0, i64 %i.eto
  %i.etq = load float, ptr %i.etp, align 4, !tbaa !322 ; 2 uses
  %i.etr = or disjoint i64 %i.eqb, 13             ; 2 uses
  %i.ets = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.etr
  store float %i.etq, ptr %i.ets, align 4, !tbaa !322
  %i.ett = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.etr
  store float %i.etq, ptr %i.ett, align 4, !tbaa !322
  %i.etu = add i32 %i.epz, 18
  %i.etv = sext i32 %i.etu to i64
  %i.etw = getelementptr inbounds [4 x i8], ptr %0, i64 %i.etv
  %i.etx = load float, ptr %i.etw, align 4, !tbaa !322 ; 2 uses
  %i.ety = or disjoint i64 %i.eqb, 14             ; 2 uses
  %i.etz = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.ety
  store float %i.etx, ptr %i.etz, align 8, !tbaa !322
  %i.eua = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.ety
  store float %i.etx, ptr %i.eua, align 8, !tbaa !322
  %i.eub = add i32 %i.epz, 17
  %i.euc = sext i32 %i.eub to i64
  %i.eud = getelementptr inbounds [4 x i8], ptr %0, i64 %i.euc
  %i.eue = load float, ptr %i.eud, align 4, !tbaa !322 ; 2 uses
  %i.euf = or disjoint i64 %i.eqb, 15             ; 2 uses
  %i.eug = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.euf
  store float %i.eue, ptr %i.eug, align 4, !tbaa !322
  %i.euh = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.euf
  store float %i.eue, ptr %i.euh, align 4, !tbaa !322
  %indvars.iv.next4252 = add nuw nsw i64 %indvars.iv4251, 1 ; 2 uses
  %exitcond4254.not = icmp eq i64 %indvars.iv.next4252, 16
  br i1 %exitcond4254.not, label %.loopexit3929, label %.preheader3906, !llvm.loop !249

.loopexit3929:                                    ; preds = %.preheader3906, %.loopexit3931
  br i1 %i.cr, label %.lr.ph3983, label %.preheader3915

.lr.ph3983:                                       ; preds = %.loopexit3929
  %i.eui = add nsw i32 %i.hx, -2
  %i.euj = icmp sgt i32 %i.hx, 4
  br i1 %i.euj, label %.lr.ph3979.preheader, label %.preheader3927

.lr.ph3979.preheader:                             ; preds = %.lr.ph3983
  %6 = trunc i64 %indvar to i32
  %7 = mul i32 %6, -128
  %8 = or disjoint i32 %7, 12
  %i.euk = add i32 %i.hv, %8                      ; 2 uses
  %i.eul = zext i32 %i.euk to i64                 ; 2 uses
  %min.iters.check5260 = icmp ult i32 %i.euk, 8
  %n.vec5262 = and i64 %i.eul, 4294967288         ; 4 uses
  %i.eum = trunc nuw i64 %n.vec5262 to i32
  %i.eun = or disjoint i32 %i.eum, 2
  %cmp.n5278 = icmp eq i64 %n.vec5262, %i.eul
  br label %.lr.ph3979

.preheader3927:                                   ; preds = %._crit_edge3980, %.lr.ph3983
  br i1 %i.ct, label %.lr.ph3991, label %.preheader3915

.lr.ph3991:                                       ; preds = %.preheader3927
  %i.euo = add nsw i32 %i.hx, -4
  %i.eup = icmp sgt i32 %i.hx, 8
  br i1 %i.eup, label %.lr.ph3988.preheader, label %.preheader3925

.lr.ph3988.preheader:                             ; preds = %.lr.ph3991
  %9 = trunc i64 %indvar to i32
  %10 = mul i32 %9, -128
  %11 = or disjoint i32 %10, 8
  %i.euq = add i32 %i.hv, %11                     ; 2 uses
  %i.eur = zext i32 %i.euq to i64                 ; 2 uses
  %min.iters.check5212 = icmp ult i32 %i.euq, 8
  %n.vec5214 = and i64 %i.eur, 4294967288         ; 4 uses
  %i.eus = trunc nuw i64 %n.vec5214 to i32
  %i.eut = or disjoint i32 %i.eus, 4
  %cmp.n5254 = icmp eq i64 %n.vec5214, %i.eur
  br label %.lr.ph3988

.lr.ph3979:                                       ; preds = %.lr.ph3979.preheader, %._crit_edge3980
  %indvars.iv4255 = phi i32 [ %indvars.iv.next4256, %._crit_edge3980 ], [ 320, %.lr.ph3979.preheader ] ; 2 uses
  %.032363981 = phi i32 [ %i.ewi, %._crit_edge3980 ], [ 2, %.lr.ph3979.preheader ]
  %i.euu = or disjoint i32 %indvars.iv4255, 2
  %i.euv = zext i32 %i.euu to i64                 ; 4 uses
  %.phi.trans.insert = getelementptr [4 x i8], ptr %i.y, i64 %i.euv
  %.pre = load float, ptr %.phi.trans.insert, align 8, !tbaa !322 ; 2 uses
  br i1 %min.iters.check5260, label %scalar.ph5259.preheader, label %vector.ph5261

vector.ph5261:                                    ; preds = %.lr.ph3979
  %i.euw = add nuw nsw i64 %n.vec5262, %i.euv
  %vector.recur.init5265 = insertelement <8 x float> poison, float %.pre, i64 7
  br label %vector.body5263

vector.body5263:                                  ; preds = %vector.body5263, %vector.ph5261
  %index5264 = phi i64 [ 0, %vector.ph5261 ], [ %index.next5275, %vector.body5263 ] ; 2 uses
  %vector.recur5266 = phi <8 x float> [ %vector.recur.init5265, %vector.ph5261 ], [ %wide.load5267, %vector.body5263 ]
  %i.eux = add nuw i64 %index5264, %i.euv         ; 5 uses
  %i.euy = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.eux
  %i.euz = getelementptr inbounds nuw i8, ptr %i.euy, i64 4
  %wide.load5267 = load <8 x float>, ptr %i.euz, align 4, !tbaa !322 ; 4 uses
  %i.eva = shufflevector <8 x float> %vector.recur5266, <8 x float> %wide.load5267, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 4 uses
  %i.evb = getelementptr [4 x i8], ptr %i.y, i64 %i.eux ; 7 uses
  %i.evc = getelementptr i8, ptr %i.evb, i64 -4
  %wide.load5268 = load <8 x float>, ptr %i.evc, align 4, !tbaa !322
  %i.evd = fsub reassoc nsz arcp contract afn <8 x float> %wide.load5267, %wide.load5268 ; 3 uses
  %i.eve = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.evd)
  %i.evf = getelementptr inbounds nuw i8, ptr %i.evb, i64 640
  %wide.load5269 = load <8 x float>, ptr %i.evf, align 8, !tbaa !322
  %i.evg = getelementptr i8, ptr %i.evb, i64 -640
  %wide.load5270 = load <8 x float>, ptr %i.evg, align 8, !tbaa !322
  %i.evh = fsub reassoc nsz arcp contract afn <8 x float> %wide.load5269, %wide.load5270 ; 3 uses
  %i.evi = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.evh)
  %i.evj = getelementptr inbounds nuw i8, ptr %i.evb, i64 1280
  %wide.load5271 = load <8 x float>, ptr %i.evj, align 8, !tbaa !322
  %i.evk = fsub reassoc nsz arcp contract afn <8 x float> %wide.load5271, %i.eva
  %i.evl = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.evk)
  %i.evm = getelementptr i8, ptr %i.evb, i64 -1280
  %wide.load5272 = load <8 x float>, ptr %i.evm, align 8, !tbaa !322
  %i.evn = fsub reassoc nsz arcp contract afn <8 x float> %i.eva, %wide.load5272
  %i.evo = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.evn)
  %i.evp = fadd reassoc nsz arcp contract afn <8 x float> %i.evi, splat (float f0x3727C5AC)
  %i.evq = fadd reassoc nsz arcp contract afn <8 x float> %i.evp, %i.evl
  %i.evr = fadd reassoc nsz arcp contract afn <8 x float> %i.evq, %i.evo
  %i.evs = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.eux
  store <8 x float> %i.evr, ptr %i.evs, align 8, !tbaa !322
  %i.evt = getelementptr inbounds nuw i8, ptr %i.evb, i64 8
  %wide.load5273 = load <8 x float>, ptr %i.evt, align 16, !tbaa !322
  %i.evu = fsub reassoc nsz arcp contract afn <8 x float> %wide.load5273, %i.eva
  %i.evv = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.evu)
  %i.evw = getelementptr i8, ptr %i.evb, i64 -8
  %wide.load5274 = load <8 x float>, ptr %i.evw, align 32, !tbaa !322
  %i.evx = fsub reassoc nsz arcp contract afn <8 x float> %i.eva, %wide.load5274
  %i.evy = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.evx)
  %i.evz = fadd reassoc nsz arcp contract afn <8 x float> %i.eve, splat (float f0x3727C5AC)
  %i.ewa = fadd reassoc nsz arcp contract afn <8 x float> %i.evz, %i.evv
  %i.ewb = fadd reassoc nsz arcp contract afn <8 x float> %i.ewa, %i.evy
  %i.ewc = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.eux
  store <8 x float> %i.ewb, ptr %i.ewc, align 8, !tbaa !322
  %i.ewd = fmul reassoc nsz arcp contract afn <8 x float> %i.evd, %i.evd
  %i.ewe = fmul reassoc nsz arcp contract afn <8 x float> %i.evh, %i.evh
  %i.ewf = fadd reassoc nsz arcp contract afn <8 x float> %i.ewe, %i.ewd
  %i.ewg = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.eux
  store <8 x float> %i.ewf, ptr %i.ewg, align 8, !tbaa !322
  %index.next5275 = add nuw i64 %index5264, 8     ; 2 uses
  %i.ewh = icmp eq i64 %index.next5275, %n.vec5262
  br i1 %i.ewh, label %middle.block5276, label %vector.body5263, !llvm.loop !250

middle.block5276:                                 ; preds = %vector.body5263
  %vector.recur.extract5277 = extractelement <8 x float> %wide.load5267, i64 7
  br i1 %cmp.n5278, label %._crit_edge3980, label %scalar.ph5259.preheader

scalar.ph5259.preheader:                          ; preds = %.lr.ph3979, %middle.block5276
  %.ph7456 = phi float [ %.pre, %.lr.ph3979 ], [ %vector.recur.extract5277, %middle.block5276 ]
  %indvars.iv4257.ph = phi i64 [ %i.euv, %.lr.ph3979 ], [ %i.euw, %middle.block5276 ]
  %.032353976.ph = phi i32 [ 2, %.lr.ph3979 ], [ %i.eun, %middle.block5276 ]
  br label %scalar.ph5259

._crit_edge3980:                                  ; preds = %scalar.ph5259, %middle.block5276
  %i.ewi = add nuw nsw i32 %.032363981, 1         ; 2 uses
  %i.ewj = icmp slt i32 %i.ewi, %i.cq
  %indvars.iv.next4256 = add i32 %indvars.iv4255, 160
  br i1 %i.ewj, label %.lr.ph3979, label %.preheader3927, !llvm.loop !251

scalar.ph5259:                                    ; preds = %scalar.ph5259.preheader, %scalar.ph5259
  %i.ewk = phi float [ %i.ewm, %scalar.ph5259 ], [ %.ph7456, %scalar.ph5259.preheader ] ; 4 uses
  %indvars.iv4257 = phi i64 [ %indvars.iv.next4258, %scalar.ph5259 ], [ %indvars.iv4257.ph, %scalar.ph5259.preheader ] ; 5 uses
  %.032353976 = phi i32 [ %i.eya, %scalar.ph5259 ], [ %.032353976.ph, %scalar.ph5259.preheader ]
  %indvars.iv.next4258 = add nuw nsw i64 %indvars.iv4257, 1 ; 2 uses
  %i.ewl = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.next4258
  %i.ewm = load float, ptr %i.ewl, align 4, !tbaa !322 ; 2 uses
  %i.ewn = getelementptr [4 x i8], ptr %i.y, i64 %indvars.iv4257 ; 7 uses
  %i.ewo = getelementptr i8, ptr %i.ewn, i64 -4
  %i.ewp = load float, ptr %i.ewo, align 4, !tbaa !322
  %i.ewq = fsub reassoc nsz arcp contract afn float %i.ewm, %i.ewp ; 3 uses
  %i.ewr = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ewq)
  %i.ews = getelementptr inbounds nuw i8, ptr %i.ewn, i64 640
  %i.ewt = load float, ptr %i.ews, align 4, !tbaa !322
  %i.ewu = getelementptr i8, ptr %i.ewn, i64 -640
  %i.ewv = load float, ptr %i.ewu, align 4, !tbaa !322
  %i.eww = fsub reassoc nsz arcp contract afn float %i.ewt, %i.ewv ; 3 uses
  %i.ewx = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.eww)
  %i.ewy = getelementptr inbounds nuw i8, ptr %i.ewn, i64 1280
  %i.ewz = load float, ptr %i.ewy, align 4, !tbaa !322
  %i.exa = fsub reassoc nsz arcp contract afn float %i.ewz, %i.ewk
  %i.exb = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.exa)
  %i.exc = getelementptr i8, ptr %i.ewn, i64 -1280
  %i.exd = load float, ptr %i.exc, align 4, !tbaa !322
  %i.exe = fsub reassoc nsz arcp contract afn float %i.ewk, %i.exd
  %i.exf = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.exe)
  %i.exg = fadd reassoc nsz arcp contract afn float %i.ewx, f0x3727C5AC
  %i.exh = fadd reassoc nsz arcp contract afn float %i.exg, %i.exb
  %i.exi = fadd reassoc nsz arcp contract afn float %i.exh, %i.exf
  %i.exj = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv4257
  store float %i.exi, ptr %i.exj, align 4, !tbaa !322
  %i.exk = getelementptr inbounds nuw i8, ptr %i.ewn, i64 8
  %i.exl = load float, ptr %i.exk, align 4, !tbaa !322
  %i.exm = fsub reassoc nsz arcp contract afn float %i.exl, %i.ewk
  %i.exn = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.exm)
  %i.exo = getelementptr i8, ptr %i.ewn, i64 -8
  %i.exp = load float, ptr %i.exo, align 4, !tbaa !322
  %i.exq = fsub reassoc nsz arcp contract afn float %i.ewk, %i.exp
  %i.exr = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.exq)
  %i.exs = fadd reassoc nsz arcp contract afn float %i.ewr, f0x3727C5AC
  %i.ext = fadd reassoc nsz arcp contract afn float %i.exs, %i.exn
  %i.exu = fadd reassoc nsz arcp contract afn float %i.ext, %i.exr
  %i.exv = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv4257
  store float %i.exu, ptr %i.exv, align 4, !tbaa !322
  %i.exw = fmul reassoc nsz arcp contract afn float %i.ewq, %i.ewq
  %i.exx = fmul reassoc nsz arcp contract afn float %i.eww, %i.eww
  %i.exy = fadd reassoc nsz arcp contract afn float %i.exx, %i.exw
  %i.exz = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv4257
  store float %i.exy, ptr %i.exz, align 4, !tbaa !322
  %i.eya = add nuw nsw i32 %.032353976, 1         ; 2 uses
  %i.eyb = icmp slt i32 %i.eya, %i.eui
  br i1 %i.eyb, label %scalar.ph5259, label %._crit_edge3980, !llvm.loop !252

.lr.ph3999:                                       ; preds = %._crit_edge3989
  %i.eyc = add nsw i32 %i.hx, -4
  br label %.lr.ph3996

.lr.ph3988:                                       ; preds = %.lr.ph3988.preheader, %._crit_edge3989
  %indvars.iv4260 = phi i32 [ %indvars.iv.next4261, %._crit_edge3989 ], [ 640, %.lr.ph3988.preheader ] ; 2 uses
  %.032333990 = phi i32 [ %i.fem, %._crit_edge3989 ], [ 4, %.lr.ph3988.preheader ] ; 2 uses
  %i.eyd = or disjoint i32 %indvars.iv4260, 4
  %i.eye = sext i32 %i.eyd to i64                 ; 5 uses
  %i.eyf = shl i32 %.032333990, 2
  %i.eyg = and i32 %i.eyf, 28
  %i.eyh = lshr i32 %4, %i.eyg
  %i.eyi = trunc i32 %i.eyh to i1                 ; 2 uses
  %.phi.trans.insert4411 = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.eye
  %.pre4412 = load float, ptr %.phi.trans.insert4411, align 16, !tbaa !322 ; 2 uses
  %.phi.trans.insert4413 = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.eye
  %.pre4414 = load float, ptr %.phi.trans.insert4413, align 16, !tbaa !322 ; 2 uses
  br i1 %min.iters.check5212, label %scalar.ph5211.preheader, label %vector.ph5213

vector.ph5213:                                    ; preds = %.lr.ph3988
  %i.eyj = add nsw i64 %n.vec5214, %i.eye
  %broadcast.splatinsert5217 = insertelement <8 x i1> poison, i1 %i.eyi, i64 0
  %broadcast.splat5218 = shufflevector <8 x i1> %broadcast.splatinsert5217, <8 x i1> poison, <8 x i32> zeroinitializer
  %induction5219 = xor <8 x i1> %broadcast.splat5218, <i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true> ; 4 uses
  %vector.recur.init = insertelement <8 x float> poison, float %.pre4414, i64 7
  %vector.recur.init5222 = insertelement <8 x float> poison, float %.pre4412, i64 7
  br label %vector.body5220

vector.body5220:                                  ; preds = %vector.body5220, %vector.ph5213
  %index5221 = phi i64 [ 0, %vector.ph5213 ], [ %index.next5251, %vector.body5220 ] ; 2 uses
  %vector.recur = phi <8 x float> [ %vector.recur.init, %vector.ph5213 ], [ %wide.load5239, %vector.body5220 ]
  %vector.recur5223 = phi <8 x float> [ %vector.recur.init5222, %vector.ph5213 ], [ %wide.load5235, %vector.body5220 ]
  %i.eyk = add nuw i64 %index5221, %i.eye         ; 16 uses
  %i.eyl = add nsw i64 %i.eyk, -160               ; 2 uses
  %i.eym = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.eyl
  %wide.load5225 = load <8 x float>, ptr %i.eym, align 16, !tbaa !322 ; 2 uses
  %i.eyn = add nsw i64 %i.eyk, -320               ; 2 uses
  %i.eyo = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.eyn
  %wide.load5226 = load <8 x float>, ptr %i.eyo, align 16, !tbaa !322 ; 2 uses
  %i.eyp = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.eyk
  %wide.load5227 = load <8 x float>, ptr %i.eyp, align 16, !tbaa !322 ; 4 uses
  %i.eyq = fadd reassoc nsz arcp contract afn <8 x float> %wide.load5227, %wide.load5226
  %i.eyr = fmul reassoc nsz arcp contract afn <8 x float> %i.eyq, %wide.load5225
  %i.eys = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.eyk
  %i.eyt = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.eyn
  %wide.load5228 = load <8 x float>, ptr %i.eyt, align 16, !tbaa !322 ; 2 uses
  %i.eyu = fadd reassoc nsz arcp contract afn <8 x float> %wide.load5228, splat (float f0x3727C5AC)
  %i.eyv = fmul reassoc nsz arcp contract afn <8 x float> %i.eyu, %wide.load5227
  %i.eyw = add nuw nsw i64 %i.eyk, 160            ; 2 uses
  %i.eyx = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.eyw
  %wide.load5229 = load <8 x float>, ptr %i.eyx, align 16, !tbaa !322 ; 2 uses
  %i.eyy = add nuw nsw i64 %i.eyk, 320            ; 2 uses
  %i.eyz = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.eyy
  %wide.load5230 = load <8 x float>, ptr %i.eyz, align 16, !tbaa !322 ; 2 uses
end_hunk_1
begin_hunk_2_@amaze_demosaic:bb.a
  %i.hte = fadd reassoc nsz arcp contract afn float %i.htd, %i.htc ; 2 uses
  %i.htf = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.hqg
  %i.htg = load float, ptr %i.htf, align 4, !tbaa !322
  %i.hth = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.hqm
  %i.hti = load float, ptr %i.hth, align 4, !tbaa !322
  %i.htj = fadd reassoc nsz arcp contract afn float %i.hti, %i.htg
  %i.htk = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.hqs
  %i.htl = load float, ptr %i.htk, align 4, !tbaa !322
  %i.htm = fadd reassoc nsz arcp contract afn float %i.htj, %i.htl
  %i.htn = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.hqy
  %i.hto = load float, ptr %i.htn, align 4, !tbaa !322
  %i.htp = fadd reassoc nsz arcp contract afn float %i.htm, %i.hto
  %i.htq = fmul reassoc nsz arcp contract afn float %i.htp, f0x3E0C7CD5
  %i.htr = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.hrg
  %i.hts = load float, ptr %i.htr, align 4, !tbaa !322
  %i.htt = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.hrm
  %i.htu = load float, ptr %i.htt, align 4, !tbaa !322
  %i.htv = fadd reassoc nsz arcp contract afn float %i.htu, %i.hts
  %i.htw = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.hrt
  %i.htx = load float, ptr %i.htw, align 4, !tbaa !322
  %i.hty = fadd reassoc nsz arcp contract afn float %i.htv, %i.htx
  %i.htz = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.hsa
  %i.hua = load float, ptr %i.htz, align 4, !tbaa !322
  %i.hub = fadd reassoc nsz arcp contract afn float %i.hty, %i.hua
  %i.huc = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.hsg
  %i.hud = load float, ptr %i.huc, align 4, !tbaa !322
  %i.hue = fadd reassoc nsz arcp contract afn float %i.hub, %i.hud
  %i.huf = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.hsm
  %i.hug = load float, ptr %i.huf, align 4, !tbaa !322
  %i.huh = fadd reassoc nsz arcp contract afn float %i.hue, %i.hug
  %i.hui = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.hss
  %i.huj = load float, ptr %i.hui, align 4, !tbaa !322
  %i.huk = fadd reassoc nsz arcp contract afn float %i.huh, %i.huj
  %i.hul = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.hsy
  %i.hum = load float, ptr %i.hul, align 4, !tbaa !322
  %i.hun = fadd reassoc nsz arcp contract afn float %i.huk, %i.hum
  %i.huo = fmul reassoc nsz arcp contract afn float %i.hun, f0x3D670656
  %i.hup = fadd reassoc nsz arcp contract afn float %i.hte, 1.000000e-10
  %i.huq = fadd reassoc nsz arcp contract afn float %i.hup, %i.htq
  %i.hur = fadd reassoc nsz arcp contract afn float %i.huq, %i.huo
  %i.hus = fdiv reassoc nsz arcp contract afn float %i.hte, %i.hur
  %i.hut = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv4339
  store float %i.hus, ptr %i.hut, align 4, !tbaa !322
  %i.huu = load float, ptr %i.hkn, align 4, !tbaa !322 ; 4 uses
  %i.huv = fcmp reassoc nsz arcp contract afn olt float %i.hqb, %i.huu
  br i1 %i.huv, label %bb.ck, label %bb.cn

bb.ck:                                            ; preds = %bb.cj
  %.not.i3668 = fcmp oeq float %i.hqb, 0.000000e+00
  %i.huw = bitcast float %i.hqb to i32
  %i.hux = add i32 %i.huw, 8388608
  %i.huy = bitcast i32 %i.hux to float
  %.sroa.0.0.i3669 = select nsz i1 %.not.i3668, float %i.hqb, float %i.huy
  %i.huz = fcmp reassoc nsz arcp contract afn olt float %.sroa.0.0.i3669, %i.huu
  br i1 %i.huz, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.hva = load float, ptr %i.hlf, align 4, !tbaa !322 ; 3 uses
  %i.hvb = load float, ptr %i.hlh, align 4, !tbaa !322 ; 3 uses
  %i.hvc = fcmp reassoc nsz arcp contract afn olt float %i.hva, %i.hvb ; 2 uses
  %.4809 = select i1 %i.hvc, float %i.hvb, float %i.hva ; 2 uses
  %.4810 = select i1 %i.hvc, float %i.hva, float %i.hvb ; 2 uses
  %i.hvd = fcmp reassoc nsz arcp contract afn olt float %i.hqb, %.4809
  %.3568 = select reassoc nsz arcp contract afn i1 %i.hvd, float %i.hqb, float %.4809 ; 2 uses
  %i.hve = fcmp reassoc nsz arcp contract afn ogt float %.4810, %.3568
  %spec.select3815 = select reassoc nsz arcp contract afn i1 %i.hve, float %.4810, float %.3568
  br label %.sink.split4737

bb.cm:                                            ; preds = %bb.ck
  %i.hvf = fsub reassoc nsz arcp contract afn float %i.huu, %i.hqb ; 3 uses
  %.not.i3670 = fcmp oeq float %i.hvf, 0.000000e+00
  %i.hvg = bitcast float %i.hvf to i32
  %i.hvh = add i32 %i.hvg, 8388608
  %i.hvi = bitcast i32 %i.hvh to float
  %.sroa.0.0.i3671 = select nsz i1 %.not.i3670, float %i.hvf, float %i.hvi
  %i.hvj = fadd reassoc nsz arcp contract afn float %i.hqb, f0x3727C5AC
  %i.hvk = fadd reassoc nsz arcp contract afn float %i.hvj, %i.huu
  %i.hvl = load float, ptr %i.hlf, align 4, !tbaa !322 ; 3 uses
  %i.hvm = load float, ptr %i.hlh, align 4, !tbaa !322 ; 3 uses
  %i.hvn = fcmp reassoc nsz arcp contract afn olt float %i.hvl, %i.hvm ; 2 uses
  %.4811 = select i1 %i.hvn, float %i.hvm, float %i.hvl ; 2 uses
  %.4812 = select i1 %i.hvn, float %i.hvl, float %i.hvm ; 2 uses
  %i.hvo = fcmp reassoc nsz arcp contract afn olt float %i.hqb, %.4811
  %.3572 = select reassoc nsz arcp contract afn i1 %i.hvo, float %i.hqb, float %.4811 ; 2 uses
  %i.hvp = fcmp reassoc nsz arcp contract afn ogt float %.4812, %.3572
  %spec.select3817 = select reassoc nsz arcp contract afn i1 %i.hvp, float %.4812, float %.3572 ; 2 uses
  %i.hvq = fsub reassoc nsz arcp contract afn float %i.hqb, %spec.select3817
  %i.hvr = fmul reassoc nsz arcp contract afn float %i.hvq, %.sroa.0.0.i3671
  %i.hvs = fdiv reassoc nsz arcp contract afn float %i.hvr, %i.hvk
  %i.hvt = fadd reassoc nsz arcp contract afn float %i.hvs, %spec.select3817
  br label %.sink.split4737

.sink.split4737:                                  ; preds = %bb.cm, %bb.cl
  %spec.select3815.sink = phi float [ %spec.select3815, %bb.cl ], [ %i.hvt, %bb.cm ]
  store float %spec.select3815.sink, ptr %i.hqc, align 4, !tbaa !322
  br label %bb.cn

bb.cn:                                            ; preds = %.sink.split4737, %bb.cj
  %i.hvu = load float, ptr %i.hpw, align 4, !tbaa !322 ; 12 uses
  %i.hvv = load float, ptr %i.hkn, align 4, !tbaa !322 ; 4 uses
  %i.hvw = fcmp reassoc nsz arcp contract afn olt float %i.hvu, %i.hvv
  br i1 %i.hvw, label %bb.co, label %bb.cr

bb.co:                                            ; preds = %bb.cn
  %.not.i3672 = fcmp oeq float %i.hvu, 0.000000e+00
  %i.hvx = bitcast float %i.hvu to i32
  %i.hvy = add i32 %i.hvx, 8388608
  %i.hvz = bitcast i32 %i.hvy to float
  %.sroa.0.0.i3673 = select nsz i1 %.not.i3672, float %i.hvu, float %i.hvz
  %i.hwa = fcmp reassoc nsz arcp contract afn olt float %.sroa.0.0.i3673, %i.hvv
  br i1 %i.hwa, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.hwb = load float, ptr %i.hli, align 4, !tbaa !322 ; 3 uses
  %i.hwc = load float, ptr %i.hlj, align 4, !tbaa !322 ; 3 uses
  %i.hwd = fcmp reassoc nsz arcp contract afn olt float %i.hwb, %i.hwc ; 2 uses
  %.4813 = select i1 %i.hwd, float %i.hwc, float %i.hwb ; 2 uses
  %.4814 = select i1 %i.hwd, float %i.hwb, float %i.hwc ; 2 uses
  %i.hwe = fcmp reassoc nsz arcp contract afn olt float %i.hvu, %.4813
  %.3576 = select reassoc nsz arcp contract afn i1 %i.hwe, float %i.hvu, float %.4813 ; 2 uses
  %i.hwf = fcmp reassoc nsz arcp contract afn ogt float %.4814, %.3576
  %spec.select3819 = select reassoc nsz arcp contract afn i1 %i.hwf, float %.4814, float %.3576
  br label %.sink.split4752

bb.cq:                                            ; preds = %bb.co
  %i.hwg = fsub reassoc nsz arcp contract afn float %i.hvv, %i.hvu ; 3 uses
  %.not.i3674 = fcmp oeq float %i.hwg, 0.000000e+00
  %i.hwh = bitcast float %i.hwg to i32
  %i.hwi = add i32 %i.hwh, 8388608
  %i.hwj = bitcast i32 %i.hwi to float
  %.sroa.0.0.i3675 = select nsz i1 %.not.i3674, float %i.hwg, float %i.hwj
  %i.hwk = fadd reassoc nsz arcp contract afn float %i.hvu, f0x3727C5AC
  %i.hwl = fadd reassoc nsz arcp contract afn float %i.hwk, %i.hvv
  %i.hwm = load float, ptr %i.hli, align 4, !tbaa !322 ; 3 uses
  %i.hwn = load float, ptr %i.hlj, align 4, !tbaa !322 ; 3 uses
  %i.hwo = fcmp reassoc nsz arcp contract afn olt float %i.hwm, %i.hwn ; 2 uses
  %.4815 = select i1 %i.hwo, float %i.hwn, float %i.hwm ; 2 uses
  %.4816 = select i1 %i.hwo, float %i.hwm, float %i.hwn ; 2 uses
  %i.hwp = fcmp reassoc nsz arcp contract afn olt float %i.hvu, %.4815
  %.3580 = select reassoc nsz arcp contract afn i1 %i.hwp, float %i.hvu, float %.4815 ; 2 uses
  %i.hwq = fcmp reassoc nsz arcp contract afn ogt float %.4816, %.3580
  %spec.select3821 = select reassoc nsz arcp contract afn i1 %i.hwq, float %.4816, float %.3580 ; 2 uses
  %i.hwr = fsub reassoc nsz arcp contract afn float %i.hvu, %spec.select3821
  %i.hws = fmul reassoc nsz arcp contract afn float %i.hwr, %.sroa.0.0.i3675
  %i.hwt = fdiv reassoc nsz arcp contract afn float %i.hws, %i.hwl
  %i.hwu = fadd reassoc nsz arcp contract afn float %i.hwt, %spec.select3821
  br label %.sink.split4752

.sink.split4752:                                  ; preds = %bb.cq, %bb.cp
  %spec.select3819.sink = phi float [ %spec.select3819, %bb.cp ], [ %i.hwu, %bb.cq ] ; 2 uses
  store float %spec.select3819.sink, ptr %i.hpw, align 4, !tbaa !322
  br label %bb.cr

bb.cr:                                            ; preds = %.sink.split4752, %bb.cn
  %i.hwv = phi float [ %i.hvu, %bb.cn ], [ %spec.select3819.sink, %.sink.split4752 ] ; 3 uses
  %i.hww = load float, ptr %i.hqc, align 4, !tbaa !322 ; 3 uses
  %i.hwx = fcmp reassoc nsz arcp contract afn ogt float %i.hww, %5
  br i1 %i.hwx, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.hwy = load float, ptr %i.hlf, align 4, !tbaa !322 ; 3 uses
  %i.hwz = load float, ptr %i.hlh, align 4, !tbaa !322 ; 3 uses
  %i.hxa = fcmp reassoc nsz arcp contract afn olt float %i.hwy, %i.hwz ; 2 uses
  %.4817 = select i1 %i.hxa, float %i.hwz, float %i.hwy ; 2 uses
  %.4818 = select i1 %i.hxa, float %i.hwy, float %i.hwz ; 2 uses
  %i.hxb = fcmp reassoc nsz arcp contract afn olt float %i.hww, %.4817
  %.3584 = select reassoc nsz arcp contract afn i1 %i.hxb, float %i.hww, float %.4817 ; 2 uses
  %i.hxc = fcmp reassoc nsz arcp contract afn ogt float %.4818, %.3584
  %spec.select3823 = select reassoc nsz arcp contract afn i1 %i.hxc, float %.4818, float %.3584
  store float %spec.select3823, ptr %i.hqc, align 4, !tbaa !322
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.hxd = fcmp reassoc nsz arcp contract afn ogt float %i.hwv, %5
  br i1 %i.hxd, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.hxe = load float, ptr %i.hli, align 4, !tbaa !322 ; 3 uses
  %i.hxf = load float, ptr %i.hlj, align 4, !tbaa !322 ; 3 uses
  %i.hxg = fcmp reassoc nsz arcp contract afn olt float %i.hxe, %i.hxf ; 2 uses
  %.4819 = select i1 %i.hxg, float %i.hxf, float %i.hxe ; 2 uses
  %.4820 = select i1 %i.hxg, float %i.hxe, float %i.hxf ; 2 uses
  %i.hxh = fcmp reassoc nsz arcp contract afn olt float %i.hwv, %.4819
  %.3588 = select reassoc nsz arcp contract afn i1 %i.hxh, float %i.hwv, float %.4819 ; 2 uses
  %i.hxi = fcmp reassoc nsz arcp contract afn ogt float %.4820, %.3588
  %spec.select3825 = select reassoc nsz arcp contract afn i1 %i.hxi, float %.4820, float %.3588
  store float %spec.select3825, ptr %i.hpw, align 4, !tbaa !322
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.hxj = add nuw nsw i32 %.031744093, 2         ; 2 uses
  %indvars.iv.next4340 = add nuw nsw i64 %indvars.iv4339, 1
  %i.hxk = icmp slt i32 %i.hxj, %i.hgj
  br i1 %i.hxk, label %.lr.ph4097, label %._crit_edge4098, !llvm.loop !279

.preheader3916:                                   ; preds = %._crit_edge4106
  br i1 %i.db, label %.lr.ph4116, label %.preheader3915

.lr.ph4116:                                       ; preds = %.preheader3916
  %i.hxl = add nsw i32 %i.hx, -12                 ; 2 uses
  %12 = trunc i64 %indvar to i32
  %13 = shl i32 %12, 7
  %i.hxm = add i32 %i.hv, -9
  %i.hxn = add i32 %i.hv, -9
  %i.hxo = add i32 %i.hv, -9
  br label %bb.cz

bb.cw:                                            ; preds = %.lr.ph4108, %._crit_edge4106
  %indvars.iv4344 = phi i32 [ 1610, %.lr.ph4108 ], [ %indvars.iv.next4345, %._crit_edge4106 ] ; 2 uses
  %.031674107 = phi i32 [ 10, %.lr.ph4108 ], [ %i.hxy, %._crit_edge4106 ] ; 2 uses
  %i.hxp = shl i32 %.031674107, 2
  %i.hxq = and i32 %i.hxp, 28
  %i.hxr = lshr i32 %4, %i.hxq
  %i.hxs = and i32 %i.hxr, 1                      ; 2 uses
  %i.hxt = or disjoint i32 %i.hxs, 10             ; 2 uses
  %i.hxu = icmp slt i32 %i.hxt, %i.hjw
  br i1 %i.hxu, label %.lr.ph4105.preheader, label %._crit_edge4106

.lr.ph4105.preheader:                             ; preds = %bb.cw
  %i.hxv = or disjoint i32 %indvars.iv4344, %i.hxs
  %i.hxw = zext i32 %i.hxv to i64                 ; 2 uses
  %i.hxx = lshr i64 %i.hxw, 1
  br label %.lr.ph4105

._crit_edge4106:                                  ; preds = %bb.cy, %bb.cw
  %i.hxy = add nuw nsw i32 %.031674107, 1         ; 2 uses
  %i.hxz = icmp slt i32 %i.hxy, %i.cy
  %indvars.iv.next4345 = add i32 %indvars.iv4344, 160
  br i1 %i.hxz, label %bb.cw, label %.preheader3916, !llvm.loop !280

.lr.ph4105:                                       ; preds = %.lr.ph4105.preheader, %bb.cy
  %indvars.iv4348 = phi i64 [ %i.hxw, %.lr.ph4105.preheader ], [ %indvars.iv.next4349, %bb.cy ] ; 5 uses
  %indvars.iv4346 = phi i64 [ %i.hxx, %.lr.ph4105.preheader ], [ %indvars.iv.next4347, %bb.cy ] ; 5 uses
  %.031664101 = phi i32 [ %i.hxt, %.lr.ph4105.preheader ], [ %i.hzy, %bb.cy ]
  %i.hya = trunc nuw i64 %indvars.iv4348 to i32   ; 2 uses
  %i.hyb = add nsw i32 %i.hya, -161
  %i.hyc = ashr i32 %i.hyb, 1
  %i.hyd = sext i32 %i.hyc to i64
  %i.hye = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.hyd
  %i.hyf = load float, ptr %i.hye, align 4, !tbaa !322
  %i.hyg = add nsw i32 %i.hya, -159
  %i.hyh = ashr i32 %i.hyg, 1
  %i.hyi = sext i32 %i.hyh to i64
  %i.hyj = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.hyi
  %i.hyk = load float, ptr %i.hyj, align 4, !tbaa !322
  %i.hyl = fadd reassoc nsz arcp contract afn float %i.hyk, %i.hyf
  %i.hym = add nuw i64 %indvars.iv4348, 159
  %i.hyn = lshr i64 %i.hym, 1
  %i.hyo = and i64 %i.hyn, 2147483647
  %i.hyp = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.hyo
  %i.hyq = load float, ptr %i.hyp, align 4, !tbaa !322
  %i.hyr = fadd reassoc nsz arcp contract afn float %i.hyl, %i.hyq
  %i.hys = add nuw i64 %indvars.iv4348, 161
  %i.hyt = lshr i64 %i.hys, 1
  %i.hyu = and i64 %i.hyt, 2147483647
  %i.hyv = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.hyu
  %i.hyw = load float, ptr %i.hyv, align 4, !tbaa !322
  %i.hyx = fadd reassoc nsz arcp contract afn float %i.hyr, %i.hyw ; 3 uses
  %.not.i3677 = fcmp oeq float %i.hyx, 0.000000e+00
  %i.hyy = bitcast float %i.hyx to i32
  %i.hyz = add i32 %i.hyy, -16777216
  %i.hza = bitcast i32 %i.hyz to float
  %.sroa.0.0.i3678 = select nsz i1 %.not.i3677, float %i.hyx, float %i.hza ; 3 uses
  %i.hzb = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv4346 ; 2 uses
  %i.hzc = load float, ptr %i.hzb, align 4, !tbaa !322 ; 2 uses
  %i.hzd = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.hzc
  %i.hze = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.hzd)
  %i.hzf = fsub reassoc nsz arcp contract afn float 5.000000e-01, %.sroa.0.0.i3678
  %i.hzg = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.hzf)
  %i.hzh = fcmp reassoc nsz arcp contract afn olt float %i.hze, %i.hzg
  br i1 %i.hzh, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %.lr.ph4105
  store float %.sroa.0.0.i3678, ptr %i.hzb, align 4, !tbaa !322
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %.lr.ph4105
  %i.hzi = phi float [ %.sroa.0.0.i3678, %bb.cx ], [ %i.hzc, %.lr.ph4105 ] ; 2 uses
  %i.hzj = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv4348
  %i.hzk = load float, ptr %i.hzj, align 4, !tbaa !322
  %i.hzl = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv4346
  %i.hzm = load float, ptr %i.hzl, align 4, !tbaa !322
  %i.hzn = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.hzi
  %i.hzo = fmul reassoc nsz arcp contract afn float %i.hzn, %i.hzm
  %i.hzp = fadd reassoc nsz arcp contract afn float %i.hzk, %i.hzo
  %i.hzq = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv4346
  %i.hzr = load float, ptr %i.hzq, align 4, !tbaa !322
  %i.hzs = fmul reassoc nsz arcp contract afn float %i.hzr, %i.hzi
  %i.hzt = fadd reassoc nsz arcp contract afn float %i.hzp, %i.hzs ; 3 uses
  %.not.i3679 = fcmp oeq float %i.hzt, 0.000000e+00
  %i.hzu = bitcast float %i.hzt to i32
  %i.hzv = add i32 %i.hzu, -8388608
  %i.hzw = bitcast i32 %i.hzv to float
  %.sroa.0.0.i3680 = select nsz i1 %.not.i3679, float %i.hzt, float %i.hzw
  %i.hzx = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv4346
  store float %.sroa.0.0.i3680, ptr %i.hzx, align 4, !tbaa !322
  %i.hzy = add nuw nsw i32 %.031664101, 2         ; 2 uses
  %indvars.iv.next4349 = add nuw nsw i64 %indvars.iv4348, 2
  %indvars.iv.next4347 = add nuw nsw i64 %indvars.iv4346, 1
  %i.hzz = icmp slt i32 %i.hzy, %i.hjw
  br i1 %i.hzz, label %.lr.ph4105, label %._crit_edge4106, !llvm.loop !281

.preheader3915:                                   ; preds = %._crit_edge4114, %.preheader3925, %.preheader3927, %.loopexit3929, %.preheader3918, %.preheader3917, %.preheader3916
  br i1 %i.dc, label %.lr.ph4123, label %.preheader3914

.lr.ph4123:                                       ; preds = %.preheader3915
  %i.iaa = add i32 %i.hx, -12
  br label %bb.ei

bb.cz:                                            ; preds = %.lr.ph4116, %._crit_edge4114
  %indvar4877 = phi i32 [ 0, %.lr.ph4116 ], [ %indvar.next4878, %._crit_edge4114 ] ; 2 uses
  %indvars.iv4351 = phi i32 [ 1932, %.lr.ph4116 ], [ %indvars.iv.next4352, %._crit_edge4114 ] ; 6 uses
  %.031634115 = phi i32 [ 12, %.lr.ph4116 ], [ %i.ijq, %._crit_edge4114 ] ; 2 uses
  %i.iab = mul i32 %indvar4877, 160
  %i.iac = add i32 %i.iab, 1920
  %i.iad = zext i32 %i.iac to i64
  %i.iae = shl nuw nsw i64 %i.iad, 1              ; 7 uses
  %scevgep4879 = getelementptr i8, ptr %scevgep4876, i64 %i.iae ; 2 uses
  %scevgep4883 = getelementptr i8, ptr %scevgep4882, i64 %i.iae ; 2 uses
  %scevgep4891 = getelementptr i8, ptr %scevgep4890, i64 %i.iae ; 2 uses
  %scevgep4899 = getelementptr i8, ptr %scevgep4898, i64 %i.iae ; 2 uses
  %scevgep4907 = getelementptr i8, ptr %scevgep4906, i64 %i.iae ; 2 uses
  %scevgep4927 = getelementptr i8, ptr %scevgep4926, i64 %i.iae ; 2 uses
  %i.iaf = shl i32 %.031634115, 2
  %i.iag = and i32 %i.iaf, 28
  %i.iah = lshr i32 %4, %i.iag
  %i.iai = and i32 %i.iah, 1                      ; 6 uses
  %i.iaj = or disjoint i32 %i.iai, 12             ; 5 uses
  %i.iak = icmp slt i32 %i.iaj, %i.hxl
  br i1 %i.iak, label %.lr.ph4113.preheader, label %._crit_edge4114

.lr.ph4113.preheader:                             ; preds = %bb.cz
  %i.ial = or disjoint i32 %indvars.iv4351, %i.iai
  %i.iam = lshr exact i32 %indvars.iv4351, 1
  %i.ian = zext nneg i32 %i.iam to i64            ; 5 uses
  %i.iao = sext i32 %i.ial to i64                 ; 6 uses
  %i.iap = or disjoint i32 %13, %i.iai
  %i.iaq = sub i32 %i.hxm, %i.iap                 ; 2 uses
  %i.iar = lshr i32 %i.iaq, 1
  %narrow7449 = add nuw i32 %i.iar, 1
  %i.ias = zext i32 %narrow7449 to i64            ; 2 uses
  %min.iters.check5073 = icmp ult i32 %i.iaq, 30
  br i1 %min.iters.check5073, label %.lr.ph4113.preheader7453, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph4113.preheader
  %i.iat = or disjoint i32 %i.hj, %i.iai
  %i.iau = sub i32 %i.hxn, %i.iat
  %i.iav = lshr i32 %i.iau, 1
  %i.iaw = lshr exact i32 %indvars.iv4351, 1
  %i.iax = trunc nuw i32 %i.iaw to i31
  %i.iay = trunc nuw i32 %i.iav to i31
  %i.iaz = xor i31 %i.iax, -1
  %i.iba = icmp ult i31 %i.iaz, %i.iay
  br i1 %i.iba, label %.lr.ph4113.preheader7453, label %vector.memcheck4856

vector.memcheck4856:                              ; preds = %vector.scevcheck
  %i.ibb = or disjoint i32 %indvars.iv4351, %i.iai
  %i.ibc = sext i32 %i.ibb to i64
  %i.ibd = shl nsw i64 %i.ibc, 2                  ; 11 uses
  %scevgep4857 = getelementptr i8, ptr %i.i, i64 %i.ibd ; 18 uses
  %i.ibe = or disjoint i32 %i.hi, %i.iai
  %i.ibf = sub i32 %i.hxo, %i.ibe
  %i.ibg = lshr i32 %i.ibf, 1
  %i.ibh = zext nneg i32 %i.ibg to i64            ; 2 uses
  %i.ibi = shl nuw nsw i64 %i.ibh, 3
  %i.ibj = add nsw i64 %i.ibi, %i.ibd             ; 10 uses
  %scevgep4859 = getelementptr i8, ptr %scevgep4858, i64 %i.ibj ; 18 uses
  %i.ibk = lshr exact i32 %indvars.iv4351, 1
  %i.ibl = zext nneg i32 %i.ibk to i64
  %i.ibm = shl nuw nsw i64 %i.ibl, 2              ; 4 uses
  %scevgep4861 = getelementptr i8, ptr %scevgep4860, i64 %i.ibm ; 18 uses
  %i.ibn = shl nuw nsw i64 %i.ibh, 2              ; 2 uses
  %i.ibo = add nuw nsw i64 %i.ibn, %i.ibm         ; 3 uses
  %scevgep4863 = getelementptr i8, ptr %scevgep4862, i64 %i.ibo ; 18 uses
  %scevgep4865 = getelementptr i8, ptr %scevgep4864, i64 %i.ibm ; 2 uses
  %scevgep4867 = getelementptr i8, ptr %scevgep4866, i64 %i.ibo ; 2 uses
  %scevgep4869 = getelementptr i8, ptr %scevgep4868, i64 %i.ibm ; 2 uses
  %scevgep4871 = getelementptr i8, ptr %scevgep4870, i64 %i.ibo ; 2 uses
  %scevgep4873 = getelementptr i8, ptr %scevgep4872, i64 %i.ibd ; 2 uses
  %scevgep4875 = getelementptr i8, ptr %scevgep4874, i64 %i.ibj ; 2 uses
  %i.ibp = add nuw nsw i64 %i.ibn, %i.iae         ; 6 uses
  %scevgep4881 = getelementptr i8, ptr %scevgep4880, i64 %i.ibp ; 2 uses
  %scevgep4885 = getelementptr i8, ptr %scevgep4884, i64 %i.ibp ; 2 uses
  %scevgep4887 = getelementptr i8, ptr %scevgep4886, i64 %i.ibd ; 2 uses
  %scevgep4889 = getelementptr i8, ptr %scevgep4888, i64 %i.ibj ; 2 uses
  %scevgep4893 = getelementptr i8, ptr %scevgep4892, i64 %i.ibp ; 2 uses
  %scevgep4895 = getelementptr i8, ptr %scevgep4894, i64 %i.ibd ; 2 uses
  %scevgep4897 = getelementptr i8, ptr %scevgep4896, i64 %i.ibj ; 2 uses
  %scevgep4901 = getelementptr i8, ptr %scevgep4900, i64 %i.ibp ; 2 uses
  %scevgep4903 = getelementptr i8, ptr %scevgep4902, i64 %i.ibd ; 2 uses
  %scevgep4905 = getelementptr i8, ptr %scevgep4904, i64 %i.ibj ; 2 uses
  %scevgep4909 = getelementptr i8, ptr %scevgep4908, i64 %i.ibp ; 2 uses
  %scevgep4911 = getelementptr i8, ptr %scevgep4910, i64 %i.ibd ; 2 uses
  %scevgep4913 = getelementptr i8, ptr %scevgep4912, i64 %i.ibj ; 2 uses
  %scevgep4915 = getelementptr i8, ptr %scevgep4914, i64 %i.ibd ; 2 uses
  %scevgep4917 = getelementptr i8, ptr %scevgep4916, i64 %i.ibj ; 2 uses
  %scevgep4919 = getelementptr i8, ptr %scevgep4918, i64 %i.ibd ; 2 uses
  %scevgep4921 = getelementptr i8, ptr %scevgep4920, i64 %i.ibj ; 2 uses
  %scevgep4923 = getelementptr i8, ptr %scevgep4922, i64 %i.ibd ; 2 uses
  %scevgep4925 = getelementptr i8, ptr %scevgep4924, i64 %i.ibj ; 2 uses
  %scevgep4929 = getelementptr i8, ptr %scevgep4928, i64 %i.ibp ; 2 uses
  %scevgep4931 = getelementptr i8, ptr %scevgep4930, i64 %i.ibd ; 2 uses
  %scevgep4933 = getelementptr i8, ptr %scevgep4932, i64 %i.ibj ; 2 uses
  %bound04934 = icmp ult ptr %scevgep4857, %scevgep4863
  %bound14935 = icmp ult ptr %scevgep4861, %scevgep4859
  %found.conflict4936 = and i1 %bound04934, %bound14935
  %bound04937 = icmp ult ptr %scevgep4857, %scevgep4867
  %bound14938 = icmp ult ptr %scevgep4865, %scevgep4859
  %found.conflict4939 = and i1 %bound04937, %bound14938
  %conflict.rdx = or i1 %found.conflict4936, %found.conflict4939
  %bound04940 = icmp ult ptr %scevgep4857, %scevgep4871
  %bound14941 = icmp ult ptr %scevgep4869, %scevgep4859
  %found.conflict4942 = and i1 %bound04940, %bound14941
  %conflict.rdx4943 = or i1 %conflict.rdx, %found.conflict4942
  %bound04944 = icmp ult ptr %scevgep4857, %scevgep4875
  %bound14945 = icmp ult ptr %scevgep4873, %scevgep4859
  %found.conflict4946 = and i1 %bound04944, %bound14945
  %conflict.rdx4947 = or i1 %conflict.rdx4943, %found.conflict4946
  %bound04948 = icmp ult ptr %scevgep4857, %scevgep4881
  %bound14949 = icmp ult ptr %scevgep4879, %scevgep4859
  %found.conflict4950 = and i1 %bound04948, %bound14949
  %conflict.rdx4951 = or i1 %conflict.rdx4947, %found.conflict4950
  %bound04952 = icmp ult ptr %scevgep4857, %scevgep4885
  %bound14953 = icmp ult ptr %scevgep4883, %scevgep4859
  %found.conflict4954 = and i1 %bound04952, %bound14953
  %conflict.rdx4955 = or i1 %conflict.rdx4951, %found.conflict4954
  %bound04956 = icmp ult ptr %scevgep4857, %scevgep4889
  %bound14957 = icmp ult ptr %scevgep4887, %scevgep4859
  %found.conflict4958 = and i1 %bound04956, %bound14957
  %conflict.rdx4959 = or i1 %conflict.rdx4955, %found.conflict4958
  %bound04960 = icmp ult ptr %scevgep4857, %scevgep4893
  %bound14961 = icmp ult ptr %scevgep4891, %scevgep4859
  %found.conflict4962 = and i1 %bound04960, %bound14961
  %conflict.rdx4963 = or i1 %conflict.rdx4959, %found.conflict4962
  %bound04964 = icmp ult ptr %scevgep4857, %scevgep4897
  %bound14965 = icmp ult ptr %scevgep4895, %scevgep4859
  %found.conflict4966 = and i1 %bound04964, %bound14965
  %conflict.rdx4967 = or i1 %conflict.rdx4963, %found.conflict4966
  %bound04968 = icmp ult ptr %scevgep4857, %scevgep4901
  %bound14969 = icmp ult ptr %scevgep4899, %scevgep4859
  %found.conflict4970 = and i1 %bound04968, %bound14969
  %conflict.rdx4971 = or i1 %conflict.rdx4967, %found.conflict4970
  %bound04972 = icmp ult ptr %scevgep4857, %scevgep4905
  %bound14973 = icmp ult ptr %scevgep4903, %scevgep4859
  %found.conflict4974 = and i1 %bound04972, %bound14973
  %conflict.rdx4975 = or i1 %conflict.rdx4971, %found.conflict4974
  %bound04976 = icmp ult ptr %scevgep4857, %scevgep4909
  %bound14977 = icmp ult ptr %scevgep4907, %scevgep4859
  %found.conflict4978 = and i1 %bound04976, %bound14977
  %conflict.rdx4979 = or i1 %conflict.rdx4975, %found.conflict4978
  %bound04980 = icmp ult ptr %scevgep4857, %scevgep4913
  %bound14981 = icmp ult ptr %scevgep4911, %scevgep4859
  %found.conflict4982 = and i1 %bound04980, %bound14981
  %conflict.rdx4983 = or i1 %conflict.rdx4979, %found.conflict4982
  %bound04984 = icmp ult ptr %scevgep4857, %scevgep4917
  %bound14985 = icmp ult ptr %scevgep4915, %scevgep4859
  %found.conflict4986 = and i1 %bound04984, %bound14985
  %conflict.rdx4987 = or i1 %conflict.rdx4983, %found.conflict4986
  %bound04988 = icmp ult ptr %scevgep4857, %scevgep4921
  %bound14989 = icmp ult ptr %scevgep4919, %scevgep4859
  %found.conflict4990 = and i1 %bound04988, %bound14989
  %conflict.rdx4991 = or i1 %conflict.rdx4987, %found.conflict4990
  %bound04992 = icmp ult ptr %scevgep4857, %scevgep4925
  %bound14993 = icmp ult ptr %scevgep4923, %scevgep4859
  %found.conflict4994 = and i1 %bound04992, %bound14993
  %conflict.rdx4995 = or i1 %conflict.rdx4991, %found.conflict4994
  %bound04996 = icmp ult ptr %scevgep4857, %scevgep4929
  %bound14997 = icmp ult ptr %scevgep4927, %scevgep4859
  %found.conflict4998 = and i1 %bound04996, %bound14997
  %conflict.rdx4999 = or i1 %conflict.rdx4995, %found.conflict4998
  %bound05000 = icmp ult ptr %scevgep4857, %scevgep4933
  %bound15001 = icmp ult ptr %scevgep4931, %scevgep4859
  %found.conflict5002 = and i1 %bound05000, %bound15001
  %conflict.rdx5003 = or i1 %conflict.rdx4999, %found.conflict5002
  %bound05004 = icmp ult ptr %scevgep4861, %scevgep4867
  %bound15005 = icmp ult ptr %scevgep4865, %scevgep4863
  %found.conflict5006 = and i1 %bound05004, %bound15005
  %conflict.rdx5007 = or i1 %conflict.rdx5003, %found.conflict5006
  %bound05008 = icmp ult ptr %scevgep4861, %scevgep4871
  %bound15009 = icmp ult ptr %scevgep4869, %scevgep4863
  %found.conflict5010 = and i1 %bound05008, %bound15009
  %conflict.rdx5011 = or i1 %conflict.rdx5007, %found.conflict5010
  %bound05012 = icmp ult ptr %scevgep4861, %scevgep4875
  %bound15013 = icmp ult ptr %scevgep4873, %scevgep4863
  %found.conflict5014 = and i1 %bound05012, %bound15013
  %conflict.rdx5015 = or i1 %conflict.rdx5011, %found.conflict5014
  %bound05016 = icmp ult ptr %scevgep4861, %scevgep4881
  %bound15017 = icmp ult ptr %scevgep4879, %scevgep4863
  %found.conflict5018 = and i1 %bound05016, %bound15017
  %conflict.rdx5019 = or i1 %conflict.rdx5015, %found.conflict5018
  %bound05020 = icmp ult ptr %scevgep4861, %scevgep4885
  %bound15021 = icmp ult ptr %scevgep4883, %scevgep4863
  %found.conflict5022 = and i1 %bound05020, %bound15021
  %conflict.rdx5023 = or i1 %conflict.rdx5019, %found.conflict5022
  %bound05024 = icmp ult ptr %scevgep4861, %scevgep4889
  %bound15025 = icmp ult ptr %scevgep4887, %scevgep4863
  %found.conflict5026 = and i1 %bound05024, %bound15025
  %conflict.rdx5027 = or i1 %conflict.rdx5023, %found.conflict5026
  %bound05028 = icmp ult ptr %scevgep4861, %scevgep4893
  %bound15029 = icmp ult ptr %scevgep4891, %scevgep4863
  %found.conflict5030 = and i1 %bound05028, %bound15029
  %conflict.rdx5031 = or i1 %conflict.rdx5027, %found.conflict5030
  %bound05032 = icmp ult ptr %scevgep4861, %scevgep4897
  %bound15033 = icmp ult ptr %scevgep4895, %scevgep4863
  %found.conflict5034 = and i1 %bound05032, %bound15033
  %conflict.rdx5035 = or i1 %conflict.rdx5031, %found.conflict5034
  %bound05036 = icmp ult ptr %scevgep4861, %scevgep4901
  %bound15037 = icmp ult ptr %scevgep4899, %scevgep4863
  %found.conflict5038 = and i1 %bound05036, %bound15037
  %conflict.rdx5039 = or i1 %conflict.rdx5035, %found.conflict5038
  %bound05040 = icmp ult ptr %scevgep4861, %scevgep4905
  %bound15041 = icmp ult ptr %scevgep4903, %scevgep4863
  %found.conflict5042 = and i1 %bound05040, %bound15041
  %conflict.rdx5043 = or i1 %conflict.rdx5039, %found.conflict5042
  %bound05044 = icmp ult ptr %scevgep4861, %scevgep4909
  %bound15045 = icmp ult ptr %scevgep4907, %scevgep4863
  %found.conflict5046 = and i1 %bound05044, %bound15045
  %conflict.rdx5047 = or i1 %conflict.rdx5043, %found.conflict5046
  %bound05048 = icmp ult ptr %scevgep4861, %scevgep4913
  %bound15049 = icmp ult ptr %scevgep4911, %scevgep4863
  %found.conflict5050 = and i1 %bound05048, %bound15049
  %conflict.rdx5051 = or i1 %conflict.rdx5047, %found.conflict5050
  %bound05052 = icmp ult ptr %scevgep4861, %scevgep4917
  %bound15053 = icmp ult ptr %scevgep4915, %scevgep4863
  %found.conflict5054 = and i1 %bound05052, %bound15053
  %conflict.rdx5055 = or i1 %conflict.rdx5051, %found.conflict5054
  %bound05056 = icmp ult ptr %scevgep4861, %scevgep4921
  %bound15057 = icmp ult ptr %scevgep4919, %scevgep4863
  %found.conflict5058 = and i1 %bound05056, %bound15057
  %conflict.rdx5059 = or i1 %conflict.rdx5055, %found.conflict5058
  %bound05060 = icmp ult ptr %scevgep4861, %scevgep4925
  %bound15061 = icmp ult ptr %scevgep4923, %scevgep4863
  %found.conflict5062 = and i1 %bound05060, %bound15061
  %conflict.rdx5063 = or i1 %conflict.rdx5059, %found.conflict5062
  %bound05064 = icmp ult ptr %scevgep4861, %scevgep4929
  %bound15065 = icmp ult ptr %scevgep4927, %scevgep4863
  %found.conflict5066 = and i1 %bound05064, %bound15065
end_hunk_2
begin_hunk_3_@amaze_demosaic:bb.a
  %i.inl = load float, ptr %i.ink, align 4, !tbaa !322 ; 2 uses
  %i.inm = fmul reassoc nsz arcp contract afn float %i.inl, %.03157
  %i.inn = fadd reassoc nsz arcp contract afn float %i.inm, %i.ini
  %i.ino = fadd reassoc nsz arcp contract afn float %i.inl, %i.inh
  %i.inp = fdiv reassoc nsz arcp contract afn float %i.inn, %i.ino ; 12 uses
  %i.inq = fcmp reassoc nsz arcp contract afn olt float %i.ine, %i.ikh
  br i1 %i.inq, label %bb.dn, label %bb.ds

bb.dn:                                            ; preds = %bb.dm
  %i.inr = fmul reassoc nsz arcp contract afn float %i.ine, 2.000000e+00
  %i.ins = fcmp reassoc nsz arcp contract afn olt float %i.inr, %i.ikh
  br i1 %i.ins, label %bb.do, label %bb.dr

bb.do:                                            ; preds = %bb.dn
  %i.int = extractelement <4 x float> %i.ikk, i64 0 ; 5 uses
  %i.inu = extractelement <4 x float> %i.ikk, i64 1 ; 5 uses
  %i.inv = fcmp reassoc nsz arcp contract afn olt float %i.int, %i.inu
  br i1 %i.inv, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.inw = fcmp reassoc nsz arcp contract afn olt float %i.ine, %i.inu
  %.3590 = select reassoc nsz arcp contract afn i1 %i.inw, float %i.ine, float %i.inu ; 2 uses
  %i.inx = fcmp reassoc nsz arcp contract afn ogt float %i.int, %.3590
  %spec.select3826 = select nsz i1 %i.inx, float %i.int, float %.3590
  br label %bb.ds

bb.dq:                                            ; preds = %bb.do
  %i.iny = fcmp reassoc nsz arcp contract afn olt float %i.ine, %i.int
  %.3592 = select reassoc nsz arcp contract afn i1 %i.iny, float %i.ine, float %i.int ; 2 uses
  %i.inz = fcmp reassoc nsz arcp contract afn ogt float %i.inu, %.3592
  %spec.select3827 = select nsz i1 %i.inz, float %i.inu, float %.3592
  br label %bb.ds

bb.dr:                                            ; preds = %bb.dn
  %i.ioa = fsub reassoc nsz arcp contract afn float %i.ikh, %i.ine
  %i.iob = fpext reassoc nsz arcp contract afn float %i.ioa to double
  %i.ioc = fmul reassoc nsz arcp contract afn double %i.iob, 2.000000e+00
  %i.iod = fadd reassoc nsz arcp contract afn float %i.iki, %i.ine
  %i.ioe = fpext reassoc nsz arcp contract afn float %i.iod to double
  %i.iof = fdiv reassoc nsz arcp contract afn double %i.ioc, %i.ioe
  %i.iog = fptrunc reassoc nsz arcp contract afn double %i.iof to float
  %i.ioh = extractelement <4 x float> %i.ikk, i64 0 ; 3 uses
  %i.ioi = extractelement <4 x float> %i.ikk, i64 1 ; 3 uses
  %i.ioj = fcmp reassoc nsz arcp contract afn olt float %i.ioh, %i.ioi ; 2 uses
  %.4821 = select i1 %i.ioj, float %i.ioi, float %i.ioh ; 2 uses
  %.4822 = select i1 %i.ioj, float %i.ioh, float %i.ioi ; 2 uses
  %i.iok = fcmp reassoc nsz arcp contract afn olt float %i.ine, %.4821
  %.3596 = select reassoc nsz arcp contract afn i1 %i.iok, float %i.ine, float %.4821 ; 2 uses
  %i.iol = fcmp reassoc nsz arcp contract afn ogt float %.4822, %.3596
  %spec.select3829 = select reassoc nsz arcp contract afn i1 %i.iol, float %.4822, float %.3596 ; 2 uses
  %i.iom = fsub reassoc nsz arcp contract afn float %i.ine, %spec.select3829
  %i.ion = fmul reassoc nsz arcp contract afn float %i.iom, %i.iog
  %i.ioo = fadd reassoc nsz arcp contract afn float %i.ion, %spec.select3829
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dq, %bb.dp, %bb.dr, %bb.dm
  %.03154 = phi nsz float [ %i.ine, %bb.dm ], [ %i.ioo, %bb.dr ], [ %spec.select3827, %bb.dq ], [ %spec.select3826, %bb.dp ] ; 6 uses
  %i.iop = fcmp reassoc nsz arcp contract afn olt float %i.inp, %i.ikh
  br i1 %i.iop, label %bb.dt, label %bb.dy

bb.dt:                                            ; preds = %bb.ds
  %i.ioq = fmul reassoc nsz arcp contract afn float %i.inp, 2.000000e+00
  %i.ior = fcmp reassoc nsz arcp contract afn olt float %i.ioq, %i.ikh
  br i1 %i.ior, label %bb.du, label %bb.dx

bb.du:                                            ; preds = %bb.dt
  %i.ios = extractelement <4 x float> %i.ikk, i64 2 ; 5 uses
  %i.iot = extractelement <4 x float> %i.ikk, i64 3 ; 5 uses
  %i.iou = fcmp reassoc nsz arcp contract afn olt float %i.ios, %i.iot
  br i1 %i.iou, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.iov = fcmp reassoc nsz arcp contract afn olt float %i.inp, %i.iot
  %.3598 = select reassoc nsz arcp contract afn i1 %i.iov, float %i.inp, float %i.iot ; 2 uses
  %i.iow = fcmp reassoc nsz arcp contract afn ogt float %i.ios, %.3598
  %spec.select3830 = select nsz i1 %i.iow, float %i.ios, float %.3598
  br label %bb.dy

bb.dw:                                            ; preds = %bb.du
  %i.iox = fcmp reassoc nsz arcp contract afn olt float %i.inp, %i.ios
  %.3600 = select reassoc nsz arcp contract afn i1 %i.iox, float %i.inp, float %i.ios ; 2 uses
  %i.ioy = fcmp reassoc nsz arcp contract afn ogt float %i.iot, %.3600
  %spec.select3831 = select nsz i1 %i.ioy, float %i.iot, float %.3600
  br label %bb.dy

bb.dx:                                            ; preds = %bb.dt
  %i.ioz = fsub reassoc nsz arcp contract afn float %i.ikh, %i.inp
  %i.ipa = fpext reassoc nsz arcp contract afn float %i.ioz to double
  %i.ipb = fmul reassoc nsz arcp contract afn double %i.ipa, 2.000000e+00
  %i.ipc = fadd reassoc nsz arcp contract afn float %i.iki, %i.inp
  %i.ipd = fpext reassoc nsz arcp contract afn float %i.ipc to double
  %i.ipe = fdiv reassoc nsz arcp contract afn double %i.ipb, %i.ipd
  %i.ipf = fptrunc reassoc nsz arcp contract afn double %i.ipe to float
  %i.ipg = extractelement <4 x float> %i.ikk, i64 2 ; 3 uses
  %i.iph = extractelement <4 x float> %i.ikk, i64 3 ; 3 uses
  %i.ipi = fcmp reassoc nsz arcp contract afn olt float %i.ipg, %i.iph ; 2 uses
  %.4823 = select i1 %i.ipi, float %i.iph, float %i.ipg ; 2 uses
  %.4824 = select i1 %i.ipi, float %i.ipg, float %i.iph ; 2 uses
  %i.ipj = fcmp reassoc nsz arcp contract afn olt float %i.inp, %.4823
  %.3604 = select reassoc nsz arcp contract afn i1 %i.ipj, float %i.inp, float %.4823 ; 2 uses
  %i.ipk = fcmp reassoc nsz arcp contract afn ogt float %.4824, %.3604
  %spec.select3833 = select reassoc nsz arcp contract afn i1 %i.ipk, float %.4824, float %.3604 ; 2 uses
  %i.ipl = fsub reassoc nsz arcp contract afn float %i.inp, %spec.select3833
  %i.ipm = fmul reassoc nsz arcp contract afn float %i.ipl, %i.ipf
  %i.ipn = fadd reassoc nsz arcp contract afn float %i.ipm, %spec.select3833
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dw, %bb.dv, %bb.dx, %bb.ds
  %.03152 = phi nsz float [ %i.inp, %bb.ds ], [ %i.ipn, %bb.dx ], [ %spec.select3831, %bb.dw ], [ %spec.select3830, %bb.dv ] ; 6 uses
  %i.ipo = fcmp reassoc nsz arcp contract afn ogt float %.03152, %5
  br i1 %i.ipo, label %bb.dz, label %bb.ec

bb.dz:                                            ; preds = %bb.dy
  %i.ipp = extractelement <4 x float> %i.ikk, i64 2 ; 5 uses
  %i.ipq = extractelement <4 x float> %i.ikk, i64 3 ; 5 uses
  %i.ipr = fcmp reassoc nsz arcp contract afn olt float %i.ipp, %i.ipq
  br i1 %i.ipr, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.ips = fcmp reassoc nsz arcp contract afn olt float %.03152, %i.ipq
  %.03152. = select reassoc nsz arcp contract afn i1 %i.ips, float %.03152, float %i.ipq ; 2 uses
  %i.ipt = fcmp reassoc nsz arcp contract afn ogt float %i.ipp, %.03152.
  %spec.select3834 = select nsz i1 %i.ipt, float %i.ipp, float %.03152.
  br label %bb.ec

bb.eb:                                            ; preds = %bb.dz
  %i.ipu = fcmp reassoc nsz arcp contract afn olt float %.03152, %i.ipp
  %.03152.3607 = select reassoc nsz arcp contract afn i1 %i.ipu, float %.03152, float %i.ipp ; 2 uses
  %i.ipv = fcmp reassoc nsz arcp contract afn ogt float %i.ipq, %.03152.3607
  %spec.select3835 = select nsz i1 %i.ipv, float %i.ipq, float %.03152.3607
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea, %bb.dy
  %.13153 = phi nsz float [ %.03152, %bb.dy ], [ %spec.select3835, %bb.eb ], [ %spec.select3834, %bb.ea ] ; 2 uses
  %i.ipw = fcmp reassoc nsz arcp contract afn ogt float %.03154, %5
  br i1 %i.ipw, label %bb.ed, label %bb.eg

bb.ed:                                            ; preds = %bb.ec
  %i.ipx = extractelement <4 x float> %i.ikk, i64 0 ; 5 uses
  %i.ipy = extractelement <4 x float> %i.ikk, i64 1 ; 5 uses
  %i.ipz = fcmp reassoc nsz arcp contract afn olt float %i.ipx, %i.ipy
  br i1 %i.ipz, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.iqa = fcmp reassoc nsz arcp contract afn olt float %.03154, %i.ipy
  %.03154. = select reassoc nsz arcp contract afn i1 %i.iqa, float %.03154, float %i.ipy ; 2 uses
  %i.iqb = fcmp reassoc nsz arcp contract afn ogt float %i.ipx, %.03154.
  %spec.select3836 = select nsz i1 %i.iqb, float %i.ipx, float %.03154.
  br label %bb.eg

bb.ef:                                            ; preds = %bb.ed
  %i.iqc = fcmp reassoc nsz arcp contract afn olt float %.03154, %i.ipx
  %.03154.3610 = select reassoc nsz arcp contract afn i1 %i.iqc, float %.03154, float %i.ipx ; 2 uses
  %i.iqd = fcmp reassoc nsz arcp contract afn ogt float %i.ipy, %.03154.3610
  %spec.select3837 = select nsz i1 %i.iqd, float %i.ipy, float %.03154.3610
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee, %bb.ec
  %.13155 = phi nsz float [ %.03154, %bb.ec ], [ %spec.select3837, %bb.ef ], [ %spec.select3836, %bb.ee ]
  %i.iqe = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv4353
  %i.iqf = load float, ptr %i.iqe, align 4, !tbaa !322
  %i.iqg = fsub reassoc nsz arcp contract afn float %.13155, %.13153
  %i.iqh = fmul reassoc nsz arcp contract afn float %i.iqf, %i.iqg
  %i.iqi = fadd reassoc nsz arcp contract afn float %i.iqh, %.13153 ; 2 uses
  %i.iqj = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv4355
  store float %i.iqi, ptr %i.iqj, align 4, !tbaa !322
  %i.iqk = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv4355
  %i.iql = load float, ptr %i.iqk, align 4, !tbaa !322
  %i.iqm = fsub reassoc nsz arcp contract afn float %i.iqi, %i.iql
  %i.iqn = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ijt
  store float %i.iqm, ptr %i.iqn, align 4, !tbaa !322
  br label %bb.eh

bb.eh:                                            ; preds = %.lr.ph4113, %bb.eg
  %i.iqo = add nuw nsw i32 %.031624109, 2         ; 2 uses
  %indvars.iv.next4356 = add nuw nsw i64 %indvars.iv4355, 2
  %indvars.iv.next4354 = add nuw nsw i64 %indvars.iv4353, 1
  %i.iqp = icmp slt i32 %i.iqo, %i.hxl
  br i1 %i.iqp, label %.lr.ph4113, label %._crit_edge4114, !llvm.loop !304

.preheader3914:                                   ; preds = %._crit_edge4121, %.preheader3915
  br i1 %i.de, label %.lr.ph4130, label %._crit_edge4152.split

.lr.ph4130:                                       ; preds = %.preheader3914
  %i.iqq = add nsw i32 %i.hx, -14                 ; 2 uses
  br label %bb.ej

bb.ei:                                            ; preds = %.lr.ph4123, %._crit_edge4121
  %indvar4844 = phi i32 [ 0, %.lr.ph4123 ], [ %indvar.next4845, %._crit_edge4121 ] ; 2 uses
  %indvars.iv4360 = phi i32 [ %i.an, %.lr.ph4123 ], [ %indvars.iv.next4361, %._crit_edge4121 ] ; 2 uses
  %.031514122 = phi i32 [ %.3509, %.lr.ph4123 ], [ %i.irg, %._crit_edge4121 ] ; 2 uses
  %i.iqr = mul nuw nsw i32 %.031514122, 160       ; 2 uses
  %i.iqs = lshr exact i32 %i.iqr, 1
  %i.iqt = or disjoint i32 %i.iqs, 6
  %i.iqu = add i32 %i.iaa, %i.iqr
  %i.iqv = ashr i32 %i.iqu, 1                     ; 3 uses
  %i.iqw = icmp slt i32 %i.iqt, %i.iqv
  br i1 %i.iqw, label %.lr.ph4120.preheader, label %._crit_edge4121

.lr.ph4120.preheader:                             ; preds = %bb.ei
  %14 = zext i32 %indvars.iv4360 to i64           ; 3 uses
  %i.iqx = mul i32 %indvar4844, -160
  %.reass7660 = add i32 %i.iqx, %invariant.op7659
  %i.iqy = add i32 %i.iqv, %.reass7660            ; 2 uses
  %i.iqz = zext i32 %i.iqy to i64
  %i.ira = add nuw nsw i64 %i.iqz, 1              ; 2 uses
  %min.iters.check4847 = icmp ult i32 %i.iqy, 7
  br i1 %min.iters.check4847, label %.lr.ph4120.preheader7452, label %vector.ph4848

vector.ph4848:                                    ; preds = %.lr.ph4120.preheader
  %n.vec4849 = and i64 %i.ira, 8589934584         ; 3 uses
  %i.irb = add nuw nsw i64 %n.vec4849, %14
  br label %vector.body4850

vector.body4850:                                  ; preds = %vector.body4850, %vector.ph4848
  %index4851 = phi i64 [ 0, %vector.ph4848 ], [ %index.next4852, %vector.body4850 ] ; 2 uses
  %i.irc = add nuw i64 %index4851, %14            ; 2 uses
  %i.ird = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.irc ; 2 uses
  %wide.load = load <8 x float>, ptr %i.ird, align 8, !tbaa !322
  %i.ire = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.irc
  store <8 x float> %wide.load, ptr %i.ire, align 8, !tbaa !322
  store <8 x float> zeroinitializer, ptr %i.ird, align 8, !tbaa !322
  %index.next4852 = add nuw i64 %index4851, 8     ; 2 uses
  %i.irf = icmp eq i64 %index.next4852, %n.vec4849
  br i1 %i.irf, label %middle.block4853, label %vector.body4850, !llvm.loop !305

middle.block4853:                                 ; preds = %vector.body4850
  %cmp.n4854 = icmp eq i64 %i.ira, %n.vec4849
  br i1 %cmp.n4854, label %._crit_edge4121, label %.lr.ph4120.preheader7452

.lr.ph4120.preheader7452:                         ; preds = %.lr.ph4120.preheader, %middle.block4853
  %indvars.iv4362.ph = phi i64 [ %14, %.lr.ph4120.preheader ], [ %i.irb, %middle.block4853 ]
  br label %.lr.ph4120

._crit_edge4121:                                  ; preds = %.lr.ph4120, %middle.block4853, %bb.ei
  %i.irg = add nuw nsw i32 %.031514122, 2         ; 2 uses
  %i.irh = icmp slt i32 %i.irg, %i.da
  %indvars.iv.next4361 = add i32 %indvars.iv4360, 160
  %indvar.next4845 = add i32 %indvar4844, 1
  br i1 %i.irh, label %bb.ei, label %.preheader3914, !llvm.loop !306

.lr.ph4120:                                       ; preds = %.lr.ph4120.preheader7452, %.lr.ph4120
  %indvars.iv4362 = phi i64 [ %indvars.iv.next4363, %.lr.ph4120 ], [ %indvars.iv4362.ph, %.lr.ph4120.preheader7452 ] ; 3 uses
  %i.iri = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv4362 ; 2 uses
  %i.irj = load float, ptr %i.iri, align 4, !tbaa !322
  %i.irk = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv4362
  store float %i.irj, ptr %i.irk, align 4, !tbaa !322
  store float 0.000000e+00, ptr %i.iri, align 4, !tbaa !322
  %indvars.iv.next4363 = add nuw nsw i64 %indvars.iv4362, 1 ; 2 uses
  %i.irl = trunc nuw i64 %indvars.iv.next4363 to i32
  %i.irm = icmp sgt i32 %i.iqv, %i.irl
  br i1 %i.irm, label %.lr.ph4120, label %._crit_edge4121, !llvm.loop !307

.preheader3913:                                   ; preds = %._crit_edge4128
  br i1 %i.dg, label %.lr.ph4144, label %._crit_edge4152.split

.lr.ph4144:                                       ; preds = %.preheader3913
  %i.irn = and i32 %i.hv, 1
  %i.iro = add i32 %i.hx, -16
  %i.irp = sub i32 %i.iro, %i.irn
  %.not3496 = trunc i32 %i.hv to i1               ; 2 uses
  %i.irq = trunc i64 %indvars.iv4397 to i32
  %i.irr = add i32 %i.irq, 16                     ; 2 uses
  br label %bb.el

bb.ej:                                            ; preds = %.lr.ph4130, %._crit_edge4128
  %indvars.iv4365 = phi i32 [ 2254, %.lr.ph4130 ], [ %indvars.iv.next4366, %._crit_edge4128 ] ; 2 uses
  %.031494129 = phi i32 [ 14, %.lr.ph4130 ], [ %i.isj, %._crit_edge4128 ] ; 2 uses
  %i.irs = shl nuw i32 %.031494129, 1
  %i.irt = and i32 %i.irs, 14                     ; 2 uses
  %i.iru = shl nuw nsw i32 %i.irt, 1
  %i.irv = lshr i32 %4, %i.iru
  %i.irw = and i32 %i.irv, 1                      ; 3 uses
  %i.irx = or disjoint i32 %i.irw, 14             ; 2 uses
  %i.iry = icmp slt i32 %i.irx, %i.iqq
  br i1 %i.iry, label %.lr.ph4127, label %._crit_edge4128

.lr.ph4127:                                       ; preds = %bb.ej
  %i.irz = or disjoint i32 %i.irw, %i.irt
  %i.isa = shl nuw nsw i32 %i.irz, 1
  %i.isb = lshr i32 %4, %i.isa
  %i.isc = lshr i32 %i.isb, 1
  %i.isd = and i32 %i.isc, 1
  %i.ise = xor i32 %i.isd, 1
  %i.isf = zext nneg i32 %i.ise to i64
  %i.isg = getelementptr inbounds nuw [51200 x i8], ptr %i.p, i64 %i.isf ; 15 uses
  %i.ish = or disjoint i32 %indvars.iv4365, %i.irw
  %i.isi = zext i32 %i.ish to i64
  br label %bb.ek

._crit_edge4128:                                  ; preds = %bb.ek, %bb.ej
  %i.isj = add nuw nsw i32 %.031494129, 1         ; 2 uses
  %i.isk = icmp slt i32 %i.isj, %i.dd
  %indvars.iv.next4366 = add i32 %indvars.iv4365, 160
  br i1 %i.isk, label %bb.ej, label %.preheader3913, !llvm.loop !308

bb.ek:                                            ; preds = %.lr.ph4127, %bb.ek
  %indvars.iv4367 = phi i64 [ %i.isi, %.lr.ph4127 ], [ %indvars.iv.next4368, %bb.ek ] ; 10 uses
  %.031484124 = phi i32 [ %i.irx, %.lr.ph4127 ], [ %i.ixi, %bb.ek ]
  %i.isl = trunc nuw i64 %indvars.iv4367 to i32   ; 7 uses
  %i.ism = add nsw i32 %i.isl, -161
  %i.isn = ashr i32 %i.ism, 1
  %i.iso = sext i32 %i.isn to i64
  %i.isp = getelementptr inbounds [4 x i8], ptr %i.isg, i64 %i.iso
  %i.isq = load float, ptr %i.isp, align 4, !tbaa !322 ; 5 uses
  %i.isr = add nuw i64 %indvars.iv4367, 161
  %i.iss = lshr i64 %i.isr, 1
  %i.ist = and i64 %i.iss, 2147483647
  %i.isu = getelementptr inbounds nuw [4 x i8], ptr %i.isg, i64 %i.ist
  %i.isv = load float, ptr %i.isu, align 4, !tbaa !322 ; 4 uses
  %i.isw = add nsw i32 %i.isl, -483
  %i.isx = ashr i32 %i.isw, 1
  %i.isy = sext i32 %i.isx to i64
  %i.isz = getelementptr inbounds [4 x i8], ptr %i.isg, i64 %i.isy
  %i.ita = load float, ptr %i.isz, align 4, !tbaa !322 ; 3 uses
  %i.itb = add nsw i32 %i.isl, -159
  %i.itc = ashr i32 %i.itb, 1
  %i.itd = sext i32 %i.itc to i64
  %i.ite = getelementptr inbounds [4 x i8], ptr %i.isg, i64 %i.itd
  %i.itf = load float, ptr %i.ite, align 4, !tbaa !322 ; 3 uses
  %i.itg = add nuw i64 %indvars.iv4367, 159
  %i.ith = lshr i64 %i.itg, 1
  %i.iti = and i64 %i.ith, 2147483647
  %i.itj = getelementptr inbounds nuw [4 x i8], ptr %i.isg, i64 %i.iti
  %i.itk = load float, ptr %i.itj, align 4, !tbaa !322 ; 2 uses
  %i.itl = add nsw i32 %i.isl, -477
  %i.itm = ashr i32 %i.itl, 1
  %i.itn = sext i32 %i.itm to i64
  %i.ito = getelementptr inbounds [4 x i8], ptr %i.isg, i64 %i.itn
  %i.itp = load float, ptr %i.ito, align 4, !tbaa !322 ; 3 uses
  %i.itq = add nuw i64 %indvars.iv4367, 483
  %i.itr = lshr i64 %i.itq, 1
  %i.its = and i64 %i.itr, 2147483647
  %i.itt = getelementptr inbounds nuw [4 x i8], ptr %i.isg, i64 %i.its
  %i.itu = load float, ptr %i.itt, align 4, !tbaa !322 ; 3 uses
  %i.itv = add nuw i64 %indvars.iv4367, 477
  %i.itw = lshr i64 %i.itv, 1
  %i.itx = and i64 %i.itw, 2147483647
  %i.ity = getelementptr inbounds nuw [4 x i8], ptr %i.isg, i64 %i.itx
  %i.itz = load float, ptr %i.ity, align 4, !tbaa !322 ; 2 uses
  %i.iua = add nsw i32 %i.isl, -163
  %i.iub = ashr i32 %i.iua, 1
  %i.iuc = sext i32 %i.iub to i64
  %i.iud = getelementptr inbounds [4 x i8], ptr %i.isg, i64 %i.iuc
  %i.iue = load float, ptr %i.iud, align 4, !tbaa !322
  %i.iuf = add nsw i32 %i.isl, -481
  %i.iug = ashr i32 %i.iuf, 1
  %i.iuh = sext i32 %i.iug to i64
  %i.iui = getelementptr inbounds [4 x i8], ptr %i.isg, i64 %i.iuh
  %i.iuj = load float, ptr %i.iui, align 4, !tbaa !322
  %i.iuk = add nsw i32 %i.isl, -157
  %i.iul = ashr i32 %i.iuk, 1
  %i.ium = sext i32 %i.iul to i64
  %i.iun = getelementptr inbounds [4 x i8], ptr %i.isg, i64 %i.ium
  %i.iuo = load float, ptr %i.iun, align 4, !tbaa !322
  %i.iup = add nuw i64 %indvars.iv4367, 157
  %i.iuq = lshr i64 %i.iup, 1
  %i.iur = and i64 %i.iuq, 2147483647
  %i.ius = getelementptr inbounds nuw [4 x i8], ptr %i.isg, i64 %i.iur
  %i.iut = load float, ptr %i.ius, align 4, !tbaa !322
  %i.iuu = add nuw i64 %indvars.iv4367, 163
  %i.iuv = lshr i64 %i.iuu, 1
  %i.iuw = and i64 %i.iuv, 2147483647
  %i.iux = getelementptr inbounds nuw [4 x i8], ptr %i.isg, i64 %i.iuw
  %i.iuy = load float, ptr %i.iux, align 4, !tbaa !322
  %i.iuz = add nuw i64 %indvars.iv4367, 481
  %i.iva = lshr i64 %i.iuz, 1
  %i.ivb = and i64 %i.iva, 2147483647
  %i.ivc = getelementptr inbounds nuw [4 x i8], ptr %i.isg, i64 %i.ivb
  %i.ivd = load float, ptr %i.ivc, align 4, !tbaa !322
  %i.ive = insertelement <4 x float> poison, float %i.itf, i64 0
  %i.ivf = insertelement <4 x float> %i.ive, float %i.isq, i64 1
  %i.ivg = insertelement <4 x float> %i.ivf, float %i.itk, i64 2
  %i.ivh = insertelement <4 x float> %i.ivg, float %i.isv, i64 3
  %i.ivi = insertelement <4 x float> poison, float %i.itk, i64 0 ; 2 uses
  %i.ivj = insertelement <4 x float> %i.ivi, float %i.isv, i64 1
  %i.ivk = insertelement <4 x float> %i.ivj, float %i.itf, i64 2 ; 2 uses
  %i.ivl = insertelement <4 x float> %i.ivk, float %i.isq, i64 3 ; 2 uses
  %i.ivm = fsub reassoc nsz arcp contract afn <4 x float> %i.ivh, %i.ivl
  %i.ivn = tail call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ivm)
  %i.ivo = fadd reassoc nsz arcp contract afn <4 x float> %i.ivn, splat (float f0x3727C5AC)
  %i.ivp = shufflevector <4 x float> %i.ivo, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.ivq = insertelement <4 x float> %i.ivk, float %i.ita, i64 3
  %i.ivr = insertelement <4 x float> poison, float %i.itp, i64 0
  %i.ivs = insertelement <4 x float> %i.ivr, float %i.isv, i64 1
  %i.ivt = insertelement <4 x float> %i.ivs, float %i.itz, i64 2
  %i.ivu = shufflevector <4 x float> %i.ivq, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %i.ivv = shufflevector <4 x float> %i.ivt, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 0, i32 1>
  %i.ivw = fsub reassoc nsz arcp contract afn <4 x float> %i.ivu, %i.ivv
  %i.ivx = tail call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ivw)
  %i.ivy = insertelement <4 x float> poison, float %i.itu, i64 0
  %i.ivz = insertelement <4 x float> %i.ivy, float %i.isq, i64 1
  %i.iwa = insertelement <4 x float> %i.ivz, float %i.itf, i64 2
  %i.iwb = insertelement <4 x float> %i.iwa, float %i.ita, i64 3
  %i.iwc = insertelement <4 x float> %i.ivi, float %i.itu, i64 1
  %i.iwd = insertelement <4 x float> %i.iwc, float %i.itp, i64 2
  %i.iwe = insertelement <4 x float> %i.iwd, float %i.isq, i64 3
  %i.iwf = fsub reassoc nsz arcp contract afn <4 x float> %i.iwb, %i.iwe
  %i.iwg = tail call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.iwf)
  %i.iwh = fadd reassoc nsz arcp contract afn <4 x float> %i.ivp, %i.iwg
  %i.iwi = fadd reassoc nsz arcp contract afn <4 x float> %i.iwh, %i.ivx
  %i.iwj = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.iwi ; 2 uses
  %i.iwk = fmul reassoc nsz arcp contract afn <4 x float> %i.ivl, splat (float 1.325000e+00)
  %i.iwl = insertelement <4 x float> poison, float %i.itz, i64 0
  %i.iwm = insertelement <4 x float> %i.iwl, float %i.itu, i64 1
  %i.iwn = insertelement <4 x float> %i.iwm, float %i.itp, i64 2
  %i.iwo = insertelement <4 x float> %i.iwn, float %i.ita, i64 3
  %i.iwp = fmul reassoc nsz arcp contract afn <4 x float> %i.iwo, splat (float -1.750000e-01)
  %i.iwq = insertelement <4 x float> poison, float %i.iut, i64 0
  %i.iwr = insertelement <4 x float> %i.iwq, float %i.ivd, i64 1
  %i.iws = insertelement <4 x float> %i.iwr, float %i.iuo, i64 2
  %i.iwt = insertelement <4 x float> %i.iws, float %i.iuj, i64 3
  %i.iwu = insertelement <4 x float> poison, float %i.isq, i64 0
  %i.iwv = insertelement <4 x float> %i.iwu, float %i.iuy, i64 1
  %i.iww = insertelement <4 x float> %i.iwv, float %i.isv, i64 2
  %i.iwx = insertelement <4 x float> %i.iww, float %i.iue, i64 3
  %i.iwy = fadd reassoc nsz arcp contract afn <4 x float> %i.iwt, %i.iwx
  %i.iwz = fmul reassoc nsz arcp contract afn <4 x float> %i.iwy, splat (float -7.500000e-02)
  %i.ixa = fadd reassoc nsz arcp contract afn <4 x float> %i.iwp, %i.iwk
  %i.ixb = fadd reassoc nsz arcp contract afn <4 x float> %i.ixa, %i.iwz
  %i.ixc = fmul reassoc nsz arcp contract afn <4 x float> %i.ixb, %i.iwj
  %i.ixd = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.ixc)
  %i.ixe = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.iwj)
  %i.ixf = fdiv reassoc nsz arcp contract afn float %i.ixd, %i.ixe
  %i.ixg = lshr i64 %indvars.iv4367, 1
  %i.ixh = getelementptr inbounds nuw [4 x i8], ptr %i.isg, i64 %i.ixg
  store float %i.ixf, ptr %i.ixh, align 4, !tbaa !322
  %i.ixi = add nuw nsw i32 %.031484124, 2         ; 2 uses
  %indvars.iv.next4368 = add nuw nsw i64 %indvars.iv4367, 2
  %i.ixj = icmp slt i32 %i.ixi, %i.iqq
  br i1 %i.ixj, label %bb.ek, label %._crit_edge4128, !llvm.loop !309

end_hunk_3
