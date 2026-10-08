Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/brotli/original/huffman?download=true
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 13
begin_hunk_0_@BrotliBuildCodeLengthsHuffmanTable:bb.a
  %.not84.3.1 = icmp eq i32 %i.kj, 0
  br i1 %.not84.3.1, label %._crit_edge.loopexit.3, label %ReplicateValue.exit.3, !llvm.loop !12

._crit_edge.loopexit.3:                           ; preds = %ReplicateValue.exit.3, %ReplicateValue.exit.3.prol.loopexit
  %indvars.iv.next100.3.lcssa = phi i64 [ %indvars.iv.next100.3.lcssa.unr, %ReplicateValue.exit.3.prol.loopexit ], [ %indvars.iv.next100.3.1, %ReplicateValue.exit.3 ]
  %.lcssa = phi i64 [ %.lcssa.unr, %ReplicateValue.exit.3.prol.loopexit ], [ %i.ki, %ReplicateValue.exit.3 ]
  %i.kk = trunc nsw i64 %indvars.iv.next100.3.lcssa to i32
  br label %._crit_edge.3

._crit_edge.3:                                    ; preds = %._crit_edge.loopexit.3, %._crit_edge.2
  %.282.lcssa.3 = phi i64 [ %.282.lcssa.2, %._crit_edge.2 ], [ %.lcssa, %._crit_edge.loopexit.3 ] ; 3 uses
  %.2.lcssa.3 = phi i32 [ %.2.lcssa.2, %._crit_edge.2 ], [ %i.kk, %._crit_edge.loopexit.3 ]
  %i.kl = load i16, ptr %i.w, align 2, !tbaa !9   ; 3 uses
  %.not8489.4 = icmp eq i16 %i.kl, 0
  br i1 %.not8489.4, label %.loopexit, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %._crit_edge.3
  %i.km = zext i16 %i.kl to i32                   ; 3 uses
  %i.kn = sext i32 %.2.lcssa.3 to i64             ; 3 uses
  %xtraiter124 = and i32 %i.km, 1
  %lcmp.mod125.not = icmp eq i32 %xtraiter124, 0
  br i1 %lcmp.mod125.not, label %ReplicateValue.exit.4.prol.loopexit, label %ReplicateValue.exit.4.prol

ReplicateValue.exit.4.prol:                       ; preds = %.lr.ph.4
  %i.ko = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.kn
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !13
  %.sroa.22.0.insert.ext.i.4.prol = shl i32 %i.kp, 16
  %.sroa.0.0.insert.insert.i.4.prol = or disjoint i32 %.sroa.22.0.insert.ext.i.4.prol, 5
  %i.kq = getelementptr inbounds nuw i8, ptr @kReverseBits, i64 %.282.lcssa.3
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !10
  %i.ks = zext i8 %i.kr to i64
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ks
  store i32 %.sroa.0.0.insert.insert.i.4.prol, ptr %i.kt, align 2
  %indvars.iv.next100.4.prol = add nuw nsw i64 %i.kn, 1
  %i.ku = add nuw nsw i64 %.282.lcssa.3, 8
  %i.kv = add nsw i32 %i.km, -1
  br label %ReplicateValue.exit.4.prol.loopexit

ReplicateValue.exit.4.prol.loopexit:              ; preds = %ReplicateValue.exit.4.prol, %.lr.ph.4
  %indvars.iv99.4.unr = phi i64 [ %i.kn, %.lr.ph.4 ], [ %indvars.iv.next100.4.prol, %ReplicateValue.exit.4.prol ]
  %.07691.4.unr = phi i32 [ %i.km, %.lr.ph.4 ], [ %i.kv, %ReplicateValue.exit.4.prol ]
  %.28290.4.unr = phi i64 [ %.282.lcssa.3, %.lr.ph.4 ], [ %i.ku, %ReplicateValue.exit.4.prol ]
  %i.kw = icmp eq i16 %i.kl, 1
  br i1 %i.kw, label %.loopexit, label %ReplicateValue.exit.4

