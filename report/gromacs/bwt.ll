Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/bwt?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@Ptngc_bwt_merge_sort_inner:bb.a
  %.3107.i = phi i32 [ %.065124.i, %.thread98.i ], [ %i.au, %.thread108.i ]
  %.5106.i = phi i32 [ %.068123.i, %.thread98.i ], [ %.169.lcssa.i, %.thread108.i ]
  %i.be = phi <2 x i32> [ %i.bd, %.thread98.i ], [ %i.as, %.thread108.i ]
  %i.bf = add nsw i32 %.3107.i, 1                 ; 2 uses
  %i.bg = icmp slt i32 %i.bf, %1
  br i1 %i.bg, label %.lr.ph125.i, label %compare_index.exit.thread, !llvm.loop !12

compare_index.exit:                               ; preds = %.lr.ph.i
  %i.bh = icmp sgt i32 %.270.i, 0
  br i1 %i.bh, label %.lr.ph.preheader, label %compare_index.exit.thread

.lr.ph.preheader:                                 ; preds = %bb.e, %compare_index.exit
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.o ] ; 5 uses
  %.0115 = phi i32 [ %i.d, %.lr.ph.preheader ], [ %.1, %bb.o ] ; 6 uses
  %.068113 = phi i32 [ %3, %.lr.ph.preheader ], [ %.169, %bb.o ] ; 5 uses
  %i.bi = icmp eq i32 %.068113, %i.d
  br i1 %i.bi, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.bj = sext i32 %.0115 to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !8
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !8
  %i.bn = add nsw i32 %.0115, 1
  br label %bb.o

bb.h:                                             ; preds = %.lr.ph
  %i.bo = icmp eq i32 %.0115, %4
  %i.bp = sext i32 %.068113 to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !8  ; 3 uses
  br i1 %i.bo, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !8
  %i.bt = add nsw i32 %.068113, 1
  br label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.bu = sext i32 %.0115 to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !8  ; 2 uses
  %i.bx = insertelement <2 x i32> poison, i32 %i.br, i64 0
  %i.by = insertelement <2 x i32> %i.bx, i32 %i.bw, i64 1
  br label %.lr.ph125.i73

.lr.ph125.i73:                                    ; preds = %bb.j, %bb.n
  %.065124.i74 = phi i32 [ %i.dt, %bb.n ], [ 0, %bb.j ] ; 2 uses
  %.068123.i75 = phi i32 [ %.5106.i85, %bb.n ], [ undef, %bb.j ] ; 3 uses
  %i.bz = phi <2 x i32> [ %i.ds, %bb.n ], [ %i.by, %bb.j ] ; 5 uses
  %i.ca = extractelement <2 x i32> %i.bz, i64 0
  %i.cb = sext i32 %i.ca to i64                   ; 2 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %5, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !8  ; 3 uses
  %i.ce = lshr i32 %i.cd, 8
  %i.cf = and i32 %i.cd, 255                      ; 3 uses
  %i.cg = extractelement <2 x i32> %i.bz, i64 1
  %i.ch = sext i32 %i.cg to i64                   ; 2 uses
  %i.ci = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !8  ; 3 uses
  %i.ck = lshr i32 %i.cj, 8
  %i.cl = icmp ugt i32 %i.cd, 511
  %i.cm = icmp ugt i32 %i.cj, 511
  %i.cn = and i32 %i.cj, 255
  %i.co = icmp eq i32 %i.cf, %i.cn
  %i.cp = and i1 %i.cm, %i.co
  %or.cond91.i78 = select i1 %i.cl, i1 %i.cp, i1 false
  br i1 %or.cond91.i78, label %.preheader.i88, label %bb.l

.preheader.i88:                                   ; preds = %.lr.ph125.i73
  %.not89118.not.i89 = icmp eq i32 %i.cf, 0
  br i1 %.not89118.not.i89, label %.thread108.i99, label %.lr.ph.i90

