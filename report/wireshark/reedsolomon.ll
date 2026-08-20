inline.NumInlined: 20
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@RS_init = internal unnamed_addr global i1 false, align 4
@Index_of = internal unnamed_addr global [256 x i32] zeroinitializer, align 16
@Gg = internal unnamed_addr global [49 x i32] zeroinitializer, align 16
@Alpha_to = internal unnamed_addr global [256 x i32] zeroinitializer, align 16

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @encode_rs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((0, 48)) %1) local_unnamed_addr #0 {
bb.a:
  %.b = load i1, ptr @RS_init, align 4
  br i1 %.b, label %.preheader41, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @init_rs()
  br label %.preheader41

.preheader41:                                     ; preds = %bb.b, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(48) %1, i8 0, i64 48, i1 false)
  %i.a = load i32, ptr @Gg, align 16
  %i.b = getelementptr i8, ptr %1, i64 47
  %scevgep = getelementptr i8, ptr %1, i64 1
  br label %bb.c

bb.c:                                             ; preds = %.preheader41, %bb.g
  %indvars.iv53 = phi i64 [ 206, %.preheader41 ], [ %indvars.iv.next54, %bb.g ] ; 3 uses
  %i.c = sub nuw nsw i64 206, %indvars.iv53
  %i.d = getelementptr i8, ptr %0, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1
  %i.f = load i8, ptr %1, align 1
  %i.g = xor i8 %i.f, %i.e
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr [4 x i8], ptr @Index_of, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4              ; 3 uses
  %.not = icmp eq i32 %i.j, 255
  br i1 %.not, label %.preheader.preheader, label %.preheader40

.preheader.preheader:                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef align 1 dereferenceable(47) %1, ptr noundef align 1 dereferenceable(47) %scevgep, i64 47, i1 false)
  br label %bb.g

.preheader40:                                     ; preds = %bb.c, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 47, %bb.c ] ; 5 uses
  %i.k = getelementptr [4 x i8], ptr @Gg, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %.not35 = icmp eq i32 %i.l, 255
  %i.m = sub nuw nsw i64 48, %indvars.iv
  %i.n = getelementptr i8, ptr %1, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1               ; 2 uses
  br i1 %.not35, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader40
  %i.p = add i32 %i.l, %i.j                       ; 3 uses
  %i.q = icmp sgt i32 %i.p, 254
  br i1 %i.q, label %.lr.ph.i, label %modnn.exit

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.05.i = phi i32 [ %i.u, %.lr.ph.i ], [ %i.p, %bb.d ]
  %i.r = add nsw i32 %.05.i, -255                 ; 2 uses
  %i.s = lshr i32 %i.r, 8
  %i.t = and i32 %i.r, 255
  %i.u = add nuw nsw i32 %i.s, %i.t               ; 3 uses
  %i.v = icmp samesign ugt i32 %i.u, 254
  br i1 %i.v, label %.lr.ph.i, label %modnn.exit, !llvm.loop !6

modnn.exit:                                       ; preds = %.lr.ph.i, %bb.d
  %.0.lcssa.i = phi i32 [ %i.p, %bb.d ], [ %i.u, %.lr.ph.i ]
  %i.w = sext i32 %.0.lcssa.i to i64
  %i.x = getelementptr [4 x i8], ptr @Alpha_to, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4
  %i.z = trunc i32 %i.y to i8
  %i.aa = xor i8 %i.o, %i.z
  br label %bb.e

bb.e:                                             ; preds = %.preheader40, %modnn.exit
  %.sink = phi i8 [ %i.aa, %modnn.exit ], [ %i.o, %.preheader40 ]
  %i.ab = sub nuw nsw i64 47, %indvars.iv
  %i.ac = getelementptr i8, ptr %1, i64 %i.ab
  store i8 %.sink, ptr %i.ac, align 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ad = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.ad, label %.preheader40, label %bb.f, !llvm.loop !8

bb.f:                                             ; preds = %bb.e
  %i.ae = add i32 %i.a, %i.j                      ; 3 uses
  %i.af = icmp sgt i32 %i.ae, 254
  br i1 %i.af, label %.lr.ph.i37, label %modnn.exit39

.lr.ph.i37:                                       ; preds = %bb.f, %.lr.ph.i37
  %.05.i38 = phi i32 [ %i.aj, %.lr.ph.i37 ], [ %i.ae, %bb.f ]
  %i.ag = add nsw i32 %.05.i38, -255              ; 2 uses
  %i.ah = lshr i32 %i.ag, 8
  %i.ai = and i32 %i.ag, 255
  %i.aj = add nuw nsw i32 %i.ah, %i.ai            ; 3 uses
  %i.ak = icmp samesign ugt i32 %i.aj, 254
  br i1 %i.ak, label %.lr.ph.i37, label %modnn.exit39, !llvm.loop !6

modnn.exit39:                                     ; preds = %.lr.ph.i37, %bb.f
  %.0.lcssa.i36 = phi i32 [ %i.ae, %bb.f ], [ %i.aj, %.lr.ph.i37 ]
  %i.al = sext i32 %.0.lcssa.i36 to i64
  %i.am = getelementptr [4 x i8], ptr @Alpha_to, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = trunc i32 %i.an to i8
  br label %bb.g

