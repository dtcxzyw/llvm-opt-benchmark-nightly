Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlatrs3?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dlatrs3_:bb.a

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.not594 = icmp eq i32 %i.y, 0
  br i1 %.not594, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aw = tail call i32 @lsame_(ptr noundef %2, ptr noundef nonnull @.str) #6
  %.not595 = icmp eq i32 %i.aw, 0
  br i1 %.not595, label %.thread.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ax = tail call i32 @lsame_(ptr noundef %3, ptr noundef nonnull @.str.7) #6
  %.not596 = icmp eq i32 %i.ax, 0
  br i1 %.not596, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ay = tail call i32 @lsame_(ptr noundef %3, ptr noundef nonnull @.str.1) #6
  %.not597 = icmp eq i32 %i.ay, 0
  br i1 %.not597, label %.thread.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.az = load i32, ptr %4, align 4, !tbaa !35    ; 3 uses
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %.thread.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = load i32, ptr %5, align 4, !tbaa !35    ; 7 uses
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %.thread.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = load i32, ptr %7, align 4, !tbaa !35
  %spec.select629 = tail call i32 @llvm.umax.i32(i32 %i.az, i32 1) ; 2 uses
  %i.be = icmp slt i32 %i.bd, %spec.select629
  br i1 %i.be, label %.thread.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = load i32, ptr %9, align 4, !tbaa !35
  %i.bg = icmp slt i32 %i.bf, %spec.select629
  br i1 %i.bg, label %.thread.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.aa, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bh = load i32, ptr %13, align 4, !tbaa !35
  %i.bi = sitofp i32 %i.bh to double
  %i.bj = load double, ptr %12, align 8, !tbaa !37
  %i.bk = fcmp ogt double %i.bj, %i.bi
  br i1 %i.bk, label %.thread.sink.split, label %.thread644

bb.p:                                             ; preds = %bb.n
  %.pr = load i32, ptr %14, align 4, !tbaa !35    ; 2 uses
  %.not598 = icmp eq i32 %.pr, 0
  br i1 %.not598, label %.loopexit, label %.thread

.thread644:                                       ; preds = %bb.o
  %.pr645 = load i32, ptr %14, align 4, !tbaa !35 ; 2 uses
  %.not598646 = icmp eq i32 %.pr645, 0
  br i1 %.not598646, label %bb.q, label %.thread

.thread.sink.split:                               ; preds = %bb.o, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.g, %bb.e, %bb.b
  %.sink = phi i32 [ -1, %bb.b ], [ -2, %bb.e ], [ -4, %bb.i ], [ -6, %bb.k ], [ -10, %bb.m ], [ -8, %bb.l ], [ -5, %bb.j ], [ -3, %bb.g ], [ -14, %bb.o ] ; 2 uses
  store i32 %.sink, ptr %14, align 4, !tbaa !35
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %.thread644, %bb.p
  %i.bl = phi i32 [ %.pr645, %.thread644 ], [ %.pr, %bb.p ], [ %.sink, %.thread.sink.split ]
  %i.bm = sub nsw i32 0, %i.bl
  store i32 %i.bm, ptr %i.a, align 4, !tbaa !35
  %i.bn = call i32 @xerbla_(ptr noundef nonnull @.str.8, ptr noundef nonnull %i.a, i32 noundef 7) #6 ; 0 uses
  br label %.loopexit

