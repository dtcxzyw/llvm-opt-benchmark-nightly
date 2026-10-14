Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cnfCut?download=true
inline.NumInlined: 37
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Cnf_CutCompose:bb.a
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !30
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next173.1
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !30
  %indvars.iv.next173.2 = or disjoint i64 %indvars.iv172, 3 ; 2 uses
  %i.ez = trunc nuw nsw i64 %indvars.iv.next173.2 to i32
  %i.fa = srem i32 %i.ez, %i.dt
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !30
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next173.2
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !30
  %indvars.iv.next173.3 = add nuw nsw i64 %indvars.iv172, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph167.unr-lcssa, label %bb.m, !llvm.loop !55

bb.n:                                             ; preds = %bb.n, %.lr.ph167.new
  %indvars.iv177 = phi i64 [ 0, %.lr.ph167.new ], [ %indvars.iv.next178.3, %bb.n ] ; 6 uses
  %niter277 = phi i64 [ 0, %.lr.ph167.new ], [ %niter277.next.3, %bb.n ]
  %i.ff = trunc nuw nsw i64 %indvars.iv177 to i32
  %i.fg = srem i32 %i.ff, %i.ee
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !30
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv177
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !30
  %indvars.iv.next178 = or disjoint i64 %indvars.iv177, 1 ; 2 uses
  %i.fl = trunc nuw nsw i64 %indvars.iv.next178 to i32
  %i.fm = srem i32 %i.fl, %i.ee
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !30
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next178
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !30
  %indvars.iv.next178.1 = or disjoint i64 %indvars.iv177, 2 ; 2 uses
  %i.fr = trunc nuw nsw i64 %indvars.iv.next178.1 to i32
  %i.fs = srem i32 %i.fr, %i.ee
  %i.ft = zext nneg i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !30
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next178.1
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !30
  %indvars.iv.next178.2 = or disjoint i64 %indvars.iv177, 3 ; 2 uses
  %i.fx = trunc nuw nsw i64 %indvars.iv.next178.2 to i32
  %i.fy = srem i32 %i.fx, %i.ee
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !30
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next178.2
  store i32 %i.gb, ptr %i.gc, align 4, !tbaa !30
  %indvars.iv.next178.3 = add nuw nsw i64 %indvars.iv177, 4 ; 2 uses
  %niter277.next.3 = add i64 %niter277, 4         ; 2 uses
  %niter277.ncmp.3 = icmp eq i64 %niter277.next.3, %unroll_iter276
  br i1 %niter277.ncmp.3, label %._crit_edge168.loopexit.unr-lcssa, label %bb.n, !llvm.loop !56

._crit_edge168.loopexit.unr-lcssa:                ; preds = %bb.n
  %lcmp.mod274.not = icmp eq i64 %xtraiter272, 0
  br i1 %lcmp.mod274.not, label %._crit_edge168, label %.epil.preheader271

.epil.preheader271:                               ; preds = %._crit_edge168.loopexit.unr-lcssa, %.lr.ph167
  %indvars.iv177.epil.init = phi i64 [ 0, %.lr.ph167 ], [ %indvars.iv.next178.3, %._crit_edge168.loopexit.unr-lcssa ]
  %lcmp.mod275 = icmp ne i64 %xtraiter272, 0
  tail call void @llvm.assume(i1 %lcmp.mod275)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader271
  %indvars.iv177.epil = phi i64 [ %indvars.iv177.epil.init, %.epil.preheader271 ], [ %indvars.iv.next178.epil, %bb.o ] ; 3 uses
  %epil.iter273 = phi i64 [ 0, %.epil.preheader271 ], [ %epil.iter273.next, %bb.o ]
  %i.gd = trunc nuw nsw i64 %indvars.iv177.epil to i32
  %i.ge = srem i32 %i.gd, %i.ee
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !30
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv177.epil
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !30
  %indvars.iv.next178.epil = add nuw nsw i64 %indvars.iv177.epil, 1
  %epil.iter273.next = add i64 %epil.iter273, 1   ; 2 uses
  %epil.iter273.cmp.not = icmp eq i64 %epil.iter273.next, %xtraiter272
  br i1 %epil.iter273.cmp.not, label %._crit_edge168, label %bb.o, !llvm.loop !57

