inline.NumInlined: 12
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@rle_pos = dso_local local_unnamed_addr global i32 0, align 4
@ari_pos = dso_local local_unnamed_addr global i32 0, align 4
@rle = external local_unnamed_addr global ptr, align 8
@char_to_index = internal unnamed_addr global [256 x i32] zeroinitializer, align 16
@cum_freq = internal unnamed_addr global [258 x i32] zeroinitializer, align 16
@low = dso_local local_unnamed_addr global i64 0, align 8
@high = dso_local local_unnamed_addr global i64 0, align 8
@bits_to_follow = dso_local local_unnamed_addr global i64 0, align 8
@buffer = internal unnamed_addr global i32 0, align 4
@bits_to_go = internal unnamed_addr global i32 0, align 4
@ari = external local_unnamed_addr global ptr, align 8
@index_to_char = internal unnamed_addr global [258 x i8] zeroinitializer, align 16
@freq = internal unnamed_addr global [258 x i32] zeroinitializer, align 16

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @do_ari(i32 noundef %0) local_unnamed_addr #0 {
vector.ph:
  store i32 0, ptr @ari_pos, align 4, !tbaa !4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.ind = phi <4 x i8> [ <i8 0, i8 1, i8 2, i8 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i8> %vec.ind, splat (i8 4)
  %i.a = insertelement <4 x i64> poison, i64 %index, i64 0
  %i.b = shufflevector <4 x i64> %i.a, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr @char_to_index, i64 %index ; 2 uses
  %i.d = trunc <4 x i64> %i.b to <4 x i32>
  %i.e = or disjoint <4 x i32> %i.d, <i32 1, i32 2, i32 3, i32 4>
  %i.f = trunc <4 x i64> %i.b to <4 x i32>
  %i.g = add <4 x i32> %i.f, <i32 5, i32 6, i32 7, i32 8>
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store <4 x i32> %i.e, ptr %i.c, align 16, !tbaa !4
  store <4 x i32> %i.g, ptr %i.h, align 16, !tbaa !4
  %i.i = getelementptr inbounds nuw i8, ptr @index_to_char, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  store <4 x i8> %vec.ind, ptr %i.j, align 1, !tbaa !8
  store <4 x i8> %step.add, ptr %i.k, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i8> %vec.ind, splat (i8 8)
  %i.l = icmp eq i64 %index.next, 256
  br i1 %i.l, label %vector.body42, label %vector.body, !llvm.loop !9

vector.body42:                                    ; preds = %vector.body, %vector.body42
  %index43 = phi i64 [ %index.next46.1, %vector.body42 ], [ 0, %vector.body ] ; 4 uses
  %vec.ind44 = phi <4 x i32> [ %vec.ind.next47.1, %vector.body42 ], [ <i32 0, i32 1, i32 2, i32 3>, %vector.body ] ; 5 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr @freq, i64 %index43 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <4 x i32> splat (i32 1), ptr %i.m, align 16, !tbaa !4
  store <4 x i32> splat (i32 1), ptr %i.n, align 16, !tbaa !4
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @cum_freq, i64 %index43 ; 2 uses
  %i.p = sub <4 x i32> splat (i32 257), %vec.ind44
  %i.q = sub <4 x i32> splat (i32 253), %vec.ind44
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store <4 x i32> %i.p, ptr %i.o, align 16, !tbaa !4
  store <4 x i32> %i.q, ptr %i.r, align 16, !tbaa !4
  %index.next46 = or disjoint i64 %index43, 8     ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr @freq, i64 %index.next46 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <4 x i32> splat (i32 1), ptr %i.s, align 16, !tbaa !4
  store <4 x i32> splat (i32 1), ptr %i.t, align 16, !tbaa !4
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @cum_freq, i64 %index.next46 ; 2 uses
  %i.v = sub <4 x i32> splat (i32 249), %vec.ind44
  %i.w = sub <4 x i32> splat (i32 245), %vec.ind44
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <4 x i32> %i.v, ptr %i.u, align 16, !tbaa !4
  store <4 x i32> %i.w, ptr %i.x, align 16, !tbaa !4
  %index.next46.1 = add nuw nsw i64 %index43, 16  ; 2 uses
  %vec.ind.next47.1 = add <4 x i32> %vec.ind44, splat (i32 16)
  %i.y = icmp eq i64 %index.next46.1, 256
  br i1 %i.y, label %.preheader.i, label %vector.body42, !llvm.loop !13

.preheader.i:                                     ; preds = %vector.body42
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @freq, i64 1024), align 16, !tbaa !4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @cum_freq, i64 1024), align 16, !tbaa !4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @freq, i64 1028), align 4, !tbaa !4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @cum_freq, i64 1028), align 4, !tbaa !4
  store i32 0, ptr @freq, align 16, !tbaa !4
  store i32 0, ptr @buffer, align 4, !tbaa !4
  store i32 8, ptr @bits_to_go, align 4, !tbaa !4
  store i64 0, ptr @low, align 8, !tbaa !14
  store i64 65535, ptr @high, align 8, !tbaa !14
  store i64 0, ptr @bits_to_follow, align 8, !tbaa !14
  %i.z = load ptr, ptr @rle, align 8, !tbaa !16
  store i32 1, ptr @rle_pos, align 4, !tbaa !4
  %i.aa = icmp eq i32 %0, 0
  br i1 %i.aa, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i, %update_model.exit
  %i.ab = phi i32 [ %i.cb, %update_model.exit ], [ 0, %.preheader.i ]
  %i.ac = phi ptr [ %i.ca, %update_model.exit ], [ %i.z, %.preheader.i ]
  %i.ad = zext i32 %i.ab to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !8
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr @char_to_index, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4  ; 4 uses
  tail call fastcc void @encode_symbol(i32 noundef %i.ai)
  %i.aj = load i32, ptr @cum_freq, align 16, !tbaa !4
  %i.ak = icmp eq i32 %i.aj, 16383
  br i1 %i.ak, label %.preheader.i5, label %.loopexit.i