bb.k:                                             ; preds = %.lr.ph.i90
  %i.cq = add nuw nsw i32 %.064120.i91, 1         ; 2 uses
  %exitcond.not.i98 = icmp eq i32 %i.cq, %i.cf
  br i1 %exitcond.not.i98, label %.thread108.i99, label %.lr.ph.i90, !llvm.loop !11

.lr.ph.i90:                                       ; preds = %.preheader.i88, %bb.k
  %.064120.i91 = phi i32 [ %i.cq, %bb.k ], [ 0, %.preheader.i88 ] ; 2 uses
  %.169119.i92 = phi i32 [ %.270.i96, %bb.k ], [ %.068123.i75, %.preheader.i88 ]
  %i.cr = insertelement <2 x i32> poison, i32 %.064120.i91, i64 0
  %i.cs = shufflevector <2 x i32> %i.cr, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ct = add nsw <2 x i32> %i.cs, %i.bz
  %i.cu = srem <2 x i32> %i.ct, %i.k              ; 2 uses
  %i.cv = extractelement <2 x i32> %i.cu, i64 0
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !8  ; 3 uses
  %i.cz = extractelement <2 x i32> %i.cu, i64 1
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [4 x i8], ptr %2, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !8  ; 3 uses
  %.not114.i93 = icmp ult i32 %i.cy, %i.dc
  %.not115.i94 = icmp ugt i32 %i.cy, %i.dc
  %..169.i95 = select i1 %.not115.i94, i32 1, i32 %.169119.i92
  %.270.i96 = select i1 %.not114.i93, i32 -1, i32 %..169.i95 ; 3 uses
  %cond2.i97 = icmp eq i32 %i.cy, %i.dc
  br i1 %cond2.i97, label %bb.k, label %compare_index.exit102

.thread108.i99:                                   ; preds = %bb.k, %.preheader.i88
  %.169.lcssa.i100 = phi i32 [ %.068123.i75, %.preheader.i88 ], [ %.270.i96, %bb.k ]
  %spec.select.i101 = tail call i32 @llvm.umin.i32(i32 %i.ck, i32 %i.ce) ; 2 uses
  %i.dd = insertelement <2 x i32> poison, i32 %spec.select.i101, i64 0
  %i.de = shufflevector <2 x i32> %i.dd, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.df = add nsw <2 x i32> %i.de, %i.bz
  %i.dg = srem <2 x i32> %i.df, %i.k
  %i.dh = add i32 %.065124.i74, -1
  %i.di = add i32 %i.dh, %spec.select.i101
  br label %bb.n

bb.l:                                             ; preds = %.lr.ph125.i73
  %i.dj = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cb
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !8  ; 2 uses
  %i.dl = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ch
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !8  ; 2 uses
  %i.dn = icmp ult i32 %i.dk, %i.dm
  br i1 %i.dn, label %compare_index.exit102.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.do = icmp ugt i32 %i.dk, %i.dm
  br i1 %i.do, label %compare_index.exit102.thread105, label %.thread98.i79

.thread98.i79:                                    ; preds = %bb.m
  %i.dp = add nsw <2 x i32> %i.bz, splat (i32 1)  ; 2 uses
  %i.dq = icmp slt <2 x i32> %i.dp, %i.k
  %i.dr = select <2 x i1> %i.dq, <2 x i32> %i.dp, <2 x i32> zeroinitializer
  br label %bb.n

bb.n:                                             ; preds = %.thread98.i79, %.thread108.i99
  %.3107.i84 = phi i32 [ %.065124.i74, %.thread98.i79 ], [ %i.di, %.thread108.i99 ]
  %.5106.i85 = phi i32 [ %.068123.i75, %.thread98.i79 ], [ %.169.lcssa.i100, %.thread108.i99 ]
  %i.ds = phi <2 x i32> [ %i.dr, %.thread98.i79 ], [ %i.dg, %.thread108.i99 ]
  %i.dt = add nsw i32 %.3107.i84, 1               ; 2 uses
  %i.du = icmp slt i32 %i.dt, %1
  br i1 %i.du, label %.lr.ph125.i73, label %compare_index.exit102.thread, !llvm.loop !12

