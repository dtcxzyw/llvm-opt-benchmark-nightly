Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/palette?download=true
inline.NumInlined: 20
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@PaletteSort:bb.a
  %.06386.i.i = phi ptr [ %i.iz, %PrepareMapToPalette.exit.i.i ], [ %i.es, %.preheader.i.preheader.i ] ; 3 uses
  %.06485.i.i = phi i32 [ %i.ja, %PrepareMapToPalette.exit.i.i ], [ 0, %.preheader.i.preheader.i ] ; 2 uses
  %.06683.i.i = phi ptr [ %.06782.i.i, %PrepareMapToPalette.exit.i.i ], [ %i.fx, %.preheader.i.preheader.i ] ; 3 uses
  %.06782.i.i = phi ptr [ %.06683.i.i, %PrepareMapToPalette.exit.i.i ], [ %i.ey, %.preheader.i.preheader.i ] ; 2 uses
  %i.fz = icmp sgt i32 %i.fy, 0
  br i1 %i.fz, label %.lr.ph.i.i27, label %PrepareMapToPalette.exit.i.i

.lr.ph.i.i27:                                     ; preds = %.preheader.i.i
  %.not74.i.i = icmp eq i32 %.06485.i.i, 0
  br i1 %.not74.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i27, %bb.t
  %indvars.iv95.i.i = phi i64 [ %indvars.iv.next96.i.i, %bb.t ], [ 0, %.lr.ph.i.i27 ] ; 4 uses
  %.179.us.i.i = phi i32 [ %.2.us.i.i, %bb.t ], [ %.05989.i.i, %.lr.ph.i.i27 ]
  %.16178.us.i.i = phi i32 [ %.262.us.i.i, %bb.t ], [ %.06088.i.i, %.lr.ph.i.i27 ] ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.06386.i.i, i64 %indvars.iv95.i.i
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !9  ; 5 uses
  %.not.us.i.i = icmp eq i32 %i.gb, %.16178.us.i.i
  br i1 %.not.us.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.split.us.i.i
  %i.gc = load i32, ptr %i.b, align 16, !tbaa !9
  %i.gd = icmp eq i32 %i.gc, %i.gb
  br i1 %i.gd, label %SearchColorNoIdx.exit.us.i.i, label %.preheader.i.us.i.i

.preheader.i.us.i.i:                              ; preds = %bb.p, %.preheader.i.us.i.i
  %.018.i.us.i.i = phi i32 [ %..018.i.us.i.i, %.preheader.i.us.i.i ], [ 0, %bb.p ] ; 2 uses
  %.017.i.us.i.i = phi i32 [ %.017..i.us.i.i, %.preheader.i.us.i.i ], [ %3, %bb.p ] ; 2 uses
  %i.ge = add nsw i32 %.017.i.us.i.i, %.018.i.us.i.i
  %i.gf = ashr i32 %i.ge, 1                       ; 3 uses
  %i.gg = sext i32 %i.gf to i64                   ; 2 uses
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.gg
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !9  ; 2 uses
  %.not.i.us.i.i = icmp eq i32 %i.gi, %i.gb
  %i.gj = icmp ult i32 %i.gi, %i.gb               ; 2 uses
  %..018.i.us.i.i = select i1 %i.gj, i32 %i.gf, i32 %.018.i.us.i.i
  %.017..i.us.i.i = select i1 %i.gj, i32 %.017.i.us.i.i, i32 %i.gf
  br i1 %.not.i.us.i.i, label %SearchColorNoIdx.exit.us.i.i, label %.preheader.i.us.i.i

SearchColorNoIdx.exit.us.i.i:                     ; preds = %.preheader.i.us.i.i, %bb.p
  %.223.i.us.i.i = phi i64 [ 0, %bb.p ], [ %i.gg, %.preheader.i.us.i.i ]
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.223.i.us.i.i
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !9
  br label %bb.q

