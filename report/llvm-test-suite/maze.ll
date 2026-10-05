Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/maze?download=true
inline.NumInlined: 70
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 33
begin_hunk_0_@CleanNet:bb.a
._crit_edge:                                      ; preds = %bb.e, %bb.a
  %i.s = load ptr, ptr @netsAssign, align 8, !tbaa !23
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %0
  %i.u = load i64, ptr %i.t, align 8, !tbaa !15   ; 13 uses
  %i.v = load ptr, ptr @horzPlane, align 8, !tbaa !18 ; 13 uses
  %i.w = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.x = mul i64 %i.w, %i.u                       ; 2 uses
  %i.y = getelementptr i8, ptr %i.v, i64 %i.x     ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %._crit_edge
  %indvar = phi i64 [ %indvar.next, %bb.f ], [ 0, %._crit_edge ] ; 3 uses
  %.050 = phi i64 [ %i.ac, %bb.f ], [ %i.c, %._crit_edge ] ; 7 uses
  %i.z = getelementptr i8, ptr %i.y, i64 %.050
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !19
  %i.ab = and i8 %i.aa, 1
  %.not58 = icmp eq i8 %i.ab, 0
  %i.ac = add i64 %.050, -1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not58, label %.preheader66, label %bb.f, !llvm.loop !46

.preheader66:                                     ; preds = %bb.f, %.preheader66
  %.0 = phi i64 [ %i.ag, %.preheader66 ], [ %i.f, %bb.f ] ; 8 uses
  %i.ad = getelementptr i8, ptr %i.y, i64 %.0
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !19
  %i.af = and i8 %i.ae, 2
  %.not59 = icmp eq i8 %i.af, 0
  %i.ag = add i64 %.0, 1
  br i1 %.not59, label %.preheader65, label %.preheader66, !llvm.loop !47

.preheader65:                                     ; preds = %.preheader66
  %.not6074 = icmp ugt i64 %.050, %.0
  br i1 %.not6074, label %._crit_edge79, label %.lr.ph78

.lr.ph78:                                         ; preds = %.preheader65
  %i.ah = load ptr, ptr @viaPlane, align 8, !tbaa !18
  %i.ai = getelementptr i8, ptr %i.ah, i64 %i.x
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph78, %bb.g
  %.05177 = phi i64 [ 0, %.lr.ph78 ], [ %.1, %bb.g ] ; 2 uses
  %.05276 = phi i64 [ 9999999, %.lr.ph78 ], [ %.2, %bb.g ] ; 2 uses
  %.15575 = phi i64 [ %.050, %.lr.ph78 ], [ %i.al, %bb.g ] ; 4 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 %.15575
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !19
  %.not62 = icmp eq i8 %i.ak, 0                   ; 2 uses
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.15575, i64 %.05276)
  %spec.select64 = tail call i64 @llvm.umax.i64(i64 %.15575, i64 %.05177)
  %.2 = select i1 %.not62, i64 %.05276, i64 %spec.select ; 2 uses
  %.1 = select i1 %.not62, i64 %.05177, i64 %spec.select64 ; 2 uses
  %i.al = add i64 %.15575, 1                      ; 2 uses
  %.not60 = icmp ugt i64 %i.al, %.0
  br i1 %.not60, label %._crit_edge79, label %bb.g, !llvm.loop !48

._crit_edge79:                                    ; preds = %bb.g, %.preheader65
  %.052.lcssa = phi i64 [ 9999999, %.preheader65 ], [ %.2, %bb.g ] ; 5 uses
  %.051.lcssa = phi i64 [ 0, %.preheader65 ], [ %.1, %bb.g ] ; 6 uses
  %i.am = icmp ult i64 %.050, %.052.lcssa
  br i1 %i.am, label %.preheader.preheader, label %bb.h