compare_index.exit102:                            ; preds = %.lr.ph.i90
  %i.dv = icmp sgt i32 %.270.i96, 0
  br i1 %i.dv, label %compare_index.exit102.thread105, label %compare_index.exit102.thread

compare_index.exit102.thread105:                  ; preds = %bb.m, %compare_index.exit102
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  store i32 %i.bw, ptr %i.dw, align 4, !tbaa !8
  %i.dx = add nsw i32 %.0115, 1
  br label %bb.o

compare_index.exit102.thread:                     ; preds = %bb.l, %bb.n, %compare_index.exit102
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  store i32 %i.br, ptr %i.dy, align 4, !tbaa !8
  %i.dz = add nsw i32 %.068113, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %compare_index.exit102.thread105, %compare_index.exit102.thread, %bb.i
  %.169 = phi i32 [ %i.d, %bb.g ], [ %i.bt, %bb.i ], [ %.068113, %compare_index.exit102.thread105 ], [ %i.dz, %compare_index.exit102.thread ]
  %.1 = phi i32 [ %i.bn, %bb.g ], [ %4, %bb.i ], [ %i.dx, %compare_index.exit102.thread105 ], [ %.0115, %compare_index.exit102.thread ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.o
  %i.ea = sext i32 %3 to i64
  %i.eb = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ea
  %i.ec = zext nneg i32 %i.a to i64
  %i.ed = shl nuw nsw i64 %i.ec, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.eb, ptr nonnull align 4 %6, i64 %i.ed, i1 false)
  br label %compare_index.exit.thread

compare_index.exit.thread:                        ; preds = %bb.d, %bb.f, %bb.b, %compare_index.exit, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define void @Ptngc_comp_to_bwt(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = shl nsw i32 %1, 1                        ; 6 uses
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 2
  %i.d = tail call ptr @Ptngc_warnmalloc_x(i64 noundef %i.c, ptr noundef nonnull @.str, i32 noundef 170) #10 ; 13 uses
  %i.e = sext i32 %1 to i64                       ; 2 uses
  %i.f = shl nsw i64 %i.e, 2                      ; 3 uses
  %i.g = tail call ptr @Ptngc_warnmalloc_x(i64 noundef %i.f, ptr noundef nonnull @.str, i32 noundef 171) #10 ; 8 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.e ; 2 uses
  %i.i = icmp sgt i32 %1, 16777215
  br i1 %i.i, label %bb.b, label %.preheader156

.preheader156:                                    ; preds = %bb.a
  %i.j = icmp sgt i32 %1, 0
  br i1 %i.j, label %iter.check, label %._crit_edge208.thread

iter.check:                                       ; preds = %.preheader156
  %wide.trip.count = zext nneg i32 %1 to i64      ; 8 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check298 = icmp ult i32 %1, 32
  br i1 %min.iters.check298, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.k = and i64 %wide.trip.count, 24
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add <8 x i32> %vec.ind, splat (i32 8)
  %step.add.2 = add <8 x i32> %vec.ind, splat (i32 16)
  %step.add.3 = add <8 x i32> %vec.ind, splat (i32 24)
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  store <8 x i32> %vec.ind, ptr %i.l, align 4, !tbaa !8
  store <8 x i32> %step.add, ptr %i.m, align 4, !tbaa !8
  store <8 x i32> %step.add.2, ptr %i.n, align 4, !tbaa !8
  store <8 x i32> %step.add.3, ptr %i.o, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph207.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !27

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec299 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %i.q = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = or disjoint <8 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index300 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next302, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind301 = phi <8 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next303, %vec.epilog.vector.body ] ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index300
  store <8 x i32> %vec.ind301, ptr %i.r, align 4, !tbaa !8
  %index.next302 = add nuw i64 %index300, 8       ; 2 uses
  %vec.ind.next303 = add <8 x i32> %vec.ind301, splat (i32 8)
  %i.s = icmp eq i64 %index.next302, %n.vec299
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !15

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n304 = icmp eq i64 %n.vec299, %wide.trip.count
  br i1 %cmp.n304, label %.lr.ph207.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec299, %vec.epilog.middle.block ]
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !30
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.t, ptr noundef nonnull @.str.1, i32 noundef 16777215) #11 ; 0 uses
  tail call void @exit(i32 noundef 1) #12
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.w = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.w, ptr %i.v, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph207.preheader, label %.lr.ph, !llvm.loop !16