bb.q:                                             ; preds = %.thread644
  %.not599652 = icmp eq i32 %i.bb, 0
  br i1 %.not599652, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.q
  %i.bo = add nuw i32 %i.bb, 1
  %wide.trip.count = zext i32 %i.bo to i64
  %i.bp = zext nneg i32 %i.bb to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.bb, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check878 = icmp ult i32 %i.bb, 16
  br i1 %min.iters.check878, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bq = and i64 %i.bp, 12
  %n.vec = and i64 %i.bp, 2147483632              ; 4 uses
  %i.br = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bs = getelementptr [8 x i8], ptr %10, i64 %index ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 96
  store <4 x double> splat (double 1.000000e+00), ptr %i.bs, align 8, !tbaa !37
  store <4 x double> splat (double 1.000000e+00), ptr %i.bt, align 8, !tbaa !37
  store <4 x double> splat (double 1.000000e+00), ptr %i.bu, align 8, !tbaa !37
  store <4 x double> splat (double 1.000000e+00), ptr %i.bv, align 8, !tbaa !37
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bp
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !41

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec879 = and i64 %i.bp, 2147483644           ; 3 uses
  %i.bx = or disjoint i64 %n.vec879, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index880 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next881, %vec.epilog.vector.body ] ; 2 uses
  %i.by = getelementptr [8 x i8], ptr %10, i64 %index880
  store <4 x double> splat (double 1.000000e+00), ptr %i.by, align 8, !tbaa !37
  %index.next881 = add nuw i64 %index880, 4       ; 2 uses
  %i.bz = icmp eq i64 %index.next881, %n.vec879
  br i1 %i.bz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !9

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n882 = icmp eq i64 %n.vec879, %i.bp
  br i1 %cmp.n882, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 1, %iter.check ], [ %i.br, %vec.epilog.iter.check ], [ %i.bx, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  store double 1.000000e+00, ptr %i.ca, align 8, !tbaa !37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !10

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.q
  %i.cb = tail call i32 @llvm.umin.i32(i32 %i.az, i32 %i.bb)
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  %i.cd = tail call double @dlamch_(ptr noundef nonnull @.str.9) #6
  %i.ce = tail call double @dlamch_(ptr noundef nonnull @.str.10) #6 ; 2 uses
  %i.cf = load i32, ptr %5, align 4, !tbaa !35
  %i.cg = icmp slt i32 %i.cf, 2
  br i1 %i.cg, label %bb.s, label %.lr.ph665

bb.s:                                             ; preds = %bb.r
  tail call void @dlatrs_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8, ptr noundef %10, ptr noundef %11, ptr noundef nonnull %14) #6
  %i.ch = load i32, ptr %5, align 4, !tbaa !35    ; 2 uses
  %.not628734 = icmp slt i32 %i.ch, 2
  br i1 %.not628734, label %.loopexit, label %.lr.ph737.preheader

.lr.ph737.preheader:                              ; preds = %bb.s
  %i.ci = sext i32 %i.r to i64
  %i.cj = add nuw i32 %i.ch, 1
  %wide.trip.count822 = zext i32 %i.cj to i64
  br label %.lr.ph737

.lr.ph737:                                        ; preds = %.lr.ph737.preheader, %.lr.ph737
  %indvars.iv819 = phi i64 [ 2, %.lr.ph737.preheader ], [ %indvars.iv.next820, %.lr.ph737 ] ; 3 uses
  %i.ck = mul nsw i64 %indvars.iv819, %i.ci
  %i.cl = getelementptr [8 x i8], ptr %i.t, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 8
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv819
  tail call void @dlatrs_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.7, ptr noundef nonnull %4, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %i.cm, ptr noundef nonnull %i.cn, ptr noundef %11, ptr noundef nonnull %14) #6
  %indvars.iv.next820 = add nuw nsw i64 %indvars.iv819, 1 ; 2 uses
  %exitcond823.not = icmp eq i64 %indvars.iv.next820, %wide.trip.count822
  br i1 %exitcond823.not, label %.loopexit, label %.lr.ph737, !llvm.loop !11

.lr.ph665:                                        ; preds = %bb.r
  store i32 %i.ai, ptr %i.a, align 4, !tbaa !35
  %i.co = zext nneg i32 %i.ad to i64
  %i.cp = zext nneg i32 %i.ai to i64              ; 19 uses
  %i.cq = zext nneg i32 %i.ap to i64
  %invariant.gep.a = getelementptr [8 x i8], ptr %i.v, i64 %i.cq
  br label %bb.t

.loopexit651:                                     ; preds = %.lr.ph658.split.a, %bb.u, %bb.t
  %.1563.lcssa = phi double [ %.0562662, %bb.t ], [ %i.dr, %bb.u ], [ %i.ee, %.lr.ph658.split.a ] ; 2 uses
  %.not601.not = icmp samesign ult i64 %indvars.iv753, %i.cp
  br i1 %.not601.not, label %bb.t, label %._crit_edge666, !llvm.loop !12