bb.g:                                             ; preds = %modnn.exit39, %.preheader.preheader
  %storemerge = phi i8 [ %i.ao, %modnn.exit39 ], [ 0, %.preheader.preheader ]
  store i8 %storemerge, ptr %i.b, align 1
  %indvars.iv.next54 = add nsw i64 %indvars.iv53, -1
  %.not62 = icmp eq i64 %indvars.iv53, 0
  br i1 %.not62, label %bb.h, label %bb.c, !llvm.loop !9

bb.h:                                             ; preds = %bb.g
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @init_rs() unnamed_addr #2 {
bb.a:
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @Index_of, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @Index_of, i64 8), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @Index_of, i64 16), align 16
  store <4 x i32> <i32 1, i32 2, i32 4, i32 8>, ptr @Alpha_to, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @Index_of, i64 32), align 16
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @Index_of, i64 64), align 16
  store i32 29, ptr getelementptr inbounds nuw (i8, ptr @Alpha_to, i64 32), align 16
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @Index_of, i64 128), align 16
  store i32 6, ptr getelementptr inbounds nuw (i8, ptr @Index_of, i64 256), align 16
  store <4 x i32> <i32 16, i32 32, i32 64, i32 128>, ptr getelementptr inbounds nuw (i8, ptr @Alpha_to, i64 16), align 16
  store i32 7, ptr getelementptr inbounds nuw (i8, ptr @Index_of, i64 512), align 16
  store i32 8, ptr getelementptr inbounds nuw (i8, ptr @Index_of, i64 116), align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %store_forwarded = phi i32 [ 29, %bb.a ], [ %storemerge.i, %bb.e ] ; 3 uses
  %indvars.iv.i = phi i64 [ 9, %bb.a ], [ %indvars.iv.next.i, %bb.e ] ; 3 uses
  %i.a = getelementptr [4 x i8], ptr @Alpha_to, i64 %indvars.iv.i
  %.not.i = icmp slt i32 %store_forwarded, 128
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @Alpha_to, i64 32), align 16
  %i.c = shl nuw i32 %store_forwarded, 1
  %i.d = xor i32 %i.c, %i.b
  %i.e = xor i32 %i.d, 256
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.f = shl i32 %store_forwarded, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge.i = phi i32 [ %i.e, %bb.c ], [ %i.f, %bb.d ] ; 3 uses
  store i32 %storemerge.i, ptr %i.a, align 4
  %i.g = sext i32 %storemerge.i to i64
  %i.h = getelementptr [4 x i8], ptr @Index_of, i64 %i.g
  %i.i = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.i, ptr %i.h, align 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 255
  br i1 %exitcond.not.i, label %generate_gf.exit, label %bb.b, !llvm.loop !10

generate_gf.exit:                                 ; preds = %bb.e
  store i32 255, ptr @Index_of, align 16
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @Alpha_to, i64 1020), align 4
  store i32 1, ptr @Gg, align 16
  br label %bb.f

bb.f:                                             ; preds = %modnn.exit24.i, %generate_gf.exit
  %indvars.iv.i1 = phi i64 [ 0, %generate_gf.exit ], [ %indvars.iv.next.i2, %modnn.exit24.i ] ; 3 uses
  %storemerge27.i = phi i32 [ 1, %generate_gf.exit ], [ %i.aq, %modnn.exit24.i ]
  %indvars.iv.next.i2 = add nuw nsw i64 %indvars.iv.i1, 1 ; 4 uses
  %i.j = getelementptr [4 x i8], ptr @Gg, i64 %indvars.iv.next.i2
  store i32 1, ptr %i.j, align 4
  %.not30.i = icmp eq i64 %indvars.iv.i1, 0
  br i1 %.not30.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.f
  %i.k = trunc nuw nsw i64 %indvars.iv.next.i2 to i32 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.preheader.i
  %indvars.iv32.i = phi i64 [ %indvars.iv.i1, %.lr.ph.preheader.i ], [ -1, %bb.h ] ; 2 uses
  %i.l = getelementptr [4 x i8], ptr @Gg, i64 %indvars.iv32.i ; 3 uses
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %.not.i3 = icmp eq i32 %i.m, 0
  %i.n = getelementptr i8, ptr %i.l, i64 -4
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  br i1 %.not.i3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.p = sext i32 %i.m to i64
  %i.q = getelementptr [4 x i8], ptr @Index_of, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4
  %i.s = add i32 %i.r, %i.k                       ; 3 uses
  %i.t = icmp sgt i32 %i.s, 254
  br i1 %i.t, label %.lr.ph.i.i, label %modnn.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %.05.i.i = phi i32 [ %i.x, %.lr.ph.i.i ], [ %i.s, %bb.g ]
  %i.u = add nsw i32 %.05.i.i, -255               ; 2 uses
  %i.v = lshr i32 %i.u, 8
  %i.w = and i32 %i.u, 255
  %i.x = add nuw nsw i32 %i.v, %i.w               ; 3 uses
  %i.y = icmp samesign ugt i32 %i.x, 254
  br i1 %i.y, label %.lr.ph.i.i, label %modnn.exit.i, !llvm.loop !6

modnn.exit.i:                                     ; preds = %.lr.ph.i.i, %bb.g
  %.0.lcssa.i.i = phi i32 [ %i.s, %bb.g ], [ %i.x, %.lr.ph.i.i ]
  %i.z = sext i32 %.0.lcssa.i.i to i64
  %i.aa = getelementptr [4 x i8], ptr @Alpha_to, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = xor i32 %i.ab, %i.o
  br label %bb.h