._crit_edge208.thread:                            ; preds = %.preheader156
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.g, i8 0, i64 %i.f, i1 false)
  tail call void @Ptngc_bwt_merge_sort_inner(ptr noundef %i.d, i32 noundef %1, ptr noundef %0, i32 noundef 0, i32 noundef %1, ptr noundef %i.g, ptr noundef %i.h)
  store i32 0, ptr %3, align 4, !tbaa !8
  br label %._crit_edge219

.lr.ph207.preheader:                              ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.g, i8 0, i64 %i.f, i1 false)
  %wide.trip.count237 = zext nneg i32 %1 to i64
  %4 = insertelement <2 x i32> poison, i32 %1, i64 0
  %5 = shufflevector <2 x i32> %4, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %.lr.ph207

.lr.ph207:                                        ; preds = %.lr.ph207.preheader, %bb.l
  %indvars.iv234 = phi i64 [ 0, %.lr.ph207.preheader ], [ %indvars.iv.next235, %bb.l ] ; 5 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv234 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !8
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %.preheader152.preheader, label %bb.l

.preheader152.preheader:                          ; preds = %.lr.ph207
  %i.z = trunc nsw i64 %indvars.iv234 to i32      ; 2 uses
  %6 = insertelement <2 x i32> poison, i32 %i.z, i64 0
  br label %.preheader151

.preheader154:                                    ; preds = %.loopexit, %.split.us
  %.5260 = phi i32 [ %.2170.us, %.split.us ], [ %.5, %.loopexit ] ; 4 uses
  %.5116259 = phi i32 [ %.2113169.us, %.split.us ], [ %.5116, %.loopexit ] ; 3 uses
  %i.aa = icmp slt i32 %.5260, %.5116259
  br i1 %i.aa, label %.lr.ph201.preheader, label %.critedge.thread

.lr.ph201.preheader:                              ; preds = %.preheader154
  %i.ab = trunc nuw nsw i64 %indvars.iv234 to i32
  br label %.lr.ph201

.preheader151:                                    ; preds = %.preheader151.backedge, %.preheader152.preheader
  %.1196 = phi i32 [ 0, %.preheader152.preheader ], [ %.1196.be, %.preheader151.backedge ] ; 3 uses
  %.1112195 = phi i32 [ -1, %.preheader152.preheader ], [ %.1112195.be, %.preheader151.backedge ] ; 3 uses
  %.1120194 = phi i32 [ 16, %.preheader152.preheader ], [ %.1120194.be, %.preheader151.backedge ] ; 14 uses
  %i.ac = icmp slt i32 %.1120194, %i.a
  br i1 %i.ac, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader151
  %i.ad = icmp sgt i32 %.1120194, 0
  br i1 %i.ad, label %.preheader.us, label %.preheader

.preheader.us:                                    ; preds = %.preheader.lr.ph, %bb.g
  %.2170.us = phi i32 [ %.4.ph.us, %bb.g ], [ %.1196, %.preheader.lr.ph ] ; 4 uses
  %.2113169.us = phi i32 [ %.4115.ph.us, %bb.g ], [ %.1112195, %.preheader.lr.ph ] ; 5 uses
  %.0125168.us = phi i32 [ %i.ao, %bb.g ], [ %.1120194, %.preheader.lr.ph ] ; 3 uses
  %i.ae = add nuw nsw i32 %.0125168.us, %i.z
  %7 = insertelement <2 x i32> %6, i32 %i.ae, i64 1
  br label %bb.c

