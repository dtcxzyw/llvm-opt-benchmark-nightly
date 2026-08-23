Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/dp_dec?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@unpc_block:bb.a
  br i1 %i.hd, label %bb.ag, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.he = tail call i32 @llvm.scmp.i32.i32(i32 %i.fd, i32 %i.fw) ; 2 uses
  %i.hf = trunc nsw i32 %i.he to i16
  %i.hg = sub i16 %.0410533, %i.hf                ; 7 uses
  %i.hh = mul nsw i32 %i.he, %i.fx
  %i.hi = ashr i32 %i.hh, %6
  %i.hj = shl nsw i32 %i.hi, 1
  %i.hk = sub nsw i32 %i.hc, %i.hj                ; 2 uses
  %i.hl = icmp slt i32 %i.hk, 1
  br i1 %i.hl, label %bb.ag, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.hm = tail call i32 @llvm.scmp.i32.i32(i32 %i.fd, i32 %i.ft) ; 2 uses
  %i.hn = trunc nsw i32 %i.hm to i16
  %i.ho = sub i16 %.0412532, %i.hn                ; 6 uses
  %i.hp = mul nsw i32 %i.hm, %i.fu
  %i.hq = ashr i32 %i.hp, %6
  %.neg473 = mul i32 %i.hq, -3
  %i.hr = add i32 %i.hk, %.neg473                 ; 2 uses
  %i.hs = icmp slt i32 %i.hr, 1
  br i1 %i.hs, label %bb.ag, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ht = tail call i32 @llvm.scmp.i32.i32(i32 %i.fd, i32 %i.fq) ; 2 uses
  %i.hu = trunc nsw i32 %i.ht to i16
  %i.hv = sub i16 %.0414531, %i.hu                ; 5 uses
  %i.hw = mul nsw i32 %i.ht, %i.fr
  %i.hx = ashr i32 %i.hw, %6
  %i.hy = shl nsw i32 %i.hx, 2
  %i.hz = sub nsw i32 %i.hr, %i.hy                ; 2 uses
  %i.ia = icmp slt i32 %i.hz, 1
  br i1 %i.ia, label %bb.ag, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ib = tail call i32 @llvm.scmp.i32.i32(i32 %i.fd, i32 %i.fn) ; 2 uses
  %i.ic = trunc nsw i32 %i.ib to i16
  %i.id = sub i16 %.0433529, %i.ic                ; 4 uses
  %i.ie = mul nsw i32 %i.ib, %i.fo
  %i.if = ashr i32 %i.ie, %6
  %.neg474 = mul i32 %i.if, -5
  %i.ig = add i32 %i.hz, %.neg474                 ; 2 uses
  %i.ih = icmp slt i32 %i.ig, 1
  br i1 %i.ih, label %bb.ag, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ii = tail call i32 @llvm.scmp.i32.i32(i32 %i.fd, i32 %i.fk) ; 2 uses
  %i.ij = trunc nsw i32 %i.ii to i16
  %i.ik = sub i16 %.0435528, %i.ij                ; 3 uses
  %i.il = mul nsw i32 %i.ii, %i.fl
  %i.im = ashr i32 %i.il, %6
  %.neg475 = mul i32 %i.im, -6
  %i.in = add i32 %i.ig, %.neg475                 ; 2 uses
  %i.io = icmp slt i32 %i.in, 1
  br i1 %i.io, label %bb.ag, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ip = tail call i32 @llvm.scmp.i32.i32(i32 %i.fd, i32 %i.fh) ; 2 uses
  %i.iq = trunc nsw i32 %i.ip to i16
  %i.ir = sub i16 %.0437527, %i.iq                ; 2 uses
  %i.is = mul nsw i32 %i.ip, %i.fi
  %i.it = ashr i32 %i.is, %6
  %.neg476 = mul i32 %i.it, -7
  %i.iu = add i32 %i.in, %.neg476
  %i.iv = icmp slt i32 %i.iu, 1
  br i1 %i.iv, label %bb.ag, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.iw = tail call i16 @llvm.scmp.i16.i32(i32 %store_forwarded645, i32 %i.fd)
  %i.ix = add i16 %i.iw, %.0439526
  br label %bb.ag