.preheader.i5:                                    ; preds = %.lr.ph, %.preheader.i5
  %indvars.iv.i6 = phi i64 [ %indvars.iv.next.i7.1, %.preheader.i5 ], [ 257, %.lr.ph ] ; 4 uses
  %.02832.i = phi i32 [ %i.aw, %.preheader.i5 ], [ 0, %.lr.ph ] ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr @freq, i64 %indvars.iv.i6 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = add nsw i32 %i.am, 1
  %i.ao = sdiv i32 %i.an, 2                       ; 2 uses
  store i32 %i.ao, ptr %i.al, align 4, !tbaa !4
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr @cum_freq, i64 %indvars.iv.i6
  store i32 %.02832.i, ptr %i.ap, align 4, !tbaa !4
  %i.aq = add nsw i32 %i.ao, %.02832.i            ; 2 uses
  %indvars.iv.next.i7 = add nsw i64 %indvars.iv.i6, -1 ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr @freq, i64 %indvars.iv.next.i7 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4
  %i.at = add nsw i32 %i.as, 1
  %i.au = sdiv i32 %i.at, 2                       ; 2 uses
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !4
  %i.av = getelementptr inbounds nuw [4 x i8], ptr @cum_freq, i64 %indvars.iv.next.i7
  store i32 %i.aq, ptr %i.av, align 4, !tbaa !4
  %i.aw = add nsw i32 %i.au, %i.aq
  %indvars.iv.next.i7.1 = add nsw i64 %indvars.iv.i6, -2
  %.not.i.1 = icmp eq i64 %indvars.iv.next.i7, 0
  br i1 %.not.i.1, label %.loopexit.i, label %.preheader.i5, !llvm.loop !19

.loopexit.i:                                      ; preds = %.preheader.i5, %.lr.ph
  %i.ax = sext i32 %i.ai to i64                   ; 2 uses
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %.loopexit.i
  %indvars.iv38.i = phi i64 [ %indvars.iv.next39.i, %bb.a ], [ %i.ax, %.loopexit.i ] ; 8 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr @freq, i64 %indvars.iv38.i ; 3 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !4  ; 2 uses
  %i.ba = getelementptr i8, ptr %i.ay, i64 -4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !4
  %i.bc = icmp eq i32 %i.az, %i.bb
  %indvars.iv.next39.i = add i64 %indvars.iv38.i, -1
  br i1 %i.bc, label %bb.a, label %bb.b, !llvm.loop !20

bb.b:                                             ; preds = %bb.a
  %indvars21.le = trunc i64 %indvars.iv38.i to i32 ; 2 uses
  %i.bd = icmp sgt i32 %i.ai, %indvars21.le
  br i1 %i.bd, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.be = getelementptr inbounds i8, ptr @index_to_char, i64 %indvars.iv38.i ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !8   ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr @index_to_char, i64 %i.ax ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !8   ; 2 uses
  store i8 %i.bh, ptr %i.be, align 1, !tbaa !8
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !8
  %i.bi = zext i8 %i.bf to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr @char_to_index, i64 %i.bi
  store i32 %i.ai, ptr %i.bj, align 4, !tbaa !4
  %i.bk = zext i8 %i.bh to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr @char_to_index, i64 %i.bk
  store i32 %indvars21.le, ptr %i.bl, align 4, !tbaa !4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bm = add nsw i32 %i.az, 1
  store i32 %i.bm, ptr %i.ay, align 4, !tbaa !4
  %i.bn = icmp sgt i64 %indvars.iv38.i, 0
  br i1 %i.bn, label %.lr.ph.preheader.i, label %update_model.exit

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.bo = and i64 %indvars.iv38.i, 4294967295     ; 4 uses
  %min.iters.check = icmp samesign ult i64 %i.bo, 8
  br i1 %min.iters.check, label %.lr.ph.i.a, label %vector.ph50