bb.h:                                             ; preds = %modnn.exit.i, %.lr.ph.i
  %storemerge20.i = phi i32 [ %i.ac, %modnn.exit.i ], [ %i.o, %.lr.ph.i ]
  store i32 %storemerge20.i, ptr %i.l, align 4
  %i.ad = icmp sgt i64 %indvars.iv32.i, 1
  br i1 %i.ad, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !11

._crit_edge.i:                                    ; preds = %bb.h, %bb.f
  %.pre-phi = phi i32 [ 1, %bb.f ], [ %i.k, %bb.h ]
  %i.ae = sext i32 %storemerge27.i to i64
  %i.af = getelementptr [4 x i8], ptr @Index_of, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = add i32 %i.ag, %.pre-phi                ; 3 uses
  %i.ai = icmp sgt i32 %i.ah, 254
  br i1 %i.ai, label %.lr.ph.i22.i, label %modnn.exit24.i

.lr.ph.i22.i:                                     ; preds = %._crit_edge.i, %.lr.ph.i22.i
  %.05.i23.i = phi i32 [ %i.am, %.lr.ph.i22.i ], [ %i.ah, %._crit_edge.i ]
  %i.aj = add nsw i32 %.05.i23.i, -255            ; 2 uses
  %i.ak = lshr i32 %i.aj, 8
  %i.al = and i32 %i.aj, 255
  %i.am = add nuw nsw i32 %i.ak, %i.al            ; 3 uses
  %i.an = icmp samesign ugt i32 %i.am, 254
  br i1 %i.an, label %.lr.ph.i22.i, label %modnn.exit24.i, !llvm.loop !6

modnn.exit24.i:                                   ; preds = %.lr.ph.i22.i, %._crit_edge.i
  %.0.lcssa.i21.i = phi i32 [ %i.ah, %._crit_edge.i ], [ %i.am, %.lr.ph.i22.i ]
  %i.ao = sext i32 %.0.lcssa.i21.i to i64
  %i.ap = getelementptr [4 x i8], ptr @Alpha_to, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4            ; 3 uses
  store i32 %i.aq, ptr @Gg, align 16
  %exitcond.not.i4 = icmp eq i64 %indvars.iv.next.i2, 48
  br i1 %exitcond.not.i4, label %gen_poly.exit, label %bb.f, !llvm.loop !12

gen_poly.exit:                                    ; preds = %modnn.exit24.i
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr [4 x i8], ptr @Index_of, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4
  store i32 %i.at, ptr @Gg, align 16
  %i.au = load i32, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 4), align 4
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr [4 x i8], ptr @Index_of, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4
  store i32 %i.ax, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 4), align 4
  %i.ay = load i32, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 8), align 8
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr [4 x i8], ptr @Index_of, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4
  store i32 %i.bb, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 8), align 8
  %i.bc = load i32, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 12), align 4
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr [4 x i8], ptr @Index_of, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4
  store i32 %i.bf, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 12), align 4
  %i.bg = load i32, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 16), align 16
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr [4 x i8], ptr @Index_of, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4
  store i32 %i.bj, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 16), align 16
  %i.bk = load i32, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 20), align 4
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr [4 x i8], ptr @Index_of, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4
  store i32 %i.bn, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 20), align 4
  %i.bo = load i32, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 24), align 8
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr [4 x i8], ptr @Index_of, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4
  store i32 %i.br, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 24), align 8
  %i.bs = load i32, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 28), align 4
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr [4 x i8], ptr @Index_of, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4
  store i32 %i.bv, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 28), align 4
  %i.bw = load i32, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 32), align 16
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr [4 x i8], ptr @Index_of, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4
  store i32 %i.bz, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 32), align 16
  %i.ca = load i32, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 36), align 4
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr [4 x i8], ptr @Index_of, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4
  store i32 %i.cd, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 36), align 4
  %i.ce = load i32, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 40), align 8
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr [4 x i8], ptr @Index_of, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4
  store i32 %i.ch, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 40), align 8
  %i.ci = load i32, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 44), align 4
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr [4 x i8], ptr @Index_of, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4
  store i32 %i.cl, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 44), align 4
  %i.cm = load i32, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 48), align 16
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr [4 x i8], ptr @Index_of, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4
  store i32 %i.cp, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 48), align 16
  %i.cq = load i32, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 52), align 4
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr [4 x i8], ptr @Index_of, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4
  store i32 %i.ct, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 52), align 4
  %i.cu = load i32, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 56), align 8
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr [4 x i8], ptr @Index_of, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4
  store i32 %i.cx, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 56), align 8
  %i.cy = load i32, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 60), align 4
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr [4 x i8], ptr @Index_of, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4
  store i32 %i.db, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 60), align 4
  %i.dc = load i32, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 64), align 16
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr [4 x i8], ptr @Index_of, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4
  store i32 %i.df, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 64), align 16
  %i.dg = load i32, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 68), align 4
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr [4 x i8], ptr @Index_of, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4
  store i32 %i.dj, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 68), align 4
  %i.dk = load i32, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 72), align 8
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr [4 x i8], ptr @Index_of, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4
  store i32 %i.dn, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 72), align 8
  %i.do = load i32, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 76), align 4
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr [4 x i8], ptr @Index_of, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4
  store i32 %i.dr, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 76), align 4
  %i.ds = load i32, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 80), align 16
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr [4 x i8], ptr @Index_of, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4
  store i32 %i.dv, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 80), align 16
  %i.dw = load i32, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 84), align 4
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr [4 x i8], ptr @Index_of, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4
  store i32 %i.dz, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 84), align 4
  %i.ea = load i32, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 88), align 8
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr [4 x i8], ptr @Index_of, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4
  store i32 %i.ed, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 88), align 8
  %i.ee = load i32, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 92), align 4
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr [4 x i8], ptr @Index_of, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4
  store i32 %i.eh, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 92), align 4
  %i.ei = load i32, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 96), align 16
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr [4 x i8], ptr @Index_of, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4
  store i32 %i.el, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 96), align 16
  %i.em = load i32, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 100), align 4
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr [4 x i8], ptr @Index_of, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4
  store i32 %i.ep, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 100), align 4
  %i.eq = load i32, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 104), align 8
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr [4 x i8], ptr @Index_of, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4
  store i32 %i.et, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 104), align 8
  %i.eu = load i32, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 108), align 4
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr [4 x i8], ptr @Index_of, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4
  store i32 %i.ex, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 108), align 4
  %i.ey = load i32, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 112), align 16
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr [4 x i8], ptr @Index_of, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 4
  store i32 %i.fb, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 112), align 16
  %i.fc = load i32, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 116), align 4
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr [4 x i8], ptr @Index_of, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4
  store i32 %i.ff, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 116), align 4
  %i.fg = load i32, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 120), align 8
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr [4 x i8], ptr @Index_of, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4
  store i32 %i.fj, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 120), align 8
  %i.fk = load i32, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 124), align 4
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr [4 x i8], ptr @Index_of, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 4
  store i32 %i.fn, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 124), align 4
  %i.fo = load i32, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 128), align 16
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr [4 x i8], ptr @Index_of, i64 %i.fp
  %i.fr = load i32, ptr %i.fq, align 4
  store i32 %i.fr, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 128), align 16
  %i.fs = load i32, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 132), align 4
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr [4 x i8], ptr @Index_of, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4
  store i32 %i.fv, ptr getelementptr inbounds nuw (i8, ptr @Gg, i64 132), align 4
