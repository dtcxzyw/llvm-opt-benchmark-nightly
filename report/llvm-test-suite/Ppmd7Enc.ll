inline.NumInlined: 11
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@PPMD7_kExpEscape = external local_unnamed_addr constant [16 x i8], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @Ppmd7z_RangeEnc_Init(ptr noundef writeonly captures(none) initializes((0, 13), (16, 24)) %0) local_unnamed_addr #0 {
bb.a:
  store i64 0, ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %i.a, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 0, ptr %i.b, align 4, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.c, align 8, !tbaa !14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Ppmd7z_RangeEnc_FlushData(ptr noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  %.shift.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 26 uses
  %i.d = load i64, ptr %0, align 8                ; 3 uses
  %i.e = and i64 %i.d, -16777216
  %or.cond.i = icmp eq i64 %i.e, 4278190080
  br i1 %or.cond.i, label %._crit_edge.i, label %.peel.begin.i

._crit_edge.i:                                    ; preds = %bb.a
  %.pre.i = load i64, ptr %i.c, align 8, !tbaa !14
  %i.f = add i64 %.pre.i, 1
  br label %RangeEnc_ShiftLow.exit

.peel.begin.i:                                    ; preds = %bb.a
  %1 = lshr i64 %i.d, 32
  %2 = trunc i64 %1 to i8
  %i.g = load i8, ptr %i.a, align 4, !tbaa !13
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16
  %i.j = add i8 %i.g, %2
  tail call void %i.i(ptr noundef nonnull %i.h, i8 noundef zeroext %i.j) #5, !inline_history !18
  %i.k = load i64, ptr %i.c, align 8, !tbaa !14
  %i.l = add i64 %i.k, -1                         ; 2 uses
  store i64 %i.l, ptr %i.c, align 8, !tbaa !14
  %.not13.peel.i = icmp eq i64 %i.l, 0
  br i1 %.not13.peel.i, label %.loopexit.i, label %.peel.next.i

.peel.next.i:                                     ; preds = %.peel.begin.i, %.peel.next.i
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16
  %3 = load i32, ptr %.shift.i, align 4, !tbaa !8
  %i.o = trunc i32 %3 to i8
  %i.p = add i8 %i.o, -1
  tail call void %i.n(ptr noundef nonnull %i.m, i8 noundef zeroext %i.p) #5, !inline_history !18
  %i.q = load i64, ptr %i.c, align 8, !tbaa !14
  %i.r = add i64 %i.q, -1                         ; 2 uses
  store i64 %i.r, ptr %i.c, align 8, !tbaa !14
  %.not13.i = icmp eq i64 %i.r, 0
  br i1 %.not13.i, label %.loopexit.i, label %.peel.next.i, !llvm.loop !19

.loopexit.i:                                      ; preds = %.peel.next.i, %.peel.begin.i
  %i.s = load i64, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.t = lshr i64 %i.s, 24
  %i.u = trunc i64 %i.t to i8
  store i8 %i.u, ptr %i.a, align 4, !tbaa !13
  br label %RangeEnc_ShiftLow.exit

RangeEnc_ShiftLow.exit:                           ; preds = %._crit_edge.i, %.loopexit.i
  %i.v = phi i64 [ %i.d, %._crit_edge.i ], [ %i.s, %.loopexit.i ]
  %.pre.i.1 = phi i64 [ %i.f, %._crit_edge.i ], [ 1, %.loopexit.i ] ; 2 uses
  store i64 %.pre.i.1, ptr %i.c, align 8, !tbaa !14
  %i.w = shl i64 %i.v, 8
  %i.x = and i64 %i.w, 4294967040                 ; 3 uses
  store i64 %i.x, ptr %0, align 8, !tbaa !8
  %i.y = icmp samesign ugt i64 %i.x, 4278190079
  br i1 %i.y, label %._crit_edge.i.1, label %.peel.begin.i.1

.peel.begin.i.1:                                  ; preds = %RangeEnc_ShiftLow.exit
  %i.z = load i8, ptr %i.a, align 4, !tbaa !13
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !15  ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !16
  tail call void %i.ab(ptr noundef nonnull %i.aa, i8 noundef zeroext %i.z) #5, !inline_history !18
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !14
  %i.ad = add i64 %i.ac, -1                       ; 2 uses
  store i64 %i.ad, ptr %i.c, align 8, !tbaa !14
  %.not13.peel.i.1 = icmp eq i64 %i.ad, 0
  br i1 %.not13.peel.i.1, label %.loopexit.i.1, label %.peel.next.i.1

.peel.next.i.1:                                   ; preds = %.peel.begin.i.1, %.peel.next.i.1
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !15  ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !16
  %4 = load i32, ptr %.shift.i, align 4, !tbaa !8
  %i.ag = trunc i32 %4 to i8
  %i.ah = add i8 %i.ag, -1
  tail call void %i.af(ptr noundef nonnull %i.ae, i8 noundef zeroext %i.ah) #5, !inline_history !18
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !14
  %i.aj = add i64 %i.ai, -1                       ; 2 uses
  store i64 %i.aj, ptr %i.c, align 8, !tbaa !14
  %.not13.i.1 = icmp eq i64 %i.aj, 0
  br i1 %.not13.i.1, label %.loopexit.i.1, label %.peel.next.i.1, !llvm.loop !19

.loopexit.i.1:                                    ; preds = %.peel.next.i.1, %.peel.begin.i.1
  %i.ak = load i64, ptr %0, align 8, !tbaa !8     ; 2 uses
  %i.al = lshr i64 %i.ak, 24
  %i.am = trunc i64 %i.al to i8
  store i8 %i.am, ptr %i.a, align 4, !tbaa !13
  br label %RangeEnc_ShiftLow.exit.1

._crit_edge.i.1:                                  ; preds = %RangeEnc_ShiftLow.exit
  %i.an = add i64 %.pre.i.1, 1
  br label %RangeEnc_ShiftLow.exit.1

RangeEnc_ShiftLow.exit.1:                         ; preds = %._crit_edge.i.1, %.loopexit.i.1
  %i.ao = phi i64 [ %i.x, %._crit_edge.i.1 ], [ %i.ak, %.loopexit.i.1 ]
  %.pre.i.2 = phi i64 [ %i.an, %._crit_edge.i.1 ], [ 1, %.loopexit.i.1 ] ; 2 uses
  store i64 %.pre.i.2, ptr %i.c, align 8, !tbaa !14
  %i.ap = shl i64 %i.ao, 8
  %i.aq = and i64 %i.ap, 4294967040               ; 3 uses
  store i64 %i.aq, ptr %0, align 8, !tbaa !8
  %i.ar = icmp samesign ugt i64 %i.aq, 4278190079
  br i1 %i.ar, label %._crit_edge.i.2, label %.peel.begin.i.2

.peel.begin.i.2:                                  ; preds = %RangeEnc_ShiftLow.exit.1
  %i.as = load i8, ptr %i.a, align 4, !tbaa !13
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !15  ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !16
  tail call void %i.au(ptr noundef nonnull %i.at, i8 noundef zeroext %i.as) #5, !inline_history !18
  %i.av = load i64, ptr %i.c, align 8, !tbaa !14
  %i.aw = add i64 %i.av, -1                       ; 2 uses
  store i64 %i.aw, ptr %i.c, align 8, !tbaa !14
  %.not13.peel.i.2 = icmp eq i64 %i.aw, 0
  br i1 %.not13.peel.i.2, label %.loopexit.i.2, label %.peel.next.i.2

.peel.next.i.2:                                   ; preds = %.peel.begin.i.2, %.peel.next.i.2
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !15  ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !16
  %5 = load i32, ptr %.shift.i, align 4, !tbaa !8
  %i.az = trunc i32 %5 to i8
  %i.ba = add i8 %i.az, -1
  tail call void %i.ay(ptr noundef nonnull %i.ax, i8 noundef zeroext %i.ba) #5, !inline_history !18
  %i.bb = load i64, ptr %i.c, align 8, !tbaa !14
  %i.bc = add i64 %i.bb, -1                       ; 2 uses
  store i64 %i.bc, ptr %i.c, align 8, !tbaa !14
  %.not13.i.2 = icmp eq i64 %i.bc, 0
  br i1 %.not13.i.2, label %.loopexit.i.2, label %.peel.next.i.2, !llvm.loop !19

.loopexit.i.2:                                    ; preds = %.peel.next.i.2, %.peel.begin.i.2
  %i.bd = load i64, ptr %0, align 8, !tbaa !8     ; 2 uses
  %i.be = lshr i64 %i.bd, 24
  %i.bf = trunc i64 %i.be to i8
  store i8 %i.bf, ptr %i.a, align 4, !tbaa !13
  br label %RangeEnc_ShiftLow.exit.2

._crit_edge.i.2:                                  ; preds = %RangeEnc_ShiftLow.exit.1
  %i.bg = add i64 %.pre.i.2, 1
  br label %RangeEnc_ShiftLow.exit.2

RangeEnc_ShiftLow.exit.2:                         ; preds = %._crit_edge.i.2, %.loopexit.i.2
  %i.bh = phi i64 [ %i.aq, %._crit_edge.i.2 ], [ %i.bd, %.loopexit.i.2 ]
  %.pre.i.3 = phi i64 [ %i.bg, %._crit_edge.i.2 ], [ 1, %.loopexit.i.2 ] ; 2 uses
  store i64 %.pre.i.3, ptr %i.c, align 8, !tbaa !14
  %i.bi = shl i64 %i.bh, 8
  %i.bj = and i64 %i.bi, 4294967040               ; 3 uses
  store i64 %i.bj, ptr %0, align 8, !tbaa !8
  %i.bk = icmp samesign ugt i64 %i.bj, 4278190079
  br i1 %i.bk, label %._crit_edge.i.3, label %.peel.begin.i.3

.peel.begin.i.3:                                  ; preds = %RangeEnc_ShiftLow.exit.2
  %i.bl = load i8, ptr %i.a, align 4, !tbaa !13
  %i.bm = load ptr, ptr %i.b, align 8, !tbaa !15  ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !16
  tail call void %i.bn(ptr noundef nonnull %i.bm, i8 noundef zeroext %i.bl) #5, !inline_history !18
  %i.bo = load i64, ptr %i.c, align 8, !tbaa !14
  %i.bp = add i64 %i.bo, -1                       ; 2 uses
  store i64 %i.bp, ptr %i.c, align 8, !tbaa !14
  %.not13.peel.i.3 = icmp eq i64 %i.bp, 0
  br i1 %.not13.peel.i.3, label %.loopexit.i.3, label %.peel.next.i.3

.peel.next.i.3:                                   ; preds = %.peel.begin.i.3, %.peel.next.i.3
  %i.bq = load ptr, ptr %i.b, align 8, !tbaa !15  ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !16
  %6 = load i32, ptr %.shift.i, align 4, !tbaa !8
  %i.bs = trunc i32 %6 to i8
  %i.bt = add i8 %i.bs, -1
  tail call void %i.br(ptr noundef nonnull %i.bq, i8 noundef zeroext %i.bt) #5, !inline_history !18
  %i.bu = load i64, ptr %i.c, align 8, !tbaa !14
  %i.bv = add i64 %i.bu, -1                       ; 2 uses
  store i64 %i.bv, ptr %i.c, align 8, !tbaa !14
  %.not13.i.3 = icmp eq i64 %i.bv, 0
  br i1 %.not13.i.3, label %.loopexit.i.3, label %.peel.next.i.3, !llvm.loop !19

.loopexit.i.3:                                    ; preds = %.peel.next.i.3, %.peel.begin.i.3
  %i.bw = load i64, ptr %0, align 8, !tbaa !8     ; 2 uses
  %i.bx = lshr i64 %i.bw, 24
  %i.by = trunc i64 %i.bx to i8
  store i8 %i.by, ptr %i.a, align 4, !tbaa !13
  br label %RangeEnc_ShiftLow.exit.3

._crit_edge.i.3:                                  ; preds = %RangeEnc_ShiftLow.exit.2
  %i.bz = add i64 %.pre.i.3, 1
  br label %RangeEnc_ShiftLow.exit.3

RangeEnc_ShiftLow.exit.3:                         ; preds = %._crit_edge.i.3, %.loopexit.i.3
  %i.ca = phi i64 [ %i.bj, %._crit_edge.i.3 ], [ %i.bw, %.loopexit.i.3 ]
  %.pre.i.4 = phi i64 [ %i.bz, %._crit_edge.i.3 ], [ 1, %.loopexit.i.3 ] ; 2 uses
  store i64 %.pre.i.4, ptr %i.c, align 8, !tbaa !14
  %i.cb = shl i64 %i.ca, 8
  %i.cc = and i64 %i.cb, 4294967040               ; 3 uses
  store i64 %i.cc, ptr %0, align 8, !tbaa !8
  %i.cd = icmp samesign ugt i64 %i.cc, 4278190079
  br i1 %i.cd, label %._crit_edge.i.4, label %.peel.begin.i.4

.peel.begin.i.4:                                  ; preds = %RangeEnc_ShiftLow.exit.3
  %i.ce = load i8, ptr %i.a, align 4, !tbaa !13
  %i.cf = load ptr, ptr %i.b, align 8, !tbaa !15  ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !16
  tail call void %i.cg(ptr noundef nonnull %i.cf, i8 noundef zeroext %i.ce) #5, !inline_history !18
  %i.ch = load i64, ptr %i.c, align 8, !tbaa !14
  %i.ci = add i64 %i.ch, -1                       ; 2 uses
  store i64 %i.ci, ptr %i.c, align 8, !tbaa !14
  %.not13.peel.i.4 = icmp eq i64 %i.ci, 0
  br i1 %.not13.peel.i.4, label %.loopexit.i.4, label %.peel.next.i.4

.peel.next.i.4:                                   ; preds = %.peel.begin.i.4, %.peel.next.i.4
  %i.cj = load ptr, ptr %i.b, align 8, !tbaa !15  ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !16
  %7 = load i32, ptr %.shift.i, align 4, !tbaa !8
  %i.cl = trunc i32 %7 to i8
  %i.cm = add i8 %i.cl, -1
  tail call void %i.ck(ptr noundef nonnull %i.cj, i8 noundef zeroext %i.cm) #5, !inline_history !18
  %i.cn = load i64, ptr %i.c, align 8, !tbaa !14
  %i.co = add i64 %i.cn, -1                       ; 2 uses
  store i64 %i.co, ptr %i.c, align 8, !tbaa !14
  %.not13.i.4 = icmp eq i64 %i.co, 0
  br i1 %.not13.i.4, label %.loopexit.i.4, label %.peel.next.i.4, !llvm.loop !19

.loopexit.i.4:                                    ; preds = %.peel.next.i.4, %.peel.begin.i.4
  %i.cp = load i64, ptr %0, align 8, !tbaa !8     ; 2 uses
  %i.cq = lshr i64 %i.cp, 24
  %i.cr = trunc i64 %i.cq to i8
  store i8 %i.cr, ptr %i.a, align 4, !tbaa !13
  br label %RangeEnc_ShiftLow.exit.4

._crit_edge.i.4:                                  ; preds = %RangeEnc_ShiftLow.exit.3
  %i.cs = add i64 %.pre.i.4, 1
  br label %RangeEnc_ShiftLow.exit.4

RangeEnc_ShiftLow.exit.4:                         ; preds = %._crit_edge.i.4, %.loopexit.i.4
  %i.ct = phi i64 [ %i.cc, %._crit_edge.i.4 ], [ %i.cp, %.loopexit.i.4 ]
  %i.cu = phi i64 [ %i.cs, %._crit_edge.i.4 ], [ 1, %.loopexit.i.4 ]
  store i64 %i.cu, ptr %i.c, align 8, !tbaa !14
  %i.cv = shl i64 %i.ct, 8
  %i.cw = and i64 %i.cv, 4294967040
  store i64 %i.cw, ptr %0, align 8, !tbaa !8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define dso_local void @Ppmd7_EncodeSymbol(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i64], align 16              ; 15 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.c = load ptr, ptr %0, align 8, !tbaa !22     ; 8 uses
  %i.d = load i16, ptr %i.c, align 4, !tbaa !28   ; 3 uses
  %.not = icmp eq i16 %i.d, 1
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !31
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i ; 5 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !32
  %i.l = zext i8 %i.k to i32
  %i.m = icmp eq i32 %2, %i.l
  br i1 %i.m, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !34
  %i.p = zext i8 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.r = load i16, ptr %i.q, align 2, !tbaa !35
  %i.s = zext i16 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !12
  %i.v = udiv i32 %i.u, %i.s
  %i.w = load i64, ptr %1, align 8, !tbaa !8
  %i.x = mul i32 %i.v, %i.p                       ; 3 uses
  store i32 %i.x, ptr %i.t, align 8, !tbaa !12
  %i.y = icmp ult i32 %i.x, 16777216
  br i1 %i.y, label %.lr.ph.i, label %RangeEnc_Encode.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.shift.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  br label %bb.d

bb.d:                                             ; preds = %RangeEnc_ShiftLow.exit.i, %.lr.ph.i
  %i.ac = phi i64 [ %i.w, %.lr.ph.i ], [ %i.az, %RangeEnc_ShiftLow.exit.i ] ; 3 uses
  %i.ad = phi i32 [ %i.x, %.lr.ph.i ], [ %.pr.i, %RangeEnc_ShiftLow.exit.i ]
  %i.ae = shl nuw i32 %i.ad, 8                    ; 2 uses
  store i32 %i.ae, ptr %i.t, align 8, !tbaa !12
  %i.af = and i64 %i.ac, -16777216
  %or.cond.i.i = icmp eq i64 %i.af, 4278190080
  br i1 %or.cond.i.i, label %._crit_edge.i.i, label %.peel.begin.i.i

._crit_edge.i.i:                                  ; preds = %bb.d
  %.pre.i.i = load i64, ptr %i.ab, align 8, !tbaa !14
  %i.ag = add i64 %.pre.i.i, 1
  br label %RangeEnc_ShiftLow.exit.i

.peel.begin.i.i:                                  ; preds = %bb.d
  %3 = lshr i64 %i.ac, 32
  %4 = trunc i64 %3 to i8
  %i.ah = load i8, ptr %i.z, align 4, !tbaa !13
  %i.ai = load ptr, ptr %i.aa, align 8, !tbaa !15 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !16
  %i.ak = add i8 %i.ah, %4
  tail call void %i.aj(ptr noundef nonnull %i.ai, i8 noundef zeroext %i.ak) #5, !inline_history !36
  %i.al = load i64, ptr %i.ab, align 8, !tbaa !14
  %i.am = add i64 %i.al, -1                       ; 2 uses
  store i64 %i.am, ptr %i.ab, align 8, !tbaa !14
  %.not13.peel.i.i = icmp eq i64 %i.am, 0
  br i1 %.not13.peel.i.i, label %.loopexit.i.i, label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %.peel.begin.i.i, %.peel.next.i.i
  %i.an = load ptr, ptr %i.aa, align 8, !tbaa !15 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !16
  %5 = load i32, ptr %.shift.i.i, align 4, !tbaa !8
  %i.ap = trunc i32 %5 to i8
  %i.aq = add i8 %i.ap, -1
  tail call void %i.ao(ptr noundef nonnull %i.an, i8 noundef zeroext %i.aq) #5, !inline_history !36
  %i.ar = load i64, ptr %i.ab, align 8, !tbaa !14
  %i.as = add i64 %i.ar, -1                       ; 2 uses
  store i64 %i.as, ptr %i.ab, align 8, !tbaa !14
  %.not13.i.i = icmp eq i64 %i.as, 0
  br i1 %.not13.i.i, label %.loopexit.i.i, label %.peel.next.i.i, !llvm.loop !19

.loopexit.i.i:                                    ; preds = %.peel.next.i.i, %.peel.begin.i.i
  %i.at = load i64, ptr %1, align 8, !tbaa !8     ; 2 uses
  %i.au = lshr i64 %i.at, 24
  %i.av = trunc i64 %i.au to i8
  store i8 %i.av, ptr %i.z, align 4, !tbaa !13
  %.pr.pre.i = load i32, ptr %i.t, align 8, !tbaa !12
  br label %RangeEnc_ShiftLow.exit.i

RangeEnc_ShiftLow.exit.i:                         ; preds = %.loopexit.i.i, %._crit_edge.i.i
  %.pr.i = phi i32 [ %i.ae, %._crit_edge.i.i ], [ %.pr.pre.i, %.loopexit.i.i ] ; 2 uses
  %i.aw = phi i64 [ %i.ac, %._crit_edge.i.i ], [ %i.at, %.loopexit.i.i ]
  %i.ax = phi i64 [ %i.ag, %._crit_edge.i.i ], [ 1, %.loopexit.i.i ]
  store i64 %i.ax, ptr %i.ab, align 8, !tbaa !14
  %i.ay = shl i64 %i.aw, 8
  %i.az = and i64 %i.ay, 4294967040               ; 2 uses
  store i64 %i.az, ptr %1, align 8, !tbaa !8
  %i.ba = icmp ult i32 %.pr.i, 16777216
  br i1 %i.ba, label %bb.d, label %RangeEnc_Encode.exit, !llvm.loop !37

RangeEnc_Encode.exit:                             ; preds = %RangeEnc_ShiftLow.exit.i, %bb.c
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %i.bb, align 8, !tbaa !38
  tail call void @Ppmd7_Update1_0(ptr noundef %0) #5
  br label %.critedge

bb.e:                                             ; preds = %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.bc, align 8, !tbaa !39
  %i.bd = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !34
  %i.bf = zext i8 %i.be to i32
  %i.bg = zext i16 %i.d to i32
  %i.bh = add nsw i32 %i.bg, -1                   ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %bb.e
  %.0144 = phi i32 [ %i.bh, %bb.e ], [ %i.df, %bb.i ]
  %.0143 = phi i32 [ %i.bf, %bb.e ], [ %i.de, %bb.i ] ; 2 uses
  %.0 = phi ptr [ %i.j, %bb.e ], [ %i.bi, %bb.i ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0, i64 6 ; 5 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !32  ; 2 uses
  %i.bk = zext i8 %i.bj to i32
  %i.bl = icmp eq i32 %2, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %.0, i64 7
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !34
  %i.bo = zext i8 %i.bn to i32                    ; 2 uses
  br i1 %i.bl, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !35
  %i.br = zext i16 %i.bq to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !12
  %i.bu = udiv i32 %i.bt, %i.br                   ; 2 uses
  %i.bv = mul i32 %i.bu, %.0143
  %i.bw = zext i32 %i.bv to i64
  %i.bx = load i64, ptr %1, align 8, !tbaa !8
  %i.by = add i64 %i.bx, %i.bw                    ; 2 uses
  store i64 %i.by, ptr %1, align 8, !tbaa !8
  %i.bz = mul i32 %i.bu, %i.bo                    ; 3 uses
  store i32 %i.bz, ptr %i.bs, align 8, !tbaa !12
  %i.ca = icmp ult i32 %i.bz, 16777216
  br i1 %i.ca, label %.lr.ph.i177, label %RangeEnc_Encode.exit189

.lr.ph.i177:                                      ; preds = %bb.g
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.shift.i.i178 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  br label %bb.h

bb.h:                                             ; preds = %RangeEnc_ShiftLow.exit.i185, %.lr.ph.i177
  %i.ce = phi i64 [ %i.by, %.lr.ph.i177 ], [ %i.db, %RangeEnc_ShiftLow.exit.i185 ] ; 3 uses
  %i.cf = phi i32 [ %i.bz, %.lr.ph.i177 ], [ %.pr.i186, %RangeEnc_ShiftLow.exit.i185 ]
  %i.cg = shl nuw i32 %i.cf, 8                    ; 2 uses
  store i32 %i.cg, ptr %i.bs, align 8, !tbaa !12
  %i.ch = and i64 %i.ce, -16777216
  %or.cond.i.i178 = icmp eq i64 %i.ch, 4278190080
  br i1 %or.cond.i.i178, label %._crit_edge.i.i187, label %.peel.begin.i.i179

._crit_edge.i.i187:                               ; preds = %bb.h
  %.pre.i.i188 = load i64, ptr %i.cd, align 8, !tbaa !14
  %i.ci = add i64 %.pre.i.i188, 1
  br label %RangeEnc_ShiftLow.exit.i185

.peel.begin.i.i179:                               ; preds = %bb.h
  %6 = lshr i64 %i.ce, 32
  %7 = trunc i64 %6 to i8
  %i.cj = load i8, ptr %i.cb, align 4, !tbaa !13
  %i.ck = load ptr, ptr %i.cc, align 8, !tbaa !15 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !16
  %i.cm = add i8 %i.cj, %7
  tail call void %i.cl(ptr noundef nonnull %i.ck, i8 noundef zeroext %i.cm) #5, !inline_history !36
  %i.cn = load i64, ptr %i.cd, align 8, !tbaa !14
  %i.co = add i64 %i.cn, -1                       ; 2 uses
  store i64 %i.co, ptr %i.cd, align 8, !tbaa !14
  %.not13.peel.i.i180 = icmp eq i64 %i.co, 0
  br i1 %.not13.peel.i.i180, label %.loopexit.i.i183, label %.peel.next.i.i181

.peel.next.i.i181:                                ; preds = %.peel.begin.i.i179, %.peel.next.i.i181
  %i.cp = load ptr, ptr %i.cc, align 8, !tbaa !15 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !16
  %8 = load i32, ptr %.shift.i.i178, align 4, !tbaa !8
  %i.cr = trunc i32 %8 to i8
  %i.cs = add i8 %i.cr, -1
  tail call void %i.cq(ptr noundef nonnull %i.cp, i8 noundef zeroext %i.cs) #5, !inline_history !36
  %i.ct = load i64, ptr %i.cd, align 8, !tbaa !14
  %i.cu = add i64 %i.ct, -1                       ; 2 uses
  store i64 %i.cu, ptr %i.cd, align 8, !tbaa !14
  %.not13.i.i182 = icmp eq i64 %i.cu, 0
  br i1 %.not13.i.i182, label %.loopexit.i.i183, label %.peel.next.i.i181, !llvm.loop !19

.loopexit.i.i183:                                 ; preds = %.peel.next.i.i181, %.peel.begin.i.i179
  %i.cv = load i64, ptr %1, align 8, !tbaa !8     ; 2 uses
  %i.cw = lshr i64 %i.cv, 24
  %i.cx = trunc i64 %i.cw to i8
  store i8 %i.cx, ptr %i.cb, align 4, !tbaa !13
  %.pr.pre.i184 = load i32, ptr %i.bs, align 8, !tbaa !12
  br label %RangeEnc_ShiftLow.exit.i185

RangeEnc_ShiftLow.exit.i185:                      ; preds = %.loopexit.i.i183, %._crit_edge.i.i187
  %.pr.i186 = phi i32 [ %i.cg, %._crit_edge.i.i187 ], [ %.pr.pre.i184, %.loopexit.i.i183 ] ; 2 uses
  %i.cy = phi i64 [ %i.ce, %._crit_edge.i.i187 ], [ %i.cv, %.loopexit.i.i183 ]
  %i.cz = phi i64 [ %i.ci, %._crit_edge.i.i187 ], [ 1, %.loopexit.i.i183 ]
  store i64 %i.cz, ptr %i.cd, align 8, !tbaa !14
  %i.da = shl i64 %i.cy, 8
  %i.db = and i64 %i.da, 4294967040               ; 2 uses
  store i64 %i.db, ptr %1, align 8, !tbaa !8
  %i.dc = icmp ult i32 %.pr.i186, 16777216
  br i1 %i.dc, label %bb.h, label %RangeEnc_Encode.exit189, !llvm.loop !37

RangeEnc_Encode.exit189:                          ; preds = %RangeEnc_ShiftLow.exit.i185, %bb.g
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bi, ptr %i.dd, align 8, !tbaa !38
  tail call void @Ppmd7_Update1(ptr noundef %0) #5
  br label %.critedge

bb.i:                                             ; preds = %bb.f
  %i.de = add i32 %.0143, %i.bo                   ; 3 uses
  %i.df = add i32 %.0144, -1                      ; 2 uses
  %.not169 = icmp eq i32 %i.df, 0
  br i1 %.not169, label %bb.j, label %bb.f, !llvm.loop !40

bb.j:                                             ; preds = %bb.i
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 940
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !38
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !32
  %i.dk = zext i8 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !41
  %i.dn = zext i8 %i.dm to i32
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.dn, ptr %i.do, align 8, !tbaa !42
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 -1, i64 256, i1 false), !tbaa !43
  %i.dp = zext i8 %i.bj to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dp
  store i8 0, ptr %i.dq, align 1, !tbaa !41
  %xtraiter = and i32 %i.bh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.j, %.prol.preheader
  %.1145.prol = phi i32 [ %i.dv, %.prol.preheader ], [ %i.bh, %bb.j ]
  %.1.prol = phi ptr [ %i.dr, %.prol.preheader ], [ %i.bi, %bb.j ]
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.j ]
  %i.dr = getelementptr inbounds i8, ptr %.1.prol, i64 -6 ; 3 uses
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !32
  %i.dt = zext i8 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dt
  store i8 0, ptr %i.du, align 1, !tbaa !41
  %i.dv = add i32 %.1145.prol, -1                 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !45

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.j
  %.1145.unr = phi i32 [ %i.bh, %bb.j ], [ %i.dv, %.prol.preheader ]
  %.1.unr = phi ptr [ %i.bi, %bb.j ], [ %i.dr, %.prol.preheader ]
  %i.dw = add i16 %i.d, -2
  %i.dx = icmp ult i16 %i.dw, 3
  br i1 %i.dx, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.1145 = phi i32 [ %i.eo, %.new ], [ %.1145.unr, %.prol.loopexit ]
  %.1 = phi ptr [ %i.ek, %.new ], [ %.1.unr, %.prol.loopexit ] ; 4 uses
  %i.dy = getelementptr inbounds i8, ptr %.1, i64 -6
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !32
  %i.ea = zext i8 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ea
  store i8 0, ptr %i.eb, align 1, !tbaa !41
  %i.ec = getelementptr inbounds i8, ptr %.1, i64 -12
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !32
  %i.ee = zext i8 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ee
  store i8 0, ptr %i.ef, align 1, !tbaa !41
  %i.eg = getelementptr inbounds i8, ptr %.1, i64 -18
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !32
  %i.ei = zext i8 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ei
  store i8 0, ptr %i.ej, align 1, !tbaa !41
  %i.ek = getelementptr inbounds i8, ptr %.1, i64 -24 ; 2 uses
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !32
  %i.em = zext i8 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.em
  store i8 0, ptr %i.en, align 1, !tbaa !41
  %i.eo = add i32 %.1145, -4                      ; 2 uses
  %.not170.3 = icmp eq i32 %i.eo, 0
  br i1 %.not170.3, label %.unr-lcssa, label %.new, !llvm.loop !47

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %i.ep = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !35
  %i.er = zext i16 %i.eq to i32                   ; 2 uses
  %i.es = sub i32 %i.er, %i.de
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !12
  %i.ev = udiv i32 %i.eu, %i.er                   ; 2 uses
  %i.ew = mul i32 %i.ev, %i.de
  %i.ex = zext i32 %i.ew to i64
  %i.ey = load i64, ptr %1, align 8, !tbaa !8
  %i.ez = add i64 %i.ey, %i.ex                    ; 2 uses
  store i64 %i.ez, ptr %1, align 8, !tbaa !8
  %i.fa = mul i32 %i.ev, %i.es                    ; 3 uses
  store i32 %i.fa, ptr %i.et, align 8, !tbaa !12
  %i.fb = icmp ult i32 %i.fa, 16777216
  br i1 %i.fb, label %.lr.ph.i190, label %RangeEnc_Encode.exit202

