Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vp6?download=true
inline.NumInlined: 24
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumUnrolled: 40
begin_hunk_0_@vp6_coeff_order_table_init:.preheader34
bb.aw:                                            ; preds = %.preheader34.11.1
  %i.hg = trunc i64 %indvars.iv.next.11 to i8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hc, i64 64
  %i.hi = add nsw i32 %.227.11, 1
  %i.hj = sext i32 %.227.11 to i64
  %i.hk = getelementptr inbounds i8, ptr %i.hh, i64 %i.hj
  store i8 %i.hg, ptr %i.hk, align 1, !tbaa !54
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.preheader34.11.1
  %.227.11.1 = phi i32 [ %i.hi, %bb.aw ], [ %.227.11, %.preheader34.11.1 ]
  %indvars.iv.next.11.1 = add nuw nsw i64 %indvars.iv.11, 2
  br label %.preheader34.11

.preheader34.12:                                  ; preds = %bb.av, %bb.bb
  %indvars.iv.12 = phi i64 [ %indvars.iv.next.12.1, %bb.bb ], [ 1, %bb.av ] ; 4 uses
  %.12636.12 = phi i32 [ %.227.12.1, %bb.bb ], [ %.227.11, %bb.av ] ; 3 uses
  %i.hl = load ptr, ptr %i.a, align 8, !tbaa !49  ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 %indvars.iv.12
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !54
  %i.ho = icmp eq i8 %i.hn, 12
  br i1 %i.ho, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %.preheader34.12
  %i.hp = trunc i64 %indvars.iv.12 to i8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hl, i64 64
  %i.hr = add nsw i32 %.12636.12, 1
  %i.hs = sext i32 %.12636.12 to i64
  %i.ht = getelementptr inbounds i8, ptr %i.hq, i64 %i.hs
  store i8 %i.hp, ptr %i.ht, align 1, !tbaa !54
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %.preheader34.12
  %.227.12 = phi i32 [ %i.hr, %bb.ay ], [ %.12636.12, %.preheader34.12 ] ; 4 uses
  %indvars.iv.next.12 = add nuw nsw i64 %indvars.iv.12, 1 ; 3 uses
  %exitcond.12.not = icmp eq i64 %indvars.iv.next.12, 64
  br i1 %exitcond.12.not, label %.preheader34.13, label %.preheader34.12.1

.preheader34.12.1:                                ; preds = %bb.az
  %i.hu = load ptr, ptr %i.a, align 8, !tbaa !49  ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 %indvars.iv.next.12
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !54
  %i.hx = icmp eq i8 %i.hw, 12
  br i1 %i.hx, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.preheader34.12.1
  %i.hy = trunc i64 %indvars.iv.next.12 to i8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hu, i64 64
  %i.ia = add nsw i32 %.227.12, 1
  %i.ib = sext i32 %.227.12 to i64
  %i.ic = getelementptr inbounds i8, ptr %i.hz, i64 %i.ib
  store i8 %i.hy, ptr %i.ic, align 1, !tbaa !54
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.preheader34.12.1
  %.227.12.1 = phi i32 [ %i.ia, %bb.ba ], [ %.227.12, %.preheader34.12.1 ]
  %indvars.iv.next.12.1 = add nuw nsw i64 %indvars.iv.12, 2
  br label %.preheader34.12

.preheader34.13:                                  ; preds = %bb.az, %bb.bf
  %indvars.iv.13 = phi i64 [ %indvars.iv.next.13.1, %bb.bf ], [ 1, %bb.az ] ; 4 uses
  %.12636.13 = phi i32 [ %.227.13.1, %bb.bf ], [ %.227.12, %bb.az ] ; 3 uses
  %i.id = load ptr, ptr %i.a, align 8, !tbaa !49  ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 %indvars.iv.13
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !54
  %i.ig = icmp eq i8 %i.if, 13
  br i1 %i.ig, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.preheader34.13
  %i.ih = trunc i64 %indvars.iv.13 to i8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.id, i64 64
  %i.ij = add nsw i32 %.12636.13, 1
  %i.ik = sext i32 %.12636.13 to i64
  %i.il = getelementptr inbounds i8, ptr %i.ii, i64 %i.ik
  store i8 %i.ih, ptr %i.il, align 1, !tbaa !54
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.preheader34.13
  %.227.13 = phi i32 [ %i.ij, %bb.bc ], [ %.12636.13, %.preheader34.13 ] ; 4 uses
  %indvars.iv.next.13 = add nuw nsw i64 %indvars.iv.13, 1 ; 3 uses
  %exitcond.13.not = icmp eq i64 %indvars.iv.next.13, 64
  br i1 %exitcond.13.not, label %.preheader34.14, label %.preheader34.13.1

.preheader34.13.1:                                ; preds = %bb.bd
  %i.im = load ptr, ptr %i.a, align 8, !tbaa !49  ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 %indvars.iv.next.13
  %i.io = load i8, ptr %i.in, align 1, !tbaa !54
  %i.ip = icmp eq i8 %i.io, 13
  br i1 %i.ip, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.preheader34.13.1
  %i.iq = trunc i64 %indvars.iv.next.13 to i8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.im, i64 64
  %i.is = add nsw i32 %.227.13, 1
  %i.it = sext i32 %.227.13 to i64
  %i.iu = getelementptr inbounds i8, ptr %i.ir, i64 %i.it
  store i8 %i.iq, ptr %i.iu, align 1, !tbaa !54
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.preheader34.13.1
  %.227.13.1 = phi i32 [ %i.is, %bb.be ], [ %.227.13, %.preheader34.13.1 ]
  %indvars.iv.next.13.1 = add nuw nsw i64 %indvars.iv.13, 2
  br label %.preheader34.13

.preheader34.14:                                  ; preds = %bb.bd, %bb.bj
  %indvars.iv.14 = phi i64 [ %indvars.iv.next.14.1, %bb.bj ], [ 1, %bb.bd ] ; 4 uses
  %.12636.14 = phi i32 [ %.227.14.1, %bb.bj ], [ %.227.13, %bb.bd ] ; 3 uses
  %i.iv = load ptr, ptr %i.a, align 8, !tbaa !49  ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 %indvars.iv.14
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !54
  %i.iy = icmp eq i8 %i.ix, 14
  br i1 %i.iy, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %.preheader34.14
  %i.iz = trunc i64 %indvars.iv.14 to i8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iv, i64 64
  %i.jb = add nsw i32 %.12636.14, 1
  %i.jc = sext i32 %.12636.14 to i64
  %i.jd = getelementptr inbounds i8, ptr %i.ja, i64 %i.jc
  store i8 %i.iz, ptr %i.jd, align 1, !tbaa !54
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %.preheader34.14
  %.227.14 = phi i32 [ %i.jb, %bb.bg ], [ %.12636.14, %.preheader34.14 ] ; 4 uses
  %indvars.iv.next.14 = add nuw nsw i64 %indvars.iv.14, 1 ; 3 uses
  %exitcond.14.not = icmp eq i64 %indvars.iv.next.14, 64
  br i1 %exitcond.14.not, label %.preheader34.15, label %.preheader34.14.1

.preheader34.14.1:                                ; preds = %bb.bh
  %i.je = load ptr, ptr %i.a, align 8, !tbaa !49  ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 %indvars.iv.next.14
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !54
  %i.jh = icmp eq i8 %i.jg, 14
  br i1 %i.jh, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %.preheader34.14.1
  %i.ji = trunc i64 %indvars.iv.next.14 to i8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.je, i64 64
  %i.jk = add nsw i32 %.227.14, 1
  %i.jl = sext i32 %.227.14 to i64
  %i.jm = getelementptr inbounds i8, ptr %i.jj, i64 %i.jl
  store i8 %i.ji, ptr %i.jm, align 1, !tbaa !54
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.preheader34.14.1
  %.227.14.1 = phi i32 [ %i.jk, %bb.bi ], [ %.227.14, %.preheader34.14.1 ]
  %indvars.iv.next.14.1 = add nuw nsw i64 %indvars.iv.14, 2
  br label %.preheader34.14

.preheader34.15:                                  ; preds = %bb.bh, %bb.bn
  %indvars.iv.15 = phi i64 [ %indvars.iv.next.15.1, %bb.bn ], [ 1, %bb.bh ] ; 4 uses
  %.12636.15 = phi i32 [ %.227.15.1, %bb.bn ], [ %.227.14, %bb.bh ] ; 3 uses
  %i.jn = load ptr, ptr %i.a, align 8, !tbaa !49  ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 %indvars.iv.15
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !54
  %i.jq = icmp eq i8 %i.jp, 15
  br i1 %i.jq, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.preheader34.15
  %i.jr = trunc i64 %indvars.iv.15 to i8
  %i.js = getelementptr inbounds nuw i8, ptr %i.jn, i64 64
  %i.jt = add nsw i32 %.12636.15, 1
  %i.ju = sext i32 %.12636.15 to i64
  %i.jv = getelementptr inbounds i8, ptr %i.js, i64 %i.ju
  store i8 %i.jr, ptr %i.jv, align 1, !tbaa !54
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.preheader34.15
  %.227.15 = phi i32 [ %i.jt, %bb.bk ], [ %.12636.15, %.preheader34.15 ] ; 3 uses
  %indvars.iv.next.15 = add nuw nsw i64 %indvars.iv.15, 1 ; 3 uses
  %exitcond.15.not = icmp eq i64 %indvars.iv.next.15, 64
  br i1 %exitcond.15.not, label %.preheader33, label %.preheader34.15.1

.preheader34.15.1:                                ; preds = %bb.bl
  %i.jw = load ptr, ptr %i.a, align 8, !tbaa !49  ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 %indvars.iv.next.15
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !54
  %i.jz = icmp eq i8 %i.jy, 15
  br i1 %i.jz, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.preheader34.15.1
  %i.ka = trunc i64 %indvars.iv.next.15 to i8
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jw, i64 64
  %i.kc = add nsw i32 %.227.15, 1
  %i.kd = sext i32 %.227.15 to i64
  %i.ke = getelementptr inbounds i8, ptr %i.kb, i64 %i.kd
  store i8 %i.ka, ptr %i.ke, align 1, !tbaa !54
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.preheader34.15.1
  %.227.15.1 = phi i32 [ %i.kc, %bb.bm ], [ %.227.15, %.preheader34.15.1 ]
  %indvars.iv.next.15.1 = add nuw nsw i64 %indvars.iv.15, 2
  br label %.preheader34.15

.preheader33:                                     ; preds = %bb.bl
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 736
  br label %.preheader

.preheader:                                       ; preds = %.preheader33, %.loopexit
  %indvars.iv52 = phi i64 [ 0, %.preheader33 ], [ %indvars.iv.next53, %.loopexit ] ; 2 uses
  %indvars.iv50 = phi i64 [ 1, %.preheader33 ], [ %indvars.iv.next51, %.loopexit ] ; 5 uses
  %i.kg = load ptr, ptr %i.a, align 8, !tbaa !49  ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 64 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %indvars.iv50, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %n.vec = and i64 %indvars.iv50, 9223372036854775800 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %3, %vector.body ]
  %vec.phi58 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %4, %vector.body ]
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 %index ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 4
  %wide.load = load <4 x i8>, ptr %i.ki, align 1, !tbaa !54
  %wide.load59 = load <4 x i8>, ptr %i.kj, align 1, !tbaa !54
  %1 = zext <4 x i8> %wide.load to <4 x i32>
  %2 = zext <4 x i8> %wide.load59 to <4 x i32>
  %3 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi, <4 x i32> %1) ; 2 uses
  %4 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi58, <4 x i32> %2) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kk = icmp eq i64 %index.next, %n.vec
  br i1 %i.kk, label %middle.block, label %vector.body, !llvm.loop !121

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %3, <4 x i32> %4)
  %5 = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %indvars.iv50, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv44.ph.a = phi i64 [ 0, %.preheader ], [ %n.vec, %middle.block ]
  %.040.ph = phi i32 [ 0, %.preheader ], [ %5, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %scalar.ph ], [ %indvars.iv44.ph.a, %scalar.ph.preheader ] ; 2 uses
  %.040 = phi i32 [ %spec.select, %scalar.ph ], [ %.040.ph, %scalar.ph.preheader ]
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kh, i64 %indvars.iv44
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !54
  %6 = zext i8 %i.km to i32
  %spec.select = tail call i32 @llvm.umax.i32(i32 %.040, i32 %6) ; 2 uses
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %exitcond49.not = icmp eq i64 %indvars.iv.next45, %indvars.iv50
  br i1 %exitcond49.not, label %.loopexit, label %scalar.ph, !llvm.loop !122

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %spec.select.lcssa = phi i32 [ %5, %middle.block ], [ %spec.select, %scalar.ph ]
  %i.kn = load i32, ptr %i.kf, align 16, !tbaa !78
  %i.ko = icmp sgt i32 %i.kn, 6
  %7 = zext i1 %i.ko to i32
  %spec.select32 = add nuw nsw i32 %spec.select.lcssa, %7
  %8 = trunc i32 %spec.select32 to i8
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kg, i64 128
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 %indvars.iv52
  store i8 %8, ptr %i.kq, align 1, !tbaa !54
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  %exitcond57.not = icmp eq i64 %indvars.iv.next53, 64
  br i1 %exitcond57.not, label %bb.bo, label %.preheader, !llvm.loop !123