bb.t:                                             ; preds = %.lr.ph665, %.loopexit651
  %indvars.iv753 = phi i64 [ 1, %.lr.ph665 ], [ %indvars.iv.next754, %.loopexit651 ] ; 5 uses
  %.0562662 = phi double [ 0.000000e+00, %.lr.ph665 ], [ %.1563.lcssa, %.loopexit651 ] ; 3 uses
  %i.cr = add nsw i64 %indvars.iv753, -1          ; 3 uses
  %indvars.iv.next754 = add nuw nsw i64 %indvars.iv753, 1 ; 2 uses
  %i.cs = trunc nuw nsw i64 %i.cr to i32
  %.0550 = select i1 %.not, i32 %i.ai, i32 %i.cs  ; 2 uses
  %i.ct = trunc nsw i64 %indvars.iv.next754 to i32
  %.0541 = select i1 %.not, i32 %i.ct, i32 1      ; 2 uses
  %.not624654 = icmp sgt i32 %.0541, %.0550
  br i1 %.not624654, label %.loopexit651, label %.lr.ph658

.lr.ph658:                                        ; preds = %bb.t
  %i.cu = load i32, ptr %4, align 4, !tbaa !35
  %i.cv = trunc i64 %indvars.iv753 to i32
  %i.cw = mul i32 %i.ad, %i.cv
  %.631 = call i32 @llvm.smin.i32(i32 %i.cw, i32 %i.cu)
  %i.cx = mul nuw nsw i64 %i.cr, %i.co            ; 2 uses
  %i.cy = trunc nsw i64 %i.cx to i32
  %i.cz = sub nsw i32 %.631, %i.cy                ; 2 uses
  %15 = trunc i64 %i.cr to i32
  %16 = add i32 %i.ao, %15
  %17 = mul i32 %16, %i.ai
  %i.da = trunc i64 %i.cx to i32
  %i.db = add i32 %i.da, 1
  %i.dc = mul i32 %i.o, %i.db
  %invariant.op659 = add i32 %i.dc, 1             ; 2 uses
  %i.dd = zext nneg i32 %.0541 to i64             ; 2 uses
  %18 = add i32 %.0550, 1
  %wide.trip.count751 = zext i32 %18 to i64       ; 2 uses
  br i1 %.not591, label %.lr.ph658.split.us, label %.lr.ph658.split.a

.lr.ph658.split.us:                               ; preds = %.lr.ph658
  %gep.a = getelementptr [8 x i8], ptr %invariant.gep.a, i64 %indvars.iv753
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph658.split.us
  %indvars.iv748 = phi i64 [ %indvars.iv.next749, %bb.u ], [ %i.dd, %.lr.ph658.split.us ] ; 3 uses
  %.1563655.us = phi double [ %i.dr, %bb.u ], [ %.0562662, %.lr.ph658.split.us ] ; 2 uses
  %i.de = add nsw i64 %indvars.iv748, -1          ; 2 uses
  %i.df = trunc i64 %indvars.iv748 to i32
  %i.dg = mul i32 %i.ad, %i.df
  %i.dh = load i32, ptr %4, align 4, !tbaa !35
  %.632.us = call i32 @llvm.smin.i32(i32 %i.dg, i32 %i.dh)
  %i.di = trunc i64 %i.de to i32
  %i.dj = mul i32 %i.ad, %i.di                    ; 2 uses
  %i.dk = sub nsw i32 %.632.us, %i.dj
  store i32 %i.dk, ptr %i.b, align 4, !tbaa !35
  store i32 %i.cz, ptr %i.c, align 4, !tbaa !35
  %.reass660 = add i32 %i.dj, %invariant.op659
  %i.dl = sext i32 %.reass660 to i64
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.dl
  %i.dn = call double @dlange_(ptr noundef nonnull @.str.12, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef %i.dm, ptr noundef nonnull %7, ptr noundef nonnull %i.l) #6 ; 4 uses
  store double %i.dn, ptr %i.i, align 8, !tbaa !37
  %i.do = mul nsw i64 %i.de, %i.cp
  %i.dp = getelementptr [8 x i8], ptr %gep.a, i64 %i.do
  store double %i.dn, ptr %i.dp, align 8, !tbaa !37
  %i.dq = fcmp oge double %.1563655.us, %i.dn
  %i.dr = select i1 %i.dq, double %.1563655.us, double %i.dn ; 2 uses
  %indvars.iv.next749 = add nuw nsw i64 %indvars.iv748, 1 ; 2 uses
  %exitcond752.not = icmp eq i64 %indvars.iv.next749, %wide.trip.count751
  br i1 %exitcond752.not, label %.loopexit651, label %bb.u, !llvm.loop !13

