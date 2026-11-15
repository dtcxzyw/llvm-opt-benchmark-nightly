Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dca_lbr?download=true
inline.NumInlined: 114
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 45
begin_hunk_0_@parse_scale_factors:bb.a
  br label %bb.q

bb.p:                                             ; preds = %parse_vlc.exit114
  %i.gm = lshr exact i32 %.0.i113, 1
  %i.gn = sub nsw i32 %.080145, %i.gm
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1 = phi i32 [ %i.gl, %bb.o ], [ %i.gn, %bb.p ] ; 9 uses
  switch i32 %i.ds, label %.preheader [
    i32 2, label %bb.r
    i32 4, label %bb.u
  ]

.preheader:                                       ; preds = %bb.q
  %.not89141 = icmp eq i32 %.0.i101, 0
  br i1 %.not89141, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.preheader
  %i.go = sub nsw i32 %.1, %.080145               ; 3 uses
  %wide.trip.count = zext nneg i32 %i.ds to i64
  %invariant.gep = getelementptr i8, ptr %1, i64 %i.bu ; 3 uses
  %i.gp = zext nneg i32 %.0.i101 to i64           ; 5 uses
  %min.iters.check = icmp ult i32 %.0.i101, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check213 = icmp ult i32 %.0.i101, 16
  br i1 %min.iters.check213, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gq = and i64 %i.gp, 12
  %n.vec = and i64 %i.gp, 2147483632              ; 4 uses
  %i.gr = or disjoint i64 %n.vec, 1               ; 2 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.go, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert214 = insertelement <16 x i32> poison, i32 %i.ds, i64 0
  %broadcast.splat215 = shufflevector <16 x i32> %broadcast.splatinsert214, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert216 = insertelement <16 x i32> poison, i32 %.080145, i64 0
  %broadcast.splat217 = shufflevector <16 x i32> %broadcast.splatinsert216, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.gs = mul nsw <16 x i32> %broadcast.splat, %vec.ind
  %i.gt = sdiv <16 x i32> %i.gs, %broadcast.splat215
  %i.gu = add nsw <16 x i32> %i.gt, %broadcast.splat217
  %i.gv = trunc <16 x i32> %i.gu to <16 x i8>
  %i.gw = getelementptr i8, ptr %invariant.gep, i64 %index
  %i.gx = getelementptr i8, ptr %i.gw, i64 1
  store <16 x i8> %i.gv, ptr %i.gx, align 1, !tbaa !14
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <16 x i32> %vec.ind, splat (i32 16)
  %i.gy = icmp eq i64 %index.next, %n.vec
  br i1 %i.gy, label %middle.block, label %vector.body, !llvm.loop !178

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.gp
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.gq, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !182

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.gr, %vec.epilog.iter.check ], [ 1, %vector.main.loop.iter.check ]
  %n.vec218 = and i64 %i.gp, 2147483644           ; 3 uses
  %i.gz = or disjoint i64 %n.vec218, 1
  %broadcast.splatinsert219 = insertelement <4 x i32> poison, i32 %i.go, i64 0
  %broadcast.splat220 = shufflevector <4 x i32> %broadcast.splatinsert219, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert221 = insertelement <4 x i32> poison, i32 %i.ds, i64 0
  %broadcast.splat222 = shufflevector <4 x i32> %broadcast.splatinsert221, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert223 = insertelement <4 x i32> poison, i32 %.080145, i64 0
  %broadcast.splat224 = shufflevector <4 x i32> %broadcast.splatinsert223, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ha = trunc nsw i64 %bc.resume.val to i32
  %broadcast.splatinsert225 = insertelement <4 x i32> poison, i32 %i.ha, i64 0
  %broadcast.splat226 = shufflevector <4 x i32> %broadcast.splatinsert225, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat226, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index227 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next229, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind228 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next230, %vec.epilog.vector.body ] ; 2 uses
  %i.hb = mul nsw <4 x i32> %broadcast.splat220, %vec.ind228
  %i.hc = sdiv <4 x i32> %i.hb, %broadcast.splat222
  %i.hd = add nsw <4 x i32> %i.hc, %broadcast.splat224
  %i.he = trunc <4 x i32> %i.hd to <4 x i8>
  %i.hf = getelementptr i8, ptr %invariant.gep, i64 %index227
  %i.hg = getelementptr i8, ptr %i.hf, i64 1
  store <4 x i8> %i.he, ptr %i.hg, align 1, !tbaa !14
  %index.next229 = add nuw i64 %index227, 4       ; 2 uses
  %vec.ind.next230 = add <4 x i32> %vec.ind228, splat (i32 4)
  %i.hh = icmp eq i64 %index.next229, %n.vec218
  br i1 %i.hh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !179

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n231 = icmp eq i64 %n.vec218, %i.gp
  br i1 %cmp.n231, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 1, %iter.check ], [ %i.gr, %vec.epilog.iter.check ], [ %i.gz, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

bb.r:                                             ; preds = %bb.q
  %i.hi = icmp sgt i32 %.1, %.080145
  %i.hj = getelementptr i8, ptr %i.bv, i64 1      ; 2 uses
  br i1 %i.hi, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.hk = sub nsw i32 %.1, %.080145
  %i.hl = lshr i32 %i.hk, 1
  %i.hm = add nsw i32 %i.hl, %.080145
  %i.hn = trunc i32 %i.hm to i8
  store i8 %i.hn, ptr %i.hj, align 1, !tbaa !14
  br label %.loopexit

bb.t:                                             ; preds = %bb.r
  %i.ho = sub nsw i32 %.080145, %.1
  %i.hp = lshr i32 %i.ho, 1
  %i.hq = sub nsw i32 %.080145, %i.hp
  %i.hr = trunc i32 %i.hq to i8
  store i8 %i.hr, ptr %i.hj, align 1, !tbaa !14
  br label %.loopexit

bb.u:                                             ; preds = %bb.q
  %i.hs = icmp sgt i32 %.1, %.080145
  %i.ht = getelementptr i8, ptr %i.bv, i64 1      ; 2 uses
  %i.hu = getelementptr i8, ptr %i.bv, i64 2      ; 2 uses
  %i.hv = getelementptr i8, ptr %i.bv, i64 3      ; 2 uses
  br i1 %i.hs, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.hw = sub nsw i32 %.1, %.080145               ; 3 uses
  %i.hx = lshr i32 %i.hw, 2
  %i.hy = add nsw i32 %i.hx, %.080145
  %i.hz = trunc i32 %i.hy to i8
  store i8 %i.hz, ptr %i.ht, align 1, !tbaa !14
  %i.ia = lshr i32 %i.hw, 1
  %i.ib = add nsw i32 %i.ia, %.080145
  %i.ic = trunc i32 %i.ib to i8
  store i8 %i.ic, ptr %i.hu, align 1, !tbaa !14
  %i.id = mul nuw nsw i32 %i.hw, 3
  %i.ie = lshr i32 %i.id, 2
  %i.if = add nsw i32 %i.ie, %.080145
  %i.ig = trunc i32 %i.if to i8
  store i8 %i.ig, ptr %i.hv, align 1, !tbaa !14
  br label %.loopexit

bb.w:                                             ; preds = %bb.u
  %i.ih = sub nsw i32 %.080145, %.1               ; 3 uses
  %i.ii = lshr i32 %i.ih, 2
  %i.ij = sub nsw i32 %.080145, %i.ii
  %i.ik = trunc i32 %i.ij to i8
  store i8 %i.ik, ptr %i.ht, align 1, !tbaa !14
  %i.il = lshr i32 %i.ih, 1
  %i.im = sub nsw i32 %.080145, %i.il
  %i.in = trunc i32 %i.im to i8
  store i8 %i.in, ptr %i.hu, align 1, !tbaa !14
  %i.io = mul nuw nsw i32 %i.ih, 3
  %i.ip = lshr i32 %i.io, 2
  %i.iq = sub nsw i32 %.080145, %i.ip
  %i.ir = trunc i32 %i.iq to i8
  store i8 %i.ir, ptr %i.hv, align 1, !tbaa !14
  br label %.loopexit

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.is = trunc nuw nsw i64 %indvars.iv to i32
  %i.it = mul nsw i32 %i.go, %i.is
  %i.iu = sdiv i32 %i.it, %i.ds
  %i.iv = add nsw i32 %i.iu, %.080145
  %i.iw = trunc i32 %i.iv to i8
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  store i8 %i.iw, ptr %gep, align 1, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !180

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader, %bb.v, %bb.w, %bb.s, %bb.t
  %i.ix = add nsw i32 %i.ds, %.081143             ; 3 uses
  %i.iy = icmp slt i32 %i.ix, 7
  br i1 %i.iy, label %parse_vlc.exit, label %bb.x, !llvm.loop !181

bb.x:                                             ; preds = %.loopexit
  %i.iz = trunc i32 %.1 to i8
  %i.ja = zext nneg i32 %i.ix to i64
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 %i.ja
  store i8 %i.iz, ptr %i.jb, align 1, !tbaa !14
  br label %ensure_bits.exit.thread

ensure_bits.exit.thread:                          ; preds = %bb.j, %parse_vlc.exit, %bb.l, %bb.g, %bb.c, %bb.a, %bb.x, %bb.i
  %.083 = phi i32 [ 0, %bb.x ], [ 0, %bb.g ], [ -1094995529, %bb.i ], [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.l ], [ 0, %parse_vlc.exit ], [ 0, %bb.j ]
  ret i32 %.083
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @parse_lpc(ptr nofree noundef captures(none) %0, i32 noundef range(i32 -2147483648, 2147483645) %1, i32 noundef %2, i32 noundef range(i32 0, 3) %3, i32 noundef range(i32 2, 4) %4) unnamed_addr #9 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 20 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load i32, ptr %i.b, align 16, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.d = icmp samesign ult i32 %3, %4
  br i1 %i.d, label %.lr.ph46, label %.loopexit

.lr.ph46:                                         ; preds = %bb.a
  %i.e = and i32 %i.c, 1
  %.not43 = icmp sgt i32 %1, %2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5496
  %i.j = zext nneg i32 %i.e to i64
  %i.k = getelementptr inbounds nuw [1152 x i8], ptr %i.i, i64 %i.j
  br i1 %.not43, label %.loopexit, label %.lr.ph46.split

.lr.ph46.split:                                   ; preds = %.lr.ph46
  %i.l = getelementptr i8, ptr %0, i64 20
  %.val7.i = load i32, ptr %i.l, align 4, !tbaa !62 ; 2 uses
  %i.m = sext i32 %1 to i64
  %i.n = add i32 %2, 1
  %i.o = zext nneg i32 %3 to i64
  %wide.trip.count65 = zext nneg i32 %4 to i64
  %.val.i.pre.pre = load i32, ptr %i.g, align 16, !tbaa !64
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %7 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %8 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %9 = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %10 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %11 = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %12 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %13 = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %14 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %15 = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %16 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %17 = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %18 = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %19 = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph46.split, %..critedge_crit_edge
  %.val.i.pre = phi i32 [ %.val.i.pre.pre, %.lr.ph46.split ], [ %i.av, %..critedge_crit_edge ]
  %indvars.iv62 = phi i64 [ %i.o, %.lr.ph46.split ], [ %indvars.iv.next63, %..critedge_crit_edge ] ; 3 uses
  %20 = icmp samesign ugt i64 %indvars.iv62, 1    ; 2 uses
  %i.p = select i1 %20, i32 1, i32 2              ; 2 uses
  %i.q = shl nuw nsw i32 %i.p, 3
  %i.r = shl nuw nsw i32 %i.p, 5
  %invariant.gep = getelementptr [64 x i8], ptr %i.k, i64 %indvars.iv62
  %wide.trip.count56 = zext nneg i32 %i.q to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.promoted = phi i32 [ %.val.i.pre, %.lr.ph ], [ %i.av, %bb.f ] ; 5 uses
  %indvars.iv58 = phi i64 [ %i.m, %.lr.ph ], [ %indvars.iv.next59, %bb.f ] ; 2 uses
  %i.s = sub nsw i32 %.val7.i, %.promoted         ; 3 uses
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = icmp samesign ult i32 %i.s, %i.r
  br i1 %i.u, label %bb.d, label %ensure_bits.exit.preheader

ensure_bits.exit.preheader:                       ; preds = %bb.c
  %i.v = load i32, ptr %i.h, align 8, !tbaa !63   ; 2 uses
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !61   ; 2 uses
  br label %ensure_bits.exit

bb.d:                                             ; preds = %bb.c
  %i.x = sub nsw i32 0, %.promoted
  %i.y = load i32, ptr %i.h, align 8, !tbaa !63
  %i.z = sub nsw i32 %i.y, %.promoted
  %i.aa = icmp slt i32 %.val7.i, 0
  %..i.i.i = tail call i32 @llvm.smin.i32(i32 range(i32 0, 64) %i.s, i32 %i.z)
  %.0.i.i.i = select i1 %i.aa, i32 %i.x, i32 %..i.i.i
  %i.ab = add nsw i32 %.0.i.i.i, %.promoted
  store i32 %i.ab, ptr %i.g, align 16, !tbaa !64
  br label %.loopexit

.preheader:                                       ; preds = %ensure_bits.exit
  %gep = getelementptr [192 x i8], ptr %invariant.gep, i64 %indvars.iv58 ; 8 uses
  %21 = load i32, ptr %i.a, align 16, !tbaa !27
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x i8], ptr @lpc_tab, i64 %22
  %24 = load float, ptr %23, align 4, !tbaa !10   ; 2 uses
  %25 = load i32, ptr %5, align 4, !tbaa !27
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [4 x i8], ptr @lpc_tab, i64 %26
  %28 = load float, ptr %27, align 4, !tbaa !10   ; 3 uses
  %29 = load i32, ptr %6, align 8, !tbaa !27
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [4 x i8], ptr @lpc_tab, i64 %30
  %32 = load i32, ptr %7, align 4, !tbaa !27
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [4 x i8], ptr @lpc_tab, i64 %33
  %35 = load i32, ptr %8, align 16, !tbaa !27
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [4 x i8], ptr @lpc_tab, i64 %36
  %38 = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %39 = load i32, ptr %9, align 4, !tbaa !27
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [4 x i8], ptr @lpc_tab, i64 %40
  %42 = load i32, ptr %10, align 8, !tbaa !27
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [4 x i8], ptr @lpc_tab, i64 %43
  %45 = load float, ptr %31, align 4, !tbaa !10   ; 4 uses
  %46 = load float, ptr %34, align 4, !tbaa !10   ; 5 uses
  %47 = load float, ptr %41, align 4, !tbaa !10   ; 3 uses
  %48 = load float, ptr %44, align 4, !tbaa !10   ; 4 uses
  %49 = insertelement <4 x float> poison, float %47, i64 0
  %50 = shufflevector <4 x float> %49, <4 x float> poison, <4 x i32> zeroinitializer
  %51 = load float, ptr %37, align 4, !tbaa !10   ; 6 uses
  %52 = tail call nsz float @llvm.fmuladd.f32(float %28, float %24, float %24) ; 2 uses
  %53 = tail call nsz float @llvm.fmuladd.f32(float %45, float %28, float %52) ; 2 uses
  %54 = tail call nsz float @llvm.fmuladd.f32(float %45, float %52, float %28) ; 2 uses
  %55 = tail call nsz float @llvm.fmuladd.f32(float %46, float %45, float %53) ; 2 uses
  %56 = tail call nsz float @llvm.fmuladd.f32(float %46, float %53, float %45) ; 2 uses
  %57 = tail call nsz float @llvm.fmuladd.f32(float %46, float %54, float %54) ; 2 uses
  %58 = tail call nsz float @llvm.fmuladd.f32(float %51, float %46, float %55) ; 2 uses
  %59 = tail call nsz float @llvm.fmuladd.f32(float %51, float %55, float %46)
  %60 = tail call nsz float @llvm.fmuladd.f32(float %51, float %56, float %57)
  %61 = tail call nsz float @llvm.fmuladd.f32(float %51, float %57, float %56)
  %62 = insertelement <2 x float> poison, float %47, i64 0
  %63 = shufflevector <2 x float> %62, <2 x float> poison, <2 x i32> zeroinitializer
  %64 = insertelement <2 x float> poison, float %51, i64 0
  %65 = insertelement <2 x float> %64, float %58, i64 1
  %66 = insertelement <2 x float> poison, float %58, i64 0
  %67 = insertelement <2 x float> %66, float %51, i64 1
  %68 = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %63, <2 x float> %65, <2 x float> %67)
  %69 = insertelement <4 x float> poison, float %59, i64 0
  %70 = insertelement <4 x float> %69, float %60, i64 1
  %71 = insertelement <4 x float> %70, float %61, i64 2 ; 2 uses
  %72 = insertelement <4 x float> %71, float %48, i64 3
  %73 = shufflevector <4 x float> %71, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 poison>
  %74 = shufflevector <2 x float> %68, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %75 = shufflevector <4 x float> %73, <4 x float> %74, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %76 = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %72, <4 x float> %50, <4 x float> %75) ; 4 uses
  %77 = insertelement <4 x float> poison, float %48, i64 0 ; 2 uses
  %78 = shufflevector <4 x float> %77, <4 x float> poison, <4 x i32> zeroinitializer
  %79 = shufflevector <4 x float> %76, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %80 = shufflevector <4 x float> %74, <4 x float> %79, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %81 = shufflevector <4 x float> %76, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %82 = insertelement <4 x float> %81, float %47, i64 0
  %83 = shufflevector <4 x float> %82, <4 x float> %74, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %84 = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %78, <4 x float> %80, <4 x float> %83) ; 4 uses
  %85 = getelementptr inbounds nuw i8, ptr %gep, i64 24
  %86 = load i32, ptr %11, align 4, !tbaa !27
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [4 x i8], ptr @lpc_tab, i64 %87
  %89 = load float, ptr %88, align 4, !tbaa !10   ; 3 uses
  %90 = insertelement <4 x float> %77, float %89, i64 1
  %91 = shufflevector <4 x float> %90, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %92 = shufflevector <4 x float> %76, <4 x float> %84, <4 x i32> <i32 2, i32 poison, i32 3, i32 4>
  %93 = insertelement <4 x float> %92, float %48, i64 1
  %94 = shufflevector <4 x float> %76, <4 x float> %84, <4 x i32> <i32 1, i32 3, i32 poison, i32 5>
  %95 = insertelement <4 x float> %94, float %48, i64 2
  %96 = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %91, <4 x float> %93, <4 x float> %95) ; 4 uses
  %97 = extractelement <4 x float> %96, i64 2
  store float %97, ptr %85, align 4, !tbaa !10
  %98 = insertelement <4 x float> poison, float %89, i64 0
  %99 = shufflevector <4 x float> %98, <4 x float> poison, <4 x i32> zeroinitializer
  %100 = shufflevector <4 x float> %96, <4 x float> %84, <4 x i32> <i32 0, i32 5, i32 7, i32 6>
  %101 = shufflevector <4 x float> %96, <4 x float> %84, <4 x i32> <i32 0, i32 4, i32 6, i32 7>
  %102 = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %99, <4 x float> %100, <4 x float> %101) ; 2 uses
  %103 = shufflevector <4 x float> %102, <4 x float> poison, <2 x i32> <i32 2, i32 1>
  store <2 x float> %103, ptr %38, align 4, !tbaa !10
  %104 = shufflevector <4 x float> %96, <4 x float> %102, <4 x i32> <i32 1, i32 3, i32 7, i32 4>
  store <4 x float> %104, ptr %gep, align 4, !tbaa !10
  %105 = getelementptr inbounds nuw i8, ptr %gep, i64 28
  store float %89, ptr %105, align 4, !tbaa !10
  br i1 %20, label %bb.f, label %bb.e

