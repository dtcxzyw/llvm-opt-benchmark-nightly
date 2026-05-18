inline.NumInlined: 12
inline.NumDeleted: 8
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
  %1 = shufflevector <4 x i64> %i.a, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %2 = getelementptr inbounds nuw [4 x i8], ptr @char_to_index, i64 %index ; 2 uses
  %3 = trunc <4 x i64> %1 to <4 x i32>
  %4 = or disjoint <4 x i32> %3, <i32 1, i32 2, i32 3, i32 4>
  %i.b = trunc <4 x i64> %1 to <4 x i32>
  %5 = add <4 x i32> %i.b, <i32 5, i32 6, i32 7, i32 8>
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <4 x i32> %4, ptr %2, align 16, !tbaa !4
  store <4 x i32> %5, ptr %i.c, align 16, !tbaa !4
  %6 = getelementptr inbounds nuw i8, ptr @index_to_char, i64 %index ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 5
  store <4 x i8> %vec.ind, ptr %i.d, align 1, !tbaa !8
  store <4 x i8> %step.add, ptr %i.e, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i8> %vec.ind, splat (i8 8)
  %i.f = icmp eq i64 %index.next, 256
  br i1 %i.f, label %vector.body42, label %vector.body, !llvm.loop !9

vector.body42:                                    ; preds = %vector.body, %vector.body42
  %index43 = phi i64 [ %index.next46.1, %vector.body42 ], [ 0, %vector.body ] ; 4 uses
  %vec.ind44 = phi <4 x i32> [ %vec.ind.next47.1, %vector.body42 ], [ <i32 0, i32 1, i32 2, i32 3>, %vector.body ] ; 5 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @freq, i64 %index43 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store <4 x i32> splat (i32 1), ptr %i.g, align 16, !tbaa !4
  store <4 x i32> splat (i32 1), ptr %i.h, align 16, !tbaa !4
  %i.i = getelementptr inbounds nuw [4 x i8], ptr @cum_freq, i64 %index43 ; 2 uses
  %i.j = sub <4 x i32> splat (i32 257), %vec.ind44
  %i.k = sub <4 x i32> splat (i32 253), %vec.ind44
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <4 x i32> %i.j, ptr %i.i, align 16, !tbaa !4
  store <4 x i32> %i.k, ptr %i.l, align 16, !tbaa !4
  %index.next46 = or disjoint i64 %index43, 8     ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr @freq, i64 %index.next46 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <4 x i32> splat (i32 1), ptr %i.m, align 16, !tbaa !4
  store <4 x i32> splat (i32 1), ptr %i.n, align 16, !tbaa !4
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @cum_freq, i64 %index.next46 ; 2 uses
  %i.p = sub <4 x i32> splat (i32 249), %vec.ind44
  %i.q = sub <4 x i32> splat (i32 245), %vec.ind44
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store <4 x i32> %i.p, ptr %i.o, align 16, !tbaa !4
  store <4 x i32> %i.q, ptr %i.r, align 16, !tbaa !4
  %index.next46.1 = add nuw nsw i64 %index43, 16  ; 2 uses
  %vec.ind.next47.1 = add <4 x i32> %vec.ind44, splat (i32 16)
  %i.s = icmp eq i64 %index.next46.1, 256
  br i1 %i.s, label %.preheader.i, label %vector.body42, !llvm.loop !13

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
  %i.t = load ptr, ptr @rle, align 8, !tbaa !16
  store i32 1, ptr @rle_pos, align 4, !tbaa !4
  %i.u = icmp eq i32 %0, 0
  br i1 %i.u, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i, %update_model.exit
  %i.v = phi i32 [ %i.cz, %update_model.exit ], [ 0, %.preheader.i ]
  %i.w = phi ptr [ %i.cy, %update_model.exit ], [ %i.t, %.preheader.i ]
  %i.x = zext i32 %i.v to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !8
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr @char_to_index, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4  ; 4 uses
  tail call fastcc void @encode_symbol(i32 noundef %i.ac)
  %i.ad = load i32, ptr @cum_freq, align 16, !tbaa !4
  %i.ae = icmp eq i32 %i.ad, 16383
  br i1 %i.ae, label %.preheader.i5, label %.loopexit.i

.preheader.i5:                                    ; preds = %.lr.ph, %.preheader.i5
  %indvars.iv.i6 = phi i64 [ %indvars.iv.next.i7.1, %.preheader.i5 ], [ 257, %.lr.ph ] ; 4 uses
  %.02832.i = phi i32 [ %i.aq, %.preheader.i5 ], [ 0, %.lr.ph ] ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr @freq, i64 %indvars.iv.i6 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4
  %i.ah = add nsw i32 %i.ag, 1
  %i.ai = sdiv i32 %i.ah, 2                       ; 2 uses
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !4
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr @cum_freq, i64 %indvars.iv.i6
  store i32 %.02832.i, ptr %i.aj, align 4, !tbaa !4
  %i.ak = add nsw i32 %i.ai, %.02832.i            ; 2 uses
  %indvars.iv.next.i7 = add nsw i64 %indvars.iv.i6, -1 ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr @freq, i64 %indvars.iv.next.i7 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = add nsw i32 %i.am, 1
  %i.ao = sdiv i32 %i.an, 2                       ; 2 uses
  store i32 %i.ao, ptr %i.al, align 4, !tbaa !4
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr @cum_freq, i64 %indvars.iv.next.i7
  store i32 %i.ak, ptr %i.ap, align 4, !tbaa !4
  %i.aq = add nsw i32 %i.ao, %i.ak
  %indvars.iv.next.i7.1 = add nsw i64 %indvars.iv.i6, -2
  %.not.i.1 = icmp eq i64 %indvars.iv.next.i7, 0
  br i1 %.not.i.1, label %.loopexit.i, label %.preheader.i5, !llvm.loop !19