bb.q:                                             ; preds = %SearchColorNoIdx.exit.us.i.i, %.lr.ph.split.us.i.i
  %.262.us.i.i = phi i32 [ %i.gb, %SearchColorNoIdx.exit.us.i.i ], [ %.16178.us.i.i, %.lr.ph.split.us.i.i ] ; 2 uses
  %.2.us.i.i = phi i32 [ %i.gl, %SearchColorNoIdx.exit.us.i.i ], [ %.179.us.i.i, %.lr.ph.split.us.i.i ] ; 6 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %.06683.i.i, i64 %indvars.iv95.i.i ; 2 uses
  store i32 %.2.us.i.i, ptr %i.gm, align 4, !tbaa !9
  %.not72.us.i.i = icmp eq i64 %indvars.iv95.i.i, 0
  br i1 %.not72.us.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gn = getelementptr i8, ptr %i.gm, i64 -4
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !9  ; 3 uses
  %.not73.us.i.i = icmp eq i32 %.2.us.i.i, %i.go
  br i1 %.not73.us.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gp = mul i32 %.2.us.i.i, %3
  %i.gq = add i32 %i.go, %i.gp
  %i.gr = zext i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.gr ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !9
  %i.gu = add i32 %i.gt, 1
  store i32 %i.gu, ptr %i.gs, align 4, !tbaa !9
  %i.gv = mul i32 %i.go, %3
  %i.gw = add i32 %i.gv, %.2.us.i.i
  %i.gx = zext i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.gx ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !9
  %i.ha = add i32 %i.gz, 1
  store i32 %i.ha, ptr %i.gy, align 4, !tbaa !9
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %indvars.iv.next96.i.i = add nuw nsw i64 %indvars.iv95.i.i, 1 ; 2 uses
  %i.hb = load i32, ptr %i.eu, align 8, !tbaa !16 ; 2 uses
  %i.hc = sext i32 %i.hb to i64
  %i.hd = icmp slt i64 %indvars.iv.next96.i.i, %i.hc
  br i1 %i.hd, label %.lr.ph.split.us.i.i, label %PrepareMapToPalette.exit.i.i, !llvm.loop !28

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i27, %bb.aa
  %indvars.iv.i.i28 = phi i64 [ %indvars.iv.next.i.i30, %bb.aa ], [ 0, %.lr.ph.i.i27 ] ; 5 uses
  %.179.i.i = phi i32 [ %.2.i.i, %bb.aa ], [ %.05989.i.i, %.lr.ph.i.i27 ]
  %.16178.i.i = phi i32 [ %.262.i.i, %bb.aa ], [ %.06088.i.i, %.lr.ph.i.i27 ] ; 2 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %.06386.i.i, i64 %indvars.iv.i.i28
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !9  ; 5 uses
  %.not.i.i29 = icmp eq i32 %i.hf, %.16178.i.i
  br i1 %.not.i.i29, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.split.i.i
  %i.hg = load i32, ptr %i.b, align 16, !tbaa !9
  %i.hh = icmp eq i32 %i.hg, %i.hf
  br i1 %i.hh, label %SearchColorNoIdx.exit.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.u, %.preheader.i.i.i
  %.018.i.i.i = phi i32 [ %..018.i.i.i, %.preheader.i.i.i ], [ 0, %bb.u ] ; 2 uses
  %.017.i.i.i = phi i32 [ %.017..i.i.i, %.preheader.i.i.i ], [ %3, %bb.u ] ; 2 uses
  %i.hi = add nsw i32 %.017.i.i.i, %.018.i.i.i
  %i.hj = ashr i32 %i.hi, 1                       ; 3 uses
  %i.hk = sext i32 %i.hj to i64                   ; 2 uses
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.hk
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !9  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.hm, %i.hf
  %i.hn = icmp ult i32 %i.hm, %i.hf               ; 2 uses
  %..018.i.i.i = select i1 %i.hn, i32 %i.hj, i32 %.018.i.i.i
  %.017..i.i.i = select i1 %i.hn, i32 %.017.i.i.i, i32 %i.hj
  br i1 %.not.i.i.i, label %SearchColorNoIdx.exit.i.i, label %.preheader.i.i.i

SearchColorNoIdx.exit.i.i:                        ; preds = %.preheader.i.i.i, %bb.u
  %.223.i.i.i = phi i64 [ 0, %bb.u ], [ %i.hk, %.preheader.i.i.i ]
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.223.i.i.i
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !9
  br label %bb.v

bb.v:                                             ; preds = %SearchColorNoIdx.exit.i.i, %.lr.ph.split.i.i
  %.262.i.i = phi i32 [ %i.hf, %SearchColorNoIdx.exit.i.i ], [ %.16178.i.i, %.lr.ph.split.i.i ] ; 2 uses
  %.2.i.i = phi i32 [ %i.hp, %SearchColorNoIdx.exit.i.i ], [ %.179.i.i, %.lr.ph.split.i.i ] ; 9 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %.06683.i.i, i64 %indvars.iv.i.i28 ; 2 uses
  store i32 %.2.i.i, ptr %i.hq, align 4, !tbaa !9
  %.not72.i.i = icmp eq i64 %indvars.iv.i.i28, 0
  br i1 %.not72.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hr = getelementptr i8, ptr %i.hq, i64 -4
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !9  ; 3 uses
  %.not73.i.i = icmp eq i32 %.2.i.i, %i.hs
  br i1 %.not73.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ht = mul i32 %.2.i.i, %3
  %i.hu = add i32 %i.hs, %i.ht
  %i.hv = zext i32 %i.hu to i64
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.hv ; 2 uses
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !9
  %i.hy = add i32 %i.hx, 1
  store i32 %i.hy, ptr %i.hw, align 4, !tbaa !9
  %i.hz = mul i32 %i.hs, %3
  %i.ia = add i32 %i.hz, %.2.i.i
  %i.ib = zext i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.ib ; 2 uses
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !9
  %i.ie = add i32 %i.id, 1
  store i32 %i.ie, ptr %i.ic, align 4, !tbaa !9
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %.06782.i.i, i64 %indvars.iv.i.i28
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !9  ; 3 uses
  %.not75.i.i = icmp eq i32 %.2.i.i, %i.ig
  br i1 %.not75.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ih = mul i32 %.2.i.i, %3
  %i.ii = add i32 %i.ig, %i.ih
  %i.ij = zext i32 %i.ii to i64
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.ij ; 2 uses
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !9
  %i.im = add i32 %i.il, 1
  store i32 %i.im, ptr %i.ik, align 4, !tbaa !9
  %i.in = mul i32 %i.ig, %3
  %i.io = add i32 %i.in, %.2.i.i
  %i.ip = zext i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.ip ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !9
  %i.is = add i32 %i.ir, 1
  store i32 %i.is, ptr %i.iq, align 4, !tbaa !9
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %indvars.iv.next.i.i30 = add nuw nsw i64 %indvars.iv.i.i28, 1 ; 2 uses
  %i.it = load i32, ptr %i.eu, align 8, !tbaa !16 ; 2 uses
  %i.iu = sext i32 %i.it to i64
  %i.iv = icmp slt i64 %indvars.iv.next.i.i30, %i.iu
  br i1 %i.iv, label %.lr.ph.split.i.i, label %PrepareMapToPalette.exit.i.i, !llvm.loop !28