ensure_bits.exit:                                 ; preds = %ensure_bits.exit, %ensure_bits.exit.preheader
  %indvars.iv = phi i64 [ 0, %ensure_bits.exit.preheader ], [ %indvars.iv.next.1, %ensure_bits.exit ] ; 3 uses
  %i.ac = phi i32 [ %.promoted, %ensure_bits.exit.preheader ], [ %i.av, %ensure_bits.exit ] ; 3 uses
  %i.ad = lshr i32 %i.ac, 3
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 1, !tbaa !14
  %i.ah = and i32 %i.ac, 7
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = and i32 %i.ai, 15
  %i.ak = add i32 %i.ac, 4
  %i.al = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.ak) ; 4 uses
  store i32 %i.al, ptr %i.g, align 16, !tbaa !64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.aj, ptr %i.am, align 8, !tbaa !27
  %i.an = lshr i32 %i.al, 3
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 1, !tbaa !14
  %i.ar = and i32 %i.al, 7
  %i.as = lshr i32 %i.aq, %i.ar
  %i.at = and i32 %i.as, 15
  %i.au = add i32 %i.al, 4
  %i.av = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.au) ; 4 uses
  store i32 %i.av, ptr %i.g, align 16, !tbaa !64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store i32 %i.at, ptr %i.ax, align 4, !tbaa !27
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count56
  br i1 %exitcond.not.1, label %.preheader, label %ensure_bits.exit, !llvm.loop !183

bb.e:                                             ; preds = %.preheader
  %i.ay = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.az = load i32, ptr %12, align 16, !tbaa !27
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr @lpc_tab, i64 %i.ba
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !10 ; 2 uses
  %i.bd = load i32, ptr %13, align 4, !tbaa !27
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr @lpc_tab, i64 %i.be
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !10 ; 3 uses
  %i.bh = load i32, ptr %14, align 8, !tbaa !27
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr @lpc_tab, i64 %i.bi
  %i.bk = load i32, ptr %15, align 4, !tbaa !27
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr @lpc_tab, i64 %i.bl
  %i.bn = load i32, ptr %16, align 16, !tbaa !27
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr @lpc_tab, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %gep, i64 48
  %i.br = load i32, ptr %17, align 4, !tbaa !27
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr @lpc_tab, i64 %i.bs
  %i.bu = load i32, ptr %18, align 8, !tbaa !27
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr @lpc_tab, i64 %i.bv
  %i.bx = load float, ptr %i.bj, align 4, !tbaa !10 ; 4 uses
  %i.by = load float, ptr %i.bm, align 4, !tbaa !10 ; 5 uses
  %i.bz = load float, ptr %i.bt, align 4, !tbaa !10 ; 3 uses
  %i.ca = load float, ptr %i.bw, align 4, !tbaa !10 ; 4 uses
  %i.cb = insertelement <4 x float> poison, float %i.bz, i64 0
  %i.cc = shufflevector <4 x float> %i.cb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cd = load float, ptr %i.bp, align 4, !tbaa !10 ; 6 uses
  %i.ce = tail call nsz float @llvm.fmuladd.f32(float %i.bg, float %i.bc, float %i.bc) ; 2 uses
  %i.cf = tail call nsz float @llvm.fmuladd.f32(float %i.bx, float %i.bg, float %i.ce) ; 2 uses
  %i.cg = tail call nsz float @llvm.fmuladd.f32(float %i.bx, float %i.ce, float %i.bg) ; 2 uses
  %i.ch = tail call nsz float @llvm.fmuladd.f32(float %i.by, float %i.bx, float %i.cf) ; 2 uses
  %i.ci = tail call nsz float @llvm.fmuladd.f32(float %i.by, float %i.cf, float %i.bx) ; 2 uses
  %i.cj = tail call nsz float @llvm.fmuladd.f32(float %i.by, float %i.cg, float %i.cg) ; 2 uses
  %i.ck = tail call nsz float @llvm.fmuladd.f32(float %i.cd, float %i.by, float %i.ch) ; 2 uses
  %i.cl = tail call nsz float @llvm.fmuladd.f32(float %i.cd, float %i.ch, float %i.by)
  %i.cm = tail call nsz float @llvm.fmuladd.f32(float %i.cd, float %i.ci, float %i.cj)
  %i.cn = tail call nsz float @llvm.fmuladd.f32(float %i.cd, float %i.cj, float %i.ci)
  %i.co = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cq = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.cr = insertelement <2 x float> %i.cq, float %i.ck, i64 1
  %i.cs = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.ct = insertelement <2 x float> %i.cs, float %i.cd, i64 1
  %i.cu = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cp, <2 x float> %i.cr, <2 x float> %i.ct)
  %i.cv = insertelement <4 x float> poison, float %i.cl, i64 0
  %i.cw = insertelement <4 x float> %i.cv, float %i.cm, i64 1
  %i.cx = insertelement <4 x float> %i.cw, float %i.cn, i64 2 ; 2 uses
  %i.cy = insertelement <4 x float> %i.cx, float %i.ca, i64 3
  %i.cz = shufflevector <4 x float> %i.cx, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 poison>
  %i.da = shufflevector <2 x float> %i.cu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.db = shufflevector <4 x float> %i.cz, <4 x float> %i.da, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.dc = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cy, <4 x float> %i.cc, <4 x float> %i.db) ; 4 uses
  %i.dd = insertelement <4 x float> poison, float %i.ca, i64 0 ; 2 uses
  %i.de = shufflevector <4 x float> %i.dd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.df = shufflevector <4 x float> %i.dc, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.dg = shufflevector <4 x float> %i.da, <4 x float> %i.df, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dh = shufflevector <4 x float> %i.dc, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %i.di = insertelement <4 x float> %i.dh, float %i.bz, i64 0
  %i.dj = shufflevector <4 x float> %i.di, <4 x float> %i.da, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.dk = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.de, <4 x float> %i.dg, <4 x float> %i.dj) ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %gep, i64 56
  %i.dm = load i32, ptr %19, align 4, !tbaa !27
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [4 x i8], ptr @lpc_tab, i64 %i.dn
  %i.dp = load float, ptr %i.do, align 4, !tbaa !10 ; 3 uses
  %i.dq = insertelement <4 x float> %i.dd, float %i.dp, i64 1
  %i.dr = shufflevector <4 x float> %i.dq, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ds = shufflevector <4 x float> %i.dc, <4 x float> %i.dk, <4 x i32> <i32 2, i32 poison, i32 3, i32 4>
  %i.dt = insertelement <4 x float> %i.ds, float %i.ca, i64 1
  %i.du = shufflevector <4 x float> %i.dc, <4 x float> %i.dk, <4 x i32> <i32 1, i32 3, i32 poison, i32 5>
  %i.dv = insertelement <4 x float> %i.du, float %i.ca, i64 2
  %i.dw = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dr, <4 x float> %i.dt, <4 x float> %i.dv) ; 4 uses
  %i.dx = extractelement <4 x float> %i.dw, i64 2
  store float %i.dx, ptr %i.dl, align 4, !tbaa !10
  %i.dy = insertelement <4 x float> poison, float %i.dp, i64 0
  %i.dz = shufflevector <4 x float> %i.dy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ea = shufflevector <4 x float> %i.dw, <4 x float> %i.dk, <4 x i32> <i32 0, i32 5, i32 7, i32 6>
  %i.eb = shufflevector <4 x float> %i.dw, <4 x float> %i.dk, <4 x i32> <i32 0, i32 4, i32 6, i32 7>
  %i.ec = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dz, <4 x float> %i.ea, <4 x float> %i.eb) ; 2 uses
  %i.ed = shufflevector <4 x float> %i.ec, <4 x float> poison, <2 x i32> <i32 2, i32 1>
  store <2 x float> %i.ed, ptr %i.bq, align 4, !tbaa !10
  %i.ee = shufflevector <4 x float> %i.dw, <4 x float> %i.ec, <4 x i32> <i32 1, i32 3, i32 7, i32 4>
  store <4 x float> %i.ee, ptr %i.ay, align 4, !tbaa !10
  %i.ef = getelementptr inbounds nuw i8, ptr %gep, i64 60
  store float %i.dp, ptr %i.ef, align 4, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.preheader
  %indvars.iv.next59 = add nsw i64 %indvars.iv58, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next59 to i32
  %exitcond61.not = icmp eq i32 %i.n, %lftr.wideiv
  br i1 %exitcond61.not, label %..critedge_crit_edge, label %bb.b, !llvm.loop !184

..critedge_crit_edge:                             ; preds = %bb.f
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %exitcond66.not = icmp eq i64 %indvars.iv.next63, %wide.trip.count65
  br i1 %exitcond66.not, label %.loopexit, label %.lr.ph, !llvm.loop !185