end_hunk_0
begin_hunk_1_@eras_dec_rs:bb.a
  store i32 %i.sm, ptr %i.sn, align 16
  %i.so = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  %i.sp = load i32, ptr %i.so, align 4
  %i.sq = sext i32 %i.sp to i64
  %i.sr = getelementptr [4 x i8], ptr @Index_of, i64 %i.sq
  %i.ss = load i32, ptr %i.sr, align 4
  %i.st = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  store i32 %i.ss, ptr %i.st, align 4
  %i.su = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.sv = load i32, ptr %i.su, align 8
  %i.sw = sext i32 %i.sv to i64
  %i.sx = getelementptr [4 x i8], ptr @Index_of, i64 %i.sw
  %i.sy = load i32, ptr %i.sx, align 4
  %i.sz = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store i32 %i.sy, ptr %i.sz, align 8
  %i.ta = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  %i.tb = load i32, ptr %i.ta, align 4
  %i.tc = sext i32 %i.tb to i64
  %i.td = getelementptr [4 x i8], ptr @Index_of, i64 %i.tc
  %i.te = load i32, ptr %i.td, align 4
  %i.tf = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  store i32 %i.te, ptr %i.tf, align 4
  %i.tg = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.th = load i32, ptr %i.tg, align 16
  %i.ti = sext i32 %i.th to i64
  %i.tj = getelementptr [4 x i8], ptr @Index_of, i64 %i.ti
  %i.tk = load i32, ptr %i.tj, align 4
  %i.tl = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store i32 %i.tk, ptr %i.tl, align 16
  %i.tm = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %i.tn = load i32, ptr %i.tm, align 4
  %i.to = sext i32 %i.tn to i64
  %i.tp = getelementptr [4 x i8], ptr @Index_of, i64 %i.to
  %i.tq = load i32, ptr %i.tp, align 4
  %i.tr = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  store i32 %i.tq, ptr %i.tr, align 4
  %i.ts = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.tt = load i32, ptr %i.ts, align 8
  %i.tu = sext i32 %i.tt to i64
  %i.tv = getelementptr [4 x i8], ptr @Index_of, i64 %i.tu
  %i.tw = load i32, ptr %i.tv, align 4
  %i.tx = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  store i32 %i.tw, ptr %i.tx, align 8
  %i.ty = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  %i.tz = load i32, ptr %i.ty, align 4
  %i.ua = sext i32 %i.tz to i64
  %i.ub = getelementptr [4 x i8], ptr @Index_of, i64 %i.ua
  %i.uc = load i32, ptr %i.ub, align 4
  %i.ud = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  store i32 %i.uc, ptr %i.ud, align 4
  %i.ue = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.uf = load i32, ptr %i.ue, align 16
  %i.ug = sext i32 %i.uf to i64
  %i.uh = getelementptr [4 x i8], ptr @Index_of, i64 %i.ug
  %i.ui = load i32, ptr %i.uh, align 4
  %i.uj = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store i32 %i.ui, ptr %i.uj, align 16
  %i.uk = getelementptr inbounds nuw i8, ptr %i.a, i64 132
  %i.ul = load i32, ptr %i.uk, align 4
  %i.um = sext i32 %i.ul to i64
  %i.un = getelementptr [4 x i8], ptr @Index_of, i64 %i.um
  %i.uo = load i32, ptr %i.un, align 4
  %i.up = getelementptr inbounds nuw i8, ptr %i.c, i64 132
  store i32 %i.uo, ptr %i.up, align 4
  %i.uq = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.ur = load i32, ptr %i.uq, align 8
  %i.us = sext i32 %i.ur to i64
  %i.ut = getelementptr [4 x i8], ptr @Index_of, i64 %i.us
  %i.uu = load i32, ptr %i.ut, align 4
  %i.uv = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  store i32 %i.uu, ptr %i.uv, align 8
  %i.uw = getelementptr inbounds nuw i8, ptr %i.a, i64 140
  %i.ux = load i32, ptr %i.uw, align 4
  %i.uy = sext i32 %i.ux to i64
  %i.uz = getelementptr [4 x i8], ptr @Index_of, i64 %i.uy
  %i.va = load i32, ptr %i.uz, align 4
  %i.vb = getelementptr inbounds nuw i8, ptr %i.c, i64 140
  store i32 %i.va, ptr %i.vb, align 4
  %i.vc = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.vd = load i32, ptr %i.vc, align 16
  %i.ve = sext i32 %i.vd to i64
  %i.vf = getelementptr [4 x i8], ptr @Index_of, i64 %i.ve
  %i.vg = load i32, ptr %i.vf, align 4
  %i.vh = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store i32 %i.vg, ptr %i.vh, align 16
  %i.vi = getelementptr inbounds nuw i8, ptr %i.a, i64 148
  %i.vj = load i32, ptr %i.vi, align 4
  %i.vk = sext i32 %i.vj to i64
  %i.vl = getelementptr [4 x i8], ptr @Index_of, i64 %i.vk
  %i.vm = load i32, ptr %i.vl, align 4
  %i.vn = getelementptr inbounds nuw i8, ptr %i.c, i64 148
  store i32 %i.vm, ptr %i.vn, align 4
  %i.vo = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.vp = load i32, ptr %i.vo, align 8
  %i.vq = sext i32 %i.vp to i64
  %i.vr = getelementptr [4 x i8], ptr @Index_of, i64 %i.vq
  %i.vs = load i32, ptr %i.vr, align 4
  %i.vt = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  store i32 %i.vs, ptr %i.vt, align 8
  %i.vu = getelementptr inbounds nuw i8, ptr %i.a, i64 156
  %i.vv = load i32, ptr %i.vu, align 4
  %i.vw = sext i32 %i.vv to i64
  %i.vx = getelementptr [4 x i8], ptr @Index_of, i64 %i.vw
  %i.vy = load i32, ptr %i.vx, align 4
  %i.vz = getelementptr inbounds nuw i8, ptr %i.c, i64 156
  store i32 %i.vy, ptr %i.vz, align 4
  %i.wa = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.wb = load i32, ptr %i.wa, align 16
  %i.wc = sext i32 %i.wb to i64
  %i.wd = getelementptr [4 x i8], ptr @Index_of, i64 %i.wc
  %i.we = load i32, ptr %i.wd, align 4
  %i.wf = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  store i32 %i.we, ptr %i.wf, align 16
  %i.wg = getelementptr inbounds nuw i8, ptr %i.a, i64 164
  %i.wh = load i32, ptr %i.wg, align 4
  %i.wi = sext i32 %i.wh to i64
  %i.wj = getelementptr [4 x i8], ptr @Index_of, i64 %i.wi
  %i.wk = load i32, ptr %i.wj, align 4
  %i.wl = getelementptr inbounds nuw i8, ptr %i.c, i64 164
  store i32 %i.wk, ptr %i.wl, align 4
  %i.wm = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.wn = load i32, ptr %i.wm, align 8
  %i.wo = sext i32 %i.wn to i64
  %i.wp = getelementptr [4 x i8], ptr @Index_of, i64 %i.wo
  %i.wq = load i32, ptr %i.wp, align 4
  %i.wr = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  store i32 %i.wq, ptr %i.wr, align 8
  %i.ws = getelementptr inbounds nuw i8, ptr %i.a, i64 172
  %i.wt = load i32, ptr %i.ws, align 4
  %i.wu = sext i32 %i.wt to i64
  %i.wv = getelementptr [4 x i8], ptr @Index_of, i64 %i.wu
  %i.ww = load i32, ptr %i.wv, align 4
  %i.wx = getelementptr inbounds nuw i8, ptr %i.c, i64 172
  store i32 %i.ww, ptr %i.wx, align 4
  %i.wy = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.wz = load i32, ptr %i.wy, align 16
  %i.xa = sext i32 %i.wz to i64
  %i.xb = getelementptr [4 x i8], ptr @Index_of, i64 %i.xa
  %i.xc = load i32, ptr %i.xb, align 4
  %i.xd = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  store i32 %i.xc, ptr %i.xd, align 16
  %i.xe = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  %i.xf = load i32, ptr %i.xe, align 4
  %i.xg = sext i32 %i.xf to i64
  %i.xh = getelementptr [4 x i8], ptr @Index_of, i64 %i.xg
  %i.xi = load i32, ptr %i.xh, align 4
  %i.xj = getelementptr inbounds nuw i8, ptr %i.c, i64 180
  store i32 %i.xi, ptr %i.xj, align 4
  %i.xk = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.xl = load i32, ptr %i.xk, align 8
  %i.xm = sext i32 %i.xl to i64
  %i.xn = getelementptr [4 x i8], ptr @Index_of, i64 %i.xm
  %i.xo = load i32, ptr %i.xn, align 4
  %i.xp = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  store i32 %i.xo, ptr %i.xp, align 8
  %i.xq = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  %i.xr = load i32, ptr %i.xq, align 4
  %i.xs = sext i32 %i.xr to i64
  %i.xt = getelementptr [4 x i8], ptr @Index_of, i64 %i.xs
  %i.xu = load i32, ptr %i.xt, align 4
  %i.xv = getelementptr inbounds nuw i8, ptr %i.c, i64 188
  store i32 %i.xu, ptr %i.xv, align 4
  %i.xw = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.xx = load i32, ptr %i.xw, align 16
  %i.xy = sext i32 %i.xx to i64
  %i.xz = getelementptr [4 x i8], ptr @Index_of, i64 %i.xy
  %i.ya = load i32, ptr %i.xz, align 4
  %i.yb = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  store i32 %i.ya, ptr %i.yb, align 16
  %i.yc = add i32 %2, 1                           ; 2 uses
  %i.yd = icmp slt i32 %i.yc, 49
  br i1 %i.yd, label %.preheader309.lr.ph, label %.preheader304.preheader