bb.x:                                             ; preds = %.lr.ph536
  %i.iy = icmp slt i32 %i.gr, 0
  br i1 %i.iy, label %bb.y, label %bb.ag

bb.y:                                             ; preds = %bb.x
  %i.iz = tail call i32 @llvm.scmp.i32.i32(i32 %i.fd, i32 %i.fy) ; 2 uses
  %i.ja = trunc nsw i32 %i.iz to i16
  %i.jb = add i16 %.0534, %i.ja                   ; 8 uses
  %i.jc = mul i32 %i.fz, %i.iz
  %i.jd = sub i32 0, %i.jc
  %i.je = ashr i32 %i.jd, %6
  %i.jf = sub nsw i32 %i.gr, %i.je                ; 2 uses
  %i.jg = icmp sgt i32 %i.jf, -1
  br i1 %i.jg, label %bb.ag, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.jh = tail call i32 @llvm.scmp.i32.i32(i32 %i.fd, i32 %i.fw) ; 2 uses
  %i.ji = trunc nsw i32 %i.jh to i16
  %i.jj = add i16 %.0410533, %i.ji                ; 7 uses
  %i.jk = mul i32 %i.fx, %i.jh
  %i.jl = sub i32 0, %i.jk
  %i.jm = ashr i32 %i.jl, %6
  %i.jn = shl nsw i32 %i.jm, 1
  %i.jo = sub nsw i32 %i.jf, %i.jn                ; 2 uses
  %i.jp = icmp sgt i32 %i.jo, -1
  br i1 %i.jp, label %bb.ag, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.jq = tail call i32 @llvm.scmp.i32.i32(i32 %i.fd, i32 %i.ft) ; 2 uses
  %i.jr = trunc nsw i32 %i.jq to i16
  %i.js = add i16 %.0412532, %i.jr                ; 6 uses
  %i.jt = mul i32 %i.fu, %i.jq
  %i.ju = sub i32 0, %i.jt
  %i.jv = ashr i32 %i.ju, %6
  %.neg469 = mul i32 %i.jv, -3
  %i.jw = add i32 %i.jo, %.neg469                 ; 2 uses
  %i.jx = icmp sgt i32 %i.jw, -1
  br i1 %i.jx, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.jy = tail call i32 @llvm.scmp.i32.i32(i32 %i.fd, i32 %i.fq) ; 2 uses
  %i.jz = trunc nsw i32 %i.jy to i16
  %i.ka = add i16 %.0414531, %i.jz                ; 5 uses
  %i.kb = mul i32 %i.fr, %i.jy
  %i.kc = sub i32 0, %i.kb
  %i.kd = ashr i32 %i.kc, %6
  %i.ke = shl nsw i32 %i.kd, 2
  %i.kf = sub nsw i32 %i.jw, %i.ke                ; 2 uses
  %i.kg = icmp sgt i32 %i.kf, -1
  br i1 %i.kg, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.kh = tail call i32 @llvm.scmp.i32.i32(i32 %i.fd, i32 %i.fn) ; 2 uses
  %i.ki = trunc nsw i32 %i.kh to i16
  %i.kj = add i16 %.0433529, %i.ki                ; 4 uses
  %i.kk = mul i32 %i.fo, %i.kh
  %i.kl = sub i32 0, %i.kk
  %i.km = ashr i32 %i.kl, %6
  %.neg470 = mul i32 %i.km, -5
  %i.kn = add i32 %i.kf, %.neg470                 ; 2 uses
  %i.ko = icmp sgt i32 %i.kn, -1
  br i1 %i.ko, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.kp = tail call i32 @llvm.scmp.i32.i32(i32 %i.fd, i32 %i.fk) ; 2 uses
  %i.kq = trunc nsw i32 %i.kp to i16
  %i.kr = add i16 %.0435528, %i.kq                ; 3 uses
  %i.ks = mul i32 %i.fl, %i.kp
  %i.kt = sub i32 0, %i.ks
  %i.ku = ashr i32 %i.kt, %6
  %.neg471 = mul i32 %i.ku, -6
  %i.kv = add i32 %i.kn, %.neg471                 ; 2 uses
  %i.kw = icmp sgt i32 %i.kv, -1
  br i1 %i.kw, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.kx = tail call i32 @llvm.scmp.i32.i32(i32 %i.fd, i32 %i.fh) ; 2 uses
  %i.ky = trunc nsw i32 %i.kx to i16
  %i.kz = add i16 %.0437527, %i.ky                ; 2 uses
  %i.la = mul i32 %i.fi, %i.kx
  %i.lb = sub i32 0, %i.la
  %i.lc = ashr i32 %i.lb, %6
  %.neg472 = mul i32 %i.lc, -7
  %i.ld = add i32 %i.kv, %.neg472
  %i.le = icmp sgt i32 %i.ld, -1
  br i1 %i.le, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.lf = tail call i16 @llvm.scmp.i16.i32(i32 %i.fd, i32 %store_forwarded645)
  %i.lg = add i16 %i.lf, %.0439526
  br label %bb.ag