.loopexit:                                        ; preds = %..critedge_crit_edge, %bb.b, %bb.a, %.lr.ph46, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @parse_ts(ptr nofree noundef captures(none) %0, i32 noundef range(i32 -2147483648, 2147483645) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #2 {
bb.a:
  %i.a = icmp slt i32 %3, %4
  br i1 %i.a, label %.lr.ph157, label %ensure_bits.exit.thread

.lr.ph157:                                        ; preds = %bb.a
  %.not = icmp eq i32 %5, 0                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = getelementptr i8, ptr %0, i64 16         ; 17 uses
  %i.f = getelementptr i8, ptr %0, i64 20         ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.not37.i99 = icmp sgt i32 %1, %2               ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3692 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2348 ; 2 uses
  %i.m = sext i32 %1 to i64                       ; 4 uses
  %i.n = add i32 %2, 1                            ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %.not91 = icmp eq i32 %1, %2                    ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.q = sdiv i32 %1, 2
  %i.r = sext i32 %i.q to i64                     ; 3 uses
  %i.s = getelementptr inbounds [32 x i8], ptr %i.p, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.u = getelementptr inbounds [32 x i8], ptr %i.t, i64 %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.w = getelementptr inbounds [32 x i8], ptr %i.v, i64 %i.r
  %i.x = sext i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph157, %bb.au
  %indvars.iv187 = phi i64 [ %i.x, %.lr.ph157 ], [ %indvars.iv.next188, %bb.au ] ; 10 uses
  %i.y = icmp slt i64 %indvars.iv187, 6
  %i.z = trunc nsw i64 %indvars.iv187 to i32
  br i1 %i.y, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = load i32, ptr %i.b, align 4, !tbaa !39
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp slt i64 %indvars.iv187, %i.ab
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv187
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !14
  %i.af = zext i8 %i.ae to i32
  br label %bb.h

bb.f:                                             ; preds = %bb.d, %bb.c
  %.val.i = load i32, ptr %i.e, align 8, !tbaa !64 ; 5 uses
  %.val7.i = load i32, ptr %i.f, align 4, !tbaa !62 ; 2 uses
  %i.ag = sub nsw i32 %.val7.i, %.val.i           ; 3 uses
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %ensure_bits.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = icmp samesign ult i32 %i.ag, 28
  br i1 %i.ai, label %ensure_bits.exit.thread.sink.split, label %ensure_bits.exit

ensure_bits.exit:                                 ; preds = %bb.g
  %i.aj = load i32, ptr %i.g, align 8, !tbaa !33  ; 2 uses
  %i.ak = add nsw i32 %i.aj, 3
  %i.al = load i32, ptr %i.h, align 8, !tbaa !63
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.an = lshr i32 %.val.i, 3
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 1, !tbaa !14
  %i.ar = and i32 %.val.i, 7
  %i.as = lshr i32 %i.aq, %i.ar
  %i.at = sub i32 29, %i.aj
  %i.au = lshr i32 -1, %i.at
  %i.av = and i32 %i.as, %i.au
  %i.aw = add i32 %i.ak, %.val.i
  %i.ax = tail call i32 @llvm.umin.i32(i32 %i.al, i32 %i.aw)
  store i32 %i.ax, ptr %i.e, align 8, !tbaa !64
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.av, i32 6) ; 2 uses
  %i.ay = trunc i32 %spec.store.select to i8
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv187
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !14
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.e, %ensure_bits.exit
  %.0 = phi i32 [ %spec.store.select, %ensure_bits.exit ], [ %i.af, %bb.e ], [ %i.z, %bb.b ] ; 13 uses
  %i.ba = load i32, ptr %i.i, align 16, !tbaa !34
  %.not90 = icmp slt i32 %.0, %i.ba
  br i1 %.not90, label %bb.i, label %ensure_bits.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.bb = icmp eq i64 %indvars.iv187, 12
  br i1 %i.bb, label %.preheader, label %bb.u

.preheader:                                       ; preds = %bb.i
  %i.bc = load i32, ptr %i.o, align 4, !tbaa !37
  %i.bd = icmp slt i32 %i.bc, 5
  %brmerge = or i1 %i.bd, %.not37.i99
  br i1 %brmerge, label %parse_grid_3.exit125, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader, %parse_grid_3.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %parse_grid_3.exit ], [ 0, %.preheader ] ; 4 uses
  %i.be = add nuw nsw i64 %indvars.iv, 4
  %i.bf = trunc nuw nsw i64 %indvars.iv to i32
  %i.bg = shl nuw i32 1, %i.bf                    ; 2 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv
  br label %bb.j

bb.j:                                             ; preds = %bb.t, %.lr.ph.i
  %indvars.iv47.i = phi i64 [ %i.m, %.lr.ph.i ], [ %indvars.iv.next48.i, %bb.t ] ; 4 uses
  %i.bh = icmp eq i64 %indvars.iv47.i, %i.m
  br i1 %i.bh, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = load i32, ptr %i.j, align 8, !tbaa !38
  %i.bj = sext i32 %i.bi to i64
  %i.bk = icmp sge i64 %i.be, %i.bj
  %i.bl = zext i1 %i.bk to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bm = phi i32 [ 0, %bb.j ], [ %i.bl, %bb.k ]
  %.not24.i = icmp eq i32 %i.bm, %5
  br i1 %.not24.i, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.k, i64 %indvars.iv47.i ; 3 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !27
  %i.bp = and i32 %i.bo, %i.bg
  %.not25.i = icmp eq i32 %i.bp, 0
  br i1 %.not25.i, label %.preheader.i, label %bb.t

.preheader.i:                                     ; preds = %bb.m
  %gep.i = getelementptr [224 x i8], ptr %invariant.gep.i, i64 %indvars.iv47.i
  br label %bb.n

bb.n:                                             ; preds = %parse_vlc.exit.i, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %parse_vlc.exit.i ] ; 2 uses
  %.val.i.i = load i32, ptr %i.e, align 16, !tbaa !64 ; 8 uses
  %.val7.i.i = load i32, ptr %i.f, align 4, !tbaa !62 ; 2 uses
  %i.bq = sub nsw i32 %.val7.i.i, %.val.i.i       ; 3 uses
  %i.br = icmp slt i32 %i.bq, 0
  br i1 %i.br, label %parse_grid_3.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = icmp samesign ult i32 %i.bq, 20
  %i.bt = load i32, ptr %i.h, align 8, !tbaa !63  ; 5 uses
  br i1 %i.bs, label %bb.p, label %ensure_bits.exit.i

bb.p:                                             ; preds = %bb.o
  %i.bu = sub nsw i32 0, %.val.i.i
  %i.bv = sub nsw i32 %i.bt, %.val.i.i
  %i.bw = icmp slt i32 %.val7.i.i, 0
  %..i.i.i.i = tail call i32 @llvm.smin.i32(i32 range(i32 0, 64) %i.bq, i32 %i.bv)
  %.0.i.i.i.i = select i1 %i.bw, i32 %i.bu, i32 %..i.i.i.i
  %i.bx = add nsw i32 %.0.i.i.i.i, %.val.i.i
  store i32 %i.bx, ptr %i.e, align 16, !tbaa !64
  br label %parse_grid_3.exit

ensure_bits.exit.i:                               ; preds = %bb.o
  %ff_dca_vlc_grid_3.val.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ff_dca_vlc_grid_3, i64 8), align 8, !tbaa !68 ; 2 uses
  %i.by = load ptr, ptr %i.d, align 8, !tbaa !61  ; 4 uses
  %i.bz = lshr i32 %.val.i.i, 3
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 1, !tbaa !14
  %i.cd = and i32 %.val.i.i, 7
  %i.ce = lshr i32 %i.cc, %i.cd
  %i.cf = and i32 %i.ce, 511
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %ff_dca_vlc_grid_3.val.i, i64 %i.cg ; 2 uses
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !14
  %i.cj = sext i16 %i.ci to i32                   ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !14 ; 2 uses
  %i.cm = sext i16 %i.cl to i32                   ; 2 uses
  %i.cn = icmp slt i16 %i.cl, 0
  br i1 %i.cn, label %bb.q, label %get_vlc2.exit.i.i

bb.q:                                             ; preds = %ensure_bits.exit.i
  %i.co = add nsw i32 %.val.i.i, 9
  %i.cp = tail call i32 @llvm.umin.i32(i32 %i.bt, i32 %i.co) ; 3 uses
  %i.cq = lshr i32 %i.cp, 3
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 1, !tbaa !14
  %i.cu = and i32 %i.cp, 7
  %i.cv = lshr i32 %i.ct, %i.cu
  %i.cw = add nsw i32 %i.cm, 32
  %i.cx = lshr i32 -1, %i.cw
  %i.cy = and i32 %i.cv, %i.cx
  %i.cz = add i32 %i.cy, %i.cj
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %ff_dca_vlc_grid_3.val.i, i64 %i.da ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 2
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !14
  %i.de = sext i16 %i.dd to i32
  %i.df = load i16, ptr %i.db, align 2, !tbaa !14
  %i.dg = sext i16 %i.df to i32
  br label %get_vlc2.exit.i.i

get_vlc2.exit.i.i:                                ; preds = %bb.q, %ensure_bits.exit.i
  %.167.i.i.i = phi i32 [ %i.dg, %bb.q ], [ %i.cj, %ensure_bits.exit.i ] ; 2 uses
  %.165.i.i.i = phi i32 [ %i.cp, %bb.q ], [ %.val.i.i, %ensure_bits.exit.i ]
  %.1.i.i.i = phi i32 [ %i.de, %bb.q ], [ %i.cm, %ensure_bits.exit.i ]
  %i.dh = add i32 %.1.i.i.i, %.165.i.i.i
  %i.di = tail call i32 @llvm.umin.i32(i32 %i.bt, i32 %i.dh) ; 4 uses
  store i32 %i.di, ptr %i.e, align 16, !tbaa !64
  %i.dj = icmp sgt i32 %.167.i.i.i, -1
  br i1 %i.dj, label %parse_vlc.exit.i, label %bb.r

bb.r:                                             ; preds = %get_vlc2.exit.i.i
  %i.dk = lshr i32 %i.di, 3
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 1, !tbaa !14
  %i.do = and i32 %i.di, 7
  %i.dp = lshr i32 %i.dn, %i.do
  %i.dq = and i32 %i.dp, 7                        ; 2 uses
  %i.dr = add i32 %i.di, 3
  %i.ds = tail call i32 @llvm.umin.i32(i32 %i.bt, i32 %i.dr) ; 4 uses
  store i32 %i.ds, ptr %i.e, align 16, !tbaa !64
  %i.dt = lshr i32 %i.ds, 3
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 1, !tbaa !14
  %i.dx = and i32 %i.ds, 7
  %i.dy = lshr i32 %i.dw, %i.dx
  %i.dz = xor i32 %i.dq, 31
  %i.ea = lshr i32 -1, %i.dz
  %i.eb = and i32 %i.ea, %i.dy
  %i.ec = add i32 %i.ds, 1
  %i.ed = add i32 %i.ec, %i.dq
  %i.ee = tail call i32 @llvm.umin.i32(i32 %i.bt, i32 %i.ed)
  store i32 %i.ee, ptr %i.e, align 16, !tbaa !64
  br label %parse_vlc.exit.i

parse_vlc.exit.i:                                 ; preds = %bb.r, %get_vlc2.exit.i.i
  %.0.i27.i = phi i32 [ %i.eb, %bb.r ], [ %.167.i.i.i, %get_vlc2.exit.i.i ]
  %i.ef = trunc i32 %.0.i27.i to i8
  %i.eg = add i8 %i.ef, -16
  %i.eh = getelementptr inbounds nuw i8, ptr %gep.i, i64 %indvars.iv.i
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 8
  br i1 %exitcond.not.i, label %bb.s, label %bb.n, !llvm.loop !186

bb.s:                                             ; preds = %parse_vlc.exit.i
  %i.ei = load i32, ptr %i.bn, align 4, !tbaa !27
  %i.ej = or i32 %i.ei, %i.bg
  store i32 %i.ej, ptr %i.bn, align 4, !tbaa !27
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.m, %bb.l
  %indvars.iv.next48.i = add nsw i64 %indvars.iv47.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next48.i to i32
  %exitcond50.not.i = icmp eq i32 %i.n, %lftr.wideiv.i
  br i1 %exitcond50.not.i, label %parse_grid_3.exit, label %bb.j, !llvm.loop !187

parse_grid_3.exit:                                ; preds = %bb.t, %bb.n, %bb.p
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ek = load i32, ptr %i.o, align 4, !tbaa !37
  %i.el = add nsw i32 %i.ek, -4
  %i.em = sext i32 %i.el to i64
  %i.en = icmp slt i64 %indvars.iv.next, %i.em
  br i1 %i.en, label %.lr.ph.i, label %parse_grid_3.exit125, !llvm.loop !188

bb.u:                                             ; preds = %bb.i
  %i.eo = icmp sgt i64 %indvars.iv187, 11
  %i.ep = icmp slt i32 %.0, 4
  %or.cond.not169 = or i1 %i.eo, %i.ep
  %or.cond136 = or i1 %.not37.i99, %or.cond.not169
  br i1 %or.cond136, label %parse_grid_3.exit125, label %.lr.ph.i100

.lr.ph.i100:                                      ; preds = %bb.u
  %i.eq = add nsw i32 %.0, -4                     ; 2 uses
  %i.er = shl nuw i32 1, %i.eq                    ; 2 uses
  %i.es = zext nneg i32 %i.eq to i64
  %invariant.gep.i101 = getelementptr [8 x i8], ptr %i.l, i64 %i.es
  br label %bb.v

bb.v:                                             ; preds = %bb.af, %.lr.ph.i100
  %indvars.iv47.i102 = phi i64 [ %i.m, %.lr.ph.i100 ], [ %indvars.iv.next48.i104, %bb.af ] ; 4 uses
  %i.et = icmp eq i64 %indvars.iv47.i102, %i.m
  br i1 %i.et, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eu = load i32, ptr %i.j, align 8, !tbaa !38
  %i.ev = icmp sge i32 %.0, %i.eu
  %i.ew = zext i1 %i.ev to i32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ex = phi i32 [ 0, %bb.v ], [ %i.ew, %bb.w ]
  %.not24.i103 = icmp eq i32 %i.ex, %5
  br i1 %.not24.i103, label %bb.y, label %bb.af

bb.y:                                             ; preds = %bb.x
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.k, i64 %indvars.iv47.i102 ; 3 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !27
  %i.fa = and i32 %i.ez, %i.er
  %.not25.i107 = icmp eq i32 %i.fa, 0
  br i1 %.not25.i107, label %.preheader.i108, label %bb.af

.preheader.i108:                                  ; preds = %bb.y
  %gep.i109 = getelementptr [224 x i8], ptr %invariant.gep.i101, i64 %indvars.iv47.i102
  br label %bb.z

bb.z:                                             ; preds = %parse_vlc.exit.i119, %.preheader.i108
  %indvars.iv.i110 = phi i64 [ 0, %.preheader.i108 ], [ %indvars.iv.next.i121, %parse_vlc.exit.i119 ] ; 2 uses
  %.val.i.i111 = load i32, ptr %i.e, align 16, !tbaa !64 ; 8 uses
  %.val7.i.i112 = load i32, ptr %i.f, align 4, !tbaa !62 ; 2 uses
  %i.fb = sub nsw i32 %.val7.i.i112, %.val.i.i111 ; 3 uses
  %i.fc = icmp slt i32 %i.fb, 0
  br i1 %i.fc, label %parse_grid_3.exit125, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fd = icmp samesign ult i32 %i.fb, 20
  %i.fe = load i32, ptr %i.h, align 8, !tbaa !63  ; 5 uses
  br i1 %i.fd, label %bb.ab, label %ensure_bits.exit.i113

bb.ab:                                            ; preds = %bb.aa
  %i.ff = sub nsw i32 0, %.val.i.i111
  %i.fg = sub nsw i32 %i.fe, %.val.i.i111
  %i.fh = icmp slt i32 %.val7.i.i112, 0
  %..i.i.i.i123 = tail call i32 @llvm.smin.i32(i32 range(i32 0, 64) %i.fb, i32 %i.fg)
  %.0.i.i.i.i124 = select i1 %i.fh, i32 %i.ff, i32 %..i.i.i.i123
  %i.fi = add nsw i32 %.0.i.i.i.i124, %.val.i.i111
  store i32 %i.fi, ptr %i.e, align 16, !tbaa !64
  br label %parse_grid_3.exit125