PrepareMapToPalette.exit.i.i:                     ; preds = %bb.aa, %bb.t, %.preheader.i.i
  %i.iw = phi i32 [ %i.fy, %.preheader.i.i ], [ %i.hb, %bb.t ], [ %i.it, %bb.aa ]
  %.161.lcssa.i.i = phi i32 [ %.06088.i.i, %.preheader.i.i ], [ %.262.us.i.i, %bb.t ], [ %.262.i.i, %bb.aa ]
  %.1.lcssa.i.i = phi i32 [ %.05989.i.i, %.preheader.i.i ], [ %.2.us.i.i, %bb.t ], [ %.2.i.i, %bb.aa ]
  %i.ix = load i32, ptr %i.fs, align 8, !tbaa !20
  %i.iy = sext i32 %i.ix to i64
  %i.iz = getelementptr inbounds [4 x i8], ptr %.06386.i.i, i64 %i.iy
  %i.ja = add nuw nsw i32 %.06485.i.i, 1          ; 2 uses
  %i.jb = load i32, ptr %i.fp, align 4, !tbaa !17
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
  %.03342.i.i = phi i32 [ 0, %.loopexit120.i ], [ %i.kz, %.loopexit ] ; 3 uses
  %.03541.i.i = phi i32 [ 0, %.loopexit120.i ], [ %spec.select151.i, %.loopexit ] ; 2 uses
  %i.jh = mul i32 %.03342.i.i, %3                 ; 7 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.i112.i
  %i.ji = xor i32 %i.jh, -1
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
  %wide.load = load <4 x i32>, ptr %i.jo, align 4, !tbaa !9
  %wide.load80 = load <4 x i32>, ptr %i.jp, align 4, !tbaa !9
  %i.jq = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.jr = add <4 x i32> %wide.load80, %vec.phi79  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.js = icmp eq i64 %index.next, %n.vec
  br i1 %i.js, label %middle.block, label %vector.body, !llvm.loop !30

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
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !9
  %i.jz = add i32 %i.jy, %.040.i.i.prol           ; 3 uses
  %indvars.iv.next.i114.i.prol = add nuw nsw i64 %indvars.iv.i113.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !31

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
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !9
  %i.kh = add i32 %i.kg, %.040.i.i
  %i.ki = trunc i64 %indvars.iv.i113.i to i32
  %.reass = add i32 %i.ki, %invariant.op
  %i.kj = zext i32 %.reass to i64
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.kj
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !9
  %i.km = add i32 %i.kl, %i.kh
  %i.kn = trunc i64 %indvars.iv.i113.i to i32
  %.reass136 = add i32 %i.kn, %invariant.op135
  %i.ko = zext i32 %.reass136 to i64
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.ko
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !9
  %i.kr = add i32 %i.kq, %i.km
  %i.ks = trunc i64 %indvars.iv.i113.i to i32
  %.reass138 = add i32 %i.ks, %invariant.op137
  %i.kt = zext i32 %.reass138 to i64
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.kt
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !9
  %i.kw = add i32 %i.kv, %i.kr                    ; 2 uses
  %indvars.iv.next.i114.i.3 = add nuw nsw i64 %indvars.iv.i113.i, 4 ; 2 uses
  %exitcond.not.i.i20.3 = icmp eq i64 %indvars.iv.next.i114.i.3, %i.fb
  br i1 %exitcond.not.i.i20.3, label %.loopexit, label %scalar.ph, !llvm.loop !32

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa73 = phi i32 [ %i.jt, %middle.block ], [ %.lcssa101.unr, %scalar.ph.prol.loopexit ], [ %i.kw, %scalar.ph ] ; 2 uses
  %i.kx = icmp ugt i32 %.lcssa73, %.03541.i.i
  %i.ky = trunc i32 %.03342.i.i to i8
  %spec.select150.i = select i1 %i.kx, i8 %i.ky, i8 %i.jg ; 4 uses
  %spec.select151.i = call i32 @llvm.umax.i32(i32 %.lcssa73, i32 %.03541.i.i)
  %i.kz = add nuw i32 %.03342.i.i, 1              ; 2 uses
  %exitcond46.not.i.i = icmp eq i32 %i.kz, %3
  br i1 %exitcond46.not.i.i, label %bb.ac, label %.preheader.i112.i, !llvm.loop !33