.lr.ph.i190:                                      ; preds = %.unr-lcssa
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.shift.i.i192 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  br label %bb.k

bb.k:                                             ; preds = %RangeEnc_ShiftLow.exit.i198, %.lr.ph.i190
  %i.ff = phi i64 [ %i.ez, %.lr.ph.i190 ], [ %i.gc, %RangeEnc_ShiftLow.exit.i198 ] ; 3 uses
  %i.fg = phi i32 [ %i.fa, %.lr.ph.i190 ], [ %.pr.i199, %RangeEnc_ShiftLow.exit.i198 ]
  %i.fh = shl nuw i32 %i.fg, 8                    ; 2 uses
  store i32 %i.fh, ptr %i.et, align 8, !tbaa !12
  %i.fi = and i64 %i.ff, -16777216
  %or.cond.i.i191 = icmp eq i64 %i.fi, 4278190080
  br i1 %or.cond.i.i191, label %._crit_edge.i.i200, label %.peel.begin.i.i192

._crit_edge.i.i200:                               ; preds = %bb.k
  %.pre.i.i201 = load i64, ptr %i.fe, align 8, !tbaa !14
  %i.fj = add i64 %.pre.i.i201, 1
  br label %RangeEnc_ShiftLow.exit.i198

.peel.begin.i.i192:                               ; preds = %bb.k
  %9 = lshr i64 %i.ff, 32
  %10 = trunc i64 %9 to i8
  %i.fk = load i8, ptr %i.fc, align 4, !tbaa !13
  %i.fl = load ptr, ptr %i.fd, align 8, !tbaa !15 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !16
  %i.fn = add i8 %i.fk, %10
  tail call void %i.fm(ptr noundef nonnull %i.fl, i8 noundef zeroext %i.fn) #5, !inline_history !36
  %i.fo = load i64, ptr %i.fe, align 8, !tbaa !14
  %i.fp = add i64 %i.fo, -1                       ; 2 uses
  store i64 %i.fp, ptr %i.fe, align 8, !tbaa !14
  %.not13.peel.i.i193 = icmp eq i64 %i.fp, 0
  br i1 %.not13.peel.i.i193, label %.loopexit.i.i196, label %.peel.next.i.i194