ensure_bits.exit.i113:                            ; preds = %bb.aa
  %ff_dca_vlc_grid_3.val.i114 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ff_dca_vlc_grid_3, i64 8), align 8, !tbaa !68 ; 2 uses
  %i.fj = load ptr, ptr %i.d, align 8, !tbaa !61  ; 4 uses
  %i.fk = lshr i32 %.val.i.i111, 3
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 1, !tbaa !14
  %i.fo = and i32 %.val.i.i111, 7
  %i.fp = lshr i32 %i.fn, %i.fo
  %i.fq = and i32 %i.fp, 511
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %ff_dca_vlc_grid_3.val.i114, i64 %i.fr ; 2 uses
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !14
  %i.fu = sext i16 %i.ft to i32                   ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 2
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !14 ; 2 uses
  %i.fx = sext i16 %i.fw to i32                   ; 2 uses
  %i.fy = icmp slt i16 %i.fw, 0
  br i1 %i.fy, label %bb.ac, label %get_vlc2.exit.i.i115

bb.ac:                                            ; preds = %ensure_bits.exit.i113
  %i.fz = add nsw i32 %.val.i.i111, 9
  %i.ga = tail call i32 @llvm.umin.i32(i32 %i.fe, i32 %i.fz) ; 3 uses
  %i.gb = lshr i32 %i.ga, 3
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 1, !tbaa !14
  %i.gf = and i32 %i.ga, 7
  %i.gg = lshr i32 %i.ge, %i.gf
  %i.gh = add nsw i32 %i.fx, 32
  %i.gi = lshr i32 -1, %i.gh
  %i.gj = and i32 %i.gg, %i.gi
  %i.gk = add i32 %i.gj, %i.fu
  %i.gl = zext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %ff_dca_vlc_grid_3.val.i114, i64 %i.gl ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 2
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !14
  %i.gp = sext i16 %i.go to i32
  %i.gq = load i16, ptr %i.gm, align 2, !tbaa !14
  %i.gr = sext i16 %i.gq to i32
  br label %get_vlc2.exit.i.i115

get_vlc2.exit.i.i115:                             ; preds = %bb.ac, %ensure_bits.exit.i113
  %.167.i.i.i116 = phi i32 [ %i.gr, %bb.ac ], [ %i.fu, %ensure_bits.exit.i113 ] ; 2 uses
  %.165.i.i.i117 = phi i32 [ %i.ga, %bb.ac ], [ %.val.i.i111, %ensure_bits.exit.i113 ]
  %.1.i.i.i118 = phi i32 [ %i.gp, %bb.ac ], [ %i.fx, %ensure_bits.exit.i113 ]
  %i.gs = add i32 %.1.i.i.i118, %.165.i.i.i117
  %i.gt = tail call i32 @llvm.umin.i32(i32 %i.fe, i32 %i.gs) ; 4 uses
  store i32 %i.gt, ptr %i.e, align 16, !tbaa !64
  %i.gu = icmp sgt i32 %.167.i.i.i116, -1
  br i1 %i.gu, label %parse_vlc.exit.i119, label %bb.ad

bb.ad:                                            ; preds = %get_vlc2.exit.i.i115
  %i.gv = lshr i32 %i.gt, 3
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.gw
  %i.gy = load i32, ptr %i.gx, align 1, !tbaa !14
  %i.gz = and i32 %i.gt, 7
  %i.ha = lshr i32 %i.gy, %i.gz
  %i.hb = and i32 %i.ha, 7                        ; 2 uses
  %i.hc = add i32 %i.gt, 3
  %i.hd = tail call i32 @llvm.umin.i32(i32 %i.fe, i32 %i.hc) ; 4 uses
  store i32 %i.hd, ptr %i.e, align 16, !tbaa !64
  %i.he = lshr i32 %i.hd, 3
  %i.hf = zext nneg i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.hf
  %i.hh = load i32, ptr %i.hg, align 1, !tbaa !14
  %i.hi = and i32 %i.hd, 7
  %i.hj = lshr i32 %i.hh, %i.hi
  %i.hk = xor i32 %i.hb, 31
  %i.hl = lshr i32 -1, %i.hk
  %i.hm = and i32 %i.hl, %i.hj
  %i.hn = add i32 %i.hd, 1
  %i.ho = add i32 %i.hn, %i.hb
  %i.hp = tail call i32 @llvm.umin.i32(i32 %i.fe, i32 %i.ho)
  store i32 %i.hp, ptr %i.e, align 16, !tbaa !64
  br label %parse_vlc.exit.i119

parse_vlc.exit.i119:                              ; preds = %bb.ad, %get_vlc2.exit.i.i115
  %.0.i27.i120 = phi i32 [ %i.hm, %bb.ad ], [ %.167.i.i.i116, %get_vlc2.exit.i.i115 ]
  %i.hq = trunc i32 %.0.i27.i120 to i8
  %i.hr = add i8 %i.hq, -16
  %i.hs = getelementptr inbounds nuw i8, ptr %gep.i109, i64 %indvars.iv.i110
  store i8 %i.hr, ptr %i.hs, align 1, !tbaa !14
  %indvars.iv.next.i121 = add nuw nsw i64 %indvars.iv.i110, 1 ; 2 uses
  %exitcond.not.i122 = icmp eq i64 %indvars.iv.next.i121, 8
  br i1 %exitcond.not.i122, label %bb.ae, label %bb.z, !llvm.loop !186

bb.ae:                                            ; preds = %parse_vlc.exit.i119
  %i.ht = load i32, ptr %i.ey, align 4, !tbaa !27
  %i.hu = or i32 %i.ht, %i.er
  store i32 %i.hu, ptr %i.ey, align 4, !tbaa !27
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.y, %bb.x
  %indvars.iv.next48.i104 = add nsw i64 %indvars.iv47.i102, 1 ; 2 uses
  %lftr.wideiv.i105 = trunc i64 %indvars.iv.next48.i104 to i32
  %exitcond50.not.i106 = icmp eq i32 %i.n, %lftr.wideiv.i105
  br i1 %exitcond50.not.i106, label %parse_grid_3.exit125, label %bb.v, !llvm.loop !187

parse_grid_3.exit125:                             ; preds = %bb.af, %parse_grid_3.exit, %bb.z, %.preheader, %bb.ab, %bb.u
  br i1 %.not91, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %parse_grid_3.exit125
  %.val.i126 = load i32, ptr %i.e, align 16, !tbaa !64 ; 5 uses
  %.val7.i127 = load i32, ptr %i.f, align 4, !tbaa !62 ; 2 uses
  %i.hv = sub nsw i32 %.val7.i127, %.val.i126     ; 3 uses
  %i.hw = icmp slt i32 %i.hv, 0
  br i1 %i.hw, label %ensure_bits.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hx = icmp samesign ult i32 %i.hv, 20
  br i1 %i.hx, label %ensure_bits.exit.thread.sink.split, label %ensure_bits.exit131

ensure_bits.exit131:                              ; preds = %bb.ah
  br i1 %.not, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %ensure_bits.exit131
  %i.hy = load i32, ptr %i.b, align 4, !tbaa !39
  %.not94 = icmp slt i32 %.0, %i.hy
  br i1 %.not94, label %.thread, label %bb.aj

bb.aj:                                            ; preds = %ensure_bits.exit131, %bb.ai
  %i.hz = load i32, ptr %i.h, align 8, !tbaa !63
  %i.ia = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.ib = lshr i32 %.val.i126, 3
  %i.ic = zext nneg i32 %i.ib to i64
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.ic
  %i.ie = load i32, ptr %i.id, align 1, !tbaa !14
  %i.if = and i32 %.val.i126, 7
  %i.ig = lshr i32 %i.ie, %i.if
  %i.ih = add i32 %.val.i126, 8
  %i.ii = tail call i32 @llvm.umin.i32(i32 %i.hz, i32 %i.ih)
  store i32 %i.ii, ptr %i.e, align 16, !tbaa !64
  %i.ij = trunc i32 %i.ig to i8
  %i.ik = sext i32 %.0 to i64
  %i.il = getelementptr inbounds i8, ptr %i.s, i64 %i.ik
  store i8 %i.ij, ptr %i.il, align 1, !tbaa !14
  br i1 %.not, label %bb.al, label %.thread

.thread:                                          ; preds = %bb.ai, %bb.aj
  %i.im = load i32, ptr %i.j, align 8, !tbaa !38
  %.not95 = icmp slt i32 %.0, %i.im
  br i1 %.not95, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.thread
  %i.in = load i32, ptr %i.e, align 16, !tbaa !64 ; 3 uses
  %i.io = load i32, ptr %i.h, align 8, !tbaa !63
  %i.ip = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.iq = lshr i32 %i.in, 3
  %i.ir = zext nneg i32 %i.iq to i64
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.ir
  %i.it = load i32, ptr %i.is, align 1, !tbaa !14
  %i.iu = and i32 %i.in, 7
  %i.iv = lshr i32 %i.it, %i.iu
  %i.iw = add i32 %i.in, 8
  %i.ix = tail call i32 @llvm.umin.i32(i32 %i.io, i32 %i.iw)
  store i32 %i.ix, ptr %i.e, align 16, !tbaa !64
  %i.iy = trunc i32 %i.iv to i8
  %i.iz = sext i32 %.0 to i64
  %i.ja = getelementptr inbounds i8, ptr %i.u, i64 %i.iz
  store i8 %i.iy, ptr %i.ja, align 1, !tbaa !14
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %.thread, %bb.ak, %parse_grid_3.exit125
  %i.jb = getelementptr inbounds i8, ptr %i.w, i64 %indvars.iv187
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !14  ; 2 uses
  %i.jd = zext i8 %i.jc to i32                    ; 4 uses
  %.not96 = icmp eq i8 %i.jc, 0
  br i1 %.not96, label %ensure_bits.exit.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.je = load i32, ptr %i.b, align 4, !tbaa !39
  %i.jf = sext i32 %i.je to i64
  %i.jg = icmp slt i64 %indvars.iv187, %i.jf
  br i1 %i.jg, label %bb.an, label %bb.as

bb.an:                                            ; preds = %bb.am
  %i.jh = load i32, ptr %i.j, align 8, !tbaa !38
  %.not97 = icmp slt i32 %.0, %i.jh
  br i1 %.not97, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  br i1 %.not, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  tail call fastcc void @parse_ch(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.0, i32 noundef %i.jd, i32 noundef 0)
  br label %bb.au

bb.aq:                                            ; preds = %bb.ao
  br i1 %.not91, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  tail call fastcc void @parse_ch(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %.0, i32 noundef %i.jd, i32 noundef 1)
  br label %bb.au

bb.as:                                            ; preds = %bb.an, %bb.am
  tail call fastcc void @parse_ch(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.0, i32 noundef %i.jd, i32 noundef 0)
  br i1 %.not91, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  tail call fastcc void @parse_ch(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %.0, i32 noundef %i.jd, i32 noundef 0)
  br label %bb.au

bb.au:                                            ; preds = %bb.aq, %bb.ar, %bb.ap, %bb.at, %bb.as
  %indvars.iv.next188 = add nsw i64 %indvars.iv187, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next188 to i32
  %exitcond.not = icmp eq i32 %4, %lftr.wideiv
  br i1 %exitcond.not, label %ensure_bits.exit.thread, label %bb.b, !llvm.loop !189

ensure_bits.exit.thread.sink.split:               ; preds = %bb.ah, %bb.g
  %.val.i126.lcssa.sink216 = phi i32 [ %.val.i, %bb.g ], [ %.val.i126, %bb.ah ] ; 3 uses
  %.val7.i127.lcssa.sink = phi i32 [ %.val7.i, %bb.g ], [ %.val7.i127, %bb.ah ]
  %.lcssa212.sink = phi i32 [ %i.ag, %bb.g ], [ %i.hv, %bb.ah ]
  %i.ji = sub nsw i32 0, %.val.i126.lcssa.sink216
  %i.jj = load i32, ptr %i.h, align 8, !tbaa !63
  %i.jk = sub nsw i32 %i.jj, %.val.i126.lcssa.sink216
  %i.jl = icmp slt i32 %.val7.i127.lcssa.sink, 0
  %..i.i.i129 = tail call i32 @llvm.smin.i32(i32 range(i32 0, 64) %.lcssa212.sink, i32 %i.jk)
  %.0.i.i.i130 = select i1 %i.jl, i32 %i.ji, i32 %..i.i.i129
  %i.jm = add nsw i32 %.0.i.i.i130, %.val.i126.lcssa.sink216
  store i32 %i.jm, ptr %i.e, align 8, !tbaa !64
  br label %ensure_bits.exit.thread

ensure_bits.exit.thread:                          ; preds = %bb.h, %bb.al, %bb.au, %bb.f, %bb.ag, %ensure_bits.exit.thread.sink.split, %bb.a
  %.085 = phi i32 [ 0, %bb.a ], [ 0, %ensure_bits.exit.thread.sink.split ], [ -1094995529, %bb.h ], [ 0, %bb.ag ], [ 0, %bb.f ], [ 0, %bb.au ], [ -1094995529, %bb.al ]
  ret i32 %.085
}

; Function Attrs: nounwind uwtable
define internal fastcc void @parse_ch(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 1, 256) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7928
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = getelementptr inbounds [256 x i8], ptr %i.a, i64 %i.b
  %i.d = sext i32 %2 to i64                       ; 2 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69   ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr i8, ptr %0, i64 16         ; 10 uses
  %.val.i = load i32, ptr %i.h, align 8, !tbaa !64 ; 8 uses
  %i.i = getelementptr i8, ptr %0, i64 20
  %.val7.i = load i32, ptr %i.i, align 4, !tbaa !62 ; 9 uses
  %i.j = sub nsw i32 %.val7.i, %.val.i            ; 3 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %ensure_bits.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = icmp samesign ult i32 %i.j, 20
  br i1 %i.l, label %bb.c, label %ensure_bits.exit

bb.c:                                             ; preds = %bb.b
  %i.m = sub nsw i32 0, %.val.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !63
  %i.p = sub nsw i32 %i.o, %.val.i
  %i.q = icmp slt i32 %.val7.i, 0
  %..i.i.i = tail call i32 @llvm.smin.i32(i32 range(i32 0, 64) %i.j, i32 %i.p)
  %.0.i.i.i = select i1 %i.q, i32 %i.m, i32 %..i.i.i
  %i.r = add nsw i32 %.0.i.i.i, %.val.i
  store i32 %i.r, ptr %i.h, align 8, !tbaa !64
  br label %ensure_bits.exit.thread