vector.ph50:                                      ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %indvars.iv38.i, 4294967288    ; 2 uses
  %1 = and i64 %indvars.iv38.i, 7
  %i.bp = getelementptr [4 x i8], ptr @cum_freq, i64 %i.bo
  br label %vector.body51

vector.body51:                                    ; preds = %vector.body51, %vector.ph50
  %index52 = phi i64 [ 0, %vector.ph50 ], [ %index.next54, %vector.body51 ] ; 2 uses
  %i.bq = xor i64 %index52, -1
  %i.br = getelementptr [4 x i8], ptr %i.bp, i64 %i.bq ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -12 ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %i.br, i64 -28 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.bs, align 4, !tbaa !4
  %wide.load53 = load <4 x i32>, ptr %i.bt, align 4, !tbaa !4
  %i.bu = add nsw <4 x i32> %wide.load, splat (i32 1)
  %i.bv = add nsw <4 x i32> %wide.load53, splat (i32 1)
  store <4 x i32> %i.bu, ptr %i.bs, align 4, !tbaa !4
  store <4 x i32> %i.bv, ptr %i.bt, align 4, !tbaa !4
  %index.next54 = add nuw i64 %index52, 8         ; 2 uses
  %i.bw = icmp eq i64 %index.next54, %n.vec
  br i1 %i.bw, label %middle.block55, label %vector.body51, !llvm.loop !21

middle.block55:                                   ; preds = %vector.body51
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %update_model.exit, label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %middle.block55, %.lr.ph.preheader.i
  %indvars.iv43.i.ph = phi i64 [ %i.bo, %.lr.ph.preheader.i ], [ %1, %middle.block55 ] ; 13 uses
  %2 = getelementptr [4 x i8], ptr @cum_freq, i64 %indvars.iv43.i.ph
  %3 = getelementptr i8, ptr %2, i64 -4           ; 2 uses
  %4 = load i32, ptr %3, align 4, !tbaa !4
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr %3, align 4, !tbaa !4
  %6 = icmp samesign ugt i64 %indvars.iv43.i.ph, 1
  br i1 %6, label %.lr.ph.i.1, label %update_model.exit

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.a
  %7 = getelementptr [4 x i8], ptr @cum_freq, i64 %indvars.iv43.i.ph
  %8 = getelementptr i8, ptr %7, i64 -8           ; 2 uses
  %9 = load i32, ptr %8, align 4, !tbaa !4
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr %8, align 4, !tbaa !4
  %.not = icmp eq i64 %indvars.iv43.i.ph, 2
  br i1 %.not, label %update_model.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %11 = getelementptr [4 x i8], ptr @cum_freq, i64 %indvars.iv43.i.ph
  %12 = getelementptr i8, ptr %11, i64 -12        ; 2 uses
  %13 = load i32, ptr %12, align 4, !tbaa !4
  %14 = add nsw i32 %13, 1
  store i32 %14, ptr %12, align 4, !tbaa !4
  %15 = icmp samesign ugt i64 %indvars.iv43.i.ph, 3
  br i1 %15, label %.lr.ph.i.3, label %update_model.exit

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %16 = getelementptr [4 x i8], ptr @cum_freq, i64 %indvars.iv43.i.ph
  %17 = getelementptr i8, ptr %16, i64 -16        ; 2 uses
  %18 = load i32, ptr %17, align 4, !tbaa !4
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %17, align 4, !tbaa !4
  %.not62 = icmp eq i64 %indvars.iv43.i.ph, 4
  br i1 %.not62, label %update_model.exit, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %.lr.ph.i.3
  %20 = getelementptr [4 x i8], ptr @cum_freq, i64 %indvars.iv43.i.ph
  %21 = getelementptr i8, ptr %20, i64 -20        ; 2 uses
  %i.bx = load i32, ptr %21, align 4, !tbaa !4
  %i.by = add nsw i32 %i.bx, 1
  store i32 %i.by, ptr %21, align 4, !tbaa !4
  %i.bz = icmp samesign ugt i64 %indvars.iv43.i.ph, 5
  br i1 %i.bz, label %.lr.ph.i.5, label %update_model.exit

.lr.ph.i.5:                                       ; preds = %.lr.ph.i.4
  %22 = getelementptr [4 x i8], ptr @cum_freq, i64 %indvars.iv43.i.ph
  %23 = getelementptr i8, ptr %22, i64 -24        ; 2 uses
  %24 = load i32, ptr %23, align 4, !tbaa !4
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %23, align 4, !tbaa !4
  %26 = icmp eq i64 %indvars.iv43.i.ph, 7
  br i1 %26, label %.lr.ph.i.6, label %update_model.exit

.lr.ph.i.6:                                       ; preds = %.lr.ph.i.5
  %27 = getelementptr [4 x i8], ptr @cum_freq, i64 %indvars.iv43.i.ph
  %28 = getelementptr i8, ptr %27, i64 -28        ; 2 uses
  %29 = load i32, ptr %28, align 4, !tbaa !4
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %28, align 4, !tbaa !4
  br label %update_model.exit