bb.c:                                             ; preds = %.preheader.us, %bb.d
  %.0117166.us = phi i32 [ 0, %.preheader.us ], [ %i.ak, %bb.d ] ; 2 uses
  %8 = insertelement <2 x i32> poison, i32 %.0117166.us, i64 0
  %9 = shufflevector <2 x i32> %8, <2 x i32> poison, <2 x i32> zeroinitializer
  %10 = add nuw nsw <2 x i32> %9, %7
  %11 = urem <2 x i32> %10, %5                    ; 2 uses
  %12 = extractelement <2 x i32> %11, i64 0
  %i.af = zext nneg i32 %12 to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !8
  %13 = extractelement <2 x i32> %11, i64 1
  %14 = zext nneg i32 %13 to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %14
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !8
  %.not138.us = icmp eq i32 %i.ah, %i.aj
  br i1 %.not138.us, label %bb.d, label %.split.us

bb.d:                                             ; preds = %bb.c
  %i.ak = add nuw nsw i32 %.0117166.us, 1         ; 2 uses
  %exitcond233.not = icmp eq i32 %i.ak, %.1120194
  br i1 %exitcond233.not, label %..critedge141_crit_edge.us, label %bb.c, !llvm.loop !17

bb.e:                                             ; preds = %..critedge141_crit_edge.us
  %i.al = icmp eq i32 %spec.select.us, %.2113169.us
  %i.am = icmp slt i32 %.1120194, %.2170.us
  %or.cond.us = select i1 %i.al, i1 %i.am, i1 false
  br i1 %or.cond.us, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %..critedge141_crit_edge.us
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.4115.ph.us = phi i32 [ %.2113169.us, %bb.e ], [ %spec.select.us, %bb.f ] ; 2 uses
  %.4.ph.us = phi i32 [ %.2170.us, %bb.e ], [ %.1120194, %bb.f ] ; 2 uses
  %i.an = icmp slt i32 %i.ao, %i.a
  br i1 %i.an, label %.preheader.us, label %.loopexit, !llvm.loop !18

..critedge141_crit_edge.us:                       ; preds = %bb.d
  %i.ao = add nuw nsw i32 %.0125168.us, %.1120194 ; 4 uses
  %i.ap = icmp sgt i32 %i.ao, %i.a
  %spec.select.us = select i1 %i.ap, i32 %.0125168.us, i32 %i.ao ; 3 uses
  %i.aq = icmp sgt i32 %spec.select.us, %.2113169.us
  br i1 %i.aq, label %bb.f, label %bb.e

.split.us:                                        ; preds = %bb.c
  %.not255 = icmp eq i32 %.1120194, 1
  br i1 %.not255, label %.preheader154, label %.preheader151.backedge

.preheader151.backedge:                           ; preds = %.split.us, %.loopexit
  %.1196.be = phi i32 [ %.2170.us, %.split.us ], [ %.5, %.loopexit ]
  %.1112195.be = phi i32 [ %.2113169.us, %.split.us ], [ %.5116, %.loopexit ]
  %.1120194.be = add nsw i32 %.1120194, -1
  br label %.preheader151, !llvm.loop !19

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.j
  %.2170 = phi i32 [ %.4.ph, %bb.j ], [ %.1196, %.preheader.lr.ph ] ; 2 uses
  %.2113169 = phi i32 [ %.4115.ph, %bb.j ], [ %.1112195, %.preheader.lr.ph ] ; 3 uses
  %.0125168 = phi i32 [ %i.ar, %bb.j ], [ %.1120194, %.preheader.lr.ph ] ; 2 uses
  %i.ar = add nsw i32 %.0125168, %.1120194        ; 4 uses
  %i.as = icmp sgt i32 %i.ar, %i.a
  %spec.select = select i1 %i.as, i32 %.0125168, i32 %i.ar ; 3 uses
  %i.at = icmp sgt i32 %spec.select, %.2113169
  br i1 %i.at, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.preheader
  %i.au = icmp eq i32 %spec.select, %.2113169
  %i.av = icmp slt i32 %.1120194, %.2170
  %or.cond = select i1 %i.au, i1 %i.av, i1 false
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %.preheader
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.4115.ph = phi i32 [ %.2113169, %bb.h ], [ %spec.select, %bb.i ] ; 2 uses
  %.4.ph = phi i32 [ %.2170, %bb.h ], [ %.1120194, %bb.i ] ; 2 uses
  %i.aw = icmp slt i32 %i.ar, %i.a
  br i1 %i.aw, label %.preheader, label %.loopexit, !llvm.loop !18

