Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcSaucy?download=true
inline.NumInlined: 426
inline.NumDeleted: 115
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 36
begin_hunk_0_@ref_singleton:bb.a
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !61
  %i.af = sub i32 %i.aa, %i.ad                    ; 2 uses
  %i.ag = load ptr, ptr %i.o, align 8, !tbaa !103 ; 3 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.u
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !61 ; 2 uses
  %i.aj = sext i32 %i.af to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !61 ; 2 uses
  %i.am = sext i32 %i.ai to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !61 ; 2 uses
  store i32 %i.ao, ptr %i.ak, align 4, !tbaa !61
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.ap
  store i32 %i.af, ptr %i.aq, align 4, !tbaa !61
  store i32 %i.al, ptr %i.an, align 4, !tbaa !61
  %i.ar = sext i32 %i.al to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.ar
  store i32 %i.ai, ptr %i.as, align 4, !tbaa !61
  %.not.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i, label %bb.d, label %data_mark.exit

bb.d:                                             ; preds = %bb.c
  %i.at = load ptr, ptr %i.p, align 8, !tbaa !169
  %i.au = load i32, ptr %i.q, align 8, !tbaa !98  ; 2 uses
  %i.av = add nsw i32 %i.au, 1
  store i32 %i.av, ptr %i.q, align 8, !tbaa !98
  %i.aw = sext i32 %i.au to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.aw
  store i32 %i.w, ptr %i.ax, align 4, !tbaa !61
  br label %data_mark.exit

data_mark.exit:                                   ; preds = %bb.b, %bb.c, %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ay = load i32, ptr %i.h, align 4, !tbaa !61
  %i.az = trunc nsw i64 %indvars.iv.next to i32
  %.not = icmp eq i32 %i.ay, %i.az
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !306

._crit_edge:                                      ; preds = %data_mark.exit, %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !81
  %i.bc = icmp sgt i32 %i.bb, 1
  br i1 %i.bc, label %bb.e, label %introsort.exit.i

bb.e:                                             ; preds = %._crit_edge
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !169 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !98 ; 5 uses
  %i.bh = icmp sgt i32 %i.bg, 1
  br i1 %i.bh, label %.lr.ph.i.i.i, label %log_base2.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.06.i.i.i = phi i32 [ %i.bi, %.lr.ph.i.i.i ], [ 0, %bb.e ]
  %.045.i.i.i = phi i32 [ %i.bj, %.lr.ph.i.i.i ], [ %i.bg, %bb.e ] ; 2 uses
  %i.bi = add nuw nsw i32 %.06.i.i.i, 1           ; 2 uses
  %i.bj = lshr i32 %.045.i.i.i, 1
  %i.bk = icmp samesign ugt i32 %.045.i.i.i, 3
  br i1 %i.bk, label %.lr.ph.i.i.i, label %.lr.ph.preheader.i.i.i, !llvm.loop !10

log_base2.exit.i.i:                               ; preds = %bb.e
  tail call fastcc void @introsort_loop(ptr noundef %i.be, i32 noundef %i.bg, i32 noundef 0)
  br label %introsort.exit.i

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph.i.i.i
  %i.bl = shl nuw nsw i32 %i.bi, 1
  tail call fastcc void @introsort_loop(ptr noundef %i.be, i32 noundef %i.bg, i32 noundef %i.bl)
  %wide.trip.count.i.i.i = zext nneg i32 %i.bg to i64
  br label %.lr.ph.i4.i.i

.lr.ph.i4.i.i:                                    ; preds = %.critedge.i.i.i, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %.critedge.i.i.i ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.i.i.i
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !61 ; 2 uses
  %i.bo = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i4.i.i
  %.019.i.i.i = phi i32 [ %i.bo, %.lr.ph.i4.i.i ], [ %i.bu, %bb.g ] ; 4 uses
  %i.bp = zext nneg i32 %.019.i.i.i to i64
  %i.bq = getelementptr [4 x i8], ptr %i.be, i64 %i.bp ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 -4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !61 ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, %i.bn
  br i1 %i.bt, label %bb.g, label %.critedge.i.i.i

