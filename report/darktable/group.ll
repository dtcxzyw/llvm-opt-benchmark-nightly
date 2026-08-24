Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/group?download=true
inline.NumInlined: 32
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_group_get_mask:bb.a
  %min.epilog.iters.check979 = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check979, label %.preheader500.preheader, label %vec.epilog.ph980, !prof !86

vec.epilog.ph980:                                 ; preds = %vector.main.loop.iter.check921, %vec.epilog.iter.check978
  %vec.epilog.resume.val972 = phi i64 [ %n.vec924, %vec.epilog.iter.check978 ], [ 0, %vector.main.loop.iter.check921 ]
  %bc.merge.rdx = phi i32 [ %i.bg, %vec.epilog.iter.check978 ], [ -2147483648, %vector.main.loop.iter.check921 ]
  %bc.merge.rdx973.a = phi i32 [ %i.bh, %vec.epilog.iter.check978 ], [ 2147483647, %vector.main.loop.iter.check921 ]
  %bc.merge.rdx974.a = phi i32 [ %i.bi, %vec.epilog.iter.check978 ], [ -2147483648, %vector.main.loop.iter.check921 ]
  %bc.merge.rdx975 = phi i32 [ %i.bj, %vec.epilog.iter.check978 ], [ 2147483647, %vector.main.loop.iter.check921 ]
  %n.vec981 = and i64 %i.d, 4294967292            ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert982 = insertelement <4 x i32> poison, i32 %bc.merge.rdx973.a, i64 0
  %broadcast.splat983 = shufflevector <4 x i32> %broadcast.splatinsert982, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert984 = insertelement <4 x i32> poison, i32 %bc.merge.rdx974.a, i64 0
  %broadcast.splat985 = shufflevector <4 x i32> %broadcast.splatinsert984, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert986 = insertelement <4 x i32> poison, i32 %bc.merge.rdx975, i64 0
  %broadcast.splat987 = shufflevector <4 x i32> %broadcast.splatinsert986, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body988

vec.epilog.vector.body988:                        ; preds = %vec.epilog.vector.body988, %vec.epilog.ph980
  %index989 = phi i64 [ %vec.epilog.resume.val972, %vec.epilog.ph980 ], [ %index.next998, %vec.epilog.vector.body988 ] ; 5 uses
  %vec.phi990.a = phi <4 x i32> [ %broadcast.splat, %vec.epilog.ph980 ], [ %i.bt, %vec.epilog.vector.body988 ]
  %vec.phi991.a = phi <4 x i32> [ %broadcast.splat983, %vec.epilog.ph980 ], [ %i.bn, %vec.epilog.vector.body988 ]
  %vec.phi992.a = phi <4 x i32> [ %broadcast.splat985, %vec.epilog.ph980 ], [ %i.bq, %vec.epilog.vector.body988 ]
  %vec.phi993 = phi <4 x i32> [ %broadcast.splat987, %vec.epilog.ph980 ], [ %i.bl, %vec.epilog.vector.body988 ]
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index989
  %wide.load994.a = load <4 x i32>, ptr %i.bk, align 4, !tbaa !82 ; 2 uses
  %i.bl = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi993, <4 x i32> %wide.load994.a) ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index989
  %wide.load995.a = load <4 x i32>, ptr %i.bm, align 4, !tbaa !82 ; 2 uses
  %i.bn = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi991.a, <4 x i32> %wide.load995.a) ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index989
  %wide.load996.a = load <4 x i32>, ptr %i.bo, align 4, !tbaa !82
  %i.bp = add nsw <4 x i32> %wide.load996.a, %wide.load994.a
  %i.bq = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi992.a, <4 x i32> %i.bp) ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index989
  %wide.load997 = load <4 x i32>, ptr %i.br, align 4, !tbaa !82
  %i.bs = add nsw <4 x i32> %wide.load997, %wide.load995.a
  %i.bt = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi990.a, <4 x i32> %i.bs) ; 2 uses
  %index.next998 = add nuw i64 %index989, 4       ; 2 uses
  %i.bu = icmp eq i64 %index.next998, %n.vec981
  br i1 %i.bu, label %vec.epilog.middle.block999, label %vec.epilog.vector.body988, !llvm.loop !87

vec.epilog.middle.block999:                       ; preds = %vec.epilog.vector.body988
  %i.bv = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.bt) ; 2 uses
  %i.bw = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %i.bn) ; 2 uses
  %i.bx = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.bq) ; 2 uses
  %i.by = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %i.bl) ; 2 uses
  %cmp.n1000 = icmp eq i64 %n.vec981, %i.d
  br i1 %cmp.n1000, label %.loopexit1175, label %.preheader500.preheader