.peel.next.i.i194:                                ; preds = %.peel.begin.i.i192, %.peel.next.i.i194
  %i.fq = load ptr, ptr %i.fd, align 8, !tbaa !15 ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !16
  %11 = load i32, ptr %.shift.i.i192, align 4, !tbaa !8
  %i.fs = trunc i32 %11 to i8
  %i.ft = add i8 %i.fs, -1
  tail call void %i.fr(ptr noundef nonnull %i.fq, i8 noundef zeroext %i.ft) #5, !inline_history !36
  %i.fu = load i64, ptr %i.fe, align 8, !tbaa !14
  %i.fv = add i64 %i.fu, -1                       ; 2 uses
  store i64 %i.fv, ptr %i.fe, align 8, !tbaa !14
  %.not13.i.i195 = icmp eq i64 %i.fv, 0
  br i1 %.not13.i.i195, label %.loopexit.i.i196, label %.peel.next.i.i194, !llvm.loop !19

.loopexit.i.i196:                                 ; preds = %.peel.next.i.i194, %.peel.begin.i.i192
  %i.fw = load i64, ptr %1, align 8, !tbaa !8     ; 2 uses
  %i.fx = lshr i64 %i.fw, 24
  %i.fy = trunc i64 %i.fx to i8
  store i8 %i.fy, ptr %i.fc, align 4, !tbaa !13
  %.pr.pre.i197 = load i32, ptr %i.et, align 8, !tbaa !12
  br label %RangeEnc_ShiftLow.exit.i198

