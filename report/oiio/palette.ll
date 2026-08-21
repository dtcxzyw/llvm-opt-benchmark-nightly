inline.NumInlined: 20
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@PaletteSort:bb.a
  %indvars.iv95.i.i = phi i64 [ %indvars.iv.next96.i.i, %bb.t ], [ 0, %.lr.ph.i.i27 ] ; 4 uses
  %.179.us.i.i = phi i32 [ %.2.us.i.i, %bb.t ], [ %.05989.i.i, %.lr.ph.i.i27 ]
  %.16178.us.i.i = phi i32 [ %.262.us.i.i, %bb.t ], [ %.06088.i.i, %.lr.ph.i.i27 ] ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.06386.i.i, i64 %indvars.iv95.i.i
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !3  ; 5 uses
  %.not.us.i.i = icmp eq i32 %i.gb, %.16178.us.i.i
  br i1 %.not.us.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.split.us.i.i
  %i.gc = load i32, ptr %i.b, align 16, !tbaa !3
  %i.gd = icmp eq i32 %i.gc, %i.gb
  br i1 %i.gd, label %SearchColorNoIdx.exit.us.i.i, label %.preheader.i.us.i.i

.preheader.i.us.i.i:                              ; preds = %bb.p, %.preheader.i.us.i.i
  %.018.i.us.i.i = phi i32 [ %..018.i.us.i.i, %.preheader.i.us.i.i ], [ 0, %bb.p ] ; 2 uses
  %.017.i.us.i.i = phi i32 [ %.017..i.us.i.i, %.preheader.i.us.i.i ], [ %3, %bb.p ] ; 2 uses
  %i.ge = add nsw i32 %.017.i.us.i.i, %.018.i.us.i.i
  %i.gf = ashr i32 %i.ge, 1                       ; 3 uses
  %i.gg = sext i32 %i.gf to i64                   ; 2 uses
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.gg
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !3  ; 2 uses
  %.not.i.us.i.i = icmp eq i32 %i.gi, %i.gb
  %i.gj = icmp ult i32 %i.gi, %i.gb               ; 2 uses
  %..018.i.us.i.i = select i1 %i.gj, i32 %i.gf, i32 %.018.i.us.i.i
  %.017..i.us.i.i = select i1 %i.gj, i32 %.017.i.us.i.i, i32 %i.gf
  br i1 %.not.i.us.i.i, label %SearchColorNoIdx.exit.us.i.i, label %.preheader.i.us.i.i

SearchColorNoIdx.exit.us.i.i:                     ; preds = %.preheader.i.us.i.i, %bb.p
  %.223.i.us.i.i = phi i64 [ 0, %bb.p ], [ %i.gg, %.preheader.i.us.i.i ]
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.223.i.us.i.i
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !3
  br label %bb.q