._crit_edge168:                                   ; preds = %._crit_edge168.loopexit.unr-lcssa, %bb.o, %bb.k
  %sext195 = shl i32 %.3.lcssa.i, 24
  %i.gj = ashr exact i32 %sext195, 24             ; 2 uses
  %i.gk = add nsw i32 %i.gj, 1                    ; 2 uses
  %i.gl = shl nsw i32 -1, %i.gk
  %i.gm = shl nuw i32 1, %.0.lcssa
  %.demorgan = or i32 %i.gl, %i.gm
  %i.gn = xor i32 %.demorgan, -1
  tail call void @Kit_TruthShrink(ptr noundef %i.h, ptr noundef %i.b, i32 noundef %i.gj, i32 noundef %i.gk, i32 noundef %i.gn, i32 noundef 1) #13
  %i.go = load i8, ptr %i.cw, align 8, !tbaa !22  ; 5 uses
  %i.gp = icmp sgt i8 %i.go, 0
  br i1 %i.gp, label %.lr.ph.i118, label %Cnf_TruthPhase.exit.thread

Cnf_TruthPhase.exit.thread:                       ; preds = %._crit_edge168
  %i.gq = zext nneg i8 %i.go to i32
  %i.gr = shl nuw i32 1, %i.gq
  %.pre = load i8, ptr %1, align 8, !tbaa !22
  %.pre182 = sext i8 %.pre to i32
  br label %Cnf_TruthPhase.exit133

.lr.ph.i118:                                      ; preds = %._crit_edge168
  %wide.trip.count.i119 = zext nneg i8 %i.go to i64 ; 2 uses
  %i.gs = load i8, ptr %1, align 8, !tbaa !22
  %i.gt = sext i8 %i.gs to i32                    ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i118
  %indvars.iv.i120 = phi i64 [ 0, %.lr.ph.i118 ], [ %indvars.iv.next.i121, %bb.q ] ; 3 uses
  %.017.i = phi i32 [ 0, %.lr.ph.i118 ], [ %.1.i, %bb.q ] ; 3 uses
  %.01315.i = phi i32 [ 0, %.lr.ph.i118 ], [ %.114.i, %bb.q ] ; 2 uses
  %i.gu = icmp eq i32 %.017.i, %i.gt
  br i1 %i.gu, label %Cnf_TruthPhase.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.i120
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !30
  %i.gx = zext nneg i32 %.017.i to i64
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !30
  %i.ha = icmp sge i32 %i.gw, %i.gz               ; 2 uses
  %i.hb = trunc nuw nsw i64 %indvars.iv.i120 to i32
  %i.hc = shl nuw i32 1, %i.hb
  %i.hd = select i1 %i.ha, i32 %i.hc, i32 0
  %.114.i = or i32 %i.hd, %.01315.i               ; 2 uses
  %i.he = zext i1 %i.ha to i32
  %.1.i = add nuw nsw i32 %.017.i, %i.he
  %indvars.iv.next.i121 = add nuw nsw i64 %indvars.iv.i120, 1 ; 2 uses
  %exitcond.not.i122 = icmp eq i64 %indvars.iv.next.i121, %wide.trip.count.i119
  br i1 %exitcond.not.i122, label %Cnf_TruthPhase.exit, label %bb.p, !llvm.loop !58

Cnf_TruthPhase.exit:                              ; preds = %bb.p, %bb.q
  %.013.lcssa.i = phi i32 [ %.114.i, %bb.q ], [ %.01315.i, %bb.p ]
  %i.hf = zext nneg i8 %i.go to i32
  %i.hg = shl nuw i32 1, %i.hf
  %i.hh = or i32 %.013.lcssa.i, %i.hg             ; 2 uses
  %i.hi = load i8, ptr %2, align 8, !tbaa !22
  %i.hj = sext i8 %i.hi to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %Cnf_TruthPhase.exit
  %indvars.iv.i126 = phi i64 [ 0, %Cnf_TruthPhase.exit ], [ %indvars.iv.next.i131, %bb.s ] ; 3 uses
  %.017.i127 = phi i32 [ 0, %Cnf_TruthPhase.exit ], [ %.1.i130, %bb.s ] ; 3 uses
  %.01315.i128 = phi i32 [ 0, %Cnf_TruthPhase.exit ], [ %.114.i129, %bb.s ] ; 2 uses
  %i.hk = icmp eq i32 %.017.i127, %i.hj
  br i1 %i.hk, label %Cnf_TruthPhase.exit133, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.i126
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !30
  %i.hn = zext nneg i32 %.017.i127 to i64
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.hn
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !30
  %i.hq = icmp sge i32 %i.hm, %i.hp               ; 2 uses
  %i.hr = trunc nuw nsw i64 %indvars.iv.i126 to i32
  %i.hs = shl nuw i32 1, %i.hr
  %i.ht = select i1 %i.hq, i32 %i.hs, i32 0
  %.114.i129 = or i32 %i.ht, %.01315.i128         ; 2 uses
  %i.hu = zext i1 %i.hq to i32
  %.1.i130 = add nuw nsw i32 %.017.i127, %i.hu
  %indvars.iv.next.i131 = add nuw nsw i64 %indvars.iv.i126, 1 ; 2 uses
  %exitcond.not.i132 = icmp eq i64 %indvars.iv.next.i131, %wide.trip.count.i119
  br i1 %exitcond.not.i132, label %Cnf_TruthPhase.exit133, label %bb.r, !llvm.loop !58