RangeEnc_ShiftLow.exit.i198:                      ; preds = %.loopexit.i.i196, %._crit_edge.i.i200
  %.pr.i199 = phi i32 [ %i.fh, %._crit_edge.i.i200 ], [ %.pr.pre.i197, %.loopexit.i.i196 ] ; 2 uses
  %i.fz = phi i64 [ %i.ff, %._crit_edge.i.i200 ], [ %i.fw, %.loopexit.i.i196 ]
  %i.ga = phi i64 [ %i.fj, %._crit_edge.i.i200 ], [ 1, %.loopexit.i.i196 ]
  store i64 %i.ga, ptr %i.fe, align 8, !tbaa !14
  %i.gb = shl i64 %i.fz, 8
  %i.gc = and i64 %i.gb, 4294967040               ; 2 uses
  store i64 %i.gc, ptr %1, align 8, !tbaa !8
  %i.gd = icmp ult i32 %.pr.i199, 16777216
  br i1 %i.gd, label %bb.k, label %RangeEnc_Encode.exit202, !llvm.loop !37

bb.l:                                             ; preds = %bb.a
  %i.ge = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !34
  %i.gg = zext i8 %i.gf to i64
  %i.gh = getelementptr i8, ptr %0, i64 2672
  %i.gi = getelementptr [128 x i8], ptr %i.gh, i64 %i.gg
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !39
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !30
  %i.gn = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !48
  %i.gp = zext i32 %i.go to i64
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.gp
  %i.gr = load i16, ptr %i.gq, align 4, !tbaa !28
  %i.gs = zext i16 %i.gr to i64
  %i.gt = getelementptr i8, ptr %0, i64 683
  %i.gu = getelementptr i8, ptr %i.gt, i64 %i.gs
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !41
  %i.gw = zext i8 %i.gv to i32
  %i.gx = add i32 %i.gk, %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 940 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !38
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !32
  %i.hc = zext i8 %i.hb to i64
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.hc
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !41
  %i.hf = zext i8 %i.he to i32                    ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.hf, ptr %i.hg, align 8, !tbaa !42
  %i.hh = add i32 %i.gx, %i.hf
  %i.hi = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 3 uses
  %i.hj = load i8, ptr %i.hi, align 2, !tbaa !32  ; 2 uses
  %i.hk = zext i8 %i.hj to i64                    ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.hk
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !41
  %i.hn = zext i8 %i.hm to i32
  %i.ho = shl nuw nsw i32 %i.hn, 1
  %i.hp = add i32 %i.hh, %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !49
  %i.hs = lshr i32 %i.hr, 26
  %i.ht = and i32 %i.hs, 32
  %i.hu = add i32 %i.hp, %i.ht
  %i.hv = zext i32 %i.hu to i64
  %i.hw = getelementptr inbounds nuw [2 x i8], ptr %i.gi, i64 %i.hv ; 5 uses
  %i.hx = zext i8 %i.hj to i32
  %.not168 = icmp eq i32 %2, %i.hx                ; 2 uses
  %i.hy = load i16, ptr %i.hw, align 2, !tbaa !50 ; 2 uses
  %i.hz = zext i16 %i.hy to i32                   ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !12 ; 2 uses
  %i.ic = lshr i32 %i.ib, 14
  %i.id = mul i32 %i.ic, %i.hz                    ; 5 uses
  br i1 %.not168, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  store i32 %i.id, ptr %i.ia, align 8, !tbaa !12
  %i.ie = icmp ult i32 %i.id, 16777216
  br i1 %i.ie, label %.lr.ph.i203, label %RangeEnc_EncodeBit_0.exit