.preheader500.preheader:                          ; preds = %iter.check976, %vec.epilog.iter.check978, %vec.epilog.middle.block999
  %indvars.iv580.ph = phi i64 [ 0, %iter.check976 ], [ %n.vec924, %vec.epilog.iter.check978 ], [ %n.vec981, %vec.epilog.middle.block999 ]
  %.0430514.ph = phi i32 [ -2147483648, %iter.check976 ], [ %i.bg, %vec.epilog.iter.check978 ], [ %i.bv, %vec.epilog.middle.block999 ]
  %.0431513.ph = phi i32 [ 2147483647, %iter.check976 ], [ %i.bh, %vec.epilog.iter.check978 ], [ %i.bw, %vec.epilog.middle.block999 ]
  %.0432512.ph = phi i32 [ -2147483648, %iter.check976 ], [ %i.bi, %vec.epilog.iter.check978 ], [ %i.bx, %vec.epilog.middle.block999 ]
  %.0433511.ph = phi i32 [ 2147483647, %iter.check976 ], [ %i.bj, %vec.epilog.iter.check978 ], [ %i.by, %vec.epilog.middle.block999 ]
  br label %.preheader500

bb.c:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 8 uses
  %.0434508 = phi ptr [ %.0434504, %.lr.ph ], [ %.0434, %bb.j ] ; 2 uses
  %.0435507 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.j ] ; 2 uses
  %i.bz = load ptr, ptr %.0434508, align 8, !tbaa !14 ; 3 uses
  %i.ca = load ptr, ptr %i.m, align 8, !tbaa !88
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 2584
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !103
  %i.cd = load i32, ptr %i.bz, align 4, !tbaa !61
  %i.ce = tail call ptr @dt_masks_get_from_id_ext(ptr noundef %i.cc, i32 noundef %i.cd) #11 ; 4 uses
  %.not467 = icmp eq ptr %i.ce, null
  br i1 %.not467, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv ; 4 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv ; 3 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv ; 3 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !64 ; 2 uses
  %.not.i = icmp eq ptr %i.cl, null
  br i1 %.not.i, label %dt_masks_get_mask.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 88
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !116 ; 2 uses
  %.not12.i = icmp eq ptr %i.cn, null
  br i1 %.not12.i, label %dt_masks_get_mask.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.co = tail call i32 %i.cn(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ce, ptr noundef %i.cf, ptr noundef %i.cg, ptr noundef %i.ch, ptr noundef %i.ci, ptr noundef %i.cj) #11, !inline_history !117
  %i.cp = icmp ne i32 %i.co, 0
  %i.cq = zext i1 %i.cp to i32
  br label %dt_masks_get_mask.exit