bb.q:                                             ; preds = %SearchColorNoIdx.exit.us.i.i, %.lr.ph.split.us.i.i
  %.262.us.i.i = phi i32 [ %i.gb, %SearchColorNoIdx.exit.us.i.i ], [ %.16178.us.i.i, %.lr.ph.split.us.i.i ] ; 2 uses
  %.2.us.i.i = phi i32 [ %i.gl, %SearchColorNoIdx.exit.us.i.i ], [ %.179.us.i.i, %.lr.ph.split.us.i.i ] ; 6 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %.06683.i.i, i64 %indvars.iv95.i.i ; 2 uses
  store i32 %.2.us.i.i, ptr %i.gm, align 4, !tbaa !3
  %.not72.us.i.i = icmp eq i64 %indvars.iv95.i.i, 0
  br i1 %.not72.us.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gn = getelementptr i8, ptr %i.gm, i64 -4
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !3  ; 3 uses
  %.not73.us.i.i = icmp eq i32 %.2.us.i.i, %i.go
  br i1 %.not73.us.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gp = mul i32 %.2.us.i.i, %3
  %i.gq = add i32 %i.go, %i.gp
  %i.gr = zext i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.gr ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !3
  %i.gu = add i32 %i.gt, 1
  store i32 %i.gu, ptr %i.gs, align 4, !tbaa !3
  %i.gv = mul i32 %i.go, %3
  %i.gw = add i32 %i.gv, %.2.us.i.i
  %i.gx = zext i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.gx ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !3
  %i.ha = add i32 %i.gz, 1
  store i32 %i.ha, ptr %i.gy, align 4, !tbaa !3
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %indvars.iv.next96.i.i = add nuw nsw i64 %indvars.iv95.i.i, 1 ; 2 uses
  %i.hb = load i32, ptr %i.eu, align 8, !tbaa !9  ; 2 uses
  %i.hc = sext i32 %i.hb to i64
  %i.hd = icmp slt i64 %indvars.iv.next96.i.i, %i.hc
  br i1 %i.hd, label %.lr.ph.split.us.i.i, label %PrepareMapToPalette.exit.i.i, !llvm.loop !28

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i27, %bb.aa
  %indvars.iv.i.i28 = phi i64 [ %indvars.iv.next.i.i30, %bb.aa ], [ 0, %.lr.ph.i.i27 ] ; 5 uses
  %.179.i.i = phi i32 [ %.2.i.i, %bb.aa ], [ %.05989.i.i, %.lr.ph.i.i27 ]
  %.16178.i.i = phi i32 [ %.262.i.i, %bb.aa ], [ %.06088.i.i, %.lr.ph.i.i27 ] ; 2 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %.06386.i.i, i64 %indvars.iv.i.i28
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !3  ; 5 uses
  %.not.i.i29 = icmp eq i32 %i.hf, %.16178.i.i
  br i1 %.not.i.i29, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.split.i.i
  %i.hg = load i32, ptr %i.b, align 16, !tbaa !3
  %i.hh = icmp eq i32 %i.hg, %i.hf
  br i1 %i.hh, label %SearchColorNoIdx.exit.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.u, %.preheader.i.i.i
  %.018.i.i.i = phi i32 [ %..018.i.i.i, %.preheader.i.i.i ], [ 0, %bb.u ] ; 2 uses
  %.017.i.i.i = phi i32 [ %.017..i.i.i, %.preheader.i.i.i ], [ %3, %bb.u ] ; 2 uses
  %i.hi = add nsw i32 %.017.i.i.i, %.018.i.i.i
  %i.hj = ashr i32 %i.hi, 1                       ; 3 uses
  %i.hk = sext i32 %i.hj to i64                   ; 2 uses
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.hk
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !3  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.hm, %i.hf
  %i.hn = icmp ult i32 %i.hm, %i.hf               ; 2 uses
  %..018.i.i.i = select i1 %i.hn, i32 %i.hj, i32 %.018.i.i.i
  %.017..i.i.i = select i1 %i.hn, i32 %.017.i.i.i, i32 %i.hj
  br i1 %.not.i.i.i, label %SearchColorNoIdx.exit.i.i, label %.preheader.i.i.i

SearchColorNoIdx.exit.i.i:                        ; preds = %.preheader.i.i.i, %bb.u
  %.223.i.i.i = phi i64 [ 0, %bb.u ], [ %i.hk, %.preheader.i.i.i ]
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.223.i.i.i
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !3
  br label %bb.v

