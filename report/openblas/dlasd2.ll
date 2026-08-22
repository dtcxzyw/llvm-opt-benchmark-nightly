Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlasd2?download=true
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@dlasd2_:bb.a
  %i.x = getelementptr inbounds i8, ptr %17, i64 -4 ; 11 uses
  %i.y = getelementptr inbounds i8, ptr %18, i64 -4 ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %19, i64 -4 ; 13 uses
  %i.aa = getelementptr inbounds i8, ptr %20, i64 -4 ; 12 uses
  %i.ab = getelementptr inbounds i8, ptr %21, i64 -4 ; 28 uses
  store i32 0, ptr %22, align 4, !tbaa !8
  %i.ac = load i32, ptr %0, align 4, !tbaa !8
  %i.ad = icmp slt i32 %i.ac, 1
  br i1 %i.ad, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ae = load i32, ptr %1, align 4, !tbaa !8
  %i.af = icmp slt i32 %i.ae, 1
  br i1 %i.af, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = load i32, ptr %2, align 4, !tbaa !8
  %switch = icmp ult i32 %i.ag, 2
  br i1 %switch, label %bb.d, label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.b, %bb.a
  %.sink = phi i32 [ -1, %bb.a ], [ -2, %bb.b ], [ -3, %bb.c ]
  %.pr.neg.ph = phi i32 [ 1, %bb.a ], [ 2, %bb.b ], [ 3, %bb.c ]
  store i32 %.sink, ptr %22, align 4, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c
  %.not470 = phi i1 [ true, %bb.c ], [ false, %.sink.split ]
  %.pr.neg = phi i32 [ 0, %bb.c ], [ %.pr.neg.ph, %.sink.split ]
  %i.ah = load i32, ptr %0, align 4, !tbaa !8     ; 10 uses
  %i.ai = load i32, ptr %1, align 4, !tbaa !8     ; 2 uses
  %i.aj = add i32 %i.ai, %i.ah                    ; 12 uses
  %i.ak = add nsw i32 %i.aj, 1                    ; 10 uses
  store i32 %i.ak, ptr %i.e, align 4, !tbaa !8
  %i.al = load i32, ptr %2, align 4, !tbaa !8
  %i.am = add nsw i32 %i.ak, %i.al                ; 5 uses
  store i32 %i.am, ptr %i.d, align 4, !tbaa !8
  %i.an = load i32, ptr %9, align 4, !tbaa !8
  %.not468 = icmp sgt i32 %i.an, %i.aj
  br i1 %.not468, label %bb.e, label %.thread.sink.split

bb.e:                                             ; preds = %bb.d
  %i.ao = load i32, ptr %11, align 4, !tbaa !8
  %i.ap = icmp slt i32 %i.ao, %i.am
  br i1 %i.ap, label %.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = load i32, ptr %14, align 4, !tbaa !8
  %.not469 = icmp sgt i32 %i.aq, %i.aj
  br i1 %.not469, label %bb.g, label %.thread.sink.split

bb.g:                                             ; preds = %bb.f
  %i.ar = load i32, ptr %16, align 4, !tbaa !8
  %i.as = icmp slt i32 %i.ar, %i.am
  br i1 %i.as, label %.thread.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %.not470, label %bb.i, label %.thread

