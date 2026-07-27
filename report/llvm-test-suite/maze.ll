inline.NumInlined: 70
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 33
begin_hunk_0_@Maze2Mech:bb.a
  %i.ja = getelementptr i8, ptr %i.iz, i64 1
  store i8 3, ptr %i.ja, align 1, !tbaa !15
  %i.jb = load i64, ptr @channelColumns, align 8, !tbaa !8
  %i.jc = mul i64 %i.jb, %5
  %i.jd = getelementptr i8, ptr %i.d, i64 %i.jc
  %i.je = getelementptr i8, ptr %i.jd, i64 %.05158.i141
  %i.jf = getelementptr i8, ptr %i.je, i64 2
  store i8 3, ptr %i.jf, align 1, !tbaa !15
  %i.jg = load i64, ptr @channelColumns, align 8, !tbaa !8
  %i.jh = mul i64 %i.jg, %5
  %i.ji = getelementptr i8, ptr %i.d, i64 %i.jh
  %i.jj = getelementptr i8, ptr %i.ji, i64 %.05158.i141
  %i.jk = getelementptr i8, ptr %i.jj, i64 3
  store i8 3, ptr %i.jk, align 1, !tbaa !15
  %.051.i142.3 = add nuw i64 %.05158.i141, 4      ; 2 uses
  %exitcond.not.i143.3 = icmp eq i64 %.051.i142.3, %i.ih
  br i1 %exitcond.not.i143.3, label %DrawSegment.exit151, label %.lr.ph.i140, !llvm.loop !20

.lr.ph62.i146.epil:                               ; preds = %.lr.ph62.i146
  %i.jl = load i64, ptr @channelColumns, align 8, !tbaa !8
  %i.jm = mul i64 %i.jl, %.0.i149.1
  %gep.i148.epil = getelementptr i8, ptr %invariant.gep.i144, i64 %i.jm ; 2 uses
  %i.jn = load i8, ptr %gep.i148.epil, align 1, !tbaa !15
  %i.jo = or i8 %i.jn, 12
  store i8 %i.jo, ptr %gep.i148.epil, align 1, !tbaa !15
  br label %DrawSegment.exit151

DrawSegment.exit151:                              ; preds = %.lr.ph.i140.prol.loopexit, %.lr.ph.i140, %.lr.ph62.i146.epil, %bb.o, %bb.p
  %.sink74.i138 = phi i64 [ %1, %bb.o ], [ %i.ih, %bb.p ], [ %1, %.lr.ph62.i146.epil ], [ %i.ih, %.lr.ph.i140 ], [ %i.ih, %.lr.ph.i140.prol.loopexit ]
  %.sink72.i139 = phi i8 [ 4, %bb.o ], [ 1, %bb.p ], [ 4, %.lr.ph62.i146.epil ], [ 1, %.lr.ph.i140 ], [ 1, %.lr.ph.i140.prol.loopexit ]
  %i.jp = load i64, ptr @channelColumns, align 8, !tbaa !8
  %i.jq = mul i64 %i.jp, %5
  %i.jr = getelementptr i8, ptr %i.d, i64 %i.jq
  %i.js = getelementptr i8, ptr %i.jr, i64 %.sink74.i138 ; 2 uses
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !15
  %i.ju = or i8 %i.jt, %.sink72.i139
  store i8 %i.ju, ptr %i.js, align 1, !tbaa !15
  br label %.loopexit

SegmentFree.exit.thread:                          ; preds = %SegmentFree.exit, %SegmentFree.exit84, %bb.i, %HasVCV.exit, %HasVCV.exit.thread
  %i.jv = add i64 %.066179, %i.a
  %.not231 = icmp eq i64 %.066179, %7
  br i1 %.not231, label %._crit_edge, label %bb.b, !llvm.loop !54

._crit_edge:                                      ; preds = %SegmentFree.exit.thread, %bb.e, %.preheader187
  %i.jw = add i64 %.067181, 1
  %.not = icmp eq i64 %.067181, %10
  br i1 %.not, label %.loopexit, label %.preheader, !llvm.loop !55