Cnf_TruthPhase.exit133:                           ; preds = %bb.r, %bb.s, %Cnf_TruthPhase.exit.thread
  %.pre-phi = phi i32 [ %.pre182, %Cnf_TruthPhase.exit.thread ], [ %i.gt, %bb.s ], [ %i.gt, %bb.r ]
  %i.hv = phi i32 [ %i.gr, %Cnf_TruthPhase.exit.thread ], [ %i.hh, %bb.s ], [ %i.hh, %bb.r ]
  %.013.lcssa.i123 = phi i32 [ 0, %Cnf_TruthPhase.exit.thread ], [ %.01315.i128, %bb.r ], [ %.114.i129, %bb.s ]
  %i.hw = add nsw i32 %.pre-phi, 1
  %i.hx = sext i8 %i.go to i32
  %i.hy = add nsw i32 %i.hx, 1
  tail call void @Kit_TruthStretch(ptr noundef %i.h, ptr noundef %i.b, i32 noundef %i.hw, i32 noundef %i.hy, i32 noundef %i.hv, i32 noundef 1) #13
  %i.hz = load i8, ptr %2, align 8, !tbaa !22
  %i.ia = sext i8 %i.hz to i32
  %i.ib = load i8, ptr %i.cw, align 8, !tbaa !22
  %i.ic = sext i8 %i.ib to i32
  tail call void @Kit_TruthStretch(ptr noundef %i.h, ptr noundef %i.e, i32 noundef %i.ia, i32 noundef %i.ic, i32 noundef %.013.lcssa.i123, i32 noundef 1) #13
  %i.id = load i16, ptr %i.da, align 2, !tbaa !23
  %i.ie = sext i16 %i.id to i64                   ; 2 uses
  %i.if = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ie ; 2 uses
  %i.ig = load i8, ptr %i.cw, align 8, !tbaa !22  ; 2 uses
  %i.ih = sext i8 %i.ig to i32
  %i.ii = icmp slt i8 %i.ig, 6
  %i.ij = add nsw i32 %i.ih, -5
  %i.ik = shl nuw i32 1, %i.ij
  %spec.select.i = select i1 %i.ii, i32 1, i32 %i.ik ; 3 uses
  %i.il = icmp sgt i32 %spec.select.i, 0
  br i1 %i.il, label %select.unfold.preheader.i, label %Kit_TruthMux.exit

select.unfold.preheader.i:                        ; preds = %Cnf_TruthPhase.exit133
  %i.im = zext nneg i32 %spec.select.i to i64     ; 3 uses
  %min.iters.check218 = icmp ult i32 %spec.select.i, 20
  br i1 %min.iters.check218, label %select.unfold.i.preheader, label %vector.memcheck

select.unfold.i.preheader:                        ; preds = %vector.memcheck, %select.unfold.preheader.i
  br label %select.unfold.i

