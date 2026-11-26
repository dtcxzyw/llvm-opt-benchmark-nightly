Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cnfCut?download=true
inline.NumInlined: 37
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@Cnf_CutCompose:bb.a
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
  %niter280.next.3 = add i64 %niter280, 4         ; 2 uses
  %niter280.ncmp.3 = icmp eq i64 %niter280.next.3, %unroll_iter279
  br i1 %niter280.ncmp.3, label %._crit_edge168.loopexit.unr-lcssa, label %bb.n, !llvm.loop !56

._crit_edge168.loopexit.unr-lcssa:                ; preds = %bb.n
  %lcmp.mod277.not = icmp eq i64 %xtraiter275, 0
  br i1 %lcmp.mod277.not, label %._crit_edge168, label %.epil.preheader274

.epil.preheader274:                               ; preds = %._crit_edge168.loopexit.unr-lcssa, %.lr.ph167
  %indvars.iv177.epil.init = phi i64 [ 0, %.lr.ph167 ], [ %indvars.iv.next178.3, %._crit_edge168.loopexit.unr-lcssa ]
  %lcmp.mod278 = icmp ne i64 %xtraiter275, 0
  tail call void @llvm.assume(i1 %lcmp.mod278)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader274
  %indvars.iv177.epil = phi i64 [ %indvars.iv177.epil.init, %.epil.preheader274 ], [ %indvars.iv.next178.epil, %bb.o ] ; 3 uses
  %epil.iter276 = phi i64 [ 0, %.epil.preheader274 ], [ %epil.iter276.next, %bb.o ]
  %i.gd = trunc nuw nsw i64 %indvars.iv177.epil to i32
  %i.ge = srem i32 %i.gd, %i.ee
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !30
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv177.epil
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !30
  %indvars.iv.next178.epil = add nuw nsw i64 %indvars.iv177.epil, 1
  %epil.iter276.next = add i64 %epil.iter276, 1   ; 2 uses
  %epil.iter276.cmp.not = icmp eq i64 %epil.iter276.next, %xtraiter275
  br i1 %epil.iter276.cmp.not, label %._crit_edge168, label %bb.o, !llvm.loop !57

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
  %i.if = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ie ; 4 uses
  %i.ig = load i8, ptr %i.cw, align 8, !tbaa !22  ; 2 uses
  %i.ih = sext i8 %i.ig to i32
  %i.ii = icmp slt i8 %i.ig, 6
  %i.ij = add nsw i32 %i.ih, -5
  %i.ik = shl nuw i32 1, %i.ij
  %spec.select.i = select i1 %i.ii, i32 1, i32 %i.ik ; 4 uses
  %i.il = icmp sgt i32 %spec.select.i, 0
  br i1 %i.il, label %select.unfold.preheader.i, label %Kit_TruthMux.exit

select.unfold.preheader.i:                        ; preds = %Cnf_TruthPhase.exit133
  %i.im = zext nneg i32 %spec.select.i to i64     ; 5 uses
  %min.iters.check218 = icmp ult i32 %spec.select.i, 20
  br i1 %min.iters.check218, label %select.unfold.i.preheader, label %vector.memcheck

select.unfold.i.preheader:                        ; preds = %vector.memcheck, %select.unfold.preheader.i
  %xtraiter281 = and i64 %i.im, 1
  %lcmp.mod282.not = icmp eq i64 %xtraiter281, 0
  br i1 %lcmp.mod282.not, label %select.unfold.i.prol.loopexit, label %select.unfold.i.prol

select.unfold.i.prol:                             ; preds = %select.unfold.i.preheader
  %indvars.iv.next.i135.prol = add nsw i64 %i.im, -1 ; 5 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i135.prol
  %i.io = load i32, ptr %i.in, align 4, !tbaa !30
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.i135.prol
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !30 ; 2 uses
  %i.ir = xor i32 %i.iq, -1
  %i.is = and i32 %i.io, %i.ir
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv.next.i135.prol
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !30
  %i.iv = and i32 %i.iu, %i.iq
  %i.iw = or i32 %i.iv, %i.is
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv.next.i135.prol
  store i32 %i.iw, ptr %i.ix, align 4, !tbaa !30
  br label %select.unfold.i.prol.loopexit

select.unfold.i.prol.loopexit:                    ; preds = %select.unfold.i.prol, %select.unfold.i.preheader
  %indvars.iv.i134.unr = phi i64 [ %i.im, %select.unfold.i.preheader ], [ %indvars.iv.next.i135.prol, %select.unfold.i.prol ]
  %i.iy = icmp eq i32 %spec.select.i, 1
  br i1 %i.iy, label %Kit_TruthMux.exit, label %select.unfold.i