bb.v:                                             ; preds = %SearchColorNoIdx.exit.i.i, %.lr.ph.split.i.i
  %.262.i.i = phi i32 [ %i.hf, %SearchColorNoIdx.exit.i.i ], [ %.16178.i.i, %.lr.ph.split.i.i ] ; 2 uses
  %.2.i.i = phi i32 [ %i.hp, %SearchColorNoIdx.exit.i.i ], [ %.179.i.i, %.lr.ph.split.i.i ] ; 9 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %.06683.i.i, i64 %indvars.iv.i.i28 ; 2 uses
  store i32 %.2.i.i, ptr %i.hq, align 4, !tbaa !3
  %.not72.i.i = icmp eq i64 %indvars.iv.i.i28, 0
  br i1 %.not72.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hr = getelementptr i8, ptr %i.hq, i64 -4
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !3  ; 3 uses
  %.not73.i.i = icmp eq i32 %.2.i.i, %i.hs
  br i1 %.not73.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ht = mul i32 %.2.i.i, %3
  %i.hu = add i32 %i.hs, %i.ht
  %i.hv = zext i32 %i.hu to i64
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.hv ; 2 uses
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !3
  %i.hy = add i32 %i.hx, 1
  store i32 %i.hy, ptr %i.hw, align 4, !tbaa !3
  %i.hz = mul i32 %i.hs, %3
  %i.ia = add i32 %i.hz, %.2.i.i
  %i.ib = zext i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.ib ; 2 uses
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !3
  %i.ie = add i32 %i.id, 1
  store i32 %i.ie, ptr %i.ic, align 4, !tbaa !3
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %.06782.i.i, i64 %indvars.iv.i.i28
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !3  ; 3 uses
  %.not75.i.i = icmp eq i32 %.2.i.i, %i.ig
  br i1 %.not75.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ih = mul i32 %.2.i.i, %3
  %i.ii = add i32 %i.ig, %i.ih
  %i.ij = zext i32 %i.ii to i64
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.ij ; 2 uses
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !3
  %i.im = add i32 %i.il, 1
  store i32 %i.im, ptr %i.ik, align 4, !tbaa !3
  %i.in = mul i32 %i.ig, %3
  %i.io = add i32 %i.in, %.2.i.i
  %i.ip = zext i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.ip ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !3
  %i.is = add i32 %i.ir, 1
  store i32 %i.is, ptr %i.iq, align 4, !tbaa !3
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %indvars.iv.next.i.i30 = add nuw nsw i64 %indvars.iv.i.i28, 1 ; 2 uses
  %i.it = load i32, ptr %i.eu, align 8, !tbaa !9  ; 2 uses
  %i.iu = sext i32 %i.it to i64
  %i.iv = icmp slt i64 %indvars.iv.next.i.i30, %i.iu
  br i1 %i.iv, label %.lr.ph.split.i.i, label %PrepareMapToPalette.exit.i.i, !llvm.loop !28

PrepareMapToPalette.exit.i.i:                     ; preds = %bb.aa, %bb.t, %.preheader.i.i
  %i.iw = phi i32 [ %i.fy, %.preheader.i.i ], [ %i.hb, %bb.t ], [ %i.it, %bb.aa ]
  %.161.lcssa.i.i = phi i32 [ %.06088.i.i, %.preheader.i.i ], [ %.262.us.i.i, %bb.t ], [ %.262.i.i, %bb.aa ]
  %.1.lcssa.i.i = phi i32 [ %.05989.i.i, %.preheader.i.i ], [ %.2.us.i.i, %bb.t ], [ %.2.i.i, %bb.aa ]
  %i.ix = load i32, ptr %i.fs, align 8, !tbaa !19
  %i.iy = sext i32 %i.ix to i64
  %i.iz = getelementptr inbounds [4 x i8], ptr %.06386.i.i, i64 %i.iy
  %i.ja = add nuw nsw i32 %.06485.i.i, 1          ; 2 uses
  %i.jb = load i32, ptr %i.fp, align 4, !tbaa !15
  %i.jc = icmp slt i32 %i.ja, %i.jb
  br i1 %i.jc, label %.preheader.i.i, label %.loopexit120.i, !llvm.loop !29

bb.ab:                                            ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  tail call void @WebPSafeFree(ptr noundef nonnull %i.ep) #10
  br label %PaletteSortModifiedZeng.exit

.loopexit120.i:                                   ; preds = %PrepareMapToPalette.exit.i.i, %.preheader.lr.ph.i.i, %PrepareMapToPalette.exit.preheader.i.i
  call void @WebPSafeFree(ptr noundef nonnull %i.ey) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.jd = add nsw i64 %i.fb, -1                   ; 4 uses
  %min.iters.check = icmp ult i32 %3, 8
  %i.je = trunc i64 %i.jd to i32
  %i.jf = icmp ugt i64 %i.jd, 4294967295
  %n.vec = and i64 %i.fb, 4294967288              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.fb
  %xtraiter = and i64 %i.fb, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i112.i