ensure_bits.exit:                                 ; preds = %bb.b
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !61   ; 8 uses
  %i.t = lshr i32 %.val.i, 3
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load i32, ptr %i.x, align 8, !tbaa !63   ; 8 uses
  %i.z = icmp slt i32 %.val.i, %i.y
  %i.aa = zext i1 %i.z to i32
  %spec.select.i = add i32 %.val.i, %i.aa         ; 15 uses
  store i32 %spec.select.i, ptr %i.h, align 8, !tbaa !64
  %trunc = trunc nuw i32 %3 to i8
  switch i8 %trunc, label %bb.o [
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.j
    i8 4, label %.preheader123
    i8 5, label %bb.m
  ]

.preheader123:                                    ; preds = %ensure_bits.exit
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ff_dca_vlc_rsd, i64 8), align 8
  br label %bb.k

bb.d:                                             ; preds = %ensure_bits.exit
  %i.ac = sub nsw i32 %.val7.i, %spec.select.i    ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 135
  %i.ae = sdiv i32 %i.ac, 8
  %i.af = select i1 %i.ad, i32 16, i32 %i.ae      ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph145, label %._crit_edge146

.lr.ph145:                                        ; preds = %bb.d, %.lr.ph145
  %i.ah = phi i32 [ %i.ap, %.lr.ph145 ], [ %spec.select.i, %bb.d ] ; 3 uses
  %.086143 = phi i32 [ %i.ck, %.lr.ph145 ], [ 0, %bb.d ]
  %.089142 = phi ptr [ %i.cl, %.lr.ph145 ], [ %i.f, %bb.d ] ; 9 uses
  %i.ai = lshr i32 %i.ah, 3
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 1, !tbaa !14
  %i.am = and i32 %i.ah, 7
  %i.an = lshr i32 %i.al, %i.am                   ; 8 uses
  %i.ao = add i32 %i.ah, 8
  %i.ap = tail call i32 @llvm.umin.i32(i32 %i.y, i32 %i.ao) ; 3 uses
  store i32 %i.ap, ptr %i.h, align 8, !tbaa !64
  %i.aq = and i32 %i.an, 1
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr @ff_dca_rsd_level_2a, i64 %i.ar
  %i.at = load float, ptr %i.as, align 4, !tbaa !10
  store float %i.at, ptr %.089142, align 4, !tbaa !10
  %i.au = lshr i32 %i.an, 1
  %i.av = and i32 %i.au, 1
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr @ff_dca_rsd_level_2a, i64 %i.aw
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !10
  %i.az = getelementptr inbounds nuw i8, ptr %.089142, i64 4
  store float %i.ay, ptr %i.az, align 4, !tbaa !10
  %i.ba = lshr i32 %i.an, 2
  %i.bb = and i32 %i.ba, 1
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr @ff_dca_rsd_level_2a, i64 %i.bc
  %i.be = load float, ptr %i.bd, align 4, !tbaa !10
  %i.bf = getelementptr inbounds nuw i8, ptr %.089142, i64 8
  store float %i.be, ptr %i.bf, align 4, !tbaa !10
  %i.bg = lshr i32 %i.an, 3
  %i.bh = and i32 %i.bg, 1
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr @ff_dca_rsd_level_2a, i64 %i.bi
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !10
  %i.bl = getelementptr inbounds nuw i8, ptr %.089142, i64 12
  store float %i.bk, ptr %i.bl, align 4, !tbaa !10
  %i.bm = lshr i32 %i.an, 4
  %i.bn = and i32 %i.bm, 1
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr @ff_dca_rsd_level_2a, i64 %i.bo
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !10
  %i.br = getelementptr inbounds nuw i8, ptr %.089142, i64 16
  store float %i.bq, ptr %i.br, align 4, !tbaa !10
  %i.bs = lshr i32 %i.an, 5
  %i.bt = and i32 %i.bs, 1
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr @ff_dca_rsd_level_2a, i64 %i.bu
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !10
  %i.bx = getelementptr inbounds nuw i8, ptr %.089142, i64 20
  store float %i.bw, ptr %i.bx, align 4, !tbaa !10
  %i.by = lshr i32 %i.an, 6
  %i.bz = and i32 %i.by, 1
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr @ff_dca_rsd_level_2a, i64 %i.ca
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !10
  %i.cd = getelementptr inbounds nuw i8, ptr %.089142, i64 24
  store float %i.cc, ptr %i.cd, align 4, !tbaa !10
  %i.ce = lshr i32 %i.an, 7
  %i.cf = and i32 %i.ce, 1
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr @ff_dca_rsd_level_2a, i64 %i.cg
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !10
  %i.cj = getelementptr inbounds nuw i8, ptr %.089142, i64 28
  store float %i.ci, ptr %i.cj, align 4, !tbaa !10
  %i.ck = add nuw nsw i32 %.086143, 1             ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.089142, i64 32
  %exitcond180.not = icmp eq i32 %i.ck, %i.af
  br i1 %exitcond180.not, label %._crit_edge146, label %.lr.ph145, !llvm.loop !190

._crit_edge146:                                   ; preds = %.lr.ph145, %bb.d
  %.val193 = phi i32 [ %spec.select.i, %bb.d ], [ %i.ap, %.lr.ph145 ]
  %i.cm = shl nsw i32 %i.af, 3
  br label %.critedge

bb.e:                                             ; preds = %ensure_bits.exit
  %i.cn = zext i8 %i.w to i32
  %i.co = and i32 %.val.i, 7
  %i.cp = shl nuw nsw i32 1, %i.co
  %i.cq = and i32 %i.cp, %i.cn
  %.not95 = icmp eq i32 %i.cq, 0
  br i1 %.not95, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.e, %bb.h
  %.val113 = phi i32 [ %.val113187, %bb.h ], [ %spec.select.i, %bb.e ] ; 6 uses
  %indvars.iv167 = phi i64 [ %indvars.iv.next168, %bb.h ], [ 0, %bb.e ] ; 3 uses
  %i.cr = sub nsw i32 %.val7.i, %.val113
  %i.cs = icmp sgt i32 %i.cr, 1
  br i1 %i.cs, label %bb.f, label %.critedge.loopexit.split.loop.exit

bb.f:                                             ; preds = %.preheader
  %i.ct = lshr i32 %.val113, 3
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !14
  %i.cx = icmp slt i32 %.val113, %i.y
  %i.cy = zext i1 %i.cx to i32
  %spec.select.i119 = add i32 %.val113, %i.cy     ; 6 uses
  %i.cz = zext i8 %i.cw to i32
  %i.da = and i32 %.val113, 7
  store i32 %spec.select.i119, ptr %i.h, align 8, !tbaa !64
  %i.db = shl nuw nsw i32 1, %i.da
  %i.dc = and i32 %i.db, %i.cz
  %.not96 = icmp eq i32 %i.dc, 0
  br i1 %.not96, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dd = lshr i32 %spec.select.i119, 3
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !14
  %i.dh = icmp slt i32 %spec.select.i119, %i.y
  %i.di = zext i1 %i.dh to i32
  %spec.select.i120 = add i32 %spec.select.i119, %i.di ; 2 uses
  %i.dj = zext i8 %i.dg to i32
  %i.dk = and i32 %spec.select.i119, 7
  %i.dl = lshr i32 %i.dj, %i.dk
  %i.dm = and i32 %i.dl, 1
  store i32 %spec.select.i120, ptr %i.h, align 8, !tbaa !64
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr @ff_dca_rsd_level_2b, i64 %i.dn
  %i.dp = load float, ptr %i.do, align 4, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.val113187 = phi i32 [ %spec.select.i120, %bb.g ], [ %spec.select.i119, %bb.f ] ; 2 uses
  %.sink = phi float [ %i.dp, %bb.g ], [ 0.000000e+00, %bb.f ]
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv167
  store float %.sink, ptr %i.dq, align 4, !tbaa !10
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 2 uses
  %exitcond170.not = icmp eq i64 %indvars.iv.next168, 128
  br i1 %exitcond170.not, label %.critedge, label %.preheader, !llvm.loop !191

bb.i:                                             ; preds = %bb.e
  %i.dr = sub nsw i32 %.val7.i, %spec.select.i    ; 2 uses
  %i.ds = icmp sgt i32 %i.dr, 215
  %i.dt = sdiv i32 %i.dr, 8
  %i.du = select i1 %i.ds, i32 26, i32 %i.dt      ; 3 uses
  %i.dv = icmp sgt i32 %i.du, 0
  br i1 %i.dv, label %.lr.ph138, label %._crit_edge139

.lr.ph138:                                        ; preds = %bb.i, %.lr.ph138
  %i.dw = phi i32 [ %i.ef, %.lr.ph138 ], [ %spec.select.i, %bb.i ] ; 3 uses
  %.288136 = phi i32 [ %i.fm, %.lr.ph138 ], [ 0, %bb.i ]
  %.190135 = phi ptr [ %i.fn, %.lr.ph138 ], [ %i.f, %bb.i ] ; 6 uses
  %i.dx = lshr i32 %i.dw, 3
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 1, !tbaa !14
  %i.eb = and i32 %i.dw, 7
  %i.ec = lshr i32 %i.ea, %i.eb
  %i.ed = and i32 %i.ec, 255
  %i.ee = add i32 %i.dw, 8
  %i.ef = tail call i32 @llvm.umin.i32(i32 %i.y, i32 %i.ee) ; 3 uses
  store i32 %i.ef, ptr %i.h, align 8, !tbaa !64
  %i.eg = zext nneg i32 %i.ed to i64
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr @ff_dca_rsd_pack_5_in_8, i64 %i.eg
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !36
  %i.ej = zext i16 %i.ei to i32                   ; 5 uses
  %i.ek = and i32 %i.ej, 3
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr @ff_dca_rsd_level_3, i64 %i.el
  %i.en = load float, ptr %i.em, align 4, !tbaa !10
  store float %i.en, ptr %.190135, align 4, !tbaa !10
  %i.eo = lshr i32 %i.ej, 2
  %i.ep = and i32 %i.eo, 3
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr @ff_dca_rsd_level_3, i64 %i.eq
  %i.es = load float, ptr %i.er, align 4, !tbaa !10
  %i.et = getelementptr inbounds nuw i8, ptr %.190135, i64 4
  store float %i.es, ptr %i.et, align 4, !tbaa !10
  %i.eu = lshr i32 %i.ej, 4
  %i.ev = and i32 %i.eu, 3
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr @ff_dca_rsd_level_3, i64 %i.ew
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !10
  %i.ez = getelementptr inbounds nuw i8, ptr %.190135, i64 8
  store float %i.ey, ptr %i.ez, align 4, !tbaa !10
  %i.fa = lshr i32 %i.ej, 6
  %i.fb = and i32 %i.fa, 3
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr @ff_dca_rsd_level_3, i64 %i.fc
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !10
  %i.ff = getelementptr inbounds nuw i8, ptr %.190135, i64 12
  store float %i.fe, ptr %i.ff, align 4, !tbaa !10
  %i.fg = lshr i32 %i.ej, 8
  %i.fh = and i32 %i.fg, 3
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr @ff_dca_rsd_level_3, i64 %i.fi
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !10
  %i.fl = getelementptr inbounds nuw i8, ptr %.190135, i64 16
  store float %i.fk, ptr %i.fl, align 4, !tbaa !10
  %i.fm = add nuw nsw i32 %.288136, 1             ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.190135, i64 20
  %exitcond175.not = icmp eq i32 %i.fm, %i.du
  br i1 %exitcond175.not, label %._crit_edge139, label %.lr.ph138, !llvm.loop !192

._crit_edge139:                                   ; preds = %.lr.ph138, %bb.i
  %.val192 = phi i32 [ %spec.select.i, %bb.i ], [ %i.ef, %.lr.ph138 ]
  %i.fo = mul nsw i32 %i.du, 5
  br label %.critedge

bb.j:                                             ; preds = %ensure_bits.exit
  %i.fp = sub nsw i32 %.val7.i, %spec.select.i    ; 2 uses
  %i.fq = icmp sgt i32 %i.fp, 307
  %i.fr = sdiv i32 %i.fp, 7
  %i.fs = select i1 %i.fq, i32 43, i32 %i.fr      ; 3 uses
  %i.ft = icmp sgt i32 %i.fs, 0
  br i1 %i.ft, label %.lr.ph131, label %._crit_edge

.lr.ph131:                                        ; preds = %bb.j, %.lr.ph131
  %i.fu = phi i32 [ %i.gd, %.lr.ph131 ], [ %spec.select.i, %bb.j ] ; 3 uses
  %.3130 = phi i32 [ %i.gw, %.lr.ph131 ], [ 0, %bb.j ]
  %.291129 = phi ptr [ %i.gx, %.lr.ph131 ], [ %i.f, %bb.j ] ; 4 uses
  %i.fv = lshr i32 %i.fu, 3
  %i.fw = zext nneg i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.fw
  %i.fy = load i32, ptr %i.fx, align 1, !tbaa !14
  %i.fz = and i32 %i.fu, 7
  %i.ga = lshr i32 %i.fy, %i.fz
  %i.gb = and i32 %i.ga, 127
  %i.gc = add i32 %i.fu, 7
  %i.gd = tail call i32 @llvm.umin.i32(i32 %i.y, i32 %i.gc) ; 3 uses
  store i32 %i.gd, ptr %i.h, align 8, !tbaa !64
  %i.ge = zext nneg i32 %i.gb to i64
  %i.gf = getelementptr inbounds nuw [3 x i8], ptr @ff_dca_rsd_pack_3_in_7, i64 %i.ge ; 3 uses
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !14
  %i.gh = zext i8 %i.gg to i64
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr @ff_dca_rsd_level_5, i64 %i.gh
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !10
  store float %i.gj, ptr %.291129, align 4, !tbaa !10
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gf, i64 1
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !14
  %i.gm = zext i8 %i.gl to i64
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr @ff_dca_rsd_level_5, i64 %i.gm
  %i.go = load float, ptr %i.gn, align 4, !tbaa !10
  %i.gp = getelementptr inbounds nuw i8, ptr %.291129, i64 4
  store float %i.go, ptr %i.gp, align 4, !tbaa !10
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gf, i64 2
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !14
  %i.gs = zext i8 %i.gr to i64
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr @ff_dca_rsd_level_5, i64 %i.gs
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !10
  %i.gv = getelementptr inbounds nuw i8, ptr %.291129, i64 8
  store float %i.gu, ptr %i.gv, align 4, !tbaa !10
  %i.gw = add nuw nsw i32 %.3130, 1               ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.291129, i64 12
  %exitcond166.not = icmp eq i32 %i.gw, %i.fs
  br i1 %exitcond166.not, label %._crit_edge, label %.lr.ph131, !llvm.loop !193

._crit_edge:                                      ; preds = %.lr.ph131, %bb.j
  %.val190 = phi i32 [ %spec.select.i, %bb.j ], [ %i.gd, %.lr.ph131 ]
  %i.gy = mul nsw i32 %i.fs, 3
  br label %.critedge