.loopexit:                                        ; preds = %._crit_edge, %bb.a, %.preheader.lr.ph, %DrawSegment.exit151
  %.068 = phi i32 [ 1, %DrawSegment.exit151 ], [ 0, %.preheader.lr.ph ], [ 0, %bb.a ], [ 0, %._crit_edge ]
  ret i32 %.068
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @FindFreeHorzSeg(i64 noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %.not17 = icmp eq i64 %0, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = load ptr, ptr @horzPlane, align 8, !tbaa !10
  %i.b = load i64, ptr @channelColumns, align 8, !tbaa !8
  %i.c = mul i64 %i.b, %1
  %i.d = getelementptr i8, ptr %i.a, i64 %i.c
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.018 = phi i64 [ %0, %.lr.ph ], [ %i.g, %bb.c ] ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 %.018
  %i.f = load i8, ptr %i.e, align 1, !tbaa !15
  %.not14 = icmp eq i8 %i.f, 0
  br i1 %.not14, label %bb.c, label %._crit_edge.loopexit

bb.c:                                             ; preds = %bb.b
  %i.g = add i64 %.018, -1                        ; 2 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !56

._crit_edge.loopexit:                             ; preds = %bb.b, %bb.c
  %.0.lcssa.ph = phi i64 [ 0, %bb.c ], [ %.018, %bb.b ]
  %i.h = add i64 %.0.lcssa.ph, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i64 [ 1, %bb.a ], [ %i.h, %._crit_edge.loopexit ]
  store i64 %.0.lcssa, ptr %2, align 8, !tbaa !8
  %i.i = load i64, ptr @channelColumns, align 8, !tbaa !8 ; 3 uses
  %.not1521 = icmp ugt i64 %0, %i.i
  br i1 %.not1521, label %._crit_edge25, label %.lr.ph24

.lr.ph24:                                         ; preds = %._crit_edge
  %i.j = load ptr, ptr @horzPlane, align 8, !tbaa !10
  %i.k = mul i64 %i.i, %1
  %i.l = getelementptr i8, ptr %i.j, i64 %i.k
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph24, %bb.e
  %.122 = phi i64 [ %0, %.lr.ph24 ], [ %i.o, %bb.e ] ; 3 uses
  %i.m = getelementptr i8, ptr %i.l, i64 %.122
  %i.n = load i8, ptr %i.m, align 1, !tbaa !15
  %.not16 = icmp eq i8 %i.n, 0
  br i1 %.not16, label %bb.e, label %._crit_edge25

bb.e:                                             ; preds = %bb.d
  %i.o = add i64 %.122, 1                         ; 3 uses
  %.not15 = icmp ugt i64 %i.o, %i.i
  br i1 %.not15, label %._crit_edge25, label %bb.d, !llvm.loop !57

._crit_edge25:                                    ; preds = %bb.e, %bb.d, %._crit_edge
  %.1.lcssa = phi i64 [ %0, %._crit_edge ], [ %.122, %bb.d ], [ %i.o, %bb.e ]
  %i.p = add i64 %.1.lcssa, -1
  store i64 %i.p, ptr %3, align 8, !tbaa !8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @Maze3() local_unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr @channelColumns, align 8, !tbaa !8 ; 2 uses
  %.not152 = icmp eq i64 %i.a, 0
  br i1 %.not152, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = load ptr, ptr @mazeRoute, align 8, !tbaa !10
  %i.c = load ptr, ptr @horzPlane, align 8        ; 50 uses
  %i.d = load ptr, ptr @vertPlane, align 8        ; 14 uses
  %i.e = load ptr, ptr @viaPlane, align 8         ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.bk
  %i.f = phi i64 [ %i.a, %.lr.ph ], [ %i.sy, %bb.bk ] ; 23 uses
  %.0154 = phi i64 [ 1, %.lr.ph ], [ %i.sz, %bb.bk ] ; 25 uses
  %.015153 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.bk ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0154 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !15
  %.not16 = icmp eq i8 %i.h, 0
  br i1 %.not16, label %bb.bk, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @netsAssign, align 8, !tbaa !23 ; 6 uses
  %i.j = load ptr, ptr @TOP, align 8, !tbaa !23   ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.0154
  %i.l = load i64, ptr %i.k, align 8, !tbaa !8    ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !8    ; 23 uses
  %i.o = load ptr, ptr @BOT, align 8, !tbaa !23   ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.0154
  %i.q = load i64, ptr %i.p, align 8, !tbaa !8    ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !8    ; 22 uses
  %i.t = load i64, ptr @channelTracks, align 8, !tbaa !8
  %i.u = add i64 %i.t, 1                          ; 2 uses
  %i.v = add i64 %i.n, -1                         ; 2 uses
  %.0107375.i = add i64 %i.s, 1                   ; 2 uses
  %i.w = icmp ult i64 %.0107375.i, %i.v
  br i1 %i.w, label %.lr.ph379.i, label %.loopexit68

.lr.ph379.i:                                      ; preds = %bb.c
  %.not17.i.i = icmp eq i64 %.0154, 0             ; 2 uses
  %i.x = add i64 %i.n, 1                          ; 2 uses
  %i.y = load ptr, ptr @FIRST, align 8            ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.l
  %i.aa = load ptr, ptr @LAST, align 8            ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.l
  %i.ac = mul i64 %i.n, %i.f                      ; 4 uses
  %i.ad = add i64 %i.s, -1                        ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.q
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.q
  %i.ag = mul i64 %i.s, %i.f                      ; 5 uses
  br label %bb.d

bb.d:                                             ; preds = %.loopexit354.i, %.lr.ph379.i
  %.0107377.i = phi i64 [ %.0107375.i, %.lr.ph379.i ], [ %.0107.i, %.loopexit354.i ] ; 20 uses
  %.0107.in376.i = phi i64 [ %i.s, %.lr.ph379.i ], [ %.0107377.i, %.loopexit354.i ] ; 5 uses
  %.pre273 = mul i64 %.0107377.i, %i.f            ; 3 uses
  br i1 %.not17.i.i, label %.lr.ph24.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.ah = getelementptr i8, ptr %i.c, i64 %.pre273
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i
  %.018.i.i = phi i64 [ %.0154, %.lr.ph.i.i ], [ %i.ak, %bb.f ] ; 3 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 %.018.i.i
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !15
  %.not14.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not14.i.i, label %bb.f, label %._crit_edge.loopexit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ak = add i64 %.018.i.i, -1                   ; 2 uses
  %.not.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %bb.e, !llvm.loop !56

._crit_edge.loopexit.i.i:                         ; preds = %bb.f, %bb.e
  %.0.lcssa.ph.i.i = phi i64 [ 0, %bb.f ], [ %.018.i.i, %bb.e ]
  %i.al = add i64 %.0.lcssa.ph.i.i, 1
  br label %.lr.ph24.i.i

.lr.ph24.i.i:                                     ; preds = %bb.d, %._crit_edge.loopexit.i.i
  %.0.lcssa.i.i = phi i64 [ %i.al, %._crit_edge.loopexit.i.i ], [ 1, %bb.d ] ; 2 uses
  %i.am = getelementptr i8, ptr %i.c, i64 %.pre273
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph24.i.i
  %.122.i.i = phi i64 [ %.0154, %.lr.ph24.i.i ], [ %i.ap, %bb.h ] ; 3 uses
  %i.an = getelementptr i8, ptr %i.am, i64 %.122.i.i
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !15
  %.not16.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not16.i.i, label %bb.h, label %FindFreeHorzSeg.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ap = add i64 %.122.i.i, 1                    ; 3 uses
  %.not15.i.i = icmp ugt i64 %i.ap, %i.f
  br i1 %.not15.i.i, label %FindFreeHorzSeg.exit.i, label %bb.g, !llvm.loop !57

FindFreeHorzSeg.exit.i:                           ; preds = %bb.h, %bb.g
  %.1.lcssa.i.i = phi i64 [ %.122.i.i, %bb.g ], [ %i.ap, %bb.h ]
  %i.aq = add i64 %.1.lcssa.i.i, -1               ; 2 uses
  %.not.i = icmp ugt i64 %i.aq, %.0.lcssa.i.i
  br i1 %.not.i, label %bb.i, label %.loopexit354.i

bb.i:                                             ; preds = %FindFreeHorzSeg.exit.i
  %i.ar = add i64 %.0107.in376.i, 2               ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.n
  br i1 %i.as, label %.lr.ph.i, label %.loopexit354.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.at = tail call i64 @llvm.umin.i64(i64 %.0107377.i, i64 %i.x) ; 2 uses
  %i.au = mul i64 %i.at, %i.f
  %i.av = tail call i64 @llvm.umax.i64(i64 %.0107377.i, i64 %i.x)
  br label %bb.j

bb.j:                                             ; preds = %.loopexit353.i, %.lr.ph.i
  %.0105371.i = phi i64 [ %i.ar, %.lr.ph.i ], [ %i.sk, %.loopexit353.i ] ; 18 uses
  %.pre274 = mul i64 %.0105371.i, %i.f            ; 3 uses
  br i1 %.not17.i.i, label %.lr.ph24.i139.i, label %.lr.ph.i131.i

.lr.ph.i131.i:                                    ; preds = %bb.j
  %i.aw = getelementptr i8, ptr %i.c, i64 %.pre274
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i131.i
  %.018.i132.i = phi i64 [ %.0154, %.lr.ph.i131.i ], [ %i.az, %bb.l ] ; 3 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 %.018.i132.i
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !15
  %.not14.i133.i = icmp eq i8 %i.ay, 0
  br i1 %.not14.i133.i, label %bb.l, label %._crit_edge.loopexit.i134.i

bb.l:                                             ; preds = %bb.k
  %i.az = add i64 %.018.i132.i, -1                ; 2 uses
  %.not.i144.i = icmp eq i64 %i.az, 0
  br i1 %.not.i144.i, label %._crit_edge.loopexit.i134.i, label %bb.k, !llvm.loop !56

._crit_edge.loopexit.i134.i:                      ; preds = %bb.l, %bb.k
  %.0.lcssa.ph.i135.i = phi i64 [ 0, %bb.l ], [ %.018.i132.i, %bb.k ]
  %i.ba = add i64 %.0.lcssa.ph.i135.i, 1
  br label %.lr.ph24.i139.i

.lr.ph24.i139.i:                                  ; preds = %bb.j, %._crit_edge.loopexit.i134.i
  %.0.lcssa.i137.i = phi i64 [ %i.ba, %._crit_edge.loopexit.i134.i ], [ 1, %bb.j ] ; 2 uses
  %i.bb = getelementptr i8, ptr %i.c, i64 %.pre274
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph24.i139.i
  %.122.i140.i = phi i64 [ %.0154, %.lr.ph24.i139.i ], [ %i.be, %bb.n ] ; 3 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 %.122.i140.i
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !15
  %.not16.i141.i = icmp eq i8 %i.bd, 0
  br i1 %.not16.i141.i, label %bb.n, label %FindFreeHorzSeg.exit145.i

bb.n:                                             ; preds = %bb.m
  %i.be = add i64 %.122.i140.i, 1                 ; 3 uses
  %.not15.i143.i = icmp ugt i64 %i.be, %i.f
  br i1 %.not15.i143.i, label %FindFreeHorzSeg.exit145.i, label %bb.m, !llvm.loop !57

FindFreeHorzSeg.exit145.i:                        ; preds = %bb.n, %bb.m
  %.1.lcssa.i142.i = phi i64 [ %.122.i140.i, %bb.m ], [ %i.be, %bb.n ]
  %i.bf = add i64 %.1.lcssa.i142.i, -1            ; 2 uses
  %.not111.i.not = icmp ugt i64 %i.bf, %.0.lcssa.i137.i
  br i1 %.not111.i.not, label %.preheader351.lr.ph.i, label %.loopexit353.i

.preheader351.lr.ph.i:                            ; preds = %FindFreeHorzSeg.exit145.i
  %.not116.i = icmp eq i64 %.0107377.i, %.0105371.i
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %.0105371.i) ; 7 uses
  %i.bh = mul i64 %i.bg, %i.f
  %i.bi = add i64 %i.bh, %.0154
  %i.bj = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %.0105371.i) ; 6 uses
  %i.bk = tail call i64 @llvm.umin.i64(i64 %.0105371.i, i64 %i.ad) ; 2 uses
  %i.bl = mul i64 %i.bk, %i.f
  %i.bm = tail call i64 @llvm.umax.i64(i64 %.0105371.i, i64 %i.ad)
  br label %.preheader351.i