dt_masks_get_mask.exit:                           ; preds = %bb.d, %bb.e, %bb.f
  %.not471 = phi i32 [ %i.cq, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !80
  %i.ct = and i32 %i.cs, 4
  %.not468 = icmp eq i32 %i.ct, 0
  br i1 %.not468, label %bb.i, label %bb.g

bb.g:                                             ; preds = %dt_masks_get_mask.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  %i.cu = call i32 @gettimeofday(ptr noundef nonnull %11, ptr noundef null) #11 ; 0 uses
  %i.cv = load <2 x i64>, ptr %11, align 16, !tbaa !118
  %i.cw = add nsw <2 x i64> %i.cv, <i64 -1290608000, i64 0>
  %i.cx = sitofp <2 x i64> %i.cw to <2 x double>
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  %.val = load i32, ptr %i.n, align 4, !tbaa !119 ; 16 uses
  %.val474 = load i32, ptr %i.o, align 16, !tbaa !120 ; 6 uses
  %i.cy = sext i32 %.val474 to i64
  %i.cz = sext i32 %.val to i64                   ; 10 uses
  %i.da = shl nsw i64 %i.cz, 2
  %i.db = mul i64 %i.da, %i.cy
  %i.dc = tail call ptr @dt_alloc_aligned(i64 noundef %i.db) #11 ; 11 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dc, i64 64) ]
  %i.dd = load i32, ptr %i.cj, align 4, !tbaa !82 ; 4 uses
  %..i = tail call i32 @llvm.smin.i32(i32 %i.dd, i32 %.val474) ; 2 uses
  %i.de = icmp sgt i32 %..i, 0
  %i.df = icmp sgt i32 %.val, 0                   ; 2 uses
  %or.cond.i = and i1 %i.df, %i.de
  br i1 %or.cond.i, label %.preheader2.preheader.i, label %._crit_edge8.split.i

.preheader2.preheader.i:                          ; preds = %bb.g
  %wide.trip.count47.i = zext nneg i32 %..i to i64
  %wide.trip.count.i = zext nneg i32 %.val to i64 ; 6 uses
  %min.iters.check897 = icmp ult i32 %.val, 4
  %min.iters.check899 = icmp ult i32 %.val, 32
  %i.dg = and i64 %wide.trip.count.i, 28
  %n.vec901 = and i64 %wide.trip.count.i, 2147483616 ; 4 uses
  %cmp.n906 = icmp eq i64 %n.vec901, %wide.trip.count.i
  %min.epilog.iters.check911 = icmp eq i64 %i.dg, 0
  %n.vec913 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n918 = icmp eq i64 %n.vec913, %wide.trip.count.i
  br label %iter.check908

iter.check908:                                    ; preds = %._crit_edge.i, %.preheader2.preheader.i
  %indvars.iv44.i = phi i64 [ 0, %.preheader2.preheader.i ], [ %indvars.iv.next45.i, %._crit_edge.i ] ; 2 uses
  %i.dh = mul nuw nsw i64 %indvars.iv44.i, %i.cz
  %i.di = getelementptr [4 x i8], ptr %i.dc, i64 %i.dh ; 3 uses
  br i1 %min.iters.check897, label %vec.epilog.scalar.ph909.preheader, label %vector.main.loop.iter.check898

vector.main.loop.iter.check898:                   ; preds = %iter.check908
  br i1 %min.iters.check899, label %vec.epilog.ph912, label %vector.body902

vector.body902:                                   ; preds = %vector.main.loop.iter.check898, %vector.body902
  %index903 = phi i64 [ %index.next904, %vector.body902 ], [ 0, %vector.main.loop.iter.check898 ] ; 2 uses
  %i.dj = getelementptr [4 x i8], ptr %i.di, i64 %index903 ; 4 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 32
  %i.dl = getelementptr i8, ptr %i.dj, i64 64
  %i.dm = getelementptr i8, ptr %i.dj, i64 96
  store <8 x float> splat (float 1.000000e+00), ptr %i.dj, align 4, !tbaa !121
  store <8 x float> splat (float 1.000000e+00), ptr %i.dk, align 4, !tbaa !121
  store <8 x float> splat (float 1.000000e+00), ptr %i.dl, align 4, !tbaa !121
  store <8 x float> splat (float 1.000000e+00), ptr %i.dm, align 4, !tbaa !121
  %index.next904 = add nuw i64 %index903, 32      ; 2 uses
  %i.dn = icmp eq i64 %index.next904, %n.vec901
  br i1 %i.dn, label %middle.block905, label %vector.body902, !llvm.loop !122

middle.block905:                                  ; preds = %vector.body902
  br i1 %cmp.n906, label %._crit_edge.i, label %vec.epilog.iter.check910

vec.epilog.iter.check910:                         ; preds = %middle.block905
  br i1 %min.epilog.iters.check911, label %vec.epilog.scalar.ph909.preheader, label %vec.epilog.ph912, !prof !86

vec.epilog.ph912:                                 ; preds = %vector.main.loop.iter.check898, %vec.epilog.iter.check910
  %vec.epilog.resume.val907 = phi i64 [ %n.vec901, %vec.epilog.iter.check910 ], [ 0, %vector.main.loop.iter.check898 ]
  br label %vec.epilog.vector.body914

vec.epilog.vector.body914:                        ; preds = %vec.epilog.vector.body914, %vec.epilog.ph912
  %index915 = phi i64 [ %vec.epilog.resume.val907, %vec.epilog.ph912 ], [ %index.next916, %vec.epilog.vector.body914 ] ; 2 uses
  %i.do = getelementptr [4 x i8], ptr %i.di, i64 %index915
  store <4 x float> splat (float 1.000000e+00), ptr %i.do, align 4, !tbaa !121
  %index.next916 = add nuw i64 %index915, 4       ; 2 uses
  %i.dp = icmp eq i64 %index.next916, %n.vec913
  br i1 %i.dp, label %vec.epilog.middle.block917, label %vec.epilog.vector.body914, !llvm.loop !123

vec.epilog.middle.block917:                       ; preds = %vec.epilog.vector.body914
  br i1 %cmp.n918, label %._crit_edge.i, label %vec.epilog.scalar.ph909.preheader

vec.epilog.scalar.ph909.preheader:                ; preds = %iter.check908, %vec.epilog.iter.check910, %vec.epilog.middle.block917
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check908 ], [ %n.vec901, %vec.epilog.iter.check910 ], [ %n.vec913, %vec.epilog.middle.block917 ]
  br label %vec.epilog.scalar.ph909