bb.k:                                             ; preds = %.preheader123, %bb.l
  %.val103 = phi i32 [ %spec.select.i, %.preheader123 ], [ %i.hp, %bb.l ] ; 5 uses
  %indvars.iv158 = phi i64 [ 0, %.preheader123 ], [ %indvars.iv.next159, %bb.l ] ; 3 uses
  %i.gz = sub nsw i32 %.val7.i, %.val103
  %i.ha = icmp sgt i32 %i.gz, 5
  br i1 %i.ha, label %bb.l, label %.critedge.loopexit198.split.loop.exit206

bb.l:                                             ; preds = %bb.k
  %i.hb = lshr i32 %.val103, 3
  %i.hc = zext nneg i32 %i.hb to i64
  %i.hd = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.hc
  %i.he = load i32, ptr %i.hd, align 1, !tbaa !14
  %i.hf = and i32 %.val103, 7
  %i.hg = lshr i32 %i.he, %i.hf
  %i.hh = and i32 %i.hg, 63
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.hi ; 2 uses
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !14
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 2
  %i.hm = load i16, ptr %i.hl, align 2, !tbaa !14
  %i.hn = sext i16 %i.hm to i32
  %i.ho = add i32 %.val103, %i.hn
  %i.hp = tail call i32 @llvm.umin.i32(i32 %i.y, i32 %i.ho) ; 3 uses
  store i32 %i.hp, ptr %i.h, align 8, !tbaa !64
  %i.hq = sext i16 %i.hk to i64
  %i.hr = getelementptr inbounds [4 x i8], ptr @ff_dca_rsd_level_8, i64 %i.hq
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !10
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv158
  store float %i.hs, ptr %i.ht, align 4, !tbaa !10
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 2 uses
  %exitcond161.not = icmp eq i64 %indvars.iv.next159, 128
  br i1 %exitcond161.not, label %.critedge, label %bb.k, !llvm.loop !194

bb.m:                                             ; preds = %ensure_bits.exit
  %i.hu = sub nsw i32 %.val7.i, %spec.select.i    ; 2 uses
  %i.hv = icmp sgt i32 %i.hu, 515
  %i.hw = sdiv i32 %i.hu, 4
  %i.hx = select i1 %i.hv, i32 128, i32 %i.hw     ; 3 uses
  %i.hy = icmp sgt i32 %i.hx, 0
  br i1 %i.hy, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.m
  %wide.trip.count = zext nneg i32 %i.hx to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 2 uses
  %i.hz = phi i32 [ %spec.select.i, %.lr.ph ], [ %i.ii, %bb.n ] ; 3 uses
  %i.ia = lshr i32 %i.hz, 3
  %i.ib = zext nneg i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ib
  %i.id = load i32, ptr %i.ic, align 1, !tbaa !14
  %i.ie = and i32 %i.hz, 7
  %i.if = lshr i32 %i.id, %i.ie
  %i.ig = and i32 %i.if, 15
  %i.ih = add i32 %i.hz, 4
  %i.ii = tail call i32 @llvm.umin.i32(i32 %i.y, i32 %i.ih) ; 3 uses
  store i32 %i.ii, ptr %i.h, align 8, !tbaa !64
  %i.ij = zext nneg i32 %i.ig to i64
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr @ff_dca_rsd_level_16, i64 %i.ij
  %i.il = load float, ptr %i.ik, align 4, !tbaa !10
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  store float %i.il, ptr %i.im, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.n, !llvm.loop !195

bb.o:                                             ; preds = %ensure_bits.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 697) #11
  tail call void @abort() #12
  unreachable

.critedge.loopexit.split.loop.exit:               ; preds = %.preheader
  %i.in = trunc nuw nsw i64 %indvars.iv167 to i32
  br label %.critedge

.critedge.loopexit198.split.loop.exit206:         ; preds = %bb.k
  %i.io = trunc nuw nsw i64 %indvars.iv158 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.n, %bb.l, %bb.h, %.critedge.loopexit198.split.loop.exit206, %.critedge.loopexit.split.loop.exit, %bb.m, %._crit_edge139, %._crit_edge, %._crit_edge146
  %.val = phi i32 [ %.val193, %._crit_edge146 ], [ %.val113187, %bb.h ], [ %spec.select.i, %bb.m ], [ %.val192, %._crit_edge139 ], [ %.val190, %._crit_edge ], [ %i.hp, %bb.l ], [ %.val113, %.critedge.loopexit.split.loop.exit ], [ %.val103, %.critedge.loopexit198.split.loop.exit206 ], [ %i.ii, %bb.n ]
  %.6 = phi i32 [ %i.cm, %._crit_edge146 ], [ 128, %bb.h ], [ 0, %bb.m ], [ %i.fo, %._crit_edge139 ], [ %i.gy, %._crit_edge ], [ 128, %bb.l ], [ %i.in, %.critedge.loopexit.split.loop.exit ], [ %i.io, %.critedge.loopexit198.split.loop.exit206 ], [ %i.hx, %bb.n ] ; 2 uses
  %.not97 = icmp ne i32 %4, 0
  %i.ip = sub nsw i32 %.val7.i, %.val
  %i.iq = icmp slt i32 %i.ip, 20
  %or.cond = select i1 %.not97, i1 %i.iq, i1 false
  br i1 %or.cond, label %ensure_bits.exit.thread, label %bb.p

bb.p:                                             ; preds = %.critedge
  %i.ir = icmp slt i32 %.6, 128
  br i1 %i.ir, label %.lr.ph150, label %bb.r

.lr.ph150:                                        ; preds = %bb.p
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 7800
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.it, i64 %i.d
  %.promoted152 = load i32, ptr %i.is, align 4, !tbaa !70
  %i.iv = sext i32 %.6 to i64
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph150, %bb.q
  %indvars.iv181 = phi i64 [ %i.iv, %.lr.ph150 ], [ %indvars.iv.next182, %bb.q ] ; 2 uses
  %i.iw = phi i32 [ %.promoted152, %.lr.ph150 ], [ %i.iy, %bb.q ]
  %i.ix = mul i32 %i.iw, 1103515245
  %i.iy = add i32 %i.ix, 12345                    ; 3 uses
  %i.iz = sitofp nsz i32 %i.iy to float
  %i.ja = load float, ptr %i.iu, align 4, !tbaa !10
  %i.jb = fmul nsz float %i.ja, %i.iz
  %i.jc = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv181
  store float %i.jb, ptr %i.jc, align 4, !tbaa !10
  %indvars.iv.next182 = add nsw i64 %indvars.iv181, 1 ; 2 uses
  %i.jd = and i64 %indvars.iv.next182, 4294967295
  %exitcond184.not = icmp eq i64 %i.jd, 128
  br i1 %exitcond184.not, label %._crit_edge151, label %bb.q, !llvm.loop !196

._crit_edge151:                                   ; preds = %bb.q
  store i32 %i.iy, ptr %i.is, align 4, !tbaa !70
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge151, %bb.p
  %i.je = shl nuw i32 1, %2
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.jg = getelementptr inbounds [4 x i8], ptr %i.jf, i64 %i.b ; 2 uses
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !27
  %i.ji = or i32 %i.jh, %i.je
  store i32 %i.ji, ptr %i.jg, align 4, !tbaa !27
  br label %ensure_bits.exit.thread

ensure_bits.exit.thread:                          ; preds = %.critedge, %bb.c, %bb.a, %bb.r
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @parse_grid_2(ptr nofree noundef captures(none) %0, i32 noundef range(i32 -2147483648, 2147483645) %1, i32 noundef %2, i32 noundef range(i32 0, 2) %3, i32 noundef range(i32 1, 4) %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i32, ptr %i.a, align 16, !tbaa !34
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr i8, ptr @ff_dca_scf_to_grid_2, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !14
  %i.g = zext i8 %i.f to i32
  %i.h = add nuw nsw i32 %i.g, 1
  %spec.select = tail call i32 @llvm.umin.i32(i32 %4, i32 %i.h) ; 2 uses
  %i.i = icmp samesign ult i32 %3, %spec.select
  br i1 %i.i, label %.preheader57.lr.ph, label %._crit_edge67.split

.preheader57.lr.ph:                               ; preds = %bb.a
  %.not64 = icmp sgt i32 %1, %2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1028 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.not50 = icmp eq i32 %5, 0
  %i.l = sext i32 %1 to i64                       ; 3 uses
  %i.m = getelementptr inbounds [192 x i8], ptr %i.j, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 16         ; 7 uses
  %i.p = getelementptr i8, ptr %0, i64 20         ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %.not64, label %._crit_edge67.split, label %.preheader57.preheader

.preheader57.preheader:                           ; preds = %.preheader57.lr.ph
  %i.r = add i32 %2, 1
  %i.s = zext nneg i32 %3 to i64
  %wide.trip.count = zext nneg i32 %spec.select to i64
  br label %.preheader57

.preheader57:                                     ; preds = %.preheader57.preheader, %._crit_edge
  %indvars.iv79 = phi i64 [ %i.s, %.preheader57.preheader ], [ %indvars.iv.next80, %._crit_edge ] ; 4 uses
  %invariant.gep = getelementptr [64 x i8], ptr %i.j, i64 %indvars.iv79
  %i.t = getelementptr inbounds nuw i8, ptr @ff_dca_grid_2_to_scf, i64 %indvars.iv79
  %i.u = getelementptr inbounds nuw [64 x i8], ptr %i.m, i64 %indvars.iv79
  br label %bb.b

bb.b:                                             ; preds = %.preheader57, %.loopexit
  %indvars.iv75 = phi i64 [ %i.l, %.preheader57 ], [ %indvars.iv.next76, %.loopexit ] ; 3 uses
  %gep = getelementptr [192 x i8], ptr %invariant.gep, i64 %indvars.iv75 ; 2 uses
  %i.v = icmp eq i64 %indvars.iv75, %i.l
  br i1 %i.v, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = load i8, ptr %i.t, align 1, !tbaa !14
  %i.x = zext i8 %i.w to i32
  %i.y = load i32, ptr %i.k, align 8, !tbaa !38
  %i.z = icmp sle i32 %i.y, %i.x
  %i.aa = zext i1 %i.z to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ab = phi i32 [ 0, %bb.b ], [ %i.aa, %bb.c ]
  %.not47 = icmp eq i32 %i.ab, %5
  br i1 %.not47, label %.preheader56, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not50, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %gep, ptr noundef nonnull align 4 dereferenceable(64) %i.u, i64 64, i1 false)
  br label %.loopexit

.preheader56:                                     ; preds = %bb.d, %ensure_bits.exit.thread
  %.062 = phi ptr [ %i.dj, %ensure_bits.exit.thread ], [ %gep, %bb.d ] ; 4 uses
  %.04161 = phi i32 [ %i.di, %ensure_bits.exit.thread ], [ 0, %bb.d ] ; 2 uses
  %.val = load i32, ptr %i.o, align 16, !tbaa !64 ; 5 uses
  %.val51 = load i32, ptr %i.p, align 4, !tbaa !62
  %.not55 = icmp sgt i32 %.val51, %.val
  br i1 %.not55, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.preheader56
  %i.ac = shl nuw nsw i32 %.04161, 3
  %i.ad = sub nuw nsw i32 64, %i.ac
  %i.ae = zext nneg i32 %i.ad to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.062, i8 0, i64 %i.ae, i1 false)
  br label %.loopexit

bb.h:                                             ; preds = %.preheader56
  %i.af = load ptr, ptr %i.n, align 8, !tbaa !61
  %i.ag = lshr i32 %.val, 3
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !14
  %i.ak = load i32, ptr %i.q, align 8, !tbaa !63
  %i.al = icmp slt i32 %.val, %i.ak
  %i.am = zext i1 %i.al to i32
  %spec.select.i = add nsw i32 %.val, %i.am
  %i.an = zext i8 %i.aj to i32
  %i.ao = and i32 %.val, 7
  store i32 %spec.select.i, ptr %i.o, align 16, !tbaa !64
  %i.ap = shl nuw nsw i32 1, %i.ao
  %i.aq = and i32 %i.ap, %i.an
  %.not48 = icmp eq i32 %i.aq, 0
  br i1 %.not48, label %bb.m, label %.preheader

.preheader:                                       ; preds = %bb.h, %parse_vlc.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %parse_vlc.exit ], [ 0, %bb.h ] ; 2 uses
  %.val.i = load i32, ptr %i.o, align 16, !tbaa !64 ; 8 uses
  %.val7.i = load i32, ptr %i.p, align 4, !tbaa !62 ; 2 uses
  %i.ar = sub nsw i32 %.val7.i, %.val.i           ; 3 uses
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %ensure_bits.exit.thread, label %bb.i

bb.i:                                             ; preds = %.preheader
  %i.at = icmp samesign ult i32 %i.ar, 20
  %i.au = load i32, ptr %i.q, align 8, !tbaa !63  ; 5 uses
  br i1 %i.at, label %bb.j, label %ensure_bits.exit

bb.j:                                             ; preds = %bb.i
  %i.av = sub nsw i32 0, %.val.i
  %i.aw = sub nsw i32 %i.au, %.val.i
  %i.ax = icmp slt i32 %.val7.i, 0
  %..i.i.i = tail call i32 @llvm.smin.i32(i32 range(i32 0, 64) %i.ar, i32 %i.aw)
  %.0.i.i.i = select i1 %i.ax, i32 %i.av, i32 %..i.i.i
  %i.ay = add nsw i32 %.0.i.i.i, %.val.i
  store i32 %i.ay, ptr %i.o, align 16, !tbaa !64
  br label %ensure_bits.exit.thread

ensure_bits.exit:                                 ; preds = %bb.i
  %ff_dca_vlc_grid_2.val = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ff_dca_vlc_grid_2, i64 8), align 8, !tbaa !68 ; 2 uses
  %i.az = load ptr, ptr %i.n, align 8, !tbaa !61  ; 4 uses
  %i.ba = lshr i32 %.val.i, 3
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 1, !tbaa !14
  %i.be = and i32 %.val.i, 7
  %i.bf = lshr i32 %i.bd, %i.be
  %i.bg = and i32 %i.bf, 511
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %ff_dca_vlc_grid_2.val, i64 %i.bh ; 2 uses
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !14
  %i.bk = sext i16 %i.bj to i32                   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !14 ; 2 uses
  %i.bn = sext i16 %i.bm to i32                   ; 2 uses
  %i.bo = icmp slt i16 %i.bm, 0
  br i1 %i.bo, label %bb.k, label %get_vlc2.exit.i

bb.k:                                             ; preds = %ensure_bits.exit
  %i.bp = add i32 %.val.i, 9
  %i.bq = tail call i32 @llvm.umin.i32(i32 %i.au, i32 %i.bp) ; 3 uses
  %i.br = lshr i32 %i.bq, 3
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 1, !tbaa !14
  %i.bv = and i32 %i.bq, 7
  %i.bw = lshr i32 %i.bu, %i.bv
  %i.bx = add nsw i32 %i.bn, 32
  %i.by = lshr i32 -1, %i.bx
  %i.bz = and i32 %i.bw, %i.by
  %i.ca = add i32 %i.bz, %i.bk
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %ff_dca_vlc_grid_2.val, i64 %i.cb ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !14
  %i.cf = sext i16 %i.ce to i32
  %i.cg = load i16, ptr %i.cc, align 2, !tbaa !14
  %i.ch = sext i16 %i.cg to i32
  br label %get_vlc2.exit.i