.preheader351.i:                                  ; preds = %._crit_edge.i, %.preheader351.lr.ph.i
  %.0106369.i = phi i64 [ %i.sj, %._crit_edge.i ], [ %.0.lcssa.i.i, %.preheader351.lr.ph.i ] ; 13 uses
  %.not114.i = icmp eq i64 %.0106369.i, %.0154
  %invariant.op.i = or i1 %.not116.i, %.not114.i
  %i.bn = tail call i64 @llvm.umin.i64(i64 %.0154, i64 %.0106369.i) ; 14 uses
  %i.bo = add i64 %i.bn, %.pre273
  %i.bp = tail call i64 @llvm.umax.i64(i64 %.0154, i64 %.0106369.i) ; 17 uses
  %i.bq = add i64 %.0106369.i, %i.au
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.0106369.i
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.0106369.i
  %i.bt = add i64 %i.bp, %i.ac                    ; 2 uses
  %i.bu = add i64 %i.bn, %i.ac                    ; 4 uses
  %invariant.op.fr.i = freeze i1 %invariant.op.i
  br i1 %invariant.op.fr.i, label %._crit_edge.i, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.preheader351.i, %SegmentFree.exit.thread.i
  %.0367.i = phi i64 [ %i.si, %SegmentFree.exit.thread.i ], [ %.0.lcssa.i137.i, %.preheader351.i ] ; 13 uses
  %.not115.i = icmp eq i64 %.0367.i, %.0154
  %.not117.i = icmp eq i64 %.0106369.i, %.0367.i
  %or.cond129.i = or i1 %.not117.i, %.not115.i
  br i1 %or.cond129.i, label %SegmentFree.exit.thread.i, label %.preheader401.i