bb.ag:                                            ; preds = %bb.w, %bb.af, %bb.x, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p
  %.1440 = phi i16 [ %.0439526, %bb.p ], [ %.0439526, %bb.q ], [ %.0439526, %bb.r ], [ %.0439526, %bb.s ], [ %.0439526, %bb.t ], [ %.0439526, %bb.u ], [ %.0439526, %bb.v ], [ %i.ix, %bb.w ], [ %.0439526, %bb.y ], [ %.0439526, %bb.z ], [ %.0439526, %bb.aa ], [ %.0439526, %bb.ab ], [ %.0439526, %bb.ac ], [ %.0439526, %bb.ad ], [ %.0439526, %bb.ae ], [ %i.lg, %bb.af ], [ %.0439526, %bb.x ] ; 2 uses
  %.1438 = phi i16 [ %.0437527, %bb.p ], [ %.0437527, %bb.q ], [ %.0437527, %bb.r ], [ %.0437527, %bb.s ], [ %.0437527, %bb.t ], [ %.0437527, %bb.u ], [ %i.ir, %bb.v ], [ %i.ir, %bb.w ], [ %.0437527, %bb.y ], [ %.0437527, %bb.z ], [ %.0437527, %bb.aa ], [ %.0437527, %bb.ab ], [ %.0437527, %bb.ac ], [ %.0437527, %bb.ad ], [ %i.kz, %bb.ae ], [ %i.kz, %bb.af ], [ %.0437527, %bb.x ] ; 2 uses
  %.1436 = phi i16 [ %.0435528, %bb.p ], [ %.0435528, %bb.q ], [ %.0435528, %bb.r ], [ %.0435528, %bb.s ], [ %.0435528, %bb.t ], [ %i.ik, %bb.u ], [ %i.ik, %bb.v ], [ %i.ik, %bb.w ], [ %.0435528, %bb.y ], [ %.0435528, %bb.z ], [ %.0435528, %bb.aa ], [ %.0435528, %bb.ab ], [ %.0435528, %bb.ac ], [ %i.kr, %bb.ad ], [ %i.kr, %bb.ae ], [ %i.kr, %bb.af ], [ %.0435528, %bb.x ] ; 2 uses
  %.1434 = phi i16 [ %.0433529, %bb.p ], [ %.0433529, %bb.q ], [ %.0433529, %bb.r ], [ %.0433529, %bb.s ], [ %i.id, %bb.t ], [ %i.id, %bb.u ], [ %i.id, %bb.v ], [ %i.id, %bb.w ], [ %.0433529, %bb.y ], [ %.0433529, %bb.z ], [ %.0433529, %bb.aa ], [ %.0433529, %bb.ab ], [ %i.kj, %bb.ac ], [ %i.kj, %bb.ad ], [ %i.kj, %bb.ae ], [ %i.kj, %bb.af ], [ %.0433529, %bb.x ] ; 2 uses
  %.1415 = phi i16 [ %.0414531, %bb.p ], [ %.0414531, %bb.q ], [ %.0414531, %bb.r ], [ %i.hv, %bb.s ], [ %i.hv, %bb.t ], [ %i.hv, %bb.u ], [ %i.hv, %bb.v ], [ %i.hv, %bb.w ], [ %.0414531, %bb.y ], [ %.0414531, %bb.z ], [ %.0414531, %bb.aa ], [ %i.ka, %bb.ab ], [ %i.ka, %bb.ac ], [ %i.ka, %bb.ad ], [ %i.ka, %bb.ae ], [ %i.ka, %bb.af ], [ %.0414531, %bb.x ] ; 2 uses
  %.1413 = phi i16 [ %.0412532, %bb.p ], [ %.0412532, %bb.q ], [ %i.ho, %bb.r ], [ %i.ho, %bb.s ], [ %i.ho, %bb.t ], [ %i.ho, %bb.u ], [ %i.ho, %bb.v ], [ %i.ho, %bb.w ], [ %.0412532, %bb.y ], [ %.0412532, %bb.z ], [ %i.js, %bb.aa ], [ %i.js, %bb.ab ], [ %i.js, %bb.ac ], [ %i.js, %bb.ad ], [ %i.js, %bb.ae ], [ %i.js, %bb.af ], [ %.0412532, %bb.x ] ; 2 uses
  %.1411 = phi i16 [ %.0410533, %bb.p ], [ %i.hg, %bb.q ], [ %i.hg, %bb.r ], [ %i.hg, %bb.s ], [ %i.hg, %bb.t ], [ %i.hg, %bb.u ], [ %i.hg, %bb.v ], [ %i.hg, %bb.w ], [ %.0410533, %bb.y ], [ %i.jj, %bb.z ], [ %i.jj, %bb.aa ], [ %i.jj, %bb.ab ], [ %i.jj, %bb.ac ], [ %i.jj, %bb.ad ], [ %i.jj, %bb.ae ], [ %i.jj, %bb.af ], [ %.0410533, %bb.x ] ; 2 uses
  %.1 = phi i16 [ %i.gz, %bb.p ], [ %i.gz, %bb.q ], [ %i.gz, %bb.r ], [ %i.gz, %bb.s ], [ %i.gz, %bb.t ], [ %i.gz, %bb.u ], [ %i.gz, %bb.v ], [ %i.gz, %bb.w ], [ %i.jb, %bb.y ], [ %i.jb, %bb.z ], [ %i.jb, %bb.aa ], [ %i.jb, %bb.ab ], [ %i.jb, %bb.ac ], [ %i.jb, %bb.ad ], [ %i.jb, %bb.ae ], [ %i.jb, %bb.af ], [ %.0534, %bb.x ] ; 2 uses
  %indvars.iv.next576 = add nuw nsw i64 %indvars.iv575, 1 ; 2 uses
  %exitcond578.not = icmp eq i64 %indvars.iv.next576, %wide.trip.count577
  br i1 %exitcond578.not, label %._crit_edge537, label %.lr.ph536, !llvm.loop !14

