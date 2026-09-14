Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/maze?download=true
inline.NumInlined: 70
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 33
begin_hunk_0_@Maze2Mech:bb.a
bb.p:                                             ; preds = %DrawSegment.exit136
  %i.ic = tail call i64 @llvm.umin.i64(i64 %.066179, i64 %1) ; 4 uses
  %i.id = getelementptr i8, ptr %i.d, i64 %i.ho
  %i.ie = getelementptr i8, ptr %i.id, i64 %i.ic  ; 2 uses
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !19
  %i.ig = or i8 %i.if, 2
  store i8 %i.ig, ptr %i.ie, align 1, !tbaa !19
  %i.ih = tail call i64 @llvm.umax.i64(i64 %.066179, i64 %1) ; 7 uses
  %.05157.i137 = add i64 %i.ic, 1                 ; 3 uses
  %i.ii = icmp ult i64 %.05157.i137, %i.ih
  br i1 %i.ii, label %.lr.ph.i140.preheader, label %DrawSegment.exit151

.lr.ph.i140.preheader:                            ; preds = %bb.p
  %i.ij = xor i64 %i.ic, -1
  %i.ik = add i64 %i.ih, %i.ij
  %i.il = add i64 %i.ih, -2
  %i.im = sub i64 %i.il, %i.ic
  %xtraiter42 = and i64 %i.ik, 3                  ; 2 uses
  %lcmp.mod43.not = icmp eq i64 %xtraiter42, 0
  br i1 %lcmp.mod43.not, label %.lr.ph.i140.prol.loopexit, label %.lr.ph.i140.prol

.lr.ph.i140.prol:                                 ; preds = %.lr.ph.i140.preheader, %.lr.ph.i140.prol
  %.05158.i141.prol = phi i64 [ %.051.i142.prol, %.lr.ph.i140.prol ], [ %.05157.i137, %.lr.ph.i140.preheader ] ; 2 uses
  %prol.iter44 = phi i64 [ %prol.iter44.next, %.lr.ph.i140.prol ], [ 0, %.lr.ph.i140.preheader ]
  %i.in = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.io = mul i64 %i.in, %5
  %i.ip = getelementptr i8, ptr %i.d, i64 %i.io
  %i.iq = getelementptr i8, ptr %i.ip, i64 %.05158.i141.prol
  store i8 3, ptr %i.iq, align 1, !tbaa !19
  %.051.i142.prol = add nuw i64 %.05158.i141.prol, 1 ; 2 uses
  %prol.iter44.next = add i64 %prol.iter44, 1     ; 2 uses
  %prol.iter44.cmp.not = icmp eq i64 %prol.iter44.next, %xtraiter42
  br i1 %prol.iter44.cmp.not, label %.lr.ph.i140.prol.loopexit, label %.lr.ph.i140.prol, !llvm.loop !55

.lr.ph.i140.prol.loopexit:                        ; preds = %.lr.ph.i140.prol, %.lr.ph.i140.preheader
  %.05158.i141.unr = phi i64 [ %.05157.i137, %.lr.ph.i140.preheader ], [ %.051.i142.prol, %.lr.ph.i140.prol ]
  %i.ir = icmp ult i64 %i.im, 3
  br i1 %i.ir, label %DrawSegment.exit151, label %.lr.ph.i140

.lr.ph.i140:                                      ; preds = %.lr.ph.i140.prol.loopexit, %.lr.ph.i140
  %.05158.i141 = phi i64 [ %.051.i142.3, %.lr.ph.i140 ], [ %.05158.i141.unr, %.lr.ph.i140.prol.loopexit ] ; 5 uses
  %i.is = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.it = mul i64 %i.is, %5
  %i.iu = getelementptr i8, ptr %i.d, i64 %i.it
  %i.iv = getelementptr i8, ptr %i.iu, i64 %.05158.i141
  store i8 3, ptr %i.iv, align 1, !tbaa !19
  %i.iw = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.ix = mul i64 %i.iw, %5
  %i.iy = getelementptr i8, ptr %i.d, i64 %i.ix
  %i.iz = getelementptr i8, ptr %i.iy, i64 %.05158.i141
  %i.ja = getelementptr i8, ptr %i.iz, i64 1
  store i8 3, ptr %i.ja, align 1, !tbaa !19
  %i.jb = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.jc = mul i64 %i.jb, %5
  %i.jd = getelementptr i8, ptr %i.d, i64 %i.jc
  %i.je = getelementptr i8, ptr %i.jd, i64 %.05158.i141
  %i.jf = getelementptr i8, ptr %i.je, i64 2
  store i8 3, ptr %i.jf, align 1, !tbaa !19
  %i.jg = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.jh = mul i64 %i.jg, %5
  %i.ji = getelementptr i8, ptr %i.d, i64 %i.jh
  %i.jj = getelementptr i8, ptr %i.ji, i64 %.05158.i141
  %i.jk = getelementptr i8, ptr %i.jj, i64 3
  store i8 3, ptr %i.jk, align 1, !tbaa !19
  %.051.i142.3 = add nuw i64 %.05158.i141, 4      ; 2 uses
  %exitcond.not.i143.3 = icmp eq i64 %.051.i142.3, %i.ih
  br i1 %exitcond.not.i143.3, label %DrawSegment.exit151, label %.lr.ph.i140, !llvm.loop !1

.lr.ph62.i146.epil:                               ; preds = %.lr.ph62.i146
  %i.jl = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.jm = mul i64 %i.jl, %.0.i149.1
  %gep.i148.epil = getelementptr i8, ptr %invariant.gep.i144, i64 %i.jm ; 2 uses
  %i.jn = load i8, ptr %gep.i148.epil, align 1, !tbaa !19
  %i.jo = or i8 %i.jn, 12
  store i8 %i.jo, ptr %gep.i148.epil, align 1, !tbaa !19
  br label %DrawSegment.exit151

DrawSegment.exit151:                              ; preds = %.lr.ph.i140.prol.loopexit, %.lr.ph.i140, %.lr.ph62.i146.epil, %bb.o, %bb.p
  %.sink74.i138 = phi i64 [ %1, %bb.o ], [ %i.ih, %bb.p ], [ %1, %.lr.ph62.i146.epil ], [ %i.ih, %.lr.ph.i140 ], [ %i.ih, %.lr.ph.i140.prol.loopexit ]
  %.sink72.i139 = phi i8 [ 4, %bb.o ], [ 1, %bb.p ], [ 4, %.lr.ph62.i146.epil ], [ 1, %.lr.ph.i140 ], [ 1, %.lr.ph.i140.prol.loopexit ]
  %i.jp = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.jq = mul i64 %i.jp, %5
  %i.jr = getelementptr i8, ptr %i.d, i64 %i.jq
  %i.js = getelementptr i8, ptr %i.jr, i64 %.sink74.i138 ; 2 uses
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !19
  %i.ju = or i8 %i.jt, %.sink72.i139
  store i8 %i.ju, ptr %i.js, align 1, !tbaa !19
  br label %.loopexit

SegmentFree.exit.thread:                          ; preds = %SegmentFree.exit, %SegmentFree.exit84, %bb.i, %HasVCV.exit, %HasVCV.exit.thread
  %i.jv = add i64 %.066179, %i.a
  %.not231 = icmp eq i64 %.066179, %7
  br i1 %.not231, label %._crit_edge, label %bb.b, !llvm.loop !56

._crit_edge:                                      ; preds = %SegmentFree.exit.thread, %bb.e, %.preheader187
  %i.jw = add i64 %.067181, 1
  %.not = icmp eq i64 %.067181, %10
  br i1 %.not, label %.loopexit, label %.preheader, !llvm.loop !57

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
  %i.a = load ptr, ptr @horzPlane, align 8, !tbaa !18
  %i.b = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.c = mul i64 %i.b, %1
  %i.d = getelementptr i8, ptr %i.a, i64 %i.c
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.018 = phi i64 [ %0, %.lr.ph ], [ %i.g, %bb.c ] ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 %.018
  %i.f = load i8, ptr %i.e, align 1, !tbaa !19
  %.not14 = icmp eq i8 %i.f, 0
  br i1 %.not14, label %bb.c, label %._crit_edge.loopexit

bb.c:                                             ; preds = %bb.b
  %i.g = add i64 %.018, -1                        ; 2 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !4

._crit_edge.loopexit:                             ; preds = %bb.b, %bb.c
  %.0.lcssa.ph = phi i64 [ 0, %bb.c ], [ %.018, %bb.b ]
  %i.h = add i64 %.0.lcssa.ph, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i64 [ 1, %bb.a ], [ %i.h, %._crit_edge.loopexit ]
  store i64 %.0.lcssa, ptr %2, align 8, !tbaa !15
  %i.i = load i64, ptr @channelColumns, align 8, !tbaa !15 ; 3 uses
  %.not1521 = icmp ugt i64 %0, %i.i
  br i1 %.not1521, label %._crit_edge25, label %.lr.ph24

.lr.ph24:                                         ; preds = %._crit_edge
  %i.j = load ptr, ptr @horzPlane, align 8, !tbaa !18
  %i.k = mul i64 %i.i, %1
  %i.l = getelementptr i8, ptr %i.j, i64 %i.k
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph24, %bb.e
  %.122 = phi i64 [ %0, %.lr.ph24 ], [ %i.o, %bb.e ] ; 3 uses
  %i.m = getelementptr i8, ptr %i.l, i64 %.122
  %i.n = load i8, ptr %i.m, align 1, !tbaa !19
  %.not16 = icmp eq i8 %i.n, 0
  br i1 %.not16, label %bb.e, label %._crit_edge25

bb.e:                                             ; preds = %bb.d
  %i.o = add i64 %.122, 1                         ; 3 uses
  %.not15 = icmp ugt i64 %i.o, %i.i
  br i1 %.not15, label %._crit_edge25, label %bb.d, !llvm.loop !5

._crit_edge25:                                    ; preds = %bb.e, %bb.d, %._crit_edge
  %.1.lcssa = phi i64 [ %0, %._crit_edge ], [ %.122, %bb.d ], [ %i.o, %bb.e ]
  %i.p = add i64 %.1.lcssa, -1
  store i64 %i.p, ptr %3, align 8, !tbaa !15
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @Maze3() local_unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr @channelColumns, align 8, !tbaa !15 ; 2 uses
  %.not152 = icmp eq i64 %i.a, 0
  br i1 %.not152, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = load ptr, ptr @mazeRoute, align 8, !tbaa !18
  %i.c = load ptr, ptr @horzPlane, align 8        ; 50 uses
  %i.d = load ptr, ptr @vertPlane, align 8        ; 14 uses
  %i.e = load ptr, ptr @viaPlane, align 8         ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.bj
  %i.f = phi i64 [ %i.a, %.lr.ph ], [ %i.sw, %bb.bj ] ; 23 uses
  %.0154 = phi i64 [ 1, %.lr.ph ], [ %i.sx, %bb.bj ] ; 25 uses
  %.015153 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.bj ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0154 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !19
  %.not16 = icmp eq i8 %i.h, 0
  br i1 %.not16, label %bb.bj, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @netsAssign, align 8, !tbaa !23 ; 6 uses
  %i.j = load ptr, ptr @TOP, align 8, !tbaa !23   ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.0154
  %i.l = load i64, ptr %i.k, align 8, !tbaa !15   ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !15   ; 23 uses
  %i.o = load ptr, ptr @BOT, align 8, !tbaa !23   ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.0154
  %i.q = load i64, ptr %i.p, align 8, !tbaa !15   ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !15   ; 21 uses
  %i.t = load i64, ptr @channelTracks, align 8, !tbaa !15
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
  %.0107.in376.i = phi i64 [ %.0107375.i, %.lr.ph379.i ], [ %0, %.loopexit354.i ] ; 21 uses
  %.pre273 = mul i64 %.0107.in376.i, %i.f         ; 3 uses
  br i1 %.not17.i.i, label %.lr.ph24.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.ah = getelementptr i8, ptr %i.c, i64 %.pre273
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i
  %.018.i.i = phi i64 [ %.0154, %.lr.ph.i.i ], [ %i.ak, %bb.f ] ; 3 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 %.018.i.i
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !19
  %.not14.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not14.i.i, label %bb.f, label %._crit_edge.loopexit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ak = add i64 %.018.i.i, -1                   ; 2 uses
  %.not.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %bb.e, !llvm.loop !4

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
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !19
  %.not16.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not16.i.i, label %bb.h, label %FindFreeHorzSeg.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ap = add i64 %.122.i.i, 1                    ; 3 uses
  %.not15.i.i = icmp ugt i64 %i.ap, %i.f
  br i1 %.not15.i.i, label %FindFreeHorzSeg.exit.i, label %bb.g, !llvm.loop !5