._crit_edge8.split.i:                             ; preds = %._crit_edge.i, %bb.g
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.dd, i32 0) ; 5 uses
  %i.dq = load i32, ptr %i.ch, align 4, !tbaa !82
  %i.dr = add nsw i32 %i.dq, %i.dd                ; 2 uses
  %.108.i = tail call i32 @llvm.smin.i32(i32 %.val474, i32 %i.dr) ; 5 uses
  %i.ds = icmp slt i32 %spec.select.i, %.108.i
  br i1 %i.ds, label %.preheader1.lr.ph.i, label %._crit_edge22.i

.preheader1.lr.ph.i:                              ; preds = %._crit_edge8.split.i
  %i.dt = load i32, ptr %i.ci, align 4, !tbaa !82 ; 4 uses
  %.110.i = tail call i32 @llvm.smin.i32(i32 %i.dt, i32 %.val) ; 10 uses
  %i.du = icmp sgt i32 %.110.i, 0                 ; 2 uses
  %spec.select111.i = tail call i32 @llvm.smax.i32(i32 %i.dt, i32 0) ; 2 uses
  %i.dv = load i32, ptr %i.cg, align 4, !tbaa !82 ; 2 uses
  %i.dw = add nsw i32 %i.dv, %i.dt                ; 2 uses
  %.112.i = tail call i32 @llvm.smin.i32(i32 %.val, i32 %i.dw) ; 2 uses
  %i.dx = icmp slt i32 %spec.select111.i, %.112.i
  %i.dy = sext i32 %i.dd to i64                   ; 3 uses
  %12 = zext i32 %i.dv to i64                     ; 3 uses
  %i.dz = sext i32 %i.dt to i64                   ; 2 uses
  %spec.select113.i = tail call i32 @llvm.smax.i32(i32 %i.dw, i32 0) ; 4 uses
  %i.ea = icmp slt i32 %spec.select113.i, %.val   ; 3 uses
  br i1 %i.dx, label %.preheader1.lr.ph.split.us.i, label %.preheader1.lr.ph.split.i