._crit_edge537:                                   ; preds = %bb.ag, %bb.o
  %.0439.lcssa = phi i16 [ %i.ek, %bb.o ], [ %.1440, %bb.ag ]
  %.0437.lcssa = phi i16 [ %i.em, %bb.o ], [ %.1438, %bb.ag ]
  %.0435.lcssa = phi i16 [ %i.eo, %bb.o ], [ %.1436, %bb.ag ]
  %.0433.lcssa = phi i16 [ %i.eq, %bb.o ], [ %.1434, %bb.ag ]
  %.0414.lcssa = phi i16 [ %i.es, %bb.o ], [ %.1415, %bb.ag ]
  %.0412.lcssa = phi i16 [ %i.eu, %bb.o ], [ %.1413, %bb.ag ]
  %.0410.lcssa = phi i16 [ %i.ew, %bb.o ], [ %.1411, %bb.ag ]
  %.0.lcssa = phi i16 [ %i.ey, %bb.o ], [ %.1, %bb.ag ]
  store i16 %.0439.lcssa, ptr %3, align 2, !tbaa !11
  store i16 %.0437.lcssa, ptr %i.el, align 2, !tbaa !11
  store i16 %.0435.lcssa, ptr %i.en, align 2, !tbaa !11
  store i16 %.0433.lcssa, ptr %i.ep, align 2, !tbaa !11
  store i16 %.0414.lcssa, ptr %i.er, align 2, !tbaa !11
  store i16 %.0412.lcssa, ptr %i.et, align 2, !tbaa !11
  store i16 %.0410.lcssa, ptr %i.ev, align 2, !tbaa !11
  store i16 %.0.lcssa, ptr %i.ex, align 2, !tbaa !11
  br label %.loopexit517