.preheader304.preheader:                          ; preds = %.loopexit306, %.loopexit312
  br label %.preheader304

.preheader309.lr.ph:                              ; preds = %.loopexit312
  %i.ye = sext i32 %i.yc to i64
  br label %.preheader309

.preheader309:                                    ; preds = %.preheader309.lr.ph, %.loopexit306
  %indvars.iv439 = phi i64 [ %i.ye, %.preheader309.lr.ph ], [ %indvars.iv.next440, %.loopexit306 ] ; 6 uses
  %.0196348 = phi i32 [ %2, %.preheader309.lr.ph ], [ %i.aaq, %.loopexit306 ]
  %.0208347 = phi i32 [ %2, %.preheader309.lr.ph ], [ %.2210, %.loopexit306 ] ; 4 uses
  %i.yf = icmp sgt i64 %indvars.iv439, 0
  br i1 %i.yf, label %.lr.ph341.preheader, label %._crit_edge

.lr.ph341.preheader:                              ; preds = %.preheader309
  %wide.trip.count420 = and i64 %indvars.iv439, 4294967295
  br label %.lr.ph341

.lr.ph341:                                        ; preds = %.lr.ph341.preheader, %bb.k
  %indvars.iv417 = phi i64 [ 0, %.lr.ph341.preheader ], [ %indvars.iv.next418, %bb.k ] ; 3 uses
  %.0185340 = phi i32 [ 0, %.lr.ph341.preheader ], [ %.1186, %bb.k ] ; 3 uses
  %i.yg = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv417
  %i.yh = load i32, ptr %i.yg, align 4            ; 2 uses
  %.not242 = icmp eq i32 %i.yh, 0
  br i1 %.not242, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph341
  %i.yi = sub nuw nsw i64 %indvars.iv439, %indvars.iv417
  %i.yj = getelementptr [4 x i8], ptr %i.b, i64 %i.yi
  %i.yk = load i32, ptr %i.yj, align 4            ; 2 uses
  %.not243 = icmp eq i32 %i.yk, 255
  br i1 %.not243, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.yl = sext i32 %i.yh to i64
  %i.ym = getelementptr [4 x i8], ptr @Index_of, i64 %i.yl
  %i.yn = load i32, ptr %i.ym, align 4
  %i.yo = add i32 %i.yn, %i.yk                    ; 3 uses
  %i.yp = icmp sgt i32 %i.yo, 254
  br i1 %i.yp, label %.lr.ph.i259, label %modnn.exit261