bb.ac:                                            ; preds = %.loopexit
  store i8 %spec.select150.i, ptr %i.c, align 16
  %i.la = zext i8 %spec.select150.i to i32        ; 2 uses
  %i.lb = mul i32 %3, %i.la                       ; 3 uses
  %xtraiter108 = and i64 %i.fb, 1
  %6 = icmp eq i64 %i.jd, 0
  br i1 %6, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.ac
  %unroll_iter = and i64 %i.fb, 4294967294
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.new
  %indvars.iv.i21 = phi i64 [ 0, %.new ], [ %indvars.iv.next.i22.1, %bb.ad ] ; 4 uses
  %i.lc = phi i8 [ 0, %.new ], [ %spec.select152.i.1, %bb.ad ]
  %.03144.i.i = phi i32 [ 0, %.new ], [ %spec.select153.i.1, %bb.ad ] ; 2 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.ad ]
  %i.ld = trunc nuw i64 %indvars.iv.i21 to i32
  %i.le = add i32 %i.lb, %i.ld
  %i.lf = zext i32 %i.le to i64
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.lf
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !9  ; 2 uses
  %i.li = icmp ugt i32 %i.lh, %.03144.i.i
  %i.lj = trunc i64 %indvars.iv.i21 to i8
  %spec.select152.i = select i1 %i.li, i8 %i.lj, i8 %i.lc
  %spec.select153.i = call i32 @llvm.umax.i32(i32 %i.lh, i32 %.03144.i.i) ; 2 uses
  %indvars.iv.next.i22 = or disjoint i64 %indvars.iv.i21, 1 ; 2 uses
  %i.lk = trunc nuw i64 %indvars.iv.next.i22 to i32
  %i.ll = add i32 %i.lb, %i.lk
  %i.lm = zext i32 %i.ll to i64
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.lm
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !9  ; 2 uses
  %i.lp = icmp ugt i32 %i.lo, %spec.select153.i
  %i.lq = trunc i64 %indvars.iv.next.i22 to i8
  %spec.select152.i.1 = select i1 %i.lp, i8 %i.lq, i8 %spec.select152.i ; 3 uses
  %spec.select153.i.1 = call i32 @llvm.umax.i32(i32 %i.lo, i32 %spec.select153.i) ; 2 uses
  %indvars.iv.next.i22.1 = add nuw nsw i64 %indvars.iv.i21, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %CoOccurrenceFindMax.exit.i.unr-lcssa, label %bb.ad, !llvm.loop !34

CoOccurrenceFindMax.exit.i.unr-lcssa:             ; preds = %bb.ad
  %lcmp.mod109.not = icmp eq i64 %xtraiter108, 0
  br i1 %lcmp.mod109.not, label %CoOccurrenceFindMax.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %CoOccurrenceFindMax.exit.i.unr-lcssa, %bb.ac
  %indvars.iv.i21.epil.init = phi i64 [ 0, %bb.ac ], [ %indvars.iv.next.i22.1, %CoOccurrenceFindMax.exit.i.unr-lcssa ] ; 2 uses
  %.epil.init = phi i8 [ 0, %bb.ac ], [ %spec.select152.i.1, %CoOccurrenceFindMax.exit.i.unr-lcssa ]
  %.03144.i.i.epil.init = phi i32 [ 0, %bb.ac ], [ %spec.select153.i.1, %CoOccurrenceFindMax.exit.i.unr-lcssa ]
  %lcmp.mod111 = trunc i32 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod111)
  %i.lr = trunc nuw i64 %indvars.iv.i21.epil.init to i32
  %i.ls = add i32 %i.lb, %i.lr
  %i.lt = zext i32 %i.ls to i64
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.lt
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !9
  %i.lw = icmp ugt i32 %i.lv, %.03144.i.i.epil.init
  %i.lx = trunc i64 %indvars.iv.i21.epil.init to i8
  %spec.select152.i.epil = select i1 %i.lw, i8 %i.lx, i8 %.epil.init
  br label %CoOccurrenceFindMax.exit.i

CoOccurrenceFindMax.exit.i:                       ; preds = %CoOccurrenceFindMax.exit.i.unr-lcssa, %.epil.preheader
  %spec.select152.i.lcssa = phi i8 [ %spec.select152.i.1, %CoOccurrenceFindMax.exit.i.unr-lcssa ], [ %spec.select152.i.epil, %.epil.preheader ] ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %spec.select152.i.lcssa, ptr %i.ly, align 1
  %i.lz = add i32 %3, -2                          ; 2 uses
  %.not106.i = icmp eq i32 %i.lz, 0
  br i1 %.not106.i, label %.lr.ph149.preheader.i, label %bb.ae