.loopexit:                                        ; preds = %bb.j, %bb.g, %.preheader151
  %.5116 = phi i32 [ %.4115.ph.us, %bb.g ], [ %.1112195, %.preheader151 ], [ %.4115.ph, %bb.j ] ; 2 uses
  %.5 = phi i32 [ %.4.ph.us, %bb.g ], [ %.1196, %.preheader151 ], [ %.4.ph, %bb.j ] ; 2 uses
  %i.ax = icmp sgt i32 %.1120194, 1
  br i1 %i.ax, label %.preheader151.backedge, label %.preheader154

.lr.ph201:                                        ; preds = %.lr.ph201.preheader, %bb.k
  %i.ay = phi i32 [ %i.bg, %bb.k ], [ %.5260, %.lr.ph201.preheader ] ; 3 uses
  %.1118200 = phi i32 [ %i.ay, %bb.k ], [ 0, %.lr.ph201.preheader ] ; 3 uses
  %i.az = add nsw i32 %.1118200, %i.ab            ; 2 uses
  %i.ba = icmp slt i32 %i.az, %1
  br i1 %i.ba, label %bb.k, label %.critedge

bb.k:                                             ; preds = %.lr.ph201
  %i.bb = sub nsw i32 %.5116259, %.1118200
  %spec.select142 = tail call i32 @llvm.smin.i32(i32 %i.bb, i32 %1)
  %i.bc = shl i32 %spec.select142, 8
  %i.bd = or i32 %i.bc, %.5260
  %i.be = sext i32 %i.az to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.be
  store i32 %i.bd, ptr %i.bf, align 4, !tbaa !8
  %i.bg = add nsw i32 %i.ay, %.5260               ; 2 uses
  %i.bh = icmp slt i32 %i.bg, %.5116259
  br i1 %i.bh, label %.lr.ph201, label %.critedge, !llvm.loop !20

.critedge:                                        ; preds = %.lr.ph201, %bb.k
  %.1118.lcssa.ph = phi i32 [ %.1118200, %.lr.ph201 ], [ %i.ay, %bb.k ]
  %.pre = load i32, ptr %i.x, align 4, !tbaa !8
  %i.bi = icmp eq i32 %.pre, 0
  br i1 %i.bi, label %.critedge.thread, label %bb.l

.critedge.thread:                                 ; preds = %.preheader154, %.critedge
  %.1118.lcssa263 = phi i32 [ %.1118.lcssa.ph, %.critedge ], [ 0, %.preheader154 ]
  %i.bj = trunc nuw nsw i64 %indvars.iv234 to i32
  %i.bk = add nsw i32 %.1118.lcssa263, %i.bj
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.bl
  store i32 257, ptr %i.bm, align 4, !tbaa !8
  br label %bb.l

bb.l:                                             ; preds = %.critedge, %.critedge.thread, %.lr.ph207
  %indvars.iv.next235 = add nuw nsw i64 %indvars.iv234, 1 ; 2 uses
  %exitcond238.not = icmp eq i64 %indvars.iv.next235, %wide.trip.count237
  br i1 %exitcond238.not, label %._crit_edge208, label %.lr.ph207, !llvm.loop !21

