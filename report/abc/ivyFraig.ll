Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ivyFraig?download=true
inline.NumInlined: 493
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@Ivy_FraigCreateClasses:bb.a
  %i.cc = icmp eq ptr %.val.i100, null
  br i1 %i.cc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr %i.x, ptr %i.cb, align 8, !tbaa !95
  br label %Ivy_NodeAddToClass.exit102

bb.n:                                             ; preds = %bb.l
  %i.cd = getelementptr i8, ptr %.056124, i64 40
  %.val10.i101 = load ptr, ptr %i.cd, align 8, !tbaa !127
  %i.ce = getelementptr inbounds nuw i8, ptr %.val10.i101, i64 48
  store ptr %i.x, ptr %i.ce, align 8, !tbaa !95
  br label %Ivy_NodeAddToClass.exit102

Ivy_NodeAddToClass.exit102:                       ; preds = %bb.m, %bb.n
  %i.cf = getelementptr inbounds nuw i8, ptr %.056124, i64 40
  store ptr %i.x, ptr %i.cf, align 8, !tbaa !127
  %i.cg = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store ptr %.056124, ptr %i.cg, align 8, !tbaa !127
  %i.ch = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  store ptr null, ptr %i.ch, align 8, !tbaa !95
  br label %bb.o

Ivy_NodeCompareSims.exit:                         ; preds = %bb.k
  %i.ci = getelementptr i8, ptr %.056124, i64 56
  %.056.val = load ptr, ptr %i.ci, align 8, !tbaa !190 ; 2 uses
  %.not67 = icmp eq ptr %.056.val, null
  br i1 %.not67, label %.critedge70, label %.lr.ph.i93, !llvm.loop !195

.critedge70:                                      ; preds = %Ivy_NodeCompareSims.exit, %Ivy_NodeHasZeroSim.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  store ptr %i.bu, ptr %i.cj, align 8, !tbaa !190
  store ptr %i.x, ptr %i.bt, align 8, !tbaa !150
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %Ivy_NodeAddToClass.exit102, %.critedge70, %bb.b, %Ivy_NodeAddToClass.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph128, label %bb.b, !llvm.loop !196