bb.ae:                                            ; preds = %CoOccurrenceFindMax.exit.i
  store i8 0, ptr %5, align 16, !tbaa !44
  %i.ma = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.ma, align 4, !tbaa !45
  %i.mb = zext i8 %spec.select152.i.lcssa to i32
  %i.mc = zext i8 %spec.select152.i.lcssa to i64
  %i.md = zext i8 %spec.select150.i to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.ah, %bb.ae
  %indvars.iv162.i = phi i64 [ 0, %bb.ae ], [ %indvars.iv.next163.i, %bb.ah ] ; 5 uses
  %.087133.i = phi ptr [ %5, %bb.ae ], [ %.2.i, %bb.ah ] ; 3 uses
  %.094132.i = phi i32 [ 0, %bb.ae ], [ %.195.i, %bb.ah ] ; 3 uses
  %i.me = icmp eq i64 %indvars.iv162.i, %i.md
  %i.mf = icmp eq i64 %indvars.iv162.i, %i.mc
  %or.cond.i = select i1 %i.me, i1 true, i1 %i.mf
  br i1 %or.cond.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.mg = trunc nuw i64 %indvars.iv162.i to i32
  %i.mh = trunc i64 %indvars.iv162.i to i8
  %i.mi = zext i32 %.094132.i to i64
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.mi ; 3 uses
  store i8 %i.mh, ptr %i.mj, align 8, !tbaa !44
  %i.mk = mul i32 %3, %i.mg                       ; 2 uses
  %i.ml = add i32 %i.mk, %i.la
  %i.mm = zext i32 %i.ml to i64
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.mm
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !9
  %i.mp = add i32 %i.mk, %i.mb
  %i.mq = zext i32 %i.mp to i64
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.mq
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !9
  %i.mt = add i32 %i.ms, %i.mo                    ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mj, i64 4
  store i32 %i.mt, ptr %i.mu, align 4, !tbaa !45
  %i.mv = getelementptr inbounds nuw i8, ptr %.087133.i, i64 4
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !45
  %i.mx = icmp ugt i32 %i.mt, %i.mw
  %spec.select.i23 = select i1 %i.mx, ptr %i.mj, ptr %.087133.i
  %i.my = add i32 %.094132.i, 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.195.i = phi i32 [ %.094132.i, %bb.af ], [ %i.my, %bb.ag ]
  %.2.i = phi ptr [ %.087133.i, %bb.af ], [ %spec.select.i23, %bb.ag ] ; 2 uses
  %indvars.iv.next163.i = add nuw nsw i64 %indvars.iv162.i, 1 ; 2 uses
  %exitcond.not.i24 = icmp eq i64 %indvars.iv.next163.i, %i.fb
  br i1 %exitcond.not.i24, label %.preheader.preheader.i25, label %bb.af, !llvm.loop !35

.preheader.preheader.i25:                         ; preds = %bb.ah
  %i.mz = add i32 %3, -3
  %i.na = zext i32 %i.mz to i64                   ; 2 uses
  %i.nb = zext i32 %i.lz to i64
  %i.nc = add nsw i64 %i.na, -1
  br label %.preheader.i26

.loopexit117.i.unr-lcssa:                         ; preds = %bb.ak
  %lcmp.mod114.not = icmp eq i64 %xtraiter113, 0
  br i1 %lcmp.mod114.not, label %.loopexit117.i, label %.epil.preheader112

.epil.preheader112:                               ; preds = %.loopexit117.i.unr-lcssa, %.lr.ph141.i
  %indvars.iv165.i.epil.init = phi i64 [ 0, %.lr.ph141.i ], [ %indvars.iv.next166.i.1, %.loopexit117.i.unr-lcssa ]
  %.4139.i.epil.init = phi ptr [ %5, %.lr.ph141.i ], [ %spec.select111.i.1, %.loopexit117.i.unr-lcssa ] ; 2 uses
  %lcmp.mod116 = trunc i64 %indvars.iv172.i to i1
  call void @llvm.assume(i1 %lcmp.mod116)
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv165.i.epil.init ; 3 uses
  %i.ne = load i8, ptr %i.nd, align 8, !tbaa !44
  %i.nf = zext i8 %i.ne to i32
  %i.ng = add i32 %i.ox, %i.nf
  %i.nh = zext i32 %i.ng to i64
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.nh
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !9
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nd, i64 4 ; 2 uses
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !45
  %i.nm = add i32 %i.nl, %i.nj                    ; 2 uses
  store i32 %i.nm, ptr %i.nk, align 4, !tbaa !45
  %i.nn = getelementptr inbounds nuw i8, ptr %.4139.i.epil.init, i64 4
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !45
  %i.np = icmp ugt i32 %i.nm, %i.no
  %spec.select111.i.epil = select i1 %i.np, ptr %i.nd, ptr %.4139.i.epil.init
  br label %.loopexit117.i

.loopexit117.i:                                   ; preds = %.loopexit117.i.unr-lcssa, %.epil.preheader112
  %spec.select111.i.lcssa = phi ptr [ %spec.select111.i.1, %.loopexit117.i.unr-lcssa ], [ %spec.select111.i.epil, %.epil.preheader112 ]
  %indvars.iv.next173.i = add nsw i64 %indvars.iv172.i, -1
  %indvar.next = add i64 %indvar, 1
  br label %.preheader.i26