._crit_edge208:                                   ; preds = %bb.l
  tail call void @Ptngc_bwt_merge_sort_inner(ptr noundef %i.d, i32 noundef %1, ptr noundef %0, i32 noundef 0, i32 noundef %1, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h)
  %wide.trip.count242 = zext nneg i32 %1 to i64
  br label %.lr.ph211

.lr.ph211:                                        ; preds = %._crit_edge208, %bb.m
  %indvars.iv239 = phi i64 [ 0, %._crit_edge208 ], [ %indvars.iv.next240, %bb.m ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv239
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !8
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %._crit_edge212.split.loop.exit280, label %bb.m

bb.m:                                             ; preds = %.lr.ph211
  %indvars.iv.next240 = add nuw nsw i64 %indvars.iv239, 1 ; 2 uses
  %exitcond243.not = icmp eq i64 %indvars.iv.next240, %wide.trip.count242
  br i1 %exitcond243.not, label %._crit_edge212, label %.lr.ph211, !llvm.loop !22

._crit_edge212.split.loop.exit280:                ; preds = %.lr.ph211
  %i.bq = trunc nuw nsw i64 %indvars.iv239 to i32
  br label %._crit_edge212

._crit_edge212:                                   ; preds = %bb.m, %._crit_edge212.split.loop.exit280
  %.2128.lcssa = phi i32 [ %i.bq, %._crit_edge212.split.loop.exit280 ], [ %1, %bb.m ]
  store i32 %.2128.lcssa, ptr %3, align 4, !tbaa !8
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.br = icmp ult i32 %1, 4
  br i1 %i.br, label %.lr.ph218.epil.preheader, label %._crit_edge212.new

._crit_edge212.new:                               ; preds = %._crit_edge212
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph218

.lr.ph218:                                        ; preds = %.lr.ph218, %._crit_edge212.new
  %indvars.iv244 = phi i64 [ 0, %._crit_edge212.new ], [ %indvars.iv.next245.3, %.lr.ph218 ] ; 6 uses
  %niter = phi i64 [ 0, %._crit_edge212.new ], [ %niter.next.3, %.lr.ph218 ]
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv244
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !8  ; 2 uses
  %i.bu = icmp slt i32 %i.bt, 1
  %spec.select143 = select i1 %i.bu, i32 %1, i32 %i.bt
  %i.bv = sext i32 %spec.select143 to i64
  %i.bw = getelementptr [4 x i8], ptr %0, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bw, i64 -4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !8
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv244
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !8
  %indvars.iv.next245 = or disjoint i64 %indvars.iv244, 1 ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next245
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !8  ; 2 uses
  %i.cc = icmp slt i32 %i.cb, 1
  %spec.select143.1 = select i1 %i.cc, i32 %1, i32 %i.cb
  %i.cd = sext i32 %spec.select143.1 to i64
  %i.ce = getelementptr [4 x i8], ptr %0, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.ce, i64 -4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !8
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next245
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !8
  %indvars.iv.next245.1 = or disjoint i64 %indvars.iv244, 2 ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next245.1
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !8  ; 2 uses
  %i.ck = icmp slt i32 %i.cj, 1
  %spec.select143.2 = select i1 %i.ck, i32 %1, i32 %i.cj
  %i.cl = sext i32 %spec.select143.2 to i64
  %i.cm = getelementptr [4 x i8], ptr %0, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.cm, i64 -4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !8
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next245.1
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !8
  %indvars.iv.next245.2 = or disjoint i64 %indvars.iv244, 3 ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next245.2
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !8  ; 2 uses
  %i.cs = icmp slt i32 %i.cr, 1
  %spec.select143.3 = select i1 %i.cs, i32 %1, i32 %i.cr
  %i.ct = sext i32 %spec.select143.3 to i64
  %i.cu = getelementptr [4 x i8], ptr %0, i64 %i.ct
  %i.cv = getelementptr i8, ptr %i.cu, i64 -4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !8
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next245.2
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !8
  %indvars.iv.next245.3 = add nuw nsw i64 %indvars.iv244, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge219.loopexit.unr-lcssa, label %.lr.ph218, !llvm.loop !23

._crit_edge219.loopexit.unr-lcssa:                ; preds = %.lr.ph218
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge219, label %.lr.ph218.epil.preheader

.lr.ph218.epil.preheader:                         ; preds = %._crit_edge219.loopexit.unr-lcssa, %._crit_edge212
  %indvars.iv244.epil.init = phi i64 [ 0, %._crit_edge212 ], [ %indvars.iv.next245.3, %._crit_edge219.loopexit.unr-lcssa ]
  %lcmp.mod309 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod309)
  br label %.lr.ph218.epil