.preheader401.i:                                  ; preds = %.lr.ph.split.i, %bb.o
  %.052.i.i = phi i64 [ %i.by, %bb.o ], [ %.0154, %.lr.ph.split.i ] ; 2 uses
  %.03851.i.i = phi i64 [ %i.bx, %bb.o ], [ 0, %.lr.ph.split.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 %.052.i.i
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !15
  %.not46.i.i = icmp eq i8 %i.bw, 0
  br i1 %.not46.i.i, label %bb.o, label %SegmentFree.exit.thread.i

bb.o:                                             ; preds = %.preheader401.i
  %i.bx = add i64 %.03851.i.i, 1                  ; 2 uses
  %i.by = add i64 %.052.i.i, %i.f
  %.not45.i.i = icmp ugt i64 %i.bx, %.0107377.i
  br i1 %.not45.i.i, label %.preheader399.i, label %.preheader401.i, !llvm.loop !21

.preheader399.i:                                  ; preds = %bb.o, %bb.p
  %.150.i.i = phi i64 [ %i.cc, %bb.p ], [ %i.bo, %bb.o ] ; 2 uses
  %.03949.i.i = phi i64 [ %i.cb, %bb.p ], [ %i.bn, %bb.o ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 %.150.i.i
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !15
  %.not44.i.i = icmp eq i8 %i.ca, 0
  br i1 %.not44.i.i, label %bb.p, label %SegmentFree.exit.thread.i

bb.p:                                             ; preds = %.preheader399.i
  %i.cb = add i64 %.03949.i.i, 1                  ; 2 uses
  %i.cc = add i64 %.150.i.i, 1
  %.not.i148.i = icmp ugt i64 %i.cb, %i.bp
  br i1 %.not.i148.i, label %SegmentFree.exit153.i, label %.preheader399.i, !llvm.loop !22

SegmentFree.exit153.i:                            ; preds = %bb.p, %bb.q
  %.052.i159.i = phi i64 [ %i.cg, %bb.q ], [ %i.bq, %bb.p ] ; 2 uses
  %.03851.i160.i = phi i64 [ %i.cf, %bb.q ], [ %i.at, %bb.p ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 %.052.i159.i
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !15
  %.not46.i161.i = icmp eq i8 %i.ce, 0
  br i1 %.not46.i161.i, label %bb.q, label %SegmentFree.exit.thread.i

bb.q:                                             ; preds = %SegmentFree.exit153.i
  %i.cf = add i64 %.03851.i160.i, 1               ; 2 uses
  %i.cg = add i64 %.052.i159.i, %i.f
  %.not45.i162.i = icmp ugt i64 %i.cf, %i.av
  br i1 %.not45.i162.i, label %SegmentFree.exit163.i, label %SegmentFree.exit153.i, !llvm.loop !21

SegmentFree.exit163.i:                            ; preds = %bb.q
  %i.ch = load i64, ptr %i.br, align 8, !tbaa !8  ; 3 uses
  %.not.i164.i = icmp eq i64 %i.ch, 0
  br i1 %.not.i164.i, label %HasVCV.exit.thread.i, label %bb.r

bb.r:                                             ; preds = %SegmentFree.exit163.i
  %i.ci = load i64, ptr %i.bs, align 8, !tbaa !8  ; 3 uses
  %.not7.i.i = icmp eq i64 %i.ci, 0
  %.not8.i.i = icmp eq i64 %i.ch, %i.ci
  %or.cond.i.i = or i1 %.not7.i.i, %.not8.i.i
  br i1 %or.cond.i.i, label %HasVCV.exit.thread.i, label %HasVCV.exit.i

HasVCV.exit.i:                                    ; preds = %bb.r
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ch
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !8
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ci
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !8
  %.not324.i = icmp ugt i64 %i.ck, %i.cm
  br i1 %.not324.i, label %SegmentFree.exit.thread.i, label %HasVCV.exit.thread.i

HasVCV.exit.thread.i:                             ; preds = %HasVCV.exit.i, %bb.r, %SegmentFree.exit163.i
  %i.cn = load i64, ptr %i.z, align 8, !tbaa !8   ; 2 uses
  %.not.i165.i = icmp ult i64 %i.bn, %i.cn
  %i.co = load i64, ptr %i.ab, align 8, !tbaa !8  ; 3 uses
  %i.cp = icmp ugt i64 %i.bp, %i.co               ; 2 uses
  br i1 %.not.i165.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %HasVCV.exit.thread.i
  br i1 %i.cp, label %bb.ae, label %ExtendOK.exit.i.preheader

bb.t:                                             ; preds = %HasVCV.exit.thread.i
  %i.cq = add i64 %i.cn, -1                       ; 3 uses
  %i.cr = icmp eq i64 %i.bn, %i.cq                ; 2 uses
  br i1 %i.cp, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %bb.t
  br i1 %i.cr, label %.preheader.i, label %.preheader335.i

.preheader.i:                                     ; preds = %bb.u, %bb.v
  %.052.i.i.i = phi i64 [ %i.cv, %bb.v ], [ %i.bu, %bb.u ] ; 2 uses
  %.03851.i.i.i = phi i64 [ %i.cu, %bb.v ], [ %i.n, %bb.u ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 %.052.i.i.i
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !15
  %.not46.i.i.i = icmp eq i8 %i.ct, 0
  br i1 %.not46.i.i.i, label %bb.v, label %SegmentFree.exit.thread.i

bb.v:                                             ; preds = %.preheader.i
  %i.cu = add i64 %.03851.i.i.i, 1                ; 2 uses
  %i.cv = add i64 %.052.i.i.i, %i.f
  %.not45.i.i.i = icmp ugt i64 %i.cu, %i.n
  br i1 %.not45.i.i.i, label %SegmentFree.exit.i.i, label %.preheader.i, !llvm.loop !21

.preheader335.i:                                  ; preds = %bb.u, %bb.w
  %.150.i.i.i = phi i64 [ %i.cz, %bb.w ], [ %i.bu, %bb.u ] ; 2 uses
  %.03949.i.i.i = phi i64 [ %i.cy, %bb.w ], [ %i.bn, %bb.u ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.c, i64 %.150.i.i.i
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !15
  %.not44.i.i.i = icmp eq i8 %i.cx, 0
  br i1 %.not44.i.i.i, label %bb.w, label %SegmentFree.exit.thread.i

bb.w:                                             ; preds = %.preheader335.i
  %i.cy = add i64 %.03949.i.i.i, 1                ; 2 uses
  %i.cz = add i64 %.150.i.i.i, 1
  %.not.i.i.i = icmp ugt i64 %i.cy, %i.cq
  br i1 %.not.i.i.i, label %SegmentFree.exit.i.i, label %.preheader335.i, !llvm.loop !22

SegmentFree.exit.i.i:                             ; preds = %bb.w, %bb.v
  %i.da = add i64 %i.co, 1                        ; 3 uses
  %i.db = icmp eq i64 %i.da, %i.bp
  br i1 %i.db, label %.preheader382.i, label %bb.y

.preheader382.i:                                  ; preds = %SegmentFree.exit.i.i, %bb.x
  %.052.i61.i.i = phi i64 [ %i.df, %bb.x ], [ %i.bt, %SegmentFree.exit.i.i ] ; 2 uses
  %.03851.i62.i.i = phi i64 [ %i.de, %bb.x ], [ %i.n, %SegmentFree.exit.i.i ]
  %i.dc = getelementptr inbounds nuw i8, ptr %i.c, i64 %.052.i61.i.i
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !15
  %.not46.i63.i.i = icmp eq i8 %i.dd, 0
  br i1 %.not46.i63.i.i, label %bb.x, label %SegmentFree.exit.thread.i

bb.x:                                             ; preds = %.preheader382.i
  %i.de = add i64 %.03851.i62.i.i, 1              ; 2 uses
  %i.df = add i64 %.052.i61.i.i, %i.f
  %.not45.i64.i.i = icmp ugt i64 %i.de, %i.n
  br i1 %.not45.i64.i.i, label %ExtendOK.exit.i.preheader, label %.preheader382.i, !llvm.loop !21

bb.y:                                             ; preds = %SegmentFree.exit.i.i
  %i.dg = tail call i64 @llvm.umin.i64(i64 %i.da, i64 %i.bp) ; 2 uses
  %i.dh = add i64 %i.dg, %i.ac
  %i.di = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.bp)
  br label %bb.z

bb.z:                                             ; preds = %bb.aa, %bb.y
  %.150.i56.i.i = phi i64 [ %i.dh, %bb.y ], [ %i.dm, %bb.aa ] ; 2 uses
  %.03949.i57.i.i = phi i64 [ %i.dg, %bb.y ], [ %i.dl, %bb.aa ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 %.150.i56.i.i
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !15
  %.not44.i58.i.i = icmp eq i8 %i.dk, 0
  br i1 %.not44.i58.i.i, label %bb.aa, label %SegmentFree.exit.thread.i

bb.aa:                                            ; preds = %bb.z
  %i.dl = add i64 %.03949.i57.i.i, 1              ; 2 uses
  %i.dm = add i64 %.150.i56.i.i, 1
  %.not.i60.i.i = icmp ugt i64 %i.dl, %i.di
  br i1 %.not.i60.i.i, label %ExtendOK.exit.i.preheader, label %bb.z, !llvm.loop !22

bb.ab:                                            ; preds = %bb.t
  br i1 %i.cr, label %.preheader338.i, label %.preheader341.i

.preheader338.i:                                  ; preds = %bb.ab, %bb.ac
  %.052.i71.i.i = phi i64 [ %i.dq, %bb.ac ], [ %i.bu, %bb.ab ] ; 2 uses
  %.03851.i72.i.i = phi i64 [ %i.dp, %bb.ac ], [ %i.n, %bb.ab ]
  %i.dn = getelementptr inbounds nuw i8, ptr %i.c, i64 %.052.i71.i.i
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !15
  %.not46.i73.i.i = icmp eq i8 %i.do, 0
  br i1 %.not46.i73.i.i, label %bb.ac, label %SegmentFree.exit.thread.i

bb.ac:                                            ; preds = %.preheader338.i
  %i.dp = add i64 %.03851.i72.i.i, 1              ; 2 uses
  %i.dq = add i64 %.052.i71.i.i, %i.f
  %.not45.i74.i.i = icmp ugt i64 %i.dp, %i.n
  br i1 %.not45.i74.i.i, label %ExtendOK.exit.i.preheader, label %.preheader338.i, !llvm.loop !21

.preheader341.i:                                  ; preds = %bb.ab, %bb.ad
  %.150.i66.i.i = phi i64 [ %i.du, %bb.ad ], [ %i.bu, %bb.ab ] ; 2 uses
end_hunk_0