.thread.sink.split:                               ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %.sink688 = phi i32 [ -10, %bb.d ], [ -12, %bb.e ], [ -15, %bb.f ], [ -17, %bb.g ]
  %.neg.ph = phi i32 [ 10, %bb.d ], [ 12, %bb.e ], [ 15, %bb.f ], [ 17, %bb.g ]
  store i32 %.sink688, ptr %22, align 4, !tbaa !8
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.h
  %.neg = phi i32 [ %.pr.neg, %bb.h ], [ %.neg.ph, %.thread.sink.split ]
  store i32 %.neg, ptr %i.a, align 4, !tbaa !8
  %i.at = call i32 @xerbla_(ptr noundef nonnull @.str, ptr noundef nonnull %i.a, i32 noundef 6) #6 ; 0 uses
  br label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.au = add nsw i32 %i.ah, 1                    ; 11 uses
  %i.av = add i32 %i.ah, 2                        ; 11 uses
  %i.aw = load double, ptr %6, align 8, !tbaa !9
  %i.ax = mul nsw i32 %i.au, %i.n                 ; 2 uses
  %i.ay = add nsw i32 %i.ax, %i.au
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.az
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !9
  %i.bc = fmul double %i.aw, %i.bb                ; 4 uses
  store double %i.bc, ptr %i.g, align 8, !tbaa !9
  store double %i.bc, ptr %5, align 8, !tbaa !9
  %i.bd = icmp sgt i32 %i.ah, 0
  br i1 %i.bd, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.be = zext nneg i32 %i.ah to i64              ; 8 uses
  %i.bf = sext i32 %i.ax to i64                   ; 3 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.p, i64 %i.bf ; 2 uses
  %min.iters.check = icmp ult i32 %i.ah, 28
  br i1 %min.iters.check, label %.lr.ph.preheader909, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep = getelementptr i8, ptr %5, i64 8      ; 3 uses
  %i.bg = shl nuw nsw i64 %i.be, 3
  %i.bh = add nuw nsw i64 %i.bg, 8                ; 2 uses
  %scevgep696 = getelementptr i8, ptr %5, i64 %i.bh ; 3 uses
  %scevgep697 = getelementptr i8, ptr %4, i64 %i.bh ; 3 uses
  %scevgep698 = getelementptr i8, ptr %6, i64 8   ; 2 uses
  %i.bi = add nsw i64 %i.bf, %i.o
  %i.bj = shl nsw i64 %i.bi, 3
  %i.bk = getelementptr i8, ptr %10, i64 %i.bj
  %scevgep699 = getelementptr i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bl = add nsw i64 %i.bf, %i.o
  %i.bm = add nsw i64 %i.bl, %i.be
  %i.bn = shl nsw i64 %i.bm, 3
  %i.bo = getelementptr i8, ptr %10, i64 %i.bn
  %scevgep700 = getelementptr i8, ptr %i.bo, i64 8 ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep697
  %bound1 = icmp ult ptr %4, %scevgep696
  %found.conflict = and i1 %bound0, %bound1
  %bound0701 = icmp ult ptr %scevgep, %scevgep698
  %bound1702 = icmp ult ptr %6, %scevgep696
  %found.conflict703 = and i1 %bound0701, %bound1702
  %conflict.rdx = or i1 %found.conflict, %found.conflict703
  %bound0704 = icmp ult ptr %scevgep, %scevgep700
  %bound1705 = icmp ult ptr %scevgep699, %scevgep696
  %found.conflict706 = and i1 %bound0704, %bound1705
  %conflict.rdx707 = or i1 %conflict.rdx, %found.conflict706
  %bound0708 = icmp ult ptr %4, %scevgep698
  %bound1709 = icmp ult ptr %6, %scevgep697
  %found.conflict710 = and i1 %bound0708, %bound1709
  %conflict.rdx711 = or i1 %conflict.rdx707, %found.conflict710
  %bound0712 = icmp ult ptr %4, %scevgep700
  %bound1713 = icmp ult ptr %scevgep699, %scevgep697
  %found.conflict714 = and i1 %bound0712, %bound1713
  %conflict.rdx715 = or i1 %conflict.rdx711, %found.conflict714
  br i1 %conflict.rdx715, label %.lr.ph.preheader909, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.be, 2147483644              ; 2 uses
  %i.bp = and i64 %i.be, 3
  %i.bq = load double, ptr %6, align 8, !tbaa !9, !alias.scope !11
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.bq, i64 0
  %i.br = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bs = sub i64 %i.be, %index                   ; 6 uses
  %i.bt = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 -24
  %wide.load = load <4 x double>, ptr %i.bu, align 8, !tbaa !9, !alias.scope !14
  %i.bv = getelementptr [8 x i8], ptr %5, i64 %i.bs
  %i.bw = getelementptr i8, ptr %i.bv, i64 -24
  %reverse716 = fmul <4 x double> %i.br, %wide.load
  store <4 x double> %reverse716, ptr %i.bw, align 8, !tbaa !9, !alias.scope !16, !noalias !18
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.bs
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -24
  %wide.load717 = load <4 x double>, ptr %i.by, align 8, !tbaa !9, !alias.scope !20, !noalias !21
  %i.bz = getelementptr [8 x i8], ptr %4, i64 %i.bs
  %i.ca = getelementptr i8, ptr %i.bz, i64 -24
  store <4 x double> %wide.load717, ptr %i.ca, align 8, !tbaa !9, !alias.scope !20, !noalias !21
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bs
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -12
  %wide.load718 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !8, !alias.scope !22
  %i.cd = add nsw <4 x i32> %wide.load718, splat (i32 1)
  %i.ce = getelementptr [4 x i8], ptr %20, i64 %i.bs
  %i.cf = getelementptr i8, ptr %i.ce, i64 -12
  store <4 x i32> %i.cd, ptr %i.cf, align 4, !tbaa !8, !alias.scope !22
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.be
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader909

.lr.ph.preheader909:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.be, %vector.memcheck ], [ %i.be, %.lr.ph.preheader ], [ %i.bp, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader909, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader909 ] ; 8 uses
  %i.ch = load double, ptr %6, align 8, !tbaa !9
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ci = load double, ptr %gep, align 8, !tbaa !9
  %i.cj = fmul double %i.ch, %i.ci
  %i.ck = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  store double %i.cj, ptr %i.ck, align 8, !tbaa !9
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !9
  %i.cn = getelementptr [8 x i8], ptr %4, i64 %indvars.iv
  store double %i.cm, ptr %i.cn, align 8, !tbaa !9
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !8
  %i.cq = add nsw i32 %i.cp, 1
  %i.cr = getelementptr [4 x i8], ptr %20, i64 %indvars.iv
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !8
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.cs = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.cs, label %.lr.ph, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.i
  %.not471497 = icmp sgt i32 %i.av, %i.am
  br i1 %.not471497, label %._crit_edge501, label %iter.check