bb.p:                                             ; preds = %.lr.ph128, %.critedge
  %indvars.iv132 = phi i64 [ 0, %.lr.ph128 ], [ %indvars.iv.next133, %.critedge ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.val72, i64 %indvars.iv132
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !53 ; 9 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val76 = load i32, ptr %i.cl, align 8, !tbaa !122
  %.not116 = icmp eq i32 %.val76, 0
  br i1 %.not116, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cn = getelementptr i8, ptr %i.cl, i64 8
  %.val77 = load i32, ptr %i.cn, align 8
  %i.co = and i32 %.val77, 15
  switch i32 %i.co, label %.critedge [
    i32 6, label %bb.s
    i32 5, label %bb.s
    i32 1, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r, %bb.r, %bb.r, %bb.q
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 56 ; 2 uses
  store ptr null, ptr %i.cp, align 8, !tbaa !190
  %i.cq = getelementptr i8, ptr %i.cl, i64 40     ; 2 uses
  %.val84 = load ptr, ptr %i.cq, align 8, !tbaa !127 ; 2 uses
  %i.cr = icmp eq ptr %.val84, null
  br i1 %i.cr, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cs = getelementptr i8, ptr %.val84, i64 48
  %.val82 = load ptr, ptr %i.cs, align 8, !tbaa !95
  %.not63 = icmp eq ptr %.val82, null
  br i1 %.not63, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  store ptr null, ptr %i.cq, align 8, !tbaa !127
  %i.ct = load ptr, ptr %i.t, align 8, !tbaa !188
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store ptr %i.cl, ptr %i.t, align 8, !tbaa !188
  br label %Ivy_FraigAddClass.exit

bb.w:                                             ; preds = %bb.u
  %i.cv = load ptr, ptr %i.u, align 8, !tbaa !189 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 56
  store ptr %i.cl, ptr %i.cw, align 8, !tbaa !190
  br label %Ivy_FraigAddClass.exit

Ivy_FraigAddClass.exit:                           ; preds = %bb.v, %bb.w
  %.sink.i = phi ptr [ null, %bb.v ], [ %i.cv, %bb.w ]
  store ptr %i.cl, ptr %i.u, align 8, !tbaa !189
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cl, i64 64
  store ptr %.sink.i, ptr %i.cx, align 8, !tbaa !191
  store ptr null, ptr %i.cp, align 8, !tbaa !190
  %i.cy = load i32, ptr %i.v, align 8, !tbaa !192
  %i.cz = add nsw i32 %i.cy, 1
  store i32 %i.cz, ptr %i.v, align 8, !tbaa !192
  br label %.critedge

.critedge:                                        ; preds = %bb.r, %Ivy_FraigAddClass.exit, %bb.p, %bb.t, %bb.s
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %exitcond136.not = icmp eq i64 %indvars.iv.next133, %wide.trip.count135
  br i1 %exitcond136.not, label %.critedge2, label %bb.p, !llvm.loop !197

.critedge2:                                       ; preds = %.critedge, %bb.a
  %.not = icmp eq ptr %calloc, null
  br i1 %.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.critedge2
  tail call void @free(ptr noundef nonnull %calloc) #28
  br label %bb.y

bb.y:                                             ; preds = %.critedge2, %bb.x
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -2147483647, -2147483648) i32 @Ivy_FraigRefineClass_rec(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 48         ; 2 uses
  %.047102130 = load ptr, ptr %i.a, align 8, !tbaa !95 ; 2 uses
  %cond103131 = icmp eq ptr %.047102130, null
  br i1 %cond103131, label %.loopexit90, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.g = load i32, ptr %i.b, align 8, !tbaa !97   ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.i.us.preheader, label %.loopexit90

.lr.ph.i.us.preheader:                            ; preds = %.lr.ph.lr.ph, %tailrecurse
  %i.i = phi i32 [ %i.cu, %tailrecurse ], [ %i.g, %.lr.ph.lr.ph ] ; 3 uses
  %accumulator.tr132175 = phi i32 [ %i.ct, %tailrecurse ], [ 0, %.lr.ph.lr.ph ] ; 3 uses
  %.tr88133174 = phi ptr [ %.047105.us, %tailrecurse ], [ %1, %.lr.ph.lr.ph ] ; 9 uses
  %i.j = phi ptr [ %i.aw, %tailrecurse ], [ %i.a, %.lr.ph.lr.ph ]
  %.047102134173 = phi ptr [ %.047.val, %tailrecurse ], [ %.047102130, %.lr.ph.lr.ph ]
  %.val10.i171.pn.in = getelementptr i8, ptr %.tr88133174, i64 32
  %.val10.i171.pn = load ptr, ptr %.val10.i171.pn.in, align 8, !tbaa !104
  %i.k = getelementptr inbounds nuw i8, ptr %.val10.i171.pn, i64 32 ; 3 uses
  %wide.trip.count.i176 = zext nneg i32 %i.i to i64
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.preheader, %.loopexit89.us
  %.047105.us = phi ptr [ %.047.us, %.loopexit89.us ], [ %.047102134173, %.lr.ph.i.us.preheader ] ; 22 uses
  %.045104.us = phi ptr [ %.047105.us, %.loopexit89.us ], [ %.tr88133174, %.lr.ph.i.us.preheader ] ; 3 uses
  %i.l = getelementptr i8, ptr %.047105.us, i64 32
  %.val.i.us = load ptr, ptr %i.l, align 8, !tbaa !104
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i.us, i64 32 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.us
  %indvars.iv.i.us = phi i64 [ 0, %.lr.ph.i.us ], [ %indvars.iv.next.i.us, %bb.c ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i.us
  %i.o = load i32, ptr %i.n, align 4, !tbaa !39
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i.us
  %i.q = load i32, ptr %i.p, align 4, !tbaa !39
  %.not.i.us = icmp eq i32 %i.o, %i.q
  br i1 %.not.i.us, label %bb.c, label %Ivy_NodeCompareSims.exit.split.us

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i176
  br i1 %exitcond.not.i.us, label %.loopexit89.us, label %bb.b, !llvm.loop !164

.loopexit89.us:                                   ; preds = %bb.c
  %i.r = getelementptr i8, ptr %.047105.us, i64 48
  %.047.us = load ptr, ptr %i.r, align 8, !tbaa !95 ; 2 uses
  %cond.us = icmp eq ptr %.047.us, null
  br i1 %cond.us, label %.loopexit90, label %.lr.ph.i.us, !llvm.loop !198

Ivy_NodeCompareSims.exit.split.us:                ; preds = %bb.b
  %i.s = load ptr, ptr %0, align 8, !tbaa !86
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i32, ptr %i.t, align 8, !tbaa !199
  %.not50 = icmp eq i32 %i.u, 0
  br i1 %.not50, label %Ivy_FraigAddToPatScores.exit.thread, label %.lr.ph.i58

.lr.ph.i58:                                       ; preds = %Ivy_NodeCompareSims.exit.split.us, %.loopexit.i
  %i.v = phi i32 [ %i.ar, %.loopexit.i ], [ %i.i, %Ivy_NodeCompareSims.exit.split.us ]
  %indvars.iv6.i = phi i64 [ %indvars.iv.next7.i, %.loopexit.i ], [ 0, %Ivy_NodeCompareSims.exit.split.us ] ; 4 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv6.i
  %i.x = load i32, ptr %i.w, align 4, !tbaa !39   ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv6.i
  %i.z = load i32, ptr %i.y, align 4, !tbaa !39   ; 2 uses
  %i.aa = xor i32 %i.z, %i.x                      ; 2 uses
  %i.ab = icmp eq i32 %i.x, %i.z
  br i1 %i.ab, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i58
  %i.ac = shl nuw nsw i64 %indvars.iv6.i, 5
  %2 = and i64 %i.ac, 4294967264                  ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.preheader.i
  %indvars.iv.i59 = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i61.1, %bb.h ] ; 4 uses
  %i.ad = trunc nuw nsw i64 %indvars.iv.i59 to i32
  %i.ae = shl nuw i32 1, %i.ad
  %i.af = and i32 %i.ae, %i.aa
  %.not.i60 = icmp eq i32 %i.af, 0
  br i1 %.not.i60, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !111
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.i59
  %3 = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %2 ; 2 uses
  %i.ai = load i32, ptr %3, align 4, !tbaa !39
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %3, align 4, !tbaa !39
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.next.i61 = or disjoint i64 %indvars.iv.i59, 1 ; 2 uses
  %i.ak = trunc nuw nsw i64 %indvars.iv.next.i61 to i32
  %i.al = shl nuw i32 1, %i.ak
  %i.am = and i32 %i.al, %i.aa
  %.not.i60.1 = icmp eq i32 %i.am, 0
  br i1 %.not.i60.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !111
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next.i61
  %4 = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %2 ; 2 uses
  %i.ap = load i32, ptr %4, align 4, !tbaa !39
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %4, align 4, !tbaa !39
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.next.i61.1 = add nuw nsw i64 %indvars.iv.i59, 2 ; 2 uses
  %exitcond.not.i62.1 = icmp eq i64 %indvars.iv.next.i61.1, 32
  br i1 %exitcond.not.i62.1, label %.loopexit.loopexit.i, label %bb.d, !llvm.loop !200

.loopexit.loopexit.i:                             ; preds = %bb.h
  %.pre.i = load i32, ptr %i.b, align 8, !tbaa !97
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %.lr.ph.i58
  %i.ar = phi i32 [ %.pre.i, %.loopexit.loopexit.i ], [ %i.v, %.lr.ph.i58 ] ; 3 uses
  %indvars.iv.next7.i = add nuw nsw i64 %indvars.iv6.i, 1 ; 2 uses
  %i.as = sext i32 %i.ar to i64
  %i.at = icmp slt i64 %indvars.iv.next7.i, %i.as
  br i1 %i.at, label %.lr.ph.i58, label %Ivy_FraigAddToPatScores.exit.thread, !llvm.loop !201

Ivy_FraigAddToPatScores.exit.thread:              ; preds = %.loopexit.i, %Ivy_NodeCompareSims.exit.split.us
  %i.au = phi i32 [ %i.i, %Ivy_NodeCompareSims.exit.split.us ], [ %i.ar, %.loopexit.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.047105.us, i64 40
  store ptr null, ptr %i.av, align 8, !tbaa !127
  %i.aw = getelementptr i8, ptr %.047105.us, i64 48 ; 3 uses
  %.043121 = load ptr, ptr %i.aw, align 8, !tbaa !95 ; 3 uses
  %.not51122 = icmp eq ptr %.043121, null
  br i1 %.not51122, label %._crit_edge, label %.lr.ph126

.lr.ph126:                                        ; preds = %Ivy_FraigAddToPatScores.exit.thread
  %i.ax = icmp sgt i32 %i.au, 0
  %wide.trip.count.i67 = zext nneg i32 %i.au to i64
  br i1 %i.ax, label %.lr.ph.i65.us, label %.lr.ph126.split

.lr.ph.i65.us:                                    ; preds = %.lr.ph126, %bb.k
  %.043125.us = phi ptr [ %.043.us, %bb.k ], [ %.043121, %.lr.ph126 ] ; 7 uses
  %.044124.us = phi ptr [ %.1.us, %bb.k ], [ %.047105.us, %.lr.ph126 ] ; 2 uses
  %.146123.us = phi ptr [ %.2.us, %bb.k ], [ %.045104.us, %.lr.ph126 ] ; 2 uses
  %i.ay = getelementptr i8, ptr %.043125.us, i64 32
  %.val.i66.us = load ptr, ptr %i.ay, align 8, !tbaa !104
  %i.az = getelementptr inbounds nuw i8, ptr %.val.i66.us, i64 32
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i65.us
  %indvars.iv.i68.us = phi i64 [ 0, %.lr.ph.i65.us ], [ %indvars.iv.next.i70.us, %bb.j ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i68.us
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !39
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i68.us
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !39
  %.not.i69.us = icmp eq i32 %i.bb, %i.bd
  br i1 %.not.i69.us, label %bb.j, label %Ivy_NodeCompareSims.exit72.us

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next.i70.us = add nuw nsw i64 %indvars.iv.i68.us, 1 ; 2 uses
  %exitcond.not.i71.us = icmp eq i64 %indvars.iv.next.i70.us, %wide.trip.count.i67
  br i1 %exitcond.not.i71.us, label %.loopexit.us, label %bb.i, !llvm.loop !164

Ivy_NodeCompareSims.exit72.us:                    ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %.044124.us, i64 48
  store ptr %.043125.us, ptr %i.be, align 8, !tbaa !95
  %i.bf = getelementptr inbounds nuw i8, ptr %.043125.us, i64 40
  store ptr %.047105.us, ptr %i.bf, align 8, !tbaa !127
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.us, %Ivy_NodeCompareSims.exit72.us
  %.2.us = phi ptr [ %.043125.us, %.loopexit.us ], [ %.146123.us, %Ivy_NodeCompareSims.exit72.us ] ; 2 uses
  %.1.us = phi ptr [ %.044124.us, %.loopexit.us ], [ %.043125.us, %Ivy_NodeCompareSims.exit72.us ] ; 2 uses
  %i.bg = getelementptr i8, ptr %.043125.us, i64 48
  %.043.us = load ptr, ptr %i.bg, align 8, !tbaa !95 ; 2 uses
  %.not51.us = icmp eq ptr %.043.us, null
  br i1 %.not51.us, label %._crit_edge, label %.lr.ph.i65.us, !llvm.loop !202

.loopexit.us:                                     ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %.146123.us, i64 48
  store ptr %.043125.us, ptr %i.bh, align 8, !tbaa !95
  br label %bb.k

.lr.ph126.split:                                  ; preds = %.lr.ph126, %.lr.ph126.split
  %.043125 = phi ptr [ %.043, %.lr.ph126.split ], [ %.043121, %.lr.ph126 ] ; 4 uses
  %.146123 = phi ptr [ %.043125, %.lr.ph126.split ], [ %.045104.us, %.lr.ph126 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.146123, i64 48
  store ptr %.043125, ptr %i.bi, align 8, !tbaa !95
  %i.bj = getelementptr i8, ptr %.043125, i64 48
  %.043 = load ptr, ptr %i.bj, align 8, !tbaa !95 ; 2 uses
  %.not51 = icmp eq ptr %.043, null
  br i1 %.not51, label %._crit_edge, label %.lr.ph126.split, !llvm.loop !202

._crit_edge:                                      ; preds = %.lr.ph126.split, %bb.k, %Ivy_FraigAddToPatScores.exit.thread
  %.146.lcssa = phi ptr [ %.045104.us, %Ivy_FraigAddToPatScores.exit.thread ], [ %.2.us, %bb.k ], [ %.043125, %.lr.ph126.split ]
  %.044.lcssa = phi ptr [ %.047105.us, %Ivy_FraigAddToPatScores.exit.thread ], [ %.1.us, %bb.k ], [ %.047105.us, %.lr.ph126.split ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.044.lcssa, i64 48
  store ptr null, ptr %i.bk, align 8, !tbaa !95
  %i.bl = getelementptr inbounds nuw i8, ptr %.146.lcssa, i64 48
  store ptr null, ptr %i.bl, align 8, !tbaa !95
  %i.bm = getelementptr inbounds nuw i8, ptr %.047105.us, i64 64 ; 3 uses
  store ptr %.tr88133174, ptr %i.bm, align 8, !tbaa !191
  %i.bn = getelementptr i8, ptr %.tr88133174, i64 56 ; 3 uses
  %.val15.i = load ptr, ptr %i.bn, align 8, !tbaa !190 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.047105.us, i64 56
  store ptr %.val15.i, ptr %i.bo, align 8, !tbaa !190
  %.not.i73 = icmp eq ptr %.val15.i, null
  br i1 %.not.i73, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.bp = getelementptr inbounds nuw i8, ptr %.val15.i, i64 64
  store ptr %.047105.us, ptr %i.bp, align 8, !tbaa !191
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge
  store ptr %.047105.us, ptr %i.bn, align 8, !tbaa !190
  %i.bq = load ptr, ptr %i.e, align 8, !tbaa !189
  %i.br = icmp eq ptr %i.bq, %.tr88133174
  br i1 %i.br, label %bb.n, label %Ivy_FraigInsertClass.exit

bb.n:                                             ; preds = %bb.m
  store ptr %.047105.us, ptr %i.e, align 8, !tbaa !189
  %i.bs = icmp eq ptr %.047105.us, %.tr88133174
  br label %Ivy_FraigInsertClass.exit

Ivy_FraigInsertClass.exit:                        ; preds = %bb.m, %bb.n
  %i.bt = phi i1 [ false, %bb.m ], [ %i.bs, %bb.n ]
  %i.bu = load i32, ptr %i.f, align 8, !tbaa !192
  %i.bv = add nsw i32 %i.bu, 1
  store i32 %i.bv, ptr %i.f, align 8, !tbaa !192
  %.val = load ptr, ptr %i.j, align 8, !tbaa !95
  %i.bw = icmp eq ptr %.val, null
  br i1 %i.bw, label %bb.o, label %bb.t

bb.o:                                             ; preds = %Ivy_FraigInsertClass.exit
  %i.bx = load ptr, ptr %i.d, align 8, !tbaa !188
  %i.by = icmp eq ptr %i.bx, %.tr88133174
  br i1 %i.by, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %.047105.us, ptr %i.d, align 8, !tbaa !188
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bz = getelementptr i8, ptr %.tr88133174, i64 64
  %.val25.i = load ptr, ptr %i.bz, align 8, !tbaa !191 ; 4 uses
  br i1 %i.bt, label %bb.r, label %._crit_edge.i

bb.r:                                             ; preds = %bb.q
  store ptr %.val25.i, ptr %i.e, align 8, !tbaa !189
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.r, %bb.q
  %.not.i74 = icmp eq ptr %.val25.i, null
  br i1 %.not.i74, label %Ivy_FraigRemoveClass.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.val25.i, i64 56
  store ptr %.047105.us, ptr %i.ca, align 8, !tbaa !190
  br label %Ivy_FraigRemoveClass.exit

Ivy_FraigRemoveClass.exit:                        ; preds = %bb.s, %._crit_edge.i
  store ptr %.val25.i, ptr %i.bm, align 8, !tbaa !191
  %i.cb = getelementptr inbounds nuw i8, ptr %.tr88133174, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i8 0, i64 16, i1 false)
  %i.cc = load i32, ptr %i.cb, align 8
  %i.cd = and i32 %i.cc, -17
  store i32 %i.cd, ptr %i.cb, align 8
  %i.ce = load i32, ptr %i.f, align 8, !tbaa !192
  %i.cf = add nsw i32 %i.ce, -1
  store i32 %i.cf, ptr %i.f, align 8, !tbaa !192
  br label %bb.t

bb.t:                                             ; preds = %Ivy_FraigRemoveClass.exit, %Ivy_FraigInsertClass.exit
  %.047.val = load ptr, ptr %i.aw, align 8, !tbaa !95 ; 2 uses
  %i.cg = icmp eq ptr %.047.val, null
  br i1 %i.cg, label %bb.u, label %tailrecurse

bb.u:                                             ; preds = %bb.t
  %i.ch = getelementptr inbounds nuw i8, ptr %.047105.us, i64 56 ; 3 uses
  %i.ci = load ptr, ptr %i.d, align 8, !tbaa !188
  %i.cj = icmp eq ptr %i.ci, %.047105.us
  br i1 %i.cj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %.val21.i82 = load ptr, ptr %i.ch, align 8, !tbaa !190
  store ptr %.val21.i82, ptr %i.d, align 8, !tbaa !188
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ck = load ptr, ptr %i.e, align 8, !tbaa !189
  %i.cl = icmp eq ptr %i.ck, %.047105.us
  %.val25.i75 = load ptr, ptr %i.bm, align 8, !tbaa !191 ; 4 uses
  br i1 %i.cl, label %bb.x, label %._crit_edge.i76

bb.x:                                             ; preds = %bb.w
  store ptr %.val25.i75, ptr %i.e, align 8, !tbaa !189
  br label %._crit_edge.i76

._crit_edge.i76:                                  ; preds = %bb.x, %bb.w
  %.not.i77 = icmp eq ptr %.val25.i75, null
  %.val19.pre.i79 = load ptr, ptr %i.ch, align 8, !tbaa !190 ; 3 uses
  br i1 %.not.i77, label %._crit_edge27.i80, label %bb.y

bb.y:                                             ; preds = %._crit_edge.i76
  %i.cm = getelementptr inbounds nuw i8, ptr %.val25.i75, i64 56
  store ptr %.val19.pre.i79, ptr %i.cm, align 8, !tbaa !190
  br label %._crit_edge27.i80
end_hunk_0