.preheader.preheader:                             ; preds = %._crit_edge79
  %i.an = sub i64 %indvar, %i.c
  %i.ao = add i64 %.052.lcssa, %i.an
  %xtraiter = and i64 %i.ao, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %.25682.prol = phi i64 [ %i.at, %.preheader.prol ], [ %.050, %.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.ap = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.aq = mul i64 %i.ap, %i.u
  %i.ar = getelementptr i8, ptr %i.v, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.ar, i64 %.25682.prol
  store i8 0, ptr %i.as, align 1, !tbaa !19
  %i.at = add nuw nsw i64 %.25682.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !49

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.25682.unr = phi i64 [ %.050, %.preheader.preheader ], [ %i.at, %.preheader.prol ]
  %i.au = add i64 %indvar, %.052.lcssa
  %i.av = sub i64 %i.c, %i.au
  %i.aw = icmp ugt i64 %i.av, -4
  br i1 %i.aw, label %.unr-lcssa, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.25682 = phi i64 [ %i.bq, %.preheader ], [ %.25682.unr, %.preheader.prol.loopexit ] ; 5 uses
  %i.ax = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.ay = mul i64 %i.ax, %i.u
  %i.az = getelementptr i8, ptr %i.v, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.az, i64 %.25682
  store i8 0, ptr %i.ba, align 1, !tbaa !19
  %i.bb = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.bc = mul i64 %i.bb, %i.u
  %i.bd = getelementptr i8, ptr %i.v, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 %.25682
  %i.bf = getelementptr i8, ptr %i.be, i64 1
  store i8 0, ptr %i.bf, align 1, !tbaa !19
  %i.bg = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.bh = mul i64 %i.bg, %i.u
  %i.bi = getelementptr i8, ptr %i.v, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.bi, i64 %.25682
  %i.bk = getelementptr i8, ptr %i.bj, i64 2
  store i8 0, ptr %i.bk, align 1, !tbaa !19
  %i.bl = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.bm = mul i64 %i.bl, %i.u
  %i.bn = getelementptr i8, ptr %i.v, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bn, i64 %.25682
  %i.bp = getelementptr i8, ptr %i.bo, i64 3
  store i8 0, ptr %i.bp, align 1, !tbaa !19
  %i.bq = add nuw nsw i64 %.25682, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bq, %.052.lcssa
  br i1 %exitcond.not.3, label %.unr-lcssa, label %.preheader, !llvm.loop !50

.unr-lcssa:                                       ; preds = %.preheader, %.preheader.prol.loopexit
  %i.br = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.bs = mul i64 %i.br, %i.u
  %i.bt = getelementptr i8, ptr %i.v, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 %.052.lcssa ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !19
  %i.bw = and i8 %i.bv, -2
  store i8 %i.bw, ptr %i.bu, align 1, !tbaa !19
  br label %bb.h

bb.h:                                             ; preds = %.unr-lcssa, %._crit_edge79
  %i.bx = icmp ult i64 %.051.lcssa, %.0
  br i1 %i.bx, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.by = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.bz = mul i64 %i.by, %i.u
  %i.ca = getelementptr i8, ptr %i.v, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.ca, i64 %.051.lcssa ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !19
  %i.cd = and i8 %i.cc, -3
  store i8 %i.cd, ptr %i.cb, align 1, !tbaa !19
  %i.ce = sub nuw i64 %.0, %.051.lcssa
  %xtraiter96 = and i64 %i.ce, 3                  ; 2 uses
  %lcmp.mod97.not = icmp eq i64 %xtraiter96, 0
  br i1 %lcmp.mod97.not, label %.lr.ph87.prol.loopexit, label %.lr.ph87.prol

.lr.ph87.prol:                                    ; preds = %bb.i, %.lr.ph87.prol
  %.385.in.prol = phi i64 [ %.385.prol, %.lr.ph87.prol ], [ %.051.lcssa, %bb.i ]
  %prol.iter98 = phi i64 [ %prol.iter98.next, %.lr.ph87.prol ], [ 0, %bb.i ]
  %.385.prol = add nuw i64 %.385.in.prol, 1       ; 3 uses
  %i.cf = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.cg = mul i64 %i.cf, %i.u
  %i.ch = getelementptr i8, ptr %i.v, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 %.385.prol
  store i8 0, ptr %i.ci, align 1, !tbaa !19
  %prol.iter98.next = add i64 %prol.iter98, 1     ; 2 uses
  %prol.iter98.cmp.not = icmp eq i64 %prol.iter98.next, %xtraiter96
  br i1 %prol.iter98.cmp.not, label %.lr.ph87.prol.loopexit, label %.lr.ph87.prol, !llvm.loop !51

.lr.ph87.prol.loopexit:                           ; preds = %.lr.ph87.prol, %bb.i
  %.385.in.unr = phi i64 [ %.051.lcssa, %bb.i ], [ %.385.prol, %.lr.ph87.prol ]
  %i.cj = sub i64 %.051.lcssa, %.0
  %i.ck = icmp ugt i64 %i.cj, -4
  br i1 %i.ck, label %.loopexit, label %.lr.ph87

.lr.ph87:                                         ; preds = %.lr.ph87.prol.loopexit, %.lr.ph87
  %.385.in = phi i64 [ %.385.3, %.lr.ph87 ], [ %.385.in.unr, %.lr.ph87.prol.loopexit ] ; 4 uses
  %i.cl = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.cm = mul i64 %i.cl, %i.u
  %i.cn = getelementptr i8, ptr %i.v, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.cn, i64 %.385.in
  %i.cp = getelementptr i8, ptr %i.co, i64 1
  store i8 0, ptr %i.cp, align 1, !tbaa !19
  %i.cq = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.cr = mul i64 %i.cq, %i.u
  %i.cs = getelementptr i8, ptr %i.v, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cs, i64 %.385.in
  %i.cu = getelementptr i8, ptr %i.ct, i64 2
  store i8 0, ptr %i.cu, align 1, !tbaa !19
  %i.cv = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.cw = mul i64 %i.cv, %i.u
  %i.cx = getelementptr i8, ptr %i.v, i64 %i.cw
  %i.cy = getelementptr i8, ptr %i.cx, i64 %.385.in
  %i.cz = getelementptr i8, ptr %i.cy, i64 3
  store i8 0, ptr %i.cz, align 1, !tbaa !19
  %.385.3 = add nuw i64 %.385.in, 4               ; 3 uses
  %i.da = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.db = mul i64 %i.da, %i.u
  %i.dc = getelementptr i8, ptr %i.v, i64 %i.db
  %i.dd = getelementptr i8, ptr %i.dc, i64 %.385.3
  store i8 0, ptr %i.dd, align 1, !tbaa !19
  %.not61.not.3 = icmp ult i64 %.385.3, %.0
  br i1 %.not61.not.3, label %.lr.ph87, label %.loopexit, !llvm.loop !52

.loopexit:                                        ; preds = %bb.d, %.lr.ph87.prol.loopexit, %.lr.ph87, %bb.h
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @ExtendOK(i64 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i64 @llvm.umin.i64(i64 %2, i64 %4) ; 5 uses
  %i.b = tail call i64 @llvm.umin.i64(i64 %3, i64 %5) ; 11 uses
  %i.c = tail call i64 @llvm.umax.i64(i64 %2, i64 %4) ; 8 uses
  %i.d = load ptr, ptr @FIRST, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %0
  %i.f = load i64, ptr %i.e, align 8, !tbaa !15   ; 2 uses
  %.not = icmp ult i64 %i.a, %i.f
  %i.g = load ptr, ptr @LAST, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %0
  %i.i = load i64, ptr %i.h, align 8, !tbaa !15   ; 3 uses
  %i.j = icmp ugt i64 %i.c, %i.i                  ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.j, label %bb.p, label %SegmentFree.exit65

bb.c:                                             ; preds = %bb.a
  %i.k = add i64 %i.f, -1                         ; 3 uses
  %i.l = icmp eq i64 %i.a, %i.k                   ; 2 uses
  %i.m = load i64, ptr @channelColumns, align 8, !tbaa !15 ; 5 uses
  %i.n = mul i64 %i.m, %i.b
  %i.o = add i64 %i.n, %i.a                       ; 4 uses
  br i1 %i.j, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  br i1 %i.l, label %.preheader, label %.preheader148

.preheader:                                       ; preds = %bb.d, %bb.e
  %.052.i = phi i64 [ %i.s, %bb.e ], [ %i.o, %bb.d ] ; 2 uses
  %.03851.i = phi i64 [ %i.r, %bb.e ], [ %i.b, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %.052.i
  %i.q = load i8, ptr %i.p, align 1, !tbaa !19
  %.not46.i = icmp eq i8 %i.q, 0
  br i1 %.not46.i, label %bb.e, label %SegmentFree.exit65

bb.e:                                             ; preds = %.preheader
  %i.r = add i64 %.03851.i, 1                     ; 2 uses
  %i.s = add i64 %.052.i, %i.m
  %.not45.i = icmp ugt i64 %i.r, %i.b
  br i1 %.not45.i, label %SegmentFree.exit, label %.preheader, !llvm.loop !2

.preheader148:                                    ; preds = %bb.d, %bb.f
  %.150.i = phi i64 [ %i.w, %bb.f ], [ %i.o, %bb.d ] ; 2 uses
  %.03949.i = phi i64 [ %i.v, %bb.f ], [ %i.a, %bb.d ]
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.150.i
  %i.u = load i8, ptr %i.t, align 1, !tbaa !19
  %.not44.i = icmp eq i8 %i.u, 0
  br i1 %.not44.i, label %bb.f, label %SegmentFree.exit65

bb.f:                                             ; preds = %.preheader148
  %i.v = add i64 %.03949.i, 1                     ; 2 uses
  %i.w = add i64 %.150.i, 1
  %.not.i = icmp ugt i64 %i.v, %i.k
  br i1 %.not.i, label %SegmentFree.exit, label %.preheader148, !llvm.loop !3

SegmentFree.exit:                                 ; preds = %bb.f, %bb.e
  %i.x = add i64 %i.i, 1                          ; 3 uses
  %i.y = icmp eq i64 %i.x, %i.c
  %i.z = mul i64 %i.m, %i.b                       ; 2 uses
  br i1 %i.y, label %bb.g, label %bb.j

bb.g:                                             ; preds = %SegmentFree.exit
  %i.aa = add i64 %i.z, %i.c
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.052.i61 = phi i64 [ %i.aa, %bb.g ], [ %i.ae, %bb.i ] ; 2 uses
  %.03851.i62 = phi i64 [ %i.b, %bb.g ], [ %i.ad, %bb.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.052.i61
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !19
  %.not46.i63 = icmp eq i8 %i.ac, 0
  br i1 %.not46.i63, label %bb.i, label %SegmentFree.exit65

bb.i:                                             ; preds = %bb.h
  %i.ad = add i64 %.03851.i62, 1                  ; 2 uses
  %i.ae = add i64 %.052.i61, %i.m
  %.not45.i64 = icmp ugt i64 %i.ad, %i.b
  br i1 %.not45.i64, label %SegmentFree.exit65, label %bb.h, !llvm.loop !2

bb.j:                                             ; preds = %SegmentFree.exit
  %6 = tail call i64 @llvm.umin.i64(i64 %i.x, i64 %i.c) ; 2 uses
  %i.af = add i64 %i.z, %6
  %7 = tail call i64 @llvm.umax.i64(i64 %i.x, i64 %i.c)
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %.150.i56 = phi i64 [ %i.af, %bb.j ], [ %i.aj, %bb.l ] ; 2 uses
  %.03949.i57 = phi i64 [ %6, %bb.j ], [ %i.ai, %bb.l ]
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %.150.i56
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !19
  %.not44.i58 = icmp eq i8 %i.ah, 0
  br i1 %.not44.i58, label %bb.l, label %SegmentFree.exit65

bb.l:                                             ; preds = %bb.k
  %i.ai = add i64 %.03949.i57, 1                  ; 2 uses
  %i.aj = add i64 %.150.i56, 1
  %.not.i60 = icmp ugt i64 %i.ai, %7
  br i1 %.not.i60, label %SegmentFree.exit65, label %bb.k, !llvm.loop !3

bb.m:                                             ; preds = %bb.c
  br i1 %i.l, label %.preheader151, label %.preheader154

.preheader151:                                    ; preds = %bb.m, %bb.n
  %.052.i71 = phi i64 [ %i.an, %bb.n ], [ %i.o, %bb.m ] ; 2 uses
  %.03851.i72 = phi i64 [ %i.am, %bb.n ], [ %i.b, %bb.m ]
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %.052.i71
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !19
  %.not46.i73 = icmp eq i8 %i.al, 0
  br i1 %.not46.i73, label %bb.n, label %SegmentFree.exit65

bb.n:                                             ; preds = %.preheader151
  %i.am = add i64 %.03851.i72, 1                  ; 2 uses
  %i.an = add i64 %.052.i71, %i.m
  %.not45.i74 = icmp ugt i64 %i.am, %i.b
  br i1 %.not45.i74, label %SegmentFree.exit65, label %.preheader151, !llvm.loop !2

.preheader154:                                    ; preds = %bb.m, %bb.o
  %.150.i66 = phi i64 [ %i.ar, %bb.o ], [ %i.o, %bb.m ] ; 2 uses
  %.03949.i67 = phi i64 [ %i.aq, %bb.o ], [ %i.a, %bb.m ]
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %.150.i66
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !19
  %.not44.i68 = icmp eq i8 %i.ap, 0
  br i1 %.not44.i68, label %bb.o, label %SegmentFree.exit65

bb.o:                                             ; preds = %.preheader154
  %i.aq = add i64 %.03949.i67, 1                  ; 2 uses
  %i.ar = add i64 %.150.i66, 1
  %.not.i70 = icmp ugt i64 %i.aq, %i.k
  br i1 %.not.i70, label %SegmentFree.exit65, label %.preheader154, !llvm.loop !3

bb.p:                                             ; preds = %bb.b
  %i.as = add nuw i64 %i.i, 1                     ; 3 uses
  %i.at = icmp eq i64 %i.as, %i.c
  %i.au = load i64, ptr @channelColumns, align 8, !tbaa !15 ; 2 uses
  %i.av = mul i64 %i.au, %i.b                     ; 2 uses
  br i1 %i.at, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.aw = add i64 %i.av, %i.c
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %bb.q
  %.052.i81 = phi i64 [ %i.aw, %bb.q ], [ %i.ba, %bb.s ] ; 2 uses
  %.03851.i82 = phi i64 [ %i.b, %bb.q ], [ %i.az, %bb.s ]
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %.052.i81
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !19
  %.not46.i83 = icmp eq i8 %i.ay, 0
  br i1 %.not46.i83, label %bb.s, label %SegmentFree.exit65

bb.s:                                             ; preds = %bb.r
  %i.az = add i64 %.03851.i82, 1                  ; 2 uses
  %i.ba = add i64 %.052.i81, %i.au
  %.not45.i84 = icmp ugt i64 %i.az, %i.b
  br i1 %.not45.i84, label %SegmentFree.exit65, label %bb.r, !llvm.loop !2

bb.t:                                             ; preds = %bb.p
  %i.bb = add i64 %i.av, %i.as
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t
  %.150.i76 = phi i64 [ %i.bb, %bb.t ], [ %i.bf, %bb.v ] ; 2 uses
  %.03949.i77 = phi i64 [ %i.as, %bb.t ], [ %i.be, %bb.v ]
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %.150.i76
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !19
  %.not44.i78 = icmp eq i8 %i.bd, 0
  br i1 %.not44.i78, label %bb.v, label %SegmentFree.exit65

bb.v:                                             ; preds = %bb.u
  %i.be = add i64 %.03949.i77, 1                  ; 2 uses
  %i.bf = add i64 %.150.i76, 1
  %.not.i80 = icmp ugt i64 %i.be, %i.c
  br i1 %.not.i80, label %SegmentFree.exit65, label %bb.u, !llvm.loop !3

SegmentFree.exit65:                               ; preds = %bb.v, %bb.u, %bb.s, %bb.r, %bb.o, %.preheader154, %bb.n, %.preheader151, %.preheader148, %.preheader, %bb.l, %bb.k, %bb.i, %bb.h, %bb.b
  %.0 = phi i32 [ 0, %bb.r ], [ 1, %bb.b ], [ 0, %bb.h ], [ 0, %.preheader ], [ 1, %bb.o ], [ 1, %bb.l ], [ 0, %.preheader151 ], [ 0, %.preheader148 ], [ 1, %bb.i ], [ 0, %bb.k ], [ 1, %bb.n ], [ 0, %.preheader154 ], [ 1, %bb.s ], [ 1, %bb.v ], [ 0, %bb.u ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @Maze2() local_unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr @channelColumns, align 8, !tbaa !15 ; 2 uses
  %.not68 = icmp eq i64 %i.a, 0
  br i1 %.not68, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = load ptr, ptr @mazeRoute, align 8, !tbaa !18
  %i.c = load ptr, ptr @mazeRoute, align 8
  %i.d = load ptr, ptr @mazeRoute, align 8
  %i.e = load ptr, ptr @mazeRoute, align 8
  %i.f = load ptr, ptr @mazeRoute, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.q
  %i.g = phi i64 [ %i.cj, %bb.q ], [ %i.a, %.lr.ph.preheader ]
  %.070 = phi i64 [ %i.ci, %bb.q ], [ 1, %.lr.ph.preheader ] ; 30 uses
  %.05469 = phi i32 [ %.1, %bb.q ], [ 0, %.lr.ph.preheader ] ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %.070
  %i.i = load i8, ptr %i.h, align 1, !tbaa !19
  %.not63 = icmp eq i8 %i.i, 0
  br i1 %.not63, label %bb.q, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = load ptr, ptr @netsAssign, align 8, !tbaa !23 ; 2 uses
  %i.k = load ptr, ptr @TOP, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.070
  %i.m = load i64, ptr %i.l, align 8, !tbaa !15   ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !15   ; 8 uses
  %i.p = load ptr, ptr @BOT, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.070
  %i.r = load i64, ptr %i.q, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8, !tbaa !15   ; 7 uses
  %i.u = icmp ugt i64 %.070, 1                    ; 2 uses
  %i.v = icmp ugt i64 %i.t, 1                     ; 2 uses
  %or.cond = select i1 %i.u, i1 %i.v, i1 false
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.w = load i64, ptr @channelTracks, align 8, !tbaa !15
  %i.x = add i64 %i.w, 1
  %i.y = add i64 %.070, -1
  %i.z = add i64 %i.t, -1
  %i.aa = tail call fastcc i32 @Maze2Mech(i64 noundef %i.m, i64 noundef %.070, i64 noundef %i.x, i64 noundef %i.t, i64 noundef 0, i64 noundef %i.o, i64 noundef %i.y, i64 noundef 1, i32 noundef -1, i64 noundef 1, i64 noundef %i.z)
  %.not64 = icmp eq i32 %i.aa, 0
  br i1 %.not64, label %._crit_edge72, label %bb.d

._crit_edge72:                                    ; preds = %bb.c
  %.pre = load i64, ptr @channelColumns, align 8, !tbaa !15
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 %.070
  store i8 0, ptr %i.ab, align 1, !tbaa !19
  %i.ac = load ptr, ptr @TOP, align 8, !tbaa !23
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.070
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !15
  tail call fastcc void @CleanNet(i64 noundef %i.ae)
  %i.af = load ptr, ptr @BOT, align 8, !tbaa !23
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.070
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !15
  tail call fastcc void @CleanNet(i64 noundef %i.ah)
  br label %bb.q

bb.e:                                             ; preds = %._crit_edge72, %bb.b
  %i.ai = phi i64 [ %.pre, %._crit_edge72 ], [ %i.g, %bb.b ] ; 2 uses
  %i.aj = icmp ult i64 %.070, %i.ai
  %or.cond3 = select i1 %i.aj, i1 %i.v, i1 false
  br i1 %or.cond3, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr @TOP, align 8, !tbaa !23
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.070
  %i.am = load i64, ptr %i.al, align 8, !tbaa !15
  %i.an = load i64, ptr @channelTracks, align 8, !tbaa !15
  %i.ao = add i64 %i.an, 1
  %i.ap = add nuw i64 %.070, 1
  %i.aq = add i64 %i.t, -1
  %i.ar = tail call fastcc i32 @Maze2Mech(i64 noundef %i.am, i64 noundef %.070, i64 noundef %i.ao, i64 noundef %i.t, i64 noundef 0, i64 noundef %i.o, i64 noundef %i.ap, i64 noundef %i.ai, i32 noundef 1, i64 noundef 1, i64 noundef %i.aq)
  %.not65 = icmp eq i32 %i.ar, 0
  br i1 %.not65, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 %.070
  store i8 0, ptr %i.as, align 1, !tbaa !19
  %i.at = load ptr, ptr @TOP, align 8, !tbaa !23
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.070
  %i.av = load i64, ptr %i.au, align 8, !tbaa !15
  tail call fastcc void @CleanNet(i64 noundef %i.av)
  %i.aw = load ptr, ptr @BOT, align 8, !tbaa !23
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.070
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !15
  tail call fastcc void @CleanNet(i64 noundef %i.ay)
  br label %bb.q

bb.h:                                             ; preds = %bb.f, %bb.e
  br i1 %i.u, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.az = load i64, ptr @channelTracks, align 8, !tbaa !15 ; 3 uses
  %i.ba = icmp ult i64 %i.o, %i.az
  br i1 %i.ba, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bb = load ptr, ptr @BOT, align 8, !tbaa !23
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.070
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !15
  %i.be = add i64 %i.az, 1
  %i.bf = add i64 %.070, -1
  %i.bg = add nuw i64 %i.o, 1
  %i.bh = tail call fastcc i32 @Maze2Mech(i64 noundef %i.bd, i64 noundef %.070, i64 noundef 0, i64 noundef %i.o, i64 noundef %i.be, i64 noundef %i.t, i64 noundef %i.bf, i64 noundef 1, i32 noundef -1, i64 noundef %i.bg, i64 noundef %i.az)
  %.not66 = icmp eq i32 %i.bh, 0
  br i1 %.not66, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 %.070
end_hunk_0
begin_hunk_1_@FindFreeHorzSeg:bb.a
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

bb.b:                                             ; preds = %.lr.ph, %bb.bk
  %i.f = phi i64 [ %i.a, %.lr.ph ], [ %i.su, %bb.bk ] ; 23 uses
  %.0154 = phi i64 [ 1, %.lr.ph ], [ %i.sv, %bb.bk ] ; 25 uses
  %.015153 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.bk ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0154 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !19
  %.not16 = icmp eq i8 %i.h, 0
  br i1 %.not16, label %bb.bk, label %bb.c

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
  %i.s = load i64, ptr %i.r, align 8, !tbaa !15   ; 22 uses
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
  %.0105371.i = phi i64 [ %i.ar, %.lr.ph.i ], [ %i.sg, %.loopexit353.i ] ; 18 uses
  %.pre274 = mul i64 %.0105371.i, %i.f            ; 3 uses
  br i1 %.not17.i.i, label %.lr.ph24.i139.i, label %.lr.ph.i131.i

.lr.ph.i131.i:                                    ; preds = %bb.j
  %i.aw = getelementptr i8, ptr %i.c, i64 %.pre274
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i131.i
  %.018.i132.i = phi i64 [ %.0154, %.lr.ph.i131.i ], [ %i.az, %bb.l ] ; 3 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 %.018.i132.i
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !19
  %.not14.i133.i = icmp eq i8 %i.ay, 0
  br i1 %.not14.i133.i, label %bb.l, label %._crit_edge.loopexit.i134.i

bb.l:                                             ; preds = %bb.k
  %i.az = add i64 %.018.i132.i, -1                ; 2 uses
  %.not.i144.i = icmp eq i64 %i.az, 0
  br i1 %.not.i144.i, label %._crit_edge.loopexit.i134.i, label %bb.k, !llvm.loop !4

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
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !19
  %.not16.i141.i = icmp eq i8 %i.bd, 0
  br i1 %.not16.i141.i, label %bb.n, label %FindFreeHorzSeg.exit145.i

bb.n:                                             ; preds = %bb.m
  %i.be = add i64 %.122.i140.i, 1                 ; 3 uses
  %.not15.i143.i = icmp ugt i64 %i.be, %i.f
  br i1 %.not15.i143.i, label %FindFreeHorzSeg.exit145.i, label %bb.m, !llvm.loop !5

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
  %.0106369.i = phi i64 [ %i.sf, %._crit_edge.i ], [ %.0.lcssa.i.i, %.preheader351.lr.ph.i ] ; 13 uses
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
  %.0367.i = phi i64 [ %i.se, %SegmentFree.exit.thread.i ], [ %.0.lcssa.i137.i, %.preheader351.i ] ; 13 uses
  %.not115.i = icmp eq i64 %.0367.i, %.0154
  %.not117.i = icmp eq i64 %.0106369.i, %.0367.i
  %or.cond129.i = or i1 %.not117.i, %.not115.i
  br i1 %or.cond129.i, label %SegmentFree.exit.thread.i, label %.preheader401.i

.preheader401.i:                                  ; preds = %.lr.ph.split.i, %bb.o
  %.052.i.i = phi i64 [ %i.by, %bb.o ], [ %.0154, %.lr.ph.split.i ] ; 2 uses
  %.03851.i.i = phi i64 [ %i.bx, %bb.o ], [ 0, %.lr.ph.split.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 %.052.i.i
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !19
  %.not46.i.i = icmp eq i8 %i.bw, 0
  br i1 %.not46.i.i, label %bb.o, label %SegmentFree.exit.thread.i

bb.o:                                             ; preds = %.preheader401.i
  %i.bx = add i64 %.03851.i.i, 1                  ; 2 uses
  %i.by = add i64 %.052.i.i, %i.f
  %.not45.i.i = icmp ugt i64 %i.bx, %.0107377.i
  br i1 %.not45.i.i, label %.preheader399.i, label %.preheader401.i, !llvm.loop !2

.preheader399.i:                                  ; preds = %bb.o, %bb.p
  %.150.i.i = phi i64 [ %i.cc, %bb.p ], [ %i.bo, %bb.o ] ; 2 uses
  %.03949.i.i = phi i64 [ %i.cb, %bb.p ], [ %i.bn, %bb.o ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 %.150.i.i
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !19
  %.not44.i.i = icmp eq i8 %i.ca, 0
  br i1 %.not44.i.i, label %bb.p, label %SegmentFree.exit.thread.i

bb.p:                                             ; preds = %.preheader399.i
  %i.cb = add i64 %.03949.i.i, 1                  ; 2 uses
  %i.cc = add i64 %.150.i.i, 1
  %.not.i148.i = icmp ugt i64 %i.cb, %i.bp
  br i1 %.not.i148.i, label %SegmentFree.exit153.i, label %.preheader399.i, !llvm.loop !3

SegmentFree.exit153.i:                            ; preds = %bb.p, %bb.q
  %.052.i159.i = phi i64 [ %i.cg, %bb.q ], [ %i.bq, %bb.p ] ; 2 uses
  %.03851.i160.i = phi i64 [ %i.cf, %bb.q ], [ %i.at, %bb.p ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 %.052.i159.i
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !19
  %.not46.i161.i = icmp eq i8 %i.ce, 0
  br i1 %.not46.i161.i, label %bb.q, label %SegmentFree.exit.thread.i

bb.q:                                             ; preds = %SegmentFree.exit153.i
  %i.cf = add i64 %.03851.i160.i, 1               ; 2 uses
  %i.cg = add i64 %.052.i159.i, %i.f
  %.not45.i162.i = icmp ugt i64 %i.cf, %i.av
  br i1 %.not45.i162.i, label %SegmentFree.exit163.i, label %SegmentFree.exit153.i, !llvm.loop !2

SegmentFree.exit163.i:                            ; preds = %bb.q
  %i.ch = load i64, ptr %i.br, align 8, !tbaa !15 ; 3 uses
  %.not.i164.i = icmp eq i64 %i.ch, 0
  br i1 %.not.i164.i, label %HasVCV.exit.thread.i, label %bb.r

bb.r:                                             ; preds = %SegmentFree.exit163.i
  %i.ci = load i64, ptr %i.bs, align 8, !tbaa !15 ; 3 uses
  %.not7.i.i = icmp eq i64 %i.ci, 0
  %.not8.i.i = icmp eq i64 %i.ch, %i.ci
  %or.cond.i.i = or i1 %.not7.i.i, %.not8.i.i
  br i1 %or.cond.i.i, label %HasVCV.exit.thread.i, label %HasVCV.exit.i

HasVCV.exit.i:                                    ; preds = %bb.r
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ch
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !15
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ci
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !15
  %.not324.i = icmp ugt i64 %i.ck, %i.cm
  br i1 %.not324.i, label %SegmentFree.exit.thread.i, label %HasVCV.exit.thread.i

HasVCV.exit.thread.i:                             ; preds = %HasVCV.exit.i, %bb.r, %SegmentFree.exit163.i
  %i.cn = load i64, ptr %i.z, align 8, !tbaa !15  ; 2 uses
  %.not.i165.i = icmp ult i64 %i.bn, %i.cn
  %i.co = load i64, ptr %i.ab, align 8, !tbaa !15 ; 3 uses
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
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !19
  %.not46.i.i.i = icmp eq i8 %i.ct, 0
  br i1 %.not46.i.i.i, label %bb.v, label %SegmentFree.exit.thread.i

bb.v:                                             ; preds = %.preheader.i
  %i.cu = add i64 %.03851.i.i.i, 1                ; 2 uses
  %i.cv = add i64 %.052.i.i.i, %i.f
  %.not45.i.i.i = icmp ugt i64 %i.cu, %i.n
  br i1 %.not45.i.i.i, label %SegmentFree.exit.i.i, label %.preheader.i, !llvm.loop !2

.preheader335.i:                                  ; preds = %bb.u, %bb.w
  %.150.i.i.i = phi i64 [ %i.cz, %bb.w ], [ %i.bu, %bb.u ] ; 2 uses
  %.03949.i.i.i = phi i64 [ %i.cy, %bb.w ], [ %i.bn, %bb.u ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.c, i64 %.150.i.i.i
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !19
  %.not44.i.i.i = icmp eq i8 %i.cx, 0
  br i1 %.not44.i.i.i, label %bb.w, label %SegmentFree.exit.thread.i

bb.w:                                             ; preds = %.preheader335.i
  %i.cy = add i64 %.03949.i.i.i, 1                ; 2 uses
  %i.cz = add i64 %.150.i.i.i, 1
  %.not.i.i.i = icmp ugt i64 %i.cy, %i.cq
  br i1 %.not.i.i.i, label %SegmentFree.exit.i.i, label %.preheader335.i, !llvm.loop !3

SegmentFree.exit.i.i:                             ; preds = %bb.w, %bb.v
  %i.da = add i64 %i.co, 1                        ; 3 uses
  %i.db = icmp eq i64 %i.da, %i.bp
  br i1 %i.db, label %.preheader382.i, label %bb.y

.preheader382.i:                                  ; preds = %SegmentFree.exit.i.i, %bb.x
  %.052.i61.i.i = phi i64 [ %i.df, %bb.x ], [ %i.bt, %SegmentFree.exit.i.i ] ; 2 uses
  %.03851.i62.i.i = phi i64 [ %i.de, %bb.x ], [ %i.n, %SegmentFree.exit.i.i ]
  %i.dc = getelementptr inbounds nuw i8, ptr %i.c, i64 %.052.i61.i.i
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !19
  %.not46.i63.i.i = icmp eq i8 %i.dd, 0
  br i1 %.not46.i63.i.i, label %bb.x, label %SegmentFree.exit.thread.i

bb.x:                                             ; preds = %.preheader382.i
  %i.de = add i64 %.03851.i62.i.i, 1              ; 2 uses
  %i.df = add i64 %.052.i61.i.i, %i.f
  %.not45.i64.i.i = icmp ugt i64 %i.de, %i.n
  br i1 %.not45.i64.i.i, label %ExtendOK.exit.i.preheader, label %.preheader382.i, !llvm.loop !2

bb.y:                                             ; preds = %SegmentFree.exit.i.i
  %0 = tail call i64 @llvm.umin.i64(i64 %i.da, i64 %i.bp) ; 2 uses
  %i.dg = add i64 %0, %i.ac
  %1 = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.bp)
  br label %bb.z

bb.z:                                             ; preds = %bb.aa, %bb.y
  %.150.i56.i.i = phi i64 [ %i.dg, %bb.y ], [ %i.dk, %bb.aa ] ; 2 uses
  %.03949.i57.i.i = phi i64 [ %0, %bb.y ], [ %i.dj, %bb.aa ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.c, i64 %.150.i56.i.i
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !19
  %.not44.i58.i.i = icmp eq i8 %i.di, 0
  br i1 %.not44.i58.i.i, label %bb.aa, label %SegmentFree.exit.thread.i

bb.aa:                                            ; preds = %bb.z
  %i.dj = add i64 %.03949.i57.i.i, 1              ; 2 uses
  %i.dk = add i64 %.150.i56.i.i, 1
  %.not.i60.i.i = icmp ugt i64 %i.dj, %1
  br i1 %.not.i60.i.i, label %ExtendOK.exit.i.preheader, label %bb.z, !llvm.loop !3

bb.ab:                                            ; preds = %bb.t
  br i1 %i.cr, label %.preheader338.i, label %.preheader341.i

.preheader338.i:                                  ; preds = %bb.ab, %bb.ac
  %.052.i71.i.i = phi i64 [ %i.do, %bb.ac ], [ %i.bu, %bb.ab ] ; 2 uses
  %.03851.i72.i.i = phi i64 [ %i.dn, %bb.ac ], [ %i.n, %bb.ab ]
  %i.dl = getelementptr inbounds nuw i8, ptr %i.c, i64 %.052.i71.i.i
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !19
  %.not46.i73.i.i = icmp eq i8 %i.dm, 0
  br i1 %.not46.i73.i.i, label %bb.ac, label %SegmentFree.exit.thread.i

bb.ac:                                            ; preds = %.preheader338.i
  %i.dn = add i64 %.03851.i72.i.i, 1              ; 2 uses
  %i.do = add i64 %.052.i71.i.i, %i.f
  %.not45.i74.i.i = icmp ugt i64 %i.dn, %i.n
  br i1 %.not45.i74.i.i, label %ExtendOK.exit.i.preheader, label %.preheader338.i, !llvm.loop !2

.preheader341.i:                                  ; preds = %bb.ab, %bb.ad
  %.150.i66.i.i = phi i64 [ %i.ds, %bb.ad ], [ %i.bu, %bb.ab ] ; 2 uses
  %.03949.i67.i.i = phi i64 [ %i.dr, %bb.ad ], [ %i.bn, %bb.ab ]
  %i.dp = getelementptr inbounds nuw i8, ptr %i.c, i64 %.150.i66.i.i
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !19
  %.not44.i68.i.i = icmp eq i8 %i.dq, 0
  br i1 %.not44.i68.i.i, label %bb.ad, label %SegmentFree.exit.thread.i

bb.ad:                                            ; preds = %.preheader341.i
  %i.dr = add i64 %.03949.i67.i.i, 1              ; 2 uses
  %i.ds = add i64 %.150.i66.i.i, 1
  %.not.i70.i.i = icmp ugt i64 %i.dr, %i.cq
  br i1 %.not.i70.i.i, label %ExtendOK.exit.i.preheader, label %.preheader341.i, !llvm.loop !3

bb.ae:                                            ; preds = %bb.s
  %i.dt = add nuw i64 %i.co, 1                    ; 3 uses
  %i.du = icmp eq i64 %i.dt, %i.bp
  br i1 %i.du, label %.preheader393.i, label %bb.ag

.preheader393.i:                                  ; preds = %bb.ae, %bb.af
  %.052.i81.i.i = phi i64 [ %i.dy, %bb.af ], [ %i.bt, %bb.ae ] ; 2 uses
  %.03851.i82.i.i = phi i64 [ %i.dx, %bb.af ], [ %i.n, %bb.ae ]
  %i.dv = getelementptr inbounds nuw i8, ptr %i.c, i64 %.052.i81.i.i
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !19
  %.not46.i83.i.i = icmp eq i8 %i.dw, 0
  br i1 %.not46.i83.i.i, label %bb.af, label %SegmentFree.exit.thread.i

bb.af:                                            ; preds = %.preheader393.i
  %i.dx = add i64 %.03851.i82.i.i, 1              ; 2 uses
  %i.dy = add i64 %.052.i81.i.i, %i.f
  %.not45.i84.i.i = icmp ugt i64 %i.dx, %i.n
  br i1 %.not45.i84.i.i, label %ExtendOK.exit.i.preheader, label %.preheader393.i, !llvm.loop !2

bb.ag:                                            ; preds = %bb.ae
  %i.dz = add i64 %i.dt, %i.ac
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ai, %bb.ag
  %.150.i76.i.i = phi i64 [ %i.dz, %bb.ag ], [ %i.ed, %bb.ai ] ; 2 uses
  %.03949.i77.i.i = phi i64 [ %i.dt, %bb.ag ], [ %i.ec, %bb.ai ]
  %i.ea = getelementptr inbounds nuw i8, ptr %i.c, i64 %.150.i76.i.i
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !19
  %.not44.i78.i.i = icmp eq i8 %i.eb, 0
  br i1 %.not44.i78.i.i, label %bb.ai, label %SegmentFree.exit.thread.i

bb.ai:                                            ; preds = %bb.ah
  %i.ec = add i64 %.03949.i77.i.i, 1              ; 2 uses
  %i.ed = add i64 %.150.i76.i.i, 1
  %.not.i80.i.i = icmp ugt i64 %i.ec, %i.bp
  br i1 %.not.i80.i.i, label %ExtendOK.exit.i.preheader, label %bb.ah, !llvm.loop !3

ExtendOK.exit.i.preheader:                        ; preds = %bb.ai, %bb.af, %bb.ad, %bb.ac, %bb.aa, %bb.x, %bb.s
  br label %ExtendOK.exit.i

ExtendOK.exit.i:                                  ; preds = %ExtendOK.exit.i.preheader, %bb.aj
  %.052.i171.i = phi i64 [ %i.eh, %bb.aj ], [ %i.bi, %ExtendOK.exit.i.preheader ] ; 2 uses
  %.03851.i172.i = phi i64 [ %i.eg, %bb.aj ], [ %i.bg, %ExtendOK.exit.i.preheader ]
  %i.ee = getelementptr inbounds nuw i8, ptr %i.d, i64 %.052.i171.i
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !19
  %.not46.i173.i = icmp eq i8 %i.ef, 0
  br i1 %.not46.i173.i, label %bb.aj, label %SegmentFree.exit.thread.i

bb.aj:                                            ; preds = %ExtendOK.exit.i
  %i.eg = add i64 %.03851.i172.i, 1               ; 2 uses
  %i.eh = add i64 %.052.i171.i, %i.f
  %.not45.i174.i = icmp ugt i64 %i.eg, %i.bj
  br i1 %.not45.i174.i, label %SegmentFree.exit175.i, label %ExtendOK.exit.i, !llvm.loop !2

SegmentFree.exit175.i:                            ; preds = %bb.aj
  %i.ei = tail call i64 @llvm.umin.i64(i64 %.0154, i64 %.0367.i) ; 14 uses
  %i.ej = add i64 %i.ei, %.pre274
  %i.ek = tail call i64 @llvm.umax.i64(i64 %.0154, i64 %.0367.i) ; 18 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.al, %SegmentFree.exit175.i
  %.150.i176.i = phi i64 [ %i.ej, %SegmentFree.exit175.i ], [ %i.eo, %bb.al ] ; 2 uses
  %.03949.i177.i = phi i64 [ %i.ei, %SegmentFree.exit175.i ], [ %i.en, %bb.al ]
  %i.el = getelementptr inbounds nuw i8, ptr %i.c, i64 %.150.i176.i
  %i.em = load i8, ptr %i.el, align 1, !tbaa !19
  %.not44.i178.i = icmp eq i8 %i.em, 0
  br i1 %.not44.i178.i, label %bb.al, label %SegmentFree.exit.thread.i

bb.al:                                            ; preds = %bb.ak
  %i.en = add i64 %.03949.i177.i, 1               ; 2 uses
  %i.eo = add i64 %.150.i176.i, 1
  %.not.i180.i = icmp ugt i64 %i.en, %i.ek
  br i1 %.not.i180.i, label %SegmentFree.exit185.i, label %bb.ak, !llvm.loop !3

SegmentFree.exit185.i:                            ; preds = %bb.al
  %i.ep = add i64 %.0367.i, %i.bl
  br label %bb.am

bb.am:                                            ; preds = %bb.an, %SegmentFree.exit185.i
  %.052.i191.i = phi i64 [ %i.ep, %SegmentFree.exit185.i ], [ %i.et, %bb.an ] ; 2 uses
  %.03851.i192.i = phi i64 [ %i.bk, %SegmentFree.exit185.i ], [ %i.es, %bb.an ]
  %i.eq = getelementptr inbounds nuw i8, ptr %i.d, i64 %.052.i191.i
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !19
  %.not46.i193.i = icmp eq i8 %i.er, 0
  br i1 %.not46.i193.i, label %bb.an, label %SegmentFree.exit.thread.i

bb.an:                                            ; preds = %bb.am
  %i.es = add i64 %.03851.i192.i, 1               ; 2 uses
  %i.et = add i64 %.052.i191.i, %i.f
  %.not45.i194.i = icmp ugt i64 %i.es, %i.bm
  br i1 %.not45.i194.i, label %SegmentFree.exit195.i, label %bb.am, !llvm.loop !2

SegmentFree.exit195.i:                            ; preds = %bb.an
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.0367.i
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !15 ; 3 uses
  %.not.i196.i = icmp eq i64 %i.ev, 0
  br i1 %.not.i196.i, label %HasVCV.exit200.thread.i, label %bb.ao

bb.ao:                                            ; preds = %SegmentFree.exit195.i
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.0367.i
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !15 ; 3 uses
  %.not7.i197.i = icmp eq i64 %i.ex, 0
  %.not8.i198.i = icmp eq i64 %i.ev, %i.ex
  %or.cond.i199.i = or i1 %.not7.i197.i, %.not8.i198.i
  br i1 %or.cond.i199.i, label %HasVCV.exit200.thread.i, label %HasVCV.exit200.i

HasVCV.exit200.i:                                 ; preds = %bb.ao
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ev
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !15
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ex
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !15
  %.not325.i = icmp ugt i64 %i.ez, %i.fb
  br i1 %.not325.i, label %SegmentFree.exit.thread.i, label %HasVCV.exit200.thread.i

HasVCV.exit200.thread.i:                          ; preds = %HasVCV.exit200.i, %bb.ao, %SegmentFree.exit195.i
  %i.fc = load i64, ptr %i.ae, align 8, !tbaa !15 ; 2 uses
  %.not.i18 = icmp ult i64 %i.ei, %i.fc
  %i.fd = load i64, ptr %i.af, align 8, !tbaa !15 ; 3 uses
  %i.fe = icmp ugt i64 %i.ek, %i.fd               ; 2 uses
  br i1 %.not.i18, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %HasVCV.exit200.thread.i
  br i1 %i.fe, label %bb.bd, label %ExtendOK.exit

bb.aq:                                            ; preds = %HasVCV.exit200.thread.i
  %i.ff = add i64 %i.fc, -1                       ; 3 uses
  %i.fg = icmp eq i64 %i.ei, %i.ff                ; 2 uses
  %i.fh = add i64 %i.ei, %i.ag                    ; 4 uses
  br i1 %i.fe, label %bb.ar, label %bb.ba

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.fg, label %.preheader, label %.preheader34

.preheader:                                       ; preds = %bb.ar, %bb.as
  %.052.i.i23 = phi i64 [ %i.fl, %bb.as ], [ %i.fh, %bb.ar ] ; 2 uses
  %.03851.i.i24 = phi i64 [ %i.fk, %bb.as ], [ %i.s, %bb.ar ]
  %i.fi = getelementptr inbounds nuw i8, ptr %i.c, i64 %.052.i.i23
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !19
  %.not46.i.i25 = icmp eq i8 %i.fj, 0
  br i1 %.not46.i.i25, label %bb.as, label %SegmentFree.exit.thread.i

bb.as:                                            ; preds = %.preheader
  %i.fk = add i64 %.03851.i.i24, 1                ; 2 uses
  %i.fl = add i64 %.052.i.i23, %i.f
  %.not45.i.i26 = icmp ugt i64 %i.fk, %i.s
  br i1 %.not45.i.i26, label %SegmentFree.exit.i, label %.preheader, !llvm.loop !2

.preheader34:                                     ; preds = %bb.ar, %bb.at
  %.150.i.i19 = phi i64 [ %i.fp, %bb.at ], [ %i.fh, %bb.ar ] ; 2 uses
  %.03949.i.i20 = phi i64 [ %i.fo, %bb.at ], [ %i.ei, %bb.ar ]
  %i.fm = getelementptr inbounds nuw i8, ptr %i.c, i64 %.150.i.i19
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !19
  %.not44.i.i21 = icmp eq i8 %i.fn, 0
  br i1 %.not44.i.i21, label %bb.at, label %SegmentFree.exit.thread.i

bb.at:                                            ; preds = %.preheader34
  %i.fo = add i64 %.03949.i.i20, 1                ; 2 uses
  %i.fp = add i64 %.150.i.i19, 1
  %.not.i.i22 = icmp ugt i64 %i.fo, %i.ff
  br i1 %.not.i.i22, label %SegmentFree.exit.i, label %.preheader34, !llvm.loop !3

SegmentFree.exit.i:                               ; preds = %bb.at, %bb.as
  %i.fq = add i64 %i.fd, 1                        ; 3 uses
  %i.fr = icmp eq i64 %i.fq, %i.ek
  br i1 %i.fr, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %SegmentFree.exit.i
  %i.fs = add i64 %i.ek, %i.ag
  br label %bb.av

bb.av:                                            ; preds = %bb.aw, %bb.au
  %.052.i61.i = phi i64 [ %i.fs, %bb.au ], [ %i.fw, %bb.aw ] ; 2 uses
  %.03851.i62.i = phi i64 [ %i.s, %bb.au ], [ %i.fv, %bb.aw ]
  %i.ft = getelementptr inbounds nuw i8, ptr %i.c, i64 %.052.i61.i
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !19
  %.not46.i63.i = icmp eq i8 %i.fu, 0
  br i1 %.not46.i63.i, label %bb.aw, label %SegmentFree.exit.thread.i

bb.aw:                                            ; preds = %bb.av
  %i.fv = add i64 %.03851.i62.i, 1                ; 2 uses
  %i.fw = add i64 %.052.i61.i, %i.f
  %.not45.i64.i = icmp ugt i64 %i.fv, %i.s
  br i1 %.not45.i64.i, label %ExtendOK.exit, label %bb.av, !llvm.loop !2

bb.ax:                                            ; preds = %SegmentFree.exit.i
  %2 = tail call i64 @llvm.umin.i64(i64 %i.fq, i64 %i.ek) ; 2 uses
  %i.fx = add i64 %2, %i.ag
  %3 = tail call i64 @llvm.umax.i64(i64 %i.fq, i64 %i.ek)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.az, %bb.ax
  %.150.i56.i = phi i64 [ %i.fx, %bb.ax ], [ %i.gb, %bb.az ] ; 2 uses
  %.03949.i57.i = phi i64 [ %2, %bb.ax ], [ %i.ga, %bb.az ]
  %i.fy = getelementptr inbounds nuw i8, ptr %i.c, i64 %.150.i56.i
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !19
  %.not44.i58.i = icmp eq i8 %i.fz, 0
  br i1 %.not44.i58.i, label %bb.az, label %SegmentFree.exit.thread.i

bb.az:                                            ; preds = %bb.ay
  %i.ga = add i64 %.03949.i57.i, 1                ; 2 uses
  %i.gb = add i64 %.150.i56.i, 1
  %.not.i60.i = icmp ugt i64 %i.ga, %3
  br i1 %.not.i60.i, label %ExtendOK.exit, label %bb.ay, !llvm.loop !3

bb.ba:                                            ; preds = %bb.aq
  br i1 %i.fg, label %.preheader37, label %.preheader40

.preheader37:                                     ; preds = %bb.ba, %bb.bb
  %.052.i71.i = phi i64 [ %i.gf, %bb.bb ], [ %i.fh, %bb.ba ] ; 2 uses
  %.03851.i72.i = phi i64 [ %i.ge, %bb.bb ], [ %i.s, %bb.ba ]
  %i.gc = getelementptr inbounds nuw i8, ptr %i.c, i64 %.052.i71.i
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !19
  %.not46.i73.i = icmp eq i8 %i.gd, 0
  br i1 %.not46.i73.i, label %bb.bb, label %SegmentFree.exit.thread.i

bb.bb:                                            ; preds = %.preheader37
  %i.ge = add i64 %.03851.i72.i, 1                ; 2 uses
  %i.gf = add i64 %.052.i71.i, %i.f
  %.not45.i74.i = icmp ugt i64 %i.ge, %i.s
  br i1 %.not45.i74.i, label %ExtendOK.exit, label %.preheader37, !llvm.loop !2

.preheader40:                                     ; preds = %bb.ba, %bb.bc
  %.150.i66.i = phi i64 [ %i.gj, %bb.bc ], [ %i.fh, %bb.ba ] ; 2 uses
  %.03949.i67.i = phi i64 [ %i.gi, %bb.bc ], [ %i.ei, %bb.ba ]
  %i.gg = getelementptr inbounds nuw i8, ptr %i.c, i64 %.150.i66.i
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !19
  %.not44.i68.i = icmp eq i8 %i.gh, 0
  br i1 %.not44.i68.i, label %bb.bc, label %SegmentFree.exit.thread.i

bb.bc:                                            ; preds = %.preheader40
  %i.gi = add i64 %.03949.i67.i, 1                ; 2 uses
  %i.gj = add i64 %.150.i66.i, 1
  %.not.i70.i = icmp ugt i64 %i.gi, %i.ff
  br i1 %.not.i70.i, label %ExtendOK.exit, label %.preheader40, !llvm.loop !3

bb.bd:                                            ; preds = %bb.ap
  %i.gk = add nuw i64 %i.fd, 1                    ; 3 uses
  %i.gl = icmp eq i64 %i.gk, %i.ek
  br i1 %i.gl, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  %i.gm = add i64 %i.ek, %i.ag
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bg, %bb.be
  %.052.i81.i = phi i64 [ %i.gm, %bb.be ], [ %i.gq, %bb.bg ] ; 2 uses
  %.03851.i82.i = phi i64 [ %i.s, %bb.be ], [ %i.gp, %bb.bg ]
  %i.gn = getelementptr inbounds nuw i8, ptr %i.c, i64 %.052.i81.i
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !19
  %.not46.i83.i = icmp eq i8 %i.go, 0
  br i1 %.not46.i83.i, label %bb.bg, label %SegmentFree.exit.thread.i

bb.bg:                                            ; preds = %bb.bf
  %i.gp = add i64 %.03851.i82.i, 1                ; 2 uses
  %i.gq = add i64 %.052.i81.i, %i.f
  %.not45.i84.i = icmp ugt i64 %i.gp, %i.s
  br i1 %.not45.i84.i, label %ExtendOK.exit, label %bb.bf, !llvm.loop !2

bb.bh:                                            ; preds = %bb.bd
  %i.gr = add i64 %i.gk, %i.ag
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bj, %bb.bh
  %.150.i76.i = phi i64 [ %i.gr, %bb.bh ], [ %i.gv, %bb.bj ] ; 2 uses
  %.03949.i77.i = phi i64 [ %i.gk, %bb.bh ], [ %i.gu, %bb.bj ]
  %i.gs = getelementptr inbounds nuw i8, ptr %i.c, i64 %.150.i76.i
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !19
  %.not44.i78.i = icmp eq i8 %i.gt, 0
  br i1 %.not44.i78.i, label %bb.bj, label %SegmentFree.exit.thread.i

bb.bj:                                            ; preds = %bb.bi
  %i.gu = add i64 %.03949.i77.i, 1                ; 2 uses
  %i.gv = add i64 %.150.i76.i, 1
  %.not.i80.i = icmp ugt i64 %i.gu, %i.ek
  br i1 %.not.i80.i, label %ExtendOK.exit, label %bb.bi, !llvm.loop !3

ExtendOK.exit:                                    ; preds = %bb.ap, %bb.bj, %bb.bg, %bb.bc, %bb.bb, %bb.az, %bb.aw
  %i.gw = getelementptr i8, ptr %i.d, i64 %.0154  ; 8 uses
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !19
  %i.gy = or i8 %i.gx, 8
  store i8 %i.gy, ptr %i.gw, align 1, !tbaa !19
  %i.gz = icmp ugt i64 %.0107377.i, 1
  br i1 %i.gz, label %.lr.ph62.i.i.preheader, label %.loopexit328.i

.lr.ph62.i.i.preheader:                           ; preds = %ExtendOK.exit
  %xtraiter = and i64 %.0107.in376.i, 1
  %i.ha = icmp eq i64 %.0107.in376.i, 1
  br i1 %i.ha, label %.lr.ph62.i.i.epil.preheader, label %.lr.ph62.i.i.preheader.new

.lr.ph62.i.i.preheader.new:                       ; preds = %.lr.ph62.i.i.preheader
  %unroll_iter = and i64 %.0107.in376.i, -2
  br label %.lr.ph62.i.i

.lr.ph62.i.i:                                     ; preds = %.lr.ph62.i.i, %.lr.ph62.i.i.preheader.new
  %.060.i.i = phi i64 [ 1, %.lr.ph62.i.i.preheader.new ], [ %.0.i202.i.1, %.lr.ph62.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph62.i.i.preheader.new ], [ %niter.next.1, %.lr.ph62.i.i ]
  %i.hb = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.hc = mul i64 %i.hb, %.060.i.i
  %gep.i.i = getelementptr i8, ptr %i.gw, i64 %i.hc ; 2 uses
  %i.hd = load i8, ptr %gep.i.i, align 1, !tbaa !19
  %i.he = or i8 %i.hd, 12
  store i8 %i.he, ptr %gep.i.i, align 1, !tbaa !19
  %.0.i202.i = add nuw i64 %.060.i.i, 1
  %i.hf = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.hg = mul i64 %i.hf, %.0.i202.i
  %gep.i.i.1 = getelementptr i8, ptr %i.gw, i64 %i.hg ; 2 uses
  %i.hh = load i8, ptr %gep.i.i.1, align 1, !tbaa !19
  %i.hi = or i8 %i.hh, 12
  store i8 %i.hi, ptr %gep.i.i.1, align 1, !tbaa !19
  %.0.i202.i.1 = add nuw i64 %.060.i.i, 2         ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit328.i.loopexit.unr-lcssa, label %.lr.ph62.i.i, !llvm.loop !0

.loopexit328.i.loopexit.unr-lcssa:                ; preds = %.lr.ph62.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit328.i, label %.lr.ph62.i.i.epil.preheader

.lr.ph62.i.i.epil.preheader:                      ; preds = %.loopexit328.i.loopexit.unr-lcssa, %.lr.ph62.i.i.preheader
  %.060.i.i.epil.init = phi i64 [ 1, %.lr.ph62.i.i.preheader ], [ %.0.i202.i.1, %.loopexit328.i.loopexit.unr-lcssa ]
  %lcmp.mod690 = trunc i64 %.0107.in376.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod690)
  %i.hj = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.hk = mul i64 %i.hj, %.060.i.i.epil.init
  %gep.i.i.epil = getelementptr i8, ptr %i.gw, i64 %i.hk ; 2 uses
  %i.hl = load i8, ptr %gep.i.i.epil, align 1, !tbaa !19
  %i.hm = or i8 %i.hl, 12
  store i8 %i.hm, ptr %gep.i.i.epil, align 1, !tbaa !19
  br label %.loopexit328.i

.loopexit328.i:                                   ; preds = %.lr.ph62.i.i.epil.preheader, %.loopexit328.i.loopexit.unr-lcssa, %ExtendOK.exit
  %i.hn = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.ho = mul i64 %i.hn, %.0107377.i
  %i.hp = getelementptr i8, ptr %i.d, i64 %i.ho
  %i.hq = getelementptr i8, ptr %i.hp, i64 %.0154 ; 2 uses
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !19
  %i.hs = or i8 %i.hr, 4
  store i8 %i.hs, ptr %i.hq, align 1, !tbaa !19
  %i.ht = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.hu = mul i64 %i.ht, %.0107377.i
  %i.hv = getelementptr i8, ptr %i.e, i64 %i.hu
  %i.hw = getelementptr i8, ptr %i.hv, i64 %.0154
  store i8 1, ptr %i.hw, align 1, !tbaa !19
  %i.hx = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.hy = mul i64 %i.hx, %.0107377.i
  %i.hz = getelementptr i8, ptr %i.c, i64 %i.hy
  %i.ia = getelementptr i8, ptr %i.hz, i64 %i.bn  ; 2 uses
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !19
  %i.ic = or i8 %i.ib, 2
  store i8 %i.ic, ptr %i.ia, align 1, !tbaa !19
  %.05157.i.i = add i64 %i.bn, 1                  ; 5 uses
  %i.id = icmp ult i64 %.05157.i.i, %i.bp         ; 2 uses
  br i1 %i.id, label %.lr.ph.i203.i.preheader, label %DrawSegment.exit210.i

.lr.ph.i203.i.preheader:                          ; preds = %.loopexit328.i
  %i.ie = xor i64 %i.bn, -1
  %i.if = add i64 %i.bp, %i.ie
  %i.ig = add i64 %i.bp, -2
  %i.ih = sub i64 %i.ig, %i.bn
  %xtraiter691 = and i64 %i.if, 3                 ; 2 uses
  %lcmp.mod692.not = icmp eq i64 %xtraiter691, 0
  br i1 %lcmp.mod692.not, label %.lr.ph.i203.i.prol.loopexit, label %.lr.ph.i203.i.prol

.lr.ph.i203.i.prol:                               ; preds = %.lr.ph.i203.i.preheader, %.lr.ph.i203.i.prol
  %.05158.i.i.prol = phi i64 [ %.051.i.i.prol, %.lr.ph.i203.i.prol ], [ %.05157.i.i, %.lr.ph.i203.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i203.i.prol ], [ 0, %.lr.ph.i203.i.preheader ]
  %i.ii = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.ij = mul i64 %i.ii, %.0107377.i
  %i.ik = getelementptr i8, ptr %i.c, i64 %i.ij
  %i.il = getelementptr i8, ptr %i.ik, i64 %.05158.i.i.prol
  store i8 3, ptr %i.il, align 1, !tbaa !19
  %.051.i.i.prol = add nuw i64 %.05158.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter691
  br i1 %prol.iter.cmp.not, label %.lr.ph.i203.i.prol.loopexit, label %.lr.ph.i203.i.prol, !llvm.loop !58

.lr.ph.i203.i.prol.loopexit:                      ; preds = %.lr.ph.i203.i.prol, %.lr.ph.i203.i.preheader
  %.05158.i.i.unr = phi i64 [ %.05157.i.i, %.lr.ph.i203.i.preheader ], [ %.051.i.i.prol, %.lr.ph.i203.i.prol ]
  %i.im = icmp ult i64 %i.ih, 3
  br i1 %i.im, label %DrawSegment.exit210.i, label %.lr.ph.i203.i

.lr.ph.i203.i:                                    ; preds = %.lr.ph.i203.i.prol.loopexit, %.lr.ph.i203.i
  %.05158.i.i = phi i64 [ %.051.i.i.3, %.lr.ph.i203.i ], [ %.05158.i.i.unr, %.lr.ph.i203.i.prol.loopexit ] ; 5 uses
  %i.in = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.io = mul i64 %i.in, %.0107377.i
  %i.ip = getelementptr i8, ptr %i.c, i64 %i.io
  %i.iq = getelementptr i8, ptr %i.ip, i64 %.05158.i.i
  store i8 3, ptr %i.iq, align 1, !tbaa !19
  %i.ir = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.is = mul i64 %i.ir, %.0107377.i
  %i.it = getelementptr i8, ptr %i.c, i64 %i.is
  %i.iu = getelementptr i8, ptr %i.it, i64 %.05158.i.i
  %i.iv = getelementptr i8, ptr %i.iu, i64 1
  store i8 3, ptr %i.iv, align 1, !tbaa !19
  %i.iw = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.ix = mul i64 %i.iw, %.0107377.i
  %i.iy = getelementptr i8, ptr %i.c, i64 %i.ix
  %i.iz = getelementptr i8, ptr %i.iy, i64 %.05158.i.i
  %i.ja = getelementptr i8, ptr %i.iz, i64 2
  store i8 3, ptr %i.ja, align 1, !tbaa !19
  %i.jb = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.jc = mul i64 %i.jb, %.0107377.i
  %i.jd = getelementptr i8, ptr %i.c, i64 %i.jc
  %i.je = getelementptr i8, ptr %i.jd, i64 %.05158.i.i
  %i.jf = getelementptr i8, ptr %i.je, i64 3
  store i8 3, ptr %i.jf, align 1, !tbaa !19
  %.051.i.i.3 = add nuw i64 %.05158.i.i, 4        ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %.051.i.i.3, %i.bp
  br i1 %exitcond.not.i.i.3, label %DrawSegment.exit210.i, label %.lr.ph.i203.i, !llvm.loop !1

DrawSegment.exit210.i:                            ; preds = %.lr.ph.i203.i.prol.loopexit, %.lr.ph.i203.i, %.loopexit328.i
  %i.jg = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.jh = mul i64 %i.jg, %.0107377.i
  %i.ji = getelementptr i8, ptr %i.c, i64 %i.jh
  %i.jj = getelementptr i8, ptr %i.ji, i64 %i.bp  ; 2 uses
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !19
  %i.jl = or i8 %i.jk, 1
  store i8 %i.jl, ptr %i.jj, align 1, !tbaa !19
  %i.jm = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.jn = mul i64 %i.jm, %.0107377.i
  %i.jo = getelementptr i8, ptr %i.e, i64 %i.jn
  %i.jp = getelementptr i8, ptr %i.jo, i64 %.0106369.i
  store i8 1, ptr %i.jp, align 1, !tbaa !19
  %i.jq = tail call i64 @llvm.umin.i64(i64 %.0107377.i, i64 %i.n) ; 5 uses
  %i.jr = load i64, ptr @channelColumns, align 8, !tbaa !15
  %i.js = mul i64 %i.jr, %i.jq
  %i.jt = getelementptr i8, ptr %i.d, i64 %i.js
  %i.ju = getelementptr i8, ptr %i.jt, i64 %.0106369.i ; 2 uses
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !19
  %i.jw = or i8 %i.jv, 8
  store i8 %i.jw, ptr %i.ju, align 1, !tbaa !19
  %i.jx = tail call i64 @llvm.umax.i64(i64 %.0107377.i, i64 %i.n) ; 5 uses
  %invariant.gep.i218.i = getelementptr i8, ptr %i.d, i64 %.0106369.i ; 3 uses
  %.059.i219.i = add i64 %i.jq, 1                 ; 3 uses
end_hunk_1