ReplicateValue.exit.4:                            ; preds = %ReplicateValue.exit.4.prol.loopexit, %ReplicateValue.exit.4
  %indvars.iv99.4 = phi i64 [ %indvars.iv.next100.4.1, %ReplicateValue.exit.4 ], [ %indvars.iv99.4.unr, %ReplicateValue.exit.4.prol.loopexit ] ; 3 uses
  %.07691.4 = phi i32 [ %i.lm, %ReplicateValue.exit.4 ], [ %.07691.4.unr, %ReplicateValue.exit.4.prol.loopexit ]
  %.28290.4 = phi i64 [ %i.ll, %ReplicateValue.exit.4 ], [ %.28290.4.unr, %ReplicateValue.exit.4.prol.loopexit ] ; 3 uses
  %i.kx = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv99.4
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !13
  %.sroa.22.0.insert.ext.i.4 = shl i32 %i.ky, 16
  %.sroa.0.0.insert.insert.i.4 = or disjoint i32 %.sroa.22.0.insert.ext.i.4, 5
  %i.kz = getelementptr inbounds nuw i8, ptr @kReverseBits, i64 %.28290.4
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !10
  %i.lb = zext i8 %i.la to i64
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.lb
  store i32 %.sroa.0.0.insert.insert.i.4, ptr %i.lc, align 2
  %i.ld = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv99.4
  %i.le = getelementptr i8, ptr %i.ld, i64 4
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !13
  %.sroa.22.0.insert.ext.i.4.1 = shl i32 %i.lf, 16
  %.sroa.0.0.insert.insert.i.4.1 = or disjoint i32 %.sroa.22.0.insert.ext.i.4.1, 5
  %i.lg = getelementptr inbounds nuw i8, ptr @kReverseBits, i64 %.28290.4
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !10
  %i.lj = zext i8 %i.li to i64
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.lj
  store i32 %.sroa.0.0.insert.insert.i.4.1, ptr %i.lk, align 2
  %indvars.iv.next100.4.1 = add nuw nsw i64 %indvars.iv99.4, 2
  %i.ll = add nuw nsw i64 %.28290.4, 16
  %i.lm = add nsw i32 %.07691.4, -2               ; 2 uses
  %.not84.4.1 = icmp eq i32 %i.lm, 0
  br i1 %.not84.4.1, label %.loopexit, label %ReplicateValue.exit.4, !llvm.loop !12