.preheader.i26:                                   ; preds = %.loopexit117.i, %.preheader.preheader.i25
  %indvar = phi i64 [ %indvar.next, %.loopexit117.i ], [ 0, %.preheader.preheader.i25 ] ; 2 uses
  %indvars.iv174.i = phi i64 [ %i.ot, %.loopexit117.i ], [ %i.nb, %.preheader.preheader.i25 ] ; 2 uses
  %indvars.iv172.i = phi i64 [ %indvars.iv.next173.i, %.loopexit117.i ], [ %i.na, %.preheader.preheader.i25 ] ; 4 uses
  %.3146.i = phi ptr [ %spec.select111.i.lcssa, %.loopexit117.i ], [ %.2.i, %.preheader.preheader.i25 ] ; 2 uses
  %.089144.i = phi i32 [ %.190.i, %.loopexit117.i ], [ 1, %.preheader.preheader.i25 ] ; 2 uses
  %.091143.i = phi i32 [ %.192.i, %.loopexit117.i ], [ 0, %.preheader.preheader.i25 ] ; 6 uses
  %i.nq = load i8, ptr %.3146.i, align 4, !tbaa !44 ; 3 uses
  %i.nr = add i32 %.089144.i, 1                   ; 6 uses
  %i.ns = urem i32 %.091143.i, %3                 ; 2 uses
  %.not108134.i = icmp eq i32 %i.ns, %i.nr
  br i1 %.not108134.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i26
  %i.nt = trunc nuw i64 %indvars.iv174.i to i32
  %i.nu = xor i32 %i.nt, -1
  %i.nv = add i32 %3, %i.nu
  %i.nw = zext i8 %i.nq to i32
  %i.nx = mul i32 %3, %i.nw
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.lr.ph.i
  %i.ny = phi i32 [ %i.ns, %.lr.ph.i ], [ %i.on, %bb.ai ]
  %.086136.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ok, %bb.ai ]
  %.296135.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ol, %bb.ai ] ; 2 uses
  %i.nz = zext i32 %i.ny to i64
  %i.oa = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.nz
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !19
  %i.oc = shl i32 %.296135.i, 1
  %i.od = sub i32 %i.nv, %i.oc
  %i.oe = zext i8 %i.ob to i32
  %i.of = add i32 %i.nx, %i.oe
  %i.og = zext i32 %i.of to i64
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.og
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !9
  %i.oj = mul nsw i32 %i.oi, %i.od
  %i.ok = add nsw i32 %i.oj, %.086136.i           ; 2 uses
  %i.ol = add i32 %.296135.i, 1                   ; 2 uses
  %i.om = add i32 %i.ol, %.091143.i
  %i.on = urem i32 %i.om, %3                      ; 2 uses
  %.not108.i = icmp eq i32 %i.on, %i.nr
  br i1 %.not108.i, label %._crit_edge.i, label %bb.ai, !llvm.loop !36

._crit_edge.i:                                    ; preds = %bb.ai
  %i.oo = icmp sgt i32 %i.ok, 0
  br i1 %i.oo, label %bb.aj, label %._crit_edge.thread.i

bb.aj:                                            ; preds = %._crit_edge.i
  %i.op = icmp eq i32 %.091143.i, 0
  %.v.i = select i1 %i.op, i32 %3, i32 %.091143.i
  %i.oq = add i32 %.v.i, -1                       ; 2 uses
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.aj, %._crit_edge.i, %.preheader.i26
  %.sink.i = phi i32 [ %i.oq, %bb.aj ], [ %i.nr, %.preheader.i26 ], [ %i.nr, %._crit_edge.i ]
  %.192.i = phi i32 [ %i.oq, %bb.aj ], [ %.091143.i, %.preheader.i26 ], [ %.091143.i, %._crit_edge.i ] ; 2 uses
  %.190.i = phi i32 [ %.089144.i, %bb.aj ], [ %i.nr, %.preheader.i26 ], [ %i.nr, %._crit_edge.i ]
  %i.or = zext i32 %.sink.i to i64
  %i.os = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.or
  store i8 %i.nq, ptr %i.os, align 1, !tbaa !19
  %i.ot = add nsw i64 %indvars.iv174.i, -1        ; 3 uses
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ot
  %i.ov = load i64, ptr %i.ou, align 8
  store i64 %i.ov, ptr %.3146.i, align 4
  %.not.wide.i = icmp eq i64 %i.ot, 0
  br i1 %.not.wide.i, label %.lr.ph149.preheader.i, label %.lr.ph141.i

.lr.ph141.i:                                      ; preds = %._crit_edge.thread.i
  %i.ow = zext i8 %i.nq to i32
  %i.ox = mul i32 %3, %i.ow                       ; 3 uses
  %xtraiter113 = and i64 %indvars.iv172.i, 1
  %i.oy = icmp eq i64 %indvar, %i.nc
  br i1 %i.oy, label %.epil.preheader112, label %.lr.ph141.i.new