get_vlc2.exit.i:                                  ; preds = %bb.k, %ensure_bits.exit
  %.167.i.i = phi i32 [ %i.ch, %bb.k ], [ %i.bk, %ensure_bits.exit ] ; 2 uses
  %.165.i.i = phi i32 [ %i.bq, %bb.k ], [ %.val.i, %ensure_bits.exit ]
  %.1.i.i = phi i32 [ %i.cf, %bb.k ], [ %i.bn, %ensure_bits.exit ]
  %i.ci = add i32 %.1.i.i, %.165.i.i
  %i.cj = tail call i32 @llvm.umin.i32(i32 %i.au, i32 %i.ci) ; 4 uses
  store i32 %i.cj, ptr %i.o, align 16, !tbaa !64
  %i.ck = icmp sgt i32 %.167.i.i, -1
  br i1 %i.ck, label %parse_vlc.exit, label %bb.l

bb.l:                                             ; preds = %get_vlc2.exit.i
  %i.cl = lshr i32 %i.cj, 3
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 1, !tbaa !14
  %i.cp = and i32 %i.cj, 7
  %i.cq = lshr i32 %i.co, %i.cp
  %i.cr = and i32 %i.cq, 7                        ; 2 uses
  %i.cs = add i32 %i.cj, 3
  %i.ct = tail call i32 @llvm.umin.i32(i32 %i.au, i32 %i.cs) ; 4 uses
  store i32 %i.ct, ptr %i.o, align 16, !tbaa !64
  %i.cu = lshr i32 %i.ct, 3
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 1, !tbaa !14
  %i.cy = and i32 %i.ct, 7
  %i.cz = lshr i32 %i.cx, %i.cy
  %i.da = xor i32 %i.cr, 31
  %i.db = lshr i32 -1, %i.da
  %i.dc = and i32 %i.db, %i.cz
  %i.dd = add i32 %i.ct, 1
  %i.de = add i32 %i.dd, %i.cr
  %i.df = tail call i32 @llvm.umin.i32(i32 %i.au, i32 %i.de)
  store i32 %i.df, ptr %i.o, align 16, !tbaa !64
  br label %parse_vlc.exit

parse_vlc.exit:                                   ; preds = %get_vlc2.exit.i, %bb.l
  %.0.i52 = phi i32 [ %i.dc, %bb.l ], [ %.167.i.i, %get_vlc2.exit.i ]
  %i.dg = trunc i32 %.0.i52 to i8
  %i.dh = getelementptr inbounds nuw i8, ptr %.062, i64 %indvars.iv
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %ensure_bits.exit.thread, label %.preheader, !llvm.loop !197

bb.m:                                             ; preds = %bb.h
  store i64 0, ptr %.062, align 1
  br label %ensure_bits.exit.thread

ensure_bits.exit.thread:                          ; preds = %.preheader, %parse_vlc.exit, %bb.j, %bb.m
  %i.di = add nuw nsw i32 %.04161, 1              ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.062, i64 8
  %exitcond74.not = icmp eq i32 %i.di, 8
  br i1 %exitcond74.not, label %.loopexit, label %.preheader56, !llvm.loop !198

.loopexit:                                        ; preds = %ensure_bits.exit.thread, %bb.g, %bb.e, %bb.f
  %indvars.iv.next76 = add nsw i64 %indvars.iv75, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next76 to i32
  %exitcond78.not = icmp eq i32 %i.r, %lftr.wideiv
  br i1 %exitcond78.not, label %._crit_edge, label %bb.b, !llvm.loop !199

._crit_edge:                                      ; preds = %.loopexit
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %exitcond82.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count
  br i1 %exitcond82.not, label %._crit_edge67.split, label %.preheader57, !llvm.loop !200

._crit_edge67.split:                              ; preds = %._crit_edge, %.preheader57.lr.ph, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @synth_tones(ptr nofree noundef captures(none) %0, i32 noundef range(i32 -2147483648, 126) %1, ptr nofree noundef nonnull captures(none) %2, i32 noundef range(i32 -2147483648, 5) %3, i32 noundef range(i32 0, 32) %4, i32 noundef %5) unnamed_addr #9 {
bb.a:
  %i.a = icmp slt i32 %5, 0
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 13378
  %i.c = sext i32 %3 to i64
  %i.d = getelementptr inbounds [128 x i8], ptr %i.b, i64 %i.c
  %i.e = zext nneg i32 %4 to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.e ; 2 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !36
  %i.h = zext i16 %i.g to i32                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.j = load i16, ptr %i.i, align 2, !tbaa !36
  %i.k = zext i16 %i.j to i32
  %i.l = sub nsw i32 %i.k, %i.h
  %i.m = and i32 %i.l, 511                        ; 2 uses
  %.not107 = icmp eq i32 %i.m, 0
  br i1 %.not107, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 14018
  %i.o = sext i32 %1 to i64                       ; 3 uses
  %i.p = zext nneg i32 %5 to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr @ff_dca_synth_env, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.o
  %.0106 = phi i32 [ 0, %.lr.ph ], [ %i.fd, %bb.o ] ; 2 uses
  %i.u = add nuw nsw i32 %.0106, %i.h
  %i.v = and i32 %i.u, 511
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.w ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.o
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !14   ; 2 uses
  %.not = icmp eq i8 %i.aa, 0
  br i1 %.not, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load float, ptr %i.q, align 4, !tbaa !10
  %i.ac = zext i8 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr @ff_dca_quant_amp, i64 %i.ac
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !10
  %i.af = fmul nsz float %i.ab, %i.ae             ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 10
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.o
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !14  ; 2 uses
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr @cos_tab, i64 %i.aj
  %i.al = load float, ptr %i.ak, align 4, !tbaa !10
  %i.am = fmul nsz float %i.af, %i.al             ; 9 uses
  %i.an = add i8 %i.ai, 64
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr @cos_tab, i64 %i.ao
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !10
  %i.ar = fmul nsz float %i.af, %i.aq             ; 11 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !75
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw [44 x i8], ptr @ff_dca_corr_cf, i64 %i.au ; 21 uses
  %i.aw = load i8, ptr %i.x, align 1, !tbaa !74   ; 2 uses
  %i.ax = zext i8 %i.aw to i64                    ; 6 uses
  switch i8 %i.aw, label %bb.i [
    i8 0, label %._crit_edge
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
  ]

._crit_edge:                                      ; preds = %bb.d
  %.pre = fneg nsz float %i.ar
  br label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.ay = load float, ptr %i.av, align 4, !tbaa !10
  %i.az = fneg nsz float %i.ar                    ; 2 uses
  %i.ba = load float, ptr %i.t, align 4, !tbaa !10
  %i.bb = tail call nsz float @llvm.fmuladd.f32(float %i.ay, float %i.az, float %i.ba)
  store float %i.bb, ptr %i.t, align 4, !tbaa !10
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !10
  %i.be = load float, ptr %i.s, align 4, !tbaa !10
  %i.bf = tail call nsz float @llvm.fmuladd.f32(float %i.bd, float %i.am, float %i.be)
  store float %i.bf, ptr %i.s, align 4, !tbaa !10
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !10
  %i.bi = load float, ptr %i.r, align 4, !tbaa !10
  %i.bj = tail call nsz float @llvm.fmuladd.f32(float %i.bh, float %i.ar, float %i.bi)
  store float %i.bj, ptr %i.r, align 4, !tbaa !10
  %i.bk = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !10
  %i.bm = fneg nsz float %i.am
  %i.bn = load float, ptr %2, align 4, !tbaa !10
  %i.bo = tail call nsz float @llvm.fmuladd.f32(float %i.bl, float %i.bm, float %i.bn)
  store float %i.bo, ptr %2, align 4, !tbaa !10
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.bp = load float, ptr %i.av, align 4, !tbaa !10
  %i.bq = fneg nsz float %i.ar                    ; 2 uses
  %i.br = load float, ptr %i.s, align 4, !tbaa !10
  %i.bs = tail call nsz float @llvm.fmuladd.f32(float %i.bp, float %i.bq, float %i.br)
  store float %i.bs, ptr %i.s, align 4, !tbaa !10
  %i.bt = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !10
  %i.bv = load float, ptr %i.r, align 4, !tbaa !10
  %i.bw = tail call nsz float @llvm.fmuladd.f32(float %i.bu, float %i.am, float %i.bv)
  store float %i.bw, ptr %i.r, align 4, !tbaa !10
  %i.bx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.by = load float, ptr %i.bx, align 4, !tbaa !10
  %i.bz = load float, ptr %2, align 4, !tbaa !10
  %i.ca = tail call nsz float @llvm.fmuladd.f32(float %i.by, float %i.ar, float %i.bz)
  store float %i.ca, ptr %2, align 4, !tbaa !10
  br label %bb.l

bb.g:                                             ; preds = %bb.d
  %i.cb = load float, ptr %i.av, align 4, !tbaa !10
  %i.cc = fneg nsz float %i.ar                    ; 2 uses
  %i.cd = load float, ptr %i.r, align 4, !tbaa !10
  %i.ce = tail call nsz float @llvm.fmuladd.f32(float %i.cb, float %i.cc, float %i.cd)
  store float %i.ce, ptr %i.r, align 4, !tbaa !10
  %i.cf = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !10
  %i.ch = load float, ptr %2, align 4, !tbaa !10
  %i.ci = tail call nsz float @llvm.fmuladd.f32(float %i.cg, float %i.am, float %i.ch)
  store float %i.ci, ptr %2, align 4, !tbaa !10
  br label %bb.k