.lr.ph.i259:                                      ; preds = %bb.j, %.lr.ph.i259
  %.05.i260 = phi i32 [ %i.yt, %.lr.ph.i259 ], [ %i.yo, %bb.j ]
  %i.yq = add nsw i32 %.05.i260, -255             ; 2 uses
  %i.yr = lshr i32 %i.yq, 8
  %i.ys = and i32 %i.yq, 255
  %i.yt = add nuw nsw i32 %i.yr, %i.ys            ; 3 uses
  %i.yu = icmp samesign ugt i32 %i.yt, 254
  br i1 %i.yu, label %.lr.ph.i259, label %modnn.exit261, !llvm.loop !6

modnn.exit261:                                    ; preds = %.lr.ph.i259, %bb.j
  %.0.lcssa.i258 = phi i32 [ %i.yo, %bb.j ], [ %i.yt, %.lr.ph.i259 ]
  %i.yv = sext i32 %.0.lcssa.i258 to i64
  %i.yw = getelementptr [4 x i8], ptr @Alpha_to, i64 %i.yv
  %i.yx = load i32, ptr %i.yw, align 4
  %i.yy = xor i32 %i.yx, %.0185340
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph341, %bb.i, %modnn.exit261
  %.1186 = phi i32 [ %i.yy, %modnn.exit261 ], [ %.0185340, %bb.i ], [ %.0185340, %.lr.ph341 ] ; 2 uses
  %indvars.iv.next418 = add nuw nsw i64 %indvars.iv417, 1 ; 2 uses
  %exitcond421.not = icmp eq i64 %indvars.iv.next418, %wide.trip.count420
  br i1 %exitcond421.not, label %._crit_edge.loopexit, label %.lr.ph341, !llvm.loop !17