bb.ah:                                            ; preds = %.lr.ph564, %.loopexit
  %indvars.iv596 = phi i64 [ %i.aw, %.lr.ph564 ], [ %indvars.iv.next597, %.loopexit ] ; 4 uses
  %i.lh = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv596 ; 2 uses
  %i.li = getelementptr inbounds i8, ptr %i.lh, i64 -4 ; 3 uses
  %i.lj = sub nsw i64 %indvars.iv596, %i.aw
  %i.lk = getelementptr inbounds [4 x i8], ptr %1, i64 %i.lj
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !4  ; 6 uses
  br i1 %i.au, label %.lr.ph560.preheader, label %._crit_edge561

.lr.ph560.preheader:                              ; preds = %bb.ah
  %.pre = load i32, ptr %i.li, align 4, !tbaa !4
  %7 = sub nsw i32 %.pre, %i.ll                   ; 2 uses
  br i1 %min.iters.check, label %.lr.ph560.preheader651, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph560.preheader
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %7, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ls, %vector.body ]
  %vec.phi641 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.lt, %vector.body ]
  %i.lm = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %wide.load = load <4 x i16>, ptr %i.lm, align 2, !tbaa !11
  %wide.load642.a = load <4 x i16>, ptr %i.ln, align 2, !tbaa !11
  %i.lo = sext <4 x i16> %wide.load to <4 x i32>
  %i.lp = sext <4 x i16> %wide.load642.a to <4 x i32>
  %i.lq = mul nsw <4 x i32> %broadcast.splat, %i.lo
  %i.lr = mul nsw <4 x i32> %broadcast.splat, %i.lp
  %i.ls = add <4 x i32> %i.lq, %vec.phi           ; 2 uses
  %i.lt = add <4 x i32> %i.lr, %vec.phi641        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.lu = icmp eq i64 %index.next, %n.vec
  br i1 %i.lu, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.lt, %i.ls
  %i.lv = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge561, label %.lr.ph560.preheader651

.lr.ph560.preheader651:                           ; preds = %.lr.ph560.preheader, %middle.block
  %indvars.iv583.ph = phi i64 [ 0, %.lr.ph560.preheader ], [ %n.vec, %middle.block ]
  %.0427558.ph = phi i32 [ 0, %.lr.ph560.preheader ], [ %i.lv, %middle.block ]
  br label %.lr.ph560