.lr.ph658.split.a:                                ; preds = %.lr.ph658, %.lr.ph658.split.a
  %indvars.iv743 = phi i64 [ %indvars.iv.next744, %.lr.ph658.split.a ], [ %i.dd, %.lr.ph658 ] ; 4 uses
  %.1563655 = phi double [ %i.ee, %.lr.ph658.split.a ], [ %.0562662, %.lr.ph658 ] ; 2 uses
  %i.ds = trunc i64 %indvars.iv743 to i32
  %i.dt = mul i32 %i.ad, %i.ds
  %i.du = load i32, ptr %4, align 4, !tbaa !35
  %.632 = call i32 @llvm.smin.i32(i32 %i.dt, i32 %i.du)
  %i.dv = trunc i64 %indvars.iv743 to i32
  %i.dw = add i32 %i.dv, -1
  %i.dx = mul i32 %i.dw, %i.ad                    ; 2 uses
  %i.dy = sub nsw i32 %.632, %i.dx
  store i32 %i.dy, ptr %i.b, align 4, !tbaa !35
  store i32 %i.cz, ptr %i.c, align 4, !tbaa !35
  %.reass = add i32 %i.dx, %invariant.op659
  %i.dz = sext i32 %.reass to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.dz
  %i.eb = call double @dlange_(ptr noundef nonnull @.str.11, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef %i.ea, ptr noundef nonnull %7, ptr noundef nonnull %i.l) #6 ; 4 uses
  store double %i.eb, ptr %i.i, align 8, !tbaa !37
  %19 = trunc nuw nsw i64 %indvars.iv743 to i32
  %20 = add i32 %17, %19
  %21 = sext i32 %20 to i64
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.v, i64 %21
  store double %i.eb, ptr %i.ec, align 8, !tbaa !37
  %i.ed = fcmp oge double %.1563655, %i.eb
  %i.ee = select i1 %i.ed, double %.1563655, double %i.eb ; 2 uses
  %indvars.iv.next744 = add nuw nsw i64 %indvars.iv743, 1 ; 2 uses
  %exitcond747.not = icmp eq i64 %indvars.iv.next744, %wide.trip.count751
  br i1 %exitcond747.not, label %.loopexit651, label %.lr.ph658.split.a, !llvm.loop !13

._crit_edge666:                                   ; preds = %.loopexit651
  %i.ef = call double @dlamch_(ptr noundef nonnull @.str.9) #6
  %i.eg = fcmp ugt double %.1563.lcssa, %i.ef
  br i1 %i.eg, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge666
  %i.eh = load i32, ptr %5, align 4, !tbaa !35    ; 2 uses
  %.not602730 = icmp slt i32 %i.eh, 1
  br i1 %.not602730, label %.loopexit, label %.lr.ph733.preheader

.lr.ph733.preheader:                              ; preds = %bb.v
  %i.ei = sext i32 %i.r to i64
  %i.ej = zext nneg i32 %i.eh to i64
  br label %.lr.ph733