update_model.exit:                                ; preds = %.lr.ph.i.a, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i.4, %.lr.ph.i.5, %.lr.ph.i.6, %middle.block55, %bb.d
  %i.ca = load ptr, ptr @rle, align 8, !tbaa !16
  %i.cb = load i32, ptr @rle_pos, align 4, !tbaa !4 ; 2 uses
  %i.cc = add i32 %i.cb, 1                        ; 2 uses
  store i32 %i.cc, ptr @rle_pos, align 4, !tbaa !4
  %i.cd = icmp ugt i32 %i.cc, %0
  br i1 %i.cd, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %update_model.exit, %.preheader.i
  tail call fastcc void @encode_symbol(i32 noundef 257)
  %i.ce = load i64, ptr @bits_to_follow, align 8, !tbaa !14
  %i.cf = add nsw i64 %i.ce, 1                    ; 3 uses
  store i64 %i.cf, ptr @bits_to_follow, align 8, !tbaa !14
  %i.cg = load i64, ptr @low, align 8, !tbaa !14
  %i.ch = icmp slt i64 %i.cg, 16384
  %i.ci = load i32, ptr @buffer, align 4, !tbaa !4
  %i.cj = lshr i32 %i.ci, 1                       ; 5 uses
  br i1 %i.ch, label %bb.e, label %bb.h

bb.e:                                             ; preds = %._crit_edge
  store i32 %i.cj, ptr @buffer, align 4, !tbaa !4
  %i.ck = load i32, ptr @bits_to_go, align 4, !tbaa !4
  %i.cl = add nsw i32 %i.ck, -1                   ; 3 uses
  store i32 %i.cl, ptr @bits_to_go, align 4, !tbaa !4
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.f, label %output_bit.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.cn = trunc nuw i32 %i.cj to i8
  %i.co = load ptr, ptr @ari, align 8, !tbaa !16
  %i.cp = load i32, ptr @ari_pos, align 4, !tbaa !4 ; 2 uses
  %i.cq = add i32 %i.cp, 1
  store i32 %i.cq, ptr @ari_pos, align 4, !tbaa !4
  %i.cr = zext i32 %i.cp to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cr
  store i8 %i.cn, ptr %i.cs, align 1, !tbaa !8
  store i32 8, ptr @bits_to_go, align 4, !tbaa !4
  %.pr.i.pre.i = load i64, ptr @bits_to_follow, align 8, !tbaa !14
  br label %output_bit.exit.i.i

output_bit.exit.i.i:                              ; preds = %bb.f, %bb.e
  %.pr.i.i = phi i64 [ %i.cf, %bb.e ], [ %.pr.i.pre.i, %bb.f ] ; 2 uses
  %bits_to_go.promoted.i.i = phi i32 [ %i.cl, %bb.e ], [ 8, %bb.f ] ; 2 uses
  %i.ct = icmp sgt i64 %.pr.i.i, 0
  br i1 %i.ct, label %.lr.ph.split.us.i.i, label %done_encoding.exit

.lr.ph.split.us.i.i:                              ; preds = %output_bit.exit.i.i, %output_bit.exit4.us.i.i
  %i.cu = phi i64 [ %i.di, %output_bit.exit4.us.i.i ], [ %.pr.i.i, %output_bit.exit.i.i ]
  %spec.select.i356.us.i.i = phi i32 [ %i.cx, %output_bit.exit4.us.i.i ], [ %i.cj, %output_bit.exit.i.i ]
  %i.cv = phi i32 [ %i.dh, %output_bit.exit4.us.i.i ], [ %bits_to_go.promoted.i.i, %output_bit.exit.i.i ]
  %i.cw = lshr i32 %spec.select.i356.us.i.i, 1
  %i.cx = or i32 %i.cw, 128                       ; 3 uses
  %i.cy = add nsw i32 %i.cv, -1                   ; 2 uses
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %bb.g, label %output_bit.exit4.us.i.i

bb.g:                                             ; preds = %.lr.ph.split.us.i.i
  %i.da = trunc nuw i32 %i.cx to i8
  %i.db = load ptr, ptr @ari, align 8, !tbaa !16
  %i.dc = load i32, ptr @ari_pos, align 4, !tbaa !4 ; 2 uses
  %i.dd = add i32 %i.dc, 1
  store i32 %i.dd, ptr @ari_pos, align 4, !tbaa !4
  %i.de = zext i32 %i.dc to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.de
  store i8 %i.da, ptr %i.df, align 1, !tbaa !8
  %.pre13.i.i = load i64, ptr @bits_to_follow, align 8, !tbaa !14
  br label %output_bit.exit4.us.i.i