._crit_edge.loopexit:                             ; preds = %bb.k
  %i.yz = sext i32 %.1186 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader309
  %.0185.lcssa = phi i64 [ 0, %.preheader309 ], [ %i.yz, %._crit_edge.loopexit ]
  %i.za = getelementptr [4 x i8], ptr @Index_of, i64 %.0185.lcssa
  %i.zb = load i32, ptr %i.za, align 4            ; 3 uses
  %i.zc = icmp eq i32 %i.zb, 255
  br i1 %i.zc, label %.preheader305.preheader, label %bb.l

.preheader305.preheader:                          ; preds = %._crit_edge
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %i.os, ptr noundef nonnull align 16 dereferenceable(192) %i.c, i64 192, i1 false)
  store i32 255, ptr %i.c, align 16
  br label %.loopexit306

bb.l:                                             ; preds = %._crit_edge
  %i.zd = load i32, ptr %i.a, align 16
  store i32 %i.zd, ptr %i.d, align 16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.o
  %indvars.iv422 = phi i64 [ 0, %bb.l ], [ %i.zg, %bb.o ] ; 2 uses
  %i.ze = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv422
  %i.zf = load i32, ptr %i.ze, align 4            ; 2 uses
  %.not241 = icmp eq i32 %i.zf, 255
  %i.zg = add nuw nsw i64 %indvars.iv422, 1       ; 4 uses
  %i.zh = getelementptr [4 x i8], ptr %i.a, i64 %i.zg
  %i.zi = load i32, ptr %i.zh, align 4            ; 2 uses
  br i1 %.not241, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.zj = add i32 %i.zf, %i.zb                    ; 3 uses
  %i.zk = icmp sgt i32 %i.zj, 254
  br i1 %i.zk, label %.lr.ph.i263, label %modnn.exit265

.lr.ph.i263:                                      ; preds = %bb.n, %.lr.ph.i263
  %.05.i264 = phi i32 [ %i.zo, %.lr.ph.i263 ], [ %i.zj, %bb.n ]
  %i.zl = add nsw i32 %.05.i264, -255             ; 2 uses
  %i.zm = lshr i32 %i.zl, 8
  %i.zn = and i32 %i.zl, 255
  %i.zo = add nuw nsw i32 %i.zm, %i.zn            ; 3 uses
  %i.zp = icmp samesign ugt i32 %i.zo, 254
  br i1 %i.zp, label %.lr.ph.i263, label %modnn.exit265, !llvm.loop !6

modnn.exit265:                                    ; preds = %.lr.ph.i263, %bb.n
  %.0.lcssa.i262 = phi i32 [ %i.zj, %bb.n ], [ %i.zo, %.lr.ph.i263 ]
  %i.zq = sext i32 %.0.lcssa.i262 to i64
  %i.zr = getelementptr [4 x i8], ptr @Alpha_to, i64 %i.zq
  %i.zs = load i32, ptr %i.zr, align 4
  %i.zt = xor i32 %i.zs, %i.zi
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %modnn.exit265
  %.sink = phi i32 [ %i.zt, %modnn.exit265 ], [ %i.zi, %bb.m ]
  %i.zu = getelementptr [4 x i8], ptr %i.d, i64 %i.zg
  store i32 %.sink, ptr %i.zu, align 4
  %exitcond425.not = icmp eq i64 %i.zg, 48
  br i1 %exitcond425.not, label %bb.p, label %bb.m, !llvm.loop !18

bb.p:                                             ; preds = %bb.o
  %i.zv = shl i32 %.0208347, 1
  %i.zw = add i32 %.0196348, %2
  %.not240 = icmp sgt i32 %i.zv, %i.zw
  br i1 %.not240, label %.preheader307.preheader, label %.preheader

.preheader307.preheader:                          ; preds = %bb.p
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %i.os, ptr noundef nonnull align 16 dereferenceable(192) %i.c, i64 192, i1 false)
  store i32 255, ptr %i.c, align 16
  br label %.loopexit308

.preheader:                                       ; preds = %bb.p, %modnn.exit269
  %indvars.iv426 = phi i64 [ %indvars.iv.next427, %modnn.exit269 ], [ 0, %bb.p ] ; 3 uses
  %i.zx = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv426
  %i.zy = load i32, ptr %i.zx, align 4            ; 2 uses
  %i.zz = icmp eq i32 %i.zy, 0
  br i1 %i.zz, label %modnn.exit269, label %bb.q

bb.q:                                             ; preds = %.preheader
  %i.aaa = sext i32 %i.zy to i64
  %i.aab = getelementptr [4 x i8], ptr @Index_of, i64 %i.aaa
  %i.aac = load i32, ptr %i.aab, align 4
  %i.aad = sub i32 %i.aac, %i.zb                  ; 2 uses
  %i.aae = add i32 %i.aad, 255                    ; 2 uses
  %i.aaf = icmp ult i32 %i.aad, 2147483393
  br i1 %i.aaf, label %.lr.ph.i267, label %modnn.exit269