.lr.ph141.i.new:                                  ; preds = %.lr.ph141.i
  %unroll_iter117 = and i64 %indvars.iv172.i, -2
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.lr.ph141.i.new
  %indvars.iv165.i = phi i64 [ 0, %.lr.ph141.i.new ], [ %indvars.iv.next166.i.1, %bb.ak ] ; 3 uses
  %.4139.i = phi ptr [ %5, %.lr.ph141.i.new ], [ %spec.select111.i.1, %bb.ak ] ; 3 uses
  %niter118 = phi i64 [ 0, %.lr.ph141.i.new ], [ %niter118.next.1, %bb.ak ]
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv165.i ; 4 uses
  %i.pa = load i8, ptr %i.oz, align 16, !tbaa !44
  %i.pb = zext i8 %i.pa to i32
  %i.pc = add i32 %i.ox, %i.pb
  %i.pd = zext i32 %i.pc to i64
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.pd
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !9
  %i.pg = getelementptr inbounds nuw i8, ptr %i.oz, i64 4 ; 2 uses
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !45
  %i.pi = add i32 %i.ph, %i.pf                    ; 2 uses
  store i32 %i.pi, ptr %i.pg, align 4, !tbaa !45
  %i.pj = getelementptr inbounds nuw i8, ptr %.4139.i, i64 4
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !45
  %i.pl = icmp ugt i32 %i.pi, %i.pk               ; 2 uses
  %spec.select111.i = select i1 %i.pl, ptr %i.oz, ptr %.4139.i
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv165.i ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 8 ; 2 uses
  %i.po = load i8, ptr %i.pn, align 8, !tbaa !44
  %i.pp = zext i8 %i.po to i32
  %i.pq = add i32 %i.ox, %i.pp
  %i.pr = zext i32 %i.pq to i64
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.pr
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !9
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pm, i64 12 ; 2 uses
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !45
  %i.pw = add i32 %i.pv, %i.pt                    ; 2 uses
  store i32 %i.pw, ptr %i.pu, align 4, !tbaa !45
  %spec.select111.i.sroa.sel.v = select i1 %i.pl, ptr %i.oz, ptr %.4139.i
  %spec.select111.i.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.select111.i.sroa.sel.v, i64 4
  %i.px = load i32, ptr %spec.select111.i.sroa.sel, align 4, !tbaa !45
  %i.py = icmp ugt i32 %i.pw, %i.px
  %spec.select111.i.1 = select i1 %i.py, ptr %i.pn, ptr %spec.select111.i ; 3 uses
  %indvars.iv.next166.i.1 = add nuw nsw i64 %indvars.iv165.i, 2 ; 2 uses
  %niter118.next.1 = add i64 %niter118, 2         ; 2 uses
  %niter118.ncmp.1 = icmp eq i64 %niter118.next.1, %unroll_iter117
  br i1 %niter118.ncmp.1, label %.loopexit117.i.unr-lcssa, label %bb.ak, !llvm.loop !37

.lr.ph149.preheader.i:                            ; preds = %._crit_edge.thread.i, %CoOccurrenceFindMax.exit.i
  %.293.i = phi i32 [ 0, %CoOccurrenceFindMax.exit.i ], [ %.192.i, %._crit_edge.thread.i ] ; 3 uses
  call void @WebPSafeFree(ptr noundef nonnull %i.ep) #10
  %xtraiter119 = and i64 %i.fb, 1
  %7 = icmp eq i64 %i.jd, 0
  br i1 %7, label %.lr.ph149.i.epil.preheader, label %.lr.ph149.preheader.i.new

.lr.ph149.preheader.i.new:                        ; preds = %.lr.ph149.preheader.i
  %unroll_iter122 = and i64 %i.fb, 4294967294
  br label %.lr.ph149.i

.lr.ph149.i:                                      ; preds = %.lr.ph149.i, %.lr.ph149.preheader.i.new
  %indvars.iv179.i = phi i64 [ 0, %.lr.ph149.preheader.i.new ], [ %indvars.iv.next180.i.1, %.lr.ph149.i ] ; 4 uses
  %niter123 = phi i64 [ 0, %.lr.ph149.preheader.i.new ], [ %niter123.next.1, %.lr.ph149.i ]
  %i.pz = trunc nuw i64 %indvars.iv179.i to i32
  %i.qa = add i32 %.293.i, %i.pz
  %i.qb = urem i32 %i.qa, %3
  %i.qc = zext i32 %i.qb to i64
  %i.qd = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.qc
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !19
  %i.qf = zext i8 %i.qe to i64
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.qf
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !9
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv179.i
  store i32 %i.qh, ptr %i.qi, align 4, !tbaa !9
  %indvars.iv.next180.i = or disjoint i64 %indvars.iv179.i, 1 ; 2 uses
  %i.qj = trunc nuw i64 %indvars.iv.next180.i to i32
  %i.qk = add i32 %.293.i, %i.qj
  %i.ql = urem i32 %i.qk, %3
  %i.qm = zext i32 %i.ql to i64
  %i.qn = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.qm
  %i.qo = load i8, ptr %i.qn, align 1, !tbaa !19
  %i.qp = zext i8 %i.qo to i64
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.qp
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !9
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next180.i
  store i32 %i.qr, ptr %i.qs, align 4, !tbaa !9
  %indvars.iv.next180.i.1 = add nuw nsw i64 %indvars.iv179.i, 2 ; 2 uses
  %niter123.next.1 = add i64 %niter123, 2         ; 2 uses
  %niter123.ncmp.1 = icmp eq i64 %niter123.next.1, %unroll_iter122
  br i1 %niter123.ncmp.1, label %PaletteSortModifiedZeng.exit.loopexit.unr-lcssa, label %.lr.ph149.i, !llvm.loop !38