bb.bo:                                            ; preds = %.loopexit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 256) i32 @vp56_rac_gets_nn(ptr nofree noundef captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %.promoted.i = load i32, ptr %0, align 8, !tbaa !51 ; 2 uses
  %.promoted4.i = load i32, ptr %i.a, align 4, !tbaa !52
  %.promoted6.i = load i32, ptr %i.b, align 8, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.e = sext i32 %.promoted.i to i64
  %i.f = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !54
  %i.h = zext i8 %i.g to i32                      ; 3 uses
  %i.i = shl i32 %.promoted.i, %i.h               ; 3 uses
  store i32 %i.i, ptr %0, align 8, !tbaa !51
  %i.j = shl i32 %.promoted6.i, %i.h              ; 3 uses
  %i.k = add nsw i32 %.promoted4.i, %i.h          ; 5 uses
  %i.l = icmp sgt i32 %i.k, -1
  br i1 %i.l, label %bb.b, label %vpx_rac_renorm.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !55   ; 3 uses
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.o = icmp ult ptr %i.m, %i.n
  br i1 %i.o, label %bb.c, label %vpx_rac_renorm.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  store ptr %i.p, ptr %i.c, align 8, !tbaa !57
  %i.q = load i16, ptr %i.m, align 1, !tbaa !54
  %i.r = tail call i16 @llvm.bswap.i16(i16 %i.q)
  %i.s = zext i16 %i.r to i32
  %i.t = shl i32 %i.s, %i.k
  %i.u = or i32 %i.t, %i.j
  %i.v = add nsw i32 %i.k, -16
  br label %vpx_rac_renorm.exit.i.i

vpx_rac_renorm.exit.i.i:                          ; preds = %bb.c, %bb.b, %bb.a
  %.018.i.i.i = phi i32 [ %i.v, %bb.c ], [ %i.k, %bb.b ], [ %i.k, %bb.a ] ; 2 uses
  %.0.i.i.i = phi i32 [ %i.u, %bb.c ], [ %i.j, %bb.b ], [ %i.j, %bb.a ] ; 2 uses
  store i32 %.018.i.i.i, ptr %i.a, align 4, !tbaa !52
  %i.w = add nsw i32 %i.i, 1
  %i.x = ashr i32 %i.w, 1                         ; 3 uses
  %i.y = shl i32 %i.x, 16                         ; 2 uses
  %.not21 = icmp ult i32 %.0.i.i.i, %i.y          ; 3 uses
  %i.z = sub nsw i32 %i.i, %i.x
  %.sink.i = select i1 %.not21, i32 %i.x, i32 %i.z ; 2 uses
  %i.aa = select i1 %.not21, i32 0, i32 %i.y
  %.0.i.i = sub nuw i32 %.0.i.i.i, %i.aa          ; 2 uses
  store i32 %.0.i.i, ptr %i.b, align 8, !tbaa !53
  %i.ab = sext i32 %.sink.i to i64
  %i.ac = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !54
  %i.ae = zext i8 %i.ad to i32                    ; 3 uses
  %i.af = shl i32 %.sink.i, %i.ae                 ; 3 uses
  store i32 %i.af, ptr %0, align 8, !tbaa !51
  %i.ag = shl i32 %.0.i.i, %i.ae                  ; 3 uses
  %i.ah = add nsw i32 %.018.i.i.i, %i.ae          ; 5 uses
  %i.ai = icmp sgt i32 %i.ah, -1
  br i1 %i.ai, label %bb.d, label %vpx_rac_renorm.exit.i.i.1

bb.d:                                             ; preds = %vpx_rac_renorm.exit.i.i
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !55  ; 3 uses
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.al = icmp ult ptr %i.aj, %i.ak
  br i1 %i.al, label %bb.e, label %vpx_rac_renorm.exit.i.i.1

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store ptr %i.am, ptr %i.c, align 8, !tbaa !57
  %i.an = load i16, ptr %i.aj, align 1, !tbaa !54
  %i.ao = tail call i16 @llvm.bswap.i16(i16 %i.an)
  %i.ap = zext i16 %i.ao to i32
  %i.aq = shl i32 %i.ap, %i.ah
  %i.ar = or i32 %i.aq, %i.ag
  %i.as = add nsw i32 %i.ah, -16
  br label %vpx_rac_renorm.exit.i.i.1

vpx_rac_renorm.exit.i.i.1:                        ; preds = %bb.e, %bb.d, %vpx_rac_renorm.exit.i.i
  %.018.i.i.i.1 = phi i32 [ %i.as, %bb.e ], [ %i.ah, %bb.d ], [ %i.ah, %vpx_rac_renorm.exit.i.i ] ; 2 uses
  %.0.i.i.i.1 = phi i32 [ %i.ar, %bb.e ], [ %i.ag, %bb.d ], [ %i.ag, %vpx_rac_renorm.exit.i.i ] ; 2 uses
  store i32 %.018.i.i.i.1, ptr %i.a, align 4, !tbaa !52
  %i.at = add nsw i32 %i.af, 1
  %i.au = ashr i32 %i.at, 1                       ; 3 uses
  %i.av = shl i32 %i.au, 16                       ; 2 uses
  %i.aw = icmp uge i32 %.0.i.i.i.1, %i.av         ; 3 uses
  %i.ax = sub nsw i32 %i.af, %i.au
  %.sink.i.1 = select i1 %i.aw, i32 %i.ax, i32 %i.au ; 2 uses
  %i.ay = select i1 %i.aw, i32 %i.av, i32 0
  %.0.i.i.1 = sub nuw i32 %.0.i.i.i.1, %i.ay      ; 2 uses
  store i32 %.0.i.i.1, ptr %i.b, align 8, !tbaa !53
  %i.az = sext i32 %.sink.i.1 to i64
  %i.ba = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !54
  %i.bc = zext i8 %i.bb to i32                    ; 3 uses
  %i.bd = shl i32 %.sink.i.1, %i.bc               ; 3 uses
  store i32 %i.bd, ptr %0, align 8, !tbaa !51
  %i.be = shl i32 %.0.i.i.1, %i.bc                ; 3 uses
  %i.bf = add nsw i32 %.018.i.i.i.1, %i.bc        ; 5 uses
  %i.bg = icmp sgt i32 %i.bf, -1
  br i1 %i.bg, label %bb.f, label %vpx_rac_renorm.exit.i.i.2

bb.f:                                             ; preds = %vpx_rac_renorm.exit.i.i.1
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !55  ; 3 uses
  %i.bi = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.bj = icmp ult ptr %i.bh, %i.bi
  br i1 %i.bj, label %bb.g, label %vpx_rac_renorm.exit.i.i.2

bb.g:                                             ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  store ptr %i.bk, ptr %i.c, align 8, !tbaa !57
  %i.bl = load i16, ptr %i.bh, align 1, !tbaa !54
  %i.bm = tail call i16 @llvm.bswap.i16(i16 %i.bl)
  %i.bn = zext i16 %i.bm to i32
  %i.bo = shl i32 %i.bn, %i.bf
  %i.bp = or i32 %i.bo, %i.be
  %i.bq = add nsw i32 %i.bf, -16
  br label %vpx_rac_renorm.exit.i.i.2

vpx_rac_renorm.exit.i.i.2:                        ; preds = %bb.g, %bb.f, %vpx_rac_renorm.exit.i.i.1
  %.018.i.i.i.2 = phi i32 [ %i.bq, %bb.g ], [ %i.bf, %bb.f ], [ %i.bf, %vpx_rac_renorm.exit.i.i.1 ] ; 2 uses
  %.0.i.i.i.2 = phi i32 [ %i.bp, %bb.g ], [ %i.be, %bb.f ], [ %i.be, %vpx_rac_renorm.exit.i.i.1 ] ; 2 uses
  store i32 %.018.i.i.i.2, ptr %i.a, align 4, !tbaa !52
  %i.br = add nsw i32 %i.bd, 1
  %i.bs = ashr i32 %i.br, 1                       ; 3 uses
  %i.bt = shl i32 %i.bs, 16                       ; 2 uses
  %.not22 = icmp ult i32 %.0.i.i.i.2, %i.bt       ; 3 uses
  %i.bu = sub nsw i32 %i.bd, %i.bs
  %.sink.i.2 = select i1 %.not22, i32 %i.bs, i32 %i.bu ; 2 uses
  %i.bv = select i1 %.not22, i32 0, i32 %i.bt
  %.0.i.i.2 = sub nuw i32 %.0.i.i.i.2, %i.bv      ; 2 uses
  store i32 %.0.i.i.2, ptr %i.b, align 8, !tbaa !53
  %i.bw = sext i32 %.sink.i.2 to i64
  %i.bx = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !54
  %i.bz = zext i8 %i.by to i32                    ; 3 uses
  %i.ca = shl i32 %.sink.i.2, %i.bz               ; 3 uses
  store i32 %i.ca, ptr %0, align 8, !tbaa !51
  %i.cb = shl i32 %.0.i.i.2, %i.bz                ; 3 uses
  %i.cc = add nsw i32 %.018.i.i.i.2, %i.bz        ; 5 uses
  %i.cd = icmp sgt i32 %i.cc, -1
  br i1 %i.cd, label %bb.h, label %vpx_rac_renorm.exit.i.i.3

bb.h:                                             ; preds = %vpx_rac_renorm.exit.i.i.2
  %i.ce = load ptr, ptr %i.c, align 8, !tbaa !55  ; 3 uses
  %i.cf = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.cg = icmp ult ptr %i.ce, %i.cf
  br i1 %i.cg, label %bb.i, label %vpx_rac_renorm.exit.i.i.3

bb.i:                                             ; preds = %bb.h
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  store ptr %i.ch, ptr %i.c, align 8, !tbaa !57
  %i.ci = load i16, ptr %i.ce, align 1, !tbaa !54
  %i.cj = tail call i16 @llvm.bswap.i16(i16 %i.ci)
  %i.ck = zext i16 %i.cj to i32
  %i.cl = shl i32 %i.ck, %i.cc
  %i.cm = or i32 %i.cl, %i.cb
  %i.cn = add nsw i32 %i.cc, -16
  br label %vpx_rac_renorm.exit.i.i.3

vpx_rac_renorm.exit.i.i.3:                        ; preds = %bb.i, %bb.h, %vpx_rac_renorm.exit.i.i.2
  %.018.i.i.i.3 = phi i32 [ %i.cn, %bb.i ], [ %i.cc, %bb.h ], [ %i.cc, %vpx_rac_renorm.exit.i.i.2 ] ; 2 uses
  %.0.i.i.i.3 = phi i32 [ %i.cm, %bb.i ], [ %i.cb, %bb.h ], [ %i.cb, %vpx_rac_renorm.exit.i.i.2 ] ; 2 uses
  store i32 %.018.i.i.i.3, ptr %i.a, align 4, !tbaa !52
  %i.co = add nsw i32 %i.ca, 1
  %i.cp = ashr i32 %i.co, 1                       ; 3 uses
  %i.cq = shl i32 %i.cp, 16                       ; 2 uses
  %i.cr = icmp uge i32 %.0.i.i.i.3, %i.cq         ; 3 uses
  %i.cs = sub nsw i32 %i.ca, %i.cp
  %.sink.i.3 = select i1 %i.cr, i32 %i.cs, i32 %i.cp ; 2 uses
  %i.ct = select i1 %i.cr, i32 %i.cq, i32 0
  %.0.i.i.3 = sub nuw i32 %.0.i.i.i.3, %i.ct      ; 2 uses
  store i32 %.0.i.i.3, ptr %i.b, align 8, !tbaa !53
  %i.cu = sext i32 %.sink.i.3 to i64
  %i.cv = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !54
  %i.cx = zext i8 %i.cw to i32                    ; 3 uses
  %i.cy = shl i32 %.sink.i.3, %i.cx               ; 3 uses
  store i32 %i.cy, ptr %0, align 8, !tbaa !51
  %i.cz = shl i32 %.0.i.i.3, %i.cx                ; 3 uses
  %i.da = add nsw i32 %.018.i.i.i.3, %i.cx        ; 5 uses
  %i.db = icmp sgt i32 %i.da, -1
  br i1 %i.db, label %bb.j, label %vpx_rac_renorm.exit.i.i.4

bb.j:                                             ; preds = %vpx_rac_renorm.exit.i.i.3
  %i.dc = load ptr, ptr %i.c, align 8, !tbaa !55  ; 3 uses
  %i.dd = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.de = icmp ult ptr %i.dc, %i.dd
  br i1 %i.de, label %bb.k, label %vpx_rac_renorm.exit.i.i.4

bb.k:                                             ; preds = %bb.j
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 2
  store ptr %i.df, ptr %i.c, align 8, !tbaa !57
  %i.dg = load i16, ptr %i.dc, align 1, !tbaa !54
  %i.dh = tail call i16 @llvm.bswap.i16(i16 %i.dg)
  %i.di = zext i16 %i.dh to i32
  %i.dj = shl i32 %i.di, %i.da
  %i.dk = or i32 %i.dj, %i.cz
  %i.dl = add nsw i32 %i.da, -16
  br label %vpx_rac_renorm.exit.i.i.4

vpx_rac_renorm.exit.i.i.4:                        ; preds = %bb.k, %bb.j, %vpx_rac_renorm.exit.i.i.3
  %.018.i.i.i.4 = phi i32 [ %i.dl, %bb.k ], [ %i.da, %bb.j ], [ %i.da, %vpx_rac_renorm.exit.i.i.3 ] ; 2 uses
  %.0.i.i.i.4 = phi i32 [ %i.dk, %bb.k ], [ %i.cz, %bb.j ], [ %i.cz, %vpx_rac_renorm.exit.i.i.3 ] ; 2 uses
  store i32 %.018.i.i.i.4, ptr %i.a, align 4, !tbaa !52
  %i.dm = add nsw i32 %i.cy, 1
  %i.dn = ashr i32 %i.dm, 1                       ; 3 uses
  %i.do = shl i32 %i.dn, 16                       ; 2 uses
  %.not23 = icmp ult i32 %.0.i.i.i.4, %i.do       ; 3 uses
  %i.dp = sub nsw i32 %i.cy, %i.dn
  %.sink.i.4 = select i1 %.not23, i32 %i.dn, i32 %i.dp ; 2 uses
  %i.dq = select i1 %.not23, i32 0, i32 %i.do
  %.0.i.i.4 = sub nuw i32 %.0.i.i.i.4, %i.dq      ; 2 uses
  store i32 %.0.i.i.4, ptr %i.b, align 8, !tbaa !53
  %i.dr = sext i32 %.sink.i.4 to i64
  %i.ds = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !54
  %i.du = zext i8 %i.dt to i32                    ; 3 uses
  %i.dv = shl i32 %.sink.i.4, %i.du               ; 3 uses
  store i32 %i.dv, ptr %0, align 8, !tbaa !51
  %i.dw = shl i32 %.0.i.i.4, %i.du                ; 3 uses
  %i.dx = add nsw i32 %.018.i.i.i.4, %i.du        ; 5 uses
  %i.dy = icmp sgt i32 %i.dx, -1
  br i1 %i.dy, label %bb.l, label %vpx_rac_renorm.exit.i.i.5

bb.l:                                             ; preds = %vpx_rac_renorm.exit.i.i.4
  %i.dz = load ptr, ptr %i.c, align 8, !tbaa !55  ; 3 uses
  %i.ea = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.eb = icmp ult ptr %i.dz, %i.ea
  br i1 %i.eb, label %bb.m, label %vpx_rac_renorm.exit.i.i.5

bb.m:                                             ; preds = %bb.l
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 2
  store ptr %i.ec, ptr %i.c, align 8, !tbaa !57
  %i.ed = load i16, ptr %i.dz, align 1, !tbaa !54
  %i.ee = tail call i16 @llvm.bswap.i16(i16 %i.ed)
  %i.ef = zext i16 %i.ee to i32
  %i.eg = shl i32 %i.ef, %i.dx
  %i.eh = or i32 %i.eg, %i.dw
  %i.ei = add nsw i32 %i.dx, -16
  br label %vpx_rac_renorm.exit.i.i.5

vpx_rac_renorm.exit.i.i.5:                        ; preds = %bb.m, %bb.l, %vpx_rac_renorm.exit.i.i.4
  %.018.i.i.i.5 = phi i32 [ %i.ei, %bb.m ], [ %i.dx, %bb.l ], [ %i.dx, %vpx_rac_renorm.exit.i.i.4 ] ; 2 uses
  %.0.i.i.i.5 = phi i32 [ %i.eh, %bb.m ], [ %i.dw, %bb.l ], [ %i.dw, %vpx_rac_renorm.exit.i.i.4 ] ; 2 uses
  store i32 %.018.i.i.i.5, ptr %i.a, align 4, !tbaa !52
  %i.ej = add nsw i32 %i.dv, 1
  %i.ek = ashr i32 %i.ej, 1                       ; 3 uses
  %i.el = shl i32 %i.ek, 16                       ; 2 uses
  %i.em = icmp uge i32 %.0.i.i.i.5, %i.el         ; 3 uses
  %i.en = sub nsw i32 %i.dv, %i.ek
  %.sink.i.5 = select i1 %i.em, i32 %i.en, i32 %i.ek ; 2 uses
  %i.eo = select i1 %i.em, i32 %i.el, i32 0
  %.0.i.i.5 = sub nuw i32 %.0.i.i.i.5, %i.eo      ; 2 uses
  store i32 %.0.i.i.5, ptr %i.b, align 8, !tbaa !53
  %i.ep = sext i32 %.sink.i.5 to i64
  %i.eq = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !54
  %i.es = zext i8 %i.er to i32                    ; 3 uses
  %i.et = shl i32 %.sink.i.5, %i.es               ; 3 uses
  store i32 %i.et, ptr %0, align 8, !tbaa !51
  %i.eu = shl i32 %.0.i.i.5, %i.es                ; 3 uses
  %i.ev = add nsw i32 %.018.i.i.i.5, %i.es        ; 5 uses
  %i.ew = icmp sgt i32 %i.ev, -1
  br i1 %i.ew, label %bb.n, label %vpx_rac_renorm.exit.i.i.6

bb.n:                                             ; preds = %vpx_rac_renorm.exit.i.i.5
  %i.ex = load ptr, ptr %i.c, align 8, !tbaa !55  ; 3 uses
  %i.ey = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.ez = icmp ult ptr %i.ex, %i.ey
  br i1 %i.ez, label %bb.o, label %vpx_rac_renorm.exit.i.i.6

bb.o:                                             ; preds = %bb.n
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 2
  store ptr %i.fa, ptr %i.c, align 8, !tbaa !57
  %i.fb = load i16, ptr %i.ex, align 1, !tbaa !54
  %i.fc = tail call i16 @llvm.bswap.i16(i16 %i.fb)
  %i.fd = zext i16 %i.fc to i32
  %i.fe = shl i32 %i.fd, %i.ev
  %i.ff = or i32 %i.fe, %i.eu
  %i.fg = add nsw i32 %i.ev, -16
  br label %vpx_rac_renorm.exit.i.i.6

vpx_rac_renorm.exit.i.i.6:                        ; preds = %bb.o, %bb.n, %vpx_rac_renorm.exit.i.i.5
  %.018.i.i.i.6 = phi i32 [ %i.fg, %bb.o ], [ %i.ev, %bb.n ], [ %i.ev, %vpx_rac_renorm.exit.i.i.5 ]
  %.0.i.i.i.6 = phi i32 [ %i.ff, %bb.o ], [ %i.eu, %bb.n ], [ %i.eu, %vpx_rac_renorm.exit.i.i.5 ] ; 2 uses
  %i.fh = select i1 %.not21, i32 0, i32 2
  %i.fi = zext i1 %i.aw to i32
  %i.fj = or disjoint i32 %i.fh, %i.fi
  %i.fk = shl nuw nsw i32 %i.fj, 2
  %i.fl = select i1 %.not22, i32 0, i32 2
  %i.fm = or disjoint i32 %i.fk, %i.fl
  %i.fn = zext i1 %i.cr to i32
  %i.fo = or disjoint i32 %i.fm, %i.fn
  %i.fp = shl nuw nsw i32 %i.fo, 2
  %i.fq = select i1 %.not23, i32 0, i32 2
  %i.fr = or disjoint i32 %i.fp, %i.fq
  %i.fs = zext i1 %i.em to i32
  %i.ft = or disjoint i32 %i.fr, %i.fs
  store i32 %.018.i.i.i.6, ptr %i.a, align 4, !tbaa !52
  %i.fu = add nsw i32 %i.et, 1
  %i.fv = ashr i32 %i.fu, 1                       ; 3 uses
  %i.fw = shl i32 %i.fv, 16                       ; 2 uses
  %.not24 = icmp ult i32 %.0.i.i.i.6, %i.fw       ; 3 uses
  %i.fx = sub nsw i32 %i.et, %i.fv
  %.sink.i.6 = select i1 %.not24, i32 %i.fv, i32 %i.fx
  %i.fy = select i1 %.not24, i32 0, i32 %i.fw
  %.0.i.i.6 = sub nuw i32 %.0.i.i.i.6, %i.fy
  store i32 %.sink.i.6, ptr %0, align 8, !tbaa !51
  store i32 %.0.i.i.6, ptr %i.b, align 8, !tbaa !53
  %i.fz = shl nuw nsw i32 %i.ft, 2
  %i.ga = select i1 %.not24, i32 0, i32 2
  %i.gb = or disjoint i32 %i.fz, %i.ga            ; 2 uses
  %.not = icmp eq i32 %i.gb, 0
  %i.gc = zext i1 %.not to i32
  %i.gd = or disjoint i32 %i.gb, %i.gc
  ret i32 %i.gd
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare void @ff_vlc_free(ptr noundef) local_unnamed_addr #1

declare i32 @ff_huff_build_tree(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @vp6_huff_cmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !76
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !76
  %i.e = sub i32 %i.b, %i.d
  %i.f = shl i32 %i.e, 4
  %i.g = load i16, ptr %1, align 4, !tbaa !126
  %i.h = sext i16 %i.g to i32
  %i.i = load i16, ptr %0, align 4, !tbaa !126
  %i.j = sext i16 %i.i to i32
  %i.k = add i32 %i.f, %i.h
  %i.l = sub i32 %i.k, %i.j
  ret i32 %i.l
}

declare void @ff_vp56_init_dequant(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @ff_set_dimensions(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ff_vpx_init_range_decoder(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 -1094995529, 1) i32 @vp6_parse_coeff(ptr nofree noundef captures(none) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83   ; 42 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3208
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !56   ; 17 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 17 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !55   ; 17 uses
  %.not.i173 = icmp ugt ptr %i.g, %i.i
  br i1 %.not.i173, label %vpx_rac_is_end.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !52
  %i.l = icmp sgt i32 %i.k, -1
  br i1 %i.l, label %bb.c, label %vpx_rac_is_end.exit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !129
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 4, !tbaa !129
  br label %vpx_rac_is_end.exit

vpx_rac_is_end.exit:                              ; preds = %bb.a, %bb.b, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.q = load i32, ptr %i.p, align 4, !tbaa !129
  %i.r = icmp slt i32 %i.q, 11
  br i1 %i.r, label %.preheader190, label %bb.d

.preheader190:                                    ; preds = %vpx_rac_is_end.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 230
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 1188
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 17 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 22 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 1548
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 814
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 252
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1696
  %.pre = load ptr, ptr %i.t, align 16, !tbaa !130 ; 2 uses
  br label %bb.e

bb.d:                                             ; preds = %vpx_rac_is_end.exit
  %i.ag = load ptr, ptr %0, align 16, !tbaa !77
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ag, i32 noundef 16, ptr noundef nonnull @.str.7) #13
  br label %.loopexit191

bb.e:                                             ; preds = %.preheader190, %.loopexit189
  %i.ah = phi ptr [ %i.i, %.preheader190 ], [ %i.akh, %.loopexit189 ]
  %i.ai = phi ptr [ %i.i, %.preheader190 ], [ %i.aki, %.loopexit189 ]
  %i.aj = phi ptr [ %i.i, %.preheader190 ], [ %i.akj, %.loopexit189 ]
  %i.ak = phi ptr [ %i.i, %.preheader190 ], [ %i.akk, %.loopexit189 ]
  %i.al = phi ptr [ %i.i, %.preheader190 ], [ %i.akl, %.loopexit189 ]
  %i.am = phi ptr [ %i.i, %.preheader190 ], [ %i.akm, %.loopexit189 ]
  %i.an = phi ptr [ %i.i, %.preheader190 ], [ %i.akn, %.loopexit189 ]
  %i.ao = phi ptr [ %i.i, %.preheader190 ], [ %i.ako, %.loopexit189 ]
  %i.ap = phi ptr [ %i.i, %.preheader190 ], [ %i.akp, %.loopexit189 ]
  %i.aq = phi ptr [ %i.i, %.preheader190 ], [ %i.akq, %.loopexit189 ]
  %i.ar = phi ptr [ %i.i, %.preheader190 ], [ %i.akr, %.loopexit189 ]
  %i.as = phi ptr [ %i.i, %.preheader190 ], [ %i.aks, %.loopexit189 ]
  %i.at = phi ptr [ %i.i, %.preheader190 ], [ %i.akt, %.loopexit189 ]
  %i.au = phi ptr [ %i.i, %.preheader190 ], [ %i.aku, %.loopexit189 ]
  %i.av = phi ptr [ %i.i, %.preheader190 ], [ %i.akv, %.loopexit189 ]
  %i.aw = phi ptr [ %i.i, %.preheader190 ], [ %i.akw, %.loopexit189 ]
  %indvars.iv228 = phi i64 [ 0, %.preheader190 ], [ %indvars.iv.next229, %.loopexit189 ] ; 6 uses
  %.094219 = phi i32 [ 0, %.preheader190 ], [ %spec.select, %.loopexit189 ]
  %i.ax = icmp samesign ugt i64 %indvars.iv228, 3
  %spec.select = select i1 %i.ax, i32 1, i32 %.094219 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr @ff_vp56_b6to4, i64 %indvars.iv228
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !54
  %i.ba = zext i8 %i.az to i64
  %i.bb = getelementptr inbounds nuw [12 x i8], ptr %i.s, i64 %i.ba ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 4, !tbaa !132
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv228 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !66
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [12 x i8], ptr %.pre, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 4, !tbaa !132
  %i.bj = zext i8 %i.bi to i64
  %i.bk = zext nneg i32 %spec.select to i64       ; 3 uses
  %i.bl = getelementptr inbounds nuw [11 x i8], ptr %i.v, i64 %i.bk
  %i.bm = getelementptr inbounds nuw [180 x i8], ptr %i.w, i64 %i.bk
  %i.bn = getelementptr inbounds nuw [5 x i8], ptr %i.bm, i64 %i.bd
  %i.bo = getelementptr inbounds nuw [5 x i8], ptr %i.bn, i64 %i.bj
  %i.bp = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %indvars.iv228 ; 2 uses
  %i.bq = getelementptr inbounds nuw [198 x i8], ptr %i.ad, i64 %i.bk
  %.pre233.pre = load i32, ptr %i.b, align 8, !tbaa !51
  %.pre234.pre = load i32, ptr %i.x, align 4, !tbaa !52
  %.pre235.pre = load i32, ptr %i.y, align 8, !tbaa !53
  br label %bb.f

bb.f:                                             ; preds = %bb.ay, %bb.e
  %.pre235 = phi i32 [ %.pre235.pre, %bb.e ], [ %.pre235244, %bb.ay ] ; 2 uses
  %.pre234 = phi i32 [ %.pre234.pre, %bb.e ], [ %.pre234242, %bb.ay ] ; 2 uses
  %.pre233 = phi i32 [ %.pre233.pre, %bb.e ], [ %.pre233240, %bb.ay ] ; 3 uses
  %i.br = phi ptr [ %i.ah, %bb.e ], [ %i.aji, %bb.ay ] ; 2 uses
  %i.bs = phi ptr [ %i.ai, %bb.e ], [ %i.ajj, %bb.ay ] ; 2 uses
  %i.bt = phi ptr [ %i.aj, %bb.e ], [ %i.ajk, %bb.ay ] ; 2 uses
  %i.bu = phi ptr [ %i.ak, %bb.e ], [ %i.ajl, %bb.ay ] ; 2 uses
  %i.bv = phi ptr [ %i.al, %bb.e ], [ %i.ajm, %bb.ay ] ; 2 uses
  %i.bw = phi ptr [ %i.am, %bb.e ], [ %i.ajn, %bb.ay ] ; 2 uses
  %i.bx = phi ptr [ %i.an, %bb.e ], [ %i.ajo, %bb.ay ] ; 2 uses
  %i.by = phi ptr [ %i.ao, %bb.e ], [ %i.ajp, %bb.ay ] ; 2 uses
  %i.bz = phi ptr [ %i.ap, %bb.e ], [ %i.ajq, %bb.ay ] ; 2 uses
  %i.ca = phi ptr [ %i.aq, %bb.e ], [ %i.ajr, %bb.ay ] ; 2 uses
  %i.cb = phi ptr [ %i.ar, %bb.e ], [ %i.ajs, %bb.ay ] ; 2 uses
  %i.cc = phi ptr [ %i.as, %bb.e ], [ %i.ajt, %bb.ay ] ; 2 uses
  %i.cd = phi ptr [ %i.at, %bb.e ], [ %i.aju, %bb.ay ] ; 2 uses
  %i.ce = phi ptr [ %i.au, %bb.e ], [ %i.ajv, %bb.ay ] ; 2 uses
  %i.cf = phi ptr [ %i.av, %bb.e ], [ %i.ajw, %bb.ay ] ; 2 uses
  %i.cg = phi ptr [ %i.aw, %bb.e ], [ %i.ajx, %bb.ay ] ; 5 uses
  %.0105 = phi ptr [ %i.bl, %bb.e ], [ %i.akg, %bb.ay ] ; 2 uses
  %.0104 = phi ptr [ %i.bo, %bb.e ], [ %i.akg, %bb.ay ] ; 5 uses
  %.099 = phi i32 [ 0, %bb.e ], [ %i.ajy, %bb.ay ] ; 7 uses
  %.091 = phi i32 [ 1, %bb.e ], [ %.293, %bb.ay ]
  %.0 = phi i32 [ 1, %bb.e ], [ %.2, %bb.ay ]
  %i.ch = icmp sgt i32 %.099, 1
  %i.ci = icmp eq i32 %.091, 0
  %or.cond = and i1 %i.ch, %i.ci
  br i1 %or.cond, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cj = load i8, ptr %.0104, align 1, !tbaa !54
  %i.ck = zext i8 %i.cj to i32
  %i.cl = sext i32 %.pre233 to i64
  %i.cm = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !54
  %i.co = zext i8 %i.cn to i32                    ; 3 uses
  %i.cp = shl i32 %.pre233, %i.co                 ; 3 uses
  store i32 %i.cp, ptr %i.b, align 8, !tbaa !51
  %i.cq = shl i32 %.pre235, %i.co                 ; 2 uses
  %i.cr = add nsw i32 %.pre234, %i.co             ; 4 uses
  %i.cs = icmp sgt i32 %i.cr, -1
  %i.ct = icmp ult ptr %i.cg, %i.g
  %or.cond418 = select i1 %i.cs, i1 %i.ct, i1 false
  br i1 %or.cond418, label %bb.h, label %vpx_rac_renorm.exit158

bb.h:                                             ; preds = %bb.g
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cg, i64 2 ; 17 uses
  store ptr %i.cu, ptr %i.h, align 8, !tbaa !57
  %i.cv = load i16, ptr %i.cg, align 1, !tbaa !54
  %i.cw = tail call i16 @llvm.bswap.i16(i16 %i.cv)
  %i.cx = zext i16 %i.cw to i32
  %i.cy = shl i32 %i.cx, %i.cr
  %i.cz = or i32 %i.cy, %i.cq
  %i.da = add nsw i32 %i.cr, -16
  br label %vpx_rac_renorm.exit158

vpx_rac_renorm.exit158:                           ; preds = %bb.g, %bb.h
  %i.db = phi ptr [ %i.cu, %bb.h ], [ %i.br, %bb.g ] ; 4 uses
  %i.dc = phi ptr [ %i.cu, %bb.h ], [ %i.bs, %bb.g ] ; 4 uses
  %i.dd = phi ptr [ %i.cu, %bb.h ], [ %i.bt, %bb.g ] ; 4 uses
  %i.de = phi ptr [ %i.cu, %bb.h ], [ %i.bu, %bb.g ] ; 4 uses
  %i.df = phi ptr [ %i.cu, %bb.h ], [ %i.bv, %bb.g ] ; 4 uses
  %i.dg = phi ptr [ %i.cu, %bb.h ], [ %i.bw, %bb.g ] ; 4 uses
  %i.dh = phi ptr [ %i.cu, %bb.h ], [ %i.bx, %bb.g ] ; 4 uses
  %i.di = phi ptr [ %i.cu, %bb.h ], [ %i.by, %bb.g ] ; 4 uses
  %i.dj = phi ptr [ %i.cu, %bb.h ], [ %i.bz, %bb.g ] ; 4 uses
  %i.dk = phi ptr [ %i.cu, %bb.h ], [ %i.ca, %bb.g ] ; 4 uses
  %i.dl = phi ptr [ %i.cu, %bb.h ], [ %i.cb, %bb.g ] ; 4 uses
  %i.dm = phi ptr [ %i.cu, %bb.h ], [ %i.cc, %bb.g ] ; 4 uses
  %i.dn = phi ptr [ %i.cu, %bb.h ], [ %i.cd, %bb.g ] ; 4 uses
  %i.do = phi ptr [ %i.cu, %bb.h ], [ %i.ce, %bb.g ] ; 4 uses
  %i.dp = phi ptr [ %i.cu, %bb.h ], [ %i.cf, %bb.g ] ; 8 uses
  %i.dq = phi ptr [ %i.cu, %bb.h ], [ %i.cg, %bb.g ] ; 3 uses
  %.018.i156 = phi i32 [ %i.da, %bb.h ], [ %i.cr, %bb.g ] ; 4 uses
  %i.dr = phi i32 [ %i.cz, %bb.h ], [ %i.cq, %bb.g ] ; 5 uses
  store i32 %.018.i156, ptr %i.x, align 4, !tbaa !52
  %i.ds = add nsw i32 %i.cp, -1
  %i.dt = mul nsw i32 %i.ds, %i.ck
  %i.du = ashr i32 %i.dt, 8
  %i.dv = add nsw i32 %i.du, 1                    ; 6 uses
  %i.dw = shl i32 %i.dv, 16                       ; 2 uses
  %.not.i129 = icmp ult i32 %i.dr, %i.dw
  br i1 %.not.i129, label %bb.ae, label %vpx_rac_get_prob_branchy.exit132

vpx_rac_get_prob_branchy.exit132:                 ; preds = %vpx_rac_renorm.exit158
  %i.dx = sub i32 %i.cp, %i.dv                    ; 2 uses
  store i32 %i.dx, ptr %i.b, align 8, !tbaa !51
  %narrow.i130 = sub nuw i32 %i.dr, %i.dw         ; 2 uses
  store i32 %narrow.i130, ptr %i.y, align 8, !tbaa !53
  br label %bb.i

bb.i:                                             ; preds = %vpx_rac_get_prob_branchy.exit132, %bb.f
  %i.dy = phi ptr [ %i.db, %vpx_rac_get_prob_branchy.exit132 ], [ %i.br, %bb.f ] ; 2 uses
  %i.dz = phi ptr [ %i.dc, %vpx_rac_get_prob_branchy.exit132 ], [ %i.bs, %bb.f ] ; 2 uses
  %i.ea = phi ptr [ %i.dd, %vpx_rac_get_prob_branchy.exit132 ], [ %i.bt, %bb.f ] ; 2 uses
  %i.eb = phi ptr [ %i.de, %vpx_rac_get_prob_branchy.exit132 ], [ %i.bu, %bb.f ] ; 2 uses
  %i.ec = phi ptr [ %i.df, %vpx_rac_get_prob_branchy.exit132 ], [ %i.bv, %bb.f ] ; 2 uses
  %i.ed = phi ptr [ %i.dg, %vpx_rac_get_prob_branchy.exit132 ], [ %i.bw, %bb.f ] ; 2 uses
  %i.ee = phi ptr [ %i.dh, %vpx_rac_get_prob_branchy.exit132 ], [ %i.bx, %bb.f ] ; 14 uses
  %i.ef = phi i32 [ %narrow.i130, %vpx_rac_get_prob_branchy.exit132 ], [ %.pre235, %bb.f ]
  %i.eg = phi i32 [ %.018.i156, %vpx_rac_get_prob_branchy.exit132 ], [ %.pre234, %bb.f ]
  %i.eh = phi i32 [ %i.dx, %vpx_rac_get_prob_branchy.exit132 ], [ %.pre233, %bb.f ] ; 2 uses
  %i.ei = phi ptr [ %i.di, %vpx_rac_get_prob_branchy.exit132 ], [ %i.by, %bb.f ]
  %i.ej = phi ptr [ %i.dj, %vpx_rac_get_prob_branchy.exit132 ], [ %i.bz, %bb.f ]
  %i.ek = phi ptr [ %i.dk, %vpx_rac_get_prob_branchy.exit132 ], [ %i.ca, %bb.f ]
  %i.el = phi ptr [ %i.dl, %vpx_rac_get_prob_branchy.exit132 ], [ %i.cb, %bb.f ]
  %i.em = phi ptr [ %i.dm, %vpx_rac_get_prob_branchy.exit132 ], [ %i.cc, %bb.f ]
  %i.en = phi ptr [ %i.dn, %vpx_rac_get_prob_branchy.exit132 ], [ %i.cd, %bb.f ]
  %i.eo = phi ptr [ %i.do, %vpx_rac_get_prob_branchy.exit132 ], [ %i.ce, %bb.f ]
  %i.ep = phi ptr [ %i.dp, %vpx_rac_get_prob_branchy.exit132 ], [ %i.cf, %bb.f ]
  %i.eq = phi ptr [ %i.dq, %vpx_rac_get_prob_branchy.exit132 ], [ %i.cg, %bb.f ]
  %i.er = getelementptr inbounds nuw i8, ptr %.0104, i64 2
  %i.es = load i8, ptr %i.er, align 1, !tbaa !54
  %i.et = zext i8 %i.es to i32
  %i.eu = sext i32 %i.eh to i64
  %i.ev = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !54
  %i.ex = zext i8 %i.ew to i32                    ; 3 uses
  %i.ey = shl i32 %i.eh, %i.ex                    ; 3 uses
  store i32 %i.ey, ptr %i.b, align 8, !tbaa !51
  %i.ez = shl i32 %i.ef, %i.ex                    ; 3 uses
  %i.fa = add nsw i32 %i.eg, %i.ex                ; 5 uses
  %i.fb = icmp sgt i32 %i.fa, -1
  br i1 %i.fb, label %bb.j, label %vpx_rac_renorm.exit161

bb.j:                                             ; preds = %bb.i
  %i.fc = icmp ult ptr %i.ee, %i.g
  br i1 %i.fc, label %bb.k, label %vpx_rac_renorm.exit161

bb.k:                                             ; preds = %bb.j
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ee, i64 2 ; 17 uses
  store ptr %i.fd, ptr %i.h, align 8, !tbaa !57
  %i.fe = load i16, ptr %i.ee, align 1, !tbaa !54
  %i.ff = tail call i16 @llvm.bswap.i16(i16 %i.fe)
  %i.fg = zext i16 %i.ff to i32
  %i.fh = shl i32 %i.fg, %i.fa
  %i.fi = or i32 %i.fh, %i.ez
  %i.fj = add nsw i32 %i.fa, -16
  br label %vpx_rac_renorm.exit161

vpx_rac_renorm.exit161:                           ; preds = %bb.i, %bb.j, %bb.k
  %i.fk = phi ptr [ %i.fd, %bb.k ], [ %i.dy, %bb.j ], [ %i.dy, %bb.i ] ; 3 uses
  %i.fl = phi ptr [ %i.fd, %bb.k ], [ %i.dz, %bb.j ], [ %i.dz, %bb.i ] ; 3 uses
  %i.fm = phi ptr [ %i.fd, %bb.k ], [ %i.ea, %bb.j ], [ %i.ea, %bb.i ] ; 3 uses
  %i.fn = phi ptr [ %i.fd, %bb.k ], [ %i.eb, %bb.j ], [ %i.eb, %bb.i ] ; 3 uses
  %i.fo = phi ptr [ %i.fd, %bb.k ], [ %i.ec, %bb.j ], [ %i.ec, %bb.i ] ; 3 uses
  %i.fp = phi ptr [ %i.fd, %bb.k ], [ %i.ed, %bb.j ], [ %i.ed, %bb.i ] ; 16 uses
  %i.fq = phi ptr [ %i.fd, %bb.k ], [ %i.ee, %bb.j ], [ %i.ee, %bb.i ] ; 2 uses
  %i.fr = phi ptr [ %i.fd, %bb.k ], [ %i.ee, %bb.j ], [ %i.ei, %bb.i ] ; 2 uses
  %i.fs = phi ptr [ %i.fd, %bb.k ], [ %i.ee, %bb.j ], [ %i.ej, %bb.i ] ; 2 uses
  %i.ft = phi ptr [ %i.fd, %bb.k ], [ %i.ee, %bb.j ], [ %i.ek, %bb.i ] ; 2 uses
  %i.fu = phi ptr [ %i.fd, %bb.k ], [ %i.ee, %bb.j ], [ %i.el, %bb.i ] ; 2 uses
  %i.fv = phi ptr [ %i.fd, %bb.k ], [ %i.ee, %bb.j ], [ %i.em, %bb.i ] ; 2 uses
  %i.fw = phi ptr [ %i.fd, %bb.k ], [ %i.ee, %bb.j ], [ %i.en, %bb.i ] ; 2 uses
  %i.fx = phi ptr [ %i.fd, %bb.k ], [ %i.ee, %bb.j ], [ %i.eo, %bb.i ] ; 2 uses
  %i.fy = phi ptr [ %i.fd, %bb.k ], [ %i.ee, %bb.j ], [ %i.ep, %bb.i ] ; 2 uses
  %i.fz = phi ptr [ %i.fd, %bb.k ], [ %i.ee, %bb.j ], [ %i.eq, %bb.i ] ; 2 uses
  %.018.i159 = phi i32 [ %i.fj, %bb.k ], [ %i.fa, %bb.j ], [ %i.fa, %bb.i ] ; 3 uses
  %.0.i160 = phi i32 [ %i.fi, %bb.k ], [ %i.ez, %bb.j ], [ %i.ez, %bb.i ] ; 4 uses
  store i32 %.018.i159, ptr %i.x, align 4, !tbaa !52
  %i.ga = add nsw i32 %i.ey, -1
  %i.gb = mul nsw i32 %i.ga, %i.et
  %i.gc = ashr i32 %i.gb, 8
  %i.gd = add nsw i32 %i.gc, 1                    ; 3 uses
  %i.ge = shl i32 %i.gd, 16                       ; 2 uses
  %.not.i125 = icmp ult i32 %.0.i160, %i.ge
  br i1 %.not.i125, label %vpx_rac_get_prob_branchy.exit128.thread, label %bb.l

vpx_rac_get_prob_branchy.exit128.thread:          ; preds = %vpx_rac_renorm.exit161
  store i32 %.0.i160, ptr %i.y, align 8, !tbaa !53
  br label %.loopexit

bb.l:                                             ; preds = %vpx_rac_renorm.exit161
  %i.gf = sub i32 %i.ey, %i.gd                    ; 3 uses
  store i32 %i.gf, ptr %i.b, align 8, !tbaa !51
  %narrow.i126 = sub nuw i32 %.0.i160, %i.ge      ; 2 uses
  store i32 %narrow.i126, ptr %i.y, align 8, !tbaa !53
  %i.gg = getelementptr inbounds nuw i8, ptr %.0104, i64 3
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !54
  %i.gi = zext i8 %i.gh to i32
  %i.gj = sext i32 %i.gf to i64
  %i.gk = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.gj
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !54
  %i.gm = zext i8 %i.gl to i32                    ; 3 uses
  %i.gn = shl i32 %i.gf, %i.gm                    ; 3 uses
  store i32 %i.gn, ptr %i.b, align 8, !tbaa !51
end_hunk_0
begin_hunk_1_@vp6_parse_coeff:bb.a
  %i.im = phi ptr [ %i.kb, %vpx_rac_renorm.exit ], [ %i.ho, %bb.o ]
  %narrow.i.i137211 = phi i32 [ %narrow.i.i137.sink, %vpx_rac_renorm.exit ], [ %narrow.i122, %bb.o ]
  %i.in = phi i32 [ %.018.i, %vpx_rac_renorm.exit ], [ %.promoted209, %bb.o ]
  %i.io = phi i32 [ %.sink, %vpx_rac_renorm.exit ], [ %i.hu, %bb.o ] ; 2 uses
  %i.ip = phi i8 [ %i.kl, %vpx_rac_renorm.exit ], [ %i.hv, %bb.o ]
  %.0.i135207 = phi ptr [ %.1.i141, %vpx_rac_renorm.exit ], [ @ff_vp56_pc_tree, %bb.o ] ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.0.i135207, i64 1
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !60
  %i.is = sext i8 %i.ir to i64
  %i.it = getelementptr inbounds i8, ptr %.0105, i64 %i.is
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !54
  %i.iv = zext i8 %i.iu to i32
  %i.iw = sext i32 %i.io to i64
  %i.ix = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.iw
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !54
  %i.iz = zext i8 %i.iy to i32                    ; 3 uses
  %i.ja = shl i32 %i.io, %i.iz                    ; 3 uses
  store i32 %i.ja, ptr %i.b, align 8, !tbaa !51
  %i.jb = shl i32 %narrow.i.i137211, %i.iz        ; 3 uses
  %i.jc = add nsw i32 %i.in, %i.iz                ; 5 uses
  %i.jd = icmp sgt i32 %i.jc, -1
  br i1 %i.jd, label %bb.p, label %vpx_rac_renorm.exit

bb.p:                                             ; preds = %.lr.ph
  %i.je = icmp ult ptr %i.ib, %i.g
  br i1 %i.je, label %bb.q, label %vpx_rac_renorm.exit

bb.q:                                             ; preds = %bb.p
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ib, i64 2 ; 17 uses
  store ptr %i.jf, ptr %i.h, align 8, !tbaa !57
  %i.jg = load i16, ptr %i.ib, align 1, !tbaa !54
  %i.jh = tail call i16 @llvm.bswap.i16(i16 %i.jg)
  %i.ji = zext i16 %i.jh to i32
  %i.jj = shl i32 %i.ji, %i.jc
  %i.jk = or i32 %i.jj, %i.jb
  %i.jl = add nsw i32 %i.jc, -16
  br label %vpx_rac_renorm.exit

vpx_rac_renorm.exit:                              ; preds = %.lr.ph, %bb.p, %bb.q
  %i.jm = phi ptr [ %i.jf, %bb.q ], [ %i.hx, %bb.p ], [ %i.hx, %.lr.ph ] ; 2 uses
  %i.jn = phi ptr [ %i.jf, %bb.q ], [ %i.hy, %bb.p ], [ %i.hy, %.lr.ph ] ; 2 uses
  %i.jo = phi ptr [ %i.jf, %bb.q ], [ %i.hz, %bb.p ], [ %i.hz, %.lr.ph ] ; 2 uses
  %i.jp = phi ptr [ %i.jf, %bb.q ], [ %i.ia, %bb.p ], [ %i.ia, %.lr.ph ] ; 2 uses
  %i.jq = phi ptr [ %i.jf, %bb.q ], [ %i.ib, %bb.p ], [ %i.ib, %.lr.ph ] ; 2 uses
  %i.jr = phi ptr [ %i.jf, %bb.q ], [ %i.ib, %bb.p ], [ %i.ic, %.lr.ph ] ; 2 uses
  %i.js = phi ptr [ %i.jf, %bb.q ], [ %i.ib, %bb.p ], [ %i.id, %.lr.ph ] ; 2 uses
  %i.jt = phi ptr [ %i.jf, %bb.q ], [ %i.ib, %bb.p ], [ %i.ie, %.lr.ph ] ; 2 uses
  %i.ju = phi ptr [ %i.jf, %bb.q ], [ %i.ib, %bb.p ], [ %i.if, %.lr.ph ] ; 2 uses
  %i.jv = phi ptr [ %i.jf, %bb.q ], [ %i.ib, %bb.p ], [ %i.ig, %.lr.ph ] ; 2 uses
  %i.jw = phi ptr [ %i.jf, %bb.q ], [ %i.ib, %bb.p ], [ %i.ih, %.lr.ph ] ; 2 uses
  %i.jx = phi ptr [ %i.jf, %bb.q ], [ %i.ib, %bb.p ], [ %i.ii, %.lr.ph ] ; 2 uses
  %i.jy = phi ptr [ %i.jf, %bb.q ], [ %i.ib, %bb.p ], [ %i.ij, %.lr.ph ] ; 2 uses
  %i.jz = phi ptr [ %i.jf, %bb.q ], [ %i.ib, %bb.p ], [ %i.ik, %.lr.ph ] ; 2 uses
  %i.ka = phi ptr [ %i.jf, %bb.q ], [ %i.ib, %bb.p ], [ %i.il, %.lr.ph ] ; 2 uses
  %i.kb = phi ptr [ %i.jf, %bb.q ], [ %i.ib, %bb.p ], [ %i.im, %.lr.ph ] ; 2 uses
  %.018.i = phi i32 [ %i.jl, %bb.q ], [ %i.jc, %bb.p ], [ %i.jc, %.lr.ph ] ; 3 uses
  %.0.i143 = phi i32 [ %i.jk, %bb.q ], [ %i.jb, %bb.p ], [ %i.jb, %.lr.ph ] ; 2 uses
  store i32 %.018.i, ptr %i.x, align 4, !tbaa !52
  %i.kc = add nsw i32 %i.ja, -1
  %i.kd = mul nsw i32 %i.kc, %i.iv
  %i.ke = ashr i32 %i.kd, 8
  %i.kf = add nsw i32 %i.ke, 1                    ; 3 uses
  %i.kg = shl i32 %i.kf, 16                       ; 2 uses
  %.not.i.i136 = icmp ult i32 %.0.i143, %i.kg     ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.0.i135207, i64 2
  %i.ki = sub i32 %i.ja, %i.kf
  %i.kj = zext nneg i8 %i.ip to i64
  %i.kk = getelementptr inbounds nuw [2 x i8], ptr %.0.i135207, i64 %i.kj
  %.sink = select i1 %.not.i.i136, i32 %i.kf, i32 %i.ki ; 3 uses
  %narrow.i.i137 = select i1 %.not.i.i136, i32 0, i32 %i.kg
  %narrow.i.i137.sink = sub nuw i32 %.0.i143, %narrow.i.i137 ; 3 uses
  %.1.i141 = select i1 %.not.i.i136, ptr %i.kh, ptr %i.kk ; 2 uses
  store i32 %.sink, ptr %i.b, align 8, !tbaa !51
  store i32 %narrow.i.i137.sink, ptr %i.y, align 8, !tbaa !53
  %i.kl = load i8, ptr %.1.i141, align 1, !tbaa !59 ; 3 uses
  %i.km = icmp sgt i8 %i.kl, 0
  br i1 %i.km, label %.lr.ph, label %vp56_rac_get_tree.exit142, !llvm.loop !0

vp56_rac_get_tree.exit142:                        ; preds = %vpx_rac_renorm.exit, %bb.o
  %i.kn = phi ptr [ %i.gz, %bb.o ], [ %i.jm, %vpx_rac_renorm.exit ]
  %i.ko = phi ptr [ %i.ha, %bb.o ], [ %i.jn, %vpx_rac_renorm.exit ]
  %i.kp = phi ptr [ %i.hb, %bb.o ], [ %i.jo, %vpx_rac_renorm.exit ]
  %i.kq = phi ptr [ %i.hc, %bb.o ], [ %i.jp, %vpx_rac_renorm.exit ]
  %.promoted215 = phi i32 [ %narrow.i122, %bb.o ], [ %narrow.i.i137.sink, %vpx_rac_renorm.exit ]
  %.promoted214 = phi i32 [ %.promoted209, %bb.o ], [ %.018.i, %vpx_rac_renorm.exit ]
  %.promoted213 = phi i32 [ %i.hu, %bb.o ], [ %.sink, %vpx_rac_renorm.exit ]
  %i.kr = phi ptr [ %i.hd, %bb.o ], [ %i.jq, %vpx_rac_renorm.exit ]
  %i.ks = phi ptr [ %i.he, %bb.o ], [ %i.jr, %vpx_rac_renorm.exit ]
  %i.kt = phi ptr [ %i.hf, %bb.o ], [ %i.js, %vpx_rac_renorm.exit ]
  %i.ku = phi ptr [ %i.hg, %bb.o ], [ %i.jt, %vpx_rac_renorm.exit ]
  %i.kv = phi ptr [ %i.hh, %bb.o ], [ %i.ju, %vpx_rac_renorm.exit ]
  %i.kw = phi ptr [ %i.hi, %bb.o ], [ %i.jv, %vpx_rac_renorm.exit ]
  %i.kx = phi ptr [ %i.hj, %bb.o ], [ %i.jw, %vpx_rac_renorm.exit ]
  %i.ky = phi ptr [ %i.hk, %bb.o ], [ %i.jx, %vpx_rac_renorm.exit ]
  %i.kz = phi ptr [ %i.hl, %bb.o ], [ %i.jy, %vpx_rac_renorm.exit ]
  %i.la = phi ptr [ %i.hm, %bb.o ], [ %i.jz, %vpx_rac_renorm.exit ]
  %i.lb = phi ptr [ %i.hn, %bb.o ], [ %i.ka, %vpx_rac_renorm.exit ]
  %i.lc = phi ptr [ %i.ho, %bb.o ], [ %i.kb, %vpx_rac_renorm.exit ]
  %.lcssa192 = phi i8 [ %i.hv, %bb.o ], [ %i.kl, %vpx_rac_renorm.exit ]
  %i.ld = sext i8 %.lcssa192 to i64
  %i.le = sub nsw i64 0, %i.ld                    ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr @ff_vp56_coeff_bias, i64 %i.le
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 5
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !54
  %i.li = zext i8 %i.lh to i32
  %i.lj = getelementptr inbounds nuw i8, ptr @ff_vp56_coeff_bit_length, i64 %i.le
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !54
  %i.ll = getelementptr inbounds nuw [11 x i8], ptr @ff_vp56_coeff_parse_table, i64 %i.le
  %i.lm = zext i8 %i.lk to i64
  br label %bb.r

bb.r:                                             ; preds = %vp56_rac_get_tree.exit142, %vpx_rac_renorm.exit149
  %i.ln = phi ptr [ %i.kn, %vp56_rac_get_tree.exit142 ], [ %i.my, %vpx_rac_renorm.exit149 ] ; 2 uses
  %i.lo = phi ptr [ %i.ko, %vp56_rac_get_tree.exit142 ], [ %i.mz, %vpx_rac_renorm.exit149 ] ; 2 uses
  %i.lp = phi ptr [ %i.kp, %vp56_rac_get_tree.exit142 ], [ %i.na, %vpx_rac_renorm.exit149 ] ; 2 uses
  %i.lq = phi ptr [ %i.kq, %vp56_rac_get_tree.exit142 ], [ %i.nb, %vpx_rac_renorm.exit149 ] ; 17 uses
  %i.lr = phi ptr [ %i.kr, %vp56_rac_get_tree.exit142 ], [ %i.nc, %vpx_rac_renorm.exit149 ]
  %i.ls = phi ptr [ %i.ks, %vp56_rac_get_tree.exit142 ], [ %i.nd, %vpx_rac_renorm.exit149 ]
  %i.lt = phi ptr [ %i.kt, %vp56_rac_get_tree.exit142 ], [ %i.ne, %vpx_rac_renorm.exit149 ]
  %i.lu = phi ptr [ %i.ku, %vp56_rac_get_tree.exit142 ], [ %i.nf, %vpx_rac_renorm.exit149 ]
  %i.lv = phi ptr [ %i.kv, %vp56_rac_get_tree.exit142 ], [ %i.ng, %vpx_rac_renorm.exit149 ]
  %i.lw = phi ptr [ %i.kw, %vp56_rac_get_tree.exit142 ], [ %i.nh, %vpx_rac_renorm.exit149 ]
  %i.lx = phi ptr [ %i.kx, %vp56_rac_get_tree.exit142 ], [ %i.ni, %vpx_rac_renorm.exit149 ]
  %i.ly = phi ptr [ %i.ky, %vp56_rac_get_tree.exit142 ], [ %i.nj, %vpx_rac_renorm.exit149 ]
  %i.lz = phi ptr [ %i.kz, %vp56_rac_get_tree.exit142 ], [ %i.nk, %vpx_rac_renorm.exit149 ]
  %i.ma = phi ptr [ %i.la, %vp56_rac_get_tree.exit142 ], [ %i.nl, %vpx_rac_renorm.exit149 ]
  %i.mb = phi ptr [ %i.lb, %vp56_rac_get_tree.exit142 ], [ %i.nm, %vpx_rac_renorm.exit149 ]
  %i.mc = phi ptr [ %i.lc, %vp56_rac_get_tree.exit142 ], [ %i.nn, %vpx_rac_renorm.exit149 ]
  %indvars.iv = phi i64 [ %i.lm, %vp56_rac_get_tree.exit142 ], [ %indvars.iv.next, %vpx_rac_renorm.exit149 ] ; 4 uses
  %.0101216 = phi i32 [ %i.li, %vp56_rac_get_tree.exit142 ], [ %i.oc, %vpx_rac_renorm.exit149 ]
  %i.md = phi i32 [ %.promoted213, %vp56_rac_get_tree.exit142 ], [ %i.nx, %vpx_rac_renorm.exit149 ] ; 2 uses
  %i.me = phi i32 [ %.promoted214, %vp56_rac_get_tree.exit142 ], [ %.018.i147, %vpx_rac_renorm.exit149 ]
  %i.mf = phi i32 [ %.promoted215, %vp56_rac_get_tree.exit142 ], [ %i.nz, %vpx_rac_renorm.exit149 ]
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ll, i64 %indvars.iv
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !54
  %i.mi = sext i32 %i.md to i64
  %i.mj = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.mi
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !54
  %i.ml = zext i8 %i.mk to i32                    ; 3 uses
  %i.mm = shl i32 %i.md, %i.ml                    ; 3 uses
  store i32 %i.mm, ptr %i.b, align 8, !tbaa !51
  %i.mn = shl i32 %i.mf, %i.ml                    ; 3 uses
  %i.mo = add nsw i32 %i.me, %i.ml                ; 5 uses
  %i.mp = icmp sgt i32 %i.mo, -1
  br i1 %i.mp, label %bb.s, label %vpx_rac_renorm.exit149

bb.s:                                             ; preds = %bb.r
  %i.mq = icmp ult ptr %i.lq, %i.g
  br i1 %i.mq, label %bb.t, label %vpx_rac_renorm.exit149

bb.t:                                             ; preds = %bb.s
  %i.mr = getelementptr inbounds nuw i8, ptr %i.lq, i64 2 ; 17 uses
  store ptr %i.mr, ptr %i.h, align 8, !tbaa !57
  %i.ms = load i16, ptr %i.lq, align 1, !tbaa !54
  %i.mt = tail call i16 @llvm.bswap.i16(i16 %i.ms)
  %i.mu = zext i16 %i.mt to i32
  %i.mv = shl i32 %i.mu, %i.mo
  %i.mw = or i32 %i.mv, %i.mn
  %i.mx = add nsw i32 %i.mo, -16
  br label %vpx_rac_renorm.exit149

vpx_rac_renorm.exit149:                           ; preds = %bb.r, %bb.s, %bb.t
  %i.my = phi ptr [ %i.mr, %bb.t ], [ %i.ln, %bb.s ], [ %i.ln, %bb.r ] ; 2 uses
  %i.mz = phi ptr [ %i.mr, %bb.t ], [ %i.lo, %bb.s ], [ %i.lo, %bb.r ] ; 2 uses
  %i.na = phi ptr [ %i.mr, %bb.t ], [ %i.lp, %bb.s ], [ %i.lp, %bb.r ] ; 2 uses
  %i.nb = phi ptr [ %i.mr, %bb.t ], [ %i.lq, %bb.s ], [ %i.lq, %bb.r ] ; 2 uses
  %i.nc = phi ptr [ %i.mr, %bb.t ], [ %i.lq, %bb.s ], [ %i.lr, %bb.r ] ; 2 uses
  %i.nd = phi ptr [ %i.mr, %bb.t ], [ %i.lq, %bb.s ], [ %i.ls, %bb.r ] ; 2 uses
  %i.ne = phi ptr [ %i.mr, %bb.t ], [ %i.lq, %bb.s ], [ %i.lt, %bb.r ] ; 2 uses
  %i.nf = phi ptr [ %i.mr, %bb.t ], [ %i.lq, %bb.s ], [ %i.lu, %bb.r ] ; 2 uses
  %i.ng = phi ptr [ %i.mr, %bb.t ], [ %i.lq, %bb.s ], [ %i.lv, %bb.r ] ; 2 uses
  %i.nh = phi ptr [ %i.mr, %bb.t ], [ %i.lq, %bb.s ], [ %i.lw, %bb.r ] ; 2 uses
  %i.ni = phi ptr [ %i.mr, %bb.t ], [ %i.lq, %bb.s ], [ %i.lx, %bb.r ] ; 2 uses
  %i.nj = phi ptr [ %i.mr, %bb.t ], [ %i.lq, %bb.s ], [ %i.ly, %bb.r ] ; 2 uses
  %i.nk = phi ptr [ %i.mr, %bb.t ], [ %i.lq, %bb.s ], [ %i.lz, %bb.r ] ; 2 uses
  %i.nl = phi ptr [ %i.mr, %bb.t ], [ %i.lq, %bb.s ], [ %i.ma, %bb.r ] ; 2 uses
  %i.nm = phi ptr [ %i.mr, %bb.t ], [ %i.lq, %bb.s ], [ %i.mb, %bb.r ] ; 2 uses
  %i.nn = phi ptr [ %i.mr, %bb.t ], [ %i.lq, %bb.s ], [ %i.mc, %bb.r ] ; 2 uses
  %.018.i147 = phi i32 [ %i.mx, %bb.t ], [ %i.mo, %bb.s ], [ %i.mo, %bb.r ] ; 3 uses
  %.0.i148 = phi i32 [ %i.mw, %bb.t ], [ %i.mn, %bb.s ], [ %i.mn, %bb.r ] ; 2 uses
  store i32 %.018.i147, ptr %i.x, align 4, !tbaa !52
  %i.no = add nsw i32 %i.mm, -1
  %i.np = zext i8 %i.mh to i32
  %i.nq = mul nsw i32 %i.no, %i.np
  %i.nr = ashr i32 %i.nq, 8
  %i.ns = add nsw i32 %i.nr, 1                    ; 3 uses
  %i.nt = shl i32 %i.ns, 16                       ; 2 uses
  %i.nu = icmp uge i32 %.0.i148, %i.nt            ; 3 uses
  %i.nv = sub i32 %i.mm, %i.ns
  %i.nw = select i1 %i.nu, i32 %i.nt, i32 0
  %i.nx = select i1 %i.nu, i32 %i.nv, i32 %i.ns   ; 3 uses
  %i.ny = zext i1 %i.nu to i32
  store i32 %i.nx, ptr %i.b, align 8, !tbaa !51
  %i.nz = sub i32 %.0.i148, %i.nw                 ; 3 uses
  store i32 %i.nz, ptr %i.y, align 8, !tbaa !53
  %i.oa = trunc nuw nsw i64 %indvars.iv to i32
  %i.ob = shl nuw i32 %i.ny, %i.oa
  %i.oc = add nsw i32 %i.ob, %.0101216            ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.od = icmp sgt i64 %indvars.iv, 0
  br i1 %i.od, label %bb.r, label %.loopexit, !llvm.loop !127

bb.u:                                             ; preds = %vpx_rac_renorm.exit164
  store i32 %i.hs, ptr %i.b, align 8, !tbaa !51
  store i32 %.0.i163, ptr %i.y, align 8, !tbaa !53
  %i.oe = getelementptr inbounds nuw i8, ptr %.0104, i64 4
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !54
  %i.og = zext i8 %i.of to i32
  %i.oh = sext i32 %i.hs to i64
  %i.oi = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.oh
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !54
  %i.ok = zext i8 %i.oj to i32                    ; 3 uses
  %i.ol = shl i32 %i.hs, %i.ok                    ; 3 uses
  store i32 %i.ol, ptr %i.b, align 8, !tbaa !51
  %i.om = shl i32 %.0.i163, %i.ok                 ; 3 uses
  %i.on = add nsw i32 %.promoted209, %i.ok        ; 5 uses
  %i.oo = icmp sgt i32 %i.on, -1
  br i1 %i.oo, label %bb.v, label %vpx_rac_renorm.exit167

bb.v:                                             ; preds = %bb.u
  %i.op = icmp ult ptr %i.hb, %i.g
  br i1 %i.op, label %bb.w, label %vpx_rac_renorm.exit167

bb.w:                                             ; preds = %bb.v
  %i.oq = getelementptr inbounds nuw i8, ptr %i.hb, i64 2 ; 17 uses
  store ptr %i.oq, ptr %i.h, align 8, !tbaa !57
  %i.or = load i16, ptr %i.hb, align 1, !tbaa !54
  %i.os = tail call i16 @llvm.bswap.i16(i16 %i.or)
  %i.ot = zext i16 %i.os to i32
  %i.ou = shl i32 %i.ot, %i.on
  %i.ov = or i32 %i.ou, %i.om
  %i.ow = add nsw i32 %i.on, -16
  br label %vpx_rac_renorm.exit167

vpx_rac_renorm.exit167:                           ; preds = %bb.u, %bb.v, %bb.w
  %i.ox = phi ptr [ %i.oq, %bb.w ], [ %i.gz, %bb.v ], [ %i.gz, %bb.u ] ; 3 uses
  %i.oy = phi ptr [ %i.oq, %bb.w ], [ %i.ha, %bb.v ], [ %i.ha, %bb.u ] ; 20 uses
  %i.oz = phi ptr [ %i.oq, %bb.w ], [ %i.hb, %bb.v ], [ %i.hb, %bb.u ] ; 2 uses
  %i.pa = phi ptr [ %i.oq, %bb.w ], [ %i.hb, %bb.v ], [ %i.hc, %bb.u ] ; 2 uses
  %i.pb = phi ptr [ %i.oq, %bb.w ], [ %i.hb, %bb.v ], [ %i.hd, %bb.u ] ; 2 uses
  %i.pc = phi ptr [ %i.oq, %bb.w ], [ %i.hb, %bb.v ], [ %i.he, %bb.u ] ; 2 uses
  %i.pd = phi ptr [ %i.oq, %bb.w ], [ %i.hb, %bb.v ], [ %i.hf, %bb.u ] ; 2 uses
  %i.pe = phi ptr [ %i.oq, %bb.w ], [ %i.hb, %bb.v ], [ %i.hg, %bb.u ] ; 2 uses
  %i.pf = phi ptr [ %i.oq, %bb.w ], [ %i.hb, %bb.v ], [ %i.hh, %bb.u ] ; 2 uses
  %i.pg = phi ptr [ %i.oq, %bb.w ], [ %i.hb, %bb.v ], [ %i.hi, %bb.u ] ; 2 uses
  %i.ph = phi ptr [ %i.oq, %bb.w ], [ %i.hb, %bb.v ], [ %i.hj, %bb.u ] ; 2 uses
  %i.pi = phi ptr [ %i.oq, %bb.w ], [ %i.hb, %bb.v ], [ %i.hk, %bb.u ] ; 2 uses
  %i.pj = phi ptr [ %i.oq, %bb.w ], [ %i.hb, %bb.v ], [ %i.hl, %bb.u ] ; 2 uses
  %i.pk = phi ptr [ %i.oq, %bb.w ], [ %i.hb, %bb.v ], [ %i.hm, %bb.u ] ; 2 uses
  %i.pl = phi ptr [ %i.oq, %bb.w ], [ %i.hb, %bb.v ], [ %i.hn, %bb.u ] ; 2 uses
  %i.pm = phi ptr [ %i.oq, %bb.w ], [ %i.hb, %bb.v ], [ %i.ho, %bb.u ] ; 2 uses
  %.018.i165 = phi i32 [ %i.ow, %bb.w ], [ %i.on, %bb.v ], [ %i.on, %bb.u ] ; 3 uses
  %.0.i166 = phi i32 [ %i.ov, %bb.w ], [ %i.om, %bb.v ], [ %i.om, %bb.u ] ; 4 uses
  store i32 %.018.i165, ptr %i.x, align 4, !tbaa !52
  %i.pn = add nsw i32 %i.ol, -1
  %i.po = mul nsw i32 %i.pn, %i.og
  %i.pp = ashr i32 %i.po, 8
  %i.pq = add nsw i32 %i.pp, 1                    ; 3 uses
  %i.pr = shl i32 %i.pq, 16                       ; 2 uses
  %.not.i117 = icmp ult i32 %.0.i166, %i.pr
  br i1 %.not.i117, label %vpx_rac_get_prob_branchy.exit120.thread, label %bb.x

vpx_rac_get_prob_branchy.exit120.thread:          ; preds = %vpx_rac_renorm.exit167
  store i32 %.0.i166, ptr %i.y, align 8, !tbaa !53
  br label %.loopexit

bb.x:                                             ; preds = %vpx_rac_renorm.exit167
  %i.ps = sub i32 %i.ol, %i.pq                    ; 3 uses
  store i32 %i.ps, ptr %i.b, align 8, !tbaa !51
  %narrow.i118 = sub nuw i32 %.0.i166, %i.pr      ; 2 uses
  store i32 %narrow.i118, ptr %i.y, align 8, !tbaa !53
  %i.pt = getelementptr inbounds nuw i8, ptr %.0105, i64 5
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !54
  %i.pv = sext i32 %i.ps to i64
  %i.pw = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.pv
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !54
  %i.py = zext i8 %i.px to i32                    ; 3 uses
  %i.pz = shl i32 %i.ps, %i.py                    ; 3 uses
  store i32 %i.pz, ptr %i.b, align 8, !tbaa !51
  %i.qa = shl i32 %narrow.i118, %i.py             ; 3 uses
  %i.qb = add nsw i32 %.018.i165, %i.py           ; 5 uses
  %i.qc = icmp sgt i32 %i.qb, -1
  br i1 %i.qc, label %bb.y, label %vpx_rac_renorm.exit152

bb.y:                                             ; preds = %bb.x
  %i.qd = icmp ult ptr %i.oy, %i.g
  br i1 %i.qd, label %bb.z, label %vpx_rac_renorm.exit152

bb.z:                                             ; preds = %bb.y
  %i.qe = getelementptr inbounds nuw i8, ptr %i.oy, i64 2 ; 17 uses
  store ptr %i.qe, ptr %i.h, align 8, !tbaa !57
  %i.qf = load i16, ptr %i.oy, align 1, !tbaa !54
  %i.qg = tail call i16 @llvm.bswap.i16(i16 %i.qf)
  %i.qh = zext i16 %i.qg to i32
  %i.qi = shl i32 %i.qh, %i.qb
  %i.qj = or i32 %i.qi, %i.qa
  %i.qk = add nsw i32 %i.qb, -16
  br label %vpx_rac_renorm.exit152

vpx_rac_renorm.exit152:                           ; preds = %bb.x, %bb.y, %bb.z
  %i.ql = phi ptr [ %i.qe, %bb.z ], [ %i.ox, %bb.y ], [ %i.ox, %bb.x ]
  %i.qm = phi ptr [ %i.qe, %bb.z ], [ %i.oy, %bb.y ], [ %i.oy, %bb.x ]
  %i.qn = phi ptr [ %i.qe, %bb.z ], [ %i.oy, %bb.y ], [ %i.oz, %bb.x ]
  %i.qo = phi ptr [ %i.qe, %bb.z ], [ %i.oy, %bb.y ], [ %i.pa, %bb.x ]
  %i.qp = phi ptr [ %i.qe, %bb.z ], [ %i.oy, %bb.y ], [ %i.pb, %bb.x ]
  %i.qq = phi ptr [ %i.qe, %bb.z ], [ %i.oy, %bb.y ], [ %i.pc, %bb.x ]
  %i.qr = phi ptr [ %i.qe, %bb.z ], [ %i.oy, %bb.y ], [ %i.pd, %bb.x ]
  %i.qs = phi ptr [ %i.qe, %bb.z ], [ %i.oy, %bb.y ], [ %i.pe, %bb.x ]
  %i.qt = phi ptr [ %i.qe, %bb.z ], [ %i.oy, %bb.y ], [ %i.pf, %bb.x ]
  %i.qu = phi ptr [ %i.qe, %bb.z ], [ %i.oy, %bb.y ], [ %i.pg, %bb.x ]
  %i.qv = phi ptr [ %i.qe, %bb.z ], [ %i.oy, %bb.y ], [ %i.ph, %bb.x ]
  %i.qw = phi ptr [ %i.qe, %bb.z ], [ %i.oy, %bb.y ], [ %i.pi, %bb.x ]
  %i.qx = phi ptr [ %i.qe, %bb.z ], [ %i.oy, %bb.y ], [ %i.pj, %bb.x ]
  %i.qy = phi ptr [ %i.qe, %bb.z ], [ %i.oy, %bb.y ], [ %i.pk, %bb.x ]
  %i.qz = phi ptr [ %i.qe, %bb.z ], [ %i.oy, %bb.y ], [ %i.pl, %bb.x ]
  %i.ra = phi ptr [ %i.qe, %bb.z ], [ %i.oy, %bb.y ], [ %i.pm, %bb.x ]
  %.018.i150 = phi i32 [ %i.qk, %bb.z ], [ %i.qb, %bb.y ], [ %i.qb, %bb.x ] ; 2 uses
  %.0.i151 = phi i32 [ %i.qj, %bb.z ], [ %i.qa, %bb.y ], [ %i.qa, %bb.x ] ; 2 uses
  store i32 %.018.i150, ptr %i.x, align 4, !tbaa !52
  %i.rb = add nsw i32 %i.pz, -1
  %i.rc = zext i8 %i.pu to i32
  %i.rd = mul nsw i32 %i.rb, %i.rc
  %i.re = ashr i32 %i.rd, 8
  %i.rf = add nsw i32 %i.re, 1                    ; 3 uses
  %i.rg = shl i32 %i.rf, 16                       ; 2 uses
  %.not = icmp ult i32 %.0.i151, %i.rg            ; 3 uses
  %i.rh = sub i32 %i.pz, %i.rf
  %i.ri = select i1 %.not, i32 0, i32 %i.rg
  %i.rj = select i1 %.not, i32 %i.rf, i32 %i.rh
  %i.rk = sub i32 %.0.i151, %i.ri                 ; 2 uses
  store i32 %i.rk, ptr %i.y, align 8, !tbaa !53
  %i.rl = select i1 %.not, i32 3, i32 4
  br label %.loopexit

.loopexit:                                        ; preds = %vpx_rac_renorm.exit149, %vpx_rac_get_prob_branchy.exit120.thread, %vpx_rac_get_prob_branchy.exit128.thread, %vpx_rac_renorm.exit152
  %i.rm = phi ptr [ %i.ox, %vpx_rac_get_prob_branchy.exit120.thread ], [ %i.fk, %vpx_rac_get_prob_branchy.exit128.thread ], [ %i.ql, %vpx_rac_renorm.exit152 ], [ %i.my, %vpx_rac_renorm.exit149 ] ; 20 uses
  %i.rn = phi i32 [ %.0.i166, %vpx_rac_get_prob_branchy.exit120.thread ], [ %.0.i160, %vpx_rac_get_prob_branchy.exit128.thread ], [ %i.rk, %vpx_rac_renorm.exit152 ], [ %i.nz, %vpx_rac_renorm.exit149 ]
  %i.ro = phi i32 [ %.018.i165, %vpx_rac_get_prob_branchy.exit120.thread ], [ %.018.i159, %vpx_rac_get_prob_branchy.exit128.thread ], [ %.018.i150, %vpx_rac_renorm.exit152 ], [ %.018.i147, %vpx_rac_renorm.exit149 ]
  %i.rp = phi i32 [ %i.pq, %vpx_rac_get_prob_branchy.exit120.thread ], [ %i.gd, %vpx_rac_get_prob_branchy.exit128.thread ], [ %i.rj, %vpx_rac_renorm.exit152 ], [ %i.nx, %vpx_rac_renorm.exit149 ] ; 2 uses
  %i.rq = phi ptr [ %i.oy, %vpx_rac_get_prob_branchy.exit120.thread ], [ %i.fl, %vpx_rac_get_prob_branchy.exit128.thread ], [ %i.qm, %vpx_rac_renorm.exit152 ], [ %i.mz, %vpx_rac_renorm.exit149 ]
  %i.rr = phi ptr [ %i.oz, %vpx_rac_get_prob_branchy.exit120.thread ], [ %i.fm, %vpx_rac_get_prob_branchy.exit128.thread ], [ %i.qn, %vpx_rac_renorm.exit152 ], [ %i.na, %vpx_rac_renorm.exit149 ]
  %i.rs = phi ptr [ %i.pa, %vpx_rac_get_prob_branchy.exit120.thread ], [ %i.fn, %vpx_rac_get_prob_branchy.exit128.thread ], [ %i.qo, %vpx_rac_renorm.exit152 ], [ %i.nb, %vpx_rac_renorm.exit149 ]
  %i.rt = phi ptr [ %i.pb, %vpx_rac_get_prob_branchy.exit120.thread ], [ %i.fo, %vpx_rac_get_prob_branchy.exit128.thread ], [ %i.qp, %vpx_rac_renorm.exit152 ], [ %i.nc, %vpx_rac_renorm.exit149 ]
  %i.ru = phi ptr [ %i.pc, %vpx_rac_get_prob_branchy.exit120.thread ], [ %i.fp, %vpx_rac_get_prob_branchy.exit128.thread ], [ %i.qq, %vpx_rac_renorm.exit152 ], [ %i.nd, %vpx_rac_renorm.exit149 ]
  %i.rv = phi ptr [ %i.pd, %vpx_rac_get_prob_branchy.exit120.thread ], [ %i.fq, %vpx_rac_get_prob_branchy.exit128.thread ], [ %i.qr, %vpx_rac_renorm.exit152 ], [ %i.ne, %vpx_rac_renorm.exit149 ]
  %i.rw = phi ptr [ %i.pe, %vpx_rac_get_prob_branchy.exit120.thread ], [ %i.fr, %vpx_rac_get_prob_branchy.exit128.thread ], [ %i.qs, %vpx_rac_renorm.exit152 ], [ %i.nf, %vpx_rac_renorm.exit149 ]
  %i.rx = phi ptr [ %i.pf, %vpx_rac_get_prob_branchy.exit120.thread ], [ %i.fs, %vpx_rac_get_prob_branchy.exit128.thread ], [ %i.qt, %vpx_rac_renorm.exit152 ], [ %i.ng, %vpx_rac_renorm.exit149 ]
  %i.ry = phi ptr [ %i.pg, %vpx_rac_get_prob_branchy.exit120.thread ], [ %i.ft, %vpx_rac_get_prob_branchy.exit128.thread ], [ %i.qu, %vpx_rac_renorm.exit152 ], [ %i.nh, %vpx_rac_renorm.exit149 ]
  %i.rz = phi ptr [ %i.ph, %vpx_rac_get_prob_branchy.exit120.thread ], [ %i.fu, %vpx_rac_get_prob_branchy.exit128.thread ], [ %i.qv, %vpx_rac_renorm.exit152 ], [ %i.ni, %vpx_rac_renorm.exit149 ]
  %i.sa = phi ptr [ %i.pi, %vpx_rac_get_prob_branchy.exit120.thread ], [ %i.fv, %vpx_rac_get_prob_branchy.exit128.thread ], [ %i.qw, %vpx_rac_renorm.exit152 ], [ %i.nj, %vpx_rac_renorm.exit149 ]
  %i.sb = phi ptr [ %i.pj, %vpx_rac_get_prob_branchy.exit120.thread ], [ %i.fw, %vpx_rac_get_prob_branchy.exit128.thread ], [ %i.qx, %vpx_rac_renorm.exit152 ], [ %i.nk, %vpx_rac_renorm.exit149 ]
  %i.sc = phi ptr [ %i.pk, %vpx_rac_get_prob_branchy.exit120.thread ], [ %i.fx, %vpx_rac_get_prob_branchy.exit128.thread ], [ %i.qy, %vpx_rac_renorm.exit152 ], [ %i.nl, %vpx_rac_renorm.exit149 ]
  %i.sd = phi ptr [ %i.pl, %vpx_rac_get_prob_branchy.exit120.thread ], [ %i.fy, %vpx_rac_get_prob_branchy.exit128.thread ], [ %i.qz, %vpx_rac_renorm.exit152 ], [ %i.nm, %vpx_rac_renorm.exit149 ]
  %i.se = phi ptr [ %i.pm, %vpx_rac_get_prob_branchy.exit120.thread ], [ %i.fz, %vpx_rac_get_prob_branchy.exit128.thread ], [ %i.ra, %vpx_rac_renorm.exit152 ], [ %i.nn, %vpx_rac_renorm.exit149 ]
  %.2103 = phi i32 [ 2, %vpx_rac_get_prob_branchy.exit120.thread ], [ 1, %vpx_rac_get_prob_branchy.exit128.thread ], [ %i.rl, %vpx_rac_renorm.exit152 ], [ %i.oc, %vpx_rac_renorm.exit149 ]
  %.192 = phi i32 [ 2, %vpx_rac_get_prob_branchy.exit120.thread ], [ 1, %vpx_rac_get_prob_branchy.exit128.thread ], [ 2, %vpx_rac_renorm.exit152 ], [ 2, %vpx_rac_renorm.exit149 ]
  %i.sf = sext i32 %i.rp to i64
  %i.sg = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.sf
  %i.sh = load i8, ptr %i.sg, align 1, !tbaa !54
  %i.si = zext i8 %i.sh to i32                    ; 3 uses
  %i.sj = shl i32 %i.rp, %i.si                    ; 3 uses
  store i32 %i.sj, ptr %i.b, align 8, !tbaa !51
  %i.sk = shl i32 %i.rn, %i.si                    ; 3 uses
  %i.sl = add nsw i32 %i.ro, %i.si                ; 5 uses
  %i.sm = icmp sgt i32 %i.sl, -1
  br i1 %i.sm, label %bb.aa, label %vpx_rac_renorm.exit.i

bb.aa:                                            ; preds = %.loopexit
  %i.sn = icmp ult ptr %i.rm, %i.g
  br i1 %i.sn, label %bb.ab, label %vpx_rac_renorm.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.so = getelementptr inbounds nuw i8, ptr %i.rm, i64 2 ; 17 uses
  store ptr %i.so, ptr %i.h, align 8, !tbaa !57
  %i.sp = load i16, ptr %i.rm, align 1, !tbaa !54
  %i.sq = tail call i16 @llvm.bswap.i16(i16 %i.sp)
  %i.sr = zext i16 %i.sq to i32
  %i.ss = shl i32 %i.sr, %i.sl
  %i.st = or i32 %i.ss, %i.sk
  %i.su = add nsw i32 %i.sl, -16
  br label %vpx_rac_renorm.exit.i

vpx_rac_renorm.exit.i:                            ; preds = %bb.ab, %bb.aa, %.loopexit
  %i.sv = phi ptr [ %i.so, %bb.ab ], [ %i.rm, %bb.aa ], [ %i.rm, %.loopexit ]
  %i.sw = phi ptr [ %i.so, %bb.ab ], [ %i.rm, %bb.aa ], [ %i.rq, %.loopexit ]
  %i.sx = phi ptr [ %i.so, %bb.ab ], [ %i.rm, %bb.aa ], [ %i.rr, %.loopexit ]
  %i.sy = phi ptr [ %i.so, %bb.ab ], [ %i.rm, %bb.aa ], [ %i.rs, %.loopexit ]
  %i.sz = phi ptr [ %i.so, %bb.ab ], [ %i.rm, %bb.aa ], [ %i.rt, %.loopexit ]
  %i.ta = phi ptr [ %i.so, %bb.ab ], [ %i.rm, %bb.aa ], [ %i.ru, %.loopexit ]
  %i.tb = phi ptr [ %i.so, %bb.ab ], [ %i.rm, %bb.aa ], [ %i.rv, %.loopexit ]
  %i.tc = phi ptr [ %i.so, %bb.ab ], [ %i.rm, %bb.aa ], [ %i.rw, %.loopexit ]
  %i.td = phi ptr [ %i.so, %bb.ab ], [ %i.rm, %bb.aa ], [ %i.rx, %.loopexit ]
  %i.te = phi ptr [ %i.so, %bb.ab ], [ %i.rm, %bb.aa ], [ %i.ry, %.loopexit ]
  %i.tf = phi ptr [ %i.so, %bb.ab ], [ %i.rm, %bb.aa ], [ %i.rz, %.loopexit ]
  %i.tg = phi ptr [ %i.so, %bb.ab ], [ %i.rm, %bb.aa ], [ %i.sa, %.loopexit ]
  %i.th = phi ptr [ %i.so, %bb.ab ], [ %i.rm, %bb.aa ], [ %i.sb, %.loopexit ]
  %i.ti = phi ptr [ %i.so, %bb.ab ], [ %i.rm, %bb.aa ], [ %i.sc, %.loopexit ]
  %i.tj = phi ptr [ %i.so, %bb.ab ], [ %i.rm, %bb.aa ], [ %i.sd, %.loopexit ]
  %i.tk = phi ptr [ %i.so, %bb.ab ], [ %i.rm, %bb.aa ], [ %i.se, %.loopexit ]
  %.018.i.i = phi i32 [ %i.su, %bb.ab ], [ %i.sl, %bb.aa ], [ %i.sl, %.loopexit ] ; 2 uses
  %.0.i.i171 = phi i32 [ %i.st, %bb.ab ], [ %i.sk, %bb.aa ], [ %i.sk, %.loopexit ] ; 2 uses
end_hunk_1
begin_hunk_2_@vp6_parse_coeff:bb.a
  %i.afl = ashr i32 %i.afk, 8
  %i.afm = add nsw i32 %i.afl, 1                  ; 3 uses
  %i.afn = shl i32 %i.afm, 16                     ; 2 uses
  %.not329 = icmp ult i32 %.0.i154.3, %i.afn      ; 3 uses
  %i.afo = sub i32 %i.aeg, %i.afm
  %i.afp = select i1 %.not329, i32 0, i32 %i.afn
  %i.afq = select i1 %.not329, i32 %i.afm, i32 %i.afo ; 3 uses
  store i32 %i.afq, ptr %i.b, align 8, !tbaa !51
  %i.afr = sub i32 %.0.i154.3, %i.afp             ; 2 uses
  store i32 %i.afr, ptr %i.y, align 8, !tbaa !53
  %i.afs = select i1 %.not329, i32 0, i32 8
  %i.aft = add nuw nsw i32 %i.afs, %i.adz
  %i.afu = getelementptr inbounds nuw i8, ptr %i.wa, i64 12
  %i.afv = load i8, ptr %i.afu, align 1, !tbaa !54
  %i.afw = sext i32 %i.afq to i64
  %i.afx = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.afw
  %i.afy = load i8, ptr %i.afx, align 1, !tbaa !54
  %i.afz = zext i8 %i.afy to i32                  ; 3 uses
  %i.aga = shl i32 %i.afq, %i.afz                 ; 3 uses
  store i32 %i.aga, ptr %i.b, align 8, !tbaa !51
  %i.agb = shl i32 %i.afr, %i.afz                 ; 3 uses
  %i.agc = add nsw i32 %.018.i153.3, %i.afz       ; 5 uses
  %i.agd = icmp sgt i32 %i.agc, -1
  br i1 %i.agd, label %bb.au, label %vpx_rac_renorm.exit155.4

bb.au:                                            ; preds = %vpx_rac_renorm.exit155.3
  %i.age = icmp ult ptr %i.afa, %i.g
  br i1 %i.age, label %bb.av, label %vpx_rac_renorm.exit155.4

bb.av:                                            ; preds = %bb.au
  %i.agf = getelementptr inbounds nuw i8, ptr %i.afa, i64 2 ; 17 uses
  store ptr %i.agf, ptr %i.h, align 8, !tbaa !57
  %i.agg = load i16, ptr %i.afa, align 1, !tbaa !54
  %i.agh = tail call i16 @llvm.bswap.i16(i16 %i.agg)
  %i.agi = zext i16 %i.agh to i32
  %i.agj = shl i32 %i.agi, %i.agc
  %i.agk = or i32 %i.agj, %i.agb
  %i.agl = add nsw i32 %i.agc, -16
  br label %vpx_rac_renorm.exit155.4

vpx_rac_renorm.exit155.4:                         ; preds = %bb.av, %bb.au, %vpx_rac_renorm.exit155.3
  %i.agm = phi ptr [ %i.agf, %bb.av ], [ %i.aes, %bb.au ], [ %i.aes, %vpx_rac_renorm.exit155.3 ] ; 2 uses
  %i.agn = phi ptr [ %i.agf, %bb.av ], [ %i.aet, %bb.au ], [ %i.aet, %vpx_rac_renorm.exit155.3 ] ; 2 uses
  %i.ago = phi ptr [ %i.agf, %bb.av ], [ %i.aeu, %bb.au ], [ %i.aeu, %vpx_rac_renorm.exit155.3 ] ; 2 uses
  %i.agp = phi ptr [ %i.agf, %bb.av ], [ %i.aev, %bb.au ], [ %i.aev, %vpx_rac_renorm.exit155.3 ] ; 2 uses
  %i.agq = phi ptr [ %i.agf, %bb.av ], [ %i.aew, %bb.au ], [ %i.aew, %vpx_rac_renorm.exit155.3 ] ; 2 uses
  %i.agr = phi ptr [ %i.agf, %bb.av ], [ %i.aex, %bb.au ], [ %i.aex, %vpx_rac_renorm.exit155.3 ] ; 2 uses
  %i.ags = phi ptr [ %i.agf, %bb.av ], [ %i.aey, %bb.au ], [ %i.aey, %vpx_rac_renorm.exit155.3 ] ; 2 uses
  %i.agt = phi ptr [ %i.agf, %bb.av ], [ %i.aez, %bb.au ], [ %i.aez, %vpx_rac_renorm.exit155.3 ] ; 13 uses
  %i.agu = phi ptr [ %i.agf, %bb.av ], [ %i.afa, %bb.au ], [ %i.afa, %vpx_rac_renorm.exit155.3 ]
  %i.agv = phi ptr [ %i.agf, %bb.av ], [ %i.afa, %bb.au ], [ %i.afb, %vpx_rac_renorm.exit155.3 ]
  %i.agw = phi ptr [ %i.agf, %bb.av ], [ %i.afa, %bb.au ], [ %i.afc, %vpx_rac_renorm.exit155.3 ]
  %i.agx = phi ptr [ %i.agf, %bb.av ], [ %i.afa, %bb.au ], [ %i.afd, %vpx_rac_renorm.exit155.3 ]
  %i.agy = phi ptr [ %i.agf, %bb.av ], [ %i.afa, %bb.au ], [ %i.afe, %vpx_rac_renorm.exit155.3 ]
  %i.agz = phi ptr [ %i.agf, %bb.av ], [ %i.afa, %bb.au ], [ %i.aff, %vpx_rac_renorm.exit155.3 ]
  %i.aha = phi ptr [ %i.agf, %bb.av ], [ %i.afa, %bb.au ], [ %i.afg, %vpx_rac_renorm.exit155.3 ]
  %i.ahb = phi ptr [ %i.agf, %bb.av ], [ %i.afa, %bb.au ], [ %i.afh, %vpx_rac_renorm.exit155.3 ]
  %.018.i153.4 = phi i32 [ %i.agl, %bb.av ], [ %i.agc, %bb.au ], [ %i.agc, %vpx_rac_renorm.exit155.3 ] ; 2 uses
  %.0.i154.4 = phi i32 [ %i.agk, %bb.av ], [ %i.agb, %bb.au ], [ %i.agb, %vpx_rac_renorm.exit155.3 ] ; 2 uses
  store i32 %.018.i153.4, ptr %i.x, align 4, !tbaa !52
  %i.ahc = add nsw i32 %i.aga, -1
  %i.ahd = zext i8 %i.afv to i32
  %i.ahe = mul nsw i32 %i.ahc, %i.ahd
  %i.ahf = ashr i32 %i.ahe, 8
  %i.ahg = add nsw i32 %i.ahf, 1                  ; 3 uses
  %i.ahh = shl i32 %i.ahg, 16                     ; 2 uses
  %.not330 = icmp ult i32 %.0.i154.4, %i.ahh      ; 3 uses
  %i.ahi = sub i32 %i.aga, %i.ahg
  %i.ahj = select i1 %.not330, i32 0, i32 %i.ahh
  %i.ahk = select i1 %.not330, i32 %i.ahg, i32 %i.ahi ; 3 uses
  store i32 %i.ahk, ptr %i.b, align 8, !tbaa !51
  %i.ahl = sub i32 %.0.i154.4, %i.ahj             ; 2 uses
  store i32 %i.ahl, ptr %i.y, align 8, !tbaa !53
  %i.ahm = select i1 %.not330, i32 0, i32 16
  %i.ahn = add nuw nsw i32 %i.ahm, %i.aft
  %i.aho = getelementptr inbounds nuw i8, ptr %i.wa, i64 13
  %i.ahp = load i8, ptr %i.aho, align 1, !tbaa !54
  %i.ahq = sext i32 %i.ahk to i64
  %i.ahr = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.ahq
  %i.ahs = load i8, ptr %i.ahr, align 1, !tbaa !54
  %i.aht = zext i8 %i.ahs to i32                  ; 3 uses
  %i.ahu = shl i32 %i.ahk, %i.aht                 ; 3 uses
  store i32 %i.ahu, ptr %i.b, align 8, !tbaa !51
  %i.ahv = shl i32 %i.ahl, %i.aht                 ; 3 uses
  %i.ahw = add nsw i32 %.018.i153.4, %i.aht       ; 5 uses
  %i.ahx = icmp sgt i32 %i.ahw, -1
  br i1 %i.ahx, label %bb.aw, label %vpx_rac_renorm.exit155.5

bb.aw:                                            ; preds = %vpx_rac_renorm.exit155.4
  %i.ahy = icmp ult ptr %i.agt, %i.g
  br i1 %i.ahy, label %bb.ax, label %vpx_rac_renorm.exit155.5

bb.ax:                                            ; preds = %bb.aw
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.agt, i64 2 ; 17 uses
  store ptr %i.ahz, ptr %i.h, align 8, !tbaa !57
  %i.aia = load i16, ptr %i.agt, align 1, !tbaa !54
  %i.aib = tail call i16 @llvm.bswap.i16(i16 %i.aia)
  %i.aic = zext i16 %i.aib to i32
  %i.aid = shl i32 %i.aic, %i.ahw
  %i.aie = or i32 %i.aid, %i.ahv
  %i.aif = add nsw i32 %i.ahw, -16
  br label %vpx_rac_renorm.exit155.5

vpx_rac_renorm.exit155.5:                         ; preds = %bb.ax, %bb.aw, %vpx_rac_renorm.exit155.4
  %i.aig = phi ptr [ %i.ahz, %bb.ax ], [ %i.agm, %bb.aw ], [ %i.agm, %vpx_rac_renorm.exit155.4 ]
  %i.aih = phi ptr [ %i.ahz, %bb.ax ], [ %i.agn, %bb.aw ], [ %i.agn, %vpx_rac_renorm.exit155.4 ]
  %i.aii = phi ptr [ %i.ahz, %bb.ax ], [ %i.ago, %bb.aw ], [ %i.ago, %vpx_rac_renorm.exit155.4 ]
  %i.aij = phi ptr [ %i.ahz, %bb.ax ], [ %i.agp, %bb.aw ], [ %i.agp, %vpx_rac_renorm.exit155.4 ]
  %i.aik = phi ptr [ %i.ahz, %bb.ax ], [ %i.agq, %bb.aw ], [ %i.agq, %vpx_rac_renorm.exit155.4 ]
  %i.ail = phi ptr [ %i.ahz, %bb.ax ], [ %i.agr, %bb.aw ], [ %i.agr, %vpx_rac_renorm.exit155.4 ]
  %i.aim = phi ptr [ %i.ahz, %bb.ax ], [ %i.ags, %bb.aw ], [ %i.ags, %vpx_rac_renorm.exit155.4 ]
  %i.ain = phi ptr [ %i.ahz, %bb.ax ], [ %i.agt, %bb.aw ], [ %i.agt, %vpx_rac_renorm.exit155.4 ]
  %i.aio = phi ptr [ %i.ahz, %bb.ax ], [ %i.agt, %bb.aw ], [ %i.agu, %vpx_rac_renorm.exit155.4 ]
  %i.aip = phi ptr [ %i.ahz, %bb.ax ], [ %i.agt, %bb.aw ], [ %i.agv, %vpx_rac_renorm.exit155.4 ]
  %i.aiq = phi ptr [ %i.ahz, %bb.ax ], [ %i.agt, %bb.aw ], [ %i.agw, %vpx_rac_renorm.exit155.4 ]
  %i.air = phi ptr [ %i.ahz, %bb.ax ], [ %i.agt, %bb.aw ], [ %i.agx, %vpx_rac_renorm.exit155.4 ]
  %i.ais = phi ptr [ %i.ahz, %bb.ax ], [ %i.agt, %bb.aw ], [ %i.agy, %vpx_rac_renorm.exit155.4 ]
  %i.ait = phi ptr [ %i.ahz, %bb.ax ], [ %i.agt, %bb.aw ], [ %i.agz, %vpx_rac_renorm.exit155.4 ]
  %i.aiu = phi ptr [ %i.ahz, %bb.ax ], [ %i.agt, %bb.aw ], [ %i.aha, %vpx_rac_renorm.exit155.4 ]
  %i.aiv = phi ptr [ %i.ahz, %bb.ax ], [ %i.agt, %bb.aw ], [ %i.ahb, %vpx_rac_renorm.exit155.4 ]
  %.018.i153.5 = phi i32 [ %i.aif, %bb.ax ], [ %i.ahw, %bb.aw ], [ %i.ahw, %vpx_rac_renorm.exit155.4 ] ; 2 uses
  %.0.i154.5 = phi i32 [ %i.aie, %bb.ax ], [ %i.ahv, %bb.aw ], [ %i.ahv, %vpx_rac_renorm.exit155.4 ] ; 2 uses
  store i32 %.018.i153.5, ptr %i.x, align 4, !tbaa !52
  %i.aiw = add nsw i32 %i.ahu, -1
  %i.aix = zext i8 %i.ahp to i32
  %i.aiy = mul nsw i32 %i.aiw, %i.aix
  %i.aiz = ashr i32 %i.aiy, 8
  %i.aja = add nsw i32 %i.aiz, 1                  ; 3 uses
  %i.ajb = shl i32 %i.aja, 16                     ; 2 uses
  %.not331 = icmp ult i32 %.0.i154.5, %i.ajb      ; 3 uses
  %i.ajc = sub i32 %i.ahu, %i.aja
  %i.ajd = select i1 %.not331, i32 0, i32 %i.ajb
  %i.aje = select i1 %.not331, i32 %i.aja, i32 %i.ajc ; 2 uses
  store i32 %i.aje, ptr %i.b, align 8, !tbaa !51
  %i.ajf = sub i32 %.0.i154.5, %i.ajd             ; 2 uses
  store i32 %i.ajf, ptr %i.y, align 8, !tbaa !53
  %i.ajg = select i1 %.not331, i32 0, i32 32
  %i.ajh = add nuw nsw i32 %i.ajg, %i.ahn
  br label %.loopexit188

.loopexit188:                                     ; preds = %vpx_rac_renorm.exit155.5, %bb.ae, %vp56_rac_get_tree.exit, %bb.ad
  %.pre235244 = phi i32 [ %.0.i172, %bb.ad ], [ %.promoted204, %vp56_rac_get_tree.exit ], [ %i.dr, %bb.ae ], [ %i.ajf, %vpx_rac_renorm.exit155.5 ]
  %.pre234242 = phi i32 [ %.018.i.i, %bb.ad ], [ %.promoted203, %vp56_rac_get_tree.exit ], [ %.018.i156, %bb.ae ], [ %.018.i153.5, %vpx_rac_renorm.exit155.5 ]
  %.pre233240 = phi i32 [ %.sink231, %bb.ad ], [ %.promoted202, %vp56_rac_get_tree.exit ], [ %i.dv, %bb.ae ], [ %i.aje, %vpx_rac_renorm.exit155.5 ]
  %i.aji = phi ptr [ %i.sv, %bb.ad ], [ %i.xq, %vp56_rac_get_tree.exit ], [ %i.db, %bb.ae ], [ %i.aig, %vpx_rac_renorm.exit155.5 ] ; 2 uses
  %i.ajj = phi ptr [ %i.sw, %bb.ad ], [ %i.xr, %vp56_rac_get_tree.exit ], [ %i.dc, %bb.ae ], [ %i.aih, %vpx_rac_renorm.exit155.5 ] ; 2 uses
  %i.ajk = phi ptr [ %i.sx, %bb.ad ], [ %i.xs, %vp56_rac_get_tree.exit ], [ %i.dd, %bb.ae ], [ %i.aii, %vpx_rac_renorm.exit155.5 ] ; 2 uses
  %i.ajl = phi ptr [ %i.sy, %bb.ad ], [ %i.xt, %vp56_rac_get_tree.exit ], [ %i.de, %bb.ae ], [ %i.aij, %vpx_rac_renorm.exit155.5 ] ; 2 uses
  %i.ajm = phi ptr [ %i.sz, %bb.ad ], [ %i.xu, %vp56_rac_get_tree.exit ], [ %i.df, %bb.ae ], [ %i.aik, %vpx_rac_renorm.exit155.5 ] ; 2 uses
  %i.ajn = phi ptr [ %i.ta, %bb.ad ], [ %i.xv, %vp56_rac_get_tree.exit ], [ %i.dg, %bb.ae ], [ %i.ail, %vpx_rac_renorm.exit155.5 ] ; 2 uses
  %i.ajo = phi ptr [ %i.tb, %bb.ad ], [ %i.xw, %vp56_rac_get_tree.exit ], [ %i.dh, %bb.ae ], [ %i.aim, %vpx_rac_renorm.exit155.5 ] ; 2 uses
  %i.ajp = phi ptr [ %i.tc, %bb.ad ], [ %i.xx, %vp56_rac_get_tree.exit ], [ %i.di, %bb.ae ], [ %i.ain, %vpx_rac_renorm.exit155.5 ] ; 2 uses
  %i.ajq = phi ptr [ %i.td, %bb.ad ], [ %i.xy, %vp56_rac_get_tree.exit ], [ %i.dj, %bb.ae ], [ %i.aio, %vpx_rac_renorm.exit155.5 ] ; 2 uses
  %i.ajr = phi ptr [ %i.te, %bb.ad ], [ %i.xz, %vp56_rac_get_tree.exit ], [ %i.dk, %bb.ae ], [ %i.aip, %vpx_rac_renorm.exit155.5 ] ; 2 uses
  %i.ajs = phi ptr [ %i.tf, %bb.ad ], [ %i.ya, %vp56_rac_get_tree.exit ], [ %i.dl, %bb.ae ], [ %i.aiq, %vpx_rac_renorm.exit155.5 ] ; 2 uses
  %i.ajt = phi ptr [ %i.tg, %bb.ad ], [ %i.yb, %vp56_rac_get_tree.exit ], [ %i.dm, %bb.ae ], [ %i.air, %vpx_rac_renorm.exit155.5 ] ; 2 uses
  %i.aju = phi ptr [ %i.th, %bb.ad ], [ %i.yc, %vp56_rac_get_tree.exit ], [ %i.dn, %bb.ae ], [ %i.ais, %vpx_rac_renorm.exit155.5 ] ; 2 uses
  %i.ajv = phi ptr [ %i.ti, %bb.ad ], [ %i.yd, %vp56_rac_get_tree.exit ], [ %i.do, %bb.ae ], [ %i.ait, %vpx_rac_renorm.exit155.5 ] ; 2 uses
  %i.ajw = phi ptr [ %i.tj, %bb.ad ], [ %i.ye, %vp56_rac_get_tree.exit ], [ %i.dp, %bb.ae ], [ %i.aiu, %vpx_rac_renorm.exit155.5 ] ; 2 uses
  %i.ajx = phi ptr [ %i.tk, %bb.ad ], [ %i.yf, %vp56_rac_get_tree.exit ], [ %i.dq, %bb.ae ], [ %i.aiv, %vpx_rac_renorm.exit155.5 ] ; 2 uses
  %.293 = phi i32 [ %.192, %bb.ad ], [ 0, %vp56_rac_get_tree.exit ], [ 0, %bb.ae ], [ 0, %vpx_rac_renorm.exit155.5 ] ; 2 uses
  %.2 = phi i32 [ 1, %bb.ad ], [ %i.ys, %vp56_rac_get_tree.exit ], [ %.0, %bb.ae ], [ %i.ajh, %vpx_rac_renorm.exit155.5 ] ; 2 uses
  %i.ajy = add nsw i32 %.2, %.099                 ; 3 uses
  %i.ajz = icmp sgt i32 %i.ajy, 63
  br i1 %i.ajz, label %.loopexit189, label %bb.ay

bb.ay:                                            ; preds = %.loopexit188
  %i.aka = sext i32 %i.ajy to i64
  %i.akb = getelementptr inbounds i8, ptr @vp6_coeff_groups, i64 %i.aka
  %i.akc = load i8, ptr %i.akb, align 1, !tbaa !54
  %i.akd = zext nneg i32 %.293 to i64
  %i.ake = getelementptr inbounds nuw [66 x i8], ptr %i.bq, i64 %i.akd
  %i.akf = zext i8 %i.akc to i64
  %i.akg = getelementptr inbounds nuw [11 x i8], ptr %i.ake, i64 %i.akf ; 2 uses
  br label %bb.f

.loopexit189:                                     ; preds = %.loopexit188, %vpx_rac_get_prob_branchy.exit.thread
  %i.akh = phi ptr [ %i.va, %vpx_rac_get_prob_branchy.exit.thread ], [ %i.aji, %.loopexit188 ]
  %i.aki = phi ptr [ %i.vb, %vpx_rac_get_prob_branchy.exit.thread ], [ %i.ajj, %.loopexit188 ]
  %i.akj = phi ptr [ %i.vc, %vpx_rac_get_prob_branchy.exit.thread ], [ %i.ajk, %.loopexit188 ]
  %i.akk = phi ptr [ %i.vd, %vpx_rac_get_prob_branchy.exit.thread ], [ %i.ajl, %.loopexit188 ]
  %i.akl = phi ptr [ %i.ve, %vpx_rac_get_prob_branchy.exit.thread ], [ %i.ajm, %.loopexit188 ]
  %i.akm = phi ptr [ %i.vf, %vpx_rac_get_prob_branchy.exit.thread ], [ %i.ajn, %.loopexit188 ]
  %i.akn = phi ptr [ %i.vg, %vpx_rac_get_prob_branchy.exit.thread ], [ %i.ajo, %.loopexit188 ]
  %i.ako = phi ptr [ %i.vh, %vpx_rac_get_prob_branchy.exit.thread ], [ %i.ajp, %.loopexit188 ]
  %i.akp = phi ptr [ %i.vi, %vpx_rac_get_prob_branchy.exit.thread ], [ %i.ajq, %.loopexit188 ]
  %i.akq = phi ptr [ %i.vj, %vpx_rac_get_prob_branchy.exit.thread ], [ %i.ajr, %.loopexit188 ]
  %i.akr = phi ptr [ %i.vk, %vpx_rac_get_prob_branchy.exit.thread ], [ %i.ajs, %.loopexit188 ]
  %i.aks = phi ptr [ %i.vl, %vpx_rac_get_prob_branchy.exit.thread ], [ %i.ajt, %.loopexit188 ]
  %i.akt = phi ptr [ %i.vm, %vpx_rac_get_prob_branchy.exit.thread ], [ %i.aju, %.loopexit188 ]
  %i.aku = phi ptr [ %i.vn, %vpx_rac_get_prob_branchy.exit.thread ], [ %i.ajv, %.loopexit188 ]
  %i.akv = phi ptr [ %i.vo, %vpx_rac_get_prob_branchy.exit.thread ], [ %i.ajw, %.loopexit188 ]
  %i.akw = phi ptr [ %i.vp, %vpx_rac_get_prob_branchy.exit.thread ], [ %i.ajx, %.loopexit188 ]
  %.1100 = phi i64 [ %i.vw, %vpx_rac_get_prob_branchy.exit.thread ], [ 63, %.loopexit188 ]
  %i.akx = load i16, ptr %i.bp, align 16, !tbaa !50
  %i.aky = icmp ne i16 %i.akx, 0
  %i.akz = zext i1 %i.aky to i8                   ; 2 uses
  %i.ala = load i32, ptr %i.be, align 4, !tbaa !66
  %i.alb = sext i32 %i.ala to i64
  %i.alc = getelementptr inbounds [12 x i8], ptr %.pre, i64 %i.alb
  store i8 %i.akz, ptr %i.alc, align 4, !tbaa !132
  store i8 %i.akz, ptr %i.bb, align 4, !tbaa !132
  %i.ald = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.1100
  %i.ale = load i8, ptr %i.ald, align 1, !tbaa !54
  %i.alf = zext i8 %i.ale to i32
  %i.alg = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv228
  store i32 %i.alf, ptr %i.alg, align 4, !tbaa !66
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next229, 6
  br i1 %exitcond.not, label %.loopexit191, label %bb.e, !llvm.loop !128

.loopexit191:                                     ; preds = %.loopexit189, %bb.d
  %.0106 = phi i32 [ -1094995529, %bb.d ], [ 0, %.loopexit189 ]
  ret i32 %.0106
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1094995529, 1) i32 @vp6_parse_coeff_huffman(ptr nofree noundef captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5184
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5856
  %i.f = getelementptr i8, ptr %0, i64 5168       ; 14 uses
  %i.g = getelementptr i8, ptr %0, i64 5172
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 5160
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5176
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 814
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 5280
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 5864
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1696
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %.loopexit ] ; 4 uses
  %.085135 = phi i32 [ 0, %bb.a ], [ %spec.select, %.loopexit ]
  %i.q = icmp samesign ugt i64 %indvars.iv, 3
  %spec.select = select i1 %i.q, i32 1, i32 %.085135 ; 2 uses
  %i.r = zext nneg i32 %spec.select to i64        ; 4 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.r
  %invariant.gep = getelementptr [4 x i8], ptr %i.e, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw [128 x i8], ptr %i.l, i64 %indvars.iv
  %i.u = getelementptr inbounds nuw [288 x i8], ptr %i.m, i64 %i.r
  br label %bb.c

bb.c:                                             ; preds = %bb.z, %bb.b
  %.090 = phi ptr [ %i.s, %bb.b ], [ %i.iv, %bb.z ]
  %.088 = phi i32 [ 0, %bb.b ], [ %i.ik, %bb.z ]  ; 11 uses
  %.080 = phi i32 [ 0, %bb.b ], [ %.383, %bb.z ]
  %i.v = icmp slt i32 %.088, 2
  br i1 %i.v, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.w = sext i32 %.088 to i64
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.w ; 2 uses
  %i.x = load i32, ptr %gep, align 4, !tbaa !66   ; 2 uses
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = add i32 %i.x, -1
  store i32 %i.y, ptr %gep, align 4, !tbaa !66
  %.not105 = icmp eq i32 %.088, 0
  br i1 %.not105, label %.thread, label %.loopexit

bb.f:                                             ; preds = %bb.d, %bb.c
  %.val = load i32, ptr %i.f, align 8, !tbaa !82  ; 5 uses
  %.val106 = load i32, ptr %i.g, align 4, !tbaa !80
  %.not129 = icmp sgt i32 %.val106, %.val
  br i1 %.not129, label %bb.g, label %.loopexit130

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %.090, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !136 ; 2 uses
  %i.ab = load i32, ptr %i.i, align 8, !tbaa !81  ; 14 uses
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !79  ; 14 uses
  %i.ad = lshr i32 %.val, 3
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 1, !tbaa !54
  %i.ah = tail call i32 @llvm.bswap.i32(i32 %i.ag)
  %i.ai = and i32 %.val, 7
  %i.aj = shl i32 %i.ah, %i.ai
  %i.ak = lshr i32 %i.aj, 22
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.al ; 2 uses
  %i.an = load i16, ptr %i.am, align 2, !tbaa !54
  %i.ao = sext i16 %i.an to i32                   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !54 ; 2 uses
  %i.ar = sext i16 %i.aq to i32                   ; 2 uses
  %i.as = icmp slt i16 %i.aq, 0
  br i1 %i.as, label %bb.h, label %get_vlc2.exit

bb.h:                                             ; preds = %bb.g
  %i.at = add i32 %.val, 10
  %i.au = tail call i32 @llvm.umin.i32(i32 %i.ab, i32 %i.at) ; 3 uses
  %i.av = lshr i32 %i.au, 3
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 1, !tbaa !54
  %i.az = tail call i32 @llvm.bswap.i32(i32 %i.ay)
  %i.ba = and i32 %i.au, 7
  %i.bb = shl i32 %i.az, %i.ba
  %i.bc = add nsw i32 %i.ar, 32
  %i.bd = lshr i32 %i.bb, %i.bc
  %i.be = add i32 %i.bd, %i.ao
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !54
  %i.bj = sext i16 %i.bi to i32
  %i.bk = load i16, ptr %i.bg, align 2, !tbaa !54
  %i.bl = sext i16 %i.bk to i32
  br label %get_vlc2.exit

get_vlc2.exit:                                    ; preds = %bb.g, %bb.h
  %.167.i = phi i32 [ %i.bl, %bb.h ], [ %i.ao, %bb.g ] ; 5 uses
  %.165.i = phi i32 [ %i.au, %bb.h ], [ %.val, %bb.g ]
  %.1.i = phi i32 [ %i.bj, %bb.h ], [ %i.ar, %bb.g ]
  %i.bm = add i32 %.1.i, %.165.i
  %i.bn = tail call i32 @llvm.umin.i32(i32 %i.ab, i32 %i.bm) ; 14 uses
  store i32 %i.bn, ptr %i.f, align 8, !tbaa !82
  switch i32 %.167.i, label %bb.s [
    i32 0, label %bb.i
    i32 11, label %bb.o
  ]

bb.i:                                             ; preds = %get_vlc2.exit
  %.not104 = icmp eq i32 %.088, 0
  br i1 %.not104, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = icmp sgt i32 %.088, 5
  %i.bp = zext i1 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 5240
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !136
  %i.bt = lshr i32 %i.bn, 3
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 1, !tbaa !54
  %i.bx = tail call i32 @llvm.bswap.i32(i32 %i.bw)
  %i.by = and i32 %i.bn, 7
  %i.bz = shl i32 %i.bx, %i.by
  %i.ca = lshr i32 %i.bz, 24
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.cb ; 2 uses
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !54 ; 2 uses
  %i.ce = sext i16 %i.cd to i32
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !54
  %i.ch = sext i16 %i.cg to i32
  %i.ci = add i32 %i.bn, %i.ch
  %i.cj = tail call i32 @llvm.umin.i32(i32 %i.ab, i32 %i.ci) ; 4 uses
  store i32 %i.cj, ptr %i.f, align 8, !tbaa !82
  %i.ck = add nsw i32 %i.ce, 1                    ; 2 uses
  %i.cl = icmp sgt i16 %i.cd, 7
  br i1 %i.cl, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.cm = lshr i32 %i.cj, 3
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 1, !tbaa !54
  %i.cq = tail call i32 @llvm.bswap.i32(i32 %i.cp)
  %i.cr = and i32 %i.cj, 7
  %i.cs = shl i32 %i.cq, %i.cr
  %i.ct = lshr i32 %i.cs, 26
  %i.cu = add i32 %i.cj, 6
  %i.cv = tail call i32 @llvm.umin.i32(i32 %i.ab, i32 %i.cu)
  store i32 %i.cv, ptr %i.f, align 8, !tbaa !82
  %i.cw = add nuw nsw i32 %i.ct, %i.ck
  br label %.thread

bb.l:                                             ; preds = %bb.i
  %i.cx = lshr i32 %i.bn, 3
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 1, !tbaa !54
  %i.db = tail call i32 @llvm.bswap.i32(i32 %i.da)
  %i.dc = and i32 %i.bn, 7
  %i.dd = shl i32 %i.db, %i.dc
  %i.de = lshr i32 %i.dd, 30                      ; 2 uses
  %i.df = add i32 %i.bn, 2
  %i.dg = tail call i32 @llvm.umin.i32(i32 %i.ab, i32 %i.df) ; 8 uses
  store i32 %i.dg, ptr %i.f, align 8, !tbaa !82
  switch i32 %i.de, label %vp6_get_nb_null.exit [
    i32 2, label %bb.m
    i32 3, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.dh = lshr i32 %i.dg, 3
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 1, !tbaa !54
  %i.dl = tail call i32 @llvm.bswap.i32(i32 %i.dk)
  %i.dm = and i32 %i.dg, 7
  %i.dn = shl i32 %i.dl, %i.dm
  %i.do = lshr i32 %i.dn, 30
  %i.dp = add i32 %i.dg, 2
  %i.dq = tail call i32 @llvm.umin.i32(i32 %i.ab, i32 %i.dp)
  store i32 %i.dq, ptr %i.f, align 8, !tbaa !82
  %i.dr = add nuw nsw i32 %i.do, 2
  br label %vp6_get_nb_null.exit

bb.n:                                             ; preds = %bb.l
  %i.ds = lshr i32 %i.dg, 3
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !54
  %i.dw = icmp slt i32 %i.dg, %i.ab
  %i.dx = zext i1 %i.dw to i32
  %spec.select.i.i = add i32 %i.dg, %i.dx         ; 4 uses
  %i.dy = zext i8 %i.dv to i32
  %i.dz = and i32 %i.dg, 7
  %i.ea = shl nuw nsw i32 %i.dy, %i.dz
  store i32 %spec.select.i.i, ptr %i.f, align 8, !tbaa !82
  %i.eb = lshr i32 %i.ea, 5
  %i.ec = and i32 %i.eb, 4                        ; 3 uses
  %i.ed = add nuw nsw i32 %i.ec, 6
  %i.ee = lshr i32 %spec.select.i.i, 3
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 1, !tbaa !54
  %i.ei = tail call i32 @llvm.bswap.i32(i32 %i.eh)
  %i.ej = and i32 %spec.select.i.i, 7
  %i.ek = shl i32 %i.ei, %i.ej
  %i.el = sub nuw nsw i32 30, %i.ec
  %i.em = lshr i32 %i.ek, %i.el
  %i.en = add i32 %spec.select.i.i, 2
  %i.eo = add i32 %i.en, %i.ec
  %i.ep = tail call i32 @llvm.umin.i32(i32 %i.ab, i32 %i.eo)
  store i32 %i.ep, ptr %i.f, align 8, !tbaa !82
  %i.eq = add nuw nsw i32 %i.ed, %i.em
  br label %vp6_get_nb_null.exit

vp6_get_nb_null.exit:                             ; preds = %bb.l, %bb.m, %bb.n
  %.0.i = phi i32 [ %i.dr, %bb.m ], [ %i.eq, %bb.n ], [ %i.de, %bb.l ]
  store i32 %.0.i, ptr %invariant.gep, align 4, !tbaa !66
  br label %.thread

bb.o:                                             ; preds = %get_vlc2.exit
  %i.er = icmp eq i32 %.088, 1
  br i1 %i.er, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.es = lshr i32 %i.bn, 3
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 1, !tbaa !54
  %i.ew = tail call i32 @llvm.bswap.i32(i32 %i.ev)
  %i.ex = and i32 %i.bn, 7
  %i.ey = shl i32 %i.ew, %i.ex
  %i.ez = lshr i32 %i.ey, 30                      ; 2 uses
  %i.fa = add i32 %i.bn, 2
  %i.fb = tail call i32 @llvm.umin.i32(i32 %i.ab, i32 %i.fa) ; 8 uses
  store i32 %i.fb, ptr %i.f, align 8, !tbaa !82
  switch i32 %i.ez, label %vp6_get_nb_null.exit109 [
    i32 2, label %bb.q
    i32 3, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.fc = lshr i32 %i.fb, 3
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 1, !tbaa !54
  %i.fg = tail call i32 @llvm.bswap.i32(i32 %i.ff)
  %i.fh = and i32 %i.fb, 7
  %i.fi = shl i32 %i.fg, %i.fh
  %i.fj = lshr i32 %i.fi, 30
  %i.fk = add i32 %i.fb, 2
  %i.fl = tail call i32 @llvm.umin.i32(i32 %i.ab, i32 %i.fk)
  store i32 %i.fl, ptr %i.f, align 8, !tbaa !82
  %i.fm = add nuw nsw i32 %i.fj, 2
  br label %vp6_get_nb_null.exit109

bb.r:                                             ; preds = %bb.p
  %i.fn = lshr i32 %i.fb, 3
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !54
  %i.fr = icmp slt i32 %i.fb, %i.ab
  %i.fs = zext i1 %i.fr to i32
  %spec.select.i.i107 = add i32 %i.fb, %i.fs      ; 4 uses
  %i.ft = zext i8 %i.fq to i32
  %i.fu = and i32 %i.fb, 7
  %i.fv = shl nuw nsw i32 %i.ft, %i.fu
  store i32 %spec.select.i.i107, ptr %i.f, align 8, !tbaa !82
  %i.fw = lshr i32 %i.fv, 5
  %i.fx = and i32 %i.fw, 4                        ; 3 uses
  %i.fy = add nuw nsw i32 %i.fx, 6
  %i.fz = lshr i32 %spec.select.i.i107, 3
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 1, !tbaa !54
  %i.gd = tail call i32 @llvm.bswap.i32(i32 %i.gc)
  %i.ge = and i32 %spec.select.i.i107, 7
  %i.gf = shl i32 %i.gd, %i.ge
  %i.gg = sub nuw nsw i32 30, %i.fx
  %i.gh = lshr i32 %i.gf, %i.gg
  %i.gi = add i32 %spec.select.i.i107, 2
  %i.gj = add i32 %i.gi, %i.fx
  %i.gk = tail call i32 @llvm.umin.i32(i32 %i.ab, i32 %i.gj)
  store i32 %i.gk, ptr %i.f, align 8, !tbaa !82
  %i.gl = add nuw nsw i32 %i.fy, %i.gh
  br label %vp6_get_nb_null.exit109

vp6_get_nb_null.exit109:                          ; preds = %bb.p, %bb.q, %bb.r
  %.0.i108 = phi i32 [ %i.fm, %bb.q ], [ %i.gl, %bb.r ], [ %i.ez, %bb.p ]
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.r
  store i32 %.0.i108, ptr %i.gm, align 4, !tbaa !66
  br label %.loopexit

bb.s:                                             ; preds = %get_vlc2.exit
  %i.gn = sext i32 %.167.i to i64
  %i.go = getelementptr inbounds i8, ptr @ff_vp56_coeff_bias, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !54
  %i.gq = zext i8 %i.gp to i32                    ; 2 uses
  %i.gr = icmp sgt i32 %.167.i, 4
  br i1 %i.gr, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.gs = icmp samesign ult i32 %.167.i, 10
  %i.gt = add nsw i32 %.167.i, -4
  %i.gu = select i1 %i.gs, i32 %i.gt, i32 11      ; 2 uses
  %i.gv = lshr i32 %i.bn, 3
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.gw
  %i.gy = load i32, ptr %i.gx, align 1, !tbaa !54
  %i.gz = tail call i32 @llvm.bswap.i32(i32 %i.gy)
  %i.ha = and i32 %i.bn, 7
  %i.hb = shl i32 %i.gz, %i.ha
  %i.hc = sub nuw nsw i32 32, %i.gu
  %i.hd = lshr i32 %i.hb, %i.hc
  %i.he = add i32 %i.bn, %i.gu
  %i.hf = tail call i32 @llvm.umin.i32(i32 %i.ab, i32 %i.he) ; 2 uses
  store i32 %i.hf, ptr %i.f, align 8, !tbaa !82
  %i.hg = add nuw nsw i32 %i.hd, %i.gq
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.hh = phi i32 [ %i.hf, %bb.t ], [ %i.bn, %bb.s ] ; 4 uses
  %.0 = phi i32 [ %i.hg, %bb.t ], [ %i.gq, %bb.s ] ; 2 uses
  %i.hi = icmp samesign ugt i32 %.0, 1
  %i.hj = select i1 %i.hi, i32 2, i32 1
  %i.hk = lshr i32 %i.hh, 3
  %i.hl = zext nneg i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.hl
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !54
  %i.ho = icmp slt i32 %i.hh, %i.ab
  %i.hp = zext i1 %i.ho to i32
  %spec.select.i = add i32 %i.hh, %i.hp
  %i.hq = zext i8 %i.hn to i32
  %i.hr = and i32 %i.hh, 7
  %i.hs = shl nuw nsw i32 %i.hq, %i.hr
  %i.ht = lshr i32 %i.hs, 7
  store i32 %spec.select.i, ptr %i.f, align 8, !tbaa !82
  %i.hu = and i32 %i.ht, 1                        ; 2 uses
  %i.hv = sub nsw i32 0, %i.hu
  %i.hw = xor i32 %.0, %i.hv
  %i.hx = add nsw i32 %i.hw, %i.hu                ; 2 uses
  %.not103 = icmp eq i32 %.088, 0
  br i1 %.not103, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hy = load i16, ptr %i.j, align 2, !tbaa !84
  %i.hz = zext i16 %i.hy to i32
  %i.ia = mul nsw i32 %i.hx, %i.hz
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.1 = phi i32 [ %i.ia, %bb.v ], [ %i.hx, %bb.u ]
  %i.ib = sext i32 %.088 to i64
  %i.ic = getelementptr inbounds i8, ptr %i.k, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !54
  %i.ie = trunc i32 %.1 to i16
  %i.if = zext i8 %i.id to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.if
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !54
  %i.ii = zext i8 %i.ih to i64
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.ii
  store i16 %i.ie, ptr %i.ij, align 2, !tbaa !50
  br label %.thread

.thread:                                          ; preds = %bb.w, %bb.j, %bb.k, %vp6_get_nb_null.exit, %bb.e
  %.383 = phi i32 [ %.080, %bb.e ], [ 0, %vp6_get_nb_null.exit ], [ 0, %bb.k ], [ 0, %bb.j ], [ %i.hj, %bb.w ] ; 2 uses
  %.4 = phi i32 [ 1, %bb.e ], [ 1, %vp6_get_nb_null.exit ], [ %i.cw, %bb.k ], [ %i.ck, %bb.j ], [ 1, %bb.w ]
  %i.ik = add nsw i32 %.4, %.088                  ; 4 uses
  %i.il = icmp sgt i32 %i.ik, 63
  br i1 %i.il, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %.thread
  %i.im = sext i32 %i.ik to i64                   ; 2 uses
  %i.in = add nsw i64 %i.im, -22
  %i.io = icmp ult i64 %i.in, 42
  br i1 %i.io, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ip = getelementptr inbounds i8, ptr @vp6_coeff_groups, i64 %i.im
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !54
  %i.ir = zext i8 %i.iq to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.is = phi i64 [ %i.ir, %bb.y ], [ 3, %bb.x ]
  %i.it = zext nneg i32 %.383 to i64
  %i.iu = getelementptr inbounds nuw [96 x i8], ptr %i.u, i64 %i.it
  %i.iv = getelementptr inbounds nuw [24 x i8], ptr %i.iu, i64 %i.is
  br label %bb.c

.loopexit:                                        ; preds = %bb.e, %.thread, %vp6_get_nb_null.exit109, %bb.o
  %.189.ph = phi i32 [ 1, %vp6_get_nb_null.exit109 ], [ %.088, %bb.o ], [ %i.ik, %.thread ], [ %.088, %bb.e ]
  %i.iw = tail call i32 @llvm.smin.i32(i32 %.189.ph, i32 63)
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr inbounds i8, ptr %i.o, i64 %i.ix
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !54
  %i.ja = zext i8 %i.iz to i32
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  store i32 %i.ja, ptr %i.jb, align 4, !tbaa !66
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %.loopexit130, label %bb.b, !llvm.loop !133

.loopexit130:                                     ; preds = %.loopexit, %bb.f
  %.395 = phi i32 [ -1094995529, %bb.f ], [ 0, %.loopexit ]
  ret i32 %.395
}

; Function Attrs: cold nounwind optsize uwtable
define internal fastcc void @vp6_decode_free_context(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @ff_vp56_free_context(ptr noundef %0) #13 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 5184
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5232
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5280
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  ret void

bb.c:                                             ; preds = %bb.a, %bb.d
  %i.e = phi i1 [ true, %bb.a ], [ false, %bb.d ]
  %indvars.iv24 = phi i64 [ 0, %bb.a ], [ 1, %bb.d ] ; 3 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %indvars.iv24
  tail call void @ff_vlc_free(ptr noundef nonnull %i.f) #13
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %indvars.iv24
  tail call void @ff_vlc_free(ptr noundef nonnull %i.g) #13
  %i.h = getelementptr inbounds nuw [288 x i8], ptr %i.d, i64 %indvars.iv24
  br label %.preheader

.preheader:                                       ; preds = %bb.c, %bb.e
  %indvars.iv20 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next21, %bb.e ] ; 2 uses
  %i.i = getelementptr inbounds nuw [96 x i8], ptr %i.h, i64 %indvars.iv20
  br label %bb.f

bb.d:                                             ; preds = %bb.e
  br i1 %i.e, label %bb.c, label %bb.b, !llvm.loop !137

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1 ; 2 uses
  %exitcond23.not = icmp eq i64 %indvars.iv.next21, 3
  br i1 %exitcond23.not, label %bb.d, label %.preheader, !llvm.loop !138

bb.f:                                             ; preds = %.preheader, %bb.f
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %indvars.iv
  tail call void @ff_vlc_free(ptr noundef nonnull %i.j) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !139
}

declare i32 @ff_vp56_free_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #11

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { cold }
attributes #13 = { nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !61}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 1, !"override-stack-alignment", i32 16}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTS7AVClass", !10, i64 0}
!12 = !{!"p1 _ZTS7AVCodec", !10, i64 0}
!13 = !{!"p1 _ZTS15AVCodecInternal", !10, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!"p1 omnipotent char", !10, i64 0}
!16 = !{!"AVRational", !7, i64 0, !7, i64 4}
!17 = !{!"float", !6, i64 0}
!18 = !{!"p1 short", !10, i64 0}
!19 = !{!"AVChannelLayout", !7, i64 0, !7, i64 4, !6, i64 8, !10, i64 16}
!20 = !{!"p1 _ZTS10RcOverride", !10, i64 0}
!21 = !{!"p1 _ZTS9AVHWAccel", !10, i64 0}
!22 = !{!"p1 _ZTS11AVBufferRef", !10, i64 0}
!23 = !{!"p1 _ZTS17AVCodecDescriptor", !10, i64 0}
!24 = !{!"p1 _ZTS16AVPacketSideData", !10, i64 0}
!25 = !{!"p1 int", !10, i64 0}
!26 = !{!"any p2 pointer", !10, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !26, i64 0}
!28 = !{!"AVCodecContext", !11, i64 0, !7, i64 8, !7, i64 12, !12, i64 16, !7, i64 24, !7, i64 28, !10, i64 32, !13, i64 40, !10, i64 48, !14, i64 56, !7, i64 64, !7, i64 68, !15, i64 72, !7, i64 80, !16, i64 84, !16, i64 92, !16, i64 100, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !16, i64 128, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !10, i64 184, !10, i64 192, !7, i64 200, !17, i64 204, !17, i64 208, !17, i64 212, !17, i64 216, !17, i64 220, !17, i64 224, !17, i64 228, !17, i64 232, !17, i64 236, !7, i64 240, !7, i64 244, !7, i64 248, !7, i64 252, !7, i64 256, !7, i64 260, !7, i64 264, !7, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !18, i64 288, !18, i64 296, !18, i64 304, !7, i64 312, !7, i64 316, !7, i64 320, !7, i64 324, !7, i64 328, !7, i64 332, !7, i64 336, !7, i64 340, !7, i64 344, !7, i64 348, !19, i64 352, !7, i64 376, !7, i64 380, !7, i64 384, !7, i64 388, !7, i64 392, !7, i64 396, !7, i64 400, !7, i64 404, !10, i64 408, !7, i64 416, !7, i64 420, !7, i64 424, !17, i64 428, !17, i64 432, !7, i64 436, !7, i64 440, !7, i64 444, !7, i64 448, !7, i64 452, !20, i64 456, !14, i64 464, !14, i64 472, !17, i64 480, !17, i64 484, !7, i64 488, !7, i64 492, !15, i64 496, !15, i64 504, !7, i64 512, !7, i64 516, !7, i64 520, !7, i64 524, !7, i64 528, !21, i64 536, !10, i64 544, !22, i64 552, !22, i64 560, !7, i64 568, !7, i64 572, !6, i64 576, !7, i64 640, !7, i64 644, !7, i64 648, !7, i64 652, !7, i64 656, !7, i64 660, !7, i64 664, !10, i64 672, !10, i64 680, !7, i64 688, !7, i64 692, !7, i64 696, !7, i64 700, !7, i64 704, !7, i64 708, !7, i64 712, !7, i64 716, !7, i64 720, !23, i64 728, !15, i64 736, !7, i64 744, !7, i64 748, !15, i64 752, !15, i64 760, !15, i64 768, !24, i64 776, !7, i64 784, !7, i64 788, !14, i64 792, !7, i64 800, !7, i64 804, !14, i64 808, !10, i64 816, !14, i64 824, !25, i64 832, !7, i64 840, !27, i64 848, !7, i64 856, !7, i64 860}
!29 = !{!28, !10, i64 32}
!30 = !{!"p1 _ZTS14AVCodecContext", !10, i64 0}
!31 = !{!"H264ChromaContext", !6, i64 0, !6, i64 32}
!32 = !{!"HpelDSPContext", !6, i64 0, !6, i64 128, !6, i64 256, !6, i64 352}
!33 = !{!"VideoDSPContext", !10, i64 0, !10, i64 8}
!34 = !{!"VP3DSPContext", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56}
!35 = !{!"VPXRangeCoder", !7, i64 0, !7, i64 4, !15, i64 8, !15, i64 16, !7, i64 24, !7, i64 28}
!36 = !{!"p1 _ZTS13VPXRangeCoder", !10, i64 0}
!37 = !{!"short", !6, i64 0}
!38 = !{!"p1 _ZTS9VP56RefDc", !10, i64 0}
!39 = !{!"p1 _ZTS14VP56Macroblock", !10, i64 0}
!40 = !{!"p1 _ZTS12vp56_context", !10, i64 0}
!41 = !{!"p1 _ZTS9VP56Model", !10, i64 0}
!42 = !{!"VP56Model", !6, i64 0, !6, i64 64, !6, i64 128, !6, i64 192, !6, i64 194, !6, i64 196, !6, i64 200, !6, i64 214, !6, i64 230, !6, i64 252, !6, i64 648, !6, i64 1188, !6, i64 1548, !6, i64 1576, !6, i64 1876}
!43 = !{!"GetBitContext", !15, i64 0, !7, i64 8, !7, i64 12, !7, i64 16}
!44 = !{!"vp56_context", !30, i64 0, !31, i64 8, !32, i64 72, !33, i64 456, !34, i64 472, !6, i64 536, !6, i64 552, !6, i64 616, !15, i64 648, !15, i64 656, !35, i64 664, !35, i64 696, !36, i64 728, !7, i64 736, !7, i64 740, !6, i64 744, !6, i64 760, !7, i64 776, !7, i64 780, !6, i64 784, !7, i64 808, !37, i64 812, !37, i64 814, !38, i64 816, !6, i64 824, !6, i64 872, !6, i64 896, !7, i64 916, !39, i64 920, !6, i64 928, !6, i64 1696, !15, i64 1720, !6, i64 1728, !6, i64 1752, !7, i64 1760, !7, i64 1764, !7, i64 1768, !7, i64 1772, !7, i64 1776, !7, i64 1780, !7, i64 1784, !6, i64 1792, !6, i64 2816, !6, i64 3072, !7, i64 3076, !7, i64 3080, !7, i64 3084, !7, i64 3088, !7, i64 3092, !7, i64 3096, !7, i64 3100, !6, i64 3104, !15, i64 3136, !10, i64 3144, !10, i64 3152, !10, i64 3160, !10, i64 3168, !10, i64 3176, !10, i64 3184, !10, i64 3192, !40, i64 3200, !41, i64 3208, !42, i64 3216, !7, i64 5152, !43, i64 5160, !6, i64 5184, !6, i64 5232, !6, i64 5280, !6, i64 5856, !7, i64 5872, !7, i64 5876}
!45 = !{!44, !40, i64 3200}
!46 = !{!44, !7, i64 3092}
!47 = !{!44, !7, i64 1768}
!48 = !{!10, !10, i64 0}
!49 = !{!44, !41, i64 3208}
!50 = !{!37, !37, i64 0}
!51 = !{!35, !7, i64 0}
!52 = !{!35, !7, i64 4}
!53 = !{!35, !7, i64 24}
!54 = !{!6, !6, i64 0}
!55 = !{!35, !15, i64 8}
!56 = !{!35, !15, i64 16}
!57 = !{!15, !15, i64 0}
!58 = !{!"VP56Tree", !6, i64 0, !6, i64 1}
!59 = !{!58, !6, i64 0}
!60 = !{!58, !6, i64 1}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!44, !7, i64 1776}
!63 = !{!44, !7, i64 1780}
!64 = !{!44, !7, i64 1784}
!65 = !{!44, !15, i64 1720}
!66 = !{!7, !7, i64 0}
!67 = !{!"p1 _ZTS7AVFrame", !10, i64 0}
!68 = !{!67, !67, i64 0}
!69 = !{!"p2 omnipotent char", !26, i64 0}
!70 = !{!"p2 _ZTS11AVBufferRef", !26, i64 0}
!71 = !{!"p1 _ZTS12AVDictionary", !10, i64 0}
!72 = !{!"AVFrame", !6, i64 0, !6, i64 64, !69, i64 96, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !16, i64 124, !14, i64 136, !14, i64 144, !16, i64 152, !7, i64 160, !10, i64 168, !7, i64 176, !7, i64 180, !6, i64 184, !70, i64 248, !7, i64 256, !27, i64 264, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !7, i64 296, !14, i64 304, !71, i64 312, !7, i64 320, !22, i64 328, !22, i64 336, !14, i64 344, !14, i64 352, !14, i64 360, !14, i64 368, !10, i64 376, !19, i64 384, !14, i64 408, !7, i64 416}
!73 = !{!72, !7, i64 276}
!74 = !{!44, !7, i64 5152}
!75 = !{!"Node", !37, i64 0, !37, i64 2, !7, i64 4}
!76 = !{!75, !7, i64 4}
!77 = !{!44, !30, i64 0}
!78 = !{!44, !7, i64 736}
!79 = !{!43, !15, i64 0}
!80 = !{!43, !7, i64 12}
!81 = !{!43, !7, i64 16}
!82 = !{!43, !7, i64 8}
!83 = !{!44, !36, i64 728}
!84 = !{!44, !37, i64 814}
!85 = !{!28, !7, i64 24}
!86 = !{!44, !7, i64 3076}
!87 = !{!44, !15, i64 3136}
!88 = !{!44, !10, i64 3144}
!89 = !{!44, !10, i64 3152}
!90 = distinct !{!90, !61}
!91 = !{!44, !7, i64 1760}
!92 = !{!"VP56mv", !37, i64 0, !37, i64 2}
!93 = !{!92, !37, i64 0}
!94 = !{!92, !37, i64 2}
!95 = distinct !{null}
!96 = !{!44, !15, i64 656}
!97 = distinct !{!97, !61}
!98 = distinct !{!98, !61}
!99 = distinct !{!99, !61}
!100 = distinct !{!100, !61}
!101 = distinct !{!101, !61}
!102 = distinct !{!102, !61}
!103 = distinct !{!103, !61}
!104 = distinct !{!104, !61}
!105 = distinct !{!105, !61}
!106 = distinct !{!106, !61}
!107 = distinct !{!107, !61}
!108 = !{!44, !7, i64 1764}
!109 = !{!44, !7, i64 3080}
!110 = !{!44, !39, i64 920}
!111 = !{!28, !7, i64 120}
!112 = !{!28, !7, i64 124}
!113 = !{!28, !7, i64 80}
!114 = !{!28, !7, i64 112}
!115 = !{!28, !7, i64 116}
!116 = !{!28, !15, i64 72}
!117 = !{!44, !7, i64 740}
!118 = !{!44, !7, i64 1772}
!119 = !{!44, !10, i64 3160}
!120 = distinct !{!120, !61}
!121 = distinct !{!121, !61, !124, !125}
!122 = distinct !{!122, !61, !125, !124}
!123 = distinct !{!123, !61}
!124 = !{!"llvm.loop.isvectorized", i32 1}
!125 = !{!"llvm.loop.unroll.runtime.disable"}
!126 = !{!75, !37, i64 0}
!127 = distinct !{!127, !61}
!128 = distinct !{!128, !61}
!129 = !{!35, !7, i64 28}
!130 = !{!44, !38, i64 816}
!131 = !{!"VP56RefDc", !6, i64 0, !7, i64 4, !37, i64 8}
!132 = !{!131, !6, i64 0}
!133 = distinct !{!133, !61}
!134 = !{!"p1 _ZTS7VLCElem", !10, i64 0}
!135 = !{!"VLC", !7, i64 0, !134, i64 8, !7, i64 16, !7, i64 20}
!136 = !{!135, !134, i64 8}
!137 = distinct !{!137, !61}
!138 = distinct !{!138, !61}
!139 = distinct !{!139, !61}
end_hunk_2