output_bit.exit4.us.i.i:                          ; preds = %bb.g, %.lr.ph.split.us.i.i
  %i.dg = phi i64 [ %i.cu, %.lr.ph.split.us.i.i ], [ %.pre13.i.i, %bb.g ] ; 2 uses
  %i.dh = phi i32 [ %i.cy, %.lr.ph.split.us.i.i ], [ 8, %bb.g ] ; 2 uses
  %i.di = add nsw i64 %i.dg, -1                   ; 2 uses
  store i64 %i.di, ptr @bits_to_follow, align 8, !tbaa !14
  %i.dj = icmp sgt i64 %i.dg, 1
  br i1 %i.dj, label %.lr.ph.split.us.i.i, label %bit_plus_follow.exit.sink.split.i, !llvm.loop !22

bb.h:                                             ; preds = %._crit_edge
  %i.dk = or i32 %i.cj, 128                       ; 4 uses
  store i32 %i.dk, ptr @buffer, align 4, !tbaa !4
  %i.dl = load i32, ptr @bits_to_go, align 4, !tbaa !4
  %i.dm = add nsw i32 %i.dl, -1                   ; 3 uses
  store i32 %i.dm, ptr @bits_to_go, align 4, !tbaa !4
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %bb.i, label %output_bit.exit.i1.i

bb.i:                                             ; preds = %bb.h
  %i.do = trunc nuw i32 %i.dk to i8
  %i.dp = load ptr, ptr @ari, align 8, !tbaa !16
  %i.dq = load i32, ptr @ari_pos, align 4, !tbaa !4 ; 2 uses
  %i.dr = add i32 %i.dq, 1
  store i32 %i.dr, ptr @ari_pos, align 4, !tbaa !4
  %i.ds = zext i32 %i.dq to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.ds
  store i8 %i.do, ptr %i.dt, align 1, !tbaa !8
  store i32 8, ptr @bits_to_go, align 4, !tbaa !4
  %.pr.i3.pre.i = load i64, ptr @bits_to_follow, align 8, !tbaa !14
  br label %output_bit.exit.i1.i

output_bit.exit.i1.i:                             ; preds = %bb.i, %bb.h
  %.pr.i3.i = phi i64 [ %i.cf, %bb.h ], [ %.pr.i3.pre.i, %bb.i ] ; 2 uses
  %bits_to_go.promoted.i2.i = phi i32 [ %i.dm, %bb.h ], [ 8, %bb.i ] ; 2 uses
  %i.du = icmp sgt i64 %.pr.i3.i, 0
  br i1 %i.du, label %.lr.ph.split.i.i, label %done_encoding.exit

.lr.ph.split.i.i:                                 ; preds = %output_bit.exit.i1.i, %output_bit.exit4.i.i
  %i.dv = phi i64 [ %i.ei, %output_bit.exit4.i.i ], [ %.pr.i3.i, %output_bit.exit.i1.i ]
  %spec.select.i356.i.i = phi i32 [ %i.dx, %output_bit.exit4.i.i ], [ %i.dk, %output_bit.exit.i1.i ]
  %i.dw = phi i32 [ %i.eh, %output_bit.exit4.i.i ], [ %bits_to_go.promoted.i2.i, %output_bit.exit.i1.i ]
  %i.dx = lshr i32 %spec.select.i356.i.i, 1       ; 3 uses
  %i.dy = add nsw i32 %i.dw, -1                   ; 2 uses
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.j, label %output_bit.exit4.i.i

bb.j:                                             ; preds = %.lr.ph.split.i.i
  %i.ea = trunc nuw i32 %i.dx to i8
  %i.eb = load ptr, ptr @ari, align 8, !tbaa !16
  %i.ec = load i32, ptr @ari_pos, align 4, !tbaa !4 ; 2 uses
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr @ari_pos, align 4, !tbaa !4
  %i.ee = zext i32 %i.ec to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ee
  store i8 %i.ea, ptr %i.ef, align 1, !tbaa !8
  %.pre.i.i = load i64, ptr @bits_to_follow, align 8, !tbaa !14
  br label %output_bit.exit4.i.i

output_bit.exit4.i.i:                             ; preds = %bb.j, %.lr.ph.split.i.i
  %i.eg = phi i64 [ %i.dv, %.lr.ph.split.i.i ], [ %.pre.i.i, %bb.j ] ; 2 uses
  %i.eh = phi i32 [ %i.dy, %.lr.ph.split.i.i ], [ 8, %bb.j ] ; 2 uses
  %i.ei = add nsw i64 %i.eg, -1                   ; 2 uses
  store i64 %i.ei, ptr @bits_to_follow, align 8, !tbaa !14
  %i.ej = icmp sgt i64 %i.eg, 1
  br i1 %i.ej, label %.lr.ph.split.i.i, label %bit_plus_follow.exit.sink.split.i, !llvm.loop !22

bit_plus_follow.exit.sink.split.i:                ; preds = %output_bit.exit4.i.i, %output_bit.exit4.us.i.i
  %.lcssa19.sink.i = phi i32 [ %i.cx, %output_bit.exit4.us.i.i ], [ %i.dx, %output_bit.exit4.i.i ] ; 2 uses
  %.lcssa20.sink.i = phi i32 [ %i.dh, %output_bit.exit4.us.i.i ], [ %i.eh, %output_bit.exit4.i.i ] ; 2 uses
  store i32 %.lcssa19.sink.i, ptr @buffer, align 4, !tbaa !4
  store i32 %.lcssa20.sink.i, ptr @bits_to_go, align 4, !tbaa !4
  br label %done_encoding.exit