.preheader1.lr.ph.split.us.i:                     ; preds = %.preheader1.lr.ph.i
  %i.eb = load ptr, ptr %i.cf, align 8, !tbaa !124 ; 3 uses
  %i.ec = zext nneg i32 %spec.select111.i to i64  ; 7 uses
  %i.ed = zext nneg i32 %spec.select113.i to i64  ; 6 uses
  %i.ee = zext nneg i32 %spec.select.i to i64     ; 5 uses
  %wide.trip.count102.i = zext i32 %.108.i to i64 ; 3 uses
  %wide.trip.count87.i = zext i32 %.110.i to i64  ; 6 uses
  %wide.trip.count92.i = zext nneg i32 %.112.i to i64 ; 6 uses
  %wide.trip.count97.i = zext i32 %.val to i64    ; 2 uses
  %i.ef = sub nsw i64 %wide.trip.count97.i, %i.ed ; 7 uses
  %i.eg = shl nsw i64 %i.cz, 2
  %i.eh = mul i64 %i.eg, %i.ee
  %i.ei = shl nuw nsw i64 %i.ec, 2                ; 2 uses
  %i.ej = getelementptr i8, ptr %i.dc, i64 %i.eh
  %scevgep = getelementptr i8, ptr %i.ej, i64 %i.ei
  %i.ek = xor i64 %i.ee, -1
  %i.el = add nsw i64 %i.ek, %wide.trip.count102.i
  %i.em = shl nsw i64 %i.el, 2
  %i.en = mul i64 %i.em, %i.cz
  %i.eo = mul nsw i64 %i.cz, %i.ee
  %i.ep = add i64 %i.eo, %wide.trip.count92.i
  %i.eq = shl i64 %i.ep, 2
  %i.er = getelementptr i8, ptr %i.dc, i64 %i.en
  %scevgep748 = getelementptr i8, ptr %i.er, i64 %i.eq
  %i.es = sub nsw i64 %i.ee, %i.dy
  %i.et = shl nsw i64 %i.es, 2
  %i.eu = mul i64 %i.et, %12
  %i.ev = add i64 %i.eu, %i.ei
  %i.ew = shl nsw i64 %i.dz, 2                    ; 2 uses
  %i.ex = sub i64 %i.ev, %i.ew
  %scevgep749 = getelementptr i8, ptr %i.eb, i64 %i.ex
  %i.ey = shl nuw nsw i64 %wide.trip.count102.i, 2
  %i.ez = add nsw i64 %i.ey, -4
  %i.fa = shl nsw i64 %i.dy, 2
  %i.fb = sub nsw i64 %i.ez, %i.fa
  %i.fc = mul i64 %i.fb, %12
  %i.fd = shl nuw nsw i64 %wide.trip.count92.i, 2
  %i.fe = add i64 %i.fc, %i.fd
  %i.ff = sub i64 %i.fe, %i.ew
  %scevgep750 = getelementptr i8, ptr %i.eb, i64 %i.ff
  %i.fg = sub nsw i64 %wide.trip.count92.i, %i.ec ; 7 uses
  %min.iters.check780 = icmp ult i32 %.110.i, 4
  %min.iters.check782 = icmp ult i32 %.110.i, 32
  %i.fh = and i64 %wide.trip.count87.i, 28
  %n.vec784 = and i64 %wide.trip.count87.i, 2147483616 ; 4 uses
  %cmp.n789 = icmp eq i64 %n.vec784, %wide.trip.count87.i
  %min.epilog.iters.check794 = icmp eq i64 %i.fh, 0
  %n.vec796 = and i64 %wide.trip.count87.i, 2147483644 ; 3 uses
  %cmp.n801 = icmp eq i64 %n.vec796, %wide.trip.count87.i
  %min.iters.check752 = icmp ult i64 %i.fg, 8
  %bound0 = icmp ult ptr %scevgep, %scevgep750
  %bound1 = icmp ult ptr %scevgep749, %scevgep748
  %found.conflict = and i1 %bound0, %bound1
  %i.fi = icmp slt i32 %.val, 0
  %i.fj = or i1 %found.conflict, %i.fi
  %min.iters.check754 = icmp ult i64 %i.fg, 32
  %i.fk = and i64 %i.fg, 24
  %n.vec756 = and i64 %i.fg, -32                  ; 4 uses
  %i.fl = add nsw i64 %n.vec756, %i.ec
  %cmp.n764 = icmp eq i64 %i.fg, %n.vec756
  %min.epilog.iters.check770 = icmp eq i64 %i.fk, 0
  %n.vec772 = and i64 %i.fg, -8                   ; 3 uses
  %i.fm = add nsw i64 %n.vec772, %i.ec
  %cmp.n778 = icmp eq i64 %i.fg, %n.vec772
  %min.iters.check724 = icmp ult i64 %i.ef, 8
  %min.iters.check726 = icmp ult i64 %i.ef, 32
  %i.fn = and i64 %i.ef, 24
  %n.vec728 = and i64 %i.ef, -32                  ; 4 uses
  %i.fo = add nsw i64 %n.vec728, %i.ed
  %cmp.n733 = icmp eq i64 %i.ef, %n.vec728
  %min.epilog.iters.check739 = icmp eq i64 %i.fn, 0
  %n.vec741 = and i64 %i.ef, -8                   ; 3 uses
  %i.fp = add nsw i64 %n.vec741, %i.ed
  %cmp.n746 = icmp eq i64 %i.ef, %n.vec741
  br label %.preheader1.us.i

.preheader1.us.i:                                 ; preds = %._crit_edge20.us.i, %.preheader1.lr.ph.split.us.i
  %indvars.iv99.i = phi i64 [ %indvars.iv.next100.i, %._crit_edge20.us.i ], [ %i.ee, %.preheader1.lr.ph.split.us.i ] ; 3 uses
  %i.fq = mul nsw i64 %indvars.iv99.i, %i.cz      ; 2 uses
  br i1 %i.du, label %iter.check791, label %iter.check767

vec.epilog.scalar.ph792:                          ; preds = %vec.epilog.scalar.ph792.preheader, %vec.epilog.scalar.ph792
  %indvars.iv84.i = phi i64 [ %indvars.iv.next85.i, %vec.epilog.scalar.ph792 ], [ %indvars.iv84.i.ph, %vec.epilog.scalar.ph792.preheader ] ; 2 uses
  %i.fr = getelementptr [4 x i8], ptr %i.id, i64 %indvars.iv84.i
  store float 1.000000e+00, ptr %i.fr, align 4, !tbaa !121
  %indvars.iv.next85.i = add nuw nsw i64 %indvars.iv84.i, 1 ; 2 uses
  %exitcond88.not.i = icmp eq i64 %indvars.iv.next85.i, %wide.trip.count87.i
  br i1 %exitcond88.not.i, label %iter.check767, label %vec.epilog.scalar.ph792, !llvm.loop !125