.lr.ph733:                                        ; preds = %.lr.ph733.preheader, %.lr.ph733
  %indvars.iv816 = phi i64 [ 1, %.lr.ph733.preheader ], [ %indvars.iv.next817, %.lr.ph733 ] ; 4 uses
  %i.ek = mul nsw i64 %indvars.iv816, %i.ei
  %i.el = getelementptr [8 x i8], ptr %i.t, i64 %i.ek
  %i.em = getelementptr i8, ptr %i.el, i64 8
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv816
  call void @dlatrs_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull %4, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %i.em, ptr noundef nonnull %i.en, ptr noundef %11, ptr noundef nonnull %14) #6
  %indvars.iv.next817 = add nuw nsw i64 %indvars.iv816, 1
  %.not602.not = icmp samesign ult i64 %indvars.iv816, %i.ej
  br i1 %.not602.not, label %.lr.ph733, label %.loopexit, !llvm.loop !14

bb.w:                                             ; preds = %._crit_edge666
  %.not603726 = icmp slt i32 %i.an, 1
  br i1 %.not603726, label %.loopexit, label %.lr.ph729

.lr.ph729:                                        ; preds = %bb.w
  %i.eo = add i32 %i.o, 1
  %i.ep = add nuw nsw i32 %i.ai, 1                ; 4 uses
  %i.eq = zext nneg i32 %i.ai to i64
  %i.er = shl nsw i64 %i.s, 3
  %scevgep = getelementptr i8, ptr %8, i64 %i.er  ; 2 uses
  %i.es = add i32 %i.r, 1                         ; 2 uses
  %i.et = zext nneg i32 %i.ai to i64              ; 5 uses
  %wide.trip.count759 = zext nneg i32 %i.ep to i64
  %i.eu = xor i1 %.not, %.not591                  ; 3 uses
  %.637..634 = select i1 %i.eu, i32 1, i32 -1
  %.638..635 = select i1 %i.eu, i32 %i.ai, i32 1  ; 2 uses
  %.639..636 = select i1 %i.eu, i32 1, i32 %i.ai
  %wide.trip.count771 = zext nneg i32 %i.ep to i64
  %wide.trip.count785 = zext nneg i32 %i.ep to i64
  %wide.trip.count808 = zext nneg i32 %i.ep to i64
  %i.ev = zext nneg i32 %i.an to i64
  %min.iters.check930 = icmp slt i32 %i.ah, 4
  %min.iters.check932 = icmp slt i32 %i.ah, 16
  %i.ew = and i64 %i.cp, 12
  %n.vec934 = and i64 %i.cp, 2147483632           ; 4 uses
  %i.ex = or disjoint i64 %n.vec934, 1
  %cmp.n939 = icmp eq i64 %n.vec934, %i.cp
  %min.epilog.iters.check944 = icmp eq i64 %i.ew, 0
  %n.vec946 = and i64 %i.cp, 2147483644           ; 3 uses
  %i.ey = or disjoint i64 %n.vec946, 1
  %cmp.n951 = icmp eq i64 %n.vec946, %i.cp
  %min.iters.check907 = icmp slt i32 %i.ah, 4
  %min.iters.check909 = icmp slt i32 %i.ah, 16
  %i.ez = and i64 %i.cp, 12
  %n.vec911 = and i64 %i.cp, 2147483632           ; 4 uses
  %i.fa = or disjoint i64 %n.vec911, 1
  %cmp.n916 = icmp eq i64 %n.vec911, %i.cp
  %min.epilog.iters.check921 = icmp eq i64 %i.ez, 0
  %n.vec923 = and i64 %i.cp, 2147483644           ; 3 uses
  %i.fb = or disjoint i64 %n.vec923, 1
  %cmp.n928 = icmp eq i64 %n.vec923, %i.cp
  %min.iters.check884 = icmp slt i32 %i.ah, 4
  %min.iters.check886 = icmp slt i32 %i.ah, 16
  %i.fc = and i64 %i.cp, 12
  %n.vec888 = and i64 %i.cp, 2147483632           ; 4 uses
  %i.fd = or disjoint i64 %n.vec888, 1
  %cmp.n893 = icmp eq i64 %n.vec888, %i.cp
  %min.epilog.iters.check898 = icmp eq i64 %i.fc, 0
  %n.vec900 = and i64 %i.cp, 2147483644           ; 3 uses
  %i.fe = or disjoint i64 %n.vec900, 1
  %cmp.n905 = icmp eq i64 %n.vec900, %i.cp
  %i.ff = xor i1 %.not591, %.not
  %.str.1.sink = select i1 %.not591, ptr @.str.5, ptr @.str.1
  %xtraiter = and i64 %i.cp, 7                    ; 3 uses
  %i.fg = icmp slt i32 %i.ah, 8
  %unroll_iter = and i64 %i.cp, 2147483640
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod959 = icmp ne i64 %xtraiter, 0
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph729, %._crit_edge725
  %indvars.iv813 = phi i64 [ 1, %.lr.ph729 ], [ %indvars.iv.next814, %._crit_edge725 ] ; 3 uses
  %i.fh = trunc nuw nsw i64 %indvars.iv813 to i32
  %i.fi = shl i32 %i.fh, 5                        ; 5 uses
  %i.fj = add i32 %i.fi, -31                      ; 2 uses
  %i.fk = load i32, ptr %5, align 4, !tbaa !35
  %.633 = call i32 @llvm.smin.i32(i32 %i.fi, i32 %i.fk)
  %reass.sub = sub i32 %.633, %i.fi
  %i.fl = add i32 %reass.sub, 32                  ; 9 uses
  %.not605669 = icmp slt i32 %i.fl, 1             ; 4 uses
  br i1 %.not605669, label %.lr.ph712, label %.lr.ph672