bb.g:                                             ; preds = %bb.f
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !61
  %i.bu = add nsw i32 %.019.i.i.i, -1
  %i.bv = icmp sgt i32 %.019.i.i.i, 1
  br i1 %i.bv, label %bb.f, label %.critedge.i.i.i, !llvm.loop !11

.critedge.i.i.i:                                  ; preds = %bb.g, %bb.f
  %.0.lcssa.i5.i.i = phi i32 [ 0, %bb.g ], [ %.019.i.i.i, %bb.f ]
  %i.bw = sext i32 %.0.lcssa.i5.i.i to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bw
  store i32 %i.bn, ptr %i.bx, align 4, !tbaa !61
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %introsort.exit.i, label %.lr.ph.i4.i.i, !llvm.loop !12

introsort.exit.i:                                 ; preds = %.critedge.i.i.i, %log_base2.exit.i.i, %._crit_edge
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ca = load i32, ptr %i.by, align 8, !tbaa !98
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %.lr.ph21, label %refine_cell.exit

.lr.ph21:                                         ; preds = %introsort.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 464
  br label %bb.h

ref_single_cell.exit.thread:                      ; preds = %bb.h, %ref_single_cell.exit
  %i.cf = phi i32 [ %i.cy, %ref_single_cell.exit ], [ 1, %bb.h ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i20, 1 ; 2 uses
  %i.cg = load i32, ptr %i.by, align 8, !tbaa !98 ; 2 uses
  %i.ch = sext i32 %i.cg to i64
  %i.ci = icmp slt i64 %indvars.iv.next.i, %i.ch
  br i1 %i.ci, label %bb.h, label %.critedge.i, !llvm.loop !13

bb.h:                                             ; preds = %.lr.ph21, %ref_single_cell.exit.thread
  %indvars.iv.i20 = phi i64 [ 0, %.lr.ph21 ], [ %indvars.iv.next.i, %ref_single_cell.exit.thread ] ; 2 uses
  %i.cj = load ptr, ptr %i.bz, align 8, !tbaa !169
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.i20
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !61 ; 3 uses
  %i.cm = load ptr, ptr %i.cc, align 8, !tbaa !108
  %i.cn = sext i32 %i.cl to i64                   ; 2 uses
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !61
  %i.cq = add nsw i32 %i.cp, 1                    ; 2 uses
  %i.cr = load ptr, ptr %i.cd, align 8, !tbaa !167
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.cn
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !61 ; 2 uses
  %i.cu = icmp eq i32 %i.cq, %i.ct
  br i1 %i.cu, label %ref_single_cell.exit.thread, label %ref_single_cell.exit

ref_single_cell.exit:                             ; preds = %bb.h
  %i.cv = add i32 %i.cq, %i.cl
  %i.cw = sub i32 %i.cv, %i.ct
  %i.cx = load ptr, ptr %i.ce, align 8, !tbaa !112
  %i.cy = tail call i32 %i.cx(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.cl, i32 noundef %i.cw) #26, !inline_history !307 ; 2 uses
  %.not.i13 = icmp eq i32 %i.cy, 0
  br i1 %.not.i13, label %..critedge_crit_edge.i, label %ref_single_cell.exit.thread, !llvm.loop !13

..critedge_crit_edge.i:                           ; preds = %ref_single_cell.exit
  %.pre.i = load i32, ptr %i.by, align 8, !tbaa !98
  br label %.critedge.i, !llvm.loop !13

.critedge.i:                                      ; preds = %ref_single_cell.exit.thread, %..critedge_crit_edge.i
  %i.cz = phi i32 [ %.pre.i, %..critedge_crit_edge.i ], [ %i.cg, %ref_single_cell.exit.thread ]
  %.0.lcssa.i = phi i32 [ 0, %..critedge_crit_edge.i ], [ %i.cf, %ref_single_cell.exit.thread ] ; 2 uses
  %i.da = icmp sgt i32 %i.cz, 0
  br i1 %i.da, label %.lr.ph.i, label %refine_cell.exit

.lr.ph.i:                                         ; preds = %.critedge.i
  %i.db = load ptr, ptr %i.bz, align 8, !tbaa !169
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !167
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i
  %indvars.iv27.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next28.i, %bb.i ] ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv27.i
  %i.df = load i32, ptr %i.de, align 4, !tbaa !61
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %i.dg
  store i32 0, ptr %i.dh, align 4, !tbaa !61
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1 ; 2 uses
  %i.di = load i32, ptr %i.by, align 8, !tbaa !98
  %i.dj = sext i32 %i.di to i64
  %i.dk = icmp slt i64 %indvars.iv.next28.i, %i.dj
  br i1 %i.dk, label %bb.i, label %refine_cell.exit, !llvm.loop !14