iter.check767:                                    ; preds = %vec.epilog.scalar.ph792, %middle.block788, %vec.epilog.middle.block800, %.preheader1.us.i
  %i.fs = sub nsw i64 %indvars.iv99.i, %i.dy
  %i.ft = mul nsw i64 %i.fs, %12
  %invariant.op.us.i = sub i64 %i.ft, %i.dz
  %i.fu = getelementptr [4 x i8], ptr %i.dc, i64 %i.fq ; 14 uses
  %i.fv = getelementptr [4 x i8], ptr %i.eb, i64 %invariant.op.us.i ; 11 uses
  %brmerge = select i1 %min.iters.check752, i1 true, i1 %i.fj
  br i1 %brmerge, label %vec.epilog.scalar.ph768.preheader, label %vector.main.loop.iter.check753

vector.main.loop.iter.check753:                   ; preds = %iter.check767
  br i1 %min.iters.check754, label %vec.epilog.ph771, label %vector.body757

vector.body757:                                   ; preds = %vector.main.loop.iter.check753, %vector.body757
  %index758 = phi i64 [ %index.next762, %vector.body757 ], [ 0, %vector.main.loop.iter.check753 ] ; 2 uses
  %i.fw = add nuw i64 %index758, %i.ec            ; 2 uses
  %i.fx = getelementptr [4 x i8], ptr %i.fv, i64 %i.fw ; 4 uses
  %i.fy = getelementptr i8, ptr %i.fx, i64 32
  %i.fz = getelementptr i8, ptr %i.fx, i64 64
  %i.ga = getelementptr i8, ptr %i.fx, i64 96
  %wide.load = load <8 x float>, ptr %i.fx, align 4, !tbaa !121, !alias.scope !126
  %wide.load759.a = load <8 x float>, ptr %i.fy, align 4, !tbaa !121, !alias.scope !126
  %wide.load760.a = load <8 x float>, ptr %i.fz, align 4, !tbaa !121, !alias.scope !126
  %wide.load761 = load <8 x float>, ptr %i.ga, align 4, !tbaa !121, !alias.scope !126
  %i.gb = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %wide.load
  %i.gc = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %wide.load759.a
  %i.gd = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %wide.load760.a
  %i.ge = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %wide.load761
  %i.gf = getelementptr [4 x i8], ptr %i.fu, i64 %i.fw ; 4 uses
  %i.gg = getelementptr i8, ptr %i.gf, i64 32
  %i.gh = getelementptr i8, ptr %i.gf, i64 64
  %i.gi = getelementptr i8, ptr %i.gf, i64 96
  store <8 x float> %i.gb, ptr %i.gf, align 4, !tbaa !121, !alias.scope !129, !noalias !126
  store <8 x float> %i.gc, ptr %i.gg, align 4, !tbaa !121, !alias.scope !129, !noalias !126
  store <8 x float> %i.gd, ptr %i.gh, align 4, !tbaa !121, !alias.scope !129, !noalias !126
  store <8 x float> %i.ge, ptr %i.gi, align 4, !tbaa !121, !alias.scope !129, !noalias !126
  %index.next762 = add nuw i64 %index758, 32      ; 2 uses
  %i.gj = icmp eq i64 %index.next762, %n.vec756
  br i1 %i.gj, label %middle.block763, label %vector.body757, !llvm.loop !131

middle.block763:                                  ; preds = %vector.body757
  br i1 %cmp.n764, label %._crit_edge15.us.i, label %vec.epilog.iter.check769

vec.epilog.iter.check769:                         ; preds = %middle.block763
  br i1 %min.epilog.iters.check770, label %vec.epilog.scalar.ph768.preheader, label %vec.epilog.ph771, !prof !132

vec.epilog.ph771:                                 ; preds = %vector.main.loop.iter.check753, %vec.epilog.iter.check769
  %vec.epilog.resume.val765 = phi i64 [ %n.vec756, %vec.epilog.iter.check769 ], [ 0, %vector.main.loop.iter.check753 ]
  br label %vec.epilog.vector.body773

vec.epilog.vector.body773:                        ; preds = %vec.epilog.vector.body773, %vec.epilog.ph771
  %index774 = phi i64 [ %vec.epilog.resume.val765, %vec.epilog.ph771 ], [ %index.next776, %vec.epilog.vector.body773 ] ; 2 uses
  %i.gk = add nuw i64 %index774, %i.ec            ; 2 uses
  %i.gl = getelementptr [4 x i8], ptr %i.fv, i64 %i.gk
  %wide.load775 = load <8 x float>, ptr %i.gl, align 4, !tbaa !121, !alias.scope !126
  %i.gm = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %wide.load775
  %i.gn = getelementptr [4 x i8], ptr %i.fu, i64 %i.gk
  store <8 x float> %i.gm, ptr %i.gn, align 4, !tbaa !121, !alias.scope !129, !noalias !126
  %index.next776 = add nuw i64 %index774, 8       ; 2 uses
  %i.go = icmp eq i64 %index.next776, %n.vec772
  br i1 %i.go, label %vec.epilog.middle.block777, label %vec.epilog.vector.body773, !llvm.loop !133