vector.memcheck:                                  ; preds = %select.unfold.preheader.i
  %i.iz = shl nsw i64 %i.dm, 2                    ; 3 uses
  %4 = add i64 %i.iz, %i.cx
  %5 = sub i64 %i.c, %4
  %i.ja = add i64 %5, -25
  %diff.check = icmp ult i64 %i.ja, 31
  %6 = shl nsw i64 %i.ie, 2
  %7 = add i64 %6, %i.c
  %i.jb = add i64 %i.iz, %i.cx
  %i.jc = sub i64 %7, %i.jb
  %i.jd = add i64 %i.jc, -25
  %diff.check219 = icmp ult i64 %i.jd, 31
  %conflict.rdx = or i1 %diff.check, %diff.check219
  %i.je = add i64 %i.iz, %i.cx
  %i.jf = sub i64 %i.f, %i.je
  %i.jg = add i64 %i.jf, -25
  %diff.check220 = icmp ult i64 %i.jg, 31
  %conflict.rdx221 = or i1 %conflict.rdx, %diff.check220
  br i1 %conflict.rdx221, label %select.unfold.i.preheader, label %vector.ph222

vector.ph222:                                     ; preds = %vector.memcheck
  %n.vec223 = and i64 %i.im, 2147483640
  br label %vector.body224

vector.body224:                                   ; preds = %vector.body224, %vector.ph222
  %index225 = phi i64 [ 0, %vector.ph222 ], [ %index.next239, %vector.body224 ] ; 2 uses
  %i.jh = xor i64 %index225, -1
  %i.ji = add i64 %i.jh, %i.im                    ; 4 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ji ; 2 uses
  %i.jk = getelementptr inbounds i8, ptr %i.jj, i64 -12
  %i.jl = getelementptr inbounds i8, ptr %i.jj, i64 -28
  %wide.load226 = load <4 x i32>, ptr %i.jk, align 4, !tbaa !30
  %wide.load227 = load <4 x i32>, ptr %i.jl, align 4, !tbaa !30
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ji ; 2 uses
  %i.jn = getelementptr inbounds i8, ptr %i.jm, i64 -12
  %i.jo = getelementptr inbounds i8, ptr %i.jm, i64 -28
  %wide.load229 = load <4 x i32>, ptr %i.jn, align 4, !tbaa !30 ; 2 uses
  %wide.load230 = load <4 x i32>, ptr %i.jo, align 4, !tbaa !30 ; 2 uses
  %i.jp = xor <4 x i32> %wide.load229, splat (i32 -1)
  %i.jq = xor <4 x i32> %wide.load230, splat (i32 -1)
  %i.jr = and <4 x i32> %wide.load226, %i.jp
  %i.js = and <4 x i32> %wide.load227, %i.jq
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.ji ; 2 uses
  %i.ju = getelementptr inbounds i8, ptr %i.jt, i64 -12
  %i.jv = getelementptr inbounds i8, ptr %i.jt, i64 -28
  %wide.load233 = load <4 x i32>, ptr %i.ju, align 4, !tbaa !30
  %wide.load234 = load <4 x i32>, ptr %i.jv, align 4, !tbaa !30
  %i.jw = and <4 x i32> %wide.load233, %wide.load229
  %i.jx = and <4 x i32> %wide.load234, %wide.load230
  %i.jy = or <4 x i32> %i.jw, %i.jr
  %i.jz = or <4 x i32> %i.jx, %i.js
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.ji ; 2 uses
  %i.kb = getelementptr inbounds i8, ptr %i.ka, i64 -12
  %i.kc = getelementptr inbounds i8, ptr %i.ka, i64 -28
  store <4 x i32> %i.jy, ptr %i.kb, align 4, !tbaa !30
  store <4 x i32> %i.jz, ptr %i.kc, align 4, !tbaa !30
  %index.next239 = add nuw i64 %index225, 8       ; 2 uses
  %i.kd = icmp eq i64 %index.next239, %n.vec223
  br i1 %i.kd, label %Kit_TruthMux.exit, label %vector.body224, !llvm.loop !59