.lr.ph.i203:                                      ; preds = %bb.m
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.shift.i.i206 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %.pre.i = load i64, ptr %1, align 8
  br label %bb.n

bb.n:                                             ; preds = %RangeEnc_ShiftLow.exit.i211, %.lr.ph.i203
  %i.ii = phi i64 [ %.pre.i, %.lr.ph.i203 ], [ %i.jf, %RangeEnc_ShiftLow.exit.i211 ] ; 3 uses
  %i.ij = phi i32 [ %i.id, %.lr.ph.i203 ], [ %.pr.i212, %RangeEnc_ShiftLow.exit.i211 ]
  %i.ik = shl nuw i32 %i.ij, 8                    ; 2 uses
  store i32 %i.ik, ptr %i.ia, align 8, !tbaa !12
  %i.il = and i64 %i.ii, -16777216
  %or.cond.i.i204 = icmp eq i64 %i.il, 4278190080
  br i1 %or.cond.i.i204, label %._crit_edge.i.i213, label %.peel.begin.i.i205

._crit_edge.i.i213:                               ; preds = %bb.n
  %.pre.i.i214 = load i64, ptr %i.ih, align 8, !tbaa !14
  %i.im = add i64 %.pre.i.i214, 1
  br label %RangeEnc_ShiftLow.exit.i211

.peel.begin.i.i205:                               ; preds = %bb.n
  %12 = lshr i64 %i.ii, 32
  %13 = trunc i64 %12 to i8
  %i.in = load i8, ptr %i.if, align 4, !tbaa !13
  %i.io = load ptr, ptr %i.ig, align 8, !tbaa !15 ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !16
  %i.iq = add i8 %i.in, %13
  tail call void %i.ip(ptr noundef nonnull %i.io, i8 noundef zeroext %i.iq) #5, !inline_history !51
  %i.ir = load i64, ptr %i.ih, align 8, !tbaa !14
  %i.is = add i64 %i.ir, -1                       ; 2 uses
  store i64 %i.is, ptr %i.ih, align 8, !tbaa !14
  %.not13.peel.i.i206 = icmp eq i64 %i.is, 0
  br i1 %.not13.peel.i.i206, label %.loopexit.i.i209, label %.peel.next.i.i207

.peel.next.i.i207:                                ; preds = %.peel.begin.i.i205, %.peel.next.i.i207
  %i.it = load ptr, ptr %i.ig, align 8, !tbaa !15 ; 2 uses
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !16
  %14 = load i32, ptr %.shift.i.i206, align 4, !tbaa !8
  %i.iv = trunc i32 %14 to i8
  %i.iw = add i8 %i.iv, -1
  tail call void %i.iu(ptr noundef nonnull %i.it, i8 noundef zeroext %i.iw) #5, !inline_history !51
  %i.ix = load i64, ptr %i.ih, align 8, !tbaa !14
  %i.iy = add i64 %i.ix, -1                       ; 2 uses
  store i64 %i.iy, ptr %i.ih, align 8, !tbaa !14
  %.not13.i.i208 = icmp eq i64 %i.iy, 0
  br i1 %.not13.i.i208, label %.loopexit.i.i209, label %.peel.next.i.i207, !llvm.loop !19

.loopexit.i.i209:                                 ; preds = %.peel.next.i.i207, %.peel.begin.i.i205
  %i.iz = load i64, ptr %1, align 8, !tbaa !8     ; 2 uses
  %i.ja = lshr i64 %i.iz, 24
  %i.jb = trunc i64 %i.ja to i8
  store i8 %i.jb, ptr %i.if, align 4, !tbaa !13
  %.pr.pre.i210 = load i32, ptr %i.ia, align 8, !tbaa !12
  br label %RangeEnc_ShiftLow.exit.i211

RangeEnc_ShiftLow.exit.i211:                      ; preds = %.loopexit.i.i209, %._crit_edge.i.i213
  %.pr.i212 = phi i32 [ %i.ik, %._crit_edge.i.i213 ], [ %.pr.pre.i210, %.loopexit.i.i209 ] ; 2 uses
  %i.jc = phi i64 [ %i.ii, %._crit_edge.i.i213 ], [ %i.iz, %.loopexit.i.i209 ]
  %i.jd = phi i64 [ %i.im, %._crit_edge.i.i213 ], [ 1, %.loopexit.i.i209 ]
  store i64 %i.jd, ptr %i.ih, align 8, !tbaa !14
  %i.je = shl i64 %i.jc, 8
  %i.jf = and i64 %i.je, 4294967040               ; 2 uses
  store i64 %i.jf, ptr %1, align 8, !tbaa !8
  %i.jg = icmp ult i32 %.pr.i212, 16777216
  br i1 %i.jg, label %bb.n, label %RangeEnc_EncodeBit_0.exit.loopexit, !llvm.loop !52

RangeEnc_EncodeBit_0.exit.loopexit:               ; preds = %RangeEnc_ShiftLow.exit.i211
  %.pre295 = load i16, ptr %i.hw, align 2, !tbaa !50
  %.pre297 = zext i16 %.pre295 to i32
  br label %RangeEnc_EncodeBit_0.exit

RangeEnc_EncodeBit_0.exit:                        ; preds = %RangeEnc_EncodeBit_0.exit.loopexit, %bb.m
  %.pre-phi = phi i32 [ %.pre297, %RangeEnc_EncodeBit_0.exit.loopexit ], [ %i.hz, %bb.m ] ; 2 uses
  %i.jh = add nuw nsw i32 %.pre-phi, 128
  %i.ji = add nuw nsw i32 %.pre-phi, 32
  %i.jj = lshr i32 %i.ji, 7
  %i.jk = sub nsw i32 %i.jh, %i.jj
  %i.jl = trunc i32 %i.jk to i16
  store i16 %i.jl, ptr %i.hw, align 2, !tbaa !50
  store ptr %i.hi, ptr %i.gz, align 8, !tbaa !38
  tail call void @Ppmd7_UpdateBin(ptr noundef nonnull %0) #5
  br label %bb.q

bb.o:                                             ; preds = %bb.l
  %i.jm = zext i32 %i.id to i64
  %i.jn = load i64, ptr %1, align 8, !tbaa !8
  %i.jo = add i64 %i.jn, %i.jm                    ; 2 uses
  store i64 %i.jo, ptr %1, align 8, !tbaa !8
  %i.jp = sub i32 %i.ib, %i.id                    ; 3 uses
  store i32 %i.jp, ptr %i.ia, align 8, !tbaa !12
  %i.jq = icmp ult i32 %i.jp, 16777216
  br i1 %i.jq, label %.lr.ph.i215, label %RangeEnc_EncodeBit_1.exit

.lr.ph.i215:                                      ; preds = %bb.o
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.shift.i.i219 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  br label %bb.p

bb.p:                                             ; preds = %RangeEnc_ShiftLow.exit.i223, %.lr.ph.i215
  %i.ju = phi i64 [ %i.jo, %.lr.ph.i215 ], [ %i.kr, %RangeEnc_ShiftLow.exit.i223 ] ; 3 uses
  %i.jv = phi i32 [ %i.jp, %.lr.ph.i215 ], [ %.pr.i224, %RangeEnc_ShiftLow.exit.i223 ]
  %i.jw = shl nuw i32 %i.jv, 8                    ; 2 uses
  store i32 %i.jw, ptr %i.ia, align 8, !tbaa !12
  %i.jx = and i64 %i.ju, -16777216
  %or.cond.i.i216 = icmp eq i64 %i.jx, 4278190080
  br i1 %or.cond.i.i216, label %._crit_edge.i.i225, label %.peel.begin.i.i217

._crit_edge.i.i225:                               ; preds = %bb.p
  %.pre.i.i226 = load i64, ptr %i.jt, align 8, !tbaa !14
  %i.jy = add i64 %.pre.i.i226, 1
  br label %RangeEnc_ShiftLow.exit.i223

.peel.begin.i.i217:                               ; preds = %bb.p
  %15 = lshr i64 %i.ju, 32
  %16 = trunc i64 %15 to i8
  %i.jz = load i8, ptr %i.jr, align 4, !tbaa !13
  %i.ka = load ptr, ptr %i.js, align 8, !tbaa !15 ; 2 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !16
  %i.kc = add i8 %i.jz, %16
  tail call void %i.kb(ptr noundef nonnull %i.ka, i8 noundef zeroext %i.kc) #5, !inline_history !53
  %i.kd = load i64, ptr %i.jt, align 8, !tbaa !14
  %i.ke = add i64 %i.kd, -1                       ; 2 uses
  store i64 %i.ke, ptr %i.jt, align 8, !tbaa !14
  %.not13.peel.i.i218 = icmp eq i64 %i.ke, 0
  br i1 %.not13.peel.i.i218, label %.loopexit.i.i221, label %.peel.next.i.i219