bb.h:                                             ; preds = %bb.d
  %i.cj = load float, ptr %i.av, align 4, !tbaa !10
  %i.ck = fneg nsz float %i.ar                    ; 2 uses
  %i.cl = load float, ptr %2, align 4, !tbaa !10
  %i.cm = tail call nsz float @llvm.fmuladd.f32(float %i.cj, float %i.ck, float %i.cl)
  store float %i.cm, ptr %2, align 4, !tbaa !10
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.cn = load float, ptr %i.av, align 4, !tbaa !10
  %i.co = fneg nsz float %i.ar                    ; 2 uses
  %i.cp = getelementptr [4 x i8], ptr %2, i64 %i.ax
  %i.cq = getelementptr i8, ptr %i.cp, i64 -20    ; 2 uses
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !10
  %i.cs = tail call nsz float @llvm.fmuladd.f32(float %i.cn, float %i.co, float %i.cr)
  store float %i.cs, ptr %i.cq, align 4, !tbaa !10
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pre110.pre-phi = phi float [ %i.co, %bb.i ], [ %i.ck, %bb.h ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !10
  %i.cv = getelementptr [4 x i8], ptr %2, i64 %i.ax
  %i.cw = getelementptr i8, ptr %i.cv, i64 -16    ; 2 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !10
  %i.cy = tail call nsz float @llvm.fmuladd.f32(float %i.cu, float %i.am, float %i.cx)
  store float %i.cy, ptr %i.cw, align 4, !tbaa !10
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.pre108.pre-phi = phi float [ %.pre110.pre-phi, %bb.j ], [ %i.cc, %bb.g ]
  %i.cz = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.da = load float, ptr %i.cz, align 4, !tbaa !10
  %i.db = getelementptr [4 x i8], ptr %2, i64 %i.ax
  %i.dc = getelementptr i8, ptr %i.db, i64 -12    ; 2 uses
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !10
  %i.de = tail call nsz float @llvm.fmuladd.f32(float %i.da, float %i.ar, float %i.dd)
  store float %i.de, ptr %i.dc, align 4, !tbaa !10
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.pre.pre-phi = phi float [ %.pre108.pre-phi, %bb.k ], [ %i.bq, %bb.f ]
  %i.df = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %i.dg = load float, ptr %i.df, align 4, !tbaa !10
  %i.dh = fneg nsz float %i.am
  %i.di = getelementptr [4 x i8], ptr %2, i64 %i.ax
  %i.dj = getelementptr i8, ptr %i.di, i64 -8     ; 2 uses
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !10
  %i.dl = tail call nsz float @llvm.fmuladd.f32(float %i.dg, float %i.dh, float %i.dk)
  store float %i.dl, ptr %i.dj, align 4, !tbaa !10
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.e
  %.pre-phi = phi float [ %.pre.pre-phi, %bb.l ], [ %i.az, %bb.e ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !10
  %i.do = getelementptr [4 x i8], ptr %2, i64 %i.ax
  %i.dp = getelementptr i8, ptr %i.do, i64 -4     ; 2 uses
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !10
  %i.dr = tail call nsz float @llvm.fmuladd.f32(float %i.dn, float %.pre-phi, float %i.dq)
  store float %i.dr, ptr %i.dp, align 4, !tbaa !10
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %bb.m
  %.pre-phi109 = phi float [ %.pre, %._crit_edge ], [ %.pre-phi, %bb.m ]
  %i.ds = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !10
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ax ; 7 uses
  %i.dv = load float, ptr %i.du, align 4, !tbaa !10
  %i.dw = tail call nsz float @llvm.fmuladd.f32(float %i.dt, float %i.am, float %i.dv)
  store float %i.dw, ptr %i.du, align 4, !tbaa !10
  %i.dx = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !10
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 4 ; 2 uses
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !10
  %i.eb = tail call nsz float @llvm.fmuladd.f32(float %i.dy, float %i.ar, float %i.ea)
  store float %i.eb, ptr %i.dz, align 4, !tbaa !10
  %i.ec = getelementptr inbounds nuw i8, ptr %i.av, i64 28
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !10
  %i.ee = fneg nsz float %i.am
  %i.ef = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !10
  %i.eh = tail call nsz float @llvm.fmuladd.f32(float %i.ed, float %i.ee, float %i.eg)
  store float %i.eh, ptr %i.ef, align 4, !tbaa !10
  %i.ei = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !10
  %i.ek = getelementptr inbounds nuw i8, ptr %i.du, i64 12 ; 2 uses
  %i.el = load float, ptr %i.ek, align 4, !tbaa !10
  %i.em = tail call nsz float @llvm.fmuladd.f32(float %i.ej, float %.pre-phi109, float %i.el)
  store float %i.em, ptr %i.ek, align 4, !tbaa !10
  %i.en = getelementptr inbounds nuw i8, ptr %i.av, i64 36
  %i.eo = load float, ptr %i.en, align 4, !tbaa !10
  %i.ep = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 2 uses
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !10
  %i.er = tail call nsz float @llvm.fmuladd.f32(float %i.eo, float %i.am, float %i.eq)
  store float %i.er, ptr %i.ep, align 4, !tbaa !10
  %i.es = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.et = load float, ptr %i.es, align 4, !tbaa !10
  %i.eu = getelementptr inbounds nuw i8, ptr %i.du, i64 20 ; 2 uses
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !10
  %i.ew = tail call nsz float @llvm.fmuladd.f32(float %i.et, float %i.ar, float %i.ev)
  store float %i.ew, ptr %i.eu, align 4, !tbaa !10
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.c
  %i.ex = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !76
  %i.ez = getelementptr inbounds nuw i8, ptr %i.x, i64 10
  %i.fa = getelementptr inbounds i8, ptr %i.ez, i64 %i.o ; 2 uses
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !14
  %i.fc = add i8 %i.fb, %i.ey
  store i8 %i.fc, ptr %i.fa, align 1, !tbaa !14
  %i.fd = add nuw nsw i32 %.0106, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.fd, %i.m
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !201

.loopexit:                                        ; preds = %bb.o, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctpop.i16(i16) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.cos.v4f64(<4 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #8

attributes #0 = { cold nofree norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"float", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = !{!5, !5, i64 0}
!15 = !{!"any pointer", !5, i64 0}
!16 = !{!"p1 _ZTS14AVCodecContext", !15, i64 0}
!17 = !{!"p1 omnipotent char", !15, i64 0}
!18 = !{!"GetBitContext", !17, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!19 = !{!"p1 float", !15, i64 0}
!20 = !{!"p1 _ZTS11AVTXContext", !15, i64 0}
!21 = !{!"p1 _ZTS17AVFloatDSPContext", !15, i64 0}
!22 = !{!"p1 _ZTS13DCADSPContext", !15, i64 0}
!23 = !{!"DCALbrDecoder", !16, i64 0, !18, i64 8, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !5, i64 108, !5, i64 204, !5, i64 236, !5, i64 332, !5, i64 428, !5, i64 452, !5, i64 1028, !5, i64 2180, !5, i64 2348, !5, i64 3692, !5, i64 3716, !5, i64 5252, !5, i64 5492, !5, i64 5496, !5, i64 7800, !5, i64 7928, !19, i64 9464, !6, i64 9472, !5, i64 9488, !5, i64 12560, !5, i64 13072, !5, i64 13328, !9, i64 13368, !5, i64 13372, !5, i64 13378, !5, i64 14018, !6, i64 22212, !20, i64 22216, !15, i64 22224, !21, i64 22232, !22, i64 22240}
!24 = !{!23, !16, i64 0}
!25 = !{!23, !6, i64 32}
!26 = !{!23, !6, i64 52}
!27 = !{!6, !6, i64 0}
!28 = !{!23, !6, i64 36}
!29 = !{!23, !6, i64 40}
!30 = !{!23, !6, i64 48}
!31 = !{!23, !6, i64 56}
!32 = !{!23, !6, i64 60}
!33 = !{!23, !6, i64 72}
!34 = !{!23, !6, i64 80}
!35 = !{!"short", !5, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!23, !6, i64 84}
!38 = !{!23, !6, i64 88}
!39 = !{!23, !6, i64 92}
!40 = !{!"p1 _ZTS7AVClass", !15, i64 0}
!41 = !{!"p1 _ZTS7AVCodec", !15, i64 0}
!42 = !{!"p1 _ZTS15AVCodecInternal", !15, i64 0}
!43 = !{!"long", !5, i64 0}
!44 = !{!"AVRational", !6, i64 0, !6, i64 4}
!45 = !{!"p1 short", !15, i64 0}
!46 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !15, i64 16}
!47 = !{!"p1 _ZTS10RcOverride", !15, i64 0}
!48 = !{!"p1 _ZTS9AVHWAccel", !15, i64 0}
!49 = !{!"p1 _ZTS11AVBufferRef", !15, i64 0}
!50 = !{!"p1 _ZTS17AVCodecDescriptor", !15, i64 0}
!51 = !{!"p1 _ZTS16AVPacketSideData", !15, i64 0}
!52 = !{!"p1 int", !15, i64 0}
!53 = !{!"any p2 pointer", !15, i64 0}
!54 = !{!"p2 _ZTS15AVFrameSideData", !53, i64 0}
!55 = !{!"AVCodecContext", !40, i64 0, !6, i64 8, !6, i64 12, !41, i64 16, !6, i64 24, !6, i64 28, !15, i64 32, !42, i64 40, !15, i64 48, !43, i64 56, !6, i64 64, !6, i64 68, !17, i64 72, !6, i64 80, !44, i64 84, !44, i64 92, !44, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !44, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !15, i64 184, !15, i64 192, !6, i64 200, !9, i64 204, !9, i64 208, !9, i64 212, !9, i64 216, !9, i64 220, !9, i64 224, !9, i64 228, !9, i64 232, !9, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !45, i64 288, !45, i64 296, !45, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !46, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !15, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !9, i64 428, !9, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !47, i64 456, !43, i64 464, !43, i64 472, !9, i64 480, !9, i64 484, !6, i64 488, !6, i64 492, !17, i64 496, !17, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !48, i64 536, !15, i64 544, !49, i64 552, !49, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !15, i64 672, !15, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !50, i64 728, !17, i64 736, !6, i64 744, !6, i64 748, !17, i64 752, !17, i64 760, !17, i64 768, !51, i64 776, !6, i64 784, !6, i64 788, !43, i64 792, !6, i64 800, !6, i64 804, !43, i64 808, !15, i64 816, !43, i64 824, !52, i64 832, !6, i64 840, !54, i64 848, !6, i64 856, !6, i64 860}
!56 = !{!"DCADSPContext", !15, i64 0, !15, i64 8, !5, i64 16, !15, i64 32, !5, i64 40, !15, i64 56, !15, i64 64, !5, i64 72, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144, !15, i64 152}
!57 = !{!23, !5, i64 5492}
!58 = !{!23, !6, i64 96}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = !{!23, !6, i64 22212}
!61 = !{!18, !17, i64 0}
!62 = !{!18, !6, i64 12}
!63 = !{!18, !6, i64 16}
!64 = !{!18, !6, i64 8}
!65 = !{!23, !9, i64 13368}
!66 = !{!"p1 _ZTS7VLCElem", !15, i64 0}
!67 = !{!"VLC", !6, i64 0, !66, i64 8, !6, i64 16, !6, i64 20}
!68 = !{!67, !66, i64 8}
!69 = !{!19, !19, i64 0}
!70 = !{!23, !6, i64 100}
!71 = !{!23, !22, i64 22240}
!72 = !{!23, !21, i64 22232}
!73 = !{!"DCALbrTone", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !5, i64 4, !5, i64 10}
!74 = !{!73, !5, i64 0}
!75 = !{!73, !5, i64 1}
!76 = !{!73, !5, i64 2}
!77 = distinct !{!77, !11, !12, !13}
!78 = distinct !{!78, !11, !12, !13}
!79 = distinct !{!79, !11, !13, !12}
!80 = distinct !{!80, !11}
!81 = distinct !{!81, !59}
!82 = distinct !{!82, !11}
!83 = distinct !{!83, !11}
!84 = distinct !{!84, !11}
!85 = distinct !{!85, !11}
!86 = distinct !{!86, !11}
!87 = distinct !{!87, !11}
!88 = distinct !{!88, !11}
!89 = distinct !{!89, !11}
!90 = distinct !{!90, !11, !12, !13}
!91 = distinct !{!91, !11}
!92 = distinct !{!92, !11, !13, !12}
!93 = distinct !{!93, !11}
!94 = distinct !{!94, !11}
!95 = distinct !{!95, !11}
!96 = distinct !{!96, !11}
!97 = !{!"DCAExssAsset", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116}
!98 = !{!97, !6, i64 88}
!99 = !{!97, !6, i64 92}
!100 = !{!23, !6, i64 64}
!101 = !{!23, !6, i64 104}
!102 = !{!23, !6, i64 44}
!103 = !{!23, !6, i64 76}
!104 = !{!23, !6, i64 68}
!105 = !{!55, !15, i64 32}
!106 = !{!"DCADCTContext", !5, i64 0}
!107 = !{!"SynthFilterContext", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!108 = !{!"p1 _ZTS17AVFixedDSPContext", !15, i64 0}
!109 = !{!"DCACoreDecoder", !16, i64 0, !18, i64 8, !18, i64 32, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !5, i64 144, !5, i64 151, !5, i64 158, !5, i64 165, !5, i64 172, !5, i64 179, !5, i64 186, !5, i64 256, !5, i64 536, !5, i64 552, !5, i64 1000, !5, i64 1896, !5, i64 2344, !5, i64 5928, !5, i64 7720, !5, i64 7728, !6, i64 9520, !6, i64 9524, !5, i64 9528, !6, i64 9624, !6, i64 9628, !6, i64 9632, !6, i64 9636, !6, i64 9640, !6, i64 9644, !6, i64 9648, !6, i64 9652, !5, i64 9656, !5, i64 9664, !6, i64 9712, !6, i64 9716, !6, i64 9720, !6, i64 9724, !6, i64 9728, !6, i64 9732, !6, i64 9736, !6, i64 9740, !6, i64 9744, !52, i64 9752, !5, i64 9760, !6, i64 13344, !52, i64 13352, !5, i64 13360, !52, i64 15152, !5, i64 15168, !22, i64 45744, !106, i64 45752, !5, i64 45768, !5, i64 45784, !107, i64 45800, !21, i64 45832, !108, i64 45840, !6, i64 45848, !15, i64 45856, !5, i64 45864, !6, i64 46120, !9, i64 46124, !5, i64 46128, !6, i64 46256, !6, i64 46260, !6, i64 46264, !6, i64 46268}
!110 = !{!"DCAExssParser", !16, i64 0, !18, i64 8, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !5, i64 64, !5, i64 80}
!111 = !{!"DCAXllDecoder", !16, i64 0, !18, i64 8, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !5, i64 80, !52, i64 8672, !6, i64 8680, !6, i64 8684, !6, i64 8688, !6, i64 8692, !6, i64 8696, !6, i64 8700, !17, i64 8704, !6, i64 8712, !6, i64 8716, !22, i64 8720, !6, i64 8728, !6, i64 8732, !6, i64 8736, !5, i64 8744}
!112 = !{!"DCAContext", !40, i64 0, !16, i64 8, !109, i64 16, !110, i64 46288, !111, i64 46496, !23, i64 55504, !56, i64 77760, !52, i64 77920, !17, i64 77928, !6, i64 77936, !6, i64 77940, !6, i64 77944, !6, i64 77948, !6, i64 77952, !46, i64 77960}
!113 = !{!112, !6, i64 77944}
!114 = !{!55, !6, i64 528}
!115 = !{!"LBRChunk", !6, i64 0, !6, i64 4, !17, i64 8}
!116 = !{!"", !115, i64 0, !115, i64 16, !5, i64 32, !5, i64 112, !5, i64 160, !5, i64 208, !5, i64 256}
!117 = !{!116, !6, i64 4}
!118 = !{!116, !17, i64 8}
!119 = !{!116, !6, i64 16}
!120 = !{!116, !6, i64 20}
!121 = !{!116, !17, i64 24}
!122 = !{!115, !6, i64 0}
!123 = !{!115, !6, i64 4}
!124 = !{!115, !17, i64 8}
!125 = distinct !{!125, !11}
!126 = distinct !{!126, !11, !150}
!127 = distinct !{!127, !11}
!128 = distinct !{!128, !11}
!129 = distinct !{!129, !11}
!130 = distinct !{!130, !11, !150}
!131 = distinct !{!131, !11}
!132 = distinct !{!132, !11}
!133 = distinct !{!133, !11}
!134 = distinct !{!134, !11}
!135 = distinct !{!135, !11}
!136 = distinct !{!136, !11}
!137 = distinct !{!137, !11}
!138 = distinct !{!138, !11}
!139 = distinct !{!139, !11}
!140 = !{!55, !6, i64 344}
!141 = !{!55, !6, i64 348}
!142 = !{!55, !6, i64 652}
!143 = !{!55, !6, i64 688}
!144 = !{!55, !43, i64 56}
!145 = !{!"p2 omnipotent char", !53, i64 0}
!146 = !{!"p2 _ZTS11AVBufferRef", !53, i64 0}
!147 = !{!"p1 _ZTS12AVDictionary", !15, i64 0}
!148 = !{!"AVFrame", !5, i64 0, !5, i64 64, !145, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !44, i64 124, !43, i64 136, !43, i64 144, !44, i64 152, !6, i64 160, !15, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !146, i64 248, !6, i64 256, !54, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !43, i64 304, !147, i64 312, !6, i64 320, !49, i64 328, !49, i64 336, !43, i64 344, !43, i64 352, !43, i64 360, !43, i64 368, !15, i64 376, !46, i64 384, !43, i64 408, !6, i64 416}
!149 = !{!148, !6, i64 112}
!150 = !{!"llvm.loop.unswitch.partial.disable"}
!151 = !{!"branch_weights", i32 1, i32 1048575}
!152 = !{!148, !145, i64 96}
!153 = !{!17, !17, i64 0}
!154 = !{!56, !15, i64 152}
!155 = distinct !{!155, !11}
!156 = distinct !{!156, !11}
!157 = distinct !{!157, !59}
!158 = !{!56, !15, i64 144}
!159 = !{!23, !15, i64 22224}
!160 = !{!23, !20, i64 22216}
!161 = !{!"AVFloatDSPContext", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88}
!162 = !{!161, !15, i64 48}
!163 = !{!161, !15, i64 56}
!164 = distinct !{!164, !11}
!165 = distinct !{!165, !11}
!166 = !{!23, !6, i64 9472}
!167 = distinct !{!167, !11}
!168 = distinct !{!168, !11, !170, !12, !13}
!169 = distinct !{!169, !11, !170, !13, !12}
!170 = !{!"llvm.loop.peeled.count", i32 5}
!171 = distinct !{!171, !11, !12, !13}
!172 = distinct !{!172, !11, !13, !12}
!173 = distinct !{!173, !11}
!174 = !{!23, !19, i64 9464}
!175 = distinct !{!175, !11}
!176 = distinct !{!176, !11}
!177 = distinct !{!177, !11}
!178 = distinct !{!178, !11, !12, !13}
!179 = distinct !{!179, !11, !12, !13}
!180 = distinct !{!180, !11, !13, !12}
!181 = distinct !{!181, !11}
!182 = !{!"branch_weights", i32 4, i32 12}
!183 = distinct !{!183, !11}
!184 = distinct !{!184, !11}
!185 = distinct !{!185, !11}
!186 = distinct !{!186, !11}
!187 = distinct !{!187, !11}
!188 = distinct !{!188, !11}
!189 = distinct !{!189, !11}
!190 = distinct !{!190, !11}
!191 = distinct !{!191, !11}
!192 = distinct !{!192, !11}
!193 = distinct !{!193, !11}
!194 = distinct !{!194, !11}
!195 = distinct !{!195, !11}
!196 = distinct !{!196, !11}
!197 = distinct !{!197, !11}
!198 = distinct !{!198, !11}
!199 = distinct !{!199, !11}
!200 = distinct !{!200, !11}
!201 = distinct !{!201, !11}
end_hunk_0