vec.epilog.middle.block777:                       ; preds = %vec.epilog.vector.body773
  br i1 %cmp.n778, label %._crit_edge15.us.i, label %vec.epilog.scalar.ph768.preheader

vec.epilog.scalar.ph768.preheader:                ; preds = %iter.check767, %vec.epilog.iter.check769, %vec.epilog.middle.block777
  %indvars.iv89.i.ph = phi i64 [ %i.ec, %iter.check767 ], [ %i.fm, %vec.epilog.middle.block777 ], [ %i.fl, %vec.epilog.iter.check769 ] ; 4 uses
  %i.gp = sub nsw i64 %wide.trip.count92.i, %indvars.iv89.i.ph
  %xtraiter = and i64 %i.gp, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph768.prol.loopexit, label %vec.epilog.scalar.ph768.prol

vec.epilog.scalar.ph768.prol:                     ; preds = %vec.epilog.scalar.ph768.preheader, %vec.epilog.scalar.ph768.prol
  %indvars.iv89.i.prol = phi i64 [ %indvars.iv.next90.i.prol, %vec.epilog.scalar.ph768.prol ], [ %indvars.iv89.i.ph, %vec.epilog.scalar.ph768.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph768.prol ], [ 0, %vec.epilog.scalar.ph768.preheader ]
  %i.gq = getelementptr [4 x i8], ptr %i.fv, i64 %indvars.iv89.i.prol
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !121
  %i.gs = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.gr
  %i.gt = getelementptr [4 x i8], ptr %i.fu, i64 %indvars.iv89.i.prol
  store float %i.gs, ptr %i.gt, align 4, !tbaa !121
  %indvars.iv.next90.i.prol = add nuw nsw i64 %indvars.iv89.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph768.prol.loopexit, label %vec.epilog.scalar.ph768.prol, !llvm.loop !134

vec.epilog.scalar.ph768.prol.loopexit:            ; preds = %vec.epilog.scalar.ph768.prol, %vec.epilog.scalar.ph768.preheader
  %indvars.iv89.i.unr = phi i64 [ %indvars.iv89.i.ph, %vec.epilog.scalar.ph768.preheader ], [ %indvars.iv.next90.i.prol, %vec.epilog.scalar.ph768.prol ]
  %i.gu = sub nsw i64 %indvars.iv89.i.ph, %wide.trip.count92.i
  %i.gv = icmp ugt i64 %i.gu, -8
  br i1 %i.gv, label %._crit_edge15.us.i, label %vec.epilog.scalar.ph768