.peel.next.i.i219:                                ; preds = %.peel.begin.i.i217, %.peel.next.i.i219
  %i.kf = load ptr, ptr %i.js, align 8, !tbaa !15 ; 2 uses
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !16
  %17 = load i32, ptr %.shift.i.i219, align 4, !tbaa !8
  %i.kh = trunc i32 %17 to i8
  %i.ki = add i8 %i.kh, -1
  tail call void %i.kg(ptr noundef nonnull %i.kf, i8 noundef zeroext %i.ki) #5, !inline_history !53
  %i.kj = load i64, ptr %i.jt, align 8, !tbaa !14
  %i.kk = add i64 %i.kj, -1                       ; 2 uses
  store i64 %i.kk, ptr %i.jt, align 8, !tbaa !14
  %.not13.i.i220 = icmp eq i64 %i.kk, 0
  br i1 %.not13.i.i220, label %.loopexit.i.i221, label %.peel.next.i.i219, !llvm.loop !19

.loopexit.i.i221:                                 ; preds = %.peel.next.i.i219, %.peel.begin.i.i217
  %i.kl = load i64, ptr %1, align 8, !tbaa !8     ; 2 uses
  %i.km = lshr i64 %i.kl, 24
  %i.kn = trunc i64 %i.km to i8
  store i8 %i.kn, ptr %i.jr, align 4, !tbaa !13
  %.pr.pre.i222 = load i32, ptr %i.ia, align 8, !tbaa !12
  br label %RangeEnc_ShiftLow.exit.i223

RangeEnc_ShiftLow.exit.i223:                      ; preds = %.loopexit.i.i221, %._crit_edge.i.i225
  %.pr.i224 = phi i32 [ %i.jw, %._crit_edge.i.i225 ], [ %.pr.pre.i222, %.loopexit.i.i221 ] ; 2 uses
  %i.ko = phi i64 [ %i.ju, %._crit_edge.i.i225 ], [ %i.kl, %.loopexit.i.i221 ]
  %i.kp = phi i64 [ %i.jy, %._crit_edge.i.i225 ], [ 1, %.loopexit.i.i221 ]
  store i64 %i.kp, ptr %i.jt, align 8, !tbaa !14
  %i.kq = shl i64 %i.ko, 8
  %i.kr = and i64 %i.kq, 4294967040               ; 2 uses
  store i64 %i.kr, ptr %1, align 8, !tbaa !8
  %i.ks = icmp ult i32 %.pr.i224, 16777216
  br i1 %i.ks, label %bb.p, label %RangeEnc_EncodeBit_1.exit.loopexit, !llvm.loop !54

RangeEnc_EncodeBit_1.exit.loopexit:               ; preds = %RangeEnc_ShiftLow.exit.i223
  %.pre = load i16, ptr %i.hw, align 2, !tbaa !50 ; 2 uses
  %.pre294 = load i8, ptr %i.hi, align 1, !tbaa !32
  %.pre298 = zext i16 %.pre to i32
  %.pre300 = zext i8 %.pre294 to i64
  br label %RangeEnc_EncodeBit_1.exit

RangeEnc_EncodeBit_1.exit:                        ; preds = %RangeEnc_EncodeBit_1.exit.loopexit, %bb.o
  %.pre-phi301 = phi i64 [ %.pre300, %RangeEnc_EncodeBit_1.exit.loopexit ], [ %i.hk, %bb.o ]
  %.pre-phi299 = phi i32 [ %.pre298, %RangeEnc_EncodeBit_1.exit.loopexit ], [ %i.hz, %bb.o ]
  %i.kt = phi i16 [ %.pre, %RangeEnc_EncodeBit_1.exit.loopexit ], [ %i.hy, %bb.o ]
  %i.ku = add nuw nsw i32 %.pre-phi299, 32
  %i.kv = lshr i32 %i.ku, 7
  %i.kw = trunc nuw nsw i32 %i.kv to i16
  %i.kx = sub i16 %i.kt, %i.kw                    ; 2 uses
  store i16 %i.kx, ptr %i.hw, align 2, !tbaa !50
  %i.ky = lshr i16 %i.kx, 10
  %i.kz = zext nneg i16 %i.ky to i64
  %i.la = getelementptr inbounds nuw i8, ptr @PPMD7_kExpEscape, i64 %i.kz
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !41
  %i.lc = zext i8 %i.lb to i32
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.lc, ptr %i.ld, align 4, !tbaa !55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 -1, i64 256, i1 false), !tbaa !43
  %i.le = getelementptr inbounds nuw i8, ptr %i.a, i64 %.pre-phi301
  store i8 0, ptr %i.le, align 1, !tbaa !41
  store i32 0, ptr %i.gj, align 8, !tbaa !39
  br label %bb.q

bb.q:                                             ; preds = %RangeEnc_EncodeBit_1.exit, %RangeEnc_EncodeBit_0.exit
  br i1 %.not168, label %.critedge, label %RangeEnc_Encode.exit202

RangeEnc_Encode.exit202:                          ; preds = %RangeEnc_ShiftLow.exit.i198, %.unr-lcssa, %bb.q
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %.shift.i.i246 = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 12 uses
  br label %bb.r

bb.r:                                             ; preds = %RangeEnc_Encode.exit252, %RangeEnc_Encode.exit202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.ll = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.lm = load i16, ptr %i.ll, align 4, !tbaa !28 ; 2 uses
  %i.ln = zext i16 %i.lm to i32
  %.promoted = load i32, ptr %i.lf, align 8, !tbaa !56
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %bb.r
  %i.lo = phi ptr [ %i.lv, %bb.t ], [ %i.ll, %bb.r ]
  %i.lp = phi i32 [ %i.lq, %bb.t ], [ %.promoted, %bb.r ]
  %i.lq = add i32 %i.lp, 1                        ; 3 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !48 ; 2 uses
  %.not171 = icmp eq i32 %i.ls, 0
  br i1 %.not171, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.lt = load ptr, ptr %i.lg, align 8, !tbaa !30
  %i.lu = zext i32 %i.ls to i64
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.lu ; 3 uses
  store ptr %i.lv, ptr %0, align 8, !tbaa !22
  %i.lw = load i16, ptr %i.lv, align 4, !tbaa !28
  %i.lx = icmp eq i16 %i.lw, %i.lm
  br i1 %i.lx, label %bb.s, label %bb.u, !llvm.loop !57

bb.u:                                             ; preds = %bb.t
  store i32 %i.lq, ptr %i.lf, align 8, !tbaa !56
  %i.ly = call ptr @Ppmd7_MakeEscFreq(ptr noundef nonnull %0, i32 noundef %i.ln, ptr noundef nonnull %i.b) #5 ; 6 uses
  %i.lz = load ptr, ptr %i.lg, align 8, !tbaa !30
  %i.ma = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 4
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !31
  %i.md = zext i32 %i.mc to i64
  %i.me = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.md
  %i.mf = load i16, ptr %i.ma, align 4, !tbaa !28 ; 2 uses
  %i.mg = zext i16 %i.mf to i32
  br label %bb.v

bb.v:                                             ; preds = %.thread, %bb.u
  %indvar = phi i32 [ %indvar.next, %.thread ], [ 0, %bb.u ] ; 2 uses
  %.0154 = phi ptr [ %i.pz, %.thread ], [ %i.me, %bb.u ] ; 9 uses
  %.0151 = phi i32 [ %i.py, %.thread ], [ 0, %bb.u ] ; 4 uses
  %.0148 = phi i32 [ %i.qa, %.thread ], [ %i.mg, %bb.u ] ; 4 uses
  %i.mh = load i8, ptr %.0154, align 1, !tbaa !32 ; 2 uses
  %i.mi = zext i8 %i.mh to i32
  %.not173 = icmp eq i32 %2, %i.mi
  br i1 %.not173, label %.preheader.preheader, label %.thread

.preheader.preheader:                             ; preds = %bb.v
  %i.mj = zext i16 %i.mf to i32
  %xtraiter360 = and i32 %.0148, 1
  %lcmp.mod361.not = icmp eq i32 %xtraiter360, 0
  br i1 %lcmp.mod361.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader
  %i.mk = getelementptr inbounds nuw i8, ptr %.0154, i64 1
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !34
  %i.mm = load i8, ptr %.0154, align 1, !tbaa !32
  %i.mn = zext i8 %i.mm to i64
  %i.mo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.mn
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !41
  %i.mq = and i8 %i.mp, %i.ml
  %i.mr = zext i8 %i.mq to i32
  %i.ms = add i32 %.0151, %i.mr                   ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.0154, i64 6
  %i.mu = add nsw i32 %.0148, -1
  br label %.preheader.prol.loopexit

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.lcssa.unr = phi i32 [ poison, %.preheader.preheader ], [ %i.ms, %.preheader.prol ]
  %.1155.unr = phi ptr [ %.0154, %.preheader.preheader ], [ %i.mt, %.preheader.prol ]
  %.1152.unr = phi i32 [ %.0151, %.preheader.preheader ], [ %i.ms, %.preheader.prol ]
  %.1149.unr = phi i32 [ %.0148, %.preheader.preheader ], [ %i.mu, %.preheader.prol ]
  %i.mv = add nsw i32 %i.mj, -1
  %i.mw = icmp eq i32 %indvar, %i.mv
  br i1 %i.mw, label %.unr-lcssa363, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.1155 = phi ptr [ %i.nq, %.preheader ], [ %.1155.unr, %.preheader.prol.loopexit ] ; 5 uses
  %.1152 = phi i32 [ %i.np, %.preheader ], [ %.1152.unr, %.preheader.prol.loopexit ]
  %.1149 = phi i32 [ %i.nr, %.preheader ], [ %.1149.unr, %.preheader.prol.loopexit ]
  %i.mx = getelementptr inbounds nuw i8, ptr %.1155, i64 1
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !34
  %i.mz = load i8, ptr %.1155, align 1, !tbaa !32
  %i.na = zext i8 %i.mz to i64
  %i.nb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.na
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !41
  %i.nd = and i8 %i.nc, %i.my
  %i.ne = zext i8 %i.nd to i32
  %i.nf = add i32 %.1152, %i.ne
  %i.ng = getelementptr inbounds nuw i8, ptr %.1155, i64 6
  %i.nh = getelementptr inbounds nuw i8, ptr %.1155, i64 7
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !34
  %i.nj = load i8, ptr %i.ng, align 1, !tbaa !32
  %i.nk = zext i8 %i.nj to i64
  %i.nl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.nk
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !41
  %i.nn = and i8 %i.nm, %i.ni
  %i.no = zext i8 %i.nn to i32
  %i.np = add i32 %i.nf, %i.no                    ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.1155, i64 12
  %i.nr = add i32 %.1149, -2                      ; 2 uses
  %.not172.1 = icmp eq i32 %i.nr, 0
  br i1 %.not172.1, label %.unr-lcssa363, label %.preheader, !llvm.loop !58