.loopexit:                                        ; preds = %ReplicateValue.exit.4.prol.loopexit, %ReplicateValue.exit.4, %._crit_edge.3, %.loopexit.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden i32 @BrotliBuildHuffmanTable(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv198 = phi i32 [ %indvars.iv.next199, %bb.b ], [ 15, %bb.a ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ -1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds [2 x i8], ptr %2, i64 %indvars.iv
  %i.b = load i16, ptr %i.a, align 2, !tbaa !9
  %i.c = icmp eq i16 %i.b, -1
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %indvars.iv.next199 = add i32 %indvars.iv198, -1
  br i1 %i.c, label %bb.b, label %bb.c, !llvm.loop !14

bb.c:                                             ; preds = %bb.b
  %i.d = trunc nsw i64 %indvars.iv to i32
  %i.e = add nsw i32 %i.d, 16                     ; 4 uses
  %i.f = shl nuw i32 1, %1                        ; 6 uses
  %i.g = icmp sgt i32 %1, %i.e
  %i.h = shl nuw i32 1, %i.e
  %spec.select = tail call i32 @llvm.smin.i32(i32 %1, i32 %i.e)
  %spec.select117 = select i1 %i.g, i32 %i.h, i32 %i.f ; 3 uses
  %i.i = sext i32 %spec.select to i64
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %indvars.iv186 = phi i64 [ %indvars.iv.next187, %._crit_edge ], [ 1, %bb.c ] ; 5 uses
  %.0102 = phi i64 [ %.1103.lcssa, %._crit_edge ], [ 0, %bb.c ] ; 2 uses
  %.0101 = phi i64 [ %i.ae, %._crit_edge ], [ 128, %bb.c ] ; 2 uses
  %.095 = phi i32 [ %i.ad, %._crit_edge ], [ 2, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv186
  %i.k = load i16, ptr %i.j, align 2, !tbaa !9    ; 2 uses
  %.not129 = icmp eq i16 %i.k, 0
  br i1 %.not129, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.l = zext i16 %i.k to i32
  %i.m = trunc i64 %indvars.iv186 to i32
  %i.n = add i32 %i.m, -16
  %i.o = trunc nuw nsw i64 %indvars.iv186 to i32
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %ReplicateValue.exit127
  %.085132 = phi i32 [ %i.l, %.lr.ph ], [ %i.ac, %ReplicateValue.exit127 ]
  %.1103131 = phi i64 [ %.0102, %.lr.ph ], [ %i.ab, %ReplicateValue.exit127 ] ; 2 uses
  %.0107130 = phi i32 [ %i.n, %.lr.ph ], [ %i.s, %ReplicateValue.exit127 ]
  %i.p = sext i32 %.0107130 to i64
  %i.q = getelementptr inbounds [2 x i8], ptr %2, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2, !tbaa !9
  %i.s = zext i16 %i.r to i32                     ; 2 uses
  %.sroa.22.0.insert.shift.i123 = shl nuw i32 %i.s, 16
  %.sroa.0.0.insert.insert.i125 = or disjoint i32 %.sroa.22.0.insert.shift.i123, %i.o
  %i.t = getelementptr inbounds nuw i8, ptr @kReverseBits, i64 %.1103131
  %i.u = load i8, ptr %i.t, align 1, !tbaa !10
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.v
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.0.i126 = phi i32 [ %spec.select117, %bb.e ], [ %i.x, %bb.f ]
  %i.x = sub nsw i32 %.0.i126, %.095              ; 3 uses
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.y
  store i32 %.sroa.0.0.insert.insert.i125, ptr %i.z, align 2
  %i.aa = icmp sgt i32 %i.x, 0
  br i1 %i.aa, label %bb.f, label %ReplicateValue.exit127, !llvm.loop !15

ReplicateValue.exit127:                           ; preds = %bb.f
  %i.ab = add i64 %.1103131, %.0101               ; 2 uses
  %i.ac = add nsw i32 %.085132, -1                ; 2 uses
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %._crit_edge, label %bb.e, !llvm.loop !16

._crit_edge:                                      ; preds = %ReplicateValue.exit127, %bb.d
  %.1103.lcssa = phi i64 [ %.0102, %bb.d ], [ %i.ab, %ReplicateValue.exit127 ] ; 2 uses
  %i.ad = shl nuw nsw i32 %.095, 1
  %i.ae = lshr i64 %.0101, 1
  %indvars.iv.next187 = add nuw nsw i64 %indvars.iv186, 1
  %.not113.not = icmp slt i64 %indvars.iv186, %i.i
  br i1 %.not113.not, label %bb.d, label %.preheader, !llvm.loop !17

.preheader:                                       ; preds = %._crit_edge
  %.not114133 = icmp eq i32 %i.f, %spec.select117
  br i1 %.not114133, label %._crit_edge136, label %.lr.ph135

.lr.ph135:                                        ; preds = %.preheader, %.lr.ph135
  %.192134 = phi i32 [ %i.ai, %.lr.ph135 ], [ %spec.select117, %.preheader ] ; 2 uses
  %i.af = sext i32 %.192134 to i64                ; 2 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %0, i64 %i.af
  %i.ah = shl nsw i64 %i.af, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.ag, ptr align 2 %0, i64 %i.ah, i1 false)
  %i.ai = shl i32 %.192134, 1                     ; 2 uses
  %.not114 = icmp eq i32 %i.f, %i.ai
  br i1 %.not114, label %._crit_edge136, label %.lr.ph135, !llvm.loop !18

._crit_edge136:                                   ; preds = %.lr.ph135, %.preheader
  %i.aj = add nsw i32 %1, -1
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = lshr i64 128, %i.ak                     ; 2 uses
  %.not115.not165 = icmp slt i32 %1, %i.e
  br i1 %.not115.not165, label %.lr.ph178, label %._crit_edge179

.lr.ph178:                                        ; preds = %._crit_edge136
  %i.am = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.an = sext i32 %1 to i64                      ; 2 uses
  %wide.trip.count = sext i32 %indvars.iv198 to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph178, %._crit_edge154
  %indvars.iv195 = phi i64 [ %i.an, %.lr.ph178 ], [ %indvars.iv.next196, %._crit_edge154 ] ; 3 uses
  %indvars.iv190.in = phi i64 [ %i.an, %.lr.ph178 ], [ %indvars.iv190, %._crit_edge154 ]
  %.0175 = phi ptr [ %0, %.lr.ph178 ], [ %.1.lcssa, %._crit_edge154 ] ; 3 uses
  %.088173 = phi i32 [ %i.f, %.lr.ph178 ], [ %.189.lcssa, %._crit_edge154 ] ; 3 uses
  %.293172 = phi i32 [ %i.f, %.lr.ph178 ], [ %.3.lcssa, %._crit_edge154 ] ; 3 uses
  %.196170 = phi i32 [ 2, %.lr.ph178 ], [ %i.do, %._crit_edge154 ] ; 3 uses
  %.097168 = phi i64 [ 128, %.lr.ph178 ], [ %i.dp, %._crit_edge154 ] ; 3 uses
  %.098167 = phi i64 [ 256, %.lr.ph178 ], [ %.199.lcssa, %._crit_edge154 ] ; 3 uses
  %.2104166 = phi i64 [ %.1103.lcssa, %.lr.ph178 ], [ %.3105.lcssa, %._crit_edge154 ] ; 3 uses
  %indvars.iv190 = add nsw i64 %indvars.iv190.in, 1 ; 2 uses
  %indvars.iv.next196 = add nsw i64 %indvars.iv195, 1 ; 5 uses
  %i.ao = add nsw i64 %indvars.iv195, -15         ; 2 uses
  %i.ap = getelementptr inbounds [2 x i8], ptr %3, i64 %indvars.iv.next196 ; 5 uses
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !9
  %.not116145 = icmp eq i16 %i.aq, 0
  br i1 %.not116145, label %._crit_edge154, label %.lr.ph153

.lr.ph153:                                        ; preds = %bb.g
  %i.ar = trunc i64 %indvars.iv.next196 to i32
  %i.as = sub i32 %i.ar, %1                       ; 2 uses
  %i.at = shl nuw i32 1, %i.as                    ; 3 uses
  %i.au = icmp slt i64 %indvars.iv195, 14
  %.sroa.0.0.insert.ext.i = and i32 %i.as, 255    ; 2 uses
  br i1 %i.au, label %.lr.ph153.split.us.preheader, label %.lr.ph153.split

.lr.ph153.split.us.preheader:                     ; preds = %.lr.ph153
  %i.av = trunc nsw i64 %i.ao to i32
  br label %.lr.ph153.split.us

.lr.ph153.split.us:                               ; preds = %.lr.ph153.split.us.preheader, %ReplicateValue.exit.us
  %.1151.us = phi ptr [ %.2.us, %ReplicateValue.exit.us ], [ %.0175, %.lr.ph153.split.us.preheader ] ; 2 uses
  %.189150.us = phi i32 [ %.290.us, %ReplicateValue.exit.us ], [ %.088173, %.lr.ph153.split.us.preheader ] ; 2 uses
  %.3149.us = phi i32 [ %.4.us, %ReplicateValue.exit.us ], [ %.293172, %.lr.ph153.split.us.preheader ] ; 2 uses
  %.199148.us = phi i64 [ %i.cg, %ReplicateValue.exit.us ], [ %.098167, %.lr.ph153.split.us.preheader ] ; 2 uses
  %.3105147.us = phi i64 [ %.4106.us, %ReplicateValue.exit.us ], [ %.2104166, %.lr.ph153.split.us.preheader ] ; 3 uses
  %.1108146.us = phi i32 [ %i.bx, %ReplicateValue.exit.us ], [ %i.av, %.lr.ph153.split.us.preheader ]
  %i.aw = icmp eq i64 %.199148.us, 256
  br i1 %i.aw, label %.lr.ph141.us, label %bb.j

.lr.ph141.us:                                     ; preds = %.lr.ph153.split.us
  %i.ax = sext i32 %.3149.us to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %.1151.us, i64 %i.ax ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph141.us, %bb.i
  %indvars.iv192 = phi i64 [ %indvars.iv190, %.lr.ph141.us ], [ %indvars.iv.next193, %bb.i ] ; 3 uses
  %.0.i128139.us = phi i32 [ %i.at, %.lr.ph141.us ], [ %i.be, %bb.i ]
  %i.az = getelementptr inbounds [2 x i8], ptr %3, i64 %indvars.iv192
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !9
  %i.bb = zext i16 %i.ba to i32
  %i.bc = sub nsw i32 %.0.i128139.us, %i.bb       ; 2 uses
  %i.bd = icmp slt i32 %i.bc, 1
  br i1 %i.bd, label %NextTableBitSize.exit.us.split.loop.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next193 = add nsw i64 %indvars.iv192, 1 ; 2 uses
  %i.be = shl nuw i32 %i.bc, 1
  %i.bf = and i64 %indvars.iv.next193, 4294967295
  %exitcond.not = icmp eq i64 %i.bf, 15
  br i1 %exitcond.not, label %NextTableBitSize.exit.us, label %bb.h, !llvm.loop !19

NextTableBitSize.exit.us.split.loop.exit:         ; preds = %bb.h
  %i.bg = trunc nsw i64 %indvars.iv192 to i32
  br label %NextTableBitSize.exit.us

NextTableBitSize.exit.us:                         ; preds = %bb.i, %NextTableBitSize.exit.us.split.loop.exit
  %.010.i.lcssa.us = phi i32 [ %i.bg, %NextTableBitSize.exit.us.split.loop.exit ], [ 15, %bb.i ] ; 2 uses
  %i.bh = sub nsw i32 %.010.i.lcssa.us, %1
  %i.bi = shl nuw i32 1, %i.bh                    ; 2 uses
  %i.bj = add nsw i32 %i.bi, %.189150.us
  %i.bk = getelementptr inbounds nuw i8, ptr @kReverseBits, i64 %.3105147.us
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !10
  %i.bm = zext i8 %i.bl to i64                    ; 2 uses
  %i.bn = add i64 %.3105147.us, %i.al
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bm
  %i.bp = ptrtoint ptr %i.ay to i64
  %i.bq = sub i64 %i.bp, %i.am
  %i.br = lshr exact i64 %i.bq, 2
  %i.bs = sub nsw i64 %i.br, %i.bm
  %i.bt = trunc i64 %i.bs to i32
  %.sroa.22.0.insert.ext.i118.us = shl i32 %i.bt, 16
  %.sroa.0.0.insert.ext.i120.us = and i32 %.010.i.lcssa.us, 255
  %.sroa.0.0.insert.insert.i121.us = or disjoint i32 %.sroa.22.0.insert.ext.i118.us, %.sroa.0.0.insert.ext.i120.us
  store i32 %.sroa.0.0.insert.insert.i121.us, ptr %i.bo, align 2
  br label %bb.j

bb.j:                                             ; preds = %NextTableBitSize.exit.us, %.lr.ph153.split.us
  %.4106.us = phi i64 [ %i.bn, %NextTableBitSize.exit.us ], [ %.3105147.us, %.lr.ph153.split.us ] ; 2 uses
  %.2100.us = phi i64 [ 0, %NextTableBitSize.exit.us ], [ %.199148.us, %.lr.ph153.split.us ] ; 2 uses
  %.4.us = phi i32 [ %i.bi, %NextTableBitSize.exit.us ], [ %.3149.us, %.lr.ph153.split.us ] ; 3 uses
  %.290.us = phi i32 [ %i.bj, %NextTableBitSize.exit.us ], [ %.189150.us, %.lr.ph153.split.us ] ; 2 uses
  %.2.us = phi ptr [ %i.ay, %NextTableBitSize.exit.us ], [ %.1151.us, %.lr.ph153.split.us ] ; 3 uses
  %i.bu = sext i32 %.1108146.us to i64
  %i.bv = getelementptr inbounds [2 x i8], ptr %2, i64 %i.bu
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !9
  %i.bx = zext i16 %i.bw to i32                   ; 2 uses
  %.sroa.22.0.insert.shift.i.us = shl nuw i32 %i.bx, 16
  %.sroa.0.0.insert.insert.i.us = or disjoint i32 %.sroa.22.0.insert.shift.i.us, %.sroa.0.0.insert.ext.i
  %i.by = getelementptr inbounds nuw i8, ptr @kReverseBits, i64 %.2100.us
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !10
  %i.ca = zext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.2.us, i64 %i.ca
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.0.i.us = phi i32 [ %.4.us, %bb.j ], [ %i.cc, %bb.k ]
  %i.cc = sub nsw i32 %.0.i.us, %.196170          ; 3 uses
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.cd
  store i32 %.sroa.0.0.insert.insert.i.us, ptr %i.ce, align 2
  %i.cf = icmp sgt i32 %i.cc, 0
  br i1 %i.cf, label %bb.k, label %ReplicateValue.exit.us, !llvm.loop !15

ReplicateValue.exit.us:                           ; preds = %bb.k
  %i.cg = add i64 %.2100.us, %.097168             ; 2 uses
  %i.ch = load i16, ptr %i.ap, align 2, !tbaa !9
  %i.ci = add i16 %i.ch, -1                       ; 2 uses
  store i16 %i.ci, ptr %i.ap, align 2, !tbaa !9
  %.not116.us = icmp eq i16 %i.ci, 0
  br i1 %.not116.us, label %._crit_edge154, label %.lr.ph153.split.us, !llvm.loop !20

.lr.ph153.split:                                  ; preds = %.lr.ph153
  %i.cj = trunc nuw nsw i64 %indvars.iv.next196 to i32
  %.sroa.0.0.insert.ext.i120 = and i32 %i.cj, 255
  %i.ck = trunc nsw i64 %i.ao to i32
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph153.split, %ReplicateValue.exit
  %.1151 = phi ptr [ %.0175, %.lr.ph153.split ], [ %.2, %ReplicateValue.exit ] ; 2 uses
  %.189150 = phi i32 [ %.088173, %.lr.ph153.split ], [ %.290, %ReplicateValue.exit ] ; 2 uses
  %.3149 = phi i32 [ %.293172, %.lr.ph153.split ], [ %.4, %ReplicateValue.exit ] ; 2 uses
  %.199148 = phi i64 [ %.098167, %.lr.ph153.split ], [ %i.dl, %ReplicateValue.exit ] ; 2 uses
  %.3105147 = phi i64 [ %.2104166, %.lr.ph153.split ], [ %.4106, %ReplicateValue.exit ] ; 3 uses
  %.1108146 = phi i32 [ %i.ck, %.lr.ph153.split ], [ %i.dc, %ReplicateValue.exit ]
  %i.cl = icmp eq i64 %.199148, 256
  br i1 %i.cl, label %NextTableBitSize.exit, label %bb.m

NextTableBitSize.exit:                            ; preds = %bb.l
  %i.cm = sext i32 %.3149 to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %.1151, i64 %i.cm ; 2 uses
  %i.co = add nsw i32 %i.at, %.189150
  %i.cp = getelementptr inbounds nuw i8, ptr @kReverseBits, i64 %.3105147
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !10
  %i.cr = zext i8 %i.cq to i64                    ; 2 uses
  %i.cs = add i64 %.3105147, %i.al
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cr
  %i.cu = ptrtoint ptr %i.cn to i64
  %i.cv = sub i64 %i.cu, %i.am
  %i.cw = lshr exact i64 %i.cv, 2
  %i.cx = sub nsw i64 %i.cw, %i.cr
  %i.cy = trunc i64 %i.cx to i32
  %.sroa.22.0.insert.ext.i118 = shl i32 %i.cy, 16
  %.sroa.0.0.insert.insert.i121 = or disjoint i32 %.sroa.22.0.insert.ext.i118, %.sroa.0.0.insert.ext.i120
  store i32 %.sroa.0.0.insert.insert.i121, ptr %i.ct, align 2
  br label %bb.m

bb.m:                                             ; preds = %NextTableBitSize.exit, %bb.l
  %.4106 = phi i64 [ %i.cs, %NextTableBitSize.exit ], [ %.3105147, %bb.l ] ; 2 uses
  %.2100 = phi i64 [ 0, %NextTableBitSize.exit ], [ %.199148, %bb.l ] ; 2 uses
  %.4 = phi i32 [ %i.at, %NextTableBitSize.exit ], [ %.3149, %bb.l ] ; 3 uses
  %.290 = phi i32 [ %i.co, %NextTableBitSize.exit ], [ %.189150, %bb.l ] ; 2 uses
  %.2 = phi ptr [ %i.cn, %NextTableBitSize.exit ], [ %.1151, %bb.l ] ; 3 uses
  %i.cz = sext i32 %.1108146 to i64
  %i.da = getelementptr inbounds [2 x i8], ptr %2, i64 %i.cz
  %i.db = load i16, ptr %i.da, align 2, !tbaa !9
  %i.dc = zext i16 %i.db to i32                   ; 2 uses
  %.sroa.22.0.insert.shift.i = shl nuw i32 %i.dc, 16
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.22.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.dd = getelementptr inbounds nuw i8, ptr @kReverseBits, i64 %.2100
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !10
  %i.df = zext i8 %i.de to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.2, i64 %i.df
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.0.i = phi i32 [ %.4, %bb.m ], [ %i.dh, %bb.n ]
  %i.dh = sub nsw i32 %.0.i, %.196170             ; 3 uses
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.di
  store i32 %.sroa.0.0.insert.insert.i, ptr %i.dj, align 2
  %i.dk = icmp sgt i32 %i.dh, 0
  br i1 %i.dk, label %bb.n, label %ReplicateValue.exit, !llvm.loop !15

ReplicateValue.exit:                              ; preds = %bb.n
  %i.dl = add i64 %.2100, %.097168                ; 2 uses
  %i.dm = load i16, ptr %i.ap, align 2, !tbaa !9
  %i.dn = add i16 %i.dm, -1                       ; 2 uses
  store i16 %i.dn, ptr %i.ap, align 2, !tbaa !9
  %.not116 = icmp eq i16 %i.dn, 0
  br i1 %.not116, label %._crit_edge154, label %bb.l, !llvm.loop !20

._crit_edge154:                                   ; preds = %ReplicateValue.exit, %ReplicateValue.exit.us, %bb.g
  %.3105.lcssa = phi i64 [ %.2104166, %bb.g ], [ %.4106.us, %ReplicateValue.exit.us ], [ %.4106, %ReplicateValue.exit ]
  %.199.lcssa = phi i64 [ %.098167, %bb.g ], [ %i.cg, %ReplicateValue.exit.us ], [ %i.dl, %ReplicateValue.exit ]
  %.3.lcssa = phi i32 [ %.293172, %bb.g ], [ %.4.us, %ReplicateValue.exit.us ], [ %.4, %ReplicateValue.exit ]
  %.189.lcssa = phi i32 [ %.088173, %bb.g ], [ %.290.us, %ReplicateValue.exit.us ], [ %.290, %ReplicateValue.exit ] ; 2 uses
  %.1.lcssa = phi ptr [ %.0175, %bb.g ], [ %.2.us, %ReplicateValue.exit.us ], [ %.2, %ReplicateValue.exit ]
  %i.do = shl i32 %.196170, 1
  %i.dp = lshr i64 %.097168, 1
  %exitcond200.not = icmp eq i64 %indvars.iv.next196, %wide.trip.count
  br i1 %exitcond200.not, label %._crit_edge179, label %bb.g, !llvm.loop !21

._crit_edge179:                                   ; preds = %._crit_edge154, %._crit_edge136
  %.088.lcssa = phi i32 [ %i.f, %._crit_edge136 ], [ %.189.lcssa, %._crit_edge154 ]
  ret i32 %.088.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden range(i32 1, -2147483647) i32 @BrotliBuildSimpleHuffmanTable(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = shl nuw i32 1, %1                        ; 3 uses
  switch i32 %3, label %bb.u [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.f
    i32 3, label %.lr.ph
    i32 4, label %bb.r
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %2, align 2, !tbaa !9
  %.sroa.22.0.insert.ext.i172 = zext i16 %i.b to i32
  %.sroa.22.0.insert.shift.i173 = shl nuw i32 %.sroa.22.0.insert.ext.i172, 16
  store i32 %.sroa.22.0.insert.shift.i173, ptr %0, align 2
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !9    ; 2 uses
  %i.e = load i16, ptr %2, align 2, !tbaa !9      ; 2 uses
  %i.f = icmp ugt i16 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.22.0.insert.ext.i169 = zext i16 %i.e to i32
  %.sroa.22.0.insert.shift.i170 = shl nuw i32 %.sroa.22.0.insert.ext.i169, 16
  %.sroa.0.0.insert.insert.i171 = or disjoint i32 %.sroa.22.0.insert.shift.i170, 1
  store i32 %.sroa.0.0.insert.insert.i171, ptr %0, align 2
  %i.h = load i16, ptr %i.c, align 2, !tbaa !9
  %.sroa.22.0.insert.ext.i166 = zext i16 %i.h to i32
  %.sroa.22.0.insert.shift.i167 = shl nuw i32 %.sroa.22.0.insert.ext.i166, 16
  %.sroa.0.0.insert.insert.i168 = or disjoint i32 %.sroa.22.0.insert.shift.i167, 1
  store i32 %.sroa.0.0.insert.insert.i168, ptr %i.g, align 2
  br label %bb.u

bb.e:                                             ; preds = %bb.c
  %.sroa.22.0.insert.ext.i163 = zext i16 %i.d to i32
  %.sroa.22.0.insert.shift.i164 = shl nuw i32 %.sroa.22.0.insert.ext.i163, 16
  %.sroa.0.0.insert.insert.i165 = or disjoint i32 %.sroa.22.0.insert.shift.i164, 1
  store i32 %.sroa.0.0.insert.insert.i165, ptr %0, align 2
  %i.i = load i16, ptr %2, align 2, !tbaa !9
  %.sroa.22.0.insert.ext.i160 = zext i16 %i.i to i32
  %.sroa.22.0.insert.shift.i161 = shl nuw i32 %.sroa.22.0.insert.ext.i160, 16
  %.sroa.0.0.insert.insert.i162 = or disjoint i32 %.sroa.22.0.insert.shift.i161, 1
  store i32 %.sroa.0.0.insert.insert.i162, ptr %i.g, align 2
  br label %bb.u

bb.f:                                             ; preds = %bb.a
  %i.j = load i16, ptr %2, align 2, !tbaa !9
  %.sroa.22.0.insert.ext.i157 = zext i16 %i.j to i32
  %.sroa.22.0.insert.shift.i158 = shl nuw i32 %.sroa.22.0.insert.ext.i157, 16
  %.sroa.0.0.insert.insert.i159 = or disjoint i32 %.sroa.22.0.insert.shift.i158, 1
  store i32 %.sroa.0.0.insert.insert.i159, ptr %0, align 2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i16, ptr %2, align 2, !tbaa !9
  %.sroa.22.0.insert.ext.i154 = zext i16 %i.l to i32
  %.sroa.22.0.insert.shift.i155 = shl nuw i32 %.sroa.22.0.insert.ext.i154, 16
  %.sroa.0.0.insert.insert.i156 = or disjoint i32 %.sroa.22.0.insert.shift.i155, 1
  store i32 %.sroa.0.0.insert.insert.i156, ptr %i.k, align 2
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.n = load i16, ptr %i.m, align 2, !tbaa !9    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %i.p = load i16, ptr %i.o, align 2, !tbaa !9    ; 2 uses
  %i.q = icmp ugt i16 %i.n, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.sroa.22.0.insert.ext.i151 = zext i16 %i.p to i32
  %.sroa.22.0.insert.shift.i152 = shl nuw i32 %.sroa.22.0.insert.ext.i151, 16
  %.sroa.0.0.insert.insert.i153 = or disjoint i32 %.sroa.22.0.insert.shift.i152, 2
  store i32 %.sroa.0.0.insert.insert.i153, ptr %i.r, align 2
  %i.t = load i16, ptr %i.m, align 2, !tbaa !9
  %.sroa.22.0.insert.ext.i148 = zext i16 %i.t to i32
  %.sroa.22.0.insert.shift.i149 = shl nuw i32 %.sroa.22.0.insert.ext.i148, 16
  %.sroa.0.0.insert.insert.i150 = or disjoint i32 %.sroa.22.0.insert.shift.i149, 2
  store i32 %.sroa.0.0.insert.insert.i150, ptr %i.s, align 2
  br label %bb.u

bb.h:                                             ; preds = %bb.f
  %.sroa.22.0.insert.ext.i145 = zext i16 %i.n to i32
  %.sroa.22.0.insert.shift.i146 = shl nuw i32 %.sroa.22.0.insert.ext.i145, 16
  %.sroa.0.0.insert.insert.i147 = or disjoint i32 %.sroa.22.0.insert.shift.i146, 2
  store i32 %.sroa.0.0.insert.insert.i147, ptr %i.r, align 2
  %i.u = load i16, ptr %i.o, align 2, !tbaa !9
  %.sroa.22.0.insert.ext.i142 = zext i16 %i.u to i32
  %.sroa.22.0.insert.shift.i143 = shl nuw i32 %.sroa.22.0.insert.ext.i142, 16
  %.sroa.0.0.insert.insert.i144 = or disjoint i32 %.sroa.22.0.insert.shift.i143, 2
  store i32 %.sroa.0.0.insert.insert.i144, ptr %i.s, align 2
  br label %bb.u

.lr.ph.1:                                         ; preds = %bb.q, %bb.p
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !9    ; 3 uses
  %i.y = load i16, ptr %i.v, align 2, !tbaa !9    ; 3 uses
  %i.z = icmp ult i16 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.1
  store i16 %i.y, ptr %i.w, align 2, !tbaa !9
  store i16 %i.x, ptr %i.v, align 2, !tbaa !9
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.1
  %i.aa = phi i16 [ %i.x, %bb.i ], [ %i.y, %.lr.ph.1 ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !9  ; 2 uses
  %i.ad = icmp ult i16 %i.ac, %i.aa
  br i1 %i.ad, label %bb.k, label %.lr.ph.2

bb.k:                                             ; preds = %bb.j
  store i16 %i.aa, ptr %i.ab, align 2, !tbaa !9
  store i16 %i.ac, ptr %i.v, align 2, !tbaa !9
  br label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.k, %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 2 uses
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !9  ; 2 uses
  %i.ah = load i16, ptr %i.ae, align 2, !tbaa !9  ; 2 uses
  %i.ai = icmp ult i16 %i.ag, %i.ah
  br i1 %i.ai, label %bb.l, label %.loopexit.2

bb.l:                                             ; preds = %.lr.ph.2
  store i16 %i.ah, ptr %i.af, align 2, !tbaa !9
  store i16 %i.ag, ptr %i.ae, align 2, !tbaa !9
  br label %.loopexit.2

.loopexit.2:                                      ; preds = %.lr.ph.2, %bb.l
  %i.aj = load i16, ptr %2, align 2, !tbaa !9
  %.sroa.22.0.insert.ext.i139 = zext i16 %i.aj to i32
  %.sroa.22.0.insert.shift.i140 = shl nuw i32 %.sroa.22.0.insert.ext.i139, 16
  %.sroa.0.0.insert.insert.i141 = or disjoint i32 %.sroa.22.0.insert.shift.i140, 2
  store i32 %.sroa.0.0.insert.insert.i141, ptr %0, align 2
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.am = load i16, ptr %i.al, align 2, !tbaa !9
  %.sroa.22.0.insert.ext.i136 = zext i16 %i.am to i32
  %.sroa.22.0.insert.shift.i137 = shl nuw i32 %.sroa.22.0.insert.ext.i136, 16
  %.sroa.0.0.insert.insert.i138 = or disjoint i32 %.sroa.22.0.insert.shift.i137, 2
  store i32 %.sroa.0.0.insert.insert.i138, ptr %i.ak, align 2
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !9
  %.sroa.22.0.insert.ext.i133 = zext i16 %i.ap to i32
  %.sroa.22.0.insert.shift.i134 = shl nuw i32 %.sroa.22.0.insert.ext.i133, 16
  %.sroa.0.0.insert.insert.i135 = or disjoint i32 %.sroa.22.0.insert.shift.i134, 2
  store i32 %.sroa.0.0.insert.insert.i135, ptr %i.an, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !9
  %.sroa.22.0.insert.ext.i130 = zext i16 %i.as to i32
  %.sroa.22.0.insert.shift.i131 = shl nuw i32 %.sroa.22.0.insert.ext.i130, 16
  %.sroa.0.0.insert.insert.i132 = or disjoint i32 %.sroa.22.0.insert.shift.i131, 2
  store i32 %.sroa.0.0.insert.insert.i132, ptr %i.aq, align 2
  br label %bb.u

.lr.ph:                                           ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %i.au = load i16, ptr %i.at, align 2, !tbaa !9  ; 3 uses
  %i.av = load i16, ptr %2, align 2, !tbaa !9     ; 3 uses
  %i.aw = icmp ult i16 %i.au, %i.av
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph
  store i16 %i.av, ptr %i.at, align 2, !tbaa !9
  store i16 %i.au, ptr %2, align 2, !tbaa !9
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.m
  %i.ax = phi i16 [ %i.av, %.lr.ph ], [ %i.au, %bb.m ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !9  ; 3 uses
  %i.ba = icmp ult i16 %i.az, %i.ax
  br i1 %i.ba, label %bb.o, label %bb.p
end_hunk_0