PaletteSortModifiedZeng.exit.loopexit.unr-lcssa:  ; preds = %.lr.ph149.i
  %lcmp.mod120.not = icmp eq i64 %xtraiter119, 0
  br i1 %lcmp.mod120.not, label %PaletteSortModifiedZeng.exit, label %.lr.ph149.i.epil.preheader

.lr.ph149.i.epil.preheader:                       ; preds = %PaletteSortModifiedZeng.exit.loopexit.unr-lcssa, %.lr.ph149.preheader.i
  %indvars.iv179.i.epil.init = phi i64 [ 0, %.lr.ph149.preheader.i ], [ %indvars.iv.next180.i.1, %PaletteSortModifiedZeng.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod121 = trunc i32 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod121)
  %i.qt = trunc nuw i64 %indvars.iv179.i.epil.init to i32
  %i.qu = add i32 %.293.i, %i.qt
  %i.qv = urem i32 %i.qu, %3
  %i.qw = zext i32 %i.qv to i64
  %i.qx = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.qw
  %i.qy = load i8, ptr %i.qx, align 1, !tbaa !19
  %i.qz = zext i8 %i.qy to i64
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.qz
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !9
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv179.i.epil.init
  store i32 %i.rb, ptr %i.rc, align 4, !tbaa !9
  br label %PaletteSortModifiedZeng.exit

PaletteSortModifiedZeng.exit:                     ; preds = %.lr.ph149.i.epil.preheader, %PaletteSortModifiedZeng.exit.loopexit.unr-lcssa, %bb.l, %bb.m, %bb.ab
  %.0.i = phi i32 [ 0, %bb.ab ], [ 1, %bb.l ], [ 0, %bb.m ], [ 1, %PaletteSortModifiedZeng.exit.loopexit.unr-lcssa ], [ 1, %.lr.ph149.i.epil.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %PaletteSortMinimizeDeltas.exit

PaletteSortMinimizeDeltas.exit:                   ; preds = %bb.k, %bb.i, %PaletteHasNonMonotonousDeltas.exit.i, %bb.a, %bb.c, %bb.d, %PaletteSortModifiedZeng.exit
  %.0 = phi i32 [ 1, %bb.c ], [ %.0.i, %PaletteSortModifiedZeng.exit ], [ 0, %bb.a ], [ 1, %bb.d ], [ 1, %PaletteHasNonMonotonousDeltas.exit.i ], [ 1, %bb.i ], [ 1, %bb.k ]
  ret i32 %.0
}

declare ptr @WebPSafeCalloc(i64 noundef, i64 noundef) local_unnamed_addr #7

declare void @WebPSafeFree(ptr noundef) local_unnamed_addr #7

declare ptr @WebPSafeMalloc(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.or.v4i8(<4 x i8>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !10}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!6, !6, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"p1 int", !11, i64 0}
!14 = !{!"p1 _ZTS12WebPAuxStats", !11, i64 0}
!15 = !{!"WebPPicture", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !12, i64 16, !12, i64 24, !12, i64 32, !6, i64 40, !6, i64 44, !12, i64 48, !6, i64 56, !5, i64 60, !13, i64 72, !6, i64 80, !5, i64 84, !11, i64 96, !11, i64 104, !6, i64 112, !12, i64 120, !14, i64 128, !6, i64 136, !11, i64 144, !11, i64 152, !5, i64 160, !12, i64 176, !12, i64 184, !5, i64 192, !11, i64 224, !11, i64 232, !5, i64 240}
!16 = !{!15, !6, i64 8}
!17 = !{!15, !6, i64 12}
!18 = !{!15, !13, i64 72}
!19 = !{!5, !5, i64 0}
!20 = !{!15, !6, i64 80}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10, !39, !40}
!25 = distinct !{!25, !10, !40, !39}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10, !41}
!30 = distinct !{!30, !10, !39, !40}
!31 = distinct !{!31, !42}
!32 = distinct !{!32, !10, !39}
!33 = distinct !{!33, !10}
!34 = distinct !{!34, !10}
!35 = distinct !{!35, !10}
!36 = distinct !{!36, !10}
!37 = distinct !{!37, !10}
!38 = distinct !{!38, !10}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = !{!"llvm.loop.unswitch.partial.disable"}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = !{!"Sum", !5, i64 0, !6, i64 4}
!44 = !{!43, !5, i64 0}
!45 = !{!43, !6, i64 4}
end_hunk_0