.lr.ph672:                                        ; preds = %bb.x
  %i.fm = zext nneg i32 %i.fl to i64
  br label %iter.check941

iter.check941:                                    ; preds = %.lr.ph672, %.loopexit954
  %indvars.iv761 = phi i64 [ 1, %.lr.ph672 ], [ %indvars.iv.next762, %.loopexit954 ] ; 3 uses
  %i.fn = mul nuw nsw i64 %indvars.iv761, %i.eq
  %invariant.gep850 = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.fn ; 3 uses
  br i1 %min.iters.check930, label %vec.epilog.scalar.ph942.preheader, label %vector.main.loop.iter.check931

vector.main.loop.iter.check931:                   ; preds = %iter.check941
  br i1 %min.iters.check932, label %vec.epilog.ph945, label %vector.body935

vector.body935:                                   ; preds = %vector.main.loop.iter.check931, %vector.body935
  %index936 = phi i64 [ %index.next937, %vector.body935 ], [ 0, %vector.main.loop.iter.check931 ] ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep850, i64 %index936 ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 40
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 72
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 104
  store <4 x double> splat (double 1.000000e+00), ptr %i.fp, align 8, !tbaa !37
  store <4 x double> splat (double 1.000000e+00), ptr %i.fq, align 8, !tbaa !37
  store <4 x double> splat (double 1.000000e+00), ptr %i.fr, align 8, !tbaa !37
  store <4 x double> splat (double 1.000000e+00), ptr %i.fs, align 8, !tbaa !37
  %index.next937 = add nuw i64 %index936, 16      ; 2 uses
  %i.ft = icmp eq i64 %index.next937, %n.vec934
  br i1 %i.ft, label %middle.block938, label %vector.body935, !llvm.loop !15

middle.block938:                                  ; preds = %vector.body935
  br i1 %cmp.n939, label %.loopexit954, label %vec.epilog.iter.check943

vec.epilog.iter.check943:                         ; preds = %middle.block938
  br i1 %min.epilog.iters.check944, label %vec.epilog.scalar.ph942.preheader, label %vec.epilog.ph945, !prof !41

vec.epilog.ph945:                                 ; preds = %vector.main.loop.iter.check931, %vec.epilog.iter.check943
  %vec.epilog.resume.val940 = phi i64 [ %n.vec934, %vec.epilog.iter.check943 ], [ 0, %vector.main.loop.iter.check931 ]
  br label %vec.epilog.vector.body947

vec.epilog.vector.body947:                        ; preds = %vec.epilog.vector.body947, %vec.epilog.ph945
  %index948 = phi i64 [ %vec.epilog.resume.val940, %vec.epilog.ph945 ], [ %index.next949, %vec.epilog.vector.body947 ] ; 2 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep850, i64 %index948
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  store <4 x double> splat (double 1.000000e+00), ptr %i.fv, align 8, !tbaa !37
  %index.next949 = add nuw i64 %index948, 4       ; 2 uses
  %i.fw = icmp eq i64 %index.next949, %n.vec946
  br i1 %i.fw, label %vec.epilog.middle.block950, label %vec.epilog.vector.body947, !llvm.loop !16