FindFreeHorzSeg.exit.i:                           ; preds = %bb.h, %bb.g
  %.1.lcssa.i.i = phi i64 [ %.122.i.i, %bb.g ], [ %i.ap, %bb.h ]
  %i.aq = add i64 %.1.lcssa.i.i, -1               ; 2 uses
  %.not.i = icmp ugt i64 %i.aq, %.0.lcssa.i.i
  %0 = add i64 %.0107.in376.i, 1                  ; 4 uses
  %1 = icmp ult i64 %0, %i.n
  %or.cond = and i1 %.not.i, %1
  br i1 %or.cond, label %.lr.ph.i, label %.loopexit354.i

.lr.ph.i:                                         ; preds = %FindFreeHorzSeg.exit.i
  %i.ar = tail call i64 @llvm.umin.i64(i64 %.0107.in376.i, i64 %i.x) ; 2 uses
  %i.as = mul i64 %i.ar, %i.f
  %i.at = tail call i64 @llvm.umax.i64(i64 %.0107.in376.i, i64 %i.x)
  br label %bb.i

bb.i:                                             ; preds = %.loopexit353.i, %.lr.ph.i
  %.0105371.i = phi i64 [ %0, %.lr.ph.i ], [ %i.si, %.loopexit353.i ] ; 18 uses
  %.pre274 = mul i64 %.0105371.i, %i.f            ; 3 uses
  br i1 %.not17.i.i, label %.lr.ph24.i139.i, label %.lr.ph.i131.i

.lr.ph.i131.i:                                    ; preds = %bb.i
  %i.au = getelementptr i8, ptr %i.c, i64 %.pre274
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i131.i
  %.018.i132.i = phi i64 [ %.0154, %.lr.ph.i131.i ], [ %i.ax, %bb.k ] ; 3 uses
  %i.av = getelementptr i8, ptr %i.au, i64 %.018.i132.i
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !19
  %.not14.i133.i = icmp eq i8 %i.aw, 0
  br i1 %.not14.i133.i, label %bb.k, label %._crit_edge.loopexit.i134.i

bb.k:                                             ; preds = %bb.j
  %i.ax = add i64 %.018.i132.i, -1                ; 2 uses
  %.not.i144.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i144.i, label %._crit_edge.loopexit.i134.i, label %bb.j, !llvm.loop !4

._crit_edge.loopexit.i134.i:                      ; preds = %bb.k, %bb.j
  %.0.lcssa.ph.i135.i = phi i64 [ 0, %bb.k ], [ %.018.i132.i, %bb.j ]
  %i.ay = add i64 %.0.lcssa.ph.i135.i, 1
  br label %.lr.ph24.i139.i

.lr.ph24.i139.i:                                  ; preds = %bb.i, %._crit_edge.loopexit.i134.i
  %.0.lcssa.i137.i = phi i64 [ %i.ay, %._crit_edge.loopexit.i134.i ], [ 1, %bb.i ] ; 2 uses
  %i.az = getelementptr i8, ptr %i.c, i64 %.pre274
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph24.i139.i
  %.122.i140.i = phi i64 [ %.0154, %.lr.ph24.i139.i ], [ %i.bc, %bb.m ] ; 3 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 %.122.i140.i
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !19
  %.not16.i141.i = icmp eq i8 %i.bb, 0
  br i1 %.not16.i141.i, label %bb.m, label %FindFreeHorzSeg.exit145.i

bb.m:                                             ; preds = %bb.l
  %i.bc = add i64 %.122.i140.i, 1                 ; 3 uses
  %.not15.i143.i = icmp ugt i64 %i.bc, %i.f
  br i1 %.not15.i143.i, label %FindFreeHorzSeg.exit145.i, label %bb.l, !llvm.loop !5

FindFreeHorzSeg.exit145.i:                        ; preds = %bb.m, %bb.l
  %.1.lcssa.i142.i = phi i64 [ %.122.i140.i, %bb.l ], [ %i.bc, %bb.m ]
  %i.bd = add i64 %.1.lcssa.i142.i, -1            ; 2 uses
  %.not111.i.not = icmp ugt i64 %i.bd, %.0.lcssa.i137.i
  br i1 %.not111.i.not, label %.preheader351.lr.ph.i, label %.loopexit353.i

.preheader351.lr.ph.i:                            ; preds = %FindFreeHorzSeg.exit145.i
  %.not116.i = icmp eq i64 %.0107.in376.i, %.0105371.i
  %i.be = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %.0105371.i) ; 7 uses
  %i.bf = mul i64 %i.be, %i.f
  %i.bg = add i64 %i.bf, %.0154
  %i.bh = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %.0105371.i) ; 6 uses
  %i.bi = tail call i64 @llvm.umin.i64(i64 %.0105371.i, i64 %i.ad) ; 2 uses
  %i.bj = mul i64 %i.bi, %i.f
  %i.bk = tail call i64 @llvm.umax.i64(i64 %.0105371.i, i64 %i.ad)
  br label %.preheader351.i

.preheader351.i:                                  ; preds = %._crit_edge.i, %.preheader351.lr.ph.i
  %.0106369.i = phi i64 [ %i.sh, %._crit_edge.i ], [ %.0.lcssa.i.i, %.preheader351.lr.ph.i ] ; 13 uses
  %.not114.i = icmp eq i64 %.0106369.i, %.0154
  %invariant.op.i = or i1 %.not116.i, %.not114.i
  %i.bl = tail call i64 @llvm.umin.i64(i64 %.0154, i64 %.0106369.i) ; 14 uses
  %i.bm = add i64 %i.bl, %.pre273
  %i.bn = tail call i64 @llvm.umax.i64(i64 %.0154, i64 %.0106369.i) ; 17 uses
  %i.bo = add i64 %.0106369.i, %i.as
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.0106369.i
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.0106369.i
  %i.br = add i64 %i.bn, %i.ac                    ; 2 uses
  %i.bs = add i64 %i.bl, %i.ac                    ; 4 uses
  %invariant.op.fr.i = freeze i1 %invariant.op.i
  br i1 %invariant.op.fr.i, label %._crit_edge.i, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.preheader351.i, %SegmentFree.exit.thread.i
  %.0367.i = phi i64 [ %i.sg, %SegmentFree.exit.thread.i ], [ %.0.lcssa.i137.i, %.preheader351.i ] ; 13 uses
  %.not115.i = icmp eq i64 %.0367.i, %.0154
  %.not117.i = icmp eq i64 %.0106369.i, %.0367.i
  %or.cond129.i = or i1 %.not117.i, %.not115.i
  br i1 %or.cond129.i, label %SegmentFree.exit.thread.i, label %.preheader401.i