.lr.ph218.epil:                                   ; preds = %.lr.ph218.epil, %.lr.ph218.epil.preheader
  %indvars.iv244.epil = phi i64 [ %indvars.iv244.epil.init, %.lr.ph218.epil.preheader ], [ %indvars.iv.next245.epil, %.lr.ph218.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph218.epil.preheader ], [ %epil.iter.next, %.lr.ph218.epil ]
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv244.epil
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !8  ; 2 uses
  %i.da = icmp slt i32 %i.cz, 1
  %spec.select143.epil = select i1 %i.da, i32 %1, i32 %i.cz
  %i.db = sext i32 %spec.select143.epil to i64
  %i.dc = getelementptr [4 x i8], ptr %0, i64 %i.db
  %i.dd = getelementptr i8, ptr %i.dc, i64 -4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !8
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv244.epil
  store i32 %i.de, ptr %i.df, align 4, !tbaa !8
  %indvars.iv.next245.epil = add nuw nsw i64 %indvars.iv244.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge219, label %.lr.ph218.epil, !llvm.loop !24

._crit_edge219:                                   ; preds = %._crit_edge219.loopexit.unr-lcssa, %.lr.ph218.epil, %._crit_edge208.thread
  tail call void @free(ptr noundef %i.g) #10
  tail call void @free(ptr noundef %i.d) #10
  ret void
}

declare ptr @Ptngc_warnmalloc_x(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define void @Ptngc_comp_from_bwt(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @Ptngc_warnmalloc_x(i64 noundef 262144, ptr noundef nonnull @.str, i32 noundef 359) #10 ; 25 uses
  %i.b = sext i32 %1 to i64
  %i.c = shl nsw i64 %i.b, 2
  %i.d = tail call ptr @Ptngc_warnmalloc_x(i64 noundef %i.c, ptr noundef nonnull @.str, i32 noundef 360) #10 ; 11 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(262144) %i.a, i8 0, i64 262144, i1 false)
  %i.e = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %i.e, label %.lr.ph.preheader, label %.preheader39.preheader

.preheader39.preheader.loopexit.unr-lcssa:        ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader39.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader39.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.preheader39.preheader.loopexit.unr-lcssa ]
  %lcmp.mod54 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod54)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !8
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !8
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.epil
  store i32 %i.j, ptr %i.k, align 4, !tbaa !8
  %i.l = load i32, ptr %i.f, align 4, !tbaa !8
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.m ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !8
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 4, !tbaa !8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader39.preheader, label %.lr.ph.epil, !llvm.loop !31

.preheader39.preheader:                           ; preds = %.preheader39.preheader.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  br label %.preheader39

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.q = icmp ult i32 %1, 4
  br i1 %i.q, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !8
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !8
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  store i32 %i.v, ptr %i.w, align 4, !tbaa !8
  %i.x = load i32, ptr %i.r, align 4, !tbaa !8
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !8
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !8
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !8
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !8
  %i.ai = load i32, ptr %i.ac, align 4, !tbaa !8
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !8
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !8
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.1 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !8
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !8
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.1
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !8
  %i.at = load i32, ptr %i.an, align 4, !tbaa !8
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.au ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !8
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !8
end_hunk_0