.lr.ph560:                                        ; preds = %.lr.ph560.preheader651, %.lr.ph560
  %indvars.iv583 = phi i64 [ %indvars.iv.next584, %.lr.ph560 ], [ %indvars.iv583.ph, %.lr.ph560.preheader651 ] ; 2 uses
  %.0427558 = phi i32 [ %i.ma, %.lr.ph560 ], [ %.0427558.ph, %.lr.ph560.preheader651 ]
  %i.lw = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv583
  %i.lx = load i16, ptr %i.lw, align 2, !tbaa !11
  %i.ly = sext i16 %i.lx to i32
  %i.lz = mul nsw i32 %7, %i.ly
  %i.ma = add nsw i32 %i.lz, %.0427558            ; 2 uses
  %indvars.iv.next584 = add nuw nsw i64 %indvars.iv583, 1 ; 2 uses
  %exitcond587.not = icmp eq i64 %indvars.iv.next584, %wide.trip.count586
  br i1 %exitcond587.not, label %._crit_edge561, label %.lr.ph560, !llvm.loop !18

._crit_edge561:                                   ; preds = %.lr.ph560, %middle.block, %bb.ah
  %.0427.lcssa = phi i32 [ 0, %bb.ah ], [ %i.lv, %middle.block ], [ %i.ma, %.lr.ph560 ]
  %i.mb = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv596
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !4  ; 5 uses
  %i.md = add nsw i32 %.0427.lcssa, %i.c
  %i.me = ashr i32 %i.md, %6
  %i.mf = add nsw i32 %i.me, %i.ll
  %i.mg = add nsw i32 %i.mf, %i.mc
  %i.mh = shl i32 %i.mg, %i.a
  %i.mi = ashr exact i32 %i.mh, %i.a
  store i32 %i.mi, ptr %i.lh, align 4, !tbaa !4
  %i.mj = icmp sgt i32 %i.mc, 0
  br i1 %i.mj, label %.preheader.preheader, label %bb.ai

.preheader.preheader:                             ; preds = %._crit_edge561
  br i1 %i.ay, label %.lr.ph640, label %.loopexit

.preheader:                                       ; preds = %.lr.ph640
  %i.mk = icmp sgt i64 %indvars.iv592638, 1
  br i1 %i.mk, label %.lr.ph640, label %.loopexit, !llvm.loop !19

.lr.ph640:                                        ; preds = %.preheader.preheader, %.preheader
  %.0425639 = phi i32 [ %i.my, %.preheader ], [ %i.mc, %.preheader.preheader ]
  %indvars.iv592638 = phi i64 [ %indvars.iv.next593, %.preheader ], [ %i.av, %.preheader.preheader ] ; 3 uses
  %indvars.iv.next593 = add nsw i64 %indvars.iv592638, -1 ; 3 uses
  %i.ml = sub nsw i64 1, %indvars.iv592638
  %i.mm = getelementptr inbounds [4 x i8], ptr %i.li, i64 %i.ml
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !4  ; 2 uses
  %i.mo = sub nsw i32 %i.ll, %i.mn
  %i.mp = tail call i32 @llvm.scmp.i32.i32(i32 %i.ll, i32 %i.mn) ; 2 uses
  %i.mq = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv.next593 ; 2 uses
  %i.mr = load i16, ptr %i.mq, align 2, !tbaa !11
  %i.ms = trunc nsw i32 %i.mp to i16
  %i.mt = sub i16 %i.mr, %i.ms
  store i16 %i.mt, ptr %i.mq, align 2, !tbaa !11
  %i.mu = mul nsw i32 %i.mp, %i.mo
  %i.mv = ashr i32 %i.mu, %6
  %i.mw = trunc i64 %indvars.iv.next593 to i32
  %i.mx = sub i32 %i.mw, %4
  %.neg468 = mul i32 %i.mv, %i.mx
  %i.my = add i32 %.neg468, %.0425639             ; 2 uses
  %i.mz = icmp slt i32 %i.my, 1
  br i1 %i.mz, label %..loopexit.loopexit633_crit_edge, label %.preheader, !llvm.loop !19

bb.ai:                                            ; preds = %._crit_edge561
  %i.na = icmp ne i32 %i.mc, 0
  %or.cond648 = and i1 %i.na, %i.ax
  br i1 %or.cond648, label %.lr.ph637, label %.loopexit