done_encoding.exit:                               ; preds = %output_bit.exit.i.i, %output_bit.exit.i1.i, %bit_plus_follow.exit.sink.split.i
  %i.ek = phi i32 [ %bits_to_go.promoted.i.i, %output_bit.exit.i.i ], [ %bits_to_go.promoted.i2.i, %output_bit.exit.i1.i ], [ %.lcssa20.sink.i, %bit_plus_follow.exit.sink.split.i ]
  %i.el = phi i32 [ %i.cj, %output_bit.exit.i.i ], [ %i.dk, %output_bit.exit.i1.i ], [ %.lcssa19.sink.i, %bit_plus_follow.exit.sink.split.i ]
  %i.em = lshr i32 %i.el, %i.ek
  %i.en = trunc i32 %i.em to i8
  %i.eo = load ptr, ptr @ari, align 8, !tbaa !16
  %i.ep = load i32, ptr @ari_pos, align 4, !tbaa !4 ; 2 uses
  %i.eq = add i32 %i.ep, 1
  store i32 %i.eq, ptr @ari_pos, align 4, !tbaa !4
  %i.er = zext i32 %i.ep to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.er
  store i8 %i.en, ptr %i.es, align 1, !tbaa !8
  %i.et = load i32, ptr @ari_pos, align 4, !tbaa !4
  ret i32 %i.et
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @encode_symbol(i32 noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr @high, align 8, !tbaa !14
  %i.b = load i64, ptr @low, align 8, !tbaa !14   ; 3 uses
  %i.c = sub nsw i64 %i.a, %i.b
  %i.d = add nsw i64 %i.c, 1                      ; 2 uses
  %i.e = sext i32 %0 to i64
  %i.f = getelementptr [4 x i8], ptr @cum_freq, i64 %i.e ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4
  %i.i = sext i32 %i.h to i64
  %i.j = mul nsw i64 %i.d, %i.i
  %i.k = load i32, ptr @cum_freq, align 16, !tbaa !4
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %i.m = sdiv i64 %i.j, %i.l
  %i.n = add i64 %i.b, -1
  %i.o = add i64 %i.n, %i.m                       ; 2 uses
  store i64 %i.o, ptr @high, align 8, !tbaa !14
  %i.p = load i32, ptr %i.f, align 4, !tbaa !4
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %i.d, %i.q
  %i.s = sdiv i64 %i.r, %i.l
  %i.t = add nsw i64 %i.s, %i.b                   ; 2 uses
  store i64 %i.t, ptr @low, align 8, !tbaa !14
  %buffer.promoted = load i32, ptr @buffer, align 4
  %bits_to_go.promoted = load i32, ptr @bits_to_go, align 4
  br label %bb.b

bb.b:                                             ; preds = %bit_plus_follow.exit, %bb.a
  %i.u = phi i64 [ %i.cm, %bit_plus_follow.exit ], [ %i.t, %bb.a ] ; 3 uses
  %i.v = phi i32 [ %i.ck, %bit_plus_follow.exit ], [ %bits_to_go.promoted, %bb.a ] ; 3 uses
  %.lcssa5 = phi i32 [ %.lcssa4, %bit_plus_follow.exit ], [ %buffer.promoted, %bb.a ] ; 3 uses
  %i.w = phi i64 [ %i.cp, %bit_plus_follow.exit ], [ %i.o, %bb.a ] ; 3 uses
  %i.x = icmp slt i64 %i.w, 32768
  br i1 %i.x, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.y = lshr i32 %.lcssa5, 1                     ; 4 uses
  store i32 %i.y, ptr @buffer, align 4, !tbaa !4
  %i.z = add nsw i32 %i.v, -1                     ; 3 uses
  store i32 %i.z, ptr @bits_to_go, align 4, !tbaa !4
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.d, label %output_bit.exit.i

bb.d:                                             ; preds = %bb.c
  %i.ab = trunc nuw i32 %i.y to i8
  %i.ac = load ptr, ptr @ari, align 8, !tbaa !16
  %i.ad = load i32, ptr @ari_pos, align 4, !tbaa !4 ; 2 uses
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr @ari_pos, align 4, !tbaa !4
  %i.af = zext i32 %i.ad to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.af
  store i8 %i.ab, ptr %i.ag, align 1, !tbaa !8
  store i32 8, ptr @bits_to_go, align 4, !tbaa !4
  br label %output_bit.exit.i

output_bit.exit.i:                                ; preds = %bb.d, %bb.c
  %bits_to_go.promoted.i = phi i32 [ %i.z, %bb.c ], [ 8, %bb.d ] ; 2 uses
  %.pr.i = load i64, ptr @bits_to_follow, align 8, !tbaa !14 ; 2 uses
  %i.ah = icmp sgt i64 %.pr.i, 0
  br i1 %i.ah, label %.lr.ph.split.us.i, label %bit_plus_follow.exit

.lr.ph.split.us.i:                                ; preds = %output_bit.exit.i, %output_bit.exit4.us.i
  %i.ai = phi i64 [ %i.aw, %output_bit.exit4.us.i ], [ %.pr.i, %output_bit.exit.i ]
  %spec.select.i356.us.i = phi i32 [ %i.al, %output_bit.exit4.us.i ], [ %i.y, %output_bit.exit.i ]
  %i.aj = phi i32 [ %i.av, %output_bit.exit4.us.i ], [ %bits_to_go.promoted.i, %output_bit.exit.i ]
  %i.ak = lshr i32 %spec.select.i356.us.i, 1
  %i.al = or i32 %i.ak, 128                       ; 4 uses
  %i.am = add nsw i32 %i.aj, -1                   ; 2 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.e, label %output_bit.exit4.us.i

bb.e:                                             ; preds = %.lr.ph.split.us.i
  %i.ao = trunc nuw i32 %i.al to i8
  %i.ap = load ptr, ptr @ari, align 8, !tbaa !16
  %i.aq = load i32, ptr @ari_pos, align 4, !tbaa !4 ; 2 uses
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr @ari_pos, align 4, !tbaa !4
  %i.as = zext i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.as
  store i8 %i.ao, ptr %i.at, align 1, !tbaa !8
  %.pre13.i = load i64, ptr @bits_to_follow, align 8, !tbaa !14
  br label %output_bit.exit4.us.i

output_bit.exit4.us.i:                            ; preds = %bb.e, %.lr.ph.split.us.i
  %i.au = phi i64 [ %i.ai, %.lr.ph.split.us.i ], [ %.pre13.i, %bb.e ] ; 2 uses
  %i.av = phi i32 [ %i.am, %.lr.ph.split.us.i ], [ 8, %bb.e ] ; 3 uses
  %i.aw = add nsw i64 %i.au, -1                   ; 2 uses
  store i64 %i.aw, ptr @bits_to_follow, align 8, !tbaa !14
  %i.ax = icmp sgt i64 %i.au, 1
  br i1 %i.ax, label %.lr.ph.split.us.i, label %._crit_edge.i, !llvm.loop !22

._crit_edge.i:                                    ; preds = %output_bit.exit4.us.i
  store i32 %i.al, ptr @buffer, align 4, !tbaa !4
  store i32 %i.av, ptr @bits_to_go, align 4, !tbaa !4
  br label %bit_plus_follow.exit

bb.f:                                             ; preds = %bb.b
  %i.ay = icmp sgt i64 %i.u, 32767
  br i1 %i.ay, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.az = lshr i32 %.lcssa5, 1
  %i.ba = or i32 %i.az, 128                       ; 4 uses
  store i32 %i.ba, ptr @buffer, align 4, !tbaa !4
  %i.bb = add nsw i32 %i.v, -1                    ; 3 uses
  store i32 %i.bb, ptr @bits_to_go, align 4, !tbaa !4
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.h, label %output_bit.exit.i9

bb.h:                                             ; preds = %bb.g
  %i.bd = trunc nuw i32 %i.ba to i8
  %i.be = load ptr, ptr @ari, align 8, !tbaa !16
  %i.bf = load i32, ptr @ari_pos, align 4, !tbaa !4 ; 2 uses
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr @ari_pos, align 4, !tbaa !4
  %i.bh = zext i32 %i.bf to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bh
  store i8 %i.bd, ptr %i.bi, align 1, !tbaa !8
  store i32 8, ptr @bits_to_go, align 4, !tbaa !4
  br label %output_bit.exit.i9

output_bit.exit.i9:                               ; preds = %bb.h, %bb.g
  %bits_to_go.promoted.i10 = phi i32 [ %i.bb, %bb.g ], [ 8, %bb.h ] ; 2 uses
  %.pr.i11 = load i64, ptr @bits_to_follow, align 8, !tbaa !14 ; 2 uses
  %i.bj = icmp sgt i64 %.pr.i11, 0
  br i1 %i.bj, label %.lr.ph.split.i, label %bit_plus_follow.exit14

.lr.ph.split.i:                                   ; preds = %output_bit.exit.i9, %output_bit.exit4.i
  %i.bk = phi i64 [ %i.bx, %output_bit.exit4.i ], [ %.pr.i11, %output_bit.exit.i9 ]
  %spec.select.i356.i = phi i32 [ %i.bm, %output_bit.exit4.i ], [ %i.ba, %output_bit.exit.i9 ]
  %i.bl = phi i32 [ %i.bw, %output_bit.exit4.i ], [ %bits_to_go.promoted.i10, %output_bit.exit.i9 ]
  %i.bm = lshr i32 %spec.select.i356.i, 1         ; 4 uses
  %i.bn = add nsw i32 %i.bl, -1                   ; 2 uses
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.i, label %output_bit.exit4.i

bb.i:                                             ; preds = %.lr.ph.split.i
  %i.bp = trunc nuw i32 %i.bm to i8
  %i.bq = load ptr, ptr @ari, align 8, !tbaa !16
  %i.br = load i32, ptr @ari_pos, align 4, !tbaa !4 ; 2 uses
  %i.bs = add i32 %i.br, 1
  store i32 %i.bs, ptr @ari_pos, align 4, !tbaa !4
  %i.bt = zext i32 %i.br to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bt
  store i8 %i.bp, ptr %i.bu, align 1, !tbaa !8
  %.pre.i = load i64, ptr @bits_to_follow, align 8, !tbaa !14
  br label %output_bit.exit4.i

output_bit.exit4.i:                               ; preds = %bb.i, %.lr.ph.split.i
  %i.bv = phi i64 [ %i.bk, %.lr.ph.split.i ], [ %.pre.i, %bb.i ] ; 2 uses
  %i.bw = phi i32 [ %i.bn, %.lr.ph.split.i ], [ 8, %bb.i ] ; 3 uses
  %i.bx = add nsw i64 %i.bv, -1                   ; 2 uses
  store i64 %i.bx, ptr @bits_to_follow, align 8, !tbaa !14
  %i.by = icmp sgt i64 %i.bv, 1
  br i1 %i.by, label %.lr.ph.split.i, label %._crit_edge.i13, !llvm.loop !22

._crit_edge.i13:                                  ; preds = %output_bit.exit4.i
  store i32 %i.bm, ptr @buffer, align 4, !tbaa !4
  store i32 %i.bw, ptr @bits_to_go, align 4, !tbaa !4
  br label %bit_plus_follow.exit14

bit_plus_follow.exit14:                           ; preds = %output_bit.exit.i9, %._crit_edge.i13
  %i.bz = phi i32 [ %bits_to_go.promoted.i10, %output_bit.exit.i9 ], [ %i.bw, %._crit_edge.i13 ]
  %.lcssa6 = phi i32 [ %i.ba, %output_bit.exit.i9 ], [ %i.bm, %._crit_edge.i13 ]
  %i.ca = load i64, ptr @low, align 8, !tbaa !14
  %i.cb = add nsw i64 %i.ca, -32768
  store i64 %i.cb, ptr @low, align 8, !tbaa !14
  %i.cc = load i64, ptr @high, align 8, !tbaa !14
  %i.cd = add nsw i64 %i.cc, -32768
  store i64 %i.cd, ptr @high, align 8, !tbaa !14
  br label %bit_plus_follow.exit

bb.j:                                             ; preds = %bb.f
  %i.ce = icmp sgt i64 %i.u, 16383
  %i.cf = icmp samesign ult i64 %i.w, 49152
  %or.cond = and i1 %i.cf, %i.ce
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cg = load i64, ptr @bits_to_follow, align 8, !tbaa !14
  %i.ch = add nsw i64 %i.cg, 1
  store i64 %i.ch, ptr @bits_to_follow, align 8, !tbaa !14
  %i.ci = add nsw i64 %i.u, -16384
  store i64 %i.ci, ptr @low, align 8, !tbaa !14
  %i.cj = add nsw i64 %i.w, -16384
  store i64 %i.cj, ptr @high, align 8, !tbaa !14
  br label %bit_plus_follow.exit

bit_plus_follow.exit:                             ; preds = %._crit_edge.i, %output_bit.exit.i, %bit_plus_follow.exit14, %bb.k
  %i.ck = phi i32 [ %i.av, %._crit_edge.i ], [ %bits_to_go.promoted.i, %output_bit.exit.i ], [ %i.bz, %bit_plus_follow.exit14 ], [ %i.v, %bb.k ]
  %.lcssa4 = phi i32 [ %i.al, %._crit_edge.i ], [ %i.y, %output_bit.exit.i ], [ %.lcssa6, %bit_plus_follow.exit14 ], [ %.lcssa5, %bb.k ]
  %i.cl = load i64, ptr @low, align 8, !tbaa !14
  %i.cm = shl nsw i64 %i.cl, 1                    ; 2 uses
  store i64 %i.cm, ptr @low, align 8, !tbaa !14
  %i.cn = load i64, ptr @high, align 8, !tbaa !14
  %i.co = shl nsw i64 %i.cn, 1
  %i.cp = or disjoint i64 %i.co, 1                ; 2 uses
  store i64 %i.cp, ptr @high, align 8, !tbaa !14
  br label %bb.b

bb.l:                                             ; preds = %bb.j
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10, !11, !12}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !10, !11, !12}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !6, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"p1 omnipotent char", !18, i64 0}
!18 = !{!"any pointer", !6, i64 0}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10, !11, !12}
!22 = distinct !{!22, !10}
end_hunk_0