refine_cell.exit:                                 ; preds = %bb.i, %introsort.exit.i, %.critedge.i
  %.0.lcssa.i35 = phi i32 [ 1, %introsort.exit.i ], [ %.0.lcssa.i, %.critedge.i ], [ %.0.lcssa.i, %bb.i ]
  store i32 0, ptr %i.by, align 8, !tbaa !98
  ret i32 %.0.lcssa.i35
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @introsort_loop(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #11 {
bb.a:
  %i.a = icmp sgt i32 %1, 16
  br i1 %i.a, label %.lr.ph.preheader, label %heap_sort.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %.lr.ph._crit_edge, label %.lr.ph63

.lr.ph:                                           ; preds = %partition.exit
  %i.c = icmp eq i32 %i.ak, 0
  br i1 %i.c, label %.lr.ph._crit_edge, label %.lr.ph63, !llvm.loop !308

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.01730.lcssa = phi i32 [ %1, %.lr.ph.preheader ], [ %i.bc, %.lr.ph ] ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %0, i64 -4 ; 7 uses
  %wide.trip.count.i = zext i32 %.01730.lcssa to i64 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %sift_up.exit.i, %.lr.ph._crit_edge
  %indvars.iv.i = phi i64 [ 1, %.lr.ph._crit_edge ], [ %indvars.iv.next.i, %sift_up.exit.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %.phi.trans.insert10.i.i = getelementptr [4 x i8], ptr %0, i64 %indvars.iv.i
  %.pre.i.i = load i32, ptr %.phi.trans.insert10.i.i, align 4, !tbaa !61 ; 2 uses
  %i.e = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.0.i.i = phi i32 [ %i.e, %bb.b ], [ %i.f, %bb.d ] ; 3 uses
  %i.f = sdiv i32 %.0.i.i, 2                      ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !61   ; 2 uses
  %.not.i.i = icmp sgt i32 %.pre.i.i, %i.i
  br i1 %.not.i.i, label %bb.d, label %sift_up.exit.i

bb.d:                                             ; preds = %bb.c
  %i.j = sext i32 %.0.i.i to i64
  %i.k = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.j
  store i32 %i.i, ptr %i.k, align 4, !tbaa !61
  store i32 %.pre.i.i, ptr %i.h, align 4, !tbaa !61
  %i.l = icmp sgt i32 %.0.i.i, 3
  br i1 %i.l, label %bb.c, label %sift_up.exit.i, !llvm.loop !309

sift_up.exit.i:                                   ; preds = %bb.d, %bb.c
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.i.preheader, label %bb.b, !llvm.loop !310

.preheader.i.preheader:                           ; preds = %sift_up.exit.i
  %indvars.iv.next19.i32 = add nsw i64 %wide.trip.count.i, -1 ; 2 uses
  %i.m = load i32, ptr %0, align 4, !tbaa !61
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next19.i32 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !61
  store i32 %i.o, ptr %0, align 4, !tbaa !61
  store i32 %i.m, ptr %i.n, align 4, !tbaa !61
  %.not19.i.i33 = icmp eq i32 %.01730.lcssa, 2
  br i1 %.not19.i.i33, label %heap_sort.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.preheader.i.preheader, %sift_down.exit.i
  %indvars.iv18.i34 = phi i64 [ %indvars.iv.next19.i, %sift_down.exit.i ], [ %indvars.iv.next19.i32, %.preheader.i.preheader ] ; 4 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.g
  %.021.i.i = phi i32 [ %i.af, %bb.g ], [ 2, %.lr.ph.i.i.preheader ] ; 5 uses
  %.01720.i.i = phi i32 [ %.1.i.i, %bb.g ], [ 1, %.lr.ph.i.i.preheader ]
  %i.p = sext i32 %.021.i.i to i64                ; 2 uses
  %i.q = icmp sgt i64 %indvars.iv18.i34, %i.p
  br i1 %i.q, label %bb.e, label %.lr.ph._crit_edge.i.i

.lr.ph._crit_edge.i.i:                            ; preds = %.lr.ph.i.i
  %.phi.trans.insert.i10.i = zext nneg i32 %.021.i.i to i64 ; 2 uses
  %.phi.trans.insert23.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.phi.trans.insert.i10.i
  %.pre.i11.i = load i32, ptr %.phi.trans.insert23.i.i, align 4, !tbaa !61
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.r = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.p
  %i.s = load i32, ptr %i.r, align 4, !tbaa !61   ; 2 uses
  %i.t = or disjoint i32 %.021.i.i, 1             ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !61   ; 2 uses
  %i.x = icmp slt i32 %i.s, %i.w
  %spec.select.i.i = select i1 %i.x, i32 %i.t, i32 %.021.i.i ; 2 uses
  %i.y = tail call i32 @llvm.smax.i32(i32 %i.s, i32 %i.w)
  %.pre24.i.i = sext i32 %spec.select.i.i to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph._crit_edge.i.i
  %.pre-phi.i.i = phi i64 [ %.phi.trans.insert.i10.i, %.lr.ph._crit_edge.i.i ], [ %.pre24.i.i, %bb.e ]
  %i.z = phi i32 [ %.pre.i11.i, %.lr.ph._crit_edge.i.i ], [ %i.y, %bb.e ] ; 2 uses
  %.1.i.i = phi i32 [ %.021.i.i, %.lr.ph._crit_edge.i.i ], [ %spec.select.i.i, %bb.e ] ; 2 uses
  %i.aa = sext i32 %.01720.i.i to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !61 ; 2 uses
  %i.ad = icmp slt i32 %i.ac, %i.z
  br i1 %i.ad, label %bb.g, label %sift_down.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.d, i64 %.pre-phi.i.i
  store i32 %i.z, ptr %i.ab, align 4, !tbaa !61
  store i32 %i.ac, ptr %i.ae, align 4, !tbaa !61
  %i.af = shl nsw i32 %.1.i.i, 1                  ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %.not.i12.not.i.not = icmp slt i64 %indvars.iv18.i34, %i.ag
  br i1 %.not.i12.not.i.not, label %sift_down.exit.i, label %.lr.ph.i.i, !llvm.loop !311

sift_down.exit.i:                                 ; preds = %bb.g, %bb.f
  %indvars.iv.next19.i = add nsw i64 %indvars.iv18.i34, -1 ; 2 uses
  %i.ah = load i32, ptr %0, align 4, !tbaa !61
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next19.i ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !61
  store i32 %i.aj, ptr %0, align 4, !tbaa !61
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !61
  %.not19.i.i = icmp eq i64 %indvars.iv18.i34, 2
  br i1 %.not19.i.i, label %heap_sort.exit, label %.lr.ph.i.i.preheader

.lr.ph63:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0173062 = phi i32 [ %i.bc, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %.03161 = phi i32 [ %i.ak, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %i.ak = add nsw i32 %.03161, -1                 ; 3 uses
  %i.al = load i32, ptr %0, align 4, !tbaa !61    ; 4 uses
  %i.am = lshr i32 %.0173062, 1
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !61 ; 4 uses
  %i.aq = zext nneg i32 %.0173062 to i64          ; 2 uses
  %i.ar = getelementptr [4 x i8], ptr %0, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.ar, i64 -4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !61 ; 4 uses
  %.not.i = icmp sgt i32 %i.al, %i.ap
  br i1 %.not.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph63
  %.not24.i = icmp sgt i32 %i.ap, %i.at
  br i1 %.not24.i, label %bb.i, label %median.exit

bb.i:                                             ; preds = %bb.h
  %..i = tail call i32 @llvm.smax.i32(i32 %i.al, i32 %i.at)
  br label %median.exit

bb.j:                                             ; preds = %.lr.ph63
  %.not22.i = icmp sgt i32 %i.al, %i.at
  br i1 %.not22.i, label %bb.k, label %median.exit

bb.k:                                             ; preds = %bb.j
  %.26.i = tail call i32 @llvm.smax.i32(i32 %i.ap, i32 %i.at)
  br label %median.exit

median.exit:                                      ; preds = %bb.h, %bb.i, %bb.j, %bb.k
  %.0.i = phi i32 [ %i.al, %bb.j ], [ %..i, %bb.i ], [ %i.ap, %bb.h ], [ %.26.i, %bb.k ] ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.o, %median.exit
  %.015.i = phi i64 [ 0, %median.exit ], [ %indvars.iv.next.i21, %bb.o ]
  %.0.i18 = phi i64 [ %i.aq, %median.exit ], [ %indvars.iv.next31.i, %bb.o ]
  %sext.i = shl i64 %.015.i, 32
  %i.au = ashr exact i64 %sext.i, 32
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %indvars.iv.i19 = phi i64 [ %indvars.iv.next.i21, %bb.m ], [ %i.au, %bb.l ] ; 6 uses
  %i.av = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.i19
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !61 ; 2 uses
  %.not.i20 = icmp sgt i32 %i.aw, %.0.i
  %indvars.iv.next.i21 = add nsw i64 %indvars.iv.i19, 1 ; 2 uses
  br i1 %.not.i20, label %.preheader.i22.preheader, label %bb.m, !llvm.loop !312

.preheader.i22.preheader:                         ; preds = %bb.m
  %i.ax = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.i19 ; 2 uses
  br label %.preheader.i22

.preheader.i22:                                   ; preds = %.preheader.i22.preheader, %.preheader.i22
  %indvars.iv30.i = phi i64 [ %indvars.iv.next31.i, %.preheader.i22 ], [ %.0.i18, %.preheader.i22.preheader ]
  %indvars.iv.next31.i = add nsw i64 %indvars.iv30.i, -1 ; 5 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next31.i
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !61 ; 2 uses
  %.not18.i = icmp sgt i32 %.0.i, %i.az
  br i1 %.not18.i, label %bb.n, label %.preheader.i22, !llvm.loop !313

bb.n:                                             ; preds = %.preheader.i22
  %i.ba = icmp slt i64 %indvars.iv.i19, %indvars.iv.next31.i
  br i1 %i.ba, label %bb.o, label %partition.exit

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next31.i
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !61
  store i32 %i.aw, ptr %i.bb, align 4, !tbaa !61
  br label %bb.l

partition.exit:                                   ; preds = %bb.n
  %i.bc = trunc nsw i64 %indvars.iv.i19 to i32    ; 3 uses
  %i.bd = sub nsw i32 %.0173062, %i.bc
  tail call fastcc void @introsort_loop(ptr noundef nonnull %i.ax, i32 noundef %i.bd, i32 noundef %i.ak)
  %i.be = icmp sgt i64 %indvars.iv.i19, 16
  br i1 %i.be, label %.lr.ph, label %heap_sort.exit, !llvm.loop !308

heap_sort.exit:                                   ; preds = %partition.exit, %sift_down.exit.i, %bb.a, %.preheader.i.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ref_nonsingle(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.c = sext i32 %4 to i64                       ; 3 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !61   ; 4 uses
  %i.f = add i32 %i.e, %4
  %i.g = icmp eq i32 %i.e, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call fastcc i32 @ref_singleton(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.i = add i32 %i.e, 1                          ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !168
  %i.l = load ptr, ptr %1, align 8, !tbaa !102
  %i.m = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.c
  %i.n = sext i32 %i.i to i64
  %i.o = shl nsw i64 %i.n, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.k, ptr align 4 %i.m, i64 %i.o, i1 false)
  %.not75 = icmp slt i32 %i.e, 0                  ; 2 uses
  br i1 %.not75, label %._crit_edge79, label %.lr.ph78

.lr.ph78:                                         ; preds = %bb.c
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !168
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %wide.trip.count = zext i32 %i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph78, %._crit_edge
  %indvars.iv95 = phi i64 [ 0, %.lr.ph78 ], [ %indvars.iv.next96, %._crit_edge ] ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv95
  %i.x = load i32, ptr %i.w, align 4, !tbaa !61
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %2, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !61  ; 2 uses
  %i.ab = getelementptr i8, ptr %i.z, i64 4       ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !61
  %.not5773 = icmp eq i32 %i.aa, %i.ac
  br i1 %.not5773, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.ad = load ptr, ptr %i.q, align 8, !tbaa !109
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.af = sext i32 %i.aa to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %data_count.exit
  %indvars.iv = phi i64 [ %i.af, %.lr.ph ], [ %indvars.iv.next, %data_count.exit ] ; 2 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !61
  %i.ai = sext i32 %i.ah to i64                   ; 3 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !61
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !61
  %.not.i = icmp eq i32 %i.an, 0
  br i1 %.not.i, label %data_count.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %i.r, align 8, !tbaa !99
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.ai ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !61 ; 2 uses
  %i.ar = add nsw i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !61
  %.not8.i = icmp eq i32 %i.aq, 0
  br i1 %.not8.i, label %bb.g, label %data_count.exit

bb.g:                                             ; preds = %bb.f
  %i.as = load i32, ptr %i.aj, align 4, !tbaa !61 ; 3 uses
  %i.at = sext i32 %i.as to i64                   ; 2 uses
  %i.au = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !61
  %i.aw = add nsw i32 %i.av, %i.as
  %i.ax = load ptr, ptr %i.s, align 8, !tbaa !167
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.at ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !61 ; 3 uses
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !61
  %i.bb = sub i32 %i.aw, %i.az                    ; 2 uses
  %i.bc = load ptr, ptr %i.t, align 8, !tbaa !103 ; 3 uses
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.ai
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !61 ; 2 uses
  %.val.i.i = load ptr, ptr %1, align 8, !tbaa !102 ; 2 uses
  %i.bf = sext i32 %i.bb to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !61 ; 2 uses
  %i.bi = sext i32 %i.be to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.bi ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !61 ; 2 uses
  store i32 %i.bk, ptr %i.bg, align 4, !tbaa !61
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bl
  store i32 %i.bb, ptr %i.bm, align 4, !tbaa !61
  store i32 %i.bh, ptr %i.bj, align 4, !tbaa !61
  %i.bn = sext i32 %i.bh to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bn
  store i32 %i.be, ptr %i.bo, align 4, !tbaa !61
  %.not.i.i = icmp eq i32 %i.az, 0
  br i1 %.not.i.i, label %bb.h, label %data_count.exit

bb.h:                                             ; preds = %bb.g
  %i.bp = load ptr, ptr %i.u, align 8, !tbaa !169
end_hunk_0