vec.epilog.scalar.ph768:                          ; preds = %vec.epilog.scalar.ph768.prol.loopexit, %vec.epilog.scalar.ph768
  %indvars.iv89.i = phi i64 [ %indvars.iv.next90.i.7, %vec.epilog.scalar.ph768 ], [ %indvars.iv89.i.unr, %vec.epilog.scalar.ph768.prol.loopexit ] ; 10 uses
  %i.gw = getelementptr [4 x i8], ptr %i.fv, i64 %indvars.iv89.i
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !121
  %i.gy = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.gx
  %i.gz = getelementptr [4 x i8], ptr %i.fu, i64 %indvars.iv89.i
  store float %i.gy, ptr %i.gz, align 4, !tbaa !121
  %indvars.iv.next90.i = add nuw nsw i64 %indvars.iv89.i, 1 ; 2 uses
  %i.ha = getelementptr [4 x i8], ptr %i.fv, i64 %indvars.iv.next90.i
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !121
  %i.hc = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.hb
  %i.hd = getelementptr [4 x i8], ptr %i.fu, i64 %indvars.iv.next90.i
  store float %i.hc, ptr %i.hd, align 4, !tbaa !121
  %indvars.iv.next90.i.1 = add nuw nsw i64 %indvars.iv89.i, 2 ; 2 uses
  %i.he = getelementptr [4 x i8], ptr %i.fv, i64 %indvars.iv.next90.i.1
  %i.hf = load float, ptr %i.he, align 4, !tbaa !121
  %i.hg = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.hf
  %i.hh = getelementptr [4 x i8], ptr %i.fu, i64 %indvars.iv.next90.i.1
  store float %i.hg, ptr %i.hh, align 4, !tbaa !121
  %indvars.iv.next90.i.2 = add nuw nsw i64 %indvars.iv89.i, 3 ; 2 uses
  %i.hi = getelementptr [4 x i8], ptr %i.fv, i64 %indvars.iv.next90.i.2
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !121
  %i.hk = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.hj
  %i.hl = getelementptr [4 x i8], ptr %i.fu, i64 %indvars.iv.next90.i.2
  store float %i.hk, ptr %i.hl, align 4, !tbaa !121
  %indvars.iv.next90.i.3 = add nuw nsw i64 %indvars.iv89.i, 4 ; 2 uses
  %i.hm = getelementptr [4 x i8], ptr %i.fv, i64 %indvars.iv.next90.i.3
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !121
  %i.ho = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.hn
  %i.hp = getelementptr [4 x i8], ptr %i.fu, i64 %indvars.iv.next90.i.3
  store float %i.ho, ptr %i.hp, align 4, !tbaa !121
  %indvars.iv.next90.i.4 = add nuw nsw i64 %indvars.iv89.i, 5 ; 2 uses
  %i.hq = getelementptr [4 x i8], ptr %i.fv, i64 %indvars.iv.next90.i.4
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !121
  %i.hs = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.hr
  %i.ht = getelementptr [4 x i8], ptr %i.fu, i64 %indvars.iv.next90.i.4
  store float %i.hs, ptr %i.ht, align 4, !tbaa !121
  %indvars.iv.next90.i.5 = add nuw nsw i64 %indvars.iv89.i, 6 ; 2 uses
  %i.hu = getelementptr [4 x i8], ptr %i.fv, i64 %indvars.iv.next90.i.5
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !121
  %i.hw = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.hv
  %i.hx = getelementptr [4 x i8], ptr %i.fu, i64 %indvars.iv.next90.i.5
  store float %i.hw, ptr %i.hx, align 4, !tbaa !121
  %indvars.iv.next90.i.6 = add nuw nsw i64 %indvars.iv89.i, 7 ; 2 uses
  %i.hy = getelementptr [4 x i8], ptr %i.fv, i64 %indvars.iv.next90.i.6
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !121
  %i.ia = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.hz
  %i.ib = getelementptr [4 x i8], ptr %i.fu, i64 %indvars.iv.next90.i.6
  store float %i.ia, ptr %i.ib, align 4, !tbaa !121
  %indvars.iv.next90.i.7 = add nuw nsw i64 %indvars.iv89.i, 8 ; 2 uses
  %exitcond93.not.i.7 = icmp eq i64 %indvars.iv.next90.i.7, %wide.trip.count92.i
  br i1 %exitcond93.not.i.7, label %._crit_edge15.us.i, label %vec.epilog.scalar.ph768, !llvm.loop !136

.lr.ph19.us.i:                                    ; preds = %.lr.ph19.us.i.preheader, %.lr.ph19.us.i
  %indvars.iv94.i = phi i64 [ %indvars.iv.next95.i, %.lr.ph19.us.i ], [ %indvars.iv94.i.ph, %.lr.ph19.us.i.preheader ] ; 2 uses
  %i.ic = getelementptr [4 x i8], ptr %i.fu, i64 %indvars.iv94.i
  store float 1.000000e+00, ptr %i.ic, align 4, !tbaa !121
  %indvars.iv.next95.i = add nuw nsw i64 %indvars.iv94.i, 1 ; 2 uses
  %exitcond98.not.i = icmp eq i64 %indvars.iv.next95.i, %wide.trip.count97.i
  br i1 %exitcond98.not.i, label %._crit_edge20.us.i, label %.lr.ph19.us.i, !llvm.loop !137

._crit_edge20.us.i:                               ; preds = %.lr.ph19.us.i, %middle.block732, %vec.epilog.middle.block745, %._crit_edge15.us.i
  %indvars.iv.next100.i = add nuw nsw i64 %indvars.iv99.i, 1 ; 2 uses
  %exitcond103.not.i = icmp eq i64 %indvars.iv.next100.i, %wide.trip.count102.i
  br i1 %exitcond103.not.i, label %._crit_edge22.i, label %.preheader1.us.i

iter.check791:                                    ; preds = %.preheader1.us.i
  %i.id = getelementptr [4 x i8], ptr %i.dc, i64 %i.fq ; 3 uses
  br i1 %min.iters.check780, label %vec.epilog.scalar.ph792.preheader, label %vector.main.loop.iter.check781

vector.main.loop.iter.check781:                   ; preds = %iter.check791
  br i1 %min.iters.check782, label %vec.epilog.ph795, label %vector.body785

vector.body785:                                   ; preds = %vector.main.loop.iter.check781, %vector.body785
  %index786 = phi i64 [ %index.next787, %vector.body785 ], [ 0, %vector.main.loop.iter.check781 ] ; 2 uses
end_hunk_0