vec.epilog.middle.block950:                       ; preds = %vec.epilog.vector.body947
  br i1 %cmp.n951, label %.loopexit954, label %vec.epilog.scalar.ph942.preheader

vec.epilog.scalar.ph942.preheader:                ; preds = %iter.check941, %vec.epilog.iter.check943, %vec.epilog.middle.block950
  %indvars.iv756.ph = phi i64 [ 1, %iter.check941 ], [ %i.ex, %vec.epilog.iter.check943 ], [ %i.ey, %vec.epilog.middle.block950 ]
  br label %vec.epilog.scalar.ph942

vec.epilog.scalar.ph942:                          ; preds = %vec.epilog.scalar.ph942.preheader, %vec.epilog.scalar.ph942
  %indvars.iv756 = phi i64 [ %indvars.iv.next757, %vec.epilog.scalar.ph942 ], [ %indvars.iv756.ph, %vec.epilog.scalar.ph942.preheader ] ; 2 uses
  %gep851 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep850, i64 %indvars.iv756
  store double 1.000000e+00, ptr %gep851, align 8, !tbaa !37
  %indvars.iv.next757 = add nuw nsw i64 %indvars.iv756, 1 ; 2 uses
  %exitcond760.not = icmp eq i64 %indvars.iv.next757, %wide.trip.count759
  br i1 %exitcond760.not, label %.loopexit954, label %vec.epilog.scalar.ph942, !llvm.loop !17

.loopexit954:                                     ; preds = %vec.epilog.scalar.ph942, %vec.epilog.middle.block950, %middle.block938
  %indvars.iv.next762 = add nuw nsw i64 %indvars.iv761, 1
  %.not605.not = icmp samesign ult i64 %indvars.iv761, %i.fm
  br i1 %.not605.not, label %iter.check941, label %.lr.ph712, !llvm.loop !18

.lr.ph712:                                        ; preds = %.loopexit954, %bb.x
  store i32 %.637..634, ptr %i.b, align 4, !tbaa !35
  %i.fx = add i32 %i.fi, -32                      ; 2 uses
  %i.fy = mul nsw i32 %i.fj, %i.r                 ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph712, %._crit_edge707
  %.1556710 = phi i32 [ %.639..636, %.lr.ph712 ], [ %i.mj, %._crit_edge707 ] ; 7 uses
  %i.fz = add i32 %.1556710, -1                   ; 4 uses
  %i.ga = mul i32 %i.fz, %i.ad                    ; 5 uses
  %i.gb = add nsw i32 %i.ga, 1                    ; 6 uses
  %i.gc = mul i32 %.1556710, %i.ad
  %i.gd = load i32, ptr %4, align 4, !tbaa !35
  %.640 = call i32 @llvm.smin.i32(i32 %i.gc, i32 %i.gd) ; 5 uses
  store i32 %i.fl, ptr %i.c, align 4, !tbaa !35
  br i1 %.not605669, label %._crit_edge695, label %.lr.ph694

.lr.ph694:                                        ; preds = %bb.y
  %i.ge = sub nsw i32 %.640, %i.ga                ; 3 uses
  %i.gf = mul i32 %i.gb, %i.eo
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.gg
  %.not619680 = icmp slt i32 %i.ga, 1
  %i.gi = zext nneg i32 %i.ga to i64
  %i.gj = shl nuw nsw i64 %i.gi, 3
  %i.gk = add i32 %i.es, %.640
  %i.gl = xor i32 %.640, -1
  %i.gm = sext i32 %.1556710 to i64               ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph694, %.loopexit874
  %indvars.iv789 = phi i64 [ 1, %.lr.ph694 ], [ %indvars.iv.next790, %.loopexit874 ] ; 7 uses
  %indvars.iv787 = phi i64 [ 0, %.lr.ph694 ], [ %indvars.iv.next788, %.loopexit874 ] ; 2 uses
end_hunk_0