.preheader.i112.i:                                ; preds = %.loopexit, %.loopexit120.i
  %i.jg = phi i8 [ 0, %.loopexit120.i ], [ %spec.select150.i, %.loopexit ]
  %.03342.i.i = phi i32 [ 0, %.loopexit120.i ], [ %i.kz, %.loopexit ] ; 4 uses
  %.03541.i.i = phi i32 [ 0, %.loopexit120.i ], [ %spec.select151.i, %.loopexit ] ; 2 uses
  %i.jh = mul i32 %.03342.i.i, %3                 ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.i112.i
  %6 = mul i32 %3, %.03342.i.i
  %i.ji = xor i32 %6, -1
  %i.jj = icmp ult i32 %i.ji, %i.je
  %i.jk = or i1 %i.jj, %i.jf
  br i1 %i.jk, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.scevcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.scevcheck ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.jq, %vector.body ], [ zeroinitializer, %vector.scevcheck ]
  %vec.phi79 = phi <4 x i32> [ %i.jr, %vector.body ], [ zeroinitializer, %vector.scevcheck ]
  %i.jl = trunc nuw i64 %index to i32
  %i.jm = add i32 %i.jh, %i.jl
  %i.jn = zext i32 %i.jm to i64
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.jn ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  %wide.load = load <4 x i32>, ptr %i.jo, align 4, !tbaa !3
  %wide.load80 = load <4 x i32>, ptr %i.jp, align 4, !tbaa !3
  %i.jq = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.jr = add <4 x i32> %wide.load80, %vec.phi79  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.js = icmp eq i64 %index.next, %n.vec
  br i1 %i.js, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.jr, %i.jq
  %i.jt = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.preheader.i112.i, %middle.block
  %indvars.iv.i113.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader.i112.i ], [ %n.vec, %middle.block ] ; 3 uses
  %.040.i.i.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.preheader.i112.i ], [ %i.jt, %middle.block ] ; 2 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i113.i.prol = phi i64 [ %indvars.iv.next.i114.i.prol, %scalar.ph.prol ], [ %indvars.iv.i113.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.040.i.i.prol = phi i32 [ %i.jz, %scalar.ph.prol ], [ %.040.i.i.ph, %scalar.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ju = trunc nuw i64 %indvars.iv.i113.i.prol to i32
  %i.jv = add i32 %i.jh, %i.ju
  %i.jw = zext i32 %i.jv to i64
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.jw
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !3
  %i.jz = add i32 %i.jy, %.040.i.i.prol           ; 3 uses
  %indvars.iv.next.i114.i.prol = add nuw nsw i64 %indvars.iv.i113.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !32

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa101.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.jz, %scalar.ph.prol ]
  %indvars.iv.i113.i.unr = phi i64 [ %indvars.iv.i113.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i114.i.prol, %scalar.ph.prol ]
  %.040.i.i.unr = phi i32 [ %.040.i.i.ph, %scalar.ph.preheader ], [ %i.jz, %scalar.ph.prol ]
  %i.ka = sub nsw i64 %indvars.iv.i113.i.ph, %i.fb
  %i.kb = icmp ugt i64 %i.ka, -4
  br i1 %i.kb, label %.loopexit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i32 1, %i.jh
  %invariant.op135 = add i32 2, %i.jh
  %invariant.op137 = add i32 3, %i.jh
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv.i113.i = phi i64 [ %indvars.iv.i113.i.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next.i114.i.3, %scalar.ph ] ; 5 uses
  %.040.i.i = phi i32 [ %.040.i.i.unr, %scalar.ph.preheader.new ], [ %i.kw, %scalar.ph ]
  %i.kc = trunc nuw i64 %indvars.iv.i113.i to i32
  %i.kd = add i32 %i.jh, %i.kc
  %i.ke = zext i32 %i.kd to i64
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.ke
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !3
  %i.kh = add i32 %i.kg, %.040.i.i
  %i.ki = trunc i64 %indvars.iv.i113.i to i32
  %.reass = add i32 %i.ki, %invariant.op
  %i.kj = zext i32 %.reass to i64
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.kj
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !3
  %i.km = add i32 %i.kl, %i.kh
  %i.kn = trunc i64 %indvars.iv.i113.i to i32
  %.reass136 = add i32 %i.kn, %invariant.op135
  %i.ko = zext i32 %.reass136 to i64
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.ko
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !3
  %i.kr = add i32 %i.kq, %i.km
  %i.ks = trunc i64 %indvars.iv.i113.i to i32
  %.reass138 = add i32 %i.ks, %invariant.op137
  %i.kt = zext i32 %.reass138 to i64
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.kt
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !3
  %i.kw = add i32 %i.kv, %i.kr                    ; 2 uses
  %indvars.iv.next.i114.i.3 = add nuw nsw i64 %indvars.iv.i113.i, 4 ; 2 uses
  %exitcond.not.i.i20.3 = icmp eq i64 %indvars.iv.next.i114.i.3, %i.fb
  br i1 %exitcond.not.i.i20.3, label %.loopexit, label %scalar.ph, !llvm.loop !34

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa73 = phi i32 [ %i.jt, %middle.block ], [ %.lcssa101.unr, %scalar.ph.prol.loopexit ], [ %i.kw, %scalar.ph ] ; 2 uses
  %i.kx = icmp ugt i32 %.lcssa73, %.03541.i.i
  %i.ky = trunc i32 %.03342.i.i to i8
  %spec.select150.i = select i1 %i.kx, i8 %i.ky, i8 %i.jg ; 4 uses
  %spec.select151.i = call i32 @llvm.umax.i32(i32 %.lcssa73, i32 %.03541.i.i)
  %i.kz = add nuw i32 %.03342.i.i, 1              ; 2 uses
  %exitcond46.not.i.i = icmp eq i32 %i.kz, %3
  br i1 %exitcond46.not.i.i, label %bb.ac, label %.preheader.i112.i, !llvm.loop !35

bb.ac:                                            ; preds = %.loopexit
  store i8 %spec.select150.i, ptr %i.c, align 16
  %i.la = zext i8 %spec.select150.i to i32        ; 2 uses
  %i.lb = mul i32 %3, %i.la                       ; 3 uses
  %xtraiter108 = and i64 %i.fb, 1
  %i.lc = icmp eq i64 %i.jd, 0
  br i1 %i.lc, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.ac
  %unroll_iter = and i64 %i.fb, 4294967294
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.new
  %indvars.iv.i21 = phi i64 [ 0, %.new ], [ %indvars.iv.next.i22.1, %bb.ad ] ; 4 uses
  %i.ld = phi i8 [ 0, %.new ], [ %spec.select152.i.1, %bb.ad ]
  %.03144.i.i = phi i32 [ 0, %.new ], [ %spec.select153.i.1, %bb.ad ] ; 2 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.ad ]
  %i.le = trunc nuw i64 %indvars.iv.i21 to i32
  %i.lf = add i32 %i.lb, %i.le
  %i.lg = zext i32 %i.lf to i64
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.lg
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !3  ; 2 uses
  %i.lj = icmp ugt i32 %i.li, %.03144.i.i
  %i.lk = trunc i64 %indvars.iv.i21 to i8
  %spec.select152.i = select i1 %i.lj, i8 %i.lk, i8 %i.ld
  %spec.select153.i = call i32 @llvm.umax.i32(i32 %i.li, i32 %.03144.i.i) ; 2 uses
  %indvars.iv.next.i22 = or disjoint i64 %indvars.iv.i21, 1 ; 2 uses
  %i.ll = trunc nuw i64 %indvars.iv.next.i22 to i32
  %i.lm = add i32 %i.lb, %i.ll
  %i.ln = zext i32 %i.lm to i64
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.ln
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !3  ; 2 uses
  %i.lq = icmp ugt i32 %i.lp, %spec.select153.i
  %i.lr = trunc i64 %indvars.iv.next.i22 to i8
  %spec.select152.i.1 = select i1 %i.lq, i8 %i.lr, i8 %spec.select152.i ; 3 uses
  %spec.select153.i.1 = call i32 @llvm.umax.i32(i32 %i.lp, i32 %spec.select153.i) ; 2 uses
  %indvars.iv.next.i22.1 = add nuw nsw i64 %indvars.iv.i21, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %CoOccurrenceFindMax.exit.i.unr-lcssa, label %bb.ad, !llvm.loop !36