.unr-lcssa363:                                    ; preds = %.preheader, %.preheader.prol.loopexit
  %.lcssa = phi i32 [ %.lcssa.unr, %.preheader.prol.loopexit ], [ %i.np, %.preheader ]
  %i.ns = getelementptr inbounds nuw i8, ptr %.0154, i64 1
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !34
  %i.nu = zext i8 %i.nt to i32
  %i.nv = load i32, ptr %i.b, align 4, !tbaa !4
  %i.nw = add i32 %i.nv, %.lcssa
  %i.nx = load i32, ptr %i.lh, align 8, !tbaa !12
  %i.ny = udiv i32 %i.nx, %i.nw                   ; 2 uses
  %i.nz = mul i32 %i.ny, %.0151
  %i.oa = zext i32 %i.nz to i64
  %i.ob = load i64, ptr %1, align 8, !tbaa !8
  %i.oc = add i64 %i.ob, %i.oa                    ; 2 uses
  store i64 %i.oc, ptr %1, align 8, !tbaa !8
  %i.od = mul i32 %i.ny, %i.nu                    ; 3 uses
  store i32 %i.od, ptr %i.lh, align 8, !tbaa !12
  %i.oe = icmp ult i32 %i.od, 16777216
  br i1 %i.oe, label %.lr.ph.i227, label %RangeEnc_Encode.exit239

.lr.ph.i227:                                      ; preds = %.unr-lcssa363, %RangeEnc_ShiftLow.exit.i235
  %i.of = phi i64 [ %i.pc, %RangeEnc_ShiftLow.exit.i235 ], [ %i.oc, %.unr-lcssa363 ] ; 3 uses
  %i.og = phi i32 [ %.pr.i236, %RangeEnc_ShiftLow.exit.i235 ], [ %i.od, %.unr-lcssa363 ]
  %i.oh = shl nuw i32 %i.og, 8                    ; 2 uses
  store i32 %i.oh, ptr %i.lh, align 8, !tbaa !12
  %i.oi = and i64 %i.of, -16777216
  %or.cond.i.i228 = icmp eq i64 %i.oi, 4278190080
  br i1 %or.cond.i.i228, label %._crit_edge.i.i237, label %.peel.begin.i.i229

._crit_edge.i.i237:                               ; preds = %.lr.ph.i227
  %.pre.i.i238 = load i64, ptr %i.lk, align 8, !tbaa !14
  %i.oj = add i64 %.pre.i.i238, 1
  br label %RangeEnc_ShiftLow.exit.i235

.peel.begin.i.i229:                               ; preds = %.lr.ph.i227
  %18 = lshr i64 %i.of, 32
  %19 = trunc i64 %18 to i8
  %i.ok = load i8, ptr %i.li, align 4, !tbaa !13
  %i.ol = load ptr, ptr %i.lj, align 8, !tbaa !15 ; 2 uses
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !16
  %i.on = add i8 %i.ok, %19
  call void %i.om(ptr noundef nonnull %i.ol, i8 noundef zeroext %i.on) #5, !inline_history !36
  %i.oo = load i64, ptr %i.lk, align 8, !tbaa !14
  %i.op = add i64 %i.oo, -1                       ; 2 uses
  store i64 %i.op, ptr %i.lk, align 8, !tbaa !14
  %.not13.peel.i.i230 = icmp eq i64 %i.op, 0
  br i1 %.not13.peel.i.i230, label %.loopexit.i.i233, label %.peel.next.i.i231

.peel.next.i.i231:                                ; preds = %.peel.begin.i.i229, %.peel.next.i.i231
  %i.oq = load ptr, ptr %i.lj, align 8, !tbaa !15 ; 2 uses
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !16
  %20 = load i32, ptr %.shift.i.i246, align 4, !tbaa !8
  %i.os = trunc i32 %20 to i8
  %i.ot = add i8 %i.os, -1
  call void %i.or(ptr noundef nonnull %i.oq, i8 noundef zeroext %i.ot) #5, !inline_history !36
  %i.ou = load i64, ptr %i.lk, align 8, !tbaa !14
  %i.ov = add i64 %i.ou, -1                       ; 2 uses
  store i64 %i.ov, ptr %i.lk, align 8, !tbaa !14
  %.not13.i.i232 = icmp eq i64 %i.ov, 0
  br i1 %.not13.i.i232, label %.loopexit.i.i233, label %.peel.next.i.i231, !llvm.loop !19

.loopexit.i.i233:                                 ; preds = %.peel.next.i.i231, %.peel.begin.i.i229
  %i.ow = load i64, ptr %1, align 8, !tbaa !8     ; 2 uses
  %i.ox = lshr i64 %i.ow, 24
  %i.oy = trunc i64 %i.ox to i8
  store i8 %i.oy, ptr %i.li, align 4, !tbaa !13
  %.pr.pre.i234 = load i32, ptr %i.lh, align 8, !tbaa !12
  br label %RangeEnc_ShiftLow.exit.i235

RangeEnc_ShiftLow.exit.i235:                      ; preds = %.loopexit.i.i233, %._crit_edge.i.i237
  %.pr.i236 = phi i32 [ %i.oh, %._crit_edge.i.i237 ], [ %.pr.pre.i234, %.loopexit.i.i233 ] ; 2 uses
  %i.oz = phi i64 [ %i.of, %._crit_edge.i.i237 ], [ %i.ow, %.loopexit.i.i233 ]
  %i.pa = phi i64 [ %i.oj, %._crit_edge.i.i237 ], [ 1, %.loopexit.i.i233 ]
  store i64 %i.pa, ptr %i.lk, align 8, !tbaa !14
  %i.pb = shl i64 %i.oz, 8
  %i.pc = and i64 %i.pb, 4294967040               ; 2 uses
  store i64 %i.pc, ptr %1, align 8, !tbaa !8
  %i.pd = icmp ult i32 %.pr.i236, 16777216
  br i1 %i.pd, label %.lr.ph.i227, label %RangeEnc_Encode.exit239, !llvm.loop !37

RangeEnc_Encode.exit239:                          ; preds = %RangeEnc_ShiftLow.exit.i235, %.unr-lcssa363
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ly, i64 2 ; 2 uses
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !59  ; 3 uses
  %i.pg = icmp ult i8 %i.pf, 7
  br i1 %i.pg, label %bb.w, label %bb.y

bb.w:                                             ; preds = %RangeEnc_Encode.exit239
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ly, i64 3 ; 3 uses
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !60
  %i.pj = add i8 %i.pi, -1                        ; 2 uses
  store i8 %i.pj, ptr %i.ph, align 1, !tbaa !60
  %i.pk = icmp eq i8 %i.pj, 0
  br i1 %i.pk, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.pl = load i16, ptr %i.ly, align 1, !tbaa !61
  %i.pm = shl i16 %i.pl, 1
  store i16 %i.pm, ptr %i.ly, align 1, !tbaa !61
  %i.pn = add nuw nsw i8 %i.pf, 1
  store i8 %i.pn, ptr %i.pe, align 1, !tbaa !59
  %i.po = zext nneg i8 %i.pf to i32
  %i.pp = shl nuw nsw i32 3, %i.po
  %i.pq = trunc nuw i32 %i.pp to i8
  store i8 %i.pq, ptr %i.ph, align 1, !tbaa !60
  br label %bb.y

.thread:                                          ; preds = %bb.v
  %i.pr = getelementptr inbounds nuw i8, ptr %.0154, i64 1
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !34
  %i.pt = zext i8 %i.mh to i64
  %i.pu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.pt ; 2 uses
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !41
  %i.pw = and i8 %i.pv, %i.ps
  %i.px = zext i8 %i.pw to i32
  %i.py = add i32 %.0151, %i.px                   ; 4 uses
  store i8 0, ptr %i.pu, align 1, !tbaa !41
  %i.pz = getelementptr inbounds nuw i8, ptr %.0154, i64 6
  %i.qa = add i32 %.0148, -1                      ; 2 uses
  %.not174 = icmp eq i32 %i.qa, 0
  %indvar.next = add i32 %indvar, 1
  br i1 %.not174, label %.critedge176, label %bb.v, !llvm.loop !62

bb.y:                                             ; preds = %RangeEnc_Encode.exit239, %bb.w, %bb.x
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.0154, ptr %i.qb, align 8, !tbaa !38
  call void @Ppmd7_Update2(ptr noundef nonnull %0) #5
  br label %bb.z