iter.check:                                       ; preds = %._crit_edge
  %i.ct = mul nsw i32 %i.av, %i.n
  %i.cu = sext i32 %i.av to i64                   ; 9 uses
  %i.cv = sext i32 %i.ct to i64                   ; 3 uses
  %i.cw = sext i32 %i.am to i64                   ; 4 uses
  %invariant.gep676 = getelementptr [8 x i8], ptr %i.p, i64 %i.cv ; 3 uses
  %i.cx = add nsw i64 %i.cw, 1
  %i.cy = sub nsw i64 %i.cx, %i.cu                ; 7 uses
  %min.iters.check734.a = icmp ult i64 %i.cy, 4
  br i1 %min.iters.check734.a, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck719

vector.memcheck719:                               ; preds = %iter.check
  %i.cz = shl nsw i64 %i.cu, 3
  %i.da = getelementptr i8, ptr %5, i64 %i.cz
  %scevgep720 = getelementptr i8, ptr %i.da, i64 -8 ; 2 uses
  %i.db = shl nsw i64 %i.cw, 3
  %scevgep721 = getelementptr i8, ptr %5, i64 %i.db ; 2 uses
  %scevgep722 = getelementptr i8, ptr %7, i64 8
  %i.dc = add nsw i64 %i.cv, %i.o
  %i.dd = add nsw i64 %i.dc, %i.cu
  %i.de = shl nsw i64 %i.dd, 3
  %scevgep723 = getelementptr i8, ptr %10, i64 %i.de
  %i.df = add nsw i64 %i.cv, %i.cw
  %i.dg = add nsw i64 %i.df, %i.o
  %i.dh = shl nsw i64 %i.dg, 3
  %i.di = getelementptr i8, ptr %10, i64 %i.dh
  %scevgep724 = getelementptr i8, ptr %i.di, i64 8
  %bound0725 = icmp ult ptr %scevgep720, %scevgep722
  %bound1726 = icmp ult ptr %7, %scevgep721
  %found.conflict727 = and i1 %bound0725, %bound1726
  %bound0728 = icmp ult ptr %scevgep720, %scevgep724
  %bound1729 = icmp ult ptr %scevgep723, %scevgep721
  %found.conflict730 = and i1 %bound0728, %bound1729
  %conflict.rdx731 = or i1 %found.conflict727, %found.conflict730
  br i1 %conflict.rdx731, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck719
  %min.iters.check735 = icmp ult i64 %i.cy, 16
  br i1 %min.iters.check735, label %vec.epilog.ph, label %vector.ph736

vector.ph736:                                     ; preds = %vector.main.loop.iter.check
  %i.dj = and i64 %i.cy, 12
  %n.vec737 = and i64 %i.cy, -16                  ; 4 uses
  %i.dk = add nsw i64 %n.vec737, %i.cu
  %i.dl = load double, ptr %7, align 8, !tbaa !9, !alias.scope !29
  %broadcast.splatinsert744 = insertelement <4 x double> poison, double %i.dl, i64 0
  %broadcast.splat745 = shufflevector <4 x double> %broadcast.splatinsert744, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body738

vector.body738:                                   ; preds = %vector.body738, %vector.ph736
  %index739 = phi i64 [ 0, %vector.ph736 ], [ %index.next746, %vector.body738 ] ; 2 uses
  %i.dm = add i64 %index739, %i.cu                ; 2 uses
  %i.dn = getelementptr [8 x i8], ptr %invariant.gep676, i64 %i.dm ; 4 uses
  %i.do = getelementptr i8, ptr %i.dn, i64 32
  %i.dp = getelementptr i8, ptr %i.dn, i64 64
  %i.dq = getelementptr i8, ptr %i.dn, i64 96
  %wide.load740.a = load <4 x double>, ptr %i.dn, align 8, !tbaa !9, !alias.scope !32
  %wide.load741.a = load <4 x double>, ptr %i.do, align 8, !tbaa !9, !alias.scope !32
  %wide.load742.a = load <4 x double>, ptr %i.dp, align 8, !tbaa !9, !alias.scope !32
  %wide.load743 = load <4 x double>, ptr %i.dq, align 8, !tbaa !9, !alias.scope !32
  %i.dr = fmul <4 x double> %broadcast.splat745, %wide.load740.a
  %i.ds = fmul <4 x double> %broadcast.splat745, %wide.load741.a
  %i.dt = fmul <4 x double> %broadcast.splat745, %wide.load742.a
  %i.du = fmul <4 x double> %broadcast.splat745, %wide.load743
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.dm ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 96
  store <4 x double> %i.dr, ptr %i.dv, align 8, !tbaa !9, !alias.scope !34, !noalias !36
  store <4 x double> %i.ds, ptr %i.dw, align 8, !tbaa !9, !alias.scope !34, !noalias !36
  store <4 x double> %i.dt, ptr %i.dx, align 8, !tbaa !9, !alias.scope !34, !noalias !36
  store <4 x double> %i.du, ptr %i.dy, align 8, !tbaa !9, !alias.scope !34, !noalias !36
  %index.next746 = add nuw i64 %index739, 16      ; 2 uses
  %i.dz = icmp eq i64 %index.next746, %n.vec737
  br i1 %i.dz, label %middle.block747, label %vector.body738, !llvm.loop !37