CoOccurrenceFindMax.exit.i.unr-lcssa:             ; preds = %bb.ad
  %lcmp.mod109.not = icmp eq i64 %xtraiter108, 0
  br i1 %lcmp.mod109.not, label %CoOccurrenceFindMax.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %CoOccurrenceFindMax.exit.i.unr-lcssa, %bb.ac
  %indvars.iv.i21.epil.init = phi i64 [ 0, %bb.ac ], [ %indvars.iv.next.i22.1, %CoOccurrenceFindMax.exit.i.unr-lcssa ] ; 2 uses
  %.epil.init = phi i8 [ 0, %bb.ac ], [ %spec.select152.i.1, %CoOccurrenceFindMax.exit.i.unr-lcssa ]
  %.03144.i.i.epil.init = phi i32 [ 0, %bb.ac ], [ %spec.select153.i.1, %CoOccurrenceFindMax.exit.i.unr-lcssa ]
  %lcmp.mod111 = trunc i32 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod111)
  %i.ls = trunc nuw i64 %indvars.iv.i21.epil.init to i32
  %i.lt = add i32 %i.lb, %i.ls
  %i.lu = zext i32 %i.lt to i64
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.lu
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !3
  %i.lx = icmp ugt i32 %i.lw, %.03144.i.i.epil.init
  %i.ly = trunc i64 %indvars.iv.i21.epil.init to i8
  %spec.select152.i.epil = select i1 %i.lx, i8 %i.ly, i8 %.epil.init
  br label %CoOccurrenceFindMax.exit.i