.loopexit.i:                                      ; preds = %.preheader.i5, %.lr.ph
  %i.ar = sext i32 %i.ac to i64                   ; 2 uses
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %.loopexit.i
  %indvars.iv38.i = phi i64 [ %indvars.iv.next39.i, %bb.a ], [ %i.ar, %.loopexit.i ] ; 8 uses
  %i.as = getelementptr inbounds [4 x i8], ptr @freq, i64 %indvars.iv38.i ; 3 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4  ; 2 uses
  %i.au = getelementptr i8, ptr %i.as, i64 -4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !4
  %i.aw = icmp eq i32 %i.at, %i.av
  %indvars.iv.next39.i = add i64 %indvars.iv38.i, -1
  br i1 %i.aw, label %bb.a, label %bb.b, !llvm.loop !20

bb.b:                                             ; preds = %bb.a
  %indvars21.le = trunc i64 %indvars.iv38.i to i32 ; 2 uses
  %i.ax = icmp sgt i32 %i.ac, %indvars21.le
  br i1 %i.ax, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ay = getelementptr inbounds i8, ptr @index_to_char, i64 %indvars.iv38.i ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !8   ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr @index_to_char, i64 %i.ar ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !8   ; 2 uses
  store i8 %i.bb, ptr %i.ay, align 1, !tbaa !8
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !8
  %i.bc = zext i8 %i.az to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr @char_to_index, i64 %i.bc
  store i32 %i.ac, ptr %i.bd, align 4, !tbaa !4
  %i.be = zext i8 %i.bb to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr @char_to_index, i64 %i.be
  store i32 %indvars21.le, ptr %i.bf, align 4, !tbaa !4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bg = add nsw i32 %i.at, 1
  store i32 %i.bg, ptr %i.as, align 4, !tbaa !4
  %i.bh = icmp sgt i64 %indvars.iv38.i, 0
  br i1 %i.bh, label %.lr.ph.preheader.i, label %update_model.exit

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.bi = and i64 %indvars.iv38.i, 4294967295     ; 4 uses
  %min.iters.check = icmp samesign ult i64 %i.bi, 8
  br i1 %min.iters.check, label %.lr.ph.i, label %vector.ph50

vector.ph50:                                      ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %indvars.iv38.i, 4294967288    ; 2 uses
  %i.bj = and i64 %indvars.iv38.i, 7
  %i.bk = getelementptr [4 x i8], ptr @cum_freq, i64 %i.bi
  br label %vector.body51

vector.body51:                                    ; preds = %vector.body51, %vector.ph50
  %index52 = phi i64 [ 0, %vector.ph50 ], [ %index.next57, %vector.body51 ] ; 2 uses
  %i.bl = xor i64 %index52, -1
  %i.bm = getelementptr [4 x i8], ptr %i.bk, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -12 ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bm, i64 -28 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.bn, align 4, !tbaa !4
  %wide.load53 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !4
  %i.bp = add nsw <4 x i32> %wide.load, splat (i32 1)
  %i.bq = add nsw <4 x i32> %wide.load53, splat (i32 1)
  store <4 x i32> %i.bp, ptr %i.bn, align 4, !tbaa !4
  store <4 x i32> %i.bq, ptr %i.bo, align 4, !tbaa !4
  %index.next57 = add nuw i64 %index52, 8         ; 2 uses
  %i.br = icmp eq i64 %index.next57, %n.vec
  br i1 %i.br, label %middle.block58, label %vector.body51, !llvm.loop !21

middle.block58:                                   ; preds = %vector.body51
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %update_model.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %middle.block58, %.lr.ph.preheader.i
  %indvars.iv43.i.ph = phi i64 [ %i.bi, %.lr.ph.preheader.i ], [ %i.bj, %middle.block58 ] ; 13 uses
  %i.bs = getelementptr [4 x i8], ptr @cum_freq, i64 %indvars.iv43.i.ph
  %i.bt = getelementptr i8, ptr %i.bs, i64 -4     ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !4
  %i.bv = add nsw i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !4
  %i.bw = icmp samesign ugt i64 %indvars.iv43.i.ph, 1
  br i1 %i.bw, label %.lr.ph.i.1, label %update_model.exit

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.bx = getelementptr [4 x i8], ptr @cum_freq, i64 %indvars.iv43.i.ph
  %i.by = getelementptr i8, ptr %i.bx, i64 -8     ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !4
  %i.ca = add nsw i32 %i.bz, 1
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !4
  %.not = icmp eq i64 %indvars.iv43.i.ph, 2
  br i1 %.not, label %update_model.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.cb = getelementptr [4 x i8], ptr @cum_freq, i64 %indvars.iv43.i.ph
  %i.cc = getelementptr i8, ptr %i.cb, i64 -12    ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !4
  %i.ce = add nsw i32 %i.cd, 1
  store i32 %i.ce, ptr %i.cc, align 4, !tbaa !4
  %i.cf = icmp samesign ugt i64 %indvars.iv43.i.ph, 3
  br i1 %i.cf, label %.lr.ph.i.3, label %update_model.exit

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.cg = getelementptr [4 x i8], ptr @cum_freq, i64 %indvars.iv43.i.ph
  %i.ch = getelementptr i8, ptr %i.cg, i64 -16    ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !4
  %i.cj = add nsw i32 %i.ci, 1
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !4
  %.not65 = icmp eq i64 %indvars.iv43.i.ph, 4
  br i1 %.not65, label %update_model.exit, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %.lr.ph.i.3
  %i.ck = getelementptr [4 x i8], ptr @cum_freq, i64 %indvars.iv43.i.ph
end_hunk_0