.lr.ph.i267:                                      ; preds = %bb.q, %.lr.ph.i267
  %.05.i268 = phi i32 [ %i.aaj, %.lr.ph.i267 ], [ %i.aae, %bb.q ]
  %i.aag = add nsw i32 %.05.i268, -255            ; 2 uses
  %i.aah = lshr i32 %i.aag, 8
  %i.aai = and i32 %i.aag, 255
  %i.aaj = add nuw nsw i32 %i.aah, %i.aai         ; 3 uses
  %i.aak = icmp samesign ugt i32 %i.aaj, 254
  br i1 %i.aak, label %.lr.ph.i267, label %modnn.exit269, !llvm.loop !6

modnn.exit269:                                    ; preds = %.lr.ph.i267, %bb.q, %.preheader
  %i.aal = phi i32 [ 255, %.preheader ], [ %i.aae, %bb.q ], [ %i.aaj, %.lr.ph.i267 ]
  %i.aam = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv426
  store i32 %i.aal, ptr %i.aam, align 4
  %indvars.iv.next427 = add nuw nsw i64 %indvars.iv426, 1 ; 2 uses
  %exitcond429.not = icmp eq i64 %indvars.iv.next427, 49
  br i1 %exitcond429.not, label %.loopexit308.loopexit, label %.preheader, !llvm.loop !19

.loopexit308.loopexit:                            ; preds = %modnn.exit269
  %i.aan = sub i32 %2, %.0208347
  %i.aao = trunc nsw i64 %indvars.iv439 to i32
  %i.aap = add i32 %i.aan, %i.aao
  br label %.loopexit308

.loopexit308:                                     ; preds = %.loopexit308.loopexit, %.preheader307.preheader
  %.1209 = phi i32 [ %.0208347, %.preheader307.preheader ], [ %i.aap, %.loopexit308.loopexit ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(196) %i.a, ptr noundef nonnull align 16 dereferenceable(196) %i.d, i64 196, i1 false)
  br label %.loopexit306

.loopexit306:                                     ; preds = %.loopexit308, %.preheader305.preheader
  %.2210 = phi i32 [ %.0208347, %.preheader305.preheader ], [ %.1209, %.loopexit308 ]
  %indvars.iv.next440 = add nsw i64 %indvars.iv439, 1 ; 2 uses
  %i.aaq = trunc nsw i64 %indvars.iv439 to i32
  %i.aar = and i64 %indvars.iv.next440, 4294967295
  %exitcond442.not = icmp eq i64 %i.aar, 49
  br i1 %exitcond442.not, label %.preheader304.preheader, label %.preheader309, !llvm.loop !20

.preheader303:                                    ; preds = %.preheader304
  %i.aas = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %i.aas, ptr noundef nonnull align 4 dereferenceable(192) %i.lv, i64 192, i1 false)
  %.not376 = icmp eq i32 %spec.select, 0
  %i.aat = zext i32 %spec.select to i64           ; 5 uses
  br label %.preheader301

.preheader304:                                    ; preds = %.preheader304.1, %.preheader304.preheader
  %indvars.iv443 = phi i64 [ 0, %.preheader304.preheader ], [ %indvars.iv.next444.1, %.preheader304.1 ] ; 5 uses
  %.0211349 = phi i32 [ 0, %.preheader304.preheader ], [ %spec.select.1, %.preheader304.1 ]
  %i.aau = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv443 ; 2 uses
  %i.aav = load i32, ptr %i.aau, align 8
  %i.aaw = sext i32 %i.aav to i64
  %i.aax = getelementptr [4 x i8], ptr @Index_of, i64 %i.aaw
  %i.aay = load i32, ptr %i.aax, align 4          ; 2 uses
  store i32 %i.aay, ptr %i.aau, align 8
  %.not239 = icmp eq i32 %i.aay, 255
  %i.aaz = trunc nuw nsw i64 %indvars.iv443 to i32
  %spec.select = select i1 %.not239, i32 %.0211349, i32 %i.aaz ; 13 uses
  %exitcond446.not = icmp eq i64 %indvars.iv443, 48
  br i1 %exitcond446.not, label %.preheader303, label %.preheader304.1

.preheader304.1:                                  ; preds = %.preheader304
  %indvars.iv.next444 = or disjoint i64 %indvars.iv443, 1 ; 2 uses
  %i.aba = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.next444 ; 2 uses
  %i.abb = load i32, ptr %i.aba, align 4
  %i.abc = sext i32 %i.abb to i64
  %i.abd = getelementptr [4 x i8], ptr @Index_of, i64 %i.abc
  %i.abe = load i32, ptr %i.abd, align 4          ; 2 uses
  store i32 %i.abe, ptr %i.aba, align 4
  %.not239.1 = icmp eq i32 %i.abe, 255
  %i.abf = trunc nuw nsw i64 %indvars.iv.next444 to i32
  %spec.select.1 = select i1 %.not239.1, i32 %spec.select, i32 %i.abf
  %indvars.iv.next444.1 = add nuw nsw i64 %indvars.iv443, 2
  br label %.preheader304

.preheader301:                                    ; preds = %.preheader303, %modnn.exit277
  %.0183359 = phi i32 [ 0, %.preheader303 ], [ %.1, %modnn.exit277 ] ; 4 uses
  %.0195358 = phi i32 [ 254, %.preheader303 ], [ %.0.lcssa.i274, %modnn.exit277 ] ; 3 uses
  %.9357 = phi i32 [ 1, %.preheader303 ], [ %i.aca, %modnn.exit277 ] ; 2 uses
  br i1 %.not376, label %._crit_edge355.thread, label %.lr.ph354
end_hunk_1