vector.memcheck:                                  ; preds = %select.unfold.preheader.i
  %i.in = shl nsw i64 %i.ie, 2
  %4 = add i64 %i.in, %i.c
  %5 = shl nsw i64 %i.dm, 2                       ; 3 uses
  %i.io = add i64 %5, %i.cx
  %i.ip = sub i64 %4, %i.io
  %i.iq = add i64 %i.ip, -25
  %diff.check = icmp ult i64 %i.iq, 31
  %i.ir = add i64 %5, %i.cx
  %i.is = sub i64 %i.c, %i.ir
  %i.it = add i64 %i.is, -25
  %diff.check214 = icmp ult i64 %i.it, 31
  %conflict.rdx = or i1 %diff.check, %diff.check214
  %i.iu = add i64 %5, %i.cx
  %i.iv = sub i64 %i.f, %i.iu
  %i.iw = add i64 %i.iv, -25
  %diff.check215 = icmp ult i64 %i.iw, 31
  %conflict.rdx216 = or i1 %conflict.rdx, %diff.check215
  br i1 %conflict.rdx216, label %select.unfold.i.preheader, label %vector.ph219

vector.ph219:                                     ; preds = %vector.memcheck
  %n.vec220 = and i64 %i.im, 2147483640
  br label %vector.body221

vector.body221:                                   ; preds = %vector.body221, %vector.ph219
  %index222 = phi i64 [ 0, %vector.ph219 ], [ %index.next236, %vector.body221 ] ; 2 uses
  %i.ix = xor i64 %index222, -1
  %i.iy = add i64 %i.ix, %i.im                    ; 4 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.iy ; 2 uses
  %i.ja = getelementptr inbounds i8, ptr %i.iz, i64 -12
  %i.jb = getelementptr inbounds i8, ptr %i.iz, i64 -28
  %wide.load223 = load <4 x i32>, ptr %i.ja, align 4, !tbaa !30
  %wide.load224 = load <4 x i32>, ptr %i.jb, align 4, !tbaa !30
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.iy ; 2 uses
  %i.jd = getelementptr inbounds i8, ptr %i.jc, i64 -12
  %i.je = getelementptr inbounds i8, ptr %i.jc, i64 -28
  %wide.load226 = load <4 x i32>, ptr %i.jd, align 4, !tbaa !30 ; 2 uses
  %wide.load227 = load <4 x i32>, ptr %i.je, align 4, !tbaa !30 ; 2 uses
  %i.jf = xor <4 x i32> %wide.load226, splat (i32 -1)
  %i.jg = xor <4 x i32> %wide.load227, splat (i32 -1)
  %i.jh = and <4 x i32> %wide.load223, %i.jf
  %i.ji = and <4 x i32> %wide.load224, %i.jg
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.iy ; 2 uses
  %i.jk = getelementptr inbounds i8, ptr %i.jj, i64 -12
  %i.jl = getelementptr inbounds i8, ptr %i.jj, i64 -28
  %wide.load230 = load <4 x i32>, ptr %i.jk, align 4, !tbaa !30
  %wide.load231 = load <4 x i32>, ptr %i.jl, align 4, !tbaa !30
  %i.jm = and <4 x i32> %wide.load230, %wide.load226
  %i.jn = and <4 x i32> %wide.load231, %wide.load227
  %i.jo = or <4 x i32> %i.jm, %i.jh
  %i.jp = or <4 x i32> %i.jn, %i.ji
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.iy ; 2 uses
  %i.jr = getelementptr inbounds i8, ptr %i.jq, i64 -12
  %i.js = getelementptr inbounds i8, ptr %i.jq, i64 -28
  store <4 x i32> %i.jo, ptr %i.jr, align 4, !tbaa !30
  store <4 x i32> %i.jp, ptr %i.js, align 4, !tbaa !30
  %index.next236 = add nuw i64 %index222, 8       ; 2 uses
  %i.jt = icmp eq i64 %index.next236, %n.vec220
  br i1 %i.jt, label %Kit_TruthMux.exit, label %vector.body221, !llvm.loop !59

select.unfold.i:                                  ; preds = %select.unfold.i.preheader, %select.unfold.i
  %indvars.iv.i134 = phi i64 [ %indvars.iv.next.i135, %select.unfold.i ], [ %i.im, %select.unfold.i.preheader ] ; 2 uses
  %indvars.iv.next.i135 = add nsw i64 %indvars.iv.i134, -1 ; 5 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i135
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !30
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.i135
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !30 ; 2 uses
  %i.jy = xor i32 %i.jx, -1
  %i.jz = and i32 %i.jv, %i.jy
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv.next.i135
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !30
  %i.kc = and i32 %i.kb, %i.jx
  %i.kd = or i32 %i.kc, %i.jz
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv.next.i135
  store i32 %i.kd, ptr %i.ke, align 4, !tbaa !30
  %i.kf = icmp samesign ugt i64 %indvars.iv.i134, 1
  br i1 %i.kf, label %select.unfold.i, label %Kit_TruthMux.exit, !llvm.loop !60