select.unfold.i:                                  ; preds = %select.unfold.i.prol.loopexit, %select.unfold.i
  %indvars.iv.i134 = phi i64 [ %indvars.iv.next.i135.1, %select.unfold.i ], [ %indvars.iv.i134.unr, %select.unfold.i.prol.loopexit ] ; 3 uses
  %indvars.iv.next.i135 = add nsw i64 %indvars.iv.i134, -1 ; 4 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i135
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !30
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.i135
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !30 ; 2 uses
  %i.ki = xor i32 %i.kh, -1
  %i.kj = and i32 %i.kf, %i.ki
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv.next.i135
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !30
  %i.km = and i32 %i.kl, %i.kh
  %i.kn = or i32 %i.km, %i.kj
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv.next.i135
  store i32 %i.kn, ptr %i.ko, align 4, !tbaa !30
  %indvars.iv.next.i135.1 = add nsw i64 %indvars.iv.i134, -2 ; 5 uses
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i135.1
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !30
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.i135.1
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !30 ; 2 uses
  %i.kt = xor i32 %i.ks, -1
  %i.ku = and i32 %i.kq, %i.kt
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv.next.i135.1
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !30
  %i.kx = and i32 %i.kw, %i.ks
  %i.ky = or i32 %i.kx, %i.ku
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv.next.i135.1
  store i32 %i.ky, ptr %i.kz, align 4, !tbaa !30
  %i.la = icmp sgt i64 %indvars.iv.i134, 2
  br i1 %i.la, label %select.unfold.i, label %Kit_TruthMux.exit, !llvm.loop !60

Kit_TruthMux.exit:                                ; preds = %vector.body224, %select.unfold.i.prol.loopexit, %select.unfold.i, %Cnf_TruthPhase.exit133
  %i.lb = load i8, ptr %1, align 8, !tbaa !22     ; 3 uses
  %i.lc = sext i8 %i.lb to i32                    ; 2 uses
  %i.ld = icmp slt i32 %.0.lcssa, %i.lc
  br i1 %i.ld, label %.lr.ph.i136, label %Cnf_CutInsertIthVar.exit139

.lr.ph.i136:                                      ; preds = %Kit_TruthMux.exit
  %i.le = sext i8 %i.lb to i64
  %i.lf = shl nuw nsw i64 %i.le, 2                ; 2 uses
  %i.lg = add nuw nsw i64 %i.lf, 24
  %i.lh = xor i32 %.0.lcssa, -1
  %i.li = add i32 %i.lc, %i.lh
  %i.lj = zext i32 %i.li to i64
  %i.lk = shl nuw nsw i64 %i.lj, 2                ; 3 uses
  %i.ll = sub nsw i64 %i.lg, %i.lk
  %scevgep.i137 = getelementptr i8, ptr %1, i64 %i.ll
  %i.lm = add nuw nsw i64 %i.lf, 20
  %i.ln = sub nsw i64 %i.lm, %i.lk
  %scevgep13.i138 = getelementptr i8, ptr %1, i64 %i.ln
  %i.lo = add nuw nsw i64 %i.lk, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i137, ptr noundef nonnull align 4 dereferenceable(1) %scevgep13.i138, i64 %i.lo, i1 false), !tbaa !30
  br label %Cnf_CutInsertIthVar.exit139

Cnf_CutInsertIthVar.exit139:                      ; preds = %Kit_TruthMux.exit, %.lr.ph.i136
  %i.lp = zext nneg i32 %.0.lcssa to i64
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.lp
  store i32 %3, ptr %i.lq, align 4, !tbaa !30
  %i.lr = add i8 %i.lb, 1
  store i8 %i.lr, ptr %1, align 8, !tbaa !22
  %i.ls = load i8, ptr %i.cw, align 8, !tbaa !22  ; 2 uses
  %i.lt = icmp slt i8 %i.ls, 5
  br i1 %i.lt, label %bb.t, label %bb.u

bb.t:                                             ; preds = %Cnf_CutInsertIthVar.exit139
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !31 ; 2 uses
  %i.lw = load i32, ptr %i.dn, align 4, !tbaa !30
  %i.lx = and i32 %i.lw, 65535                    ; 2 uses
  %i.ly = zext nneg i32 %i.lx to i64
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.ly
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !28
  %i.mb = xor i32 %i.lx, 65535
  %i.mc = zext nneg i32 %i.mb to i64
  %i.md = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.mc
  %i.me = load i8, ptr %i.md, align 1, !tbaa !28
  %i.mf = add i8 %i.me, %i.ma
  %i.mg = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  store i8 %i.mf, ptr %i.mg, align 1, !tbaa !32
  br label %bb.ag