.critedge176:                                     ; preds = %.thread
  %i.qc = load i32, ptr %i.b, align 4, !tbaa !4   ; 3 uses
  %i.qd = add i32 %i.qc, %i.py
  %i.qe = load i32, ptr %i.lh, align 8, !tbaa !12
  %i.qf = udiv i32 %i.qe, %i.qd                   ; 2 uses
  %i.qg = mul i32 %i.qf, %i.py
  %i.qh = zext i32 %i.qg to i64
  %i.qi = load i64, ptr %1, align 8, !tbaa !8
  %i.qj = add i64 %i.qi, %i.qh                    ; 2 uses
  store i64 %i.qj, ptr %1, align 8, !tbaa !8
  %i.qk = mul i32 %i.qf, %i.qc                    ; 3 uses
  store i32 %i.qk, ptr %i.lh, align 8, !tbaa !12
  %i.ql = icmp ult i32 %i.qk, 16777216
  br i1 %i.ql, label %.lr.ph.i240, label %RangeEnc_Encode.exit252

.lr.ph.i240:                                      ; preds = %.critedge176, %RangeEnc_ShiftLow.exit.i248
  %i.qm = phi i64 [ %i.rj, %RangeEnc_ShiftLow.exit.i248 ], [ %i.qj, %.critedge176 ] ; 3 uses
  %i.qn = phi i32 [ %.pr.i249, %RangeEnc_ShiftLow.exit.i248 ], [ %i.qk, %.critedge176 ]
  %i.qo = shl nuw i32 %i.qn, 8                    ; 2 uses
  store i32 %i.qo, ptr %i.lh, align 8, !tbaa !12
  %i.qp = and i64 %i.qm, -16777216
  %or.cond.i.i241 = icmp eq i64 %i.qp, 4278190080
  br i1 %or.cond.i.i241, label %._crit_edge.i.i250, label %.peel.begin.i.i242

._crit_edge.i.i250:                               ; preds = %.lr.ph.i240
  %.pre.i.i251 = load i64, ptr %i.lk, align 8, !tbaa !14
  %i.qq = add i64 %.pre.i.i251, 1
  br label %RangeEnc_ShiftLow.exit.i248

.peel.begin.i.i242:                               ; preds = %.lr.ph.i240
  %21 = lshr i64 %i.qm, 32
  %22 = trunc i64 %21 to i8
  %i.qr = load i8, ptr %i.li, align 4, !tbaa !13
  %i.qs = load ptr, ptr %i.lj, align 8, !tbaa !15 ; 2 uses
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !16
  %i.qu = add i8 %i.qr, %22
  call void %i.qt(ptr noundef nonnull %i.qs, i8 noundef zeroext %i.qu) #5, !inline_history !36
  %i.qv = load i64, ptr %i.lk, align 8, !tbaa !14
  %i.qw = add i64 %i.qv, -1                       ; 2 uses
  store i64 %i.qw, ptr %i.lk, align 8, !tbaa !14
  %.not13.peel.i.i243 = icmp eq i64 %i.qw, 0
  br i1 %.not13.peel.i.i243, label %.loopexit.i.i246, label %.peel.next.i.i244

.peel.next.i.i244:                                ; preds = %.peel.begin.i.i242, %.peel.next.i.i244
  %i.qx = load ptr, ptr %i.lj, align 8, !tbaa !15 ; 2 uses
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !16
  %23 = load i32, ptr %.shift.i.i246, align 4, !tbaa !8
  %i.qz = trunc i32 %23 to i8
  %i.ra = add i8 %i.qz, -1
  call void %i.qy(ptr noundef nonnull %i.qx, i8 noundef zeroext %i.ra) #5, !inline_history !36
  %i.rb = load i64, ptr %i.lk, align 8, !tbaa !14
  %i.rc = add i64 %i.rb, -1                       ; 2 uses
  store i64 %i.rc, ptr %i.lk, align 8, !tbaa !14
  %.not13.i.i245 = icmp eq i64 %i.rc, 0
  br i1 %.not13.i.i245, label %.loopexit.i.i246, label %.peel.next.i.i244, !llvm.loop !19

.loopexit.i.i246:                                 ; preds = %.peel.next.i.i244, %.peel.begin.i.i242
  %i.rd = load i64, ptr %1, align 8, !tbaa !8     ; 2 uses
  %i.re = lshr i64 %i.rd, 24
  %i.rf = trunc i64 %i.re to i8
  store i8 %i.rf, ptr %i.li, align 4, !tbaa !13
  %.pr.pre.i247 = load i32, ptr %i.lh, align 8, !tbaa !12
  br label %RangeEnc_ShiftLow.exit.i248

RangeEnc_ShiftLow.exit.i248:                      ; preds = %.loopexit.i.i246, %._crit_edge.i.i250
  %.pr.i249 = phi i32 [ %i.qo, %._crit_edge.i.i250 ], [ %.pr.pre.i247, %.loopexit.i.i246 ] ; 2 uses
  %i.rg = phi i64 [ %i.qm, %._crit_edge.i.i250 ], [ %i.rd, %.loopexit.i.i246 ]
  %i.rh = phi i64 [ %i.qq, %._crit_edge.i.i250 ], [ 1, %.loopexit.i.i246 ]
  store i64 %i.rh, ptr %i.lk, align 8, !tbaa !14
  %i.ri = shl i64 %i.rg, 8
  %i.rj = and i64 %i.ri, 4294967040               ; 2 uses
  store i64 %i.rj, ptr %1, align 8, !tbaa !8
  %i.rk = icmp ult i32 %.pr.i249, 16777216
  br i1 %i.rk, label %.lr.ph.i240, label %RangeEnc_Encode.exit252.loopexit, !llvm.loop !37

RangeEnc_Encode.exit252.loopexit:                 ; preds = %RangeEnc_ShiftLow.exit.i248
  %.pre296 = load i32, ptr %i.b, align 4, !tbaa !4
  br label %RangeEnc_Encode.exit252

RangeEnc_Encode.exit252:                          ; preds = %RangeEnc_Encode.exit252.loopexit, %.critedge176
  %i.rl = phi i32 [ %.pre296, %RangeEnc_Encode.exit252.loopexit ], [ %i.qc, %.critedge176 ]
  %i.rm = load i16, ptr %i.ly, align 1, !tbaa !61
  %i.rn = zext i16 %i.rm to i32
  %i.ro = add i32 %i.py, %i.rn
  %i.rp = add i32 %i.ro, %i.rl
  %i.rq = trunc i32 %i.rp to i16
  store i16 %i.rq, ptr %i.ly, align 1, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  br label %bb.r

.loopexit:                                        ; preds = %bb.s
  store i32 %i.lq, ptr %i.lf, align 8, !tbaa !56
  br label %bb.z

bb.z:                                             ; preds = %.loopexit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  br label %.critedge

.critedge:                                        ; preds = %RangeEnc_Encode.exit, %RangeEnc_Encode.exit189, %bb.z, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

declare void @Ppmd7_Update1_0(ptr noundef) local_unnamed_addr #3

declare void @Ppmd7_Update1(ptr noundef) local_unnamed_addr #3

declare void @Ppmd7_UpdateBin(ptr noundef) local_unnamed_addr #3

declare ptr @Ppmd7_MakeEscFreq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @Ppmd7_Update2(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

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
!8 = !{!9, !10, i64 0}
!9 = !{!"", !10, i64 0, !5, i64 8, !6, i64 12, !10, i64 16, !11, i64 24}
!10 = !{!"long long", !6, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!9, !5, i64 8}
!13 = !{!9, !6, i64 12}
!14 = !{!9, !10, i64 16}
!15 = !{!9, !11, i64 24}
!16 = !{!17, !11, i64 0}
!17 = !{!"", !11, i64 0}
!18 = distinct !{null}
!19 = distinct !{!19, !20, !21}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"llvm.loop.peeled.count", i32 1}
!22 = !{!23, !24, i64 0}
!23 = !{!"", !24, i64 0, !24, i64 8, !11, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !25, i64 64, !25, i64 72, !25, i64 80, !25, i64 88, !25, i64 96, !5, i64 104, !6, i64 108, !6, i64 146, !6, i64 276, !6, i64 428, !6, i64 684, !6, i64 940, !26, i64 1196, !6, i64 1200, !6, i64 2800}
!24 = !{!"p1 _ZTS15CPpmd7_Context_", !11, i64 0}
!25 = !{!"p1 omnipotent char", !11, i64 0}
!26 = !{!"", !27, i64 0, !6, i64 2, !6, i64 3}
!27 = !{!"short", !6, i64 0}
!28 = !{!29, !27, i64 0}
!29 = !{!"CPpmd7_Context_", !27, i64 0, !27, i64 2, !5, i64 4, !5, i64 8}
!30 = !{!23, !25, i64 64}
!31 = !{!29, !5, i64 4}
!32 = !{!33, !6, i64 0}
!33 = !{!"", !6, i64 0, !6, i64 1, !27, i64 2, !27, i64 4}
!34 = !{!33, !6, i64 1}
!35 = !{!29, !27, i64 2}
!36 = distinct !{null, null}
!37 = distinct !{!37, !20}
!38 = !{!23, !11, i64 16}
!39 = !{!23, !5, i64 32}
!40 = distinct !{!40, !20}
!41 = !{!6, !6, i64 0}
!42 = !{!23, !5, i64 40}
!43 = !{!44, !44, i64 0}
!44 = !{!"long", !6, i64 0}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = distinct !{!47, !20}
!48 = !{!29, !5, i64 8}
!49 = !{!23, !5, i64 44}
!50 = !{!27, !27, i64 0}
!51 = distinct !{null, null}
!52 = distinct !{!52, !20}
!53 = distinct !{null, null}
!54 = distinct !{!54, !20}
!55 = !{!23, !5, i64 28}
!56 = !{!23, !5, i64 24}
!57 = distinct !{!57, !20}
!58 = distinct !{!58, !20}
!59 = !{!26, !6, i64 2}
!60 = !{!26, !6, i64 3}
!61 = !{!26, !27, i64 0}
!62 = distinct !{!62, !20}
end_hunk_0