.preheader401.i:                                  ; preds = %.lr.ph.split.i, %bb.n
  %.052.i.i = phi i64 [ %i.bw, %bb.n ], [ %.0154, %.lr.ph.split.i ] ; 2 uses
  %.03851.i.i = phi i64 [ %i.bv, %bb.n ], [ 0, %.lr.ph.split.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 %.052.i.i
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !19
  %.not46.i.i = icmp eq i8 %i.bu, 0
  br i1 %.not46.i.i, label %bb.n, label %SegmentFree.exit.thread.i

bb.n:                                             ; preds = %.preheader401.i
  %i.bv = add i64 %.03851.i.i, 1                  ; 2 uses
  %i.bw = add i64 %.052.i.i, %i.f
  %.not45.i.i = icmp ugt i64 %i.bv, %.0107.in376.i
  br i1 %.not45.i.i, label %.preheader399.i, label %.preheader401.i, !llvm.loop !2

.preheader399.i:                                  ; preds = %bb.n, %bb.o
  %.150.i.i = phi i64 [ %i.ca, %bb.o ], [ %i.bm, %bb.n ] ; 2 uses
  %.03949.i.i = phi i64 [ %i.bz, %bb.o ], [ %i.bl, %bb.n ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 %.150.i.i
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !19
  %.not44.i.i = icmp eq i8 %i.by, 0
  br i1 %.not44.i.i, label %bb.o, label %SegmentFree.exit.thread.i

bb.o:                                             ; preds = %.preheader399.i
  %i.bz = add i64 %.03949.i.i, 1                  ; 2 uses
  %i.ca = add i64 %.150.i.i, 1
  %.not.i148.i = icmp ugt i64 %i.bz, %i.bn
  br i1 %.not.i148.i, label %SegmentFree.exit153.i, label %.preheader399.i, !llvm.loop !3

SegmentFree.exit153.i:                            ; preds = %bb.o, %bb.p
  %.052.i159.i = phi i64 [ %i.ce, %bb.p ], [ %i.bo, %bb.o ] ; 2 uses
  %.03851.i160.i = phi i64 [ %i.cd, %bb.p ], [ %i.ar, %bb.o ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 %.052.i159.i
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !19
  %.not46.i161.i = icmp eq i8 %i.cc, 0
  br i1 %.not46.i161.i, label %bb.p, label %SegmentFree.exit.thread.i

bb.p:                                             ; preds = %SegmentFree.exit153.i
  %i.cd = add i64 %.03851.i160.i, 1               ; 2 uses
  %i.ce = add i64 %.052.i159.i, %i.f
  %.not45.i162.i = icmp ugt i64 %i.cd, %i.at
  br i1 %.not45.i162.i, label %SegmentFree.exit163.i, label %SegmentFree.exit153.i, !llvm.loop !2

SegmentFree.exit163.i:                            ; preds = %bb.p
  %i.cf = load i64, ptr %i.bp, align 8, !tbaa !15 ; 3 uses
  %.not.i164.i = icmp eq i64 %i.cf, 0
  br i1 %.not.i164.i, label %HasVCV.exit.thread.i, label %bb.q

bb.q:                                             ; preds = %SegmentFree.exit163.i
  %i.cg = load i64, ptr %i.bq, align 8, !tbaa !15 ; 3 uses
  %.not7.i.i = icmp eq i64 %i.cg, 0
  %.not8.i.i = icmp eq i64 %i.cf, %i.cg
  %or.cond.i.i = or i1 %.not7.i.i, %.not8.i.i
  br i1 %or.cond.i.i, label %HasVCV.exit.thread.i, label %HasVCV.exit.i

HasVCV.exit.i:                                    ; preds = %bb.q
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.cf
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !15
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.cg
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !15
  %.not324.i = icmp ugt i64 %i.ci, %i.ck
  br i1 %.not324.i, label %SegmentFree.exit.thread.i, label %HasVCV.exit.thread.i

HasVCV.exit.thread.i:                             ; preds = %HasVCV.exit.i, %bb.q, %SegmentFree.exit163.i
  %i.cl = load i64, ptr %i.z, align 8, !tbaa !15  ; 2 uses
  %.not.i165.i = icmp ult i64 %i.bl, %i.cl
  %i.cm = load i64, ptr %i.ab, align 8, !tbaa !15 ; 3 uses
  %i.cn = icmp ugt i64 %i.bn, %i.cm               ; 2 uses
  br i1 %.not.i165.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %HasVCV.exit.thread.i
  br i1 %i.cn, label %bb.ad, label %ExtendOK.exit.i.preheader

bb.s:                                             ; preds = %HasVCV.exit.thread.i
  %i.co = add i64 %i.cl, -1                       ; 3 uses
  %i.cp = icmp eq i64 %i.bl, %i.co                ; 2 uses
  br i1 %i.cn, label %bb.t, label %bb.aa

bb.t:                                             ; preds = %bb.s
  br i1 %i.cp, label %.preheader.i, label %.preheader335.i

.preheader.i:                                     ; preds = %bb.t, %bb.u
  %.052.i.i.i = phi i64 [ %i.ct, %bb.u ], [ %i.bs, %bb.t ] ; 2 uses
  %.03851.i.i.i = phi i64 [ %i.cs, %bb.u ], [ %i.n, %bb.t ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 %.052.i.i.i
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !19
  %.not46.i.i.i = icmp eq i8 %i.cr, 0
  br i1 %.not46.i.i.i, label %bb.u, label %SegmentFree.exit.thread.i

bb.u:                                             ; preds = %.preheader.i
  %i.cs = add i64 %.03851.i.i.i, 1                ; 2 uses
  %i.ct = add i64 %.052.i.i.i, %i.f
  %.not45.i.i.i = icmp ugt i64 %i.cs, %i.n
  br i1 %.not45.i.i.i, label %SegmentFree.exit.i.i, label %.preheader.i, !llvm.loop !2

.preheader335.i:                                  ; preds = %bb.t, %bb.v
  %.150.i.i.i = phi i64 [ %i.cx, %bb.v ], [ %i.bs, %bb.t ] ; 2 uses
  %.03949.i.i.i = phi i64 [ %i.cw, %bb.v ], [ %i.bl, %bb.t ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 %.150.i.i.i
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !19
  %.not44.i.i.i = icmp eq i8 %i.cv, 0
  br i1 %.not44.i.i.i, label %bb.v, label %SegmentFree.exit.thread.i

bb.v:                                             ; preds = %.preheader335.i
  %i.cw = add i64 %.03949.i.i.i, 1                ; 2 uses
  %i.cx = add i64 %.150.i.i.i, 1
  %.not.i.i.i = icmp ugt i64 %i.cw, %i.co
  br i1 %.not.i.i.i, label %SegmentFree.exit.i.i, label %.preheader335.i, !llvm.loop !3

SegmentFree.exit.i.i:                             ; preds = %bb.v, %bb.u
  %i.cy = add i64 %i.cm, 1                        ; 3 uses
  %i.cz = icmp eq i64 %i.cy, %i.bn
  br i1 %i.cz, label %.preheader382.i, label %bb.x

.preheader382.i:                                  ; preds = %SegmentFree.exit.i.i, %bb.w
  %.052.i61.i.i = phi i64 [ %i.dd, %bb.w ], [ %i.br, %SegmentFree.exit.i.i ] ; 2 uses
  %.03851.i62.i.i = phi i64 [ %i.dc, %bb.w ], [ %i.n, %SegmentFree.exit.i.i ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.c, i64 %.052.i61.i.i
  %i.db = load i8, ptr %i.da, align 1, !tbaa !19
  %.not46.i63.i.i = icmp eq i8 %i.db, 0
  br i1 %.not46.i63.i.i, label %bb.w, label %SegmentFree.exit.thread.i

bb.w:                                             ; preds = %.preheader382.i
  %i.dc = add i64 %.03851.i62.i.i, 1              ; 2 uses
  %i.dd = add i64 %.052.i61.i.i, %i.f
  %.not45.i64.i.i = icmp ugt i64 %i.dc, %i.n
  br i1 %.not45.i64.i.i, label %ExtendOK.exit.i.preheader, label %.preheader382.i, !llvm.loop !2

bb.x:                                             ; preds = %SegmentFree.exit.i.i
  %i.de = tail call i64 @llvm.umin.i64(i64 %i.cy, i64 %i.bn) ; 2 uses
  %i.df = add i64 %i.de, %i.ac
  %i.dg = tail call i64 @llvm.umax.i64(i64 %i.cy, i64 %i.bn)
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %bb.x
  %.150.i56.i.i = phi i64 [ %i.df, %bb.x ], [ %i.dk, %bb.z ] ; 2 uses
  %.03949.i57.i.i = phi i64 [ %i.de, %bb.x ], [ %i.dj, %bb.z ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.c, i64 %.150.i56.i.i
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !19
  %.not44.i58.i.i = icmp eq i8 %i.di, 0
  br i1 %.not44.i58.i.i, label %bb.z, label %SegmentFree.exit.thread.i

bb.z:                                             ; preds = %bb.y
  %i.dj = add i64 %.03949.i57.i.i, 1              ; 2 uses
  %i.dk = add i64 %.150.i56.i.i, 1
  %.not.i60.i.i = icmp ugt i64 %i.dj, %i.dg
  br i1 %.not.i60.i.i, label %ExtendOK.exit.i.preheader, label %bb.y, !llvm.loop !3

bb.aa:                                            ; preds = %bb.s
  br i1 %i.cp, label %.preheader338.i, label %.preheader341.i

.preheader338.i:                                  ; preds = %bb.aa, %bb.ab
  %.052.i71.i.i = phi i64 [ %i.do, %bb.ab ], [ %i.bs, %bb.aa ] ; 2 uses
  %.03851.i72.i.i = phi i64 [ %i.dn, %bb.ab ], [ %i.n, %bb.aa ]
  %i.dl = getelementptr inbounds nuw i8, ptr %i.c, i64 %.052.i71.i.i
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !19
  %.not46.i73.i.i = icmp eq i8 %i.dm, 0
  br i1 %.not46.i73.i.i, label %bb.ab, label %SegmentFree.exit.thread.i

bb.ab:                                            ; preds = %.preheader338.i
  %i.dn = add i64 %.03851.i72.i.i, 1              ; 2 uses
  %i.do = add i64 %.052.i71.i.i, %i.f
  %.not45.i74.i.i = icmp ugt i64 %i.dn, %i.n
  br i1 %.not45.i74.i.i, label %ExtendOK.exit.i.preheader, label %.preheader338.i, !llvm.loop !2

.preheader341.i:                                  ; preds = %bb.aa, %bb.ac
  %.150.i66.i.i = phi i64 [ %i.ds, %bb.ac ], [ %i.bs, %bb.aa ] ; 2 uses
  %.03949.i67.i.i = phi i64 [ %i.dr, %bb.ac ], [ %i.bl, %bb.aa ]
  %i.dp = getelementptr inbounds nuw i8, ptr %i.c, i64 %.150.i66.i.i
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !19
  %.not44.i68.i.i = icmp eq i8 %i.dq, 0
  br i1 %.not44.i68.i.i, label %bb.ac, label %SegmentFree.exit.thread.i

bb.ac:                                            ; preds = %.preheader341.i
  %i.dr = add i64 %.03949.i67.i.i, 1              ; 2 uses
  %i.ds = add i64 %.150.i66.i.i, 1
  %.not.i70.i.i = icmp ugt i64 %i.dr, %i.co
  br i1 %.not.i70.i.i, label %ExtendOK.exit.i.preheader, label %.preheader341.i, !llvm.loop !3

bb.ad:                                            ; preds = %bb.r
  %i.dt = add nuw i64 %i.cm, 1                    ; 3 uses
  %i.du = icmp eq i64 %i.dt, %i.bn
  br i1 %i.du, label %.preheader393.i, label %bb.af

.preheader393.i:                                  ; preds = %bb.ad, %bb.ae
  %.052.i81.i.i = phi i64 [ %i.dy, %bb.ae ], [ %i.br, %bb.ad ] ; 2 uses
  %.03851.i82.i.i = phi i64 [ %i.dx, %bb.ae ], [ %i.n, %bb.ad ]
  %i.dv = getelementptr inbounds nuw i8, ptr %i.c, i64 %.052.i81.i.i
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !19
  %.not46.i83.i.i = icmp eq i8 %i.dw, 0
  br i1 %.not46.i83.i.i, label %bb.ae, label %SegmentFree.exit.thread.i

bb.ae:                                            ; preds = %.preheader393.i
  %i.dx = add i64 %.03851.i82.i.i, 1              ; 2 uses
  %i.dy = add i64 %.052.i81.i.i, %i.f
  %.not45.i84.i.i = icmp ugt i64 %i.dx, %i.n
  br i1 %.not45.i84.i.i, label %ExtendOK.exit.i.preheader, label %.preheader393.i, !llvm.loop !2

bb.af:                                            ; preds = %bb.ad
  %i.dz = add i64 %i.dt, %i.ac
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ah, %bb.af
  %.150.i76.i.i = phi i64 [ %i.dz, %bb.af ], [ %i.ed, %bb.ah ] ; 2 uses
  %.03949.i77.i.i = phi i64 [ %i.dt, %bb.af ], [ %i.ec, %bb.ah ]
  %i.ea = getelementptr inbounds nuw i8, ptr %i.c, i64 %.150.i76.i.i
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !19
  %.not44.i78.i.i = icmp eq i8 %i.eb, 0
  br i1 %.not44.i78.i.i, label %bb.ah, label %SegmentFree.exit.thread.i

bb.ah:                                            ; preds = %bb.ag
  %i.ec = add i64 %.03949.i77.i.i, 1              ; 2 uses
  %i.ed = add i64 %.150.i76.i.i, 1
end_hunk_0
begin_hunk_1_@Maze3:bb.a

bb.al:                                            ; preds = %bb.am, %SegmentFree.exit185.i
  %.052.i191.i = phi i64 [ %i.ep, %SegmentFree.exit185.i ], [ %i.et, %bb.am ] ; 2 uses
  %.03851.i192.i = phi i64 [ %i.bi, %SegmentFree.exit185.i ], [ %i.es, %bb.am ]
  %i.eq = getelementptr inbounds nuw i8, ptr %i.d, i64 %.052.i191.i
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !19
  %.not46.i193.i = icmp eq i8 %i.er, 0
  br i1 %.not46.i193.i, label %bb.am, label %SegmentFree.exit.thread.i

bb.am:                                            ; preds = %bb.al
  %i.es = add i64 %.03851.i192.i, 1               ; 2 uses
  %i.et = add i64 %.052.i191.i, %i.f
  %.not45.i194.i = icmp ugt i64 %i.es, %i.bk
  br i1 %.not45.i194.i, label %SegmentFree.exit195.i, label %bb.al, !llvm.loop !2

SegmentFree.exit195.i:                            ; preds = %bb.am
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.0367.i
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !15 ; 3 uses
  %.not.i196.i = icmp eq i64 %i.ev, 0
  br i1 %.not.i196.i, label %HasVCV.exit200.thread.i, label %bb.an

bb.an:                                            ; preds = %SegmentFree.exit195.i
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.0367.i
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !15 ; 3 uses
  %.not7.i197.i = icmp eq i64 %i.ex, 0
  %.not8.i198.i = icmp eq i64 %i.ev, %i.ex
  %or.cond.i199.i = or i1 %.not7.i197.i, %.not8.i198.i
  br i1 %or.cond.i199.i, label %HasVCV.exit200.thread.i, label %HasVCV.exit200.i

HasVCV.exit200.i:                                 ; preds = %bb.an
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ev
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !15
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ex
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !15
  %.not325.i = icmp ugt i64 %i.ez, %i.fb
  br i1 %.not325.i, label %SegmentFree.exit.thread.i, label %HasVCV.exit200.thread.i

HasVCV.exit200.thread.i:                          ; preds = %HasVCV.exit200.i, %bb.an, %SegmentFree.exit195.i
  %i.fc = load i64, ptr %i.ae, align 8, !tbaa !15 ; 2 uses
  %.not.i18 = icmp ult i64 %i.ei, %i.fc
  %i.fd = load i64, ptr %i.af, align 8, !tbaa !15 ; 3 uses
  %i.fe = icmp ugt i64 %i.ek, %i.fd               ; 2 uses
  br i1 %.not.i18, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %HasVCV.exit200.thread.i
  br i1 %i.fe, label %bb.bc, label %ExtendOK.exit

bb.ap:                                            ; preds = %HasVCV.exit200.thread.i
  %i.ff = add i64 %i.fc, -1                       ; 3 uses
  %i.fg = icmp eq i64 %i.ei, %i.ff                ; 2 uses
  %i.fh = add i64 %i.ei, %i.ag                    ; 4 uses
  br i1 %i.fe, label %bb.aq, label %bb.az

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.fg, label %.preheader, label %.preheader34

.preheader:                                       ; preds = %bb.aq, %bb.ar
  %.052.i.i23 = phi i64 [ %i.fl, %bb.ar ], [ %i.fh, %bb.aq ] ; 2 uses
  %.03851.i.i24 = phi i64 [ %i.fk, %bb.ar ], [ %i.s, %bb.aq ]
  %i.fi = getelementptr inbounds nuw i8, ptr %i.c, i64 %.052.i.i23
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !19
  %.not46.i.i25 = icmp eq i8 %i.fj, 0
  br i1 %.not46.i.i25, label %bb.ar, label %SegmentFree.exit.thread.i

bb.ar:                                            ; preds = %.preheader
  %i.fk = add i64 %.03851.i.i24, 1                ; 2 uses
  %i.fl = add i64 %.052.i.i23, %i.f
  %.not45.i.i26 = icmp ugt i64 %i.fk, %i.s
  br i1 %.not45.i.i26, label %SegmentFree.exit.i, label %.preheader, !llvm.loop !2

.preheader34:                                     ; preds = %bb.aq, %bb.as
  %.150.i.i19 = phi i64 [ %i.fp, %bb.as ], [ %i.fh, %bb.aq ] ; 2 uses
  %.03949.i.i20 = phi i64 [ %i.fo, %bb.as ], [ %i.ei, %bb.aq ]
  %i.fm = getelementptr inbounds nuw i8, ptr %i.c, i64 %.150.i.i19
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !19
  %.not44.i.i21 = icmp eq i8 %i.fn, 0
  br i1 %.not44.i.i21, label %bb.as, label %SegmentFree.exit.thread.i

bb.as:                                            ; preds = %.preheader34
  %i.fo = add i64 %.03949.i.i20, 1                ; 2 uses
  %i.fp = add i64 %.150.i.i19, 1
  %.not.i.i22 = icmp ugt i64 %i.fo, %i.ff
  br i1 %.not.i.i22, label %SegmentFree.exit.i, label %.preheader34, !llvm.loop !3

SegmentFree.exit.i:                               ; preds = %bb.as, %bb.ar
  %i.fq = add i64 %i.fd, 1                        ; 3 uses
  %i.fr = icmp eq i64 %i.fq, %i.ek
  br i1 %i.fr, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %SegmentFree.exit.i
  %i.fs = add i64 %i.ek, %i.ag
  br label %bb.au

bb.au:                                            ; preds = %bb.av, %bb.at
  %.052.i61.i = phi i64 [ %i.fs, %bb.at ], [ %i.fw, %bb.av ] ; 2 uses
  %.03851.i62.i = phi i64 [ %i.s, %bb.at ], [ %i.fv, %bb.av ]
  %i.ft = getelementptr inbounds nuw i8, ptr %i.c, i64 %.052.i61.i
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !19
  %.not46.i63.i = icmp eq i8 %i.fu, 0
  br i1 %.not46.i63.i, label %bb.av, label %SegmentFree.exit.thread.i

bb.av:                                            ; preds = %bb.au
  %i.fv = add i64 %.03851.i62.i, 1                ; 2 uses
  %i.fw = add i64 %.052.i61.i, %i.f
  %.not45.i64.i = icmp ugt i64 %i.fv, %i.s
  br i1 %.not45.i64.i, label %ExtendOK.exit, label %bb.au, !llvm.loop !2

bb.aw:                                            ; preds = %SegmentFree.exit.i
  %i.fx = tail call i64 @llvm.umin.i64(i64 %i.fq, i64 %i.ek) ; 2 uses
  %i.fy = add i64 %i.fx, %i.ag
  %i.fz = tail call i64 @llvm.umax.i64(i64 %i.fq, i64 %i.ek)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ay, %bb.aw
  %.150.i56.i = phi i64 [ %i.fy, %bb.aw ], [ %i.gd, %bb.ay ] ; 2 uses
  %.03949.i57.i = phi i64 [ %i.fx, %bb.aw ], [ %i.gc, %bb.ay ]
  %i.ga = getelementptr inbounds nuw i8, ptr %i.c, i64 %.150.i56.i
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !19
  %.not44.i58.i = icmp eq i8 %i.gb, 0
  br i1 %.not44.i58.i, label %bb.ay, label %SegmentFree.exit.thread.i

bb.ay:                                            ; preds = %bb.ax
  %i.gc = add i64 %.03949.i57.i, 1                ; 2 uses
  %i.gd = add i64 %.150.i56.i, 1
  %.not.i60.i = icmp ugt i64 %i.gc, %i.fz
  br i1 %.not.i60.i, label %ExtendOK.exit, label %bb.ax, !llvm.loop !3

bb.az:                                            ; preds = %bb.ap
  br i1 %i.fg, label %.preheader37, label %.preheader40

.preheader37:                                     ; preds = %bb.az, %bb.ba
  %.052.i71.i = phi i64 [ %i.gh, %bb.ba ], [ %i.fh, %bb.az ] ; 2 uses
  %.03851.i72.i = phi i64 [ %i.gg, %bb.ba ], [ %i.s, %bb.az ]
  %i.ge = getelementptr inbounds nuw i8, ptr %i.c, i64 %.052.i71.i
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !19
  %.not46.i73.i = icmp eq i8 %i.gf, 0
  br i1 %.not46.i73.i, label %bb.ba, label %SegmentFree.exit.thread.i

bb.ba:                                            ; preds = %.preheader37
  %i.gg = add i64 %.03851.i72.i, 1                ; 2 uses
  %i.gh = add i64 %.052.i71.i, %i.f
  %.not45.i74.i = icmp ugt i64 %i.gg, %i.s
  br i1 %.not45.i74.i, label %ExtendOK.exit, label %.preheader37, !llvm.loop !2

.preheader40:                                     ; preds = %bb.az, %bb.bb
  %.150.i66.i = phi i64 [ %i.gl, %bb.bb ], [ %i.fh, %bb.az ] ; 2 uses
  %.03949.i67.i = phi i64 [ %i.gk, %bb.bb ], [ %i.ei, %bb.az ]
  %i.gi = getelementptr inbounds nuw i8, ptr %i.c, i64 %.150.i66.i
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !19
  %.not44.i68.i = icmp eq i8 %i.gj, 0
  br i1 %.not44.i68.i, label %bb.bb, label %SegmentFree.exit.thread.i

bb.bb:                                            ; preds = %.preheader40
  %i.gk = add i64 %.03949.i67.i, 1                ; 2 uses
  %i.gl = add i64 %.150.i66.i, 1
  %.not.i70.i = icmp ugt i64 %i.gk, %i.ff
  br i1 %.not.i70.i, label %ExtendOK.exit, label %.preheader40, !llvm.loop !3

bb.bc:                                            ; preds = %bb.ao
  %i.gm = add nuw i64 %i.fd, 1                    ; 3 uses
  %i.gn = icmp eq i64 %i.gm, %i.ek
  br i1 %i.gn, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %i.go = add i64 %i.ek, %i.ag
  br label %bb.be

bb.be:                                            ; preds = %bb.bf, %bb.bd
  %.052.i81.i = phi i64 [ %i.go, %bb.bd ], [ %i.gs, %bb.bf ] ; 2 uses
  %.03851.i82.i = phi i64 [ %i.s, %bb.bd ], [ %i.gr, %bb.bf ]
  %i.gp = getelementptr inbounds nuw i8, ptr %i.c, i64 %.052.i81.i
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !19
  %.not46.i83.i = icmp eq i8 %i.gq, 0
  br i1 %.not46.i83.i, label %bb.bf, label %SegmentFree.exit.thread.i

bb.bf:                                            ; preds = %bb.be
  %i.gr = add i64 %.03851.i82.i, 1                ; 2 uses
  %i.gs = add i64 %.052.i81.i, %i.f
  %.not45.i84.i = icmp ugt i64 %i.gr, %i.s
  br i1 %.not45.i84.i, label %ExtendOK.exit, label %bb.be, !llvm.loop !2

bb.bg:                                            ; preds = %bb.bc
  %i.gt = add i64 %i.gm, %i.ag
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bi, %bb.bg
  %.150.i76.i = phi i64 [ %i.gt, %bb.bg ], [ %i.gx, %bb.bi ] ; 2 uses
  %.03949.i77.i = phi i64 [ %i.gm, %bb.bg ], [ %i.gw, %bb.bi ]
  %i.gu = getelementptr inbounds nuw i8, ptr %i.c, i64 %.150.i76.i
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !19
  %.not44.i78.i = icmp eq i8 %i.gv, 0
  br i1 %.not44.i78.i, label %bb.bi, label %SegmentFree.exit.thread.i

bb.bi:                                            ; preds = %bb.bh
  %i.gw = add i64 %.03949.i77.i, 1                ; 2 uses
  %i.gx = add i64 %.150.i76.i, 1
  %.not.i80.i = icmp ugt i64 %i.gw, %i.ek
  br i1 %.not.i80.i, label %ExtendOK.exit, label %bb.bh, !llvm.loop !3

ExtendOK.exit:                                    ; preds = %bb.ao, %bb.bi, %bb.bf, %bb.bb, %bb.ba, %bb.ay, %bb.av
  %.0107.in376414.le.i = add i64 %.0107.in376.i, -1 ; 3 uses
  %i.gy = getelementptr i8, ptr %i.d, i64 %.0154  ; 8 uses
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !19
  %i.ha = or i8 %i.gz, 8
  store i8 %i.ha, ptr %i.gy, align 1, !tbaa !19
  %i.hb = icmp ugt i64 %.0107.in376.i, 1
  br i1 %i.hb, label %.lr.ph62.i.i.preheader, label %.loopexit328.i

.lr.ph62.i.i.preheader:                           ; preds = %ExtendOK.exit
  %xtraiter = and i64 %.0107.in376414.le.i, 1
  %i.hc = icmp eq i64 %.0107.in376.i, 2
  br i1 %i.hc, label %.lr.ph62.i.i.epil.preheader, label %.lr.ph62.i.i.preheader.new

.lr.ph62.i.i.preheader.new:                       ; preds = %.lr.ph62.i.i.preheader
  %unroll_iter = and i64 %.0107.in376414.le.i, -2
  br label %.lr.ph62.i.i

.lr.ph62.i.i:                                     ; preds = %.lr.ph62.i.i, %.lr.ph62.i.i.preheader.new
  %.060.i.i = phi i64 [ 1, %.lr.ph62.i.i.preheader.new ], [ %.0.i202.i.1, %.lr.ph62.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph62.i.i.preheader.new ], [ %niter.next.1, %.lr.ph62.i.i ]
  %i.hd = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.he = mul i64 %i.hd, %.060.i.i
  %gep.i.i = getelementptr i8, ptr %i.gy, i64 %i.he ; 2 uses
  %i.hf = load i8, ptr %gep.i.i, align 1, !tbaa !19
  %i.hg = or i8 %i.hf, 12
  store i8 %i.hg, ptr %gep.i.i, align 1, !tbaa !19
  %.0.i202.i = add nuw i64 %.060.i.i, 1
  %i.hh = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.hi = mul i64 %i.hh, %.0.i202.i
  %gep.i.i.1 = getelementptr i8, ptr %i.gy, i64 %i.hi ; 2 uses
  %i.hj = load i8, ptr %gep.i.i.1, align 1, !tbaa !19
  %i.hk = or i8 %i.hj, 12
  store i8 %i.hk, ptr %gep.i.i.1, align 1, !tbaa !19
  %.0.i202.i.1 = add nuw i64 %.060.i.i, 2         ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit328.i.loopexit.unr-lcssa, label %.lr.ph62.i.i, !llvm.loop !0

.loopexit328.i.loopexit.unr-lcssa:                ; preds = %.lr.ph62.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit328.i, label %.lr.ph62.i.i.epil.preheader

.lr.ph62.i.i.epil.preheader:                      ; preds = %.loopexit328.i.loopexit.unr-lcssa, %.lr.ph62.i.i.preheader
  %.060.i.i.epil.init = phi i64 [ 1, %.lr.ph62.i.i.preheader ], [ %.0.i202.i.1, %.loopexit328.i.loopexit.unr-lcssa ]
  %lcmp.mod690 = trunc i64 %.0107.in376414.le.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod690)
  %i.hl = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.hm = mul i64 %i.hl, %.060.i.i.epil.init
  %gep.i.i.epil = getelementptr i8, ptr %i.gy, i64 %i.hm ; 2 uses
  %i.hn = load i8, ptr %gep.i.i.epil, align 1, !tbaa !19
  %i.ho = or i8 %i.hn, 12
  store i8 %i.ho, ptr %gep.i.i.epil, align 1, !tbaa !19
  br label %.loopexit328.i

.loopexit328.i:                                   ; preds = %.lr.ph62.i.i.epil.preheader, %.loopexit328.i.loopexit.unr-lcssa, %ExtendOK.exit
  %i.hp = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.hq = mul i64 %i.hp, %.0107.in376.i
  %i.hr = getelementptr i8, ptr %i.d, i64 %i.hq
  %i.hs = getelementptr i8, ptr %i.hr, i64 %.0154 ; 2 uses
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !19
  %i.hu = or i8 %i.ht, 4
  store i8 %i.hu, ptr %i.hs, align 1, !tbaa !19
  %i.hv = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.hw = mul i64 %i.hv, %.0107.in376.i
  %i.hx = getelementptr i8, ptr %i.e, i64 %i.hw
  %i.hy = getelementptr i8, ptr %i.hx, i64 %.0154
  store i8 1, ptr %i.hy, align 1, !tbaa !19
  %i.hz = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.ia = mul i64 %i.hz, %.0107.in376.i
  %i.ib = getelementptr i8, ptr %i.c, i64 %i.ia
  %i.ic = getelementptr i8, ptr %i.ib, i64 %i.bl  ; 2 uses
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !19
  %i.ie = or i8 %i.id, 2
  store i8 %i.ie, ptr %i.ic, align 1, !tbaa !19
  %.05157.i.i = add i64 %i.bl, 1                  ; 5 uses
  %i.if = icmp ult i64 %.05157.i.i, %i.bn         ; 2 uses
  br i1 %i.if, label %.lr.ph.i203.i.preheader, label %DrawSegment.exit210.i

.lr.ph.i203.i.preheader:                          ; preds = %.loopexit328.i
  %i.ig = xor i64 %i.bl, -1
  %i.ih = add i64 %i.bn, %i.ig
  %i.ii = add i64 %i.bn, -2
  %i.ij = sub i64 %i.ii, %i.bl
  %xtraiter691 = and i64 %i.ih, 3                 ; 2 uses
  %lcmp.mod692.not = icmp eq i64 %xtraiter691, 0
  br i1 %lcmp.mod692.not, label %.lr.ph.i203.i.prol.loopexit, label %.lr.ph.i203.i.prol

.lr.ph.i203.i.prol:                               ; preds = %.lr.ph.i203.i.preheader, %.lr.ph.i203.i.prol
  %.05158.i.i.prol = phi i64 [ %.051.i.i.prol, %.lr.ph.i203.i.prol ], [ %.05157.i.i, %.lr.ph.i203.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i203.i.prol ], [ 0, %.lr.ph.i203.i.preheader ]
  %i.ik = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.il = mul i64 %i.ik, %.0107.in376.i
  %i.im = getelementptr i8, ptr %i.c, i64 %i.il
  %i.in = getelementptr i8, ptr %i.im, i64 %.05158.i.i.prol
  store i8 3, ptr %i.in, align 1, !tbaa !19
  %.051.i.i.prol = add nuw i64 %.05158.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter691
  br i1 %prol.iter.cmp.not, label %.lr.ph.i203.i.prol.loopexit, label %.lr.ph.i203.i.prol, !llvm.loop !58

.lr.ph.i203.i.prol.loopexit:                      ; preds = %.lr.ph.i203.i.prol, %.lr.ph.i203.i.preheader
  %.05158.i.i.unr = phi i64 [ %.05157.i.i, %.lr.ph.i203.i.preheader ], [ %.051.i.i.prol, %.lr.ph.i203.i.prol ]
  %i.io = icmp ult i64 %i.ij, 3
  br i1 %i.io, label %DrawSegment.exit210.i, label %.lr.ph.i203.i

.lr.ph.i203.i:                                    ; preds = %.lr.ph.i203.i.prol.loopexit, %.lr.ph.i203.i
  %.05158.i.i = phi i64 [ %.051.i.i.3, %.lr.ph.i203.i ], [ %.05158.i.i.unr, %.lr.ph.i203.i.prol.loopexit ] ; 5 uses
  %i.ip = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.iq = mul i64 %i.ip, %.0107.in376.i
  %i.ir = getelementptr i8, ptr %i.c, i64 %i.iq
  %i.is = getelementptr i8, ptr %i.ir, i64 %.05158.i.i
  store i8 3, ptr %i.is, align 1, !tbaa !19
  %i.it = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.iu = mul i64 %i.it, %.0107.in376.i
  %i.iv = getelementptr i8, ptr %i.c, i64 %i.iu
  %i.iw = getelementptr i8, ptr %i.iv, i64 %.05158.i.i
  %i.ix = getelementptr i8, ptr %i.iw, i64 1
  store i8 3, ptr %i.ix, align 1, !tbaa !19
  %i.iy = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.iz = mul i64 %i.iy, %.0107.in376.i
  %i.ja = getelementptr i8, ptr %i.c, i64 %i.iz
  %i.jb = getelementptr i8, ptr %i.ja, i64 %.05158.i.i
  %i.jc = getelementptr i8, ptr %i.jb, i64 2
  store i8 3, ptr %i.jc, align 1, !tbaa !19
  %i.jd = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.je = mul i64 %i.jd, %.0107.in376.i
  %i.jf = getelementptr i8, ptr %i.c, i64 %i.je
  %i.jg = getelementptr i8, ptr %i.jf, i64 %.05158.i.i
  %i.jh = getelementptr i8, ptr %i.jg, i64 3
  store i8 3, ptr %i.jh, align 1, !tbaa !19
  %.051.i.i.3 = add nuw i64 %.05158.i.i, 4        ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %.051.i.i.3, %i.bn
  br i1 %exitcond.not.i.i.3, label %DrawSegment.exit210.i, label %.lr.ph.i203.i, !llvm.loop !1

DrawSegment.exit210.i:                            ; preds = %.lr.ph.i203.i.prol.loopexit, %.lr.ph.i203.i, %.loopexit328.i
  %i.ji = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.jj = mul i64 %i.ji, %.0107.in376.i
  %i.jk = getelementptr i8, ptr %i.c, i64 %i.jj
  %i.jl = getelementptr i8, ptr %i.jk, i64 %i.bn  ; 2 uses
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !19
  %i.jn = or i8 %i.jm, 1
  store i8 %i.jn, ptr %i.jl, align 1, !tbaa !19
  %i.jo = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.jp = mul i64 %i.jo, %.0107.in376.i
  %i.jq = getelementptr i8, ptr %i.e, i64 %i.jp
  %i.jr = getelementptr i8, ptr %i.jq, i64 %.0106369.i
  store i8 1, ptr %i.jr, align 1, !tbaa !19
  %i.js = tail call i64 @llvm.umin.i64(i64 %.0107.in376.i, i64 %i.n) ; 5 uses
  %i.jt = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.ju = mul i64 %i.jt, %i.js
  %i.jv = getelementptr i8, ptr %i.d, i64 %i.ju
  %i.jw = getelementptr i8, ptr %i.jv, i64 %.0106369.i ; 2 uses
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !19
  %i.jy = or i8 %i.jx, 8
  store i8 %i.jy, ptr %i.jw, align 1, !tbaa !19
  %i.jz = tail call i64 @llvm.umax.i64(i64 %.0107.in376.i, i64 %i.n) ; 5 uses
  %invariant.gep.i218.i = getelementptr i8, ptr %i.d, i64 %.0106369.i ; 3 uses
  %.059.i219.i = add i64 %i.js, 1                 ; 3 uses
  %i.ka = icmp ult i64 %.059.i219.i, %i.jz
  br i1 %i.ka, label %.lr.ph62.i220.i.preheader, label %.loopexit327.i

.lr.ph62.i220.i.preheader:                        ; preds = %DrawSegment.exit210.i
  %i.kb = add i64 %i.jz, -2
  %i.kc = sub i64 %i.js, %i.jz
  %i.kd = and i64 %i.kc, 1
  %lcmp.mod694.not.not = icmp eq i64 %i.kd, 0
  br i1 %lcmp.mod694.not.not, label %.lr.ph62.i220.i.prol, label %.lr.ph62.i220.i.prol.loopexit

.lr.ph62.i220.i.prol:                             ; preds = %.lr.ph62.i220.i.preheader
  %i.ke = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.kf = mul i64 %i.ke, %.059.i219.i
  %gep.i222.i.prol = getelementptr i8, ptr %invariant.gep.i218.i, i64 %i.kf ; 2 uses
  %i.kg = load i8, ptr %gep.i222.i.prol, align 1, !tbaa !19
  %i.kh = or i8 %i.kg, 12
  store i8 %i.kh, ptr %gep.i222.i.prol, align 1, !tbaa !19
  %.0.i223.i.prol = add i64 %i.js, 2
  br label %.lr.ph62.i220.i.prol.loopexit

.lr.ph62.i220.i.prol.loopexit:                    ; preds = %.lr.ph62.i220.i.prol, %.lr.ph62.i220.i.preheader
  %.060.i221.i.unr = phi i64 [ %.059.i219.i, %.lr.ph62.i220.i.preheader ], [ %.0.i223.i.prol, %.lr.ph62.i220.i.prol ]
  %i.ki = icmp eq i64 %i.kb, %i.js
  br i1 %i.ki, label %.loopexit327.i, label %.lr.ph62.i220.i

.lr.ph62.i220.i:                                  ; preds = %.lr.ph62.i220.i.prol.loopexit, %.lr.ph62.i220.i
  %.060.i221.i = phi i64 [ %.0.i223.i.1, %.lr.ph62.i220.i ], [ %.060.i221.i.unr, %.lr.ph62.i220.i.prol.loopexit ] ; 3 uses
  %i.kj = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.kk = mul i64 %i.kj, %.060.i221.i
  %gep.i222.i = getelementptr i8, ptr %invariant.gep.i218.i, i64 %i.kk ; 2 uses
  %i.kl = load i8, ptr %gep.i222.i, align 1, !tbaa !19
  %i.km = or i8 %i.kl, 12
  store i8 %i.km, ptr %gep.i222.i, align 1, !tbaa !19
  %.0.i223.i = add nuw i64 %.060.i221.i, 1
  %i.kn = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.ko = mul i64 %i.kn, %.0.i223.i
  %gep.i222.i.1 = getelementptr i8, ptr %invariant.gep.i218.i, i64 %i.ko ; 2 uses
  %i.kp = load i8, ptr %gep.i222.i.1, align 1, !tbaa !19
  %i.kq = or i8 %i.kp, 12
  store i8 %i.kq, ptr %gep.i222.i.1, align 1, !tbaa !19
  %.0.i223.i.1 = add nuw i64 %.060.i221.i, 2      ; 2 uses
  %exitcond65.not.i224.i.1 = icmp eq i64 %.0.i223.i.1, %i.jz
  br i1 %exitcond65.not.i224.i.1, label %.loopexit327.i, label %.lr.ph62.i220.i, !llvm.loop !0

.loopexit327.i:                                   ; preds = %.lr.ph62.i220.i.prol.loopexit, %.lr.ph62.i220.i, %DrawSegment.exit210.i
  %i.kr = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.ks = mul i64 %i.kr, %i.jz
  %i.kt = getelementptr i8, ptr %i.d, i64 %i.ks
  %i.ku = getelementptr i8, ptr %i.kt, i64 %.0106369.i ; 2 uses
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !19
  %i.kw = or i8 %i.kv, 4
  store i8 %i.kw, ptr %i.ku, align 1, !tbaa !19
  %i.kx = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.ky = mul i64 %i.kx, %i.n
  %i.kz = getelementptr i8, ptr %i.e, i64 %i.ky
  %i.la = getelementptr i8, ptr %i.kz, i64 %.0106369.i
  store i8 1, ptr %i.la, align 1, !tbaa !19
  %i.lb = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.lc = mul i64 %i.lb, %i.n
  %i.ld = getelementptr i8, ptr %i.c, i64 %i.lc
  %i.le = getelementptr i8, ptr %i.ld, i64 %i.bl  ; 2 uses
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !19
  %i.lg = or i8 %i.lf, 2
  store i8 %i.lg, ptr %i.le, align 1, !tbaa !19
  br i1 %i.if, label %.lr.ph.i229.i.preheader, label %DrawSegment.exit240.i

.lr.ph.i229.i.preheader:                          ; preds = %.loopexit327.i
  %i.lh = xor i64 %i.bl, -1
  %i.li = add i64 %i.bn, %i.lh
  %i.lj = add i64 %i.bn, -2
  %i.lk = sub i64 %i.lj, %i.bl
  %xtraiter696 = and i64 %i.li, 3                 ; 2 uses
  %lcmp.mod697.not = icmp eq i64 %xtraiter696, 0
  br i1 %lcmp.mod697.not, label %.lr.ph.i229.i.prol.loopexit, label %.lr.ph.i229.i.prol

.lr.ph.i229.i.prol:                               ; preds = %.lr.ph.i229.i.preheader, %.lr.ph.i229.i.prol
  %.05158.i230.i.prol = phi i64 [ %.051.i231.i.prol, %.lr.ph.i229.i.prol ], [ %.05157.i.i, %.lr.ph.i229.i.preheader ] ; 2 uses
  %prol.iter698 = phi i64 [ %prol.iter698.next, %.lr.ph.i229.i.prol ], [ 0, %.lr.ph.i229.i.preheader ]
  %i.ll = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.lm = mul i64 %i.ll, %i.n
  %i.ln = getelementptr i8, ptr %i.c, i64 %i.lm
  %i.lo = getelementptr i8, ptr %i.ln, i64 %.05158.i230.i.prol
  store i8 3, ptr %i.lo, align 1, !tbaa !19
  %.051.i231.i.prol = add nuw i64 %.05158.i230.i.prol, 1 ; 2 uses
  %prol.iter698.next = add i64 %prol.iter698, 1   ; 2 uses
  %prol.iter698.cmp.not = icmp eq i64 %prol.iter698.next, %xtraiter696
  br i1 %prol.iter698.cmp.not, label %.lr.ph.i229.i.prol.loopexit, label %.lr.ph.i229.i.prol, !llvm.loop !59

.lr.ph.i229.i.prol.loopexit:                      ; preds = %.lr.ph.i229.i.prol, %.lr.ph.i229.i.preheader
  %.05158.i230.i.unr = phi i64 [ %.05157.i.i, %.lr.ph.i229.i.preheader ], [ %.051.i231.i.prol, %.lr.ph.i229.i.prol ]
  %i.lp = icmp ult i64 %i.lk, 3
  br i1 %i.lp, label %DrawSegment.exit240.i, label %.lr.ph.i229.i

.lr.ph.i229.i:                                    ; preds = %.lr.ph.i229.i.prol.loopexit, %.lr.ph.i229.i
  %.05158.i230.i = phi i64 [ %.051.i231.i.3, %.lr.ph.i229.i ], [ %.05158.i230.i.unr, %.lr.ph.i229.i.prol.loopexit ] ; 5 uses
  %i.lq = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.lr = mul i64 %i.lq, %i.n
  %i.ls = getelementptr i8, ptr %i.c, i64 %i.lr
  %i.lt = getelementptr i8, ptr %i.ls, i64 %.05158.i230.i
  store i8 3, ptr %i.lt, align 1, !tbaa !19
  %i.lu = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.lv = mul i64 %i.lu, %i.n
  %i.lw = getelementptr i8, ptr %i.c, i64 %i.lv
  %i.lx = getelementptr i8, ptr %i.lw, i64 %.05158.i230.i
  %i.ly = getelementptr i8, ptr %i.lx, i64 1
  store i8 3, ptr %i.ly, align 1, !tbaa !19
  %i.lz = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.ma = mul i64 %i.lz, %i.n
  %i.mb = getelementptr i8, ptr %i.c, i64 %i.ma
  %i.mc = getelementptr i8, ptr %i.mb, i64 %.05158.i230.i
  %i.md = getelementptr i8, ptr %i.mc, i64 2
  store i8 3, ptr %i.md, align 1, !tbaa !19
  %i.me = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.mf = mul i64 %i.me, %i.n
  %i.mg = getelementptr i8, ptr %i.c, i64 %i.mf
  %i.mh = getelementptr i8, ptr %i.mg, i64 %.05158.i230.i
  %i.mi = getelementptr i8, ptr %i.mh, i64 3
  store i8 3, ptr %i.mi, align 1, !tbaa !19
  %.051.i231.i.3 = add nuw i64 %.05158.i230.i, 4  ; 2 uses
  %exitcond.not.i232.i.3 = icmp eq i64 %.051.i231.i.3, %i.bn
  br i1 %exitcond.not.i232.i.3, label %DrawSegment.exit240.i, label %.lr.ph.i229.i, !llvm.loop !1

DrawSegment.exit240.i:                            ; preds = %.lr.ph.i229.i.prol.loopexit, %.lr.ph.i229.i, %.loopexit327.i
  %i.mj = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.mk = mul i64 %i.mj, %i.n
  %i.ml = getelementptr i8, ptr %i.c, i64 %i.mk
  %i.mm = getelementptr i8, ptr %i.ml, i64 %i.bn  ; 2 uses
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !19
  %i.mo = or i8 %i.mn, 1
  store i8 %i.mo, ptr %i.mm, align 1, !tbaa !19
  %i.mp = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.mq = mul i64 %i.mp, %i.be
  %i.mr = getelementptr i8, ptr %i.d, i64 %i.mq
  %i.ms = getelementptr i8, ptr %i.mr, i64 %.0154 ; 2 uses
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !19
  %i.mu = or i8 %i.mt, 8
  store i8 %i.mu, ptr %i.ms, align 1, !tbaa !19
  %.059.i249.i = add i64 %i.be, 1                 ; 3 uses
  %i.mv = icmp ult i64 %.059.i249.i, %i.bh
  br i1 %i.mv, label %.lr.ph62.i250.i.preheader, label %.loopexit326.i

.lr.ph62.i250.i.preheader:                        ; preds = %DrawSegment.exit240.i
  %i.mw = add i64 %i.bh, -2
  %i.mx = sub i64 %i.be, %i.bh
  %i.my = and i64 %i.mx, 1
  %lcmp.mod700.not.not = icmp eq i64 %i.my, 0
  br i1 %lcmp.mod700.not.not, label %.lr.ph62.i250.i.prol, label %.lr.ph62.i250.i.prol.loopexit

.lr.ph62.i250.i.prol:                             ; preds = %.lr.ph62.i250.i.preheader
  %i.mz = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.na = mul i64 %i.mz, %.059.i249.i
  %gep.i252.i.prol = getelementptr i8, ptr %i.gy, i64 %i.na ; 2 uses
  %i.nb = load i8, ptr %gep.i252.i.prol, align 1, !tbaa !19
  %i.nc = or i8 %i.nb, 12
  store i8 %i.nc, ptr %gep.i252.i.prol, align 1, !tbaa !19
  %.0.i253.i.prol = add i64 %i.be, 2
  br label %.lr.ph62.i250.i.prol.loopexit

.lr.ph62.i250.i.prol.loopexit:                    ; preds = %.lr.ph62.i250.i.prol, %.lr.ph62.i250.i.preheader
  %.060.i251.i.unr = phi i64 [ %.059.i249.i, %.lr.ph62.i250.i.preheader ], [ %.0.i253.i.prol, %.lr.ph62.i250.i.prol ]
  %i.nd = icmp eq i64 %i.mw, %i.be
  br i1 %i.nd, label %.loopexit326.i, label %.lr.ph62.i250.i

.lr.ph62.i250.i:                                  ; preds = %.lr.ph62.i250.i.prol.loopexit, %.lr.ph62.i250.i
  %.060.i251.i = phi i64 [ %.0.i253.i.1, %.lr.ph62.i250.i ], [ %.060.i251.i.unr, %.lr.ph62.i250.i.prol.loopexit ] ; 3 uses
  %i.ne = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.nf = mul i64 %i.ne, %.060.i251.i
  %gep.i252.i = getelementptr i8, ptr %i.gy, i64 %i.nf ; 2 uses
  %i.ng = load i8, ptr %gep.i252.i, align 1, !tbaa !19
  %i.nh = or i8 %i.ng, 12
  store i8 %i.nh, ptr %gep.i252.i, align 1, !tbaa !19
  %.0.i253.i = add nuw i64 %.060.i251.i, 1
  %i.ni = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.nj = mul i64 %i.ni, %.0.i253.i
  %gep.i252.i.1 = getelementptr i8, ptr %i.gy, i64 %i.nj ; 2 uses
  %i.nk = load i8, ptr %gep.i252.i.1, align 1, !tbaa !19
  %i.nl = or i8 %i.nk, 12
  store i8 %i.nl, ptr %gep.i252.i.1, align 1, !tbaa !19
  %.0.i253.i.1 = add nuw i64 %.060.i251.i, 2      ; 2 uses
  %exitcond65.not.i254.i.1 = icmp eq i64 %.0.i253.i.1, %i.bh
  br i1 %exitcond65.not.i254.i.1, label %.loopexit326.i, label %.lr.ph62.i250.i, !llvm.loop !0

.loopexit326.i:                                   ; preds = %.lr.ph62.i250.i.prol.loopexit, %.lr.ph62.i250.i, %DrawSegment.exit240.i
  %i.nm = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.nn = mul i64 %i.nm, %i.bh
  %i.no = getelementptr i8, ptr %i.d, i64 %i.nn
  %i.np = getelementptr i8, ptr %i.no, i64 %.0154 ; 2 uses
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !19
  %i.nr = or i8 %i.nq, 4
  store i8 %i.nr, ptr %i.np, align 1, !tbaa !19
  %i.ns = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.nt = mul i64 %i.ns, %.0105371.i
  %i.nu = getelementptr i8, ptr %i.e, i64 %i.nt
  %i.nv = getelementptr i8, ptr %i.nu, i64 %.0154
  store i8 1, ptr %i.nv, align 1, !tbaa !19
  %i.nw = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.nx = mul i64 %i.nw, %.0105371.i
  %i.ny = getelementptr i8, ptr %i.c, i64 %i.nx
end_hunk_1
begin_hunk_2_@Maze3:bb.a
  %.051.i261.i.prol = add nuw i64 %.05158.i260.i.prol, 1 ; 2 uses
  %prol.iter704.next = add i64 %prol.iter704, 1   ; 2 uses
  %prol.iter704.cmp.not = icmp eq i64 %prol.iter704.next, %xtraiter702
  br i1 %prol.iter704.cmp.not, label %.lr.ph.i259.i.prol.loopexit, label %.lr.ph.i259.i.prol, !llvm.loop !60

.lr.ph.i259.i.prol.loopexit:                      ; preds = %.lr.ph.i259.i.prol, %.lr.ph.i259.i.preheader
  %.05158.i260.i.unr = phi i64 [ %.05157.i256.i, %.lr.ph.i259.i.preheader ], [ %.051.i261.i.prol, %.lr.ph.i259.i.prol ]
  %i.ol = icmp ult i64 %i.og, 3
  br i1 %i.ol, label %DrawSegment.exit270.i, label %.lr.ph.i259.i

.lr.ph.i259.i:                                    ; preds = %.lr.ph.i259.i.prol.loopexit, %.lr.ph.i259.i
  %.05158.i260.i = phi i64 [ %.051.i261.i.3, %.lr.ph.i259.i ], [ %.05158.i260.i.unr, %.lr.ph.i259.i.prol.loopexit ] ; 5 uses
  %i.om = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.on = mul i64 %i.om, %.0105371.i
  %i.oo = getelementptr i8, ptr %i.c, i64 %i.on
  %i.op = getelementptr i8, ptr %i.oo, i64 %.05158.i260.i
  store i8 3, ptr %i.op, align 1, !tbaa !19
  %i.oq = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.or = mul i64 %i.oq, %.0105371.i
  %i.os = getelementptr i8, ptr %i.c, i64 %i.or
  %i.ot = getelementptr i8, ptr %i.os, i64 %.05158.i260.i
  %i.ou = getelementptr i8, ptr %i.ot, i64 1
  store i8 3, ptr %i.ou, align 1, !tbaa !19
  %i.ov = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.ow = mul i64 %i.ov, %.0105371.i
  %i.ox = getelementptr i8, ptr %i.c, i64 %i.ow
  %i.oy = getelementptr i8, ptr %i.ox, i64 %.05158.i260.i
  %i.oz = getelementptr i8, ptr %i.oy, i64 2
  store i8 3, ptr %i.oz, align 1, !tbaa !19
  %i.pa = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.pb = mul i64 %i.pa, %.0105371.i
  %i.pc = getelementptr i8, ptr %i.c, i64 %i.pb
  %i.pd = getelementptr i8, ptr %i.pc, i64 %.05158.i260.i
  %i.pe = getelementptr i8, ptr %i.pd, i64 3
  store i8 3, ptr %i.pe, align 1, !tbaa !19
  %.051.i261.i.3 = add nuw i64 %.05158.i260.i, 4  ; 2 uses
  %exitcond.not.i262.i.3 = icmp eq i64 %.051.i261.i.3, %i.ek
  br i1 %exitcond.not.i262.i.3, label %DrawSegment.exit270.i, label %.lr.ph.i259.i, !llvm.loop !1

DrawSegment.exit270.i:                            ; preds = %.lr.ph.i259.i.prol.loopexit, %.lr.ph.i259.i, %.loopexit326.i
  %i.pf = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.pg = mul i64 %i.pf, %.0105371.i
  %i.ph = getelementptr i8, ptr %i.c, i64 %i.pg
  %i.pi = getelementptr i8, ptr %i.ph, i64 %i.ek  ; 2 uses
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !19
  %i.pk = or i8 %i.pj, 1
  store i8 %i.pk, ptr %i.pi, align 1, !tbaa !19
  %i.pl = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.pm = mul i64 %i.pl, %.0105371.i
  %i.pn = getelementptr i8, ptr %i.e, i64 %i.pm
  %i.po = getelementptr i8, ptr %i.pn, i64 %.0367.i
  store i8 1, ptr %i.po, align 1, !tbaa !19
  %i.pp = tail call i64 @llvm.umin.i64(i64 %.0105371.i, i64 %i.s) ; 5 uses
  %i.pq = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.pr = mul i64 %i.pq, %i.pp
  %i.ps = getelementptr i8, ptr %i.d, i64 %i.pr
  %i.pt = getelementptr i8, ptr %i.ps, i64 %.0367.i ; 2 uses
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !19
  %i.pv = or i8 %i.pu, 8
  store i8 %i.pv, ptr %i.pt, align 1, !tbaa !19
  %i.pw = tail call i64 @llvm.umax.i64(i64 %.0105371.i, i64 %i.s) ; 5 uses
  %invariant.gep.i278.i = getelementptr i8, ptr %i.d, i64 %.0367.i ; 3 uses
  %.059.i279.i = add i64 %i.pp, 1                 ; 3 uses
  %i.px = icmp ult i64 %.059.i279.i, %i.pw
  br i1 %i.px, label %.lr.ph62.i280.i.preheader, label %.loopexit.i

.lr.ph62.i280.i.preheader:                        ; preds = %DrawSegment.exit270.i
  %i.py = add i64 %i.pw, -2
  %i.pz = sub i64 %i.pp, %i.pw
  %i.qa = and i64 %i.pz, 1
  %lcmp.mod706.not.not = icmp eq i64 %i.qa, 0
  br i1 %lcmp.mod706.not.not, label %.lr.ph62.i280.i.prol, label %.lr.ph62.i280.i.prol.loopexit

.lr.ph62.i280.i.prol:                             ; preds = %.lr.ph62.i280.i.preheader
  %i.qb = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.qc = mul i64 %i.qb, %.059.i279.i
  %gep.i282.i.prol = getelementptr i8, ptr %invariant.gep.i278.i, i64 %i.qc ; 2 uses
  %i.qd = load i8, ptr %gep.i282.i.prol, align 1, !tbaa !19
  %i.qe = or i8 %i.qd, 12
  store i8 %i.qe, ptr %gep.i282.i.prol, align 1, !tbaa !19
  %.0.i283.i.prol = add i64 %i.pp, 2
  br label %.lr.ph62.i280.i.prol.loopexit

.lr.ph62.i280.i.prol.loopexit:                    ; preds = %.lr.ph62.i280.i.prol, %.lr.ph62.i280.i.preheader
  %.060.i281.i.unr = phi i64 [ %.059.i279.i, %.lr.ph62.i280.i.preheader ], [ %.0.i283.i.prol, %.lr.ph62.i280.i.prol ]
  %i.qf = icmp eq i64 %i.py, %i.pp
  br i1 %i.qf, label %.loopexit.i, label %.lr.ph62.i280.i

.lr.ph62.i280.i:                                  ; preds = %.lr.ph62.i280.i.prol.loopexit, %.lr.ph62.i280.i
  %.060.i281.i = phi i64 [ %.0.i283.i.1, %.lr.ph62.i280.i ], [ %.060.i281.i.unr, %.lr.ph62.i280.i.prol.loopexit ] ; 3 uses
  %i.qg = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.qh = mul i64 %i.qg, %.060.i281.i
  %gep.i282.i = getelementptr i8, ptr %invariant.gep.i278.i, i64 %i.qh ; 2 uses
  %i.qi = load i8, ptr %gep.i282.i, align 1, !tbaa !19
  %i.qj = or i8 %i.qi, 12
  store i8 %i.qj, ptr %gep.i282.i, align 1, !tbaa !19
  %.0.i283.i = add nuw i64 %.060.i281.i, 1
  %i.qk = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.ql = mul i64 %i.qk, %.0.i283.i
  %gep.i282.i.1 = getelementptr i8, ptr %invariant.gep.i278.i, i64 %i.ql ; 2 uses
  %i.qm = load i8, ptr %gep.i282.i.1, align 1, !tbaa !19
  %i.qn = or i8 %i.qm, 12
  store i8 %i.qn, ptr %gep.i282.i.1, align 1, !tbaa !19
  %.0.i283.i.1 = add nuw i64 %.060.i281.i, 2      ; 2 uses
  %exitcond65.not.i284.i.1 = icmp eq i64 %.0.i283.i.1, %i.pw
  br i1 %exitcond65.not.i284.i.1, label %.loopexit.i, label %.lr.ph62.i280.i, !llvm.loop !0

.loopexit.i:                                      ; preds = %.lr.ph62.i280.i.prol.loopexit, %.lr.ph62.i280.i, %DrawSegment.exit270.i
  %i.qo = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.qp = mul i64 %i.qo, %i.pw
  %i.qq = getelementptr i8, ptr %i.d, i64 %i.qp
  %i.qr = getelementptr i8, ptr %i.qq, i64 %.0367.i ; 2 uses
  %i.qs = load i8, ptr %i.qr, align 1, !tbaa !19
  %i.qt = or i8 %i.qs, 4
  store i8 %i.qt, ptr %i.qr, align 1, !tbaa !19
  %i.qu = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.qv = mul i64 %i.qu, %i.s
  %i.qw = getelementptr i8, ptr %i.e, i64 %i.qv
  %i.qx = getelementptr i8, ptr %i.qw, i64 %.0367.i
  store i8 1, ptr %i.qx, align 1, !tbaa !19
  %i.qy = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.qz = mul i64 %i.qy, %i.s
  %i.ra = getelementptr i8, ptr %i.c, i64 %i.qz
  %i.rb = getelementptr i8, ptr %i.ra, i64 %i.ei  ; 2 uses
  %i.rc = load i8, ptr %i.rb, align 1, !tbaa !19
  %i.rd = or i8 %i.rc, 2
  store i8 %i.rd, ptr %i.rb, align 1, !tbaa !19
  br i1 %i.oc, label %.lr.ph.i289.i.preheader, label %.loopexit

.lr.ph.i289.i.preheader:                          ; preds = %.loopexit.i
  %i.re = xor i64 %i.ei, -1
  %i.rf = add i64 %i.ek, %i.re
  %i.rg = add i64 %i.ek, -2
  %i.rh = sub i64 %i.rg, %i.ei
  %xtraiter708 = and i64 %i.rf, 3                 ; 2 uses
  %lcmp.mod709.not = icmp eq i64 %xtraiter708, 0
  br i1 %lcmp.mod709.not, label %.lr.ph.i289.i.prol.loopexit, label %.lr.ph.i289.i.prol

.lr.ph.i289.i.prol:                               ; preds = %.lr.ph.i289.i.preheader, %.lr.ph.i289.i.prol
  %.05158.i290.i.prol = phi i64 [ %.051.i291.i.prol, %.lr.ph.i289.i.prol ], [ %.05157.i256.i, %.lr.ph.i289.i.preheader ] ; 2 uses
  %prol.iter710 = phi i64 [ %prol.iter710.next, %.lr.ph.i289.i.prol ], [ 0, %.lr.ph.i289.i.preheader ]
  %i.ri = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.rj = mul i64 %i.ri, %i.s
  %i.rk = getelementptr i8, ptr %i.c, i64 %i.rj
  %i.rl = getelementptr i8, ptr %i.rk, i64 %.05158.i290.i.prol
  store i8 3, ptr %i.rl, align 1, !tbaa !19
  %.051.i291.i.prol = add nuw i64 %.05158.i290.i.prol, 1 ; 2 uses
  %prol.iter710.next = add i64 %prol.iter710, 1   ; 2 uses
  %prol.iter710.cmp.not = icmp eq i64 %prol.iter710.next, %xtraiter708
  br i1 %prol.iter710.cmp.not, label %.lr.ph.i289.i.prol.loopexit, label %.lr.ph.i289.i.prol, !llvm.loop !61

.lr.ph.i289.i.prol.loopexit:                      ; preds = %.lr.ph.i289.i.prol, %.lr.ph.i289.i.preheader
  %.05158.i290.i.unr = phi i64 [ %.05157.i256.i, %.lr.ph.i289.i.preheader ], [ %.051.i291.i.prol, %.lr.ph.i289.i.prol ]
  %i.rm = icmp ult i64 %i.rh, 3
  br i1 %i.rm, label %.loopexit, label %.lr.ph.i289.i

.lr.ph.i289.i:                                    ; preds = %.lr.ph.i289.i.prol.loopexit, %.lr.ph.i289.i
  %.05158.i290.i = phi i64 [ %.051.i291.i.3, %.lr.ph.i289.i ], [ %.05158.i290.i.unr, %.lr.ph.i289.i.prol.loopexit ] ; 5 uses
  %i.rn = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.ro = mul i64 %i.rn, %i.s
  %i.rp = getelementptr i8, ptr %i.c, i64 %i.ro
  %i.rq = getelementptr i8, ptr %i.rp, i64 %.05158.i290.i
  store i8 3, ptr %i.rq, align 1, !tbaa !19
  %i.rr = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.rs = mul i64 %i.rr, %i.s
  %i.rt = getelementptr i8, ptr %i.c, i64 %i.rs
  %i.ru = getelementptr i8, ptr %i.rt, i64 %.05158.i290.i
  %i.rv = getelementptr i8, ptr %i.ru, i64 1
  store i8 3, ptr %i.rv, align 1, !tbaa !19
  %i.rw = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.rx = mul i64 %i.rw, %i.s
  %i.ry = getelementptr i8, ptr %i.c, i64 %i.rx
  %i.rz = getelementptr i8, ptr %i.ry, i64 %.05158.i290.i
  %i.sa = getelementptr i8, ptr %i.rz, i64 2
  store i8 3, ptr %i.sa, align 1, !tbaa !19
  %i.sb = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.sc = mul i64 %i.sb, %i.s
  %i.sd = getelementptr i8, ptr %i.c, i64 %i.sc
  %i.se = getelementptr i8, ptr %i.sd, i64 %.05158.i290.i
  %i.sf = getelementptr i8, ptr %i.se, i64 3
  store i8 3, ptr %i.sf, align 1, !tbaa !19
  %.051.i291.i.3 = add nuw i64 %.05158.i290.i, 4  ; 2 uses
  %exitcond.not.i292.i.3 = icmp eq i64 %.051.i291.i.3, %i.ek
  br i1 %exitcond.not.i292.i.3, label %.loopexit, label %.lr.ph.i289.i, !llvm.loop !1

SegmentFree.exit.thread.i:                        ; preds = %.preheader401.i, %.preheader399.i, %SegmentFree.exit153.i, %bb.ag, %.preheader393.i, %.preheader341.i, %.preheader338.i, %.preheader335.i, %.preheader.i, %bb.y, %.preheader382.i, %ExtendOK.exit.i, %bb.aj, %bb.al, %bb.bh, %bb.be, %.preheader40, %.preheader37, %.preheader34, %.preheader, %bb.ax, %bb.au, %HasVCV.exit200.i, %HasVCV.exit.i, %.lr.ph.split.i
  %i.sg = add i64 %.0367.i, 1                     ; 2 uses
  %.not113.i = icmp ugt i64 %i.sg, %i.bd
  br i1 %.not113.i, label %._crit_edge.i, label %.lr.ph.split.i, !llvm.loop !62

._crit_edge.i:                                    ; preds = %SegmentFree.exit.thread.i, %.preheader351.i
  %i.sh = add i64 %.0106369.i, 1                  ; 2 uses
  %.not112.i = icmp ugt i64 %i.sh, %i.aq
  br i1 %.not112.i, label %.loopexit353.i, label %.preheader351.i, !llvm.loop !63

.loopexit353.i:                                   ; preds = %._crit_edge.i, %FindFreeHorzSeg.exit145.i
  %i.si = add nuw i64 %.0105371.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.si, %i.n
  br i1 %exitcond.not.i, label %.loopexit354.i, label %bb.i, !llvm.loop !64

.loopexit354.i:                                   ; preds = %.loopexit353.i, %FindFreeHorzSeg.exit.i
  %exitcond414.not.i = icmp eq i64 %0, %i.v
  br i1 %exitcond414.not.i, label %.loopexit68, label %bb.d, !llvm.loop !65

.loopexit:                                        ; preds = %.lr.ph.i289.i.prol.loopexit, %.lr.ph.i289.i, %.loopexit.i
  %i.sj = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.sk = mul i64 %i.sj, %i.s
  %i.sl = getelementptr i8, ptr %i.c, i64 %i.sk
  %i.sm = getelementptr i8, ptr %i.sl, i64 %i.ek  ; 2 uses
  %i.sn = load i8, ptr %i.sm, align 1, !tbaa !19
  %i.so = or i8 %i.sn, 1
  store i8 %i.so, ptr %i.sm, align 1, !tbaa !19
  store i8 0, ptr %i.g, align 1, !tbaa !19
  %i.sp = load ptr, ptr @TOP, align 8, !tbaa !23
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %i.sp, i64 %.0154
  %i.sr = load i64, ptr %i.sq, align 8, !tbaa !15
  tail call fastcc void @CleanNet(i64 noundef %i.sr)
  %i.ss = load ptr, ptr @BOT, align 8, !tbaa !23
  %i.st = getelementptr inbounds nuw [8 x i8], ptr %i.ss, i64 %.0154
  %i.su = load i64, ptr %i.st, align 8, !tbaa !15
  tail call fastcc void @CleanNet(i64 noundef %i.su)
  %.pre = load i64, ptr @channelColumns, align 8, !tbaa !15
  br label %bb.bj

.loopexit68:                                      ; preds = %.loopexit354.i, %bb.c
  %i.sv = add nsw i32 %.015153, 1
  br label %bb.bj

bb.bj:                                            ; preds = %bb.b, %.loopexit68, %.loopexit
  %i.sw = phi i64 [ %.pre, %.loopexit ], [ %i.f, %.loopexit68 ], [ %i.f, %bb.b ] ; 2 uses
  %.1 = phi i32 [ %.015153, %.loopexit ], [ %i.sv, %.loopexit68 ], [ %.015153, %bb.b ] ; 2 uses
  %i.sx = add i64 %.0154, 1                       ; 2 uses
  %.not = icmp ugt i64 %i.sx, %i.sw
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !66

._crit_edge:                                      ; preds = %bb.bj, %bb.a
  %.015.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.bj ]
  ret i32 %.015.lcssa
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold }
attributes #17 = { cold noreturn nounwind }
attributes #18 = { nounwind }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !20}
!1 = distinct !{!1, !20}
!2 = distinct !{!2, !20}
!3 = distinct !{!3, !20}
!4 = distinct !{!4, !20}
!5 = distinct !{!5, !20}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"long", !11, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"any pointer", !11, i64 0}
!17 = !{!"p1 omnipotent char", !16, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!11, !11, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = !{!"p1 long", !16, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"p1 _ZTS8_IO_FILE", !16, i64 0}
!25 = !{!24, !24, i64 0}
!26 = distinct !{!26, !21}
!27 = distinct !{!27, !20}
!28 = distinct !{!28, !20}
!29 = distinct !{!29, !20}
!30 = distinct !{!30, !20}
!31 = distinct !{!31, !20}
!32 = distinct !{!32, !20}
!33 = distinct !{!33, !20}
!34 = distinct !{!34, !20}
!35 = distinct !{!35, !20}
!36 = distinct !{!36, !20}
!37 = distinct !{!37, !20}
!38 = distinct !{!38, !20}
!39 = distinct !{!39, !21}
!40 = distinct !{!40, !20}
!41 = distinct !{!41, !20}
!42 = distinct !{!42, !20}
!43 = distinct !{!43, !21}
!44 = distinct !{!44, !21}
!45 = distinct !{!45, !20}
!46 = distinct !{!46, !20}
!47 = distinct !{!47, !20}
!48 = distinct !{!48, !20}
!49 = distinct !{!49, !21}
!50 = distinct !{!50, !20}
!51 = distinct !{!51, !21}
!52 = distinct !{!52, !20}
!53 = distinct !{!53, !20}
!54 = distinct !{!54, !21}
!55 = distinct !{!55, !21}
!56 = distinct !{!56, !20}
!57 = distinct !{!57, !20}
!58 = distinct !{!58, !21}
!59 = distinct !{!59, !21}
!60 = distinct !{!60, !21}
!61 = distinct !{!61, !21}
!62 = distinct !{!62, !20}
!63 = distinct !{!63, !20}
!64 = distinct !{!64, !20}
!65 = distinct !{!65, !20}
!66 = distinct !{!66, !20}
end_hunk_2