bb.u:                                             ; preds = %Cnf_CutInsertIthVar.exit139
  %i.mh = zext nneg i8 %i.ls to i32
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !70
  %i.mk = tail call i32 @Kit_TruthIsop(ptr noundef nonnull %i.dn, i32 noundef %i.mh, ptr noundef %i.mj, i32 noundef 0) #13
  %i.ml = icmp eq i32 %i.mk, -1
  br i1 %i.ml, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.mm = load ptr, ptr %i.mi, align 8, !tbaa !70 ; 2 uses
  %i.mn = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14 ; 4 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mm, i64 4
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !71 ; 4 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mn, i64 4
  store i32 %i.mp, ptr %i.mq, align 4, !tbaa !71
  store i32 %i.mp, ptr %i.mn, align 8, !tbaa !72
  %.not.i = icmp eq i32 %i.mp, 0
  br i1 %.not.i, label %Vec_IntDup.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.mr = sext i32 %i.mp to i64
  %i.ms = shl nsw i64 %i.mr, 2                    ; 2 uses
  %i.mt = tail call noalias ptr @malloc(i64 noundef %i.ms) #14
  br label %Vec_IntDup.exit

Vec_IntDup.exit:                                  ; preds = %bb.v, %bb.w
  %.pre-phi12.i = phi i64 [ %i.ms, %bb.w ], [ 0, %bb.v ]
  %i.mu = phi ptr [ %i.mt, %bb.w ], [ null, %bb.v ] ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  store ptr %i.mu, ptr %i.mv, align 8, !tbaa !27
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !27
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.mu, ptr align 4 %i.mx, i64 %.pre-phi12.i, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %Vec_IntDup.exit
  %i.my = phi ptr [ %i.mn, %Vec_IntDup.exit ], [ null, %bb.u ]
  %i.mz = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 2 uses
  store ptr %i.my, ptr %i.mz, align 8, !tbaa !24
  %i.na = load i8, ptr %i.cw, align 8, !tbaa !22  ; 2 uses
  %i.nb = sext i8 %i.na to i32                    ; 2 uses
  %i.nc = icmp slt i8 %i.na, 6
  %i.nd = add nsw i32 %i.nb, -5
  %i.ne = shl nuw i32 1, %i.nd
  %spec.select.i140 = select i1 %i.nc, i32 1, i32 %i.ne ; 3 uses
  %i.nf = icmp sgt i32 %spec.select.i140, 0
  br i1 %i.nf, label %select.unfold.preheader.i141, label %Kit_TruthNot.exit

select.unfold.preheader.i141:                     ; preds = %bb.x
  %i.ng = zext nneg i32 %spec.select.i140 to i64  ; 3 uses
  %min.iters.check244 = icmp ult i32 %spec.select.i140, 8
  br i1 %min.iters.check244, label %select.unfold.i142, label %vector.ph245

vector.ph245:                                     ; preds = %select.unfold.preheader.i141
  %n.vec246 = and i64 %i.ng, 2147483640
  %invariant.gep292 = getelementptr [4 x i8], ptr %i.dn, i64 %i.ng
  br label %vector.body247

vector.body247:                                   ; preds = %vector.body247, %vector.ph245
  %index248 = phi i64 [ 0, %vector.ph245 ], [ %index.next251, %vector.body247 ] ; 2 uses
  %i.nh = xor i64 %index248, -1
  %gep293 = getelementptr [4 x i8], ptr %invariant.gep292, i64 %i.nh ; 2 uses
  %i.ni = getelementptr inbounds i8, ptr %gep293, i64 -12 ; 2 uses
  %i.nj = getelementptr inbounds i8, ptr %gep293, i64 -28 ; 2 uses
  %wide.load249 = load <4 x i32>, ptr %i.ni, align 4, !tbaa !30
  %wide.load250 = load <4 x i32>, ptr %i.nj, align 4, !tbaa !30
  %i.nk = xor <4 x i32> %wide.load249, splat (i32 -1)
  %i.nl = xor <4 x i32> %wide.load250, splat (i32 -1)
  store <4 x i32> %i.nk, ptr %i.ni, align 4, !tbaa !30
  store <4 x i32> %i.nl, ptr %i.nj, align 4, !tbaa !30
  %index.next251 = add nuw i64 %index248, 8       ; 2 uses
  %i.nm = icmp eq i64 %index.next251, %n.vec246
  br i1 %i.nm, label %Kit_TruthNot.exit, label %vector.body247, !llvm.loop !61
end_hunk_0