Kit_TruthMux.exit:                                ; preds = %vector.body221, %select.unfold.i, %Cnf_TruthPhase.exit133
  %i.kg = load i8, ptr %1, align 8, !tbaa !22     ; 3 uses
  %i.kh = sext i8 %i.kg to i32                    ; 2 uses
  %i.ki = icmp slt i32 %.0.lcssa, %i.kh
  br i1 %i.ki, label %.lr.ph.i136, label %Cnf_CutInsertIthVar.exit139

.lr.ph.i136:                                      ; preds = %Kit_TruthMux.exit
  %i.kj = sext i8 %i.kg to i64
  %i.kk = shl nuw nsw i64 %i.kj, 2                ; 2 uses
  %i.kl = add nuw nsw i64 %i.kk, 24
  %i.km = xor i32 %.0.lcssa, -1
  %i.kn = add i32 %i.kh, %i.km
  %i.ko = zext i32 %i.kn to i64
  %i.kp = shl nuw nsw i64 %i.ko, 2                ; 3 uses
  %i.kq = sub nsw i64 %i.kl, %i.kp
  %scevgep.i137 = getelementptr i8, ptr %1, i64 %i.kq
  %i.kr = add nuw nsw i64 %i.kk, 20
  %i.ks = sub nsw i64 %i.kr, %i.kp
  %scevgep13.i138 = getelementptr i8, ptr %1, i64 %i.ks
  %i.kt = add nuw nsw i64 %i.kp, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i137, ptr noundef nonnull align 4 dereferenceable(1) %scevgep13.i138, i64 %i.kt, i1 false), !tbaa !30
  br label %Cnf_CutInsertIthVar.exit139

Cnf_CutInsertIthVar.exit139:                      ; preds = %Kit_TruthMux.exit, %.lr.ph.i136
  %i.ku = zext nneg i32 %.0.lcssa to i64
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ku
  store i32 %3, ptr %i.kv, align 4, !tbaa !30
  %i.kw = add i8 %i.kg, 1
  store i8 %i.kw, ptr %1, align 8, !tbaa !22
  %i.kx = load i8, ptr %i.cw, align 8, !tbaa !22  ; 2 uses
  %i.ky = icmp slt i8 %i.kx, 5
  br i1 %i.ky, label %bb.t, label %bb.u

bb.t:                                             ; preds = %Cnf_CutInsertIthVar.exit139
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !31 ; 2 uses
  %i.lb = load i32, ptr %i.dn, align 4, !tbaa !30
  %i.lc = and i32 %i.lb, 65535                    ; 2 uses
  %i.ld = zext nneg i32 %i.lc to i64
  %i.le = getelementptr inbounds nuw i8, ptr %i.la, i64 %i.ld
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !28
  %i.lg = xor i32 %i.lc, 65535
  %i.lh = zext nneg i32 %i.lg to i64
  %i.li = getelementptr inbounds nuw i8, ptr %i.la, i64 %i.lh
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !28
  %i.lk = add i8 %i.lj, %i.lf
  %i.ll = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  store i8 %i.lk, ptr %i.ll, align 1, !tbaa !32
  br label %bb.ag

bb.u:                                             ; preds = %Cnf_CutInsertIthVar.exit139
  %i.lm = zext nneg i8 %i.kx to i32
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !70
  %i.lp = tail call i32 @Kit_TruthIsop(ptr noundef nonnull %i.dn, i32 noundef %i.lm, ptr noundef %i.lo, i32 noundef 0) #13
  %i.lq = icmp eq i32 %i.lp, -1
  br i1 %i.lq, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.lr = load ptr, ptr %i.ln, align 8, !tbaa !70 ; 2 uses
  %i.ls = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14 ; 4 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 4
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !71 ; 4 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ls, i64 4
  store i32 %i.lu, ptr %i.lv, align 4, !tbaa !71
  store i32 %i.lu, ptr %i.ls, align 8, !tbaa !72
  %.not.i = icmp eq i32 %i.lu, 0
  br i1 %.not.i, label %Vec_IntDup.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.lw = sext i32 %i.lu to i64
  %i.lx = shl nsw i64 %i.lw, 2                    ; 2 uses
  %i.ly = tail call noalias ptr @malloc(i64 noundef %i.lx) #14
  br label %Vec_IntDup.exit