middle.block747:                                  ; preds = %vector.body738
  %cmp.n748 = icmp eq i64 %i.cy, %n.vec737
  br i1 %cmp.n748, label %._crit_edge501, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block747
  %min.epilog.iters.check = icmp eq i64 %i.dj, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !38

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec737, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec750 = and i64 %i.cy, -4                   ; 3 uses
  %i.ea = add nsw i64 %n.vec750, %i.cu
  %i.eb = load double, ptr %7, align 8, !tbaa !9, !alias.scope !29
  %broadcast.splatinsert753 = insertelement <4 x double> poison, double %i.eb, i64 0
  %broadcast.splat754 = shufflevector <4 x double> %broadcast.splatinsert753, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index751 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next755, %vec.epilog.vector.body ] ; 2 uses
  %i.ec = add i64 %index751, %i.cu                ; 2 uses
  %i.ed = getelementptr [8 x i8], ptr %invariant.gep676, i64 %i.ec
  %wide.load752 = load <4 x double>, ptr %i.ed, align 8, !tbaa !9, !alias.scope !32
  %i.ee = fmul <4 x double> %broadcast.splat754, %wide.load752
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ec
  store <4 x double> %i.ee, ptr %i.ef, align 8, !tbaa !9, !alias.scope !34, !noalias !36
  %index.next755 = add nuw i64 %index751, 4       ; 2 uses
  %i.eg = icmp eq i64 %index.next755, %n.vec750
  br i1 %i.eg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !39

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n756 = icmp eq i64 %i.cy, %n.vec750
  br i1 %cmp.n756, label %._crit_edge501, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck719, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv571.ph = phi i64 [ %i.cu, %iter.check ], [ %i.cu, %vector.memcheck719 ], [ %i.dk, %vec.epilog.iter.check ], [ %i.ea, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv571 = phi i64 [ %indvars.iv.next572, %vec.epilog.scalar.ph ], [ %indvars.iv571.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.eh = load double, ptr %7, align 8, !tbaa !9
  %gep677 = getelementptr [8 x i8], ptr %invariant.gep676, i64 %indvars.iv571
  %i.ei = load double, ptr %gep677, align 8, !tbaa !9
  %i.ej = fmul double %i.eh, %i.ei
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.j, i64 %indvars.iv571
  store double %i.ej, ptr %i.ek, align 8, !tbaa !9
  %indvars.iv.next572 = add nsw i64 %indvars.iv571, 1
  %.not471.not = icmp slt i64 %indvars.iv571, %i.cw
  br i1 %.not471.not, label %vec.epilog.scalar.ph, label %._crit_edge501, !llvm.loop !40

._crit_edge501:                                   ; preds = %vec.epilog.scalar.ph, %middle.block747, %vec.epilog.middle.block, %._crit_edge
  %.not472502 = icmp slt i32 %i.ah, 1
  br i1 %.not472502, label %._crit_edge506, label %iter.check771

iter.check771:                                    ; preds = %._crit_edge501
  %wide.trip.count = zext i32 %i.av to i64        ; 2 uses
  %i.el = add nsw i64 %wide.trip.count, -2        ; 7 uses
  %min.iters.check759 = icmp ult i64 %i.el, 8
  br i1 %min.iters.check759, label %.lr.ph505.preheader, label %vector.main.loop.iter.check760

vector.main.loop.iter.check760:                   ; preds = %iter.check771
  %min.iters.check761 = icmp ult i64 %i.el, 32
  br i1 %min.iters.check761, label %vec.epilog.ph775, label %vector.ph762

vector.ph762:                                     ; preds = %vector.main.loop.iter.check760
  %i.em = and i64 %i.el, 24
  %n.vec763 = and i64 %i.el, -32                  ; 4 uses
  %i.en = or disjoint i64 %n.vec763, 2
  br label %vector.body764

vector.body764:                                   ; preds = %vector.body764, %vector.ph762
  %index765 = phi i64 [ 0, %vector.ph762 ], [ %index.next766, %vector.body764 ] ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index765 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 72
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 104
  store <8 x i32> splat (i32 1), ptr %i.ep, align 4, !tbaa !8
  store <8 x i32> splat (i32 1), ptr %i.eq, align 4, !tbaa !8
  store <8 x i32> splat (i32 1), ptr %i.er, align 4, !tbaa !8
  store <8 x i32> splat (i32 1), ptr %i.es, align 4, !tbaa !8
  %index.next766 = add nuw i64 %index765, 32      ; 2 uses
  %i.et = icmp eq i64 %index.next766, %n.vec763
  br i1 %i.et, label %middle.block767, label %vector.body764, !llvm.loop !41

middle.block767:                                  ; preds = %vector.body764
  %cmp.n768 = icmp eq i64 %i.el, %n.vec763
  br i1 %cmp.n768, label %._crit_edge506, label %vec.epilog.iter.check773

vec.epilog.iter.check773:                         ; preds = %middle.block767
  %min.epilog.iters.check774 = icmp eq i64 %i.em, 0
  br i1 %min.epilog.iters.check774, label %.lr.ph505.preheader, label %vec.epilog.ph775, !prof !42

vec.epilog.ph775:                                 ; preds = %vector.main.loop.iter.check760, %vec.epilog.iter.check773
  %vec.epilog.resume.val769 = phi i64 [ %n.vec763, %vec.epilog.iter.check773 ], [ 0, %vector.main.loop.iter.check760 ]
  %n.vec776 = and i64 %i.el, -8                   ; 3 uses
  %i.eu = or disjoint i64 %n.vec776, 2
  br label %vec.epilog.vector.body777

vec.epilog.vector.body777:                        ; preds = %vec.epilog.vector.body777, %vec.epilog.ph775
  %index778 = phi i64 [ %vec.epilog.resume.val769, %vec.epilog.ph775 ], [ %index.next779, %vec.epilog.vector.body777 ] ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index778
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store <8 x i32> splat (i32 1), ptr %i.ew, align 4, !tbaa !8
  %index.next779 = add nuw i64 %index778, 8       ; 2 uses
  %i.ex = icmp eq i64 %index.next779, %n.vec776
  br i1 %i.ex, label %vec.epilog.middle.block780, label %vec.epilog.vector.body777, !llvm.loop !43

vec.epilog.middle.block780:                       ; preds = %vec.epilog.vector.body777
  %cmp.n781 = icmp eq i64 %i.el, %n.vec776
  br i1 %cmp.n781, label %._crit_edge506, label %.lr.ph505.preheader

.lr.ph505.preheader:                              ; preds = %iter.check771, %vec.epilog.iter.check773, %vec.epilog.middle.block780
  %indvars.iv574.ph = phi i64 [ 2, %iter.check771 ], [ %i.en, %vec.epilog.iter.check773 ], [ %i.eu, %vec.epilog.middle.block780 ]
  br label %.lr.ph505

.lr.ph505:                                        ; preds = %.lr.ph505.preheader, %.lr.ph505
  %indvars.iv574 = phi i64 [ %indvars.iv.next575, %.lr.ph505 ], [ %indvars.iv574.ph, %.lr.ph505.preheader ] ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv574
  store i32 1, ptr %i.ey, align 4, !tbaa !8
  %indvars.iv.next575 = add nuw nsw i64 %indvars.iv574, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next575, %wide.trip.count
  br i1 %exitcond, label %._crit_edge506, label %.lr.ph505, !llvm.loop !44

._crit_edge506:                                   ; preds = %.lr.ph505, %middle.block767, %vec.epilog.middle.block780, %._crit_edge501
  %.not473507 = icmp sgt i32 %i.av, %i.ak
  br i1 %.not473507, label %._crit_edge516, label %iter.check796

iter.check796:                                    ; preds = %._crit_edge506
  %i.ez = sext i32 %i.av to i64                   ; 5 uses
  %i.fa = add i32 %i.aj, 2
  %i.fb = add i32 %i.ai, -1                       ; 5 uses
  %i.fc = zext i32 %i.fb to i64
  %i.fd = add nuw nsw i64 %i.fc, 1                ; 10 uses
  %min.iters.check784 = icmp ult i32 %i.fb, 7
  br i1 %min.iters.check784, label %.lr.ph510.preheader, label %vector.main.loop.iter.check785

vector.main.loop.iter.check785:                   ; preds = %iter.check796
  %min.iters.check786 = icmp ult i32 %i.fb, 31
  br i1 %min.iters.check786, label %vec.epilog.ph800, label %vector.ph787

vector.ph787:                                     ; preds = %vector.main.loop.iter.check785
  %i.fe = and i64 %i.fd, 24
  %n.vec788 = and i64 %i.fd, 8589934560           ; 4 uses
  %i.ff = add nsw i64 %n.vec788, %i.ez
  %invariant.gep936 = getelementptr [4 x i8], ptr %i.ab, i64 %i.ez
  br label %vector.body789

vector.body789:                                   ; preds = %vector.body789, %vector.ph787
end_hunk_0
begin_hunk_1_@dlasd2_:bb.a
  %i.abu = trunc i64 %indvars.iv627.ph to i32     ; 2 uses
  %i.abv = sub i32 %i.abt, %i.abu
  %i.abw = sub i32 %i.xi, %i.abu
  %xtraiter931 = and i32 %i.abv, 3                ; 2 uses
  %lcmp.mod932.not = icmp eq i32 %xtraiter931, 0
  br i1 %lcmp.mod932.not, label %scalar.ph889.prol.loopexit, label %scalar.ph889.prol

scalar.ph889.prol:                                ; preds = %scalar.ph889.preheader, %scalar.ph889.prol
  %indvars.iv627.prol = phi i64 [ %indvars.iv.next628.prol, %scalar.ph889.prol ], [ %indvars.iv627.ph, %scalar.ph889.preheader ] ; 3 uses
  %prol.iter933 = phi i32 [ %prol.iter933.next, %scalar.ph889.prol ], [ 0, %scalar.ph889.preheader ]
  %i.abx = mul nsw i64 %indvars.iv627.prol, %i.aam
  %gep687.prol = getelementptr [8 x i8], ptr %invariant.gep686, i64 %i.abx ; 3 uses
  %i.aby = load double, ptr %gep687.prol, align 8, !tbaa !9
  %i.abz = fmul double %i.aaj, %i.aby
  %i.aca = mul nsw i64 %indvars.iv627.prol, %i.aao
  %i.acb = getelementptr [8 x i8], ptr %i.w, i64 %i.aca
  %i.acc = getelementptr i8, ptr %i.acb, i64 8
  store double %i.abz, ptr %i.acc, align 8, !tbaa !9
  %i.acd = load double, ptr %gep687.prol, align 8, !tbaa !9
  %i.ace = fmul double %i.aak, %i.acd
  store double %i.ace, ptr %gep687.prol, align 8, !tbaa !9
  %indvars.iv.next628.prol = add nsw i64 %indvars.iv627.prol, 1 ; 2 uses
  %prol.iter933.next = add i32 %prol.iter933, 1   ; 2 uses
  %prol.iter933.cmp.not = icmp eq i32 %prol.iter933.next, %xtraiter931
  br i1 %prol.iter933.cmp.not, label %scalar.ph889.prol.loopexit, label %scalar.ph889.prol, !llvm.loop !77

scalar.ph889.prol.loopexit:                       ; preds = %scalar.ph889.prol, %scalar.ph889.preheader
  %indvars.iv627.unr = phi i64 [ %indvars.iv627.ph, %scalar.ph889.preheader ], [ %indvars.iv.next628.prol, %scalar.ph889.prol ]
  %i.acf = icmp ult i32 %i.abw, 3
  br i1 %i.acf, label %.loopexit492, label %scalar.ph889

scalar.ph889:                                     ; preds = %scalar.ph889.prol.loopexit, %scalar.ph889
  %indvars.iv627 = phi i64 [ %indvars.iv.next628.3, %scalar.ph889 ], [ %indvars.iv627.unr, %scalar.ph889.prol.loopexit ] ; 6 uses
  %i.acg = mul nsw i64 %indvars.iv627, %i.aam
  %gep687 = getelementptr [8 x i8], ptr %invariant.gep686, i64 %i.acg ; 3 uses
  %i.ach = load double, ptr %gep687, align 8, !tbaa !9
  %i.aci = fmul double %i.aaj, %i.ach
  %i.acj = mul nsw i64 %indvars.iv627, %i.aao
  %i.ack = getelementptr [8 x i8], ptr %i.w, i64 %i.acj
  %i.acl = getelementptr i8, ptr %i.ack, i64 8
  store double %i.aci, ptr %i.acl, align 8, !tbaa !9
  %i.acm = load double, ptr %gep687, align 8, !tbaa !9
  %i.acn = fmul double %i.aak, %i.acm
  store double %i.acn, ptr %gep687, align 8, !tbaa !9
  %indvars.iv.next628 = add nsw i64 %indvars.iv627, 1 ; 2 uses
  %i.aco = mul nsw i64 %indvars.iv.next628, %i.aam
  %gep687.1 = getelementptr [8 x i8], ptr %invariant.gep686, i64 %i.aco ; 3 uses
  %i.acp = load double, ptr %gep687.1, align 8, !tbaa !9
  %i.acq = fmul double %i.aaj, %i.acp
  %i.acr = mul nsw i64 %indvars.iv.next628, %i.aao
  %i.acs = getelementptr [8 x i8], ptr %i.w, i64 %i.acr
  %i.act = getelementptr i8, ptr %i.acs, i64 8
  store double %i.acq, ptr %i.act, align 8, !tbaa !9
  %i.acu = load double, ptr %gep687.1, align 8, !tbaa !9
  %i.acv = fmul double %i.aak, %i.acu
  store double %i.acv, ptr %gep687.1, align 8, !tbaa !9
  %indvars.iv.next628.1 = add nsw i64 %indvars.iv627, 2 ; 2 uses
  %i.acw = mul nsw i64 %indvars.iv.next628.1, %i.aam
  %gep687.2 = getelementptr [8 x i8], ptr %invariant.gep686, i64 %i.acw ; 3 uses
  %i.acx = load double, ptr %gep687.2, align 8, !tbaa !9
  %i.acy = fmul double %i.aaj, %i.acx
  %i.acz = mul nsw i64 %indvars.iv.next628.1, %i.aao
  %i.ada = getelementptr [8 x i8], ptr %i.w, i64 %i.acz
  %i.adb = getelementptr i8, ptr %i.ada, i64 8
  store double %i.acy, ptr %i.adb, align 8, !tbaa !9
  %i.adc = load double, ptr %gep687.2, align 8, !tbaa !9
  %i.add = fmul double %i.aak, %i.adc
  store double %i.add, ptr %gep687.2, align 8, !tbaa !9
  %indvars.iv.next628.2 = add nsw i64 %indvars.iv627, 3 ; 2 uses
  %i.ade = mul nsw i64 %indvars.iv.next628.2, %i.aam
  %gep687.3 = getelementptr [8 x i8], ptr %invariant.gep686, i64 %i.ade ; 3 uses
  %i.adf = load double, ptr %gep687.3, align 8, !tbaa !9
  %i.adg = fmul double %i.aaj, %i.adf
  %i.adh = mul nsw i64 %indvars.iv.next628.2, %i.aao
  %i.adi = getelementptr [8 x i8], ptr %i.w, i64 %i.adh
  %i.adj = getelementptr i8, ptr %i.adi, i64 8
  store double %i.adg, ptr %i.adj, align 8, !tbaa !9
  %i.adk = load double, ptr %gep687.3, align 8, !tbaa !9
  %i.adl = fmul double %i.aak, %i.adk
  store double %i.adl, ptr %gep687.3, align 8, !tbaa !9
  %indvars.iv.next628.3 = add nsw i64 %indvars.iv627, 4 ; 2 uses
  %lftr.wideiv630.3 = trunc i64 %indvars.iv.next628.3 to i32
  %exitcond631.not.3 = icmp eq i32 %i.aap, %lftr.wideiv630.3
  br i1 %exitcond631.not.3, label %.loopexit492, label %scalar.ph889, !llvm.loop !78

bb.ab:                                            ; preds = %bb.z
  %i.adm = add nsw i32 %i.au, %i.n
  %i.adn = sext i32 %i.adm to i64
  %i.ado = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.adn
  call void @dcopy_(ptr noundef nonnull %i.d, ptr noundef %i.ado, ptr noundef nonnull %11, ptr noundef %15, ptr noundef nonnull %16) #6
  %.pre640 = load i32, ptr %i.d, align 4, !tbaa !8
  %.pre641 = load i32, ptr %i.e, align 4, !tbaa !8
  br label %.loopexit492

.loopexit492:                                     ; preds = %scalar.ph889.prol.loopexit, %scalar.ph889, %middle.block904, %._crit_edge564, %bb.ab
  %i.adp = phi i32 [ %.pre641, %bb.ab ], [ %i.xj, %._crit_edge564 ], [ %i.xj, %middle.block904 ], [ %i.xj, %scalar.ph889 ], [ %i.xj, %scalar.ph889.prol.loopexit ] ; 2 uses
  %i.adq = phi i32 [ %.pre640, %bb.ab ], [ %i.xi, %._crit_edge564 ], [ %i.xi, %middle.block904 ], [ %i.xi, %scalar.ph889 ], [ %i.xi, %scalar.ph889.prol.loopexit ] ; 3 uses
  %i.adr = icmp sgt i32 %i.adq, %i.adp
  br i1 %i.adr, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.loopexit492
  %i.ads = add nsw i32 %i.adq, %i.n
  %i.adt = sext i32 %i.ads to i64
  %i.adu = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.adt
  %i.adv = add nsw i32 %i.adq, %i.u
  %i.adw = sext i32 %i.adv to i64
  %i.adx = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.adw
  call void @dcopy_(ptr noundef nonnull %i.d, ptr noundef %i.adu, ptr noundef nonnull %11, ptr noundef %i.adx, ptr noundef nonnull %16) #6
  %.pre642 = load i32, ptr %i.e, align 4, !tbaa !8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.loopexit492
  %i.ady = phi i32 [ %.pre642, %bb.ac ], [ %i.adp, %.loopexit492 ] ; 2 uses
  %i.adz = load i32, ptr %3, align 4, !tbaa !8    ; 3 uses
  %i.aea = icmp sgt i32 %i.ady, %i.adz
  br i1 %i.aea, label %bb.ae, label %.loopexit.loopexit

bb.ae:                                            ; preds = %bb.ad
  %i.aeb = sub nsw i32 %i.ady, %i.adz
  store i32 %i.aeb, ptr %i.a, align 4, !tbaa !8
  %i.aec = add nsw i32 %i.adz, 1
  %i.aed = sext i32 %i.aec to i64                 ; 2 uses
  %i.aee = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.aed
  %i.aef = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.aed
  call void @dcopy_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.aee, ptr noundef nonnull @c__1, ptr noundef nonnull %i.aef, ptr noundef nonnull @c__1) #6
  %i.aeg = load i32, ptr %i.e, align 4, !tbaa !8
  %i.aeh = load i32, ptr %3, align 4, !tbaa !8    ; 2 uses
  %i.aei = sub nsw i32 %i.aeg, %i.aeh
  store i32 %i.aei, ptr %i.a, align 4, !tbaa !8
  %i.aej = add nsw i32 %i.aeh, 1                  ; 2 uses
  %i.aek = mul nsw i32 %i.aej, %i.r
  %i.ael = sext i32 %i.aek to i64
  %i.aem = getelementptr [8 x i8], ptr %i.t, i64 %i.ael
  %i.aen = getelementptr i8, ptr %i.aem, i64 8
  %i.aeo = mul nsw i32 %i.aej, %i.k
  %i.aep = sext i32 %i.aeo to i64
  %i.aeq = getelementptr [8 x i8], ptr %i.m, i64 %i.aep
  %i.aer = getelementptr i8, ptr %i.aeq, i64 8
  call void @dlacpy_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef %i.aen, ptr noundef nonnull %14, ptr noundef %i.aer, ptr noundef nonnull %9) #6
  %i.aes = load i32, ptr %i.e, align 4, !tbaa !8
  %i.aet = load i32, ptr %3, align 4, !tbaa !8    ; 2 uses
  %i.aeu = sub nsw i32 %i.aes, %i.aet
  store i32 %i.aeu, ptr %i.a, align 4, !tbaa !8
  %i.aev = add nsw i32 %i.aet, 1                  ; 2 uses
  %i.aew = add nsw i32 %i.aev, %i.u
  %i.aex = sext i32 %i.aew to i64
  %i.aey = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.aex
  %i.aez = add nsw i32 %i.aev, %i.n
  %i.afa = sext i32 %i.aez to i64
  %i.afb = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.afa
  call void @dlacpy_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, ptr noundef %i.aey, ptr noundef nonnull %16, ptr noundef %i.afb, ptr noundef nonnull %11) #6
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.ae, %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %21, ptr noundef nonnull align 16 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa !8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @dlamrg_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @dlamch_(ptr noundef) local_unnamed_addr #2