CoOccurrenceFindMax.exit.i:                       ; preds = %CoOccurrenceFindMax.exit.i.unr-lcssa, %.epil.preheader
  %spec.select152.i.lcssa = phi i8 [ %spec.select152.i.1, %CoOccurrenceFindMax.exit.i.unr-lcssa ], [ %spec.select152.i.epil, %.epil.preheader ] ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %spec.select152.i.lcssa, ptr %i.lz, align 1
  %i.ma = add i32 %3, -2                          ; 2 uses
  %.not106.i = icmp eq i32 %i.ma, 0
  br i1 %.not106.i, label %.lr.ph149.preheader.i, label %bb.ae

bb.ae:                                            ; preds = %CoOccurrenceFindMax.exit.i
  store i8 0, ptr %5, align 16, !tbaa !37
  %i.mb = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.mb, align 4, !tbaa !39
  %i.mc = zext i8 %spec.select152.i.lcssa to i32
  %i.md = zext i8 %spec.select152.i.lcssa to i64
  %i.me = zext i8 %spec.select150.i to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.ah, %bb.ae
  %indvars.iv162.i = phi i64 [ 0, %bb.ae ], [ %indvars.iv.next163.i, %bb.ah ] ; 5 uses
  %.087133.i = phi ptr [ %5, %bb.ae ], [ %.2.i, %bb.ah ] ; 3 uses
  %.094132.i = phi i32 [ 0, %bb.ae ], [ %.195.i, %bb.ah ] ; 3 uses
  %i.mf = icmp eq i64 %indvars.iv162.i, %i.me
  %i.mg = icmp eq i64 %indvars.iv162.i, %i.md
  %or.cond.i = select i1 %i.mf, i1 true, i1 %i.mg
  br i1 %or.cond.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.mh = trunc nuw i64 %indvars.iv162.i to i32
  %i.mi = trunc i64 %indvars.iv162.i to i8
  %i.mj = zext i32 %.094132.i to i64
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.mj ; 3 uses
  store i8 %i.mi, ptr %i.mk, align 8, !tbaa !37
  %i.ml = mul i32 %3, %i.mh                       ; 2 uses
  %i.mm = add i32 %i.ml, %i.la
  %i.mn = zext i32 %i.mm to i64
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.mn
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !3
  %i.mq = add i32 %i.ml, %i.mc
end_hunk_0