.preheader514:                                    ; preds = %.lr.ph637
  %i.nb = icmp sgt i64 %indvars.iv588635, 1
  br i1 %i.nb, label %.lr.ph637, label %.loopexit, !llvm.loop !20

.lr.ph637:                                        ; preds = %bb.ai, %.preheader514
  %.1426636 = phi i32 [ %i.nn, %.preheader514 ], [ %i.mc, %bb.ai ]
  %indvars.iv588635 = phi i64 [ %indvars.iv.next589, %.preheader514 ], [ %i.av, %bb.ai ] ; 3 uses
  %indvars.iv.next589 = add nsw i64 %indvars.iv588635, -1 ; 3 uses
  %i.nc = sub nsw i64 1, %indvars.iv588635
  %i.nd = getelementptr inbounds [4 x i8], ptr %i.li, i64 %i.nc
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !4  ; 2 uses
  %.neg480 = sub i32 %i.ne, %i.ll
  %i.nf = tail call i32 @llvm.scmp.i32.i32(i32 %i.ll, i32 %i.ne) ; 2 uses
  %i.ng = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv.next589 ; 2 uses
  %i.nh = load i16, ptr %i.ng, align 2, !tbaa !11
  %i.ni = trunc nsw i32 %i.nf to i16
  %i.nj = add i16 %i.nh, %i.ni
  store i16 %i.nj, ptr %i.ng, align 2, !tbaa !11
  %.neg481 = mul i32 %.neg480, %i.nf
  %i.nk = ashr i32 %.neg481, %6
  %i.nl = trunc i64 %indvars.iv.next589 to i32
  %i.nm = sub i32 %i.nl, %4
  %.neg466 = mul i32 %i.nk, %i.nm
  %i.nn = add i32 %.neg466, %.1426636             ; 2 uses
  %i.no = icmp sgt i32 %i.nn, -1
  br i1 %i.no, label %..loopexit.loopexit633_crit_edge, label %.preheader514, !llvm.loop !20

..loopexit.loopexit633_crit_edge:                 ; preds = %.lr.ph637, %.lr.ph640
  br label %.loopexit, !llvm.loop !20

.loopexit:                                        ; preds = %.preheader514, %.preheader, %..loopexit.loopexit633_crit_edge, %.preheader.preheader, %bb.ai
  %indvars.iv.next597 = add nsw i64 %indvars.iv596, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next597 to i32
  %exitcond599.not = icmp eq i32 %2, %lftr.wideiv
  br i1 %exitcond599.not, label %.loopexit517, label %bb.ah, !llvm.loop !21

.loopexit517.loopexit654.unr-lcssa:               ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit517, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit517.loopexit654.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.loopexit517.loopexit654.unr-lcssa ] ; 2 uses
  %.0424522.epil.init = phi i32 [ %i.d, %.lr.ph.preheader ], [ %i.z, %.loopexit517.loopexit654.unr-lcssa ]
  %lcmp.mod655 = trunc i64 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod655)
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil.init
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !4
  %i.nr = add nsw i32 %i.nq, %.0424522.epil.init
  %i.ns = shl i32 %i.nr, %i.a
  %i.nt = ashr exact i32 %i.ns, %i.a
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil.init
  store i32 %i.nt, ptr %i.nu, align 4, !tbaa !4
  br label %.loopexit517

.loopexit517:                                     ; preds = %.lr.ph.epil.preheader, %.loopexit517.loopexit654.unr-lcssa, %.loopexit, %.preheader519, %.preheader516, %._crit_edge552, %._crit_edge537, %bb.b, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i16 -1, 2) i16 @llvm.scmp.i16.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = !{!12, !12, i64 0}
!12 = !{!"short", !6, i64 0}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9, !16, !17}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !9, !17, !16}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !9}
!21 = distinct !{!21, !9}
end_hunk_0