declare double @dlapy2_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @drot_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dcopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlaset_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlacpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !6, i64 0}
!11 = !{!12}
!12 = distinct !{!12, !13}
!13 = distinct !{!13, !"LVerDomain"}
!14 = !{!15}
!15 = distinct !{!15, !13}
!16 = !{!17}
!17 = distinct !{!17, !13}
!18 = !{!19, !12, !15}
!19 = distinct !{!19, !13}
!20 = !{!19}
!21 = !{!12, !15}
!22 = !{!23}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !25, !26, !27}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = distinct !{!28, !25, !26}
!29 = !{!30}
!30 = distinct !{!30, !31}
!31 = distinct !{!31, !"LVerDomain"}
!32 = !{!33}
!33 = distinct !{!33, !31}
!34 = !{!35}
!35 = distinct !{!35, !31}
!36 = !{!30, !33}
!37 = distinct !{!37, !25, !26, !27}
!38 = !{!"branch_weights", i32 4, i32 12}
!39 = distinct !{!39, !25, !26, !27}
!40 = distinct !{!40, !25, !26}
!41 = distinct !{!41, !25, !26, !27}
!42 = !{!"branch_weights", i32 8, i32 24}
!43 = distinct !{!43, !25, !26, !27}
!44 = distinct !{!44, !25, !27, !26}
!45 = distinct !{!45, !25, !26, !27}
!46 = distinct !{!46, !25, !26, !27}
!47 = distinct !{!47, !25, !27, !26}
!48 = distinct !{!48, !25, !26, !27}
!49 = distinct !{!49, !25, !26, !27}
!50 = distinct !{!50, !25, !27, !26}
!51 = distinct !{!51, !25}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = distinct !{!54, !25}
!55 = distinct !{!55, !25}
!56 = distinct !{!56, !53}
!57 = distinct !{!57, !25}
!58 = distinct !{!58, !53}
!59 = distinct !{!59, !25}
!60 = !{!61}
!61 = distinct !{!61, !62}
!62 = distinct !{!62, !"LVerDomain"}
!63 = !{!64}
!64 = distinct !{!64, !62}
!65 = !{!66, !61}
!66 = distinct !{!66, !62}
!67 = !{!66}
!68 = distinct !{!68, !25, !26, !27}
!69 = distinct !{!69, !53}
!70 = distinct !{!70, !25, !26}
!71 = !{!72}
!72 = distinct !{!72, !73}
!73 = distinct !{!73, !"LVerDomain"}
!74 = !{!75}
!75 = distinct !{!75, !73}
!76 = distinct !{!76, !25, !26, !27}
!77 = distinct !{!77, !53}
!78 = distinct !{!78, !25, !26}
end_hunk_1