Vec_IntDup.exit:                                  ; preds = %bb.v, %bb.w
  %.pre-phi12.i = phi i64 [ %i.lx, %bb.w ], [ 0, %bb.v ]
  %i.lz = phi ptr [ %i.ly, %bb.w ], [ null, %bb.v ] ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  store ptr %i.lz, ptr %i.ma, align 8, !tbaa !27
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !27
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.lz, ptr align 4 %i.mc, i64 %.pre-phi12.i, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %Vec_IntDup.exit
  %i.md = phi ptr [ %i.ls, %Vec_IntDup.exit ], [ null, %bb.u ]
  %i.me = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 2 uses
  store ptr %i.md, ptr %i.me, align 8, !tbaa !24
  %i.mf = load i8, ptr %i.cw, align 8, !tbaa !22  ; 2 uses
  %i.mg = sext i8 %i.mf to i32                    ; 2 uses
  %i.mh = icmp slt i8 %i.mf, 6
  %i.mi = add nsw i32 %i.mg, -5
  %i.mj = shl nuw i32 1, %i.mi
  %spec.select.i140 = select i1 %i.mh, i32 1, i32 %i.mj ; 3 uses
  %i.mk = icmp sgt i32 %spec.select.i140, 0
  br i1 %i.mk, label %select.unfold.preheader.i141, label %Kit_TruthNot.exit

select.unfold.preheader.i141:                     ; preds = %bb.x
  %i.ml = zext nneg i32 %spec.select.i140 to i64  ; 3 uses
  %min.iters.check241 = icmp ult i32 %spec.select.i140, 8
  br i1 %min.iters.check241, label %select.unfold.i142, label %vector.ph242

vector.ph242:                                     ; preds = %select.unfold.preheader.i141
  %n.vec243 = and i64 %i.ml, 2147483640
  %invariant.gep287 = getelementptr [4 x i8], ptr %i.dn, i64 %i.ml
  br label %vector.body244

vector.body244:                                   ; preds = %vector.body244, %vector.ph242
  %index245 = phi i64 [ 0, %vector.ph242 ], [ %index.next248, %vector.body244 ] ; 2 uses
  %i.mm = xor i64 %index245, -1
  %gep288 = getelementptr [4 x i8], ptr %invariant.gep287, i64 %i.mm ; 2 uses
  %i.mn = getelementptr inbounds i8, ptr %gep288, i64 -12 ; 2 uses
  %i.mo = getelementptr inbounds i8, ptr %gep288, i64 -28 ; 2 uses
  %wide.load246 = load <4 x i32>, ptr %i.mn, align 4, !tbaa !30
  %wide.load247 = load <4 x i32>, ptr %i.mo, align 4, !tbaa !30
  %i.mp = xor <4 x i32> %wide.load246, splat (i32 -1)
  %i.mq = xor <4 x i32> %wide.load247, splat (i32 -1)
  store <4 x i32> %i.mp, ptr %i.mn, align 4, !tbaa !30
  store <4 x i32> %i.mq, ptr %i.mo, align 4, !tbaa !30
  %index.next248 = add nuw i64 %index245, 8       ; 2 uses
  %i.mr = icmp eq i64 %index.next248, %n.vec243
  br i1 %i.mr, label %Kit_TruthNot.exit, label %vector.body244, !llvm.loop !61

select.unfold.i142:                               ; preds = %select.unfold.preheader.i141, %select.unfold.i142
  %indvars.iv.i143 = phi i64 [ %indvars.iv.next.i144, %select.unfold.i142 ], [ %i.ml, %select.unfold.preheader.i141 ] ; 2 uses
  %indvars.iv.next.i144 = add nsw i64 %indvars.iv.i143, -1 ; 2 uses
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv.next.i144 ; 2 uses
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !30
  %i.mu = xor i32 %i.mt, -1
  store i32 %i.mu, ptr %i.ms, align 4, !tbaa !30
  %i.mv = icmp samesign ugt i64 %indvars.iv.i143, 1
  br i1 %i.mv, label %select.unfold.i142, label %Kit_TruthNot.exit, !llvm.loop !62

Kit_TruthNot.exit:                                ; preds = %vector.body244, %select.unfold.i142, %bb.x
  %i.mw = load ptr, ptr %i.ln, align 8, !tbaa !70
end_hunk_0
